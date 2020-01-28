Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.2329.1580240750451523822
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 11:45:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 00SJjVI7006717
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 28 Jan 2020 11:45:31 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Tue, 28 Jan 2020
 11:45:29 -0800
Subject: Re: [yocto] Tools to debug kernel hang in yocto
To: Mark Asselstine <mark.asselstine@windriver.com>,
        <yocto@lists.yoctoproject.org>
CC: Sheraz Ali <sheraz.ali@iwavesystems.com>, <yocto@yoctoproject.org>
References: <3cf7a10c-4a3e-439e-8319-768d5e5523fb@email.android.com>
 <316054918.XuX68eSyCx@yow-masselst-lx1>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4bb4caae-260f-1258-25f6-fd8c645253ab@windriver.com>
Date: Tue, 28 Jan 2020 14:45:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <316054918.XuX68eSyCx@yow-masselst-lx1>
X-Originating-IP: [172.25.44.8]
Content-Type: multipart/alternative;
	boundary="------------7CF0B18FFDC88CEF9BAC5B7D"
Content-Language: en-CA

--------------7CF0B18FFDC88CEF9BAC5B7D
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 00SJjVI7006717

On 1/28/20 1:11 PM, Mark Asselstine wrote:
> On Tuesday, January 28, 2020 12:58:35 P.M. EST Sheraz Ali wrote:
>> Hi,
>>       Can anyone suggest me dumping tools that can be used to figure th=
e
>> kernel hang. I have attached the log of kernel hang for your reference.
> Is the kernel actually hung? ie. does it still respond to magic-sysrq, l=
ike
> 'alt+sysrq l' or 'alt+sysrq b'. It makes things a lot easier if the kern=
el is
> still alive so best to determine if it is "appears to be hung" vs "is hu=
ng".

Hi Sheraz,

In addition to Mark's comments, did you try:

 =A0=A0 [=A0 242.788074] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs=
"=20
disables this message.
to see if you could learn more about the system when things slow down?

Disabling that hang check and using perf is probably a good starting=20
point. I don't
have specific suggestions but this somewhat dated document might help if=
=20
you are just getting started
with perf and Yocto:
 =A0=A0 https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling
and for a more general perf examples, see:
 =A0=A0 http://www.brendangregg.com/perf.html


Also, it's better to avoid posting attachments especially .docx files.
I (safely ;-) ) opened the file in google docs. It is inline below.
It's ~ 400 lines which is somewhat long so if you do attach files in the=
=20
future
that are say 1000 lines, just use plain text.

Thanks,

../Randy

-- U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0=20
(Jan 23 2020 - 05:39:38 +0000)


CPU: =A0 Freescale i.MX8QXP revB A35 at 1200 MHz at 38C

Model: Freescale i.MX8DX CCU

Board: iMX8DX ARM2 Based Custom Board

Boot:=A0 MMC0

DRAM:=A0 510 MiB

ENET_mode:MII

MMC: =A0 FSL_SDHC: 0

Loading Environment from MMC... OK

In:=A0 =A0 serial@5a060000

Out: =A0 serial@5a060000

Err: =A0 serial@5a060000

Saving Environment to MMC... Writing to MMC(0)... OK


 =A0BuildInfo:

 =A0=A0- SCFW 06ff1979, SECO-FW 31fabbff, IMX-MKIMAGE 7f7b5b25, Container=
=20
container0, ATF 30d73be

 =A0=A0- U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8=
.0


flash target is MMC:0

Net: =A0 eth0: ethernet@5b040000 [PRIME]

Fastboot: Normal

Normal Boot

Hit any key to stop autoboot:=A0 0

74752 bytes read in 15 ms (4.8 MiB/s)

Authenticate OS container at 0x85000000

## Starting auxiliary core at 0x88000000 ...

Power on aux core 0

M4 image will run from 0x88000000

Start M4

bootaux complete

10999808 bytes read in 194 ms (54.1 MiB/s)

Authenticate OS container at 0x86000000

## Flattened Device Tree blob at 83000000

 =A0=A0=A0Booting using the fdt blob at 0x83000000

 =A0=A0=A0Using Device Tree in place at 0000000083000000, end 000000008301=
33cf

/dma-controller@591F0000, 51536

/dma-controller@599F0000, 52424

/dma-controller@5a1f0000, 51004

/dma-controller@5a1f0000, 51004


Starting kernel ...


lsio_gpio0 not owned by curr partition 199

[=A0 =A0 0.000000] Booting Linux on physical CPU 0x0

[=A0 =A0 0.000000] Linux version 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4=
=20
(oe-user@oe-host) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Wed Nov 20=20
06:37:17 UTC 2019

[=A0 =A0 0.000000] Boot CPU: AArch64 Processor [410fd042]

[=A0 =A0 0.000000] Machine model: Freescale i.MX8DX MEK

[=A0 =A0 0.000000] earlycon: lpuart32 at MMIO 0x000000005a060000 (options=
=20
'115200')

[=A0 =A0 0.000000] bootconsole [lpuart32] enabled

[=A0 =A0 0.000000] OF: reserved mem: failed to allocate memory for node=20
'linux,cma'

[=A0 =A0 0.000000] cma: Failed to reserve 320 MiB

[=A0 =A0 0.000000] psci: probing for conduit method from DT.

[=A0 =A0 0.000000] psci: PSCIv1.1 detected in firmware.

[=A0 =A0 0.000000] psci: Using standard PSCI v0.2 function IDs

[=A0 =A0 0.000000] psci: MIGRATE_INFO_TYPE not supported.

[=A0 =A0 0.000000] psci: SMC Calling Convention v1.1

[=A0 =A0 0.000000] percpu: Embedded 20 pages/cpu @ffff80001ff68000 s44056=
=20
r8192 d29672 u81920

[=A0 =A0 0.000000] Detected VIPT I-cache on CPU0

[=A0 =A0 0.000000] Speculative Store Bypass Disable mitigation not require=
d

[=A0 =A0 0.000000] Built 1 zonelists, mobility grouping on.=A0 Total pages=
: 89208

[=A0 =A0 0.000000] Kernel command line: root=3D/dev/mmcblk0p1=20
console=3DttyLP0,115200 earlycon=3Dlpuart32,0x5a060000,115200 rootwait=20
rootfstype=3Dext4 rw

[=A0 =A0 0.000000] PID hash table entries: 2048 (order: 2, 16384 bytes)

[=A0 =A0 0.000000] Dentry cache hash table entries: 65536 (order: 7, 52428=
8=20
bytes)

[=A0 =A0 0.000000] Inode-cache hash table entries: 32768 (order: 6, 262144=
=
=20
bytes)

[=A0 =A0 0.000000] Memory: 202612K/362496K available (7422K kernel code,=
=20
492K rwdata, 2232K rodata, 448K init, 269K bss, 159884K reserved, 0K=20
cma-reserved)

[=A0 =A0 0.000000] Virtual kernel memory layout:

[=A0 =A0 0.000000] =A0 =A0 modules : 0xffff000000000000 - 0xffff0000080000=
00 =A0 (=20
128 MB)

[=A0 =A0 0.000000] =A0 =A0 vmalloc : 0xffff000008000000 - 0xffff7dffbfff00=
00 =A0=20
(129022 GB)

[=A0 =A0 0.000000] =A0 =A0 =A0 .text : 0xffff000008080000 - 0xffff0000087c=
0000 =A0 (=20
7424 KB)

[=A0 =A0 0.000000] =A0 =A0 .rodata : 0xffff0000087c0000 - 0xffff000008a000=
00 =A0 (=20
2304 KB)

[=A0 =A0 0.000000] =A0 =A0 =A0 .init : 0xffff000008a00000 - 0xffff000008a7=
0000 =A0 (=20
448 KB)

[=A0 =A0 0.000000] =A0 =A0 =A0 .data : 0xffff000008a70000 - 0xffff000008ae=
b008 =A0 (=20
493 KB)

[=A0 =A0 0.000000]=A0 =A0 =A0 =A0 .bss : 0xffff000008aeb008 - 0xffff000008=
b2e7f0 =A0 (=20
270 KB)

[=A0 =A0 0.000000] =A0 =A0 fixed : 0xffff7dfffe7fb000 - 0xffff7dfffec00000=
 =A0 (=20
4116 KB)

[=A0 =A0 0.000000] =A0 =A0 PCI I/O : 0xffff7dfffee00000 - 0xffff7dffffe000=
00 =A0 (=20
16 MB)

[=A0 =A0 0.000000] =A0 =A0 vmemmap : 0xffff7e0000000000 - 0xffff8000000000=
00 =A0 (=20
2048 GB maximum)

[=A0 =A0 0.000000] =A0 =A0 =A0 =A0 =A0 =A0 =A0 0xffff7e0000008000 - 0xffff=
7e0000800000 =A0 (=20
7 MB actual)

