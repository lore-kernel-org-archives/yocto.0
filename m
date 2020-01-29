Received: from c57603.sgvps.net (c57603.sgvps.net [109.199.122.162])
 by mx.groups.io with SMTP id smtpd.web09.3450.1580299924206758142
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 04:12:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@iwavesystems.com header.s=default header.b=FVnC514Y;
 spf=pass (domain: iwavesystems.com, ip: 109.199.122.162, mailfrom: sheraz.ali@iwavesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=SwFR+jk2P6Cn4iIL6DyibOYxLeVoJr5LXZsc7Ff3Mic=; b=FVnC514YneDQVoq4Y8RJ2Lag7
	wyUvpc5AWH9jurU5t87oGkt3bmtFjkBKBYXcczo96GeSKsLKMrv/+mJ/XKHBiNvab7vnDuX9f6ha2
	cpZtBs5u45cmgSqXhfJjOjSs1WiYQ1ih6eRh56oej2Ub9StSuunBiCqjYvk9gdDx2VEzsVPYIE35R
	VgcE6v2b/4u2bgxkOV5B088yZMt+Aon01ZCCs5Wb6Z2NHfM4Y4OIEiAz5WFNtIaCplLyQLAVd2ePv
	lCfz3xGrE//om1axwJ/wywP8VtWgGBqpnZ49Zfo1WuVpovK+k/upnFLD++iH7T/nVRUk6XTtU9IX8
	3lY58Kq0w==;
Received: from [182.73.142.194] (port=35784 helo=[192.168.1.131])
	by c57603.sgvps.net with esmtpsa  tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1iwmCI-0003Cy-2B; Wed, 29 Jan 2020 06:11:54 -0600
Subject: Re: [yocto] Tools to debug kernel hang in yocto
To: Randy MacLeod <randy.macleod@windriver.com>,
 Mark Asselstine <mark.asselstine@windriver.com>, yocto@lists.yoctoproject.org
Cc: yocto@yoctoproject.org
References: <3cf7a10c-4a3e-439e-8319-768d5e5523fb@email.android.com>
 <316054918.XuX68eSyCx@yow-masselst-lx1>
 <4bb4caae-260f-1258-25f6-fd8c645253ab@windriver.com>
From: "Sheraz Ali" <sheraz.ali@iwavesystems.com>
Message-ID: <f76cccb7-7ee0-ca49-4c72-8794b42799df@iwavesystems.com>
Date: Wed, 29 Jan 2020 17:41:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4bb4caae-260f-1258-25f6-fd8c645253ab@windriver.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - c57603.sgvps.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - iwavesystems.com
X-Get-Message-Sender-Via: c57603.sgvps.net: authenticated_id: sheraz.ali@iwavesystems.com
X-Authenticated-Sender: c57603.sgvps.net: sheraz.ali@iwavesystems.com
Content-Type: multipart/alternative;
 boundary="------------66354B54A5613257C15CB33D"
Content-Language: en-US

--------------66354B54A5613257C15CB33D
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

I cannot enter any commands when it crashes

On 29/01/20 1:15 AM, Randy MacLeod wrote:
> On 1/28/20 1:11 PM, Mark Asselstine wrote:
>> On Tuesday, January 28, 2020 12:58:35 P.M. EST Sheraz Ali wrote:
>>> Hi,
>>>       Can anyone suggest me dumping tools that can be used to figure the
>>> kernel hang. I have attached the log of kernel hang for your reference.
>> Is the kernel actually hung? ie. does it still respond to magic-sysrq, like
>> 'alt+sysrq l' or 'alt+sysrq b'. It makes things a lot easier if the kernel is
>> still alive so best to determine if it is "appears to be hung" vs "is hung".
>
> Hi Sheraz,
>
> In addition to Mark's comments, did you try:
>
>    [  242.788074] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
> to see if you could learn more about the system when things slow down?
>
> Disabling that hang check and using perf is probably a good starting 
> point. I don't
> have specific suggestions but this somewhat dated document might help 
> if you are just getting started
> with perf and Yocto:
> https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling
> and for a more general perf examples, see:
> http://www.brendangregg.com/perf.html
>
>
> Also, it's better to avoid posting attachments especially .docx files.
> I (safely ;-) ) opened the file in google docs. It is inline below.
> It's ~ 400 lines which is somewhat long so if you do attach files in 
> the future
> that are say 1000 lines, just use plain text.
>
> Thanks,
>
> ../Randy
>
> -- U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0 
> (Jan 23 2020 - 05:39:38 +0000)
>
>
> CPU:   Freescale i.MX8QXP revB A35 at 1200 MHz at 38C
>
> Model: Freescale i.MX8DX CCU
>
> Board: iMX8DX ARM2 Based Custom Board
>
> Boot:  MMC0
>
> DRAM:  510 MiB
>
> ENET_mode:MII
>
> MMC:   FSL_SDHC: 0
>
> Loading Environment from MMC... OK
>
> In:    serial@5a060000
>
> Out:   serial@5a060000
>
> Err:   serial@5a060000
>
> Saving Environment to MMC... Writing to MMC(0)... OK
>
>
>  BuildInfo:
>
>   - SCFW 06ff1979, SECO-FW 31fabbff, IMX-MKIMAGE 7f7b5b25, Container 
> container0, ATF 30d73be
>
>   - U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0
>
>
> flash target is MMC:0
>
> Net:   eth0: ethernet@5b040000 [PRIME]
>
> Fastboot: Normal
>
> Normal Boot
>
> Hit any key to stop autoboot:  0
>
> 74752 bytes read in 15 ms (4.8 MiB/s)
>
> Authenticate OS container at 0x85000000
>
> ## Starting auxiliary core at 0x88000000 ...
>
> Power on aux core 0
>
> M4 image will run from 0x88000000
>
> Start M4
>
> bootaux complete
>
> 10999808 bytes read in 194 ms (54.1 MiB/s)
>
> Authenticate OS container at 0x86000000
>
> ## Flattened Device Tree blob at 83000000
>
>    Booting using the fdt blob at 0x83000000
>
>    Using Device Tree in place at 0000000083000000, end 00000000830133cf
>
> /dma-controller@591F0000, 51536
>
> /dma-controller@599F0000, 52424
>
> /dma-controller@5a1f0000, 51004
>
> /dma-controller@5a1f0000, 51004
>
>
> Starting kernel ...
>
>
> lsio_gpio0 not owned by curr partition 199
>
> [    0.000000] Booting Linux on physical CPU 0x0
>
> [    0.000000] Linux version 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 
> (oe-user@oe-host) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Wed Nov 20 
> 06:37:17 UTC 2019
>
> [    0.000000] Boot CPU: AArch64 Processor [410fd042]
>
> [    0.000000] Machine model: Freescale i.MX8DX MEK
>
> [    0.000000] earlycon: lpuart32 at MMIO 0x000000005a060000 (options 
> '115200')
>
> [    0.000000] bootconsole [lpuart32] enabled
>
> [    0.000000] OF: reserved mem: failed to allocate memory for node 
> 'linux,cma'
>
> [    0.000000] cma: Failed to reserve 320 MiB
>
> [    0.000000] psci: probing for conduit method from DT.
>
> [    0.000000] psci: PSCIv1.1 detected in firmware.
>
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
>
> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
>
> [    0.000000] psci: SMC Calling Convention v1.1
>
> [    0.000000] percpu: Embedded 20 pages/cpu @ffff80001ff68000 s44056 
> r8192 d29672 u81920
>
> [    0.000000] Detected VIPT I-cache on CPU0
>
> [    0.000000] Speculative Store Bypass Disable mitigation not required
>
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 
> 89208
>
> [    0.000000] Kernel command line: root=/dev/mmcblk0p1 
> console=ttyLP0,115200 earlycon=lpuart32,0x5a060000,115200 rootwait 
> rootfstype=ext4 rw
>
> [    0.000000] PID hash table entries: 2048 (order: 2, 16384 bytes)
>
> [    0.000000] Dentry cache hash table entries: 65536 (order: 7, 
> 524288 bytes)
>
> [    0.000000] Inode-cache hash table entries: 32768 (order: 6, 262144 
> bytes)
>
> [    0.000000] Memory: 202612K/362496K available (7422K kernel code, 
> 492K rwdata, 2232K rodata, 448K init, 269K bss, 159884K reserved, 0K 
> cma-reserved)
>
> [    0.000000] Virtual kernel memory layout:
>
> [    0.000000]     modules : 0xffff000000000000 - 0xffff000008000000   
> ( 128 MB)
>
> [    0.000000]     vmalloc : 0xffff000008000000 - 0xffff7dffbfff0000   
> (129022 GB)
>
> [    0.000000]       .text : 0xffff000008080000 - 0xffff0000087c0000   
> ( 7424 KB)
>
> [    0.000000]     .rodata : 0xffff0000087c0000 - 0xffff000008a00000   
> ( 2304 KB)
>
> [    0.000000]       .init : 0xffff000008a00000 - 0xffff000008a70000   
> ( 448 KB)
>
> [    0.000000]       .data : 0xffff000008a70000 - 0xffff000008aeb008   
> ( 493 KB)
>
> [    0.000000]        .bss : 0xffff000008aeb008 - 0xffff000008b2e7f0   
> ( 270 KB)
>
> [    0.000000]     fixed : 0xffff7dfffe7fb000 - 0xffff7dfffec00000   ( 
> 4116 KB)
>
> [    0.000000]     PCI I/O : 0xffff7dfffee00000 - 0xffff7dffffe00000   
> ( 16 MB)
>
> [    0.000000]     vmemmap : 0xffff7e0000000000 - 0xffff800000000000   
> ( 2048 GB maximum)
>
> [    0.000000]               0xffff7e0000008000 - 0xffff7e0000800000   
> ( 7 MB actual)
>
> [    0.000000]     memory : 0xffff800000200000 - 0xffff800020000000   
> ( 510 MB)
>
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
>
> [    0.000000] Preemptible hierarchical RCU implementation.
>
> [    0.000000]  RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=2.
>
> [    0.000000]  Tasks RCU enabled.
>
> [    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=16, 
> nr_cpu_ids=2
>
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
>
> [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
>
> [    0.000000] GICv3: no VLPI support, no direct LPI support
>
> [    0.000000] GICv3: CPU0: found redistributor 0 region 
> 0:0x0000000051b00000
>
> [    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
>
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff 
> max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
>
> [    0.000005] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps 
> every 2199023255500ns
>
> [    0.008628] Console: colour dummy device 80x25
>
> [    0.012749] Calibrating delay loop (skipped), value calculated 
> using timer frequency.. 16.00 BogoMIPS (lpj=32000)
>
> [    0.022984] pid_max: default: 32768 minimum: 301
>
> [    0.027667] Security Framework initialized
>
> [    0.031710] Mount-cache hash table entries: 1024 (order: 1, 8192 bytes)
>
> [    0.038278] Mountpoint-cache hash table entries: 1024 (order: 1, 
> 8192 bytes)
>
> [    0.061381] ASID allocator initialised with 32768 entries
>
> [    0.066512] Hierarchical SRCU implementation.
>
> [    0.078976] *****Initialized MU
>
> [    0.081783] **** imx8_init_pm_domains ****
>
> [    0.087226] CPU identified as i.MX8QXP, silicon rev 1.1
>
> [    0.100145] smp: Bringing up secondary CPUs ...
>
> [    0.132762] Detected VIPT I-cache on CPU1
>
> [    0.132791] GICv3: CPU1: found redistributor 1 region 
> 0:0x0000000051b20000
>
> [    0.132823] CPU1: Booted secondary processor [410fd042]
>
> [    0.132905] smp: Brought up 1 node, 2 CPUs
>
> [    0.152743] SMP: Total of 2 processors activated.
>
> [    0.157425] CPU features: detected feature: GIC system register CPU 
> interface
>
> [    0.164547] CPU features: detected feature: 32-bit EL0 Support
>
> [    0.170367] CPU features: detected feature: Kernel page table 
> isolation (KPTI)
>
> [    0.180069] CPU: All CPU(s) started at EL2
>
> [    0.183833] alternatives: patching kernel code
>
> [    0.188812] devtmpfs: initialized
>
> [    0.202349] random: get_random_u32 called from 
> bucket_table_alloc+0x108/0x260 with crng_init=0
>
> [    0.211143] clocksource: jiffies: mask: 0xffffffff max_cycles: 
> 0xffffffff, max_idle_ns: 7645041785100000 ns
>
> [    0.220560] futex hash table entries: 512 (order: 4, 65536 bytes)
>
> [    0.226762] pinctrl core: initialized pinctrl subsystem
>
> [    0.232555] NET: Registered protocol family 16
>
> [    0.237997] cpuidle: using governor menu
>
> [    0.242655] vdso: 2 pages (1 code @ ffff0000087c6000, 1 data @ 
> ffff000008a74000)
>
> [    0.249741] hw-breakpoint: found 6 breakpoint and 4 watchpoint 
> registers.
>
> [    0.256679] DMA: preallocated 256 KiB pool for atomic allocations
>
> [    0.262703] Serial: AMBA PL011 UART driver
>
> [    0.268334] MU and Power domains initialized
>
> [    0.272285] **** imx8qxp_clocks_init ****
>
> [    0.334337] imx8qxp-pinctrl iomuxc: initialized IMX pinctrl driver
>
> [    0.354628] mxs_phy 5b100000.usbphy: 5b100000.usbphy supply phy-3p0 
> not found, using dummy regulator
>
> [    0.384247] HugeTLB registered 2.00 MiB page size, pre-allocated 0 
> pages
>
> [    0.410801] usbcore: registered new interface driver usbfs
>
> [    0.416021] usbcore: registered new interface driver hub
>
> [    0.421323] usbcore: registered new device driver usb
>
> [    0.426846] usb_phy_generic usbphynop1: usbphynop1 supply vcc not 
> found, using dummy regulator
>
> [    0.436483] i2c i2c-0: of_i2c: modalias failure on 
> /i2c@37230000/PCA9535@21
>
> [    0.443130] i2c i2c-0: Failed to create I2C device for 
> /i2c@37230000/PCA9535@21
>
> [    0.450420] i2c i2c-0: LPI2C adapter registered
>
> [    0.455194] pps_core: LinuxPPS API ver. 1 registered
>
> [    0.459887] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 
> Rodolfo Giometti <giometti@linux.it>
>
> [    0.469018] PTP clock support registered
>
> [    0.473973] MU is ready for cross core communication!
>
> [    0.479393] virtio_rpmsg_bus virtio0: rpmsg host is online
>
> [    0.485197] virtio_rpmsg_bus virtio1: rpmsg host is online
>
> [    0.490383] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x53
>
> [    0.497802] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x52
>
> [    0.498067] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x51
>
> [    0.498264] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x54
>
> [    0.505568] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x59
>
> [    0.505768] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x5a
>
> [    0.513040] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x55
>
> [    0.520459] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x58
>
> [    0.520650] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x56
>
> [    0.527922] virtio_rpmsg_bus virtio1: creating channel 
> rpmsg_channel_0 addr 0x57
>
> [    0.564988] imx rpmsg driver is registered.
>
> [    0.569450] Bluetooth: Core ver 2.22
>
> [    0.572713] NET: Registered protocol family 31
>
> [    0.577122] Bluetooth: HCI device and connection manager initialized
>
> [    0.583471] Bluetooth: HCI socket layer initialized
>
> [    0.588328] Bluetooth: L2CAP socket layer initialized
>
> [    0.593386] Bluetooth: SCO socket layer initialized
>
> [    0.598868] clocksource: Switched to clocksource arch_sys_counter
>
> [    0.611273] NET: Registered protocol family 2
>
> [    0.615753] TCP established hash table entries: 4096 (order: 3, 
> 32768 bytes)
>
> [    0.622544] TCP bind hash table entries: 4096 (order: 4, 65536 bytes)
>
> [    0.628959] TCP: Hash tables configured (established 4096 bind 4096)
>
> [    0.635336] UDP hash table entries: 256 (order: 1, 8192 bytes)
>
> [    0.641080] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
>
> [    0.647441] NET: Registered protocol family 1
>
> [    0.651943] RPC: Registered named UNIX socket transport module.
>
> [    0.657571] RPC: Registered udp transport module.
>
> [    0.662259] RPC: Registered tcp transport module.
>
> [    0.666947] RPC: Registered tcp NFSv4.1 backchannel transport module.
>
> [    0.674238] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 
> counters available
>
> [    0.682028] kvm [1]: 8-bit VMID
>
> [    0.685265] kvm [1]: GICv3: no GICV resource entry
>
> [    0.689723] kvm [1]: disabling GICv2 emulation
>
> [    0.694170] kvm [1]: GIC system register CPU interface enabled
>
> [    0.700018] kvm [1]: vgic interrupt IRQ1
>
> [    0.703938] kvm [1]: Hyp mode initialized successfully
>
> [    0.711792] workingset: timestamp_bits=46 max_order=16 bucket_order=0
>
> [    0.724570] squashfs: version 4.0 (2009/01/31) Phillip Lougher
>
> [    0.730756] NFS: Registering the id_resolver key type
>
> [    0.735491] Key type id_resolver registered
>
> [    0.739679] Key type id_legacy registered
>
> [    0.743662] nfs4filelayout_init: NFSv4 File Layout Driver 
> Registering...
>
> [    0.753535] Block layer SCSI generic (bsg) driver version 0.4 
> loaded (major 248)
>
> [    0.760668] io scheduler noop registered
>
> [    0.764710] io scheduler cfq registered (default)
>
> [    0.769218] io scheduler mq-deadline registered
>
> [    0.773720] io scheduler kyber registered
>
> [    0.932257] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>
> [    0.940722] 5a060000.serial: ttyLP0 at MMIO 0x5a060010 (irq = 38, 
> base_baud = 5000000) is a FSL_LPUAR[    0.951903] console [ttyLP0] enabled
>
> [    0.951903] console [ttyLP0] enabled
>
> [    0.958917] bootconsole [lpuart32] disabled
>
> [    0.958917] bootconsole [lpuart32] disabled
>
> [    0.967459] fsl-lpuart 5a060000.serial: NO DMA tx channel, run at 
> cpu mode
>
> [    0.974344] fsl-lpuart 5a060000.serial: NO DMA rx channel, run at 
> cpu mode
>
> [    0.981984] 5a070000.serial: ttyLP1 at MMIO 0x5a070010 (irq = 39, 
> base_baud = 5000000) is a FSL_LPUART
>
> [    0.991525] fsl-lpuart 5a070000.serial: NO DMA tx channel, run at 
> cpu mode
>
> [    0.998417] fsl-lpuart 5a070000.serial: NO DMA rx channel, run at 
> cpu mode
>
> [    1.006015] 5a080000.serial: ttyLP2 at MMIO 0x5a080010 (irq = 40, 
> base_baud = 5000000) is a FSL_LPUART
>
> [    1.015530] fsl-lpuart 5a080000.serial: NO DMA tx channel, run at 
> cpu mode
>
> [    1.022421] fsl-lpuart 5a080000.serial: NO DMA rx channel, run at 
> cpu mode
>
> [    1.031495] fsl_lpspi 5a000000.lpspi: lpspi probed
>
> [    1.036768] libphy: Fixed MDIO Bus: probed
>
> [    1.042148] fec 5b040000.ethernet: 5b040000.ethernet supply phy not 
> found, using dummy regulator
>
> [    1.051325] pps pps0: new PPS source ptp0
>
> [    1.056521] libphy: fec_enet_mii_bus: probed
>
> [    1.061701] fec 5b040000.ethernet eth0: registered PHC device 0
>
> [    1.067841] PPP generic driver version 2.4.2
>
> [    1.072273] PPP Deflate Compression module registered
>
> [    1.081412]  xhci-cdns3: xHCI Host Controller
>
> [    1.085806]  xhci-cdns3: new USB bus registered, assigned bus number 1
>
> [    1.093593]  xhci-cdns3: hcc params 0x200073c8 hci version 0x100 
> quirks 0xa0010010
>
> [    1.101728] hub 1-0:1.0: USB hub found
>
> [    1.105515] hub 1-0:1.0: 1 port detected
>
> [    1.109722]  xhci-cdns3: xHCI Host Controller
>
> [    1.114102]  xhci-cdns3: new USB bus registered, assigned bus number 2
>
> [    1.120645]  xhci-cdns3: Host supports USB 3.0  SuperSpeed
>
> [    1.126183] usb usb2: We don't know the algorithms for LPM for this 
> host, disabling LPM.
>
> [    1.134714] hub 2-0:1.0: USB hub found
>
> [    1.138498] hub 2-0:1.0: 1 port detected
>
> [    1.142953] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
>
> [    1.149489] ehci-platform: EHCI generic platform driver
>
> [    1.155296] usbcore: registered new interface driver cdc_acm
>
> [    1.160966] cdc_acm: USB Abstract Control Model driver for USB 
> modems and ISDN adapters
>
> [    1.169790] usbmisc_imx 5b0d0200.usbmisc: 5b0d0200.usbmisc supply 
> vbus-wakeup not found, using dummy regulator
>
> [    1.185163] using random self ethernet address
>
> [    1.189627] using random host ethernet address
>
> [    1.194455] usb0: HOST MAC 92:91:a8:31:cb:e7
>
> [    1.198786] usb0: MAC fe:25:91:fa:0c:72
>
> [    1.202654] using random self ethernet address
>
> [    1.207105] using random host ethernet address
>
> [    1.211669] g_ether gadget: Ethernet Gadget, version: Memorial Day 2008
>
> [    1.218295] g_ether gadget: g_ether ready
>
> [    1.226603] rtc rtc0: invalid alarm value: 2020-1-27 43:78:0
>
> [    1.232429] rtc-pcf8563 0-0051: rtc core: registered rtc-pcf8563 as 
> rtc0
>
> [    1.240478] i2c /dev entries driver
>
> [    1.246553] usbcore: registered new interface driver bcm203x
>
> [    1.252287] usbcore: registered new interface driver bfusb
>
> [    1.258470] sdhci: Secure Digital Host Controller Interface driver
>
> [    1.264864] sdhci: Copyright(c) Pierre Ossman
>
> [    1.269230] sdhci-pltfm: SDHCI platform and OF driver helper
>
> [    1.276242] mmc0: CQHCI version 5.10
>
> [    1.322912] mmc0: SDHCI controller on 5b010000.usdhc 
> [5b010000.usdhc] using ADMA
>
> [    1.335220] mmc1: CQHCI version 5.10
>
> [    1.382948] mmc1: SDHCI controller on 5b020000.usdhc 
> [5b020000.usdhc] using ADMA
>
> [    1.397991] NET: Registered protocol family 26
>
> [    1.404189] NET: Registered protocol family 10
>
> [    1.413369] Segment Routing with IPv6
>
> [    1.417100] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
>
> [    1.425633] NET: Registered protocol family 17
>
> [    1.430940] Bluetooth: RFCOMM TTY layer initialized
>
> [    1.435870] Bluetooth: RFCOMM socket layer initialized
>
> [    1.441075] Bluetooth: RFCOMM ver 1.11
>
> [    1.444882] usb 1-1: new high-speed USB device number 2 using cdns-usb3
>
> [    1.451643] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
>
> [    1.457000] Bluetooth: BNEP filters: protocol multicast
>
> [    1.462265] Bluetooth: BNEP socket layer initialized
>
> [    1.467278] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
>
> [    1.473243] Bluetooth: HIDP socket layer initialized
>
> [    1.478279] lib80211: common routines for IEEE802.11 drivers
>
> [    1.484016] Key type dns_resolver registered
>
> [    1.488871] registered taskstats version 1
>
> [    1.509815] mmc0: new HS400 MMC card at address 0001
>
> [    1.514393] imx8_cpufreq_init: cluster 0 running at freq 1200 MHz, 
> suspend freq 1200 MHz
>
> [    1.523890] mmcblk0: mmc0:0001 R1J55A 7.28 GiB
>
> [    1.528936] mmcblk0boot0: mmc0:0001 R1J55A partition 1 8.00 MiB
>
> [    1.535352] mmcblk0boot1: mmc0:0001 R1J55A partition 2 8.00 MiB
>
> [    1.541775] mmcblk0rpmb: mmc0:0001 R1J55A partition 3 4.00 MiB
>
> [    1.544156] random: fast init done
>
> [    1.548389] mmc1: new ultra high speed SDR104 SDIO card at address 0001
>
> [    1.557718] rtc-pcf8563 0-0051: setting system clock to 2020-01-27 
> 13:18:11 UTC (1580131091)
>
> [    1.604760] cdc_acm 1-1:1.2: ttyACM0: USB ACM device
>
> [    1.646080] g_ether gadget: high-speed config #1: CDC Ethernet (ECM)
>
> [  242.774888] INFO: task swapper/0:1 blocked for more than 120 seconds.
>
> [  242.781357]       Not tainted 
> 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1
>
> [  242.788074] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
>
> [  242.795917] swapper/0       D 0 1 0 0x00000020
>
> [  242.801425] Call trace:
>
> [  242.803897] [<ffff00000808532c>] __switch_to+0x94/0xd8
>
> [  242.809052] [<ffff0000087a989c>] __schedule+0x18c/0x5c0
>
> [  242.814295] [<ffff0000087a9d08>] schedule+0x38/0xa0
>
> [  242.819190] [<ffff00000847b514>] rpm_resume+0xb4/0x5e8
>
> [  242.824348] [<ffff00000847ba98>] __pm_runtime_resume+0x50/0x78
>
> [  242.830194] [<ffff000008537db8>] lpi2c_imx_xfer+0x28/0x580
>
> [  242.835695] [<ffff000008532964>] __i2c_transfer+0x11c/0x260
>
> [  242.841288] [<ffff000008532b08>] i2c_transfer+0x60/0xc8
>
> [  242.846526] [<ffff0000085307dc>] pcf8563_read_block_data+0x5c/0xa0
>
> [  242.852721] [<ffff000008530c04>] pcf8563_clkout_is_prepared+0x1c/0x30
>
> [  242.859175] [<ffff0000083f30d8>] clk_unprepare_unused_subtree+0x58/0x88
>
> [  242.865803] [<ffff0000083f31a4>] clk_disable_unused+0x9c/0x148
>
> [  242.871651] [<ffff000008083490>] do_one_initcall+0x38/0x128
>
> [  242.877239] [<ffff000008a00cf0>] kernel_init_freeable+0x188/0x22c
>
> [  242.883353] [<ffff0000087a8720>] kernel_init+0x10/0x100
>
> [  242.888591] [<ffff0000080846d8>] ret_from_fork+0x10/0x18
>
> [  242.893913] INFO: task kworker/0:0:3 blocked for more than 120 seconds.
>
> [  242.900542]       Not tainted 
> 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1
>
> [  242.907258] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
>
> [  242.915101] kworker/0:0     D 0 3 2 0x00000000
>
> [  242.920607] Workqueue: pm pm_runtime_work
>
> [  242.924628] Call trace:
>
> [  242.927085] [<ffff00000808532c>] __switch_to+0x94/0xd8
>
> [  242.932238] [<ffff0000087a989c>] __schedule+0x18c/0x5c0
>
> [  242.937476] [<ffff0000087a9d08>] schedule+0x38/0xa0
>
> [  242.942366] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38
>
> [  242.948736] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530
>
> [  242.954753] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18
>
> [  242.960774] [<ffff0000087ab280>] mutex_lock+0x30/0x38
>
> [  242.965839] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0
>
> [  242.971424] [<ffff0000083f2ed0>] clk_unprepare+0x20/0x40
>
> [  242.976753] [<ffff0000084583ac>] lpuart_runtime_suspend+0x24/0x48
>
> [  242.982860] [<ffff000008479538>] pm_generic_runtime_suspend+0x28/0x40
>
> [  242.989322] [<ffff000008487b98>] genpd_runtime_suspend+0x88/0x240
>
> [  242.995431] [<ffff00000847bbf0>] __rpm_callback+0xe0/0x268
>
> [  243.000929] [<ffff00000847bd98>] rpm_callback+0x20/0x80
>
> [  243.006166] [<ffff00000847c054>] rpm_suspend+0xf4/0x4b8
>
> [  243.011407] [<ffff00000847c940>] pm_runtime_work+0x78/0xb8
>
> [  243.016906] [<ffff0000080e3614>] process_one_work+0x1d4/0x348
>
> [  243.022663] [<ffff0000080e37d0>] worker_thread+0x48/0x470
>
> [  243.028080] [<ffff0000080e956c>] kthread+0x12c/0x130
>
> [  243.033064] [<ffff0000080846d8>] ret_from_fork+0x10/0x18
>
> [  243.038396] INFO: task kworker/1:0:16 blocked for more than 120 
> seconds.
>
> [  243.045111]       Not tainted 
> 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1
>
> [  243.051823] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
>
> [  243.059670] kworker/1:0     D 0 16 2 0x00000000
>
> [  243.065174] Workqueue: events dbs_work_handler
>
> [  243.069631] Call trace:
>
> [  243.072088] [<ffff00000808532c>] __switch_to+0x94/0xd8
>
> [  243.077241] [<ffff0000087a989c>] __schedule+0x18c/0x5c0
>
> [  243.082479] [<ffff0000087a9d08>] schedule+0x38/0xa0
>
> [  243.087371] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38
>
> [  243.093739] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530
>
> [  243.099755] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18
>
> [  243.105777] [<ffff0000087ab280>] mutex_lock+0x30/0x38
>
> [  243.110842] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0
>
> [  243.116427] [<ffff0000083f2a6c>] clk_core_get_rate+0x14/0x80
>
> [  243.122102] [<ffff0000083f32fc>] clk_get_rate+0x14/0x28
>
> [  243.127341] [<ffff00000855360c>] imx8_set_target+0x94/0xb0
>
> [  243.132840] [<ffff00000854a7f0>] __cpufreq_driver_target+0x158/0x538
>
> [  243.139208] [<ffff00000854ea3c>] od_dbs_update+0xbc/0x1a0
>
> [  243.144620] [<ffff00000855152c>] dbs_work_handler+0x3c/0x70
>
> [  243.150204] [<ffff0000080e3614>] process_one_work+0x1d4/0x348
>
> [  243.155966] [<ffff0000080e37d0>] worker_thread+0x48/0x470
>
> [  243.161379] [<ffff0000080e956c>] kthread+0x12c/0x130
>
> [  243.166359] [<ffff0000080846d8>] ret_from_fork+0x10/0x18
>
> [  243.171692] INFO: task kworker/0:1:32 blocked for more than 120 
> seconds.
>
> [  243.178403]       Not tainted 
> 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1
>
> [  243.185116] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
>
> [  243.192962] kworker/0:1     D 0 32 2 0x00000000
>
> [  243.198464] Workqueue: pm pm_runtime_work
>
> [  243.202482] Call trace:
>
> [  243.204946] [<ffff00000808532c>] __switch_to+0x94/0xd8
>
> [  243.210099] [<ffff0000087a989c>] __schedule+0x18c/0x5c0
>
> [  243.215337] [<ffff0000087a9d08>] schedule+0x38/0xa0
>
> [  243.220228] [<ffff0000087aa1e8>] schedule_preempt_disabled+0x20/0x38
>
> [  243.226597] [<ffff0000087aae48>] __mutex_lock.isra.0+0x140/0x530
>
> [  243.232615] [<ffff0000087ab248>] __mutex_lock_slowpath+0x10/0x18
>
> [  243.238634] [<ffff0000087ab280>] mutex_lock+0x30/0x38
>
> [  243.243699] [<ffff0000083f14e0>] clk_prepare_lock+0x40/0xa0
>
> [  243.249286] [<ffff0000083f2ed0>] clk_unprepare+0x20/0x40
>
> [  243.254613] [<ffff0000084583ac>] lpuart_runtime_suspend+0x24/0x48
>
> [  243.260719] [<ffff000008479538>] pm_generic_runtime_suspend+0x28/0x40
>
> [  243.267176] [<ffff000008487b98>] genpd_runtime_suspend+0x88/0x240
>
> [  243.273283] [<ffff00000847bbf0>] __rpm_callback+0xe0/0x268
>
> [  243.278780] [<ffff00000847bd98>] rpm_callback+0x20/0x80
>
> [  243.284020] [<ffff00000847c054>] rpm_suspend+0xf4/0x4b8
>
> [  243.289259] [<ffff00000847c940>] pm_runtime_work+0x78/0xb8
>
> [  243.294760] [<ffff0000080e3614>] process_one_work+0x1d4/0x348
>
> [  243.300526] [<ffff0000080e37d0>] worker_thread+0x48/0x470
>
> [  243.305939] [<ffff0000080e956c>] kthread+0x12c/0x130
>
> [  243.310916] [<ffff0000080846d8>] ret_from_fork+0x10/0x18
>
> [  243.316240] INFO: task kworker/1:1:46 blocked for more than 120 
> seconds.
>
> [  243.322952]       Not tainted 
> 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1
>
> [  243.329667] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
> disables this message.
>
> [  243.337513] kworker/1:1     D 0 46 2 0x00000000
>
> [  243.343017] Workqueue: events_freezable mmc_rescan
>
> [  243.347824] Call trace:
>
> [  243.350278] [<ffff00000808532c>] __switch_to+0x94/0xd8
>
> [  243.355431] [<ffff0000087a989c>] __schedule+0x18c/0x5c0
>
> [  243.360670] [<ffff0000087a9d08>] schedule+0x38/0xa0
>
> [  243.365561] [<ffff0000080f3f78>] io_schedule+0x18/0x38
>
> [  243.370715] [<ffff000008182528>] wait_on_page_bit+0xf0/0x120
>
> [  243.376396] [<ffff000008183280>] do_read_cache_page+0x208/0x360
>
> [  243.382327] [<ffff0000081833e8>] read_cache_page+0x10/0x18
>
> [  243.387828] [<ffff00000839d87c>] read_dev_sector+0x34/0xb0
>
> [  243.393326] [<ffff0000083a0638>] read_lba.isra.1+0xf8/0x1b8
>
> [  243.398911] [<ffff0000083a0a08>] efi_partition+0xa8/0x5a8
>
> [  243.404322] [<ffff00000839f798>] check_partition+0x100/0x250
>
> [  243.409998] [<ffff00000839df38>] rescan_partitions+0xc8/0x388
>
> [  243.415761] [<ffff00000823fd74>] __blkdev_get+0x294/0x400
>
> [  243.421182] [<ffff000008240280>] blkdev_get+0x130/0x360
>
> [  243.426427] [<ffff00000839c7f8>] __device_add_disk+0x400/0x450
>
> [  243.432282] [<ffff00000839c858>] device_add_disk+0x10/0x18
>
> [  243.437780] [<ffff0000085681f8>] mmc_add_disk+0x28/0xf8
>
> [  243.443019] [<ffff00000856abb8>] mmc_blk_probe+0x2e0/0x480
>
> [  243.448517] [<ffff00000855a88c>] mmc_bus_probe+0x1c/0x28
>
> [  243.453844] [<ffff000008470638>] driver_probe_device+0x210/0x2d0
>
> [  243.459863] [<ffff000008470854>] __device_attach_driver+0x9c/0xf8
>
> [  243.465970] [<ffff00000846e854>] bus_for_each_drv+0x4c/0x98
>
> [  243.471556] [<ffff0000084702f8>] __device_attach+0xc0/0x138
>
> [  243.477142] [<ffff000008470910>] device_initial_probe+0x10/0x18
>
> [  243.483074] [<ffff00000846f7b4>] bus_probe_device+0x94/0xa0
>
> [  243.488664] [<ffff00000846d798>] device_add+0x398/0x5a0
>
> [  243.493901] [<ffff00000855ae7c>] mmc_add_card+0x1b4/0x310
>
> [  243.499312] [<ffff00000855e870>] mmc_attach_mmc+0xa8/0x150
>
> [  243.504811] [<ffff00000855a4d8>] mmc_rescan+0x2e8/0x388
>
> [  243.510051] [<ffff0000080e3614>] process_one_work+0x1d4/0x348
>
> [  243.51580
>
>> Mark Asselstine
>>
>>
>>> Thanks and Regards
>>> Sheraz Ali Shah
>>
>>
>> 
>
>
> -- 
> # Randy MacLeod
> # Wind River Linux

-- 
Thanks and Regards
Sheraz Ali Shah


--------------66354B54A5613257C15CB33D
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I cannot enter any commands when it crashes<br>
    </p>
    <div class="moz-cite-prefix">On 29/01/20 1:15 AM, Randy MacLeod
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:4bb4caae-260f-1258-25f6-fd8c645253ab@windriver.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div class="moz-cite-prefix">On 1/28/20 1:11 PM, Mark Asselstine
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:316054918.XuX68eSyCx@yow-masselst-lx1">
        <pre class="moz-quote-pre" wrap="">On Tuesday, January 28, 2020 12:58:35 P.M. EST Sheraz Ali wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Hi,
     Can anyone suggest me dumping tools that can be used to figure the
kernel hang. I have attached the log of kernel hang for your reference.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">Is the kernel actually hung? ie. does it still respond to magic-sysrq, like 
'alt+sysrq l' or 'alt+sysrq b'. It makes things a lot easier if the kernel is 
still alive so best to determine if it is "appears to be hung" vs "is hung".</pre>
      </blockquote>
      <p>Hi Sheraz,</p>
      <p>In addition to Mark's comments, did you try:<br>
      </p>
      <p>   [  242.788074] "echo 0 &gt;
        /proc/sys/kernel/hung_task_timeout_secs" disables this message.<br>
        to see if you could learn more about the system when things slow
        down?</p>
      <p>Disabling that hang check and using perf is probably a good
        starting point. I don't<br>
        have specific suggestions but this somewhat dated document might
        help if you are just getting started<br>
        with perf and Yocto:<br>
           <a class="moz-txt-link-freetext"
          href="https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling"
          moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling</a><br>
        and for a more general perf examples, see:<br>
           <a class="moz-txt-link-freetext"
          href="http://www.brendangregg.com/perf.html"
          moz-do-not-send="true">http://www.brendangregg.com/perf.html</a><br>
      </p>
      <p><br>
      </p>
      <p>Also, it's better to avoid posting attachments especially .docx
        files. <br>
        I (safely ;-) ) opened the file in google docs. It is inline
        below.<br>
        It's ~ 400 lines which is somewhat long so if you do attach
        files in the future<br>
        that are say 1000 lines, just use plain text.</p>
      <p>Thanks,<br>
      </p>
      <p>../Randy<br>
      </p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"
        id="docs-internal-guid-bd89cc0b-7fff-4abb-d3e5-2d8ad0365ca6"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">--
U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0 (Jan 23 2020 - 05:39:38 +0000)</span></p>
      <br>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">CPU:   Freescale i.MX8QXP revB A35 at 1200 MHz at 38C</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Model: Freescale i.MX8DX CCU</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Board: iMX8DX ARM2 Based Custom Board</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Boot:  MMC0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">DRAM:  510 MiB</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">ENET_mode:MII</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">MMC:   FSL_SDHC: 0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Loading Environment from MMC... OK</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In:    serial@5a060000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Out:   serial@5a060000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Err:   serial@5a060000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Saving Environment to MMC... Writing to MMC(0)... OK</span></p>
      <br>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> BuildInfo: </span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">  - SCFW 06ff1979, SECO-FW 31fabbff, IMX-MKIMAGE 7f7b5b25, Container container0, ATF 30d73be</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">  - U-Boot 2018.03-imx_v2018.03_4.14.62_1.0.0_beta+g7fac6b9__CCU_REL8.0 </span></p>
      <br>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">flash target is MMC:0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Net:   eth0: ethernet@5b040000 [PRIME]</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Fastboot: Normal</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Normal Boot</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Hit any key to stop autoboot:  0 </span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">74752 bytes read in 15 ms (4.8 MiB/s)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Authenticate OS container at 0x85000000 </span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">## Starting auxiliary core at 0x88000000 ...</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Power on aux core 0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">M4 image will run from 0x88000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start M4</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">bootaux complete</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">10999808 bytes read in 194 ms (54.1 MiB/s)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Authenticate OS container at 0x86000000 </span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">## Flattened Device Tree blob at 83000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">   Booting using the fdt blob at 0x83000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">   Using Device Tree in place at 0000000083000000, end 00000000830133cf</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">/dma-controller@591F0000, 51536</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">/dma-controller@599F0000, 52424</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">/dma-controller@5a1f0000, 51004</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">/dma-controller@5a1f0000, 51004</span></p>
      <br>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Starting kernel ...</span></p>
      <br>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">lsio_gpio0 not owned by curr partition 199</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Booting Linux on physical CPU 0x0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Linux version 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 (oe-user@oe-host) (gcc version 7.3.0 (GCC)) #1 SMP PREEMPT Wed Nov 20 06:37:17 UTC 2019</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Boot CPU: AArch64 Processor [410fd042]</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Machine model: Freescale i.MX8DX MEK</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] earlycon: lpuart32 at MMIO 0x000000005a060000 (options '115200')</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] bootconsole [lpuart32] enabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,cma'</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] cma: Failed to reserve 320 MiB</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] psci: probing for conduit method from DT.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] psci: PSCIv1.1 detected in firmware.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] psci: Using standard PSCI v0.2 function IDs</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] psci: MIGRATE_INFO_TYPE not supported.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] psci: SMC Calling Convention v1.1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] percpu: Embedded 20 pages/cpu @ffff80001ff68000 s44056 r8192 d29672 u81920</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Detected VIPT I-cache on CPU0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Speculative Store Bypass Disable mitigation not required</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 89208</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Kernel command line: root=/dev/mmcblk0p1 console=ttyLP0,115200 earlycon=lpuart32,0x5a060000,115200 rootwait rootfstype=ext4 rw</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] PID hash table entries: 2048 (order: 2, 16384 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Dentry cache hash table entries: 65536 (order: 7, 524288 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Inode-cache hash table entries: 32768 (order: 6, 262144 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Memory: 202612K/362496K available (7422K kernel code, 492K rwdata, 2232K rodata, 448K init, 269K bss, 159884K reserved, 0K cma-reserved)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Virtual kernel memory layout:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     modules : 0xffff000000000000 - 0xffff000008000000   (   128 MB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     vmalloc : 0xffff000008000000 - 0xffff7dffbfff0000   (129022 GB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]       .text : 0xffff000008080000 - 0xffff0000087c0000   (  7424 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     .rodata : 0xffff0000087c0000 - 0xffff000008a00000   (  2304 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]       .init : 0xffff000008a00000 - 0xffff000008a70000   (   448 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]       .data : 0xffff000008a70000 - 0xffff000008aeb008   (   493 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]        .bss : 0xffff000008aeb008 - 0xffff000008b2e7f0   (   270 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     fixed   : 0xffff7dfffe7fb000 - 0xffff7dfffec00000   (  4116 KB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     PCI I/O : 0xffff7dfffee00000 - 0xffff7dffffe00000   (    16 MB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     vmemmap : 0xffff7e0000000000 - 0xffff800000000000   (  2048 GB maximum)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]               0xffff7e0000008000 - 0xffff7e0000800000   (     7 MB actual)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]     memory  : 0xffff800000200000 - 0xffff800020000000   (   510 MB)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] Preemptible hierarchical RCU implementation.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]  RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=2.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000]  Tasks RCU enabled.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] GICv3: no VLPI support, no direct LPI support</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x0000000051b00000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.000005] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.008628] Console: colour dummy device 80x25</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.012749] Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.022984] pid_max: default: 32768 minimum: 301</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.027667] Security Framework initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.031710] Mount-cache hash table entries: 1024 (order: 1, 8192 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.038278] Mountpoint-cache hash table entries: 1024 (order: 1, 8192 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.061381] ASID allocator initialised with 32768 entries</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.066512] Hierarchical SRCU implementation.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.078976] *****Initialized MU</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.081783] **** imx8_init_pm_domains ****</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.087226] CPU identified as i.MX8QXP, silicon rev 1.1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.100145] smp: Bringing up secondary CPUs ...</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.132762] Detected VIPT I-cache on CPU1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.132791] GICv3: CPU1: found redistributor 1 region 0:0x0000000051b20000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.132823] CPU1: Booted secondary processor [410fd042]</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.132905] smp: Brought up 1 node, 2 CPUs</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.152743] SMP: Total of 2 processors activated.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.157425] CPU features: detected feature: GIC system register CPU interface</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.164547] CPU features: detected feature: 32-bit EL0 Support</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.170367] CPU features: detected feature: Kernel page table isolation (KPTI)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.180069] CPU: All CPU(s) started at EL2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.183833] alternatives: patching kernel code</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.188812] devtmpfs: initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.202349] random: get_random_u32 called from bucket_table_alloc+0x108/0x260 with crng_init=0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.211143] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.220560] futex hash table entries: 512 (order: 4, 65536 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.226762] pinctrl core: initialized pinctrl subsystem</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.232555] NET: Registered protocol family 16</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.237997] cpuidle: using governor menu</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.242655] vdso: 2 pages (1 code @ ffff0000087c6000, 1 data @ ffff000008a74000)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.249741] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.256679] DMA: preallocated 256 KiB pool for atomic allocations</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.262703] Serial: AMBA PL011 UART driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.268334] MU and Power domains initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.272285] **** imx8qxp_clocks_init ****</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.334337] imx8qxp-pinctrl iomuxc: initialized IMX pinctrl driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.354628] mxs_phy 5b100000.usbphy: 5b100000.usbphy supply phy-3p0 not found, using dummy regulator</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.384247] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.410801] usbcore: registered new interface driver usbfs</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.416021] usbcore: registered new interface driver hub</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.421323] usbcore: registered new device driver usb</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.426846] usb_phy_generic usbphynop1: usbphynop1 supply vcc not found, using dummy regulator</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.436483] i2c i2c-0: of_i2c: modalias failure on /i2c@37230000/PCA9535@21</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.443130] i2c i2c-0: Failed to create I2C device for /i2c@37230000/PCA9535@21</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.450420] i2c i2c-0: LPI2C adapter registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.455194] pps_core: LinuxPPS API ver. 1 registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.459887] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <a class="moz-txt-link-rfc2396E" href="mailto:giometti@linux.it" moz-do-not-send="true">&lt;giometti@linux.it&gt;</a></span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.469018] PTP clock support registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.473973] MU is ready for cross core communication!</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.479393] virtio_rpmsg_bus virtio0: rpmsg host is online</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.485197] virtio_rpmsg_bus virtio1: rpmsg host is online</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.490383] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x53</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.497802] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x52</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.498067] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x51</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.498264] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x54</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.505568] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x59</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.505768] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x5a</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.513040] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x55</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.520459] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x58</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.520650] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x56</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.527922] virtio_rpmsg_bus virtio1: creating channel rpmsg_channel_0 addr 0x57</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.564988] imx rpmsg driver is registered.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.569450] Bluetooth: Core ver 2.22</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.572713] NET: Registered protocol family 31</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.577122] Bluetooth: HCI device and connection manager initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.583471] Bluetooth: HCI socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.588328] Bluetooth: L2CAP socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.593386] Bluetooth: SCO socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.598868] clocksource: Switched to clocksource arch_sys_counter</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.611273] NET: Registered protocol family 2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.615753] TCP established hash table entries: 4096 (order: 3, 32768 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.622544] TCP bind hash table entries: 4096 (order: 4, 65536 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.628959] TCP: Hash tables configured (established 4096 bind 4096)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.635336] UDP hash table entries: 256 (order: 1, 8192 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.641080] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.647441] NET: Registered protocol family 1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.651943] RPC: Registered named UNIX socket transport module.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.657571] RPC: Registered udp transport module.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.662259] RPC: Registered tcp transport module.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.666947] RPC: Registered tcp NFSv4.1 backchannel transport module.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.674238] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.682028] kvm [1]: 8-bit VMID</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.685265] kvm [1]: GICv3: no GICV resource entry</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.689723] kvm [1]: disabling GICv2 emulation</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.694170] kvm [1]: GIC system register CPU interface enabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.700018] kvm [1]: vgic interrupt IRQ1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.703938] kvm [1]: Hyp mode initialized successfully</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.711792] workingset: timestamp_bits=46 max_order=16 bucket_order=0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.724570] squashfs: version 4.0 (2009/01/31) Phillip Lougher</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.730756] NFS: Registering the id_resolver key type</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.735491] Key type id_resolver registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.739679] Key type id_legacy registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.743662] nfs4filelayout_init: NFSv4 File Layout Driver Registering...</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.753535] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.760668] io scheduler noop registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.764710] io scheduler cfq registered (default)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.769218] io scheduler mq-deadline registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.773720] io scheduler kyber registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.932257] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.940722] 5a060000.serial: ttyLP0 at MMIO 0x5a060010 (irq = 38, base_baud = 5000000) is a FSL_LPUAR[    0.951903] console [ttyLP0] enabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.951903] console [ttyLP0] enabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.958917] bootconsole [lpuart32] disabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.958917] bootconsole [lpuart32] disabled</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.967459] fsl-lpuart 5a060000.serial: NO DMA tx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.974344] fsl-lpuart 5a060000.serial: NO DMA rx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.981984] 5a070000.serial: ttyLP1 at MMIO 0x5a070010 (irq = 39, base_baud = 5000000) is a FSL_LPUART</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.991525] fsl-lpuart 5a070000.serial: NO DMA tx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    0.998417] fsl-lpuart 5a070000.serial: NO DMA rx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.006015] 5a080000.serial: ttyLP2 at MMIO 0x5a080010 (irq = 40, base_baud = 5000000) is a FSL_LPUART</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.015530] fsl-lpuart 5a080000.serial: NO DMA tx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.022421] fsl-lpuart 5a080000.serial: NO DMA rx channel, run at cpu mode</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.031495] fsl_lpspi 5a000000.lpspi: lpspi probed</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.036768] libphy: Fixed MDIO Bus: probed</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.042148] fec 5b040000.ethernet: 5b040000.ethernet supply phy not found, using dummy regulator</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.051325] pps pps0: new PPS source ptp0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.056521] libphy: fec_enet_mii_bus: probed</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.061701] fec 5b040000.ethernet eth0: registered PHC device 0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.067841] PPP generic driver version 2.4.2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.072273] PPP Deflate Compression module registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.081412]  xhci-cdns3: xHCI Host Controller</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.085806]  xhci-cdns3: new USB bus registered, assigned bus number 1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.093593]  xhci-cdns3: hcc params 0x200073c8 hci version 0x100 quirks 0xa0010010</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.101728] hub 1-0:1.0: USB hub found</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.105515] hub 1-0:1.0: 1 port detected</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.109722]  xhci-cdns3: xHCI Host Controller</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.114102]  xhci-cdns3: new USB bus registered, assigned bus number 2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.120645]  xhci-cdns3: Host supports USB 3.0  SuperSpeed</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.126183] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.134714] hub 2-0:1.0: USB hub found</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.138498] hub 2-0:1.0: 1 port detected</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.142953] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.149489] ehci-platform: EHCI generic platform driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.155296] usbcore: registered new interface driver cdc_acm</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.160966] cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.169790] usbmisc_imx 5b0d0200.usbmisc: 5b0d0200.usbmisc supply vbus-wakeup not found, using dummy regulator</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.185163] using random self ethernet address</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.189627] using random host ethernet address</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.194455] usb0: HOST MAC 92:91:a8:31:cb:e7</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.198786] usb0: MAC fe:25:91:fa:0c:72</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.202654] using random self ethernet address</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.207105] using random host ethernet address</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.211669] g_ether gadget: Ethernet Gadget, version: Memorial Day 2008</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.218295] g_ether gadget: g_ether ready</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.226603] rtc rtc0: invalid alarm value: 2020-1-27 43:78:0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.232429] rtc-pcf8563 0-0051: rtc core: registered rtc-pcf8563 as rtc0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.240478] i2c /dev entries driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.246553] usbcore: registered new interface driver bcm203x</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.252287] usbcore: registered new interface driver bfusb</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.258470] sdhci: Secure Digital Host Controller Interface driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.264864] sdhci: Copyright(c) Pierre Ossman</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.269230] sdhci-pltfm: SDHCI platform and OF driver helper</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.276242] mmc0: CQHCI version 5.10</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.322912] mmc0: SDHCI controller on 5b010000.usdhc [5b010000.usdhc] using ADMA</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.335220] mmc1: CQHCI version 5.10</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.382948] mmc1: SDHCI controller on 5b020000.usdhc [5b020000.usdhc] using ADMA</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.397991] NET: Registered protocol family 26</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.404189] NET: Registered protocol family 10</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.413369] Segment Routing with IPv6</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.417100] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.425633] NET: Registered protocol family 17</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.430940] Bluetooth: RFCOMM TTY layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.435870] Bluetooth: RFCOMM socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.441075] Bluetooth: RFCOMM ver 1.11</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.444882] usb 1-1: new high-speed USB device number 2 using cdns-usb3</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.451643] Bluetooth: BNEP (Ethernet Emulation) ver 1.3</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.457000] Bluetooth: BNEP filters: protocol multicast</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.462265] Bluetooth: BNEP socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.467278] Bluetooth: HIDP (Human Interface Emulation) ver 1.2</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.473243] Bluetooth: HIDP socket layer initialized</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.478279] lib80211: common routines for IEEE802.11 drivers</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.484016] Key type dns_resolver registered</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.488871] registered taskstats version 1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.509815] mmc0: new HS400 MMC card at address 0001</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.514393] imx8_cpufreq_init: cluster 0 running at freq 1200 MHz, suspend freq 1200 MHz</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.523890] mmcblk0: mmc0:0001 R1J55A 7.28 GiB </span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.528936] mmcblk0boot0: mmc0:0001 R1J55A partition 1 8.00 MiB</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.535352] mmcblk0boot1: mmc0:0001 R1J55A partition 2 8.00 MiB</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.541775] mmcblk0rpmb: mmc0:0001 R1J55A partition 3 4.00 MiB</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.544156] random: fast init done</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.548389] mmc1: new ultra high speed SDR104 SDIO card at address 0001</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.557718] rtc-pcf8563 0-0051: setting system clock to 2020-01-27 13:18:11 UTC (1580131091)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.604760] cdc_acm 1-1:1.2: ttyACM0: USB ACM device</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[    1.646080] g_ether gadget: high-speed config #1: CDC Ethernet (ECM)</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.774888] INFO: task swapper/0:1 blocked for more than 120 seconds.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.781357]       Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.788074] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout_secs" disables this message.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.795917] swapper/0       D    0     1      0 0x00000020</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.801425] Call trace:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.803897] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.809052] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5c0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.814295] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.819190] [&lt;ffff00000847b514&gt;] rpm_resume+0xb4/0x5e8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.824348] [&lt;ffff00000847ba98&gt;] __pm_runtime_resume+0x50/0x78</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.830194] [&lt;ffff000008537db8&gt;] lpi2c_imx_xfer+0x28/0x580</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.835695] [&lt;ffff000008532964&gt;] __i2c_transfer+0x11c/0x260</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.841288] [&lt;ffff000008532b08&gt;] i2c_transfer+0x60/0xc8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.846526] [&lt;ffff0000085307dc&gt;] pcf8563_read_block_data+0x5c/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.852721] [&lt;ffff000008530c04&gt;] pcf8563_clkout_is_prepared+0x1c/0x30</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.859175] [&lt;ffff0000083f30d8&gt;] clk_unprepare_unused_subtree+0x58/0x88</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.865803] [&lt;ffff0000083f31a4&gt;] clk_disable_unused+0x9c/0x148</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.871651] [&lt;ffff000008083490&gt;] do_one_initcall+0x38/0x128</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.877239] [&lt;ffff000008a00cf0&gt;] kernel_init_freeable+0x188/0x22c</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.883353] [&lt;ffff0000087a8720&gt;] kernel_init+0x10/0x100</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.888591] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.893913] INFO: task kworker/0:0:3 blocked for more than 120 seconds.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.900542]       Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.907258] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout_secs" disables this message.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.915101] kworker/0:0     D    0     3      2 0x00000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.920607] Workqueue: pm pm_runtime_work</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.924628] Call trace:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.927085] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.932238] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5c0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.937476] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.942366] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_disabled+0x20/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.948736] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+0x140/0x530</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.954753] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpath+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.960774] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.965839] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x40/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.971424] [&lt;ffff0000083f2ed0&gt;] clk_unprepare+0x20/0x40</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.976753] [&lt;ffff0000084583ac&gt;] lpuart_runtime_suspend+0x24/0x48</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.982860] [&lt;ffff000008479538&gt;] pm_generic_runtime_suspend+0x28/0x40</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.989322] [&lt;ffff000008487b98&gt;] genpd_runtime_suspend+0x88/0x240</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  242.995431] [&lt;ffff00000847bbf0&gt;] __rpm_callback+0xe0/0x268</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.000929] [&lt;ffff00000847bd98&gt;] rpm_callback+0x20/0x80</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.006166] [&lt;ffff00000847c054&gt;] rpm_suspend+0xf4/0x4b8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.011407] [&lt;ffff00000847c940&gt;] pm_runtime_work+0x78/0xb8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.016906] [&lt;ffff0000080e3614&gt;] process_one_work+0x1d4/0x348</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.022663] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0x470</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.028080] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.033064] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.038396] INFO: task kworker/1:0:16 blocked for more than 120 seconds.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.045111]       Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.051823] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout_secs" disables this message.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.059670] kworker/1:0     D    0    16      2 0x00000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.065174] Workqueue: events dbs_work_handler</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.069631] Call trace:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.072088] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.077241] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5c0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.082479] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.087371] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_disabled+0x20/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.093739] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+0x140/0x530</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.099755] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpath+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.105777] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.110842] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x40/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.116427] [&lt;ffff0000083f2a6c&gt;] clk_core_get_rate+0x14/0x80</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.122102] [&lt;ffff0000083f32fc&gt;] clk_get_rate+0x14/0x28</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.127341] [&lt;ffff00000855360c&gt;] imx8_set_target+0x94/0xb0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.132840] [&lt;ffff00000854a7f0&gt;] __cpufreq_driver_target+0x158/0x538</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.139208] [&lt;ffff00000854ea3c&gt;] od_dbs_update+0xbc/0x1a0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.144620] [&lt;ffff00000855152c&gt;] dbs_work_handler+0x3c/0x70</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.150204] [&lt;ffff0000080e3614&gt;] process_one_work+0x1d4/0x348</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.155966] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0x470</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.161379] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.166359] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.171692] INFO: task kworker/0:1:32 blocked for more than 120 seconds.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.178403]       Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.185116] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout_secs" disables this message.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.192962] kworker/0:1     D    0    32      2 0x00000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.198464] Workqueue: pm pm_runtime_work</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.202482] Call trace:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.204946] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.210099] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5c0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.215337] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.220228] [&lt;ffff0000087aa1e8&gt;] schedule_preempt_disabled+0x20/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.226597] [&lt;ffff0000087aae48&gt;] __mutex_lock.isra.0+0x140/0x530</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.232615] [&lt;ffff0000087ab248&gt;] __mutex_lock_slowpath+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.238634] [&lt;ffff0000087ab280&gt;] mutex_lock+0x30/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.243699] [&lt;ffff0000083f14e0&gt;] clk_prepare_lock+0x40/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.249286] [&lt;ffff0000083f2ed0&gt;] clk_unprepare+0x20/0x40</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.254613] [&lt;ffff0000084583ac&gt;] lpuart_runtime_suspend+0x24/0x48</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.260719] [&lt;ffff000008479538&gt;] pm_generic_runtime_suspend+0x28/0x40</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.267176] [&lt;ffff000008487b98&gt;] genpd_runtime_suspend+0x88/0x240</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.273283] [&lt;ffff00000847bbf0&gt;] __rpm_callback+0xe0/0x268</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.278780] [&lt;ffff00000847bd98&gt;] rpm_callback+0x20/0x80</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.284020] [&lt;ffff00000847c054&gt;] rpm_suspend+0xf4/0x4b8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.289259] [&lt;ffff00000847c940&gt;] pm_runtime_work+0x78/0xb8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.294760] [&lt;ffff0000080e3614&gt;] process_one_work+0x1d4/0x348</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.300526] [&lt;ffff0000080e37d0&gt;] worker_thread+0x48/0x470</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.305939] [&lt;ffff0000080e956c&gt;] kthread+0x12c/0x130</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.310916] [&lt;ffff0000080846d8&gt;] ret_from_fork+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.316240] INFO: task kworker/1:1:46 blocked for more than 120 seconds.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.322952]       Not tainted 4.14.62-imx_4.14.62_1.0.0_beta+g1907fe4 #1</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.329667] "echo 0 &gt; /proc/sys/kernel/hung_task_timeout_secs" disables this message.</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.337513] kworker/1:1     D    0    46      2 0x00000000</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.343017] Workqueue: events_freezable mmc_rescan</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.347824] Call trace:</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.350278] [&lt;ffff00000808532c&gt;] __switch_to+0x94/0xd8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.355431] [&lt;ffff0000087a989c&gt;] __schedule+0x18c/0x5c0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.360670] [&lt;ffff0000087a9d08&gt;] schedule+0x38/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.365561] [&lt;ffff0000080f3f78&gt;] io_schedule+0x18/0x38</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.370715] [&lt;ffff000008182528&gt;] wait_on_page_bit+0xf0/0x120</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.376396] [&lt;ffff000008183280&gt;] do_read_cache_page+0x208/0x360</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.382327] [&lt;ffff0000081833e8&gt;] read_cache_page+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.387828] [&lt;ffff00000839d87c&gt;] read_dev_sector+0x34/0xb0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.393326] [&lt;ffff0000083a0638&gt;] read_lba.isra.1+0xf8/0x1b8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.398911] [&lt;ffff0000083a0a08&gt;] efi_partition+0xa8/0x5a8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.404322] [&lt;ffff00000839f798&gt;] check_partition+0x100/0x250</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.409998] [&lt;ffff00000839df38&gt;] rescan_partitions+0xc8/0x388</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.415761] [&lt;ffff00000823fd74&gt;] __blkdev_get+0x294/0x400</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.421182] [&lt;ffff000008240280&gt;] blkdev_get+0x130/0x360</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.426427] [&lt;ffff00000839c7f8&gt;] __device_add_disk+0x400/0x450</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.432282] [&lt;ffff00000839c858&gt;] device_add_disk+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.437780] [&lt;ffff0000085681f8&gt;] mmc_add_disk+0x28/0xf8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.443019] [&lt;ffff00000856abb8&gt;] mmc_blk_probe+0x2e0/0x480</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.448517] [&lt;ffff00000855a88c&gt;] mmc_bus_probe+0x1c/0x28</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.453844] [&lt;ffff000008470638&gt;] driver_probe_device+0x210/0x2d0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.459863] [&lt;ffff000008470854&gt;] __device_attach_driver+0x9c/0xf8</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.465970] [&lt;ffff00000846e854&gt;] bus_for_each_drv+0x4c/0x98</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.471556] [&lt;ffff0000084702f8&gt;] __device_attach+0xc0/0x138</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.477142] [&lt;ffff000008470910&gt;] device_initial_probe+0x10/0x18</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.483074] [&lt;ffff00000846f7b4&gt;] bus_probe_device+0x94/0xa0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.488664] [&lt;ffff00000846d798&gt;] device_add+0x398/0x5a0</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.493901] [&lt;ffff00000855ae7c&gt;] mmc_add_card+0x1b4/0x310</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.499312] [&lt;ffff00000855e870&gt;] mmc_attach_mmc+0xa8/0x150</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.504811] [&lt;ffff00000855a4d8&gt;] mmc_rescan+0x2e8/0x388</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.510051] [&lt;ffff0000080e3614&gt;] process_one_work+0x1d4/0x348</span></p>
      <p dir="ltr"
        style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">[  243.51580</span></p>
      <blockquote type="cite"
        cite="mid:316054918.XuX68eSyCx@yow-masselst-lx1">
        <pre class="moz-quote-pre" wrap="">Mark Asselstine


</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Thanks and Regards
Sheraz Ali Shah
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">

</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <p><br>
      </p>
      <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Thanks and Regards
Sheraz Ali Shah
</pre>
  </body>
</html>

--------------66354B54A5613257C15CB33D--
