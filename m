Return-Path: <oosman3@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF274EB64DC
	for <webhook@archiver.kernel.org>; Mon, 10 Jul 2023 13:46:50 +0000 (UTC)
Received: from sonic308-56.consmr.mail.ne1.yahoo.com (sonic308-56.consmr.mail.ne1.yahoo.com [66.163.187.31])
 by mx.groups.io with SMTP id smtpd.web10.40029.1688996801407949423
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jul 2023 06:46:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=mNwmpnBX;
 spf=neutral (domain: yahoo.com, ip: 66.163.187.31, mailfrom: oosman3@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688996800; bh=zM0Gy/Ym55TVFyxbE6689/CDddhTmWCO4Bh8Iq5kKbg=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=mNwmpnBXQrvPsSEBjtqM9o+L2vRezv2GinZyYdnUIp/3Ppg4OjiHxjRw1JjAfyHTI8pZQfDZpxA1XXrDWjVytDF0zsSglpak24qZkodN/+Ei3c/poGXuENenJtd5MTqvjKnPY5E0eT4SZc94Y1Acpig9+dv4ev0QpAdEO9qe7lulWjJtQgWtuGqaTdo8Wjttq/lomna8eFetAslesmKHYSNH9M3yQZqgJhHmGizY6fUh7qk/taB4nl49p+mcM0I5Y3rNM30dhY28QR5vbuYUA0g50+9E9B6Uzw7xhF6DgoRYvRAzZA0v7uVqIc1bmtoSFLhdSj8jECm/4OGNp8XpUA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688996800; bh=KqkL7AqdoOTELlxlJPZn5eehxwrXrVZj0lNLyGuQW8b=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=CSPiKR7izuhtst75sxdCoShhgLhvtJamaqT7bngDaS42G5z6t574CJpCMxSt7qX1s8/Xx3Bj5lql/CGekoMOKaj1kBhMkon2lsP9G6gna4dArnUkfoiSK1NKMMfVZa0X2FBWfrQzAxuhccI8d2WdIZqy4wb9BOMLbeiKqnlKT7s85D/MAbl9rZ3Y4fo7P0YfIkatb+70XQdRO4xhN/YhRFKpuQhHpWoorgbgZn5K9UN2qu7BTaC20W2lAPQwwuMew1RBwo4VQYsVOG23q4KEC4FtgrCMhGm4zgM6CFVpBs3RJc85tXW3JfmkAtO5SJpMzaLEmiabJP0qwBinp7W+rw==
X-YMail-OSG: PWGUpvQVM1l2R7KJ9V_o7aLMdVghX1wOIGvf_0wqFIWmnxpe66JsfYO4FAznXnD
 dtp0nw3xuQ0W0KZ9wGwmqcsTgs86GEDHM8RsMeQ97pcvVeZDKHxDLuXq.0wz3w4HtRovrOr8doO1
 ODXuHKlJgpmaW0o1M9h02c8tfAjAJVeoYIKqXeXdg5Y_uRwCJPgYi3BomtBxYDiwE8QYFYw6EacF
 hU5PABjIXF.X87morCXHJYluevuP07YDHjDvnDIEGDowAp4jgYkX9vTet7kyzcoweCjaz.u.3uU4
 YtLGISEC0NHnB._btTpop4nFIGtec6zqqqb3h5s9p8xK2xqdZSuPLeY9Y84CNIpcdUVxqbrj8vO5
 oVrZnLdywH7qkerK_PbtpRyAS_Hx.opJnPlTu7HUco7ou3l5PfFO_cYw8YOlmxVdFeuRyCt0qoyT
 si0VBJlOf4KRF8X_F7NDwB00L5NostJ_28MImOGgXl5bWi9Ir2iURAX1GAGrnSKXybO0MuQj9pYt
 LKMSRWpKd05OFV17NnMppvDh4s281zor2dG1aWe8UU2HhZ3BAbbw9sHefqGQE47JnLFMJExZ7kID
 FQXTEbpT4yC77z62nncSD13jr6VCi4Fsy6tmDcazODmowzeKO0Sxzvbw7RBnnQIeKPxCAa.u_AKr
 z_7qTa5hwC__GGH.iuSGnLggUWzUOYVunYZcmpjWXAKJKegRGxCPi5sHSDwGk4mpAGUIIys.B.yF
 ieaVrjUY0_Q1hs_Fbp3XIyGLETRtZYD7REzUB9T68Oo2oalIMilwh5mpRNf1468Bljx7z0FRZcVY
 sYZP7WnNV.0GQQdczPNBdGI3QSXqyypMMRoadA3q5YHmo4FSxLtqThG9ncy3Gn0uWV3W9ZjdFGZK
 wZjGkEpjnvMZvx0AsVSKn_BJT6YG.r42vCttchmprCbubOo9LFkaGHpL.92B2s7cnciuBBWN9XBN
 r7HGSppjuhNoT9hhln03zpfGJJ0E8djlRHPl6RYAhUSwg7QK2k9XxNltaUwhBkQBPN6v8xLBthe8
 Fb5rQYPw1ge53onRNcPrS2kKwB5hx3S4kOy7USVzGMGInQjcTg38.pgsxze_60x5620G6wWwsJre
 LpXBi9quICuPnJz57gltrcZ6yZfsxLMxUyon6QInxNtqKCENJCAQO4vqLQuFwRZXUg17XO4MeZn2
 UrOun6zHbp3RLy1RJh8t3RlfrlUt8ugDjXyIaJq_51yvXc3SV1mE7ijt2esLeNc16x7kKh58W56m
 43.rqwc0RV5INTaH9yFkvvQDi..eol5HWLlQoTtYiemdoFv6zc41ukYr6kzY_zFCIWBK.nPt3q2y
 d2Cij7GOid2_xgBtzTAU40tRWkYC7QoV1.3SmGdQNwtPRzYDJdKQ9i8Z3xhwYKPsHFxSR80VJw61
 4d6g77KGIUfN2EBtPNnTLorm8Eo7bydOSgktvcKVVItyb5KIkIh25uoiNTHt3BTwMaJvhriBVUNg
 ClYCtNTCfkKtS1Xo8fd_vs.6mLKMK.IZP46WQQPiTQro3n0hnlf6tCSK0I4cWCLebHjm.vv5wIlc
 2Z9LcT1yFtLt46BKJccBc0Zi1u6KTPVR1oPrY2eR7HtNDVatNLdiHjek_nUdFHa9bgPEZDe50G2E
 m5d6lx315useTG4NBtwu2BR.xUpYviNjCiHEn0dg0g1deIDaY5.E_BbPnGr1Zr1rDb4.RfSXBC9B
 amuiMMPqDx9arWlnuB.zJQSxAfxqXt1IzPJG37Rd0ouIXM2TROjCuvE9HCTiYxt9utg3JlCBl5FN
 wafyuxKXPQ46gateJXhASkoVzGJNgsFLKa73Y9dDxzp1ft3xwmJrkE3ge0131PEUK4ZW3rbuHSr.
 MiNNpgCisB5GKIXqKvA3nTL.MLkjJkWsXrkY5oK4Fv1HwGdDXAxuu.RW.OqGAmjffhUCXt5f5KK_
 67SWWfCX6wlxx6I2ogM9iUqNkf5d5EwiOeznLmWkfCSMGZWZcOPTdtwSdBAj0U4zszvLvbiOalHB
 c1nFz1QIFIFXV9sg9M5QUT8taCjzfOJkex11EEzXBq7aMuzE4FfNaLtWeaxHBOeUr48jesOMuMrw
 0ShB2Wr344fP.vQN5SckymNh3zG6MrRZvNNJHO6ljVtb2P_QEqjnukbzVdxCb2H9WYIffJOxDEfF
 fKWNvV3SpKOIcHBvOdPFp4Iawv5mPdfZXr3m_SmuJ9gkLzwB6jRK9TidEZWh8vAHg8OaJ3QEOlBn
 lX_awQn5obZGn1..A8MIe3cxZZFVUrWDBpNN6viU-
X-Sonic-MF: <oosman3@yahoo.com>
X-Sonic-ID: 2b4558fa-4f6a-4c52-8e5e-4bb5533a6668
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ne1.yahoo.com with HTTP; Mon, 10 Jul 2023 13:46:40 +0000
Date: Mon, 10 Jul 2023 13:36:37 +0000 (UTC)
From: Oosman Saeed <oosman3@yahoo.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <602258215.1934543.1688996197245@mail.yahoo.com>
In-Reply-To: <CAMKF1sp5QZtCO3Zix0MW1iaGWh6GOC0Ogn==0EcCHgBcHjUuOg@mail.gmail.com>
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org> <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com> <1248822682.421971.1688655973025@mail.yahoo.com> <CAMKF1sqfmUT0oGSR14ooDzOM6J+37Bo9ykRkZGu8uD2=ORdWfw@mail.gmail.com> <876850182.455807.1688659443409@mail.yahoo.com> <CAMKF1spu_ufR02HpimrDX77KpMDHB-VGvH5Yz88SghQ3zMro0Q@mail.gmail.com> <998277780.881376.1688736608875@mail.yahoo.com> <CAMKF1sp5QZtCO3Zix0MW1iaGWh6GOC0Ogn==0EcCHgBcHjUuOg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_1934542_1258510844.1688996197204"
X-Mailer: WebService/1.1.21638 YMailNorrin
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jul 2023 13:46:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60544

------=_Part_1934542_1258510844.1688996197204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,=20

there is a lot of stuff in /lib/firmware, here is the filtered output:
/lib/firmware$ find . -name *brcmfmac43455*
./brcm/brcmfmac43455-sdio.Raspberry Pi Foundation-Raspberry Pi Compute Modu=
le 4.txt
./brcm/brcmfmac43455-sdio.acepc-t8.txt
./brcm/brcmfmac43455-sdio.bin
./brcm/brcmfmac43455-sdio.MINIX-NEO Z83-4.txt
./brcm/brcmfmac43455-sdio.raspberrypi,3-model-b-plus.txt
./brcm/brcmfmac43455-sdio.raspberrypi,3-model-a-plus.txt
./brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.txt
./brcm/brcmfmac43455-sdio.Raspberry Pi Foundation-Raspberry Pi 4 Model B.tx=
t
./brcm/brcmfmac43455-sdio.AW-CM256SM.txt
./brcm/brcmfmac43455-sdio.clm_blob


What should I be looking for?
Can you show me your config.txt in /boot ? Maybe something is missing there=
?
Thank you


    On Friday, July 7, 2023 at 01:11:30 PM CDT, Khem Raj <raj.khem@gmail.co=
m> wrote: =20
=20
 I see bluetooth in the logs but not wifi,

it should be something like

[=C2=A0 69.625830] brcmfmac: F1 signature read @0x18000000=3D0x15264345
[=C2=A0 69.638142] brcmfmac: brcmf_fw_alloc_request: using
brcm/brcmfmac43455-sdio for chip BCM4345/6

check whats in /lib/firmware/


On Fri, Jul 7, 2023 at 6:30=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> wro=
te:
>
> Here is my boot output for the raspberrypi, does anything stick out as th=
e cause of not loading the wifi driver? Or something that points to what wi=
fi driver I need?
>
> Thanks!
>
> -------------------------------------------------------------------------=
------------------------------------------------
>
> U-Boot 2022.01 (Jan 10 2022 - 18:46:34 +0000)
>
> DRAM:=C2=A0 948 MiB
> RPI 4 Model B (0xa03115)
> MMC:=C2=A0 mmcnr@7e300000: 1, mmc@7e340000: 0
> Loading Environment from FAT... OK
> In:=C2=A0 =C2=A0 serial
> Out:=C2=A0 serial
> Err:=C2=A0 serial
> Net:
> Warning: ethernet@7d580000 MAC addresses don't match:
> Address in DT is=C2=A0 =C2=A0 =C2=A0 =C2=A0 e4:5f:01:ef:cf:95
> Address in environment is=C2=A0 =C2=A0 dc:a6:32:e3:eb:fe
> eth0: ethernet@7d580000
> PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> starting USB...
> Bus usb@7e980000: USB DWC2
> Bus xhci_pci: Register 5000420 NbrPorts 5
> Starting the controller
> USB XHCI 1.00
> scanning bus usb@7e980000 for devices... 1 USB Device(s) found
> scanning bus xhci_pci for devices... 2 USB Device(s) found
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 scanning usb for storage devices... 0 Storage =
Device(s) found
> Hit any key to stop autoboot:=C2=A0 0
> switch to partitions #0, OK
> mmc0 is current device
> Scanning mmc 0:1...
> Found U-Boot script /boot.scr
> 423 bytes read in 6 ms (68.4 KiB/s)
> ## Executing script at 02400000
> Saving Environment to FAT... OK
> rpipart not set, default to 2
> 24021504 bytes read in 1019 ms (22.5 MiB/s)
> Moving Image from 0x80000 to 0x200000, end=3D1a00000
> ## Flattened Device Tree blob at 2eff1f00
>=C2=A0 =C2=A0 Booting using the fdt blob at 0x2eff1f00
>=C2=A0 =C2=A0 Using Device Tree in place at 000000002eff1f00, end 00000000=
2f002fe7
>
> Starting kernel ...
>
> [=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0000000000 [0x41=
0fd083]
> [=C2=A0 =C2=A0 0.000000] Linux version 6.1.35-v8 (oe-user@oe-host) (aarch=
64-oe-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP P=
REEMPT Sun Jun 25 13:09:39 UTC 2023
> [=C2=A0 =C2=A0 0.000000] random: crng init done
> [=C2=A0 =C2=A0 0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.5
> [=C2=A0 =C2=A0 0.000000] efi: UEFI not found.
> [=C2=A0 =C2=A0 0.000000] Reserved memory: bypass linux,cma node, using cm=
dline CMA params instead
> [=C2=A0 =C2=A0 0.000000] OF: reserved mem: node linux,cma compatible matc=
hing fail
> [=C2=A0 =C2=A0 0.000000] Zone ranges:
> [=C2=A0 =C2=A0 0.000000]=C2=A0 DMA=C2=A0 =C2=A0 =C2=A0 [mem 0x00000000000=
00000-0x000000003b3fffff]
> [=C2=A0 =C2=A0 0.000000]=C2=A0 DMA32=C2=A0 =C2=A0 empty
> [=C2=A0 =C2=A0 0.000000]=C2=A0 Normal=C2=A0 empty
> [=C2=A0 =C2=A0 0.000000] Movable zone start for each node
> [=C2=A0 =C2=A0 0.000000] Early memory node ranges
> [=C2=A0 =C2=A0 0.000000]=C2=A0 node=C2=A0 0: [mem 0x0000000000000000-0x00=
0000003b3fffff]
> [=C2=A0 =C2=A0 0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0=
00000003b3fffff]
> [=C2=A0 =C2=A0 0.000000] On node 0, zone DMA: 19456 pages in unavailable =
ranges
> [=C2=A0 =C2=A0 0.000000] cma: Reserved 64 MiB at 0x0000000036000000
> [=C2=A0 =C2=A0 0.000000] percpu: Embedded 29 pages/cpu s79528 r8192 d3106=
4 u118784
> [=C2=A0 =C2=A0 0.000000] Detected PIPT I-cache on CPU0
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: Spectre-v2
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: Spectre-v3a
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: Spectre-v4
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: Spectre-BHB
> [=C2=A0 =C2=A0 0.000000] CPU features: kernel page table isolation forced=
 ON by KASLR
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: Kernel page table isolat=
ion (KPTI)
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: ARM erratum 1742098
> [=C2=A0 =C2=A0 0.000000] CPU features: detected: ARM errata 1165522, 1319=
367, or 1530923
> [=C2=A0 =C2=A0 0.000000] alternatives: applying boot alternatives
> [=C2=A0 =C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=A0 T=
otal pages: 238896
> [=C2=A0 =C2=A0 0.000000] Kernel command line: coherent_pool=3D1M 8250.nr_=
uarts=3D1 snd_bcm2835.enable_headphones=3D0 snd_bcm2835.enable_hdmi=3D0=C2=
=A0 smsc95xx.macaddr=3DE4:5F:01:EF:CF:95 vc_mem.mem_base=3D0x3ec00000 vc_me=
m.mem_size=3D0x40000000=C2=A0 dwc_otg.lpm_enable=3D0 console=3DttyS0,115200=
 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait cma=3D64M root=3D/dev/mmc=
blk0p2
> [=C2=A0 =C2=A0 0.000000] Dentry cache hash table entries: 131072 (order: =
8, 1048576 bytes, linear)
> [=C2=A0 =C2=A0 0.000000] Inode-cache hash table entries: 65536 (order: 7,=
 524288 bytes, linear)
> [=C2=A0 =C2=A0 0.000000] mem auto-init: stack:off, heap alloc:off, heap f=
ree:off
> [=C2=A0 =C2=A0 0.000000] Memory: 859980K/970752K available (12800K kernel=
 code, 2146K rwdata, 4048K rodata, 4352K init, 1088K bss, 45236K reserved, =
65536K cma-reserved)
> [=C2=A0 =C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0,=
 CPUs=3D4, Nodes=3D1
> [=C2=A0 =C2=A0 0.000000] ftrace: allocating 41928 entries in 164 pages
> [=C2=A0 =C2=A0 0.000000] ftrace: allocated 164 pages with 3 groups
> [=C2=A0 =C2=A0 0.000000] trace event string verifier disabled
> [=C2=A0 =C2=A0 0.000000] rcu: Preemptible hierarchical RCU implementation=
.
> [=C2=A0 =C2=A0 0.000000] rcu:=C2=A0 =C2=A0 RCU event tracing is enabled.
> [=C2=A0 =C2=A0 0.000000] rcu:=C2=A0 =C2=A0 RCU restricting CPUs from NR_C=
PUS=3D256 to nr_cpu_ids=3D4.
> [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 Trampoline variant of Tasks RCU ena=
bled.
> [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 Rude variant of Tasks RCU enabled.
> [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 Tracing variant of Tasks RCU enable=
d.
> [=C2=A0 =C2=A0 0.000000] rcu: RCU calculated value of scheduler-enlistmen=
t delay is 25 jiffies.
> [=C2=A0 =C2=A0 0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16=
, nr_cpu_ids=3D4
> [=C2=A0 =C2=A0 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [=C2=A0 =C2=A0 0.000000] Root IRQ handler: gic_handle_irq
> [=C2=A0 =C2=A0 0.000000] GIC: Using split EOI/Deactivate mode
> [=C2=A0 =C2=A0 0.000000] rcu: srcu_init: Setting srcu_struct sizes based =
on contention.
> [=C2=A0 =C2=A0 0.000000] arch_timer: cp15 timer(s) running at 54.00MHz (p=
hys).
> [=C2=A0 =C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xfffffffff=
fffff max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
> [=C2=A0 =C2=A0 0.000001] sched_clock: 56 bits at 54MHz, resolution 18ns, =
wraps every 4398046511102ns
> [=C2=A0 =C2=A0 0.000320] Console: colour dummy device 80x25
> [=C2=A0 =C2=A0 0.000385] Calibrating delay loop (skipped), value calculat=
ed using timer frequency.. 108.00 BogoMIPS (lpj=3D216000)
> [=C2=A0 =C2=A0 0.000414] pid_max: default: 32768 minimum: 301
> [=C2=A0 =C2=A0 0.000552] LSM: Security Framework initializing
> [=C2=A0 =C2=A0 0.000747] Mount-cache hash table entries: 2048 (order: 2, =
16384 bytes, linear)
> [=C2=A0 =C2=A0 0.000778] Mountpoint-cache hash table entries: 2048 (order=
: 2, 16384 bytes, linear)
> [=C2=A0 =C2=A0 0.002301] cgroup: Disabling memory control group subsystem
> [=C2=A0 =C2=A0 0.004899] cblist_init_generic: Setting adjustable number o=
f callback queues.
> [=C2=A0 =C2=A0 0.004917] cblist_init_generic: Setting shift to 2 and lim =
to 1.
> [=C2=A0 =C2=A0 0.005129] cblist_init_generic: Setting shift to 2 and lim =
to 1.
> [=C2=A0 =C2=A0 0.005347] cblist_init_generic: Setting shift to 2 and lim =
to 1.
> [=C2=A0 =C2=A0 0.005887] rcu: Hierarchical SRCU implementation.
> [=C2=A0 =C2=A0 0.005899] rcu:=C2=A0 =C2=A0 Max phase no-delay instances i=
s 1000.
> [=C2=A0 =C2=A0 0.007367] EFI services will not be available.
> [=C2=A0 =C2=A0 0.008052] smp: Bringing up secondary CPUs ...
> [=C2=A0 =C2=A0 0.009354] Detected PIPT I-cache on CPU1
> [=C2=A0 =C2=A0 0.009505] CPU1: Booted secondary processor 0x0000000001 [0=
x410fd083]
> [=C2=A0 =C2=A0 0.010925] Detected PIPT I-cache on CPU2
> [=C2=A0 =C2=A0 0.011047] CPU2: Booted secondary processor 0x0000000002 [0=
x410fd083]
> [=C2=A0 =C2=A0 0.012511] Detected PIPT I-cache on CPU3
> [=C2=A0 =C2=A0 0.012631] CPU3: Booted secondary processor 0x0000000003 [0=
x410fd083]
> [=C2=A0 =C2=A0 0.012870] smp: Brought up 1 node, 4 CPUs
> [=C2=A0 =C2=A0 0.012888] SMP: Total of 4 processors activated.
> [=C2=A0 =C2=A0 0.012902] CPU features: detected: 32-bit EL0 Support
> [=C2=A0 =C2=A0 0.012913] CPU features: detected: 32-bit EL1 Support
> [=C2=A0 =C2=A0 0.012927] CPU features: detected: CRC32 instructions
> [=C2=A0 =C2=A0 0.013076] CPU: All CPU(s) started at EL2
> [=C2=A0 =C2=A0 0.013100] alternatives: applying system-wide alternatives
> [=C2=A0 =C2=A0 0.014823] devtmpfs: initialized
> [=C2=A0 =C2=A0 0.028622] Enabled cp15_barrier support
> [=C2=A0 =C2=A0 0.028660] Enabled setend support
> [=C2=A0 =C2=A0 0.029069] clocksource: jiffies: mask: 0xffffffff max_cycle=
s: 0xffffffff, max_idle_ns: 7645041785100000 ns
> [=C2=A0 =C2=A0 0.029105] futex hash table entries: 1024 (order: 4, 65536 =
bytes, linear)
> [=C2=A0 =C2=A0 0.030945] pinctrl core: initialized pinctrl subsystem
> [=C2=A0 =C2=A0 0.031914] DMI not present or invalid.
> [=C2=A0 =C2=A0 0.032699] NET: Registered PF_NETLINK/PF_ROUTE protocol fam=
ily
> [=C2=A0 =C2=A0 0.037154] DMA: preallocated 1024 KiB GFP_KERNEL pool for a=
tomic allocations
> [=C2=A0 =C2=A0 0.037492] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA po=
ol for atomic allocations
> [=C2=A0 =C2=A0 0.038728] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 =
pool for atomic allocations
> [=C2=A0 =C2=A0 0.038835] audit: initializing netlink subsys (disabled)
> [=C2=A0 =C2=A0 0.039153] audit: type=3D2000 audit(0.036:1): state=3Diniti=
alized audit_enabled=3D0 res=3D1
> [=C2=A0 =C2=A0 0.039837] thermal_sys: Registered thermal governor 'step_w=
ise'
> [=C2=A0 =C2=A0 0.039935] cpuidle: using governor menu
> [=C2=A0 =C2=A0 0.040239] hw-breakpoint: found 6 breakpoint and 4 watchpoi=
nt registers.
> [=C2=A0 =C2=A0 0.040463] ASID allocator initialised with 32768 entries
> [=C2=A0 =C2=A0 0.040661] Serial: AMBA PL011 UART driver
> [=C2=A0 =C2=A0 0.061184] bcm2835-mbox fe00b880.mailbox: mailbox enabled
> [=C2=A0 =C2=A0 0.084968] platform fe801000.csi: Fixed dependency cycle(s)=
 with /soc/i2c0mux/i2c@1/imx219@10
> [=C2=A0 =C2=A0 0.092288] raspberrypi-firmware soc:firmware: Attached to f=
irmware from 2022-08-26T14:04:10, variant start_x
> [=C2=A0 =C2=A0 0.096304] raspberrypi-firmware soc:firmware: Firmware hash=
 is 102f1e848393c2112206fadffaaf86db04e98326
> [=C2=A0 =C2=A0 0.116405] KASLR enabled
> [=C2=A0 =C2=A0 0.153273] bcm2835-dma fe007000.dma: DMA legacy API manager=
, dmachans=3D0x1
> [=C2=A0 =C2=A0 0.160821] SCSI subsystem initialized
> [=C2=A0 =C2=A0 0.161084] usbcore: registered new interface driver usbfs
> [=C2=A0 =C2=A0 0.161144] usbcore: registered new interface driver hub
> [=C2=A0 =C2=A0 0.161222] usbcore: registered new device driver usb
> [=C2=A0 =C2=A0 0.161774] usb_phy_generic phy: supply vcc not found, using=
 dummy regulator
> [=C2=A0 =C2=A0 0.162065] usb_phy_generic phy: dummy supplies not allowed =
for exclusive requests
> [=C2=A0 =C2=A0 0.162516] pps_core: LinuxPPS API ver. 1 registered
> [=C2=A0 =C2=A0 0.162530] pps_core: Software ver. 5.3.6 - Copyright 2005-2=
007 Rodolfo Giometti <giometti@linux.it>
> [=C2=A0 =C2=A0 0.162556] PTP clock support registered
> [=C2=A0 =C2=A0 0.162861] Advanced Linux Sound Architecture Driver Initial=
ized.
> [=C2=A0 =C2=A0 0.163830] vgaarb: loaded
> [=C2=A0 =C2=A0 0.164450] clocksource: Switched to clocksource arch_sys_co=
unter
> [=C2=A0 =C2=A0 0.165251] VFS: Disk quotas dquot_6.6.0
> [=C2=A0 =C2=A0 0.165369] VFS: Dquot-cache hash table entries: 512 (order =
0, 4096 bytes)
> [=C2=A0 =C2=A0 0.165601] FS-Cache: Loaded
> [=C2=A0 =C2=A0 0.165771] CacheFiles: Loaded
> [=C2=A0 =C2=A0 0.176134] NET: Registered PF_INET protocol family
> [=C2=A0 =C2=A0 0.176763] IP idents hash table entries: 16384 (order: 5, 1=
31072 bytes, linear)
> [=C2=A0 =C2=A0 0.178769] tcp_listen_portaddr_hash hash table entries: 512=
 (order: 1, 8192 bytes, linear)
> [=C2=A0 =C2=A0 0.178808] Table-perturb hash table entries: 65536 (order: =
6, 262144 bytes, linear)
> [=C2=A0 =C2=A0 0.178835] TCP established hash table entries: 8192 (order:=
 4, 65536 bytes, linear)
> [=C2=A0 =C2=A0 0.178896] TCP bind hash table entries: 8192 (order: 6, 262=
144 bytes, linear)
> [=C2=A0 =C2=A0 0.179155] TCP: Hash tables configured (established 8192 bi=
nd 8192)
> [=C2=A0 =C2=A0 0.179337] UDP hash table entries: 512 (order: 2, 16384 byt=
es, linear)
> [=C2=A0 =C2=A0 0.179398] UDP-Lite hash table entries: 512 (order: 2, 1638=
4 bytes, linear)
> [=C2=A0 =C2=A0 0.179622] NET: Registered PF_UNIX/PF_LOCAL protocol family
> [=C2=A0 =C2=A0 0.180345] RPC: Registered named UNIX socket transport modu=
le.
> [=C2=A0 =C2=A0 0.180361] RPC: Registered udp transport module.
> [=C2=A0 =C2=A0 0.180372] RPC: Registered tcp transport module.
> [=C2=A0 =C2=A0 0.180384] RPC: Registered tcp NFSv4.1 backchannel transpor=
t module.
> [=C2=A0 =C2=A0 0.180413] PCI: CLS 0 bytes, default 64
> [=C2=A0 =C2=A0 0.183570] hw perfevents: enabled with armv8_cortex_a72 PMU=
 driver, 7 counters available
> [=C2=A0 =C2=A0 0.184015] kvm [1]: IPA Size Limit: 44 bits
> [=C2=A0 =C2=A0 0.185464] kvm [1]: vgic interrupt IRQ9
> [=C2=A0 =C2=A0 0.185719] kvm [1]: Hyp mode initialized successfully
> [=C2=A0 =C2=A0 1.397294] Initialise system trusted keyrings
> [=C2=A0 =C2=A0 1.397772] workingset: timestamp_bits=3D46 max_order=3D18 b=
ucket_order=3D0
> [=C2=A0 =C2=A0 1.405940] zbud: loaded
> [=C2=A0 =C2=A0 1.409065] NFS: Registering the id_resolver key type
> [=C2=A0 =C2=A0 1.409105] Key type id_resolver registered
> [=C2=A0 =C2=A0 1.409117] Key type id_legacy registered
> [=C2=A0 =C2=A0 1.409261] nfs4filelayout_init: NFSv4 File Layout Driver Re=
gistering...
> [=C2=A0 =C2=A0 1.409279] nfs4flexfilelayout_init: NFSv4 Flexfile Layout D=
river Registering...
> [=C2=A0 =C2=A0 1.410729] Key type asymmetric registered
> [=C2=A0 =C2=A0 1.410748] Asymmetric key parser 'x509' registered
> [=C2=A0 =C2=A0 1.410841] Block layer SCSI generic (bsg) driver version 0.=
4 loaded (major 246)
> [=C2=A0 =C2=A0 1.411139] io scheduler mq-deadline registered
> [=C2=A0 =C2=A0 1.411157] io scheduler kyber registered
> [=C2=A0 =C2=A0 1.413912] irq_brcmstb_l2: registered L2 intc (/soc/interru=
pt-controller@7ef00100, parent irq: 27)
> [=C2=A0 =C2=A0 1.425381] brcm-pcie fd500000.pcie: host bridge /scb/pcie@7=
d500000 ranges:
> [=C2=A0 =C2=A0 1.425425] brcm-pcie fd500000.pcie:=C2=A0 No bus range foun=
d for /scb/pcie@7d500000, using [bus 00-ff]
> [=C2=A0 =C2=A0 1.425537] brcm-pcie fd500000.pcie:=C2=A0 =C2=A0 =C2=A0 MEM=
 0x0600000000..0x063fffffff -> 0x00c0000000
> [=C2=A0 =C2=A0 1.425648] brcm-pcie fd500000.pcie:=C2=A0 IB MEM 0x00000000=
00..0x003fffffff -> 0x0400000000
> [=C2=A0 =C2=A0 1.426763] brcm-pcie fd500000.pcie: PCI host bridge to bus =
0000:00
> [=C2=A0 =C2=A0 1.426783] pci_bus 0000:00: root bus resource [bus 00-ff]
> [=C2=A0 =C2=A0 1.426802] pci_bus 0000:00: root bus resource [mem 0x600000=
000-0x63fffffff] (bus address [0xc0000000-0xffffffff])
> [=C2=A0 =C2=A0 1.426891] pci 0000:00:00.0: [14e4:2711] type 01 class 0x06=
0400
> [=C2=A0 =C2=A0 1.427235] pci 0000:00:00.0: PME# supported from D0 D3hot
> [=C2=A0 =C2=A0 1.431746] pci_bus 0000:01: supply vpcie3v3 not found, usin=
g dummy regulator
> [=C2=A0 =C2=A0 1.431970] pci_bus 0000:01: supply vpcie3v3aux not found, u=
sing dummy regulator
> [=C2=A0 =C2=A0 1.432090] pci_bus 0000:01: supply vpcie12v not found, usin=
g dummy regulator
> [=C2=A0 =C2=A0 1.494550] brcm-pcie fd500000.pcie: link up, 5.0 GT/s PCIe =
x1 (SSC)
> [=C2=A0 =C2=A0 1.494731] pci 0000:01:00.0: [1106:3483] type 00 class 0x0c=
0330
> [=C2=A0 =C2=A0 1.494875] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00=
000fff 64bit]
> [=C2=A0 =C2=A0 1.495450] pci 0000:01:00.0: PME# supported from D0 D3hot
> [=C2=A0 =C2=A0 1.504685] pci 0000:00:00.0: BAR 8: assigned [mem 0x6000000=
00-0x6000fffff]
> [=C2=A0 =C2=A0 1.504713] pci 0000:01:00.0: BAR 0: assigned [mem 0x6000000=
00-0x600000fff 64bit]
> [=C2=A0 =C2=A0 1.504764] pci 0000:00:00.0: PCI bridge to [bus 01]
> [=C2=A0 =C2=A0 1.504790] pci 0000:00:00.0:=C2=A0 bridge window [mem 0x600=
000000-0x6000fffff]
> [=C2=A0 =C2=A0 1.516628] Serial: 8250/16550 driver, 1 ports, IRQ sharing =
enabled
> [=C2=A0 =C2=A0 1.521030] iproc-rng200 fe104000.rng: hwrng registered
> [=C2=A0 =C2=A0 1.521819] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec000=
00 mem_size:0x40000000(1024 MiB)
> [=C2=A0 =C2=A0 1.524107] gpiomem-bcm2835 fe200000.gpiomem: Initialised: R=
egisters at 0xfe200000
> [=C2=A0 =C2=A0 1.539887] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 1.555001] brd: module loaded
> [=C2=A0 =C2=A0 1.565029] loop: module loaded
> [=C2=A0 =C2=A0 1.566047] Loading iSCSI transport class v2.0-870.
> [=C2=A0 =C2=A0 1.572378] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0x00=
00
> [=C2=A0 =C2=A0 1.632654] unimac-mdio unimac-mdio.-19: Broadcom UniMAC MDI=
O bus
> [=C2=A0 =C2=A0 1.633910] usbcore: registered new interface driver r8152
> [=C2=A0 =C2=A0 1.633986] usbcore: registered new interface driver lan78xx
> [=C2=A0 =C2=A0 1.634073] usbcore: registered new interface driver smsc95x=
x
> [=C2=A0 =C2=A0 1.679745] pci 0000:00:00.0: enabling device (0000 -> 0002)
> [=C2=A0 =C2=A0 1.679951] xhci_hcd 0000:01:00.0: xHCI Host Controller
> [=C2=A0 =C2=A0 1.679982] xhci_hcd 0000:01:00.0: new USB bus registered, a=
ssigned bus number 1
> [=C2=A0 =C2=A0 1.680810] xhci_hcd 0000:01:00.0: hcc params 0x002841eb hci=
 version 0x100 quirks 0x0001e40000000890
> [=C2=A0 =C2=A0 1.682095] xhci_hcd 0000:01:00.0: xHCI Host Controller
> [=C2=A0 =C2=A0 1.682117] xhci_hcd 0000:01:00.0: new USB bus registered, a=
ssigned bus number 2
> [=C2=A0 =C2=A0 1.682145] xhci_hcd 0000:01:00.0: Host supports USB 3.0 Sup=
erSpeed
> [=C2=A0 =C2=A0 1.682575] usb usb1: New USB device found, idVendor=3D1d6b,=
 idProduct=3D0002, bcdDevice=3D 6.01
> [=C2=A0 =C2=A0 1.682596] usb usb1: New USB device strings: Mfr=3D3, Produ=
ct=3D2, SerialNumber=3D1
> [=C2=A0 =C2=A0 1.682612] usb usb1: Product: xHCI Host Controller
> [=C2=A0 =C2=A0 1.682627] usb usb1: Manufacturer: Linux 6.1.35-v8 xhci-hcd
> [=C2=A0 =C2=A0 1.682641] usb usb1: SerialNumber: 0000:01:00.0
> [=C2=A0 =C2=A0 1.683495] hub 1-0:1.0: USB hub found
> [=C2=A0 =C2=A0 1.683584] hub 1-0:1.0: 1 port detected
> [=C2=A0 =C2=A0 1.684769] usb usb2: New USB device found, idVendor=3D1d6b,=
 idProduct=3D0003, bcdDevice=3D 6.01
> [=C2=A0 =C2=A0 1.684791] usb usb2: New USB device strings: Mfr=3D3, Produ=
ct=3D2, SerialNumber=3D1
> [=C2=A0 =C2=A0 1.684807] usb usb2: Product: xHCI Host Controller
> [=C2=A0 =C2=A0 1.684822] usb usb2: Manufacturer: Linux 6.1.35-v8 xhci-hcd
> [=C2=A0 =C2=A0 1.684836] usb usb2: SerialNumber: 0000:01:00.0
> [=C2=A0 =C2=A0 1.685665] hub 2-0:1.0: USB hub found
> [=C2=A0 =C2=A0 1.685779] hub 2-0:1.0: 4 ports detected
> [=C2=A0 =C2=A0 1.687987] dwc_otg: version 3.00a 10-AUG-2012 (platform bus=
)
> [=C2=A0 =C2=A0 1.689218] usbcore: registered new interface driver uas
> [=C2=A0 =C2=A0 1.689344] usbcore: registered new interface driver usb-sto=
rage
> [=C2=A0 =C2=A0 1.689572] mousedev: PS/2 mouse device common for all mice
> [=C2=A0 =C2=A0 1.698297] sdhci: Secure Digital Host Controller Interface =
driver
> [=C2=A0 =C2=A0 1.698315] sdhci: Copyright(c) Pierre Ossman
> [=C2=A0 =C2=A0 1.699377] sdhci-pltfm: SDHCI platform and OF driver helper
> [=C2=A0 =C2=A0 1.704124] ledtrig-cpu: registered to indicate activity on =
CPUs
> [=C2=A0 =C2=A0 1.704847] hid: raw HID events driver (C) Jiri Kosina
> [=C2=A0 =C2=A0 1.705035] usbcore: registered new interface driver usbhid
> [=C2=A0 =C2=A0 1.705049] usbhid: USB HID core driver
> [=C2=A0 =C2=A0 1.718785] NET: Registered PF_PACKET protocol family
> [=C2=A0 =C2=A0 1.718915] Key type dns_resolver registered
> [=C2=A0 =C2=A0 1.720252] registered taskstats version 1
> [=C2=A0 =C2=A0 1.720341] Loading compiled-in X.509 certificates
> [=C2=A0 =C2=A0 1.721354] Key type .fscrypt registered
> [=C2=A0 =C2=A0 1.721370] Key type fscrypt-provisioning registered
> [=C2=A0 =C2=A0 1.741134] uart-pl011 fe201000.serial: there is not valid m=
aps for state default
> [=C2=A0 =C2=A0 1.742227] uart-pl011 fe201000.serial: cts_event_workaround=
 enabled
> [=C2=A0 =C2=A0 1.742410] fe201000.serial: ttyAMA1 at MMIO 0xfe201000 (irq=
 =3D 37, base_baud =3D 0) is a PL011 rev2
> [=C2=A0 =C2=A0 1.742714] serial serial0: tty port ttyAMA1 registered
> [=C2=A0 =C2=A0 1.751794] bcm2835-aux-uart fe215040.serial: there is not v=
alid maps for state default
> [=C2=A0 =C2=A0 1.753004] printk: console [ttyS0] disabled
> [=C2=A0 =C2=A0 1.753149] fe215040.serial: ttyS0 at MMIO 0xfe215040 (irq =
=3D 38, base_baud =3D 62500000) is a 16550
> [=C2=A0 =C2=A0 1.944485] usb 1-1: new high-speed USB device number 2 usin=
g xhci_hcd
> [=C2=A0 =C2=A0 1.945726] printk: console [ttyS0] enabled
> [=C2=A0 =C2=A0 2.163023] usb 1-1: New USB device found, idVendor=3D2109, =
idProduct=3D3431, bcdDevice=3D 4.21
> [=C2=A0 =C2=A0 2.181595] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 2.183990] usb 1-1: New USB device strings: Mfr=3D0, Produc=
t=3D1, SerialNumber=3D0
> [=C2=A0 =C2=A0 2.191076] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchd=
og timer
> [=C2=A0 =C2=A0 2.193116] usb 1-1: Product: USB2.0 Hub
> [=C2=A0 =C2=A0 2.199967] bcm2835-power bcm2835-power: Broadcom BCM2835 po=
wer domains driver
> [=C2=A0 =C2=A0 2.225382] hub 1-1:1.0: USB hub found
> [=C2=A0 =C2=A0 2.234250] wm8960 1-001a: Failed to issue reset
> [=C2=A0 =C2=A0 2.240503] hub 1-1:1.0: 4 ports detected
> [=C2=A0 =C2=A0 2.246043] wm8960: probe of 1-001a failed with error -5
> [=C2=A0 =C2=A0 3.233219] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_debu=
g2:0
> [=C2=A0 =C2=A0 3.239366] mmc-bcm2835 fe300000.mmcnr: DMA channel allocate=
d
> [=C2=A0 =C2=A0 3.279742] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 3.293846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 3.303839] of_cfs_init
> [=C2=A0 =C2=A0 3.306498] of_cfs_init: OK
> [=C2=A0 =C2=A0 3.310651] mmc0: SDHCI controller on fe340000.mmc [fe340000=
.mmc] using ADMA
> [=C2=A0 =C2=A0 3.319128] ALSA device list:
> [=C2=A0 =C2=A0 3.322174]=C2=A0 No soundcards found.
> [=C2=A0 =C2=A0 3.325453] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 3.332870] Waiting for root device /dev/mmcblk0p2...
> [=C2=A0 =C2=A0 3.373963] mmc1: new high speed SDIO card at address 0001
> [=C2=A0 =C2=A0 3.428500] mmc0: new ultra high speed DDR50 SDHC card at ad=
dress aaaa
> [=C2=A0 =C2=A0 3.436231] mmcblk0: mmc0:aaaa SC32G 29.7 GiB
> [=C2=A0 =C2=A0 3.446937]=C2=A0 mmcblk0: p1 p2 p3 p4
> [=C2=A0 =C2=A0 3.451351] mmcblk0: mmc0:aaaa SC32G 29.7 GiB (quirks 0x0000=
4000)
> [=C2=A0 =C2=A0 3.465009] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 3.489729] EXT4-fs (mmcblk0p2): INFO: recovery required on =
readonly filesystem
> [=C2=A0 =C2=A0 3.497251] EXT4-fs (mmcblk0p2): write access will be enable=
d during recovery
> [=C2=A0 =C2=A0 3.518291] EXT4-fs (mmcblk0p2): recovery complete
> [=C2=A0 =C2=A0 3.524965] EXT4-fs (mmcblk0p2): mounted filesystem with ord=
ered data mode. Quota mode: none.
> [=C2=A0 =C2=A0 3.533743] VFS: Mounted root (ext4 filesystem) readonly on =
device 179:2.
> [=C2=A0 =C2=A0 3.544293] devtmpfs: mounted
> [=C2=A0 =C2=A0 3.556671] Freeing unused kernel memory: 4352K
> [=C2=A0 =C2=A0 3.561493] Run /sbin/init as init process
> [=C2=A0 =C2=A0 3.804512] systemd[1]: System time before build time, advan=
cing clock.
> [=C2=A0 =C2=A0 3.979554] NET: Registered PF_INET6 protocol family
> [=C2=A0 =C2=A0 3.986602] Segment Routing with IPv6
> [=C2=A0 =C2=A0 3.990402] In-situ OAM (IOAM) with IPv6
> [=C2=A0 =C2=A0 4.030213] systemd[1]: systemd 250.5+ running in system mod=
e (+PAM -AUDIT -SELINUX -APPARMOR +IMA -SMACK -SECCOMP -GCRYPT -GNUTLS -OPE=
NSSL -ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTSET=
UP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +ZST=
D -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)
> [=C2=A0 =C2=A0 4.063235] systemd[1]: Detected architecture arm64.
>
> Welcome to OpenEmbedded nodistro.0!
>
> [=C2=A0 =C2=A0 4.139575] systemd[1]: Hostname set to <raspberrypi4-64>.
> [=C2=A0 =C2=A0 4.262773] systemd-fstab-generator[110]: Failed to create u=
nit file /run/systemd/generator/boot.mount, as it already exists. Duplicate=
 entry in /etc/fstab?
> [=C2=A0 =C2=A0 4.279296] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/psplash.sh' lacks a native systemd unit file. Automatically generati=
ng a unit file for compatibility. Please update package to include a native=
 systemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.316704] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/halt' lacks a native systemd unit file. Automatically generating a u=
nit file for compatibility. Please update package to include a native syste=
md unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.341773] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/sendsigs' lacks a native systemd unit file. Automatically generating=
 a unit file for compatibility. Please update package to include a native s=
ystemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.367010] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/save-rtc.sh' lacks a native systemd unit file. Automatically generat=
ing a unit file for compatibility. Please update package to include a nativ=
e systemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.394486] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/sshd' lacks a native systemd unit file. Automatically generating a u=
nit file for compatibility. Please update package to include a native syste=
md unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.421091] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/umountfs' lacks a native systemd unit file. Automatically generating=
 a unit file for compatibility. Please update package to include a native s=
ystemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.452704] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/reboot' lacks a native systemd unit file. Automatically generating a=
 unit file for compatibility. Please update package to include a native sys=