[=A0 =A0 0.000000] =A0 =A0 memory : 0xffff800000200000 - 0xffff80002000000=
0 =A0 (=20
510 MB)

[=A0 =A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=
=3D2, Nodes=3D1

[=A0 =A0 0.000000] Preemptible hierarchical RCU implementation.

[=A0 =A0 0.000000]=A0 RCU restricting CPUs from NR_CPUS=3D64 to nr_cpu_ids=
=
=3D2.

[=A0 =A0 0.000000]=A0 Tasks RCU enabled.

[=A0 =A0 0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cp=
u_ids=3D2

[=A0 =A0 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0

[=A0 =A0 0.000000] GICv3: GIC: Using split EOI/Deactivate mode

[=A0 =A0 0.000000] GICv3: no VLPI support, no direct LPI support

[=A0 =A0 0.000000] GICv3: CPU0: found redistributor 0 region=20
0:0x0000000051b00000

[=A0 =A0 0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).

[=A0 =A0 0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff=
=20
max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns

[=A0 =A0 0.000005] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps=
=20
every 2199023255500ns

[=A0 =A0 0.008628] Console: colour dummy device 80x25

[=A0 =A0 0.012749] Calibrating delay loop (skipped), value calculated usin=
g=20
timer frequency.. 16.00 BogoMIPS (lpj=3D32000)

[=A0 =A0 0.022984] pid_max: default: 32768 minimum: 301

[=A0 =A0 0.027667] Security Framework initialized

[=A0 =A0 0.031710] Mount-cache hash table entries: 1024 (order: 1, 8192 by=
tes)

[=A0 =A0 0.038278] Mountpoint-cache hash table entries: 1024 (order: 1, 81=
92=20
bytes)

[=A0 =A0 0.061381] ASID allocator initialised with 32768 entries

[=A0 =A0 0.066512] Hierarchical SRCU implementation.

[=A0 =A0 0.078976] *****Initialized MU

[=A0 =A0 0.081783] **** imx8_init_pm_domains ****

[=A0 =A0 0.087226] CPU identified as i.MX8QXP, silicon rev 1.1

[=A0 =A0 0.100145] smp: Bringing up secondary CPUs ...

[=A0 =A0 0.132762] Detected VIPT I-cache on CPU1

[=A0 =A0 0.132791] GICv3: CPU1: found redistributor 1 region=20
0:0x0000000051b20000

[=A0 =A0 0.132823] CPU1: Booted secondary processor [410fd042]

[=A0 =A0 0.132905] smp: Brought up 1 node, 2 CPUs

[=A0 =A0 0.152743] SMP: Total of 2 processors activated.

[=A0 =A0 0.157425] CPU features: detected feature: GIC system register CPU=
=
=20
interface

[=A0 =A0 0.164547] CPU features: detected feature: 32-bit EL0 Support

[=A0 =A0 0.170367] CPU features: detected feature: Kernel page table=20
isolation (KPTI)

[=A0 =A0 0.180069] CPU: All CPU(s) started at EL2

[=A0 =A0 0.183833] alternatives: patching kernel code

[=A0 =A0 0.188812] devtmpfs: initialized

[=A0 =A0 0.202349] random: get_random_u32 called from=20
bucket_table_alloc+0x108/0x260 with crng_init=3D0

[=A0 =A0 0.211143] clocksource: jiffies: mask: 0xffffffff max_cycles:=20
0xffffffff, max_idle_ns: 7645041785100000 ns

[=A0 =A0 0.220560] futex hash table entries: 512 (order: 4, 65536 bytes)

[=A0 =A0 0.226762] pinctrl core: initialized pinctrl subsystem

[=A0 =A0 0.232555] NET: Registered protocol family 16

[=A0 =A0 0.237997] cpuidle: using governor menu

[=A0 =A0 0.242655] vdso: 2 pages (1 code @ ffff0000087c6000, 1 data @=20
ffff000008a74000)

[=A0 =A0 0.249741] hw-breakpoint: found 6 breakpoint and 4 watchpoint regi=
sters.

[=A0 =A0 0.256679] DMA: preallocated 256 KiB pool for atomic allocations

[=A0 =A0 0.262703] Serial: AMBA PL011 UART driver

[=A0 =A0 0.268334] MU and Power domains initialized

[=A0 =A0 0.272285] **** imx8qxp_clocks_init ****

[=A0 =A0 0.334337] imx8qxp-pinctrl iomuxc: initialized IMX pinctrl driver

[=A0 =A0 0.354628] mxs_phy 5b100000.usbphy: 5b100000.usbphy supply phy-3p0=
=
=20
not found, using dummy regulator

[=A0 =A0 0.384247] HugeTLB registered 2.00 MiB page size, pre-allocated 0 =
pages

[=A0 =A0 0.410801] usbcore: registered new interface driver usbfs

[=A0 =A0 0.416021] usbcore: registered new interface driver hub

[=A0 =A0 0.421323] usbcore: registered new device driver usb

[=A0 =A0 0.426846] usb_phy_generic usbphynop1: usbphynop1 supply vcc not=
=20
found, using dummy regulator

[=A0 =A0 0.436483] i2c i2c-0: of_i2c: modalias failure on=20
/i2c@37230000/PCA9535@21

[=A0 =A0 0.443130] i2c i2c-0: Failed to create I2C device for=20
/i2c@37230000/PCA9535@21

[=A0 =A0 0.450420] i2c i2c-0: LPI2C adapter registered

[=A0 =A0 0.455194] pps_core: LinuxPPS API ver. 1 registered

[=A0 =A0 0.459887] pps_core: Software ver. 5.3.6 - Copyright 2005-2007=20
Rodolfo Giometti <giometti@linux.it>

[=A0 =A0 0.469018] PTP clock support registered

[=A0 =A0 0.473973] MU is ready for cross core communication!

[=A0 =A0 0.479393] virtio_rpmsg_bus virtio0: rpmsg host is online

[=A0 =A0 0.485197] virtio_rpmsg_bus virtio1: rpmsg host is online

[=A0 =A0 0.490383] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x53

[=A0 =A0 0.497802] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x52

[=A0 =A0 0.498067] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x51

[=A0 =A0 0.498264] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x54

[=A0 =A0 0.505568] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x59

[=A0 =A0 0.505768] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x5a

[=A0 =A0 0.513040] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x55

[=A0 =A0 0.520459] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x58

[=A0 =A0 0.520650] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x56

[=A0 =A0 0.527922] virtio_rpmsg_bus virtio1: creating channel=20
rpmsg_channel_0 addr 0x57

[=A0 =A0 0.564988] imx rpmsg driver is registered.

[=A0 =A0 0.569450] Bluetooth: Core ver 2.22

[=A0 =A0 0.572713] NET: Registered protocol family 31

[=A0 =A0 0.577122] Bluetooth: HCI device and connection manager initialize=
d

[=A0 =A0 0.583471] Bluetooth: HCI socket layer initialized

[=A0 =A0 0.588328] Bluetooth: L2CAP socket layer initialized

[=A0 =A0 0.593386] Bluetooth: SCO socket layer initialized

[=A0 =A0 0.598868] clocksource: Switched to clocksource arch_sys_counter

[=A0 =A0 0.611273] NET: Registered protocol family 2

[=A0 =A0 0.615753] TCP established hash table entries: 4096 (order: 3, 327=
68=20
bytes)

[=A0 =A0 0.622544] TCP bind hash table entries: 4096 (order: 4, 65536 byte=
s)

[=A0 =A0 0.628959] TCP: Hash tables configured (established 4096 bind 4096=
)

[=A0 =A0 0.635336] UDP hash table entries: 256 (order: 1, 8192 bytes)

[=A0 =A0 0.641080] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)

[=A0 =A0 0.647441] NET: Registered protocol family 1

[=A0 =A0 0.651943] RPC: Registered named UNIX socket transport module.

[=A0 =A0 0.657571] RPC: Registered udp transport module.

[=A0 =A0 0.662259] RPC: Registered tcp transport module.

[=A0 =A0 0.666947] RPC: Registered tcp NFSv4.1 backchannel transport modul=
e.

[=A0 =A0 0.674238] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7=
=20
counters available

[=A0 =A0 0.682028] kvm [1]: 8-bit VMID

[=A0 =A0 0.685265] kvm [1]: GICv3: no GICV resource entry

[=A0 =A0 0.689723] kvm [1]: disabling GICv2 emulation

[=A0 =A0 0.694170] kvm [1]: GIC system register CPU interface enabled

[=A0 =A0 0.700018] kvm [1]: vgic interrupt IRQ1

[=A0 =A0 0.703938] kvm [1]: Hyp mode initialized successfully

[=A0 =A0 0.711792] workingset: timestamp_bits=3D46 max_order=3D16 bucket_o=
rder=3D0

[=A0 =A0 0.724570] squashfs: version 4.0 (2009/01/31) Phillip Lougher

[=A0 =A0 0.730756] NFS: Registering the id_resolver key type

[=A0 =A0 0.735491] Key type id_resolver registered

[=A0 =A0 0.739679] Key type id_legacy registered

[=A0 =A0 0.743662] nfs4filelayout_init: NFSv4 File Layout Driver Registeri=
ng...

[=A0 =A0 0.753535] Block layer SCSI generic (bsg) driver version 0.4 loade=
d=20
(major 248)

[=A0 =A0 0.760668] io scheduler noop registered

[=A0 =A0 0.764710] io scheduler cfq registered (default)

[=A0 =A0 0.769218] io scheduler mq-deadline registered

[=A0 =A0 0.773720] io scheduler kyber registered

[=A0 =A0 0.932257] Serial: 8250/16550 driver, 4 ports, IRQ sharing disable=
d

[=A0 =A0 0.940722] 5a060000.serial: ttyLP0 at MMIO 0x5a060010 (irq =3D 38,=
=
=20
base_baud =3D 5000000) is a FSL_LPUAR[=A0 =A0 0.951903] console [ttyLP0] e=
nabled

[=A0 =A0 0.951903] console [ttyLP0] enabled

[=A0 =A0 0.958917] bootconsole [lpuart32] disabled

[=A0 =A0 0.958917] bootconsole [lpuart32] disabled

[=A0 =A0 0.967459] fsl-lpuart 5a060000.serial: NO DMA tx channel, run at c=
pu=20
mode

[=A0 =A0 0.974344] fsl-lpuart 5a060000.serial: NO DMA rx channel, run at c=
pu=20
mode

[=A0 =A0 0.981984] 5a070000.serial: ttyLP1 at MMIO 0x5a070010 (irq =3D 39,=
=
=20
base_baud =3D 5000000) is a FSL_LPUART

[=A0 =A0 0.991525] fsl-lpuart 5a070000.serial: NO DMA tx channel, run at c=
pu=20
mode

[=A0 =A0 0.998417] fsl-lpuart 5a070000.serial: NO DMA rx channel, run at c=
pu=20
mode

[=A0 =A0 1.006015] 5a080000.serial: ttyLP2 at MMIO 0x5a080010 (irq =3D 40,=
=
=20
base_baud =3D 5000000) is a FSL_LPUART

[=A0 =A0 1.015530] fsl-lpuart 5a080000.serial: NO DMA tx channel, run at c=
pu=20
mode

[=A0 =A0 1.022421] fsl-lpuart 5a080000.serial: NO DMA rx channel, run at c=
pu=20
mode

[=A0 =A0 1.031495] fsl_lpspi 5a000000.lpspi: lpspi probed

[=A0 =A0 1.036768] libphy: Fixed MDIO Bus: probed

[=A0 =A0 1.042148] fec 5b040000.ethernet: 5b040000.ethernet supply phy not=
=
=20
found, using dummy regulator

[=A0 =A0 1.051325] pps pps0: new PPS source ptp0

[=A0 =A0 1.056521] libphy: fec_enet_mii_bus: probed

[=A0 =A0 1.061701] fec 5b040000.ethernet eth0: registered PHC device 0

[=A0 =A0 1.067841] PPP generic driver version 2.4.2

[=A0 =A0 1.072273] PPP Deflate Compression module registered

[=A0 =A0 1.081412]=A0 xhci-cdns3: xHCI Host Controller

[=A0 =A0 1.085806]=A0 xhci-cdns3: new USB bus registered, assigned bus num=
ber 1

[=A0 =A0 1.093593]=A0 xhci-cdns3: hcc params 0x200073c8 hci version 0x100=
=20
quirks 0xa0010010

[=A0 =A0 1.101728] hub 1-0:1.0: USB hub found

[=A0 =A0 1.105515] hub 1-0:1.0: 1 port detected

[=A0 =A0 1.109722]=A0 xhci-cdns3: xHCI Host Controller

[=A0 =A0 1.114102]=A0 xhci-cdns3: new USB bus registered, assigned bus num=
ber 2

[=A0 =A0 1.120645]=A0 xhci-cdns3: Host supports USB 3.0=A0 SuperSpeed

[=A0 =A0 1.126183] usb usb2: We don't know the algorithms for LPM for this=
=
=20
host, disabling LPM.

[=A0 =A0 1.134714] hub 2-0:1.0: USB hub found

[=A0 =A0 1.138498] hub 2-0:1.0: 1 port detected

[=A0 =A0 1.142953] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Dri=
ver

[=A0 =A0 1.149489] ehci-platform: EHCI generic platform driver

[=A0 =A0 1.155296] usbcore: registered new interface driver cdc_acm

[=A0 =A0 1.160966] cdc_acm: USB Abstract Control Model driver for USB mode=
ms=20
and ISDN adapters

[=A0 =A0 1.169790] usbmisc_imx 5b0d0200.usbmisc: 5b0d0200.usbmisc supply=
=20
vbus-wakeup not found, using dummy regulator

[=A0 =A0 1.185163] using random self ethernet address

[=A0 =A0 1.189627] using random host ethernet address

[=A0 =A0 1.194455] usb0: HOST MAC 92:91:a8:31:cb:e7

[=A0 =A0 1.198786] usb0: MAC fe:25:91:fa:0c:72

[=A0 =A0 1.202654] using random self ethernet address

[=A0 =A0 1.207105] using random host ethernet address

[=A0 =A0 1.211669] g_ether gadget: Ethernet Gadget, version: Memorial Day =
2008

[=A0 =A0 1.218295] g_ether gadget: g_ether ready

[=A0 =A0 1.226603] rtc rtc0: invalid alarm value: 2020-1-27 43:78:0

[=A0 =A0 1.232429] rtc-pcf8563 0-0051: rtc core: registered rtc-pcf8563 as=
 rtc0

[=A0 =A0 1.240478] i2c /dev entries driver

[=A0 =A0 1.246553] usbcore: registered new interface driver bcm203x

[=A0 =A0 1.252287] usbcore: registered new interface driver bfusb

[=A0 =A0 1.258470] sdhci: Secure Digital Host Controller Interface driver

[=A0 =A0 1.264864] sdhci: Copyright(c) Pierre Ossman

[=A0 =A0 1.269230] sdhci-pltfm: SDHCI platform and OF driver helper

[=A0 =A0 1.276242] mmc0: CQHCI version 5.10

[=A0 =A0 1.322912] mmc0: SDHCI controller on 5b010000.usdhc [5b010000.usdh=
c]=20
using ADMA

[=A0 =A0 1.335220] mmc1: CQHCI version 5.10

[=A0 =A0 1.382948] mmc1: SDHCI controller on 5b020000.usdhc [5b020000.usdh=
c]=20
using ADMA

[=A0 =A0 1.397991] NET: Registered protocol family 26

[=A0 =A0 1.404189] NET: Registered protocol family 10

[=A0 =A0 1.413369] Segment Routing with IPv6

[=A0 =A0 1.417100] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver

[=A0 =A0 1.425633] NET: Registered protocol family 17

[=A0 =A0 1.430940] Bluetooth: RFCOMM TTY layer initialized

[=A0 =A0 1.435870] Bluetooth: RFCOMM socket layer initialized

[=A0 =A0 1.441075] Bluetooth: RFCOMM ver 1.11

[=A0 =A0 1.444882] usb 1-1: new high-speed USB device number 2 using cdns-=
usb3

[=A0 =A0 1.451643] Bluetooth: BNEP (Ethernet Emulation) ver 1.3

[=A0 =A0 1.457000] Bluetooth: BNEP filters: protocol multicast

[=A0 =A0 1.462265] Bluetooth: BNEP socket layer initialized

[=A0 =A0 1.467278] Bluetooth: HIDP (Human Interface Emulation) ver 1.2

[=A0 =A0 1.473243] Bluetooth: HIDP socket layer initialized

[=A0 =A0 1.478279] lib80211: common routines for IEEE802.11 drivers

[=A0 =A0 1.484016] Key type dns_resolver registered

[=A0 =A0 1.488871] registered taskstats version 1

[=A0 =A0 1.509815] mmc0: new HS400 MMC card at address 0001

[=A0 =A0 1.514393] imx8_cpufreq_init: cluster 0 running at freq 1200 MHz,=
=20
suspend freq 1200 MHz

[=A0 =A0 1.523890] mmcblk0: mmc0:0001 R1J55A 7.28 GiB

[=A0 =A0 1.528936] mmcblk0boot0: mmc0:0001 R1J55A partition 1 8.00 MiB

[=A0 =A0 1.535352] mmcblk0boot1: mmc0:0001 R1J55A partition 2 8.00 MiB

[=A0 =A0 1.541775] mmcblk0rpmb: mmc0:0001 R1J55A partition 3 4.00 MiB

[=A0 =A0 1.544156] random: fast init done

[=A0 =A0 1.548389] mmc1: new ultra high speed SDR104 SDIO card at address =
0001

[=A0 =A0 1.557718] rtc-pcf8563 0-0051: setting system clock to 2020-01-27=
=20
13:18:11 UTC (1580131091)

[=A0 =A0 1.604760] cdc_acm 1-1:1.2: ttyACM0: USB ACM device

[=A0 =A0 1.646080] g_ether gadget: high-speed config #1: CDC Ethernet (ECM=
)

[=A0 242.774888] INFO: task swapper/0:1 blocked for more than 120 seconds.

[=A0 242.781357] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1=
907fe4 #1

[=A0 242.788074] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"=20
disables this message.

[=A0 242.795917] swapper/0 =A0 =A0 =A0 D 0 1 0 0x00000020

[=A0 242.801425] Call trace:

[=A0 242.803897] [<ffff00000808532c>] __switch_to+0x94/0xd8

[=A0 242.809052] [<ffff0000087a989c>] __schedule+0x18c/0x5c0

[=A0 242.814295] [<ffff0000087a9d08>] schedule+0x38/0xa0

[=A0 242.819190] [<ffff00000847b514>] rpm_resume+0xb4/0x5e8

[=A0 242.824348] [<ffff00000847ba98>] __pm_runtime_resume+0x50/0x78

[=A0 242.830194] [<ffff000008537db8>] lpi2c_imx_xfer+0x28/0x580

[=A0 242.835695] [<ffff000008532964>] __i2c_transfer+0x11c/0x260

[=A0 242.841288] [<ffff000008532b08>] i2c_transfer+0x60/0xc8

[=A0 242.846526] [<ffff0000085307dc>] pcf8563_read_block_data+0x5c/0xa0

[=A0 242.852721] [<ffff000008530c04>] pcf8563_clkout_is_prepared+0x1c/0x30

[=A0 242.859175] [<ffff0000083f30d8>] clk_unprepare_unused_subtree+0x58/0x=
88

[=A0 242.865803] [<ffff0000083f31a4>] clk_disable_unused+0x9c/0x148

[=A0 242.871651] [<ffff000008083490>] do_one_initcall+0x38/0x128

[=A0 242.877239] [<ffff000008a00cf0>] kernel_init_freeable+0x188/0x22c

[=A0 242.883353] [<ffff0000087a8720>] kernel_init+0x10/0x100

[=A0 242.888591] [<ffff0000080846d8>] ret_from_fork+0x10/0x18

[=A0 242.893913] INFO: task kworker/0:0:3 blocked for more than 120 second=
s.

[=A0 242.900542] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1=
907fe4 #1

[=A0 242.907258] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"=20
disables this message.

[=A0 242.915101] kworker/0:0 =A0 =A0 D 0 3 2 0x00000000

[=A0 242.920607] Workqueue: pm pm_runtime_work

[=A0 242.924628] Call trace:

[=A0 242.927085] [<ffff00000808532c>] __switch_to+0x94/0xd8

[=A0 242.932238] [<ffff0000087a989c>] __schedule+0x18c/0x5c0

[=A0 242.937476] [<ffff0000087a9d08>] schedule+0x38/0xa0

[=A0 242.942366] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38

[=A0 242.948736] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530

[=A0 242.954753] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18

[=A0 242.960774] [<ffff0000087ab280>] mutex_lock+0x30/0x38

[=A0 242.965839] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0

[=A0 242.971424] [<ffff0000083f2ed0>] clk_unprepare+0x20/0x40

[=A0 242.976753] [<ffff0000084583ac>] lpuart_runtime_suspend+0x24/0x48

[=A0 242.982860] [<ffff000008479538>] pm_generic_runtime_suspend+0x28/0x40

[=A0 242.989322] [<ffff000008487b98>] genpd_runtime_suspend+0x88/0x240

[=A0 242.995431] [<ffff00000847bbf0>] __rpm_callback+0xe0/0x268

[=A0 243.000929] [<ffff00000847bd98>] rpm_callback+0x20/0x80

[=A0 243.006166] [<ffff00000847c054>] rpm_suspend+0xf4/0x4b8

[=A0 243.011407] [<ffff00000847c940>] pm_runtime_work+0x78/0xb8

[=A0 243.016906] [<ffff0000080e3614>] process_one_work+0x1d4/0x348

[=A0 243.022663] [<ffff0000080e37d0>] worker_thread+0x48/0x470

[=A0 243.028080] [<ffff0000080e956c>] kthread+0x12c/0x130

[=A0 243.033064] [<ffff0000080846d8>] ret_from_fork+0x10/0x18

[=A0 243.038396] INFO: task kworker/1:0:16 blocked for more than 120 secon=
ds.

[=A0 243.045111] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1=
907fe4 #1

[=A0 243.051823] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"=20
disables this message.

[=A0 243.059670] kworker/1:0 =A0 =A0 D 0 16 2 0x00000000

[=A0 243.065174] Workqueue: events dbs_work_handler

[=A0 243.069631] Call trace:

[=A0 243.072088] [<ffff00000808532c>] __switch_to+0x94/0xd8

[=A0 243.077241] [<ffff0000087a989c>] __schedule+0x18c/0x5c0

[=A0 243.082479] [<ffff0000087a9d08>] schedule+0x38/0xa0

[=A0 243.087371] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38

[=A0 243.093739] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530

[=A0 243.099755] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18

[=A0 243.105777] [<ffff0000087ab280>] mutex_lock+0x30/0x38

[=A0 243.110842] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0

[=A0 243.116427] [<ffff0000083f2a6c>] clk_core_get_rate+0x14/0x80

[=A0 243.122102] [<ffff0000083f32fc>] clk_get_rate+0x14/0x28

[=A0 243.127341] [<ffff00000855360c>] imx8_set_target+0x94/0xb0

[=A0 243.132840] [<ffff00000854a7f0>] __cpufreq_driver_target+0x158/0x538

[=A0 243.139208] [<ffff00000854ea3c>] od_dbs_update+0xbc/0x1a0

[=A0 243.144620] [<ffff00000855152c>] dbs_work_handler+0x3c/0x70

[=A0 243.150204] [<ffff0000080e3614>] process_one_work+0x1d4/0x348

[=A0 243.155966] [<ffff0000080e37d0>] worker_thread+0x48/0x470

[=A0 243.161379] [<ffff0000080e956c>] kthread+0x12c/0x130

[=A0 243.166359] [<ffff0000080846d8>] ret_from_fork+0x10/0x18

[=A0 243.171692] INFO: task kworker/0:1:32 blocked for more than 120 secon=
ds.

[=A0 243.178403] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1=
907fe4 #1

[=A0 243.185116] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"=20
disables this message.

[=A0 243.192962] kworker/0:1 =A0 =A0 D 0 32 2 0x00000000

[=A0 243.198464] Workqueue: pm pm_runtime_work

[=A0 243.202482] Call trace:

[=A0 243.204946] [<ffff00000808532c>] __switch_to+0x94/0xd8

[=A0 243.210099] [<ffff0000087a989c>] __schedule+0x18c/0x5c0

[=A0 243.215337] [<ffff0000087a9d08>] schedule+0x38/0xa0

[=A0 243.220228] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38

[=A0 243.226597] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530

[=A0 243.232615] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18

[=A0 243.238634] [<ffff0000087ab280>] mutex_lock+0x30/0x38

[=A0 243.243699] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0

[=A0 243.249286] [<ffff0000083f2ed0>] clk_unprepare+0x20/0x40

[=A0 243.254613] [<ffff0000084583ac>] lpuart_runtime_suspend+0x24/0x48

[=A0 243.260719] [<ffff000008479538>] pm_generic_runtime_suspend+0x28/0x40

[=A0 243.267176] [<ffff000008487b98>] genpd_runtime_suspend+0x88/0x240

[=A0 243.273283] [<ffff00000847bbf0>] __rpm_callback+0xe0/0x268

[=A0 243.278780] [<ffff00000847bd98>] rpm_callback+0x20/0x80

[=A0 243.284020] [<ffff00000847c054>] rpm_suspend+0xf4/0x4b8

[=A0 243.289259] [<ffff00000847c940>] pm_runtime_work+0x78/0xb8

[=A0 243.294760] [<ffff0000080e3614>] process_one_work+0x1d4/0x348

[=A0 243.300526] [<ffff0000080e37d0>] worker_thread+0x48/0x470

[=A0 243.305939] [<ffff0000080e956c>] kthread+0x12c/0x130

[=A0 243.310916] [<ffff0000080846d8>] ret_from_fork+0x10/0x18

[=A0 243.316240] INFO: task kworker/1:1:46 blocked for more than 120 secon=
ds.

[=A0 243.322952] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1=
907fe4 #1

[=A0 243.329667] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"=20
disables this message.

[=A0 243.337513] kworker/1:1 =A0 =A0 D 0 46 2 0x00000000

[=A0 243.343017] Workqueue: events_freezable mmc_rescan

[=A0 243.347824] Call trace:

[=A0 243.350278] [<ffff00000808532c>] __switch_to+0x94/0xd8

[=A0 243.355431] [<ffff0000087a989c>] __schedule+0x18c/0x5c0

[=A0 243.360670] [<ffff0000087a9d08>] schedule+0x38/0xa0

[=A0 243.365561] [<ffff0000080f3f78>] io_schedule+0x18/0x38

[=A0 243.370715] [<ffff000008182528>] wait_on_page_bit+0xf0/0x120

[=A0 243.376396] [<ffff000008183280>] do_read_cache_page+0x208/0x360

[=A0 243.382327] [<ffff0000081833e8>] read_cache_page+0x10/0x18

[=A0 243.387828] [<ffff00000839d87c>] read_dev_sector+0x34/0xb0

[=A0 243.393326] [<ffff0000083a0638>] read_lba.isra.1+0xf8/0x1b8

[=A0 243.398911] [<ffff0000083a0a08>] efi_partition+0xa8/0x5a8

[=A0 243.404322] [<ffff00000839f798>] check_partition+0x100/0x250

[=A0 243.409998] [<ffff00000839df38>] rescan_partitions+0xc8/0x388

[=A0 243.415761] [<ffff00000823fd74>] __blkdev_get+0x294/0x400

[=A0 243.421182] [<ffff000008240280>] blkdev_get+0x130/0x360

[=A0 243.426427] [<ffff00000839c7f8>] __device_add_disk+0x400/0x450

[=A0 243.432282] [<ffff00000839c858>] device_add_disk+0x10/0x18

[=A0 243.437780] [<ffff0000085681f8>] mmc_add_disk+0x28/0xf8

[=A0 243.443019] [<ffff00000856abb8>] mmc_blk_probe+0x2e0/0x480

[=A0 243.448517] [<ffff00000855a88c>] mmc_bus_probe+0x1c/0x28

[=A0 243.453844] [<ffff000008470638>] driver_probe_device+0x210/0x2d0

[=A0 243.459863] [<ffff000008470854>] __device_attach_driver+0x9c/0xf8

[=A0 243.465970] [<ffff00000846e854>] bus_for_each_drv+0x4c/0x98

[=A0 243.471556] [<ffff0000084702f8>] __device_attach+0xc0/0x138

[=A0 243.477142] [<ffff000008470910>] device_initial_probe+0x10/0x18

[=A0 243.483074] [<ffff00000846f7b4>] bus_probe_device+0x94/0xa0

[=A0 243.488664] [<ffff00000846d798>] device_add+0x398/0x5a0

[=A0 243.493901] [<ffff00000855ae7c>] mmc_add_card+0x1b4/0x310

[=A0 243.499312] [<ffff00000855e870>] mmc_attach_mmc+0xa8/0x150

[=A0 243.504811] [<ffff00000855a4d8>] mmc_rescan+0x2e8/0x388

[=A0 243.510051] [<ffff0000080e3614>] process_one_work+0x1d4/0x348

[=A0 243.51580

>
> Mark Asselstine
>
>
>>
>> Thanks and Regards
>> Sheraz Ali Shah
>
>
>
>
>=20


--=20
# Randy MacLeod
# Wind River Linux


--------------7CF0B18FFDC88CEF9BAC5B7D
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 00SJjVI7006717

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 1/28/20 1:11 PM, Mark Asselstine
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:316054918.XuX68eSyCx@yow-masselst-lx1">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Tuesday, January 28, 2020 =
12:58:35 P.M. EST Sheraz Ali wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hi,
     Can anyone suggest me dumping tools that can be used to figure the
kernel hang. I have attached the log of kernel hang for your reference.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Is the kernel actually hung? ie. does it still respond to magic-sysrq, lik=
e=20
'alt+sysrq l' or 'alt+sysrq b'. It makes things a lot easier if the kernel=
 is=20
still alive so best to determine if it is "appears to be hung" vs "is hung=
".</pre>
    </blockquote>
    <p>Hi Sheraz,</p>
    <p>In addition to Mark's comments, did you try:<br>
    </p>
    <p>=A0=A0 [=A0 242.788074] "echo 0 &gt;
      /proc/sys/kernel/hung_task_timeout_secs" disables this message.<br>
      to see if you could learn more about the system when things slow
      down?</p>
    <p>Disabling that hang check and using perf is probably a good
      starting point. I don't<br>
      have specific suggestions but this somewhat dated document might
      help if you are just getting started<br>
      with perf and Yocto:<br>
      =A0=A0 <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yocto=
project.org/wiki/Tracing_and_Profiling">https://wiki.yoctoproject.org/wiki/=
Tracing_and_Profiling</a><br>
      and for a more general perf examples, see:<br>
      =A0=A0 <a class=3D"moz-txt-link-freetext" href=3D"http://www.brendan=
gregg.com/perf.html">http://www.brendangregg.com/perf.html</a><br>
    </p>
    <p><br>
    </p>
    <p>Also, it's better to avoid posting attachments especially .docx
      files. <br>
      I (safely ;-) ) opened the file in google docs. It is inline
      below.<br>
      It's ~ 400 lines which is somewhat long so if you do attach files
      in the future<br>
      that are say 1000 lines, just use plain text.</p>
    <p>Thanks,<br>
    </p>
    <p>../Randy<br>
    </p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"
      id=3D"docs-internal-guid-bd89cc0b-7fff-4abb-d3e5-2d8ad0365ca6"><span=
 style=3D"font-size:11pt;font-family:Arial;color:#000000;background-color:t=
ransparent;font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">-=
-
U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0 (Jan 2=
3 2020 - 05:39:38 +0000)</span></p>
    <br>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">CPU: =A0 Freescale i.MX8QXP revB A35 at 1200 MHz at 38C</span></=
p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Model: Freescale i.MX8DX CCU</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Board: iMX8DX ARM2 Based Custom Board</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Boot:=A0 MMC0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">DRAM:=A0 510 MiB</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">ENET_mode:MII</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">MMC: =A0 FSL_SDHC: 0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Loading Environment from MMC... OK</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">In:=A0 =A0 serial@5a060000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Out: =A0 serial@5a060000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Err: =A0 serial@5a060000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Saving Environment to MMC... Writing to MMC(0)... OK</span></p>
    <br>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">=A0BuildInfo:=A0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">=A0=A0- SCFW 06ff1979, SECO-FW 31fabbff, IMX-MKIMAGE 7f7b5b25, C=
ontainer container0, ATF 30d73be</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">=A0=A0- U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9_=
_CCU_REL8.0=A0</span></p>
    <br>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">flash target is MMC:0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Net: =A0 eth0: ethernet@5b040000 [PRIME]</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Fastboot: Normal</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Normal Boot</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Hit any key to stop autoboot:=A0 0=A0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">74752 bytes read in 15 ms (4.8 MiB/s)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Authenticate OS container at 0x85000000=A0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">## Starting auxiliary core at 0x88000000 ...</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Power on aux core 0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">M4 image will run from 0x88000000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Start M4</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">bootaux complete</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">10999808 bytes read in 194 ms (54.1 MiB/s)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Authenticate OS container at 0x86000000=A0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">## Flattened Device Tree blob at 83000000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">=A0=A0=A0Booting using the fdt blob at 0x83000000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">=A0=A0=A0Using Device Tree in place at 0000000083000000, end 000=
00000830133cf</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">/dma-controller@591F0000, 51536</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">/dma-controller@599F0000, 52424</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">/dma-controller@5a1f0000, 51004</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">/dma-controller@5a1f0000, 51004</span></p>
    <br>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">Starting kernel ...</span></p>
    <br>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">lsio_gpio0 not owned by curr partition 199</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Booting Linux on physical CPU 0x0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Linux version 4.14.62-imx_4.14.62_1.0.0_beta+=
g1907fe4 (oe-user@oe-host) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Wed Nov=
 20 06:37:17 UTC 2019</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Boot CPU: AArch64 Processor [410fd042]</span>=
</p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Machine model: Freescale i.MX8DX MEK</span></=
p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] earlycon: lpuart32 at MMIO 0x000000005a060000=
 (options '115200')</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] bootconsole [lpuart32] enabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] OF: reserved mem: failed to allocate memory f=
