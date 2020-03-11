package com.studioxide.laundry;

import androidx.appcompat.app.AppCompatActivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class DashboardActivity extends AppCompatActivity {
    private Button btnexit, btnpos, btncost, btnbeli, btnreport, btnbook;

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);

        btnexit = (Button) findViewById(R.id.btnexit);
        btnpos = (Button) findViewById(R.id.btnpos);
        btncost = (Button) findViewById(R.id.btncost);
        btnbeli = (Button) findViewById(R.id.btnbeli);
        btnreport = (Button) findViewById(R.id.btnreport);
        btnbook = (Button) findViewById(R.id.btnbook);


        btnexit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(DashboardActivity.this, MainActivity.class);
                intent.setFlags(Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
                startActivity(intent);

                finish();

                Toast.makeText(DashboardActivity.this, "Sign Out", Toast.LENGTH_LONG).show();
            }
        });

        btnpos.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DashboardActivity.this, PosActivity.class);
                startActivity(intent);
            }
        });

        btncost.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DashboardActivity.this, PengeluaranActivity.class);
                startActivity(intent);
            }
        });

        btnbeli.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DashboardActivity.this, BeliActivity.class);
                startActivity(intent);
            }
        });

        btnreport.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DashboardActivity.this, ReportActivity.class);
                startActivity(intent);
            }
        });

        btnbook.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DashboardActivity.this, BukuActivity.class);
                startActivity(intent);
            }
        });
    }
}
