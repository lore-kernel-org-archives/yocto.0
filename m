Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12081E00C77; Wed, 27 Jun 2018 13:01:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F936E007D2
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 13:01:35 -0700 (PDT)
Received: (qmail 15082 invoked by uid 1003); 27 Jun 2018 20:01:38 -0000
Received: from unknown (HELO ?192.168.0.149?) (philip@opensdr.com@103.70.64.68)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	27 Jun 2018 20:01:36 -0000
To: Simon VII <simon.vii@outlook.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <DB5PR03MB1765165D1234BB2F642CDF21F2490@DB5PR03MB1765.eurprd03.prod.outlook.com>
From: Philip Balister <philip@balister.org>
Openpgp: preference=signencrypt
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
	xsBNBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
	HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
	rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
	2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
	fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
	AAHNJVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz7CwH4EEwECACgCGyMG
	CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
	nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
	3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
	YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
	3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
	yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4YxjOwE0ETo83gQEIAPs+ZC0R
	gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
	GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
	uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
	LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
	gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAcLAZQQYAQIADwIbDAUC
	WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
	1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
	ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
	icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
	ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
	6eUfr0u7CwnEyqiQ
Message-ID: <6542a386-b77d-3d98-2e5c-85fa8f0bb3fc@balister.org>
Date: Thu, 28 Jun 2018 07:01:22 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <DB5PR03MB1765165D1234BB2F642CDF21F2490@DB5PR03MB1765.eurprd03.prod.outlook.com>
Subject: Re: loading FPGA bitfile with u-boot spl on ZYBO
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2018 20:01:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

You might have better luck asking on the meta-xilinx list.

Philip