or node 'linux,cma'</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] cma: Failed to reserve 320 MiB</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] psci: probing for conduit method from DT.</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] psci: PSCIv1.1 detected in firmware.</span></=
p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] psci: Using standard PSCI v0.2 function IDs</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] psci: MIGRATE_INFO_TYPE not supported.</span>=
</p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] psci: SMC Calling Convention v1.1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] percpu: Embedded 20 pages/cpu @ffff80001ff680=
00 s44056 r8192 d29672 u81920</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Detected VIPT I-cache on CPU0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Speculative Store Bypass Disable mitigation n=
ot required</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Built 1 zonelists, mobility grouping on.=A0 T=
otal pages: 89208</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Kernel command line: root=3D/dev/mmcblk0p1 co=
nsole=3DttyLP0,115200 earlycon=3Dlpuart32,0x5a060000,115200 rootwait rootfs=
type=3Dext4 rw</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] PID hash table entries: 2048 (order: 2, 16384=
 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Dentry cache hash table entries: 65536 (order=
: 7, 524288 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Inode-cache hash table entries: 32768 (order:=
 6, 262144 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Memory: 202612K/362496K available (7422K kern=
el code, 492K rwdata, 2232K rodata, 448K init, 269K bss, 159884K reserved, =
0K cma-reserved)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Virtual kernel memory layout:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 modules : 0xffff000000000000 - 0xffff=
000008000000 =A0 (   128 MB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 vmalloc : 0xffff000008000000 - 0xffff=
7dffbfff0000 =A0 (129022 GB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 =A0 .text : 0xffff000008080000 - 0xff=
ff0000087c0000 =A0 (  7424 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 .rodata : 0xffff0000087c0000 - 0xffff=
000008a00000 =A0 (  2304 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 =A0 .init : 0xffff000008a00000 - 0xff=
ff000008a70000 =A0 (   448 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 =A0 .data : 0xffff000008a70000 - 0xff=
ff000008aeb008 =A0 (   493 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000]=A0 =A0 =A0 =A0 .bss : 0xffff000008aeb008 - 0x=
ffff000008b2e7f0 =A0 (   270 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 fixed   : 0xffff7dfffe7fb000 - 0xffff=
7dfffec00000 =A0 (  4116 KB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 PCI I/O : 0xffff7dfffee00000 - 0xffff=
7dffffe00000 =A0 (    16 MB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 vmemmap : 0xffff7e0000000000 - 0xffff=
800000000000 =A0 (  2048 GB maximum)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 =A0 =A0 =A0 =A0 =A0 0xffff7e000000800=
0 - 0xffff7e0000800000 =A0 (     7 MB actual)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] =A0 =A0 memory  : 0xffff800000200000 - 0xffff=
800020000000 =A0 (   510 MB)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D2, Nodes=3D1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] Preemptible hierarchical RCU implementation.<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000]=A0 RCU restricting CPUs from NR_CPUS=3D64 to =
nr_cpu_ids=3D2.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000]=A0 Tasks RCU enabled.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: =
0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] GICv3: GIC: Using split EOI/Deactivate mode</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] GICv3: no VLPI support, no direct LPI support=
</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] GICv3: CPU0: found redistributor 0 region 0:0=
x0000000051b00000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] arch_timer: cp15 timer(s) running at 8.00MHz =
(phys).</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000000] clocksource: arch_sys_counter: mask: 0xffffff=
ffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.000005] sched_clock: 56 bits at 8MHz, resolution 125n=
s, wraps every 2199023255500ns</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.008628] Console: colour dummy device 80x25</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.012749] Calibrating delay loop (skipped), value calcu=
lated using timer frequency.. 16.00 BogoMIPS (lpj=3D32000)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.022984] pid_max: default: 32768 minimum: 301</span></=
p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.027667] Security Framework initialized</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.031710] Mount-cache hash table entries: 1024 (order: =
1, 8192 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.038278] Mountpoint-cache hash table entries: 1024 (or=
der: 1, 8192 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.061381] ASID allocator initialised with 32768 entries=
</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.066512] Hierarchical SRCU implementation.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.078976] *****Initialized MU</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.081783] **** imx8_init_pm_domains ****</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.087226] CPU identified as i.MX8QXP, silicon rev 1.1</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.100145] smp: Bringing up secondary CPUs ...</span></p=
>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.132762] Detected VIPT I-cache on CPU1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.132791] GICv3: CPU1: found redistributor 1 region 0:0=
x0000000051b20000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.132823] CPU1: Booted secondary processor [410fd042]</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.132905] smp: Brought up 1 node, 2 CPUs</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.152743] SMP: Total of 2 processors activated.</span><=
/p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.157425] CPU features: detected feature: GIC system re=
gister CPU interface</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.164547] CPU features: detected feature: 32-bit EL0 Su=
pport</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.170367] CPU features: detected feature: Kernel page t=
able isolation (KPTI)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.180069] CPU: All CPU(s) started at EL2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.183833] alternatives: patching kernel code</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.188812] devtmpfs: initialized</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.202349] random: get_random_u32 called from bucket_tab=
le_alloc+0x108/0x260 with crng_init=3D0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.211143] clocksource: jiffies: mask: 0xffffffff max_cy=
cles: 0xffffffff, max_idle_ns: 7645041785100000 ns</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.220560] futex hash table entries: 512 (order: 4, 6553=
6 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.226762] pinctrl core: initialized pinctrl subsystem</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.232555] NET: Registered protocol family 16</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.237997] cpuidle: using governor menu</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.242655] vdso: 2 pages (1 code @ ffff0000087c6000, 1 d=
ata @ ffff000008a74000)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.249741] hw-breakpoint: found 6 breakpoint and 4 watch=
point registers.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.256679] DMA: preallocated 256 KiB pool for atomic all=
ocations</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.262703] Serial: AMBA PL011 UART driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.268334] MU and Power domains initialized</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.272285] **** imx8qxp_clocks_init ****</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.334337] imx8qxp-pinctrl iomuxc: initialized IMX pinct=
rl driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.354628] mxs_phy 5b100000.usbphy: 5b100000.usbphy supp=
ly phy-3p0 not found, using dummy regulator</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.384247] HugeTLB registered 2.00 MiB page size, pre-al=
located 0 pages</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.410801] usbcore: registered new interface driver usbf=
s</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.416021] usbcore: registered new interface driver hub<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.421323] usbcore: registered new device driver usb</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.426846] usb_phy_generic usbphynop1: usbphynop1 supply=
 vcc not found, using dummy regulator</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.436483] i2c i2c-0: of_i2c: modalias failure on /i2c@3=
