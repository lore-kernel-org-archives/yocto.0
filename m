Return-Path: <oosman3@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EBDEEB64D9
	for <webhook@archiver.kernel.org>; Fri,  7 Jul 2023 13:30:20 +0000 (UTC)
Received: from sonic311-23.consmr.mail.ne1.yahoo.com (sonic311-23.consmr.mail.ne1.yahoo.com [66.163.188.204])
 by mx.groups.io with SMTP id smtpd.web11.12512.1688736610800112991
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jul 2023 06:30:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=SM8C7Jxr;
 spf=neutral (domain: yahoo.com, ip: 66.163.188.204, mailfrom: oosman3@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688736610; bh=/r/mXTi0f7wW1/LzIJQswheQ3iUgpulZi8mk1hwPNMw=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=SM8C7Jxrdx4IHWvz4pg94yghgVdtEcEWQUr0mwxC5NHLPpFxxnk/sIWfqfzzn2h+/3Ln2f1LxHVLixxdn/SlOsxU8ENcfhyq25zJ+rFiObZepECtuxrnXjqyaLlGlz4jZmnaimsRVL7OYxSz78JXVhe31FFDRXBekD3ZtEGG1Llzm8zqvTx6UhU7/N27OZZVMkBpfrAxti4ocGjgcTG3AHu4D+fiVKPLJ1kb7nOVsWnkf6x9f+8nLP0eMbHegOodpTKRua0Afiq19prcQ+Vfy6EYxQKjvE6ay2IrEOkfKKA7WM/LgJl6YxkaTsCO2c9wdlijKfMFGzaUQpCE+QBsvQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688736610; bh=tTJr1nuTBbC1c086Lpg03mDQEtizt9sf7CRUWf4vtVi=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=dte+ppqLgD1Tv0ZZjb/DrilFjLkHOdhiX3rlBigX0CoV7VE/ohwDxXQx9FVW6RO5+R7i2UgOZ3/muM5CTkB+0+GkrfTMabf8YoGqETnyHgFVu3YTbAkGSm52jOVBUxJu9DPHzW2ambwFtnSN7B35CwZ9j4JY93+5ZvVZyRnwNU5YWjEKGdZo+tL9N+fOKYPQERmY+Arm2xDrr/43d7/hEkgkKO+lrwwPuZchmsMJw7yxsfxsuMPJaCK8GzGoY5I31NWXHOFM71sTE8Cu7AmMwG6gqGd7DpwD0AJ53Gm9m+b1c+R5emcycrc+WD1kQMjKIHz4DgNHw1jH1LdTFWNoMQ==
X-YMail-OSG: rt7qd6YVM1lFcWbacwBfJaAnQPfBXEVT65ZT1FD5ZOSTP37PaQmzV2kn9hXFQit
 c1e0ifr6tsbRODv0GkOhNoH5gYopOAg9JDFl1_LlCU7oWzz5ThJSr8cjxpCEZWz868eqLQXGAfJp
 VdRUWMWhIU_70w6_TojRo3RdkKdwcXeF2vKNpCA3h2RP7RJ4EPRHmnFJQoGEO87OoSFdKPTPmOAd
 GvNmMUbjtljjEFZE62eAdE2zBLsiguy1umpT_khM5hH2odWnVtMju9_Me9dninvzAsN6GYteb0_X
 1pYMn..8kBOD6qlzk6paN9dPxfaccaSzK3lO9M7S1OSM_Ir_W26AbM4u9_61lS6BWqRbaMI.1cxb
 haivtVVdCJ_JCr0IsMgP3K3tG92rsndgGfOgdhAxir.SgscWExdSbiwxzSKYDYD6hpYikyDLY8Xr
 3wX.c6UIKVFPOSO7BAyU6ZCVUOD47S.pl5Xg2Nr61k7undhMzqI0VwUR4__YIBryJ54rtrfEz73Q
 zhWr38hao_zn9kEBPVFeNNqFCIGSv3enNMuyagFjGS1POEBRoo_jjdmRyJyHZaSvKHKOlTN7yOMP
 maPDEjg1wpqNOt_K3NSEricNxSzJYMQdvvr_rMBMZuWH0veNfYVAkAQI6h7_mmeiGcl.ki7Nls6p
 fODI.uqIyz2bVQNqxsnBq7SyNrAw3_sUJVLJS_qCBRGCJ47bpdDmPUTR0C.HASuX2AYtTkXNpGvJ
 5pTdemG9QNJ.9hKftWfVjB7bnpSax1U07VtdOxLSdG3b9Q24tAqFV_uQYx7NMazhTYQmgQzzP2Dc
 3RtDlXzDrOX25B8rRUJ8bu_YwXbHnUpwirwvLWs1OZzGA6ghZ3H1_NpNLd1vk7sr0XkayD9M3dPC
 bk2HxnqFAXDqq3P0aJjqDPmJ1r_PgrHbWVNpIod0amtX1K0k_pw_2gEP.kIK7_ZepgetIPF5xmC2
 6H3zJVc_5wvjlFNcafC.asg2bFe3DhHU2SkvLIdsMHEIW1x917jQPBW9aNWmdpyTav9qeUhTmdh_
 4HDNb8BAYZMNWuUNFvbJ.gj9JzNvfVUxuje2ZPLnEM1zhPI1zIxrHKLrLj3x5BSlW2nD5nwwa07I
 mB_MElgINOt00RhRb7i4.Tsz1IfqAxg8A7nJIvakzvpAQs7f1pRlPMDZSQj.WU_KZnMfc4Wae36.
 kqvnC..2efGPx2BU59vwOyv3AZ5C_wRhYQyxlN3Feua3pm_SlV1TYtUhuxZfU1Y0N5jRAN3svkC1
 qNEIXBPtXmpiPXYR_Lk0H9J7zVLkM2nukamifrQqZUmGfP6zV.eWWtux8PqtuwGFfcbOC_K3iqO5
 3UMEikgvxQn59jJlAfMdFLvhQRIzlZfStjKtXHJisEEvPKwzi_3whrBlaabZVFlIRPwYYKh3joT7
 R6wPvQ8hcllG_1BLmSBUcxyqrKXjb5tTIDxpNuKgE3jqsrRDBW3X2ewa2zkLjzR9GhMF9mJR7TIu
 fCTqUwlVkI7ezcJHeAWkxRoNPwhVRjUXln7P4lzRqJ8N3nNx69qZnxecQyYg3CsI87hLXXmIvhSv
 .MEJVWpu1tDZs6yGi3r.cTm8huGk56H0BnFIZ5LjWXwfc0bO.NL5CHFL3w0S2iBZWZs98kkobF49
 zD7fJzb8FJ60L8HrlG60fVVlNfDTHsJCPanmNUPosS423CQDeHbvLkcSLny.O47OILnWLPyPBRLs
 FSu1B8SP3nELvCcoNBnPlF8lSNop143x.XrX9NYmmpkb6YkvQKVuUOnQpzRIm4GjnGqEYN_.Zaci
 wnKTXSHnW0Da2Te5WYxUyQnoMs1_.VyOWga7WgZWIC46.zUx9fmU_.X5xgn1KL3GoPWDr8Zal_it
 nxJ6L0NL3BzLOtxrlf5FC_Eh0GGa0KD0MPdO.ccE5gLgDMtHDKN90jZeCqQe.LugEdYkzqoJYdeu
 W7S1ir.8mCIacwsfjghpeCUNjDe6hM2V9q1tq5gLSjjvyo8_obMFoxPz_Nbc00OwWC.gnAgfbwGw
 ZqHXmU_rAundakc7a8ymsBkcXlyUPfuTptkh4X5EWU9J3eQoigZArM7gbbt418o78Tp6oXX5WDJe
 xFqojXqB6qVa11sNT0Sb0DEKeJurXSGtTC96iSmNZa5fxIhdSgtdmcdfLde8qwZhVB.tMAWAdQ5X
 MnpBz3n4aBIDn4moS7gZaMVP_WxsMLPvpz.oikuXfVj4uxTpvKTV3LvQyA321e0ivokMIQ0Krhey
 pllU2GGWktPe3eCdFyFjsjtnR9Cvq.GQ-
X-Sonic-MF: <oosman3@yahoo.com>
X-Sonic-ID: fb5e2f0c-b728-4f5e-b54b-c20a1c795585
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Fri, 7 Jul 2023 13:30:10 +0000
Date: Fri, 7 Jul 2023 13:30:08 +0000 (UTC)
From: Oosman Saeed <oosman3@yahoo.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <998277780.881376.1688736608875@mail.yahoo.com>
In-Reply-To: <CAMKF1spu_ufR02HpimrDX77KpMDHB-VGvH5Yz88SghQ3zMro0Q@mail.gmail.com>
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org> <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com> <1248822682.421971.1688655973025@mail.yahoo.com> <CAMKF1sqfmUT0oGSR14ooDzOM6J+37Bo9ykRkZGu8uD2=ORdWfw@mail.gmail.com> <876850182.455807.1688659443409@mail.yahoo.com> <CAMKF1spu_ufR02HpimrDX77KpMDHB-VGvH5Yz88SghQ3zMro0Q@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_881375_242735549.1688736608843"
X-Mailer: WebService/1.1.21638 YMailNorrin
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 13:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60539

------=_Part_881375_242735549.1688736608843
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Here is my boot output for the raspberrypi, does anything stick out as the=
 cause of not loading the wifi driver? Or something that points to what wif=
i driver I need?

Thanks!
---------------------------------------------------------------------------=
----------------------------------------------

U-Boot 2022.01 (Jan 10 2022 - 18:46:34 +0000)

DRAM:=C2=A0 948 MiB
RPI 4 Model B (0xa03115)
MMC:=C2=A0=C2=A0 mmcnr@7e300000: 1, mmc@7e340000: 0
Loading Environment from FAT... OK
In:=C2=A0=C2=A0=C2=A0 serial
Out:=C2=A0=C2=A0 serial
Err:=C2=A0=C2=A0 serial
Net:=C2=A0 =C2=A0
Warning: ethernet@7d580000 MAC addresses don't match:
Address in DT is=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0e4:5f:01:ef:cf:95
Address in environment is=C2=A0=C2=A0 =C2=A0dc:a6:32:e3:eb:fe
eth0: ethernet@7d580000
PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
starting USB...
Bus usb@7e980000: USB DWC2
Bus xhci_pci: Register 5000420 NbrPorts 5
Starting the controller
USB XHCI 1.00
scanning bus usb@7e980000 for devices... 1 USB Device(s) found
scanning bus xhci_pci for devices... 2 USB Device(s) found
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scanning usb for storage devices... 0 =
Storage Device(s) found
Hit any key to stop autoboot:=C2=A0 0=20
switch to partitions #0, OK
mmc0 is current device
Scanning mmc 0:1...
Found U-Boot script /boot.scr
423 bytes read in 6 ms (68.4 KiB/s)
## Executing script at 02400000
Saving Environment to FAT... OK
rpipart not set, default to 2
24021504 bytes read in 1019 ms (22.5 MiB/s)
Moving Image from 0x80000 to 0x200000, end=3D1a00000
## Flattened Device Tree blob at 2eff1f00
=C2=A0=C2=A0 Booting using the fdt blob at 0x2eff1f00
=C2=A0=C2=A0 Using Device Tree in place at 000000002eff1f00, end 000000002f=
002fe7

Starting kernel ...

[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on physical CPU 0x0000000000 [0=
x410fd083]
[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 6.1.35-v8 (oe-user@oe-host) (aa=
rch64-oe-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SM=
P PREEMPT Sun Jun 25 13:09:39 UTC 2023
[=C2=A0=C2=A0=C2=A0 0.000000] random: crng init done
[=C2=A0=C2=A0=C2=A0 0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.5
[=C2=A0=C2=A0=C2=A0 0.000000] efi: UEFI not found.
[=C2=A0=C2=A0=C2=A0 0.000000] Reserved memory: bypass linux,cma node, using=
 cmdline CMA params instead
[=C2=A0=C2=A0=C2=A0 0.000000] OF: reserved mem: node linux,cma compatible m=
atching fail
[=C2=A0=C2=A0=C2=A0 0.000000] Zone ranges:
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 DMA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 [mem 0x0000000000000000-0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 DMA32=C2=A0=C2=A0=C2=A0 empty
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal=C2=A0=C2=A0 empty
[=C2=A0=C2=A0=C2=A0 0.000000] Movable zone start for each node
[=C2=A0=C2=A0=C2=A0 0.000000] Early memory node ranges
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 node=C2=A0=C2=A0 0: [mem 0x000000=
0000000000-0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000] Initmem setup node 0 [mem 0x0000000000000000-=
0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000] On node 0, zone DMA: 19456 pages in unavailab=
le ranges
[=C2=A0=C2=A0=C2=A0 0.000000] cma: Reserved 64 MiB at 0x0000000036000000
[=C2=A0=C2=A0=C2=A0 0.000000] percpu: Embedded 29 pages/cpu s79528 r8192 d3=
1064 u118784
[=C2=A0=C2=A0=C2=A0 0.000000] Detected PIPT I-cache on CPU0
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-v2
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-v3a
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-v4
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-BHB
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: kernel page table isolation for=
ced ON by KASLR
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Kernel page table iso=
lation (KPTI)
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: ARM erratum 1742098
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: ARM errata 1165522, 1=
319367, or 1530923
[=C2=A0=C2=A0=C2=A0 0.000000] alternatives: applying boot alternatives
[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=
=A0 Total pages: 238896
[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: coherent_pool=3D1M 8250.=
nr_uarts=3D1 snd_bcm2835.enable_headphones=3D0 snd_bcm2835.enable_hdmi=3D0=
=C2=A0 smsc95xx.macaddr=3DE4:5F:01:EF:CF:95 vc_mem.mem_base=3D0x3ec00000 vc=
_mem.mem_size=3D0x40000000=C2=A0 dwc_otg.lpm_enable=3D0 console=3DttyS0,115=
200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait cma=3D64M root=3D/dev/=
mmcblk0p2
[=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 131072 (orde=
r: 8, 1048576 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entries: 65536 (order:=
 7, 524288 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] mem auto-init: stack:off, heap alloc:off, hea=
p free:off
[=C2=A0=C2=A0=C2=A0 0.000000] Memory: 859980K/970752K available (12800K ker=
nel code, 2146K rwdata, 4048K rodata, 4352K init, 1088K bss, 45236K reserve=
d, 65536K cma-reserved)
[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D4, Nodes=3D1
[=C2=A0=C2=A0=C2=A0 0.000000] ftrace: allocating 41928 entries in 164 pages
[=C2=A0=C2=A0=C2=A0 0.000000] ftrace: allocated 164 pages with 3 groups
[=C2=A0=C2=A0=C2=A0 0.000000] trace event string verifier disabled
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Preemptible hierarchical RCU implementat=
ion.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: =C2=A0=C2=A0 =C2=A0RCU event tracing is =
enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: =C2=A0=C2=A0 =C2=A0RCU restricting CPUs =
from NR_CPUS=3D256 to nr_cpu_ids=3D4.
[=C2=A0=C2=A0=C2=A0 0.000000] =C2=A0=C2=A0 =C2=A0Trampoline variant of Task=
s RCU enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] =C2=A0=C2=A0 =C2=A0Rude variant of Tasks RCU =
enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] =C2=A0=C2=A0 =C2=A0Tracing variant of Tasks R=
CU enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: RCU calculated value of scheduler-enlist=
ment delay is 25 jiffies.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D4
[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: =
0
[=C2=A0=C2=A0=C2=A0 0.000000] Root IRQ handler: gic_handle_irq
[=C2=A0=C2=A0=C2=A0 0.000000] GIC: Using split EOI/Deactivate mode
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: srcu_init: Setting srcu_struct sizes bas=
ed on contention.
[=C2=A0=C2=A0=C2=A0 0.000000] arch_timer: cp15 timer(s) running at 54.00MHz=
 (phys).
[=C2=A0=C2=A0=C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xffffff=
ffffffff max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
[=C2=A0=C2=A0=C2=A0 0.000001] sched_clock: 56 bits at 54MHz, resolution 18n=
s, wraps every 4398046511102ns
[=C2=A0=C2=A0=C2=A0 0.000320] Console: colour dummy device 80x25
[=C2=A0=C2=A0=C2=A0 0.000385] Calibrating delay loop (skipped), value calcu=
lated using timer frequency.. 108.00 BogoMIPS (lpj=3D216000)
[=C2=A0=C2=A0=C2=A0 0.000414] pid_max: default: 32768 minimum: 301
[=C2=A0=C2=A0=C2=A0 0.000552] LSM: Security Framework initializing
[=C2=A0=C2=A0=C2=A0 0.000747] Mount-cache hash table entries: 2048 (order: =
2, 16384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000778] Mountpoint-cache hash table entries: 2048 (or=
der: 2, 16384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.002301] cgroup: Disabling memory control group subsys=
tem
[=C2=A0=C2=A0=C2=A0 0.004899] cblist_init_generic: Setting adjustable numbe=
r of callback queues.
[=C2=A0=C2=A0=C2=A0 0.004917] cblist_init_generic: Setting shift to 2 and l=
im to 1.
[=C2=A0=C2=A0=C2=A0 0.005129] cblist_init_generic: Setting shift to 2 and l=
im to 1.
[=C2=A0=C2=A0=C2=A0 0.005347] cblist_init_generic: Setting shift to 2 and l=
im to 1.
[=C2=A0=C2=A0=C2=A0 0.005887] rcu: Hierarchical SRCU implementation.
[=C2=A0=C2=A0=C2=A0 0.005899] rcu: =C2=A0=C2=A0 =C2=A0Max phase no-delay in=
stances is 1000.
[=C2=A0=C2=A0=C2=A0 0.007367] EFI services will not be available.
[=C2=A0=C2=A0=C2=A0 0.008052] smp: Bringing up secondary CPUs ...
[=C2=A0=C2=A0=C2=A0 0.009354] Detected PIPT I-cache on CPU1
[=C2=A0=C2=A0=C2=A0 0.009505] CPU1: Booted secondary processor 0x0000000001=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.010925] Detected PIPT I-cache on CPU2
[=C2=A0=C2=A0=C2=A0 0.011047] CPU2: Booted secondary processor 0x0000000002=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.012511] Detected PIPT I-cache on CPU3
[=C2=A0=C2=A0=C2=A0 0.012631] CPU3: Booted secondary processor 0x0000000003=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.012870] smp: Brought up 1 node, 4 CPUs
[=C2=A0=C2=A0=C2=A0 0.012888] SMP: Total of 4 processors activated.
[=C2=A0=C2=A0=C2=A0 0.012902] CPU features: detected: 32-bit EL0 Support
[=C2=A0=C2=A0=C2=A0 0.012913] CPU features: detected: 32-bit EL1 Support
[=C2=A0=C2=A0=C2=A0 0.012927] CPU features: detected: CRC32 instructions
[=C2=A0=C2=A0=C2=A0 0.013076] CPU: All CPU(s) started at EL2
[=C2=A0=C2=A0=C2=A0 0.013100] alternatives: applying system-wide alternativ=
es
[=C2=A0=C2=A0=C2=A0 0.014823] devtmpfs: initialized
[=C2=A0=C2=A0=C2=A0 0.028622] Enabled cp15_barrier support
[=C2=A0=C2=A0=C2=A0 0.028660] Enabled setend support
[=C2=A0=C2=A0=C2=A0 0.029069] clocksource: jiffies: mask: 0xffffffff max_cy=
cles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[=C2=A0=C2=A0=C2=A0 0.029105] futex hash table entries: 1024 (order: 4, 655=
36 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.030945] pinctrl core: initialized pinctrl subsystem
[=C2=A0=C2=A0=C2=A0 0.031914] DMI not present or invalid.
[=C2=A0=C2=A0=C2=A0 0.032699] NET: Registered PF_NETLINK/PF_ROUTE protocol =
family
[=C2=A0=C2=A0=C2=A0 0.037154] DMA: preallocated 1024 KiB GFP_KERNEL pool fo=
r atomic allocations
[=C2=A0=C2=A0=C2=A0 0.037492] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA=
 pool for atomic allocations
[=C2=A0=C2=A0=C2=A0 0.038728] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA=
32 pool for atomic allocations
[=C2=A0=C2=A0=C2=A0 0.038835] audit: initializing netlink subsys (disabled)
[=C2=A0=C2=A0=C2=A0 0.039153] audit: type=3D2000 audit(0.036:1): state=3Din=
itialized audit_enabled=3D0 res=3D1
[=C2=A0=C2=A0=C2=A0 0.039837] thermal_sys: Registered thermal governor 'ste=
p_wise'
[=C2=A0=C2=A0=C2=A0 0.039935] cpuidle: using governor menu
[=C2=A0=C2=A0=C2=A0 0.040239] hw-breakpoint: found 6 breakpoint and 4 watch=
point registers.
[=C2=A0=C2=A0=C2=A0 0.040463] ASID allocator initialised with 32768 entries
[=C2=A0=C2=A0=C2=A0 0.040661] Serial: AMBA PL011 UART driver
[=C2=A0=C2=A0=C2=A0 0.061184] bcm2835-mbox fe00b880.mailbox: mailbox enable=
d
[=C2=A0=C2=A0=C2=A0 0.084968] platform fe801000.csi: Fixed dependency cycle=
(s) with /soc/i2c0mux/i2c@1/imx219@10
[=C2=A0=C2=A0=C2=A0 0.092288] raspberrypi-firmware soc:firmware: Attached t=
o firmware from 2022-08-26T14:04:10, variant start_x
[=C2=A0=C2=A0=C2=A0 0.096304] raspberrypi-firmware soc:firmware: Firmware h=
ash is 102f1e848393c2112206fadffaaf86db04e98326
[=C2=A0=C2=A0=C2=A0 0.116405] KASLR enabled
[=C2=A0=C2=A0=C2=A0 0.153273] bcm2835-dma fe007000.dma: DMA legacy API mana=
ger, dmachans=3D0x1
[=C2=A0=C2=A0=C2=A0 0.160821] SCSI subsystem initialized
[=C2=A0=C2=A0=C2=A0 0.161084] usbcore: registered new interface driver usbf=
s
[=C2=A0=C2=A0=C2=A0 0.161144] usbcore: registered new interface driver hub
[=C2=A0=C2=A0=C2=A0 0.161222] usbcore: registered new device driver usb
[=C2=A0=C2=A0=C2=A0 0.161774] usb_phy_generic phy: supply vcc not found, us=
ing dummy regulator
[=C2=A0=C2=A0=C2=A0 0.162065] usb_phy_generic phy: dummy supplies not allow=
ed for exclusive requests
[=C2=A0=C2=A0=C2=A0 0.162516] pps_core: LinuxPPS API ver. 1 registered
[=C2=A0=C2=A0=C2=A0 0.162530] pps_core: Software ver. 5.3.6 - Copyright 200=
5-2007 Rodolfo Giometti <giometti@linux.it>
[=C2=A0=C2=A0=C2=A0 0.162556] PTP clock support registered
[=C2=A0=C2=A0=C2=A0 0.162861] Advanced Linux Sound Architecture Driver Init=
ialized.
[=C2=A0=C2=A0=C2=A0 0.163830] vgaarb: loaded
[=C2=A0=C2=A0=C2=A0 0.164450] clocksource: Switched to clocksource arch_sys=
_counter
[=C2=A0=C2=A0=C2=A0 0.165251] VFS: Disk quotas dquot_6.6.0
[=C2=A0=C2=A0=C2=A0 0.165369] VFS: Dquot-cache hash table entries: 512 (ord=
er 0, 4096 bytes)
[=C2=A0=C2=A0=C2=A0 0.165601] FS-Cache: Loaded
[=C2=A0=C2=A0=C2=A0 0.165771] CacheFiles: Loaded
[=C2=A0=C2=A0=C2=A0 0.176134] NET: Registered PF_INET protocol family
[=C2=A0=C2=A0=C2=A0 0.176763] IP idents hash table entries: 16384 (order: 5=
, 131072 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.178769] tcp_listen_portaddr_hash hash table entries: =
512 (order: 1, 8192 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.178808] Table-perturb hash table entries: 65536 (orde=
r: 6, 262144 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.178835] TCP established hash table entries: 8192 (ord=
er: 4, 65536 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.178896] TCP bind hash table entries: 8192 (order: 6, =
262144 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.179155] TCP: Hash tables configured (established 8192=
 bind 8192)
[=C2=A0=C2=A0=C2=A0 0.179337] UDP hash table entries: 512 (order: 2, 16384 =
bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.179398] UDP-Lite hash table entries: 512 (order: 2, 1=
6384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.179622] NET: Registered PF_UNIX/PF_LOCAL protocol fam=
ily
[=C2=A0=C2=A0=C2=A0 0.180345] RPC: Registered named UNIX socket transport m=
odule.
[=C2=A0=C2=A0=C2=A0 0.180361] RPC: Registered udp transport module.
[=C2=A0=C2=A0=C2=A0 0.180372] RPC: Registered tcp transport module.
[=C2=A0=C2=A0=C2=A0 0.180384] RPC: Registered tcp NFSv4.1 backchannel trans=
port module.
[=C2=A0=C2=A0=C2=A0 0.180413] PCI: CLS 0 bytes, default 64
[=C2=A0=C2=A0=C2=A0 0.183570] hw perfevents: enabled with armv8_cortex_a72 =
PMU driver, 7 counters available
[=C2=A0=C2=A0=C2=A0 0.184015] kvm [1]: IPA Size Limit: 44 bits
[=C2=A0=C2=A0=C2=A0 0.185464] kvm [1]: vgic interrupt IRQ9
[=C2=A0=C2=A0=C2=A0 0.185719] kvm [1]: Hyp mode initialized successfully
[=C2=A0=C2=A0=C2=A0 1.397294] Initialise system trusted keyrings
[=C2=A0=C2=A0=C2=A0 1.397772] workingset: timestamp_bits=3D46 max_order=3D1=
8 bucket_order=3D0
[=C2=A0=C2=A0=C2=A0 1.405940] zbud: loaded
[=C2=A0=C2=A0=C2=A0 1.409065] NFS: Registering the id_resolver key type
[=C2=A0=C2=A0=C2=A0 1.409105] Key type id_resolver registered
[=C2=A0=C2=A0=C2=A0 1.409117] Key type id_legacy registered
[=C2=A0=C2=A0=C2=A0 1.409261] nfs4filelayout_init: NFSv4 File Layout Driver=
 Registering...
[=C2=A0=C2=A0=C2=A0 1.409279] nfs4flexfilelayout_init: NFSv4 Flexfile Layou=
t Driver Registering...
[=C2=A0=C2=A0=C2=A0 1.410729] Key type asymmetric registered
[=C2=A0=C2=A0=C2=A0 1.410748] Asymmetric key parser 'x509' registered
[=C2=A0=C2=A0=C2=A0 1.410841] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 246)
[=C2=A0=C2=A0=C2=A0 1.411139] io scheduler mq-deadline registered
[=C2=A0=C2=A0=C2=A0 1.411157] io scheduler kyber registered
[=C2=A0=C2=A0=C2=A0 1.413912] irq_brcmstb_l2: registered L2 intc (/soc/inte=
rrupt-controller@7ef00100, parent irq: 27)
[=C2=A0=C2=A0=C2=A0 1.425381] brcm-pcie fd500000.pcie: host bridge /scb/pci=
e@7d500000 ranges:
[=C2=A0=C2=A0=C2=A0 1.425425] brcm-pcie fd500000.pcie:=C2=A0=C2=A0 No bus r=
ange found for /scb/pcie@7d500000, using [bus 00-ff]
[=C2=A0=C2=A0=C2=A0 1.425537] brcm-pcie fd500000.pcie:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 MEM 0x0600000000..0x063fffffff -> 0x00c0000000
[=C2=A0=C2=A0=C2=A0 1.425648] brcm-pcie fd500000.pcie:=C2=A0=C2=A0 IB MEM 0=
x0000000000..0x003fffffff -> 0x0400000000
[=C2=A0=C2=A0=C2=A0 1.426763] brcm-pcie fd500000.pcie: PCI host bridge to b=
us 0000:00
[=C2=A0=C2=A0=C2=A0 1.426783] pci_bus 0000:00: root bus resource [bus 00-ff=
]
[=C2=A0=C2=A0=C2=A0 1.426802] pci_bus 0000:00: root bus resource [mem 0x600=
000000-0x63fffffff] (bus address [0xc0000000-0xffffffff])
[=C2=A0=C2=A0=C2=A0 1.426891] pci 0000:00:00.0: [14e4:2711] type 01 class 0=
x060400
[=C2=A0=C2=A0=C2=A0 1.427235] pci 0000:00:00.0: PME# supported from D0 D3ho=
t
[=C2=A0=C2=A0=C2=A0 1.431746] pci_bus 0000:01: supply vpcie3v3 not found, u=
sing dummy regulator
[=C2=A0=C2=A0=C2=A0 1.431970] pci_bus 0000:01: supply vpcie3v3aux not found=
, using dummy regulator
[=C2=A0=C2=A0=C2=A0 1.432090] pci_bus 0000:01: supply vpcie12v not found, u=
sing dummy regulator
[=C2=A0=C2=A0=C2=A0 1.494550] brcm-pcie fd500000.pcie: link up, 5.0 GT/s PC=
Ie x1 (SSC)
[=C2=A0=C2=A0=C2=A0 1.494731] pci 0000:01:00.0: [1106:3483] type 00 class 0=
x0c0330
[=C2=A0=C2=A0=C2=A0 1.494875] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0=
x00000fff 64bit]
[=C2=A0=C2=A0=C2=A0 1.495450] pci 0000:01:00.0: PME# supported from D0 D3ho=
t
[=C2=A0=C2=A0=C2=A0 1.504685] pci 0000:00:00.0: BAR 8: assigned [mem 0x6000=
00000-0x6000fffff]
[=C2=A0=C2=A0=C2=A0 1.504713] pci 0000:01:00.0: BAR 0: assigned [mem 0x6000=
00000-0x600000fff 64bit]
[=C2=A0=C2=A0=C2=A0 1.504764] pci 0000:00:00.0: PCI bridge to [bus 01]
[=C2=A0=C2=A0=C2=A0 1.504790] pci 0000:00:00.0:=C2=A0=C2=A0 bridge window [=
mem 0x600000000-0x6000fffff]
[=C2=A0=C2=A0=C2=A0 1.516628] Serial: 8250/16550 driver, 1 ports, IRQ shari=
ng enabled
[=C2=A0=C2=A0=C2=A0 1.521030] iproc-rng200 fe104000.rng: hwrng registered
[=C2=A0=C2=A0=C2=A0 1.521819] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec=
00000 mem_size:0x40000000(1024 MiB)
[=C2=A0=C2=A0=C2=A0 1.524107] gpiomem-bcm2835 fe200000.gpiomem: Initialised=
: Registers at 0xfe200000
[=C2=A0=C2=A0=C2=A0 1.539887] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 1.555001] brd: module loaded
[=C2=A0=C2=A0=C2=A0 1.565029] loop: module loaded
[=C2=A0=C2=A0=C2=A0 1.566047] Loading iSCSI transport class v2.0-870.
[=C2=A0=C2=A0=C2=A0 1.572378] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0=
x0000
[=C2=A0=C2=A0=C2=A0 1.632654] unimac-mdio unimac-mdio.-19: Broadcom UniMAC =
MDIO bus
[=C2=A0=C2=A0=C2=A0 1.633910] usbcore: registered new interface driver r815=
2
[=C2=A0=C2=A0=C2=A0 1.633986] usbcore: registered new interface driver lan7=
8xx
[=C2=A0=C2=A0=C2=A0 1.634073] usbcore: registered new interface driver smsc=
95xx
[=C2=A0=C2=A0=C2=A0 1.679745] pci 0000:00:00.0: enabling device (0000 -> 00=
02)
[=C2=A0=C2=A0=C2=A0 1.679951] xhci_hcd 0000:01:00.0: xHCI Host Controller
[=C2=A0=C2=A0=C2=A0 1.679982] xhci_hcd 0000:01:00.0: new USB bus registered=
, assigned bus number 1
[=C2=A0=C2=A0=C2=A0 1.680810] xhci_hcd 0000:01:00.0: hcc params 0x002841eb =
hci version 0x100 quirks 0x0001e40000000890
[=C2=A0=C2=A0=C2=A0 1.682095] xhci_hcd 0000:01:00.0: xHCI Host Controller
[=C2=A0=C2=A0=C2=A0 1.682117] xhci_hcd 0000:01:00.0: new USB bus registered=
, assigned bus number 2
[=C2=A0=C2=A0=C2=A0 1.682145] xhci_hcd 0000:01:00.0: Host supports USB 3.0 =
SuperSpeed
[=C2=A0=C2=A0=C2=A0 1.682575] usb usb1: New USB device found, idVendor=3D1d=
6b, idProduct=3D0002, bcdDevice=3D 6.01
[=C2=A0=C2=A0=C2=A0 1.682596] usb usb1: New USB device strings: Mfr=3D3, Pr=
oduct=3D2, SerialNumber=3D1
[=C2=A0=C2=A0=C2=A0 1.682612] usb usb1: Product: xHCI Host Controller
[=C2=A0=C2=A0=C2=A0 1.682627] usb usb1: Manufacturer: Linux 6.1.35-v8 xhci-=
hcd
[=C2=A0=C2=A0=C2=A0 1.682641] usb usb1: SerialNumber: 0000:01:00.0
[=C2=A0=C2=A0=C2=A0 1.683495] hub 1-0:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 1.683584] hub 1-0:1.0: 1 port detected
[=C2=A0=C2=A0=C2=A0 1.684769] usb usb2: New USB device found, idVendor=3D1d=
6b, idProduct=3D0003, bcdDevice=3D 6.01
[=C2=A0=C2=A0=C2=A0 1.684791] usb usb2: New USB device strings: Mfr=3D3, Pr=
oduct=3D2, SerialNumber=3D1
[=C2=A0=C2=A0=C2=A0 1.684807] usb usb2: Product: xHCI Host Controller
[=C2=A0=C2=A0=C2=A0 1.684822] usb usb2: Manufacturer: Linux 6.1.35-v8 xhci-=
hcd
[=C2=A0=C2=A0=C2=A0 1.684836] usb usb2: SerialNumber: 0000:01:00.0
[=C2=A0=C2=A0=C2=A0 1.685665] hub 2-0:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 1.685779] hub 2-0:1.0: 4 ports detected
[=C2=A0=C2=A0=C2=A0 1.687987] dwc_otg: version 3.00a 10-AUG-2012 (platform =
bus)
[=C2=A0=C2=A0=C2=A0 1.689218] usbcore: registered new interface driver uas
[=C2=A0=C2=A0=C2=A0 1.689344] usbcore: registered new interface driver usb-=
storage
[=C2=A0=C2=A0=C2=A0 1.689572] mousedev: PS/2 mouse device common for all mi=
ce
[=C2=A0=C2=A0=C2=A0 1.698297] sdhci: Secure Digital Host Controller Interfa=
ce driver
[=C2=A0=C2=A0=C2=A0 1.698315] sdhci: Copyright(c) Pierre Ossman
[=C2=A0=C2=A0=C2=A0 1.699377] sdhci-pltfm: SDHCI platform and OF driver hel=
per
[=C2=A0=C2=A0=C2=A0 1.704124] ledtrig-cpu: registered to indicate activity =
on CPUs
[=C2=A0=C2=A0=C2=A0 1.704847] hid: raw HID events driver (C) Jiri Kosina
[=C2=A0=C2=A0=C2=A0 1.705035] usbcore: registered new interface driver usbh=
id
[=C2=A0=C2=A0=C2=A0 1.705049] usbhid: USB HID core driver
[=C2=A0=C2=A0=C2=A0 1.718785] NET: Registered PF_PACKET protocol family
[=C2=A0=C2=A0=C2=A0 1.718915] Key type dns_resolver registered
[=C2=A0=C2=A0=C2=A0 1.720252] registered taskstats version 1
[=C2=A0=C2=A0=C2=A0 1.720341] Loading compiled-in X.509 certificates
[=C2=A0=C2=A0=C2=A0 1.721354] Key type .fscrypt registered
[=C2=A0=C2=A0=C2=A0 1.721370] Key type fscrypt-provisioning registered
[=C2=A0=C2=A0=C2=A0 1.741134] uart-pl011 fe201000.serial: there is not vali=
d maps for state default
[=C2=A0=C2=A0=C2=A0 1.742227] uart-pl011 fe201000.serial: cts_event_workaro=
und enabled
[=C2=A0=C2=A0=C2=A0 1.742410] fe201000.serial: ttyAMA1 at MMIO 0xfe201000 (=
irq =3D 37, base_baud =3D 0) is a PL011 rev2
[=C2=A0=C2=A0=C2=A0 1.742714] serial serial0: tty port ttyAMA1 registered
[=C2=A0=C2=A0=C2=A0 1.751794] bcm2835-aux-uart fe215040.serial: there is no=
t valid maps for state default
[=C2=A0=C2=A0=C2=A0 1.753004] printk: console [ttyS0] disabled
[=C2=A0=C2=A0=C2=A0 1.753149] fe215040.serial: ttyS0 at MMIO 0xfe215040 (ir=
q =3D 38, base_baud =3D 62500000) is a 16550
[=C2=A0=C2=A0=C2=A0 1.944485] usb 1-1: new high-speed USB device number 2 u=
sing xhci_hcd
[=C2=A0=C2=A0=C2=A0 1.945726] printk: console [ttyS0] enabled
[=C2=A0=C2=A0=C2=A0 2.163023] usb 1-1: New USB device found, idVendor=3D210=
9, idProduct=3D3431, bcdDevice=3D 4.21
[=C2=A0=C2=A0=C2=A0 2.181595] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 2.183990] usb 1-1: New USB device strings: Mfr=3D0, Pro=
duct=3D1, SerialNumber=3D0
[=C2=A0=C2=A0=C2=A0 2.191076] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 wat=
chdog timer
[=C2=A0=C2=A0=C2=A0 2.193116] usb 1-1: Product: USB2.0 Hub
[=C2=A0=C2=A0=C2=A0 2.199967] bcm2835-power bcm2835-power: Broadcom BCM2835=
 power domains driver
[=C2=A0=C2=A0=C2=A0 2.225382] hub 1-1:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 2.234250] wm8960 1-001a: Failed to issue reset
[=C2=A0=C2=A0=C2=A0 2.240503] hub 1-1:1.0: 4 ports detected
[=C2=A0=C2=A0=C2=A0 2.246043] wm8960: probe of 1-001a failed with error -5
[=C2=A0=C2=A0=C2=A0 3.233219] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_d=
ebug2:0
[=C2=A0=C2=A0=C2=A0 3.239366] mmc-bcm2835 fe300000.mmcnr: DMA channel alloc=
ated
[=C2=A0=C2=A0=C2=A0 3.279742] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 3.293846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 3.303839] of_cfs_init
[=C2=A0=C2=A0=C2=A0 3.306498] of_cfs_init: OK
[=C2=A0=C2=A0=C2=A0 3.310651] mmc0: SDHCI controller on fe340000.mmc [fe340=
000.mmc] using ADMA
[=C2=A0=C2=A0=C2=A0 3.319128] ALSA device list:
[=C2=A0=C2=A0=C2=A0 3.322174]=C2=A0=C2=A0 No soundcards found.
[=C2=A0=C2=A0=C2=A0 3.325453] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 3.332870] Waiting for root device /dev/mmcblk0p2...
[=C2=A0=C2=A0=C2=A0 3.373963] mmc1: new high speed SDIO card at address 000=
1
[=C2=A0=C2=A0=C2=A0 3.428500] mmc0: new ultra high speed DDR50 SDHC card at=
 address aaaa
