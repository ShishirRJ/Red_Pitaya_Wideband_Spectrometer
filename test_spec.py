import casperfpga
import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import argparse
import time



parser = argparse.ArgumentParser()
parser.add_argument("-f", "--file", help="fpg file to upload to red-pitaya")
parser.add_argument("-r", "--redpitaya", help="Red-Pitaya hostname or  IP address")
parser.add_argument("-a", "--accums", help="Number of accumulations",default=4)
args = parser.parse_args()


red_pitaya = args.redpitaya
print("hello world")
print("Connecting to Red Pitaya: {0}".format(red_pitaya))
print("hello world")
fpga=casperfpga.CasperFpga(red_pitaya)
print("hello world")

file_fpg=args.file
print("Uploading: {0}".format(file_fpg))
fpga.upload_to_ram_and_program(file_fpg)
print("hello world")

fft_len=256
acc_len=int(args.accums)
snap_cyc=10
print("These are the devices in your design ...")
print(fpga.listdev())
print("hello world")

fpga.write_int('acc_len',acc_len)
fpga.write_int('snap_gap',snap_cyc)
fpga.write_int('reg_cntrl',1)
print("hello world")

time.sleep(5)
while (True):
    # print("hello world 0")
    # print(fpga.read_int('trig_cnt'))  # Reset sync counter
    # print("hello world 1")
    fpga.snapshots.accum0_snap_ss.arm()
    print("hello world 2")
    spec0=fpga.snapshots.accum0_snap_ss.read(arm=False)['data']
    print(spec0)
    print("hello world 3")
    fpga.snapshots.accum1_snap_ss.arm()
    # print("hello world 4")
    # spec1=fpga.snapshots.accum1_snap_ss.read(arm=False)['data']
    # print(fpga.read_int('sync_cnt'))
    fpga.snapshots.accumdat_snap_ss.arm()
    # spec_dat=fpga.snapshots.accumdat_snap_ss.read(arm=False)['data']


    # fig0, ax0= plt.subplots()
    # ax0.plot(np.array(spec0['val_acc0'][0:2*acc_len*fft_len]).astype(float)*5e7,'r-.')
    # ax0.plot(spec0['P_acc0'][0:2*acc_len*fft_len],'b-')
    # ax0.set(xlabel='channel',ylabel='power',title='Ch0')
    # ax0.set_xlim(0,2*acc_len*fft_len)
   
    # for i in range(10):
    # print(fpga.read_int('sync_cnt'))
    print(fpga.read_int('fft_sync_inc1'))


    # fig1, ax1= plt.subplots()
    # ax1.plot(np.array(spec1['val_acc1'][0:2*acc_len*fft_len]).astype(float)*5e7,'r-.')
    # ax1.plot(spec1['P_acc1'][0:2*acc_len*fft_len],'b-')
    # ax1.set(xlabel='channel',ylabel='power',title='Ch1')
    # ax1.set_xlim(0,2*acc_len*fft_len)

    fig2, ax2= plt.subplots()
    valid = np.array(spec0['val_acc0'][0:2*acc_len*fft_len]).astype(bool)
    spectrum0 = np.array(spec0['P_acc0'][:])	
    spectrum0 = np.fft.fftshift(spectrum0[:])
    ax2.plot(np.linspace(-256/2,256/2-1,256)*125/256,(spectrum0[:]/acc_len).astype(float),'b-')
    ax2.set(xlabel='freq (MHz)',ylabel='power',title='Ch0')
    ax2.set_xlim(0,50)

    # fig3, ax3= plt.subplots()
    # valid = np.array(spec1['val_acc1'][0:2*acc_len*fft_len]).astype(bool)
    # spectrum1 = np.array(spec1['P_acc1'][0:2*acc_len*fft_len])
    # spectrum1 = np.fft.fftshift(spectrum1[:256])
    # ax3.plot(np.linspace(-256/2,256/2-1,256)*125/256,spectrum1[:256].astype(float),'b-')
    # ax3.set(xlabel='freq (MHz)',ylabel='power',title='Ch1')
    # ax3.set_xlim(0,50)
    plt.show()
    # time.sleep(1)  