7230000/PCA9535@21</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.443130] i2c i2c-0: Failed to create I2C device for /i=
2c@37230000/PCA9535@21</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.450420] i2c i2c-0: LPI2C adapter registered</span></p=
>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.455194] pps_core: LinuxPPS API ver. 1 registered</spa=
n></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.459887] pps_core: Software ver. 5.3.6 - Copyright 200=
5-2007 Rodolfo Giometti <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:g=
iometti@linux.it">&lt;giometti@linux.it&gt;</a></span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.469018] PTP clock support registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.473973] MU is ready for cross core communication!</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.479393] virtio_rpmsg_bus virtio0: rpmsg host is onlin=
e</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.485197] virtio_rpmsg_bus virtio1: rpmsg host is onlin=
e</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.490383] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x53</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.497802] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x52</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.498067] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x51</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.498264] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x54</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.505568] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x59</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.505768] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x5a</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.513040] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x55</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.520459] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x58</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.520650] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x56</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.527922] virtio_rpmsg_bus virtio1: creating channel rp=
msg_channel_0 addr 0x57</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.564988] imx rpmsg driver is registered.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.569450] Bluetooth: Core ver 2.22</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.572713] NET: Registered protocol family 31</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.577122] Bluetooth: HCI device and connection manager =
initialized</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.583471] Bluetooth: HCI socket layer initialized</span=
></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.588328] Bluetooth: L2CAP socket layer initialized</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.593386] Bluetooth: SCO socket layer initialized</span=
></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.598868] clocksource: Switched to clocksource arch_sys=
_counter</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.611273] NET: Registered protocol family 2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.615753] TCP established hash table entries: 4096 (ord=
er: 3, 32768 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.622544] TCP bind hash table entries: 4096 (order: 4, =
65536 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.628959] TCP: Hash tables configured (established 4096=
 bind 4096)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.635336] UDP hash table entries: 256 (order: 1, 8192 b=
ytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.641080] UDP-Lite hash table entries: 256 (order: 1, 8=
192 bytes)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.647441] NET: Registered protocol family 1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.651943] RPC: Registered named UNIX socket transport m=
odule.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.657571] RPC: Registered udp transport module.</span><=
/p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.662259] RPC: Registered tcp transport module.</span><=
/p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.666947] RPC: Registered tcp NFSv4.1 backchannel trans=
port module.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.674238] hw perfevents: enabled with armv8_pmuv3 PMU d=
river, 7 counters available</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.682028] kvm [1]: 8-bit VMID</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.685265] kvm [1]: GICv3: no GICV resource entry</span>=
</p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.689723] kvm [1]: disabling GICv2 emulation</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.694170] kvm [1]: GIC system register CPU interface en=
abled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.700018] kvm [1]: vgic interrupt IRQ1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.703938] kvm [1]: Hyp mode initialized successfully</s=
pan></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.711792] workingset: timestamp_bits=3D46 max_order=3D1=
6 bucket_order=3D0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.724570] squashfs: version 4.0 (2009/01/31) Phillip Lo=
ugher</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.730756] NFS: Registering the id_resolver key type</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.735491] Key type id_resolver registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.739679] Key type id_legacy registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.743662] nfs4filelayout_init: NFSv4 File Layout Driver=
 Registering...</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.753535] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 248)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.760668] io scheduler noop registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.764710] io scheduler cfq registered (default)</span><=
