public class Covid19Controller {
    @auraEnabled 
    public static Covid19Parser getCovidData(){
    string baseUrl ='https://api.covid19api.com/summary';
        HttpRequest request = new HttpRequest();
        request.setEndpoint(baseUrl);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json');
        Http http = new Http();
        HttpResponse response = new HttpResponse();
        response = http.send(request);
        
        Covid19Parser prser = Covid19Parser.parse(response.getBody().replace('"Global":','"AllStats":')); 
        System.debug('dasda');
        return prser;
            
    }

}