package com.studioxide.laundry;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    EditText txtuser, txtpassword;
    Button btnlogin;

    String URL= "http://10.0.2.2/laundry/loginuser/index.php";

    JSONParser jsonParser = new JSONParser();

    int i=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtuser=(EditText)findViewById(R.id.txtuser);
        txtpassword=(EditText)findViewById(R.id.txtpassword);
        btnlogin=(Button)findViewById(R.id.btnlogin);

        btnlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AttemptLogin attemptLogin= new AttemptLogin();
                attemptLogin.execute(txtuser.getText().toString(), txtpassword.getText().toString(), "");
            }
        });
    }

    private class AttemptLogin extends AsyncTask<String, String, JSONObject>{
        @Override
        protected void onPreExecute(){
            super.onPreExecute();
        }

        @Override
        protected JSONObject doInBackground(String... args) {
            String username = args [0];
            String password = args [0];

            ArrayList params = new ArrayList();
            params.add(new BasicNameValuePair("username", username));
            params.add(new BasicNameValuePair("password", password));
            JSONObject json = jsonParser.makeHttpRequest(URL, "POST", params);

            return json;
        }

        protected void onPostExecute(JSONObject result){
//            try {
//                if (result != null) {
//                    Toast.makeText(getApplicationContext(),result.getString("message"), Toast.LENGTH_LONG).show();
//                } else {
//                    Toast.makeText(getApplicationContext(), "Unable to retrieve any data from server", Toast.LENGTH_LONG).show();
//                }
//            }catch (JSONException e){
//                e.printStackTrace();
//            }
            try {
                if (result != null)
                {
                    if (result.getString("message").equals("Successfully logged in")) {
                        Intent intent = new Intent();
                        //(, DashboardActivity.class);
                        intent.setClass(getApplicationContext(), DashboardActivity.class);
                        startActivity(intent);
                        finish();

                        Toast.makeText(MainActivity.this, "Sign In", Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(MainActivity.this, "Invalid Login Data", Toast.LENGTH_LONG).show();
                    }
                } else {
                    Toast.makeText(getApplicationContext(), "Unable to retrieve any data from server", Toast.LENGTH_LONG).show();
                }
            }catch (JSONException e) {
                e.printStackTrace();

            }

        }

    }

}