/p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.769218] io scheduler mq-deadline registered</span></p=
>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.773720] io scheduler kyber registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.932257] Serial: 8250/16550 driver, 4 ports, IRQ shari=
ng disabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.940722] 5a060000.serial: ttyLP0 at MMIO 0x5a060010 (i=
rq =3D 38, base_baud =3D 5000000) is a FSL_LPUAR[=A0 =A0 0.951903] console =
[ttyLP0] enabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.951903] console [ttyLP0] enabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.958917] bootconsole [lpuart32] disabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.958917] bootconsole [lpuart32] disabled</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.967459] fsl-lpuart 5a060000.serial: NO DMA tx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.974344] fsl-lpuart 5a060000.serial: NO DMA rx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.981984] 5a070000.serial: ttyLP1 at MMIO 0x5a070010 (i=
rq =3D 39, base_baud =3D 5000000) is a FSL_LPUART</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.991525] fsl-lpuart 5a070000.serial: NO DMA tx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 0.998417] fsl-lpuart 5a070000.serial: NO DMA rx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.006015] 5a080000.serial: ttyLP2 at MMIO 0x5a080010 (i=
rq =3D 40, base_baud =3D 5000000) is a FSL_LPUART</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.015530] fsl-lpuart 5a080000.serial: NO DMA tx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.022421] fsl-lpuart 5a080000.serial: NO DMA rx channel=
, run at cpu mode</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.031495] fsl_lpspi 5a000000.lpspi: lpspi probed</span>=
</p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.036768] libphy: Fixed MDIO Bus: probed</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.042148] fec 5b040000.ethernet: 5b040000.ethernet supp=
ly phy not found, using dummy regulator</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.051325] pps pps0: new PPS source ptp0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.056521] libphy: fec_enet_mii_bus: probed</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.061701] fec 5b040000.ethernet eth0: registered PHC de=
vice 0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.067841] PPP generic driver version 2.4.2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.072273] PPP Deflate Compression module registered</sp=
an></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.081412]=A0 xhci-cdns3: xHCI Host Controller</span></p=
>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.085806]=A0 xhci-cdns3: new USB bus registered, assign=
ed bus number 1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.093593]=A0 xhci-cdns3: hcc params 0x200073c8 hci vers=
ion 0x100 quirks 0xa0010010</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.101728] hub 1-0:1.0: USB hub found</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.105515] hub 1-0:1.0: 1 port detected</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.109722]=A0 xhci-cdns3: xHCI Host Controller</span></p=
>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.114102]=A0 xhci-cdns3: new USB bus registered, assign=
ed bus number 2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.120645]=A0 xhci-cdns3: Host supports USB 3.0=A0 Super=
Speed</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.126183] usb usb2: We don't know the algorithms for LP=
M for this host, disabling LPM.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.134714] hub 2-0:1.0: USB hub found</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.138498] hub 2-0:1.0: 1 port detected</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.142953] ehci_hcd: USB 2.0 'Enhanced' Host Controller =
(EHCI) Driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.149489] ehci-platform: EHCI generic platform driver</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.155296] usbcore: registered new interface driver cdc_=
acm</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.160966] cdc_acm: USB Abstract Control Model driver fo=
r USB modems and ISDN adapters</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.169790] usbmisc_imx 5b0d0200.usbmisc: 5b0d0200.usbmis=
c supply vbus-wakeup not found, using dummy regulator</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.185163] using random self ethernet address</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.189627] using random host ethernet address</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.194455] usb0: HOST MAC 92:91:a8:31:cb:e7</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.198786] usb0: MAC fe:25:91:fa:0c:72</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.202654] using random self ethernet address</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.207105] using random host ethernet address</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.211669] g_ether gadget: Ethernet Gadget, version: Mem=
orial Day 2008</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.218295] g_ether gadget: g_ether ready</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.226603] rtc rtc0: invalid alarm value: 2020-1-27 43:7=
8:0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.232429] rtc-pcf8563 0-0051: rtc core: registered rtc-=
pcf8563 as rtc0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.240478] i2c /dev entries driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.246553] usbcore: registered new interface driver bcm2=
03x</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.252287] usbcore: registered new interface driver bfus=
b</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.258470] sdhci: Secure Digital Host Controller Interfa=
ce driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.264864] sdhci: Copyright(c) Pierre Ossman</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.269230] sdhci-pltfm: SDHCI platform and OF driver hel=
per</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.276242] mmc0: CQHCI version 5.10</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.322912] mmc0: SDHCI controller on 5b010000.usdhc [5b0=
10000.usdhc] using ADMA</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.335220] mmc1: CQHCI version 5.10</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.382948] mmc1: SDHCI controller on 5b020000.usdhc [5b0=
20000.usdhc] using ADMA</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.397991] NET: Registered protocol family 26</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.404189] NET: Registered protocol family 10</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.413369] Segment Routing with IPv6</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.417100] sit: IPv6, IPv4 and MPLS over IPv4 tunneling =
driver</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.425633] NET: Registered protocol family 17</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.430940] Bluetooth: RFCOMM TTY layer initialized</span=
></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.435870] Bluetooth: RFCOMM socket layer initialized</s=
pan></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.441075] Bluetooth: RFCOMM ver 1.11</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.444882] usb 1-1: new high-speed USB device number 2 u=
sing cdns-usb3</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.451643] Bluetooth: BNEP (Ethernet Emulation) ver 1.3<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.457000] Bluetooth: BNEP filters: protocol multicast</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.462265] Bluetooth: BNEP socket layer initialized</spa=
n></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.467278] Bluetooth: HIDP (Human Interface Emulation) v=
er 1.2</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.473243] Bluetooth: HIDP socket layer initialized</spa=
n></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.478279] lib80211: common routines for IEEE802.11 driv=
ers</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.484016] Key type dns_resolver registered</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.488871] registered taskstats version 1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.509815] mmc0: new HS400 MMC card at address 0001</spa=
n></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.514393] imx8_cpufreq_init: cluster 0 running at freq =
1200 MHz, suspend freq 1200 MHz</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.523890] mmcblk0: mmc0:0001 R1J55A 7.28 GiB=A0</span><=
/p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.528936] mmcblk0boot0: mmc0:0001 R1J55A partition 1 8.=
00 MiB</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.535352] mmcblk0boot1: mmc0:0001 R1J55A partition 2 8.=
00 MiB</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.541775] mmcblk0rpmb: mmc0:0001 R1J55A partition 3 4.0=
0 MiB</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.544156] random: fast init done</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.548389] mmc1: new ultra high speed SDR104 SDIO card a=
t address 0001</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.557718] rtc-pcf8563 0-0051: setting system clock to 2=
020-01-27 13:18:11 UTC (1580131091)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.604760] cdc_acm 1-1:1.2: ttyACM0: USB ACM device</spa=
n></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 =A0 1.646080] g_ether gadget: high-speed config #1: CDC Eth=
ernet (ECM)</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.774888] INFO: task swapper/0:1 blocked for more than 12=
0 seconds.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.781357] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0=
.0_beta+g1907fe4 #1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.788074] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout=
_secs" disables this message.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.795917] swapper/0 =A0 =A0 =A0 D    0     1      0 0x000=
00020</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.801425] Call trace:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.803897] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.809052] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5=
c0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.814295] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.819190] [&lt;ffff00000847b514&gt;] rpm_resume+0xb4/0x5e=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.824348] [&lt;ffff00000847ba98&gt;] __pm_runtime_resume+=
0x50/0x78</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.830194] [&lt;ffff000008537db8&gt;] lpi2c_imx_xfer+0x28/=
0x580</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.835695] [&lt;ffff000008532964&gt;] __i2c_transfer+0x11c=
/0x260</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.841288] [&lt;ffff000008532b08&gt;] i2c_transfer+0x60/0x=
c8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.846526] [&lt;ffff0000085307dc&gt;] pcf8563_read_block_d=
ata+0x5c/0xa0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.852721] [&lt;ffff000008530c04&gt;] pcf8563_clkout_is_pr=
epared+0x1c/0x30</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.859175] [&lt;ffff0000083f30d8&gt;] clk_unprepare_unused=
_subtree+0x58/0x88</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.865803] [&lt;ffff0000083f31a4&gt;] clk_disable_unused+0=
x9c/0x148</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.871651] [&lt;ffff000008083490&gt;] do_one_initcall+0x38=
/0x128</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.877239] [&lt;ffff000008a00cf0&gt;] kernel_init_freeable=
+0x188/0x22c</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.883353] [&lt;ffff0000087a8720&gt;] kernel_init+0x10/0x1=
00</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.888591] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0=
x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.893913] INFO: task kworker/0:0:3 blocked for more than =
120 seconds.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.900542] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0=
.0_beta+g1907fe4 #1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.907258] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout=
_secs" disables this message.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.915101] kworker/0:0 =A0 =A0 D    0     3      2 0x00000=
000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.920607] Workqueue: pm pm_runtime_work</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.924628] Call trace:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.927085] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.932238] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5=
c0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.937476] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.942366] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_dis=
abled+0x20/0x38</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.948736] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+=
0x140/0x530</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.954753] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpat=
h+0x10/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.960774] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38=
</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.965839] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x4=
0/0xa0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.971424] [&lt;ffff0000083f2ed0&gt;] clk_unprepare+0x20/0=
x40</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.976753] [&lt;ffff0000084583ac&gt;] lpuart_runtime_suspe=
nd+0x24/0x48</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.982860] [&lt;ffff000008479538&gt;] pm_generic_runtime_s=
uspend+0x28/0x40</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.989322] [&lt;ffff000008487b98&gt;] genpd_runtime_suspen=
d+0x88/0x240</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 242.995431] [&lt;ffff00000847bbf0&gt;] __rpm_callback+0xe0/=
0x268</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.000929] [&lt;ffff00000847bd98&gt;] rpm_callback+0x20/0x=
80</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.006166] [&lt;ffff00000847c054&gt;] rpm_suspend+0xf4/0x4=
b8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.011407] [&lt;ffff00000847c940&gt;] pm_runtime_work+0x78=
/0xb8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.016906] [&lt;ffff0000080e3614&gt;] process_one_work+0x1=
d4/0x348</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.022663] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0=
x470</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.028080] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.033064] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0=
x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.038396] INFO: task kworker/1:0:16 blocked for more than=
 120 seconds.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.045111] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0=
