module ClockMultiplier_tb;

  reg clk_in;
  wire clk_out;

  ClockMultiplier dut (
    .clk_in(clk_in),
    .clk_out(clk_out)
  );

  initial begin
    clk_in = 0;
    #10;
    forever #5 clk_in = ~clk_in;
  end

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, ClockMultiplier_tb);
    $display("Starting simulation...");
    #100;
    $display("Simulation completed!");
    $finish;
  end

endmodule