temd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.477081] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/network-manager' lacks a native systemd unit file. Automatically gen=
erating a unit file for compatibility. Please update package to include a n=
ative systemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.505088] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/umountnfs.sh' lacks a native systemd unit file. Automatically genera=
ting a unit file for compatibility. Please update package to include a nati=
ve systemd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.530697] systemd-sysv-generator[118]: SysV service '/etc/=
init.d/single' lacks a native systemd unit file. Automatically generating a=
 unit file for compatibility. Please update package to include a native sys=
temd unit file, in order to make it more safe and robust.
> [=C2=A0 =C2=A0 4.576736] systemd[108]: /lib/systemd/system-generators/sys=
temd-fstab-generator failed with exit status 1.
> [=C2=A0 =C2=A0 4.958275] systemd[1]: Queued start job for default target =
Graphical Interface.
> [=C2=A0 =C2=A0 5.033921] systemd[1]: Created slice Slice /system/getty.
> [=C2=A0 OK=C2=A0 ] Created slice Slice /system/getty.
> [=C2=A0 =C2=A0 5.059177] systemd[1]: Created slice Slice /system/modprobe=
.
> [=C2=A0 OK=C2=A0 ] Created slice Slice /system/modprobe.
> [=C2=A0 =C2=A0 5.083019] systemd[1]: Created slice Slice /system/serial-g=
etty.
> [=C2=A0 OK=C2=A0 ] Created slice Slice /system/serial-getty.
> [=C2=A0 =C2=A0 5.106617] systemd[1]: Created slice User and Session Slice=
.
> [=C2=A0 OK=C2=A0 ] Created slice User and Session Slice.
> [=C2=A0 =C2=A0 5.129140] systemd[1]: Started Dispatch Password Requests t=
o Console Directory Watch.
> [=C2=A0 OK=C2=A0 ] Started Dispatch Password =E2=80=A6ts to Console Direc=
tory Watch.
> [=C2=A0 =C2=A0 5.157059] systemd[1]: Started Forward Password Requests to=
 Wall Directory Watch.
> [=C2=A0 OK=C2=A0 ] Started Forward Password R=E2=80=A6uests to Wall Direc=
tory Watch.
> [=C2=A0 =C2=A0 5.185040] systemd[1]: Reached target Path Units.
> [=C2=A0 OK=C2=A0 ] Reached target Path Units.
> [=C2=A0 =C2=A0 5.204693] systemd[1]: Reached target Remote File Systems.
> [=C2=A0 OK=C2=A0 ] Reached target Remote File Systems.
> [=C2=A0 =C2=A0 5.224647] systemd[1]: Reached target Slice Units.
> [=C2=A0 OK=C2=A0 ] Reached target Slice Units.
> [=C2=A0 =C2=A0 5.244692] systemd[1]: Reached target Swaps.
> [=C2=A0 OK=C2=A0 ] Reached target Swaps.
> [=C2=A0 =C2=A0 5.265209] systemd[1]: Listening on initctl Compatibility N=
amed Pipe.
> [=C2=A0 OK=C2=A0 ] Listening on initctl Compatibility Named Pipe.
> [=C2=A0 =C2=A0 5.290036] systemd[1]: Listening on Journal Audit Socket.
> [=C2=A0 OK=C2=A0 ] Listening on Journal Audit Socket.
> [=C2=A0 =C2=A0 5.313629] systemd[1]: Listening on Journal Socket (/dev/lo=
g).
> [=C2=A0 OK=C2=A0 ] Listening on Journal Socket (/dev/log).
> [=C2=A0 =C2=A0 5.337712] systemd[1]: Listening on Journal Socket.
> [=C2=A0 OK=C2=A0 ] Listening on Journal Socket.
> [=C2=A0 =C2=A0 5.357892] systemd[1]: Listening on Network Service Netlink=
 Socket.
> [=C2=A0 OK=C2=A0 ] Listening on Network Service Netlink Socket.
> [=C2=A0 =C2=A0 5.381890] systemd[1]: Listening on udev Control Socket.
> [=C2=A0 OK=C2=A0 ] Listening on udev Control Socket.
> [=C2=A0 =C2=A0 5.405457] systemd[1]: Listening on udev Kernel Socket.
> [=C2=A0 OK=C2=A0 ] Listening on udev Kernel Socket.
> [=C2=A0 =C2=A0 5.429385] systemd[1]: Listening on User Database Manager S=
ocket.
> [=C2=A0 OK=C2=A0 ] Listening on User Database Manager Socket.
> [=C2=A0 =C2=A0 5.453682] systemd[1]: Huge Pages File System was skipped b=
ecause of a failed condition check (ConditionPathExists=3D/sys/kernel/mm/hu=
gepages).
> [=C2=A0 =C2=A0 5.489226] systemd[1]: Mounting POSIX Message Queue File Sy=
stem...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting POSIX Message Queue File Syste=
m...
> [=C2=A0 =C2=A0 5.518931] systemd[1]: Mounting Kernel Debug File System...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting Kernel Debug File System...
> [=C2=A0 =C2=A0 5.546741] systemd[1]: Mounting Kernel Trace File System...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting Kernel Trace File System...
> [=C2=A0 =C2=A0 5.593235] systemd[1]: Mounting Temporary Directory /tmp...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting Temporary Directory /tmp...
> [=C2=A0 =C2=A0 5.623544] systemd[1]: Starting Create List of Static Devic=
e Nodes...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Create List of Static Device N=
odes...
> [=C2=A0 =C2=A0 5.654773] systemd[1]: Starting Load Kernel Module configfs=
...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load Kernel Module configfs...
> [=C2=A0 =C2=A0 5.709616] systemd[1]: Starting Load Kernel Module drm...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load Kernel Module drm...
> [=C2=A0 =C2=A0 5.738793] systemd[1]: Starting Load Kernel Module fuse...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load Kernel Module fuse...
> [=C2=A0 =C2=A0 5.768721] systemd[1]: Starting Start psplash boot splash s=
creen...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Start psplash boot splash scre=
en...
> [=C2=A0 =C2=A0 5.786936] fuse: init (API version 7.37)
> [=C2=A0 =C2=A0 5.821605] systemd[1]: Starting File System Check on Root D=
evice...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting File System Check on Root Devi=
ce...
> [=C2=A0 =C2=A0 5.855599] systemd[1]: Starting Journal Service...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Journal Service...
> [=C2=A0 =C2=A0 5.870309] systemd[1]: Starting Load Kernel Modules...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load Kernel Modules...
> [=C2=A0 =C2=A0 5.882953] systemd[1]: Starting Generate network units from=
 Kernel command line...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Generate network =E2=80=A6ts f=
rom Kernel command line...
> [=C2=A0 =C2=A0 5.898183] systemd[1]: Starting Coldplug All udev Devices..=
.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Coldplug All udev Devices...
> [=C2=A0 =C2=A0 5.923633] systemd[1]: Mounted POSIX Message Queue File Sys=
tem.
> [=C2=A0 OK=C2=A0 =C2=A0 =C2=A0 5.931540] systemd[1]: Mounted Kernel Debug=
 File System.
> 0m] Mounted=C2=A0 =C2=A0 5.938611] systemd[1]: Mounted Kernel Trace File =
System.
> 1;39mPOSIX Message Queue[=C2=A0 =C2=A0 5.945565] systemd[1]: Mounted Temp=
orary Directory /tmp.
>=C2=A0 File System.
> [=C2=A0 OK=C2=A0 ] M[=C2=A0 =C2=A0 5.954551] systemd[1]: Finished Create =
List of Static Device Nodes.
> ounted Kernel Debug File System[=C2=A0 =C2=A0 5.964515] systemd[1]: modpr=
obe@configfs.service: Deactivated successfully.
> .
> [=C2=A0 OK=C2=A0 =C2=A0 =C2=A0 5.974346] systemd[1]: Finished Load Kernel=
 Module configfs.
> m] Mounted Kernel Trace[=C2=A0 =C2=A0 5.983089] systemd[1]: modprobe@drm.=
service: Deactivated successfully.
>=C2=A0 File System.
> [=C2=A0 =C2=A0 5.991589] systemd[1]: Finished Load Kernel Module drm.
> 32m=C2=A0 OK=C2=A0 ] Mounted Temporary Directory /tmp.
> [=C2=A0 OK=C2=A0 ] Finished Create List of Static Device Nodes.
> [=C2=A0 OK=C2=A0 ] Finished Load Kernel Module configfs.
> [=C2=A0 OK=C2=A0 ] Finished Load Kernel Module drm.
> [=C2=A0 =C2=A0 6.043531] systemd[1]: modprobe@fuse.service: Deactivated s=
uccessfully.
> [=C2=A0 =C2=A0 6.052098] systemd[1]: Finished Load Kernel Module fuse.
> [=C2=A0 OK=C2=A0 ] Finished Load Kernel Module fuse.
> [=C2=A0 =C2=A0 6.077790] systemd[1]: psplash-start.service: Main process =
exited, code=3Dexited, status=3D255/EXCEPTION
> [=C2=A0 =C2=A0 6.081916] cfg80211: Loading compiled-in X.509 certificates=
 for regulatory database
> [=C2=A0 =C2=A0 6.088483] systemd[1]: psplash-start.service: Failed with r=
esult 'exit-code'.
> [=C2=A0 =C2=A0 6.104852] systemd[1]: Failed to start Start psplash boot s=
plash screen.
> [=C2=A0 =C2=A0 6.112953] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf4=
7aef9cea7'
> 1mFAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [=C2=A0 =C2=A0 6.160679] systemd[1]: Dependency failed for Start psplash-=
systemd progress communication helper.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [=C2=A0 =C2=A0 6.192643] systemd[1]: psplash-systemd.service: Job psplash=
-systemd.service/start failed with result 'dependency'.
> [=C2=A0 =C2=A0 6.204928] systemd[1]: Started Journal Service.
> [=C2=A0 OK=C2=A0 ] Started Journal Service.
> [=C2=A0 OK=C2=A0 ] Finished File System Check on Root Device.
> [=C2=A0 OK=C2=A0 ] Finished Load Kernel Modules.
> [=C2=A0 OK=C2=A0 ] Finished Generate network units from Kernel command li=
ne.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting FUSE Control File System...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting Kernel Configuration File Syst=
em...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Remount Root and Kernel File S=
ystems...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Apply Kernel Variable[=C2=A0 =
=C2=A0 6.438252] EXT4-fs (mmcblk0p2): re-mounted. Quota mode: none.
> s...
> [=C2=A0 OK=C2=A0 ] Mounted FUSE Control File System.
> [=C2=A0 OK=C2=A0 ] Mounted Kernel Configuration File System.
> [=C2=A0 OK=C2=A0 ] Finished Remount Root and Kernel File Systems.
> [=C2=A0 OK=C2=A0 ] Finished Apply Kernel Variables.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Flush Journal to Persistent St=
orage...
> [=C2=A0 =C2=A0 6.610243] systemd-journald[132]: Received client request t=
o flush runtime journal.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Create Static Device Nodes in =
/dev...
> [=C2=A0 OK=C2=A0 ] Finished Flush Journal to Persistent Storage.
> [=C2=A0 OK=C2=A0 ] Finished Create Static Device Nodes in /dev.
> [=C2=A0 OK=C2=A0 ] Reached target Preparation for Local File Systems.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting /var/volatile...
> [=C2=A0 =C2=A0 6.783880] audit: type=3D1334 audit(1651167747.975:2): prog=
-id=3D5 op=3DLOAD
> [=C2=A0 =C2=A0 6.790890] audit: type=3D1334 audit(1651167747.983:3): prog=
-id=3D6 op=3DLOAD
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Rule-based Manage=E2=80=A6for =
Device Events and Files...
> [=C2=A0 OK=C2=A0 ] Finished Coldplug All udev Devices.
> [=C2=A0 OK=C2=A0 ] Mounted /var/volatile.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load/Save Random Seed...
> [=C2=A0 OK=C2=A0 ] Finished Load/Save Random Seed.
> [=C2=A0 OK=C2=A0 ] Started Rule-based Manager for Device Events and Files=
.
> [=C2=A0 OK=C2=A0 ] Listening on Load/Save RF =E2=80=A6itch Status /dev/rf=
kill Watch.
> [=C2=A0 =C2=A0 7.195859] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.277840] snd_bcm2835: module is from the staging director=
y, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.294427] mc: Linux media interface: v0.10
> [=C2=A0 =C2=A0 7.299440] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.333535] vc_sm_cma: module is from the staging directory,=
 the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.347250] bcm2835_vc_sm_cma_probe: Videocore shared memory=
 driver