.0_beta+g1907fe4 #1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.051823] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout=
_secs" disables this message.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.059670] kworker/1:0 =A0 =A0 D    0    16      2 0x00000=
000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.065174] Workqueue: events dbs_work_handler</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.069631] Call trace:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.072088] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.077241] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5=
c0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.082479] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.087371] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_dis=
abled+0x20/0x38</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.093739] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+=
0x140/0x530</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.099755] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpat=
h+0x10/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.105777] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38=
</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.110842] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x4=
0/0xa0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.116427] [&lt;ffff0000083f2a6c&gt;] clk_core_get_rate+0x=
14/0x80</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.122102] [&lt;ffff0000083f32fc&gt;] clk_get_rate+0x14/0x=
28</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.127341] [&lt;ffff00000855360c&gt;] imx8_set_target+0x94=
/0xb0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.132840] [&lt;ffff00000854a7f0&gt;] __cpufreq_driver_tar=
get+0x158/0x538</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.139208] [&lt;ffff00000854ea3c&gt;] od_dbs_update+0xbc/0=
x1a0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.144620] [&lt;ffff00000855152c&gt;] dbs_work_handler+0x3=
c/0x70</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.150204] [&lt;ffff0000080e3614&gt;] process_one_work+0x1=
d4/0x348</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.155966] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0=
x470</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.161379] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.166359] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0=
x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.171692] INFO: task kworker/0:1:32 blocked for more than=
 120 seconds.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.178403] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0=
