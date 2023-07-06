Return-Path: <oosman3@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04207EB64DC
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 15:06:21 +0000 (UTC)
Received: from sonic308-9.consmr.mail.ne1.yahoo.com (sonic308-9.consmr.mail.ne1.yahoo.com [66.163.187.32])
 by mx.groups.io with SMTP id smtpd.web10.26473.1688655976275758902
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 08:06:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=bWv0DgXP;
 spf=neutral (domain: yahoo.com, ip: 66.163.187.32, mailfrom: oosman3@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688655975; bh=pksgrA8mvxIy3IMBHUZRDQRC4iTjHP4g8Ics3HYxwMQ=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=bWv0DgXPgAVSFS0akzlLAWyEIoyyudsgjnErxzmrIgnn9Qu9W1Z0154EQBY/Al3Eo1LZ3KHwn2c1FsH8S2MVBTl4GuUfxPUs3h0aBkmSjB0DXXqwYhFKWSU3bL8VEzBAtg8mZDo2X5w4XAa+NV6cvsgk0bJaRx1OG1W6RKdTvI5NgJ0ukNGXYgmkmIaQY/XJQXBuG+jqtZ8PjdiT1UptZSypg0BvqwpZv3Rql/XPKMQlGHLBlI3yi/XiPjfmjMaDfs3he5GseC6LRkgWHq+unfdjB1tcvoyQ4fX5id4XEsQp5j0AyFqLGwjweQKyVEADjvTEvlPTYoyH8/vS0EgX4Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688655975; bh=DUKJ33l7eGHhW4CygoCyizx5G3AfJ7Gd+btISBGi3uG=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=BxNz8qJukEsZRrwIBWXtkXeiuCfmcbpgIqxEn47GpFUhh0M3nOITNWhK0ioAgmfnK9CSI2Zt4ydAXxwZHIBhUvtp2Uo08KuUhhQdW+Z/fRA63OHGe8PT2r2YFzzC/MIcad6yW2w5NRlUOBTrJeZX/1iBbJialcUtBLKCs8q3AeOdrlrtqwmgPMbBpewoXGXF/3HadNwGljW06klXGNxJE/dyIP1lGGxwwKRN3xhjQNv3CNiLpjN6RnL8Go2ifWyxUNUeAmT/PBR6L/+CmE+34VleBJ/BwMsp8ruzyGHpzlXDURxc+7JStqINONjD2NbQ7TCxkOZhFvxE9aPwIEO5Ig==
X-YMail-OSG: yCplj4sVM1nnVO2xaeJ0978TNKxzeW6zmFd_tGUd9d.1OgBo_sPJweJTfss8OZL
 KGIKKojsrrnVqLKUI78BF0jqB_xZgAo2Sx863pQNOPnZ2O2Gw4ysrtKy42TVEKKy8nVzlgGtbrbY
 WsJhybm72DC4Rt0cc85syd5IEFbAHinUOjEVE.LUBd1lBcyyjO7aVnJ5J87Wx9ar2L70hRMRnRW2
 5PZHMoCc420C8tuh6DJEczu_0e1TRPvozkkRLKqQ3ZPe.1WPo86QVgkZlWMnBcE7sV4Jmy7LchlD
 X6VCoJ1Sm8uJ1PkvLPbjmVfdcvrdCdF4u8S_yrJ7KNk72WJkAT7wazg6hYW25_W.Ef.TOoebBNxW
 NcSwUP0m3Sxhf3VO.BmXyvPSV3wq5RBsoiD4zqaNzB.jKAukkQoh9lO4s4BTbf7rXJonRrxQp.y_
 a0M6SQSG_iIdt805.IeGrZb9dSnaMLZm_tyc.VErNI5mYk1p1r9TqXmZorQLDKF1fMVDShA8344J
 G3Q3Fk3yLCPuAMDbnxNorl9bdpujJT.oMxJ6pQFyX1qu0tY_P6NnoXKpINx.CVYo7Q276qSgKYr4
 J23BcPdI13GE80fW7ZKJ8Ab1K9kk7K3MgelSs0ko69RRPlzJeBvWrCFpev3A727SMlDRo6VPnPYl
 KJUofsegnqDk9Q9ZtYKKuKHOBJ5BTGfnn2kHhNGnVVsQTrmoqyae5LTfTEKXZTzoAh7qQ_zmhjNX
 DrlqjWnxDsii96gcht._JbFILc5hKDoKRmC8mvYyiV7QEb38grmMSZL8Gn.CkgbgTMBVougF3Tti
 yhMMyCIW7ZwPpbndaxeYjQ1kRp.WH2ZCt59bdv4XAkEXrheoyEv9RO3y5AjYTe9fnBKqsFMBNyOA
 9SExF8L_OWTlU.lh6bbkuA6fvPVes49FZ_Duf3I4JpXauuJao0WTzUeg7b82ZeuLQyAaFxRR7NGo
 a68XKIDSY7d5FLlCNTbdtVtONH7nABmHB9PETJcLcusjOJi_B8F4ZejZ.0eWt03OBL1HC2XvLZ6T
 O5C.mcEigB22cqV7D8CmS9NIEZ1KXhS2C89xTLDaJXvME4vs3Nh6IXiHvabwSo03_i8.Ndod5lmh
 AKc_NLQkJnC5Yuby4aE3LMLhn0F7vyljpMOVesYb06oom6f8U4uQ8tp6DrVfJLydTRcpzQ83dhhw
 onlGS_wxTgacuYUWNGO.xaTo.XT4OQIp3JdihWf0FFZGqSu8hXeqr3XlBXIPRYCIRE1B2G5eFRFD
 dhaK9AW.XQFatJjxyC_OX_Zw1E2WIrlqK2598AJA5w4EXBAkrhxvfQ3MLAO0MLwzhPzxhpEsH75j
 LBXU5HIEL3yafOLAi5wgUyN9IeibhSzukpbUoyL7.ORYk5aUcB75RIf46h9GFpF4RsMS2eQtK.g4
 dziyK6zEmgorGWZpAfvZidNCWSApnEuQlRcCPrXRlBbUaqeehr7F702SHIW5jsg993STfb9hpJa9
 cMfFsH5F4721R3Njc13m.7H8jDs3xXev9Dh62E19Er9RhCWjDej9UK3BnvH74eruYPcIdvHuWSOn
 xiOob9QAZOmCVaCzD8uQhRPmp99qlw6_rakopyU5F8jRxG7VDnjDi4L7e.lS3pkJU3_RU4kzxWEN
 1uaH7evrJ7Wpmea.CUSSedB.F14cHts6NMA_rldR7V.aybZrf2lxyeCHXa1j61_WIzE3y8Aw3t76
 7a7IWrJQUFUh.SbNkpGqLJ5Vmp0Zh1_3bRa5VDIxokJHYJBayn.gUdMM.7QDTHr0wory5.mjxdd9
 e3g5coAT3k6dYE.TP9H5Yt1V_iTTf5BSSysK8NrXukSjx_hXlRq9QK7FR_ctOl3yexpd3bJD3tIR
 CtidcoB50NmTVMsDNd_YuWJGJ1PASd4eQ3Q5OyQz1RGr7RsxHmhIM6V0g0aTqxYvTKtvoPyGg2us
 rA3FWqFXtymsaSQXxD3.6v31Wm0NHteOCPEfPpwiMSL6Fgq5B5iWKuN2bnkmyB0Xiu6jmdwvoDJM
 I25eY5KnFuchlfLdPK7_l_BJSuh7DWik3Bv0.RYnc6Zo6Hf.fNsP8gIhOQCekCFXXIfMzM1JGV47
 271t85kytJXzF3gDFeAa7pJg2sFJ_lTMmGC9As9xwiykNCYgmtLGmY0alpa4nSG.SFZ_6VovOlIq
 knE1roMb2X_3_YJDOCW4ARubmeAv617vCkbmNspUx6a2EQzxxMQqoDkL_a6h.YmSDwoLhGWh4J.G
 DTOSppadoicYY6j9TGSXYJb_wJT5ojglpHWtd5Tc-
X-Sonic-MF: <oosman3@yahoo.com>
X-Sonic-ID: f6f2baeb-3b1a-45b7-bfa8-e37a7b3d40ef
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ne1.yahoo.com with HTTP; Thu, 6 Jul 2023 15:06:15 +0000
Date: Thu, 6 Jul 2023 15:06:12 +0000 (UTC)
From: Oosman Saeed <oosman3@yahoo.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <1248822682.421971.1688655973025@mail.yahoo.com>
In-Reply-To: <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com>
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org> <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_421970_39911054.1688655972999"
X-Mailer: WebService/1.1.21638 YMailNorrin
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 15:06:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60531

------=_Part_421970_39911054.1688655972999
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 root@raspberrypi4-64:~# ifconfig -a
eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.7.8=C2=A0 netmask 2=
55.255.255.0=C2=A0 broadcast 192.168.7.255
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 tx=
queuelen 1000=C2=A0 (Ethernet)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 962=C2=A0 bytes 11719=
1 (114.4 KiB)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 1766=C2=A0 bytes 2995=
78 (292.5 KiB)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0

lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 127.0.0.1=C2=A0 netmask 255=
.0.0.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=
=A0 scopeid 0x10<host>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0=
 (Local Loopback)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 12567=C2=A0 bytes 780=
277 (761.9 KiB)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 12567=C2=A0 bytes 780=
277 (761.9 KiB)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0



    On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote: =20
=20
 what does ifconfig -a say

On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject.org
<oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
>
> I am building my raspberrypi wic image using the layer meta-raspberrypi.
>
> I am using a raspiberrypi compute module 4 with wifi chip.
>
> I just can't seem to get the wlan0 device to appear when I type ifconfig.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> root@raspberrypi4-64:~# ifconfig
> eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.7.255
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 1000=
=C2=A0 (Ethernet)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 407=C2=A0 bytes 62442 (60.9 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 567=C2=A0 bytes 94749 (92.5 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 c=
arrier 0=C2=A0 collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x=
10<host>
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopba=
ck)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 4047=C2=A0 bytes 252037 (246.1 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 4047=C2=A0 bytes 252037 (246.1 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 c=
arrier 0=C2=A0 collisions 0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>
>
> Here is a filtered output of my lsmod command
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> root@raspberrypi4-64:~# lsmod
> Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size=
=C2=A0 Used by
> 88XXau=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2265088=C2=A0 0
> cmac=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=
=C2=A0 3
> algif_hash=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> aes_arm64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 3
> aes_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 36864=C2=A0 1 aes_ar=
m64
> algif_skcipher=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> af_alg=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0=
 6 algif_hash,algif_skcipher
> bnep=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
=C2=A0 2
> 8021q=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=
=C2=A0 0
> garp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=
=C2=A0 1 8021q
> stp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
16384=C2=A0 1 garp
> llc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
16384=C2=A0 2 stp,garp
> imx219=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0=
 0
> mcp251x=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=
=A0 0
> spidev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0=
 0
> can_dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=
=A0 1 mcp251x
> hci_uart=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> btbcm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
=C2=A0 1 hci_uart
> v3d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
90112=C2=A0 1
> bluetooth=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 585728=C2=A0 26 hci_ua=
rt,btbcm,bnep
> i2c_mux_pinctrl=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> gpu_sched=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 1 v=
3d
> snd_soc_simple_card=C2=A0 =C2=A0 20480=C2=A0 0
> snd_soc_simple_card_utils=C2=A0 =C2=A0 28672=C2=A0 1 snd_soc_simple_card
> drm_shmem_helper=C2=A0 =C2=A0 =C2=A0 24576=C2=A0 1 v3d
> raspberrypi_hwmon=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> i2c_mux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=
=A0 1 i2c_mux_pinctrl
> i2c_brcmstb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> bcm2835_unicam=C2=A0 =C2=A0 =C2=A0 =C2=A0 53248=C2=A0 0
> dwc2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 192512=
=C2=A0 0
> roles=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=
=C2=A0 1 dwc2
> v4l2_dv_timings=C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 1 bcm2835_unicam
> v4l2_fwnode=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 2 imx219=
,bcm2835_unicam
> ecdh_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 bluetooth
> v4l2_async=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 3 v4l2_fw=
node,imx219,bcm2835_unicam
> ecc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
36864=C2=A0 1 ecdh_generic
> libaes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0=
 3 aes_arm64,bluetooth,aes_generic
> spi_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 0
> snd_soc_bcm2835_i2s=C2=A0 =C2=A0 20480=C2=A0 0
> bcm2835_codec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> rpivid_hevc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> bcm2835_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> bcm2835_isp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> bcm2835_mmal_vchiq=C2=A0 =C2=A0 36864=C2=A0 3 bcm2835_codec,bcm2835_v4l2,=
bcm2835_isp
> v4l2_mem2mem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 2 bcm2835_code=
c,rpivid_hevc
> videobuf2_vmalloc=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1 bcm2835_v4l2
> videobuf2_dma_contig=C2=A0 =C2=A0 20480=C2=A0 4 bcm2835_codec,bcm2835_uni=
cam,rpivid_hevc,bcm2835_isp
> videobuf2_memops=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 videobuf2_vmalloc,vide=
obuf2_dma_contig
> videobuf2_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 6 bcm2835_codec,bcm=
2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> videobuf2_common=C2=A0 =C2=A0 =C2=A0 69632=C2=A0 10 bcm2835_codec,videobu=
f2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,=
rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp
> videodev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 274432=C2=A0 10 =
v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,=
videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> vc_sm_cma=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 2 b=
cm2835_mmal_vchiq,bcm2835_isp
> snd_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> mc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6=
1440=C2=A0 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,bcm28=
35_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> uio_pdrv_genirq=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> nvmem_rmem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> uio=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
24576=C2=A0 1 uio_pdrv_genirq
> sch_fq_codel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 6
> brcmutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 0
> cfg80211=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 929792=C2=A0 1 8=
8XXau
> rfkill=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0=
 4 bluetooth,cfg80211
> fuse=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 139264=
=C2=A0 1
> ipv6=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 552960=
=C2=A0 28
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> And here is my /boot/config.txt
>
> root@raspberrypi4-64:~# cat /boot/config.txt
> #########################################################################=
#######
> ##=C2=A0 Raspberry Pi Configuration Settings
> ##
> ##=C2=A0 Revision 16, 2013/06/22
> ##
> ##=C2=A0 Details taken from the eLinux wiki
> ##=C2=A0 For up-to-date information please refer to wiki page.
> ##
> ##=C2=A0 Wiki Location : http://elinux.org/RPiconfig
> ##
> ##
> ##=C2=A0 Description:
> ##=C2=A0 =C2=A0 Details of each setting are described with each section t=
hat begins with
> ##=C2=A0 =C2=A0 a double hashed comment ('##')
> ##=C2=A0 =C2=A0 It is up to the user to remove the single hashed comment =
('#') from each
> ##=C2=A0 =C2=A0 option they want to enable, and to set the specific value=
 of that option.
> ##
> ##=C2=A0 Overclock settings will be disabled at runtime if the SoC reache=
s temp_limit
> ##
> #########################################################################=
#######
>
> #########################################################################=
#######
> ##=C2=A0 Standard Definition Video Settings
> #########################################################################=
#######
>
> ## sdtv_mode
> ##=C2=A0 =C2=A0 defines the TV standard for composite output
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal NTSC (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Japanese version of NTSC - n=
o pedestal
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal PAL
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 Brazilian version of PAL - 5=
25/60 rather than 625/50, different
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subcarrier
> ##
> #sdtv_mode=3D0
>
> ## sdtv_aspect
> ##=C2=A0 =C2=A0 defines the aspect ratio for composite output
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 4:3 (Default)
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 14:9
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 16:9
> ##
> #sdtv_aspect=3D1
>
> ## sdtv_disable_colourburst
> ##=C2=A0 =C2=A0 Disables colour burst on composite output. The picture wi=
ll be
> ##=C2=A0 =C2=A0 monochrome, but possibly sharper
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is enabled (Def=
ault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is disabled
> ##
> #sdtv_disable_colourburst=3D1
>
> #########################################################################=
#######
> ##=C2=A0 High Definition Video Settings
> #########################################################################=
#######
>
> ## hdmi_safe
> ##=C2=A0 =C2=A0 Use "safe mode" settings to try to boot with maximum hdmi=
 compatibility.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enabled (this does: hdmi_for=
ce_hotplug=3D1,
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_ignore_edid=3D0xa5000=
080,
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 config_hdmi_boost=3D4, hdm=
i_group=3D2,
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_mode=3D4, disable_ove=
rscan=3D0,
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_left=3D24, oversc=
an_right=3D24,
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_top=3D24, oversca=
n_bottom=3D24)
> ##
> #hdmi_safe=3D1
>
> ## hdmi_force_hotplug
> ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is asserted so it appears a =
HDMI display
> ##=C2=A0 =C2=A0 is attached
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use HDMI mode even if no HDM=
I monitor is detected
> ##
> #hdmi_force_hotplug=3D1
>
> ## hdmi_ignore_hotplug
> ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is not asserted so it appear=
s a HDMI
> ##=C2=A0 =C2=A0 display is not attached
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use composite mode even if H=
DMI monitor is detected
> ##
> #hdmi_ignore_hotplug=3D1
>
> ## hdmi_drive
> ##=C2=A0 =C2=A0 chooses between HDMI and DVI modes
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal DVI mode (No sound)
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal HDMI mode (Sound will=
 be sent if supported and enabled)
> ##
> #hdmi_drive=3D2
>
> ## hdmi_ignore_edid
> ##=C2=A0 =C2=A0 Enables the ignoring of EDID/display data
> ##
> #hdmi_ignore_edid=3D0xa5000080
>
> ## hdmi_edid_file
> ##=C2=A0 =C2=A0 Read the EDID data from the edid.dat file instead of from=
 the attached
> ##=C2=A0 =C2=A0 device
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from attached=
 device (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from edid.txt=
 file
> ##
> #hdmi_edid_file=3D1
>
> ## hdmi_ignore_edid_audio
> ##=C2=A0 =C2=A0 Pretends all audio formats are unsupported by display. Th=
is means ALSA
> ##=C2=A0 =C2=A0 will default to analogue.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (De=
fault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio formats ar=
e unsupported
> ##
> #hdmi_ignore_edid_audio=3D1
>
> ## hdmi_force_edid_audio
> ##=C2=A0 =C2=A0 Pretends all audio formats are supported by display, allo=
wing
> ##=C2=A0 =C2=A0 passthrough of DTS/AC3 even when not reported as supporte=
d.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (De=
fault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio formats ar=
e supported
> ##
> #hdmi_force_edid_audio=3D1
>
> ## hdmi_force_edid_3d
> ##=C2=A0 =C2=A0 Pretends all CEA modes support 3D even when edid doesn't =
indicate
> ##=C2=A0 =C2=A0 support for them.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (De=
fault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend 3D mode is supported
> ##
> #hdmi_force_edid_3d=3D1
>
> ## avoid_edid_fuzzy_match
> ##=C2=A0 =C2=A0 Avoid fuzzy matching of modes described in edid.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use fuzzy matching (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Avoid fuzzy matching
> ##
> #avoid_edid_fuzzy_match=3D1
>
> ## hdmi_pixel_encoding
> ##=C2=A0 =C2=A0 Force the pixel encoding mode.
> ##=C2=A0 =C2=A0 By default it will use the mode requested from edid so sh=
ouldn't
> ##=C2=A0 =C2=A0 need changing.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (De=
fault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB limited=C2=A0 (16-235)
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB full=C2=A0 =C2=A0 =C2=A0=
 ( 0-255)
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited (16-235)
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited ( 0-255)
> ##
> #hdmi_pixel_encoding=3D1
>
> ## hdmi_group
> ##=C2=A0 =C2=A0 Defines the HDMI type
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the preferred group repo=
rted by the edid (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 CEA
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 DMT
> ##
> #hdmi_group=3D1
>
> ## hdmi_mode
> ##=C2=A0 =C2=A0 defines screen resolution in CEA or DMT format
> ##
> ##=C2=A0 =C2=A0 H means 16:9 variant (of a normally 4:3 mode).
> ##=C2=A0 =C2=A0 2x means pixel doubled (i.e. higher clock rate, with each=
 pixel repeated
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 twice)
> ##=C2=A0 =C2=A0 4x means pixel quadrupled (i.e. higher clock rate, with e=
ach pixel
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repeated four times=
)
> ##=C2=A0 =C2=A0 reduced blanking means fewer bytes are used for blanking =
within the data
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 stream (i.e. lower clock rate, with fewer wasted bytes)
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 hdmi_group=3DCEA=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_group=3DDMT
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 VGA=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6=
40x350=C2=A0 85Hz
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x400=C2=
=A0 85Hz
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 720x400=C2=A0 8=
5Hz
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 720p=C2=A0 60Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 60Hz
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1080i 60Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=A0 7=
2Hz
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 75Hz
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=A0 8=
5Hz
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=
=A0 56Hz
> ##=C2=A0 =C2=A0 9=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 6=
0Hz
> ##=C2=A0 =C2=A0 10=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 72Hz
> ##=C2=A0 =C2=A0 11=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 75Hz
> ##=C2=A0 =C2=A0 12=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 85Hz
> ##=C2=A0 =C2=A0 13=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 120Hz
> ##=C2=A0 =C2=A0 14=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 848x480=C2=A0 60Hz
> ##=C2=A0 =C2=A0 15=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 43Hz=C2=A0 =
DO NOT USE
> ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 1080p 60Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 60Hz
> ##=C2=A0 =C2=A0 17=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
70Hz
> ##=C2=A0 =C2=A0 18=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 75Hz
> ##=C2=A0 =C2=A0 19=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
85Hz
> ##=C2=A0 =C2=A0 20=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 120Hz
> ##=C2=A0 =C2=A0 21=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1152x864=C2=A0 =
75Hz
> ##=C2=A0 =C2=A0 22=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 23=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =
60Hz
> ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 H=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 75Hz
> ##=C2=A0 =C2=A0 25=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 85Hz
> ##=C2=A0 =C2=A0 26=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 120Hz reduc=
ed blanking
> ##=C2=A0 =C2=A0 27=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 28=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 60Hz
> ##=C2=A0 =C2=A0 29=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 75Hz
> ##=C2=A0 =C2=A0 30=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 85Hz
> ##=C2=A0 =C2=A0 31=C2=A0 =C2=A0 =C2=A0 1080p 50Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 120Hz r=
educed blanking
> ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 1080p 24Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 60Hz
> ##=C2=A0 =C2=A0 33=C2=A0 =C2=A0 =C2=A0 1080p 25Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 85Hz
> ##=C2=A0 =C2=A0 34=C2=A0 =C2=A0 =C2=A0 1080p 30Hz=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 120Hz r=
educed blanking
> ##=C2=A0 =C2=A0 35=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 60Hz
> ##=C2=A0 =C2=A0 36=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 75Hz
> ##=C2=A0 =C2=A0 37=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 85Hz
> ##=C2=A0 =C2=A0 38=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 120Hz reduced bl=
anking
> ##=C2=A0 =C2=A0 39=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 reduced blanking=
=C2=A0 =C2=A0 1360x768=C2=A0 60Hz
> ##=C2=A0 =C2=A0 40=C2=A0 =C2=A0 =C2=A0 1080i 100Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1360x768=C2=A0 120Hz reduc=
ed blanking
> ##=C2=A0 =C2=A0 41=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 100Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050=C2=A0 =C2=A0=
 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 42=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 60Hz
> ##=C2=A0 =C2=A0 43=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 75Hz
> ##=C2=A0 =C2=A0 44=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 85Hz
> ##=C2=A0 =C2=A0 45=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 120Hz reduced bl=
anking
> ##=C2=A0 =C2=A0 46=C2=A0 =C2=A0 =C2=A0 1080i 120Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 47=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 120Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 60Hz
> ##=C2=A0 =C2=A0 48=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 75Hz
> ##=C2=A0 =C2=A0 49=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 85Hz
> ##=C2=A0 =C2=A0 50=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 120Hz r=
educed blanking
> ##=C2=A0 =C2=A0 51=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 60Hz
> ##=C2=A0 =C2=A0 52=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 65Hz
> ##=C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 70Hz
> ##=C2=A0 =C2=A0 54=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 75Hz
> ##=C2=A0 =C2=A0 55=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 85Hz
> ##=C2=A0 =C2=A0 56=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 120Hz reduce=
d blanking
> ##=C2=A0 =C2=A0 57=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050=C2=A0 =C2=A0 =C2=
=A0 reduced blanking
> ##=C2=A0 =C2=A0 58=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 60Hz
> ##=C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 75Hz
> ##=C2=A0 =C2=A0 60=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1680x1050 85Hz
> ##=C2=A0 =C2=A0 61=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1680x1050 120Hz reduced blanking
> ##=C2=A0 =C2=A0 62=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1792x1344 60Hz
> ##=C2=A0 =C2=A0 63=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1792x1344 75Hz
> ##=C2=A0 =C2=A0 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1792x1344 120Hz reduced blanking
> ##=C2=A0 =C2=A0 65=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1856x1392 60Hz
> ##=C2=A0 =C2=A0 66=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1856x1392 75Hz
> ##=C2=A0 =C2=A0 67=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1856x1392 120Hz reduced blanking
> ##=C2=A0 =C2=A0 68=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1200=C2=A0 =C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 69=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1200 60Hz
> ##=C2=A0 =C2=A0 70=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1200 75Hz
> ##=C2=A0 =C2=A0 71=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1200 85Hz
> ##=C2=A0 =C2=A0 72=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1200 120Hz reduced blanking
> ##=C2=A0 =C2=A0 73=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1440 60Hz
> ##=C2=A0 =C2=A0 74=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1440 75Hz
> ##=C2=A0 =C2=A0 75=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1920x1440 120Hz reduced blanking
> ##=C2=A0 =C2=A0 76=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2560x1600=C2=A0 =C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 77=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2560x1600 60Hz
> ##=C2=A0 =C2=A0 78=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2560x1600 75Hz
> ##=C2=A0 =C2=A0 79=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2560x1600 85Hz
> ##=C2=A0 =C2=A0 80=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2560x1600 120Hz reduced blanking
> ##=C2=A0 =C2=A0 81=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1366x768=C2=A0 60Hz
> ##=C2=A0 =C2=A0 82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1080p=C2=A0 =C2=A0 60Hz
> ##=C2=A0 =C2=A0 83=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1600x900=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 84=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2048x1152=C2=A0 =C2=A0 =C2=A0 reduced blanking
> ##=C2=A0 =C2=A0 85=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 720p=C2=A0 =C2=A0 =C2=A0 60Hz
> ##=C2=A0 =C2=A0 86=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1366x768=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> ##
> #hdmi_mode=3D1
>
> ## config_hdmi_boost
> ##=C2=A0 =C2=A0 configure the signal strength of the HDMI interface.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Default)
> ##=C2=A0 =C2=A0 1
> ##=C2=A0 =C2=A0 2
> ##=C2=A0 =C2=A0 3
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 Try if you have interference=
 issues with HDMI
> ##=C2=A0 =C2=A0 5
> ##=C2=A0 =C2=A0 6
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Maximum
> ##
> #config_hdmi_boost=3D0
>
> ## hdmi_ignore_cec_init
> ##=C2=A0 =C2=A0 Doesn't sent initial active source message.=C2=A0 Avoids =
bringing
> ##=C2=A0 =C2=A0 (CEC enabled) TV out of standby and channel switch when r=
ebooting.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Doesn't sent initial active =
source message
> ##
> #hdmi_ignore_cec_init=3D1
>
> ## hdmi_ignore_cec
> ##=C2=A0 =C2=A0 Pretends CEC is not supported at all by TV.
> ##=C2=A0 =C2=A0 No CEC functions will be supported.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend CEC is not supported=
 by TV
> ##
> #hdmi_ignore_cec=3D1
>
> #########################################################################=
#######
> ##=C2=A0 Overscan Video Settings
> #########################################################################=
#######
>
> ## overscan_left
> ##=C2=A0 =C2=A0 Number of pixels to skip on left
> ##
> #overscan_left=3D0
>
> ## overscan_right
> ##=C2=A0 =C2=A0 Number of pixels to skip on right
> ##
> #overscan_right=3D0
>
> ## overscan_top
> ##=C2=A0 =C2=A0 Number of pixels to skip on top
> ##
> #overscan_top=3D0
>
> ## overscan_bottom
> ##=C2=A0 =C2=A0 Number of pixels to skip on bottom
> ##
> #overscan_bottom=3D0
>
> ## disable_overscan
> ##=C2=A0 =C2=A0 Set to 1 to disable overscan
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Enabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Disabled
> ##
> #disable_overscan=3D1
>
> #########################################################################=
#######
> ##=C2=A0 Framebuffer Video Settings
> #########################################################################=
#######
>
> ## framebuffer_width
> ##=C2=A0 =C2=A0 Console framebuffer width in pixels. Default is display w=
idth minus
> ##=C2=A0 =C2=A0 overscan.
> ##
> #framebuffer_width=3D0
>
> ## framebuffer_height
> ##=C2=A0 =C2=A0 Console framebuffer height in pixels. Default is display =
height minus
> ##=C2=A0 =C2=A0 overscan.
> ##
> #framebuffer_height=3D0
>
> ## framebuffer_depth
> ##=C2=A0 =C2=A0 Console framebuffer depth in bits per pixel.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 Valid, but default RGB palet=
te makes an unreadable screen
> ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 (Default)
> ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 Looks better but has corruption is=
sues as of 2012/06/15
> ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 Has no corruption issues but needs=
 framebuffer_ignore_alpha=3D1
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and shows the wrong co=
lors as of 2012/06/15
> ##
> #framebuffer_depth=3D16
>
> ## framebuffer_ignore_alpha
> ##=C2=A0 =C2=A0 Set to 1 to disable alpha channel. Helps with 32bit.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Alpha Channel (Defaul=
t)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Alpha Channel
> ##
> #framebuffer_ignore_alpha=3D0
>
> #########################################################################=
#######
> ##=C2=A0 General Video Settings
> #########################################################################=
#######
>
> ## display_rotate
> ##=C2=A0 =C2=A0 Rotate the display clockwise or flip the display.
> ##=C2=A0 =C2=A0 The 90 and 270 degrees rotation options require additiona=
l memory on GPU,
> ##=C2=A0 =C2=A0 so won't work with the 16M GPU split.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 0 degrees (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 90 degrees
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 180 degrees
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 270 degrees
> ##=C2=A0 =C2=A0 0x10000=C2=A0 Horizontal flip
> ##=C2=A0 =C2=A0 0x20000=C2=A0 Vertical flip
> ##
> #display_rotate=3D0
>
> ## dispmanx_offline
> ##=C2=A0 =C2=A0 Set to "1" to enable offline compositing
> ##
> ##=C2=A0 =C2=A0 Default 0
> ##
> #dispmanx_offline=3D0
>
> #########################################################################=
#######
> ##=C2=A0 Licensed Codecs
> ##
> ##=C2=A0 Hardware decoding of additional codecs can be enabled by purchas=
ing a
> ##=C2=A0 license that is locked to the CPU serial number of your Raspberr=
y Pi.
> ##
> ##=C2=A0 Up to 8 licenses per CODEC can be specified as a comma seperated=
 list.
> ##
> #########################################################################=
#######
>
> ## decode_MPG2
> ##=C2=A0 =C2=A0 License key to allow hardware MPEG-2 decoding.
> ##
> #decode_MPG2=3D0x12345678
>
> ## decode_WVC1
> ##=C2=A0 =C2=A0 License key to allow hardware VC-1 decoding.
> ##
> #decode_WVC1=3D0x12345678
>
> #########################################################################=
#######
> ##=C2=A0 Camera Settings
> #########################################################################=
#######
>
> ## start_x
> ##=C2=A0 =C2=A0 Set to "1" to enable the camera module.
> ##
> ##=C2=A0 =C2=A0 Enabling the camera requires gpu_mem option to be specifi=
ed with a value
> ##=C2=A0 =C2=A0 of at least 128.
> ##
> ##=C2=A0 =C2=A0 Default 0
> ##
> start_x=3D1
>
> ## disable_camera_led
> ##=C2=A0 =C2=A0 Turn off the red camera led when recording video or takin=
g a still
> ##=C2=A0 =C2=A0 picture.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED enabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED disabled
> ##
> #disable_camera_led=3D1
>
> #########################################################################=
#######
> ##=C2=A0 Test Settings
> #########################################################################=
#######
>
> ## test_mode
> ##=C2=A0 =C2=A0 Enable test sound/image during boot for manufacturing tes=
t.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Test Mod (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Test Mode
> ##
> #test_mode=3D0
>
> #########################################################################=
#######
> ##=C2=A0 Memory Settings
> #########################################################################=
#######
>
> ## disable_l2cache
> ##=C2=A0 =C2=A0 Disable arm access to GPU's L2 cache. Needs corresponding=
 L2 disabled
> ##=C2=A0 =C2=A0 kernel.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable L2 Cache (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable L2 cache
> ##
> #disable_l2cache=3D0
>
> ## gpu_mem
> ##=C2=A0 =C2=A0 GPU memory allocation in MB for all board revisions.
> ##
> ##=C2=A0 =C2=A0 Default 64
> ##
> #gpu_mem=3D128
>
> ## gpu_mem_256
> ##=C2=A0 =C2=A0 GPU memory allocation in MB for 256MB board revision.
> ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> ##
> #gpu_mem_256=3D192
>
> ## gpu_mem_512
> ##=C2=A0 =C2=A0 GPU memory allocation in MB for 512MB board revision.
> ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> ##
> #gpu_mem_512=3D448
>
> ## gpu_mem_1024
> ##=C2=A0 =C2=A0 GPU memory allocation in MB for 1024MB board revision.
> ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> ##
> #gpu_mem_1024=3D944
>
> ## disable_pvt
> ##=C2=A0 =C2=A0 Disable adjusting the refresh rate of RAM every 500ms
> ##=C2=A0 =C2=A0 (measuring RAM temparature).
> ##
> #disable_pvt=3D1
>
> #########################################################################=
#######
> ##=C2=A0 CMA - Dynamic Memory Split
> ##
> ##=C2=A0 CMA enables dynamic management of the ARM and GPU memory split a=
t runtime.
> ##
> ##=C2=A0 The following options need to be in cmdline.txt for CMA to work:
> ##=C2=A0 =C2=A0 coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> ##
> #########################################################################=
#######
>
> ## cma_lwm
> ##=C2=A0 =C2=A0 When GPU has less than cma_lwm (low water mark) memory av=
ailable it
> ##=C2=A0 =C2=A0 will request some from ARM.
> ##
> #cma_lwm=3D16
>
> ## cma_hwm
> ##=C2=A0 =C2=A0 When GPU has more than cma_hwm (high water mark) memory a=
vailable it
> ##=C2=A0 =C2=A0 will release some to ARM.
> ##
> #cma_hwm=3D32
>
> #########################################################################=
#######
> ##=C2=A0 Boot Option Settings
> #########################################################################=
#######
>
> ## disable_commandline_tags
> ##=C2=A0 =C2=A0 Stop start.elf from filling in ATAGS (memory from 0x100) =
before
> ##=C2=A0 =C2=A0 launching kernel
> ##
> #disable_commandline_tags=3D0
>
> ## cmdline (string)
> ##=C2=A0 =C2=A0 Command line parameters. Can be used instead of cmdline.t=
xt file
> ##
> #cmdline=3D""
>
> ## kernel (string)
> ##=C2=A0 =C2=A0 Alternative name to use when loading kernel.
> ##
> #kernel=3D""
>
> ## kernel_address
> ##=C2=A0 =C2=A0 Address to load kernel.img file at
> ##
> #kernel_address=3D0x00000000
>
> ## kernel_old
> ##=C2=A0 =C2=A0 Support loading old kernels
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Load kernel at address 0x000=
00000
> ##
> #kernel_old=3D1
>
> ## ramfsfile (string)
> ##=C2=A0 =C2=A0 ramfs file to load
> ##
> #ramfsfile=3D""
>
> ## ramfsaddr
> ##=C2=A0 =C2=A0 Address to load ramfs file at
> ##
> #ramfsaddr=3D0x00000000
>
> ## initramfs (string address)
> ##=C2=A0 =C2=A0 ramfs file and address to load it at (it's like ramfsfile=
+ramfsaddr in
> ##=C2=A0 =C2=A0 one option).
> ##
> ##=C2=A0 =C2=A0 NOTE: this option uses different syntax than all other op=
tions - you
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 should not use "=3D" character here.
> ##
> #initramfs initramf.gz 0x00800000
>
> ## device_tree_address
> ##=C2=A0 =C2=A0 Address to load device_tree at
> ##
> #device_tree_address=3D0x00000000
>
> ## init_uart_baud
> ##=C2=A0 =C2=A0 Initial uart baud rate.
> ##
> ##=C2=A0 =C2=A0 Default 115200
> ##
> #init_uart_baud=3D115200
>
> ## init_uart_clock
> ##=C2=A0 =C2=A0 Initial uart clock.
> ##
> ##=C2=A0 =C2=A0 Default 3000000 (3MHz)
> ##
> #init_uart_clock=3D3000000
>
> ## init_emmc_clock
> ##=C2=A0 =C2=A0 Initial emmc clock, increasing this can speedup your SD-c=
ard.
> ##
> ##=C2=A0 =C2=A0 Default 100000000 (100mhz)
> ##
> #init_emmc_clock=3D100000000
>
> ## boot_delay
> ##=C2=A0 =C2=A0 Wait for a given number of seconds in start.elf before lo=
ading
> ##=C2=A0 =C2=A0 kernel.img.
> ##
> ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> ##
> ##=C2=A0 =C2=A0 Default 1
> ##
> #boot_delay=3D0
>
> ## boot_delay_ms
> ##=C2=A0 =C2=A0 Wait for a given number of milliseconds in start.elf befo=
re loading
> ##=C2=A0 =C2=A0 kernel.img.
> ##
> ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> ##
> ##=C2=A0 =C2=A0 Default 0
> ##
> #boot_delay_ms=3D0
>
> ## avoid_safe_mode
> ##=C2=A0 =C2=A0 Adding a jumper between pins 5 & 6 of P1 enables a recove=
ry Safe Mode.
> ##=C2=A0 =C2=A0 If pins 5 & 6 are used for connecting to external devices=
 (e.g. GPIO),
> ##=C2=A0 =C2=A0 then this setting can be used to ensure Safe Mode is not =
triggered.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Respect Safe Mode input (Def=
ault)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ignore Safe Mode input
> ##
> #avoid_safe_mode=3D1
>
> ## disable_splash
> ##=C2=A0 =C2=A0 Avoids the rainbow splash screen on boot.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen enabled (Defau=
lt)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen disabled
> ##
> #disable_splash=3D1
>
> #########################################################################=
#######
> ##=C2=A0 Overclocking Settings
> ##
> ##=C2=A0 ARM, SDRAM and GPU each have their own PLLs and can have unrelat=
ed
> ##=C2=A0 frequencies.
> ##
> ##=C2=A0 The GPU core, h264, v3d and isp share a PLL, so need to have rel=
ated
> ##=C2=A0 frequencies.
> ##=C2=A0 pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)
> ##=C2=A0 gpu_freq =3D pll_freq / [even number]
> ##
> ##=C2=A0 The effective gpu_freq is automatically rounded to nearest even =
integer, so
> ##=C2=A0 asking for core_freq =3D 500 and gpu_freq =3D 300 will result in=
 divisor of
> ##=C2=A0 2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> ##
> ##
> ##=C2=A0 Standard Profiles:
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 arm_freq=
=C2=A0 =C2=A0 core_freq=C2=A0 =C2=A0 sdram_freq=C2=A0 =C2=A0 over_voltage
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 None=C2=A0 =C2=A0 =C2=A0 =C2=A0 700=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 250=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0
> ##=C2=A0 =C2=A0 Modest=C2=A0 =C2=A0 =C2=A0 800=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0
> ##=C2=A0 =C2=A0 Medium=C2=A0 =C2=A0 =C2=A0 900=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 333=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 2
> ##=C2=A0 =C2=A0 High=C2=A0 =C2=A0 =C2=A0 =C2=A0 950=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 6
> ##=C2=A0 =C2=A0 Turbo=C2=A0 =C2=A0 =C2=A0 =C2=A0 1000=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 6
> ##
> #########################################################################=
#######
>
> ## force_turbo
> ##=C2=A0 =C2=A0 Control the kernel "ondemand" governor. It has no effect =
if no overclock
> ##=C2=A0 =C2=A0 settings are specified.
> ##=C2=A0 =C2=A0 May set warrany bit.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable dynamic clocks and vo=
ltage for the ARM core, GPU core and
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SDRAM (Default).
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h264_f=
req, v3d_freq and isp_freq is ignored.
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable dynamic clocks and v=
oltage for the ARM core, GPU core
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and SDRAM.
> ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h264_f=
req, v3d_freq and isp_freq is allowed.
> ##
> #force_turbo=3D0
>
> ## initial_turbo
> ##=C2=A0 =C2=A0 Enables turbo mode from boot for the given value in secon=
ds (up to 60)
> ##=C2=A0 =C2=A0 or until cpufreq sets a frequency. Can help with sdcard c=
orruption if
> ##=C2=A0 =C2=A0 overclocked.
> ##
> ##=C2=A0 =C2=A0 Default 0
> ##
> #initial_turbo=3D0
>
> ## temp_limit
> ##=C2=A0 =C2=A0 Overheat protection. Sets clocks and voltages to default =
when the SoC
> ##=C2=A0 =C2=A0 reaches this Celsius value.
> ##=C2=A0 =C2=A0 Setting this higher than default voids warranty.
> ##
> ##=C2=A0 =C2=A0 Default 85
> ##
> #temp_limit=3D85
>
> ## arm_freq
> ##=C2=A0 =C2=A0 Frequency of ARM in MHz.
> ##
> ##=C2=A0 =C2=A0 Default 700.
> ##
> #arm_freq=3D700
>
> ## arm_freq_min
> ##=C2=A0 =C2=A0 Minimum frequency of ARM in MHz (used for dynamic clockin=
g).
> ##
> ##=C2=A0 =C2=A0 Default 700.
> ##
> #arm_freq_min=3D700
>
> ## gpu_freq
> ##=C2=A0 =C2=A0 Sets core_freq, h264_freq, isp_freq, v3d_freq together.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #gpu_freq=3D250
>
> ## core_freq
> ##=C2=A0 =C2=A0 Frequency of GPU processor core in MHz. It has an impact =
on ARM
> ##=C2=A0 =C2=A0 performance since it drives L2 cache.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #core_freq=3D250
>
> ## core_freq_min
> ##=C2=A0 =C2=A0 Minimum frequency of GPU processor core in MHz (used for =
dynamic
> ##=C2=A0 =C2=A0 clocking). It has an impact on ARM performance since it d=
rives L2 cache.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #core_freq_min=3D250
>
> ## h264_freq
> ##=C2=A0 =C2=A0 Frequency of hardware video block in MHz.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #h264_freq=3D250
>
> ## isp_freq
> ##=C2=A0 =C2=A0 Frequency of image sensor pipeline block in MHz.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #isp_freq=3D250
>
> ## v3d_freq
> ##=C2=A0 =C2=A0 Frequency of 3D block in MHz.
> ##
> ##=C2=A0 =C2=A0 Default 250.
> ##
> #v3d_freq=3D250
>
> ## sdram_freq
> ##=C2=A0 =C2=A0 Frequency of SDRAM in MHz.
> ##
> ##=C2=A0 =C2=A0 Default 400.
> ##
> #sdram_freq=3D400
>
> ## sdram_freq_min
> ##=C2=A0 =C2=A0 Minimum frequency of SDRAM in MHz (used for dynamic clock=
ing).
> ##
> ##=C2=A0 =C2=A0 Default 400.
> ##
> #sdram_freq_min=3D400
>
> ## avoid_pwm_pll
> ##=C2=A0 =C2=A0 Don't dedicate a pll to PWM audio. This will reduce analo=
gue audio
> ##=C2=A0 =C2=A0 quality slightly. The spare PLL allows the core_freq to b=
e set
> ##=C2=A0 =C2=A0 independently from the rest of the gpu allowing more cont=
rol over
> ##=C2=A0 =C2=A0 overclocking.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linked core_freq (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Unlinked core_freq
> ##
> #avoid_pwm_pll=3D1
>
> #########################################################################=
#######
> ##=C2=A0 Voltage Settings
> #########################################################################=
#######
>
> ## current_limit_override
> ##=C2=A0 =C2=A0 Disables SMPS current limit protection. Can help if you a=
re currently
> ##=C2=A0 =C2=A0 hitting a reboot failure when overclocking too high.
> ##=C2=A0 =C2=A0 May set warrany bit.
> ##
> #current_limit_override=3D0x5A000020
>
> ## over_voltage
> ##=C2=A0 =C2=A0 ARM/GPU core voltage adjust.
> ##=C2=A0 =C2=A0 May set warrany bit.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_turb=
o=3D1 or current_limit_override)
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires force_=
turbo=3D1 or current_limit_override)
> ##
> #over_voltage=3D0
>
> ## over_voltage_min
> ##=C2=A0 =C2=A0 Minimum ARM/GPU core voltage adjust (used for dynamic clo=
cking).
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_turb=
o=3D1)
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires force_=
turbo=3D1)
> ##
> #over_voltage_min=3D0
>
> ## over_voltage_sdram
> ##=C2=A0 =C2=A0 Sets over_voltage_sdram_c, over_voltage_sdram_i, over_vol=
tage_sdram_p
> ##=C2=A0 =C2=A0 together
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> ##
> #over_voltage_sdram=3D0
>
> ## over_voltage_sdram_c
> ##=C2=A0 =C2=A0 SDRAM controller voltage adjust.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> ##
> #over_voltage_sdram_c=3D0
>
> ## over_voltage_sdram_i
> ##=C2=A0 =C2=A0 SDRAM I/O voltage adjust.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> ##
> #over_voltage_sdram_i=3D0
>
> ## over_voltage_sdram_p
> ##=C2=A0 =C2=A0 SDRAM phy voltage adjust.
> ##
> ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> ##=C2=A0 =C2=A0 ---------------------------------------------------------=
----------------
> ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> ##
> #over_voltage_sdram_p=3D0
>
> #########################################################################=
#######
> ##=C2=A0 USB Power
> #########################################################################=
#######
>
> ## max_usb_current
> ##=C2=A0 =C2=A0 When set to 1, change the output current limit (for all 4=
 USB
