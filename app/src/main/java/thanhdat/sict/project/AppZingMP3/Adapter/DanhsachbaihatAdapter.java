package thanhdat.sict.project.AppZingMP3.Adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import thanhdat.sict.project.AppZingMP3.Activity.PlayNhacActivity;
import thanhdat.sict.project.AppZingMP3.Model.BaiHat;
import thanhdat.sict.project.AppZingMP3.R;
import thanhdat.sict.project.AppZingMP3.Service.APIService;
import thanhdat.sict.project.AppZingMP3.Service.DataService;

public class DanhsachbaihatAdapter extends RecyclerView.Adapter<DanhsachbaihatAdapter.ViewHolder> {

    Context context;
    ArrayList<BaiHat> arraylistbaiHat;

    public DanhsachbaihatAdapter(Context context, ArrayList<BaiHat> baiHatArrayList) {
        this.context = context;
        this.arraylistbaiHat = baiHatArrayList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        LayoutInflater inflater = LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.dong_danh_sach_bai_hat, parent, false);

        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        BaiHat baihat = arraylistbaiHat.get(position);
        holder.txtindex.setText(position + 1 + "");
        holder.txttenbaihat.setText(baihat.getTenBaiHat());
        holder.txtcasi.setText(baihat.getCaSi());

    }

    @Override
    public int getItemCount() {
        return arraylistbaiHat.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{

        TextView txtindex, txttenbaihat, txtcasi;
        ImageView imgluotthich;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            txtcasi = itemView.findViewById(R.id.textviewtencasi);
            txtindex = itemView.findViewById(R.id.textviewdanhsachindex);
            txttenbaihat = itemView.findViewById(R.id.textviewtenbaihat);
            imgluotthich = itemView.findViewById(R.id.imageviewluotthichdanhsachbaihat);

            imgluotthich.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    imgluotthich.setImageResource(R.drawable.iconloved);
                    DataService dataService = APIService.getService();
                    Call<String> callback = dataService.UpdateLuotthich("1", arraylistbaiHat.get(getPosition()).getIdBaiHat());
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
                    intent.putExtra("cakhuc", arraylistbaiHat.get(getPosition()));
                    context.startActivity(intent);
                }
            });
        }

    }
}