.0_beta+g1907fe4 #1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.185116] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout=
_secs" disables this message.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.192962] kworker/0:1 =A0 =A0 D    0    32      2 0x00000=
000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.198464] Workqueue: pm pm_runtime_work</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.202482] Call trace:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.204946] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.210099] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5=
c0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.215337] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.220228] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_dis=
abled+0x20/0x38</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.226597] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+=
0x140/0x530</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.232615] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpat=
h+0x10/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.238634] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38=
</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.243699] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x4=
0/0xa0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.249286] [&lt;ffff0000083f2ed0&gt;] clk_unprepare+0x20/0=
x40</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.254613] [&lt;ffff0000084583ac&gt;] lpuart_runtime_suspe=
nd+0x24/0x48</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.260719] [&lt;ffff000008479538&gt;] pm_generic_runtime_s=
uspend+0x28/0x40</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.267176] [&lt;ffff000008487b98&gt;] genpd_runtime_suspen=
d+0x88/0x240</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.273283] [&lt;ffff00000847bbf0&gt;] __rpm_callback+0xe0/=
0x268</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.278780] [&lt;ffff00000847bd98&gt;] rpm_callback+0x20/0x=
80</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.284020] [&lt;ffff00000847c054&gt;] rpm_suspend+0xf4/0x4=
b8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.289259] [&lt;ffff00000847c940&gt;] pm_runtime_work+0x78=
/0xb8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.294760] [&lt;ffff0000080e3614&gt;] process_one_work+0x1=
d4/0x348</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.300526] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0=
x470</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.305939] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130<=
/span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.310916] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0=
x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.316240] INFO: task kworker/1:1:46 blocked for more than=
 120 seconds.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.322952] =A0 =A0 =A0 Not tainted 4.14.62-imx_4.14.62_1.0=
