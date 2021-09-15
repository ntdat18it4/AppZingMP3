package thanhdat.sict.project.AppZingMP3.Fragment;

import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.ion.Ion;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import thanhdat.sict.project.AppZingMP3.Activity.DanhsachbaihatActivity;
import thanhdat.sict.project.AppZingMP3.Activity.MainActivity;
import thanhdat.sict.project.AppZingMP3.Activity.PlayNhacActivity;
import thanhdat.sict.project.AppZingMP3.Adapter.BaiHatCaNhanAdapter;
import thanhdat.sict.project.AppZingMP3.Adapter.BaihathotAdapter;
import thanhdat.sict.project.AppZingMP3.Model.BaiHat;
import thanhdat.sict.project.AppZingMP3.R;
import thanhdat.sict.project.AppZingMP3.Service.APIService;
import thanhdat.sict.project.AppZingMP3.Service.DataService;

public class Fragment_Ca_Nhan extends Fragment {

    View view;
    private Button btnphatall;
    private ImageView btnsearch;
    private EditText keywordSearch;
    private TextView txtkhongcodulieu;
    private RecyclerView recyclerViewcanhan;
    private BaiHatCaNhanAdapter baiHatCaNhanAdapter;
    private ArrayList<BaiHat> baiHatArrayList = new ArrayList<>();

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_ca_nhan, container, false);
        keywordSearch = view.findViewById(R.id.search);
        btnsearch = view.findViewById(R.id.btnSearch);
        recyclerViewcanhan = view.findViewById(R.id.recyclerviewcanhan);
        txtkhongcodulieu = view.findViewById(R.id.textviewkhongcodulieu);
        btnphatall = view.findViewById(R.id.buttonphatallbaihat);

        GetData();
        getResultSearch();
        return view;
    }

    private void GetData() {

        DataService dataService = APIService.getService();
        Call<List<BaiHat>> callback  = dataService.GetAllBaihat();
        callback.enqueue(new Callback<List<BaiHat>>() {
            @Override
            public void onResponse(Call<List<BaiHat>> call, Response<List<BaiHat>> response) {
                ArrayList<BaiHat> baiHatArrayList = (ArrayList<BaiHat>) response.body();
                baiHatCaNhanAdapter = new BaiHatCaNhanAdapter(getActivity(), baiHatArrayList);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
                linearLayoutManager.setOrientation(RecyclerView.VERTICAL);
                recyclerViewcanhan.setLayoutManager(linearLayoutManager);
                recyclerViewcanhan.setAdapter(baiHatCaNhanAdapter);

                btnphatall.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(getContext(), PlayNhacActivity.class);
                    intent.putExtra("cacbaihat", baiHatArrayList);
                    getContext().startActivity(intent);
                    }
                });
                    }

            @Override
            public void onFailure(Call<List<BaiHat>> call, Throwable t) {

            }
        });
    }

    private void getResultSearch() {
        keywordSearch.setVisibility(View.VISIBLE);
        btnsearch.setOnClickListener(v -> {
            baiHatArrayList.clear();
            String keyword = keywordSearch.getText().toString();
            keyword = keyword.replace(" ","%20");
            String url = "https://thanhdat09.000webhostapp.com/Server/searchbaihat.php?tukhoa="+keyword;
            Log.d("urla",url);
            Ion.with(getContext())
                    .load(url)
                    .asJsonArray()
                    .setCallback(new FutureCallback<JsonArray>() {
                        @Override
                        public void onCompleted(Exception e, JsonArray result) {
                            if (result.size() == 0){
                                txtkhongcodulieu.setVisibility(View.VISIBLE);
                            }
                            else {
                                txtkhongcodulieu.setVisibility(View.GONE);
                                for (int i=0; i<result.size(); i++){
                                    JsonObject object= result.get(i).getAsJsonObject();
                                    BaiHat baiHat = new BaiHat();
                                    baiHat.setIdBaiHat(object.get("IdBaiHat").getAsString());
                                    baiHat.setLinkBaiHat(object.get("LinkBaiHat").getAsString());
                                    baiHat.setHinhBaiHat(object.get("HinhBaiHat").getAsString());
                                    baiHat.setTenBaiHat(object.get("TenBaiHat").getAsString());
                                    baiHat.setCaSi(object.get("CaSi").getAsString());
                                    baiHat.setLuotThich(object.get("LuotThich").getAsString());
                                    baiHatArrayList.add(baiHat);
                                }
                                baiHatCaNhanAdapter = new BaiHatCaNhanAdapter(getContext(), baiHatArrayList);
                                recyclerViewcanhan.setAdapter(baiHatCaNhanAdapter);
                            }

                        }
                    });
        });

    }
}
