/**
 * sObjectのコピー
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class SObjectCloneController {
    
    // 取引先
    public Account account {get; set;}
    // 契約
    public Contract contract {get; set;}
    // 契約(コピー)
    public Contract copyContract {get; set;}
    
    /**
     * コンストラクタ
     */
    public SObjectCloneController() {
        System.debug('SObjectCloneController:START');
        
        // 契約取得
        this.contract = new Contract();
        // 契約コピー初期化
        this.copyContract = new Contract();
        
        System.debug('SObjectCloneController:END');
    }
    
    /**
     * init
     * @param   : none
     * @return  : none
     */
    public void init() {
        System.debug('init:START');
        
        // 契約取得
        this.contract = getContract();
        
        System.debug('init:END');
    }
    
    /**
     * 契約データ取得
     * @param   : none
     * @return  : 契約
     */
    private Contract getContract() {
        List<Contract> contracts = [
            select
                 Id
                ,ContractNumber
                ,AccountId
                ,StartDate
                ,ContractTerm
                ,OwnerId
                ,CreatedById
                ,CreatedDate
                ,LastModifiedById
                ,LastModifiedDate
            from
                Contract
            limit 1
        ];
        
        if (contracts.isEmpty() != true) {
            return contracts[0];
        }
        
        return new Contract();
    }
    
    /**
     * Copy1 ボタン処理(パラメータなし)
     * @param   : none
     * @return  : none
     */
    public void doCopy1() {
        System.debug('doCopy1:START');
        
        // コピー
        this.copyContract = new Contract();
        this.copyContract = this.contract.clone(false, false, false, false);
        
        System.debug('doCopy1:END');
    }
    
    /**
     * Copy2 ボタン処理(IDのコピー)
     * @param   : none
     * @return  : none
     */
    public void doCopy2() {
        System.debug('doCopy2:START');
        
        // コピー
        this.copyContract = new Contract();
        this.copyContract = this.contract.clone(true, false, false, false);
        
        System.debug('doCopy2:END');
    }
    
    /**
     * Copy3 ボタン処理(参照渡し)
     * @param   : none
     * @return  : none
     */
    public void doCopy3() {
        System.debug('doCopy3:START');
        
        // コピー
        this.copyContract = new Contract();
        this.copyContract = this.contract.clone(false, true, false, false);
        
        System.debug('doCopy3:END');
    }
    
    /**
     * Copy4 ボタン処理(システム情報コピー)
     * @param   : none
     * @return  : none
     */
    public void doCopy4() {
        System.debug('doCopy4:START');
        
        // コピー
        this.copyContract = new Contract();
        this.copyContract = this.contract.clone(false, false, true, false);
        
        System.debug('doCopy4:END');
    }
    
    /**
     * Copy5 ボタン処理(自動採番コピー)
     * @param   : none
     * @return  : none
     */
    public void doCopy5() {
        System.debug('doCopy5:START');
        
        // コピー
        this.copyContract = new Contract();
        this.copyContract = this.contract.clone(false, false, false, true);
        
        System.debug('doCopy5:END');
    }
}