> ##=C2=A0 =C2=A0 ports combined) from 600mA to double that, 1200mA.
> ##
> ##=C2=A0 =C2=A0 This option is not available for Model A/B boards.
> ##
> ##=C2=A0 =C2=A0 Default 0.
> ##
> #max_usb_current=3D0
>
> #########################################################################=
#######
> ##=C2=A0 Base Device Tree Parameters
> #########################################################################=
#######
>
> ## audio
> ##=C2=A0 =C2=A0 Enable the onboard ALSA audio
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Daudio=3Doff
>
> ## i2c_arm
> ##=C2=A0 =C2=A0 Enable the ARM's i2c interface
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Di2c_arm=3Doff
>
> ## i2c_vc
> ##=C2=A0 =C2=A0 Enable the i2c interface
> ##
> ##=C2=A0 =C2=A0 Usually reserved for the VideoCore processor
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Di2c_vc=3Doff
>
> ## i2c_arm_baudrate
> ##=C2=A0 =C2=A0 Set the baudrate of the ARM's i2c interface
> ##
> ##=C2=A0 =C2=A0 Default 100000.
> ##
> #dtparam=3Di2c_arm_baudrate=3D100000
>
> ## i2c_vc_baudrate
> ##=C2=A0 =C2=A0 Set the baudrate of the VideoCore i2c interface
> ##
> ##=C2=A0 =C2=A0 Default 100000.
> ##
> #dtparam=3Di2c_vc_baudrate=3D100000
>
> ## i2s
> ##=C2=A0 =C2=A0 Set to "on" to enable the i2s interface
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Di2s=3Doff
>
> ## spi
> ##=C2=A0 =C2=A0 Set to "on" to enable the spi interfaces
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Dspi=3Doff
>
> ## random
> ##=C2=A0 =C2=A0 Set to "on" to enable the hardware random
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Drandom=3Doff
>
> ## uart0
> ##=C2=A0 =C2=A0 Set to "off" to disable uart0
> ##
> ##=C2=A0 =C2=A0 Default on.
> ##
> #dtparam=3Duart0=3Don
>
> ## watchdog
> ##=C2=A0 =C2=A0 Set to "on" to enable the hardware watchdog
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Dwatchdog=3Doff
>
> ## act_led_trigger
> ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> ##
> ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> ##
> ##=C2=A0 =C2=A0 Default mmc.
> ##
> #dtparam=3Dact_led_trigger=3Dmmc
>
> ## act_led_activelow
> ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Dact_led_activelow=3Doff
>
> ## act_led_gpio
> ##=C2=A0 =C2=A0 Set which GPIO to use for the activity LED
> ##
> ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> ##
> ##=C2=A0 =C2=A0 Default 16 on a non-Plus board, 47 on a Plus or Pi 2.
> ##
> #dtparam=3Dact_led_gpio=3D47
>
> ## pwr_led_trigger
> ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> ##
> ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> ##
> ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> ##
> ##=C2=A0 =C2=A0 Default mmc.
> ##
> #dtparam=3Dpwr_led_trigger=3Dmmc
>
> ## pwr_led_activelow
> ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> ##
> ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> ##
> ##=C2=A0 =C2=A0 Default off.
> ##
> #dtparam=3Dpwr_led_activelow=3Doff
>
> ## pwr_led_gpio
> ##=C2=A0 =C2=A0 Set which GPIO to use for the PWR LED
> ##
> ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> ##
> ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> ##
> ##=C2=A0 =C2=A0 Default 35.
> ##
> #dtparam=3Dpwr_led_gpio=3D35
> # Enable SPI bus
> dtparam=3Dspi=3Don
> # Enable UART
> enable_uart=3D1
> # Enable VC4 Graphics
> dtoverlay=3Dvc4-kms-v3d
> # Enable Sony RaspberryPi Camera(imx219)
> dtoverlay=3Dimx219
> # Enable USB host mode
> dtoverlay=3Ddwc2,dr_mode=3Dhost
> # Enable CAN
> dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
>
> # Enable WM8960
> dtoverlay=3Dwm8960-soundcard
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Any help will be appreciated!
>=20
>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#60530): https://lists.yoctoproject.org/g/yocto/message/=
60530
Mute This Topic: https://lists.yoctoproject.org/mt/99985319/7732448
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [oosman3@yahoo.co=
m]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_421970_39911054.1688655972999
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp7b270254yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><div>root@raspberrypi4-64:~#=
 ifconfig -a<br>eth0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nb=
