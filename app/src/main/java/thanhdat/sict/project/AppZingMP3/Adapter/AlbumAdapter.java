package thanhdat.sict.project.AppZingMP3.Adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.squareup.picasso.Picasso;

import java.util.ArrayList;

import thanhdat.sict.project.AppZingMP3.Activity.DanhsachbaihatActivity;
import thanhdat.sict.project.AppZingMP3.Model.Album;
import thanhdat.sict.project.AppZingMP3.R;

public class AlbumAdapter extends RecyclerView.Adapter<AlbumAdapter.ViewHolder> {

    Context context;
    ArrayList<Album> albumArray;

    public AlbumAdapter(Context context, ArrayList<Album> albumArray) {
        this.context = context;
        this.albumArray = albumArray;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.dong_album, parent, false);

        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        Album album = albumArray.get(position);
        holder.txttencasialbum.setText(album.getTenCaSiAlbum());
        holder.txttenalbum.setText(album.getTenAlbum());
        Picasso.with(context).load(album.getHinhAlbum()).into(holder.imghinhalbum);

    }

    @Override
    public int getItemCount() {
        return albumArray.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{

        ImageView imghinhalbum;
        TextView txttenalbum, txttencasialbum;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            imghinhalbum = itemView.findViewById(R.id.imageviewalbum);
            txttenalbum = itemView.findViewById(R.id.textviewtenalbum);
            txttencasialbum = itemView.findViewById(R.id.textviewtencasialbum);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(context, DanhsachbaihatActivity.class);
                    intent.putExtra("album", albumArray.get(getPosition()));
                    context.startActivity(intent);
                }
            });
        }
    }
}