.0_beta+g1907fe4 #1</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.329667] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout=
_secs" disables this message.</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.337513] kworker/1:1 =A0 =A0 D    0    46      2 0x00000=
000</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.343017] Workqueue: events_freezable mmc_rescan</span></=
p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.347824] Call trace:</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.350278] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.355431] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5=
c0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.360670] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</=
span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.365561] [&lt;ffff0000080f3f78&gt;] io_schedule+0x18/0x3=
8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.370715] [&lt;ffff000008182528&gt;] wait_on_page_bit+0xf=
0/0x120</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.376396] [&lt;ffff000008183280&gt;] do_read_cache_page+0=
x208/0x360</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.382327] [&lt;ffff0000081833e8&gt;] read_cache_page+0x10=
/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.387828] [&lt;ffff00000839d87c&gt;] read_dev_sector+0x34=
/0xb0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.393326] [&lt;ffff0000083a0638&gt;] read_lba.isra.1+0xf8=
/0x1b8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.398911] [&lt;ffff0000083a0a08&gt;] efi_partition+0xa8/0=
x5a8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.404322] [&lt;ffff00000839f798&gt;] check_partition+0x10=
0/0x250</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.409998] [&lt;ffff00000839df38&gt;] rescan_partitions+0x=
c8/0x388</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.415761] [&lt;ffff00000823fd74&gt;] __blkdev_get+0x294/0=
x400</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.421182] [&lt;ffff000008240280&gt;] blkdev_get+0x130/0x3=
60</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.426427] [&lt;ffff00000839c7f8&gt;] __device_add_disk+0x=
400/0x450</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.432282] [&lt;ffff00000839c858&gt;] device_add_disk+0x10=
/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.437780] [&lt;ffff0000085681f8&gt;] mmc_add_disk+0x28/0x=
f8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.443019] [&lt;ffff00000856abb8&gt;] mmc_blk_probe+0x2e0/=
0x480</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.448517] [&lt;ffff00000855a88c&gt;] mmc_bus_probe+0x1c/0=
x28</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.453844] [&lt;ffff000008470638&gt;] driver_probe_device+=
0x210/0x2d0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.459863] [&lt;ffff000008470854&gt;] __device_attach_driv=
er+0x9c/0xf8</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.465970] [&lt;ffff00000846e854&gt;] bus_for_each_drv+0x4=
c/0x98</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.471556] [&lt;ffff0000084702f8&gt;] __device_attach+0xc0=
/0x138</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.477142] [&lt;ffff000008470910&gt;] device_initial_probe=
+0x10/0x18</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.483074] [&lt;ffff00000846f7b4&gt;] bus_probe_device+0x9=
4/0xa0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.488664] [&lt;ffff00000846d798&gt;] device_add+0x398/0x5=
a0</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.493901] [&lt;ffff00000855ae7c&gt;] mmc_add_card+0x1b4/0=
x310</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.499312] [&lt;ffff00000855e870&gt;] mmc_attach_mmc+0xa8/=
0x150</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.504811] [&lt;ffff00000855a4d8&gt;] mmc_rescan+0x2e8/0x3=
88</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.510051] [&lt;ffff0000080e3614&gt;] process_one_work+0x1=
d4/0x348</span></p>
    <p dir=3D"ltr"
      style=3D"line-height:1.3800000000000001;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:=
pre-wrap;">[=A0 243.51580</span></p>
    <blockquote type=3D"cite"
      cite=3D"mid:316054918.XuX68eSyCx@yow-masselst-lx1">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Mark Asselstine


</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">

Thanks and Regards
Sheraz Ali Shah
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">



</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------7CF0B18FFDC88CEF9BAC5B7D--
