package thanhdat.sict.project.AppZingMP3.Activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.ViewPager;

import android.os.Bundle;

import com.google.android.material.tabs.TabLayout;

import thanhdat.sict.project.AppZingMP3.Adapter.MainViewPagerAdapter;
import thanhdat.sict.project.AppZingMP3.Fragment.Fragment_Bang_Xep_Hang;
import thanhdat.sict.project.AppZingMP3.Fragment.Fragment_Ca_Nhan;
import thanhdat.sict.project.AppZingMP3.Fragment.Fragment_Login;
import thanhdat.sict.project.AppZingMP3.Fragment.Fragment_Trang_Chu;
import thanhdat.sict.project.AppZingMP3.R;

public class MainActivity extends AppCompatActivity {

    private TabLayout tabLayout;
    private ViewPager viewPager;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        tabLayout = findViewById(R.id.myTabLayout);
        viewPager = findViewById(R.id.myViewPager);

        init();
    }

    //Khởi tạo
    private void init() {

        MainViewPagerAdapter mainViewPagerAdapter = new MainViewPagerAdapter(getSupportFragmentManager());

        mainViewPagerAdapter.addFragment(new Fragment_Ca_Nhan(), "Cá nhân");
        mainViewPagerAdapter.addFragment(new Fragment_Trang_Chu(),"Khám phá");
        mainViewPagerAdapter.addFragment(new Fragment_Bang_Xep_Hang(),"BXH");
        mainViewPagerAdapter.addFragment(new Fragment_Login(),"Đăng nhập");


        viewPager.setAdapter(mainViewPagerAdapter);
        tabLayout.setupWithViewPager(viewPager);
        tabLayout.getTabAt(0).setIcon(R.drawable.iconcanhan);
        tabLayout.getTabAt(1).setIcon(R.drawable.iconkhampha);
        tabLayout.getTabAt(2).setIcon(R.drawable.iconbxh);
        tabLayout.getTabAt(3).setIcon(R.drawable.iconperson);

    }

}