> [=C2=A0 =C2=A0 7.353870] [vc_sm_connected_init]: start
> [=C2=A0 =C2=A0 7.360912] [vc_sm_connected_init]: installed successfully
> [=C2=A0 =C2=A0 7.374284] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.376370] videodev: Linux video capture interface: v2.00
> [=C2=A0 OK=C2=A0 ] Found device /dev/mmcblk0p1.
> [=C2=A0 =C2=A0 7.471186] bcm2835_mmal_vchiq: module is from the staging d=
irectory, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.471447] bcm2835_mmal_vchiq: module is from the staging d=
irectory, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.489471] rpivid_hevc: module is from the staging director=
y, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.499293] bcm2835_mmal_vchiq: module is from the staging d=
irectory, the quality is unknown, you have been warned.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting /boot...
> [=C2=A0 =C2=A0 7.523818] rpivid feb10000.codec: Device registered as /dev=
/video19
> [=C2=A0 =C2=A0 7.541963] bcm2835_isp: module is from the staging director=
y, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.542832] bcm2835_codec: module is from the staging direct=
ory, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.561866] bcm2835_v4l2: module is from the staging directo=
ry, the quality is unknown, you have been warned.
> [=C2=A0 =C2=A0 7.577245] bcm2835-codec bcm2835-codec: Device registered a=
s /dev/video10
> [=C2=A0 =C2=A0 7.586154] bcm2835-codec bcm2835-codec: Loaded V4L2 decode
> [=C2=A0 =C2=A0 7.593141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.602178] bcm2835-codec bcm2835-codec: Device registered a=
s /dev/video11
> [=C2=A0 =C2=A0 7.617113] bcm2835-codec bcm2835-codec: Loaded V4L2 encode
> [=C2=A0 =C2=A0 7.620369] FAT-fs (mmcblk0p1): Volume was not properly unmo=
unted. Some data may be corrupt. Please run fsck.
> [=C2=A0 OK=C2=A0 ] Found device /dev/mmcblk0p4.
> [=C2=A0 =C2=A0 7.643196] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.660411] bcm2835-codec bcm2835-codec: Device registered a=
s /dev/video12
> [=C2=A0 =C2=A0 7.667543] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
> [=C2=A0 OK=C2=A0 ] Mounted /boot.
> [=C2=A0 =C2=A0 7.690130] bcm2835-isp bcm2835-isp: Device node output[0] r=
egistered as /dev/video13
> [=C2=A0 =C2=A0 7.690209] bcm2835-codec bcm2835-codec: Device registered a=
s /dev/video18
> [=C2=A0 =C2=A0 7.705141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.711499] bcm2835-codec bcm2835-codec: Loaded V4L2 image_f=
x
> [=C2=A0 =C2=A0 7.720276] bcm2835-codec bcm2835-codec: Device registered a=
s /dev/video31
> [=C2=A0 =C2=A0 7.727418] bcm2835-codec bcm2835-codec: Loaded V4L2 encode_=
image
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting /data...
> [=C2=A0 =C2=A0 7.749249] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.755381] bcm2835-isp bcm2835-isp: Device node capture[0] =
registered as /dev/video14
> [=C2=A0 =C2=A0 7.765460] EXT4-fs (mmcblk0p4): recovery complete
> [=C2=A0 =C2=A0 7.770739] EXT4-fs (mmcblk0p4): mounted filesystem with ord=
ered data mode. Quota mode: none.
> [=C2=A0 =C2=A0 7.811000] bcm2835-isp bcm2835-isp: Device node capture[1] =
registered as /dev/video15
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mounting /media...
> [=C2=A0 =C2=A0 7.857123] brcmstb-i2c fef04500.i2c:=C2=A0 @97500hz registe=
red in polling mode
> [=C2=A0 OK=C2=A0 ] Mounted /data.
> [=C2=A0 =C2=A0 7.874813] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops=
)
> [=C2=A0 =C2=A0 7.884625] brcmstb-i2c fef09500.i2c:=C2=A0 @97500hz registe=
red in polling mode
> [=C2=A0 =C2=A0 7.885738] dwc2 fe980000.usb: supply vusb_d not found, usin=
g dummy regulator
> [=C2=A0 =C2=A0 7.900958] bcm2835-isp bcm2835-isp: Device node stats[2] re=
gistered as /dev/video16
> [=C2=A0 =C2=A0 7.911582] bcm2835-isp bcm2835-isp: Register output node 0 =
with media controller
> [=C2=A0 =C2=A0 7.920029] bcm2835-isp bcm2835-isp: Register capture node 1=
 with media controller
> [=C2=A0 =C2=A0 7.928582] bcm2835-isp bcm2835-isp: Register capture node 2=
 with media controller
> [=C2=A0 =C2=A0 7.938142] bcm2835-isp bcm2835-isp: Register capture node 3=
 with media controller
> [=C2=A0 =C2=A0 7.948178] Registered IR keymap rc-cec
> [=C2=A0 =C2=A0 7.949491] dwc2 fe980000.usb: supply vusb_a not found, usin=
g dummy regulator
> [=C2=A0 =C2=A0 7.952499] rc rc0: vc4-hdmi-0 as /devices/platform/soc/fef0=
0700.hdmi/rc/rc0
> [=C2=A0 =C2=A0 7.970883] input: vc4-hdmi-0 as /devices/platform/soc/fef00=
700.hdmi/rc/rc0/input0
> [=C2=A0 =C2=A0 7.998764] Bluetooth: Core ver 2.22
> [=C2=A0 =C2=A0 8.000774] bcm2835-isp bcm2835-isp: Device node output[0] r=
egistered as /dev/video20
> [=C2=A0 =C2=A0 8.014548] i2c i2c-22: Added multiplexed i2c bus 0
> [=C2=A0 =C2=A0 8.019825] NET: Registered PF_BLUETOOTH protocol family
> [[=C2=A0 =C2=A0 8.025899] Bluetooth: HCI device and connection manager in=
itialized
>=C2=A0 OK=C2=A0 =C2=A0 =C2=A0 8.033423] Bluetooth: HCI socket layer initia=
lized
> 0m] Moun[=C2=A0 =C2=A0 8.038932] Bluetooth: L2CAP socket layer initialize=
d
> ted /me[=C2=A0 =C2=A0 8.045219] i2c i2c-22: Added multiplexed i2c bus 10
> dia.[=C2=A0 =C2=A0 8.051513] Bluetooth: SCO socket layer initialized
>
> [=C2=A0 =C2=A0 8.051655] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdmi_o=
ps)
> [[=C2=A0 =C2=A0 8.065745] bcm2835-isp bcm2835-isp: Device node capture[0]=
 registered as /dev/video21
>=C2=A0 OK=C2=A0 =C2=A0 =C2=A0 8.067355] dwc2 fe980000.usb: DWC OTG Control=
ler
> 0m] Reached target=C2=A0 =C2=A0 8.081443] bcm2835-isp bcm2835-isp: Device=
 node capture[1] registered as /dev/video22
> ;39mLoca[=C2=A0 =C2=A0 8.090168] dwc2 fe980000.usb: new USB bus registere=
d, assigned bus number 3
> l File S[=C2=A0 =C2=A0 8.097867] dwc2 fe980000.usb: irq 48, io mem 0xfe98=
0000
> ystems.
> [=C2=A0 =C2=A0 8.114764] usb usb3: New USB device found, idVendor=3D1d6b,=
 idProduct=3D0002, bcdDevice=3D 6.01
> [=C2=A0 =C2=A0 8.123245] usb usb3: New USB device strings: Mfr=3D3, Produ=
ct=3D2, SerialNumber=3D1
> [=C2=A0 =C2=A0 8.124928] Bluetooth: HCI UART driver ver 2.3
> [=C2=A0 =C2=A0 8.130823] usb usb3: Product: DWC OTG Controller
> [=C2=A0 =C2=A0 8.135158] Bluetooth: HCI UART protocol H4 registered
> [=C2=A0 =C2=A0 8.135402] Bluetooth: HCI UART protocol Three-wire (H5) reg=
istered
> [=C2=A0 =C2=A0 8.140162] usb usb3: Manufacturer: Linux 6.1.35-v8 dwc2_hso=
tg
> [=C2=A0 =C2=A0 8.146204] Bluetooth: HCI UART protocol Broadcom registered
> [=C2=A0 =C2=A0 8.147810] hci_uart_bcm serial0-0: supply vbat not found, u=
sing dummy regulator
> [=C2=A0 =C2=A0 8.151990] usb usb3: SerialNumber: fe980000.usb
> [=C2=A0 =C2=A0 8.156581] hci_uart_bcm serial0-0: supply vddio not found, =
using dummy regulator
> [=C2=A0 =C2=A0 8.157812] bcm2835-isp bcm2835-isp: Device node stats[2] re=
gistered as /dev/video23
> [=C2=A0 =C2=A0 8.164339] Registered IR keymap rc-cec
> [=C2=A0 =C2=A0 8.181118] bcm2835-isp bcm2835-isp: Register output node 0 =
with media controller
> [=C2=A0 =C2=A0 8.185800] hub 3-0:1.0: USB hub found
> [=C2=A0 =C2=A0 8.187494] rc rc1: vc4-hdmi-1 as /devices/platform/soc/fef0=
5700.hdmi/rc/rc1
> [=C2=A0 =C2=A0 8.187734] input: vc4-hdmi-1 as /devices/platform/soc/fef05=
700.hdmi/rc/rc1/input1
> [=C2=A0 =C2=A0 8.191742] bcm2835-isp bcm2835-isp: Register capture node 1=
 with media controller
> [=C2=A0 =C2=A0 8.195999] hub 3-0:1.0: 1 port detected
> [=C2=A0 =C2=A0 8.204622] bcm2835-isp bcm2835-isp: Register capture node 2=
 with media controller
> [=C2=A0 =C2=A0 8.221097] [drm] Initialized v3d 1.0.0 20180419 for fec0000=
0.v3d on minor 1
> [=C2=A0 =C2=A0 8.222650] bcm2835-isp bcm2835-isp: Register capture node 3=
 with media controller
> [=C2=A0 =C2=A0 8.231443] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdmi_o=
ps)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Creat[=C2=A0 =C2=A0 8.264622] =
bcm2835-isp bcm2835-isp: Loaded V4L2 bcm2835-isp
> e Volatile Files and Directories...
> [=C2=A0 =C2=A0 8.275166] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_ops=
)
> [=C2=A0 =C2=A0 8.277008] uart-pl011 fe201000.serial: no DMA platform data
> [=C2=A0 =C2=A0 8.281896] vc4-drm gpu: bound fe206000.pixelvalve (ops vc4_=
crtc_ops)
> [=C2=A0 =C2=A0 8.315281] vc4-drm gpu: bound fe207000.pixelvalve (ops vc4_=
crtc_ops)
> [[=C2=A0 =C2=A0 8.322477] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4=
_crtc_ops)
>=C2=A0 OK=C2=A0 =C2=A0 =C2=A0 8.330038] vc4-drm gpu: bound fe216000.pixelv=
alve (ops vc4_crtc_ops)
> 0m] Fini[=C2=A0 =C2=A0 8.337441] vc4-drm gpu: bound fec12000.pixelvalve (=
ops vc4_crtc_ops)
> shed Create Volatile Files and Directories.
> [=C2=A0 =C2=A0 8.353596] [drm] Initialized vc4 0.0.0 20140616 for gpu on =
minor 0
> [=C2=A0 =C2=A0 8.360870] vc4-drm gpu: [drm] Cannot find any crtc or sizes
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Network Time Synchronization..=
.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Record System Boot/Shutdown in=
 UTMP...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Load/Save RF Kill Switch Statu=
s...
> [=C2=A0 =C2=A0 8.537403] Bluetooth: hci0: BCM: chip id 107
> [=C2=A0 =C2=A0 8.542354] Bluetooth: hci0: BCM: features 0x2f
> [=C2=A0 =C2=A0 8.548557] Bluetooth: hci0: BCM4345C0
> [=C2=A0 =C2=A0 8.552394] Bluetooth: hci0: BCM4345C0 (003.001.025) build 0=
000
> [=C2=A0 OK=C2=A0 ] Finished Record System Boot/Shutdown in UTMP.
> [=C2=A0 =C2=A0 8.569173] Bluetooth: hci0: BCM4345C0 'brcm/BCM4345C0.hcd' =
Patch
> [=C2=A0 =C2=A0 8.589631] CAN device driver interface
> [=C2=A0 =C2=A0 8.643726] imx219 10-0010: failed to read chip id 219
> [=C2=A0 =C2=A0 8.650867] imx219: probe of 10-0010 failed with error -5
> [=C2=A0 OK=C2=A0 ] Reached target Sound Card.
> [=C2=A0 OK=C2=A0 ] Created slice Slice /system/bthelper.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Start psplash boot splash scre=
en...
> [=C2=A0 OK=C2=A0 ] Started Load/Save RF Kill Switch Status.
> [FAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [=C2=A0 OK=C2=A0 ] Started Network Time Synchronization.
> [=C2=A0 OK=C2=A0 ] Reached target System Initialization.
> [=C2=A0 OK=C2=A0 ] Started Daily Cleanup of Temporary Directories.
> [=C2=A0 OK=C2=A0 ] Reached target System Time Set.
> [=C2=A0 OK=C2=A0 ] Reached target Timer Units.
> [=C2=A0 OK=C2=A0 ] Listening on D-Bus System Message Bus Socket.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting sshd.socket...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Weston socket...
> [=C2=A0 OK=C2=A0 ] Listening on sshd.socket.
> [=C2=A0 OK=C2=A0 ] Listening on Weston socket.
> [=C2=A0 OK=C2=A0 ] Reached target Socket Units.
> [=C2=A0 OK=C2=A0 ] Reached target Basic System.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting D-Bus System Message Bus...
> [=C2=A0 OK=C2=A0 ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DHCP=
v6 support.
> [=C2=A0 =C2=A0 9.301550] Bluetooth: hci0: BCM: features 0x2f
> [=C2=A0 =C2=A0 9.307810] Bluetooth: hci0: BCM43455 37.4MHz Raspberry Pi 3=
+
> [=C2=A0 =C2=A0 9.313745] Bluetooth: hci0: BCM4345C0 (003.001.025) build 0=
342
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Configure Bluetooth Modems con=
nected by UART...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting IPv4 Packet Filtering Framewor=
k...
> [=C2=A0 =C2=A0 9.363108] 8021q: 802.1Q VLAN Support v1.8
> [=C2=A0 =C2=A0 9.389432] audit: type=3D1334 audit(1651232906.515:4): prog=
-id=3D7 op=3DLOAD
> [=C2=A0 =C2=A0 9.397284] audit: type=3D1334 audit(1651232906.519:5): prog=
-id=3D8 op=3DLOAD
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting User Login Management...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting OpenSSH Key Generation...
> [=C2=A0 OK=C2=A0 ] Started D-Bus System Message Bus.
> [=C2=A0 OK=C2=A0 ] Started Configure Bluetooth Modems connected by UART.
> [=C2=A0 OK=C2=A0 ] Finished IPv4 Packet Filtering Framework.
> [=C2=A0 OK=C2=A0 ] Finished OpenSSH Key Generation.
> [=C2=A0 OK=C2=A0 ] Reached target Preparation for Network.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Network Manager...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Raspberry Pi bluetooth helper.=
..
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting LSB: network connection manage=
r...
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Network Configuration...
> [=C2=A0 =C2=A0 9.700542] mcp251x spi0.0: MCP251x didn't enter in conf mod=
e after reset
> [=C2=A0 =C2=A0 9.707859] mcp251x spi0.0: Probe failed, err=3D110
> [=C2=A0 =C2=A0 9.712832] mcp251x: probe of spi0.0 failed with error -110
> [=C2=A0 OK=C2=A0 ] Started LSB: network connection manager.
> [=C2=A0 OK=C2=A0 ] Finished Raspberry Pi bluetooth helper.
> [=C2=A0 OK=C2=A0 ] Started User Login Management.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Bluetooth service...
> [=C2=A0 OK=C2=A0 ] Started Network Configuration.
> [=C2=A0 =C2=A0 9.994264] bcmgenet fd580000.ethernet: configuring instance=
 for external RGMII (RX delay)
> [=C2=A0 10.005669] bcmgenet fd580000.ethernet eth0: Link is Down
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Network Name Resolution...
> [=C2=A0 OK=C2=A0 ] Started Network Manager.
> [=C2=A0 10.094290] audit: type=3D1334 audit(1651232907.219:6): prog-id=3D=
9 op=3DLOAD
> [=C2=A0 10.101120] audit: type=3D1334 audit(1651232907.227:7): prog-id=3D=
10 op=3DLOAD
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Hostname Service...
> [=C2=A0 OK=C2=A0 ] Started Bluetooth service.
> [=C2=A0 OK=C2=A0 ] Reached target Bluetooth Support.
> [=C2=A0 10.205340] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [=C2=A0 10.210960] Bluetooth: BNEP filters: protocol multicast
> [=C2=A0 10.216322] Bluetooth: BNEP socket layer initialized
> [=C2=A0 10.240623] Bluetooth: MGMT ver 1.22
> [=C2=A0 10.261915] NET: Registered PF_ALG protocol family
> [=C2=A0 OK=C2=A0 ] Started Network Name Resolution.
> [=C2=A0 OK=C2=A0 ] Reached target Network.
> [=C2=A0 OK=C2=A0 ] Reached target Host and Network Name Lookups.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting DNS forwarder and DHCP server.=
..
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Permit User Sessions...
> [=C2=A0 OK=C2=A0 ] Started Xinetd A Powerful Replacement For Inetd.
> [=C2=A0 OK=C2=A0 ] Finished Permit User Sessions.
> [=C2=A0 OK=C2=A0 ] Started Hostname Service.
> [=C2=A0 OK=C2=A0 ] Started DNS forwarder and DHCP server.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Network Manager Script Dispatc=
her Service...
> [=C2=A0 OK=C2=A0 ] Started Getty on tty1.
> [=C2=A0 OK=C2=A0 ] Started Serial Getty on ttyS0.
> [=C2=A0 OK=C2=A0 ] Reached target Login Prompts.
> [=C2=A0 OK=C2=A0 ] Reached target Multi-User System.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Weston, a Wayland=E2=80=A6osit=
or, as a system service...
> [=C2=A0 OK=C2=A0 ] Started Network Manager Script Dispatcher Service.
> [=C2=A0 10.826800] audit: type=3D1334 audit(1651232907.951:8): prog-id=3D=
11 op=3DLOAD
> [=C2=A0 10.837083] audit: type=3D1334 audit(1651232907.959:9): prog-id=3D=
12 op=3DLOAD
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting User Database Manager...
> [=C2=A0 OK=C2=A0 ] Started User Database Manager.
> [=C2=A0 OK=C2=A0 ] Created slice User Slice of UID 1000.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting User Runtime Directory /run/us=
er/1000...
> [=C2=A0 OK=C2=A0 ] Finished User Runtime Directory /run/user/1000.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting User Manager for UID 1000...
> [=C2=A0 11.283733] audit: type=3D1006 audit(1651232908.407:10): pid=3D354=
 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(none) old-ses=3D429496729=
5 ses=3D1 res=3D1
> [=C2=A0 11.301961] audit: type=3D1300 audit(1651232908.407:10): arch=3Dc0=
0000b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=
=3D0 items=3D0 ppid=3D1 pid=3D354 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=
=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D1 comm=3D"(sy=
stemd)" exe=3D"/lib/systemd/systemd" key=3D(null)
> [=C2=A0 OK=C2=A0 ] Started User Manager for UID 1000.
> [=C2=A0 OK=C2=A0 ] Started Session c1 of User weston.
> [=C2=A0 11.952188] kauditd_printk_skb: 1 callbacks suppressed
> [=C2=A0 11.952207] audit: type=3D1006 audit(1651232909.075:11): pid=3D348=
 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=3D4294967295 =
ses=3D2 res=3D1
> [=C2=A0 11.971521] audit: type=3D1300 audit(1651232909.075:11): arch=3Dc0=
0000b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=
=3D0 items=3D0 ppid=3D1 pid=3D348 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=
=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dtty7 ses=3D2 comm=3D"(west=
on)" exe=3D"/lib/systemd/systemd" key=3D(null)
> [=C2=A0 11.997917] audit: type=3D1327 audit(1651232909.075:11): proctitle=
=3D"(weston)"
> [=C2=A0 12.759139] vc4-drm gpu: [drm] Cannot find any crtc or sizes
> [=C2=A0 OK=C2=A0 ] Started Weston, a Wayland =E2=80=A6mpositor, as a syst=
em service.
> [=C2=A0 OK=C2=A0 ] Reached target Graphical Interface.
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Starting Record Runlevel Change in UTMP=
...
> [=C2=A0 OK=C2=A0 ] Finished Record Runlevel Change in UTMP.
>
> OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0
>
> raspberrypi4-64 login: [=C2=A0 19.942785] platform soc:sound: deferred pr=
obe pending
> [=C2=A0 40.664644] audit: type=3D1334 audit(1651232937.791:12): prog-id=
=3D10 op=3DUNLOAD
> [=C2=A0 40.671849] audit: type=3D1334 audit(1651232937.791:13): prog-id=
=3D9 op=3DUNLOAD
>
>
> -------------------------------------------------------------------------=
-----------------------------------------------------
>
> On Thursday, July 6, 2023 at 11:52:51 AM CDT, Khem Raj <raj.khem@gmail.co=
m> wrote:
>
>
> On Thu, Jul 6, 2023 at 9:04=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> w=
rote:
> >
> > I think that is the problem, I don't know which wifi is used on the boa=
rd. How do I find out what wifi driver to load?
> >
>
> Perhaps there are clues in early kernel logs. Maybe check dmesg or serial=
 logs.
>
> >
> >
> > On Thursday, July 6, 2023 at 10:19:50 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote:
> >
> >
> > On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com>=
 wrote:
