package com.studioxide.laundry;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class AddActivity extends AppCompatActivity {

    Button btnback, btncart;

    ListView listView;
    String mTitle [] = {"Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas", "Duabelas", };
    String mDesc [] = {"Harga : Rp 5.000", "Harga : Rp 6.000", "Harga : Rp 7.000", "Harga : Rp 8.000", "Harga : Rp 9.000", "Harga : Rp 10.000", "Harga : Rp 11.000", "Harga : Rp 12.000", "Harga : Rp 13.000", "Harga : Rp 14.000", "Harga : Rp 15.000", "Harga : Rp 16.000"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add);

        listView = findViewById(R.id.listView);

        MyAdapter adapter = new MyAdapter(this, mTitle, mDesc);
        listView.setAdapter(adapter);

        btnback = findViewById(R.id.btnback);
        btnback.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AddActivity.this, PosActivity.class);
                startActivity(intent);
            }
        });

        btncart = findViewById(R.id.btncart);
        btncart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AddActivity.this, CartActivity.class);
                startActivity(intent);
            }
        });
    }

    class MyAdapter extends ArrayAdapter<String>{
        Context context;
        String rTitle[];
        String rDesc[];

        MyAdapter(Context c, String title[], String description[]){
            super(c, R.layout.row, R.id.maintitle, title);
            this.context = c;
            this.rTitle = title;
            this.rDesc = description;
        }

        @NonNull
        @Override
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            LayoutInflater layoutInflater = (LayoutInflater)getApplicationContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            View row = layoutInflater.inflate(R.layout.row, parent, false);
            TextView myTitle = row.findViewById(R.id.maintitle);
            TextView myDesc = row.findViewById(R.id.subtitle);

            myTitle.setText(rTitle[position]);
            myDesc.setText(rDesc[position]);

            return row;
        }
    }


}
