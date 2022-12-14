public class Covid19Parser {
    
    @auraEnabled
    public AllStats allStats;
    
    @auraEnabled
    public List<Countries> countries;
    
    
    
    public class AllStats{
        
        @auraEnabled public String TotalConfirmed;
        @auraEnabled public String NewConfirmed;
        @auraEnabled public String TotalRecovered;
        @auraEnabled public String TotalDeaths;
        System.debug('dasda');
        
        
        
    }
    
    public class Countries{
        
        @auraEnabled public String Country;
        @auraEnabled public String NewConfirmed;
        @auraEnabled public String TotalConfirmed;
        @auraEnabled public String NewDeaths;
        @auraEnabled public String TotalDeaths;
        @auraEnabled public String NewRecovered;
        @auraEnabled public String TotalRecovered;
    }
    
    public static Covid19Parser parse(String json){
        return (Covid19Parser) System.JSON.deserialize(json,Covid19Parser.class);
    }
    
    
    
}