[=C2=A0=C2=A0=C2=A0 3.436231] mmcblk0: mmc0:aaaa SC32G 29.7 GiB=20
[=C2=A0=C2=A0=C2=A0 3.446937]=C2=A0 mmcblk0: p1 p2 p3 p4
[=C2=A0=C2=A0=C2=A0 3.451351] mmcblk0: mmc0:aaaa SC32G 29.7 GiB (quirks 0x0=
0004000)
[=C2=A0=C2=A0=C2=A0 3.465009] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 3.489729] EXT4-fs (mmcblk0p2): INFO: recovery required =
on readonly filesystem
[=C2=A0=C2=A0=C2=A0 3.497251] EXT4-fs (mmcblk0p2): write access will be ena=
bled during recovery
[=C2=A0=C2=A0=C2=A0 3.518291] EXT4-fs (mmcblk0p2): recovery complete
[=C2=A0=C2=A0=C2=A0 3.524965] EXT4-fs (mmcblk0p2): mounted filesystem with =
ordered data mode. Quota mode: none.
[=C2=A0=C2=A0=C2=A0 3.533743] VFS: Mounted root (ext4 filesystem) readonly =
on device 179:2.
[=C2=A0=C2=A0=C2=A0 3.544293] devtmpfs: mounted
[=C2=A0=C2=A0=C2=A0 3.556671] Freeing unused kernel memory: 4352K
[=C2=A0=C2=A0=C2=A0 3.561493] Run /sbin/init as init process
[=C2=A0=C2=A0=C2=A0 3.804512] systemd[1]: System time before build time, ad=
vancing clock.
[=C2=A0=C2=A0=C2=A0 3.979554] NET: Registered PF_INET6 protocol family
[=C2=A0=C2=A0=C2=A0 3.986602] Segment Routing with IPv6
[=C2=A0=C2=A0=C2=A0 3.990402] In-situ OAM (IOAM) with IPv6
[=C2=A0=C2=A0=C2=A0 4.030213] systemd[1]: systemd 250.5+ running in system =
mode (+PAM -AUDIT -SELINUX -APPARMOR +IMA -SMACK -SECCOMP -GCRYPT -GNUTLS -=
OPENSSL -ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPT=
SETUP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +=
ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)
[=C2=A0=C2=A0=C2=A0 4.063235] systemd[1]: Detected architecture arm64.

Welcome to OpenEmbedded nodistro.0!

[=C2=A0=C2=A0=C2=A0 4.139575] systemd[1]: Hostname set to <raspberrypi4-64>=
.
[=C2=A0=C2=A0=C2=A0 4.262773] systemd-fstab-generator[110]: Failed to creat=
e unit file /run/systemd/generator/boot.mount, as it already exists. Duplic=
ate entry in /etc/fstab?
[=C2=A0=C2=A0=C2=A0 4.279296] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/psplash.sh' lacks a native systemd unit file. Automatically gener=
ating a unit file for compatibility. Please update package to include a nat=
ive systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.316704] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/halt' lacks a native systemd unit file. Automatically generating =
a unit file for compatibility. Please update package to include a native sy=
stemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.341773] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/sendsigs' lacks a native systemd unit file. Automatically generat=
ing a unit file for compatibility. Please update package to include a nativ=
e systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.367010] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/save-rtc.sh' lacks a native systemd unit file. Automatically gene=
rating a unit file for compatibility. Please update package to include a na=
tive systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.394486] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/sshd' lacks a native systemd unit file. Automatically generating =
a unit file for compatibility. Please update package to include a native sy=
stemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.421091] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/umountfs' lacks a native systemd unit file. Automatically generat=
ing a unit file for compatibility. Please update package to include a nativ=
e systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.452704] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/reboot' lacks a native systemd unit file. Automatically generatin=
g a unit file for compatibility. Please update package to include a native =
systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.477081] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/network-manager' lacks a native systemd unit file. Automatically =
generating a unit file for compatibility. Please update package to include =
a native systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.505088] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/umountnfs.sh' lacks a native systemd unit file. Automatically gen=
erating a unit file for compatibility. Please update package to include a n=
ative systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.530697] systemd-sysv-generator[118]: SysV service '/e=
tc/init.d/single' lacks a native systemd unit file. Automatically generatin=
g a unit file for compatibility. Please update package to include a native =
systemd unit file, in order to make it more safe and robust.
[=C2=A0=C2=A0=C2=A0 4.576736] systemd[108]: /lib/systemd/system-generators/=
systemd-fstab-generator failed with exit status 1.
[=C2=A0=C2=A0=C2=A0 4.958275] systemd[1]: Queued start job for default targ=
et Graphical Interface.
[=C2=A0=C2=A0=C2=A0 5.033921] systemd[1]: Created slice Slice /system/getty=
.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/getty.
[=C2=A0=C2=A0=C2=A0 5.059177] systemd[1]: Created slice Slice /system/modpr=
obe.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/modprobe.
[=C2=A0=C2=A0=C2=A0 5.083019] systemd[1]: Created slice Slice /system/seria=
l-getty.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/serial-getty.
[=C2=A0=C2=A0=C2=A0 5.106617] systemd[1]: Created slice User and Session Sl=
ice.
[=C2=A0 OK=C2=A0 ] Created slice User and Session Slice.
[=C2=A0=C2=A0=C2=A0 5.129140] systemd[1]: Started Dispatch Password Request=
s to Console Directory Watch.
[=C2=A0 OK=C2=A0 ] Started Dispatch Password =E2=80=A6ts to Console Directo=
ry Watch.
[=C2=A0=C2=A0=C2=A0 5.157059] systemd[1]: Started Forward Password Requests=
 to Wall Directory Watch.
[=C2=A0 OK=C2=A0 ] Started Forward Password R=E2=80=A6uests to Wall Directo=
ry Watch.
[=C2=A0=C2=A0=C2=A0 5.185040] systemd[1]: Reached target Path Units.
[=C2=A0 OK=C2=A0 ] Reached target Path Units.
[=C2=A0=C2=A0=C2=A0 5.204693] systemd[1]: Reached target Remote File System=
s.
[=C2=A0 OK=C2=A0 ] Reached target Remote File Systems.
[=C2=A0=C2=A0=C2=A0 5.224647] systemd[1]: Reached target Slice Units.
[=C2=A0 OK=C2=A0 ] Reached target Slice Units.
[=C2=A0=C2=A0=C2=A0 5.244692] systemd[1]: Reached target Swaps.
[=C2=A0 OK=C2=A0 ] Reached target Swaps.
[=C2=A0=C2=A0=C2=A0 5.265209] systemd[1]: Listening on initctl Compatibilit=
y Named Pipe.
[=C2=A0 OK=C2=A0 ] Listening on initctl Compatibility Named Pipe.
[=C2=A0=C2=A0=C2=A0 5.290036] systemd[1]: Listening on Journal Audit Socket=
.
[=C2=A0 OK=C2=A0 ] Listening on Journal Audit Socket.
[=C2=A0=C2=A0=C2=A0 5.313629] systemd[1]: Listening on Journal Socket (/dev=
/log).
[=C2=A0 OK=C2=A0 ] Listening on Journal Socket (/dev/log).
[=C2=A0=C2=A0=C2=A0 5.337712] systemd[1]: Listening on Journal Socket.
[=C2=A0 OK=C2=A0 ] Listening on Journal Socket.
[=C2=A0=C2=A0=C2=A0 5.357892] systemd[1]: Listening on Network Service Netl=
ink Socket.
[=C2=A0 OK=C2=A0 ] Listening on Network Service Netlink Socket.
[=C2=A0=C2=A0=C2=A0 5.381890] systemd[1]: Listening on udev Control Socket.
[=C2=A0 OK=C2=A0 ] Listening on udev Control Socket.
[=C2=A0=C2=A0=C2=A0 5.405457] systemd[1]: Listening on udev Kernel Socket.
[=C2=A0 OK=C2=A0 ] Listening on udev Kernel Socket.
[=C2=A0=C2=A0=C2=A0 5.429385] systemd[1]: Listening on User Database Manage=
r Socket.
[=C2=A0 OK=C2=A0 ] Listening on User Database Manager Socket.
[=C2=A0=C2=A0=C2=A0 5.453682] systemd[1]: Huge Pages File System was skippe=
d because of a failed condition check (ConditionPathExists=3D/sys/kernel/mm=
/hugepages).
[=C2=A0=C2=A0=C2=A0 5.489226] systemd[1]: Mounting POSIX Message Queue File=
 System...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting POSIX Message Que=
ue File System...
[=C2=A0=C2=A0=C2=A0 5.518931] systemd[1]: Mounting Kernel Debug File System=
...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting Kernel Debug File=
 System...
[=C2=A0=C2=A0=C2=A0 5.546741] systemd[1]: Mounting Kernel Trace File System=
...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting Kernel Trace File=
 System...
[=C2=A0=C2=A0=C2=A0 5.593235] systemd[1]: Mounting Temporary Directory /tmp=
...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting Temporary Directo=
ry /tmp...
[=C2=A0=C2=A0=C2=A0 5.623544] systemd[1]: Starting Create List of Static De=
vice Nodes...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Create List of St=
atic Device Nodes...
[=C2=A0=C2=A0=C2=A0 5.654773] systemd[1]: Starting Load Kernel Module confi=
gfs...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Modul=
e configfs...
[=C2=A0=C2=A0=C2=A0 5.709616] systemd[1]: Starting Load Kernel Module drm..=
.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Modul=
e drm...
[=C2=A0=C2=A0=C2=A0 5.738793] systemd[1]: Starting Load Kernel Module fuse.=
..
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Modul=
e fuse...
[=C2=A0=C2=A0=C2=A0 5.768721] systemd[1]: Starting Start psplash boot splas=
h screen...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Start psplash boo=
t splash screen...
[=C2=A0=C2=A0=C2=A0 5.786936] fuse: init (API version 7.37)
[=C2=A0=C2=A0=C2=A0 5.821605] systemd[1]: Starting File System Check on Roo=
t Device...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting File System Check=
 on Root Device...
[=C2=A0=C2=A0=C2=A0 5.855599] systemd[1]: Starting Journal Service...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Journal Service..=
.
[=C2=A0=C2=A0=C2=A0 5.870309] systemd[1]: Starting Load Kernel Modules...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Modul=
es...
[=C2=A0=C2=A0=C2=A0 5.882953] systemd[1]: Starting Generate network units f=
rom Kernel command line...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Generate network =
=E2=80=A6ts from Kernel command line...
[=C2=A0=C2=A0=C2=A0 5.898183] systemd[1]: Starting Coldplug All udev Device=
s...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Coldplug All udev=
 Devices...
[=C2=A0=C2=A0=C2=A0 5.923633] systemd[1]: Mounted POSIX Message Queue File =
System.
[=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.931540] systemd[1]: Mounted Kern=
el Debug File System.
0m] Mounted=C2=A0=C2=A0=C2=A0=C2=A0 5.938611] systemd[1]: Mounted Kernel Tr=
ace File System.
1;39mPOSIX Message Queue[=C2=A0=C2=A0=C2=A0 5.945565] systemd[1]: Mounted T=
emporary Directory /tmp.
=C2=A0File System.
[=C2=A0 OK=C2=A0 ] M[=C2=A0=C2=A0=C2=A0 5.954551] systemd[1]: Finished Crea=
te List of Static Device Nodes.
ounted Kernel Debug File System[=C2=A0=C2=A0=C2=A0 5.964515] systemd[1]: mo=
dprobe@configfs.service: Deactivated successfully.
.
[=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.974346] systemd[1]: Finished Loa=
d Kernel Module configfs.
m] Mounted Kernel Trace[=C2=A0=C2=A0=C2=A0 5.983089] systemd[1]: modprobe@d=
rm.service: Deactivated successfully.
=C2=A0File System.
[=C2=A0=C2=A0=C2=A0 5.991589] systemd[1]: Finished Load Kernel Module drm.
32m=C2=A0 OK=C2=A0 ] Mounted Temporary Directory /tmp.
[=C2=A0 OK=C2=A0 ] Finished Create List of Static Device Nodes.
[=C2=A0 OK=C2=A0 ] Finished Load Kernel Module configfs.
[=C2=A0 OK=C2=A0 ] Finished Load Kernel Module drm.
[=C2=A0=C2=A0=C2=A0 6.043531] systemd[1]: modprobe@fuse.service: Deactivate=
d successfully.
[=C2=A0=C2=A0=C2=A0 6.052098] systemd[1]: Finished Load Kernel Module fuse.
[=C2=A0 OK=C2=A0 ] Finished Load Kernel Module fuse.
[=C2=A0=C2=A0=C2=A0 6.077790] systemd[1]: psplash-start.service: Main proce=
ss exited, code=3Dexited, status=3D255/EXCEPTION
[=C2=A0=C2=A0=C2=A0 6.081916] cfg80211: Loading compiled-in X.509 certifica=
tes for regulatory database
[=C2=A0=C2=A0=C2=A0 6.088483] systemd[1]: psplash-start.service: Failed wit=
h result 'exit-code'.
[=C2=A0=C2=A0=C2=A0 6.104852] systemd[1]: Failed to start Start psplash boo=
t splash screen.
[=C2=A0=C2=A0=C2=A0 6.112953] cfg80211: Loaded X.509 cert 'sforshee: 00b28d=
df47aef9cea7'
1mFAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[=C2=A0=C2=A0=C2=A0 6.160679] systemd[1]: Dependency failed for Start pspla=
sh-systemd progress communication helper.
[DEPEND] Dependency failed for Star=E2=80=A6progress communication helper.
[=C2=A0=C2=A0=C2=A0 6.192643] systemd[1]: psplash-systemd.service: Job pspl=
ash-systemd.service/start failed with result 'dependency'.
[=C2=A0=C2=A0=C2=A0 6.204928] systemd[1]: Started Journal Service.
[=C2=A0 OK=C2=A0 ] Started Journal Service.
[=C2=A0 OK=C2=A0 ] Finished File System Check on Root Device.
[=C2=A0 OK=C2=A0 ] Finished Load Kernel Modules.
[=C2=A0 OK=C2=A0 ] Finished Generate network units from Kernel command line=
.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting FUSE Control File=
 System...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting Kernel Configurat=
ion File System...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Remount Root and =
Kernel File Systems...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Apply Kernel Vari=
able[=C2=A0=C2=A0=C2=A0 6.438252] EXT4-fs (mmcblk0p2): re-mounted. Quota mo=
de: none.
s...
[=C2=A0 OK=C2=A0 ] Mounted FUSE Control File System.
[=C2=A0 OK=C2=A0 ] Mounted Kernel Configuration File System.
[=C2=A0 OK=C2=A0 ] Finished Remount Root and Kernel File Systems.
[=C2=A0 OK=C2=A0 ] Finished Apply Kernel Variables.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Flush Journal to =
Persistent Storage...
[=C2=A0=C2=A0=C2=A0 6.610243] systemd-journald[132]: Received client reques=
t to flush runtime journal.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Create Static Dev=
ice Nodes in /dev...
[=C2=A0 OK=C2=A0 ] Finished Flush Journal to Persistent Storage.
[=C2=A0 OK=C2=A0 ] Finished Create Static Device Nodes in /dev.
[=C2=A0 OK=C2=A0 ] Reached target Preparation for Local File Systems.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting /var/volatile...
[=C2=A0=C2=A0=C2=A0 6.783880] audit: type=3D1334 audit(1651167747.975:2): p=
rog-id=3D5 op=3DLOAD
[=C2=A0=C2=A0=C2=A0 6.790890] audit: type=3D1334 audit(1651167747.983:3): p=
rog-id=3D6 op=3DLOAD
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Rule-based Manage=
=E2=80=A6for Device Events and Files...
[=C2=A0 OK=C2=A0 ] Finished Coldplug All udev Devices.
[=C2=A0 OK=C2=A0 ] Mounted /var/volatile.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load/Save Random =
Seed...
[=C2=A0 OK=C2=A0 ] Finished Load/Save Random Seed.
[=C2=A0 OK=C2=A0 ] Started Rule-based Manager for Device Events and Files.
[=C2=A0 OK=C2=A0 ] Listening on Load/Save RF =E2=80=A6itch Status /dev/rfki=
ll Watch.
[=C2=A0=C2=A0=C2=A0 7.195859] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.277840] snd_bcm2835: module is from the staging direc=
tory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.294427] mc: Linux media interface: v0.10
[=C2=A0=C2=A0=C2=A0 7.299440] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.333535] vc_sm_cma: module is from the staging directo=
ry, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.347250] bcm2835_vc_sm_cma_probe: Videocore shared mem=
ory driver
[=C2=A0=C2=A0=C2=A0 7.353870] [vc_sm_connected_init]: start
[=C2=A0=C2=A0=C2=A0 7.360912] [vc_sm_connected_init]: installed successfull=
y
[=C2=A0=C2=A0=C2=A0 7.374284] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.376370] videodev: Linux video capture interface: v2.0=
0
[=C2=A0 OK=C2=A0 ] Found device /dev/mmcblk0p1.
[=C2=A0=C2=A0=C2=A0 7.471186] bcm2835_mmal_vchiq: module is from the stagin=
g directory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.471447] bcm2835_mmal_vchiq: module is from the stagin=
g directory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.489471] rpivid_hevc: module is from the staging direc=
tory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.499293] bcm2835_mmal_vchiq: module is from the stagin=
g directory, the quality is unknown, you have been warned.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting /boot...
[=C2=A0=C2=A0=C2=A0 7.523818] rpivid feb10000.codec: Device registered as /=
dev/video19
[=C2=A0=C2=A0=C2=A0 7.541963] bcm2835_isp: module is from the staging direc=
tory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.542832] bcm2835_codec: module is from the staging dir=
ectory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.561866] bcm2835_v4l2: module is from the staging dire=
ctory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 7.577245] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video10
[=C2=A0=C2=A0=C2=A0 7.586154] bcm2835-codec bcm2835-codec: Loaded V4L2 deco=
de
[=C2=A0=C2=A0=C2=A0 7.593141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.602178] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video11
[=C2=A0=C2=A0=C2=A0 7.617113] bcm2835-codec bcm2835-codec: Loaded V4L2 enco=
de
[=C2=A0=C2=A0=C2=A0 7.620369] FAT-fs (mmcblk0p1): Volume was not properly u=
nmounted. Some data may be corrupt. Please run fsck.
[=C2=A0 OK=C2=A0 ] Found device /dev/mmcblk0p4.
[=C2=A0=C2=A0=C2=A0 7.643196] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.660411] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video12
[=C2=A0=C2=A0=C2=A0 7.667543] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
[=C2=A0 OK=C2=A0 ] Mounted /boot.
[=C2=A0=C2=A0=C2=A0 7.690130] bcm2835-isp bcm2835-isp: Device node output[0=
] registered as /dev/video13
[=C2=A0=C2=A0=C2=A0 7.690209] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video18
[=C2=A0=C2=A0=C2=A0 7.705141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.711499] bcm2835-codec bcm2835-codec: Loaded V4L2 imag=
e_fx
[=C2=A0=C2=A0=C2=A0 7.720276] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video31
[=C2=A0=C2=A0=C2=A0 7.727418] bcm2835-codec bcm2835-codec: Loaded V4L2 enco=
de_image
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting /data...
[=C2=A0=C2=A0=C2=A0 7.749249] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.755381] bcm2835-isp bcm2835-isp: Device node capture[=
0] registered as /dev/video14
[=C2=A0=C2=A0=C2=A0 7.765460] EXT4-fs (mmcblk0p4): recovery complete
[=C2=A0=C2=A0=C2=A0 7.770739] EXT4-fs (mmcblk0p4): mounted filesystem with =
ordered data mode. Quota mode: none.
[=C2=A0=C2=A0=C2=A0 7.811000] bcm2835-isp bcm2835-isp: Device node capture[=
1] registered as /dev/video15
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting /media...
[=C2=A0=C2=A0=C2=A0 7.857123] brcmstb-i2c fef04500.i2c:=C2=A0 @97500hz regi=
stered in polling mode
[=C2=A0 OK=C2=A0 ] Mounted /data.
[=C2=A0=C2=A0=C2=A0 7.874813] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 7.884625] brcmstb-i2c fef09500.i2c:=C2=A0 @97500hz regi=
stered in polling mode
[=C2=A0=C2=A0=C2=A0 7.885738] dwc2 fe980000.usb: supply vusb_d not found, u=
sing dummy regulator
[=C2=A0=C2=A0=C2=A0 7.900958] bcm2835-isp bcm2835-isp: Device node stats[2]=
 registered as /dev/video16
[=C2=A0=C2=A0=C2=A0 7.911582] bcm2835-isp bcm2835-isp: Register output node=
 0 with media controller
[=C2=A0=C2=A0=C2=A0 7.920029] bcm2835-isp bcm2835-isp: Register capture nod=
e 1 with media controller
[=C2=A0=C2=A0=C2=A0 7.928582] bcm2835-isp bcm2835-isp: Register capture nod=
e 2 with media controller
[=C2=A0=C2=A0=C2=A0 7.938142] bcm2835-isp bcm2835-isp: Register capture nod=
e 3 with media controller
[=C2=A0=C2=A0=C2=A0 7.948178] Registered IR keymap rc-cec
[=C2=A0=C2=A0=C2=A0 7.949491] dwc2 fe980000.usb: supply vusb_a not found, u=
sing dummy regulator
[=C2=A0=C2=A0=C2=A0 7.952499] rc rc0: vc4-hdmi-0 as /devices/platform/soc/f=
ef00700.hdmi/rc/rc0
[=C2=A0=C2=A0=C2=A0 7.970883] input: vc4-hdmi-0 as /devices/platform/soc/fe=
f00700.hdmi/rc/rc0/input0
[=C2=A0=C2=A0=C2=A0 7.998764] Bluetooth: Core ver 2.22
[=C2=A0=C2=A0=C2=A0 8.000774] bcm2835-isp bcm2835-isp: Device node output[0=
] registered as /dev/video20
[=C2=A0=C2=A0=C2=A0 8.014548] i2c i2c-22: Added multiplexed i2c bus 0
[=C2=A0=C2=A0=C2=A0 8.019825] NET: Registered PF_BLUETOOTH protocol family
[[=C2=A0=C2=A0=C2=A0 8.025899] Bluetooth: HCI device and connection manager=
 initialized
=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8.033423] Bluetooth: HCI socket lay=
er initialized
0m] Moun[=C2=A0=C2=A0=C2=A0 8.038932] Bluetooth: L2CAP socket layer initial=
ized
ted /me[=C2=A0=C2=A0=C2=A0 8.045219] i2c i2c-22: Added multiplexed i2c bus =
10
dia.[=C2=A0=C2=A0=C2=A0 8.051513] Bluetooth: SCO socket layer initialized

