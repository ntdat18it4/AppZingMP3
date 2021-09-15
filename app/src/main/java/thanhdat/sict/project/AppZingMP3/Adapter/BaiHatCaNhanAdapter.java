package thanhdat.sict.project.AppZingMP3.Adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;

import com.squareup.picasso.Picasso;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import thanhdat.sict.project.AppZingMP3.Activity.PlayNhacActivity;
import thanhdat.sict.project.AppZingMP3.Model.BaiHat;
import thanhdat.sict.project.AppZingMP3.R;
import thanhdat.sict.project.AppZingMP3.Service.APIService;
import thanhdat.sict.project.AppZingMP3.Service.DataService;

public class BaiHatCaNhanAdapter extends RecyclerView.Adapter<BaiHatCaNhanAdapter.ViewHolder> {

    private Context context;
    private ArrayList<BaiHat> baiHatcanhanArrayList;

    public BaiHatCaNhanAdapter(Context context, ArrayList<BaiHat> baiHatcanhanArrayList) {
        this.context = context;
        this.baiHatcanhanArrayList = baiHatcanhanArrayList;
    }

    @NonNull
    @Override
    public BaiHatCaNhanAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        LayoutInflater inflater = LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.dong_ca_nhan, parent, false);

        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        BaiHat baihat = baiHatcanhanArrayList.get(position);
        holder.txttencasi.setText(baihat.getCaSi());
        holder.txttenbaihat.setText(baihat.getTenBaiHat());
        Picasso.with(context).load(baihat.getHinhBaiHat()).into(holder.imghinh);

    }

    @Override
    public int getItemCount() {
        return baiHatcanhanArrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        private ImageView imghinh, imgluotthich;
        private TextView txttenbaihat, txttencasi;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            txttenbaihat = itemView.findViewById(R.id.textviewtenbaihatcanhan);
            txttencasi = itemView.findViewById(R.id.textviewtencasibaihatcanhan);
            imghinh = itemView.findViewById(R.id.imageviewbaihatcanhan);
            imgluotthich = itemView.findViewById(R.id.imageviewluotthichcanhan);

            imgluotthich.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    imgluotthich.setImageResource(R.drawable.iconloved);
                    DataService dataService = APIService.getService();
                    Call<String> callback = dataService.UpdateLuotthich("1", baiHatcanhanArrayList.get(getPosition()).getIdBaiHat());
                    callback.enqueue(new Callback<String>() {
                        @Override
                        public void onResponse(Call<String> call, Response<String> response) {
                            String ketqua = response.body();
                            if (ketqua.equals("Ok")){
                                Toast.makeText(context, "Đã Thích", Toast.LENGTH_SHORT).show();
                            }else {
                                Toast.makeText(context, "Lỗi!!", Toast.LENGTH_SHORT).show();
                            }
                        }
                        @Override
                        public void onFailure(Call<String> call, Throwable t) {
                        }
                    });
                    imgluotthich.setEnabled(false);
                }
            });

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(context, PlayNhacActivity.class);
                    intent.putExtra("cakhuc", baiHatcanhanArrayList.get(getPosition()));
                    context.startActivity(intent);
                }
            });

        }
    }
}