> > >
> > > root@raspberrypi4-64:~# ifconfig -a
> > > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255=
.0=C2=A0 broadcast 192.168.7.255
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 1=
000=C2=A0 (Ethernet)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 962=C2=A0 bytes 117191 (114.4 K=
iB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns=
 0=C2=A0 frame 0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 1766=C2=A0 bytes 299578 (292.5 =
KiB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=
=A0 carrier 0=C2=A0 collisions 0
> > >
> > > lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopei=
d 0x10<host>
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Lo=
opback)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 12567=C2=A0 bytes 780277 (761.9=
 KiB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns=
 0=C2=A0 frame 0
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12567=C2=A0 bytes 780277 (761.9=
 KiB)
> > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=
=A0 carrier 0=C2=A0 collisions 0
> > >
> > >
> > >
> >
> >
> >
> > OK in your kernel module list I dont see any kmods for wifi being loade=
d
> > so it might be that its not enabling them in rootfs for some reason ?
> > which wifi is used on your board ?
> >
> >
> > > On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj <raj.khem@gmai=
l.com> wrote:
> > >
> > >
> > > what does ifconfig -a say
> > >
> > > On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject=
.org
> > > <oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
> > > >
> > > > I am building my raspberrypi wic image using the layer meta-raspber=
rypi.
> > > >
> > > > I am using a raspiberrypi compute module 4 with wifi chip.
> > > >
> > > > I just can't seem to get the wlan0 device to appear when I type ifc=
onfig.
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > root@raspberrypi4-64:~# ifconfig
> > > > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.2=
55.0=C2=A0 broadcast 192.168.7.255
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen=
 1000=C2=A0 (Ethernet)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 407=C2=A0 bytes 62442 (60.9 K=
iB)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overru=
ns 0=C2=A0 frame 0
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 567=C2=A0 bytes 94749 (92.5 K=
iB)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=
=C2=A0 carrier 0=C2=A0 collisions 0
> > > >
> > > > lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scop=
eid 0x10<host>
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local =
Loopback)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 4047=C2=A0 bytes 252037 (246.=
1 KiB)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overru=
ns 0=C2=A0 frame 0
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 4047=C2=A0 bytes 252037 (246.=
1 KiB)
> > > >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=
=C2=A0 carrier 0=C2=A0 collisions 0
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > >
> > > >
> > > >
> > > > Here is a filtered output of my lsmod command
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > > root@raspberrypi4-64:~# lsmod
> > > > Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Size=C2=A0 Used by
> > > > 88XXau=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2265088=C2=
=A0 0
> > > > cmac=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
16384=C2=A0 3
> > > > algif_hash=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > > > aes_arm64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=
=A0 3
> > > > aes_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 36864=C2=A0 1 =
aes_arm64
> > > > algif_skcipher=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > > > af_alg=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=
=C2=A0 6 algif_hash,algif_skcipher
> > > > bnep=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
24576=C2=A0 2
> > > > 8021q=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 32768=C2=A0 0
> > > > garp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
16384=C2=A0 1 8021q
> > > > stp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 16384=C2=A0 1 garp
> > > > llc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 16384=C2=A0 2 stp,garp
> > > > imx219=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
=C2=A0 0
> > > > mcp251x=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2457=
6=C2=A0 0
> > > > spidev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=
=C2=A0 0
> > > > can_dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096=
0=C2=A0 1 mcp251x
> > > > hci_uart=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=
=A0 0
> > > > btbcm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 24576=C2=A0 1 hci_uart
> > > > v3d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 90112=C2=A0 1
> > > > bluetooth=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 585728=C2=A0 26 =
hci_uart,btbcm,bnep
> > > > i2c_mux_pinctrl=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > > gpu_sched=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=
=A0 1 v3d
> > > > snd_soc_simple_card=C2=A0 =C2=A0 20480=C2=A0 0
> > > > snd_soc_simple_card_utils=C2=A0 =C2=A0 28672=C2=A0 1 snd_soc_simple=
_card
> > > > drm_shmem_helper=C2=A0 =C2=A0 =C2=A0 24576=C2=A0 1 v3d
> > > > raspberrypi_hwmon=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > > i2c_mux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1638=
4=C2=A0 1 i2c_mux_pinctrl
> > > > i2c_brcmstb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > > bcm2835_unicam=C2=A0 =C2=A0 =C2=A0 =C2=A0 53248=C2=A0 0
> > > > dwc2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
192512=C2=A0 0
> > > > roles=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 20480=C2=A0 1 dwc2
> > > > v4l2_dv_timings=C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 1 bcm2835_un=
icam
> > > > v4l2_fwnode=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 2 =
imx219,bcm2835_unicam
> > > > ecdh_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 blueto=
oth
> > > > v4l2_async=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 3 v=
4l2_fwnode,imx219,bcm2835_unicam
> > > > ecc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 36864=C2=A0 1 ecdh_generic
> > > > libaes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=
=C2=A0 3 aes_arm64,bluetooth,aes_generic
> > > > spi_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 0
> > > > snd_soc_bcm2835_i2s=C2=A0 =C2=A0 20480=C2=A0 0
> > > > bcm2835_codec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > > > rpivid_hevc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > > > bcm2835_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> > > > bcm2835_isp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > > > bcm2835_mmal_vchiq=C2=A0 =C2=A0 36864=C2=A0 3 bcm2835_codec,bcm2835=
_v4l2,bcm2835_isp
> > > > v4l2_mem2mem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 2 bcm283=
5_codec,rpivid_hevc
> > > > videobuf2_vmalloc=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1 bcm2835_v4l2
> > > > videobuf2_dma_contig=C2=A0 =C2=A0 20480=C2=A0 4 bcm2835_codec,bcm28=
35_unicam,rpivid_hevc,bcm2835_isp
> > > > videobuf2_memops=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 videobuf2_vmallo=
c,videobuf2_dma_contig
> > > > videobuf2_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 6 bcm2835_cod=
ec,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > > videobuf2_common=C2=A0 =C2=A0 =C2=A0 69632=C2=A0 10 bcm2835_codec,v=
ideobuf2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835=
_v4l2,rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp
> > > > videodev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 274432=C2=
=A0 10 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bcm283=
5_v4l2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > > vc_sm_cma=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=
=A0 2 bcm2835_mmal_vchiq,bcm2835_isp
> > > > snd_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > > > mc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 61440=C2=A0 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4=
l2,bcm2835_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > > uio_pdrv_genirq=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > > nvmem_rmem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > > > uio=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 24576=C2=A0 1 uio_pdrv_genirq
> > > > sch_fq_codel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 6
> > > > brcmutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=
=A0 0
> > > > cfg80211=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 929792=C2=
=A0 1 88XXau
> > > > rfkill=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=
=C2=A0 4 bluetooth,cfg80211
> > > > fuse=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
139264=C2=A0 1
> > > > ipv6=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
552960=C2=A0 28
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> > > >
> > > > And here is my /boot/config.txt
> > > >
> > > > root@raspberrypi4-64:~# cat /boot/config.txt
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Raspberry Pi Configuration Settings
> > > > ##
> > > > ##=C2=A0 Revision 16, 2013/06/22
> > > > ##
> > > > ##=C2=A0 Details taken from the eLinux wiki
> > > > ##=C2=A0 For up-to-date information please refer to wiki page.
> > > > ##
> > > > ##=C2=A0 Wiki Location : http://elinux.org/RPiconfig
> > > > ##
> > > > ##
> > > > ##=C2=A0 Description:
> > > > ##=C2=A0 =C2=A0 Details of each setting are described with each sec=
tion that begins with
> > > > ##=C2=A0 =C2=A0 a double hashed comment ('##')
> > > > ##=C2=A0 =C2=A0 It is up to the user to remove the single hashed co=
mment ('#') from each
> > > > ##=C2=A0 =C2=A0 option they want to enable, and to set the specific=
 value of that option.
> > > > ##
> > > > ##=C2=A0 Overclock settings will be disabled at runtime if the SoC =
reaches temp_limit
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Standard Definition Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## sdtv_mode
> > > > ##=C2=A0 =C2=A0 defines the TV standard for composite output
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal NTSC (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Japanese version of NT=
SC - no pedestal
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal PAL
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 Brazilian version of P=
AL - 525/60 rather than 625/50, different
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subcarrier
> > > > ##
> > > > #sdtv_mode=3D0
> > > >
> > > > ## sdtv_aspect
> > > > ##=C2=A0 =C2=A0 defines the aspect ratio for composite output
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 4:3 (Default)
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 14:9
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 16:9
> > > > ##
> > > > #sdtv_aspect=3D1
> > > >
> > > > ## sdtv_disable_colourburst
> > > > ##=C2=A0 =C2=A0 Disables colour burst on composite output. The pict=
ure will be
> > > > ##=C2=A0 =C2=A0 monochrome, but possibly sharper
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is enable=
d (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is disabl=
ed
> > > > ##
> > > > #sdtv_disable_colourburst=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 High Definition Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## hdmi_safe
> > > > ##=C2=A0 =C2=A0 Use "safe mode" settings to try to boot with maximu=
m hdmi compatibility.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enabled (this does: hd=
mi_force_hotplug=3D1,
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_ignore_edid=3D=
0xa5000080,
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 config_hdmi_boost=
=3D4, hdmi_group=3D2,
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_mode=3D4, disa=
ble_overscan=3D0,
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_left=3D24,=
 overscan_right=3D24,
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_top=3D24, =
overscan_bottom=3D24)
> > > > ##
> > > > #hdmi_safe=3D1
> > > >
> > > > ## hdmi_force_hotplug
> > > > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is asserted so it appe=
ars a HDMI display
> > > > ##=C2=A0 =C2=A0 is attached
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use HDMI mode even if =
no HDMI monitor is detected
> > > > ##
> > > > #hdmi_force_hotplug=3D1
> > > >
> > > > ## hdmi_ignore_hotplug
> > > > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is not asserted so it =
appears a HDMI
> > > > ##=C2=A0 =C2=A0 display is not attached
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use composite mode eve=
n if HDMI monitor is detected
> > > > ##
> > > > #hdmi_ignore_hotplug=3D1
> > > >
> > > > ## hdmi_drive
> > > > ##=C2=A0 =C2=A0 chooses between HDMI and DVI modes
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal DVI mode (No so=
und)
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal HDMI mode (Soun=
d will be sent if supported and enabled)
> > > > ##
> > > > #hdmi_drive=3D2
> > > >
> > > > ## hdmi_ignore_edid
> > > > ##=C2=A0 =C2=A0 Enables the ignoring of EDID/display data
> > > > ##
> > > > #hdmi_ignore_edid=3D0xa5000080
> > > >
> > > > ## hdmi_edid_file
> > > > ##=C2=A0 =C2=A0 Read the EDID data from the edid.dat file instead o=
f from the attached
> > > > ##=C2=A0 =C2=A0 device
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from at=
tached device (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from ed=
id.txt file
> > > > ##
> > > > #hdmi_edid_file=3D1
> > > >
> > > > ## hdmi_ignore_edid_audio
> > > > ##=C2=A0 =C2=A0 Pretends all audio formats are unsupported by displ=
ay. This means ALSA
> > > > ##=C2=A0 =C2=A0 will default to analogue.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided valu=
es (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio form=
ats are unsupported
> > > > ##
> > > > #hdmi_ignore_edid_audio=3D1
> > > >
> > > > ## hdmi_force_edid_audio
> > > > ##=C2=A0 =C2=A0 Pretends all audio formats are supported by display=
, allowing
> > > > ##=C2=A0 =C2=A0 passthrough of DTS/AC3 even when not reported as su=
pported.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided valu=
es (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio form=
ats are supported
> > > > ##
> > > > #hdmi_force_edid_audio=3D1
> > > >
> > > > ## hdmi_force_edid_3d
> > > > ##=C2=A0 =C2=A0 Pretends all CEA modes support 3D even when edid do=
esn't indicate
> > > > ##=C2=A0 =C2=A0 support for them.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided valu=
es (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend 3D mode is sup=
ported
> > > > ##
> > > > #hdmi_force_edid_3d=3D1
> > > >
> > > > ## avoid_edid_fuzzy_match
> > > > ##=C2=A0 =C2=A0 Avoid fuzzy matching of modes described in edid.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use fuzzy matching (De=
fault)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Avoid fuzzy matching
> > > > ##
> > > > #avoid_edid_fuzzy_match=3D1
> > > >
> > > > ## hdmi_pixel_encoding
> > > > ##=C2=A0 =C2=A0 Force the pixel encoding mode.
> > > > ##=C2=A0 =C2=A0 By default it will use the mode requested from edid=
 so shouldn't
> > > > ##=C2=A0 =C2=A0 need changing.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided valu=
es (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB limited=C2=A0 (16-=
235)
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB full=C2=A0 =C2=A0 =
=C2=A0 ( 0-255)
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited (16-235)
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited ( 0-255)
> > > > ##
> > > > #hdmi_pixel_encoding=3D1
> > > >
> > > > ## hdmi_group
> > > > ##=C2=A0 =C2=A0 Defines the HDMI type
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the preferred grou=
p reported by the edid (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 CEA
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 DMT
> > > > ##
> > > > #hdmi_group=3D1
> > > >
> > > > ## hdmi_mode
> > > > ##=C2=A0 =C2=A0 defines screen resolution in CEA or DMT format
> > > > ##
> > > > ##=C2=A0 =C2=A0 H means 16:9 variant (of a normally 4:3 mode).
> > > > ##=C2=A0 =C2=A0 2x means pixel doubled (i.e. higher clock rate, wit=
h each pixel repeated
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 twice)
> > > > ##=C2=A0 =C2=A0 4x means pixel quadrupled (i.e. higher clock rate, =
with each pixel
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repeated fou=
r times)
> > > > ##=C2=A0 =C2=A0 reduced blanking means fewer bytes are used for bla=
nking within the data
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 stream (i.e. lower clock rate, with fewer wasted bytes)
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 hdmi_group=3DCEA=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_group=3DDMT
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 VGA=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 640x350=C2=A0 85Hz
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
00=C2=A0 85Hz
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 =
H=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 720x400=C2=
=A0 85Hz
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 720p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
80=C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1080i 60Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=
=C2=A0 72Hz
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x4=
80=C2=A0 75Hz
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 =
H=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 85Hz
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x6=
00=C2=A0 56Hz
> > > > ##=C2=A0 =C2=A0 9=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 =
H=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=
=A0 60Hz
> > > > ##=C2=A0 =C2=A0 10=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 7=
2Hz
> > > > ##=C2=A0 =C2=A0 11=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 75Hz
> > > > ##=C2=A0 =C2=A0 12=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 8=
5Hz
> > > > ##=C2=A0 =C2=A0 13=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 120Hz
> > > > ##=C2=A0 =C2=A0 14=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 848x480=C2=A0 6=
0Hz
> > > > ##=C2=A0 =C2=A0 15=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 43Hz=
=C2=A0 DO NOT USE
> > > > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 1080p 60Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
60Hz
> > > > ##=C2=A0 =C2=A0 17=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=
=A0 70Hz
> > > > ##=C2=A0 =C2=A0 18=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
75Hz
> > > > ##=C2=A0 =C2=A0 19=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 50Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=
=A0 85Hz
> > > > ##=C2=A0 =C2=A0 20=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
120Hz
> > > > ##=C2=A0 =C2=A0 21=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1152x864=C2=
=A0 75Hz
> > > > ##=C2=A0 =C2=A0 22=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 23=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=
=A0 60Hz
> > > > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =
75Hz
> > > > ##=C2=A0 =C2=A0 25=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =
85Hz
> > > > ##=C2=A0 =C2=A0 26=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 120H=
z reduced blanking
> > > > ##=C2=A0 =C2=A0 27=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 28=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 29=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =
75Hz
> > > > ##=C2=A0 =C2=A0 30=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 85Hz
> > > > ##=C2=A0 =C2=A0 31=C2=A0 =C2=A0 =C2=A0 1080p 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =
120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 1080p 24Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 =
60Hz
> > > > ##=C2=A0 =C2=A0 33=C2=A0 =C2=A0 =C2=A0 1080p 25Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 =
85Hz
> > > > ##=C2=A0 =C2=A0 34=C2=A0 =C2=A0 =C2=A0 1080p 30Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 =
120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 35=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 60Hz
> > > > ##=C2=A0 =C2=A0 36=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 75Hz
> > > > ##=C2=A0 =C2=A0 37=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 85Hz
> > > > ##=C2=A0 =C2=A0 38=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x H=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 120Hz red=
uced blanking
> > > > ##=C2=A0 =C2=A0 39=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 reduced bla=
nking=C2=A0 =C2=A0 1360x768=C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 40=C2=A0 =C2=A0 =C2=A0 1080i 100Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1360x768=C2=A0 120Hz r=
educed blanking
> > > > ##=C2=A0 =C2=A0 41=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 100Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050=C2=A0=
 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 42=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 60Hz
> > > > ##=C2=A0 =C2=A0 43=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 75Hz
> > > > ##=C2=A0 =C2=A0 44=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 85Hz
> > > > ##=C2=A0 =C2=A0 45=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 120Hz reduce=
d blanking
> > > > ##=C2=A0 =C2=A0 46=C2=A0 =C2=A0 =C2=A0 1080i 120Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 47=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 120Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =
60Hz
> > > > ##=C2=A0 =C2=A0 48=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =
75Hz
> > > > ##=C2=A0 =C2=A0 49=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 85Hz
> > > > ##=C2=A0 =C2=A0 50=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =
120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 51=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 60Hz
> > > > ##=C2=A0 =C2=A0 52=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 65Hz
> > > > ##=C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 70Hz
> > > > ##=C2=A0 =C2=A0 54=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 75Hz
> > > > ##=C2=A0 =C2=A0 55=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 85Hz
> > > > ##=C2=A0 =C2=A0 56=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 120Hz=
 reduced blanking
> > > > ##=C2=A0 =C2=A0 57=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050=C2=A0 =C2=A0=
 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 58=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 60Hz
> > > > ##=C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 75Hz
> > > > ##=C2=A0 =C2=A0 60=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1680x1050 85Hz
> > > > ##=C2=A0 =C2=A0 61=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1680x1050 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 62=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 60Hz
> > > > ##=C2=A0 =C2=A0 63=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 75Hz
> > > > ##=C2=A0 =C2=A0 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1792x1344 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 65=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 60Hz
> > > > ##=C2=A0 =C2=A0 66=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 75Hz
> > > > ##=C2=A0 =C2=A0 67=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1856x1392 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 68=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 69=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 60Hz
> > > > ##=C2=A0 =C2=A0 70=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 75Hz
> > > > ##=C2=A0 =C2=A0 71=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 85Hz
> > > > ##=C2=A0 =C2=A0 72=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1200 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 73=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 60Hz
> > > > ##=C2=A0 =C2=A0 74=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 75Hz
> > > > ##=C2=A0 =C2=A0 75=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1920x1440 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 76=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 77=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 60Hz
> > > > ##=C2=A0 =C2=A0 78=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 75Hz
> > > > ##=C2=A0 =C2=A0 79=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 85Hz
> > > > ##=C2=A0 =C2=A0 80=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2560x1600 120Hz reduced blanking
> > > > ##=C2=A0 =C2=A0 81=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1366x768=C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1080p=C2=A0 =C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 83=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1600x900=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 84=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 2048x1152=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##=C2=A0 =C2=A0 85=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 720p=C2=A0 =C2=A0 =C2=A0 60Hz
> > > > ##=C2=A0 =C2=A0 86=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1366x768=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > > > ##
> > > > #hdmi_mode=3D1
> > > >
> > > > ## config_hdmi_boost
> > > > ##=C2=A0 =C2=A0 configure the signal strength of the HDMI interface=
.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Default)
> > > > ##=C2=A0 =C2=A0 1
> > > > ##=C2=A0 =C2=A0 2
> > > > ##=C2=A0 =C2=A0 3
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 Try if you have interf=
erence issues with HDMI
> > > > ##=C2=A0 =C2=A0 5
> > > > ##=C2=A0 =C2=A0 6
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Maximum
> > > > ##
> > > > #config_hdmi_boost=3D0
> > > >
> > > > ## hdmi_ignore_cec_init
> > > > ##=C2=A0 =C2=A0 Doesn't sent initial active source message.=C2=A0 A=
voids bringing
> > > > ##=C2=A0 =C2=A0 (CEC enabled) TV out of standby and channel switch =
when rebooting.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Defa=
ult)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Doesn't sent initial a=
ctive source message
> > > > ##
> > > > #hdmi_ignore_cec_init=3D1
> > > >
> > > > ## hdmi_ignore_cec
> > > > ##=C2=A0 =C2=A0 Pretends CEC is not supported at all by TV.
> > > > ##=C2=A0 =C2=A0 No CEC functions will be supported.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Defa=
ult)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend CEC is not sup=
ported by TV
> > > > ##
> > > > #hdmi_ignore_cec=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Overscan Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## overscan_left
> > > > ##=C2=A0 =C2=A0 Number of pixels to skip on left
> > > > ##
> > > > #overscan_left=3D0
> > > >
> > > > ## overscan_right
> > > > ##=C2=A0 =C2=A0 Number of pixels to skip on right
> > > > ##
> > > > #overscan_right=3D0
> > > >
> > > > ## overscan_top
> > > > ##=C2=A0 =C2=A0 Number of pixels to skip on top
> > > > ##
> > > > #overscan_top=3D0
> > > >
> > > > ## overscan_bottom
> > > > ##=C2=A0 =C2=A0 Number of pixels to skip on bottom
> > > > ##
> > > > #overscan_bottom=3D0
> > > >
> > > > ## disable_overscan
> > > > ##=C2=A0 =C2=A0 Set to 1 to disable overscan
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Enabled (Defa=
ult)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Disabled
> > > > ##
> > > > #disable_overscan=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Framebuffer Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## framebuffer_width
> > > > ##=C2=A0 =C2=A0 Console framebuffer width in pixels. Default is dis=
play width minus
> > > > ##=C2=A0 =C2=A0 overscan.
> > > > ##
> > > > #framebuffer_width=3D0
> > > >
> > > > ## framebuffer_height
> > > > ##=C2=A0 =C2=A0 Console framebuffer height in pixels. Default is di=
splay height minus
> > > > ##=C2=A0 =C2=A0 overscan.
> > > > ##
> > > > #framebuffer_height=3D0
> > > >
> > > > ## framebuffer_depth
> > > > ##=C2=A0 =C2=A0 Console framebuffer depth in bits per pixel.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 Valid, but default RGB=
 palette makes an unreadable screen
> > > > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 (Default)
> > > > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 Looks better but has corrupt=
ion issues as of 2012/06/15
> > > > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 Has no corruption issues but=
 needs framebuffer_ignore_alpha=3D1
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and shows the wr=
ong colors as of 2012/06/15
> > > > ##
> > > > #framebuffer_depth=3D16
> > > >
> > > > ## framebuffer_ignore_alpha
> > > > ##=C2=A0 =C2=A0 Set to 1 to disable alpha channel. Helps with 32bit=
.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Alpha Channel (=
Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Alpha Channel
> > > > ##
> > > > #framebuffer_ignore_alpha=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 General Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## display_rotate
> > > > ##=C2=A0 =C2=A0 Rotate the display clockwise or flip the display.
> > > > ##=C2=A0 =C2=A0 The 90 and 270 degrees rotation options require add=
itional memory on GPU,
> > > > ##=C2=A0 =C2=A0 so won't work with the 16M GPU split.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 0 degrees (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 90 degrees
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 180 degrees
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 270 degrees
> > > > ##=C2=A0 =C2=A0 0x10000=C2=A0 Horizontal flip
> > > > ##=C2=A0 =C2=A0 0x20000=C2=A0 Vertical flip
> > > > ##
> > > > #display_rotate=3D0
> > > >
> > > > ## dispmanx_offline
> > > > ##=C2=A0 =C2=A0 Set to "1" to enable offline compositing
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 0
> > > > ##
> > > > #dispmanx_offline=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Licensed Codecs
> > > > ##
> > > > ##=C2=A0 Hardware decoding of additional codecs can be enabled by p=
urchasing a
> > > > ##=C2=A0 license that is locked to the CPU serial number of your Ra=
spberry Pi.
> > > > ##
> > > > ##=C2=A0 Up to 8 licenses per CODEC can be specified as a comma sep=
erated list.
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## decode_MPG2
> > > > ##=C2=A0 =C2=A0 License key to allow hardware MPEG-2 decoding.
> > > > ##
> > > > #decode_MPG2=3D0x12345678
> > > >
> > > > ## decode_WVC1
> > > > ##=C2=A0 =C2=A0 License key to allow hardware VC-1 decoding.
> > > > ##
> > > > #decode_WVC1=3D0x12345678
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Camera Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## start_x
> > > > ##=C2=A0 =C2=A0 Set to "1" to enable the camera module.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Enabling the camera requires gpu_mem option to be s=
pecified with a value
> > > > ##=C2=A0 =C2=A0 of at least 128.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 0
> > > > ##
> > > > start_x=3D1
> > > >
> > > > ## disable_camera_led
> > > > ##=C2=A0 =C2=A0 Turn off the red camera led when recording video or=
 taking a still
> > > > ##=C2=A0 =C2=A0 picture.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED enabled (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED disabled
> > > > ##
> > > > #disable_camera_led=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Test Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## test_mode
> > > > ##=C2=A0 =C2=A0 Enable test sound/image during boot for manufacturi=
ng test.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Test Mod (Defa=
ult)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Test Mode
> > > > ##
> > > > #test_mode=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Memory Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## disable_l2cache
> > > > ##=C2=A0 =C2=A0 Disable arm access to GPU's L2 cache. Needs corresp=
onding L2 disabled
> > > > ##=C2=A0 =C2=A0 kernel.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable L2 Cache (Defau=
lt)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable L2 cache
> > > > ##
> > > > #disable_l2cache=3D0
> > > >
> > > > ## gpu_mem
> > > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for all board revisions=
.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 64
> > > > ##
> > > > #gpu_mem=3D128
> > > >
> > > > ## gpu_mem_256
> > > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 256MB board revisio=
n.
> > > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_256=3D192
> > > >
> > > > ## gpu_mem_512
> > > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 512MB board revisio=
n.
> > > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_512=3D448
> > > >
> > > > ## gpu_mem_1024
> > > > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 1024MB board revisi=
on.
> > > > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_1024=3D944
> > > >
> > > > ## disable_pvt
> > > > ##=C2=A0 =C2=A0 Disable adjusting the refresh rate of RAM every 500=
ms
> > > > ##=C2=A0 =C2=A0 (measuring RAM temparature).
> > > > ##
> > > > #disable_pvt=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 CMA - Dynamic Memory Split
> > > > ##
> > > > ##=C2=A0 CMA enables dynamic management of the ARM and GPU memory s=
plit at runtime.
> > > > ##
> > > > ##=C2=A0 The following options need to be in cmdline.txt for CMA to=
 work:
> > > > ##=C2=A0 =C2=A0 coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## cma_lwm
> > > > ##=C2=A0 =C2=A0 When GPU has less than cma_lwm (low water mark) mem=
ory available it
> > > > ##=C2=A0 =C2=A0 will request some from ARM.
> > > > ##
> > > > #cma_lwm=3D16
> > > >
> > > > ## cma_hwm
> > > > ##=C2=A0 =C2=A0 When GPU has more than cma_hwm (high water mark) me=
mory available it
> > > > ##=C2=A0 =C2=A0 will release some to ARM.
> > > > ##
> > > > #cma_hwm=3D32
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Boot Option Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## disable_commandline_tags
> > > > ##=C2=A0 =C2=A0 Stop start.elf from filling in ATAGS (memory from 0=
x100) before
> > > > ##=C2=A0 =C2=A0 launching kernel
> > > > ##
> > > > #disable_commandline_tags=3D0
> > > >
> > > > ## cmdline (string)
> > > > ##=C2=A0 =C2=A0 Command line parameters. Can be used instead of cmd=
line.txt file
> > > > ##
> > > > #cmdline=3D""
> > > >
> > > > ## kernel (string)
> > > > ##=C2=A0 =C2=A0 Alternative name to use when loading kernel.
> > > > ##
> > > > #kernel=3D""
> > > >
> > > > ## kernel_address
> > > > ##=C2=A0 =C2=A0 Address to load kernel.img file at
> > > > ##
> > > > #kernel_address=3D0x00000000
> > > >
> > > > ## kernel_old
> > > > ##=C2=A0 =C2=A0 Support loading old kernels
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Load kernel at address=
 0x00000000
> > > > ##
> > > > #kernel_old=3D1
> > > >
> > > > ## ramfsfile (string)
> > > > ##=C2=A0 =C2=A0 ramfs file to load
> > > > ##
> > > > #ramfsfile=3D""
> > > >
> > > > ## ramfsaddr
> > > > ##=C2=A0 =C2=A0 Address to load ramfs file at
> > > > ##
> > > > #ramfsaddr=3D0x00000000
> > > >
> > > > ## initramfs (string address)
> > > > ##=C2=A0 =C2=A0 ramfs file and address to load it at (it's like ram=
fsfile+ramfsaddr in
> > > > ##=C2=A0 =C2=A0 one option).
> > > > ##
> > > > ##=C2=A0 =C2=A0 NOTE: this option uses different syntax than all ot=
her options - you
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 should not use "=3D" character=
 here.
> > > > ##
> > > > #initramfs initramf.gz 0x00800000
> > > >
> > > > ## device_tree_address
> > > > ##=C2=A0 =C2=A0 Address to load device_tree at
> > > > ##
> > > > #device_tree_address=3D0x00000000
> > > >
> > > > ## init_uart_baud
> > > > ##=C2=A0 =C2=A0 Initial uart baud rate.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 115200
> > > > ##
> > > > #init_uart_baud=3D115200
> > > >
> > > > ## init_uart_clock
> > > > ##=C2=A0 =C2=A0 Initial uart clock.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 3000000 (3MHz)
> > > > ##
> > > > #init_uart_clock=3D3000000
> > > >
> > > > ## init_emmc_clock
> > > > ##=C2=A0 =C2=A0 Initial emmc clock, increasing this can speedup you=
r SD-card.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 100000000 (100mhz)
> > > > ##
> > > > #init_emmc_clock=3D100000000
> > > >
> > > > ## boot_delay
> > > > ##=C2=A0 =C2=A0 Wait for a given number of seconds in start.elf bef=
ore loading
> > > > ##=C2=A0 =C2=A0 kernel.img.
> > > > ##
> > > > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 1
> > > > ##
> > > > #boot_delay=3D0
> > > >
> > > > ## boot_delay_ms
> > > > ##=C2=A0 =C2=A0 Wait for a given number of milliseconds in start.el=
f before loading
> > > > ##=C2=A0 =C2=A0 kernel.img.
> > > > ##
> > > > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 0
> > > > ##
> > > > #boot_delay_ms=3D0
> > > >
> > > > ## avoid_safe_mode
> > > > ##=C2=A0 =C2=A0 Adding a jumper between pins 5 & 6 of P1 enables a =
recovery Safe Mode.
> > > > ##=C2=A0 =C2=A0 If pins 5 & 6 are used for connecting to external d=
evices (e.g. GPIO),
> > > > ##=C2=A0 =C2=A0 then this setting can be used to ensure Safe Mode i=
s not triggered.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Respect Safe Mode inpu=
t (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ignore Safe Mode input
> > > > ##
> > > > #avoid_safe_mode=3D1
> > > >
> > > > ## disable_splash
> > > > ##=C2=A0 =C2=A0 Avoids the rainbow splash screen on boot.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen enabled =
(Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen disabled
> > > > ##
> > > > #disable_splash=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Overclocking Settings
> > > > ##
> > > > ##=C2=A0 ARM, SDRAM and GPU each have their own PLLs and can have u=
nrelated
> > > > ##=C2=A0 frequencies.
> > > > ##
> > > > ##=C2=A0 The GPU core, h264, v3d and isp share a PLL, so need to ha=
ve related
> > > > ##=C2=A0 frequencies.
> > > > ##=C2=A0 pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_fre=
q)
> > > > ##=C2=A0 gpu_freq =3D pll_freq / [even number]
> > > > ##
> > > > ##=C2=A0 The effective gpu_freq is automatically rounded to nearest=
 even integer, so
> > > > ##=C2=A0 asking for core_freq =3D 500 and gpu_freq =3D 300 will res=
ult in divisor of
> > > > ##=C2=A0 2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> > > > ##
> > > > ##
> > > > ##=C2=A0 Standard Profiles:
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ar=
m_freq=C2=A0 =C2=A0 core_freq=C2=A0 =C2=A0 sdram_freq=C2=A0 =C2=A0 over_vol=
tage
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 None=C2=A0 =C2=A0 =C2=A0 =C2=A0 700=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 250=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 0
> > > > ##=C2=A0 =C2=A0 Modest=C2=A0 =C2=A0 =C2=A0 800=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0
> > > > ##=C2=A0 =C2=A0 Medium=C2=A0 =C2=A0 =C2=A0 900=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 333=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 2
> > > > ##=C2=A0 =C2=A0 High=C2=A0 =C2=A0 =C2=A0 =C2=A0 950=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 6
> > > > ##=C2=A0 =C2=A0 Turbo=C2=A0 =C2=A0 =C2=A0 =C2=A0 1000=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 6
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## force_turbo
> > > > ##=C2=A0 =C2=A0 Control the kernel "ondemand" governor. It has no e=
ffect if no overclock
> > > > ##=C2=A0 =C2=A0 settings are specified.
> > > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable dynamic clocks =
and voltage for the ARM core, GPU core and
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SDRAM (Default).
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of =
h264_freq, v3d_freq and isp_freq is ignored.
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable dynamic clocks=
 and voltage for the ARM core, GPU core
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and SDRAM.
> > > > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of =
h264_freq, v3d_freq and isp_freq is allowed.
> > > > ##
> > > > #force_turbo=3D0
> > > >
> > > > ## initial_turbo
> > > > ##=C2=A0 =C2=A0 Enables turbo mode from boot for the given value in=
 seconds (up to 60)
> > > > ##=C2=A0 =C2=A0 or until cpufreq sets a frequency. Can help with sd=
card corruption if
> > > > ##=C2=A0 =C2=A0 overclocked.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 0
> > > > ##
> > > > #initial_turbo=3D0
> > > >
> > > > ## temp_limit
> > > > ##=C2=A0 =C2=A0 Overheat protection. Sets clocks and voltages to de=
fault when the SoC
> > > > ##=C2=A0 =C2=A0 reaches this Celsius value.
> > > > ##=C2=A0 =C2=A0 Setting this higher than default voids warranty.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 85
> > > > ##
> > > > #temp_limit=3D85
> > > >
> > > > ## arm_freq
> > > > ##=C2=A0 =C2=A0 Frequency of ARM in MHz.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 700.
> > > > ##
> > > > #arm_freq=3D700
> > > >
> > > > ## arm_freq_min
> > > > ##=C2=A0 =C2=A0 Minimum frequency of ARM in MHz (used for dynamic c=
locking).
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 700.
> > > > ##
> > > > #arm_freq_min=3D700
> > > >
> > > > ## gpu_freq
> > > > ##=C2=A0 =C2=A0 Sets core_freq, h264_freq, isp_freq, v3d_freq toget=
her.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #gpu_freq=3D250
> > > >
> > > > ## core_freq
> > > > ##=C2=A0 =C2=A0 Frequency of GPU processor core in MHz. It has an i=
mpact on ARM
> > > > ##=C2=A0 =C2=A0 performance since it drives L2 cache.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #core_freq=3D250
> > > >
> > > > ## core_freq_min
> > > > ##=C2=A0 =C2=A0 Minimum frequency of GPU processor core in MHz (use=
d for dynamic
> > > > ##=C2=A0 =C2=A0 clocking). It has an impact on ARM performance sinc=
e it drives L2 cache.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #core_freq_min=3D250
> > > >
> > > > ## h264_freq
> > > > ##=C2=A0 =C2=A0 Frequency of hardware video block in MHz.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #h264_freq=3D250
> > > >
> > > > ## isp_freq
> > > > ##=C2=A0 =C2=A0 Frequency of image sensor pipeline block in MHz.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #isp_freq=3D250
> > > >
> > > > ## v3d_freq
> > > > ##=C2=A0 =C2=A0 Frequency of 3D block in MHz.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 250.
> > > > ##
> > > > #v3d_freq=3D250
> > > >
> > > > ## sdram_freq
> > > > ##=C2=A0 =C2=A0 Frequency of SDRAM in MHz.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 400.
> > > > ##
> > > > #sdram_freq=3D400
> > > >
> > > > ## sdram_freq_min
> > > > ##=C2=A0 =C2=A0 Minimum frequency of SDRAM in MHz (used for dynamic=
 clocking).
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 400.
> > > > ##
> > > > #sdram_freq_min=3D400
> > > >
> > > > ## avoid_pwm_pll
> > > > ##=C2=A0 =C2=A0 Don't dedicate a pll to PWM audio. This will reduce=
 analogue audio
> > > > ##=C2=A0 =C2=A0 quality slightly. The spare PLL allows the core_fre=
q to be set
> > > > ##=C2=A0 =C2=A0 independently from the rest of the gpu allowing mor=
e control over
> > > > ##=C2=A0 =C2=A0 overclocking.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linked core_freq (Defa=
ult)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Unlinked core_freq
> > > > ##
> > > > #avoid_pwm_pll=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Voltage Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## current_limit_override
> > > > ##=C2=A0 =C2=A0 Disables SMPS current limit protection. Can help if=
 you are currently
> > > > ##=C2=A0 =C2=A0 hitting a reboot failure when overclocking too high=
.
> > > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > > ##
> > > > #current_limit_override=3D0x5A000020
> > > >
> > > > ## over_voltage
> > > > ##=C2=A0 =C2=A0 ARM/GPU core voltage adjust.
> > > > ##=C2=A0 =C2=A0 May set warrany bit.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires forc=
e_turbo=3D1 or current_limit_override)
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires =
force_turbo=3D1 or current_limit_override)
> > > > ##
> > > > #over_voltage=3D0
> > > >
> > > > ## over_voltage_min
> > > > ##=C2=A0 =C2=A0 Minimum ARM/GPU core voltage adjust (used for dynam=
ic clocking).
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires forc=
e_turbo=3D1)
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires =
force_turbo=3D1)
> > > > ##
> > > > #over_voltage_min=3D0
> > > >
> > > > ## over_voltage_sdram
> > > > ##=C2=A0 =C2=A0 Sets over_voltage_sdram_c, over_voltage_sdram_i, ov=
er_voltage_sdram_p
> > > > ##=C2=A0 =C2=A0 together
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > > ##
> > > > #over_voltage_sdram=3D0
> > > >
> > > > ## over_voltage_sdram_c
> > > > ##=C2=A0 =C2=A0 SDRAM controller voltage adjust.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > > ##
> > > > #over_voltage_sdram_c=3D0
> > > >
> > > > ## over_voltage_sdram_i
> > > > ##=C2=A0 =C2=A0 SDRAM I/O voltage adjust.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > > ##
> > > > #over_voltage_sdram_i=3D0
> > > >
> > > > ## over_voltage_sdram_p
> > > > ##=C2=A0 =C2=A0 SDRAM phy voltage adjust.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > > > ##=C2=A0 =C2=A0 ---------------------------------------------------=
----------------------
> > > > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > > > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > > > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > > > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > > > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > > > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > > > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > > > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > > > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > > > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > > > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > > > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > > > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > > > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > > > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > > > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > > > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > > > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > > > ##
> > > > #over_voltage_sdram_p=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 USB Power
> > > > ###################################################################=
#############
> > > >
> > > > ## max_usb_current
> > > > ##=C2=A0 =C2=A0 When set to 1, change the output current limit (for=
 all 4 USB
