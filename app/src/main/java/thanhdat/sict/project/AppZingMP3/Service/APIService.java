package thanhdat.sict.project.AppZingMP3.Service;

public class APIService {

    private  static String base_url = "https://thanhdat09.000webhostapp.com/Server/";

//    private  static String base_url = "https://192.168.2.26/zingmp3/Server/";

    //nhận và gửi dữ liệu đi
    public static DataService getService(){
        return APIRetrofitClient.getClient(base_url).create(DataService.class);
    }
}
