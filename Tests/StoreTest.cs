using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ShoeStore
{
  public class StoreTest : IDisposable
  {
    public StoreTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=shoe_stores_test;Integrated Security=SSPI;";
    }

    [Fact]
    public void Test_DatabaseEmptyAtFirst()
    {
      //Arrange, Act
      int result = Store.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

    [Fact]
    public void Test_ReturnsTrueForSameName()
    {
      //Arrange, Act
      Store firstStore = new Store("FootLocker");
      Store secondStore = new Store("FootLocker");

      //Assert
      Assert.Equal(firstStore, secondStore);
    }

    [Fact]
    public void Test_Save()
    {
      Store testStore = new Store("FootLocker");
      testStore.Save();

      List<Store> result = Store.GetAll();
      List<Store> testList = new List<Store> {testStore};

      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_Save_AssignsIdToObject()
    {
      Store testStore = new Store("FootLocker");
      testStore.Save();

      Store savedStore = Store.GetAll()[0];

      int resultId = savedStore.GetId();
      int testId = testStore.GetId();

      Assert.Equal(testId, resultId);
    }

    public void Dispose()
    {
      Store.DeleteAll();
      Brand.DeleteAll(); 
    }
  }
}
