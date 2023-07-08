module ClockMultiplier (
  input wire clk_in,
  output wire clk_out
);

  reg [2:0] count = 0;
  reg clk_out_reg = 0;

  always @(posedge clk_in) begin
    count <= count + 1;
    if (count == 2'b11) begin
      count <= 0;
      clk_out_reg <= ~clk_out_reg;
    end
  end

  assign clk_out = clk_out_reg;

endmodule
