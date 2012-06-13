Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (owa.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A94C0E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 01:13:23 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Wed, 13 Jun 2012 10:13:21 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: Andrea Adami <andrea.adami@gmail.com>
Date: Wed, 13 Jun 2012 10:13:19 +0200
Thread-Topic: [yocto] qemux86 Image won't boot from CF
Thread-Index: Ac1IlAaszDA2jBNKR5m/W/rqfLzDJQAqE6HA
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CAE9D@TKSSREX01.outnet.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CACF3@TKSSREX01.outnet.ch>
	<CAAQYJAt28hOEm2BpjJ42go2GsaHLvFFQzm+m5aJiv5d=EifJWQ@mail.gmail.com>
	<CAAQYJAvTbjMqMKSymY_cqe9ie_JtxXwQQfMbNOW3E-qjY0oZ5g@mail.gmail.com>
In-Reply-To: <CAAQYJAvTbjMqMKSymY_cqe9ie_JtxXwQQfMbNOW3E-qjY0oZ5g@mail.gmail.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemux86 Image won't boot from CF
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Jun 2012 08:13:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for the tips.=20
I will check them.

Best regards

Juergen


-----Original Message-----
From: Andrea Adami [mailto:andrea.adami@gmail.com]=20
Sent: Dienstag, 12. Juni 2012 14:08
To: J=FCrgen Messerer
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] qemux86 Image won't boot from CF

On Tue, Jun 12, 2012 at 2:04 PM, Andrea Adami <andrea.adami@gmail.com> wrot=
e:
> On Tue, Jun 12, 2012 at 1:07 PM, J=FCrgen Messerer=20
> <juergen.messerer@bbv.ch> wrote:
>> Hi everybody.
>>
>>
>>
>> The following problem occurs when I try to start a x86 linux system=20
>> from CF-Card.
>>
>>
>>
>> I have generate a qemux86 core-image-minimal=A0 image with the latest po=
key.
>>
>> After that I have copied everything on a CF including=20
>> bzImage-3.2.1-yocto-standard
>>
>> Grub was already installed from an old linux version.
>>
>>
>>
>> I configured grubs menu.lst.
>>
>> Ther kernel starts perfectly util it like to finde the rootfs.
>>
>> Only one ext2 partion exist on the CF-Card.
>>
>> If have tried hda1 hdb1 hdc1 sda1 sdb1 sdc1 for the to root option.=20
>> Same problem.
>>
>
> Surely it is /dev/sdX since 2.6.3x
> Do you have all the necessary config options set for boot from CF?
> You need the block (pcmcia, pata, ..) devices and the filesystems=20
> built in kernel.


Ah, pls. add 'rootwait' to cmdline when booting from those kind of removabl=
e media.

Cheers

Andrea