> > > > ##=C2=A0 =C2=A0 ports combined) from 600mA to double that, 1200mA.
> > > > ##
> > > > ##=C2=A0 =C2=A0 This option is not available for Model A/B boards.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 0.
> > > > ##
> > > > #max_usb_current=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##=C2=A0 Base Device Tree Parameters
> > > > ###################################################################=
#############
> > > >
> > > > ## audio
> > > > ##=C2=A0 =C2=A0 Enable the onboard ALSA audio
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Daudio=3Doff
> > > >
> > > > ## i2c_arm
> > > > ##=C2=A0 =C2=A0 Enable the ARM's i2c interface
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Di2c_arm=3Doff
> > > >
> > > > ## i2c_vc
> > > > ##=C2=A0 =C2=A0 Enable the i2c interface
> > > > ##
> > > > ##=C2=A0 =C2=A0 Usually reserved for the VideoCore processor
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Di2c_vc=3Doff
> > > >
> > > > ## i2c_arm_baudrate
> > > > ##=C2=A0 =C2=A0 Set the baudrate of the ARM's i2c interface
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 100000.
> > > > ##
> > > > #dtparam=3Di2c_arm_baudrate=3D100000
> > > >
> > > > ## i2c_vc_baudrate
> > > > ##=C2=A0 =C2=A0 Set the baudrate of the VideoCore i2c interface
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 100000.
> > > > ##
> > > > #dtparam=3Di2c_vc_baudrate=3D100000
> > > >
> > > > ## i2s
> > > > ##=C2=A0 =C2=A0 Set to "on" to enable the i2s interface
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Di2s=3Doff
> > > >
> > > > ## spi
> > > > ##=C2=A0 =C2=A0 Set to "on" to enable the spi interfaces
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Dspi=3Doff
> > > >
> > > > ## random
> > > > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware random
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Drandom=3Doff
> > > >
> > > > ## uart0
> > > > ##=C2=A0 =C2=A0 Set to "off" to disable uart0
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default on.
> > > > ##
> > > > #dtparam=3Duart0=3Don
> > > >
> > > > ## watchdog
> > > > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware watchdog
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Dwatchdog=3Doff
> > > >
> > > > ## act_led_trigger
> > > > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default mmc.
> > > > ##
> > > > #dtparam=3Dact_led_trigger=3Dmmc
> > > >
> > > > ## act_led_activelow
> > > > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Dact_led_activelow=3Doff
> > > >
> > > > ## act_led_gpio
> > > > ##=C2=A0 =C2=A0 Set which GPIO to use for the activity LED
> > > > ##
> > > > ##=C2=A0 =C2=A0 In case you want to connect it to an external devic=
e
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 16 on a non-Plus board, 47 on a Plus or Pi =
2.
> > > > ##
> > > > #dtparam=3Dact_led_gpio=3D47
> > > >
> > > > ## pwr_led_trigger
> > > > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default mmc.
> > > > ##
> > > > #dtparam=3Dpwr_led_trigger=3Dmmc
> > > >
> > > > ## pwr_led_activelow
> > > > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > > > ##
> > > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default off.
> > > > ##
> > > > #dtparam=3Dpwr_led_activelow=3Doff
> > > >
> > > > ## pwr_led_gpio
> > > > ##=C2=A0 =C2=A0 Set which GPIO to use for the PWR LED
> > > > ##
> > > > ##=C2=A0 =C2=A0 In case you want to connect it to an external devic=
e
> > > > ##
> > > > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > > > ##
> > > > ##=C2=A0 =C2=A0 Default 35.
> > > > ##
> > > > #dtparam=3Dpwr_led_gpio=3D35
> > > > # Enable SPI bus
> > > > dtparam=3Dspi=3Don
> > > > # Enable UART
> > > > enable_uart=3D1
> > > > # Enable VC4 Graphics
> > > > dtoverlay=3Dvc4-kms-v3d
> > > > # Enable Sony RaspberryPi Camera(imx219)
> > > > dtoverlay=3Dimx219
> > > > # Enable USB host mode
> > > > dtoverlay=3Ddwc2,dr_mode=3Dhost
> > > > # Enable CAN
> > > > dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
> > > >
> > > > # Enable WM8960
> > > > dtoverlay=3Dwm8960-soundcard
> > > >
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >
> > > > Any help will be appreciated!
> > > >
> > > >
> > >
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
View/Reply Online (#60541): https://lists.yoctoproject.org/g/yocto/message/=
60541
Mute This Topic: https://lists.yoctoproject.org/mt/99985319/7732448
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [oosman3@yahoo.co=
m]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_1934542_1258510844.1688996197204
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf3d960b7yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi, <br></div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">t=
here is a lot of stuff in /lib/firmware, here is the filtered output:</div>=
<div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setd=
ir=3D"false"><div>/lib/firmware$ find . -name *brcmfmac43455*<br>./brcm/brc=
mfmac43455-sdio.Raspberry Pi Foundation-Raspberry Pi Compute Module 4.txt<b=
r>./brcm/brcmfmac43455-sdio.acepc-t8.txt<br>./brcm/brcmfmac43455-sdio.bin<b=
r>./brcm/brcmfmac43455-sdio.MINIX-NEO Z83-4.txt<br>./brcm/brcmfmac43455-sdi=
o.raspberrypi,3-model-b-plus.txt<br>./brcm/brcmfmac43455-sdio.raspberrypi,3=
-model-a-plus.txt<br>./brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.txt<br=
>./brcm/brcmfmac43455-sdio.Raspberry Pi Foundation-Raspberry Pi 4 Model B.t=
xt<br>./brcm/brcmfmac43455-sdio.AW-CM256SM.txt<br>./brcm/brcmfmac43455-sdio=
.clm_blob<br><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false=
">What should I be looking for?</div><div dir=3D"ltr" data-setdir=3D"false"=
><br></div><div dir=3D"ltr" data-setdir=3D"false">Can you show me your conf=
ig.txt in /boot ? Maybe something is missing there?</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thank=
 you<br></div><div><br></div></div><div><br></div>
       =20
        </div><div id=3D"ydpa3407cedyahoo_quoted_9757374855" class=3D"ydpa3=
407cedyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, July 7, 2023 at 01:11:30 PM CDT, Khem Raj &l=
t;raj.khem@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">I see bluetooth in the logs but not w=
ifi,<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">it should be some=
thing like<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">[&nbsp;  69=
.625830] brcmfmac: F1 signature read @0x18000000=3D0x15264345<br></div><div=
 dir=3D"ltr">[&nbsp;  69.638142] brcmfmac: brcmf_fw_alloc_request: using<br=
></div><div dir=3D"ltr">brcm/brcmfmac43455-sdio for chip BCM4345/6<br></div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">check whats in /lib/firmware/<=
br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">On Fri, Jul 7, 2023 at 6:30=E2=80=AFAM Oosman Saeed &lt;<a href=3D"mai=
lto:oosman3@yahoo.com" rel=3D"nofollow" target=3D"_blank">oosman3@yahoo.com=
</a>&gt; wrote:<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&g=
t; Here is my boot output for the raspberrypi, does anything stick out as t=
he cause of not loading the wifi driver? Or something that points to what w=
ifi driver I need?<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr"=
>&gt; Thanks!<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;=
 --------------------------------------------------------------------------=
-----------------------------------------------<br></div><div dir=3D"ltr">&=
gt;<br></div><div dir=3D"ltr">&gt; U-Boot 2022.01 (Jan 10 2022 - 18:46:34 +=
0000)<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; DRAM:&n=
bsp; 948 MiB<br></div><div dir=3D"ltr">&gt; RPI 4 Model B (0xa03115)<br></d=
iv><div dir=3D"ltr">&gt; MMC:&nbsp;  mmcnr@7e300000: 1, mmc@7e340000: 0<br>=
</div><div dir=3D"ltr">&gt; Loading Environment from FAT... OK<br></div><di=
v dir=3D"ltr">&gt; In:&nbsp; &nbsp; serial<br></div><div dir=3D"ltr">&gt; O=
ut:&nbsp;  serial<br></div><div dir=3D"ltr">&gt; Err:&nbsp;  serial<br></di=
v><div dir=3D"ltr">&gt; Net:<br></div><div dir=3D"ltr">&gt; Warning: <a hre=
f=3D"mailto:ethernet@7d580000" rel=3D"nofollow" target=3D"_blank">ethernet@=
7d580000</a> MAC addresses don't match:<br></div><div dir=3D"ltr">&gt; Addr=
ess in DT is&nbsp; &nbsp; &nbsp; &nbsp; e4:5f:01:ef:cf:95<br></div><div dir=
=3D"ltr">&gt; Address in environment is&nbsp; &nbsp; dc:a6:32:e3:eb:fe<br><=
/div><div dir=3D"ltr">&gt; eth0: <a href=3D"mailto:ethernet@7d580000" rel=
=3D"nofollow" target=3D"_blank">ethernet@7d580000</a><br></div><div dir=3D"=
ltr">&gt; PCIe BRCM: link up, 5.0 Gbps x1 (SSC)<br></div><div dir=3D"ltr">&=
gt; starting USB...<br></div><div dir=3D"ltr">&gt; Bus usb@7e980000: USB DW=
C2<br></div><div dir=3D"ltr">&gt; Bus xhci_pci: Register 5000420 NbrPorts 5=
<br></div><div dir=3D"ltr">&gt; Starting the controller<br></div><div dir=
=3D"ltr">&gt; USB XHCI 1.00<br></div><div dir=3D"ltr">&gt; scanning bus <a =
href=3D"mailto:usb@7e980000" rel=3D"nofollow" target=3D"_blank">usb@7e98000=
0</a> for devices... 1 USB Device(s) found<br></div><div dir=3D"ltr">&gt; s=
canning bus xhci_pci for devices... 2 USB Device(s) found<br></div><div dir=
=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; scanning usb for storage devices..=
. 0 Storage Device(s) found<br></div><div dir=3D"ltr">&gt; Hit any key to s=
top autoboot:&nbsp; 0<br></div><div dir=3D"ltr">&gt; switch to partitions #=
0, OK<br></div><div dir=3D"ltr">&gt; mmc0 is current device<br></div><div d=
ir=3D"ltr">&gt; Scanning mmc 0:1...<br></div><div dir=3D"ltr">&gt; Found U-=
Boot script /boot.scr<br></div><div dir=3D"ltr">&gt; 423 bytes read in 6 ms=
 (68.4 KiB/s)<br></div><div dir=3D"ltr">&gt; ## Executing script at 0240000=
0<br></div><div dir=3D"ltr">&gt; Saving Environment to FAT... OK<br></div><=
div dir=3D"ltr">&gt; rpipart not set, default to 2<br></div><div dir=3D"ltr=
">&gt; 24021504 bytes read in 1019 ms (22.5 MiB/s)<br></div><div dir=3D"ltr=
">&gt; Moving Image from 0x80000 to 0x200000, end=3D1a00000<br></div><div d=
ir=3D"ltr">&gt; ## Flattened Device Tree blob at 2eff1f00<br></div><div dir=
=3D"ltr">&gt;&nbsp; &nbsp; Booting using the fdt blob at 0x2eff1f00<br></di=
v><div dir=3D"ltr">&gt;&nbsp; &nbsp; Using Device Tree in place at 00000000=
2eff1f00, end 000000002f002fe7<br></div><div dir=3D"ltr">&gt;<br></div><div=
 dir=3D"ltr">&gt; Starting kernel ...<br></div><div dir=3D"ltr">&gt;<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Booting Linux on physical=
 CPU 0x0000000000 [0x410fd083]<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 0.000000] Linux version 6.1.35-v8 (oe-user@oe-host) (aarch64-oe-linux-gcc=
 (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP PREEMPT Sun Jun =
25 13:09:39 UTC 2023<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000=
] random: crng init done<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.00=
0000] Machine model: Raspberry Pi 4 Model B Rev 1.5<br></div><div dir=3D"lt=
r">&gt; [&nbsp; &nbsp; 0.000000] efi: UEFI not found.<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 0.000000] Reserved memory: bypass linux,cma node, =
using cmdline CMA params instead<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 0.000000] OF: reserved mem: node linux,cma compatible matching fail<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Zone ranges:<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000]&nbsp;  DMA&nbsp; &nbsp; &nbs=
p; [mem 0x0000000000000000-0x000000003b3fffff]<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 0.000000]&nbsp;  DMA32&nbsp; &nbsp; empty<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000]&nbsp;  Normal&nbsp;  empty<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Movable zone start for eac=
h node<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Early memory=
 node ranges<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000]&nbsp; =
 node&nbsp;  0: [mem 0x0000000000000000-0x000000003b3fffff]<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Initmem setup node 0 [mem 0x000000=
0000000000-0x000000003b3fffff]<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 0.000000] On node 0, zone DMA: 19456 pages in unavailable ranges<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] cma: Reserved 64 MiB at 0x0=
000000036000000<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] per=
cpu: Embedded 29 pages/cpu s79528 r8192 d31064 u118784<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 0.000000] Detected PIPT I-cache on CPU0<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] CPU features: detected: Spec=
tre-v2<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] CPU features=
: detected: Spectre-v3a<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000=
000] CPU features: detected: Spectre-v4<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 0.000000] CPU features: detected: Spectre-BHB<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] CPU features: kernel page table isol=
ation forced ON by KASLR<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.00=
0000] CPU features: detected: Kernel page table isolation (KPTI)<br></div><=
div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] CPU features: detected: ARM e=
rratum 1742098<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] CPU =
features: detected: ARM errata 1165522, 1319367, or 1530923<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] alternatives: applying boot altern=
atives<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Built 1 zone=
lists, mobility grouping on.&nbsp; Total pages: 238896<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 0.000000] Kernel command line: coherent_pool=3D1M=
 8250.nr_uarts=3D1 snd_bcm2835.enable_headphones=3D0 snd_bcm2835.enable_hdm=
i=3D0&nbsp; smsc95xx.macaddr=3DE4:5F:01:EF:CF:95 vc_mem.mem_base=3D0x3ec000=
00 vc_mem.mem_size=3D0x40000000&nbsp; dwc_otg.lpm_enable=3D0 console=3DttyS=
0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait cma=3D64M root=3D=
/dev/mmcblk0p2<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Dent=
ry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Inode-cache hash table e=
ntries: 65536 (order: 7, 524288 bytes, linear)<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 0.000000] mem auto-init: stack:off, heap alloc:off, heap =
free:off<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Memory: 85=
9980K/970752K available (12800K kernel code, 2146K rwdata, 4048K rodata, 43=
52K init, 1088K bss, 45236K reserved, 65536K cma-reserved)<br></div><div di=
r=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] SLUB: HWalign=3D64, Order=3D0-3, Mi=
nObjects=3D0, CPUs=3D4, Nodes=3D1<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 0.000000] ftrace: allocating 41928 entries in 164 pages<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] ftrace: allocated 164 pages with =
3 groups<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] trace even=
t string verifier disabled<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.=
000000] rcu: Preemptible hierarchical RCU implementation.<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] rcu:&nbsp; &nbsp;  RCU event tracing=
 is enabled.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] rcu:&n=
bsp; &nbsp;  RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000]&nbsp; &nbsp;  Trampoli=
ne variant of Tasks RCU enabled.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 0.000000]&nbsp; &nbsp;  Rude variant of Tasks RCU enabled.<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000]&nbsp; &nbsp;  Tracing variant o=
f Tasks RCU enabled.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000=
] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.<br=
></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] rcu: Adjusting geomet=
ry for rcu_fanout_leaf=3D16, nr_cpu_ids=3D4<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] Root IRQ handler: gic_=
handle_irq<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] GIC: Usi=
ng split EOI/Deactivate mode<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; =
0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.<br=
></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000000] arch_timer: cp15 time=
r(s) running at 54.00MHz (phys).<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cyc=
les: 0xc743ce346, max_idle_ns: 440795203123 ns<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 0.000001] sched_clock: 56 bits at 54MHz, resolution 18ns,=
 wraps every 4398046511102ns<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; =
0.000320] Console: colour dummy device 80x25<br></div><div dir=3D"ltr">&gt;=
 [&nbsp; &nbsp; 0.000385] Calibrating delay loop (skipped), value calculate=
d using timer frequency.. 108.00 BogoMIPS (lpj=3D216000)<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.000414] pid_max: default: 32768 minimum: 301=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000552] LSM: Security Fram=
ework initializing<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000747] =
Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.000778] Mountpoint-cache hash tab=
le entries: 2048 (order: 2, 16384 bytes, linear)<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 0.002301] cgroup: Disabling memory control group subsys=
tem<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.004899] cblist_init_gen=
eric: Setting adjustable number of callback queues.<br></div><div dir=3D"lt=
r">&gt; [&nbsp; &nbsp; 0.004917] cblist_init_generic: Setting shift to 2 an=
d lim to 1.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.005129] cblist_=
init_generic: Setting shift to 2 and lim to 1.<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 0.005347] cblist_init_generic: Setting shift to 2 and lim=
 to 1.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.005887] rcu: Hierarc=
hical SRCU implementation.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.=
005899] rcu:&nbsp; &nbsp;  Max phase no-delay instances is 1000.<br></div><=
div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.007367] EFI services will not be avai=
lable.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.008052] smp: Bringin=
g up secondary CPUs ...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.009=
354] Detected PIPT I-cache on CPU1<br></div><div dir=3D"ltr">&gt; [&nbsp; &=
nbsp; 0.009505] CPU1: Booted secondary processor 0x0000000001 [0x410fd083]<=
br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.010925] Detected PIPT I-cac=
he on CPU2<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.011047] CPU2: Bo=
oted secondary processor 0x0000000002 [0x410fd083]<br></div><div dir=3D"ltr=
">&gt; [&nbsp; &nbsp; 0.012511] Detected PIPT I-cache on CPU3<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.012631] CPU3: Booted secondary processor=
 0x0000000003 [0x410fd083]<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.=
012870] smp: Brought up 1 node, 4 CPUs<br></div><div dir=3D"ltr">&gt; [&nbs=
p; &nbsp; 0.012888] SMP: Total of 4 processors activated.<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.012902] CPU features: detected: 32-bit EL0 S=
upport<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.012913] CPU features=
: detected: 32-bit EL1 Support<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 0.012927] CPU features: detected: CRC32 instructions<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 0.013076] CPU: All CPU(s) started at EL2<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.013100] alternatives: applying syst=
em-wide alternatives<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.014823=
] devtmpfs: initialized<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.028=
622] Enabled cp15_barrier support<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 0.028660] Enabled setend support<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 0.029069] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfff=
fffff, max_idle_ns: 7645041785100000 ns<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 0.029105] futex hash table entries: 1024 (order: 4, 65536 bytes,=
 linear)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.030945] pinctrl co=
re: initialized pinctrl subsystem<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 0.031914] DMI not present or invalid.<br></div><div dir=3D"ltr">&gt; [=
&nbsp; &nbsp; 0.032699] NET: Registered PF_NETLINK/PF_ROUTE protocol family=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.037154] DMA: preallocated =
1024 KiB GFP_KERNEL pool for atomic allocations<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 0.037492] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA =
pool for atomic allocations<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0=
.038728] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for atomic al=
locations<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.038835] audit: in=
itializing netlink subsys (disabled)<br></div><div dir=3D"ltr">&gt; [&nbsp;=
 &nbsp; 0.039153] audit: type=3D2000 audit(0.036:1): state=3Dinitialized au=
dit_enabled=3D0 res=3D1<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.039=
837] thermal_sys: Registered thermal governor 'step_wise'<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.039935] cpuidle: using governor menu<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.040239] hw-breakpoint: found 6 bre=
akpoint and 4 watchpoint registers.<br></div><div dir=3D"ltr">&gt; [&nbsp; =
&nbsp; 0.040463] ASID allocator initialised with 32768 entries<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.040661] Serial: AMBA PL011 UART driver<=
br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.061184] bcm2835-mbox fe00b8=
80.mailbox: mailbox enabled<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0=
.084968] platform fe801000.csi: Fixed dependency cycle(s) with /soc/i2c0mux=
/i2c@1/imx219@10<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.092288] ra=
spberrypi-firmware soc:firmware: Attached to firmware from 2022-08-26T14:04=
:10, variant start_x<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.096304=
] raspberrypi-firmware soc:firmware: Firmware hash is 102f1e848393c2112206f=
adffaaf86db04e98326<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.116405]=
 KASLR enabled<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.153273] bcm2=
835-dma fe007000.dma: DMA legacy API manager, dmachans=3D0x1<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.160821] SCSI subsystem initialized<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.161084] usbcore: registered new i=
nterface driver usbfs<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.16114=
4] usbcore: registered new interface driver hub<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 0.161222] usbcore: registered new device driver usb<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.161774] usb_phy_generic phy: su=
pply vcc not found, using dummy regulator<br></div><div dir=3D"ltr">&gt; [&=
nbsp; &nbsp; 0.162065] usb_phy_generic phy: dummy supplies not allowed for =
exclusive requests<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.162516] =
pps_core: LinuxPPS API ver. 1 registered<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 0.162530] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 R=
odolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" rel=3D"nofollow" t=
arget=3D"_blank">giometti@linux.it</a>&gt;<br></div><div dir=3D"ltr">&gt; [=
&nbsp; &nbsp; 0.162556] PTP clock support registered<br></div><div dir=3D"l=
tr">&gt; [&nbsp; &nbsp; 0.162861] Advanced Linux Sound Architecture Driver =
Initialized.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.163830] vgaarb=
: loaded<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.164450] clocksourc=
e: Switched to clocksource arch_sys_counter<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 0.165251] VFS: Disk quotas dquot_6.6.0<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 0.165369] VFS: Dquot-cache hash table entries: 512=
 (order 0, 4096 bytes)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.1656=
01] FS-Cache: Loaded<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.165771=
] CacheFiles: Loaded<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.176134=
] NET: Registered PF_INET protocol family<br></div><div dir=3D"ltr">&gt; [&=
nbsp; &nbsp; 0.176763] IP idents hash table entries: 16384 (order: 5, 13107=
2 bytes, linear)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.178769] tc=
p_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linea=
r)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.178808] Table-perturb ha=
sh table entries: 65536 (order: 6, 262144 bytes, linear)<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.178835] TCP established hash table entries: =
8192 (order: 4, 65536 bytes, linear)<br></div><div dir=3D"ltr">&gt; [&nbsp;=
 &nbsp; 0.178896] TCP bind hash table entries: 8192 (order: 6, 262144 bytes=
, linear)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.179155] TCP: Hash=
 tables configured (established 8192 bind 8192)<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 0.179337] UDP hash table entries: 512 (order: 2, 16384 b=
ytes, linear)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.179398] UDP-L=
ite hash table entries: 512 (order: 2, 16384 bytes, linear)<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 0.179622] NET: Registered PF_UNIX/PF_LOCAL p=
rotocol family<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.180345] RPC:=
 Registered named UNIX socket transport module.<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 0.180361] RPC: Registered udp transport module.<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.180372] RPC: Registered tcp transpo=
rt module.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.180384] RPC: Reg=
istered tcp NFSv4.1 backchannel transport module.<br></div><div dir=3D"ltr"=
>&gt; [&nbsp; &nbsp; 0.180413] PCI: CLS 0 bytes, default 64<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 0.183570] hw perfevents: enabled with armv8_=
cortex_a72 PMU driver, 7 counters available<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 0.184015] kvm [1]: IPA Size Limit: 44 bits<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 0.185464] kvm [1]: vgic interrupt IRQ9<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 0.185719] kvm [1]: Hyp mode initiali=
zed successfully<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.397294] In=
itialise system trusted keyrings<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 1.397772] workingset: timestamp_bits=3D46 max_order=3D18 bucket_order=
=3D0<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.405940] zbud: loaded<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.409065] NFS: Registering the=
 id_resolver key type<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.40910=
5] Key type id_resolver registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &=
nbsp; 1.409117] Key type id_legacy registered<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 1.409261] nfs4filelayout_init: NFSv4 File Layout Driver Re=
gistering...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.409279] nfs4fl=
exfilelayout_init: NFSv4 Flexfile Layout Driver Registering...<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.410729] Key type asymmetric registered<=
br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.410748] Asymmetric key pars=
er 'x509' registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.410841=
] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 246)<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.411139] io scheduler mq-deadlin=
e registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.411157] io sch=
eduler kyber registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.413=
912] irq_brcmstb_l2: registered L2 intc (/soc/interrupt-controller@7ef00100=
, parent irq: 27)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.425381] b=
rcm-pcie fd500000.pcie: host bridge /scb/pcie@7d500000 ranges:<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.425425] brcm-pcie fd500000.pcie:&nbsp; =
 No bus range found for /scb/pcie@7d500000, using [bus 00-ff]<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.425537] brcm-pcie fd500000.pcie:&nbsp; &=
nbsp; &nbsp; MEM 0x0600000000..0x063fffffff -&gt; 0x00c0000000<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.425648] brcm-pcie fd500000.pcie:&nbsp; =
 IB MEM 0x0000000000..0x003fffffff -&gt; 0x0400000000<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 1.426763] brcm-pcie fd500000.pcie: PCI host bridge=
 to bus 0000:00<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.426783] pci=
_bus 0000:00: root bus resource [bus 00-ff]<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 1.426802] pci_bus 0000:00: root bus resource [mem 0x60000000=
0-0x63fffffff] (bus address [0xc0000000-0xffffffff])<br></div><div dir=3D"l=
tr">&gt; [&nbsp; &nbsp; 1.426891] pci 0000:00:00.0: [14e4:2711] type 01 cla=
ss 0x060400<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.427235] pci 000=
0:00:00.0: PME# supported from D0 D3hot<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 1.431746] pci_bus 0000:01: supply vpcie3v3 not found, using dumm=
y regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.431970] pci_bus=
 0000:01: supply vpcie3v3aux not found, using dummy regulator<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.432090] pci_bus 0000:01: supply vpcie12v=
 not found, using dummy regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 1.494550] brcm-pcie fd500000.pcie: link up, 5.0 GT/s PCIe x1 (SSC)<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.494731] pci 0000:01:00.0: [110=
6:3483] type 00 class 0x0c0330<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 1.494875] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64bit]<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.495450] pci 0000:01:00.0: PM=
E# supported from D0 D3hot<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.=
504685] pci 0000:00:00.0: BAR 8: assigned [mem 0x600000000-0x6000fffff]<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.504713] pci 0000:01:00.0: BAR =
0: assigned [mem 0x600000000-0x600000fff 64bit]<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 1.504764] pci 0000:00:00.0: PCI bridge to [bus 01]<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.504790] pci 0000:00:00.0:&nbsp; =
 bridge window [mem 0x600000000-0x6000fffff]<br></div><div dir=3D"ltr">&gt;=
 [&nbsp; &nbsp; 1.516628] Serial: 8250/16550 driver, 1 ports, IRQ sharing e=
nabled<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.521030] iproc-rng200=
 fe104000.rng: hwrng registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbs=
p; 1.521819] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_size:0x=
40000000(1024 MiB)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.524107] =
gpiomem-bcm2835 fe200000.gpiomem: Initialised: Registers at 0xfe200000<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.539887] vc4-drm gpu: bound fe40=
0000.hvs (ops vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.=
555001] brd: module loaded<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.=
565029] loop: module loaded<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1=
.566047] Loading iSCSI transport class v2.0-870.<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 1.572378] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0=
x0000<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.632654] unimac-mdio u=
nimac-mdio.-19: Broadcom UniMAC MDIO bus<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 1.633910] usbcore: registered new interface driver r8152<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.633986] usbcore: registered new i=
nterface driver lan78xx<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.634=
073] usbcore: registered new interface driver smsc95xx<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 1.679745] pci 0000:00:00.0: enabling device (0000=
 -&gt; 0002)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.679951] xhci_h=
cd 0000:01:00.0: xHCI Host Controller<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 1.679982] xhci_hcd 0000:01:00.0: new USB bus registered, assigned =
bus number 1<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.680810] xhci_h=
cd 0000:01:00.0: hcc params 0x002841eb hci version 0x100 quirks 0x0001e4000=
0000890<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.682095] xhci_hcd 00=
00:01:00.0: xHCI Host Controller<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 1.682117] xhci_hcd 0000:01:00.0: new USB bus registered, assigned bus n=
umber 2<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.682145] xhci_hcd 00=
00:01:00.0: Host supports USB 3.0 SuperSpeed<br></div><div dir=3D"ltr">&gt;=
 [&nbsp; &nbsp; 1.682575] usb usb1: New USB device found, idVendor=3D1d6b, =
idProduct=3D0002, bcdDevice=3D 6.01<br></div><div dir=3D"ltr">&gt; [&nbsp; =
&nbsp; 1.682596] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.682612] usb =
usb1: Product: xHCI Host Controller<br></div><div dir=3D"ltr">&gt; [&nbsp; =
&nbsp; 1.682627] usb usb1: Manufacturer: Linux 6.1.35-v8 xhci-hcd<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.682641] usb usb1: SerialNumber: 0000=
:01:00.0<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.683495] hub 1-0:1.=
0: USB hub found<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.683584] hu=
b 1-0:1.0: 1 port detected<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.=
684769] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=3D0003, =
bcdDevice=3D 6.01<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.684791] u=
sb usb2: New USB device strings: Mfr=3D3, Product=3D2, SerialNumber=3D1<br>=
</div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.684807] usb usb2: Product: xHC=
I Host Controller<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.684822] u=
sb usb2: Manufacturer: Linux 6.1.35-v8 xhci-hcd<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 1.684836] usb usb2: SerialNumber: 0000:01:00.0<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.685665] hub 2-0:1.0: USB hub found<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.685779] hub 2-0:1.0: 4 ports=
 detected<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.687987] dwc_otg: =
