/*
 * sObjectのコピー・テストクラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class SObjectCloneControllerTest {

	/*
	 * コンストラクタ・テスト
	 */
    static testMethod void SObjectCloneControllerTest() {
        System.debug('◆◆◆◆SObjectCloneControllerTest:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            SObjectCloneController cls = new SObjectCloneController();
            System.assertEquals(String.isEmpty(cls.objContract.Id), true);
            System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆SObjectCloneControllerTest:END');
    }
    
    /*
	 * init・テスト
	 */
    static testMethod void initTest1() {
        System.debug('◆◆◆◆initTest1:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆initTest1:END');
    }
    
    /*
	 * init・テスト
	 */
    static testMethod void initTest2() {
        System.debug('◆◆◆◆initTest2:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
            
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            SObjectCloneController cls = new SObjectCloneController();
            // init
            cls.init();
            System.assertEquals(String.isEmpty(cls.objContract.Id), true);
            System.assertEquals(String.isEmpty(cls.copyContract.Id), true);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆initTest2:END');
    }
    
    /*
	 * doCopy1・テスト
	 */
    static testMethod void doCopy1Test() {
        System.debug('◆◆◆◆doCopy1Test:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            // doCopy1
            cls.doCopy1();
            
            // ID・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertNotEquals(cls.objContract.Id, cls.copyContract.Id);
            
            // 契約番号・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.ContractNumber), false);
            System.assertNotEquals(cls.objContract.ContractNumber, cls.copyContract.ContractNumber);
            
            // 取引先ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.AccountId), false);
            System.assertEquals(cls.objContract.AccountId, cls.copyContract.AccountId);
            
            // 契約開始日・コピーあり
            System.assertNotEquals(cls.objContract.StartDate, null);
            System.assertEquals(cls.objContract.StartDate, cls.copyContract.StartDate);
            
            // 契約期間・コピーあり
            System.assertNotEquals(cls.objContract.ContractTerm, null);
            System.assertEquals(cls.objContract.ContractTerm, cls.copyContract.ContractTerm);
            
            // 所有者・コピーあり
            System.assertNotEquals(cls.objContract.OwnerId, null);
            System.assertEquals(cls.objContract.OwnerId, cls.copyContract.OwnerId);
            
            // 作成者・コピーなし
            System.assertNotEquals(cls.objContract.CreatedById, null);
            System.assertNotEquals(cls.objContract.CreatedById, cls.copyContract.CreatedById);
            
            // 作成日・コピーなし
            System.assertNotEquals(cls.objContract.CreatedDate, null);
            System.assertNotEquals(cls.objContract.CreatedDate, cls.copyContract.CreatedDate);
            
            // 最終更新者・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedById, null);
            System.assertNotEquals(cls.objContract.LastModifiedById, cls.copyContract.LastModifiedById);
            
            // 最終更新日・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedDate, null);
            System.assertNotEquals(cls.objContract.LastModifiedDate, cls.copyContract.LastModifiedDate);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doCopy1Test:END');
    }
    
    /*
	 * doCopy2・テスト
	 */
    static testMethod void doCopy2Test() {
        System.debug('◆◆◆◆doCopy2Test:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            // doCopy2
            cls.doCopy2();
            
            // ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertEquals(cls.objContract.Id, cls.copyContract.Id);
            
            // 契約番号・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.ContractNumber), false);
            System.assertNotEquals(cls.objContract.ContractNumber, cls.copyContract.ContractNumber);
            
            // 取引先ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.AccountId), false);
            System.assertEquals(cls.objContract.AccountId, cls.copyContract.AccountId);
            
            // 契約開始日・コピーあり
            System.assertNotEquals(cls.objContract.StartDate, null);
            System.assertEquals(cls.objContract.StartDate, cls.copyContract.StartDate);
            
            // 契約期間・コピーあり
            System.assertNotEquals(cls.objContract.ContractTerm, null);
            System.assertEquals(cls.objContract.ContractTerm, cls.copyContract.ContractTerm);
            
            // 所有者・コピーあり
            System.assertNotEquals(cls.objContract.OwnerId, null);
            System.assertEquals(cls.objContract.OwnerId, cls.copyContract.OwnerId);
            
            // 作成者・コピーなし
            System.assertNotEquals(cls.objContract.CreatedById, null);
            System.assertNotEquals(cls.objContract.CreatedById, cls.copyContract.CreatedById);
            
            // 作成日・コピーなし
            System.assertNotEquals(cls.objContract.CreatedDate, null);
            System.assertNotEquals(cls.objContract.CreatedDate, cls.copyContract.CreatedDate);
            
            // 最終更新者・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedById, null);
            System.assertNotEquals(cls.objContract.LastModifiedById, cls.copyContract.LastModifiedById);
            
            // 最終更新日・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedDate, null);
            System.assertNotEquals(cls.objContract.LastModifiedDate, cls.copyContract.LastModifiedDate);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doCopy2Test:END');
    }
    
    /*
	 * doCopy3・テスト
	 */
    static testMethod void doCopy3Test() {
        System.debug('◆◆◆◆doCopy3Test:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            // doCopy3
            cls.doCopy3();
            
            // ID・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertNotEquals(cls.objContract.Id, cls.copyContract.Id);
            
            // 契約番号・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.ContractNumber), false);
            System.assertNotEquals(cls.objContract.ContractNumber, cls.copyContract.ContractNumber);
            
            // 取引先ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.AccountId), false);
            System.assertEquals(cls.objContract.AccountId, cls.copyContract.AccountId);
            
            // 契約開始日・コピーあり
            System.assertNotEquals(cls.objContract.StartDate, null);
            System.assertEquals(cls.objContract.StartDate, cls.copyContract.StartDate);
            
            // 契約期間・コピーあり
            System.assertNotEquals(cls.objContract.ContractTerm, null);
            System.assertEquals(cls.objContract.ContractTerm, cls.copyContract.ContractTerm);
            
            // 所有者・コピーあり
            System.assertNotEquals(cls.objContract.OwnerId, null);
            System.assertEquals(cls.objContract.OwnerId, cls.copyContract.OwnerId);
            
            // 作成者・コピーなし
            System.assertNotEquals(cls.objContract.CreatedById, null);
            System.assertNotEquals(cls.objContract.CreatedById, cls.copyContract.CreatedById);
            
            // 作成日・コピーなし
            System.assertNotEquals(cls.objContract.CreatedDate, null);
            System.assertNotEquals(cls.objContract.CreatedDate, cls.copyContract.CreatedDate);
            
            // 最終更新者・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedById, null);
            System.assertNotEquals(cls.objContract.LastModifiedById, cls.copyContract.LastModifiedById);
            
            // 最終更新日・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedDate, null);
            System.assertNotEquals(cls.objContract.LastModifiedDate, cls.copyContract.LastModifiedDate);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doCopy3Test:END');
    }
    
    /*
	 * doCopy4・テスト
	 */
    static testMethod void doCopy4Test() {
        System.debug('◆◆◆◆doCopy4Test:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            // doCopy4
            cls.doCopy4();
            
            // ID・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertNotEquals(cls.objContract.Id, cls.copyContract.Id);
            
            // 契約番号・コピーなし
            System.assertEquals(String.isEmpty(cls.objContract.ContractNumber), false);
            System.assertNotEquals(cls.objContract.ContractNumber, cls.copyContract.ContractNumber);
            
            // 取引先ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.AccountId), false);
            System.assertEquals(cls.objContract.AccountId, cls.copyContract.AccountId);
            
            // 契約開始日・コピーあり
            System.assertNotEquals(cls.objContract.StartDate, null);
            System.assertEquals(cls.objContract.StartDate, cls.copyContract.StartDate);
            
            // 契約期間・コピーあり
            System.assertNotEquals(cls.objContract.ContractTerm, null);
            System.assertEquals(cls.objContract.ContractTerm, cls.copyContract.ContractTerm);
            
            // 所有者・コピーあり
            System.assertNotEquals(cls.objContract.OwnerId, null);
            System.assertEquals(cls.objContract.OwnerId, cls.copyContract.OwnerId);
            
            // 作成者・コピーあり
            System.assertNotEquals(cls.objContract.CreatedById, null);
            System.assertEquals(cls.objContract.CreatedById, cls.copyContract.CreatedById);
            
            // 作成日・コピーあり
            System.assertNotEquals(cls.objContract.CreatedDate, null);
            System.assertEquals(cls.objContract.CreatedDate, cls.copyContract.CreatedDate);
            
            // 最終更新者・コピーあり
            System.assertNotEquals(cls.objContract.LastModifiedById, null);
            System.assertEquals(cls.objContract.LastModifiedById, cls.copyContract.LastModifiedById);
            
            // 最終更新日・コピーあり
            System.assertNotEquals(cls.objContract.LastModifiedDate, null);
            System.assertEquals(cls.objContract.LastModifiedDate, cls.copyContract.LastModifiedDate);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doCopy4Test:END');
    }
    
    /*
	 * doCopy5・テスト
	 */
    static testMethod void doCopy5Test() {
        System.debug('◆◆◆◆doCopy5Test:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
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
            System.assertEquals(String.isEmpty(cls.objContract.Id), false);
            System.assertNotEquals(cls.objContract.Id, cls.copyContract.Id);
            
            // 契約番号・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.ContractNumber), false);
            System.assertEquals(cls.objContract.ContractNumber, cls.copyContract.ContractNumber);
            
            // 取引先ID・コピーあり
            System.assertEquals(String.isEmpty(cls.objContract.AccountId), false);
            System.assertEquals(cls.objContract.AccountId, cls.copyContract.AccountId);
            
            // 契約開始日・コピーあり
            System.assertNotEquals(cls.objContract.StartDate, null);
            System.assertEquals(cls.objContract.StartDate, cls.copyContract.StartDate);
            
            // 契約期間・コピーあり
            System.assertNotEquals(cls.objContract.ContractTerm, null);
            System.assertEquals(cls.objContract.ContractTerm, cls.copyContract.ContractTerm);
            
            // 所有者・コピーあり
            System.assertNotEquals(cls.objContract.OwnerId, null);
            System.assertEquals(cls.objContract.OwnerId, cls.copyContract.OwnerId);
            
            // 作成者・コピーなし
            System.assertNotEquals(cls.objContract.CreatedById, null);
            System.assertNotEquals(cls.objContract.CreatedById, cls.copyContract.CreatedById);
            
            // 作成日・コピーなし
            System.assertNotEquals(cls.objContract.CreatedDate, null);
            System.assertNotEquals(cls.objContract.CreatedDate, cls.copyContract.CreatedDate);
            
            // 最終更新者・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedById, null);
            System.assertNotEquals(cls.objContract.LastModifiedById, cls.copyContract.LastModifiedById);
            
            // 最終更新日・コピーなし
            System.assertNotEquals(cls.objContract.LastModifiedDate, null);
            System.assertNotEquals(cls.objContract.LastModifiedDate, cls.copyContract.LastModifiedDate);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doCopy5Test:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
    
    /*
	 * 取引先データの作成
	 * @param	: なし
	 * @return	: 取引先ID
	 */
	private static Id createAccount() {
		System.debug('◆◆◆◆createAccount:START');
		
		// 取引先
		Account objAccount = new Account();
		// 取引先名
		objAccount.Name = 'テスト取引先';
		// 取引先番号
		objAccount.AccountNumber = 'A-0000';
		// 取引先 部門
		objAccount.Site = 'テスト部門';
		// INSERT
		insert objAccount;
		
		System.debug('◆◆◆◆createAccount:END');
		return objAccount.Id;
	}
	
	/*
	 * 契約データの作成
	 * @param	: 取引先ID	[prmAccountId]
	 * @return	: 契約ID
	 */
	private static Id createContract(Id prmAccountId) {
		System.debug('◆◆◆◆createContract:START');
		
		// 契約
		Contract objContract = new Contract();
		// 取引先ID
		objContract.AccountId = prmAccountId;
		// 契約開始日
		objContract.StartDate = system.today();
		// 契約 期間(月)
		objContract.ContractTerm = 3;
		// INSERT
		insert objContract;
		
		System.debug('◆◆◆◆createContract:END');
		return objContract.Id;
	}
}