>
> Cheers
>
> Andrea
>
>> I also tried initrd. Same problem.
>>
>> I also tried rootfs from narcissus. Same problem.
>>
>>
>>
>> I appreciate any help.
>>
>>
>>
>> Thanks.
>>
>>
>>
>> Regards
>>
>>
>>
>> Juergen
>>
>>
>>
>> ----------------------------------------
>>
>> Menu.lst :
>>
>> ----------------------------------------
>>
>> serial --unit=3D0 --speed=3D57600
>>
>> terminal --timeout=3D1 serial console
>>
>> default 0
>>
>>
>>
>> # tell grub to find the kernel on /dev/hda1
>>
>> root (hd0,0)
>>
>> savedefault
>>
>>
>>
>> # start menu entry with title
>>
>> title OpenEmbedded GNU/Linux
>>
>>
>>
>> title New OE serial console
>>
>> root (hd0,0)
>>
>> kernel /boot/bzImage-3.2.11-yocto-standard serialconsole=20
>> root=3D/dev/hdb1 init=3D/sbin/init console=3Dtty0 console=3DttyS0,57600n=
8
>>
>> savedefault
>>
>>
>>
>>
>>
>> ------------------------
>>
>> KERNEL Output:
>>
>> ------------------------
>>
>> =A0 Booting 'New OE serial console'
>>
>>
>>
>> root (hd0,0)
>>
>> Filesystem type is ext2fs, partition type 0x83
>>
>> kernel /boot/bzImage-3.2.11-yocto-standard serialconsole=20
>> root=3D/dev/hdb1 init=3D/s
>>
>> bin/init console=3Dtty0 console=3DttyS0,57600n8
>>
>> =A0=A0 [Linux-bzImage, setup=3D0x3a00, size=3D0x441020]
>>
>> savedefault
>>
>>
>>
>> Initializing cgroup subsys cpuset
>>
>> Initializing cgroup subsys cpu
>>
>> Linux version 3.2.11-yocto-standard (blabla@blabla-virtual-machine)=20
>> (gcc version 4.6.4 20120303 (prerelea2
>>
>> BIOS-provided physical RAM map:
>>
>> BIOS-e820: 0000000000000000 - 000000000009e000 (usable)
>>
>> BIOS-e820: 000000000009e000 - 00000000000a0000 (reserved)
>>
>> BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)
>>
>> BIOS-e820: 0000000000100000 - 000000000f7c0000 (usable)
>>
>> BIOS-e820: 00000000ffff0000 - 0000000100000000 (reserved)
>>
>> Notice: NX (Execute Disable) protection missing in CPU!
>>
>> DMI 2.2 present.
>>
>> last_pfn =3D 0xf7c0 max_arch_pfn =3D 0x100000
>>
>> init_memory_mapping: 0000000000000000-000000000f7c0000
>>
>> ACPI Error: A valid RSDP was not found (20110623/tbxfroot-219)
>>
>> 0MB HIGHMEM available.
>>
>> 247MB LOWMEM available.
>>
>> =A0 mapped low ram: 0 - 0f7c0000
>>
>> =A0 low ram: 0 - 0f7c0000
>>
>> Zone PFN ranges:
>>
>> =A0 DMA=A0=A0=A0=A0=A0 0x00000010 -> 0x00001000
>>
>> =A0 Normal=A0=A0 0x00001000 -> 0x0000f7c0
>>
>> =A0 HighMem=A0 empty
>>
>> Movable zone start PFN for each node
>>
>> early_node_map[2] active PFN ranges
>>
>> =A0=A0=A0 0: 0x00000010 -> 0x0000009e
>>
>> =A0=A0=A0 0: 0x00000100 -> 0x0000f7c0
>>
>> Using APIC driver default
>>
>> SMP: Allowing 1 CPUs, 0 hotplug CPUs
>>
>> No local APIC present or hardware disabled
>>
>> APIC: disable apic facility
>>
>> APIC: switched to apic NOOP
>>
>> Allocating PCI resources starting at f7c0000 (gap: f7c0000:f0830000)
>>
>> setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:1 nr_node_ids:1
>>
>> PERCPU: Embedded 13 pages/cpu @cf000000 s29056 r0 d24192 u4194304
>>
>> Built 1 zonelists in Zone order, mobility grouping on.=A0 Total pages:=20
>> 62814
>>
>> Kernel command line: serialconsole root=3D/dev/hdb1 init=3D/sbin/init
>> console=3Dtty0 console=3DttyS0,57600n8
>>
>> PID hash table entries: 1024 (order: 0, 4096 bytes)
>>
>> Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
>>
>> Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
>>
>> Initializing CPU#0
>>
>> allocated 1014528 bytes of page_cgroup
>>
>> please try 'cgroup_disable=3Dmemory' option if you don't want memory=20
>> cgroups
>>
>> Initializing HighMem for node 0 (00000000:00000000)
>>
>> Memory: 241100k/253696k available (5440k kernel code, 12140k=20
>> reserved, 2458k data, 492k init, 0k highmem)
>>
>> virtual kernel memory layout:
>>
>> =A0=A0=A0 fixmap=A0 : 0xfff17000 - 0xfffff000=A0=A0 ( 928 kB)
>>
>> =A0=A0=A0 pkmap=A0=A0 : 0xff800000 - 0xffc00000=A0=A0 (4096 kB)
>>
>> =A0=A0=A0 vmalloc : 0xcffc0000 - 0xff7fe000=A0=A0 ( 760 MB)
>>
>> =A0=A0=A0 lowmem=A0 : 0xc0000000 - 0xcf7c0000=A0=A0 ( 247 MB)
>>
>> =A0=A0=A0=A0=A0 .init : 0xc17b7000 - 0xc1832000=A0=A0 ( 492 kB)
>>
>> =A0=A0=A0=A0=A0 .data : 0xc1550219 - 0xc17b6a80=A0=A0 (2458 kB)
>>
>> =A0=A0=A0=A0=A0 .text : 0xc1000000 - 0xc1550219=A0=A0 (5440 kB)
>>
>> Checking if this processor honours the WP bit even in supervisor mode...=
Ok.
>>
>> SLUB: Genslabs=3D15, HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1=
,=20
>> Nodes=3D1
>>
>> Preemptible hierarchical RCU implementation.
>>
>> NR_IRQS:2304 nr_irqs:256 16
>>
>> Console: colour VGA+ 80x25
>>
>> console [tty0] enabled
>>
>> console [ttyS0] enabled
>>
>> Fast TSC calibration using PIT
>>
>> Detected 499.922 MHz processor.
>>
>> Calibrating delay loop (skipped), value calculated using timer frequency=
..
>> 999.84 BogoMIPS (lpj=3D1999688)
>>
>> pid_max: default: 32768 minimum: 301
>>
>> Security Framework initialized
>>
>> Mount-cache hash table entries: 512
>>
>> Initializing cgroup subsys debug
>>
>> Initializing cgroup subsys cpuacct
>>
>> Initializing cgroup subsys memory
>>
>> Initializing cgroup subsys devices
>>
>> Initializing cgroup subsys freezer
>>
>> Initializing cgroup subsys blkio
>>
>> SMP alternatives: switching to UP code
>>
>> Freeing SMP alternatives: 20k freed
>>
>> ftrace: allocating 22469 entries in 44 pages
>>
>> weird, boot CPU (#0) not listed by the BIOS.
>>
>> SMP motherboard not detected.
>>
>> Local APIC not detected. Using dummy APIC emulation.
>>
>> SMP disabled
>>
>> Performance Events: no PMU driver, software events only.
>>
>> Brought up 1 CPUs
>>
>> Total of 1 processors activated (999.84 BogoMIPS).
>>
>> devtmpfs: initialized
>>
>> NET: Registered protocol family 16
>>
>> PCI: PCI BIOS revision 2.10 entry at 0xfaa70, last bus=3D0
>>
>> PCI: Using configuration type 1 for base access
>>
>> bio: create slab <bio-0> at 0
>>
>> ACPI: Interpreter disabled.
>>
>> vgaarb: loaded
>>
>> SCSI subsystem initialized
>>
>> usbcore: registered new interface driver usbfs
>>
>> usbcore: registered new interface driver hub
>>
>> usbcore: registered new device driver usb
>>
>> Advanced Linux Sound Architecture Driver Version 1.0.24.
>>
>> PCI: Probing PCI hardware
>>
>> vgaarb: device added:=20
>> PCI:0000:00:01.1,decodes=3Dio+mem,owns=3Dio+mem,locks=3Dnone
>>
>> Switching to clocksource pit
>>
>> cfg80211: Calling CRDA to update world regulatory domain
>>
>> pnp: PnP ACPI: disabled
>>
>> pci 0000:00:0f.0: BAR 3: assigned [io=A0 0x1000-0x101f]
>>
>> pci 0000:00:0f.0: BAR 3: set to [io=A0 0x1000-0x101f] (PCI address
>> [0x1000-0x101f])
>>
>> NET: Registered protocol family 2
>>
>> IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
>>
>> TCP established hash table entries: 8192 (order: 4, 65536 bytes)
>>
>> TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
>>
>> TCP: Hash tables configured (established 8192 bind 8192)
>>
>> TCP reno registered
>>
>> UDP hash table entries: 128 (order: 0, 4096 bytes)
>>
>> UDP-Lite hash table entries: 128 (order: 0, 4096 bytes)
>>
>> NET: Registered protocol family 1
>>
>> RPC: Registered named UNIX socket transport module.
>>
>> RPC: Registered udp transport module.
>>
>> RPC: Registered tcp transport module.
>>
>> RPC: Registered tcp NFSv4.1 backchannel transport module.
>>
>> pci 0000:00:06.0: Firmware left e100 interrupts enabled; disabling
>>
>> platform rtc_cmos: registered platform RTC device (no PNP device=20
>> found)
>>
>> microcode: no support for this CPU vendor
>>
>> VFS: Disk quotas dquot_6.5.2
>>
>> Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
>>
>> Registering unionfs 2.5.10 (for 3.1.0-rc4)
>>
>> msgmni has been set to 470
>>
>> Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
>>
>> io scheduler noop registered
>>
>> io scheduler deadline registered
>>
>> io scheduler cfq registered (default)
>>
>> Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>>
>> serial8250: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A
>>
>> serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A
>>
>> brd: module loaded
>>
>> loop: module loaded
>>
>> Uniform Multi-Platform E-IDE driver
>>
>> ide-gd driver 1.18
>>
>> ide-cd driver 5.00
>>
>> pcnet32: pcnet32.c:v1.35 21.Apr.2008 tsbogend@alpha.franken.de
>>
>> Atheros(R) L2 Ethernet Driver - version 2.2.3
>>
>> Copyright (c) 2007 Atheros Corporation.
>>
>> e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI
>>
>> e100: Copyright(c) 1999-2006 Intel Corporation
>>
>> e100 0000:00:06.0: eth0: addr 0xeffff000, irq 10, MAC addr=20
>> 00:d0:c9:ae:29:33
>>
>> e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI
>>
>> e1000: Copyright (c) 1999-2006 Intel Corporation.
>>
>> e1000e: Intel(R) PRO/1000 Network Driver - 1.5.1-k
>>
>> e1000e: Copyright(c) 1999 - 2011 Intel Corporation.
>>
>> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
>>
>> ehci_hcd 0000:00:0f.5: EHCI Host Controller
>>
>> ehci_hcd 0000:00:0f.5: new USB bus registered, assigned bus number 1
>>
>> ehci_hcd 0000:00:0f.5: irq 10, io mem 0xefffc000
>>
>> ehci_hcd 0000:00:0f.5: USB 2.0 started, EHCI 1.00
>>
>> hub 1-0:1.0: USB hub found
>>
>> hub 1-0:1.0: 4 ports detected
>>
>> uhci_hcd: USB Universal Host Controller Interface driver
>>
>> Initializing USB Mass Storage driver...
>>
>> usbcore: registered new interface driver usb-storage
>>
>> USB Mass Storage support registered.
>>
>> usbcore: registered new interface driver usbserial
>>
>> USB Serial support registered for generic
>>
>> usbcore: registered new interface driver usbserial_generic
>>
>> usbserial: USB Serial Driver core
>>
>> USB Serial support registered for FTDI USB Serial Device
>>
>> usbcore: registered new interface driver ftdi_sio
>>
>> ftdi_sio: v1.6.0:USB FTDI Serial Converters Driver
>>
>> USB Serial support registered for pl2303
>>
>> usbcore: registered new interface driver pl2303
>>
>> pl2303: Prolific PL2303 USB to serial adaptor driver
>>
>> i8042: PNP: No PS/2 controller found. Probing ports directly.
>>
>> serio: i8042 KBD port at 0x60,0x64 irq 1
>>
>> serio: i8042 AUX port at 0x60,0x64 irq 12
>>
>> mousedev: PS/2 mouse device common for all mice
>>
>> usbcore: registered new interface driver wacom
>>
>> wacom: v1.53:USB Wacom tablet driver
>>
>> rtc_cmos rtc_cmos: rtc core: registered rtc_cmos as rtc0
>>
>> rtc0: alarms up to one day, 114 bytes nvram
>>
>> md: linear personality registered for level -1
>>
>> md: raid0 personality registered for level 0
>>
>> md: raid1 personality registered for level 1
>>
>> md: raid10 personality registered for level 10
>>
>> md: multipath personality registered for level -4
>>
>> md: faulty personality registered for level -5
>>
>> device-mapper: ioctl: 4.22.0-ioctl (2011-10-19) initialised:
>> dm-devel@redhat.com
>>
>> cpuidle: using governor ladder
>>
>> usbcore: registered new interface driver usbhid
>>
>> usbhid: USB HID core driver
>>
>> ALSA device list:
>>
>> =A0 No soundcards found.
>>
>> oprofile: using NMI timer interrupt.
>>
>> TCP cubic registered
>>
>> NET: Registered protocol family 17
>>
>> Registering the dns_resolver key type
>>
>> Using IPI No-Shortcut mode
>>
>> registered taskstats version 1
>>
>> console [netcon0] enabled
>>
>> netconsole: network logging started
>>
>> rtc_cmos rtc_cmos: setting system clock to 2012-06-12 12:21:29 UTC
>> (1339503689)
>>
>> md: Waiting for all devices to be available before autodetect
>>
>> md: If you don't use raid, use raid=3Dnoautodetect
>>
>> md: Autodetecting RAID arrays.
>>
>> md: Scanned 0 and added 0 devices.
>>
>> md: autorun ...
>>
>> md: ... autorun DONE.
>>
>> Root-NFS: no NFS server address
>>
>> VFS: Unable to mount root fs via NFS, trying floppy.
>>
>> VFS: Cannot open root device "hdb1" or unknown-block(2,0)
>>
>> Please append a correct "root=3D" boot option; here are the available
>> partitions:
>>
>> VFS: Unable to mount root fs on unknown-block(2,0)
>>
>> User configuration error - no valid root filesystem found
>>
>> Kernel panic - not syncing: Invalid configuration from end user=20
>> prevents continuing
>>
>> Pid: 1, comm: swapper/0 Not tainted 3.2.11-yocto-standard #1
>>
>> Call Trace:
>>
>> [<c15424b4>] ? printk+0x1d/0x1f
>>
>> [<c15423a8>] panic+0x66/0x155
>>
>> [<c17b7b8a>] mount_block_root+0x1c1/0x1d8
>>
>> [<c11003cc>] ? sys_mknod+0x2c/0x30
>>
>> [<c17b7d92>] mount_root+0xf1/0xf9
>>
>> [<c17b7ee8>] prepare_namespace+0x14e/0x192
>>
>> [<c10f1185>] ? sys_access+0x25/0x30
>>
>> [<c17b788d>] kernel_init+0x168/0x16d
>>
>> [<c17b7725>] ? start_kernel+0x2f9/0x2f9
>>
>> [<c154f536>] kernel_thread_helper+0x6/0x10
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