version 3.00a 10-AUG-2012 (platform bus)<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 1.689218] usbcore: registered new interface driver uas<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.689344] usbcore: registered new int=
erface driver usb-storage<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.6=
89572] mousedev: PS/2 mouse device common for all mice<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 1.698297] sdhci: Secure Digital Host Controller I=
nterface driver<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.698315] sdh=
ci: Copyright(c) Pierre Ossman<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 1.699377] sdhci-pltfm: SDHCI platform and OF driver helper<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.704124] ledtrig-cpu: registered to indica=
te activity on CPUs<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.704847]=
 hid: raw HID events driver (C) Jiri Kosina<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 1.705035] usbcore: registered new interface driver usbhid<br=
></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.705049] usbhid: USB HID core =
driver<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.718785] NET: Registe=
red PF_PACKET protocol family<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp;=
 1.718915] Key type dns_resolver registered<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 1.720252] registered taskstats version 1<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 1.720341] Loading compiled-in X.509 certificat=
es<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.721354] Key type .fscryp=
t registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.721370] Key ty=
pe fscrypt-provisioning registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &=
nbsp; 1.741134] uart-pl011 fe201000.serial: there is not valid maps for sta=
te default<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.742227] uart-pl0=
11 fe201000.serial: cts_event_workaround enabled<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 1.742410] fe201000.serial: ttyAMA1 at MMIO 0xfe201000 (=
irq =3D 37, base_baud =3D 0) is a PL011 rev2<br></div><div dir=3D"ltr">&gt;=
 [&nbsp; &nbsp; 1.742714] serial serial0: tty port ttyAMA1 registered<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.751794] bcm2835-aux-uart fe21504=
0.serial: there is not valid maps for state default<br></div><div dir=3D"lt=
r">&gt; [&nbsp; &nbsp; 1.753004] printk: console [ttyS0] disabled<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.753149] fe215040.serial: ttyS0 at MM=
IO 0xfe215040 (irq =3D 38, base_baud =3D 62500000) is a 16550<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.944485] usb 1-1: new high-speed USB devi=
ce number 2 using xhci_hcd<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 1.=
945726] printk: console [ttyS0] enabled<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 2.163023] usb 1-1: New USB device found, idVendor=3D2109, idProd=
uct=3D3431, bcdDevice=3D 4.21<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp;=
 2.181595] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.183990] usb 1-1: New USB device strings: =
Mfr=3D0, Product=3D1, SerialNumber=3D0<br></div><div dir=3D"ltr">&gt; [&nbs=
p; &nbsp; 2.191076] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog time=
r<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.193116] usb 1-1: Product:=
 USB2.0 Hub<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.199967] bcm2835=
-power bcm2835-power: Broadcom BCM2835 power domains driver<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 2.225382] hub 1-1:1.0: USB hub found<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.234250] wm8960 1-001a: Failed to i=
ssue reset<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.240503] hub 1-1:=
1.0: 4 ports detected<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 2.24604=
3] wm8960: probe of 1-001a failed with error -5<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 3.233219] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_de=
bug2:0<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.239366] mmc-bcm2835 =
fe300000.mmcnr: DMA channel allocated<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 3.279742] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.293846] vc4-drm gpu: bound fe4000=
00.hvs (ops vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.30=
3839] of_cfs_init<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.306498] o=
f_cfs_init: OK<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.310651] mmc0=
: SDHCI controller on fe340000.mmc [fe340000.mmc] using ADMA<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.319128] ALSA device list:<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 3.322174]&nbsp;  No soundcards found.<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.325453] vc4-drm gpu: bound fe4000=
00.hvs (ops vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.33=
2870] Waiting for root device /dev/mmcblk0p2...<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 3.373963] mmc1: new high speed SDIO card at address 0001=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.428500] mmc0: new ultra hi=
gh speed DDR50 SDHC card at address aaaa<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 3.436231] mmcblk0: mmc0:aaaa SC32G 29.7 GiB<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 3.446937]&nbsp; mmcblk0: p1 p2 p3 p4<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.451351] mmcblk0: mmc0:aaaa SC32G 29.=
7 GiB (quirks 0x00004000)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.4=
65009] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 3.489729] EXT4-fs (mmcblk0p2): INFO: recovery =
required on readonly filesystem<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbs=
p; 3.497251] EXT4-fs (mmcblk0p2): write access will be enabled during recov=
ery<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.518291] EXT4-fs (mmcblk=
0p2): recovery complete<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.524=
965] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Quota =
mode: none.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.533743] VFS: Mo=
unted root (ext4 filesystem) readonly on device 179:2.<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 3.544293] devtmpfs: mounted<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 3.556671] Freeing unused kernel memory: 4352K<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.561493] Run /sbin/init as init =
process<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.804512] systemd[1]:=
 System time before build time, advancing clock.<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 3.979554] NET: Registered PF_INET6 protocol family<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.986602] Segment Routing with IP=
v6<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 3.990402] In-situ OAM (IOA=
M) with IPv6<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.030213] system=
d[1]: systemd 250.5+ running in system mode (+PAM -AUDIT -SELINUX -APPARMOR=
 +IMA -SMACK -SECCOMP -GCRYPT -GNUTLS -OPENSSL -ACL +BLKID -CURL -ELFUTILS =
-FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTSETUP +LIBFDISK -PCRE2 -PWQUALITY -P=
11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP=
 +SYSVINIT default-hierarchy=3Dhybrid)<br></div><div dir=3D"ltr">&gt; [&nbs=
p; &nbsp; 4.063235] systemd[1]: Detected architecture arm64.<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; Welcome to OpenEmbedded nod=
istro.0!<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 4.139575] systemd[1]: Hostname set to &lt;raspberrypi4-64&gt;.<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.262773] systemd-fstab-genera=
tor[110]: Failed to create unit file /run/systemd/generator/boot.mount, as =
it already exists. Duplicate entry in /etc/fstab?<br></div><div dir=3D"ltr"=
>&gt; [&nbsp; &nbsp; 4.279296] systemd-sysv-generator[118]: SysV service '/=
etc/init.d/psplash.sh' lacks a native systemd unit file. Automatically gene=
rating a unit file for compatibility. Please update package to include a na=
tive systemd unit file, in order to make it more safe and robust.<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.316704] systemd-sysv-generator[118]:=
 SysV service '/etc/init.d/halt' lacks a native systemd unit file. Automati=
cally generating a unit file for compatibility. Please update package to in=
clude a native systemd unit file, in order to make it more safe and robust.=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.341773] systemd-sysv-gener=
ator[118]: SysV service '/etc/init.d/sendsigs' lacks a native systemd unit =
file. Automatically generating a unit file for compatibility. Please update=
 package to include a native systemd unit file, in order to make it more sa=
fe and robust.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.367010] syst=
emd-sysv-generator[118]: SysV service '/etc/init.d/save-rtc.sh' lacks a nat=
ive systemd unit file. Automatically generating a unit file for compatibili=
ty. Please update package to include a native systemd unit file, in order t=
o make it more safe and robust.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbs=
p; 4.394486] systemd-sysv-generator[118]: SysV service '/etc/init.d/sshd' l=
acks a native systemd unit file. Automatically generating a unit file for c=
ompatibility. Please update package to include a native systemd unit file, =
in order to make it more safe and robust.<br></div><div dir=3D"ltr">&gt; [&=
nbsp; &nbsp; 4.421091] systemd-sysv-generator[118]: SysV service '/etc/init=
.d/umountfs' lacks a native systemd unit file. Automatically generating a u=
nit file for compatibility. Please update package to include a native syste=
md unit file, in order to make it more safe and robust.<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 4.452704] systemd-sysv-generator[118]: SysV se=
rvice '/etc/init.d/reboot' lacks a native systemd unit file. Automatically =
generating a unit file for compatibility. Please update package to include =
a native systemd unit file, in order to make it more safe and robust.<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.477081] systemd-sysv-generator[1=
18]: SysV service '/etc/init.d/network-manager' lacks a native systemd unit=
 file. Automatically generating a unit file for compatibility. Please updat=
e package to include a native systemd unit file, in order to make it more s=
afe and robust.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 4.505088] sys=
temd-sysv-generator[118]: SysV service '/etc/init.d/umountnfs.sh' lacks a n=
ative systemd unit file. Automatically generating a unit file for compatibi=
lity. Please update package to include a native systemd unit file, in order=
 to make it more safe and robust.<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 4.530697] systemd-sysv-generator[118]: SysV service '/etc/init.d/singl=
e' lacks a native systemd unit file. Automatically generating a unit file f=
or compatibility. Please update package to include a native systemd unit fi=
le, in order to make it more safe and robust.<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 4.576736] systemd[108]: /lib/systemd/system-generators/sys=
temd-fstab-generator failed with exit status 1.<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 4.958275] systemd[1]: Queued start job for default targe=
t Graphical Interface.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.0339=
21] systemd[1]: Created slice Slice /system/getty.<br></div><div dir=3D"ltr=
">&gt; [&nbsp; OK&nbsp; ] Created slice Slice /system/getty.<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.059177] systemd[1]: Created slice Slice /=
system/modprobe.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Created =
slice Slice /system/modprobe.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp;=
 5.083019] systemd[1]: Created slice Slice /system/serial-getty.<br></div><=
div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Created slice Slice /system/serial-=
getty.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.106617] systemd[1]: =
Created slice User and Session Slice.<br></div><div dir=3D"ltr">&gt; [&nbsp=
; OK&nbsp; ] Created slice User and Session Slice.<br></div><div dir=3D"ltr=
">&gt; [&nbsp; &nbsp; 5.129140] systemd[1]: Started Dispatch Password Reque=
sts to Console Directory Watch.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&n=
bsp; ] Started Dispatch Password =E2=80=A6ts to Console Directory Watch.<br=
></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.157059] systemd[1]: Started F=
orward Password Requests to Wall Directory Watch.<br></div><div dir=3D"ltr"=
>&gt; [&nbsp; OK&nbsp; ] Started Forward Password R=E2=80=A6uests to Wall D=
irectory Watch.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.185040] sys=
temd[1]: Reached target Path Units.<br></div><div dir=3D"ltr">&gt; [&nbsp; =
OK&nbsp; ] Reached target Path Units.<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 5.204693] systemd[1]: Reached target Remote File Systems.<br></div=
><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Remote File System=
s.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.224647] systemd[1]: Reac=
hed target Slice Units.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] R=
eached target Slice Units.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.=
244692] systemd[1]: Reached target Swaps.<br></div><div dir=3D"ltr">&gt; [&=
nbsp; OK&nbsp; ] Reached target Swaps.<br></div><div dir=3D"ltr">&gt; [&nbs=
p; &nbsp; 5.265209] systemd[1]: Listening on initctl Compatibility Named Pi=
pe.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on initctl =
Compatibility Named Pipe.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.2=
90036] systemd[1]: Listening on Journal Audit Socket.<br></div><div dir=3D"=
ltr">&gt; [&nbsp; OK&nbsp; ] Listening on Journal Audit Socket.<br></div><d=
iv dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.313629] systemd[1]: Listening on Journ=
al Socket (/dev/log).<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Lis=
tening on Journal Socket (/dev/log).<br></div><div dir=3D"ltr">&gt; [&nbsp;=
 &nbsp; 5.337712] systemd[1]: Listening on Journal Socket.<br></div><div di=
r=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on Journal Socket.<br></div><di=
v dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.357892] systemd[1]: Listening on Networ=
k Service Netlink Socket.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ]=
 Listening on Network Service Netlink Socket.<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 5.381890] systemd[1]: Listening on udev Control Socket.<br=
></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on udev Control S=
ocket.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.405457] systemd[1]: =
Listening on udev Kernel Socket.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&=
nbsp; ] Listening on udev Kernel Socket.<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 5.429385] systemd[1]: Listening on User Database Manager Socket=
.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on User Datab=
ase Manager Socket.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.453682]=
 systemd[1]: Huge Pages File System was skipped because of a failed conditi=
on check (ConditionPathExists=3D/sys/kernel/mm/hugepages).<br></div><div di=
r=3D"ltr">&gt; [&nbsp; &nbsp; 5.489226] systemd[1]: Mounting POSIX Message =
Queue File System...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; Mounting POSIX Message Queue File System...<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 5.518931] systemd[1]: Mounting Kernel Debug File =
System...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Mounting Kernel Debug File System...<br></div><div dir=3D"ltr">&gt; [&nbsp;=
 &nbsp; 5.546741] systemd[1]: Mounting Kernel Trace File System...<br></div=
><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting Kernel Tr=
ace File System...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.593235] =
systemd[1]: Mounting Temporary Directory /tmp...<br></div><div dir=3D"ltr">=
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting Temporary Directory /tmp...=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.623544] systemd[1]: Starti=
ng Create List of Static Device Nodes...<br></div><div dir=3D"ltr">&gt;&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; Starting Create List of Static Device Nodes.=
..<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.654773] systemd[1]: Star=
ting Load Kernel Module configfs...<br></div><div dir=3D"ltr">&gt;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; Starting Load Kernel Module configfs...<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.709616] systemd[1]: Starting Load Ke=
rnel Module drm...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; Starting Load Kernel Module drm...<br></div><div dir=3D"ltr">&gt; =
[&nbsp; &nbsp; 5.738793] systemd[1]: Starting Load Kernel Module fuse...<br=
></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Loa=
d Kernel Module fuse...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.768=
721] systemd[1]: Starting Start psplash boot splash screen...<br></div><div=
 dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Start psplash =
boot splash screen...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.78693=
6] fuse: init (API version 7.37)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 5.821605] systemd[1]: Starting File System Check on Root Device...<br><=
/div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting File =
System Check on Root Device...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 5.855599] systemd[1]: Starting Journal Service...<br></div><div dir=3D"lt=
r">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Journal Service...<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.870309] systemd[1]: Starting Loa=
d Kernel Modules...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; Starting Load Kernel Modules...<br></div><div dir=3D"ltr">&gt; [&=
nbsp; &nbsp; 5.882953] systemd[1]: Starting Generate network units from Ker=
nel command line...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; Starting Generate network =E2=80=A6ts from Kernel command line...=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.898183] systemd[1]: Starti=
ng Coldplug All udev Devices...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; Starting Coldplug All udev Devices...<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 5.923633] systemd[1]: Mounted POSIX Message =
Queue File System.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; &nbsp; &=
nbsp; 5.931540] systemd[1]: Mounted Kernel Debug File System.<br></div><div=
 dir=3D"ltr">&gt; 0m] Mounted&nbsp; &nbsp;  5.938611] systemd[1]: Mounted K=
ernel Trace File System.<br></div><div dir=3D"ltr">&gt; 1;39mPOSIX Message =
Queue[&nbsp; &nbsp; 5.945565] systemd[1]: Mounted Temporary Directory /tmp.=
<br></div><div dir=3D"ltr">&gt;&nbsp; File System.<br></div><div dir=3D"ltr=
">&gt; [&nbsp; OK&nbsp; ] M[&nbsp; &nbsp; 5.954551] systemd[1]: Finished Cr=
eate List of Static Device Nodes.<br></div><div dir=3D"ltr">&gt; ounted Ker=
nel Debug File System[&nbsp; &nbsp; 5.964515] systemd[1]: modprobe@configfs=
.service: Deactivated successfully.<br></div><div dir=3D"ltr">&gt; .<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; &nbsp; &nbsp; 5.974346] systemd[1=
]: Finished Load Kernel Module configfs.<br></div><div dir=3D"ltr">&gt; m] =
Mounted Kernel Trace[&nbsp; &nbsp; 5.983089] systemd[1]: modprobe@drm.servi=
ce: Deactivated successfully.<br></div><div dir=3D"ltr">&gt;&nbsp; File Sys=
tem.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 5.991589] systemd[1]: Fi=
nished Load Kernel Module drm.<br></div><div dir=3D"ltr">&gt; 32m&nbsp; OK&=
nbsp; ] Mounted Temporary Directory /tmp.<br></div><div dir=3D"ltr">&gt; [&=
nbsp; OK&nbsp; ] Finished Create List of Static Device Nodes.<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Load Kernel Module configfs.<=
br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Load Kernel Modu=
le drm.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.043531] systemd[1]:=
 modprobe@fuse.service: Deactivated successfully.<br></div><div dir=3D"ltr"=
>&gt; [&nbsp; &nbsp; 6.052098] systemd[1]: Finished Load Kernel Module fuse=
.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Load Kernel Mo=
dule fuse.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.077790] systemd[=
1]: psplash-start.service: Main process exited, code=3Dexited, status=3D255=
/EXCEPTION<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.081916] cfg80211=
: Loading compiled-in X.509 certificates for regulatory database<br></div><=
div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.088483] systemd[1]: psplash-start.ser=
vice: Failed with result 'exit-code'.<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 6.104852] systemd[1]: Failed to start Start psplash boot splash sc=
reen.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.112953] cfg80211: Loa=
ded X.509 cert 'sforshee: 00b28ddf47aef9cea7'<br></div><div dir=3D"ltr">&gt=
; 1mFAILED] Failed to start Start psplash boot splash screen.<br></div><div=
 dir=3D"ltr">&gt; See 'systemctl status psplash-start.service' for details.=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.160679] systemd[1]: Depend=
ency failed for Start psplash-systemd progress communication helper.<br></d=
iv><div dir=3D"ltr">&gt; [DEPEND] Dependency failed for Star=E2=80=A6progre=
ss communication helper.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.19=
2643] systemd[1]: psplash-systemd.service: Job psplash-systemd.service/star=
t failed with result 'dependency'.<br></div><div dir=3D"ltr">&gt; [&nbsp; &=
nbsp; 6.204928] systemd[1]: Started Journal Service.<br></div><div dir=3D"l=
tr">&gt; [&nbsp; OK&nbsp; ] Started Journal Service.<br></div><div dir=3D"l=
tr">&gt; [&nbsp; OK&nbsp; ] Finished File System Check on Root Device.<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Load Kernel Modules.=
<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Generate networ=
k units from Kernel command line.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; Mounting FUSE Control File System...<br></div><div =
dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting Kernel Configur=
ation File System...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; Starting Remount Root and Kernel File Systems...<br></div><div d=
ir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Apply Kernel Var=
iable[&nbsp; &nbsp; 6.438252] EXT4-fs (mmcblk0p2): re-mounted. Quota mode: =
none.<br></div><div dir=3D"ltr">&gt; s...<br></div><div dir=3D"ltr">&gt; [&=
nbsp; OK&nbsp; ] Mounted FUSE Control File System.<br></div><div dir=3D"ltr=
">&gt; [&nbsp; OK&nbsp; ] Mounted Kernel Configuration File System.<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Remount Root and Kernel=
 File Systems.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished A=
pply Kernel Variables.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; Starting Flush Journal to Persistent Storage...<br></div><div =
dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.610243] systemd-journald[132]: Received c=
lient request to flush runtime journal.<br></div><div dir=3D"ltr">&gt;&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; Starting Create Static Device Nodes in /dev..=
.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Flush Journal =
to Persistent Storage.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Fi=
nished Create Static Device Nodes in /dev.<br></div><div dir=3D"ltr">&gt; [=
&nbsp; OK&nbsp; ] Reached target Preparation for Local File Systems.<br></d=
iv><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting /var/vo=
latile...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 6.783880] audit: ty=
pe=3D1334 audit(1651167747.975:2): prog-id=3D5 op=3DLOAD<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 6.790890] audit: type=3D1334 audit(1651167747.=
983:3): prog-id=3D6 op=3DLOAD<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; Starting Rule-based Manage=E2=80=A6for Device Events an=
d Files...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Coldp=
lug All udev Devices.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Mou=
nted /var/volatile.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; Starting Load/Save Random Seed...<br></div><div dir=3D"ltr">&gt; =
[&nbsp; OK&nbsp; ] Finished Load/Save Random Seed.<br></div><div dir=3D"ltr=
">&gt; [&nbsp; OK&nbsp; ] Started Rule-based Manager for Device Events and =
Files.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on Load/=
Save RF =E2=80=A6itch Status /dev/rfkill Watch.<br></div><div dir=3D"ltr">&=
gt; [&nbsp; &nbsp; 7.195859] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_o=
ps)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.277840] snd_bcm2835: mo=
dule is from the staging directory, the quality is unknown, you have been w=
arned.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.294427] mc: Linux me=
dia interface: v0.10<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.299440=
] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></div><div dir=3D"lt=
r">&gt; [&nbsp; &nbsp; 7.333535] vc_sm_cma: module is from the staging dire=
ctory, the quality is unknown, you have been warned.<br></div><div dir=3D"l=
tr">&gt; [&nbsp; &nbsp; 7.347250] bcm2835_vc_sm_cma_probe: Videocore shared=
 memory driver<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.353870] [vc_=
sm_connected_init]: start<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.3=
60912] [vc_sm_connected_init]: installed successfully<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 7.374284] vc4-drm gpu: bound fe400000.hvs (ops vc4=
_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.376370] videodev:=
 Linux video capture interface: v2.00<br></div><div dir=3D"ltr">&gt; [&nbsp=
; OK&nbsp; ] Found device /dev/mmcblk0p1.<br></div><div dir=3D"ltr">&gt; [&=
nbsp; &nbsp; 7.471186] bcm2835_mmal_vchiq: module is from the staging direc=
tory, the quality is unknown, you have been warned.<br></div><div dir=3D"lt=
r">&gt; [&nbsp; &nbsp; 7.471447] bcm2835_mmal_vchiq: module is from the sta=
ging directory, the quality is unknown, you have been warned.<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.489471] rpivid_hevc: module is from the =
staging directory, the quality is unknown, you have been warned.<br></div><=
div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.499293] bcm2835_mmal_vchiq: module is=
 from the staging directory, the quality is unknown, you have been warned.<=
br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting /=
boot...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.523818] rpivid feb1=
0000.codec: Device registered as /dev/video19<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 7.541963] bcm2835_isp: module is from the staging director=
y, the quality is unknown, you have been warned.<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 7.542832] bcm2835_codec: module is from the staging dir=
ectory, the quality is unknown, you have been warned.<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 7.561866] bcm2835_v4l2: module is from the staging=
 directory, the quality is unknown, you have been warned.<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 7.577245] bcm2835-codec bcm2835-codec: Device =
registered as /dev/video10<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.=
586154] bcm2835-codec bcm2835-codec: Loaded V4L2 decode<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 7.593141] vc4-drm gpu: bound fe400000.hvs (ops=
 vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.602178] bcm28=
35-codec bcm2835-codec: Device registered as /dev/video11<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 7.617113] bcm2835-codec bcm2835-codec: Loaded =
V4L2 encode<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.620369] FAT-fs =
(mmcblk0p1): Volume was not properly unmounted. Some data may be corrupt. P=
lease run fsck.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Found dev=
ice /dev/mmcblk0p4.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.643196]=
 vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></div><div dir=3D"ltr=
">&gt; [&nbsp; &nbsp; 7.660411] bcm2835-codec bcm2835-codec: Device registe=
red as /dev/video12<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.667543]=
 bcm2835-codec bcm2835-codec: Loaded V4L2 isp<br></div><div dir=3D"ltr">&gt=
; [&nbsp; OK&nbsp; ] Mounted /boot.<br></div><div dir=3D"ltr">&gt; [&nbsp; =
&nbsp; 7.690130] bcm2835-isp bcm2835-isp: Device node output[0] registered =
as /dev/video13<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.690209] bcm=
2835-codec bcm2835-codec: Device registered as /dev/video18<br></div><div d=
ir=3D"ltr">&gt; [&nbsp; &nbsp; 7.705141] vc4-drm gpu: bound fe400000.hvs (o=
ps vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.711499] bcm=
2835-codec bcm2835-codec: Loaded V4L2 image_fx<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 7.720276] bcm2835-codec bcm2835-codec: Device registered =
as /dev/video31<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.727418] bcm=
2835-codec bcm2835-codec: Loaded V4L2 encode_image<br></div><div dir=3D"ltr=
">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting /data...<br></div><div di=
r=3D"ltr">&gt; [&nbsp; &nbsp; 7.749249] vc4-drm gpu: bound fe400000.hvs (op=
s vc4_hvs_ops)<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.755381] bcm2=
835-isp bcm2835-isp: Device node capture[0] registered as /dev/video14<br><=
/div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.765460] EXT4-fs (mmcblk0p4): re=
covery complete<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.770739] EXT=
4-fs (mmcblk0p4): mounted filesystem with ordered data mode. Quota mode: no=
ne.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.811000] bcm2835-isp bcm=
2835-isp: Device node capture[1] registered as /dev/video15<br></div><div d=
ir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mounting /media...<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.857123] brcmstb-i2c fef04500.i2c:=
&nbsp; @97500hz registered in polling mode<br></div><div dir=3D"ltr">&gt; [=
&nbsp; OK&nbsp; ] Mounted /data.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nb=
sp; 7.874813] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br></div><d=
iv dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.884625] brcmstb-i2c fef09500.i2c:&nbsp=
; @97500hz registered in polling mode<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 7.885738] dwc2 fe980000.usb: supply vusb_d not found, using dummy =
regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.900958] bcm2835-i=
sp bcm2835-isp: Device node stats[2] registered as /dev/video16<br></div><d=
iv dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.911582] bcm2835-isp bcm2835-isp: Regis=
ter output node 0 with media controller<br></div><div dir=3D"ltr">&gt; [&nb=
sp; &nbsp; 7.920029] bcm2835-isp bcm2835-isp: Register capture node 1 with =
media controller<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.928582] bc=
m2835-isp bcm2835-isp: Register capture node 2 with media controller<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.938142] bcm2835-isp bcm2835-isp: =
Register capture node 3 with media controller<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 7.948178] Registered IR keymap rc-cec<br></div><div dir=3D=
"ltr">&gt; [&nbsp; &nbsp; 7.949491] dwc2 fe980000.usb: supply vusb_a not fo=
und, using dummy regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.=
952499] rc rc0: vc4-hdmi-0 as /devices/platform/soc/fef00700.hdmi/rc/rc0<br=
></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 7.970883] input: vc4-hdmi-0 as =
/devices/platform/soc/fef00700.hdmi/rc/rc0/input0<br></div><div dir=3D"ltr"=
>&gt; [&nbsp; &nbsp; 7.998764] Bluetooth: Core ver 2.22<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 8.000774] bcm2835-isp bcm2835-isp: Device node=
 output[0] registered as /dev/video20<br></div><div dir=3D"ltr">&gt; [&nbsp=
; &nbsp; 8.014548] i2c i2c-22: Added multiplexed i2c bus 0<br></div><div di=
r=3D"ltr">&gt; [&nbsp; &nbsp; 8.019825] NET: Registered PF_BLUETOOTH protoc=
ol family<br></div><div dir=3D"ltr">&gt; [[&nbsp; &nbsp; 8.025899] Bluetoot=
h: HCI device and connection manager initialized<br></div><div dir=3D"ltr">=
&gt;&nbsp;  OK&nbsp; &nbsp; &nbsp; 8.033423] Bluetooth: HCI socket layer in=
itialized<br></div><div dir=3D"ltr">&gt; 0m] Moun[&nbsp; &nbsp; 8.038932] B=
luetooth: L2CAP socket layer initialized<br></div><div dir=3D"ltr">&gt; ted=
 /me[&nbsp; &nbsp; 8.045219] i2c i2c-22: Added multiplexed i2c bus 10<br></=
div><div dir=3D"ltr">&gt; dia.[&nbsp; &nbsp; 8.051513] Bluetooth: SCO socke=
t layer initialized<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr=
">&gt; [&nbsp; &nbsp; 8.051655] vc4-drm gpu: bound fef00700.hdmi (ops vc4_h=
dmi_ops)<br></div><div dir=3D"ltr">&gt; [[&nbsp; &nbsp; 8.065745] bcm2835-i=
sp bcm2835-isp: Device node capture[0] registered as /dev/video21<br></div>=
<div dir=3D"ltr">&gt;&nbsp;  OK&nbsp; &nbsp; &nbsp; 8.067355] dwc2 fe980000=
.usb: DWC OTG Controller<br></div><div dir=3D"ltr">&gt; 0m] Reached target&=
nbsp; &nbsp;  8.081443] bcm2835-isp bcm2835-isp: Device node capture[1] reg=
istered as /dev/video22<br></div><div dir=3D"ltr">&gt; ;39mLoca[&nbsp; &nbs=
p; 8.090168] dwc2 fe980000.usb: new USB bus registered, assigned bus number=
 3<br></div><div dir=3D"ltr">&gt; l File S[&nbsp; &nbsp; 8.097867] dwc2 fe9=
80000.usb: irq 48, io mem 0xfe980000<br></div><div dir=3D"ltr">&gt; ystems.=
<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.114764] usb usb3: New USB =
device found, idVendor=3D1d6b, idProduct=3D0002, bcdDevice=3D 6.01<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.123245] usb usb3: New USB device st=
rings: Mfr=3D3, Product=3D2, SerialNumber=3D1<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 8.124928] Bluetooth: HCI UART driver ver 2.3<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.130823] usb usb3: Product: DWC OTG Contr=
oller<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.135158] Bluetooth: HC=
I UART protocol H4 registered<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp;=
 8.135402] Bluetooth: HCI UART protocol Three-wire (H5) registered<br></div=