[=C2=A0=C2=A0=C2=A0 8.051655] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdm=
i_ops)
[[=C2=A0=C2=A0=C2=A0 8.065745] bcm2835-isp bcm2835-isp: Device node capture=
[0] registered as /dev/video21
=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8.067355] dwc2 fe980000.usb: DWC OT=
G Controller
0m] Reached target=C2=A0=C2=A0=C2=A0=C2=A0 8.081443] bcm2835-isp bcm2835-is=
p: Device node capture[1] registered as /dev/video22
;39mLoca[=C2=A0=C2=A0=C2=A0 8.090168] dwc2 fe980000.usb: new USB bus regist=
ered, assigned bus number 3
l File S[=C2=A0=C2=A0=C2=A0 8.097867] dwc2 fe980000.usb: irq 48, io mem 0xf=
e980000
ystems.
[=C2=A0=C2=A0=C2=A0 8.114764] usb usb3: New USB device found, idVendor=3D1d=
6b, idProduct=3D0002, bcdDevice=3D 6.01
[=C2=A0=C2=A0=C2=A0 8.123245] usb usb3: New USB device strings: Mfr=3D3, Pr=
oduct=3D2, SerialNumber=3D1
[=C2=A0=C2=A0=C2=A0 8.124928] Bluetooth: HCI UART driver ver 2.3
[=C2=A0=C2=A0=C2=A0 8.130823] usb usb3: Product: DWC OTG Controller
[=C2=A0=C2=A0=C2=A0 8.135158] Bluetooth: HCI UART protocol H4 registered
[=C2=A0=C2=A0=C2=A0 8.135402] Bluetooth: HCI UART protocol Three-wire (H5) =
registered
[=C2=A0=C2=A0=C2=A0 8.140162] usb usb3: Manufacturer: Linux 6.1.35-v8 dwc2_=
hsotg
[=C2=A0=C2=A0=C2=A0 8.146204] Bluetooth: HCI UART protocol Broadcom registe=
red
[=C2=A0=C2=A0=C2=A0 8.147810] hci_uart_bcm serial0-0: supply vbat not found=
, using dummy regulator
[=C2=A0=C2=A0=C2=A0 8.151990] usb usb3: SerialNumber: fe980000.usb
[=C2=A0=C2=A0=C2=A0 8.156581] hci_uart_bcm serial0-0: supply vddio not foun=
d, using dummy regulator
[=C2=A0=C2=A0=C2=A0 8.157812] bcm2835-isp bcm2835-isp: Device node stats[2]=
 registered as /dev/video23
[=C2=A0=C2=A0=C2=A0 8.164339] Registered IR keymap rc-cec
[=C2=A0=C2=A0=C2=A0 8.181118] bcm2835-isp bcm2835-isp: Register output node=
 0 with media controller
[=C2=A0=C2=A0=C2=A0 8.185800] hub 3-0:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 8.187494] rc rc1: vc4-hdmi-1 as /devices/platform/soc/f=
ef05700.hdmi/rc/rc1
[=C2=A0=C2=A0=C2=A0 8.187734] input: vc4-hdmi-1 as /devices/platform/soc/fe=
f05700.hdmi/rc/rc1/input1
[=C2=A0=C2=A0=C2=A0 8.191742] bcm2835-isp bcm2835-isp: Register capture nod=
e 1 with media controller
[=C2=A0=C2=A0=C2=A0 8.195999] hub 3-0:1.0: 1 port detected
[=C2=A0=C2=A0=C2=A0 8.204622] bcm2835-isp bcm2835-isp: Register capture nod=
e 2 with media controller
[=C2=A0=C2=A0=C2=A0 8.221097] [drm] Initialized v3d 1.0.0 20180419 for fec0=
0000.v3d on minor 1
[=C2=A0=C2=A0=C2=A0 8.222650] bcm2835-isp bcm2835-isp: Register capture nod=
e 3 with media controller
[=C2=A0=C2=A0=C2=A0 8.231443] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdm=
i_ops)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Creat[=C2=A0=C2=
=A0=C2=A0 8.264622] bcm2835-isp bcm2835-isp: Loaded V4L2 bcm2835-isp
e Volatile Files and Directories...
[=C2=A0=C2=A0=C2=A0 8.275166] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_=
ops)
[=C2=A0=C2=A0=C2=A0 8.277008] uart-pl011 fe201000.serial: no DMA platform d=
ata
[=C2=A0=C2=A0=C2=A0 8.281896] vc4-drm gpu: bound fe206000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 8.315281] vc4-drm gpu: bound fe207000.pixelvalve (ops v=
c4_crtc_ops)
[[=C2=A0=C2=A0=C2=A0 8.322477] vc4-drm gpu: bound fe20a000.pixelvalve (ops =
vc4_crtc_ops)
=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8.330038] vc4-drm gpu: bound fe2160=
00.pixelvalve (ops vc4_crtc_ops)
0m] Fini[=C2=A0=C2=A0=C2=A0 8.337441] vc4-drm gpu: bound fec12000.pixelvalv=
e (ops vc4_crtc_ops)
shed Create Volatile Files and Directories.
[=C2=A0=C2=A0=C2=A0 8.353596] [drm] Initialized vc4 0.0.0 20140616 for gpu =
on minor 0
[=C2=A0=C2=A0=C2=A0 8.360870] vc4-drm gpu: [drm] Cannot find any crtc or si=
zes
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Time Sync=
hronization...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Record System Boo=
t/Shutdown in UTMP...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load/Save RF Kill=
 Switch Status...
