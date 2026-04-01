module sr_flipflop(input s,r,clk,output q,q_bar);
  wire w1,w2;
  assign w1=~(s&clk);
  assign w2=~(r&clk);
  assign q=~(w1&q_bar);
  assign q=~(w2&q);
endmodule