><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.140162] usb usb3: Manufacturer: Lin=
ux 6.1.35-v8 dwc2_hsotg<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.146=
204] Bluetooth: HCI UART protocol Broadcom registered<br></div><div dir=3D"=
ltr">&gt; [&nbsp; &nbsp; 8.147810] hci_uart_bcm serial0-0: supply vbat not =
found, using dummy regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; =
8.151990] usb usb3: SerialNumber: fe980000.usb<br></div><div dir=3D"ltr">&g=
t; [&nbsp; &nbsp; 8.156581] hci_uart_bcm serial0-0: supply vddio not found,=
 using dummy regulator<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.1578=
12] bcm2835-isp bcm2835-isp: Device node stats[2] registered as /dev/video2=
3<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.164339] Registered IR key=
map rc-cec<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.181118] bcm2835-=
isp bcm2835-isp: Register output node 0 with media controller<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.185800] hub 3-0:1.0: USB hub found<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.187494] rc rc1: vc4-hdmi-1 as /d=
evices/platform/soc/fef05700.hdmi/rc/rc1<br></div><div dir=3D"ltr">&gt; [&n=
bsp; &nbsp; 8.187734] input: vc4-hdmi-1 as /devices/platform/soc/fef05700.h=
dmi/rc/rc1/input1<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.191742] b=
cm2835-isp bcm2835-isp: Register capture node 1 with media controller<br></=
div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.195999] hub 3-0:1.0: 1 port dete=
cted<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.204622] bcm2835-isp bc=
m2835-isp: Register capture node 2 with media controller<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 8.221097] [drm] Initialized v3d 1.0.0 20180419=
 for fec00000.v3d on minor 1<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; =
8.222650] bcm2835-isp bcm2835-isp: Register capture node 3 with media contr=
oller<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.231443] vc4-drm gpu: =
bound fef05700.hdmi (ops vc4_hdmi_ops)<br></div><div dir=3D"ltr">&gt;&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; Starting Creat[&nbsp; &nbsp; 8.264622] bcm2835=
-isp bcm2835-isp: Loaded V4L2 bcm2835-isp<br></div><div dir=3D"ltr">&gt; e =
Volatile Files and Directories...<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 8.275166] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_ops)<br></div><=
div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.277008] uart-pl011 fe201000.serial: n=
o DMA platform data<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.281896]=
 vc4-drm gpu: bound fe206000.pixelvalve (ops vc4_crtc_ops)<br></div><div di=
r=3D"ltr">&gt; [&nbsp; &nbsp; 8.315281] vc4-drm gpu: bound fe207000.pixelva=
lve (ops vc4_crtc_ops)<br></div><div dir=3D"ltr">&gt; [[&nbsp; &nbsp; 8.322=
477] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4_crtc_ops)<br></div><di=
v dir=3D"ltr">&gt;&nbsp;  OK&nbsp; &nbsp; &nbsp; 8.330038] vc4-drm gpu: bou=
nd fe216000.pixelvalve (ops vc4_crtc_ops)<br></div><div dir=3D"ltr">&gt; 0m=
] Fini[&nbsp; &nbsp; 8.337441] vc4-drm gpu: bound fec12000.pixelvalve (ops =
vc4_crtc_ops)<br></div><div dir=3D"ltr">&gt; shed Create Volatile Files and=
 Directories.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.353596] [drm]=
 Initialized vc4 0.0.0 20140616 for gpu on minor 0<br></div><div dir=3D"ltr=
">&gt; [&nbsp; &nbsp; 8.360870] vc4-drm gpu: [drm] Cannot find any crtc or =
sizes<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Star=
ting Network Time Synchronization...<br></div><div dir=3D"ltr">&gt;&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; Starting Record System Boot/Shutdown in UTMP...<=
br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting L=
oad/Save RF Kill Switch Status...<br></div><div dir=3D"ltr">&gt; [&nbsp; &n=
bsp; 8.537403] Bluetooth: hci0: BCM: chip id 107<br></div><div dir=3D"ltr">=
&gt; [&nbsp; &nbsp; 8.542354] Bluetooth: hci0: BCM: features 0x2f<br></div>=
<div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.548557] Bluetooth: hci0: BCM4345C0<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.552394] Bluetooth: hci0: BCM=
4345C0 (003.001.025) build 0000<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&n=
bsp; ] Finished Record System Boot/Shutdown in UTMP.<br></div><div dir=3D"l=
tr">&gt; [&nbsp; &nbsp; 8.569173] Bluetooth: hci0: BCM4345C0 'brcm/BCM4345C=
0.hcd' Patch<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.589631] CAN de=
vice driver interface<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 8.64372=
6] imx219 10-0010: failed to read chip id 219<br></div><div dir=3D"ltr">&gt=
; [&nbsp; &nbsp; 8.650867] imx219: probe of 10-0010 failed with error -5<br=
></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Sound Card.<=
br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Created slice Slice /syst=
em/bthelper.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; Starting Start psplash boot splash screen...<br></div><div dir=3D"ltr">&=
gt; [&nbsp; OK&nbsp; ] Started Load/Save RF Kill Switch Status.<br></div><d=
iv dir=3D"ltr">&gt; [FAILED] Failed to start Start psplash boot splash scre=
en.<br></div><div dir=3D"ltr">&gt; See 'systemctl status psplash-start.serv=
ice' for details.<br></div><div dir=3D"ltr">&gt; [DEPEND] Dependency failed=
 for Star=E2=80=A6progress communication helper.<br></div><div dir=3D"ltr">=
&gt; [&nbsp; OK&nbsp; ] Started Network Time Synchronization.<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target System Initialization.<=
br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started Daily Cleanup of =
Temporary Directories.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Re=
ached target System Time Set.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbs=
p; ] Reached target Timer Units.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&=
nbsp; ] Listening on D-Bus System Message Bus Socket.<br></div><div dir=3D"=
ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting sshd.socket...<br></di=
v><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Weston s=
ocket...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on ssh=
d.socket.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Listening on We=
ston socket.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached targ=
et Socket Units.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached =
target Basic System.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; Starting D-Bus System Message Bus...<br></div><div dir=3D"ltr">&=
gt; [&nbsp; OK&nbsp; ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DH=
CPv6 support.<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.301550] Bluet=
ooth: hci0: BCM: features 0x2f<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp=
; 9.307810] Bluetooth: hci0: BCM43455 37.4MHz Raspberry Pi 3+<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.313745] Bluetooth: hci0: BCM4345C0 (003.=
001.025) build 0342<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; Starting Configure Bluetooth Modems connected by UART...<br></div=
><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting IPv4 Pack=
et Filtering Framework...<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.3=
63108] 8021q: 802.1Q VLAN Support v1.8<br></div><div dir=3D"ltr">&gt; [&nbs=
p; &nbsp; 9.389432] audit: type=3D1334 audit(1651232906.515:4): prog-id=3D7=
 op=3DLOAD<br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.397284] audit: t=
ype=3D1334 audit(1651232906.519:5): prog-id=3D8 op=3DLOAD<br></div><div dir=
=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting User Login Managem=
ent...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sta=
rting OpenSSH Key Generation...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&n=
bsp; ] Started D-Bus System Message Bus.<br></div><div dir=3D"ltr">&gt; [&n=
bsp; OK&nbsp; ] Started Configure Bluetooth Modems connected by UART.<br></=
div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished IPv4 Packet Filtering=
 Framework.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished Open=
SSH Key Generation.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reach=
ed target Preparation for Network.<br></div><div dir=3D"ltr">&gt;&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; Starting Network Manager...<br></div><div dir=3D"l=
tr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Raspberry Pi bluetooth =
helper...<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Starting LSB: network connection manager...<br></div><div dir=3D"ltr">&gt;&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Network Configuration...<br></di=
v><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.700542] mcp251x spi0.0: MCP251x di=
dn't enter in conf mode after reset<br></div><div dir=3D"ltr">&gt; [&nbsp; =
&nbsp; 9.707859] mcp251x spi0.0: Probe failed, err=3D110<br></div><div dir=
=3D"ltr">&gt; [&nbsp; &nbsp; 9.712832] mcp251x: probe of spi0.0 failed with=
 error -110<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started LSB: =
network connection manager.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp;=
 ] Finished Raspberry Pi bluetooth helper.<br></div><div dir=3D"ltr">&gt; [=
&nbsp; OK&nbsp; ] Started User Login Management.<br></div><div dir=3D"ltr">=
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Bluetooth service...<br></d=
iv><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started Network Configuration.<=
br></div><div dir=3D"ltr">&gt; [&nbsp; &nbsp; 9.994264] bcmgenet fd580000.e=
thernet: configuring instance for external RGMII (RX delay)<br></div><div d=
ir=3D"ltr">&gt; [&nbsp;  10.005669] bcmgenet fd580000.ethernet eth0: Link i=
s Down<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sta=
rting Network Name Resolution...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&=
nbsp; ] Started Network Manager.<br></div><div dir=3D"ltr">&gt; [&nbsp;  10=
.094290] audit: type=3D1334 audit(1651232907.219:6): prog-id=3D9 op=3DLOAD<=
br></div><div dir=3D"ltr">&gt; [&nbsp;  10.101120] audit: type=3D1334 audit=
(1651232907.227:7): prog-id=3D10 op=3DLOAD<br></div><div dir=3D"ltr">&gt;&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Hostname Service...<br></div><div=
 dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started Bluetooth service.<br></div><d=
iv dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Bluetooth Support.<br=
></div><div dir=3D"ltr">&gt; [&nbsp;  10.205340] Bluetooth: BNEP (Ethernet =
Emulation) ver 1.3<br></div><div dir=3D"ltr">&gt; [&nbsp;  10.210960] Bluet=
ooth: BNEP filters: protocol multicast<br></div><div dir=3D"ltr">&gt; [&nbs=
p;  10.216322] Bluetooth: BNEP socket layer initialized<br></div><div dir=
=3D"ltr">&gt; [&nbsp;  10.240623] Bluetooth: MGMT ver 1.22<br></div><div di=
r=3D"ltr">&gt; [&nbsp;  10.261915] NET: Registered PF_ALG protocol family<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started Network Name Resol=
ution.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Net=
work.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Host=
 and Network Name Lookups.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; Starting DNS forwarder and DHCP server...<br></div><div di=
r=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Permit User Sessi=
ons...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started Xinetd A P=
owerful Replacement For Inetd.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nb=
sp; ] Finished Permit User Sessions.<br></div><div dir=3D"ltr">&gt; [&nbsp;=
 OK&nbsp; ] Started Hostname Service.<br></div><div dir=3D"ltr">&gt; [&nbsp=
; OK&nbsp; ] Started DNS forwarder and DHCP server.<br></div><div dir=3D"lt=
r">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting Network Manager Script D=
ispatcher Service...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Star=
ted Getty on tty1.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Starte=
d Serial Getty on ttyS0.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] =
Reached target Login Prompts.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbs=
p; ] Reached target Multi-User System.<br></div><div dir=3D"ltr">&gt;&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; Starting Weston, a Wayland=E2=80=A6ositor, as =
a system service...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Start=
ed Network Manager Script Dispatcher Service.<br></div><div dir=3D"ltr">&gt=
; [&nbsp;  10.826800] audit: type=3D1334 audit(1651232907.951:8): prog-id=
=3D11 op=3DLOAD<br></div><div dir=3D"ltr">&gt; [&nbsp;  10.837083] audit: t=
ype=3D1334 audit(1651232907.959:9): prog-id=3D12 op=3DLOAD<br></div><div di=
r=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Starting User Database Man=
ager...<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Started User Data=
base Manager.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Created sli=
ce User Slice of UID 1000.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; Starting User Runtime Directory /run/user/1000...<br></div=
><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Finished User Runtime Directory /=
run/user/1000.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; Starting User Manager for UID 1000...<br></div><div dir=3D"ltr">&gt; [=
&nbsp;  11.283733] audit: type=3D1006 audit(1651232908.407:10): pid=3D354 u=
id=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(none) old-ses=3D4294967295 =
ses=3D1 res=3D1<br></div><div dir=3D"ltr">&gt; [&nbsp;  11.301961] audit: t=
ype=3D1300 audit(1651232908.407:10): arch=3Dc00000b7 syscall=3D64 success=
=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D0 items=3D0 ppid=3D1 pid=
=3D354 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgi=
d=3D0 fsgid=3D0 tty=3D(none) ses=3D1 comm=3D"(systemd)" exe=3D"/lib/systemd=
/systemd" key=3D(null)<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] St=
arted User Manager for UID 1000.<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&=
nbsp; ] Started Session c1 of User weston.<br></div><div dir=3D"ltr">&gt; [=
&nbsp;  11.952188] kauditd_printk_skb: 1 callbacks suppressed<br></div><div=
 dir=3D"ltr">&gt; [&nbsp;  11.952207] audit: type=3D1006 audit(1651232909.0=
75:11): pid=3D348 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-=
ses=3D4294967295 ses=3D2 res=3D1<br></div><div dir=3D"ltr">&gt; [&nbsp;  11=
.971521] audit: type=3D1300 audit(1651232909.075:11): arch=3Dc00000b7 sysca=
ll=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D0 items=
=3D0 ppid=3D1 pid=3D348 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=
=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dtty7 ses=3D2 comm=3D"(weston)" exe=
=3D"/lib/systemd/systemd" key=3D(null)<br></div><div dir=3D"ltr">&gt; [&nbs=
p;  11.997917] audit: type=3D1327 audit(1651232909.075:11): proctitle=3D"(w=
eston)"<br></div><div dir=3D"ltr">&gt; [&nbsp;  12.759139] vc4-drm gpu: [dr=
m] Cannot find any crtc or sizes<br></div><div dir=3D"ltr">&gt; [&nbsp; OK&=
nbsp; ] Started Weston, a Wayland =E2=80=A6mpositor, as a system service.<b=
r></div><div dir=3D"ltr">&gt; [&nbsp; OK&nbsp; ] Reached target Graphical I=
nterface.<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Starting Record Runlevel Change in UTMP...<br></div><div dir=3D"ltr">&gt; [=
&nbsp; OK&nbsp; ] Finished Record Runlevel Change in UTMP.<br></div><div di=
r=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; OpenEmbedded nodistro.0 raspb=
errypi4-64 ttyS0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&=
gt; raspberrypi4-64 login: [&nbsp;  19.942785] platform soc:sound: deferred=
 probe pending<br></div><div dir=3D"ltr">&gt; [&nbsp;  40.664644] audit: ty=
pe=3D1334 audit(1651232937.791:12): prog-id=3D10 op=3DUNLOAD<br></div><div =
dir=3D"ltr">&gt; [&nbsp;  40.671849] audit: type=3D1334 audit(1651232937.79=
1:13): prog-id=3D9 op=3DUNLOAD<br></div><div dir=3D"ltr">&gt;<br></div><div=
 dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; --------------------------=
---------------------------------------------------------------------------=
-------------------------<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; On Thursday, July 6, 2023 at 11:52:51 AM CDT, Khem Raj &lt;<a=
 href=3D"mailto:raj.khem@gmail.com" rel=3D"nofollow" target=3D"_blank">raj.=
khem@gmail.com</a>&gt; wrote:<br></div><div dir=3D"ltr">&gt;<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; On Thu, Jul 6, 2023 at 9:04=
=E2=80=AFAM Oosman Saeed &lt;<a href=3D"mailto:oosman3@yahoo.com" rel=3D"no=
follow" target=3D"_blank">oosman3@yahoo.com</a>&gt; wrote:<br></div><div di=
r=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; I think that is the=
 problem, I don't know which wifi is used on the board. How do I find out w=
hat wifi driver to load?<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; Perhaps there are clues in =
early kernel logs. Maybe check dmesg or serial logs.<br></div><div dir=3D"l=
tr">&gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; On Thursday, July 6, 2023 at 10:1=
9:50 AM CDT, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" rel=3D"nofo=
llow" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D=
"ltr">&gt; &gt; On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed &lt;<a =
href=3D"mailto:oosman3@yahoo.com" rel=3D"nofollow" target=3D"_blank">oosman=
3@yahoo.com</a>&gt; wrote:<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; root@raspberrypi4-64:~# ifconfig -a<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; eth0: flags=3D4163&lt;UP,BROADCAST,RUNN=
ING,MULTICAST&gt;&nbsp; mtu 1500<br></div><div dir=3D"ltr">&gt; &gt; &gt;&n=
bsp; &nbsp; &nbsp; &nbsp; inet 192.168.7.8&nbsp; netmask 255.255.255.0&nbsp=
; broadcast 192.168.7.255<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &n=
bsp; &nbsp; &nbsp; ether dc:a6:32:e3:eb:fe&nbsp; txqueuelen 1000&nbsp; (Eth=
ernet)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; =
RX packets 962&nbsp; bytes 117191 (114.4 KiB)<br></div><div dir=3D"ltr">&gt=
; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; dropped 0&nbsp; ov=
erruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp=
; &nbsp; &nbsp; TX packets 1766&nbsp; bytes 299578 (292.5 KiB)<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0&nbsp; d=
ropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></div><div dir=3D=
"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; lo: flags=3D7=
3&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1&nbsp; netmask 255.0.0.=
0<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet6=
 ::1&nbsp; prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; loop&nbsp; txqueuelen 10=
00&nbsp; (Local Loopback)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &n=
bsp; &nbsp; &nbsp; RX packets 12567&nbsp; bytes 780277 (761.9 KiB)<br></div=
><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbs=
p; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; =
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 12567&nbsp; bytes 780277 (7=
61.9 KiB)<br></div><div dir=3D"ltr">&gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbs=
p; TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions =
0<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr"=
>&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt;<br></div><div dir=3D"ltr">&gt; &gt; OK in your kernel module list I=
 dont see any kmods for wifi being loaded<br></div><div dir=3D"ltr">&gt; &g=
t; so it might be that its not enabling them in rootfs for some reason ?<br=
></div><div dir=3D"ltr">&gt; &gt; which wifi is used on your board ?<br></d=
iv><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; On Thursday, July 6, 2023 at 10:03:16 AM CD=
T, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" rel=3D"nofollow" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><div dir=3D"ltr">&=
gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; what does ifconfig -a say<br></div><div dir=3D"ltr">&g=
t; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; On Thu, Jul 6, 2023 a=
t 6:25=E2=80=AFAM oosman3 via lists.yoctoproject.org<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &lt;oosman3=3Dyahoo.com@lists.yoctoproject.org&gt; wrote=
:<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; I am building my raspberrypi wic image using the layer m=
eta-raspberrypi.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; I am using a raspiberrypi compute module =
4 with wifi chip.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; I just can't seem to get the wlan0 devic=
e to appear when I type ifconfig.<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; root@raspberrypi4-64:~# ifconfi=
g<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; eth0: flags=3D4163&lt;UP,BR=
OADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu 1500<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.7.8&nbsp; netmask 2=
55.255.255.0&nbsp; broadcast 192.168.7.255<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; ether dc:a6:32:e3:eb:fe&nbsp; txqu=
euelen 1000&nbsp; (Ethernet)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&=
nbsp; &nbsp; &nbsp; &nbsp; RX packets 407&nbsp; bytes 62442 (60.9 KiB)<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX err=
ors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 567&nbsp; byt=
es 94749 (92.5 KiB)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nb=
sp; &nbsp; &nbsp; TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nb=
sp; collisions 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=
&nbsp; mtu 65536<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp;=
 &nbsp; &nbsp; inet 127.0.0.1&nbsp; netmask 255.0.0.0<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1&nbsp; prefixl=
en 128&nbsp; scopeid 0x10&lt;host&gt;<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; loop&nbsp; txqueuelen 1000&nbsp; (Local=
 Loopback)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp=
; &nbsp; RX packets 4047&nbsp; bytes 252037 (246.1 KiB)<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; d=
ropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 4047&nbsp; bytes 252037 (2=
46.1 KiB)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp; TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collis=
ions 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; Here is a filtered output of my lsmod command<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; root@raspberr=
ypi4-64:~# lsmod<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; Module&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Size&nbsp; Used by=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; 88XXau&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 2265088&nbsp; 0<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; cmac&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; algif_has=
h&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; aes_arm64&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; aes=
_generic&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36864&nbsp; 1 aes_arm64<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; algif_skcipher&nbsp; &nbsp; &n=
bsp; &nbsp; 16384&nbsp; 1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; af_=
alg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 6 al=
gif_hash,algif_skcipher<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; bnep&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 2=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; 8021q&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 0<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; garp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 16384&nbsp; 1 8021q<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; stp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; 16384&nbsp; 1 garp<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; llc&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&=
nbsp; 2 stp,garp<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; imx219&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; mcp251x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; spidev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480=
&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; can_dev&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 mcp251x<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; hci_uart&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 45056&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; btbcm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2457=
6&nbsp; 1 hci_uart<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; v3d&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 90112&nbsp; =
1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; bluetooth&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 585728&nbsp; 26 hci_uart,btbcm,bnep<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; i2c_mux_pinctrl&nbsp; &nbsp; &nbsp; &nbsp; 1=
6384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; gpu_sched&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 1 v3d<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; snd_soc_simple_card&nbsp; &nbsp; 20480&nbsp;=
 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; snd_soc_simple_card_utils&=
nbsp; &nbsp; 28672&nbsp; 1 snd_soc_simple_card<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; drm_shmem_helper&nbsp; &nbsp; &nbsp; 24576&nbsp; 1 v3d<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; raspberrypi_hwmon&nbsp; &nbsp; =
&nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; i2c_mux&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1 i2c_mu=
x_pinctrl<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; i2c_brcmstb&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; bcm2835_unicam&nbsp; &nbsp; &nbsp; &nbsp; 53248&nbsp; 0<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dwc2&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 192512&nbsp; 0<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; roles&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 20480&nbsp; 1 dwc2<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; v4l2_dv_timings&nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 bcm2835_uni=
cam<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; v4l2_fwnode&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 2 imx219,bcm2835_unicam<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ecdh_generic&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 16384&nbsp; 2 bluetooth<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; v4l2_async&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 3 v4l2_fw=
node,imx219,bcm2835_unicam<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ec=
c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3686=
4&nbsp; 1 ecdh_generic<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; libaes=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 3 aes_a=
rm64,bluetooth,aes_generic<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; sp=
i_bcm2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 0<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; snd_soc_bcm2835_i2s&nbsp; &nbsp; 20480&=
nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; bcm2835_codec&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; rpivid_hevc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp=
; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; bcm2835_v4l2&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 45056&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; bcm2835_isp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; bcm2835_mmal_vchiq&nbsp; &nbsp=
; 36864&nbsp; 3 bcm2835_codec,bcm2835_v4l2,bcm2835_isp<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; v4l2_mem2mem&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40=
960&nbsp; 2 bcm2835_codec,rpivid_hevc<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; videobuf2_vmalloc&nbsp; &nbsp; &nbsp; 16384&nbsp; 1 bcm2835_v4l2<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; videobuf2_dma_contig&nbsp; &nb=
sp; 20480&nbsp; 4 bcm2835_codec,bcm2835_unicam,rpivid_hevc,bcm2835_isp<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; videobuf2_memops&nbsp; &nbsp; &nb=
sp; 16384&nbsp; 2 videobuf2_vmalloc,videobuf2_dma_contig<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; videobuf2_v4l2&nbsp; &nbsp; &nbsp; &nbsp; 3276=
8&nbsp; 6 bcm2835_codec,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2me=
m,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; videobuf2_commo=
n&nbsp; &nbsp; &nbsp; 69632&nbsp; 10 bcm2835_codec,videobuf2_vmalloc,videob=
uf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_=
mem2mem,videobuf2_memops,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; videodev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 274432&nbs=
p; 10 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bcm2835=
_v4l2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; vc_sm_cma&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 32768&nbsp; 2 bcm2835_mmal_vchiq,bcm2835_isp<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; snd_bcm2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 28672&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; mc&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 61440&nbsp=
; 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam=
,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; uio_pdrv_genirq&nbsp; &nbsp; &nbsp; &nbsp; 16384&=
nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; nvmem_rmem&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; uio&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 24576&nbsp; 1 uio_pdrv_genirq<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; sch_fq_codel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 6=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; brcmutil&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; cfg80211&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9297=
92&nbsp; 1 88XXau<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; rfkill&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 4 bluetooth,=
cfg80211<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; fuse&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 139264&nbsp; 1<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ipv6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 552960&nbsp; 28<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; And=
 here is my /boot/config.txt<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; root@raspberrypi4-64:~# cat /=
boot/config.txt<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #############=
###################################################################<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Raspberry Pi Configuration =
Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Revision 16, 2013/06/22<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; Details taken from the eLinux wiki<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; For up-to-date information please refer to w=
iki page.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Wiki Location : <a href=3D"http://el=
inux.org/RPiconfig" rel=3D"nofollow" target=3D"_blank">http://elinux.org/RP=
iconfig</a><br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; Description:<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#&nbsp; &nbsp; Details of each setting are described with each section that=
 begins with<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
a double hashed comment ('##')<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; It is up to the user to remove the single hashed comment =
('#') from each<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; option they want to enable, and to set the specific value of that option=
.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; Overclock settings will be disabled at runti=
me if the SoC reaches temp_limit<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ######################=
##########################################################<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##########################################################################=
######<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Standard Defi=
nition Video Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #######=
#########################################################################<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ## sdtv_mode<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; defines the TV standard for composite output<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -----------------------------------=
--------------------------------------<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Normal NTSC (Default=
)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nb=
sp; &nbsp; &nbsp; Japanese version of NTSC - no pedestal<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; N=
ormal PAL<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&n=
bsp; &nbsp; &nbsp; &nbsp; Brazilian version of PAL - 525/60 rather than 625=
/50, different<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; subcarrier<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #sdtv_m=
ode=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ## sdtv_aspect<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; defines the aspect ratio for composite output<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -----------------------=
--------------------------------------------------<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 4:3 (Def=
ault)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp;=
 &nbsp; &nbsp; &nbsp; 14:9<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 16:9<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #sdtv_a=
spect=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ## sdtv_disable_colourburst<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Disables colour burst on compo=
site output. The picture will be<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; monochrome, but possibly sharper<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; -------------------------------------------=
------------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Colour burst is enabled (Def=
ault)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp;=
 &nbsp; &nbsp; &nbsp; Colour burst is disabled<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #sdtv_di=
sable_colourburst=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ####################################=
############################################<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; High Definition Video Settings<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##############################################=
##################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## hdmi_safe<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Use "safe mode" setting=
s to try to boot with maximum hdmi compatibility.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; ----------------------------------------------=
---------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nb=
sp; Enabled (this does: hdmi_force_hotplug=3D1,<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hdmi_ignor=
e_edid=3D0xa5000080,<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; config_hdmi_boost=3D4, hdmi_group=3D2=
,<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; hdmi_mode=3D4, disable_overscan=3D0,<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
overscan_left=3D24, overscan_right=3D24,<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; overscan_top=3D24=
, overscan_bottom=3D24)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_safe=3D1<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ## hdmi_force_hotplug<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; Pretends HDMI hotplug signal is asserted so it appears a HDMI dis=
play<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; is attac=
hed<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -----------------=
--------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; D=
isabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Use HDMI mode even if no HDMI monitor is =
detected<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_force_hotplug=3D1<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## hd=
mi_ignore_hotplug<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Pretends HDMI hotplug signal is not asserted so it appears a HDMI<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; display is not at=
tached<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------=
-------------------------------------------------------------<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbs=
p; Disabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Use composite mode even if HDMI monit=
or is detected<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_ignore_hotplug=3D1<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ## hdmi_drive<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; chooses between HDMI and DVI modes<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; V=
alue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; 1&nbsp; &nbsp; &nbsp; &nbsp; Normal DVI mode (No sound)<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; =
Normal HDMI mode (Sound will be sent if supported and enabled)<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; #hdmi_drive=3D2<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## hdmi_ignore_edid<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Enables the ignoring of EDI=
D/display data<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_ignore_edid=3D0xa5000080<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ## hdmi_edid_file<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; Read the EDID data from the edid.dat file instead of from the =
attached<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; devi=
ce<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------------=
-------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; R=
ead EDID data from attached device (Default)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Read EDID data=
 from edid.txt file<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_edid_file=3D1<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ## hdmi_ignore_edid_audio<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#&nbsp; &nbsp; Pretends all audio formats are unsupported by display. This =