[=C2=A0=C2=A0=C2=A0 8.537403] Bluetooth: hci0: BCM: chip id 107
[=C2=A0=C2=A0=C2=A0 8.542354] Bluetooth: hci0: BCM: features 0x2f
[=C2=A0=C2=A0=C2=A0 8.548557] Bluetooth: hci0: BCM4345C0
[=C2=A0=C2=A0=C2=A0 8.552394] Bluetooth: hci0: BCM4345C0 (003.001.025) buil=
d 0000
[=C2=A0 OK=C2=A0 ] Finished Record System Boot/Shutdown in UTMP.
[=C2=A0=C2=A0=C2=A0 8.569173] Bluetooth: hci0: BCM4345C0 'brcm/BCM4345C0.hc=
d' Patch
[=C2=A0=C2=A0=C2=A0 8.589631] CAN device driver interface
[=C2=A0=C2=A0=C2=A0 8.643726] imx219 10-0010: failed to read chip id 219
[=C2=A0=C2=A0=C2=A0 8.650867] imx219: probe of 10-0010 failed with error -5
[=C2=A0 OK=C2=A0 ] Reached target Sound Card.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/bthelper.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Start psplash boo=
t splash screen...
[=C2=A0 OK=C2=A0 ] Started Load/Save RF Kill Switch Status.
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=E2=80=A6progress communication helper.
[=C2=A0 OK=C2=A0 ] Started Network Time Synchronization.
[=C2=A0 OK=C2=A0 ] Reached target System Initialization.
[=C2=A0 OK=C2=A0 ] Started Daily Cleanup of Temporary Directories.
[=C2=A0 OK=C2=A0 ] Reached target System Time Set.
[=C2=A0 OK=C2=A0 ] Reached target Timer Units.
[=C2=A0 OK=C2=A0 ] Listening on D-Bus System Message Bus Socket.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting sshd.socket...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Weston socket...
[=C2=A0 OK=C2=A0 ] Listening on sshd.socket.
[=C2=A0 OK=C2=A0 ] Listening on Weston socket.
[=C2=A0 OK=C2=A0 ] Reached target Socket Units.
[=C2=A0 OK=C2=A0 ] Reached target Basic System.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting D-Bus System Mess=
age Bus...
[=C2=A0 OK=C2=A0 ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DHCPv6=
 support.
[=C2=A0=C2=A0=C2=A0 9.301550] Bluetooth: hci0: BCM: features 0x2f
[=C2=A0=C2=A0=C2=A0 9.307810] Bluetooth: hci0: BCM43455 37.4MHz Raspberry P=
i 3+
[=C2=A0=C2=A0=C2=A0 9.313745] Bluetooth: hci0: BCM4345C0 (003.001.025) buil=
d 0342
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Configure Bluetoo=
th Modems connected by UART...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting IPv4 Packet Filte=
ring Framework...
[=C2=A0=C2=A0=C2=A0 9.363108] 8021q: 802.1Q VLAN Support v1.8
[=C2=A0=C2=A0=C2=A0 9.389432] audit: type=3D1334 audit(1651232906.515:4): p=
rog-id=3D7 op=3DLOAD
[=C2=A0=C2=A0=C2=A0 9.397284] audit: type=3D1334 audit(1651232906.519:5): p=
rog-id=3D8 op=3DLOAD
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting User Login Manage=
ment...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting OpenSSH Key Gener=
ation...
[=C2=A0 OK=C2=A0 ] Started D-Bus System Message Bus.
[=C2=A0 OK=C2=A0 ] Started Configure Bluetooth Modems connected by UART.
[=C2=A0 OK=C2=A0 ] Finished IPv4 Packet Filtering Framework.
[=C2=A0 OK=C2=A0 ] Finished OpenSSH Key Generation.
[=C2=A0 OK=C2=A0 ] Reached target Preparation for Network.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Manager..=
.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Raspberry Pi blue=
tooth helper...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting LSB: network conn=
ection manager...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Configura=
tion...
[=C2=A0=C2=A0=C2=A0 9.700542] mcp251x spi0.0: MCP251x didn't enter in conf =
mode after reset
[=C2=A0=C2=A0=C2=A0 9.707859] mcp251x spi0.0: Probe failed, err=3D110
[=C2=A0=C2=A0=C2=A0 9.712832] mcp251x: probe of spi0.0 failed with error -1=
10
[=C2=A0 OK=C2=A0 ] Started LSB: network connection manager.
[=C2=A0 OK=C2=A0 ] Finished Raspberry Pi bluetooth helper.
[=C2=A0 OK=C2=A0 ] Started User Login Management.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Bluetooth service=
...
[=C2=A0 OK=C2=A0 ] Started Network Configuration.
[=C2=A0=C2=A0=C2=A0 9.994264] bcmgenet fd580000.ethernet: configuring insta=
nce for external RGMII (RX delay)
[=C2=A0=C2=A0 10.005669] bcmgenet fd580000.ethernet eth0: Link is Down
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Name Reso=
lution...
[=C2=A0 OK=C2=A0 ] Started Network Manager.
[=C2=A0=C2=A0 10.094290] audit: type=3D1334 audit(1651232907.219:6): prog-i=
d=3D9 op=3DLOAD
[=C2=A0=C2=A0 10.101120] audit: type=3D1334 audit(1651232907.227:7): prog-i=
d=3D10 op=3DLOAD
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Hostname Service.=
..
[=C2=A0 OK=C2=A0 ] Started Bluetooth service.
[=C2=A0 OK=C2=A0 ] Reached target Bluetooth Support.
[=C2=A0=C2=A0 10.205340] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[=C2=A0=C2=A0 10.210960] Bluetooth: BNEP filters: protocol multicast
[=C2=A0=C2=A0 10.216322] Bluetooth: BNEP socket layer initialized
[=C2=A0=C2=A0 10.240623] Bluetooth: MGMT ver 1.22
[=C2=A0=C2=A0 10.261915] NET: Registered PF_ALG protocol family
[=C2=A0 OK=C2=A0 ] Started Network Name Resolution.
[=C2=A0 OK=C2=A0 ] Reached target Network.
[=C2=A0 OK=C2=A0 ] Reached target Host and Network Name Lookups.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting DNS forwarder and=
 DHCP server...
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Permit User Sessi=
ons...
[=C2=A0 OK=C2=A0 ] Started Xinetd A Powerful Replacement For Inetd.
[=C2=A0 OK=C2=A0 ] Finished Permit User Sessions.
[=C2=A0 OK=C2=A0 ] Started Hostname Service.
[=C2=A0 OK=C2=A0 ] Started DNS forwarder and DHCP server.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Manager S=
cript Dispatcher Service...
[=C2=A0 OK=C2=A0 ] Started Getty on tty1.
[=C2=A0 OK=C2=A0 ] Started Serial Getty on ttyS0.
[=C2=A0 OK=C2=A0 ] Reached target Login Prompts.
[=C2=A0 OK=C2=A0 ] Reached target Multi-User System.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Weston, a Wayland=
=E2=80=A6ositor, as a system service...
[=C2=A0 OK=C2=A0 ] Started Network Manager Script Dispatcher Service.
[=C2=A0=C2=A0 10.826800] audit: type=3D1334 audit(1651232907.951:8): prog-i=
d=3D11 op=3DLOAD
[=C2=A0=C2=A0 10.837083] audit: type=3D1334 audit(1651232907.959:9): prog-i=
d=3D12 op=3DLOAD
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting User Database Man=
ager...
[=C2=A0 OK=C2=A0 ] Started User Database Manager.
[=C2=A0 OK=C2=A0 ] Created slice User Slice of UID 1000.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting User Runtime Dire=
ctory /run/user/1000...
[=C2=A0 OK=C2=A0 ] Finished User Runtime Directory /run/user/1000.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting User Manager for =
UID 1000...
[=C2=A0=C2=A0 11.283733] audit: type=3D1006 audit(1651232908.407:10): pid=
=3D354 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(none) old-ses=3D429=
4967295 ses=3D1 res=3D1
[=C2=A0=C2=A0 11.301961] audit: type=3D1300 audit(1651232908.407:10): arch=
=3Dc00000b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=
=3D4 a3=3D0 items=3D0 ppid=3D1 pid=3D354 auid=3D1000 uid=3D0 gid=3D0 euid=
=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D1 co=
mm=3D"(systemd)" exe=3D"/lib/systemd/systemd" key=3D(null)
[=C2=A0 OK=C2=A0 ] Started User Manager for UID 1000.
[=C2=A0 OK=C2=A0 ] Started Session c1 of User weston.
[=C2=A0=C2=A0 11.952188] kauditd_printk_skb: 1 callbacks suppressed
[=C2=A0=C2=A0 11.952207] audit: type=3D1006 audit(1651232909.075:11): pid=
=3D348 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=3D42949=
67295 ses=3D2 res=3D1
[=C2=A0=C2=A0 11.971521] audit: type=3D1300 audit(1651232909.075:11): arch=
=3Dc00000b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=
=3D4 a3=3D0 items=3D0 ppid=3D1 pid=3D348 auid=3D1000 uid=3D0 gid=3D0 euid=
=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dtty7 ses=3D2 comm=
=3D"(weston)" exe=3D"/lib/systemd/systemd" key=3D(null)
[=C2=A0=C2=A0 11.997917] audit: type=3D1327 audit(1651232909.075:11): proct=
itle=3D"(weston)"
[=C2=A0=C2=A0 12.759139] vc4-drm gpu: [drm] Cannot find any crtc or sizes
[=C2=A0 OK=C2=A0 ] Started Weston, a Wayland =E2=80=A6mpositor, as a system=
 service.
[=C2=A0 OK=C2=A0 ] Reached target Graphical Interface.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Record Runlevel C=
hange in UTMP...
[=C2=A0 OK=C2=A0 ] Finished Record Runlevel Change in UTMP.

OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0

raspberrypi4-64 login: [=C2=A0=C2=A0 19.942785] platform soc:sound: deferre=
d probe pending
[=C2=A0=C2=A0 40.664644] audit: type=3D1334 audit(1651232937.791:12): prog-=
id=3D10 op=3DUNLOAD
[=C2=A0=C2=A0 40.671849] audit: type=3D1334 audit(1651232937.791:13): prog-=
id=3D9 op=3DUNLOAD


---------------------------------------------------------------------------=
---------------------------------------------------

    On Thursday, July 6, 2023 at 11:52:51 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote: =20
=20
 On Thu, Jul 6, 2023 at 9:04=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> wr=
ote:
>
> I think that is the problem, I don't know which wifi is used on the board=
. How do I find out what wifi driver to load?
>

Perhaps there are clues in early kernel logs. Maybe check dmesg or serial l=
ogs.

>
>
> On Thursday, July 6, 2023 at 10:19:50 AM CDT, Khem Raj <raj.khem@gmail.co=
m> wrote:
>
>
> On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> w=
rote:
> >
> > root@raspberrypi4-64:~# ifconfig -a
> > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.7.255
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 100=
0=C2=A0 (Ethernet)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 962=C2=A0 bytes 117191 (114.4 KiB=
)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 1766=C2=A0 bytes 299578 (292.5 Ki=
B)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0=C2=A0 collisions 0
> >
> > lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid =
0x10<host>
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loop=
back)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 12567=C2=A0 bytes 780277 (761.9 K=
iB)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12567=C2=A0 bytes 780277 (761.9 K=
iB)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0=C2=A0 collisions 0
> >
> >
> >
>
>
>
> OK in your kernel module list I dont see any kmods for wifi being loaded
> so it might be that its not enabling them in rootfs for some reason ?
> which wifi is used on your board ?
>
>
> > On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote:
> >
> >
> > what does ifconfig -a say
> >
> > On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject.o=
rg
> > <oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
> > >
> > > I am building my raspberrypi wic image using the layer meta-raspberry=
pi.
> > >
> > > I am using a raspiberrypi compute module 4 with wifi chip.
> > >
> > > I just can't seem to get the wlan0 device to appear when I type ifcon=
fig.
> > >
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > root@raspberrypi4-64:~# ifconfig
> > > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255=
.0=C2=A0 broadcast 192.168.7.255
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 1=
000=C2=A0 (Ethernet)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 407=C2=A0 bytes 62442 (60.9 KiB=
)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns=
 0=C2=A0 frame 0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 567=C2=A0 bytes 94749 (92.5 KiB=
)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=
=A0 carrier 0=C2=A0 collisions 0
> > >
> > > lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopei=
d 0x10<host>
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Lo=
opback)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 4047=C2=A0 bytes 252037 (246.1 =
KiB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns=
 0=C2=A0 frame 0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 4047=C2=A0 bytes 252037 (246.1 =
KiB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=
=A0 carrier 0=C2=A0 collisions 0
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> > >
> > >
> > >
> > > Here is a filtered output of my lsmod command
> > >
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> > > root@raspberrypi4-64:~# lsmod
> > > Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Size=C2=A0 Used by
> > > 88XXau=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2265088=C2=A0 =
0
> > > cmac=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16=
384=C2=A0 3
> > > algif_hash=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > > aes_arm64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0=
 3
> > > aes_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 36864=C2=A0 1 ae=
s_arm64
> > > algif_skcipher=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > > af_alg=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=
=C2=A0 6 algif_hash,algif_skcipher
> > > bnep=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24=
576=C2=A0 2
> > > 8021q=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3=
2768=C2=A0 0
> > > garp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16=
384=C2=A0 1 8021q
> > > stp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 16384=C2=A0 1 garp
> > > llc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 16384=C2=A0 2 stp,garp
> > > imx219=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
=C2=A0 0
> > > mcp251x=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
=C2=A0 0
> > > spidev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=
=C2=A0 0
> > > can_dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=
=C2=A0 1 mcp251x
> > > hci_uart=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 =
0
> > > btbcm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
4576=C2=A0 1 hci_uart
> > > v3d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 90112=C2=A0 1
> > > bluetooth=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 585728=C2=A0 26 hc=
i_uart,btbcm,bnep
> > > i2c_mux_pinctrl=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > gpu_sched=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0=
 1 v3d
> > > snd_soc_simple_card=C2=A0 =C2=A0 20480=C2=A0 0
> > > snd_soc_simple_card_utils=C2=A0 =C2=A0 28672=C2=A0 1 snd_soc_simple_c=
ard
> > > drm_shmem_helper=C2=A0 =C2=A0 =C2=A0 24576=C2=A0 1 v3d
> > > raspberrypi_hwmon=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > i2c_mux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=
=C2=A0 1 i2c_mux_pinctrl
> > > i2c_brcmstb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > bcm2835_unicam=C2=A0 =C2=A0 =C2=A0 =C2=A0 53248=C2=A0 0
> > > dwc2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 19=
2512=C2=A0 0
> > > roles=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
0480=C2=A0 1 dwc2
> > > v4l2_dv_timings=C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 1 bcm2835_unic=
am
> > > v4l2_fwnode=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 2 im=
x219,bcm2835_unicam
> > > ecdh_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 bluetoot=
h
> > > v4l2_async=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 3 v4l=
2_fwnode,imx219,bcm2835_unicam
> > > ecc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 36864=C2=A0 1 ecdh_generic
> > > libaes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=
=C2=A0 3 aes_arm64,bluetooth,aes_generic
> > > spi_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 0
> > > snd_soc_bcm2835_i2s=C2=A0 =C2=A0 20480=C2=A0 0
> > > bcm2835_codec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > > rpivid_hevc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > > bcm2835_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> > > bcm2835_isp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > > bcm2835_mmal_vchiq=C2=A0 =C2=A0 36864=C2=A0 3 bcm2835_codec,bcm2835_v=
4l2,bcm2835_isp
> > > v4l2_mem2mem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 2 bcm2835_=
codec,rpivid_hevc
> > > videobuf2_vmalloc=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1 bcm2835_v4l2
> > > videobuf2_dma_contig=C2=A0 =C2=A0 20480=C2=A0 4 bcm2835_codec,bcm2835=
_unicam,rpivid_hevc,bcm2835_isp
> > > videobuf2_memops=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 videobuf2_vmalloc,=
videobuf2_dma_contig
> > > videobuf2_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 6 bcm2835_codec=
,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > videobuf2_common=C2=A0 =C2=A0 =C2=A0 69632=C2=A0 10 bcm2835_codec,vid=
eobuf2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v=
4l2,rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp
> > > videodev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 274432=C2=A0=
 10 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bcm2835_v=
4l2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > vc_sm_cma=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0=
 2 bcm2835_mmal_vchiq,bcm2835_isp
> > > snd_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > > mc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 61440=C2=A0 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,=
bcm2835_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > uio_pdrv_genirq=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > nvmem_rmem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > uio=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 24576=C2=A0 1 uio_pdrv_genirq
> > > sch_fq_codel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 6
> > > brcmutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 =
0
> > > cfg80211=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 929792=C2=A0=
 1 88XXau
> > > rfkill=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=
=C2=A0 4 bluetooth,cfg80211
> > > fuse=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 13=
9264=C2=A0 1
> > > ipv6=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 55=
2960=C2=A0 28
> > >
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >
> > > And here is my /boot/config.txt
> > >
> > > root@raspberrypi4-64:~# cat /boot/config.txt
> > > #####################################################################=
###########
> > > ##=C2=A0 Raspberry Pi Configuration Settings
> > > ##
> > > ##=C2=A0 Revision 16, 2013/06/22
> > > ##
> > > ##=C2=A0 Details taken from the eLinux wiki
> > > ##=C2=A0 For up-to-date information please refer to wiki page.
> > > ##
> > > ##=C2=A0 Wiki Location : http://elinux.org/RPiconfig
> > > ##
> > > ##
> > > ##=C2=A0 Description:
> > > ##=C2=A0 =C2=A0 Details of each setting are described with each secti=
on that begins with
> > > ##=C2=A0 =C2=A0 a double hashed comment ('##')
> > > ##=C2=A0 =C2=A0 It is up to the user to remove the single hashed comm=
ent ('#') from each
> > > ##=C2=A0 =C2=A0 option they want to enable, and to set the specific v=
alue of that option.
> > > ##
> > > ##=C2=A0 Overclock settings will be disabled at runtime if the SoC re=
aches temp_limit
> > > ##
> > > #####################################################################=
###########
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Standard Definition Video Settings
> > > #####################################################################=
###########
> > >
> > > ## sdtv_mode
> > > ##=C2=A0 =C2=A0 defines the TV standard for composite output
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal NTSC (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Japanese version of NTSC=
 - no pedestal
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal PAL
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 Brazilian version of PAL=
 - 525/60 rather than 625/50, different
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subcarrier
> > > ##
> > > #sdtv_mode=3D0
> > >
> > > ## sdtv_aspect
> > > ##=C2=A0 =C2=A0 defines the aspect ratio for composite output
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 4:3 (Default)
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 14:9
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 16:9
> > > ##
> > > #sdtv_aspect=3D1
> > >
> > > ## sdtv_disable_colourburst
> > > ##=C2=A0 =C2=A0 Disables colour burst on composite output. The pictur=
e will be
> > > ##=C2=A0 =C2=A0 monochrome, but possibly sharper
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is enabled =
(Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is disabled
> > > ##
> > > #sdtv_disable_colourburst=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 High Definition Video Settings
> > > #####################################################################=
###########
> > >
> > > ## hdmi_safe
> > > ##=C2=A0 =C2=A0 Use "safe mode" settings to try to boot with maximum =
hdmi compatibility.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enabled (this does: hdmi=
_force_hotplug=3D1,
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_ignore_edid=3D0xa=
5000080,
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 config_hdmi_boost=3D4,=
 hdmi_group=3D2,
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_mode=3D4, disable=
_overscan=3D0,
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_left=3D24, ov=
erscan_right=3D24,
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_top=3D24, ove=
rscan_bottom=3D24)
> > > ##
> > > #hdmi_safe=3D1
> > >
> > > ## hdmi_force_hotplug
> > > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is asserted so it appear=
s a HDMI display
> > > ##=C2=A0 =C2=A0 is attached
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use HDMI mode even if no=
 HDMI monitor is detected
> > > ##
> > > #hdmi_force_hotplug=3D1
> > >
> > > ## hdmi_ignore_hotplug
> > > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is not asserted so it ap=
pears a HDMI
> > > ##=C2=A0 =C2=A0 display is not attached
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use composite mode even =
if HDMI monitor is detected
> > > ##
> > > #hdmi_ignore_hotplug=3D1
> > >
> > > ## hdmi_drive
> > > ##=C2=A0 =C2=A0 chooses between HDMI and DVI modes
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal DVI mode (No soun=
d)
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal HDMI mode (Sound =
will be sent if supported and enabled)
> > > ##
> > > #hdmi_drive=3D2
> > >
> > > ## hdmi_ignore_edid
> > > ##=C2=A0 =C2=A0 Enables the ignoring of EDID/display data
> > > ##
> > > #hdmi_ignore_edid=3D0xa5000080
> > >
> > > ## hdmi_edid_file
> > > ##=C2=A0 =C2=A0 Read the EDID data from the edid.dat file instead of =
from the attached
> > > ##=C2=A0 =C2=A0 device
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from atta=
ched device (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from edid=
.txt file
> > > ##
> > > #hdmi_edid_file=3D1
> > >
> > > ## hdmi_ignore_edid_audio
> > > ##=C2=A0 =C2=A0 Pretends all audio formats are unsupported by display=
. This means ALSA
> > > ##=C2=A0 =C2=A0 will default to analogue.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values=
 (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio format=
s are unsupported
> > > ##
> > > #hdmi_ignore_edid_audio=3D1
> > >
> > > ## hdmi_force_edid_audio
> > > ##=C2=A0 =C2=A0 Pretends all audio formats are supported by display, =
allowing
> > > ##=C2=A0 =C2=A0 passthrough of DTS/AC3 even when not reported as supp=
orted.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values=
 (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio format=
s are supported
> > > ##
> > > #hdmi_force_edid_audio=3D1
> > >
> > > ## hdmi_force_edid_3d
> > > ##=C2=A0 =C2=A0 Pretends all CEA modes support 3D even when edid does=
n't indicate
> > > ##=C2=A0 =C2=A0 support for them.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values=
 (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend 3D mode is suppo=
rted
> > > ##
> > > #hdmi_force_edid_3d=3D1
> > >
> > > ## avoid_edid_fuzzy_match
> > > ##=C2=A0 =C2=A0 Avoid fuzzy matching of modes described in edid.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use fuzzy matching (Defa=
ult)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Avoid fuzzy matching
> > > ##
> > > #avoid_edid_fuzzy_match=3D1
> > >
> > > ## hdmi_pixel_encoding
> > > ##=C2=A0 =C2=A0 Force the pixel encoding mode.
> > > ##=C2=A0 =C2=A0 By default it will use the mode requested from edid s=
o shouldn't
> > > ##=C2=A0 =C2=A0 need changing.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values=
 (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB limited=C2=A0 (16-23=
5)
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB full=C2=A0 =C2=A0 =
=C2=A0 ( 0-255)
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited (16-235)
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited ( 0-255)
> > > ##
> > > #hdmi_pixel_encoding=3D1
> > >
> > > ## hdmi_group
> > > ##=C2=A0 =C2=A0 Defines the HDMI type
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the preferred group =
reported by the edid (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 CEA
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 DMT
> > > ##
> > > #hdmi_group=3D1
> > >
> > > ## hdmi_mode
> > > ##=C2=A0 =C2=A0 defines screen resolution in CEA or DMT format
> > > ##
> > > ##=C2=A0 =C2=A0 H means 16:9 variant (of a normally 4:3 mode).
> > > ##=C2=A0 =C2=A0 2x means pixel doubled (i.e. higher clock rate, with =
each pixel repeated
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 twice)
> > > ##=C2=A0 =C2=A0 4x means pixel quadrupled (i.e. higher clock rate, wi=
th each pixel
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repeated four t=
imes)
> > > ##=C2=A0 =C2=A0 reduced blanking means fewer bytes are used for blank=
ing within the data
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream (i.e. lower clock rate, with fewer wasted bytes)
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 hdmi_group=3DCEA=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_group=3DDMT
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 VGA=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 640x350=C2=A0 85Hz
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
00=C2=A0 85Hz
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 720x400=C2=
=A0 85Hz
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 720p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
80=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1080i 60Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 72Hz
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
80=C2=A0 75Hz
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 85Hz
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x6=
00=C2=A0 56Hz
> > > ##=C2=A0 =C2=A0 9=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=
=A0 60Hz
> > > ##=C2=A0 =C2=A0 10=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 72Hz
> > > ##=C2=A0 =C2=A0 11=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 75Hz
> > > ##=C2=A0 =C2=A0 12=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 85Hz
> > > ##=C2=A0 =C2=A0 13=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 120Hz
> > > ##=C2=A0 =C2=A0 14=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 848x480=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 15=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 43Hz=C2=
=A0 DO NOT USE
> > > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 1080p 60Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 60H=
z
> > > ##=C2=A0 =C2=A0 17=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=
=A0 70Hz
> > > ##=C2=A0 =C2=A0 18=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 75Hz
> > > ##=C2=A0 =C2=A0 19=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 50Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=
=A0 85Hz
> > > ##=C2=A0 =C2=A0 20=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 120=
Hz
> > > ##=C2=A0 =C2=A0 21=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1152x864=C2=
=A0 75Hz
> > > ##=C2=A0 =C2=A0 22=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 23=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=
=A0 60Hz
> > > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 75Hz
> > > ##=C2=A0 =C2=A0 25=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 85H=
z
> > > ##=C2=A0 =C2=A0 26=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 120Hz r=
educed blanking
> > > ##=C2=A0 =C2=A0 27=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 28=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 29=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 75H=
z
> > > ##=C2=A0 =C2=A0 30=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 85Hz
> > > ##=C2=A0 =C2=A0 31=C2=A0 =C2=A0 =C2=A0 1080p 50Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 120=
Hz reduced blanking
> > > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 1080p 24Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 60H=
z
> > > ##=C2=A0 =C2=A0 33=C2=A0 =C2=A0 =C2=A0 1080p 25Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 85H=
z
> > > ##=C2=A0 =C2=A0 34=C2=A0 =C2=A0 =C2=A0 1080p 30Hz=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 120=
Hz reduced blanking
> > > ##=C2=A0 =C2=A0 35=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 60Hz
> > > ##=C2=A0 =C2=A0 36=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 75Hz
> > > ##=C2=A0 =C2=A0 37=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 85Hz
> > > ##=C2=A0 =C2=A0 38=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 120Hz reduce=
d blanking
> > > ##=C2=A0 =C2=A0 39=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 reduced blank=
ing=C2=A0 =C2=A0 1360x768=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 40=C2=A0 =C2=A0 =C2=A0 1080i 100Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1360x768=C2=A0 120Hz r=
educed blanking
> > > ##=C2=A0 =C2=A0 41=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050=C2=A0 =C2=
=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 42=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 60Hz
> > > ##=C2=A0 =C2=A0 43=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 75Hz
> > > ##=C2=A0 =C2=A0 44=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 85Hz
> > > ##=C2=A0 =C2=A0 45=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 120Hz reduce=
d blanking
> > > ##=C2=A0 =C2=A0 46=C2=A0 =C2=A0 =C2=A0 1080i 120Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 47=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 48=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 75Hz
> > > ##=C2=A0 =C2=A0 49=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 85Hz
> > > ##=C2=A0 =C2=A0 50=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 120H=
z reduced blanking
> > > ##=C2=A0 =C2=A0 51=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 60Hz
> > > ##=C2=A0 =C2=A0 52=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 65Hz
> > > ##=C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 70Hz
> > > ##=C2=A0 =C2=A0 54=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 75Hz
> > > ##=C2=A0 =C2=A0 55=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 85Hz
> > > ##=C2=A0 =C2=A0 56=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 120Hz red=
uced blanking
> > > ##=C2=A0 =C2=A0 57=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050=C2=A0 =C2=A0=
 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 58=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 60Hz
> > > ##=C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 75Hz
> > > ##=C2=A0 =C2=A0 60=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1680x1050 85Hz
> > > ##=C2=A0 =C2=A0 61=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1680x1050 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 62=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 60Hz
> > > ##=C2=A0 =C2=A0 63=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 75Hz
> > > ##=C2=A0 =C2=A0 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 65=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 60Hz
> > > ##=C2=A0 =C2=A0 66=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 75Hz
> > > ##=C2=A0 =C2=A0 67=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 68=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 69=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 60Hz
> > > ##=C2=A0 =C2=A0 70=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 75Hz
> > > ##=C2=A0 =C2=A0 71=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 85Hz
> > > ##=C2=A0 =C2=A0 72=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 73=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 60Hz
> > > ##=C2=A0 =C2=A0 74=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 75Hz
> > > ##=C2=A0 =C2=A0 75=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 76=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 77=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 60Hz
> > > ##=C2=A0 =C2=A0 78=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 75Hz
> > > ##=C2=A0 =C2=A0 79=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 85Hz
> > > ##=C2=A0 =C2=A0 80=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 120Hz reduced blanking
> > > ##=C2=A0 =C2=A0 81=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1366x768=C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1080p=C2=A0 =C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 83=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1600x900=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 84=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2048x1152=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##=C2=A0 =C2=A0 85=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 720p=C2=A0 =C2=A0 =C2=A0 60Hz
> > > ##=C2=A0 =C2=A0 86=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1366x768=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > ##
> > > #hdmi_mode=3D1
> > >
> > > ## config_hdmi_boost
> > > ##=C2=A0 =C2=A0 configure the signal strength of the HDMI interface.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Default)
> > > ##=C2=A0 =C2=A0 1
> > > ##=C2=A0 =C2=A0 2
> > > ##=C2=A0 =C2=A0 3
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 Try if you have interfer=
ence issues with HDMI
> > > ##=C2=A0 =C2=A0 5
> > > ##=C2=A0 =C2=A0 6
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Maximum
> > > ##
> > > #config_hdmi_boost=3D0
> > >
> > > ## hdmi_ignore_cec_init
> > > ##=C2=A0 =C2=A0 Doesn't sent initial active source message.=C2=A0 Avo=
ids bringing
> > > ##=C2=A0 =C2=A0 (CEC enabled) TV out of standby and channel switch wh=
en rebooting.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Defaul=
t)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Doesn't sent initial act=
ive source message
> > > ##
> > > #hdmi_ignore_cec_init=3D1
> > >
> > > ## hdmi_ignore_cec
> > > ##=C2=A0 =C2=A0 Pretends CEC is not supported at all by TV.
> > > ##=C2=A0 =C2=A0 No CEC functions will be supported.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Defaul=
t)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend CEC is not suppo=
rted by TV
> > > ##
> > > #hdmi_ignore_cec=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Overscan Video Settings
> > > #####################################################################=
###########
> > >
> > > ## overscan_left
> > > ##=C2=A0 =C2=A0 Number of pixels to skip on left
> > > ##
> > > #overscan_left=3D0
> > >
> > > ## overscan_right
> > > ##=C2=A0 =C2=A0 Number of pixels to skip on right
> > > ##
> > > #overscan_right=3D0
> > >
> > > ## overscan_top
> > > ##=C2=A0 =C2=A0 Number of pixels to skip on top
> > > ##
> > > #overscan_top=3D0
> > >
> > > ## overscan_bottom
> > > ##=C2=A0 =C2=A0 Number of pixels to skip on bottom
> > > ##
> > > #overscan_bottom=3D0
> > >
> > > ## disable_overscan
> > > ##=C2=A0 =C2=A0 Set to 1 to disable overscan
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Enabled (Defaul=
t)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Disabled
> > > ##
> > > #disable_overscan=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Framebuffer Video Settings
> > > #####################################################################=
###########
> > >
> > > ## framebuffer_width
> > > ##=C2=A0 =C2=A0 Console framebuffer width in pixels. Default is displ=
ay width minus
> > > ##=C2=A0 =C2=A0 overscan.
> > > ##
> > > #framebuffer_width=3D0
> > >
> > > ## framebuffer_height
> > > ##=C2=A0 =C2=A0 Console framebuffer height in pixels. Default is disp=
lay height minus
> > > ##=C2=A0 =C2=A0 overscan.
> > > ##
> > > #framebuffer_height=3D0
> > >
> > > ## framebuffer_depth
> > > ##=C2=A0 =C2=A0 Console framebuffer depth in bits per pixel.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 Valid, but default RGB p=
alette makes an unreadable screen
> > > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 (Default)
> > > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 Looks better but has corruptio=
n issues as of 2012/06/15
> > > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 Has no corruption issues but n=
eeds framebuffer_ignore_alpha=3D1
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and shows the wron=
g colors as of 2012/06/15
> > > ##
> > > #framebuffer_depth=3D16
> > >
> > > ## framebuffer_ignore_alpha
> > > ##=C2=A0 =C2=A0 Set to 1 to disable alpha channel. Helps with 32bit.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Alpha Channel (De=
fault)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Alpha Channel
> > > ##
> > > #framebuffer_ignore_alpha=3D0
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 General Video Settings
> > > #####################################################################=
###########
> > >
> > > ## display_rotate
> > > ##=C2=A0 =C2=A0 Rotate the display clockwise or flip the display.
> > > ##=C2=A0 =C2=A0 The 90 and 270 degrees rotation options require addit=
ional memory on GPU,
> > > ##=C2=A0 =C2=A0 so won't work with the 16M GPU split.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 0 degrees (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 90 degrees
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 180 degrees
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 270 degrees
> > > ##=C2=A0 =C2=A0 0x10000=C2=A0 Horizontal flip
> > > ##=C2=A0 =C2=A0 0x20000=C2=A0 Vertical flip
> > > ##
> > > #display_rotate=3D0
> > >
> > > ## dispmanx_offline
> > > ##=C2=A0 =C2=A0 Set to "1" to enable offline compositing
> > > ##
> > > ##=C2=A0 =C2=A0 Default 0
> > > ##
> > > #dispmanx_offline=3D0
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Licensed Codecs
> > > ##
> > > ##=C2=A0 Hardware decoding of additional codecs can be enabled by pur=
chasing a
> > > ##=C2=A0 license that is locked to the CPU serial number of your Rasp=
berry Pi.
> > > ##
> > > ##=C2=A0 Up to 8 licenses per CODEC can be specified as a comma seper=
ated list.
> > > ##
> > > #####################################################################=
###########
> > >
> > > ## decode_MPG2
> > > ##=C2=A0 =C2=A0 License key to allow hardware MPEG-2 decoding.
> > > ##
> > > #decode_MPG2=3D0x12345678
> > >
> > > ## decode_WVC1
> > > ##=C2=A0 =C2=A0 License key to allow hardware VC-1 decoding.
> > > ##
> > > #decode_WVC1=3D0x12345678
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Camera Settings
> > > #####################################################################=
###########
> > >
> > > ## start_x
> > > ##=C2=A0 =C2=A0 Set to "1" to enable the camera module.
> > > ##
> > > ##=C2=A0 =C2=A0 Enabling the camera requires gpu_mem option to be spe=
cified with a value
> > > ##=C2=A0 =C2=A0 of at least 128.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 0
> > > ##
> > > start_x=3D1
> > >
> > > ## disable_camera_led
> > > ##=C2=A0 =C2=A0 Turn off the red camera led when recording video or t=
aking a still
> > > ##=C2=A0 =C2=A0 picture.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED enabled (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED disabled
> > > ##
> > > #disable_camera_led=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Test Settings
> > > #####################################################################=
###########
> > >
> > > ## test_mode
> > > ##=C2=A0 =C2=A0 Enable test sound/image during boot for manufacturing=
 test.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Test Mod (Defaul=
t)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Test Mode
> > > ##
> > > #test_mode=3D0
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Memory Settings
> > > #####################################################################=
###########
> > >
> > > ## disable_l2cache
> > > ##=C2=A0 =C2=A0 Disable arm access to GPU's L2 cache. Needs correspon=
ding L2 disabled
> > > ##=C2=A0 =C2=A0 kernel.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable L2 Cache (Default=
)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable L2 cache
> > > ##
> > > #disable_l2cache=3D0
> > >
> > > ## gpu_mem
> > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for all board revisions.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 64
> > > ##
> > > #gpu_mem=3D128
> > >
> > > ## gpu_mem_256
> > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 256MB board revision.
> > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > ##
> > > #gpu_mem_256=3D192
> > >
> > > ## gpu_mem_512
> > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 512MB board revision.
> > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > ##
> > > #gpu_mem_512=3D448
> > >
> > > ## gpu_mem_1024
> > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 1024MB board revision=
.
> > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > ##
> > > #gpu_mem_1024=3D944
> > >
> > > ## disable_pvt
> > > ##=C2=A0 =C2=A0 Disable adjusting the refresh rate of RAM every 500ms
> > > ##=C2=A0 =C2=A0 (measuring RAM temparature).
> > > ##
> > > #disable_pvt=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 CMA - Dynamic Memory Split
> > > ##
> > > ##=C2=A0 CMA enables dynamic management of the ARM and GPU memory spl=
it at runtime.
> > > ##
> > > ##=C2=A0 The following options need to be in cmdline.txt for CMA to w=
ork:
> > > ##=C2=A0 =C2=A0 coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> > > ##
> > > #####################################################################=
###########
> > >
> > > ## cma_lwm
> > > ##=C2=A0 =C2=A0 When GPU has less than cma_lwm (low water mark) memor=
y available it
> > > ##=C2=A0 =C2=A0 will request some from ARM.
> > > ##
> > > #cma_lwm=3D16
> > >
> > > ## cma_hwm
> > > ##=C2=A0 =C2=A0 When GPU has more than cma_hwm (high water mark) memo=
ry available it
> > > ##=C2=A0 =C2=A0 will release some to ARM.
> > > ##
> > > #cma_hwm=3D32
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Boot Option Settings
> > > #####################################################################=
###########
> > >
> > > ## disable_commandline_tags
> > > ##=C2=A0 =C2=A0 Stop start.elf from filling in ATAGS (memory from 0x1=
00) before
> > > ##=C2=A0 =C2=A0 launching kernel
> > > ##
> > > #disable_commandline_tags=3D0
> > >
> > > ## cmdline (string)
> > > ##=C2=A0 =C2=A0 Command line parameters. Can be used instead of cmdli=
ne.txt file
> > > ##
> > > #cmdline=3D""
> > >
> > > ## kernel (string)
> > > ##=C2=A0 =C2=A0 Alternative name to use when loading kernel.
> > > ##
> > > #kernel=3D""
> > >
> > > ## kernel_address
> > > ##=C2=A0 =C2=A0 Address to load kernel.img file at
> > > ##
> > > #kernel_address=3D0x00000000
> > >
> > > ## kernel_old
> > > ##=C2=A0 =C2=A0 Support loading old kernels
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Load kernel at address 0=
x00000000
> > > ##
> > > #kernel_old=3D1
> > >
> > > ## ramfsfile (string)
> > > ##=C2=A0 =C2=A0 ramfs file to load
> > > ##
> > > #ramfsfile=3D""
> > >
> > > ## ramfsaddr
> > > ##=C2=A0 =C2=A0 Address to load ramfs file at
> > > ##
> > > #ramfsaddr=3D0x00000000
> > >
> > > ## initramfs (string address)
> > > ##=C2=A0 =C2=A0 ramfs file and address to load it at (it's like ramfs=
file+ramfsaddr in
> > > ##=C2=A0 =C2=A0 one option).
> > > ##
> > > ##=C2=A0 =C2=A0 NOTE: this option uses different syntax than all othe=
r options - you
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 should not use "=3D" character h=
ere.
> > > ##
> > > #initramfs initramf.gz 0x00800000
> > >
> > > ## device_tree_address
> > > ##=C2=A0 =C2=A0 Address to load device_tree at
> > > ##
> > > #device_tree_address=3D0x00000000
> > >
> > > ## init_uart_baud
> > > ##=C2=A0 =C2=A0 Initial uart baud rate.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 115200
> > > ##
> > > #init_uart_baud=3D115200
> > >
> > > ## init_uart_clock
> > > ##=C2=A0 =C2=A0 Initial uart clock.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 3000000 (3MHz)
> > > ##
> > > #init_uart_clock=3D3000000
> > >
> > > ## init_emmc_clock
> > > ##=C2=A0 =C2=A0 Initial emmc clock, increasing this can speedup your =
SD-card.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 100000000 (100mhz)
> > > ##
> > > #init_emmc_clock=3D100000000
> > >
> > > ## boot_delay
> > > ##=C2=A0 =C2=A0 Wait for a given number of seconds in start.elf befor=
e loading
> > > ##=C2=A0 =C2=A0 kernel.img.
> > > ##
> > > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > > ##
> > > ##=C2=A0 =C2=A0 Default 1
> > > ##
> > > #boot_delay=3D0
> > >
> > > ## boot_delay_ms
> > > ##=C2=A0 =C2=A0 Wait for a given number of milliseconds in start.elf =
before loading
> > > ##=C2=A0 =C2=A0 kernel.img.
> > > ##
> > > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > > ##
> > > ##=C2=A0 =C2=A0 Default 0
> > > ##
> > > #boot_delay_ms=3D0
> > >
> > > ## avoid_safe_mode
> > > ##=C2=A0 =C2=A0 Adding a jumper between pins 5 & 6 of P1 enables a re=
covery Safe Mode.
> > > ##=C2=A0 =C2=A0 If pins 5 & 6 are used for connecting to external dev=
ices (e.g. GPIO),
> > > ##=C2=A0 =C2=A0 then this setting can be used to ensure Safe Mode is =
not triggered.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Respect Safe Mode input =
(Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ignore Safe Mode input
> > > ##
> > > #avoid_safe_mode=3D1
> > >
> > > ## disable_splash
> > > ##=C2=A0 =C2=A0 Avoids the rainbow splash screen on boot.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen enabled (D=
efault)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen disabled
> > > ##
> > > #disable_splash=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Overclocking Settings
> > > ##
> > > ##=C2=A0 ARM, SDRAM and GPU each have their own PLLs and can have unr=
elated
> > > ##=C2=A0 frequencies.
> > > ##
> > > ##=C2=A0 The GPU core, h264, v3d and isp share a PLL, so need to have=
 related
> > > ##=C2=A0 frequencies.
> > > ##=C2=A0 pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)
> > > ##=C2=A0 gpu_freq =3D pll_freq / [even number]
> > > ##
> > > ##=C2=A0 The effective gpu_freq is automatically rounded to nearest e=
ven integer, so
> > > ##=C2=A0 asking for core_freq =3D 500 and gpu_freq =3D 300 will resul=
t in divisor of
> > > ##=C2=A0 2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> > > ##
> > > ##
> > > ##=C2=A0 Standard Profiles:
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 arm_=
freq=C2=A0 =C2=A0 core_freq=C2=A0 =C2=A0 sdram_freq=C2=A0 =C2=A0 over_volta=
ge
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 None=C2=A0 =C2=A0 =C2=A0 =C2=A0 700=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 250=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0
> > > ##=C2=A0 =C2=A0 Modest=C2=A0 =C2=A0 =C2=A0 800=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0
> > > ##=C2=A0 =C2=A0 Medium=C2=A0 =C2=A0 =C2=A0 900=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 333=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 2
> > > ##=C2=A0 =C2=A0 High=C2=A0 =C2=A0 =C2=A0 =C2=A0 950=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 6
> > > ##=C2=A0 =C2=A0 Turbo=C2=A0 =C2=A0 =C2=A0 =C2=A0 1000=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 6
> > > ##
> > > #####################################################################=
###########
> > >
> > > ## force_turbo
> > > ##=C2=A0 =C2=A0 Control the kernel "ondemand" governor. It has no eff=
ect if no overclock
> > > ##=C2=A0 =C2=A0 settings are specified.
> > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable dynamic clocks an=
d voltage for the ARM core, GPU core and
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SDRAM (Default).
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h2=
64_freq, v3d_freq and isp_freq is ignored.
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable dynamic clocks a=
nd voltage for the ARM core, GPU core
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and SDRAM.
> > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h2=
64_freq, v3d_freq and isp_freq is allowed.
> > > ##
> > > #force_turbo=3D0
> > >
> > > ## initial_turbo
> > > ##=C2=A0 =C2=A0 Enables turbo mode from boot for the given value in s=
econds (up to 60)
> > > ##=C2=A0 =C2=A0 or until cpufreq sets a frequency. Can help with sdca=
rd corruption if
> > > ##=C2=A0 =C2=A0 overclocked.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 0
> > > ##
> > > #initial_turbo=3D0
> > >
> > > ## temp_limit
> > > ##=C2=A0 =C2=A0 Overheat protection. Sets clocks and voltages to defa=
ult when the SoC
> > > ##=C2=A0 =C2=A0 reaches this Celsius value.
> > > ##=C2=A0 =C2=A0 Setting this higher than default voids warranty.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 85
> > > ##
> > > #temp_limit=3D85
> > >
> > > ## arm_freq
> > > ##=C2=A0 =C2=A0 Frequency of ARM in MHz.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 700.
> > > ##
> > > #arm_freq=3D700
> > >
> > > ## arm_freq_min
> > > ##=C2=A0 =C2=A0 Minimum frequency of ARM in MHz (used for dynamic clo=
cking).
> > > ##
> > > ##=C2=A0 =C2=A0 Default 700.
> > > ##
> > > #arm_freq_min=3D700
> > >
> > > ## gpu_freq
> > > ##=C2=A0 =C2=A0 Sets core_freq, h264_freq, isp_freq, v3d_freq togethe=
r.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #gpu_freq=3D250
> > >
> > > ## core_freq
> > > ##=C2=A0 =C2=A0 Frequency of GPU processor core in MHz. It has an imp=
act on ARM
> > > ##=C2=A0 =C2=A0 performance since it drives L2 cache.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #core_freq=3D250
> > >
> > > ## core_freq_min
> > > ##=C2=A0 =C2=A0 Minimum frequency of GPU processor core in MHz (used =
for dynamic
> > > ##=C2=A0 =C2=A0 clocking). It has an impact on ARM performance since =
it drives L2 cache.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #core_freq_min=3D250
> > >
> > > ## h264_freq
> > > ##=C2=A0 =C2=A0 Frequency of hardware video block in MHz.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #h264_freq=3D250
> > >
> > > ## isp_freq
> > > ##=C2=A0 =C2=A0 Frequency of image sensor pipeline block in MHz.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #isp_freq=3D250
> > >
> > > ## v3d_freq
> > > ##=C2=A0 =C2=A0 Frequency of 3D block in MHz.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 250.
> > > ##
> > > #v3d_freq=3D250
> > >
> > > ## sdram_freq
> > > ##=C2=A0 =C2=A0 Frequency of SDRAM in MHz.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 400.
> > > ##
> > > #sdram_freq=3D400
> > >
> > > ## sdram_freq_min
> > > ##=C2=A0 =C2=A0 Minimum frequency of SDRAM in MHz (used for dynamic c=
locking).
> > > ##
> > > ##=C2=A0 =C2=A0 Default 400.
> > > ##
> > > #sdram_freq_min=3D400
> > >
> > > ## avoid_pwm_pll
> > > ##=C2=A0 =C2=A0 Don't dedicate a pll to PWM audio. This will reduce a=
nalogue audio
> > > ##=C2=A0 =C2=A0 quality slightly. The spare PLL allows the core_freq =
to be set
> > > ##=C2=A0 =C2=A0 independently from the rest of the gpu allowing more =
control over
> > > ##=C2=A0 =C2=A0 overclocking.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linked core_freq (Defaul=
t)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Unlinked core_freq
> > > ##
> > > #avoid_pwm_pll=3D1
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Voltage Settings
> > > #####################################################################=
###########
> > >
> > > ## current_limit_override
> > > ##=C2=A0 =C2=A0 Disables SMPS current limit protection. Can help if y=
ou are currently
> > > ##=C2=A0 =C2=A0 hitting a reboot failure when overclocking too high.
> > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > ##
> > > #current_limit_override=3D0x5A000020
> > >
> > > ## over_voltage
> > > ##=C2=A0 =C2=A0 ARM/GPU core voltage adjust.
> > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_=
turbo=3D1 or current_limit_override)
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires fo=
rce_turbo=3D1 or current_limit_override)
> > > ##
> > > #over_voltage=3D0
> > >
> > > ## over_voltage_min
> > > ##=C2=A0 =C2=A0 Minimum ARM/GPU core voltage adjust (used for dynamic=
 clocking).
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_=
turbo=3D1)
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires fo=
rce_turbo=3D1)
> > > ##
> > > #over_voltage_min=3D0
> > >
> > > ## over_voltage_sdram
> > > ##=C2=A0 =C2=A0 Sets over_voltage_sdram_c, over_voltage_sdram_i, over=
_voltage_sdram_p
> > > ##=C2=A0 =C2=A0 together
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > ##
> > > #over_voltage_sdram=3D0
> > >
> > > ## over_voltage_sdram_c
> > > ##=C2=A0 =C2=A0 SDRAM controller voltage adjust.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > ##
> > > #over_voltage_sdram_c=3D0
> > >
> > > ## over_voltage_sdram_i
> > > ##=C2=A0 =C2=A0 SDRAM I/O voltage adjust.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > ##
> > > #over_voltage_sdram_i=3D0
> > >
> > > ## over_voltage_sdram_p
> > > ##=C2=A0 =C2=A0 SDRAM phy voltage adjust.
> > > ##
> > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > ##=C2=A0 =C2=A0 -----------------------------------------------------=
--------------------
> > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > ##
> > > #over_voltage_sdram_p=3D0
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 USB Power
> > > #####################################################################=
###########
> > >
> > > ## max_usb_current
> > > ##=C2=A0 =C2=A0 When set to 1, change the output current limit (for a=
ll 4 USB
> > > ##=C2=A0 =C2=A0 ports combined) from 600mA to double that, 1200mA.
> > > ##
> > > ##=C2=A0 =C2=A0 This option is not available for Model A/B boards.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 0.
> > > ##
> > > #max_usb_current=3D0
> > >
> > > #####################################################################=
###########
> > > ##=C2=A0 Base Device Tree Parameters
> > > #####################################################################=
###########
> > >
> > > ## audio
> > > ##=C2=A0 =C2=A0 Enable the onboard ALSA audio
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Daudio=3Doff
> > >
> > > ## i2c_arm
> > > ##=C2=A0 =C2=A0 Enable the ARM's i2c interface
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Di2c_arm=3Doff
> > >
> > > ## i2c_vc
> > > ##=C2=A0 =C2=A0 Enable the i2c interface
> > > ##
> > > ##=C2=A0 =C2=A0 Usually reserved for the VideoCore processor
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Di2c_vc=3Doff
> > >
> > > ## i2c_arm_baudrate
> > > ##=C2=A0 =C2=A0 Set the baudrate of the ARM's i2c interface
> > > ##
> > > ##=C2=A0 =C2=A0 Default 100000.
> > > ##
> > > #dtparam=3Di2c_arm_baudrate=3D100000
> > >
> > > ## i2c_vc_baudrate
> > > ##=C2=A0 =C2=A0 Set the baudrate of the VideoCore i2c interface
> > > ##
> > > ##=C2=A0 =C2=A0 Default 100000.
> > > ##
> > > #dtparam=3Di2c_vc_baudrate=3D100000
> > >
> > > ## i2s
> > > ##=C2=A0 =C2=A0 Set to "on" to enable the i2s interface
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Di2s=3Doff
> > >
> > > ## spi
> > > ##=C2=A0 =C2=A0 Set to "on" to enable the spi interfaces
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Dspi=3Doff
> > >
> > > ## random
> > > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware random
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Drandom=3Doff
> > >
> > > ## uart0
> > > ##=C2=A0 =C2=A0 Set to "off" to disable uart0
> > > ##
> > > ##=C2=A0 =C2=A0 Default on.
> > > ##
> > > #dtparam=3Duart0=3Don
> > >
> > > ## watchdog
> > > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware watchdog
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Dwatchdog=3Doff
> > >
> > > ## act_led_trigger
> > > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > > ##
> > > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > > ##
> > > ##=C2=A0 =C2=A0 Default mmc.
> > > ##
> > > #dtparam=3Dact_led_trigger=3Dmmc
> > >
> > > ## act_led_activelow
> > > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Dact_led_activelow=3Doff
> > >
> > > ## act_led_gpio
> > > ##=C2=A0 =C2=A0 Set which GPIO to use for the activity LED
> > > ##
> > > ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> > > ##
> > > ##=C2=A0 =C2=A0 Default 16 on a non-Plus board, 47 on a Plus or Pi 2.
> > > ##
> > > #dtparam=3Dact_led_gpio=3D47
> > >
> > > ## pwr_led_trigger
> > > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > > ##
> > > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > > ##
> > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > ##
> > > ##=C2=A0 =C2=A0 Default mmc.
> > > ##
> > > #dtparam=3Dpwr_led_trigger=3Dmmc
> > >
> > > ## pwr_led_activelow
> > > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > > ##
> > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > ##
> > > ##=C2=A0 =C2=A0 Default off.
> > > ##
> > > #dtparam=3Dpwr_led_activelow=3Doff
> > >
> > > ## pwr_led_gpio
> > > ##=C2=A0 =C2=A0 Set which GPIO to use for the PWR LED
> > > ##
> > > ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> > > ##
> > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > ##
> > > ##=C2=A0 =C2=A0 Default 35.
> > > ##
> > > #dtparam=3Dpwr_led_gpio=3D35
> > > # Enable SPI bus
> > > dtparam=3Dspi=3Don
> > > # Enable UART
> > > enable_uart=3D1
> > > # Enable VC4 Graphics
> > > dtoverlay=3Dvc4-kms-v3d
> > > # Enable Sony RaspberryPi Camera(imx219)
> > > dtoverlay=3Dimx219
> > > # Enable USB host mode
> > > dtoverlay=3Ddwc2,dr_mode=3Dhost
> > > # Enable CAN
> > > dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
> > >
> > > # Enable WM8960
> > > dtoverlay=3Dwm8960-soundcard
> > >
> > >
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >
> > > Any help will be appreciated!
> > >
> > >
> >
> >
> >
>
>=20
>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#60534): https://lists.yoctoproject.org/g/yocto/message/=
60534
Mute This Topic: https://lists.yoctoproject.org/mt/99985319/7732448
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [oosman3@yahoo.co=
m]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_881375_242735549.1688736608843
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpfa257e36yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Here is my boot output for t=
he raspberrypi, does anything stick out as the cause of not loading the wif=
i driver? Or something that points to what wifi driver I need?<br></div><di=
v dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Thanks!</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false">--------------------------------------=
---------------------------------------------------------------------------=
--------<br></div><div dir=3D"ltr" data-setdir=3D"false"><div><br>U-Boot 20=
22.01 (Jan 10 2022 - 18:46:34 +0000)<br><br>DRAM:&nbsp; 948 MiB<br>RPI 4 Mo=
del B (0xa03115)<br>MMC:&nbsp;&nbsp; mmcnr@7e300000: 1, mmc@7e340000: 0<br>=
Loading Environment from FAT... OK<br>In:&nbsp;&nbsp;&nbsp; serial<br>Out:&=
nbsp;&nbsp; serial<br>Err:&nbsp;&nbsp; serial<br>Net:&nbsp; &nbsp;<br>Warni=
ng: ethernet@7d580000 MAC addresses don't match:<br>Address in DT is&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp; &nbsp;e4:5f:01:ef:cf:95<br>Address in environment =
is&nbsp;&nbsp; &nbsp;dc:a6:32:e3:eb:fe<br>eth0: ethernet@7d580000<br>PCIe B=
RCM: link up, 5.0 Gbps x1 (SSC)<br>starting USB...<br>Bus usb@7e980000: USB=
 DWC2<br>Bus xhci_pci: Register 5000420 NbrPorts 5<br>Starting the controll=
er<br>USB XHCI 1.00<br>scanning bus usb@7e980000 for devices... 1 USB Devic=
e(s) found<br>scanning bus xhci_pci for devices... 2 USB Device(s) found<br=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scanning usb for storage devices... 0=
 Storage Device(s) found<br>Hit any key to stop autoboot:&nbsp; 0 <br>switc=