On 06/26/2018 08:05 PM, Simon VII wrote:
> Goodmorning,
> 
> 
> I hope you can help me with the following matter.
> 
> 
> I am currently using the poky reference distribution to build a minimal working example for the Zybo board (using the meta-xilinx layer), following this<https://www.yoctoproject.org/docs/2.5/brief-yoctoprojectqs/brief-yoctoprojectqs.html> guide.
> 
> 
> After bitbaking the minimal example and putting everything on a partitioned SD card, I can start u-boot and load the kernel.
> 
> 
> Everything seems fine up until here. My problem now is that before loading the kernel, I would like to load a bitfile (xxx.bit) and program the FPGA. Unfortunatelly I haven't managed to get this to work.
> 
> 
> First of all, I am not getting an countdown to interrupt u-boot which I tried to identify but was unable to. I am attaching the log from the boot process in case it helps. I am not sure if the u-boot spl is
> 
> 
> loaded (and executed).
> 
> 
> Welcome to minicom 2.7
> 
> OPTIONS: I18n
> Compiled on Apr 25 2017, 21:09:25.
> Port /dev/ttyUSB1, 11:02:26
> 
> Press CTRL-A Z for help on special keys
> 
> 
> U-Boot SPL 2018.01 (Jun 22 2018 - 11:49:55)
> mmc boot
> Trying to boot from MMC1
> spl_load_image_fat_os: error reading image system.dtb, err - -2
> reading u-boot.img
> reading u-boot.img
> 
> 
> U-Boot 2018.01 (Jun 22 2018 - 11:49:55 +0000)
> 
> Model: Zynq ZYBO Development Board
> Board: Xilinx Zynq
> Silicon: v3.1
> I2C:   ready
> DRAM:  ECC disabled 512 MiB
> MMC:   sdhci@e0100000: 0
> SF: Detected s25fl128s_64k with page size 256 Bytes, erase size 64 KiB, total 1B
> *** Warning - bad CRC, using default environment
> 
> In:    serial@e0001000
> Out:   serial@e0001000
> Err:   serial@e0001000
> Net:   ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id
> I2C EEPROM MAC address read failed
> 
> Warning: ethernet@e000b000 (eth0) using random MAC address - 5e:69:c8:f8:cf:5b
> eth0: ethernet@e000b000
> reading uEnv.txt
> 451 bytes read in 10 ms (43.9 KiB/s)
> Importing environment from mmc ...
> Checking if uenvcmd is set ...
> Running uenvcmd ...
> reading uImage
> 3956792 bytes read in 228 ms (16.6 MiB/s)
> reading zynq-zybo.dtb
> 9222 bytes read in 17 ms (529.3 KiB/s)
> ## Booting kernel from Legacy Image at 03000000 ...
>    Image Name:   Linux-4.14.0-xilinx-v2018.1
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    3956728 Bytes = 3.8 MiB
>    Load Address: 00008000
>    Entry Point:  00008000
>    Verifying Checksum ... OK
> ## Flattened Device Tree blob at 02000000
>    Booting using the fdt blob at 0x2000000
>    Loading Kernel Image ... OK
>    Loading Device Tree to 1eb22000, end 1eb27405 ... OK
> 
> Starting kernel ...
> 
> Booting Linux on physical CPU 0x0
> Linux version 4.14.0-xilinx-v2018.1 (oe-user@oe-host) (gcc version 7.3.0 (GCC))8
> CPU: ARMv7 Processor [413fc090] revision 0 (ARMv7), cr=18c5387d
> CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> OF: fdt: Machine model: Zynq ZYBO Development Board
> Memory policy: Data cache writealloc
> cma: Reserved 16 MiB at 0x1f000000
> percpu: Embedded 16 pages/cpu @debc8000 s34764 r8192 d22580 u65536
> Built 1 zonelists, mobility grouping on.  Total pages: 130048
> Kernel command line: earlyprintk root=/dev/mmcblk0p2 rw rootwait
> PID hash table entries: 2048 (order: 1, 8192 bytes)
> Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
> Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
> Memory: 493068K/524288K available (6144K kernel code, 238K rwdata, 1560K rodata)
> Virtual kernel memory layout:
>     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>     vmalloc : 0xe0800000 - 0xff800000   ( 496 MB)
>     lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
>     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>       .text : 0xc0008000 - 0xc0700000   (7136 kB)
>       .init : 0xc0900000 - 0xc0a00000   (1024 kB)
>       .data : 0xc0a00000 - 0xc0a3b8c0   ( 239 kB)
>        .bss : 0xc0a3b8c0 - 0xc0a61f84   ( 154 kB)
> Preemptible hierarchical RCU implementation.
>         RCU restricting CPUs from NR_CPUS=4 to nr_cpu_ids=2.
>         Tasks RCU enabled.
> RCU: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
> NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> efuse mapped to e0800000
> slcr mapped to e0802000
> L2C: platform modifies aux control register: 0x02060000 -> 0x32460000
> L2C: DT/platform modifies aux control register: 0x02060000 -> 0x32460000
> L2C-310 erratum 769419 enabled
> L2C-310 enabling early BRESP for Cortex-A9
> L2C-310 full line of zeros enabled for Cortex-A9
> L2C-310 dynamic clock gating enabled, standby mode enabled
> L2C-310 cache controller enabled, 8 ways, 512 kB
> L2C-310: CACHE_ID 0x410000c8, AUX_CTRL 0x46460001
> zynq_clock_init: clkc starts at e0802100
> Zynq clock init
> sched_clock: 64 bits at 325MHz, resolution 3ns, wraps every 4398046511103ns
> clocksource: arm_global_timer: mask: 0xffffffffffffffff max_cycles: 0x4af477f6as
> Switching to timer-based delay loop, resolution 3ns
> clocksource: ttc_clocksource: mask: 0xffff max_cycles: 0xffff, max_idle_ns: 551s
> timer #0 at e080a000, irq=17
> Console: colour dummy device 80x30
> console [tty0] enabled
> Calibrating delay loop (skipped), value calculated using timer frequency.. 650.)
> pid_max: default: 32768 minimum: 301
> Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
> Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
> CPU: Testing write buffer coherency: ok
> CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> Setting up static identity map for 0x100000 - 0x100060
> Hierarchical SRCU implementation.
> smp: Bringing up secondary CPUs ...
> CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
> smp: Brought up 1 node, 2 CPUs
> SMP: Total of 2 processors activated (1300.00 BogoMIPS).
> CPU: All CPU(s) started in SVC mode.
> devtmpfs: initialized
> random: get_random_u32 called from bucket_table_alloc+0x1c4/0x204 with crng_ini0
> VFP support v0.3: implementor 41 architecture 3 part 30 variant 9 rev 4
> clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 191s
> futex hash table entries: 512 (order: 3, 32768 bytes)
> pinctrl core: initialized pinctrl subsystem
> NET: Registered protocol family 16
> DMA: preallocated 256 KiB pool for atomic coherent allocations
> cpuidle: using governor menu
> random: fast init done
> hw-breakpoint: found 5 (+1 reserved) breakpoint and 1 watchpoint registers.
> hw-breakpoint: maximum watchpoint size is 4 bytes.
> zynq-ocm f800c000.ocmc: ZYNQ OCM pool: 256 KiB @ 0xe0840000
> zynq-pinctrl 700.pinctrl: zynq pinctrl initialized
> e0001000.serial: ttyPS0 at MMIO 0xe0001000 (irq = 25, base_baud = 6250000) is as
> console [ttyPS0] enabled
> vgaarb: loaded
> SCSI subsystem initialized
> usbcore: registered new interface driver usbfs
> usbcore: registered new interface driver hub
> usbcore: registered new device driver usb
> usb_phy_generic phy0: phy0 supply vcc not found, using dummy regulator
> media: Linux media interface: v0.10
> Linux video capture interface: v2.00
> pps_core: LinuxPPS API ver. 1 registered
> pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@>
> PTP clock support registered
> EDAC MC: Ver: 3.0.0
> FPGA manager framework
> fpga-region fpga-full: FPGA Region probed
> Advanced Linux Sound Architecture Driver Initialized.
> clocksource: Switched to clocksource arm_global_timer
> NET: Registered protocol family 2
> TCP established hash table entries: 4096 (order: 2, 16384 bytes)
> TCP bind hash table entries: 4096 (order: 3, 32768 bytes)
> TCP: Hash tables configured (established 4096 bind 4096)
> UDP hash table entries: 256 (order: 1, 8192 bytes)
> UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
> NET: Registered protocol family 1
> RPC: Registered named UNIX socket transport module.
> RPC: Registered udp transport module.
> RPC: Registered tcp transport module.
> RPC: Registered tcp NFSv4.1 backchannel transport module.
> hw perfevents: no interrupt-affinity property for /pmu@f8891000, guessing.
> hw perfevents: enabled with armv7_cortex_a9 PMU driver, 7 counters available
> workingset: timestamp_bits=30 max_order=17 bucket_order=0
> jffs2: version 2.2. (NAND) (SUMMARY)  �© 2001-2006 Red Hat, Inc.
> io scheduler noop registered
> io scheduler deadline registered
> io scheduler cfq registered (default)
> io scheduler mq-deadline registered
> io scheduler kyber registered
> dma-pl330 f8003000.dmac: Loaded driver for PL330 DMAC-241330
> dma-pl330 f8003000.dmac:        DBUFF-128x8bytes Num_Chans-8 Num_Peri-4 Num_Eve6
> brd: module loaded
> loop: module loaded
> zynq-qspi e000d000.spi: couldn't determine configuration info
> zynq-qspi e000d000.spi: about dual memories. defaulting to single memory
> libphy: Fixed MDIO Bus: probed
> CAN device driver interface
> libphy: MACB_mii_bus: probed
> macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118 at 0xe000b000 irq 27 (5)
> RTL8211E Gigabit Ethernet e000b000.ethernet-ffffffff:00: attached PHY driver [R)
> e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
> e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> ehci-pci: EHCI PCI platform driver
> usbcore: registered new interface driver usb-storage
> chipidea-usb2 e0002000.usb: e0002000.usb supply vbus not found, using dummy regr
> ci_hdrc ci_hdrc.0: EHCI Host Controller
> ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
> ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
> hub 1-0:1.0: USB hub found
> hub 1-0:1.0: 1 port detected
> i2c /dev entries driver
> IR NEC protocol handler initialized
> IR RC5(x/sz) protocol handler initialized
> IR RC6 protocol handler initialized
> IR JVC protocol handler initialized
> IR Sony protocol handler initialized
> IR SANYO protocol handler initialized
> IR Sharp protocol handler initialized
> IR MCE Keyboard/mouse protocol handler initialized
> IR XMP protocol handler initialized
> cdns-wdt f8005000.watchdog: Xilinx Watchdog Timer at e0944000 with timeout 10s
> EDAC MC: ECC not enabled
> Xilinx Zynq CpuIdle Driver started
> sdhci: Secure Digital Host Controller Interface driver
> sdhci: Copyright(c) Pierre Ossman
> sdhci-pltfm: SDHCI platform and OF driver helper
> mmc0: SDHCI controller on e0100000.sdhci [e0100000.sdhci] using ADMA
> ledtrig-cpu: registered to indicate activity on CPUs
> usbcore: registered new interface driver usbhid
> usbhid: USB HID core driver
> fpga_manager fpga0: Xilinx Zynq FPGA Manager registered
> NET: Registered protocol family 10
> Segment Routing with IPv6
> sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> NET: Registered protocol family 17
> can: controller area network core (rev 20170425 abi 9)
> NET: Registered protocol family 29
> can: raw protocol (rev 20170425)
> can: broadcast manager protocol (rev 20170425 t)
> can: netlink gateway (rev 20170425) max_hops=1
> Registering SWP/SWPB emulation handler
> hctosys: unable to open rtc device (rtc0)
> of_cfs_init
> of_cfs_init: OK
> ALSA device list:
>   No soundcards found.
> Waiting for root device /dev/mmcblk0p2...
> mmc0: new high speed SDHC card at address 0007
> mmcblk0: mmc0:0007 SD16G 14.5 GiB
>  mmcblk0: p1 p2
> EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature incompatibilities
> EXT4-fs (mmcblk0p2): warning: maximal mount count reached, running e2fsck is red
> EXT4-fs (mmcblk0p2): recovery complete
> EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
> VFS: Mounted root (ext4 filesystem) on device 179:2.
> devtmpfs: mounted
> Freeing unused kernel memory: 1024K
> INIT: version 2.88 booting
> Starting udev
> udevd[702]: starting version 3.2.5
> udevd[703]: starting eudev-3.2.5
> EXT4-fs (mmcblk0p2): re-mounted. Opts: data=ordered
> Fri Jun  8 13:42:01 UTC 2018
> INIT: Entering runlevel: 5
> Configuring network interfaces... IPv6: ADDRCONF(NETDEV_UP): eth0: link is not y
> udhcpc: started, v1.27.2
> udhcpc: sending discover
> udhcpc: sending discover
> udhcpc: sending discover
> udhcpc: no lease, forking to background
> done.
> Starting syslogd/klogd: done
> 
> Poky (Yocto Project Reference Distro) 2.5 zybo-zynq7 /dev/ttyPS0
> 
> zybo-zynq7 login: root
> root@zybo-zynq7:~#
> 
> 
> 
> 
> I would appreciate any suggestion or help to the right direction.
> 
> 
> Thanks
> 
> Simon
> 
> 
> 

