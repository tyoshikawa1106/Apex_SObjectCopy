/**
 * sObjectのコピー
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class SObjectCloneControllerTest {

    /**
     * コンストラクタ
     */
    static testMethod void SObjectCloneControllerTest() {
            
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        System.assertEquals(String.isEmpty(cls.contract.Id), true);
        System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
        
        Test.stopTest();
    }
    
    /**
     * init
     */
    static testMethod void initTest1() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        // テスト開始
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
        
        Test.stopTest();
    }
    
    /**
     * init
     */
    static testMethod void initTest2() {
            
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        System.assertEquals(String.isEmpty(cls.contract.Id), true);
        System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
        
        Test.stopTest();
    }
    
    /**
     * doCopy1
     */
    static testMethod void doCopy1Test() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        // doCopy1
        cls.doCopy1();
        
        // ID・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertNotEquals(cls.contract.Id, cls.copyContract.Id);
        
        // 契約番号・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.ContractNumber), false);
        System.assertNotEquals(cls.contract.ContractNumber, cls.copyContract.ContractNumber);
        
        // 取引先ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.AccountId), false);
        System.assertEquals(cls.contract.AccountId, cls.copyContract.AccountId);
        
        // 契約開始日・コピーあり
        System.assertNotEquals(cls.contract.StartDate, null);
        System.assertEquals(cls.contract.StartDate, cls.copyContract.StartDate);
        
        // 契約期間・コピーあり
        System.assertNotEquals(cls.contract.ContractTerm, null);
        System.assertEquals(cls.contract.ContractTerm, cls.copyContract.ContractTerm);
        
        // 所有者・コピーあり
        System.assertNotEquals(cls.contract.OwnerId, null);
        System.assertEquals(cls.contract.OwnerId, cls.copyContract.OwnerId);
        
        // 作成者・コピーなし
        System.assertNotEquals(cls.contract.CreatedById, null);
        System.assertNotEquals(cls.contract.CreatedById, cls.copyContract.CreatedById);
        
        // 作成日・コピーなし
        System.assertNotEquals(cls.contract.CreatedDate, null);
        System.assertNotEquals(cls.contract.CreatedDate, cls.copyContract.CreatedDate);
        
        // 最終更新者・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedById, null);
        System.assertNotEquals(cls.contract.LastModifiedById, cls.copyContract.LastModifiedById);
        
        // 最終更新日・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedDate, null);
        System.assertNotEquals(cls.contract.LastModifiedDate, cls.copyContract.LastModifiedDate);
        
        Test.stopTest();
    }
    
    /**
     * doCopy2・テスト
     */
    static testMethod void doCopy2Test() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        // doCopy2
        cls.doCopy2();
        
        // ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertEquals(cls.contract.Id, cls.copyContract.Id);
        
        // 契約番号・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.ContractNumber), false);
        System.assertNotEquals(cls.contract.ContractNumber, cls.copyContract.ContractNumber);
        
        // 取引先ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.AccountId), false);
        System.assertEquals(cls.contract.AccountId, cls.copyContract.AccountId);
        
        // 契約開始日・コピーあり
        System.assertNotEquals(cls.contract.StartDate, null);
        System.assertEquals(cls.contract.StartDate, cls.copyContract.StartDate);
        
        // 契約期間・コピーあり
        System.assertNotEquals(cls.contract.ContractTerm, null);
        System.assertEquals(cls.contract.ContractTerm, cls.copyContract.ContractTerm);
        
        // 所有者・コピーあり
        System.assertNotEquals(cls.contract.OwnerId, null);
        System.assertEquals(cls.contract.OwnerId, cls.copyContract.OwnerId);
        
        // 作成者・コピーなし
        System.assertNotEquals(cls.contract.CreatedById, null);
        System.assertNotEquals(cls.contract.CreatedById, cls.copyContract.CreatedById);
        
        // 作成日・コピーなし
        System.assertNotEquals(cls.contract.CreatedDate, null);
        System.assertNotEquals(cls.contract.CreatedDate, cls.copyContract.CreatedDate);
        
        // 最終更新者・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedById, null);
        System.assertNotEquals(cls.contract.LastModifiedById, cls.copyContract.LastModifiedById);
        
        // 最終更新日・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedDate, null);
        System.assertNotEquals(cls.contract.LastModifiedDate, cls.copyContract.LastModifiedDate);
        
        Test.stopTest();
    }
    
    /**
     * doCopy3
     */
    static testMethod void doCopy3Test() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        // doCopy3
        cls.doCopy3();
        
        // ID・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertNotEquals(cls.contract.Id, cls.copyContract.Id);
        
        // 契約番号・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.ContractNumber), false);
        System.assertNotEquals(cls.contract.ContractNumber, cls.copyContract.ContractNumber);
        
        // 取引先ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.AccountId), false);
        System.assertEquals(cls.contract.AccountId, cls.copyContract.AccountId);
        
        // 契約開始日・コピーあり
        System.assertNotEquals(cls.contract.StartDate, null);
        System.assertEquals(cls.contract.StartDate, cls.copyContract.StartDate);
        
        // 契約期間・コピーあり
        System.assertNotEquals(cls.contract.ContractTerm, null);
        System.assertEquals(cls.contract.ContractTerm, cls.copyContract.ContractTerm);
        
        // 所有者・コピーあり
        System.assertNotEquals(cls.contract.OwnerId, null);
        System.assertEquals(cls.contract.OwnerId, cls.copyContract.OwnerId);
        
        // 作成者・コピーなし
        System.assertNotEquals(cls.contract.CreatedById, null);
        System.assertNotEquals(cls.contract.CreatedById, cls.copyContract.CreatedById);
        
        // 作成日・コピーなし
        System.assertNotEquals(cls.contract.CreatedDate, null);
        System.assertNotEquals(cls.contract.CreatedDate, cls.copyContract.CreatedDate);
        
        // 最終更新者・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedById, null);
        System.assertNotEquals(cls.contract.LastModifiedById, cls.copyContract.LastModifiedById);
        
        // 最終更新日・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedDate, null);
        System.assertNotEquals(cls.contract.LastModifiedDate, cls.copyContract.LastModifiedDate);
        
        Test.stopTest();
    }
    
    /**
     * doCopy4
     */
    static testMethod void doCopy4Test() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        // doCopy4
        cls.doCopy4();
        
        // ID・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertNotEquals(cls.contract.Id, cls.copyContract.Id);
        
        // 契約番号・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.ContractNumber), false);
        System.assertNotEquals(cls.contract.ContractNumber, cls.copyContract.ContractNumber);
        
        // 取引先ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.AccountId), false);
        System.assertEquals(cls.contract.AccountId, cls.copyContract.AccountId);
        
        // 契約開始日・コピーあり
        System.assertNotEquals(cls.contract.StartDate, null);
        System.assertEquals(cls.contract.StartDate, cls.copyContract.StartDate);
        
        // 契約期間・コピーあり
        System.assertNotEquals(cls.contract.ContractTerm, null);
        System.assertEquals(cls.contract.ContractTerm, cls.copyContract.ContractTerm);
        
        // 所有者・コピーあり
        System.assertNotEquals(cls.contract.OwnerId, null);
        System.assertEquals(cls.contract.OwnerId, cls.copyContract.OwnerId);
        
        // 作成者・コピーあり
        System.assertNotEquals(cls.contract.CreatedById, null);
        System.assertEquals(cls.contract.CreatedById, cls.copyContract.CreatedById);
        
        // 作成日・コピーあり
        System.assertNotEquals(cls.contract.CreatedDate, null);
        System.assertEquals(cls.contract.CreatedDate, cls.copyContract.CreatedDate);
        
        // 最終更新者・コピーあり
        System.assertNotEquals(cls.contract.LastModifiedById, null);
        System.assertEquals(cls.contract.LastModifiedById, cls.copyContract.LastModifiedById);
        
        // 最終更新日・コピーあり
        System.assertNotEquals(cls.contract.LastModifiedDate, null);
        System.assertEquals(cls.contract.LastModifiedDate, cls.copyContract.LastModifiedDate);
        
        Test.stopTest();
    }
    
    /**
     * doCopy5
     */
    static testMethod void doCopy5Test() {
            
        // 取引先データ作成
        Id accountId = createAccount();
        // 契約データ作成
        Id contractId = createContract(accountId);
        
        // テスト開始
        Test.startTest();
        
        // コンストラクタ
        SObjectCloneController cls = new SObjectCloneController();
        // init
        cls.init();
        // doCopy5
        cls.doCopy5();
        
        // ID・コピーなし
        System.assertEquals(String.isEmpty(cls.contract.Id), false);
        System.assertNotEquals(cls.contract.Id, cls.copyContract.Id);
        
        // 契約番号・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.ContractNumber), false);
        System.assertEquals(cls.contract.ContractNumber, cls.copyContract.ContractNumber);
        
        // 取引先ID・コピーあり
        System.assertEquals(String.isEmpty(cls.contract.AccountId), false);
        System.assertEquals(cls.contract.AccountId, cls.copyContract.AccountId);
        
        // 契約開始日・コピーあり
        System.assertNotEquals(cls.contract.StartDate, null);
        System.assertEquals(cls.contract.StartDate, cls.copyContract.StartDate);
        
        // 契約期間・コピーあり
        System.assertNotEquals(cls.contract.ContractTerm, null);
        System.assertEquals(cls.contract.ContractTerm, cls.copyContract.ContractTerm);
        
        // 所有者・コピーあり
        System.assertNotEquals(cls.contract.OwnerId, null);
        System.assertEquals(cls.contract.OwnerId, cls.copyContract.OwnerId);
        
        // 作成者・コピーなし
        System.assertNotEquals(cls.contract.CreatedById, null);
        System.assertNotEquals(cls.contract.CreatedById, cls.copyContract.CreatedById);
        
        // 作成日・コピーなし
        System.assertNotEquals(cls.contract.CreatedDate, null);
        System.assertNotEquals(cls.contract.CreatedDate, cls.copyContract.CreatedDate);
        
        // 最終更新者・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedById, null);
        System.assertNotEquals(cls.contract.LastModifiedById, cls.copyContract.LastModifiedById);
        
        // 最終更新日・コピーなし
        System.assertNotEquals(cls.contract.LastModifiedDate, null);
        System.assertNotEquals(cls.contract.LastModifiedDate, cls.copyContract.LastModifiedDate);
        
        // テスト終了
        Test.stopTest();
    }
    
    /**
     * 取引先データの作成
     * @param   : none
     * @return  : 取引先ID
     */
    private static Id createAccount() {
        
        Account account = new Account(
             Name = 'テスト取引先'
            ,AccountNumber = 'A-0000'
            ,Site = 'テスト部門'
        );
        
        insert account;
        
        return account.Id;
    }
    
    /**
     * 契約データの作成
     * @param   : 取引先ID [prmAccountId]
     * @return  : 契約ID
     */
    private static Id createContract(Id prmAccountId) {
        
        Contract contract = new Contract(
             AccountId = prmAccountId
            ,StartDate = system.today()
            ,ContractTerm = 3
        );
        
        insert contract;
        
        return contract.Id;
    }
}