h to partitions #0, OK<br>mmc0 is current device<br>Scanning mmc 0:1...<br>=
Found U-Boot script /boot.scr<br>423 bytes read in 6 ms (68.4 KiB/s)<br>## =
Executing script at 02400000<br>Saving Environment to FAT... OK<br>rpipart =
not set, default to 2<br>24021504 bytes read in 1019 ms (22.5 MiB/s)<br>Mov=
ing Image from 0x80000 to 0x200000, end=3D1a00000<br>## Flattened Device Tr=
ee blob at 2eff1f00<br>&nbsp;&nbsp; Booting using the fdt blob at 0x2eff1f0=
0<br>&nbsp;&nbsp; Using Device Tree in place at 000000002eff1f00, end 00000=
0002f002fe7<br><br>Starting kernel ...<br><br>[&nbsp;&nbsp;&nbsp; 0.000000]=
 Booting Linux on physical CPU 0x0000000000 [0x410fd083]<br>[&nbsp;&nbsp;&n=
bsp; 0.000000] Linux version 6.1.35-v8 (oe-user@oe-host) (aarch64-oe-linux-=
gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP PREEMPT Sun J=
un 25 13:09:39 UTC 2023<br>[&nbsp;&nbsp;&nbsp; 0.000000] random: crng init =
done<br>[&nbsp;&nbsp;&nbsp; 0.000000] Machine model: Raspberry Pi 4 Model B=
 Rev 1.5<br>[&nbsp;&nbsp;&nbsp; 0.000000] efi: UEFI not found.<br>[&nbsp;&n=
bsp;&nbsp; 0.000000] Reserved memory: bypass linux,cma node, using cmdline =
CMA params instead<br>[&nbsp;&nbsp;&nbsp; 0.000000] OF: reserved mem: node =
linux,cma compatible matching fail<br>[&nbsp;&nbsp;&nbsp; 0.000000] Zone ra=
nges:<br>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; DMA&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; [mem 0x0000000000000000-0x000000003b3fffff]<br>[&nbsp;&nbsp;&nbsp=
; 0.000000]&nbsp;&nbsp; DMA32&nbsp;&nbsp;&nbsp; empty<br>[&nbsp;&nbsp;&nbsp=
; 0.000000]&nbsp;&nbsp; Normal&nbsp;&nbsp; empty<br>[&nbsp;&nbsp;&nbsp; 0.0=
00000] Movable zone start for each node<br>[&nbsp;&nbsp;&nbsp; 0.000000] Ea=
rly memory node ranges<br>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; node&nb=
sp;&nbsp; 0: [mem 0x0000000000000000-0x000000003b3fffff]<br>[&nbsp;&nbsp;&n=
bsp; 0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003b3ff=
fff]<br>[&nbsp;&nbsp;&nbsp; 0.000000] On node 0, zone DMA: 19456 pages in u=
navailable ranges<br>[&nbsp;&nbsp;&nbsp; 0.000000] cma: Reserved 64 MiB at =
0x0000000036000000<br>[&nbsp;&nbsp;&nbsp; 0.000000] percpu: Embedded 29 pag=
es/cpu s79528 r8192 d31064 u118784<br>[&nbsp;&nbsp;&nbsp; 0.000000] Detecte=
d PIPT I-cache on CPU0<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: detec=
ted: Spectre-v2<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: detected: Sp=
ectre-v3a<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: detected: Spectre-=
v4<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: detected: Spectre-BHB<br>=
[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: kernel page table isolation for=
ced ON by KASLR<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU features: detected: Ke=
rnel page table isolation (KPTI)<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU featu=
res: detected: ARM erratum 1742098<br>[&nbsp;&nbsp;&nbsp; 0.000000] CPU fea=
tures: detected: ARM errata 1165522, 1319367, or 1530923<br>[&nbsp;&nbsp;&n=
bsp; 0.000000] alternatives: applying boot alternatives<br>[&nbsp;&nbsp;&nb=
sp; 0.000000] Built 1 zonelists, mobility grouping on.&nbsp; Total pages: 2=
38896<br>[&nbsp;&nbsp;&nbsp; 0.000000] Kernel command line: coherent_pool=
=3D1M 8250.nr_uarts=3D1 snd_bcm2835.enable_headphones=3D0 snd_bcm2835.enabl=
e_hdmi=3D0&nbsp; smsc95xx.macaddr=3DE4:5F:01:EF:CF:95 vc_mem.mem_base=3D0x3=
ec00000 vc_mem.mem_size=3D0x40000000&nbsp; dwc_otg.lpm_enable=3D0 console=
=3DttyS0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait cma=3D64M =
root=3D/dev/mmcblk0p2<br>[&nbsp;&nbsp;&nbsp; 0.000000] Dentry cache hash ta=
ble entries: 131072 (order: 8, 1048576 bytes, linear)<br>[&nbsp;&nbsp;&nbsp=
; 0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, =
linear)<br>[&nbsp;&nbsp;&nbsp; 0.000000] mem auto-init: stack:off, heap all=
oc:off, heap free:off<br>[&nbsp;&nbsp;&nbsp; 0.000000] Memory: 859980K/9707=
52K available (12800K kernel code, 2146K rwdata, 4048K rodata, 4352K init, =
1088K bss, 45236K reserved, 65536K cma-reserved)<br>[&nbsp;&nbsp;&nbsp; 0.0=
00000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1=
<br>[&nbsp;&nbsp;&nbsp; 0.000000] ftrace: allocating 41928 entries in 164 p=
ages<br>[&nbsp;&nbsp;&nbsp; 0.000000] ftrace: allocated 164 pages with 3 gr=
oups<br>[&nbsp;&nbsp;&nbsp; 0.000000] trace event string verifier disabled<=
br>[&nbsp;&nbsp;&nbsp; 0.000000] rcu: Preemptible hierarchical RCU implemen=
tation.<br>[&nbsp;&nbsp;&nbsp; 0.000000] rcu: &nbsp;&nbsp; &nbsp;RCU event =
tracing is enabled.<br>[&nbsp;&nbsp;&nbsp; 0.000000] rcu: &nbsp;&nbsp; &nbs=
p;RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.<br>[&nbsp;&nbs=
p;&nbsp; 0.000000] &nbsp;&nbsp; &nbsp;Trampoline variant of Tasks RCU enabl=
ed.<br>[&nbsp;&nbsp;&nbsp; 0.000000] &nbsp;&nbsp; &nbsp;Rude variant of Tas=
ks RCU enabled.<br>[&nbsp;&nbsp;&nbsp; 0.000000] &nbsp;&nbsp; &nbsp;Tracing=
 variant of Tasks RCU enabled.<br>[&nbsp;&nbsp;&nbsp; 0.000000] rcu: RCU ca=
lculated value of scheduler-enlistment delay is 25 jiffies.<br>[&nbsp;&nbsp=
;&nbsp; 0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_=
ids=3D4<br>[&nbsp;&nbsp;&nbsp; 0.000000] NR_IRQS: 64, nr_irqs: 64, prealloc=
ated irqs: 0<br>[&nbsp;&nbsp;&nbsp; 0.000000] Root IRQ handler: gic_handle_=
irq<br>[&nbsp;&nbsp;&nbsp; 0.000000] GIC: Using split EOI/Deactivate mode<b=
r>[&nbsp;&nbsp;&nbsp; 0.000000] rcu: srcu_init: Setting srcu_struct sizes b=
ased on contention.<br>[&nbsp;&nbsp;&nbsp; 0.000000] arch_timer: cp15 timer=
(s) running at 54.00MHz (phys).<br>[&nbsp;&nbsp;&nbsp; 0.000000] clocksourc=
e: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0xc743ce346, max_id=
le_ns: 440795203123 ns<br>[&nbsp;&nbsp;&nbsp; 0.000001] sched_clock: 56 bit=
s at 54MHz, resolution 18ns, wraps every 4398046511102ns<br>[&nbsp;&nbsp;&n=
bsp; 0.000320] Console: colour dummy device 80x25<br>[&nbsp;&nbsp;&nbsp; 0.=
000385] Calibrating delay loop (skipped), value calculated using timer freq=
uency.. 108.00 BogoMIPS (lpj=3D216000)<br>[&nbsp;&nbsp;&nbsp; 0.000414] pid=
_max: default: 32768 minimum: 301<br>[&nbsp;&nbsp;&nbsp; 0.000552] LSM: Sec=
urity Framework initializing<br>[&nbsp;&nbsp;&nbsp; 0.000747] Mount-cache h=
ash table entries: 2048 (order: 2, 16384 bytes, linear)<br>[&nbsp;&nbsp;&nb=
sp; 0.000778] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 by=
tes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.002301] cgroup: Disabling memory cont=
rol group subsystem<br>[&nbsp;&nbsp;&nbsp; 0.004899] cblist_init_generic: S=
etting adjustable number of callback queues.<br>[&nbsp;&nbsp;&nbsp; 0.00491=
7] cblist_init_generic: Setting shift to 2 and lim to 1.<br>[&nbsp;&nbsp;&n=
bsp; 0.005129] cblist_init_generic: Setting shift to 2 and lim to 1.<br>[&n=
bsp;&nbsp;&nbsp; 0.005347] cblist_init_generic: Setting shift to 2 and lim =
to 1.<br>[&nbsp;&nbsp;&nbsp; 0.005887] rcu: Hierarchical SRCU implementatio=
n.<br>[&nbsp;&nbsp;&nbsp; 0.005899] rcu: &nbsp;&nbsp; &nbsp;Max phase no-de=
lay instances is 1000.<br>[&nbsp;&nbsp;&nbsp; 0.007367] EFI services will n=
ot be available.<br>[&nbsp;&nbsp;&nbsp; 0.008052] smp: Bringing up secondar=
y CPUs ...<br>[&nbsp;&nbsp;&nbsp; 0.009354] Detected PIPT I-cache on CPU1<b=
r>[&nbsp;&nbsp;&nbsp; 0.009505] CPU1: Booted secondary processor 0x00000000=
01 [0x410fd083]<br>[&nbsp;&nbsp;&nbsp; 0.010925] Detected PIPT I-cache on C=
PU2<br>[&nbsp;&nbsp;&nbsp; 0.011047] CPU2: Booted secondary processor 0x000=
0000002 [0x410fd083]<br>[&nbsp;&nbsp;&nbsp; 0.012511] Detected PIPT I-cache=
 on CPU3<br>[&nbsp;&nbsp;&nbsp; 0.012631] CPU3: Booted secondary processor =
0x0000000003 [0x410fd083]<br>[&nbsp;&nbsp;&nbsp; 0.012870] smp: Brought up =
1 node, 4 CPUs<br>[&nbsp;&nbsp;&nbsp; 0.012888] SMP: Total of 4 processors =
activated.<br>[&nbsp;&nbsp;&nbsp; 0.012902] CPU features: detected: 32-bit =
EL0 Support<br>[&nbsp;&nbsp;&nbsp; 0.012913] CPU features: detected: 32-bit=
 EL1 Support<br>[&nbsp;&nbsp;&nbsp; 0.012927] CPU features: detected: CRC32=
 instructions<br>[&nbsp;&nbsp;&nbsp; 0.013076] CPU: All CPU(s) started at E=
L2<br>[&nbsp;&nbsp;&nbsp; 0.013100] alternatives: applying system-wide alte=
rnatives<br>[&nbsp;&nbsp;&nbsp; 0.014823] devtmpfs: initialized<br>[&nbsp;&=
nbsp;&nbsp; 0.028622] Enabled cp15_barrier support<br>[&nbsp;&nbsp;&nbsp; 0=
.028660] Enabled setend support<br>[&nbsp;&nbsp;&nbsp; 0.029069] clocksourc=
e: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 764504178=
5100000 ns<br>[&nbsp;&nbsp;&nbsp; 0.029105] futex hash table entries: 1024 =
(order: 4, 65536 bytes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.030945] pinctrl co=
re: initialized pinctrl subsystem<br>[&nbsp;&nbsp;&nbsp; 0.031914] DMI not =
present or invalid.<br>[&nbsp;&nbsp;&nbsp; 0.032699] NET: Registered PF_NET=
LINK/PF_ROUTE protocol family<br>[&nbsp;&nbsp;&nbsp; 0.037154] DMA: preallo=
cated 1024 KiB GFP_KERNEL pool for atomic allocations<br>[&nbsp;&nbsp;&nbsp=
; 0.037492] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for atomic a=
llocations<br>[&nbsp;&nbsp;&nbsp; 0.038728] DMA: preallocated 1024 KiB GFP_=
KERNEL|GFP_DMA32 pool for atomic allocations<br>[&nbsp;&nbsp;&nbsp; 0.03883=
5] audit: initializing netlink subsys (disabled)<br>[&nbsp;&nbsp;&nbsp; 0.0=
39153] audit: type=3D2000 audit(0.036:1): state=3Dinitialized audit_enabled=
=3D0 res=3D1<br>[&nbsp;&nbsp;&nbsp; 0.039837] thermal_sys: Registered therm=
al governor 'step_wise'<br>[&nbsp;&nbsp;&nbsp; 0.039935] cpuidle: using gov=
ernor menu<br>[&nbsp;&nbsp;&nbsp; 0.040239] hw-breakpoint: found 6 breakpoi=
nt and 4 watchpoint registers.<br>[&nbsp;&nbsp;&nbsp; 0.040463] ASID alloca=
tor initialised with 32768 entries<br>[&nbsp;&nbsp;&nbsp; 0.040661] Serial:=
 AMBA PL011 UART driver<br>[&nbsp;&nbsp;&nbsp; 0.061184] bcm2835-mbox fe00b=
880.mailbox: mailbox enabled<br>[&nbsp;&nbsp;&nbsp; 0.084968] platform fe80=
1000.csi: Fixed dependency cycle(s) with /soc/i2c0mux/i2c@1/imx219@10<br>[&=
nbsp;&nbsp;&nbsp; 0.092288] raspberrypi-firmware soc:firmware: Attached to =
firmware from 2022-08-26T14:04:10, variant start_x<br>[&nbsp;&nbsp;&nbsp; 0=
.096304] raspberrypi-firmware soc:firmware: Firmware hash is 102f1e848393c2=
112206fadffaaf86db04e98326<br>[&nbsp;&nbsp;&nbsp; 0.116405] KASLR enabled<b=
r>[&nbsp;&nbsp;&nbsp; 0.153273] bcm2835-dma fe007000.dma: DMA legacy API ma=
nager, dmachans=3D0x1<br>[&nbsp;&nbsp;&nbsp; 0.160821] SCSI subsystem initi=
alized<br>[&nbsp;&nbsp;&nbsp; 0.161084] usbcore: registered new interface d=
river usbfs<br>[&nbsp;&nbsp;&nbsp; 0.161144] usbcore: registered new interf=
ace driver hub<br>[&nbsp;&nbsp;&nbsp; 0.161222] usbcore: registered new dev=
ice driver usb<br>[&nbsp;&nbsp;&nbsp; 0.161774] usb_phy_generic phy: supply=
 vcc not found, using dummy regulator<br>[&nbsp;&nbsp;&nbsp; 0.162065] usb_=
phy_generic phy: dummy supplies not allowed for exclusive requests<br>[&nbs=
p;&nbsp;&nbsp; 0.162516] pps_core: LinuxPPS API ver. 1 registered<br>[&nbsp=
;&nbsp;&nbsp; 0.162530] pps_core: Software ver. 5.3.6 - Copyright 2005-2007=
 Rodolfo Giometti &lt;giometti@linux.it&gt;<br>[&nbsp;&nbsp;&nbsp; 0.162556=
] PTP clock support registered<br>[&nbsp;&nbsp;&nbsp; 0.162861] Advanced Li=
nux Sound Architecture Driver Initialized.<br>[&nbsp;&nbsp;&nbsp; 0.163830]=
 vgaarb: loaded<br>[&nbsp;&nbsp;&nbsp; 0.164450] clocksource: Switched to c=
locksource arch_sys_counter<br>[&nbsp;&nbsp;&nbsp; 0.165251] VFS: Disk quot=
as dquot_6.6.0<br>[&nbsp;&nbsp;&nbsp; 0.165369] VFS: Dquot-cache hash table=
 entries: 512 (order 0, 4096 bytes)<br>[&nbsp;&nbsp;&nbsp; 0.165601] FS-Cac=
he: Loaded<br>[&nbsp;&nbsp;&nbsp; 0.165771] CacheFiles: Loaded<br>[&nbsp;&n=
bsp;&nbsp; 0.176134] NET: Registered PF_INET protocol family<br>[&nbsp;&nbs=
p;&nbsp; 0.176763] IP idents hash table entries: 16384 (order: 5, 131072 by=
tes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.178769] tcp_listen_portaddr_hash hash=
 table entries: 512 (order: 1, 8192 bytes, linear)<br>[&nbsp;&nbsp;&nbsp; 0=
.178808] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, l=
inear)<br>[&nbsp;&nbsp;&nbsp; 0.178835] TCP established hash table entries:=
 8192 (order: 4, 65536 bytes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.178896] TCP =
bind hash table entries: 8192 (order: 6, 262144 bytes, linear)<br>[&nbsp;&n=
bsp;&nbsp; 0.179155] TCP: Hash tables configured (established 8192 bind 819=
2)<br>[&nbsp;&nbsp;&nbsp; 0.179337] UDP hash table entries: 512 (order: 2, =
16384 bytes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.179398] UDP-Lite hash table e=
ntries: 512 (order: 2, 16384 bytes, linear)<br>[&nbsp;&nbsp;&nbsp; 0.179622=
] NET: Registered PF_UNIX/PF_LOCAL protocol family<br>[&nbsp;&nbsp;&nbsp; 0=
.180345] RPC: Registered named UNIX socket transport module.<br>[&nbsp;&nbs=
p;&nbsp; 0.180361] RPC: Registered udp transport module.<br>[&nbsp;&nbsp;&n=
bsp; 0.180372] RPC: Registered tcp transport module.<br>[&nbsp;&nbsp;&nbsp;=
 0.180384] RPC: Registered tcp NFSv4.1 backchannel transport module.<br>[&n=
bsp;&nbsp;&nbsp; 0.180413] PCI: CLS 0 bytes, default 64<br>[&nbsp;&nbsp;&nb=
sp; 0.183570] hw perfevents: enabled with armv8_cortex_a72 PMU driver, 7 co=
unters available<br>[&nbsp;&nbsp;&nbsp; 0.184015] kvm [1]: IPA Size Limit: =
44 bits<br>[&nbsp;&nbsp;&nbsp; 0.185464] kvm [1]: vgic interrupt IRQ9<br>[&=
nbsp;&nbsp;&nbsp; 0.185719] kvm [1]: Hyp mode initialized successfully<br>[=
&nbsp;&nbsp;&nbsp; 1.397294] Initialise system trusted keyrings<br>[&nbsp;&=
nbsp;&nbsp; 1.397772] workingset: timestamp_bits=3D46 max_order=3D18 bucket=
_order=3D0<br>[&nbsp;&nbsp;&nbsp; 1.405940] zbud: loaded<br>[&nbsp;&nbsp;&n=
bsp; 1.409065] NFS: Registering the id_resolver key type<br>[&nbsp;&nbsp;&n=
bsp; 1.409105] Key type id_resolver registered<br>[&nbsp;&nbsp;&nbsp; 1.409=
117] Key type id_legacy registered<br>[&nbsp;&nbsp;&nbsp; 1.409261] nfs4fil=
elayout_init: NFSv4 File Layout Driver Registering...<br>[&nbsp;&nbsp;&nbsp=
; 1.409279] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registeri=
ng...<br>[&nbsp;&nbsp;&nbsp; 1.410729] Key type asymmetric registered<br>[&=
nbsp;&nbsp;&nbsp; 1.410748] Asymmetric key parser 'x509' registered<br>[&nb=
sp;&nbsp;&nbsp; 1.410841] Block layer SCSI generic (bsg) driver version 0.4=
 loaded (major 246)<br>[&nbsp;&nbsp;&nbsp; 1.411139] io scheduler mq-deadli=
ne registered<br>[&nbsp;&nbsp;&nbsp; 1.411157] io scheduler kyber registere=
d<br>[&nbsp;&nbsp;&nbsp; 1.413912] irq_brcmstb_l2: registered L2 intc (/soc=
/interrupt-controller@7ef00100, parent irq: 27)<br>[&nbsp;&nbsp;&nbsp; 1.42=
5381] brcm-pcie fd500000.pcie: host bridge /scb/pcie@7d500000 ranges:<br>[&=
nbsp;&nbsp;&nbsp; 1.425425] brcm-pcie fd500000.pcie:&nbsp;&nbsp; No bus ran=
ge found for /scb/pcie@7d500000, using [bus 00-ff]<br>[&nbsp;&nbsp;&nbsp; 1=
.425537] brcm-pcie fd500000.pcie:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MEM 0x06000=
00000..0x063fffffff -&gt; 0x00c0000000<br>[&nbsp;&nbsp;&nbsp; 1.425648] brc=
m-pcie fd500000.pcie:&nbsp;&nbsp; IB MEM 0x0000000000..0x003fffffff -&gt; 0=
x0400000000<br>[&nbsp;&nbsp;&nbsp; 1.426763] brcm-pcie fd500000.pcie: PCI h=
ost bridge to bus 0000:00<br>[&nbsp;&nbsp;&nbsp; 1.426783] pci_bus 0000:00:=
 root bus resource [bus 00-ff]<br>[&nbsp;&nbsp;&nbsp; 1.426802] pci_bus 000=
0:00: root bus resource [mem 0x600000000-0x63fffffff] (bus address [0xc0000=
000-0xffffffff])<br>[&nbsp;&nbsp;&nbsp; 1.426891] pci 0000:00:00.0: [14e4:2=
711] type 01 class 0x060400<br>[&nbsp;&nbsp;&nbsp; 1.427235] pci 0000:00:00=
.0: PME# supported from D0 D3hot<br>[&nbsp;&nbsp;&nbsp; 1.431746] pci_bus 0=
000:01: supply vpcie3v3 not found, using dummy regulator<br>[&nbsp;&nbsp;&n=
bsp; 1.431970] pci_bus 0000:01: supply vpcie3v3aux not found, using dummy r=
egulator<br>[&nbsp;&nbsp;&nbsp; 1.432090] pci_bus 0000:01: supply vpcie12v =
not found, using dummy regulator<br>[&nbsp;&nbsp;&nbsp; 1.494550] brcm-pcie=
 fd500000.pcie: link up, 5.0 GT/s PCIe x1 (SSC)<br>[&nbsp;&nbsp;&nbsp; 1.49=
4731] pci 0000:01:00.0: [1106:3483] type 00 class 0x0c0330<br>[&nbsp;&nbsp;=
&nbsp; 1.494875] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64b=
it]<br>[&nbsp;&nbsp;&nbsp; 1.495450] pci 0000:01:00.0: PME# supported from =
D0 D3hot<br>[&nbsp;&nbsp;&nbsp; 1.504685] pci 0000:00:00.0: BAR 8: assigned=
 [mem 0x600000000-0x6000fffff]<br>[&nbsp;&nbsp;&nbsp; 1.504713] pci 0000:01=
:00.0: BAR 0: assigned [mem 0x600000000-0x600000fff 64bit]<br>[&nbsp;&nbsp;=
&nbsp; 1.504764] pci 0000:00:00.0: PCI bridge to [bus 01]<br>[&nbsp;&nbsp;&=
nbsp; 1.504790] pci 0000:00:00.0:&nbsp;&nbsp; bridge window [mem 0x60000000=
0-0x6000fffff]<br>[&nbsp;&nbsp;&nbsp; 1.516628] Serial: 8250/16550 driver, =
1 ports, IRQ sharing enabled<br>[&nbsp;&nbsp;&nbsp; 1.521030] iproc-rng200 =
fe104000.rng: hwrng registered<br>[&nbsp;&nbsp;&nbsp; 1.521819] vc-mem: phy=
s_addr:0x00000000 mem_base=3D0x3ec00000 mem_size:0x40000000(1024 MiB)<br>[&=
nbsp;&nbsp;&nbsp; 1.524107] gpiomem-bcm2835 fe200000.gpiomem: Initialised: =
Registers at 0xfe200000<br>[&nbsp;&nbsp;&nbsp; 1.539887] vc4-drm gpu: bound=
 fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 1.555001] brd: modul=
e loaded<br>[&nbsp;&nbsp;&nbsp; 1.565029] loop: module loaded<br>[&nbsp;&nb=
sp;&nbsp; 1.566047] Loading iSCSI transport class v2.0-870.<br>[&nbsp;&nbsp=
;&nbsp; 1.572378] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0x0000<br>[&n=
bsp;&nbsp;&nbsp; 1.632654] unimac-mdio unimac-mdio.-19: Broadcom UniMAC MDI=
O bus<br>[&nbsp;&nbsp;&nbsp; 1.633910] usbcore: registered new interface dr=
iver r8152<br>[&nbsp;&nbsp;&nbsp; 1.633986] usbcore: registered new interfa=
ce driver lan78xx<br>[&nbsp;&nbsp;&nbsp; 1.634073] usbcore: registered new =
interface driver smsc95xx<br>[&nbsp;&nbsp;&nbsp; 1.679745] pci 0000:00:00.0=
: enabling device (0000 -&gt; 0002)<br>[&nbsp;&nbsp;&nbsp; 1.679951] xhci_h=
cd 0000:01:00.0: xHCI Host Controller<br>[&nbsp;&nbsp;&nbsp; 1.679982] xhci=
_hcd 0000:01:00.0: new USB bus registered, assigned bus number 1<br>[&nbsp;=
&nbsp;&nbsp; 1.680810] xhci_hcd 0000:01:00.0: hcc params 0x002841eb hci ver=
sion 0x100 quirks 0x0001e40000000890<br>[&nbsp;&nbsp;&nbsp; 1.682095] xhci_=
hcd 0000:01:00.0: xHCI Host Controller<br>[&nbsp;&nbsp;&nbsp; 1.682117] xhc=
i_hcd 0000:01:00.0: new USB bus registered, assigned bus number 2<br>[&nbsp=
;&nbsp;&nbsp; 1.682145] xhci_hcd 0000:01:00.0: Host supports USB 3.0 SuperS=
peed<br>[&nbsp;&nbsp;&nbsp; 1.682575] usb usb1: New USB device found, idVen=
dor=3D1d6b, idProduct=3D0002, bcdDevice=3D 6.01<br>[&nbsp;&nbsp;&nbsp; 1.68=
2596] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, SerialNumber=
=3D1<br>[&nbsp;&nbsp;&nbsp; 1.682612] usb usb1: Product: xHCI Host Controll=
er<br>[&nbsp;&nbsp;&nbsp; 1.682627] usb usb1: Manufacturer: Linux 6.1.35-v8=
 xhci-hcd<br>[&nbsp;&nbsp;&nbsp; 1.682641] usb usb1: SerialNumber: 0000:01:=
