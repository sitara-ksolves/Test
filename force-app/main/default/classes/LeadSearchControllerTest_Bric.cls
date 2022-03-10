/*
* Author: 			Bricoleur Technologies - John Paulo Sulit (jp@bricoleurtech.com)
* Created Date: 	Oct. 26, 2021
* Description: 	Test class for LeadSearchController_Bric
* Test Class: 		N/A
* History: 		Oct. 26, 2021 - Creation 
*/

@isTest
public class LeadSearchControllerTest_Bric {
    private static testMethod void leadSearchTest()
    {
        List<Lead> leadList = TestDataBuilder_Bric.createPersonLeads(1, true);
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues(String.valueOf(UserInfo.getTimeZone()));     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = leadList[0].Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(leadList[0].Email, String.valueOf(UserInfo.getTimeZone()));
        Test.stopTest();
        System.assert(lsw.strLeadId != null);
    }   
    private static testMethod void contactSearchTest()
    {
        List<Account> acctList = TestDataBuilder_Bric.createAccounts(1, true);
        List<Contact> conList = TestDataBuilder_Bric.createContacts(1, acctList[0].Id, true);
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues(String.valueOf(UserInfo.getTimeZone()));     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = conList[0].Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(conList[0].Email, String.valueOf(UserInfo.getTimeZone()));
        Test.stopTest();
        System.assert(lsw.strLeadId != null);
    }   
    private static testMethod void noSearchResultsTest()
    {
        List<Lead> leadList = TestDataBuilder_Bric.createPersonLeads(1, false);
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues(String.valueOf(UserInfo.getTimeZone()));     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = leadList[0]?.Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(leadList[0]?.Email, String.valueOf(UserInfo.getTimeZone()));
        Test.stopTest();
        System.assert(lsw.strLeadId == null);
    } 
    private static testMethod void wtgOffshoreFirstTest()
    {
        List<Lead> leadList = TestDataBuilder_Bric.createPersonLeads(1, false);
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues('Asia/Manila');     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = leadList[0]?.Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(leadList[0]?.Email, 'Asia/Manila');
        Test.stopTest();
        System.assert(lsw.strLeadId == null);
    } 
    private static testMethod void existingProspectAUTest()
    {
        List<Lead> leadList = TestDataBuilder_Bric.createPersonLeads(1, true);
        
        List<ServiceResource> srList = TestDataBuilder_Bric.createServiceResources(1, UserInfo.getUserId(), true);
        List<OperatingHours> ohList = TestDataBuilder_Bric.createOperatingHours(1, 'Australia/Brisbane', true); 
        List<TimeSlot> tsList = TestDataBuilder_Bric.createTimeSlots(ohList[0].Id, Time.newInstance(7, 30, 0, 0), Time.newInstance(14, 0, 0, 0), true);
        List<WorkType> wtList = TestDataBuilder_Bric.createWorkType(1, ohList[0].Id, 3, true);
        List<ServiceTerritory> stList = TestDataBuilder_Bric.createTerritories(1, ohList[0].Id, true);
        List<ServiceTerritoryMember> stmList = TestDataBuilder_Bric.createTerritoryMembers(srList, stList[0].Id, ohList[0].Id, true);
        TestDataBuilder_Bric.ServiceAppointmentWrapper sw = new TestDataBuilder_Bric.ServiceAppointmentWrapper();
        sw.parentId = leadList[0].Id;
        sw.territoryId = stList[0].Id;
        sw.workTypeId = wtList[0].Id; 
        sw.schedStartTime = DateTime.newInstance(Date.today(), Time.newInstance(7, 45, 0, 0));
        sw.schedEndTime = DateTime.newInstance(Date.today(), Time.newInstance(10, 45, 0, 0));
        List<ServiceAppointment> saList = TestDataBuilder_Bric.createServiceAppointments(1, sw, true);
        List<AssignedResource> arList = TestDataBuilder_Bric.createAssignedResources(saList[0].Id, srList[0].Id, true);
        
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues(String.valueOf(UserInfo.getTimeZone()));     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = leadList[0]?.Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(leadList[0]?.Email, String.valueOf(UserInfo.getTimeZone()));
        Test.stopTest();
        System.assert(lsw.strLeadId != null);
    }
    private static testMethod void existingProspectNonAUTest()
    {
        List<Lead> leadList = TestDataBuilder_Bric.createPersonLeads(1, true);
        
        List<ServiceResource> srList = TestDataBuilder_Bric.createServiceResources(1, UserInfo.getUserId(), true);
        List<OperatingHours> ohList = TestDataBuilder_Bric.createOperatingHours(1, 'Australia/Brisbane', true); 
        List<TimeSlot> tsList = TestDataBuilder_Bric.createTimeSlots(ohList[0].Id, Time.newInstance(7, 30, 0, 0), Time.newInstance(14, 0, 0, 0), true);
        List<WorkType> wtList = TestDataBuilder_Bric.createWorkType(1, ohList[0].Id, 3, true);
        List<ServiceTerritory> stList = TestDataBuilder_Bric.createTerritories(1, ohList[0].Id, true);
        List<ServiceTerritoryMember> stmList = TestDataBuilder_Bric.createTerritoryMembers(srList, stList[0].Id, ohList[0].Id, true);
        TestDataBuilder_Bric.ServiceAppointmentWrapper sw = new TestDataBuilder_Bric.ServiceAppointmentWrapper();
        sw.parentId = leadList[0].Id;
        sw.territoryId = stList[0].Id;
        sw.workTypeId = wtList[0].Id; 
        sw.schedStartTime = DateTime.newInstance(Date.today(), Time.newInstance(7, 45, 0, 0));
        sw.schedEndTime = DateTime.newInstance(Date.today(), Time.newInstance(10, 45, 0, 0));
        List<ServiceAppointment> saList = TestDataBuilder_Bric.createServiceAppointments(1, sw, true);
        List<AssignedResource> arList = TestDataBuilder_Bric.createAssignedResources(saList[0].Id, srList[0].Id, true);
        
        List<TestDataBuilder_Bric.WorkTypeGroupWrapper> wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>();
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap1 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap1.wtgName = Constants_Bric.WTG_OFFSHORE_FIRST;
        wrap1.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap2 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap2.wtgName = Constants_Bric.WTG_OFFSHORE_SUBQ;
        wrap2.wtgPrice = Constants_Bric.WTG_OFFSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap3 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap3.wtgName = Constants_Bric.WTG_ONSHORE_FIRST;
        wrap3.wtgPrice = Constants_Bric.WTG_ONSHORE_FIRST_PRICE;
        TestDataBuilder_Bric.WorkTypeGroupWrapper wrap4 = new TestDataBuilder_Bric.WorkTypeGroupWrapper();
        wrap4.wtgName = Constants_Bric.WTG_ONSHORE_SUBQ;
        wrap4.wtgPrice = Constants_Bric.WTG_ONSHORE_SUBQ_PRICE;
        wtgList = new List<TestDataBuilder_Bric.WorkTypeGroupWrapper>{wrap1, wrap2, wrap3, wrap4};
            List<WorkTypeGroup> wtgListNew = TestDataBuilder_Bric.createWorkTypeGroup(wtgList, true);
        LeadSearchController_Bric.LeadSearchWrapper lsw = new LeadSearchController_Bric.LeadSearchWrapper();
        Test.startTest();
        LeadSearchController_Bric.loadWrapperValues('Asia/Manila');     
        Id [] fixedSearchResults= new Id[1];   
        fixedSearchResults[0] = leadList[0]?.Id;  
        Test.setFixedSearchResults(fixedSearchResults);
        lsw = LeadSearchController_Bric.leadSearch(leadList[0]?.Email, 'Asia/Manila');
        Test.stopTest();
        System.assert(lsw.strLeadId != null);
    }
}