sp; mtu 1500<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 192.168.7.8=
&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.7.255<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether dc:a6:32:e3:eb:fe&nbsp; txqueuelen 1000=
&nbsp; (Ethernet)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX packets =
962&nbsp; bytes 117191 (114.4 KiB)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; RX errors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets 1766&nbsp; bytes 299578 (292=
.5 KiB)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX errors 0&nbsp; dro=
pped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br><br>lo: flags=3D73&=
lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; inet 127.0.0.1&nbsp; netmask 255.0.0.0<br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; inet6 ::1&nbsp; prefixlen 128&nbsp; scopeid 0x10&lt=
;host&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; loop&nbsp; txqueuel=
en 1000&nbsp; (Local Loopback)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX packets 12567&nbsp; bytes 780277 (761.9 KiB)<br>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; RX errors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; fra=
me 0<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets 12567&nbsp; b=
ytes 780277 (761.9 KiB)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX er=
rors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br><br=
></div><div><br></div></div><div><br></div>
       =20
        </div><div id=3D"ydpa67421ffyahoo_quoted_8955328170" class=3D"ydpa6=
7421ffyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj =
&lt;raj.khem@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">what does ifconfig -a say<br></div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr">On Thu, Jul 6, 2023 at 6:25=E2=80=
=AFAM oosman3 via lists.yoctoproject.org<br></div><div dir=3D"ltr">&lt;oosm=
an3=3Dyahoo.com@lists.yoctoproject.org&gt; wrote:<br></div><div dir=3D"ltr"=
>&gt;<br></div><div dir=3D"ltr">&gt; I am building my raspberrypi wic image=
 using the layer meta-raspberrypi.<br></div><div dir=3D"ltr">&gt;<br></div>=