00.0<br>[&nbsp;&nbsp;&nbsp; 1.683495] hub 1-0:1.0: USB hub found<br>[&nbsp;=
&nbsp;&nbsp; 1.683584] hub 1-0:1.0: 1 port detected<br>[&nbsp;&nbsp;&nbsp; =
1.684769] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=3D0003=
, bcdDevice=3D 6.01<br>[&nbsp;&nbsp;&nbsp; 1.684791] usb usb2: New USB devi=
ce strings: Mfr=3D3, Product=3D2, SerialNumber=3D1<br>[&nbsp;&nbsp;&nbsp; 1=
.684807] usb usb2: Product: xHCI Host Controller<br>[&nbsp;&nbsp;&nbsp; 1.6=
84822] usb usb2: Manufacturer: Linux 6.1.35-v8 xhci-hcd<br>[&nbsp;&nbsp;&nb=
sp; 1.684836] usb usb2: SerialNumber: 0000:01:00.0<br>[&nbsp;&nbsp;&nbsp; 1=
.685665] hub 2-0:1.0: USB hub found<br>[&nbsp;&nbsp;&nbsp; 1.685779] hub 2-=
0:1.0: 4 ports detected<br>[&nbsp;&nbsp;&nbsp; 1.687987] dwc_otg: version 3=
.00a 10-AUG-2012 (platform bus)<br>[&nbsp;&nbsp;&nbsp; 1.689218] usbcore: r=
egistered new interface driver uas<br>[&nbsp;&nbsp;&nbsp; 1.689344] usbcore=
: registered new interface driver usb-storage<br>[&nbsp;&nbsp;&nbsp; 1.6895=
72] mousedev: PS/2 mouse device common for all mice<br>[&nbsp;&nbsp;&nbsp; =
1.698297] sdhci: Secure Digital Host Controller Interface driver<br>[&nbsp;=
&nbsp;&nbsp; 1.698315] sdhci: Copyright(c) Pierre Ossman<br>[&nbsp;&nbsp;&n=
bsp; 1.699377] sdhci-pltfm: SDHCI platform and OF driver helper<br>[&nbsp;&=
nbsp;&nbsp; 1.704124] ledtrig-cpu: registered to indicate activity on CPUs<=
br>[&nbsp;&nbsp;&nbsp; 1.704847] hid: raw HID events driver (C) Jiri Kosina=
<br>[&nbsp;&nbsp;&nbsp; 1.705035] usbcore: registered new interface driver =
usbhid<br>[&nbsp;&nbsp;&nbsp; 1.705049] usbhid: USB HID core driver<br>[&nb=
sp;&nbsp;&nbsp; 1.718785] NET: Registered PF_PACKET protocol family<br>[&nb=
sp;&nbsp;&nbsp; 1.718915] Key type dns_resolver registered<br>[&nbsp;&nbsp;=
&nbsp; 1.720252] registered taskstats version 1<br>[&nbsp;&nbsp;&nbsp; 1.72=
0341] Loading compiled-in X.509 certificates<br>[&nbsp;&nbsp;&nbsp; 1.72135=
4] Key type .fscrypt registered<br>[&nbsp;&nbsp;&nbsp; 1.721370] Key type f=
scrypt-provisioning registered<br>[&nbsp;&nbsp;&nbsp; 1.741134] uart-pl011 =
fe201000.serial: there is not valid maps for state default<br>[&nbsp;&nbsp;=
&nbsp; 1.742227] uart-pl011 fe201000.serial: cts_event_workaround enabled<b=
r>[&nbsp;&nbsp;&nbsp; 1.742410] fe201000.serial: ttyAMA1 at MMIO 0xfe201000=
 (irq =3D 37, base_baud =3D 0) is a PL011 rev2<br>[&nbsp;&nbsp;&nbsp; 1.742=
714] serial serial0: tty port ttyAMA1 registered<br>[&nbsp;&nbsp;&nbsp; 1.7=
51794] bcm2835-aux-uart fe215040.serial: there is not valid maps for state =
default<br>[&nbsp;&nbsp;&nbsp; 1.753004] printk: console [ttyS0] disabled<b=
r>[&nbsp;&nbsp;&nbsp; 1.753149] fe215040.serial: ttyS0 at MMIO 0xfe215040 (=
irq =3D 38, base_baud =3D 62500000) is a 16550<br>[&nbsp;&nbsp;&nbsp; 1.944=
485] usb 1-1: new high-speed USB device number 2 using xhci_hcd<br>[&nbsp;&=
nbsp;&nbsp; 1.945726] printk: console [ttyS0] enabled<br>[&nbsp;&nbsp;&nbsp=
; 2.163023] usb 1-1: New USB device found, idVendor=3D2109, idProduct=3D343=
1, bcdDevice=3D 4.21<br>[&nbsp;&nbsp;&nbsp; 2.181595] vc4-drm gpu: bound fe=
400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 2.183990] usb 1-1: New =
USB device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0<br>[&nbsp;&nbsp;=
&nbsp; 2.191076] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer<b=
r>[&nbsp;&nbsp;&nbsp; 2.193116] usb 1-1: Product: USB2.0 Hub<br>[&nbsp;&nbs=
p;&nbsp; 2.199967] bcm2835-power bcm2835-power: Broadcom BCM2835 power doma=
ins driver<br>[&nbsp;&nbsp;&nbsp; 2.225382] hub 1-1:1.0: USB hub found<br>[=
&nbsp;&nbsp;&nbsp; 2.234250] wm8960 1-001a: Failed to issue reset<br>[&nbsp=
;&nbsp;&nbsp; 2.240503] hub 1-1:1.0: 4 ports detected<br>[&nbsp;&nbsp;&nbsp=
; 2.246043] wm8960: probe of 1-001a failed with error -5<br>[&nbsp;&nbsp;&n=
bsp; 3.233219] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_debug2:0<br>[&nb=
sp;&nbsp;&nbsp; 3.239366] mmc-bcm2835 fe300000.mmcnr: DMA channel allocated=
<br>[&nbsp;&nbsp;&nbsp; 3.279742] vc4-drm gpu: bound fe400000.hvs (ops vc4_=
hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 3.293846] vc4-drm gpu: bound fe400000.hvs (=
ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 3.303839] of_cfs_init<br>[&nbsp;&nb=
sp;&nbsp; 3.306498] of_cfs_init: OK<br>[&nbsp;&nbsp;&nbsp; 3.310651] mmc0: =
SDHCI controller on fe340000.mmc [fe340000.mmc] using ADMA<br>[&nbsp;&nbsp;=
&nbsp; 3.319128] ALSA device list:<br>[&nbsp;&nbsp;&nbsp; 3.322174]&nbsp;&n=
bsp; No soundcards found.<br>[&nbsp;&nbsp;&nbsp; 3.325453] vc4-drm gpu: bou=
nd fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 3.332870] Waiting =
for root device /dev/mmcblk0p2...<br>[&nbsp;&nbsp;&nbsp; 3.373963] mmc1: ne=
w high speed SDIO card at address 0001<br>[&nbsp;&nbsp;&nbsp; 3.428500] mmc=
0: new ultra high speed DDR50 SDHC card at address aaaa<br>[&nbsp;&nbsp;&nb=
sp; 3.436231] mmcblk0: mmc0:aaaa SC32G 29.7 GiB <br>[&nbsp;&nbsp;&nbsp; 3.4=
46937]&nbsp; mmcblk0: p1 p2 p3 p4<br>[&nbsp;&nbsp;&nbsp; 3.451351] mmcblk0:=
 mmc0:aaaa SC32G 29.7 GiB (quirks 0x00004000)<br>[&nbsp;&nbsp;&nbsp; 3.4650=
09] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp=
; 3.489729] EXT4-fs (mmcblk0p2): INFO: recovery required on readonly filesy=
stem<br>[&nbsp;&nbsp;&nbsp; 3.497251] EXT4-fs (mmcblk0p2): write access wil=
l be enabled during recovery<br>[&nbsp;&nbsp;&nbsp; 3.518291] EXT4-fs (mmcb=
lk0p2): recovery complete<br>[&nbsp;&nbsp;&nbsp; 3.524965] EXT4-fs (mmcblk0=
p2): mounted filesystem with ordered data mode. Quota mode: none.<br>[&nbsp=
;&nbsp;&nbsp; 3.533743] VFS: Mounted root (ext4 filesystem) readonly on dev=
ice 179:2.<br>[&nbsp;&nbsp;&nbsp; 3.544293] devtmpfs: mounted<br>[&nbsp;&nb=
sp;&nbsp; 3.556671] Freeing unused kernel memory: 4352K<br>[&nbsp;&nbsp;&nb=
sp; 3.561493] Run /sbin/init as init process<br>[&nbsp;&nbsp;&nbsp; 3.80451=
2] systemd[1]: System time before build time, advancing clock.<br>[&nbsp;&n=
bsp;&nbsp; 3.979554] NET: Registered PF_INET6 protocol family<br>[&nbsp;&nb=
sp;&nbsp; 3.986602] Segment Routing with IPv6<br>[&nbsp;&nbsp;&nbsp; 3.9904=
02] In-situ OAM (IOAM) with IPv6<br>[&nbsp;&nbsp;&nbsp; 4.030213] systemd[1=
]: systemd 250.5+ running in system mode (+PAM -AUDIT -SELINUX -APPARMOR +I=
MA -SMACK -SECCOMP -GCRYPT -GNUTLS -OPENSSL -ACL +BLKID -CURL -ELFUTILS -FI=
DO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTSETUP +LIBFDISK -PCRE2 -PWQUALITY -P11K=
IT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +S=
YSVINIT default-hierarchy=3Dhybrid)<br>[&nbsp;&nbsp;&nbsp; 4.063235] system=
d[1]: Detected architecture arm64.<br><br>Welcome to OpenEmbedded nodistro.=
0!<br><br>[&nbsp;&nbsp;&nbsp; 4.139575] systemd[1]: Hostname set to &lt;ras=
pberrypi4-64&gt;.<br>[&nbsp;&nbsp;&nbsp; 4.262773] systemd-fstab-generator[=
110]: Failed to create unit file /run/systemd/generator/boot.mount, as it a=
lready exists. Duplicate entry in /etc/fstab?<br>[&nbsp;&nbsp;&nbsp; 4.2792=
96] systemd-sysv-generator[118]: SysV service '/etc/init.d/psplash.sh' lack=
s a native systemd unit file. Automatically generating a unit file for comp=
atibility. Please update package to include a native systemd unit file, in =
order to make it more safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4.316704] sys=
temd-sysv-generator[118]: SysV service '/etc/init.d/halt' lacks a native sy=
stemd unit file. Automatically generating a unit file for compatibility. Pl=
ease update package to include a native systemd unit file, in order to make=
 it more safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4.341773] systemd-sysv-gen=
erator[118]: SysV service '/etc/init.d/sendsigs' lacks a native systemd uni=
t file. Automatically generating a unit file for compatibility. Please upda=
te package to include a native systemd unit file, in order to make it more =
safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4.367010] systemd-sysv-generator[11=
8]: SysV service '/etc/init.d/save-rtc.sh' lacks a native systemd unit file=
. Automatically generating a unit file for compatibility. Please update pac=
kage to include a native systemd unit file, in order to make it more safe a=
nd robust.<br>[&nbsp;&nbsp;&nbsp; 4.394486] systemd-sysv-generator[118]: Sy=
sV service '/etc/init.d/sshd' lacks a native systemd unit file. Automatical=
ly generating a unit file for compatibility. Please update package to inclu=
de a native systemd unit file, in order to make it more safe and robust.<br=
>[&nbsp;&nbsp;&nbsp; 4.421091] systemd-sysv-generator[118]: SysV service '/=
etc/init.d/umountfs' lacks a native systemd unit file. Automatically genera=
ting a unit file for compatibility. Please update package to include a nati=
ve systemd unit file, in order to make it more safe and robust.<br>[&nbsp;&=
nbsp;&nbsp; 4.452704] systemd-sysv-generator[118]: SysV service '/etc/init.=
d/reboot' lacks a native systemd unit file. Automatically generating a unit=
 file for compatibility. Please update package to include a native systemd =
unit file, in order to make it more safe and robust.<br>[&nbsp;&nbsp;&nbsp;=
 4.477081] systemd-sysv-generator[118]: SysV service '/etc/init.d/network-m=
anager' lacks a native systemd unit file. Automatically generating a unit f=
ile for compatibility. Please update package to include a native systemd un=
it file, in order to make it more safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4=
.505088] systemd-sysv-generator[118]: SysV service '/etc/init.d/umountnfs.s=
h' lacks a native systemd unit file. Automatically generating a unit file f=
or compatibility. Please update package to include a native systemd unit fi=
le, in order to make it more safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4.5306=
97] systemd-sysv-generator[118]: SysV service '/etc/init.d/single' lacks a =
native systemd unit file. Automatically generating a unit file for compatib=
ility. Please update package to include a native systemd unit file, in orde=
r to make it more safe and robust.<br>[&nbsp;&nbsp;&nbsp; 4.576736] systemd=
[108]: /lib/systemd/system-generators/systemd-fstab-generator failed with e=
xit status 1.<br>[&nbsp;&nbsp;&nbsp; 4.958275] systemd[1]: Queued start job=
 for default target Graphical Interface.<br>[&nbsp;&nbsp;&nbsp; 5.033921] s=
ystemd[1]: Created slice Slice /system/getty.<br>[&nbsp; OK&nbsp; ] Created=
 slice Slice /system/getty.<br>[&nbsp;&nbsp;&nbsp; 5.059177] systemd[1]: Cr=
eated slice Slice /system/modprobe.<br>[&nbsp; OK&nbsp; ] Created slice Sli=
ce /system/modprobe.<br>[&nbsp;&nbsp;&nbsp; 5.083019] systemd[1]: Created s=
lice Slice /system/serial-getty.<br>[&nbsp; OK&nbsp; ] Created slice Slice =
/system/serial-getty.<br>[&nbsp;&nbsp;&nbsp; 5.106617] systemd[1]: Created =
slice User and Session Slice.<br>[&nbsp; OK&nbsp; ] Created slice User and =
Session Slice.<br>[&nbsp;&nbsp;&nbsp; 5.129140] systemd[1]: Started Dispatc=
h Password Requests to Console Directory Watch.<br>[&nbsp; OK&nbsp; ] Start=
ed Dispatch Password =E2=80=A6ts to Console Directory Watch.<br>[&nbsp;&nbs=
p;&nbsp; 5.157059] systemd[1]: Started Forward Password Requests to Wall Di=
rectory Watch.<br>[&nbsp; OK&nbsp; ] Started Forward Password R=E2=80=A6ues=
ts to Wall Directory Watch.<br>[&nbsp;&nbsp;&nbsp; 5.185040] systemd[1]: Re=
ached target Path Units.<br>[&nbsp; OK&nbsp; ] Reached target Path Units.<b=
r>[&nbsp;&nbsp;&nbsp; 5.204693] systemd[1]: Reached target Remote File Syst=
ems.<br>[&nbsp; OK&nbsp; ] Reached target Remote File Systems.<br>[&nbsp;&n=
bsp;&nbsp; 5.224647] systemd[1]: Reached target Slice Units.<br>[&nbsp; OK&=
nbsp; ] Reached target Slice Units.<br>[&nbsp;&nbsp;&nbsp; 5.244692] system=
d[1]: Reached target Swaps.<br>[&nbsp; OK&nbsp; ] Reached target Swaps.<br>=
[&nbsp;&nbsp;&nbsp; 5.265209] systemd[1]: Listening on initctl Compatibilit=
y Named Pipe.<br>[&nbsp; OK&nbsp; ] Listening on initctl Compatibility Name=
d Pipe.<br>[&nbsp;&nbsp;&nbsp; 5.290036] systemd[1]: Listening on Journal A=
udit Socket.<br>[&nbsp; OK&nbsp; ] Listening on Journal Audit Socket.<br>[&=
nbsp;&nbsp;&nbsp; 5.313629] systemd[1]: Listening on Journal Socket (/dev/l=
og).<br>[&nbsp; OK&nbsp; ] Listening on Journal Socket (/dev/log).<br>[&nbs=
p;&nbsp;&nbsp; 5.337712] systemd[1]: Listening on Journal Socket.<br>[&nbsp=
; OK&nbsp; ] Listening on Journal Socket.<br>[&nbsp;&nbsp;&nbsp; 5.357892] =
systemd[1]: Listening on Network Service Netlink Socket.<br>[&nbsp; OK&nbsp=
; ] Listening on Network Service Netlink Socket.<br>[&nbsp;&nbsp;&nbsp; 5.3=
81890] systemd[1]: Listening on udev Control Socket.<br>[&nbsp; OK&nbsp; ] =
Listening on udev Control Socket.<br>[&nbsp;&nbsp;&nbsp; 5.405457] systemd[=
1]: Listening on udev Kernel Socket.<br>[&nbsp; OK&nbsp; ] Listening on ude=
v Kernel Socket.<br>[&nbsp;&nbsp;&nbsp; 5.429385] systemd[1]: Listening on =
User Database Manager Socket.<br>[&nbsp; OK&nbsp; ] Listening on User Datab=
ase Manager Socket.<br>[&nbsp;&nbsp;&nbsp; 5.453682] systemd[1]: Huge Pages=
 File System was skipped because of a failed condition check (ConditionPath=
Exists=3D/sys/kernel/mm/hugepages).<br>[&nbsp;&nbsp;&nbsp; 5.489226] system=
d[1]: Mounting POSIX Message Queue File System...<br>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Mounting POSIX Message Queue File System...<br>[=
&nbsp;&nbsp;&nbsp; 5.518931] systemd[1]: Mounting Kernel Debug File System.=
..<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting Kernel Debu=
g File System...<br>[&nbsp;&nbsp;&nbsp; 5.546741] systemd[1]: Mounting Kern=
el Trace File System...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Mounting Kernel Trace File System...<br>[&nbsp;&nbsp;&nbsp; 5.593235] syst=
emd[1]: Mounting Temporary Directory /tmp...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Mounting Temporary Directory /tmp...<br>[&nbsp;&nbsp;=
&nbsp; 5.623544] systemd[1]: Starting Create List of Static Device Nodes...=
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Create List o=
f Static Device Nodes...<br>[&nbsp;&nbsp;&nbsp; 5.654773] systemd[1]: Start=
ing Load Kernel Module configfs...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Starting Load Kernel Module configfs...<br>[&nbsp;&nbsp;&nbsp; =
5.709616] systemd[1]: Starting Load Kernel Module drm...<br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load Kernel Module drm...<br>[&n=
bsp;&nbsp;&nbsp; 5.738793] systemd[1]: Starting Load Kernel Module fuse...<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load Kernel Mo=
dule fuse...<br>[&nbsp;&nbsp;&nbsp; 5.768721] systemd[1]: Starting Start ps=
plash boot splash screen...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Starting Start psplash boot splash screen...<br>[&nbsp;&nbsp;&nbsp; 5.=
786936] fuse: init (API version 7.37)<br>[&nbsp;&nbsp;&nbsp; 5.821605] syst=
emd[1]: Starting File System Check on Root Device...<br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting File System Check on Root Device...<=
br>[&nbsp;&nbsp;&nbsp; 5.855599] systemd[1]: Starting Journal Service...<br=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Journal Service.=
..<br>[&nbsp;&nbsp;&nbsp; 5.870309] systemd[1]: Starting Load Kernel Module=
s...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load Kern=
el Modules...<br>[&nbsp;&nbsp;&nbsp; 5.882953] systemd[1]: Starting Generat=
e network units from Kernel command line...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; Starting Generate network =E2=80=A6ts from Kernel comm=
and line...<br>[&nbsp;&nbsp;&nbsp; 5.898183] systemd[1]: Starting Coldplug =
All udev Devices...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rting Coldplug All udev Devices...<br>[&nbsp;&nbsp;&nbsp; 5.923633] systemd=
[1]: Mounted POSIX Message Queue File System.<br>[&nbsp; OK&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 5.931540] systemd[1]: Mounted Kernel Debug File System.<br>0=
m] Mounted&nbsp;&nbsp;&nbsp;&nbsp; 5.938611] systemd[1]: Mounted Kernel Tra=
ce File System.<br>1;39mPOSIX Message Queue[&nbsp;&nbsp;&nbsp; 5.945565] sy=
stemd[1]: Mounted Temporary Directory /tmp.<br>&nbsp;File System.<br>[&nbsp=
; OK&nbsp; ] M[&nbsp;&nbsp;&nbsp; 5.954551] systemd[1]: Finished Create Lis=
t of Static Device Nodes.<br>ounted Kernel Debug File System[&nbsp;&nbsp;&n=
bsp; 5.964515] systemd[1]: modprobe@configfs.service: Deactivated successfu=
lly.<br>.<br>[&nbsp; OK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.974346] systemd[1]:=
 Finished Load Kernel Module configfs.<br>m] Mounted Kernel Trace[&nbsp;&nb=
sp;&nbsp; 5.983089] systemd[1]: modprobe@drm.service: Deactivated successfu=
lly.<br>&nbsp;File System.<br>[&nbsp;&nbsp;&nbsp; 5.991589] systemd[1]: Fin=
ished Load Kernel Module drm.<br>32m&nbsp; OK&nbsp; ] Mounted Temporary Dir=
ectory /tmp.<br>[&nbsp; OK&nbsp; ] Finished Create List of Static Device No=
des.<br>[&nbsp; OK&nbsp; ] Finished Load Kernel Module configfs.<br>[&nbsp;=
 OK&nbsp; ] Finished Load Kernel Module drm.<br>[&nbsp;&nbsp;&nbsp; 6.04353=
1] systemd[1]: modprobe@fuse.service: Deactivated successfully.<br>[&nbsp;&=
nbsp;&nbsp; 6.052098] systemd[1]: Finished Load Kernel Module fuse.<br>[&nb=
sp; OK&nbsp; ] Finished Load Kernel Module fuse.<br>[&nbsp;&nbsp;&nbsp; 6.0=
77790] systemd[1]: psplash-start.service: Main process exited, code=3Dexite=
d, status=3D255/EXCEPTION<br>[&nbsp;&nbsp;&nbsp; 6.081916] cfg80211: Loadin=
g compiled-in X.509 certificates for regulatory database<br>[&nbsp;&nbsp;&n=
bsp; 6.088483] systemd[1]: psplash-start.service: Failed with result 'exit-=
code'.<br>[&nbsp;&nbsp;&nbsp; 6.104852] systemd[1]: Failed to start Start p=
splash boot splash screen.<br>[&nbsp;&nbsp;&nbsp; 6.112953] cfg80211: Loade=
d X.509 cert 'sforshee: 00b28ddf47aef9cea7'<br>1mFAILED] Failed to start St=
art psplash boot splash screen.<br>See 'systemctl status psplash-start.serv=
ice' for details.<br>[&nbsp;&nbsp;&nbsp; 6.160679] systemd[1]: Dependency f=
ailed for Start psplash-systemd progress communication helper.<br>[DEPEND] =
Dependency failed for Star=E2=80=A6progress communication helper.<br>[&nbsp=
;&nbsp;&nbsp; 6.192643] systemd[1]: psplash-systemd.service: Job psplash-sy=
stemd.service/start failed with result 'dependency'.<br>[&nbsp;&nbsp;&nbsp;=
 6.204928] systemd[1]: Started Journal Service.<br>[&nbsp; OK&nbsp; ] Start=
ed Journal Service.<br>[&nbsp; OK&nbsp; ] Finished File System Check on Roo=
t Device.<br>[&nbsp; OK&nbsp; ] Finished Load Kernel Modules.<br>[&nbsp; OK=
&nbsp; ] Finished Generate network units from Kernel command line.<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting FUSE Control File Syst=
em...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting Kernel C=
onfiguration File System...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Starting Remount Root and Kernel File Systems...<br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Apply Kernel Variable[&nbsp;&nbsp;&=
nbsp; 6.438252] EXT4-fs (mmcblk0p2): re-mounted. Quota mode: none.<br>s...<=
br>[&nbsp; OK&nbsp; ] Mounted FUSE Control File System.<br>[&nbsp; OK&nbsp;=
 ] Mounted Kernel Configuration File System.<br>[&nbsp; OK&nbsp; ] Finished=
 Remount Root and Kernel File Systems.<br>[&nbsp; OK&nbsp; ] Finished Apply=
 Kernel Variables.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
ting Flush Journal to Persistent Storage...<br>[&nbsp;&nbsp;&nbsp; 6.610243=
] systemd-journald[132]: Received client request to flush runtime journal.<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Create Static =
Device Nodes in /dev...<br>[&nbsp; OK&nbsp; ] Finished Flush Journal to Per=
sistent Storage.<br>[&nbsp; OK&nbsp; ] Finished Create Static Device Nodes =
in /dev.<br>[&nbsp; OK&nbsp; ] Reached target Preparation for Local File Sy=
stems.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting /var/vo=
latile...<br>[&nbsp;&nbsp;&nbsp; 6.783880] audit: type=3D1334 audit(1651167=
747.975:2): prog-id=3D5 op=3DLOAD<br>[&nbsp;&nbsp;&nbsp; 6.790890] audit: t=
ype=3D1334 audit(1651167747.983:3): prog-id=3D6 op=3DLOAD<br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Rule-based Manage=E2=80=A6for D=
evice Events and Files...<br>[&nbsp; OK&nbsp; ] Finished Coldplug All udev =
Devices.<br>[&nbsp; OK&nbsp; ] Mounted /var/volatile.<br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load/Save Random Seed...<br>[&nbsp;=
 OK&nbsp; ] Finished Load/Save Random Seed.<br>[&nbsp; OK&nbsp; ] Started R=
ule-based Manager for Device Events and Files.<br>[&nbsp; OK&nbsp; ] Listen=
ing on Load/Save RF =E2=80=A6itch Status /dev/rfkill Watch.<br>[&nbsp;&nbsp=
;&nbsp; 7.195859] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nb=
sp;&nbsp;&nbsp; 7.277840] snd_bcm2835: module is from the staging directory=
, the quality is unknown, you have been warned.<br>[&nbsp;&nbsp;&nbsp; 7.29=
4427] mc: Linux media interface: v0.10<br>[&nbsp;&nbsp;&nbsp; 7.299440] vc4=
-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 7.333=
535] vc_sm_cma: module is from the staging directory, the quality is unknow=
n, you have been warned.<br>[&nbsp;&nbsp;&nbsp; 7.347250] bcm2835_vc_sm_cma=
_probe: Videocore shared memory driver<br>[&nbsp;&nbsp;&nbsp; 7.353870] [vc=
_sm_connected_init]: start<br>[&nbsp;&nbsp;&nbsp; 7.360912] [vc_sm_connecte=
d_init]: installed successfully<br>[&nbsp;&nbsp;&nbsp; 7.374284] vc4-drm gp=
u: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 7.376370] vi=
deodev: Linux video capture interface: v2.00<br>[&nbsp; OK&nbsp; ] Found de=
vice /dev/mmcblk0p1.<br>[&nbsp;&nbsp;&nbsp; 7.471186] bcm2835_mmal_vchiq: m=
odule is from the staging directory, the quality is unknown, you have been =
warned.<br>[&nbsp;&nbsp;&nbsp; 7.471447] bcm2835_mmal_vchiq: module is from=
 the staging directory, the quality is unknown, you have been warned.<br>[&=
nbsp;&nbsp;&nbsp; 7.489471] rpivid_hevc: module is from the staging directo=
ry, the quality is unknown, you have been warned.<br>[&nbsp;&nbsp;&nbsp; 7.=
499293] bcm2835_mmal_vchiq: module is from the staging directory, the quali=
ty is unknown, you have been warned.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; Mounting /boot...<br>[&nbsp;&nbsp;&nbsp; 7.523818] rpivid feb=
10000.codec: Device registered as /dev/video19<br>[&nbsp;&nbsp;&nbsp; 7.541=
963] bcm2835_isp: module is from the staging directory, the quality is unkn=
own, you have been warned.<br>[&nbsp;&nbsp;&nbsp; 7.542832] bcm2835_codec: =
module is from the staging directory, the quality is unknown, you have been=
 warned.<br>[&nbsp;&nbsp;&nbsp; 7.561866] bcm2835_v4l2: module is from the =
staging directory, the quality is unknown, you have been warned.<br>[&nbsp;=
&nbsp;&nbsp; 7.577245] bcm2835-codec bcm2835-codec: Device registered as /d=
ev/video10<br>[&nbsp;&nbsp;&nbsp; 7.586154] bcm2835-codec bcm2835-codec: Lo=
aded V4L2 decode<br>[&nbsp;&nbsp;&nbsp; 7.593141] vc4-drm gpu: bound fe4000=
00.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 7.602178] bcm2835-codec bcm=
2835-codec: Device registered as /dev/video11<br>[&nbsp;&nbsp;&nbsp; 7.6171=
13] bcm2835-codec bcm2835-codec: Loaded V4L2 encode<br>[&nbsp;&nbsp;&nbsp; =
7.620369] FAT-fs (mmcblk0p1): Volume was not properly unmounted. Some data =
may be corrupt. Please run fsck.<br>[&nbsp; OK&nbsp; ] Found device /dev/mm=
cblk0p4.<br>[&nbsp;&nbsp;&nbsp; 7.643196] vc4-drm gpu: bound fe400000.hvs (=
ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 7.660411] bcm2835-codec bcm2835-cod=
ec: Device registered as /dev/video12<br>[&nbsp;&nbsp;&nbsp; 7.667543] bcm2=
835-codec bcm2835-codec: Loaded V4L2 isp<br>[&nbsp; OK&nbsp; ] Mounted /boo=
t.<br>[&nbsp;&nbsp;&nbsp; 7.690130] bcm2835-isp bcm2835-isp: Device node ou=
tput[0] registered as /dev/video13<br>[&nbsp;&nbsp;&nbsp; 7.690209] bcm2835=
-codec bcm2835-codec: Device registered as /dev/video18<br>[&nbsp;&nbsp;&nb=
sp; 7.705141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&=
nbsp;&nbsp; 7.711499] bcm2835-codec bcm2835-codec: Loaded V4L2 image_fx<br>=
[&nbsp;&nbsp;&nbsp; 7.720276] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video31<br>[&nbsp;&nbsp;&nbsp; 7.727418] bcm2835-codec bcm2835-co=
dec: Loaded V4L2 encode_image<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Mounting /data...<br>[&nbsp;&nbsp;&nbsp; 7.749249] vc4-drm gpu: boun=
d fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp; 7.755381] bcm2835-i=
sp bcm2835-isp: Device node capture[0] registered as /dev/video14<br>[&nbsp=
;&nbsp;&nbsp; 7.765460] EXT4-fs (mmcblk0p4): recovery complete<br>[&nbsp;&n=
bsp;&nbsp; 7.770739] EXT4-fs (mmcblk0p4): mounted filesystem with ordered d=
ata mode. Quota mode: none.<br>[&nbsp;&nbsp;&nbsp; 7.811000] bcm2835-isp bc=
m2835-isp: Device node capture[1] registered as /dev/video15<br>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting /media...<br>[&nbsp;&nbsp;&n=
bsp; 7.857123] brcmstb-i2c fef04500.i2c:&nbsp; @97500hz registered in polli=
ng mode<br>[&nbsp; OK&nbsp; ] Mounted /data.<br>[&nbsp;&nbsp;&nbsp; 7.87481=
3] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[&nbsp;&nbsp;&nbsp;=
 7.884625] brcmstb-i2c fef09500.i2c:&nbsp; @97500hz registered in polling m=
ode<br>[&nbsp;&nbsp;&nbsp; 7.885738] dwc2 fe980000.usb: supply vusb_d not f=
ound, using dummy regulator<br>[&nbsp;&nbsp;&nbsp; 7.900958] bcm2835-isp bc=
m2835-isp: Device node stats[2] registered as /dev/video16<br>[&nbsp;&nbsp;=
&nbsp; 7.911582] bcm2835-isp bcm2835-isp: Register output node 0 with media=
 controller<br>[&nbsp;&nbsp;&nbsp; 7.920029] bcm2835-isp bcm2835-isp: Regis=
ter capture node 1 with media controller<br>[&nbsp;&nbsp;&nbsp; 7.928582] b=
cm2835-isp bcm2835-isp: Register capture node 2 with media controller<br>[&=
nbsp;&nbsp;&nbsp; 7.938142] bcm2835-isp bcm2835-isp: Register capture node =
3 with media controller<br>[&nbsp;&nbsp;&nbsp; 7.948178] Registered IR keym=
ap rc-cec<br>[&nbsp;&nbsp;&nbsp; 7.949491] dwc2 fe980000.usb: supply vusb_a=
 not found, using dummy regulator<br>[&nbsp;&nbsp;&nbsp; 7.952499] rc rc0: =
vc4-hdmi-0 as /devices/platform/soc/fef00700.hdmi/rc/rc0<br>[&nbsp;&nbsp;&n=
bsp; 7.970883] input: vc4-hdmi-0 as /devices/platform/soc/fef00700.hdmi/rc/=
rc0/input0<br>[&nbsp;&nbsp;&nbsp; 7.998764] Bluetooth: Core ver 2.22<br>[&n=
bsp;&nbsp;&nbsp; 8.000774] bcm2835-isp bcm2835-isp: Device node output[0] r=
egistered as /dev/video20<br>[&nbsp;&nbsp;&nbsp; 8.014548] i2c i2c-22: Adde=
d multiplexed i2c bus 0<br>[&nbsp;&nbsp;&nbsp; 8.019825] NET: Registered PF=
_BLUETOOTH protocol family<br>[[&nbsp;&nbsp;&nbsp; 8.025899] Bluetooth: HCI=
 device and connection manager initialized<br>&nbsp; OK&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; 8.033423] Bluetooth: HCI socket layer initialized<br>0m] Moun[&n=
bsp;&nbsp;&nbsp; 8.038932] Bluetooth: L2CAP socket layer initialized<br>ted=
 /me[&nbsp;&nbsp;&nbsp; 8.045219] i2c i2c-22: Added multiplexed i2c bus 10<=
br>dia.[&nbsp;&nbsp;&nbsp; 8.051513] Bluetooth: SCO socket layer initialize=
d<br><br>[&nbsp;&nbsp;&nbsp; 8.051655] vc4-drm gpu: bound fef00700.hdmi (op=
s vc4_hdmi_ops)<br>[[&nbsp;&nbsp;&nbsp; 8.065745] bcm2835-isp bcm2835-isp: =
Device node capture[0] registered as /dev/video21<br>&nbsp; OK&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 8.067355] dwc2 fe980000.usb: DWC OTG Controller<br>0m] Re=
ached target&nbsp;&nbsp;&nbsp;&nbsp; 8.081443] bcm2835-isp bcm2835-isp: Dev=
ice node capture[1] registered as /dev/video22<br>;39mLoca[&nbsp;&nbsp;&nbs=
p; 8.090168] dwc2 fe980000.usb: new USB bus registered, assigned bus number=
 3<br>l File S[&nbsp;&nbsp;&nbsp; 8.097867] dwc2 fe980000.usb: irq 48, io m=
em 0xfe980000<br>ystems.<br>[&nbsp;&nbsp;&nbsp; 8.114764] usb usb3: New USB=
 device found, idVendor=3D1d6b, idProduct=3D0002, bcdDevice=3D 6.01<br>[&nb=
sp;&nbsp;&nbsp; 8.123245] usb usb3: New USB device strings: Mfr=3D3, Produc=
t=3D2, SerialNumber=3D1<br>[&nbsp;&nbsp;&nbsp; 8.124928] Bluetooth: HCI UAR=
T driver ver 2.3<br>[&nbsp;&nbsp;&nbsp; 8.130823] usb usb3: Product: DWC OT=
G Controller<br>[&nbsp;&nbsp;&nbsp; 8.135158] Bluetooth: HCI UART protocol =
H4 registered<br>[&nbsp;&nbsp;&nbsp; 8.135402] Bluetooth: HCI UART protocol=
 Three-wire (H5) registered<br>[&nbsp;&nbsp;&nbsp; 8.140162] usb usb3: Manu=