means ALSA<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; wi=
ll default to analogue.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nb=
sp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; ------------------------------------------------------------------------=
-<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nb=
sp; &nbsp; &nbsp; Use EDID provided values (Default)<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Preten=
d all audio formats are unsupported<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_ignore_edid_a=
udio=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ## hdmi_force_edid_audio<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Pretends all audio formats are suppor=
ted by display, allowing<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; passthrough of DTS/AC3 even when not reported as supported.<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------------------=
-------------------------------------------------<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID =
provided values (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend all audio formats are sup=
ported<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_force_edid_audio=3D1<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
## hdmi_force_edid_3d<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; Pretends all CEA modes support 3D even when edid doesn't indicate<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; support for t=
hem.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ----------------=
---------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; U=
se EDID provided values (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend 3D mode is suppor=
ted<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; #hdmi_force_edid_3d=3D1<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## avoid_e=
did_fuzzy_match<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; Avoid fuzzy matching of modes described in edid.<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; --------------------------------------------=
-----------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use fuzzy matching (Default)<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp=
; &nbsp; &nbsp; Avoid fuzzy matching<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #avoid_edid_fuzzy_=
match=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ## hdmi_pixel_encoding<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Force the pixel encoding mode.<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; By default it will=
 use the mode requested from edid so shouldn't<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; need changing.<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; -----------------------------------------------=
--------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID provided values (Defaul=
t)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &n=
bsp; &nbsp; &nbsp; RGB limited&nbsp; (16-235)<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; RGB full&nbsp=
; &nbsp; &nbsp; ( 0-255)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; YCbCr limited (16-235)<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &n=
bsp; YCbCr limited ( 0-255)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_pixel_encoding=3D1<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ## hdmi_group<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; Defines the HDMI type<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; V=
alue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; 0&nbsp; &nbsp; &nbsp; &nbsp; Use the preferred group reported by the edi=
d (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1=
&nbsp; &nbsp; &nbsp; &nbsp; CEA<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; DMT<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hd=
mi_group=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ## hdmi_mode<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; defines screen resolution in CEA or DMT forma=
t<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; H means 16:9 variant (of a normally 4=
:3 mode).<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2x =
means pixel doubled (i.e. higher clock rate, with each pixel repeated<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; twice)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 4x means pixel quadrupled (i.e. higher clock rate, with each pixel<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; repeated four times)<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; reduced blanking means fewer bytes are used f=
or blanking within the data<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; stream (i.e. lower clock rate, with fewer wasted bytes)<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; hdmi_group=3DCEA&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hdmi_group=3DDMT<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ----------------------------=
---------------------------------------------<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; VGA&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 640x350&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x400&nb=
sp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&nb=
sp; &nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 720x400&nbsp; 85Hz<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 720p=
&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 640x480&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1080i 60Hz&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 7=
2Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &=
nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 75Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 4=
80i&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 640x480&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp;=
 56Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 9&nbsp;=
 &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 60Hz<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 10&nbsp; &nbsp; &nbsp; 480i&nbsp; 60=
Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8=
00x600&nbsp; 72Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; 11&nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 75Hz<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 12&nbsp; &nbsp; &nbsp; 240p&nbsp; =
60Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 800x600&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; =
&nbsp; 13&nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 120Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 14&nbsp; &nbsp; &nbsp; 480p&nb=
sp; 60Hz&nbsp; 2x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 848x480&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; 15&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; 2x H&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 43Hz&nbsp; DO NOT U=
SE<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 16&nbsp; &=
nbsp; &nbsp; 1080p 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 17&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 102=
4x768&nbsp; 70Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nb=
sp; 18&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 75Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 19&nbsp; &nbsp; &nbsp; 720p&nb=
sp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 1024x768&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; 20&nbsp; &nbsp; &nbsp; 1080i 50Hz&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 120Hz<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 21&nbsp; &nbsp;=
 &nbsp; 576i&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1152x864&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 22&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp=
; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&=
nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; 23&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280=
x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; 24&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 75Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 25&nbsp; &nbsp; &nbsp; 576i&nb=
sp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 1280x768&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; 26&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 120Hz reduced blan=
king<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 27&nbsp;=
 &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; &nbsp; &nbsp; &nbsp; reduced blan=
king<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 28&nbsp;=
 &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; 29&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 2=
x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nb=
sp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 30&n=
bsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; 31&nbsp; &nbsp; &nbsp; 1080p 50Hz&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x80=
0&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; 32&nbsp; &nbsp; &nbsp; 1080p 24Hz&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbsp; 60Hz<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 33&nbsp; &nbsp;=
 &nbsp; 1080p 25Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1280x960&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; 34&nbsp; &nbsp; &nbsp; 1080p 30Hz&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbsp=
; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; 35&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; 4x&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 60Hz<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 36&nbsp; &nbsp; &nbsp; 480=
p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; 1280x1024 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 37&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 85Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 38&nbsp; &nbsp; &nbsp; 576p&nb=
sp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1280x1024 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; 39&nbsp; &nbsp; &nbsp; 1080i 50Hz&nbsp; reduced blankin=
g&nbsp; &nbsp; 1360x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; 40&nbsp; &nbsp; &nbsp; 1080i 100Hz&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1360x768&nbsp; 120Hz red=
uced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 41&nbsp; &nbsp; &nbsp; 720p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050&nbsp; &nbsp; &nbsp; reduced bl=
anking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 42&nbs=
p; &nbsp; &nbsp; 576p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 60Hz<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; 43&nbsp; &nbsp; &nbsp; 576p&nbsp; 100Hz H&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 75Hz<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 44&nbsp; &nbsp=
; &nbsp; 576i&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1400x1050 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; 45&nbsp; &nbsp; &nbsp; 576i&nbsp; 100Hz H&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 120Hz reduced =
blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 46&n=
bsp; &nbsp; &nbsp; 1080i 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanki=
ng<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 47&nbsp; &=
nbsp; &nbsp; 720p&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; 48&nbsp; &nbsp; &nbsp; 480p&nbsp; 120Hz&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900&n=
bsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 49&=
nbsp; &nbsp; &nbsp; 480p&nbsp; 120Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; 50&nbsp; &nbsp; &nbsp; 480i&nbsp; 120Hz&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900=
&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; 51&nbsp; &nbsp; &nbsp; 480i&nbsp; 120Hz H&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 60Hz<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 52&nbsp; &nbsp; &nbsp; 576p=
&nbsp; 200Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1600x1200 65Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; 53&nbsp; &nbsp; &nbsp; 576p&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 70Hz<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 54&nbsp; &nbsp; &nbsp; 576i&nbsp; 2=
00Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1=
600x1200 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 55&nbsp; &nbsp; &nbsp; 576i&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 85Hz<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 56&nbsp; &nbsp; &nbsp; 480p&nbsp; 240Hz&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200=
 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; 57&nbsp; &nbsp; &nbsp; 480p&nbsp; 240Hz H&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050&nbsp; &nbsp; &nbsp; reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 5=
8&nbsp; &nbsp; &nbsp; 480i&nbsp; 240Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 60Hz<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 59&nbsp; &nbsp; &nbsp; 480i&nbsp; 240Hz =
H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 7=
5Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 60&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 85Hz<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 61&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 120Hz reduced blanking<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 62&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1792x1344 60Hz<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 63&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 1792x1344 75Hz<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 64&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1792x1344 120Hz reduced blanking<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 65&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 1856x1392 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; 66&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; 1856x1392 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; 67&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1856=
x1392 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; 68&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 1920x1200&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 69&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1920x1200 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; 70&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1920x1200 75Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; 71&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1=
200 85Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 72&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1200 120Hz red=
uced blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 73&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 60Hz=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 74&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 75Hz<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 75&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 120Hz reduced blanking<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 76&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600&nbsp; &nbsp; &nbsp; reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 7=
7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 60Hz<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 78&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 75Hz<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 79&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 85Hz<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 80&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2560x1600 120Hz reduced blanking<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 81&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1366x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 82&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1080p&nbsp; &nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; 83&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 1600x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 84&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2048x1152&nbsp; &nbsp; &nbsp; reduced=
 blanking<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 85&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 720p&nbsp; &nbsp; =
&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 8=
6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1366x768&nbsp; &=
nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_mode=3D1<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ## config_hdmi_boost<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; configure the signal strength of the HDMI interface.<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------=
----------------------------------------------------<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; (Defau=
lt)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; Try if you h=
ave interference issues with HDMI<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; 5<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 7=
&nbsp; &nbsp; &nbsp; &nbsp; Maximum<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #config_hdmi_boost=
=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ## hdmi_ignore_cec_init<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; Doesn't sent initial active source message=
.&nbsp; Avoids bringing<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; (CEC enabled) TV out of standby and channel switch when rebootin=
g.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------------=
-------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; N=
ormal behaviour (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Doesn't sent initial active sourc=
e message<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; #hdmi_ignore_cec_init=3D1<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
## hdmi_ignore_cec<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; Pretends CEC is not supported at all by TV.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; No CEC functions will be supported.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -----------------------=
--------------------------------------------------<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Normal b=
ehaviour (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend CEC is not supported by TV<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; #hdmi_ignore_cec=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ######################=
##########################################################<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Overscan Video Settings<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; #########################################=
#######################################<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## overscan_left<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Number of pixe=
ls to skip on left<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; #overscan_left=3D0<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
## overscan_right<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Number of pixels to skip on right<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #overscan_right=
=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ## overscan_top<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on top<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; #overscan_top=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## overscan_bottom<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on bo=
ttom<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; #overscan_bottom=3D0<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## disable_o=
verscan<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set t=
o 1 to disable overscan<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nb=
sp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; ------------------------------------------------------------------------=
-<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nb=
sp; &nbsp; &nbsp; Overscan Enabled (Default)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Overscan Disab=
led<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; #disable_overscan=3D1<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ############=
####################################################################<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Framebuffer Video Settings=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ############################=
####################################################<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## fr=
amebuffer_width<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; Console framebuffer width in pixels. Default is display width minus<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; overscan.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; #framebuffer_width=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## framebuffer_height<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Console frame=
buffer height in pixels. Default is display height minus<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; overscan.<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
#framebuffer_height=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## framebuffer_depth<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Console framebuffer depth =
in bits per pixel.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; D=
escription<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; --=
-----------------------------------------------------------------------<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &=
nbsp; &nbsp; Valid, but default RGB palette makes an unreadable screen<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 16&nbsp; &nbsp; &=
nbsp; (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; 24&nbsp; &nbsp; &nbsp; Looks better but has corruption issues as of 2012=
/06/15<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 32&nbs=
p; &nbsp; &nbsp; Has no corruption issues but needs framebuffer_ignore_alph=
a=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; and shows the wrong colors as of 2012/06/15<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; #framebuffer_depth=3D16<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## framebuffer_ig=
nore_alpha<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Se=
t to 1 to disable alpha channel. Helps with 32bit.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------------------------------=
----------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Enable Alpha Channel (Default)=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbs=
p; &nbsp; &nbsp; Disable Alpha Channel<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #framebuffer_ign=
ore_alpha=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ############################################=
####################################<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; General Video Settings<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ################################################################=
################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ## display_rotate<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Rotate the display clockwise or flip=
 the display.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 The 90 and 270 degrees rotation options require additional memory on GPU,<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; so won't work=
 with the 16M GPU split.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &n=
bsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nb=
sp; -----------------------------------------------------------------------=
--<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &n=
bsp; &nbsp; &nbsp; 0 degrees (Default)<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 90 degrees<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; =
&nbsp; 180 degrees<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 270 degrees<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; 0x10000&nbsp; Horizontal flip<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0x20000&nbsp; Vertical f=
lip<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; #display_rotate=3D0<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## dispmanx_of=
fline<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set to =
"1" to enable offline compositing<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Defau=
lt 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; #dispmanx_offline=3D0<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ###########=
#####################################################################<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Licensed Codecs<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; Hardware decoding of additional codecs can be enabled b=
y purchasing a<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; licen=
se that is locked to the CPU serial number of your Raspberry Pi.<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##&nbsp; Up to 8 licenses per CODEC can be specified as a comma s=
eperated list.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ########################################=
########################################<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## decode_MPG2<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; License key to =
allow hardware MPEG-2 decoding.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #decode_MPG2=3D0x123456=
78<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ## decode_WVC1<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; License key to allow hardware VC-1 decoding.<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; #decode_WVC1=3D0x12345678<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ####################=
############################################################<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Camera Settings<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##############################################=
##################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## start_x<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set to "1" to enable the =
camera module.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Enabling the camera requ=
ires gpu_mem option to be specified with a value<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; of at least 128.<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; Default 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; start_x=3D1<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
## disable_camera_led<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; Turn off the red camera led when recording video or taking a still=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; picture.<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------------------=
-------------------------------------------------<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; LED enabl=
ed (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
1&nbsp; &nbsp; &nbsp; &nbsp; LED disabled<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #disable_came=
ra_led=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##############################################=
##################################<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; Test Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
###########################################################################=
#####<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ## test_mode<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; &nbsp; Enable test sound/image during boot for manufacturin=
g test.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------------=
-------------------------------------------------------------<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbs=
p; Disable Test Mod (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Enable Test Mode<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; #test_mode=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; ###################################=
#############################################<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; Memory Settings<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##############################################################=
##################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ## disable_l2cache<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Disable arm access to GPU's L2 ca=
che. Needs corresponding L2 disabled<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; kernel.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&n=
bsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; ----------------------------------------------------------------=
---------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&n=
bsp; &nbsp; &nbsp; &nbsp; Enable L2 Cache (Default)<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disable=
 L2 cache<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; #disable_l2cache=3D0<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## gpu_=
mem<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; GPU memor=
y allocation in MB for all board revisions.<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Default 64<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; #gpu_mem=3D128<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## gpu_=
mem_256<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; GPU m=
emory allocation in MB for 256MB board revision.<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; This option overrides gpu_mem.<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; #gpu_mem_256=3D192<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## gpu_mem_512<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in =
MB for 512MB board revision.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; This option overrides gpu_mem.<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #gpu_mem=
_512=3D448<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ## gpu_mem_1024<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for 1024MB boar=
d revision.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; T=
his option overrides gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #gpu_mem_1024=3D944<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ## disable_pvt<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; Disable adjusting the refresh rate of RAM every 500ms<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; (measuring RAM tempa=
rature).<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; #disable_pvt=3D1<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ############=
####################################################################<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; CMA - Dynamic Memory Split=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; CMA enables dynamic management of the ARM and=
 GPU memory split at runtime.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; The following op=
tions need to be in cmdline.txt for CMA to work:<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; coherent_pool=3D6M smsc95xx.turbo_mode=
=3DN<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##################################################=
##############################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## cma_lwm<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; When GPU has less than cma_lw=
m (low water mark) memory available it<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##&nbsp; &nbsp; will request some from ARM.<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
cma_lwm=3D16<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ## cma_hwm<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; When GPU has more than cma_hwm (high water mark=
) memory available it<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; will release some to ARM.<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #cma_hwm=3D32<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ################################################################=
################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Boo=
t Option Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ###########=
#####################################################################<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ## disable_commandline_tags<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; Stop start.elf from filling in ATAGS (memory fro=
m 0x100) before<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; launching kernel<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; #disable_commandline_tags=3D0<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ## cmdline (string)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; Command line parameters. Can be used instead of cmdline.=
txt file<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; #cmdline=3D""<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## kernel (stri=
ng)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Alternati=
ve name to use when loading kernel.<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #kernel=3D""<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ## kernel_address<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; Address to load kernel.img file at<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #ker=
nel_address=3D0x00000000<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## kernel_old<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Support loading old kernels<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -----------------------=
--------------------------------------------------<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabled=
 (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&=
nbsp; &nbsp; &nbsp; &nbsp; Load kernel at address 0x00000000<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; #kernel_old=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## ramfsfile (string)<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ramfs file to load<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; #ramfsfile=3D""<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## ramfsaddr<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Address to load ramfs file at<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; #ramfsaddr=3D0x00000000<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## initramfs (=
string address)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; ramfs file and address to load it at (it's like ramfsfile+ramfsaddr in<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; one option).<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; NOTE: this option uses different syntax =
than all other options - you<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; should not use "=3D" character here.<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; #initramfs initramf.gz 0x00800000<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## de=
vice_tree_address<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Address to load device_tree at<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #device_tree_addres=
s=3D0x00000000<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ## init_uart_baud<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Initial uart baud rate.<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; Default 115200<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #init_uart_baud=3D=
115200<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ## init_uart_clock<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; Initial uart clock.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; Default 3000000 (3MHz)<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #init_uart_clock=3D30=
00000<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ## init_emmc_clock<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Initial emmc clock, increasing this can speedu=
p your SD-card.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 100000000 (100m=
hz)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; #init_emmc_clock=3D100000000<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## bo=
ot_delay<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Wait=
 for a given number of seconds in start.elf before loading<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; kernel.img.<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; delay =3D (1000 * boot_delay) + boot_delay_ms<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##&nbsp; &nbsp; Default 1<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #boot_delay=3D0<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ## boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; Wait for a given number of milliseconds in start.elf befo=
re loading<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ke=
rnel.img.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; delay =3D (1000 * boot_delay)=
 + boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; #boot_delay_ms=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## avoid_safe_mode<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Adding a jumper between p=
ins 5 &amp; 6 of P1 enables a recovery Safe Mode.<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; If pins 5 &amp; 6 are used for connect=
ing to external devices (e.g. GPIO),<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; then this setting can be used to ensure Safe Mode i=
s not triggered.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Des=
cription<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ----=
---------------------------------------------------------------------<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nb=
sp; &nbsp; Respect Safe Mode input (Default)<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Ignore Safe Mo=
de input<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; #avoid_safe_mode=3D1<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## disab=
le_splash<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Avo=
ids the rainbow splash screen on boot.<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; ---------------------------------------------------------=
----------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nb=
sp; 0&nbsp; &nbsp; &nbsp; &nbsp; Splash screen enabled (Default)<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &=
nbsp; Splash screen disabled<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #disable_splash=3D1<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ################################################################=
################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Ove=
rclocking Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; ARM, SDRAM and GPU each hav=
e their own PLLs and can have unrelated<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; frequencies.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; The GPU core,=
 h264, v3d and isp share a PLL, so need to have related<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; frequencies.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; pll_freq =3D floor(2400 / (2 * core_freq)) *=
 (2 * core_freq)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; gpu=
_freq =3D pll_freq / [even number]<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; The effecti=
ve gpu_freq is automatically rounded to nearest even integer, so<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; asking for core_freq =3D 500 a=
nd gpu_freq =3D 300 will result in divisor of<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; 2000/300 =3D 6.666 =3D&gt; 6 and so 333.33MHz.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp;=
 Standard Profiles:<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; arm_freq&nbsp; &nbs=
p; core_freq&nbsp; &nbsp; sdram_freq&nbsp; &nbsp; over_voltage<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -------------------------=
------------------------------------------------<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; None&nbsp; &nbsp; &nbsp; &nbsp; 700&nbs=
p; &nbsp; &nbsp; &nbsp; 250&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 400&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; Modest&nbsp; &nbsp; &nbsp; 800&nbsp; &nbsp; &nbsp; &nbsp; 300=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Medium&nbsp; =
&nbsp; &nbsp; 900&nbsp; &nbsp; &nbsp; &nbsp; 333&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; High&nbsp; &nbsp; &nbsp; &nbsp; 950&nbsp=
; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; Turbo&nbsp; &nbsp; &nbsp; &nbsp; 1000&nbsp; &nbsp; &nbsp; &nbs=
p; 500&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 500&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; 6<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; #################################################=
###############################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## force_turbo<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Control the kernel "onde=
mand" governor. It has no effect if no overclock<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; settings are specified.<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ----------------------------=
---------------------------------------------<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Enable dynami=
c clocks and voltage for the ARM core, GPU core and<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; S=
DRAM (Default).<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Overclocking of h264_freq, v3d_freq a=
nd isp_freq is ignored.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disable dynamic clocks and voltage =
for the ARM core, GPU core<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and SDRAM.<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; Overclocking of h264_freq, v3d_freq and isp_freq is allowed.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; #force_turbo=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## initial_turbo<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Enables turbo mode from =
boot for the given value in seconds (up to 60)<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##&nbsp; &nbsp; or until cpufreq sets a frequency. Can he=
lp with sdcard corruption if<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; overclocked.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 0<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; #initial_turbo=3D0<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## temp_limit<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Overheat protectio=
n. Sets clocks and voltages to default when the SoC<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; reaches this Celsius value.<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Setting this higher t=
han default voids warranty.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 85<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; #temp_limit=3D85<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## arm_freq<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Frequency of ARM in MH=
z.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 700.<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #ar=
m_freq=3D700<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ## arm_freq_min<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; Minimum frequency of ARM in MHz (used for =
dynamic clocking).<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 700.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; #arm_freq_min=3D700<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## gpu_freq<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Sets core_freq, h264_freq,=
 isp_freq, v3d_freq together.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 2=
50.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; #gpu_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## core_freq<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Frequency of GPU p=
rocessor core in MHz. It has an impact on ARM<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; performance since it drives L2 cache.<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #core_freq=
=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ## core_freq_min<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; Minimum frequency of GPU processor core in MHz =
(used for dynamic<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; clocking). It has an impact on ARM performance since it drives L2 cach=
e.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #co=
re_freq_min=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ## h264_freq<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Frequency of hardware video block in MHz=
.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #h26=
4_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ## isp_freq<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Frequency of image sensor pipeline block in MH=
z.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #is=
p_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ## v3d_freq<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Frequency of 3D block in MHz.<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #v3d_freq=3D250<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ## sdram_freq<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; Frequency of SDRAM in MHz.<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
Default 400.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; #sdram_freq=3D400<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## sdra=
m_freq_min<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Mi=
nimum frequency of SDRAM in MHz (used for dynamic clocking).<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; Default 400.<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #sdram_freq_min=3D40=
0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ## avoid_pwm_pll<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; &nbsp; Don't dedicate a pll to PWM audio. This will reduce =
analogue audio<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp=
; quality slightly. The spare PLL allows the core_freq to be set<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; independently from the =
rest of the gpu allowing more control over<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; overclocking.<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; &nbsp; ----------------------------------------------------=
---------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp=
; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Linked core_freq (Default)<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &=
nbsp; Unlinked core_freq<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #avoid_pwm_pll=3D1<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; #####################################################################=
###########<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; Voltage =
Settings<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ####################=
############################################################<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ## current_limit_override<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; Disables SMPS current limit protection. Can help if you are=
 currently<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; hi=
tting a reboot failure when overclocking too high.<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; #current_limit_override=3D0x5A000020<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## over_voltage<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ARM/GPU core v=
oltage adjust.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp=
; May set warrany bit.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbs=
p; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp=
; -------------------------------------------------------------------------=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &n=
bsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbs=
p; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -1=
2&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &n=
bsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; =
&nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&=
nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -5&nb=
sp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp;=
 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nb=
sp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &=
nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &n=
bsp; &nbsp; &nbsp; 1.375 V (requires force_turbo=3D1 or current_limit_overr=
ide)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; =
&nbsp; &nbsp; &nbsp; 1.4&nbsp; V (requires force_turbo=3D1 or current_limit=
_override)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; #over_voltage=3D0<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## over_v=
oltage_min<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Mi=
nimum ARM/GPU core voltage adjust (used for dynamic clocking).<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ---------------------------------=
----------------------------------------<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; =
0.825 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -14&n=
bsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbs=
p; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&n=
bsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbs=
p; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp;=
 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
-3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &=
nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; =
1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &=
nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V (require=
s force_turbo=3D1)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V (requires force_turbo=3D1)<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; #over_voltage_min=3D0<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## over_voltage_s=
dram<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Sets ove=
r_voltage_sdram_c, over_voltage_sdram_i, over_voltage_sdram_p<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; together<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; --------------------------------------=
-----------------------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; =
&nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &n=
bsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
-10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &n=
bsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; =
&nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&=
nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -3&nb=
sp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp;=
 &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&=
nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbs=
p; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp;=
 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 6&nb=
sp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbs=
p; 1.4&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; #over_voltage_sdram=3D0<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ## over_voltage_sdram_c<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&n=
bsp; &nbsp; SDRAM controller voltage adjust.<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; ---------------------------------------------------=
----------------------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp;=
 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 =
V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &=
nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp;=
 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -6&n=
bsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; =
&nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp=
; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1=
.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp;=
 &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp;=
 &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp=
; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nb=
sp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; &gt; &gt; #over_voltage_sdram_c=3D0<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## ove=
r_voltage_sdram_i<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; SDRAM I/O voltage adjust.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nb=
sp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; -----------------------------------------------------------------=
--------<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -16&=
nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nb=
sp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div =
dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.9=
5&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -9&=
nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbs=
p; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nb=
sp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Defa=
ult)<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; =
&nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1=
.275 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp=
; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; =
1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; =
7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V<br></div><=
div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; #over_voltage_sdram_i=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## over_voltage_sdram_=
p<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; SDRAM phy v=
oltage adjust.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descr=
iption<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; ------=
-------------------------------------------------------------------<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nb=
sp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875=
 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -12&nbsp; =
&nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nb=
sp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -=
8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbs=
p; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nb=
sp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; -1&nbsp=
; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nb=
sp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbs=
p; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 2&=
nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &n=
bsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nb=
sp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nb=
sp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &=
nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #over_vo=
ltage_sdram_p=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ########################################=
########################################<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; ##&nbsp; USB Power<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; #########################################################################=
#######<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ## max_usb_current<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; When set to 1, change the output current lim=
it (for all 4 USB<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; ports combined) from 600mA to double that, 1200mA.<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &g=
t; ##&nbsp; &nbsp; This option is not available for Model A/B boards.<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##&nbsp; &nbsp; Default 0.<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #max_usb_curr=
ent=3D0<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##################################################=
##############################<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt=
; ##&nbsp; Base Device Tree Parameters<br></div><div dir=3D"ltr">&gt; &gt; =
&gt; &gt; #################################################################=
###############<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ## audio<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Enable the onboard ALSA audio<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Daudio=3Doff=
<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ## i2c_arm<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; Enable the ARM's i2c interface<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp;=
 &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Di2c_arm=3Doff<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &g=
t; &gt; ## i2c_vc<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Enable the i2c interface<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Usually r=
eserved for the VideoCore processor<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Def=
ault off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Di2c_vc=3Doff<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## i=
2c_arm_baudrate<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbs=
p; Set the baudrate of the ARM's i2c interface<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp;=
 &nbsp; Default 100000.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Di2c_arm_baudrate=3D1=
00000<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ## i2c_vc_baudrate<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Set the baudrate of the VideoCore i2c interfac=
e<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default 100000.<br></div><div dir=3D"=
ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
dtparam=3Di2c_vc_baudrate=3D100000<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## i2s<br></div><div di=
r=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set to "on" to enable the i2s=
 interface<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; #dtparam=3Di2s=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## spi<br></div><div dir=3D"ltr"=
>&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set to "on" to enable the spi interfac=
es<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dt=
param=3Dspi=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ## random<br></div><div dir=3D"ltr">&gt;=
 &gt; &gt; &gt; ##&nbsp; &nbsp; Set to "on" to enable the hardware random<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&=
gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtpara=
m=3Drandom=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ## uart0<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; Set to "off" to disable uart0<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; Default on.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Duart0=3Don<=
br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ## watchdog<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =
##&nbsp; &nbsp; Set to "on" to enable the hardware watchdog<br></div><div d=
ir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Dwatchdog=
=3Doff<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; &gt; &gt; ## act_led_trigger<br></div><div dir=3D"ltr">&gt; &=
gt; &gt; &gt; ##&nbsp; &nbsp; Choose which activity the LED tracks.<br></di=
v><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; &gt; &gt; ##&nbsp; &nbsp; Use "heartbeat" for a nice load indicator.<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##&nbsp; &nbsp; Default mmc.<br></div><div dir=3D"ltr">&gt=
; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=
=3Dact_led_trigger=3Dmmc<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## act_led_activelow<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set to "on" to invert the=
 sense of the LED<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default off.<br></div=
><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; &gt; &gt; #dtparam=3Dact_led_activelow=3Doff<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## act_led_=
gpio<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Set whic=
h GPIO to use for the activity LED<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; In c=
ase you want to connect it to an external device<br></div><div dir=3D"ltr">=
&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbs=
p; &nbsp; Default 16 on a non-Plus board, 47 on a Plus or Pi 2.<br></div><d=
iv dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt; #dtparam=3Dact_led_gpio=3D47<br></div><div dir=3D"ltr">&gt; &gt; &=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## pwr_led_trigger<b=
r></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Choose which a=
ctivity the LED tracks.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Use "heartbeat"=
 for a nice load indicator.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Not availab=
le on Model A/B boards.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp; Default mmc.<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; #dtparam=3Dpwr_led_trigger=3Dmmc<br></div><div dir=3D"ltr=
">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ## pwr_=
led_activelow<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 Set to "on" to invert the sense of the LED<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &n=
bsp; Not available on Model A/B boards.<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&nbsp; &nbsp;=
 Default off.<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Dpwr_led_activelow=3Doff<br></d=
iv><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ## pwr_led_gpio<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##=
&nbsp; &nbsp; Set which GPIO to use for the PWR LED<br></div><div dir=3D"lt=
r">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; ##&=
nbsp; &nbsp; In case you want to connect it to an external device<br></div>=
<div dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt; ##&nbsp; &nbsp; Not available on Model A/B boards.<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt=
; &gt; ##&nbsp; &nbsp; Default 35.<br></div><div dir=3D"ltr">&gt; &gt; &gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; #dtparam=3Dpwr_led_g=
pio=3D35<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; # Enable SPI bus<br>=
</div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dtparam=3Dspi=3Don<br></div><div=
 dir=3D"ltr">&gt; &gt; &gt; &gt; # Enable UART<br></div><div dir=3D"ltr">&g=
t; &gt; &gt; &gt; enable_uart=3D1<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; # Enable VC4 Graphics<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dt=
overlay=3Dvc4-kms-v3d<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; # Enabl=
e Sony RaspberryPi Camera(imx219)<br></div><div dir=3D"ltr">&gt; &gt; &gt; =
&gt; dtoverlay=3Dimx219<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; # Ena=
ble USB host mode<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dtoverlay=
=3Ddwc2,dr_mode=3Dhost<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; # Enab=
le CAN<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dtoverlay=3Dmcp2515-ca=
n0,oscillator=3D16000000,interrupt=3D25<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; # Enable WM8960<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; dtoverlay=3Dwm8960-soundcard<br=
></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt;=
 &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt; Any help will be a=
ppreciated!<br></div><div dir=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt;<br></=
div><div dir=3D"ltr">&gt; &gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt;<br></div>=
<div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr">&gt;<br></div><br>-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Links: You receive all messages se=
nt to this group.<br>View/Reply Online (#60541): <a href=3D"https://lists.y=
octoproject.org/g/yocto/message/60541" rel=3D"nofollow" target=3D"_blank">h=
ttps://lists.yoctoproject.org/g/yocto/message/60541</a><br>Mute This Topic:=
 <a href=3D"https://lists.yoctoproject.org/mt/99985319/7732448" rel=3D"nofo=
llow" target=3D"_blank">https://lists.yoctoproject.org/mt/99985319/7732448<=
/a><br>Group Owner: yocto+owner@lists.yoctoproject.org<br>Unsubscribe: <a h=
ref=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=3D"nofollow" targe=
t=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a> [oosman3@yaho=
o.com]<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br><br></div>
            </div>
        </div></body></html>
------=_Part_1934542_1258510844.1688996197204--

