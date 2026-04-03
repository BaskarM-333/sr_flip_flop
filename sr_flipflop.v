module sr_flipflop(input s,r,clk,output q,q_bar);
  wire w1,w2;
  assign w1=~(s&clk);
  assign w2=~(r&clk);
  assign q=~(w1&q_bar);
  assign q=~(w2&q);
endmodule

module sr_flipflop(input s,r,clk,output q,q_bar);
  always @(posedge clk)begin
    if(s&&~r)begin
      q<=1;
      q_bar<=0;
    end
    else if(~s&&r)begin
      q<=0;
      q_bar<=1;
    end
    else if(~s&&~r)begin
      q<=q;
      q_bar<=q_bar;
    end
    else begin
      q<=1'bx;
    end
  end
endmodule