<div dir=3D"ltr">&gt; I am using a raspiberrypi compute module 4 with wifi =
chip.<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; I just =
can't seem to get the wlan0 device to appear when I type ifconfig.<br></div=
><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br></div><div dir=3D"ltr">&gt; root@raspberrypi4-64:~# ifconfig<br></div><=
div dir=3D"ltr">&gt; eth0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&g=
t;&nbsp; mtu 1500<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;=
  inet 192.168.7.8&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.7.25=
5<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  ether dc:a6:32=
:e3:eb:fe&nbsp; txqueuelen 1000&nbsp; (Ethernet)<br></div><div dir=3D"ltr">=
&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX packets 407&nbsp; bytes 62442 (60.9 KiB=
)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX errors 0&nb=
sp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt;=
&nbsp; &nbsp; &nbsp; &nbsp;  TX packets 567&nbsp; bytes 94749 (92.5 KiB)<br=
></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX errors 0&nbsp; =
dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; lo: flags=3D73&lt;UP,LOOPBACK,=
RUNNING&gt;&nbsp; mtu 65536<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nb=
sp; &nbsp;  inet 127.0.0.1&nbsp; netmask 255.0.0.0<br></div><div dir=3D"ltr=
">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  inet6 ::1&nbsp; prefixlen 128&nbsp; scop=
eid 0x10&lt;host&gt;<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nb=
sp;  loop&nbsp; txqueuelen 1000&nbsp; (Local Loopback)<br></div><div dir=3D=
"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX packets 4047&nbsp; bytes 252037 (=
246.1 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX er=
rors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"=
ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX packets 4047&nbsp; bytes 252037 (2=
46.1 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX err=
ors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></di=
v><div dir=3D"ltr">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt;<br></div><div=
 dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">=
&gt; Here is a filtered output of my lsmod command<br></div><div dir=3D"ltr=
">&gt;<br></div><div dir=3D"ltr">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt=
; root@raspberrypi4-64:~# lsmod<br></div><div dir=3D"ltr">&gt; Module&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Size&nbsp; Used by=
<br></div><div dir=3D"ltr">&gt; 88XXau&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;  2265088&nbsp; 0<br></div><div dir=3D"ltr">&gt; cmac&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  16384&nbsp; 3<br></div=
><div dir=3D"ltr">&gt; algif_hash&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
 16384&nbsp; 1<br></div><div dir=3D"ltr">&gt; aes_arm64&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt; a=
es_generic&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36864&nbsp; 1 aes_arm64=
<br></div><div dir=3D"ltr">&gt; algif_skcipher&nbsp; &nbsp; &nbsp; &nbsp;  =
16384&nbsp; 1<br></div><div dir=3D"ltr">&gt; af_alg&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;  28672&nbsp; 6 algif_hash,algif_skcipher<br=
></div><div dir=3D"ltr">&gt; bnep&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;  24576&nbsp; 2<br></div><div dir=3D"ltr">&gt; 8021q&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; garp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;  16384&nbsp; 1 8021q<br></div><div dir=3D"ltr">&gt; s=
tp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 163=
84&nbsp; 1 garp<br></div><div dir=3D"ltr">&gt; llc&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 2 stp,garp<br></di=
v><div dir=3D"ltr">&gt; imx219&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;  24576&nbsp; 0<br></div><div dir=3D"ltr">&gt; mcp251x&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div><div di=
r=3D"ltr">&gt; spidev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;  20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; can_dev&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 mcp251x<br></div><div dir=
=3D"ltr">&gt; hci_uart&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  450=
56&nbsp; 0<br></div><div dir=3D"ltr">&gt; btbcm&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 1 hci_uart<br></div><div dir=
=3D"ltr">&gt; v3d&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; 90112&nbsp; 1<br></div><div dir=3D"ltr">&gt; bluetooth&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;  585728&nbsp; 26 hci_uart,btbcm,bnep<br></=
div><div dir=3D"ltr">&gt; i2c_mux_pinctrl&nbsp; &nbsp; &nbsp; &nbsp; 16384&=
nbsp; 0<br></div><div dir=3D"ltr">&gt; gpu_sched&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 49152&nbsp; 1 v3d<br></div><div dir=3D"ltr">&gt; snd_=
soc_simple_card&nbsp; &nbsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; s=
nd_soc_simple_card_utils&nbsp; &nbsp; 28672&nbsp; 1 snd_soc_simple_card<br>=
</div><div dir=3D"ltr">&gt; drm_shmem_helper&nbsp; &nbsp; &nbsp;  24576&nbs=
p; 1 v3d<br></div><div dir=3D"ltr">&gt; raspberrypi_hwmon&nbsp; &nbsp; &nbs=
p; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; i2c_mux&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1 i2c_mux_pinctrl<br></div>=
<div dir=3D"ltr">&gt; i2c_brcmstb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; bcm2835_unicam&nbsp; &nbsp; &n=
bsp; &nbsp;  53248&nbsp; 0<br></div><div dir=3D"ltr">&gt; dwc2&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 192512&nbsp; 0<br></div><=
div dir=3D"ltr">&gt; roles&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 20480&nbsp; 1 dwc2<br></div><div dir=3D"ltr">&gt; v4l2_dv_tim=
ings&nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 bcm2835_unicam<br></div><div =
dir=3D"ltr">&gt; v4l2_fwnode&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576=
&nbsp; 2 imx219,bcm2835_unicam<br></div><div dir=3D"ltr">&gt; ecdh_generic&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  16384&nbsp; 2 bluetooth<br></div><div di=
r=3D"ltr">&gt; v4l2_async&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  24576&n=
bsp; 3 v4l2_fwnode,imx219,bcm2835_unicam<br></div><div dir=3D"ltr">&gt; ecc=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36864=
&nbsp; 1 ecdh_generic<br></div><div dir=3D"ltr">&gt; libaes&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  16384&nbsp; 3 aes_arm64,bluetooth,=
aes_generic<br></div><div dir=3D"ltr">&gt; spi_bcm2835&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; snd_soc_b=
cm2835_i2s&nbsp; &nbsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; bcm283=
5_codec&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 0<br></div><div dir=
=3D"ltr">&gt; rpivid_hevc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nb=
sp; 0<br></div><div dir=3D"ltr">&gt; bcm2835_v4l2&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;  45056&nbsp; 0<br></div><div dir=3D"ltr">&gt; bcm2835_isp&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<br></div><div dir=3D"ltr">&g=
t; bcm2835_mmal_vchiq&nbsp; &nbsp;  36864&nbsp; 3 bcm2835_codec,bcm2835_v4l=
2,bcm2835_isp<br></div><div dir=3D"ltr">&gt; v4l2_mem2mem&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;  40960&nbsp; 2 bcm2835_codec,rpivid_hevc<br></div><div dir=
=3D"ltr">&gt; videobuf2_vmalloc&nbsp; &nbsp; &nbsp; 16384&nbsp; 1 bcm2835_v=
4l2<br></div><div dir=3D"ltr">&gt; videobuf2_dma_contig&nbsp; &nbsp; 20480&=
nbsp; 4 bcm2835_codec,bcm2835_unicam,rpivid_hevc,bcm2835_isp<br></div><div =
dir=3D"ltr">&gt; videobuf2_memops&nbsp; &nbsp; &nbsp;  16384&nbsp; 2 videob=
uf2_vmalloc,videobuf2_dma_contig<br></div><div dir=3D"ltr">&gt; videobuf2_v=
4l2&nbsp; &nbsp; &nbsp; &nbsp;  32768&nbsp; 6 bcm2835_codec,bcm2835_unicam,=
bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><div dir=3D"ltr"=
>&gt; videobuf2_common&nbsp; &nbsp; &nbsp;  69632&nbsp; 10 bcm2835_codec,vi=
deobuf2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_=
v4l2,rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp<br></div><div di=
r=3D"ltr">&gt; videodev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 274=
432&nbsp; 10 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,=
bcm2835_v4l2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div=
><div dir=3D"ltr">&gt; vc_sm_cma&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; 32768&nbsp; 2 bcm2835_mmal_vchiq,bcm2835_isp<br></div><div dir=3D"ltr=
">&gt; snd_bcm2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; mc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;  61440&nbsp; 10 v4l2_async,videodev,bcm2835_code=
c,imx219,videobuf2_v4l2,bcm2835_unicam,videobuf2_common,rpivid_hevc,v4l2_me=
m2mem,bcm2835_isp<br></div><div dir=3D"ltr">&gt; uio_pdrv_genirq&nbsp; &nbs=
p; &nbsp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; nvmem_rmem&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  16384&nbsp; 0<br></div><div dir=3D"=
ltr">&gt; uio&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 24576&nbsp; 1 uio_pdrv_genirq<br></div><div dir=3D"ltr">&gt; sch_fq=
_codel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  20480&nbsp; 6<br></div><div dir=
=3D"ltr">&gt; brcmutil&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  245=
76&nbsp; 0<br></div><div dir=3D"ltr">&gt; cfg80211&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 929792&nbsp; 1 88XXau<br></div><div dir=3D"ltr">&gt=
; rfkill&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  32768&nbsp=
; 4 bluetooth,cfg80211<br></div><div dir=3D"ltr">&gt; fuse&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 139264&nbsp; 1<br></div><div =
dir=3D"ltr">&gt; ipv6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; 552960&nbsp; 28<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; And=
 here is my /boot/config.txt<br></div><div dir=3D"ltr">&gt;<br></div><div d=
ir=3D"ltr">&gt; root@raspberrypi4-64:~# cat /boot/config.txt<br></div><div =
dir=3D"ltr">&gt; ##########################################################=
######################<br></div><div dir=3D"ltr">&gt; ##&nbsp; Raspberry Pi=
 Configuration Settings<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; Revision 16, 2013/06/22<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; Details taken from the eLinux=
 wiki<br></div><div dir=3D"ltr">&gt; ##&nbsp; For up-to-date information pl=
ease refer to wiki page.<br></div><div dir=3D"ltr">&gt; ##<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; Wiki Location : <a href=3D"http://elinux.org/RPicon=
fig" rel=3D"nofollow" target=3D"_blank">http://elinux.org/RPiconfig</a><br>=
</div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; Description:<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp; Details of each setting are described with each section that=
 begins with<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; a double hashed=
 comment ('##')<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; It is up to =
the user to remove the single hashed comment ('#') from each<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp; option they want to enable, and to set the=
 specific value of that option.<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; Overclock settings will be disabled at runti=
me if the SoC reaches temp_limit<br></div><div dir=3D"ltr">&gt; ##<br></div=
><div dir=3D"ltr">&gt; ####################################################=
############################<br></div><div dir=3D"ltr">&gt;<br></div><div d=
ir=3D"ltr">&gt; ###########################################################=
#####################<br></div><div dir=3D"ltr">&gt; ##&nbsp; Standard Defi=
nition Video Settings<br></div><div dir=3D"ltr">&gt; ######################=
##########################################################<br></div><div di=
r=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## sdtv_mode<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  defines the TV standard for composite outpu=
t<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  --------------------------------------------------------------=
-----------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; =
&nbsp; &nbsp; Normal NTSC (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Japanese version of NTSC - no pedesta=
l<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nb=
sp; Normal PAL<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbs=
p; &nbsp; &nbsp; Brazilian version of PAL - 525/60 rather than 625/50, diff=
erent<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; subcarrier<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; #sdtv_mode=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div d=
ir=3D"ltr">&gt; ## sdtv_aspect<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  defines the aspect ratio for composite output<br></div><div dir=3D"ltr"=
>&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp;=
 Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  --------------=
-----------------------------------------------------------<br></div><div d=
ir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; 4:3 (Default)=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbs=
p; 14:9<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbs=
p; &nbsp; 16:9<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">=
&gt; #sdtv_aspect=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"l=
tr">&gt; ## sdtv_disable_colourburst<br></div><div dir=3D"ltr">&gt; ##&nbsp=
; &nbsp;  Disables colour burst on composite output. The picture will be<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  monochrome, but possibly shar=
per<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; &nbsp;  ------------------------------------------------------------=
-------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp=
; &nbsp; &nbsp; Colour burst is enabled (Default)<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Colour burst is disable=
d<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #sdtv_di=
sable_colourburst=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"l=
tr">&gt; ##################################################################=
##############<br></div><div dir=3D"ltr">&gt; ##&nbsp; High Definition Vide=
o Settings<br></div><div dir=3D"ltr">&gt; #################################=
###############################################<br></div><div dir=3D"ltr">&=
gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_safe<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  Use "safe mode" settings to try to boot with maximum h=
dmi compatibility.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  --------------------------------------------=
-----------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Enabled (this does: hd=
mi_force_hotplug=3D1,<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; hdmi_ignore_edid=3D0xa5000080,<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; config_hdmi_boost=
=3D4, hdmi_group=3D2,<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; hdmi_mode=3D4, disable_overscan=3D0,<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; overscan_lef=
t=3D24, overscan_right=3D24,<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; overscan_top=3D24, overscan_bottom=3D24)<br>=
</div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_safe=3D=
1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_for=
ce_hotplug<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Pretends HDMI ho=
tplug signal is asserted so it appears a HDMI display<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  is attached<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Descriptio=
n<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------------=
------------------------------------------------<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Use=
 HDMI mode even if no HDMI monitor is detected<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; #hdmi_force_hotplug=3D1<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_ignore_hotplug<br><=
/div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Pretends HDMI hotplug signal is=
 not asserted so it appears a HDMI<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  display is not attached<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  --------------------------------=
-----------------------------------------<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Use compos=
ite mode even if HDMI monitor is detected<br></div><div dir=3D"ltr">&gt; ##=
<br></div><div dir=3D"ltr">&gt; #hdmi_ignore_hotplug=3D1<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_drive<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  chooses between HDMI and DVI modes<br></div=
><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  V=
alue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  ------------------------------------------------------------------------=
-<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nb=
sp; Normal DVI mode (No sound)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  2&nbsp; &nbsp; &nbsp; &nbsp; Normal HDMI mode (Sound will be sent if su=
pported and enabled)<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D=
"ltr">&gt; #hdmi_drive=3D2<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; ## hdmi_ignore_edid<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  Enables the ignoring of EDID/display data<br></div><div dir=3D"ltr">=
&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_ignore_edid=3D0xa5000080<br></=
div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_edid_file<=
br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Read the EDID data from the=
 edid.dat file instead of from the attached<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  device<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ----------------------------------------=
---------------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Read EDID data from attached device (De=
fault)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp=
; &nbsp; Read EDID data from edid.txt file<br></div><div dir=3D"ltr">&gt; #=
#<br></div><div dir=3D"ltr">&gt; #hdmi_edid_file=3D1<br></div><div dir=3D"l=
tr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_ignore_edid_audio<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Pretends all audio formats are unsup=
ported by display. This means ALSA<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  will default to analogue.<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------------------------------=
-------------------------------------------<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID provided values (Def=
ault)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp;=
 &nbsp; Pretend all audio formats are unsupported<br></div><div dir=3D"ltr"=
>&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_ignore_edid_audio=3D1<br></di=
v><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_force_edid_a=
udio<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Pretends all audio for=
mats are supported by display, allowing<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  passthrough of DTS/AC3 even when not reported as supported.<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nb=
sp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  ------------------------------------------------------------------=
-------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbs=
p; &nbsp; Use EDID provided values (Default)<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Pretend all audio formats ar=
e supported<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt=
; #hdmi_force_edid_audio=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div d=
ir=3D"ltr">&gt; ## hdmi_force_edid_3d<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  Pretends all CEA modes support 3D even when edid doesn't indicat=
e<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  support for them.<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  -----------------------------------------------------------------------=
--<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &n=
bsp; Use EDID provided values (Default)<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Pretend 3D mode is supported<br><=
/div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_force_ed=
id_3d=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## =
avoid_edid_fuzzy_match<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Avoi=
d fuzzy matching of modes described in edid.<br></div><div dir=3D"ltr">&gt;=
 ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Desc=
ription<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------=
------------------------------------------------------<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Use fuzzy matching=
 (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &=
nbsp; &nbsp; Avoid fuzzy matching<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; #avoid_edid_fuzzy_match=3D1<br></div><div dir=3D"lt=
r">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_pixel_encoding<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Force the pixel encoding mode.<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  By default it will use the mode requ=
ested from edid so shouldn't<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  need changing.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  -----------------------------------------------=
--------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID provided values (Default)<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; RGB limit=
ed&nbsp;  (16-235)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; =
&nbsp; &nbsp; &nbsp; RGB full&nbsp; &nbsp; &nbsp; ( 0-255)<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; YCbCr limited =
(16-235)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nb=
sp; &nbsp; YCbCr limited ( 0-255)<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; #hdmi_pixel_encoding=3D1<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_group<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  Defines the HDMI type<br></div><div dir=3D"ltr">&gt;=
 ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Desc=
ription<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------=
------------------------------------------------------<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Use the preferred =
group reported by the edid (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp=
; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; CEA<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp; DMT<br></div><div dir=3D"ltr">=
&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_group=3D1<br></div><div dir=3D=
"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_mode<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  defines screen resolution in CEA or DMT format<=
br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  H means 16:9 variant (of a normally 4:3 mode).<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  2x means pixel doubled (i.e. higher clock rate, =
with each pixel repeated<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; twice)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  4x means pixel quadrupled (i.e. higher clock rate, with each pixel<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;  repeated four times)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  reduced blanking means fewer bytes are used for blanking within the data=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; stream (i.e. lower clock rate, with few=
er wasted bytes)<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; hdmi_group=3DCEA&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hdmi_group=3DDMT<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  --------------------------------------=
-----------------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; VGA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  640x350&nb=
sp;  85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &n=
bsp; &nbsp; 480p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 640x400&nbsp;  85Hz<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; H&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  720x400&nbsp=
;  85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nbs=
p; &nbsp; 720p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp;  60Hz<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  5&nbsp; &nbsp; &nbsp; &nbsp; 1080i 60Hz&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; =
 72Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  6&nbsp; &nbsp; &nbsp;=
 &nbsp; 480i&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 640x480&nbsp;  75Hz<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; H&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  640x480&nbsp;  8=
5Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &=
nbsp; 240p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 800x600&nbsp;  56Hz<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  9&nbsp; &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; H&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  800x600&nbsp;  60H=
z<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  10&nbsp; &nbsp; &nbsp;  4=
80i&nbsp; 60Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 800x600&nbsp;  72Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  11&nbsp; &nbsp; &nbsp;  480i&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp;  75Hz<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  12&nbsp; &nbsp; &nbsp;  240p&nbsp; 60Hz&nbsp; 4=
x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbs=
p;  85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  13&nbsp; &nbsp; &n=
bsp;  240p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 800x600&nbsp;  120Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  14&nbsp; &nbsp; &nbsp;  480p&nbsp; 60Hz&nbsp; 2x&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 848x480&nbsp;  60Hz<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  15&nbsp; &nbsp; &nbsp;  480p&nbsp; 60Hz=
&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768=
&nbsp; 43Hz&nbsp; DO NOT USE<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  16&nbsp; &nbsp; &nbsp;  1080p 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 60Hz<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  17&nbsp; &nbsp; &nbsp;  576p&nbsp; 50Hz&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 102=
4x768&nbsp; 70Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  18&nbsp; &=
nbsp; &nbsp;  576p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;  1024x768&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  19&nbsp; &nbsp; &nbsp;  720p&nbsp; 50Hz&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; =
85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  20&nbsp; &nbsp; &nbsp;=
  1080i 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 1024x768&nbsp; 120Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  21&nbsp; &nbsp; &nbsp;  576i&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1152x864&nbsp; 75Hz<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  22&nbsp; &nbsp; &nbsp;  576i&nbsp=
; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;  1280x768&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  23&nbsp; &nbsp; &nbsp;  288p&nbsp; 50Hz&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128=
0x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  24&nbsp; &=
nbsp; &nbsp;  288p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;  1280x768&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  25&nbsp; &nbsp; &nbsp;  576i&nbsp; 50Hz&nbsp; 4x&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 85Hz<=
br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  26&nbsp; &nbsp; &nbsp;  576=
i&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; 1280x768&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; &nbsp;  27&nbsp; &nbsp; &nbsp;  288p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; &nbsp; &n=
bsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  28&nbsp; &nbsp; &nbsp;  288p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 60Hz<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  29&nbsp; &nbsp; &nbsp;  576p&nbsp; 50Hz&nbsp; 2x&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp=
; 75Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  30&nbsp; &nbsp; &nbs=
p;  576p&nbsp; 50Hz&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 1280x800&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  31&nbsp; &nbsp; &nbsp;  1080p 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 120Hz reduced blanki=
ng<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  32&nbsp; &nbsp; &nbsp;  =
1080p 24Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; 1280x960&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nb=
sp;  33&nbsp; &nbsp; &nbsp;  1080p 25Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbsp; 85Hz<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp;  34&nbsp; &nbsp; &nbsp;  1080p 30Hz&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x=
960&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  35&nbsp; &nbsp; &nbsp;  480p&nbsp; 60Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 60Hz<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  36&nbsp; &nbsp; &nbsp;  480p&nbsp; 60Hz&nbsp=
; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 75H=
z<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  37&nbsp; &nbsp; &nbsp;  5=
76p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 1280x1024 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3=
8&nbsp; &nbsp; &nbsp;  576p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 120Hz reduced blanking<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  39&nbsp; &nbsp; &nbsp;  1080i 50Hz&nbsp=
; reduced blanking&nbsp; &nbsp; 1360x768&nbsp; 60Hz<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  40&nbsp; &nbsp; &nbsp;  1080i 100Hz&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1360x768&nbsp; 120H=
z reduced blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  41&nbsp;=
 &nbsp; &nbsp;  720p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;  1400x1050&nbsp; &nbsp; &nbsp;  reduced blanking=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  42&nbsp; &nbsp; &nbsp;  57=
6p&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;  1400x1050 60Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  43=
&nbsp; &nbsp; &nbsp;  576p&nbsp; 100Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;  1400x1050 75Hz<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  44&nbsp; &nbsp; &nbsp;  576i&nbsp; 100Hz&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1400x1050 85Hz<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  45&nbsp; &nbsp; &nbsp;  576i&nbsp;=
 100Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  140=
0x1050 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  46&nbsp; &nbsp; &nbsp;  1080i 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;  1440x900&nbsp; &nbsp; &nbsp; &nbsp; reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  47&nbsp; &nbsp;=
 &nbsp;  720p&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;  1440x900&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  48&nbsp; &nbsp; &nbsp;  480p&nbsp; 120Hz&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1440x900&nbsp; 75Hz<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  49&nbsp; &nbsp; &nbsp;  480p&nbs=
p; 120Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1=
440x900&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  50&nbsp;=
 &nbsp; &nbsp;  480i&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;  1440x900&nbsp; 120Hz reduced blanking<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  51&nbsp; &nbsp; &nbsp;  480i&nbsp; 1=
20Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1600x=
1200 60Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  52&nbsp; &nbsp; &=
nbsp;  576p&nbsp; 200Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;  1600x1200 65Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  53&nbsp; &nbsp; &nbsp;  576p&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1600x1200 70Hz<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  54&nbsp; &nbsp; &nbsp;  576i&nbsp; 200Hz&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1600x1200 75H=
z<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  55&nbsp; &nbsp; &nbsp;  5=
76i&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;  1600x1200 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  56&nbs=
p; &nbsp; &nbsp;  480p&nbsp; 240Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;  1600x1200 120Hz reduced blanking<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  57&nbsp; &nbsp; &nbsp;  480p&nbsp; 240H=
z H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1680x105=
0&nbsp; &nbsp; &nbsp;  reduced blanking<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  58&nbsp; &nbsp; &nbsp;  480i&nbsp; 240Hz&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1680x1050 60Hz<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  59&nbsp; &nbsp; &nbsp;  480i&nbsp; 240=
Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1680x10=
50 75Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  60&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1680x1050 85Hz<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  61&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;  1680x1050 120Hz reduced blanking<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  62&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;  1792x1344 60Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  63&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1792x1344 75Hz<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  64&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;  1792x1344 120Hz reduced blanking<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  65&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;  1856x1392 60Hz<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; &nbsp;  66&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  18=
56x1392 75Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  67&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1856x1392 120Hz reduced blan=
king<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  68&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1200&nbsp; &nbsp; &nbsp;  reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  69&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1200 60Hz<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp;  70&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;  1920x1200 75Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  71&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1=
200 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  72&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1200 120Hz reduced blanking=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  73&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1440 60Hz<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  74&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;  1920x1440 75Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  75&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1920x1440 120Hz r=
educed blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  76&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  2560x1600&nbsp; &nbsp; &n=
bsp;  reduced blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  77&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  2560x1600 60Hz<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  78&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;  2560x1600 75Hz<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  79&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;  2560x1600 85Hz<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  80&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  2560x1600 120Hz reduc=
ed blanking<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  81&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  1366x768&nbsp; 60Hz<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  82&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;  1080p&nbsp; &nbsp;  60Hz<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  83&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;  1600x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; &nbsp;  84&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;  2048x1152&nbsp; &nbsp; &nbsp;  reduced blanking<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  85&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;  720p&nbsp; &nbsp; &nbsp; 60Hz<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  86&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;  1366x768&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></=
div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #hdmi_mode=3D1<=
br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## config_hdm=
i_boost<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  configure the signa=
l strength of the HDMI interface.<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------------------------------=
-------------------------------------------<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; (Default)<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  1<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  2<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nbsp; &nbsp; Try if you have=
 interference issues with HDMI<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  5<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  6<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &nbsp; Maximum<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #config_hdmi_boos=
t=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi=
_ignore_cec_init<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Doesn't se=
nt initial active source message.&nbsp; Avoids bringing<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  (CEC enabled) TV out of standby and channel =
switch when rebooting.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ----------------------------------------=
---------------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Normal behaviour (Default)<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Doesn't se=
nt initial active source message<br></div><div dir=3D"ltr">&gt; ##<br></div=
><div dir=3D"ltr">&gt; #hdmi_ignore_cec_init=3D1<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; ## hdmi_ignore_cec<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  Pretends CEC is not supported at all by TV.<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  No CEC functions will be suppo=
rted.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nb=
sp; &nbsp; &nbsp; Normal behaviour (Default)<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Pretend CEC is not supported=
 by TV<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #hd=
mi_ignore_cec=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">=
&gt; ######################################################################=
##########<br></div><div dir=3D"ltr">&gt; ##&nbsp; Overscan Video Settings<=
br></div><div dir=3D"ltr">&gt; ############################################=
####################################<br></div><div dir=3D"ltr">&gt;<br></di=
v><div dir=3D"ltr">&gt; ## overscan_left<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  Number of pixels to skip on left<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; #overscan_left=3D0<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## overscan_right<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Number of pixels to skip on right<br></=
div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #overscan_right=
=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## overs=
can_top<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Number of pixels to=
 skip on top<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&g=
t; #overscan_top=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"lt=
r">&gt; ## overscan_bottom<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
Number of pixels to skip on bottom<br></div><div dir=3D"ltr">&gt; ##<br></d=
iv><div dir=3D"ltr">&gt; #overscan_bottom=3D0<br></div><div dir=3D"ltr">&gt=
;<br></div><div dir=3D"ltr">&gt; ## disable_overscan<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  Set to 1 to disable overscan<br></div><div dir=3D=
"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &=
nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ---------=
----------------------------------------------------------------<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Overscan=
 Enabled (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; =
&nbsp; &nbsp; &nbsp; Overscan Disabled<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; #disable_overscan=3D1<br></div><div dir=3D"ltr=
">&gt;<br></div><div dir=3D"ltr">&gt; #####################################=
###########################################<br></div><div dir=3D"ltr">&gt; =
##&nbsp; Framebuffer Video Settings<br></div><div dir=3D"ltr">&gt; ########=
########################################################################<br=
></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## framebuffer_=
width<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Console framebuffer w=
idth in pixels. Default is display width minus<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  overscan.<br></div><div dir=3D"ltr">&gt; ##<br></div><d=
iv dir=3D"ltr">&gt; #framebuffer_width=3D0<br></div><div dir=3D"ltr">&gt;<b=
r></div><div dir=3D"ltr">&gt; ## framebuffer_height<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  Console framebuffer height in pixels. Default is d=
isplay height minus<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  oversca=
n.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #frameb=
uffer_height=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&=
gt; ## framebuffer_depth<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Co=
nsole framebuffer depth in bits per pixel.<br></div><div dir=3D"ltr">&gt; #=
#<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Descri=
ption<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ---------------------=
----------------------------------------------------<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp; Valid, but default R=
GB palette makes an unreadable screen<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  16&nbsp; &nbsp; &nbsp;  (Default)<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  24&nbsp; &nbsp; &nbsp;  Looks better but has corruption i=
ssues as of 2012/06/15<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  32&n=
bsp; &nbsp; &nbsp;  Has no corruption issues but needs framebuffer_ignore_a=
lpha=3D1<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; and shows the wrong colors as of 2012/06/15<br></div><div d=
ir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #framebuffer_depth=3D16<b=
r></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## framebuffer=
_ignore_alpha<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to 1 to d=
isable alpha channel. Helps with 32bit.<br></div><div dir=3D"ltr">&gt; ##<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Descripti=
on<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------------------------=
-------------------------------------------------<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Enable Alpha Channel (D=
efault)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbs=
p; &nbsp; Disable Alpha Channel<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; #framebuffer_ignore_alpha=3D0<br></div><div dir=3D"lt=
r">&gt;<br></div><div dir=3D"ltr">&gt; ####################################=
############################################<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; General Video Settings<br></div><div dir=3D"ltr">&gt; ###########=
#####################################################################<br></=
div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## display_rotate<=
br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Rotate the display clockwis=
e or flip the display.<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  The =
90 and 270 degrees rotation options require additional memory on GPU,<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  so won't work with the 16M GPU s=
plit.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nb=
sp; &nbsp; &nbsp; 0 degrees (Default)<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; 90 degrees<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp; 180 degrees<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; 270 degr=
ees<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0x10000&nbsp; Horizonta=
l flip<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0x20000&nbsp; Vertic=
al flip<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #d=
isplay_rotate=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">=
&gt; ## dispmanx_offline<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Se=
t to "1" to enable offline compositing<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 0<br></div><div dir=
=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dispmanx_offline=3D0<br></=
div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ##################=
##############################################################<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; Licensed Codecs<br></div><div dir=3D"ltr">&gt; =
##<br></div><div dir=3D"ltr">&gt; ##&nbsp; Hardware decoding of additional =
codecs can be enabled by purchasing a<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; license that is locked to the CPU serial number of your Raspberry Pi.<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; Up =
to 8 licenses per CODEC can be specified as a comma seperated list.<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #################=
###############################################################<br></div><d=
iv dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## decode_MPG2<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  License key to allow hardware MPEG-2=
 decoding.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt;=
 #decode_MPG2=3D0x12345678<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; ## decode_WVC1<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  License key to allow hardware VC-1 decoding.<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; #decode_WVC1=3D0x12345678<br></div><di=
v dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; #########################=
#######################################################<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; Camera Settings<br></div><div dir=3D"ltr">&gt; #####=
###########################################################################=
<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## start_x<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to "1" to enable the cam=
era module.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  Enabling the camera requires gpu_mem option to be specif=
ied with a value<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  of at leas=
t 128.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  Default 0<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; start_x=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; ## disable_camera_led<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  Turn off the red camera led when recording video or taking a still=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  picture.<br></div><div dir=
=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp=
; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------=
-------------------------------------------------------------------<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; LED e=
nabled (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &n=
bsp; &nbsp; &nbsp; LED disabled<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; #disable_camera_led=3D1<br></div><div dir=3D"ltr">&gt=
;<br></div><div dir=3D"ltr">&gt; ##########################################=
######################################<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; Test Settings<br></div><div dir=3D"ltr">&gt; ##########################=
######################################################<br></div><div dir=3D=
"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## test_mode<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  Enable test sound/image during boot for manufac=
turing test.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  ---------------------------------------------------=
----------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nb=
sp; &nbsp; &nbsp; &nbsp; Disable Test Mod (Default)<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Enable Test Mode<br><=
/div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #test_mode=3D0=
<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ############=
####################################################################<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; Memory Settings<br></div><div dir=3D"ltr"=
>&gt; #####################################################################=
###########<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; #=
# disable_l2cache<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Disable a=
rm access to GPU's L2 cache. Needs corresponding L2 disabled<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp;  kernel.<br></div><div dir=3D"ltr">&gt; ##=
<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Descrip=
tion<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ----------------------=
---------------------------------------------------<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Enable L2 Cache (Defa=
ult)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; =
&nbsp; Disable L2 cache<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; #disable_l2cache=3D0<br></div><div dir=3D"ltr">&gt;<br></div>=
<div dir=3D"ltr">&gt; ## gpu_mem<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  GPU memory allocation in MB for all board revisions.<br></div><div di=
r=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 6=
4<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #gpu_mem=
=3D128<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## gpu=
_mem_256<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  GPU memory allocat=
ion in MB for 256MB board revision.<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  This option overrides gpu_mem.<br></div><div dir=3D"ltr">&gt; ##<b=
r></div><div dir=3D"ltr">&gt; #gpu_mem_256=3D192<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; ## gpu_mem_512<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  GPU memory allocation in MB for 512MB board revisio=
n.<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  This option overrides gp=
u_mem.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #gp=
u_mem_512=3D448<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&g=
t; ## gpu_mem_1024<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  GPU memo=
ry allocation in MB for 1024MB board revision.<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  This option overrides gpu_mem.<br></div><div dir=3D"ltr=
">&gt; ##<br></div><div dir=3D"ltr">&gt; #gpu_mem_1024=3D944<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## disable_pvt<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Disable adjusting the refresh rate of R=
AM every 500ms<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  (measuring R=
AM temparature).<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; #disable_pvt=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D=
"ltr">&gt; ################################################################=
################<br></div><div dir=3D"ltr">&gt; ##&nbsp; CMA - Dynamic Memo=
ry Split<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; CMA enables dynamic management of the ARM and GPU memory split at r=
untime.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; The following options need to be in cmdline.txt for CMA to work:<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; coherent_pool=3D6M smsc95xx.tur=
bo_mode=3DN<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt=
; #########################################################################=
#######<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## cm=
a_lwm<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  When GPU has less tha=
n cma_lwm (low water mark) memory available it<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  will request some from ARM.<br></div><div dir=3D"ltr">&=
gt; ##<br></div><div dir=3D"ltr">&gt; #cma_lwm=3D16<br></div><div dir=3D"lt=
r">&gt;<br></div><div dir=3D"ltr">&gt; ## cma_hwm<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  When GPU has more than cma_hwm (high water mark) mem=
ory available it<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  will relea=
se some to ARM.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr"=
>&gt; #cma_hwm=3D32<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr=
">&gt; ####################################################################=
############<br></div><div dir=3D"ltr">&gt; ##&nbsp; Boot Option Settings<b=
r></div><div dir=3D"ltr">&gt; #############################################=
###################################<br></div><div dir=3D"ltr">&gt;<br></div=
><div dir=3D"ltr">&gt; ## disable_commandline_tags<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  Stop start.elf from filling in ATAGS (memory from 0=
x100) before<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  launching kern=
el<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #disabl=
e_commandline_tags=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"=
ltr">&gt; ## cmdline (string)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  Command line parameters. Can be used instead of cmdline.txt file<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #cmdline=3D""<br>=
</div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## kernel (strin=
g)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Alternative name to use =
when loading kernel.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D=
"ltr">&gt; #kernel=3D""<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D=
"ltr">&gt; ## kernel_address<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  Address to load kernel.img file at<br></div><div dir=3D"ltr">&gt; ##<br><=
/div><div dir=3D"ltr">&gt; #kernel_address=3D0x00000000<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## kernel_old<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  Support loading old kernels<br></div><div d=
ir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nb=
sp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ----=
---------------------------------------------------------------------<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Dis=
abled (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nb=
sp; &nbsp; &nbsp; Load kernel at address 0x00000000<br></div><div dir=3D"lt=
r">&gt; ##<br></div><div dir=3D"ltr">&gt; #kernel_old=3D1<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## ramfsfile (string)<br></div=
><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ramfs file to load<br></div><div di=
r=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #ramfsfile=3D""<br></div><=
div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## ramfsaddr<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Address to load ramfs file at<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #ramfsaddr=3D0x00=
000000<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## ini=
tramfs (string address)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ram=
fs file and address to load it at (it's like ramfsfile+ramfsaddr in<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  one option).<br></div><div dir=3D"=
ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  NOTE: this opt=
ion uses different syntax than all other options - you<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  should not use "=3D" chara=
cter here.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt;=
 #initramfs initramf.gz 0x00800000<br></div><div dir=3D"ltr">&gt;<br></div>=
<div dir=3D"ltr">&gt; ## device_tree_address<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  Address to load device_tree at<br></div><div dir=3D"ltr">=
&gt; ##<br></div><div dir=3D"ltr">&gt; #device_tree_address=3D0x00000000<br=
></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## init_uart_ba=
ud<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Initial uart baud rate.<=
br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  Default 115200<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; #init_uart_baud=3D115200<br></div><div dir=3D"ltr">&gt;<br></=
div><div dir=3D"ltr">&gt; ## init_uart_clock<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  Initial uart clock.<br></div><div dir=3D"ltr">&gt; ##<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 3000000 (3MHz)<br></di=
v><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #init_uart_clock=
=3D3000000<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ##=
 init_emmc_clock<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Initial em=
mc clock, increasing this can speedup your SD-card.<br></div><div dir=3D"lt=
r">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 10000000=
0 (100mhz)<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt;=
 #init_emmc_clock=3D100000000<br></div><div dir=3D"ltr">&gt;<br></div><div =
dir=3D"ltr">&gt; ## boot_delay<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  Wait for a given number of seconds in start.elf before loading<br></div=
><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  kernel.img.<br></div><div dir=3D"lt=
r">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  delay =3D (1000 =
* boot_delay) + boot_delay_ms<br></div><div dir=3D"ltr">&gt; ##<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 1<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; #boot_delay=3D0<br></div><div dir=3D"l=
tr">&gt;<br></div><div dir=3D"ltr">&gt; ## boot_delay_ms<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Wait for a given number of milliseconds in s=
tart.elf before loading<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ker=
nel.img.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  delay =3D (1000 * boot_delay) + boot_delay_ms<br></div><div=
 dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Defaul=
t 0<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #boot_=
delay_ms=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; =
## avoid_safe_mode<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Adding a=
 jumper between pins 5 &amp; 6 of P1 enables a recovery Safe Mode.<br></div=
><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  If pins 5 &amp; 6 are used for conn=
ecting to external devices (e.g. GPIO),<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  then this setting can be used to ensure Safe Mode is not trigg=
ered.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nb=
sp; &nbsp; &nbsp; Respect Safe Mode input (Default)<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Ignore Safe Mode inpu=
t<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #avoid_s=
afe_mode=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; =
## disable_splash<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Avoids th=
e rainbow splash screen on boot.<br></div><div dir=3D"ltr">&gt; ##<br></div=
><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br><=
/div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------------------=
------------------------------------------<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Splash screen enabled (Default=
)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nb=
sp; Splash screen disabled<br></div><div dir=3D"ltr">&gt; ##<br></div><div =
dir=3D"ltr">&gt; #disable_splash=3D1<br></div><div dir=3D"ltr">&gt;<br></di=
v><div dir=3D"ltr">&gt; ###################################################=
#############################<br></div><div dir=3D"ltr">&gt; ##&nbsp; Overc=
locking Settings<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; ARM, SDRAM and GPU each have their own PLLs and can have un=
related<br></div><div dir=3D"ltr">&gt; ##&nbsp; frequencies.<br></div><div =
dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; The GPU core, h=
264, v3d and isp share a PLL, so need to have related<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; frequencies.<br></div><div dir=3D"ltr">&gt; ##&nbsp; pll=
_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; gpu_freq =3D pll_freq / [even number]<br></div><div =
dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; The effective g=
pu_freq is automatically rounded to nearest even integer, so<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; asking for core_freq =3D 500 and gpu_freq =3D 300=
 will result in divisor of<br></div><div dir=3D"ltr">&gt; ##&nbsp; 2000/300=
 =3D 6.666 =3D&gt; 6 and so 333.33MHz.<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; Sta=
ndard Profiles:<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; arm_freq&nbsp; &nbsp; core_freq&nbsp; =
&nbsp; sdram_freq&nbsp; &nbsp; over_voltage<br></div><div dir=3D"ltr">&gt; =
##&nbsp; &nbsp;  ----------------------------------------------------------=
---------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  None&nbsp; =
&nbsp; &nbsp; &nbsp;  700&nbsp; &nbsp; &nbsp; &nbsp;  250&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  0<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Modest&nbsp; &nbsp; &nbsp;  800&nbsp; &nbsp;=
 &nbsp; &nbsp;  300&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 400&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;  0<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Medium&=
nbsp; &nbsp; &nbsp;  900&nbsp; &nbsp; &nbsp; &nbsp;  333&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  2<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  High&nbsp; &nbsp; &nbsp; &nbsp;  950&nbsp; &=
nbsp; &nbsp; &nbsp;  450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;  6<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Tu=
rbo&nbsp; &nbsp; &nbsp; &nbsp; 1000&nbsp; &nbsp; &nbsp; &nbsp; 500&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 500&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  6<br></div=
><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##################=
##############################################################<br></div><di=
v dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## force_turbo<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Control the kernel "ondemand" governo=
r. It has no effect if no overclock<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  settings are specified.<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  May set warrany bit.<br></div><div dir=3D"ltr">&gt; ##<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------------------------=
------------------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp=
; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; Enable dynamic clocks and voltage fo=
r the ARM core, GPU core and<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SDRAM (Default).<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Overclocking of=
 h264_freq, v3d_freq and isp_freq is ignored.<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Disable dynamic clocks and =
voltage for the ARM core, GPU core<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and SDRAM.<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Overclocking of=
 h264_freq, v3d_freq and isp_freq is allowed.<br></div><div dir=3D"ltr">&gt=
; ##<br></div><div dir=3D"ltr">&gt; #force_turbo=3D0<br></div><div dir=3D"l=
tr">&gt;<br></div><div dir=3D"ltr">&gt; ## initial_turbo<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Enables turbo mode from boot for the given v=
alue in seconds (up to 60)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
or until cpufreq sets a frequency. Can help with sdcard corruption if<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  overclocked.<br></div><div dir=
=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 0<=
br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #initial_t=
urbo=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## t=
emp_limit<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Overheat protecti=
on. Sets clocks and voltages to default when the SoC<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  reaches this Celsius value.<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  Setting this higher than default voids warranty.=
<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  Default 85<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"l=
tr">&gt; #temp_limit=3D85<br></div><div dir=3D"ltr">&gt;<br></div><div dir=
=3D"ltr">&gt; ## arm_freq<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  F=
requency of ARM in MHz.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 700.<br></div><div dir=3D"ltr">&gt; =
##<br></div><div dir=3D"ltr">&gt; #arm_freq=3D700<br></div><div dir=3D"ltr"=
>&gt;<br></div><div dir=3D"ltr">&gt; ## arm_freq_min<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  Minimum frequency of ARM in MHz (used for dynamic=
 clocking).<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  Default 700.<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; #arm_freq_min=3D700<br></div><div dir=3D"ltr">&gt;<br=
></div><div dir=3D"ltr">&gt; ## gpu_freq<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  Sets core_freq, h264_freq, isp_freq, v3d_freq together.<br></=
div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  Default 250.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">=
&gt; #gpu_freq=3D250<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"lt=
r">&gt; ## core_freq<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Freque=
ncy of GPU processor core in MHz. It has an impact on ARM<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  performance since it drives L2 cache.<br></d=
iv><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 Default 250.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&=
gt; #core_freq=3D250<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"lt=
r">&gt; ## core_freq_min<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Mi=
nimum frequency of GPU processor core in MHz (used for dynamic<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  clocking). It has an impact on ARM perf=
ormance since it drives L2 cache.<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 250.<br></div><div dir=3D"=
ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #core_freq_min=3D250<br></div><=
div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## h264_freq<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Frequency of hardware video block in =
MHz.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; &nbsp;  Default 250.<br></div><div dir=3D"ltr">&gt; ##<br></div><div di=
r=3D"ltr">&gt; #h264_freq=3D250<br></div><div dir=3D"ltr">&gt;<br></div><di=
v dir=3D"ltr">&gt; ## isp_freq<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  Frequency of image sensor pipeline block in MHz.<br></div><div dir=3D"l=
tr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 250.<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #isp_freq=3D=
250<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## v3d_fr=
eq<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Frequency of 3D block in=
 MHz.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Default 250.<br></div><div dir=3D"ltr">&gt; ##<br></div><div d=
ir=3D"ltr">&gt; #v3d_freq=3D250<br></div><div dir=3D"ltr">&gt;<br></div><di=
v dir=3D"ltr">&gt; ## sdram_freq<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  Frequency of SDRAM in MHz.<br></div><div dir=3D"ltr">&gt; ##<br></div=
><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 400.<br></div><div dir=3D"l=
tr">&gt; ##<br></div><div dir=3D"ltr">&gt; #sdram_freq=3D400<br></div><div =
dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## sdram_freq_min<br></div>=
<div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Minimum frequency of SDRAM in MHz (u=
sed for dynamic clocking).<br></div><div dir=3D"ltr">&gt; ##<br></div><div =
dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 400.<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; #sdram_freq_min=3D400<br></div><div di=
r=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## avoid_pwm_pll<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Don't dedicate a pll to PWM audio. This=
 will reduce analogue audio<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 quality slightly. The spare PLL allows the core_freq to be set<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  independently from the rest of the gpu=
 allowing more control over<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 overclocking.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  -------------------------------------------------=
------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&=
nbsp; &nbsp; &nbsp; &nbsp; Linked core_freq (Default)<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; Unlinked core_freq<=
br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #avoid_pwm=
_pll=3D1<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ####=
###########################################################################=
#<br></div><div dir=3D"ltr">&gt; ##&nbsp; Voltage Settings<br></div><div di=
r=3D"ltr">&gt; ############################################################=
####################<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"lt=
r">&gt; ## current_limit_override<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  Disables SMPS current limit protection. Can help if you are currentl=
y<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  hitting a reboot failure =
when overclocking too high.<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 May set warrany bit.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; #current_limit_override=3D0x5A000020<br></div><div dir=3D"ltr=
">&gt;<br></div><div dir=3D"ltr">&gt; ## over_voltage<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  ARM/GPU core voltage adjust.<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  May set warrany bit.<br></div><div dir=3D"lt=
r">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbs=
p; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------------=
-------------------------------------------------------------<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -16&nbsp; &nbsp; &nbsp; 0.8&nbsp;  V<br>=
</div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -15&nbsp; &nbsp; &nbsp; 0.825 =
V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -14&nbsp; &nbsp; &nbsp; 0=
.85&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -13&nbsp; &nbsp=
; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -12&nbsp; =
&nbsp; &nbsp; 0.9&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
-11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nb=
sp;  -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; &nbsp;  -9&nbsp; &nbsp; &nbsp;  0.975 V<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  -8&nbsp; &nbsp; &nbsp;  1.0&nbsp;  V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  -7&nbsp; &nbsp; &nbsp;  1.025 V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -6&nbsp; &nbsp; &nbsp;  1.05&nbsp; V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -5&nbsp; &nbsp; &nbsp;  1.075=
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -4&nbsp; &nbsp; &nbsp;  =
1.1&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -3&nbsp; &nbsp=
; &nbsp;  1.125 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -2&nbsp; =
&nbsp; &nbsp;  1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 -1&nbsp; &nbsp; &nbsp;  1.175 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp;  V (Default)<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&=
nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbs=
p; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &=
nbsp; &nbsp; &nbsp; 1.3&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V (requir=
es force_turbo=3D1 or current_limit_override)<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;  V (requires forc=
e_turbo=3D1 or current_limit_override)<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; #over_voltage=3D0<br></div><div dir=3D"ltr">&g=
t;<br></div><div dir=3D"ltr">&gt; ## over_voltage_min<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  Minimum ARM/GPU core voltage adjust (used for dy=
namic clocking).<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  -----------------------------------------------=
--------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  =
-16&nbsp; &nbsp; &nbsp; 0.8&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp=
; &nbsp;  -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; ##=
&nbsp; &nbsp;  -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"lt=
r">&gt; ##&nbsp; &nbsp;  -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  -12&nbsp; &nbsp; &nbsp; 0.9&nbsp;  V<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -11&nbsp; &nbsp; &nbsp; 0.925 V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -10&nbsp; &nbsp; &nbsp; 0.95&=
nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -9&nbsp; &nbsp; &nb=
sp;  0.975 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -8&nbsp; &nbsp=
; &nbsp;  1.0&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -7&n=
bsp; &nbsp; &nbsp;  1.025 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 -6&nbsp; &nbsp; &nbsp;  1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  -5&nbsp; &nbsp; &nbsp;  1.075 V<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  -4&nbsp; &nbsp; &nbsp;  1.1&nbsp;  V<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  -3&nbsp; &nbsp; &nbsp;  1.125 V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  -2&nbsp; &nbsp; &nbsp;  1.15&nbsp; V<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -1&nbsp; &nbsp; &nbsp;  1.175 V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; =
1.2&nbsp;  V (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nb=
sp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp;  V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  5&nbsp; &nbsp; &nbsp; &nbsp; =
1.325 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  6&nbsp; &nbsp; &nbs=
p; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  7&nb=
sp; &nbsp; &nbsp; &nbsp; 1.375 V (requires force_turbo=3D1)<br></div><div d=
ir=3D"ltr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;  V =
(requires force_turbo=3D1)<br></div><div dir=3D"ltr">&gt; ##<br></div><div =
dir=3D"ltr">&gt; #over_voltage_min=3D0<br></div><div dir=3D"ltr">&gt;<br></=
div><div dir=3D"ltr">&gt; ## over_voltage_sdram<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  Sets over_voltage_sdram_c, over_voltage_sdram_i, over_=
voltage_sdram_p<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  together<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nb=
sp;  Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  ------------------------------------------------------------------=
-------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -16&nbsp; &nbsp; &n=
bsp; 0.8&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -15&nbsp;=
 &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -14&=
nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  -12&nbsp; &nbsp; &nbsp; 0.9&nbsp;  V<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -9&nbsp; &nbsp; &nbsp;  0.975 V<br></di=
v><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -8&nbsp; &nbsp; &nbsp;  1.0&nbsp; =
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -7&nbsp; &nbsp; &nbsp;  =
1.025 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -6&nbsp; &nbsp; &nb=
sp;  1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -5&nbsp; =
&nbsp; &nbsp;  1.075 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -4&n=
bsp; &nbsp; &nbsp;  1.1&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  -3&nbsp; &nbsp; &nbsp;  1.125 V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  -2&nbsp; &nbsp; &nbsp;  1.15&nbsp; V<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  -1&nbsp; &nbsp; &nbsp;  1.175 V<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp;  V (Defaul=
t)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &n=
bsp; 1.225 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp;=
 &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp;  V<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &n=
bsp; 1.375 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp;=
 &nbsp; &nbsp; 1.4&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##<br></div><div=
 dir=3D"ltr">&gt; #over_voltage_sdram=3D0<br></div><div dir=3D"ltr">&gt;<br=
></div><div dir=3D"ltr">&gt; ## over_voltage_sdram_c<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  SDRAM controller voltage adjust.<br></div><div di=
r=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbs=
p; &nbsp; Description<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -----=
--------------------------------------------------------------------<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -16&nbsp; &nbsp; &nbsp; 0.8&nbsp;=
  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -15&nbsp; &nbsp; &nbsp;=
 0.825 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -14&nbsp; &nbsp; &=
nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -13&nbsp=
; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -12=
&nbsp; &nbsp; &nbsp; 0.9&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; &nbsp;  -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  -9&nbsp; &nbsp; &nbsp;  0.975 V<br></div><div dir=3D"=
ltr">&gt; ##&nbsp; &nbsp;  -8&nbsp; &nbsp; &nbsp;  1.0&nbsp;  V<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -7&nbsp; &nbsp; &nbsp;  1.025 V<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -6&nbsp; &nbsp; &nbsp;  1.05&nbsp=
; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -5&nbsp; &nbsp; &nbsp; =
 1.075 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -4&nbsp; &nbsp; &n=
bsp;  1.1&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -3&nbsp;=
 &nbsp; &nbsp;  1.125 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -2&=
nbsp; &nbsp; &nbsp;  1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &=
nbsp;  -1&nbsp; &nbsp; &nbsp;  1.175 V<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; &nbsp;  0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp;  V (Default)<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp;=
 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp=
; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&n=
bsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nb=
sp; &nbsp;  5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp;=
 1.4&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&=
gt; #over_voltage_sdram_c=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div =
dir=3D"ltr">&gt; ## over_voltage_sdram_i<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  SDRAM I/O voltage adjust.<br></div><div dir=3D"ltr">&gt; ##<b=
r></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Descripti=
on<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  ------------------------=
-------------------------------------------------<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  -16&nbsp; &nbsp; &nbsp; 0.8&nbsp;  V<br></div><div d=
ir=3D"ltr">&gt; ##&nbsp; &nbsp;  -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<=
br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -13&nbsp; &nbsp; &nbsp; 0.8=
75 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -12&nbsp; &nbsp; &nbsp=
; 0.9&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -11&nbsp; &n=
bsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -10&nbs=
p; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  -9&nbsp; &nbsp; &nbsp;  0.975 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  -8&nbsp; &nbsp; &nbsp;  1.0&nbsp;  V<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  -7&nbsp; &nbsp; &nbsp;  1.025 V<br></div><div dir=3D"ltr"=
>&gt; ##&nbsp; &nbsp;  -6&nbsp; &nbsp; &nbsp;  1.05&nbsp; V<br></div><div d=
ir=3D"ltr">&gt; ##&nbsp; &nbsp;  -5&nbsp; &nbsp; &nbsp;  1.075 V<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -4&nbsp; &nbsp; &nbsp;  1.1&nbsp;  V<=
br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -3&nbsp; &nbsp; &nbsp;  1.1=
25 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -2&nbsp; &nbsp; &nbsp;=
  1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -1&nbsp; &nb=
sp; &nbsp;  1.175 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp;=
 &nbsp; &nbsp; &nbsp; 1.2&nbsp;  V (Default)<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></=
div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; 1.2=
75 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nbsp; =
&nbsp; 1.3&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  5&nbsp;=
 &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp=
;  6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt;=
 ##&nbsp; &nbsp;  7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;  V<br></=
div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #over_voltage_s=
dram_i=3D0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ##=
 over_voltage_sdram_p<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  SDRAM=
 phy voltage adjust.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D=
"ltr">&gt; ##&nbsp; &nbsp;  Value&nbsp; &nbsp; Description<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  -------------------------------------------=
------------------------------<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbs=
p;  -16&nbsp; &nbsp; &nbsp; 0.8&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&=
nbsp; &nbsp;  -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -12&nbsp; &nbsp; &nbsp; 0.9&nbsp;  V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -11&nbsp; &nbsp; &nbsp; 0.925=
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -10&nbsp; &nbsp; &nbsp; =
0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -9&nbsp; &nbsp=
; &nbsp;  0.975 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -8&nbsp; =
&nbsp; &nbsp;  1.0&nbsp;  V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 -7&nbsp; &nbsp; &nbsp;  1.025 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  -6&nbsp; &nbsp; &nbsp;  1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; #=
#&nbsp; &nbsp;  -5&nbsp; &nbsp; &nbsp;  1.075 V<br></div><div dir=3D"ltr">&=
gt; ##&nbsp; &nbsp;  -4&nbsp; &nbsp; &nbsp;  1.1&nbsp;  V<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  -3&nbsp; &nbsp; &nbsp;  1.125 V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -2&nbsp; &nbsp; &nbsp;  1.15&nbsp; V<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  -1&nbsp; &nbsp; &nbsp;  1.175=
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  0&nbsp; &nbsp; &nbsp; &n=
bsp; 1.2&nbsp;  V (Default)<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"l=
tr">&gt; ##&nbsp; &nbsp;  3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; =
 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  5&nbsp; &nbsp; &nbsp; &n=
bsp; 1.325 V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  6&nbsp; &nbsp;=
 &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp;  V<br></div><div dir=3D"l=
tr">&gt; ##<br></div><div dir=3D"ltr">&gt; #over_voltage_sdram_p=3D0<br></d=
iv><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ###################=
#############################################################<br></div><div=
 dir=3D"ltr">&gt; ##&nbsp; USB Power<br></div><div dir=3D"ltr">&gt; #######=
#########################################################################<b=
r></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## max_usb_cur=
rent<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  When set to 1, change =
the output current limit (for all 4 USB<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  ports combined) from 600mA to double that, 1200mA.<br></div><d=
iv dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  This=
 option is not available for Model A/B boards.<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 0.<br></div><=
div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #max_usb_current=3D0=
<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ############=
####################################################################<br></d=
iv><div dir=3D"ltr">&gt; ##&nbsp; Base Device Tree Parameters<br></div><div=
 dir=3D"ltr">&gt; #########################################################=
#######################<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D=
"ltr">&gt; ## audio<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Enable =
the onboard ALSA audio<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Default off.<br></div><div dir=3D"ltr">&gt; =
##<br></div><div dir=3D"ltr">&gt; #dtparam=3Daudio=3Doff<br></div><div dir=
=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## i2c_arm<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Enable the ARM's i2c interface<br></div><div=
 dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Defaul=
t off.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dt=
param=3Di2c_arm=3Doff<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"l=
tr">&gt; ## i2c_vc<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Enable t=
he i2c interface<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr=
">&gt; ##&nbsp; &nbsp;  Usually reserved for the VideoCore processor<br></d=
iv><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp; =
 Default off.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&=
gt; #dtparam=3Di2c_vc=3Doff<br></div><div dir=3D"ltr">&gt;<br></div><div di=
r=3D"ltr">&gt; ## i2c_arm_baudrate<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  Set the baudrate of the ARM's i2c interface<br></div><div dir=3D"lt=
r">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 100000.<=
br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=
=3Di2c_arm_baudrate=3D100000<br></div><div dir=3D"ltr">&gt;<br></div><div d=
ir=3D"ltr">&gt; ## i2c_vc_baudrate<br></div><div dir=3D"ltr">&gt; ##&nbsp; =
&nbsp;  Set the baudrate of the VideoCore i2c interface<br></div><div dir=
=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 10=
0000.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtp=
aram=3Di2c_vc_baudrate=3D100000<br></div><div dir=3D"ltr">&gt;<br></div><di=
v dir=3D"ltr">&gt; ## i2s<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  S=
et to "on" to enable the i2s interface<br></div><div dir=3D"ltr">&gt; ##<br=
></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default off.<br></div><div di=
r=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=3Di2s=3Doff<br></=
div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## spi<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to "on" to enable the spi interfac=
es<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp=
; &nbsp;  Default off.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=
=3D"ltr">&gt; #dtparam=3Dspi=3Doff<br></div><div dir=3D"ltr">&gt;<br></div>=
<div dir=3D"ltr">&gt; ## random<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nb=
sp;  Set to "on" to enable the hardware random<br></div><div dir=3D"ltr">&g=
t; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default off.<br></div=
><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=3Drandom=
=3Doff<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## uar=
t0<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to "off" to disable =
uart0<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Default on.<br></div><div dir=3D"ltr">&gt; ##<br></div><div di=
r=3D"ltr">&gt; #dtparam=3Duart0=3Don<br></div><div dir=3D"ltr">&gt;<br></di=
v><div dir=3D"ltr">&gt; ## watchdog<br></div><div dir=3D"ltr">&gt; ##&nbsp;=
 &nbsp;  Set to "on" to enable the hardware watchdog<br></div><div dir=3D"l=
tr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default off.<br=
></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=3Dw=
atchdog=3Doff<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;=
 ## act_led_trigger<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Choose =
which activity the LED tracks.<br></div><div dir=3D"ltr">&gt; ##<br></div><=
div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Use "heartbeat" for a nice load indic=
ator.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&n=
bsp; &nbsp;  Default mmc.<br></div><div dir=3D"ltr">&gt; ##<br></div><div d=
ir=3D"ltr">&gt; #dtparam=3Dact_led_trigger=3Dmmc<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; ## act_led_activelow<br></div><div dir=
=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to "on" to invert the sense of the LED<b=
r></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &n=
bsp;  Default off.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"l=
tr">&gt; #dtparam=3Dact_led_activelow=3Doff<br></div><div dir=3D"ltr">&gt;<=
br></div><div dir=3D"ltr">&gt; ## act_led_gpio<br></div><div dir=3D"ltr">&g=
t; ##&nbsp; &nbsp;  Set which GPIO to use for the activity LED<br></div><di=
v dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  In ca=
se you want to connect it to an external device<br></div><div dir=3D"ltr">&=
gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 16 on a non-=
Plus board, 47 on a Plus or Pi 2.<br></div><div dir=3D"ltr">&gt; ##<br></di=
v><div dir=3D"ltr">&gt; #dtparam=3Dact_led_gpio=3D47<br></div><div dir=3D"l=
tr">&gt;<br></div><div dir=3D"ltr">&gt; ## pwr_led_trigger<br></div><div di=
r=3D"ltr">&gt; ##&nbsp; &nbsp;  Choose which activity the LED tracks.<br></=
div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;=
  Use "heartbeat" for a nice load indicator.<br></div><div dir=3D"ltr">&gt;=
 ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Not available on Model =
A/B boards.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt=
; ##&nbsp; &nbsp;  Default mmc.<br></div><div dir=3D"ltr">&gt; ##<br></div>=
<div dir=3D"ltr">&gt; #dtparam=3Dpwr_led_trigger=3Dmmc<br></div><div dir=3D=
"ltr">&gt;<br></div><div dir=3D"ltr">&gt; ## pwr_led_activelow<br></div><di=
v dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set to "on" to invert the sense of the =
LED<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbs=
p; &nbsp;  Not available on Model A/B boards.<br></div><div dir=3D"ltr">&gt=
; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default off.<br></div>=
<div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=3Dpwr_led_=
activelow=3Doff<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&g=
t; ## pwr_led_gpio<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Set whic=
h GPIO to use for the PWR LED<br></div><div dir=3D"ltr">&gt; ##<br></div><d=
iv dir=3D"ltr">&gt; ##&nbsp; &nbsp;  In case you want to connect it to an e=
xternal device<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">=
&gt; ##&nbsp; &nbsp;  Not available on Model A/B boards.<br></div><div dir=
=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; ##&nbsp; &nbsp;  Default 35=
.<br></div><div dir=3D"ltr">&gt; ##<br></div><div dir=3D"ltr">&gt; #dtparam=
=3Dpwr_led_gpio=3D35<br></div><div dir=3D"ltr">&gt; # Enable SPI bus<br></d=
iv><div dir=3D"ltr">&gt; dtparam=3Dspi=3Don<br></div><div dir=3D"ltr">&gt; =
# Enable UART<br></div><div dir=3D"ltr">&gt; enable_uart=3D1<br></div><div =
dir=3D"ltr">&gt; # Enable VC4 Graphics<br></div><div dir=3D"ltr">&gt; dtove=
rlay=3Dvc4-kms-v3d<br></div><div dir=3D"ltr">&gt; # Enable Sony RaspberryPi=
 Camera(imx219)<br></div><div dir=3D"ltr">&gt; dtoverlay=3Dimx219<br></div>=
<div dir=3D"ltr">&gt; # Enable USB host mode<br></div><div dir=3D"ltr">&gt;=
 dtoverlay=3Ddwc2,dr_mode=3Dhost<br></div><div dir=3D"ltr">&gt; # Enable CA=
N<br></div><div dir=3D"ltr">&gt; dtoverlay=3Dmcp2515-can0,oscillator=3D1600=
0000,interrupt=3D25<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr=
">&gt; # Enable WM8960<br></div><div dir=3D"ltr">&gt; dtoverlay=3Dwm8960-so=
undcard<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;<br></=
div><div dir=3D"ltr">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; Any help =
will be appreciated!<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"l=
tr">&gt;<br></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Link=
s: You receive all messages sent to this group.<br>View/Reply Online (#6053=
0): <a href=3D"https://lists.yoctoproject.org/g/yocto/message/60530" rel=3D=
"nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message=
/60530</a><br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/99985319/7732448" rel=3D"nofollow" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/99985319/7732448</a><br>Group Owner: yocto+owner@lists.yoctopr=
oject.org<br>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto=
/unsub" rel=3D"nofollow" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/unsub</a> [oosman3@yahoo.com]<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-<br><br></div>
            </div>
        </div></body></html>
------=_Part_421970_39911054.1688655972999--

