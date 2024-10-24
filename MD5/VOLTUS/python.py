import os
import shutil

def create_output_directory(simulation_number):
    output_dir = "simulation_"+str(simulation_number)
    os.makedirs(output_dir)
    return output_dir

def generate_tcl_script(start_time, end_time, output_dir):
    # Read the template TCL script
    with open("voltus_template.tcl", "r") as template_file:
        template_contents = template_file.read()

    # Replace placeholders with actual values
    tcl_script = template_contents.replace("start_time", str(start_time))
    tcl_script = tcl_script.replace("end_time", str(end_time))
    tcl_script = tcl_script.replace("output_directory_rail", str(output_dir)+"/rail_analysis")
    tcl_script = tcl_script.replace("output_directory_power", str(output_dir)+"/power_analysis")

    # Save the generated TCL script to a file
    tcl_path = "voltus_simulation_"+str(start_time)+"_"+str(end_time)+".tcl"
    tcl_script_filename = os.path.join(output_dir, tcl_path)
    with open(tcl_script_filename, "w") as tcl_file:
        tcl_file.write(tcl_script)

    return tcl_script_filename
#def move_results_to_directory(simulation_number, output_directory):
    # Move the results to the simulation directory
    #results_directory = "path/to/voltus/output/directory"  # Replace with the actual Voltus output directory
    #for root, dirs, files in os.walk(results_directory):
        #for file in files:
            #source_file = os.path.join(root, file)
            #destination_file = os.path.join(output_directory, file)
            #shutil.move(source_file, destination_file)

if __name__ == "__main__":
    # Total clock cycles in the VCD file
    total_clock_cycles = 10000

    # Number of time windows and clock cycles per window
    num_time_windows = 650
    clock_cycles_per_window = 2500000 ###2500ns converted on scale of 10ps
    #voltus_rail_output_file = "/home/aavyas1/research/fir/voltus/auto_results/rail_analysis"
    #overall_report_file = "/home/aavyas1/research/fir/voltus/auto_results"
    
    for i in range(num_time_windows):
        # Calculate the start and end time instances for each time window
        start_time = 360000 +i*10000
        end_time = start_time + 20000 - 1

        # Create a directory for the current simulation //// new folder
        output_directory = create_output_directory(i)

        # Generate the TCL script for the current time window
        tcl_script_filename = generate_tcl_script(start_time, end_time, output_directory)

        # Run Cadence Voltus with the generated TCL script
        os.system("voltus "+"-init "+str(tcl_script_filename))

        # Move the results to the simulation directory
        #move_results_to_directory(i, output_directory)