facturer: Linux 6.1.35-v8 dwc2_hsotg<br>[&nbsp;&nbsp;&nbsp; 8.146204] Bluet=
ooth: HCI UART protocol Broadcom registered<br>[&nbsp;&nbsp;&nbsp; 8.147810=
] hci_uart_bcm serial0-0: supply vbat not found, using dummy regulator<br>[=
&nbsp;&nbsp;&nbsp; 8.151990] usb usb3: SerialNumber: fe980000.usb<br>[&nbsp=
;&nbsp;&nbsp; 8.156581] hci_uart_bcm serial0-0: supply vddio not found, usi=
ng dummy regulator<br>[&nbsp;&nbsp;&nbsp; 8.157812] bcm2835-isp bcm2835-isp=
: Device node stats[2] registered as /dev/video23<br>[&nbsp;&nbsp;&nbsp; 8.=
164339] Registered IR keymap rc-cec<br>[&nbsp;&nbsp;&nbsp; 8.181118] bcm283=
5-isp bcm2835-isp: Register output node 0 with media controller<br>[&nbsp;&=
nbsp;&nbsp; 8.185800] hub 3-0:1.0: USB hub found<br>[&nbsp;&nbsp;&nbsp; 8.1=
87494] rc rc1: vc4-hdmi-1 as /devices/platform/soc/fef05700.hdmi/rc/rc1<br>=
[&nbsp;&nbsp;&nbsp; 8.187734] input: vc4-hdmi-1 as /devices/platform/soc/fe=
f05700.hdmi/rc/rc1/input1<br>[&nbsp;&nbsp;&nbsp; 8.191742] bcm2835-isp bcm2=
835-isp: Register capture node 1 with media controller<br>[&nbsp;&nbsp;&nbs=
p; 8.195999] hub 3-0:1.0: 1 port detected<br>[&nbsp;&nbsp;&nbsp; 8.204622] =
bcm2835-isp bcm2835-isp: Register capture node 2 with media controller<br>[=
&nbsp;&nbsp;&nbsp; 8.221097] [drm] Initialized v3d 1.0.0 20180419 for fec00=
000.v3d on minor 1<br>[&nbsp;&nbsp;&nbsp; 8.222650] bcm2835-isp bcm2835-isp=
: Register capture node 3 with media controller<br>[&nbsp;&nbsp;&nbsp; 8.23=
1443] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdmi_ops)<br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Creat[&nbsp;&nbsp;&nbsp; 8.2646=
22] bcm2835-isp bcm2835-isp: Loaded V4L2 bcm2835-isp<br>e Volatile Files an=
d Directories...<br>[&nbsp;&nbsp;&nbsp; 8.275166] vc4-drm gpu: bound fe0040=
00.txp (ops vc4_txp_ops)<br>[&nbsp;&nbsp;&nbsp; 8.277008] uart-pl011 fe2010=
00.serial: no DMA platform data<br>[&nbsp;&nbsp;&nbsp; 8.281896] vc4-drm gp=
u: bound fe206000.pixelvalve (ops vc4_crtc_ops)<br>[&nbsp;&nbsp;&nbsp; 8.31=
5281] vc4-drm gpu: bound fe207000.pixelvalve (ops vc4_crtc_ops)<br>[[&nbsp;=
&nbsp;&nbsp; 8.322477] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4_crtc=
_ops)<br>&nbsp; OK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.330038] vc4-drm gpu: bou=
nd fe216000.pixelvalve (ops vc4_crtc_ops)<br>0m] Fini[&nbsp;&nbsp;&nbsp; 8.=
337441] vc4-drm gpu: bound fec12000.pixelvalve (ops vc4_crtc_ops)<br>shed C=
reate Volatile Files and Directories.<br>[&nbsp;&nbsp;&nbsp; 8.353596] [drm=
] Initialized vc4 0.0.0 20140616 for gpu on minor 0<br>[&nbsp;&nbsp;&nbsp; =
8.360870] vc4-drm gpu: [drm] Cannot find any crtc or sizes<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Network Time Synchronization..=
.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Record Syste=
m Boot/Shutdown in UTMP...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Starting Load/Save RF Kill Switch Status...<br>[&nbsp;&nbsp;&nbsp; 8.53=
7403] Bluetooth: hci0: BCM: chip id 107<br>[&nbsp;&nbsp;&nbsp; 8.542354] Bl=
uetooth: hci0: BCM: features 0x2f<br>[&nbsp;&nbsp;&nbsp; 8.548557] Bluetoot=
h: hci0: BCM4345C0<br>[&nbsp;&nbsp;&nbsp; 8.552394] Bluetooth: hci0: BCM434=
5C0 (003.001.025) build 0000<br>[&nbsp; OK&nbsp; ] Finished Record System B=
oot/Shutdown in UTMP.<br>[&nbsp;&nbsp;&nbsp; 8.569173] Bluetooth: hci0: BCM=
4345C0 'brcm/BCM4345C0.hcd' Patch<br>[&nbsp;&nbsp;&nbsp; 8.589631] CAN devi=
ce driver interface<br>[&nbsp;&nbsp;&nbsp; 8.643726] imx219 10-0010: failed=
 to read chip id 219<br>[&nbsp;&nbsp;&nbsp; 8.650867] imx219: probe of 10-0=
010 failed with error -5<br>[&nbsp; OK&nbsp; ] Reached target Sound Card.<b=
r>[&nbsp; OK&nbsp; ] Created slice Slice /system/bthelper.<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Start psplash boot splash scre=
en...<br>[&nbsp; OK&nbsp; ] Started Load/Save RF Kill Switch Status.<br>[FA=
ILED] Failed to start Start psplash boot splash screen.<br>See 'systemctl s=
tatus psplash-start.service' for details.<br>[DEPEND] Dependency failed for=
 Star=E2=80=A6progress communication helper.<br>[&nbsp; OK&nbsp; ] Started =
Network Time Synchronization.<br>[&nbsp; OK&nbsp; ] Reached target System I=
nitialization.<br>[&nbsp; OK&nbsp; ] Started Daily Cleanup of Temporary Dir=
ectories.<br>[&nbsp; OK&nbsp; ] Reached target System Time Set.<br>[&nbsp; =
OK&nbsp; ] Reached target Timer Units.<br>[&nbsp; OK&nbsp; ] Listening on D=
-Bus System Message Bus Socket.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Starting sshd.socket...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; Starting Weston socket...<br>[&nbsp; OK&nbsp; ] Listening on sshd=
.socket.<br>[&nbsp; OK&nbsp; ] Listening on Weston socket.<br>[&nbsp; OK&nb=
sp; ] Reached target Socket Units.<br>[&nbsp; OK&nbsp; ] Reached target Bas=
ic System.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting D-B=
us System Message Bus...<br>[&nbsp; OK&nbsp; ] Started A minimalistic net=
=E2=80=A6Pv4, rdisc and DHCPv6 support.<br>[&nbsp;&nbsp;&nbsp; 9.301550] Bl=
uetooth: hci0: BCM: features 0x2f<br>[&nbsp;&nbsp;&nbsp; 9.307810] Bluetoot=
h: hci0: BCM43455 37.4MHz Raspberry Pi 3+<br>[&nbsp;&nbsp;&nbsp; 9.313745] =
Bluetooth: hci0: BCM4345C0 (003.001.025) build 0342<br>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Configure Bluetooth Modems connected =
by UART...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting IPv=
4 Packet Filtering Framework...<br>[&nbsp;&nbsp;&nbsp; 9.363108] 8021q: 802=
.1Q VLAN Support v1.8<br>[&nbsp;&nbsp;&nbsp; 9.389432] audit: type=3D1334 a=
udit(1651232906.515:4): prog-id=3D7 op=3DLOAD<br>[&nbsp;&nbsp;&nbsp; 9.3972=
84] audit: type=3D1334 audit(1651232906.519:5): prog-id=3D8 op=3DLOAD<br>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting User Login Manageme=
nt...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting OpenSSH =
Key Generation...<br>[&nbsp; OK&nbsp; ] Started D-Bus System Message Bus.<b=
r>[&nbsp; OK&nbsp; ] Started Configure Bluetooth Modems connected by UART.<=
br>[&nbsp; OK&nbsp; ] Finished IPv4 Packet Filtering Framework.<br>[&nbsp; =
OK&nbsp; ] Finished OpenSSH Key Generation.<br>[&nbsp; OK&nbsp; ] Reached t=
arget Preparation for Network.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Starting Network Manager...<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Starting Raspberry Pi bluetooth helper...<br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting LSB: network connection manager...=
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Network Confi=
guration...<br>[&nbsp;&nbsp;&nbsp; 9.700542] mcp251x spi0.0: MCP251x didn't=
 enter in conf mode after reset<br>[&nbsp;&nbsp;&nbsp; 9.707859] mcp251x sp=
i0.0: Probe failed, err=3D110<br>[&nbsp;&nbsp;&nbsp; 9.712832] mcp251x: pro=
be of spi0.0 failed with error -110<br>[&nbsp; OK&nbsp; ] Started LSB: netw=
ork connection manager.<br>[&nbsp; OK&nbsp; ] Finished Raspberry Pi bluetoo=
th helper.<br>[&nbsp; OK&nbsp; ] Started User Login Management.<br>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Bluetooth service...<br>[=
&nbsp; OK&nbsp; ] Started Network Configuration.<br>[&nbsp;&nbsp;&nbsp; 9.9=
94264] bcmgenet fd580000.ethernet: configuring instance for external RGMII =
(RX delay)<br>[&nbsp;&nbsp; 10.005669] bcmgenet fd580000.ethernet eth0: Lin=
k is Down<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Netw=
ork Name Resolution...<br>[&nbsp; OK&nbsp; ] Started Network Manager.<br>[&=
nbsp;&nbsp; 10.094290] audit: type=3D1334 audit(1651232907.219:6): prog-id=
=3D9 op=3DLOAD<br>[&nbsp;&nbsp; 10.101120] audit: type=3D1334 audit(1651232=
907.227:7): prog-id=3D10 op=3DLOAD<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Starting Hostname Service...<br>[&nbsp; OK&nbsp; ] Started Blue=
tooth service.<br>[&nbsp; OK&nbsp; ] Reached target Bluetooth Support.<br>[=
&nbsp;&nbsp; 10.205340] Bluetooth: BNEP (Ethernet Emulation) ver 1.3<br>[&n=
bsp;&nbsp; 10.210960] Bluetooth: BNEP filters: protocol multicast<br>[&nbsp=
;&nbsp; 10.216322] Bluetooth: BNEP socket layer initialized<br>[&nbsp;&nbsp=
; 10.240623] Bluetooth: MGMT ver 1.22<br>[&nbsp;&nbsp; 10.261915] NET: Regi=
stered PF_ALG protocol family<br>[&nbsp; OK&nbsp; ] Started Network Name Re=
solution.<br>[&nbsp; OK&nbsp; ] Reached target Network.<br>[&nbsp; OK&nbsp;=
 ] Reached target Host and Network Name Lookups.<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Starting DNS forwarder and DHCP server...<br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Permit User Sessions.=
..<br>[&nbsp; OK&nbsp; ] Started Xinetd A Powerful Replacement For Inetd.<b=
r>[&nbsp; OK&nbsp; ] Finished Permit User Sessions.<br>[&nbsp; OK&nbsp; ] S=
tarted Hostname Service.<br>[&nbsp; OK&nbsp; ] Started DNS forwarder and DH=
CP server.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Net=
work Manager Script Dispatcher Service...<br>[&nbsp; OK&nbsp; ] Started Get=
ty on tty1.<br>[&nbsp; OK&nbsp; ] Started Serial Getty on ttyS0.<br>[&nbsp;=
 OK&nbsp; ] Reached target Login Prompts.<br>[&nbsp; OK&nbsp; ] Reached tar=
get Multi-User System.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Starting Weston, a Wayland=E2=80=A6ositor, as a system service...<br>[&nbsp=
; OK&nbsp; ] Started Network Manager Script Dispatcher Service.<br>[&nbsp;&=
nbsp; 10.826800] audit: type=3D1334 audit(1651232907.951:8): prog-id=3D11 o=
p=3DLOAD<br>[&nbsp;&nbsp; 10.837083] audit: type=3D1334 audit(1651232907.95=
9:9): prog-id=3D12 op=3DLOAD<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Starting User Database Manager...<br>[&nbsp; OK&nbsp; ] Started User =
Database Manager.<br>[&nbsp; OK&nbsp; ] Created slice User Slice of UID 100=
0.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting User Runtim=
e Directory /run/user/1000...<br>[&nbsp; OK&nbsp; ] Finished User Runtime D=
irectory /run/user/1000.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; Starting User Manager for UID 1000...<br>[&nbsp;&nbsp; 11.283733] audit: =
type=3D1006 audit(1651232908.407:10): pid=3D354 uid=3D0 old-auid=3D42949672=
95 auid=3D1000 tty=3D(none) old-ses=3D4294967295 ses=3D1 res=3D1<br>[&nbsp;=
&nbsp; 11.301961] audit: type=3D1300 audit(1651232908.407:10): arch=3Dc0000=
0b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D=
0 items=3D0 ppid=3D1 pid=3D354 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D=
0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D1 comm=3D"(syste=
md)" exe=3D"/lib/systemd/systemd" key=3D(null)<br>[&nbsp; OK&nbsp; ] Starte=
d User Manager for UID 1000.<br>[&nbsp; OK&nbsp; ] Started Session c1 of Us=
er weston.<br>[&nbsp;&nbsp; 11.952188] kauditd_printk_skb: 1 callbacks supp=
ressed<br>[&nbsp;&nbsp; 11.952207] audit: type=3D1006 audit(1651232909.075:=
11): pid=3D348 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=
=3D4294967295 ses=3D2 res=3D1<br>[&nbsp;&nbsp; 11.971521] audit: type=3D130=
0 audit(1651232909.075:11): arch=3Dc00000b7 syscall=3D64 success=3Dyes exit=
=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D0 items=3D0 ppid=3D1 pid=3D348 auid=
=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=
=3D0 tty=3Dtty7 ses=3D2 comm=3D"(weston)" exe=3D"/lib/systemd/systemd" key=
=3D(null)<br>[&nbsp;&nbsp; 11.997917] audit: type=3D1327 audit(1651232909.0=
75:11): proctitle=3D"(weston)"<br>[&nbsp;&nbsp; 12.759139] vc4-drm gpu: [dr=
m] Cannot find any crtc or sizes<br>[&nbsp; OK&nbsp; ] Started Weston, a Wa=
yland =E2=80=A6mpositor, as a system service.<br>[&nbsp; OK&nbsp; ] Reached=
 target Graphical Interface.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Starting Record Runlevel Change in UTMP...<br>[&nbsp; OK&nbsp; ] Fini=
shed Record Runlevel Change in UTMP.<br><br>OpenEmbedded nodistro.0 raspber=
rypi4-64 ttyS0<br><br>raspberrypi4-64 login: [&nbsp;&nbsp; 19.942785] platf=
orm soc:sound: deferred probe pending<br>[&nbsp;&nbsp; 40.664644] audit: ty=
pe=3D1334 audit(1651232937.791:12): prog-id=3D10 op=3DUNLOAD<br>[&nbsp;&nbs=
p; 40.671849] audit: type=3D1334 audit(1651232937.791:13): prog-id=3D9 op=
=3DUNLOAD<br><br></div><div><br></div></div><div dir=3D"ltr" data-setdir=3D=
"false">-------------------------------------------------------------------=
-----------------------------------------------------------<br></div><div><=
br></div>
       =20
        </div><div id=3D"ydp9f654c7yahoo_quoted_9677160447" class=3D"ydp9f6=
54c7yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, July 6, 2023 at 11:52:51 AM CDT, Khem Raj =
&lt;raj.khem@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On Thu, Jul 6, 2023 at 9:04=E2=80=AFA=
M Oosman Saeed &lt;<a href=3D"mailto:oosman3@yahoo.com" rel=3D"nofollow" ta=
rget=3D"_blank">oosman3@yahoo.com</a>&gt; wrote:<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; I think that is the problem, I don't kn=
ow which wifi is used on the board. How do I find out what wifi driver to l=
oad?<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">Perhaps there are clues in early kernel logs. Maybe check dme=
sg or serial logs.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&gt=
;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; On Thursday=
, July 6, 2023 at 10:19:50 AM CDT, Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" rel=3D"nofollow" target=3D"_blank">raj.khem@gmail.com</a>&gt; wr=
ote:<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;<br></div=
><div dir=3D"ltr">&gt; On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed =
&lt;<a href=3D"mailto:oosman3@yahoo.com" rel=3D"nofollow" target=3D"_blank"=
>oosman3@yahoo.com</a>&gt; wrote:<br></div><div dir=3D"ltr">&gt; &gt;<br></=
div><div dir=3D"ltr">&gt; &gt; root@raspberrypi4-64:~# ifconfig -a<br></div=
><div dir=3D"ltr">&gt; &gt; eth0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt;&nbsp; mtu 1500<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; inet 192.168.7.8&nbsp; netmask 255.255.255.0&nbsp; broadcast 1=
92.168.7.255<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp;=
 ether dc:a6:32:e3:eb:fe&nbsp; txqueuelen 1000&nbsp; (Ethernet)<br></div><d=
iv dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX packets 962&nbsp; by=
tes 117191 (114.4 KiB)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nb=
sp; &nbsp; RX errors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></=
div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 1766&n=
bsp; bytes 299578 (292.5 KiB)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nb=
sp; &nbsp; &nbsp; TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nb=
sp; collisions 0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br>=
</div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1&=
nbsp; netmask 255.0.0.0<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &n=
bsp; &nbsp; inet6 ::1&nbsp; prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;<br=
></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; loop&nbsp; txq=
ueuelen 1000&nbsp; (Local Loopback)<br></div><div dir=3D"ltr">&gt; &gt;&nbs=
p; &nbsp; &nbsp; &nbsp; RX packets 12567&nbsp; bytes 780277 (761.9 KiB)<br>=
</div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbs=
p; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; =
&gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 12567&nbsp; bytes 780277 (761.9 =
KiB)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX erro=
rs 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></div=
><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;=
 OK in your kernel module list I dont see any kmods for wifi being loaded<b=
r></div><div dir=3D"ltr">&gt; so it might be that its not enabling them in =
rootfs for some reason ?<br></div><div dir=3D"ltr">&gt; which wifi is used =
on your board ?<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&g=
t;<br></div><div dir=3D"ltr">&gt; &gt; On Thursday, July 6, 2023 at 10:03:1=
6 AM CDT, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" rel=3D"nofollo=
w" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><div dir=3D=
"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; what does ifconfig -a say<br></div><div dir=3D"ltr">&gt; &gt;<=
br></div><div dir=3D"ltr">&gt; &gt; On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM =
oosman3 via lists.yoctoproject.org<br></div><div dir=3D"ltr">&gt; &gt; &lt;=
oosman3=3Dyahoo.com@lists.yoctoproject.org&gt; wrote:<br></div><div dir=3D"=
ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; I am building =
my raspberrypi wic image using the layer meta-raspberrypi.<br></div><div di=
r=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; I am usin=
g a raspiberrypi compute module 4 with wifi chip.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; I just can't seem =
to get the wlan0 device to appear when I type ifconfig.<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt; &gt; root@raspberrypi4-64:=
~# ifconfig<br></div><div dir=3D"ltr">&gt; &gt; &gt; eth0: flags=3D4163&lt;=
UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu 1500<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.7.8&nbsp; netmask 2=
55.255.255.0&nbsp; broadcast 192.168.7.255<br></div><div dir=3D"ltr">&gt; &=
gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; ether dc:a6:32:e3:eb:fe&nbsp; txqueuele=
n 1000&nbsp; (Ethernet)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbs=
p; &nbsp; &nbsp; RX packets 407&nbsp; bytes 62442 (60.9 KiB)<br></div><div =
dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; dro=
pped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; &gt; &=
gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 567&nbsp; bytes 94749 (92.5 KiB)<=
br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX erro=
rs 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></div=
><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; l=
o: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1&nbsp; net=
mask 255.0.0.0<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp; inet6 ::1&nbsp; prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; loop&nbsp; tx=
queuelen 1000&nbsp; (Local Loopback)<br></div><div dir=3D"ltr">&gt; &gt; &g=
t;&nbsp; &nbsp; &nbsp; &nbsp; RX packets 4047&nbsp; bytes 252037 (246.1 KiB=
)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX er=
rors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"=
ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 4047&nbsp; bytes =
252037 (246.1 KiB)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &n=
bsp; &nbsp; TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; co=
llisions 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div =
dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
Here is a filtered output of my lsmod command<br></div><div dir=3D"ltr">&gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; root@raspberrypi4-64:~# lsmod<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; Module&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; Size&nbsp; Used by<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; 88XXau&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2265088&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; cmac&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; algif_hash&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp;=
 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; aes_arm64&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; aes_generic&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36864&nbsp; 1 a=
es_arm64<br></div><div dir=3D"ltr">&gt; &gt; &gt; algif_skcipher&nbsp; &nbs=
p; &nbsp; &nbsp; 16384&nbsp; 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; af_=
alg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 6 al=
gif_hash,algif_skcipher<br></div><div dir=3D"ltr">&gt; &gt; &gt; bnep&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 2<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; 8021q&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 0<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; garp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; 16384&nbsp; 1 8021q<br></div><div dir=3D"ltr">&gt; &gt; &gt; stp&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1 =
garp<br></div><div dir=3D"ltr">&gt; &gt; &gt; llc&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 2 stp,garp<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; imx219&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
mcp251x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; =
0<br></div><div dir=3D"ltr">&gt; &gt; &gt; spidev&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; can_dev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40=
960&nbsp; 1 mcp251x<br></div><div dir=3D"ltr">&gt; &gt; &gt; hci_uart&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 45056&nbsp; 0<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; btbcm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 24576&nbsp; 1 hci_uart<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; v3d&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; 90112&nbsp; 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; bluetooth&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 585728&nbsp; 26 hci_uart,btbcm,bnep<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; i2c_mux_pinctrl&nbsp; &nbsp; &nbsp; &n=
bsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; gpu_sched&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 1 v3d<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; snd_soc_simple_card&nbsp; &nbsp; 20480&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; snd_soc_simple_card_utils&nbsp; &nb=
sp; 28672&nbsp; 1 snd_soc_simple_card<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; drm_shmem_helper&nbsp; &nbsp; &nbsp; 24576&nbsp; 1 v3d<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; raspberrypi_hwmon&nbsp; &nbsp; &nbsp; 16384&nbsp; =
0<br></div><div dir=3D"ltr">&gt; &gt; &gt; i2c_mux&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1 i2c_mux_pinctrl<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; i2c_brcmstb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; bcm2835_unicam&=
nbsp; &nbsp; &nbsp; &nbsp; 53248&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; dwc2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1=
92512&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; roles&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 1 dwc2<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; v4l2_dv_timings&nbsp; &nbsp; &nbsp; &nbsp;=
 40960&nbsp; 1 bcm2835_unicam<br></div><div dir=3D"ltr">&gt; &gt; &gt; v4l2=
_fwnode&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 2 imx219,bcm28=
35_unicam<br></div><div dir=3D"ltr">&gt; &gt; &gt; ecdh_generic&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 16384&nbsp; 2 bluetooth<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; v4l2_async&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp=
; 3 v4l2_fwnode,imx219,bcm2835_unicam<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ecc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; 36864&nbsp; 1 ecdh_generic<br></div><div dir=3D"ltr">&gt; &gt; &gt; libae=
s&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 3 aes_=
arm64,bluetooth,aes_generic<br></div><div dir=3D"ltr">&gt; &gt; &gt; spi_bc=
m2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 0<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; snd_soc_bcm2835_i2s&nbsp; &nbsp; 20480&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; bcm2835_codec&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 49152&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; rpivid_=
hevc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 0<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; bcm2835_v4l2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 45=
056&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; bcm2835_isp&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; bcm2835_mmal_vchiq&nbsp; &nbsp; 36864&nbsp; 3 bcm2835_codec,bcm2=
835_v4l2,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; &gt; v4l2_mem2mem&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 2 bcm2835_codec,rpivid_hevc<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; videobuf2_vmalloc&nbsp; &nbsp; &nbs=
p; 16384&nbsp; 1 bcm2835_v4l2<br></div><div dir=3D"ltr">&gt; &gt; &gt; vide=
obuf2_dma_contig&nbsp; &nbsp; 20480&nbsp; 4 bcm2835_codec,bcm2835_unicam,rp=
ivid_hevc,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; &gt; videobuf2_me=
mops&nbsp; &nbsp; &nbsp; 16384&nbsp; 2 videobuf2_vmalloc,videobuf2_dma_cont=
ig<br></div><div dir=3D"ltr">&gt; &gt; &gt; videobuf2_v4l2&nbsp; &nbsp; &nb=
sp; &nbsp; 32768&nbsp; 6 bcm2835_codec,bcm2835_unicam,bcm2835_v4l2,rpivid_h=
evc,v4l2_mem2mem,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; &gt; video=
buf2_common&nbsp; &nbsp; &nbsp; 69632&nbsp; 10 bcm2835_codec,videobuf2_vmal=
loc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,rpivid_=
hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; videodev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 27443=
2&nbsp; 10 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bc=
m2835_v4l2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; vc_sm_cma&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 32768&nbsp; 2 bcm2835_mmal_vchiq,bcm2835_isp<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; snd_bcm2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 28672&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; mc&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 61440&nbsp; 10 v4l2_=
async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,videobuf2=
_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; uio_pdrv_genirq&nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 0<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; nvmem_rmem&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; uio&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp;=
 1 uio_pdrv_genirq<br></div><div dir=3D"ltr">&gt; &gt; &gt; sch_fq_codel&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 6<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; brcmutil&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&=
nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; cfg80211&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 929792&nbsp; 1 88XXau<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; rfkill&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; 32768&nbsp; 4 bluetooth,cfg80211<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; fuse&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 139=
264&nbsp; 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; ipv6&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 552960&nbsp; 28<br></div><div =
dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; And =
here is my /boot/config.txt<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; root@raspberrypi4-64:~# cat /boot/config=
.txt<br></div><div dir=3D"ltr">&gt; &gt; &gt; #############################=
###################################################<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; Raspberry Pi Configuration Settings<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; Revision 16, 2013/06/22<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Details taken from the eL=
inux wiki<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; For up-to-date =
information please refer to wiki page.<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Wiki Location : <=
a href=3D"http://elinux.org/RPiconfig" rel=3D"nofollow" target=3D"_blank">h=
ttp://elinux.org/RPiconfig</a><br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; Description:<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; Details of each setting are described with each section that =
begins with<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; a doub=
le hashed comment ('##')<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; It is up to the user to remove the single hashed comment ('#') from =
each<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; option they w=
ant to enable, and to set the specific value of that option.<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; Overclock settings will be disabled at runtime if the SoC reaches temp=
_limit<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##########################################################=
######################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; #############################################=
###################################<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; Standard Definition Video Settings<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ###############################################################=
#################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ## sdtv_mode<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; defines the TV standard for composite output<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; ----------------------------------------------=
---------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbs=
p; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Normal NTSC (Default)<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Jap=
anese version of NTSC - no pedestal<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; Normal PAL<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; Brazil=
ian version of PAL - 525/60 rather than 625/50, different<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
subcarrier<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; #sdtv_mode=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## sdtv_aspect<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; defines the aspect ratio for compos=
ite output<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -------------------------=
------------------------------------------------<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 4:3 (Default)<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbs=
p; &nbsp; 14:9<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&n=
bsp; &nbsp; &nbsp; &nbsp; 16:9<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; #sdtv_aspect=3D1<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## sdtv_di=
sable_colourburst<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
Disables colour burst on composite output. The picture will be<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; monochrome, but possibly sharp=
er<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------------------=
----------------------------------------<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Colour burst is enabled=
 (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp;=
 &nbsp; &nbsp; &nbsp; Colour burst is disabled<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #sdtv_disable_colo=
urburst=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ########################################################=
########################<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
High Definition Video Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; ###=
###########################################################################=
##<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ## hdmi_safe<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; Use "safe mode" settings to try to boot with maximum hdmi compatibilit=
y.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------------------=
----------------------------------------<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; =
&nbsp; Enabled (this does: hdmi_force_hotplug=3D1,<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hdmi_ignore_=
edid=3D0xa5000080,<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; config_hdmi_boost=3D4, hdmi_group=3D2,<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; hdmi_mode=3D4, disable_overscan=3D0,<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; overscan_left=3D24,=
 overscan_right=3D24,<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; overscan_top=3D24, overscan_bottom=3D24)<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; #hdmi_safe=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_force_hotplug<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Pretends HDMI hotplug signal is asserte=
d so it appears a HDMI display<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; is attached<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descr=
iption<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -----------=
--------------------------------------------------------------<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; D=
isabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
1&nbsp; &nbsp; &nbsp; &nbsp; Use HDMI mode even if no HDMI monitor is detec=
ted<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; #hdmi_force_hotplug=3D1<br></div><div dir=3D"ltr">&gt; &gt; &=
gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_ignore_hotplug<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Pretends HDMI hotplug sig=
nal is not asserted so it appears a HDMI<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; display is not attached<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Va=
lue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; ----------------------------------------------------------------=
---------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; =
&nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Use composite mode even =
if HDMI monitor is detected<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_ignore_hotplug=3D1<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hd=
mi_drive<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; chooses b=
etween HDMI and DVI modes<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Desc=
ription<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------=
---------------------------------------------------------------<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; =
Normal DVI mode (No sound)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; Normal HDMI mode (Sound will be sent =
if supported and enabled)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_drive=3D2<br></div><div dir=3D"lt=
r">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_ignore_e=
did<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Enables the ig=
noring of EDID/display data<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_ignore_edid=3D0xa5000080<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ## hdmi_edid_file<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 Read the EDID data from the edid.dat file instead of from the attached<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; device<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; --------------------------------------------------=
-----------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Read EDID data from attached device (Def=
ault)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbs=
p; &nbsp; &nbsp; Read EDID data from edid.txt file<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_edid_fil=
e=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ## hdmi_ignore_edid_audio<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; Pretends all audio formats are unsupported by display.=
 This means ALSA<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; w=
ill default to analogue.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descr=
iption<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -----------=
--------------------------------------------------------------<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; U=
se EDID provided values (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend all audio formats are =
unsupported<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #hdmi_ignore_edid_audio=3D1<br></div><div dir=3D"lt=
r">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_force_ed=
id_audio<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Pretends =
all audio formats are supported by display, allowing<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; passthrough of DTS/AC3 even when not rep=
orted as supported.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descriptio=
n<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------------=
---------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use ED=
ID provided values (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend all audio formats are suppo=
rted<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; #hdmi_force_edid_audio=3D1<br></div><div dir=3D"ltr">&gt; &g=
t; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_force_edid_3d<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Pretends all CEA modes=
 support 3D even when edid doesn't indicate<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; support for them.<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value=
&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp;=
 &nbsp; -------------------------------------------------------------------=
------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nb=
sp; &nbsp; &nbsp; Use EDID provided values (Default)<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend 3D =
mode is supported<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; #hdmi_force_edid_3d=3D1<br></div><div dir=3D"lt=
r">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## avoid_edid_fu=
zzy_match<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Avoid fu=
zzy matching of modes described in edid.<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nb=
sp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; ----------------------------------------------------------------------=
---<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp;=
 &nbsp; &nbsp; Use fuzzy matching (Default)<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Avoid fuzzy matching=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; #avoid_edid_fuzzy_match=3D1<br></div><div dir=3D"ltr">&gt; &gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_pixel_encoding<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Force the pixel encoding=
 mode.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; By default =
it will use the mode requested from edid so shouldn't<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; need changing.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#&nbsp; &nbsp; ------------------------------------------------------------=
-------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; &nbsp; Use EDID provided values (Default)<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; RGB =
limited&nbsp; (16-235)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; 2&nbsp; &nbsp; &nbsp; &nbsp; RGB full&nbsp; &nbsp; &nbsp; ( 0-255)<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp;=
 &nbsp; YCbCr limited (16-235)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; YCbCr limited ( 0-255)<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
#hdmi_pixel_encoding=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_group<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; Defines the HDMI type<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; -------------------------------------------------------------=
------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbs=
p; &nbsp; &nbsp; &nbsp; Use the preferred group reported by the edid (Defau=
lt)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp;=
 &nbsp; &nbsp; CEA<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 2&nbsp; &nbsp; &nbsp; &nbsp; DMT<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_group=3D1<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_=
mode<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; defines scree=
n resolution in CEA or DMT format<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; H means 16:9 va=
riant (of a normally 4:3 mode).<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; 2x means pixel doubled (i.e. higher clock rate, with each pix=
el repeated<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; twice)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 4x means pixel quadrupled (i.e. higher clock rate, with each p=
ixel<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; repeated four times)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; reduced blanking means fewer bytes are used for =
blanking within the data<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; strea=
m (i.e. lower clock rate, with fewer wasted bytes)<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; Value&nbsp; &nbsp; hdmi_group=3DCEA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; hdmi_group=3DDMT<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##&nbsp; &nbsp; ---------------------------------------------------=
----------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; 1&nbsp; &nbsp; &nbsp; &nbsp; VGA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x350&nbsp; 8=
5Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp;=
 &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 640x400&nbsp; 85Hz<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 480p&nbsp; 60=
Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 72=
0x400&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4=
&nbsp; &nbsp; &nbsp; &nbsp; 720p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 60Hz<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; =
1080i 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; 640x480&nbsp; 72Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 75=
Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; =
&nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800=
x600&nbsp; 56Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 9&=
nbsp; &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 60Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 10&nbsp; &nbsp; &nbsp; 480i&nbsp; 6=
0Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
800x600&nbsp; 72Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 11&nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 75Hz<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; 12&nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp=
; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&=
nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 13&nbsp=
; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 120Hz<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 14&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; 2x&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 848x480&nbsp; 6=
0Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 15&nbsp; &nbsp=
; &nbsp; 480p&nbsp; 60Hz&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 1024x768&nbsp; 43Hz&nbsp; DO NOT USE<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; 16&nbsp; &nbsp; &nbsp; 1080p 60Hz&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x=
768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 17&=
nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 70Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 18&nbsp; &nbsp; &nbsp; 576p&nbsp; 5=
0Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1=
024x768&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 19&nbsp; &nbsp; &nbsp; 720p&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 85Hz<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 20&nbsp; &nbsp; &nbsp; 1080i 50H=
z&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 1024x768&nbsp; 120Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; 21&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1152x864&nbsp; 75Hz<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 22&nbsp; &nbsp; &nbsp; 576i=
&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280x768&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 23&nbsp; &nbsp; &nbsp; 288p&nbsp;=
 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; 24&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 75Hz<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 25&nbsp; &nbsp; &nbsp; 576i&nb=
sp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 1280x768&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; 26&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 120Hz reduced blanking<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 27&nbsp; &nbsp; &n=
bsp; 288p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1280x800&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 28&nbsp; &nbsp; &nbsp; =
288p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280x800&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; 29&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 2x&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 75Hz<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 30&nbsp; &nbsp; &nbsp; 576p&n=
bsp; 50Hz&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 1280x800&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; 31&nbsp; &nbsp; &nbsp; 1080p 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 120Hz reduced blanking=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 32&nbsp; &nbsp; &=
nbsp; 1080p 24Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 1280x960&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; 33&nbsp; &nbsp; &nbsp; 1080p 25Hz&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbsp; 85Hz<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 34&nbsp; &nbsp; &n=
bsp; 1080p 30Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1280x960&nbsp; 120Hz reduced blanking<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 35&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz=
&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128=
0x1024 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 36&nbs=
p; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 1280x1024 75Hz<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; 37&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 4x&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 85Hz<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 38&nbsp; &nbsp; &nbsp;=
 576p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1280x1024 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; 39&nbsp; &nbsp; &nbsp; 1080i 50Hz&nbsp; reduced blan=
king&nbsp; &nbsp; 1360x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; 40&nbsp; &nbsp; &nbsp; 1080i 100Hz&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1360x768&nbsp; 120Hz reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 41&nbs=
p; &nbsp; &nbsp; 720p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1400x1050&nbsp; &nbsp; &nbsp; reduced blanking<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 42&nbsp; &nbsp; &n=
bsp; 576p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 1400x1050 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 43&nbsp; &nbsp; &nbsp; 576p&nbsp; 100Hz H&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 75Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 44&nbsp; &nbsp; &nbsp; 576i&nbsp; 1=
00Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1=
400x1050 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 45&n=
bsp; &nbsp; &nbsp; 576i&nbsp; 100Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1400x1050 120Hz reduced blanking<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 46&nbsp; &nbsp; &nbsp; 1080i 120Hz&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x9=
00&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; 47&nbsp; &nbsp; &nbsp; 720p&nbsp; 120Hz&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900&nbs=
p; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 48&nbsp; &=
nbsp; &nbsp; 480p&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 49&nbsp; &nbsp; &nbsp; 480p&nbsp; 120Hz H&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 85Hz<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 50&nbsp; &nbsp; &n=
bsp; 480i&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 1440x900&nbsp; 120Hz reduced blanking<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 51&nbsp; &nbsp; &nbsp; 480i&nbsp; 120Hz=
 H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 =
60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 52&nbsp; &nbs=
p; &nbsp; 576p&nbsp; 200Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 1600x1200 65Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; 53&nbsp; &nbsp; &nbsp; 576p&nbsp; 200Hz H&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 70Hz<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 54&nbsp; &nbsp; &nbsp; 576i&nbs=
p; 200Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 1600x1200 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
55&nbsp; &nbsp; &nbsp; 576i&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 85Hz<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 56&nbsp; &nbsp; &nbsp; 480p&nbsp; 240Hz&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 120Hz=
 reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
57&nbsp; &nbsp; &nbsp; 480p&nbsp; 240Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050&nbsp; &nbsp; &nbsp; reduced blanking=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 58&nbsp; &nbsp; &=
nbsp; 480i&nbsp; 240Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1680x1050 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; 59&nbsp; &nbsp; &nbsp; 480i&nbsp; 240Hz H&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 75Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 60&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1680x1050 85Hz<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 61&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1680x1050 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 62&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1792x1344 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; 63&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1792x1344 7=
5Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 64&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1792x1344 120Hz reduced blank=
ing<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 65&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1856x1392 60Hz<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 66&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1856x1392 75Hz<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 67&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 1856x1392 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 68&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 1920x1200&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 69&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1920x1200 60Hz<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 70&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1920x1200 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; 71&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1200 8=
5Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 72&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1200 120Hz reduced blank=
ing<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 73&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 60Hz<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 74&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 75Hz<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 75&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 1920x1440 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 76&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 2560x1600&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 77&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 2560x1600 60Hz<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 78&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 2560x1600 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; 79&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 8=
5Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 80&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 120Hz reduced blank=
ing<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 81&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1366x768&nbsp; 60Hz<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 82&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1080p&nbsp; &nbsp; 60Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 83&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1600x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanki=
ng<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 84&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2048x1152&nbsp; &nbsp; &nbsp; =
reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8=
5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 720p&nbsp; &nbsp=
; &nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 86&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1366x768&nbsp; &nbs=
p; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #hdmi_mode=3D1<br></div><div di=
r=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## config=
_hdmi_boost<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; config=
ure the signal strength of the HDMI interface.<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Va=
lue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; ----------------------------------------------------------------=
---------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; =
&nbsp; &nbsp; &nbsp; (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; Try if=
 you have interference issues with HDMI<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 5<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &n=
bsp; &nbsp; &nbsp; Maximum<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; #config_hdmi_boost=3D0<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_=
ignore_cec_init<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Do=
esn't sent initial active source message.&nbsp; Avoids bringing<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; (CEC enabled) TV out of stand=
by and channel switch when rebooting.<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp;=
 &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; -------------------------------------------------------------------------=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &n=
bsp; &nbsp; Normal behaviour (Default)<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Doesn't sent initial acti=
ve source message<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; #hdmi_ignore_cec_init=3D1<br></div><div dir=3D"=
ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## hdmi_ignore=
_cec<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Pretends CEC =
is not supported at all by TV.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; No CEC functions will be supported.<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; --------------------------------------------------------------=
-----------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp=
; &nbsp; &nbsp; &nbsp; Normal behaviour (Default)<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend CEC is=
 not supported by TV<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; #hdmi_ignore_cec=3D1<br></div><div dir=3D"lt=
r">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ################=
################################################################<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Overscan Video Settings<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; #############################################=
###################################<br></div><div dir=3D"ltr">&gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## overscan_left<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on left<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; #overscan_left=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ## overscan_right<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on right<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; #overscan_right=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ## overscan_top<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on top<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #ov=
erscan_top=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## overscan_bottom<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on bottom<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #over=
scan_bottom=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## disable_overscan<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; Set to 1 to disable overscan<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; --------------------------------------------------------=
-----------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
0&nbsp; &nbsp; &nbsp; &nbsp; Overscan Enabled (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Oversc=
an Disabled<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #disable_overscan=3D1<br></div><div dir=3D"ltr">&gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ######################=
##########################################################<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; Framebuffer Video Settings<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ################################################=
################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ## framebuffer_width<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Console framebuffer width in pix=
els. Default is display width minus<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; overscan.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; #framebuffer_width=3D0<br></div><div =
dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## fram=
ebuffer_height<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Con=
sole framebuffer height in pixels. Default is display height minus<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; overscan.<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #frame=
buffer_height=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ## framebuffer_depth<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; Console framebuffer depth in bits per pixel.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; --------------------------------------=
-----------------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; Valid, but default RGB palet=
te makes an unreadable screen<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; 16&nbsp; &nbsp; &nbsp; (Default)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; 24&nbsp; &nbsp; &nbsp; Looks better but has corr=
uption issues as of 2012/06/15<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; 32&nbsp; &nbsp; &nbsp; Has no corruption issues but needs fram=
ebuffer_ignore_alpha=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and shows the wrong colors as of =
2012/06/15<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; #framebuffer_depth=3D16<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## framebuffer_ignore_a=
lpha<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set to 1 to d=
isable alpha channel. Helps with 32bit.<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbs=
p; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; -----------------------------------------------------------------------=
--<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; =
&nbsp; &nbsp; Enable Alpha Channel (Default)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disable Alpha Chann=
el<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; #framebuffer_ignore_alpha=3D0<br></div><div dir=3D"ltr">&gt; &=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; #########################=
#######################################################<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; General Video Settings<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ###################################################=
#############################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ## display_rotate<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Rotate the display clockwise or flip t=
he display.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; The 90=
 and 270 degrees rotation options require additional memory on GPU,<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; so won't work with the 16=
M GPU split.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------------------=
---------------------------------------------------<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 0 degrees (D=
efault)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &n=
bsp; &nbsp; &nbsp; 90 degrees<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 180 degrees<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 270 degrees=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0x10000&nbsp; Hor=
izontal flip<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0x200=
00&nbsp; Vertical flip<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; #display_rotate=3D0<br></div><div dir=3D"l=
tr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## dispmanx_off=
line<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set to "1" to=
 enable offline compositing<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
dispmanx_offline=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ###############################################=
#################################<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; Licensed Codecs<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Hardware decoding of additional=
 codecs can be enabled by purchasing a<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; license that is locked to the CPU serial number of your Raspb=
erry Pi.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; Up to 8 licenses per CODEC can be specified as =
a comma seperated list.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; #########################################=
#######################################<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## decode_MPG2<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; License key to allow hardware M=
PEG-2 decoding.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; #decode_MPG2=3D0x12345678<br></div><div dir=3D"lt=
r">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## decode_WVC1<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; License key to allo=
w hardware VC-1 decoding.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; #decode_WVC1=3D0x12345678<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ######=
##########################################################################<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Camera Settings<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ###########################################=
#####################################<br></div><div dir=3D"ltr">&gt; &gt; &=
gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## start_x<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set to "1" to enable the camera mod=
ule.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; Enabling the camera requires gpu_mem option =
to be specified with a value<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; of at least 128.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; s=
tart_x=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ## disable_camera_led<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; Turn off the red camera led when recording video or t=
aking a still<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; pict=
ure.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -------------------------------=
------------------------------------------<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; LED enabled (Default)=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &n=
bsp; &nbsp; LED disabled<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; #disable_camera_led=3D1<br></div><div di=
r=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; #########=
#######################################################################<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Test Settings<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ################################################=
################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ## test_mode<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; Enable test sound/image during boot for =
manufacturing test.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descriptio=
n<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------------=
---------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabl=
e Test Mod (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; 1&nbsp; &nbsp; &nbsp; &nbsp; Enable Test Mode<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #test_mode=3D0<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; #####################################################################=
###########<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Memory Settin=
gs<br></div><div dir=3D"ltr">&gt; &gt; &gt; ###############################=
#################################################<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## disable_l2cache=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Disable arm acces=
s to GPU's L2 cache. Needs corresponding L2 disabled<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; kernel.<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&=
nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; --------------------------------------------------------------------=
-----<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbs=
p; &nbsp; &nbsp; Enable L2 Cache (Default)<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disable L2 cache<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; #disable_l2cache=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ## gpu_mem<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for all board revisi=
ons.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; Default 64<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #gpu_mem=3D128<br></div=
><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
# gpu_mem_256<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; GPU =
memory allocation in MB for 256MB board revision.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; This option overrides gpu_mem.<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #g=
pu_mem_256=3D192<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## gpu_mem_512<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; GPU memory allocation in MB for 512MB board revision.<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; This option overri=
des gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #gpu_mem_512=3D448<br></div><div dir=3D"ltr">&gt; &=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## gpu_mem_1024<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB=
 for 1024MB board revision.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbs=
p; &nbsp; This option overrides gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #gpu_mem_1024=3D944<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ## disable_pvt<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
Disable adjusting the refresh rate of RAM every 500ms<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; (measuring RAM temparature).<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
#disable_pvt=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ###################################################=
#############################<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; CMA - Dynamic Memory Split<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; CMA enables dynamic mana=
gement of the ARM and GPU memory split at runtime.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; The f=
ollowing options need to be in cmdline.txt for CMA to work:<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; coherent_pool=3D6M smsc95xx.turbo=
_mode=3DN<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; #######################################################=
#########################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ## cma_lwm<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; When GPU has less than cma_lwm (low water mark) m=
emory available it<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 will request some from ARM.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; #cma_lwm=3D16<br></div><div dir=3D"l=
tr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## cma_hwm<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; When GPU has more than=
 cma_hwm (high water mark) memory available it<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; will release some to ARM.<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #cma_hwm=
=3D32<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##############################################################=
##################<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Boot O=
ption Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; ###################=
#############################################################<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## dis=
able_commandline_tags<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; Stop start.elf from filling in ATAGS (memory from 0x100) before<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; launching kernel<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; #disable_commandline_tags=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ## cmdline (string)<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Command line parameters. Can be us=
ed instead of cmdline.txt file<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; #cmdline=3D""<br></div><div dir=3D=
"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## kernel (st=
ring)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Alternative =
name to use when loading kernel.<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; #kernel=3D""<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## kernel_=
address<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Address to=
 load kernel.img file at<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; #kernel_address=3D0x00000000<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## k=
ernel_old<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Support =
loading old kernels<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descriptio=
n<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------------=
---------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabl=
ed (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbs=
p; &nbsp; &nbsp; &nbsp; Load kernel at address 0x00000000<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #kernel=
_old=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ## ramfsfile (string)<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; ramfs file to load<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #ramfsfile=3D""<br></div><=
div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## =
ramfsaddr<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Address =
to load ramfs file at<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; #ramfsaddr=3D0x00000000<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## initram=
fs (string address)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; ramfs file and address to load it at (it's like ramfsfile+ramfsaddr in<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; one option).<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; NOTE: this option uses different syntax than all other o=
ptions - you<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; should not use "=3D" character here.<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #initramfs i=
nitramf.gz 0x00800000<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ## device_tree_address<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; &nbsp; Address to load device_tree at<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
#device_tree_address=3D0x00000000<br></div><div dir=3D"ltr">&gt; &gt; &gt;<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ## init_uart_baud<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Initial uart baud rate.<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; Default 115200<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; #init_uart_baud=3D115200<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
 init_uart_clock<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; I=
nitial uart clock.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 3000000 (3MHz)<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; #init_uart_clock=3D3000000<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ## init_emmc_clock<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Initial emmc clock, increasing this=
 can speedup your SD-card.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 100000000 (100=
mhz)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; #init_emmc_clock=3D100000000<br></div><div dir=3D"ltr">&gt; =
&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## boot_delay<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Wait for a given number of s=
econds in start.elf before loading<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; kernel.img.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; delay =3D (1000 * bo=
ot_delay) + boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 1<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #bo=
ot_delay=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ## boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; Wait for a given number of milliseconds in start.elf bef=
ore loading<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; kernel=
.img.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; delay =3D (1000 * boot_delay) + boot_delay_=
ms<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #boot_delay_ms=3D0<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
## avoid_safe_mode<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 Adding a jumper between pins 5 &amp; 6 of P1 enables a recovery Safe Mode.=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; If pins 5 &amp; 6=
 are used for connecting to external devices (e.g. GPIO),<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; then this setting can be used to en=
sure Safe Mode is not triggered.<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbs=
p; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ---=
----------------------------------------------------------------------<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; =
&nbsp; Respect Safe Mode input (Default)<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Ignore Safe Mode input<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; #avoid_safe_mode=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ## disable_splash<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Avoids the rainbow splash screen on=
 boot.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -----------------------------=
--------------------------------------------<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Splash screen enabl=
ed (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbs=
p; &nbsp; &nbsp; &nbsp; Splash screen disabled<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #disable_splash=3D=
1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##################################################################=
##############<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Overclocki=
ng Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; ARM, SDRAM and GPU each have their own PLL=
s and can have unrelated<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
frequencies.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; The GPU core, h264, v3d and isp share a PL=
L, so need to have related<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; frequencies.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; pll_freq =
=3D floor(2400 / (2 * core_freq)) * (2 * core_freq)<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; gpu_freq =3D pll_freq / [even number]<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; The effective gpu_freq is automatically rounded to nearest even in=
teger, so<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; asking for core=
_freq =3D 500 and gpu_freq =3D 300 will result in divisor of<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; 2000/300 =3D 6.666 =3D&gt; 6 and so 333=
.33MHz.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; Stan=
dard Profiles:<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; arm_freq&nbsp; &nbsp; core_fr=
eq&nbsp; &nbsp; sdram_freq&nbsp; &nbsp; over_voltage<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; ----------------------------------------=
---------------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; None&nbsp; &nbsp; &nbsp; &nbsp; 700&nbsp; &nbsp; &nbsp; &nb=
sp; 250&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Modest&nbsp=
; &nbsp; &nbsp; 800&nbsp; &nbsp; &nbsp; &nbsp; 300&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; Medium&nbsp; &nbsp; &nbsp; 900&nbsp; &nbsp;=
 &nbsp; &nbsp; 333&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 2<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
High&nbsp; &nbsp; &nbsp; &nbsp; 950&nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Turbo&nbsp; &nbsp; &nbsp; &=
nbsp; 1000&nbsp; &nbsp; &nbsp; &nbsp; 500&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 500&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ########################=
########################################################<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## force_t=
urbo<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Control the k=
ernel "ondemand" governor. It has no effect if no overclock<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; settings are specified.<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; ------------------------------------------=
-------------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Enable dynamic clocks and voltag=
e for the ARM core, GPU core and<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SDRAM (Default).<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; Overclocking of h264_freq, v3d_freq and isp_freq is ignored.<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &=
nbsp; Disable dynamic clocks and voltage for the ARM core, GPU core<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; and SDRAM.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Overclocking of h264_freq, v3d_freq a=
nd isp_freq is allowed.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; #force_turbo=3D0<br></div><div dir=3D"ltr=
">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## initial_turbo<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Enables turbo mode=
 from boot for the given value in seconds (up to 60)<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; or until cpufreq sets a frequency. Can h=
elp with sdcard corruption if<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; overclocked.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #ini=
tial_turbo=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## temp_limit<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; Overheat protection. Sets clocks and voltages to defaul=
t when the SoC<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; rea=
ches this Celsius value.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; Setting this higher than default voids warranty.<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; Default 85<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; #temp_limit=3D85<br></div><div dir=3D"ltr">&g=
t; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## arm_freq<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Frequency of ARM in MHz.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##&nbsp; &nbsp; Default 700.<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #arm_freq=3D700<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## ar=
m_freq_min<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Minimum=
 frequency of ARM in MHz (used for dynamic clocking).<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; Default 700.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; #arm_freq_min=3D700<br></div><div dir=3D"ltr">&=
gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## gpu_freq<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Sets core_freq, h264_freq,=
 isp_freq, v3d_freq together.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; #gpu_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ## core_freq<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; Frequency of GPU processor core in MHz. It has an imp=
act on ARM<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; perform=
ance since it drives L2 cache.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; #core_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ## core_freq_min<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; Minimum frequency of GPU processor core in MHz =
(used for dynamic<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; =
clocking). It has an impact on ARM performance since it drives L2 cache.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #core_freq_min=3D250<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
## h264_freq<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Frequ=
ency of hardware video block in MHz.<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; #h264_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ## isp_freq<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Frequency of image sensor pipeline block in MH=
z.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #isp_freq=3D250<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
## v3d_freq<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Freque=
ncy of 3D block in MHz.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #v=
3d_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ## sdram_freq<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; Frequency of SDRAM in MHz.<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Defau=
lt 400.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; #sdram_freq=3D400<br></div><div dir=3D"ltr">&gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## sdram_freq_min<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Minimum frequency of SDRAM in MH=
z (used for dynamic clocking).<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 400.<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; #sdram_freq_min=3D400<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ## avoid_pwm_pll<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; Don't dedicate a pll to PWM audio. This wi=
ll reduce analogue audio<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; quality slightly. The spare PLL allows the core_freq to be set<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; independently from the =
rest of the gpu allowing more control over<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; overclocking.<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp=
; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; ------------------------------------------------------------------------=
-<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &=
nbsp; &nbsp; Linked core_freq (Default)<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Unlinked core_freq<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; #avoid_pwm_pll=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ############################################=
####################################<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; Voltage Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; #####=
###########################################################################=
<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ## current_limit_override<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; Disables SMPS current limit protection. Can help if you are=
 currently<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; hitting=
 a reboot failure when overclocking too high.<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #current_limit_o=
verride=3D0x5A000020<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ## over_voltage<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; ARM/GPU core voltage adjust.<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; -----------------------------------------------------=
--------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbs=
p; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbs=
p; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &n=
bsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -=
7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp;=
 &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -2=
&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Defa=
ult)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp=
; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbs=
p; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 5&n=
bsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 =
V (requires force_turbo=3D1 or current_limit_override)<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;=
 V (requires force_turbo=3D1 or current_limit_override)<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #over_v=
oltage=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ## over_voltage_min<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; Minimum ARM/GPU core voltage adjust (used for dynamic c=
locking).<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; --------------------------=
-----------------------------------------------<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.8=
25 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nb=
sp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbs=
p; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -9=
&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; =
&nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -4&=
nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##=
&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &n=
bsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &=
nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1=
.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp=
; &nbsp; &nbsp; &nbsp; 1.375 V (requires force_turbo=3D1)<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nb=
sp; V (requires force_turbo=3D1)<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; #over_voltage_min=3D0<br></div><=
div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## =
over_voltage_sdram<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 Sets over_voltage_sdram_c, over_voltage_sdram_i, over_voltage_sdram_p<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; together<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; -------------------------------------------------=
------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp;=
 &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1=
2&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.9=
75 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbs=
p; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&=
nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &=
nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V =
(Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; =
&nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nb=
sp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp;=
 &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1=
.375 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nb=
sp; &nbsp; &nbsp; 1.4&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; #over_voltage_sdram=3D0<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## o=
ver_voltage_sdram_c<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; SDRAM controller voltage adjust.<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &n=
bsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -=
------------------------------------------------------------------------<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nb=
sp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1=
5&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nb=
sp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &n=
bsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1=
.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &n=
bsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.=
15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp=
; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &=
nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp;=
 &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nb=
sp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp=
; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; #over_voltage_sdram_c=3D0<br></div><div dir=3D"ltr">&gt; &gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## over_voltage_sdram_i<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; SDRAM I/O voltage adjus=
t.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------------------=
----------------------------------------<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nb=
sp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -=
13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&n=
bsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &n=
bsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp=
; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.=
075 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nb=
sp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &n=
bsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbs=
p; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; =
&nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nb=
sp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp=
; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; =
&nbsp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #over_voltage_sdram_=
i=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ## over_voltage_sdram_p<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; SDRAM phy voltage adjust.<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Valu=
e&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; ------------------------------------------------------------------=
-------<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; =
&nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp;=
 &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nb=
sp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -1=
1&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp=
; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp=
; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -=
6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp;=
 &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbs=
p; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp;=
 &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &=
nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; =
1.4&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #over_voltage_sdram_p=3D0<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##################=
##############################################################<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; USB Power<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; #############################################################=
###################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ## max_usb_current<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##&nbsp; &nbsp; When set to 1, change the output current limit =
(for all 4 USB<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; por=
ts combined) from 600mA to double that, 1200mA.<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; T=
his option is not available for Model A/B boards.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp;=
 Default 0.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #max_usb_current=3D0<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; #######################=
#########################################################<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; Base Device Tree Parameters<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ################################################=
################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ## audio<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; Enable the onboard ALSA audio<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Daudio=3Doff<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## i2c_arm=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Enable the ARM's =
i2c interface<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Di=
2c_arm=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ## i2c_vc<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&n=
bsp; &nbsp; Enable the i2c interface<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Usually rese=
rved for the VideoCore processor<br></div><div dir=3D"ltr">&gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; #dtparam=3Di2c_vc=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; ## i2c_arm_baudrate<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set the baudrate of the ARM's i2c i=
nterface<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default 100000.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Di2c=
_arm_baudrate=3D100000<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ## i2c_vc_baudrate<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##&nbsp; &nbsp; Set the baudrate of the VideoCore i2c interf=
ace<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##&nbsp; &nbsp; Default 100000.<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Di2c_vc_b=
audrate=3D100000<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## i2s<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&=
nbsp; &nbsp; Set to "on" to enable the i2s interface<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Di2s=3Doff<br></div><div dir=3D"ltr">&=
gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## spi<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set to "on" to enable the spi i=
nterfaces<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Dspi=
=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ## random<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &=
nbsp; Set to "on" to enable the hardware random<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; D=
efault off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; #dtparam=3Drandom=3Doff<br></div><div dir=3D"ltr">&=
gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## uart0<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set to "off" to disable uart0=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; Default on.<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Duart0=3Don<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ## watchdog<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set=
 to "on" to enable the hardware watchdog<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default =
off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; #dtparam=3Dwatchdog=3Doff<br></div><div dir=3D"ltr">&gt; &gt=
; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## act_led_trigger<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Choose which activity the =
LED tracks.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Use "heartbeat" for a nice load ind=
icator.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##&nbsp; &nbsp; Default mmc.<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Dact_led=
_trigger=3Dmmc<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ## act_led_activelow<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ##&nbsp; &nbsp; Set to "on" to invert the sense of the LED<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Dact_led_activelow=3D=
off<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; ## act_led_gpio<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; Set which GPIO to use for the activity LED<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbs=
p; In case you want to connect it to an external device<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp=
; &nbsp; Default 16 on a non-Plus board, 47 on a Plus or Pi 2.<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #d=
tparam=3Dact_led_gpio=3D47<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ## pwr_led_trigger<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##&nbsp; &nbsp; Choose which activity the LED tracks.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; ##&nbsp; &nbsp; Use "heartbeat" for a nice load indicator.<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; ##&nbsp; &nbsp; Not available on Model A/B boards.<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nb=
sp; Default mmc.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Dpwr_led_trigger=3Dmmc<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; ## pwr_l=
ed_activelow<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set t=
o "on" to invert the sense of the LED<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Not availab=
le on Model A/B boards.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; #d=
tparam=3Dpwr_led_activelow=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; ## pwr_led_gpio<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; ##&nbsp; &nbsp; Set which GPIO to use for the PWR L=
ED<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; ##&nbsp; &nbsp; In case you want to connect it to an external =
device<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; ##&nbsp; &nbsp; Not available on Model A/B boards.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; ##&nbsp; &nbsp; Default 35.<br></div><div dir=3D"ltr">&gt; &gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; #dtparam=3Dpwr_led_gpio=3D35<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; # Enable SPI bus<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; dtparam=3Dspi=3Don<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; # Enable UART<br></div><div dir=3D"ltr">&gt; &gt; &gt; enable_uart=3D1<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; # Enable VC4 Graphics<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; dtoverlay=3Dvc4-kms-v3d<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; # Enable Sony RaspberryPi Camera(imx219)<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; dtoverlay=3Dimx219<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; # Enable USB host mode<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
dtoverlay=3Ddwc2,dr_mode=3Dhost<br></div><div dir=3D"ltr">&gt; &gt; &gt; # =
Enable CAN<br></div><div dir=3D"ltr">&gt; &gt; &gt; dtoverlay=3Dmcp2515-can=
0,oscillator=3D16000000,interrupt=3D25<br></div><div dir=3D"ltr">&gt; &gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; # Enable WM8960<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; dtoverlay=3Dwm8960-soundcard<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; Any help will be appreciated!<br></div><div dir=3D"ltr">&g=
t; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; <=
br></div><div dir=3D"ltr">&gt;<br></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-<br>Links: You receive all messages sent to this group.<br>=
View/Reply Online (#60534): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60534" rel=3D"nofollow" target=3D"_blank">https://lists.yoctopro=
ject.org/g/yocto/message/60534</a><br>Mute This Topic: <a href=3D"https://l=
ists.yoctoproject.org/mt/99985319/7732448" rel=3D"nofollow" target=3D"_blan=
k">https://lists.yoctoproject.org/mt/99985319/7732448</a><br>Group Owner: y=
octo+owner@lists.yoctoproject.org<br>Unsubscribe: <a href=3D"https://lists.=
yoctoproject.org/g/yocto/unsub" rel=3D"nofollow" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/unsub</a> [oosman3@yahoo.com]<br>-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br><br></div>
            </div>
        </div></body></html>
------=_Part_881375_242735549.1688736608843--

