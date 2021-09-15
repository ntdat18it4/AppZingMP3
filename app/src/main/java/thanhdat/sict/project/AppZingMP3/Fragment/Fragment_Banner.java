package thanhdat.sict.project.AppZingMP3.Fragment;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;

import java.util.ArrayList;
import java.util.List;

import me.relex.circleindicator.CircleIndicator;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import thanhdat.sict.project.AppZingMP3.Adapter.BannerAdapter;
import thanhdat.sict.project.AppZingMP3.Model.QuangCao;
import thanhdat.sict.project.AppZingMP3.R;
import thanhdat.sict.project.AppZingMP3.Service.APIService;
import thanhdat.sict.project.AppZingMP3.Service.DataService;

public class Fragment_Banner extends Fragment {

    View view;
    ViewPager viewPager;
    CircleIndicator circleIndicator;
    BannerAdapter bannerAdapter;
    Runnable runnable;
    Handler handler;
    int currentItem;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_banner, container, false);

        anhxa();
        GetData();
        return view;
    }

    private void anhxa() {
        viewPager = view.findViewById(R.id.viewpager);
        circleIndicator = view.findViewById(R.id.indicatordefaul);
    }

    private void GetData() {
        DataService dataService = APIService.getService();
        //gửi phương thức
        Call<List<QuangCao>> callback = dataService.GetDataBanner();
        callback.enqueue(new Callback<List<QuangCao>>() {
            @Override
            public void onResponse(Call<List<QuangCao>> call, Response<List<QuangCao>> response) {
                ArrayList<QuangCao> banners =(ArrayList<QuangCao>) response.body();
                bannerAdapter = new BannerAdapter(getActivity(), banners);
                viewPager.setAdapter(bannerAdapter);
                circleIndicator.setViewPager(viewPager);
                // hàm quản lý
                handler = new Handler();
                // thực hiện hành động handler gọi
                runnable = new Runnable() {
                    @Override
                    public void run() {
                        currentItem = viewPager.getCurrentItem();
                        currentItem ++;
                        if (currentItem >= viewPager.getAdapter().getCount()){
                            currentItem = 0;
                        }
                        viewPager.setCurrentItem(currentItem, true);
                        handler.postDelayed(runnable,8000);
                    }
                };
                handler.postDelayed(runnable, 8000);

            }

            @Override
            public void onFailure(Call<List<QuangCao>> call, Throwable t) {

            }
        });
    }
}
