package com.studioxide.laundry;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

public class PosActivity extends AppCompatActivity {

    Button btnback;
    FloatingActionButton btntransaksi;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pos);

        btnback = findViewById(R.id.btnback);
        btnback.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(PosActivity.this, DashboardActivity.class);
                startActivity(intent);
            }
        });

        btntransaksi = findViewById(R.id.btntransaksi);
        btntransaksi.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(PosActivity.this, AddActivity.class);
                startActivity(intent);
            }
        });
    }
}
