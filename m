Return-Path: <oosman3@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC93EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 16:04:11 +0000 (UTC)
Received: from sonic306-21.consmr.mail.ne1.yahoo.com (sonic306-21.consmr.mail.ne1.yahoo.com [66.163.189.83])
 by mx.groups.io with SMTP id smtpd.web11.28471.1688659446450673647
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 09:04:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=AOAx74wW;
 spf=neutral (domain: yahoo.com, ip: 66.163.189.83, mailfrom: oosman3@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688659445; bh=TCBs5LoBA3/36czpAXrx9oMxDEpL/OysgBS1I/UhCKw=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=AOAx74wWA1OaRWcX/IwbFEfgKTG8d5gMx+Ucjk08j09euZDBwAkl+WAmr6Zi+pQsAXlX2ZSwL/nQHPrD8UifNhCG4uipUYQ0mU4BG+4g/Ib3f1muM15KhckqTCddNGq3izgSMv9z2sK+qhZyn75NPzsfA+y9g5GAUzB0LTncUa5ZLKfDjqJtmOFg1srs0PGgX9z6KPexr8B5iI4ju5WX+Vp1uLTdjWKBPDzT3Tu4xD7Xmx7vXfNsDSTJs7j7TKOZ2rIG5o+znGIjlGhkGT9fGJdJPU95nlzdPpff1NP3wV2tsKav0USQ5Srr/izyHnbAlR37LrZjlZJcU1kpSwcxig==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688659445; bh=3oI7rk67548JxFrvgdHbXcKSmjmjuTsQzTH53fNuNu7=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ldthBr1HAarYnPB/bJf1H2+afTJ01unOXwZHuBAVa+tJ2bXqzrJYjVRdVsFf+6UyQrc5r7B+kKAHuZjjKRc49s7tYKLW6nFR4iS9hYOQ88KaUxyTyf3QTDz74uKVSH0YrCFAtNoVfNAXW1e5DTmtunnmSkwd0Q5inoXQbslBQ4s+zHK0GQQ13Kjwi3NOWzK5dvm0r4Ylmn9EJ5RouTcuD1V+cGskidt5tRamhXS64gX/UXFtG5PvReIAVWXs3gopr0CAfXJOBHjya1CwDHjubeFwPpneiL518TiB8veBMbJmO0Xn7WxDbnaBE5xHLVnyxGnxFTgJF4GO2JD3fc3Kkw==
X-YMail-OSG: BYxvBbAVM1kWGLG2EO4VW0VBLvZrtCYnx1pJmgjEOKCxbrOqMzyS0KAgUpJier0
 CEnRAYQGJ.v7IFbC_fz3p7n6.JoEgoIS3iBwmOBw.9G2xJG7frpGk1RW1O4gAit_GhVPgn4xNPBd
 VS0JTOODXR4rT50fyS22fHjyvVdK9rGeZTKjxfSIrnxrFm2.CjRBUYa03fbsrkibJPdvIN.Kahhd
 N8J.khgY5Ghq.6_X5EqiejUdAKCQxfcqWUCsqQji9MHmg1uGw.5ZOGBD2Zvg4JOmJBu60DW8m44p
 uy7sGMNmi4WZWyQseV0pxn0fO.1ljDhTHsDORQnMgZHXQLA_Xyi2scEhYshyQ3V8MB4n1U5i3yCj
 wGPn8vXsyt5vNTg96qOCt.CJoNpf7Hhqy_ZrN9ongZ.cCL2QfIvZq02vDm5RFBYo6QE0abISU.pD
 YDtjCCcqghuN6N4hd_DZWszGBmf7C3cQ.trvDNG1p.eQaOOsiv_VZ4GB_cJqv.UqnhSVFV...FtX
 OX26E0vd8wmuIxVBgj3yY3asVoJd5Pewae9tdQkQlflcslmbH8IYdV_hw2.s7LkGhW9o8Zdvpb8p
 5mfwkM3GAwhGFT6hs2AsiV9l0BDfGaVkftnTbVqUswpfGEl26GJIt_3VKcZHOw46wpdX1h9uoGSz
 jQAIfWWj6aQNDe333aAa2EX2WOaGuDOAnAIczCB8zyY9JbpQtFBeumdKN2fSI6neQ4.HvnsPMkjt
 NH6glX7v69wK3MZAW7x_TsRWL6l.SccIifrzbIXNOvFSVAgskBTscB8VcLZD6bSZalHvVzTjm0xV
 IkzYEM78PlnbHc.m4pFV5NxsI.200aDWiAYbgWtGkDlbeV3koIwual45ieIU3TVDLbqhyeNCKOMY
 LTyvkK._9HyQA1uOIfqDfOvri8ENkE9_ShdDazLdNTJ.Fw1kJq.mhKgtH40vl039oXLkIgyBzrfQ
 YV355Q7.RnVXRRY3tJ7fjk.xaVaew2kogHztHeCQC._2Q1Zgq8uO2I1boA6Utx1nIUv5_h_gR0WG
 el_wIRIq.MmreiAh8b7Eeqg0D1bLOEGbBPmEal7q73rRi7erN6juxHBqh3ndGOS1SrOh06fRpanQ
 yGeKhKIzzd3jA3trvZ7Se0vMWQ2vVfHWHbTBSWDPpL7ByWonmKwlX.suImT8VjIFDLNN6qjBAITo
 GuNNaR.d1AwDWWujt_RmihCM68On9v6hA5MDzlgprzUxNQmaNtYccFMhBaYiCv50MoiPoIVGaG.t
 JgN.SbzsAjdIbGG2G1RaiY5eTPoTEx0JO_AeJareb8OOnhca86YoxY2Wox76GELrxbVPNfNLuH78
 .nk2fKFbvvK_Tuf0V4SsogjY.RJ0FEZr2gI.2XORcYDqJ_67_Mv3ITh_N3XTbIMWZXOjjHdi6jT_
 Jy1LAFm7r34fpBjtqIdBeWi8T2SfmbPbaXwHA3dixTvGqfn2hUdEWsRkCHI1dbLobdCq7bA3U.U_
 9yodqv6vhYIAl4lUuqwuv06sVSR8Uw2obptrfvjhNpQehcjnWyiCavDuflMeWi6Zm_2vIg4HM3nX
 23ps7q1UC.5_BtV6NEeaG4DMdrNCeZzLJ7uD7Ys1SnIxZ54Nd_32UhAQP8ZkLoDu3KQb2h.iCIHM
 YEAqMY_Mgnt5gdKY6IP53gpu3Dh3zn4izuaCZne03UDQMW7QEjaxxJdnPLdOj.WIIKT0PmAdbF6o
 8S1it_0P4eR3aSr8bgpCNWUW4OFgnqI.2QBZpVfEuqlt7kIdwhvKggSObszuEoxFGutFPkadBU7e
 anvwrhiNPcdQ5pAkZlikbVe9kps.5QvzEV5VSkN_blvRU52DsrQiPayS1zZGAiXh_FjpemHfGAOK
 6Pr.ohA6dKOy35YoANkjnwPI8esbZQJTU75pl_T1Ku5eKgF8.0vW81oqgfpYTpKRZgSDMWfBZb1N
 UCuhwwAunA_nUuBypb8XILDTr.uUgLrwHaRmOBnj48WLEdPEwsDI7CmGXJVAgxdSzKC3s6kYwWrf
 j21uB..7Zyml6qSTM4xA_chfmfl1_b234we7CyWMVcHA4sazV4pEbF5qZ3IXjWlwXXtp4Ho3s3JZ
 JwgX0KfepxvN2pk7mmHyciAzCBVhw7UsJ9g1PQ4B15LOyCvl1HH4tmJKfhvGcY6dUTGoLMSVyjYK
 o7lETuWGwqQmOEPf2tlWIYWsxOJyvwDBte7c2MMMPfwRPi9CaXPmBmpOhrLssX7b6MfhdS_jUB.n
 rl_w-
X-Sonic-MF: <oosman3@yahoo.com>
X-Sonic-ID: 21335c53-3dde-4c0d-92c2-ed42f5586c17
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.ne1.yahoo.com with HTTP; Thu, 6 Jul 2023 16:04:05 +0000
Date: Thu, 6 Jul 2023 16:04:03 +0000 (UTC)
From: Oosman Saeed <oosman3@yahoo.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <876850182.455807.1688659443409@mail.yahoo.com>
In-Reply-To: <CAMKF1sqfmUT0oGSR14ooDzOM6J+37Bo9ykRkZGu8uD2=ORdWfw@mail.gmail.com>
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org> <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com> <1248822682.421971.1688655973025@mail.yahoo.com> <CAMKF1sqfmUT0oGSR14ooDzOM6J+37Bo9ykRkZGu8uD2=ORdWfw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_455806_450064069.1688659443384"
X-Mailer: WebService/1.1.21638 YMailNorrin
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 16:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60533

------=_Part_455806_450064069.1688659443384
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I think that is the problem, I don't know which wifi is used on the board.=
 How do I find out what wifi driver to load?


    On Thursday, July 6, 2023 at 10:19:50 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote: =20
=20
 On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> wr=
ote:
>
> root@raspberrypi4-64:~# ifconfig -a
> eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.7.255
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 1000=
=C2=A0 (Ethernet)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 962=C2=A0 bytes 117191 (114.4 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 1766=C2=A0 bytes 299578 (292.5 KiB)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 c=
arrier 0=C2=A0 collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x=
10<host>
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopba=
ck)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 12567=C2=A0 bytes 780277 (761.9 KiB=
)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 12567=C2=A0 bytes 780277 (761.9 KiB=
)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 c=
arrier 0=C2=A0 collisions 0
>
>
>



OK in your kernel module list I dont see any kmods for wifi being loaded
so it might be that its not enabling them in rootfs for some reason ?
which wifi is used on your board ?


> On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj <raj.khem@gmail.co=
m> wrote:
>
>
> what does ifconfig -a say
>
> On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject.org
> <oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
> >
> > I am building my raspberrypi wic image using the layer meta-raspberrypi=
.
> >
> > I am using a raspiberrypi compute module 4 with wifi chip.
> >
> > I just can't seem to get the wlan0 device to appear when I type ifconfi=
g.
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > root@raspberrypi4-64:~# ifconfig
> > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.7.8=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.7.255
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether dc:a6:32:e3:eb:fe=C2=A0 txqueuelen 100=
0=C2=A0 (Ethernet)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 407=C2=A0 bytes 62442 (60.9 KiB)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 567=C2=A0 bytes 94749 (92.5 KiB)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0=C2=A0 collisions 0
> >
> > lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1=C2=A0 netmask 255.0.0.0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid =
0x10<host>
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loop=
back)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 4047=C2=A0 bytes 252037 (246.1 Ki=
B)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=
=C2=A0 frame 0
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 4047=C2=A0 bytes 252037 (246.1 Ki=
B)
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0=
 carrier 0=C2=A0 collisions 0
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> >
> >
> >
> > Here is a filtered output of my lsmod command
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> > root@raspberrypi4-64:~# lsmod
> > Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Si=
ze=C2=A0 Used by
> > 88XXau=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2265088=C2=A0 0
> > cmac=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1638=
4=C2=A0 3
> > algif_hash=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > aes_arm64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 3
> > aes_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 36864=C2=A0 1 aes_=
arm64
> > algif_skcipher=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1
> > af_alg=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=
=A0 6 algif_hash,algif_skcipher
> > bnep=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2457=
6=C2=A0 2
> > 8021q=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 327=
68=C2=A0 0
> > garp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1638=
4=C2=A0 1 8021q
> > stp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 16384=C2=A0 1 garp
> > llc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 16384=C2=A0 2 stp,garp
> > imx219=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=
=A0 0
> > mcp251x=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=
=A0 0
> > spidev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=
=A0 0
> > can_dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=
=A0 1 mcp251x
> > hci_uart=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> > btbcm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 245=
76=C2=A0 1 hci_uart
> > v3d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 90112=C2=A0 1
> > bluetooth=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 585728=C2=A0 26 hci_=
uart,btbcm,bnep
> > i2c_mux_pinctrl=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > gpu_sched=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 1=
 v3d
> > snd_soc_simple_card=C2=A0 =C2=A0 20480=C2=A0 0
> > snd_soc_simple_card_utils=C2=A0 =C2=A0 28672=C2=A0 1 snd_soc_simple_car=
d
> > drm_shmem_helper=C2=A0 =C2=A0 =C2=A0 24576=C2=A0 1 v3d
> > raspberrypi_hwmon=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > i2c_mux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=
=A0 1 i2c_mux_pinctrl
> > i2c_brcmstb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > bcm2835_unicam=C2=A0 =C2=A0 =C2=A0 =C2=A0 53248=C2=A0 0
> > dwc2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1925=
12=C2=A0 0
> > roles=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 204=
80=C2=A0 1 dwc2
> > v4l2_dv_timings=C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 1 bcm2835_unicam
> > v4l2_fwnode=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 2 imx2=
19,bcm2835_unicam
> > ecdh_generic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 bluetooth
> > v4l2_async=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 3 v4l2_=
fwnode,imx219,bcm2835_unicam
> > ecc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 36864=C2=A0 1 ecdh_generic
> > libaes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=
=A0 3 aes_arm64,bluetooth,aes_generic
> > spi_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 0
> > snd_soc_bcm2835_i2s=C2=A0 =C2=A0 20480=C2=A0 0
> > bcm2835_codec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > rpivid_hevc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 49152=C2=A0 0
> > bcm2835_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 45056=C2=A0 0
> > bcm2835_isp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > bcm2835_mmal_vchiq=C2=A0 =C2=A0 36864=C2=A0 3 bcm2835_codec,bcm2835_v4l=
2,bcm2835_isp
> > v4l2_mem2mem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 40960=C2=A0 2 bcm2835_co=
dec,rpivid_hevc
> > videobuf2_vmalloc=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 1 bcm2835_v4l2
> > videobuf2_dma_contig=C2=A0 =C2=A0 20480=C2=A0 4 bcm2835_codec,bcm2835_u=
nicam,rpivid_hevc,bcm2835_isp
> > videobuf2_memops=C2=A0 =C2=A0 =C2=A0 16384=C2=A0 2 videobuf2_vmalloc,vi=
deobuf2_dma_contig
> > videobuf2_v4l2=C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 6 bcm2835_codec,b=
cm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > videobuf2_common=C2=A0 =C2=A0 =C2=A0 69632=C2=A0 10 bcm2835_codec,video=
buf2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l=
2,rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm2835_isp
> > videodev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 274432=C2=A0 1=
0 v4l2_async,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l=
2,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > vc_sm_cma=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=A0 2=
 bcm2835_mmal_vchiq,bcm2835_isp
> > snd_bcm2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 28672=C2=A0 0
> > mc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 61440=C2=A0 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,bcm=
2835_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > uio_pdrv_genirq=C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > nvmem_rmem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384=C2=A0 0
> > uio=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 24576=C2=A0 1 uio_pdrv_genirq
> > sch_fq_codel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480=C2=A0 6
> > brcmutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=C2=A0 0
> > cfg80211=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 929792=C2=A0 1=
 88XXau
> > rfkill=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768=C2=
=A0 4 bluetooth,cfg80211
> > fuse=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1392=
64=C2=A0 1
> > ipv6=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5529=
60=C2=A0 28
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > And here is my /boot/config.txt
> >
> > root@raspberrypi4-64:~# cat /boot/config.txt
> > #######################################################################=
#########
> > ##=C2=A0 Raspberry Pi Configuration Settings
> > ##
> > ##=C2=A0 Revision 16, 2013/06/22
> > ##
> > ##=C2=A0 Details taken from the eLinux wiki
> > ##=C2=A0 For up-to-date information please refer to wiki page.
> > ##
> > ##=C2=A0 Wiki Location : http://elinux.org/RPiconfig
> > ##
> > ##
> > ##=C2=A0 Description:
> > ##=C2=A0 =C2=A0 Details of each setting are described with each section=
 that begins with
> > ##=C2=A0 =C2=A0 a double hashed comment ('##')
> > ##=C2=A0 =C2=A0 It is up to the user to remove the single hashed commen=
t ('#') from each
> > ##=C2=A0 =C2=A0 option they want to enable, and to set the specific val=
ue of that option.
> > ##
> > ##=C2=A0 Overclock settings will be disabled at runtime if the SoC reac=
hes temp_limit
> > ##
> > #######################################################################=
#########
> >
> > #######################################################################=
#########
> > ##=C2=A0 Standard Definition Video Settings
> > #######################################################################=
#########
> >
> > ## sdtv_mode
> > ##=C2=A0 =C2=A0 defines the TV standard for composite output
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal NTSC (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Japanese version of NTSC -=
 no pedestal
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal PAL
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 Brazilian version of PAL -=
 525/60 rather than 625/50, different
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subcarrier
> > ##
> > #sdtv_mode=3D0
> >
> > ## sdtv_aspect
> > ##=C2=A0 =C2=A0 defines the aspect ratio for composite output
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 4:3 (Default)
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 14:9
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 16:9
> > ##
> > #sdtv_aspect=3D1
> >
> > ## sdtv_disable_colourburst
> > ##=C2=A0 =C2=A0 Disables colour burst on composite output. The picture =
will be
> > ##=C2=A0 =C2=A0 monochrome, but possibly sharper
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is enabled (D=
efault)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Colour burst is disabled
> > ##
> > #sdtv_disable_colourburst=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 High Definition Video Settings
> > #######################################################################=
#########
> >
> > ## hdmi_safe
> > ##=C2=A0 =C2=A0 Use "safe mode" settings to try to boot with maximum hd=
mi compatibility.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enabled (this does: hdmi_f=
orce_hotplug=3D1,
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_ignore_edid=3D0xa500=
0080,
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 config_hdmi_boost=3D4, hd=
mi_group=3D2,
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_mode=3D4, disable_ov=
erscan=3D0,
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_left=3D24, overs=
can_right=3D24,
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 overscan_top=3D24, oversc=
an_bottom=3D24)
> > ##
> > #hdmi_safe=3D1
> >
> > ## hdmi_force_hotplug
> > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is asserted so it appears =
a HDMI display
> > ##=C2=A0 =C2=A0 is attached
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use HDMI mode even if no H=
DMI monitor is detected
> > ##
> > #hdmi_force_hotplug=3D1
> >
> > ## hdmi_ignore_hotplug
> > ##=C2=A0 =C2=A0 Pretends HDMI hotplug signal is not asserted so it appe=
ars a HDMI
> > ##=C2=A0 =C2=A0 display is not attached
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use composite mode even if=
 HDMI monitor is detected
> > ##
> > #hdmi_ignore_hotplug=3D1
> >
> > ## hdmi_drive
> > ##=C2=A0 =C2=A0 chooses between HDMI and DVI modes
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal DVI mode (No sound)
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal HDMI mode (Sound wi=
ll be sent if supported and enabled)
> > ##
> > #hdmi_drive=3D2
> >
> > ## hdmi_ignore_edid
> > ##=C2=A0 =C2=A0 Enables the ignoring of EDID/display data
> > ##
> > #hdmi_ignore_edid=3D0xa5000080
> >
> > ## hdmi_edid_file
> > ##=C2=A0 =C2=A0 Read the EDID data from the edid.dat file instead of fr=
om the attached
> > ##=C2=A0 =C2=A0 device
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from attach=
ed device (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Read EDID data from edid.t=
xt file
> > ##
> > #hdmi_edid_file=3D1
> >
> > ## hdmi_ignore_edid_audio
> > ##=C2=A0 =C2=A0 Pretends all audio formats are unsupported by display. =
This means ALSA
> > ##=C2=A0 =C2=A0 will default to analogue.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (=
Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio formats =
are unsupported
> > ##
> > #hdmi_ignore_edid_audio=3D1
> >
> > ## hdmi_force_edid_audio
> > ##=C2=A0 =C2=A0 Pretends all audio formats are supported by display, al=
lowing
> > ##=C2=A0 =C2=A0 passthrough of DTS/AC3 even when not reported as suppor=
ted.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (=
Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend all audio formats =
are supported
> > ##
> > #hdmi_force_edid_audio=3D1
> >
> > ## hdmi_force_edid_3d
> > ##=C2=A0 =C2=A0 Pretends all CEA modes support 3D even when edid doesn'=
t indicate
> > ##=C2=A0 =C2=A0 support for them.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (=
Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend 3D mode is support=
ed
> > ##
> > #hdmi_force_edid_3d=3D1
> >
> > ## avoid_edid_fuzzy_match
> > ##=C2=A0 =C2=A0 Avoid fuzzy matching of modes described in edid.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use fuzzy matching (Defaul=
t)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Avoid fuzzy matching
> > ##
> > #avoid_edid_fuzzy_match=3D1
> >
> > ## hdmi_pixel_encoding
> > ##=C2=A0 =C2=A0 Force the pixel encoding mode.
> > ##=C2=A0 =C2=A0 By default it will use the mode requested from edid so =
shouldn't
> > ##=C2=A0 =C2=A0 need changing.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use EDID provided values (=
Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB limited=C2=A0 (16-235)
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 RGB full=C2=A0 =C2=A0 =C2=
=A0 ( 0-255)
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited (16-235)
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 YCbCr limited ( 0-255)
> > ##
> > #hdmi_pixel_encoding=3D1
> >
> > ## hdmi_group
> > ##=C2=A0 =C2=A0 Defines the HDMI type
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the preferred group re=
ported by the edid (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 CEA
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 DMT
> > ##
> > #hdmi_group=3D1
> >
> > ## hdmi_mode
> > ##=C2=A0 =C2=A0 defines screen resolution in CEA or DMT format
> > ##
> > ##=C2=A0 =C2=A0 H means 16:9 variant (of a normally 4:3 mode).
> > ##=C2=A0 =C2=A0 2x means pixel doubled (i.e. higher clock rate, with ea=
ch pixel repeated
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 twice)
> > ##=C2=A0 =C2=A0 4x means pixel quadrupled (i.e. higher clock rate, with=
 each pixel
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repeated four time=
s)
> > ##=C2=A0 =C2=A0 reduced blanking means fewer bytes are used for blankin=
g within the data
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 stream (i.e. lower clock rate, with fewer wasted bytes)
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 hdmi_group=3DCEA=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdmi_group=3DDMT
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 VGA=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 640x350=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x400=
=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 720x400=C2=A0 8=
5Hz
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 720p=C2=A0 60Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=
=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1080i 60Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=
=A0 72Hz
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=
=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 640x480=C2=A0 8=
5Hz
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=
=C2=A0 56Hz
> > ##=C2=A0 =C2=A0 9=C2=A0 =C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 H=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 6=
0Hz
> > ##=C2=A0 =C2=A0 10=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 72Hz
> > ##=C2=A0 =C2=A0 11=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 60Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 12=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 13=C2=A0 =C2=A0 =C2=A0 240p=C2=A0 60Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800x600=C2=A0 120Hz
> > ##=C2=A0 =C2=A0 14=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 848x480=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 15=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 2x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 43Hz=C2=A0=
 DO NOT USE
> > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 1080p 60Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 17=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
70Hz
> > ##=C2=A0 =C2=A0 18=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 19=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 =
85Hz
> > ##=C2=A0 =C2=A0 20=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1024x768=C2=A0 120H=
z
> > ##=C2=A0 =C2=A0 21=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1152x864=C2=A0 =
75Hz
> > ##=C2=A0 =C2=A0 22=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 23=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 =
60Hz
> > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 H=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 25=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 26=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 50Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x768=C2=A0 120Hz redu=
ced blanking
> > ##=C2=A0 =C2=A0 27=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 28=C2=A0 =C2=A0 =C2=A0 288p=C2=A0 50Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 29=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 30=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 2x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 31=C2=A0 =C2=A0 =C2=A0 1080p 50Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x800=C2=A0 120H=
z reduced blanking
> > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 1080p 24Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 33=C2=A0 =C2=A0 =C2=A0 1080p 25Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 34=C2=A0 =C2=A0 =C2=A0 1080p 30Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x960=C2=A0 120H=
z reduced blanking
> > ##=C2=A0 =C2=A0 35=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 60Hz
> > ##=C2=A0 =C2=A0 36=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 60Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 75Hz
> > ##=C2=A0 =C2=A0 37=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 85Hz
> > ##=C2=A0 =C2=A0 38=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 50Hz=C2=A0 4x H=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1280x1024 120Hz reduced b=
lanking
> > ##=C2=A0 =C2=A0 39=C2=A0 =C2=A0 =C2=A0 1080i 50Hz=C2=A0 reduced blankin=
g=C2=A0 =C2=A0 1360x768=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 40=C2=A0 =C2=A0 =C2=A0 1080i 100Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1360x768=C2=A0 120Hz reduc=
ed blanking
> > ##=C2=A0 =C2=A0 41=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050=C2=A0 =C2=
=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 42=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 60Hz
> > ##=C2=A0 =C2=A0 43=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 100Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 75Hz
> > ##=C2=A0 =C2=A0 44=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 85Hz
> > ##=C2=A0 =C2=A0 45=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 100Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1400x1050 120Hz reduced bl=
anking
> > ##=C2=A0 =C2=A0 46=C2=A0 =C2=A0 =C2=A0 1080i 120Hz=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 47=C2=A0 =C2=A0 =C2=A0 720p=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 48=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 75Hz
> > ##=C2=A0 =C2=A0 49=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 120Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 85Hz
> > ##=C2=A0 =C2=A0 50=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1440x900=C2=A0 120H=
z reduced blanking
> > ##=C2=A0 =C2=A0 51=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 120Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 60Hz
> > ##=C2=A0 =C2=A0 52=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 65Hz
> > ##=C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A0 576p=C2=A0 200Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 70Hz
> > ##=C2=A0 =C2=A0 54=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 75Hz
> > ##=C2=A0 =C2=A0 55=C2=A0 =C2=A0 =C2=A0 576i=C2=A0 200Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 85Hz
> > ##=C2=A0 =C2=A0 56=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1600x1200 120Hz red=
uced blanking
> > ##=C2=A0 =C2=A0 57=C2=A0 =C2=A0 =C2=A0 480p=C2=A0 240Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050=C2=A0 =C2=A0 =C2=
=A0 reduced blanking
> > ##=C2=A0 =C2=A0 58=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 60Hz
> > ##=C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A0 480i=C2=A0 240Hz H=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1680x1050 75Hz
> > ##=C2=A0 =C2=A0 60=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1680x1050 85Hz
> > ##=C2=A0 =C2=A0 61=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1680x1050 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 62=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1792x1344 60Hz
> > ##=C2=A0 =C2=A0 63=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1792x1344 75Hz
> > ##=C2=A0 =C2=A0 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1792x1344 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 65=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1856x1392 60Hz
> > ##=C2=A0 =C2=A0 66=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1856x1392 75Hz
> > ##=C2=A0 =C2=A0 67=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1856x1392 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 68=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1200=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 69=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1200 60Hz
> > ##=C2=A0 =C2=A0 70=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1200 75Hz
> > ##=C2=A0 =C2=A0 71=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1200 85Hz
> > ##=C2=A0 =C2=A0 72=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1200 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 73=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1440 60Hz
> > ##=C2=A0 =C2=A0 74=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1440 75Hz
> > ##=C2=A0 =C2=A0 75=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1920x1440 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 76=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2560x1600=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 77=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2560x1600 60Hz
> > ##=C2=A0 =C2=A0 78=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2560x1600 75Hz
> > ##=C2=A0 =C2=A0 79=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2560x1600 85Hz
> > ##=C2=A0 =C2=A0 80=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2560x1600 120Hz reduced blanking
> > ##=C2=A0 =C2=A0 81=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1366x768=C2=A0 60Hz
> > ##=C2=A0 =C2=A0 82=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1080p=C2=A0 =C2=A0 60Hz
> > ##=C2=A0 =C2=A0 83=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1600x900=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 84=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2048x1152=C2=A0 =C2=A0 =C2=A0 reduced blanking
> > ##=C2=A0 =C2=A0 85=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 720p=C2=A0 =C2=A0 =C2=A0 60Hz
> > ##=C2=A0 =C2=A0 86=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1366x768=C2=A0 =C2=A0 =C2=A0 =C2=A0 reduced blanking
> > ##
> > #hdmi_mode=3D1
> >
> > ## config_hdmi_boost
> > ##=C2=A0 =C2=A0 configure the signal strength of the HDMI interface.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Default)
> > ##=C2=A0 =C2=A0 1
> > ##=C2=A0 =C2=A0 2
> > ##=C2=A0 =C2=A0 3
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 Try if you have interferen=
ce issues with HDMI
> > ##=C2=A0 =C2=A0 5
> > ##=C2=A0 =C2=A0 6
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Maximum
> > ##
> > #config_hdmi_boost=3D0
> >
> > ## hdmi_ignore_cec_init
> > ##=C2=A0 =C2=A0 Doesn't sent initial active source message.=C2=A0 Avoid=
s bringing
> > ##=C2=A0 =C2=A0 (CEC enabled) TV out of standby and channel switch when=
 rebooting.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Doesn't sent initial activ=
e source message
> > ##
> > #hdmi_ignore_cec_init=3D1
> >
> > ## hdmi_ignore_cec
> > ##=C2=A0 =C2=A0 Pretends CEC is not supported at all by TV.
> > ##=C2=A0 =C2=A0 No CEC functions will be supported.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Normal behaviour (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pretend CEC is not support=
ed by TV
> > ##
> > #hdmi_ignore_cec=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 Overscan Video Settings
> > #######################################################################=
#########
> >
> > ## overscan_left
> > ##=C2=A0 =C2=A0 Number of pixels to skip on left
> > ##
> > #overscan_left=3D0
> >
> > ## overscan_right
> > ##=C2=A0 =C2=A0 Number of pixels to skip on right
> > ##
> > #overscan_right=3D0
> >
> > ## overscan_top
> > ##=C2=A0 =C2=A0 Number of pixels to skip on top
> > ##
> > #overscan_top=3D0
> >
> > ## overscan_bottom
> > ##=C2=A0 =C2=A0 Number of pixels to skip on bottom
> > ##
> > #overscan_bottom=3D0
> >
> > ## disable_overscan
> > ##=C2=A0 =C2=A0 Set to 1 to disable overscan
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Enabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Overscan Disabled
> > ##
> > #disable_overscan=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 Framebuffer Video Settings
> > #######################################################################=
#########
> >
> > ## framebuffer_width
> > ##=C2=A0 =C2=A0 Console framebuffer width in pixels. Default is display=
 width minus
> > ##=C2=A0 =C2=A0 overscan.
> > ##
> > #framebuffer_width=3D0
> >
> > ## framebuffer_height
> > ##=C2=A0 =C2=A0 Console framebuffer height in pixels. Default is displa=
y height minus
> > ##=C2=A0 =C2=A0 overscan.
> > ##
> > #framebuffer_height=3D0
> >
> > ## framebuffer_depth
> > ##=C2=A0 =C2=A0 Console framebuffer depth in bits per pixel.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 Valid, but default RGB pal=
ette makes an unreadable screen
> > ##=C2=A0 =C2=A0 16=C2=A0 =C2=A0 =C2=A0 (Default)
> > ##=C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 Looks better but has corruption =
issues as of 2012/06/15
> > ##=C2=A0 =C2=A0 32=C2=A0 =C2=A0 =C2=A0 Has no corruption issues but nee=
ds framebuffer_ignore_alpha=3D1
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and shows the wrong =
colors as of 2012/06/15
> > ##
> > #framebuffer_depth=3D16
> >
> > ## framebuffer_ignore_alpha
> > ##=C2=A0 =C2=A0 Set to 1 to disable alpha channel. Helps with 32bit.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Alpha Channel (Defa=
ult)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Alpha Channel
> > ##
> > #framebuffer_ignore_alpha=3D0
> >
> > #######################################################################=
#########
> > ##=C2=A0 General Video Settings
> > #######################################################################=
#########
> >
> > ## display_rotate
> > ##=C2=A0 =C2=A0 Rotate the display clockwise or flip the display.
> > ##=C2=A0 =C2=A0 The 90 and 270 degrees rotation options require additio=
nal memory on GPU,
> > ##=C2=A0 =C2=A0 so won't work with the 16M GPU split.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 0 degrees (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 90 degrees
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 180 degrees
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 270 degrees
> > ##=C2=A0 =C2=A0 0x10000=C2=A0 Horizontal flip
> > ##=C2=A0 =C2=A0 0x20000=C2=A0 Vertical flip
> > ##
> > #display_rotate=3D0
> >
> > ## dispmanx_offline
> > ##=C2=A0 =C2=A0 Set to "1" to enable offline compositing
> > ##
> > ##=C2=A0 =C2=A0 Default 0
> > ##
> > #dispmanx_offline=3D0
> >
> > #######################################################################=
#########
> > ##=C2=A0 Licensed Codecs
> > ##
> > ##=C2=A0 Hardware decoding of additional codecs can be enabled by purch=
asing a
> > ##=C2=A0 license that is locked to the CPU serial number of your Raspbe=
rry Pi.
> > ##
> > ##=C2=A0 Up to 8 licenses per CODEC can be specified as a comma seperat=
ed list.
> > ##
> > #######################################################################=
#########
> >
> > ## decode_MPG2
> > ##=C2=A0 =C2=A0 License key to allow hardware MPEG-2 decoding.
> > ##
> > #decode_MPG2=3D0x12345678
> >
> > ## decode_WVC1
> > ##=C2=A0 =C2=A0 License key to allow hardware VC-1 decoding.
> > ##
> > #decode_WVC1=3D0x12345678
> >
> > #######################################################################=
#########
> > ##=C2=A0 Camera Settings
> > #######################################################################=
#########
> >
> > ## start_x
> > ##=C2=A0 =C2=A0 Set to "1" to enable the camera module.
> > ##
> > ##=C2=A0 =C2=A0 Enabling the camera requires gpu_mem option to be speci=
fied with a value
> > ##=C2=A0 =C2=A0 of at least 128.
> > ##
> > ##=C2=A0 =C2=A0 Default 0
> > ##
> > start_x=3D1
> >
> > ## disable_camera_led
> > ##=C2=A0 =C2=A0 Turn off the red camera led when recording video or tak=
ing a still
> > ##=C2=A0 =C2=A0 picture.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED enabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 LED disabled
> > ##
> > #disable_camera_led=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 Test Settings
> > #######################################################################=
#########
> >
> > ## test_mode
> > ##=C2=A0 =C2=A0 Enable test sound/image during boot for manufacturing t=
est.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable Test Mod (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable Test Mode
> > ##
> > #test_mode=3D0
> >
> > #######################################################################=
#########
> > ##=C2=A0 Memory Settings
> > #######################################################################=
#########
> >
> > ## disable_l2cache
> > ##=C2=A0 =C2=A0 Disable arm access to GPU's L2 cache. Needs correspondi=
ng L2 disabled
> > ##=C2=A0 =C2=A0 kernel.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable L2 Cache (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable L2 cache
> > ##
> > #disable_l2cache=3D0
> >
> > ## gpu_mem
> > ##=C2=A0 =C2=A0 GPU memory allocation in MB for all board revisions.
> > ##
> > ##=C2=A0 =C2=A0 Default 64
> > ##
> > #gpu_mem=3D128
> >
> > ## gpu_mem_256
> > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 256MB board revision.
> > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > ##
> > #gpu_mem_256=3D192
> >
> > ## gpu_mem_512
> > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 512MB board revision.
> > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > ##
> > #gpu_mem_512=3D448
> >
> > ## gpu_mem_1024
> > ##=C2=A0 =C2=A0 GPU memory allocation in MB for 1024MB board revision.
> > ##=C2=A0 =C2=A0 This option overrides gpu_mem.
> > ##
> > #gpu_mem_1024=3D944
> >
> > ## disable_pvt
> > ##=C2=A0 =C2=A0 Disable adjusting the refresh rate of RAM every 500ms
> > ##=C2=A0 =C2=A0 (measuring RAM temparature).
> > ##
> > #disable_pvt=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 CMA - Dynamic Memory Split
> > ##
> > ##=C2=A0 CMA enables dynamic management of the ARM and GPU memory split=
 at runtime.
> > ##
> > ##=C2=A0 The following options need to be in cmdline.txt for CMA to wor=
k:
> > ##=C2=A0 =C2=A0 coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> > ##
> > #######################################################################=
#########
> >
> > ## cma_lwm
> > ##=C2=A0 =C2=A0 When GPU has less than cma_lwm (low water mark) memory =
available it
> > ##=C2=A0 =C2=A0 will request some from ARM.
> > ##
> > #cma_lwm=3D16
> >
> > ## cma_hwm
> > ##=C2=A0 =C2=A0 When GPU has more than cma_hwm (high water mark) memory=
 available it
> > ##=C2=A0 =C2=A0 will release some to ARM.
> > ##
> > #cma_hwm=3D32
> >
> > #######################################################################=
#########
> > ##=C2=A0 Boot Option Settings
> > #######################################################################=
#########
> >
> > ## disable_commandline_tags
> > ##=C2=A0 =C2=A0 Stop start.elf from filling in ATAGS (memory from 0x100=
) before
> > ##=C2=A0 =C2=A0 launching kernel
> > ##
> > #disable_commandline_tags=3D0
> >
> > ## cmdline (string)
> > ##=C2=A0 =C2=A0 Command line parameters. Can be used instead of cmdline=
.txt file
> > ##
> > #cmdline=3D""
> >
> > ## kernel (string)
> > ##=C2=A0 =C2=A0 Alternative name to use when loading kernel.
> > ##
> > #kernel=3D""
> >
> > ## kernel_address
> > ##=C2=A0 =C2=A0 Address to load kernel.img file at
> > ##
> > #kernel_address=3D0x00000000
> >
> > ## kernel_old
> > ##=C2=A0 =C2=A0 Support loading old kernels
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disabled (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Load kernel at address 0x0=
0000000
> > ##
> > #kernel_old=3D1
> >
> > ## ramfsfile (string)
> > ##=C2=A0 =C2=A0 ramfs file to load
> > ##
> > #ramfsfile=3D""
> >
> > ## ramfsaddr
> > ##=C2=A0 =C2=A0 Address to load ramfs file at
> > ##
> > #ramfsaddr=3D0x00000000
> >
> > ## initramfs (string address)
> > ##=C2=A0 =C2=A0 ramfs file and address to load it at (it's like ramfsfi=
le+ramfsaddr in
> > ##=C2=A0 =C2=A0 one option).
> > ##
> > ##=C2=A0 =C2=A0 NOTE: this option uses different syntax than all other =
options - you
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 should not use "=3D" character her=
e.
> > ##
> > #initramfs initramf.gz 0x00800000
> >
> > ## device_tree_address
> > ##=C2=A0 =C2=A0 Address to load device_tree at
> > ##
> > #device_tree_address=3D0x00000000
> >
> > ## init_uart_baud
> > ##=C2=A0 =C2=A0 Initial uart baud rate.
> > ##
> > ##=C2=A0 =C2=A0 Default 115200
> > ##
> > #init_uart_baud=3D115200
> >
> > ## init_uart_clock
> > ##=C2=A0 =C2=A0 Initial uart clock.
> > ##
> > ##=C2=A0 =C2=A0 Default 3000000 (3MHz)
> > ##
> > #init_uart_clock=3D3000000
> >
> > ## init_emmc_clock
> > ##=C2=A0 =C2=A0 Initial emmc clock, increasing this can speedup your SD=
-card.
> > ##
> > ##=C2=A0 =C2=A0 Default 100000000 (100mhz)
> > ##
> > #init_emmc_clock=3D100000000
> >
> > ## boot_delay
> > ##=C2=A0 =C2=A0 Wait for a given number of seconds in start.elf before =
loading
> > ##=C2=A0 =C2=A0 kernel.img.
> > ##
> > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > ##
> > ##=C2=A0 =C2=A0 Default 1
> > ##
> > #boot_delay=3D0
> >
> > ## boot_delay_ms
> > ##=C2=A0 =C2=A0 Wait for a given number of milliseconds in start.elf be=
fore loading
> > ##=C2=A0 =C2=A0 kernel.img.
> > ##
> > ##=C2=A0 =C2=A0 delay =3D (1000 * boot_delay) + boot_delay_ms
> > ##
> > ##=C2=A0 =C2=A0 Default 0
> > ##
> > #boot_delay_ms=3D0
> >
> > ## avoid_safe_mode
> > ##=C2=A0 =C2=A0 Adding a jumper between pins 5 & 6 of P1 enables a reco=
very Safe Mode.
> > ##=C2=A0 =C2=A0 If pins 5 & 6 are used for connecting to external devic=
es (e.g. GPIO),
> > ##=C2=A0 =C2=A0 then this setting can be used to ensure Safe Mode is no=
t triggered.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Respect Safe Mode input (D=
efault)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ignore Safe Mode input
> > ##
> > #avoid_safe_mode=3D1
> >
> > ## disable_splash
> > ##=C2=A0 =C2=A0 Avoids the rainbow splash screen on boot.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen enabled (Def=
ault)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Splash screen disabled
> > ##
> > #disable_splash=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 Overclocking Settings
> > ##
> > ##=C2=A0 ARM, SDRAM and GPU each have their own PLLs and can have unrel=
ated
> > ##=C2=A0 frequencies.
> > ##
> > ##=C2=A0 The GPU core, h264, v3d and isp share a PLL, so need to have r=
elated
> > ##=C2=A0 frequencies.
> > ##=C2=A0 pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)
> > ##=C2=A0 gpu_freq =3D pll_freq / [even number]
> > ##
> > ##=C2=A0 The effective gpu_freq is automatically rounded to nearest eve=
n integer, so
> > ##=C2=A0 asking for core_freq =3D 500 and gpu_freq =3D 300 will result =
in divisor of
> > ##=C2=A0 2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> > ##
> > ##
> > ##=C2=A0 Standard Profiles:
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 arm_fr=
eq=C2=A0 =C2=A0 core_freq=C2=A0 =C2=A0 sdram_freq=C2=A0 =C2=A0 over_voltage
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 None=C2=A0 =C2=A0 =C2=A0 =C2=A0 700=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 250=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0
> > ##=C2=A0 =C2=A0 Modest=C2=A0 =C2=A0 =C2=A0 800=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0
> > ##=C2=A0 =C2=A0 Medium=C2=A0 =C2=A0 =C2=A0 900=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 333=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2
> > ##=C2=A0 =C2=A0 High=C2=A0 =C2=A0 =C2=A0 =C2=A0 950=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 6
> > ##=C2=A0 =C2=A0 Turbo=C2=A0 =C2=A0 =C2=A0 =C2=A0 1000=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 500=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 6
> > ##
> > #######################################################################=
#########
> >
> > ## force_turbo
> > ##=C2=A0 =C2=A0 Control the kernel "ondemand" governor. It has no effec=
t if no overclock
> > ##=C2=A0 =C2=A0 settings are specified.
> > ##=C2=A0 =C2=A0 May set warrany bit.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable dynamic clocks and =
voltage for the ARM core, GPU core and
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SDRAM (Default).
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h264=
_freq, v3d_freq and isp_freq is ignored.
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Disable dynamic clocks and=
 voltage for the ARM core, GPU core
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and SDRAM.
> > ##=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Overclocking of h264=
_freq, v3d_freq and isp_freq is allowed.
> > ##
> > #force_turbo=3D0
> >
> > ## initial_turbo
> > ##=C2=A0 =C2=A0 Enables turbo mode from boot for the given value in sec=
onds (up to 60)
> > ##=C2=A0 =C2=A0 or until cpufreq sets a frequency. Can help with sdcard=
 corruption if
> > ##=C2=A0 =C2=A0 overclocked.
> > ##
> > ##=C2=A0 =C2=A0 Default 0
> > ##
> > #initial_turbo=3D0
> >
> > ## temp_limit
> > ##=C2=A0 =C2=A0 Overheat protection. Sets clocks and voltages to defaul=
t when the SoC
> > ##=C2=A0 =C2=A0 reaches this Celsius value.
> > ##=C2=A0 =C2=A0 Setting this higher than default voids warranty.
> > ##
> > ##=C2=A0 =C2=A0 Default 85
> > ##
> > #temp_limit=3D85
> >
> > ## arm_freq
> > ##=C2=A0 =C2=A0 Frequency of ARM in MHz.
> > ##
> > ##=C2=A0 =C2=A0 Default 700.
> > ##
> > #arm_freq=3D700
> >
> > ## arm_freq_min
> > ##=C2=A0 =C2=A0 Minimum frequency of ARM in MHz (used for dynamic clock=
ing).
> > ##
> > ##=C2=A0 =C2=A0 Default 700.
> > ##
> > #arm_freq_min=3D700
> >
> > ## gpu_freq
> > ##=C2=A0 =C2=A0 Sets core_freq, h264_freq, isp_freq, v3d_freq together.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #gpu_freq=3D250
> >
> > ## core_freq
> > ##=C2=A0 =C2=A0 Frequency of GPU processor core in MHz. It has an impac=
t on ARM
> > ##=C2=A0 =C2=A0 performance since it drives L2 cache.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #core_freq=3D250
> >
> > ## core_freq_min
> > ##=C2=A0 =C2=A0 Minimum frequency of GPU processor core in MHz (used fo=
r dynamic
> > ##=C2=A0 =C2=A0 clocking). It has an impact on ARM performance since it=
 drives L2 cache.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #core_freq_min=3D250
> >
> > ## h264_freq
> > ##=C2=A0 =C2=A0 Frequency of hardware video block in MHz.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #h264_freq=3D250
> >
> > ## isp_freq
> > ##=C2=A0 =C2=A0 Frequency of image sensor pipeline block in MHz.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #isp_freq=3D250
> >
> > ## v3d_freq
> > ##=C2=A0 =C2=A0 Frequency of 3D block in MHz.
> > ##
> > ##=C2=A0 =C2=A0 Default 250.
> > ##
> > #v3d_freq=3D250
> >
> > ## sdram_freq
> > ##=C2=A0 =C2=A0 Frequency of SDRAM in MHz.
> > ##
> > ##=C2=A0 =C2=A0 Default 400.
> > ##
> > #sdram_freq=3D400
> >
> > ## sdram_freq_min
> > ##=C2=A0 =C2=A0 Minimum frequency of SDRAM in MHz (used for dynamic clo=
cking).
> > ##
> > ##=C2=A0 =C2=A0 Default 400.
> > ##
> > #sdram_freq_min=3D400
> >
> > ## avoid_pwm_pll
> > ##=C2=A0 =C2=A0 Don't dedicate a pll to PWM audio. This will reduce ana=
logue audio
> > ##=C2=A0 =C2=A0 quality slightly. The spare PLL allows the core_freq to=
 be set
> > ##=C2=A0 =C2=A0 independently from the rest of the gpu allowing more co=
ntrol over
> > ##=C2=A0 =C2=A0 overclocking.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linked core_freq (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 Unlinked core_freq
> > ##
> > #avoid_pwm_pll=3D1
> >
> > #######################################################################=
#########
> > ##=C2=A0 Voltage Settings
> > #######################################################################=
#########
> >
> > ## current_limit_override
> > ##=C2=A0 =C2=A0 Disables SMPS current limit protection. Can help if you=
 are currently
> > ##=C2=A0 =C2=A0 hitting a reboot failure when overclocking too high.
> > ##=C2=A0 =C2=A0 May set warrany bit.
> > ##
> > #current_limit_override=3D0x5A000020
> >
> > ## over_voltage
> > ##=C2=A0 =C2=A0 ARM/GPU core voltage adjust.
> > ##=C2=A0 =C2=A0 May set warrany bit.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_tu=
rbo=3D1 or current_limit_override)
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires forc=
e_turbo=3D1 or current_limit_override)
> > ##
> > #over_voltage=3D0
> >
> > ## over_voltage_min
> > ##=C2=A0 =C2=A0 Minimum ARM/GPU core voltage adjust (used for dynamic c=
locking).
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V (requires force_tu=
rbo=3D1)
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V (requires forc=
e_turbo=3D1)
> > ##
> > #over_voltage_min=3D0
> >
> > ## over_voltage_sdram
> > ##=C2=A0 =C2=A0 Sets over_voltage_sdram_c, over_voltage_sdram_i, over_v=
oltage_sdram_p
> > ##=C2=A0 =C2=A0 together
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > ##
> > #over_voltage_sdram=3D0
> >
> > ## over_voltage_sdram_c
> > ##=C2=A0 =C2=A0 SDRAM controller voltage adjust.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > ##
> > #over_voltage_sdram_c=3D0
> >
> > ## over_voltage_sdram_i
> > ##=C2=A0 =C2=A0 SDRAM I/O voltage adjust.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > ##
> > #over_voltage_sdram_i=3D0
> >
> > ## over_voltage_sdram_p
> > ##=C2=A0 =C2=A0 SDRAM phy voltage adjust.
> > ##
> > ##=C2=A0 =C2=A0 Value=C2=A0 =C2=A0 Description
> > ##=C2=A0 =C2=A0 -------------------------------------------------------=
------------------
> > ##=C2=A0 =C2=A0 -16=C2=A0 =C2=A0 =C2=A0 0.8=C2=A0 V
> > ##=C2=A0 =C2=A0 -15=C2=A0 =C2=A0 =C2=A0 0.825 V
> > ##=C2=A0 =C2=A0 -14=C2=A0 =C2=A0 =C2=A0 0.85=C2=A0 V
> > ##=C2=A0 =C2=A0 -13=C2=A0 =C2=A0 =C2=A0 0.875 V
> > ##=C2=A0 =C2=A0 -12=C2=A0 =C2=A0 =C2=A0 0.9=C2=A0 V
> > ##=C2=A0 =C2=A0 -11=C2=A0 =C2=A0 =C2=A0 0.925 V
> > ##=C2=A0 =C2=A0 -10=C2=A0 =C2=A0 =C2=A0 0.95=C2=A0 V
> > ##=C2=A0 =C2=A0 -9=C2=A0 =C2=A0 =C2=A0 0.975 V
> > ##=C2=A0 =C2=A0 -8=C2=A0 =C2=A0 =C2=A0 1.0=C2=A0 V
> > ##=C2=A0 =C2=A0 -7=C2=A0 =C2=A0 =C2=A0 1.025 V
> > ##=C2=A0 =C2=A0 -6=C2=A0 =C2=A0 =C2=A0 1.05=C2=A0 V
> > ##=C2=A0 =C2=A0 -5=C2=A0 =C2=A0 =C2=A0 1.075 V
> > ##=C2=A0 =C2=A0 -4=C2=A0 =C2=A0 =C2=A0 1.1=C2=A0 V
> > ##=C2=A0 =C2=A0 -3=C2=A0 =C2=A0 =C2=A0 1.125 V
> > ##=C2=A0 =C2=A0 -2=C2=A0 =C2=A0 =C2=A0 1.15=C2=A0 V
> > ##=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 =C2=A0 1.175 V
> > ##=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.2=C2=A0 V (Default)
> > ##=C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.225 V
> > ##=C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.25=C2=A0 V
> > ##=C2=A0 =C2=A0 3=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.275 V
> > ##=C2=A0 =C2=A0 4=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.3=C2=A0 V
> > ##=C2=A0 =C2=A0 5=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.325 V
> > ##=C2=A0 =C2=A0 6=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.35=C2=A0 V
> > ##=C2=A0 =C2=A0 7=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.375 V
> > ##=C2=A0 =C2=A0 8=C2=A0 =C2=A0 =C2=A0 =C2=A0 1.4=C2=A0 V
> > ##
> > #over_voltage_sdram_p=3D0
> >
> > #######################################################################=
#########
> > ##=C2=A0 USB Power
> > #######################################################################=
#########
> >
> > ## max_usb_current
> > ##=C2=A0 =C2=A0 When set to 1, change the output current limit (for all=
 4 USB
> > ##=C2=A0 =C2=A0 ports combined) from 600mA to double that, 1200mA.
> > ##
> > ##=C2=A0 =C2=A0 This option is not available for Model A/B boards.
> > ##
> > ##=C2=A0 =C2=A0 Default 0.
> > ##
> > #max_usb_current=3D0
> >
> > #######################################################################=
#########
> > ##=C2=A0 Base Device Tree Parameters
> > #######################################################################=
#########
> >
> > ## audio
> > ##=C2=A0 =C2=A0 Enable the onboard ALSA audio
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Daudio=3Doff
> >
> > ## i2c_arm
> > ##=C2=A0 =C2=A0 Enable the ARM's i2c interface
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Di2c_arm=3Doff
> >
> > ## i2c_vc
> > ##=C2=A0 =C2=A0 Enable the i2c interface
> > ##
> > ##=C2=A0 =C2=A0 Usually reserved for the VideoCore processor
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Di2c_vc=3Doff
> >
> > ## i2c_arm_baudrate
> > ##=C2=A0 =C2=A0 Set the baudrate of the ARM's i2c interface
> > ##
> > ##=C2=A0 =C2=A0 Default 100000.
> > ##
> > #dtparam=3Di2c_arm_baudrate=3D100000
> >
> > ## i2c_vc_baudrate
> > ##=C2=A0 =C2=A0 Set the baudrate of the VideoCore i2c interface
> > ##
> > ##=C2=A0 =C2=A0 Default 100000.
> > ##
> > #dtparam=3Di2c_vc_baudrate=3D100000
> >
> > ## i2s
> > ##=C2=A0 =C2=A0 Set to "on" to enable the i2s interface
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Di2s=3Doff
> >
> > ## spi
> > ##=C2=A0 =C2=A0 Set to "on" to enable the spi interfaces
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Dspi=3Doff
> >
> > ## random
> > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware random
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Drandom=3Doff
> >
> > ## uart0
> > ##=C2=A0 =C2=A0 Set to "off" to disable uart0
> > ##
> > ##=C2=A0 =C2=A0 Default on.
> > ##
> > #dtparam=3Duart0=3Don
> >
> > ## watchdog
> > ##=C2=A0 =C2=A0 Set to "on" to enable the hardware watchdog
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Dwatchdog=3Doff
> >
> > ## act_led_trigger
> > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > ##
> > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > ##
> > ##=C2=A0 =C2=A0 Default mmc.
> > ##
> > #dtparam=3Dact_led_trigger=3Dmmc
> >
> > ## act_led_activelow
> > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Dact_led_activelow=3Doff
> >
> > ## act_led_gpio
> > ##=C2=A0 =C2=A0 Set which GPIO to use for the activity LED
> > ##
> > ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> > ##
> > ##=C2=A0 =C2=A0 Default 16 on a non-Plus board, 47 on a Plus or Pi 2.
> > ##
> > #dtparam=3Dact_led_gpio=3D47
> >
> > ## pwr_led_trigger
> > ##=C2=A0 =C2=A0 Choose which activity the LED tracks.
> > ##
> > ##=C2=A0 =C2=A0 Use "heartbeat" for a nice load indicator.
> > ##
> > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > ##
> > ##=C2=A0 =C2=A0 Default mmc.
> > ##
> > #dtparam=3Dpwr_led_trigger=3Dmmc
> >
> > ## pwr_led_activelow
> > ##=C2=A0 =C2=A0 Set to "on" to invert the sense of the LED
> > ##
> > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > ##
> > ##=C2=A0 =C2=A0 Default off.
> > ##
> > #dtparam=3Dpwr_led_activelow=3Doff
> >
> > ## pwr_led_gpio
> > ##=C2=A0 =C2=A0 Set which GPIO to use for the PWR LED
> > ##
> > ##=C2=A0 =C2=A0 In case you want to connect it to an external device
> > ##
> > ##=C2=A0 =C2=A0 Not available on Model A/B boards.
> > ##
> > ##=C2=A0 =C2=A0 Default 35.
> > ##
> > #dtparam=3Dpwr_led_gpio=3D35
> > # Enable SPI bus
> > dtparam=3Dspi=3Don
> > # Enable UART
> > enable_uart=3D1
> > # Enable VC4 Graphics
> > dtoverlay=3Dvc4-kms-v3d
> > # Enable Sony RaspberryPi Camera(imx219)
> > dtoverlay=3Dimx219
> > # Enable USB host mode
> > dtoverlay=3Ddwc2,dr_mode=3Dhost
> > # Enable CAN
> > dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
> >
> > # Enable WM8960
> > dtoverlay=3Dwm8960-soundcard
> >
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Any help will be appreciated!
> >
> >
>
>=20
>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#60532): https://lists.yoctoproject.org/g/yocto/message/=
60532
Mute This Topic: https://lists.yoctoproject.org/mt/99985319/7732448
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [oosman3@yahoo.co=
m]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_455806_450064069.1688659443384
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpd4b22c50yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I think that is the problem,=
 I don't know which wifi is used on the board. How do I find out what wifi =
driver to load?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp629225d6yahoo_quoted_9484220179" class=3D"ydp62=
9225d6yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, July 6, 2023 at 10:19:50 AM CDT, Khem Raj =
&lt;raj.khem@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On Thu, Jul 6, 2023 at 8:06=E2=80=AFA=
M Oosman Saeed &lt;<a href=3D"mailto:oosman3@yahoo.com" rel=3D"nofollow" ta=
rget=3D"_blank">oosman3@yahoo.com</a>&gt; wrote:<br></div><div dir=3D"ltr">=
&gt;<br></div><div dir=3D"ltr">&gt; root@raspberrypi4-64:~# ifconfig -a<br>=
</div><div dir=3D"ltr">&gt; eth0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt;&nbsp; mtu 1500<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp;=
 &nbsp;  inet 192.168.7.8&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.1=
68.7.255<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  ether d=
c:a6:32:e3:eb:fe&nbsp; txqueuelen 1000&nbsp; (Ethernet)<br></div><div dir=
=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX packets 962&nbsp; bytes 117191=
 (114.4 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX =
errors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=
=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX packets 1766&nbsp; bytes 29957=
8 (292.5 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX=
 errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br>=
</div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; lo: flags=3D73&l=
t;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br></div><div dir=3D"ltr">&gt;&nb=
sp; &nbsp; &nbsp; &nbsp;  inet 127.0.0.1&nbsp; netmask 255.0.0.0<br></div><=
div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  inet6 ::1&nbsp; prefixlen =
128&nbsp; scopeid 0x10&lt;host&gt;<br></div><div dir=3D"ltr">&gt;&nbsp; &nb=
sp; &nbsp; &nbsp;  loop&nbsp; txqueuelen 1000&nbsp; (Local Loopback)<br></d=
iv><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  RX packets 12567&nbsp;=
 bytes 780277 (761.9 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp=
; &nbsp;  RX errors 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></d=
iv><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp; &nbsp;  TX packets 12567&nbsp;=
 bytes 780277 (761.9 KiB)<br></div><div dir=3D"ltr">&gt;&nbsp; &nbsp; &nbsp=
; &nbsp;  TX errors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; coll=
isions 0<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt;<br><=
/div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">OK in your kerne=
l module list I dont see any kmods for wifi being loaded<br></div><div dir=
=3D"ltr">so it might be that its not enabling them in rootfs for some reaso=
n ?<br></div><div dir=3D"ltr">which wifi is used on your board ?<br></div><=
div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&gt; =
On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" rel=3D"nofollow" target=3D"_blank">raj.khem@gmail.com=
</a>&gt; wrote:<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&g=
t;<br></div><div dir=3D"ltr">&gt; what does ifconfig -a say<br></div><div d=
ir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; On Thu, Jul 6, 2023 at 6:25=
=E2=80=AFAM oosman3 via lists.yoctoproject.org<br></div><div dir=3D"ltr">&g=
t; &lt;oosman3=3Dyahoo.com@lists.yoctoproject.org&gt; wrote:<br></div><div =
dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; I am building my =
raspberrypi wic image using the layer meta-raspberrypi.<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; I am using a raspibe=
rrypi compute module 4 with wifi chip.<br></div><div dir=3D"ltr">&gt; &gt;<=
br></div><div dir=3D"ltr">&gt; &gt; I just can't seem to get the wlan0 devi=
ce to appear when I type ifconfig.<br></div><div dir=3D"ltr">&gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D=
"ltr">&gt; &gt; root@raspberrypi4-64:~# ifconfig<br></div><div dir=3D"ltr">=
&gt; &gt; eth0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mt=
u 1500<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet =
192.168.7.8&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.7.255<br></=
div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; ether dc:a6:32:e3=
:eb:fe&nbsp; txqueuelen 1000&nbsp; (Ethernet)<br></div><div dir=3D"ltr">&gt=
; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX packets 407&nbsp; bytes 62442 (60.9 Ki=
B)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors=
 0&nbsp; dropped 0&nbsp; overruns 0&nbsp; frame 0<br></div><div dir=3D"ltr"=
>&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX packets 567&nbsp; bytes 94749 (92.=
5 KiB)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX er=
rors 0&nbsp; dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0<br></d=
iv><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; lo: flags=
=3D73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536<br></div><div dir=3D"ltr">=
&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1&nbsp; netmask 255.0.0.0=
<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1&n=
bsp; prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;<br></div><div dir=3D"ltr"=
>&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; loop&nbsp; txqueuelen 1000&nbsp; (Loc=
al Loopback)<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp;=
 RX packets 4047&nbsp; bytes 252037 (246.1 KiB)<br></div><div dir=3D"ltr">&=
gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; dropped 0&nbsp; overr=
uns 0&nbsp; frame 0<br></div><div dir=3D"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp; TX packets 4047&nbsp; bytes 252037 (246.1 KiB)<br></div><div dir=3D=
"ltr">&gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0&nbsp; dropped 0 over=
runs 0&nbsp; carrier 0&nbsp; collisions 0<br></div><div dir=3D"ltr">&gt; &g=
t; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt=
; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &=
gt; Here is a filtered output of my lsmod command<br></div><div dir=3D"ltr"=
>&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D=
"ltr">&gt; &gt; root@raspberrypi4-64:~# lsmod<br></div><div dir=3D"ltr">&gt=
; &gt; Module&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 Size&nbsp; Used by<br></div><div dir=3D"ltr">&gt; &gt; 88XXau&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2265088&nbsp; 0<br></div><div dir=3D"lt=
r">&gt; &gt; cmac&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 16384&nbsp; 3<br></div><div dir=3D"ltr">&gt; &gt; algif_hash&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1<br></div><div dir=3D"ltr">&gt=
; &gt; aes_arm64&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp=
; 3<br></div><div dir=3D"ltr">&gt; &gt; aes_generic&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 36864&nbsp; 1 aes_arm64<br></div><div dir=3D"ltr">&gt; &g=
t; algif_skcipher&nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1<br></div><div di=
r=3D"ltr">&gt; &gt; af_alg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 28672&nbsp; 6 algif_hash,algif_skcipher<br></div><div dir=3D"ltr">&g=
t; &gt; bnep&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
24576&nbsp; 2<br></div><div dir=3D"ltr">&gt; &gt; 8021q&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 0<br></div><div dir=
=3D"ltr">&gt; &gt; garp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 16384&nbsp; 1 8021q<br></div><div dir=3D"ltr">&gt; &gt; stp&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp=
; 1 garp<br></div><div dir=3D"ltr">&gt; &gt; llc&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 2 stp,garp<br></div>=
<div dir=3D"ltr">&gt; &gt; imx219&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 24576&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; mcp251x&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br></div>=
<div dir=3D"ltr">&gt; &gt; spidev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; can_dev&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 mcp251x<b=
r></div><div dir=3D"ltr">&gt; &gt; hci_uart&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 45056&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; btbcm&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 1 h=
ci_uart<br></div><div dir=3D"ltr">&gt; &gt; v3d&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 90112&nbsp; 1<br></div><div dir=
=3D"ltr">&gt; &gt; bluetooth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 58572=
8&nbsp; 26 hci_uart,btbcm,bnep<br></div><div dir=3D"ltr">&gt; &gt; i2c_mux_=
pinctrl&nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">=
&gt; &gt; gpu_sched&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&n=
bsp; 1 v3d<br></div><div dir=3D"ltr">&gt; &gt; snd_soc_simple_card&nbsp; &n=
bsp; 20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; snd_soc_simple_card_=
utils&nbsp; &nbsp; 28672&nbsp; 1 snd_soc_simple_card<br></div><div dir=3D"l=
tr">&gt; &gt; drm_shmem_helper&nbsp; &nbsp; &nbsp; 24576&nbsp; 1 v3d<br></d=
iv><div dir=3D"ltr">&gt; &gt; raspberrypi_hwmon&nbsp; &nbsp; &nbsp; 16384&n=
bsp; 0<br></div><div dir=3D"ltr">&gt; &gt; i2c_mux&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; 1 i2c_mux_pinctrl<br></div><div =
dir=3D"ltr">&gt; &gt; i2c_brcmstb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; bcm2835_unicam&nbsp; &nbs=
p; &nbsp; &nbsp; 53248&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; dwc2&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 192512&nbsp; 0<b=
r></div><div dir=3D"ltr">&gt; &gt; roles&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 1 dwc2<br></div><div dir=3D"ltr">&g=
t; &gt; v4l2_dv_timings&nbsp; &nbsp; &nbsp; &nbsp; 40960&nbsp; 1 bcm2835_un=
icam<br></div><div dir=3D"ltr">&gt; &gt; v4l2_fwnode&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; 24576&nbsp; 2 imx219,bcm2835_unicam<br></div><div dir=3D=
"ltr">&gt; &gt; ecdh_generic&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp; =
2 bluetooth<br></div><div dir=3D"ltr">&gt; &gt; v4l2_async&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 3 v4l2_fwnode,imx219,bcm2835_unicam<br=
></div><div dir=3D"ltr">&gt; &gt; ecc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 36864&nbsp; 1 ecdh_generic<br></div><div di=
r=3D"ltr">&gt; &gt; libaes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 16384&nbsp; 3 aes_arm64,bluetooth,aes_generic<br></div><div dir=3D"l=
tr">&gt; &gt; spi_bcm2835&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20480&nb=
sp; 0<br></div><div dir=3D"ltr">&gt; &gt; snd_soc_bcm2835_i2s&nbsp; &nbsp; =
20480&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; bcm2835_codec&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 49152&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; rp=
ivid_hevc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 49152&nbsp; 0<br></div><=
div dir=3D"ltr">&gt; &gt; bcm2835_v4l2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 45=
056&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; bcm2835_isp&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt;=
 bcm2835_mmal_vchiq&nbsp; &nbsp; 36864&nbsp; 3 bcm2835_codec,bcm2835_v4l2,b=
cm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; v4l2_mem2mem&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; 40960&nbsp; 2 bcm2835_codec,rpivid_hevc<br></div><div di=
r=3D"ltr">&gt; &gt; videobuf2_vmalloc&nbsp; &nbsp; &nbsp; 16384&nbsp; 1 bcm=
2835_v4l2<br></div><div dir=3D"ltr">&gt; &gt; videobuf2_dma_contig&nbsp; &n=
bsp; 20480&nbsp; 4 bcm2835_codec,bcm2835_unicam,rpivid_hevc,bcm2835_isp<br>=
</div><div dir=3D"ltr">&gt; &gt; videobuf2_memops&nbsp; &nbsp; &nbsp; 16384=
&nbsp; 2 videobuf2_vmalloc,videobuf2_dma_contig<br></div><div dir=3D"ltr">&=
gt; &gt; videobuf2_v4l2&nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 6 bcm2835_co=
dec,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></d=
iv><div dir=3D"ltr">&gt; &gt; videobuf2_common&nbsp; &nbsp; &nbsp; 69632&nb=
sp; 10 bcm2835_codec,videobuf2_vmalloc,videobuf2_dma_contig,videobuf2_v4l2,=
bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_mem2mem,videobuf2_memops,bcm28=
35_isp<br></div><div dir=3D"ltr">&gt; &gt; videodev&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 274432&nbsp; 10 v4l2_async,bcm2835_codec,imx219,vi=
deobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,videobuf2_common,rpivid_hevc,v4l2_=
mem2mem,bcm2835_isp<br></div><div dir=3D"ltr">&gt; &gt; vc_sm_cma&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 2 bcm2835_mmal_vchiq,bcm=
2835_isp<br></div><div dir=3D"ltr">&gt; &gt; snd_bcm2835&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 28672&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; mc=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 61440=
&nbsp; 10 v4l2_async,videodev,bcm2835_codec,imx219,videobuf2_v4l2,bcm2835_u=
nicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bcm2835_isp<br></div><div d=
ir=3D"ltr">&gt; &gt; uio_pdrv_genirq&nbsp; &nbsp; &nbsp; &nbsp; 16384&nbsp;=
 0<br></div><div dir=3D"ltr">&gt; &gt; nvmem_rmem&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 16384&nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; uio&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp;=
 1 uio_pdrv_genirq<br></div><div dir=3D"ltr">&gt; &gt; sch_fq_codel&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 20480&nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt=
; brcmutil&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24576&nbsp; 0<br=
></div><div dir=3D"ltr">&gt; &gt; cfg80211&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; 929792&nbsp; 1 88XXau<br></div><div dir=3D"ltr">&gt; &gt; r=
fkill&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 32768&nbsp; 4 =
bluetooth,cfg80211<br></div><div dir=3D"ltr">&gt; &gt; fuse&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 139264&nbsp; 1<br></div><div=
 dir=3D"ltr">&gt; &gt; ipv6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 552960&nbsp; 28<br></div><div dir=3D"ltr">&gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; And here is my /boot/config.txt<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; root@raspberrypi4-64:~# =
cat /boot/config.txt<br></div><div dir=3D"ltr">&gt; &gt; ##################=
##############################################################<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; Raspberry Pi Configuration Settings<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; Revision 16, 2013/06/22<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; Details taken from the eLinux wiki<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; For up-to-date information please =
refer to wiki page.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; Wiki Location : <a href=3D"http://elinux.org/R=
Piconfig" rel=3D"nofollow" target=3D"_blank">http://elinux.org/RPiconfig</a=
><br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Description:<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Details of each setting are describ=
ed with each section that begins with<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; a double hashed comment ('##')<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; It is up to the user to remove the single hashed com=
ment ('#') from each<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; op=
tion they want to enable, and to set the specific value of that option.<br>=
</div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; Overclock settings will be disabled at runtime if the SoC reaches tem=
p_limit<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; ###################################################################=
#############<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr"=
>&gt; &gt; ################################################################=
################<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Standard Defi=
nition Video Settings<br></div><div dir=3D"ltr">&gt; &gt; #################=
###############################################################<br></div><d=
iv dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## sdtv_mode<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; defines the TV standard =
for composite output<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></di=
v><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ------------------------------=
-------------------------------------------<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Normal NTSC (Default)<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbs=
p; Japanese version of NTSC - no pedestal<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; Normal PAL<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; Brazilian =
version of PAL - 525/60 rather than 625/50, different<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; subcarrie=
r<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; #sdtv_mode=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"l=
tr">&gt; &gt; ## sdtv_aspect<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &=
nbsp; defines the aspect ratio for composite output<br></div><div dir=3D"lt=
r">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&n=
bsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 -------------------------------------------------------------------------<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &=
nbsp; 4:3 (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2&n=
bsp; &nbsp; &nbsp; &nbsp; 14:9<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 16:9<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; #sdtv_aspect=3D1<br></div><div di=
r=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## sdtv_disable_col=
ourburst<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Disables colou=
r burst on composite output. The picture will be<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; monochrome, but possibly sharper<br></div><div di=
r=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; -------------------------------------------------------------------=
------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &=
nbsp; &nbsp; Colour burst is enabled (Default)<br></div><div dir=3D"ltr">&g=
t; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Colour burst is disabl=
ed<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; #sdtv_disable_colourburst=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></d=
iv><div dir=3D"ltr">&gt; &gt; #############################################=
###################################<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; High Definition Video Settings<br></div><div dir=3D"ltr">&gt; &gt; ##=
###########################################################################=
###<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 ## hdmi_safe<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Use "safe=
 mode" settings to try to boot with maximum hdmi compatibility.<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; --------------------------------------------------------------=
-----------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nb=
sp; &nbsp; &nbsp; Disabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Enabled (this does: hdmi_force_h=
otplug=3D1,<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; hdmi_ignore_edid=3D0xa5000080,<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; config_hdmi_boost=
=3D4, hdmi_group=3D2,<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; hdmi_mode=3D4, disable_overscan=3D0,<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ov=
erscan_left=3D24, overscan_right=3D24,<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; overscan_top=3D24, overscan_b=
ottom=3D24)<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; #hdmi_safe=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; ## hdmi_force_hotplug<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; Pretends HDMI hotplug signal is asserted so it appea=
rs a HDMI display<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; is at=
tached<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------------------------=
-----------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Use HDMI mode =
even if no HDMI monitor is detected<br></div><div dir=3D"ltr">&gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; #hdmi_force_hotplug=3D1<br></div><div d=
ir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## hdmi_ignore_hot=
plug<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Pretends HDMI hotp=
lug signal is not asserted so it appears a HDMI<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; display is not attached<br></div><div dir=3D"ltr">=
&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp=
; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --=
-----------------------------------------------------------------------<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbs=
p; Disabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1=
&nbsp; &nbsp; &nbsp; &nbsp; Use composite mode even if HDMI monitor is dete=
cted<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; #hdmi_ignore_hotplug=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; ## hdmi_drive<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; chooses between HDMI and DVI modes<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&=
nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; -------------------------------------------------------------------------=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; =
&nbsp; Normal DVI mode (No sound)<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; Normal HDMI mode (Sound will be sen=
t if supported and enabled)<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div=
><div dir=3D"ltr">&gt; &gt; #hdmi_drive=3D2<br></div><div dir=3D"ltr">&gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; ## hdmi_ignore_edid<br></div><div =
dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Enables the ignoring of EDID/display =
data<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; #hdmi_ignore_edid=3D0xa5000080<br></div><div dir=3D"ltr">&gt; &gt;<br>=
</div><div dir=3D"ltr">&gt; &gt; ## hdmi_edid_file<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; Read the EDID data from the edid.dat file inste=
ad of from the attached<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 device<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; -------------------------------------------=
------------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Read EDID data from attached device (D=
efault)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; =
&nbsp; &nbsp; Read EDID data from edid.txt file<br></div><div dir=3D"ltr">&=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #hdmi_edid_file=3D1<br></di=
v><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## hdmi_ig=
nore_edid_audio<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Pretend=
s all audio formats are unsupported by display. This means ALSA<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; will default to analogue.<br></div=
><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; -----------------------------------------------------------=
--------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; =
&nbsp; &nbsp; &nbsp; Use EDID provided values (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend all=
 audio formats are unsupported<br></div><div dir=3D"ltr">&gt; &gt; ##<br></=
div><div dir=3D"ltr">&gt; &gt; #hdmi_ignore_edid_audio=3D1<br></div><div di=
r=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## hdmi_force_edid_=
audio<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Pretends all audi=
o formats are supported by display, allowing<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; passthrough of DTS/AC3 even when not reported as supp=
orted.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------------------------=
-----------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID provided values (Default)<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp=
; Pretend all audio formats are supported<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; #hdmi_force_edid_audio=3D1<br></d=
iv><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## hdmi_f=
orce_edid_3d<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Pretends a=
ll CEA modes support 3D even when edid doesn't indicate<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; support for them.<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&=
nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; -------------------------------------------------------------------------=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; =
&nbsp; Use EDID provided values (Default)<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend 3D mode is supporte=
d<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt=
; #hdmi_force_edid_3d=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div=
 dir=3D"ltr">&gt; &gt; ## avoid_edid_fuzzy_match<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; Avoid fuzzy matching of modes described in edid.<=
br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&g=
t; &gt; ##&nbsp; &nbsp; ---------------------------------------------------=
----------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
0&nbsp; &nbsp; &nbsp; &nbsp; Use fuzzy matching (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Avoid fuzzy=
 matching<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; #avoid_edid_fuzzy_match=3D1<br></div><div dir=3D"ltr">&gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; ## hdmi_pixel_encoding<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Force the pixel encoding mode.<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; By default it will use the mode =
requested from edid so shouldn't<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; &nbsp; need changing.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------=
-----------------------------------------------<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use EDID provided val=
ues (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &=
nbsp; &nbsp; &nbsp; RGB limited&nbsp; (16-235)<br></div><div dir=3D"ltr">&g=
t; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; RGB full&nbsp; &nbsp; =
&nbsp; ( 0-255)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp;=
 &nbsp; &nbsp; &nbsp; YCbCr limited (16-235)<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; YCbCr limited ( 0-255)<b=
r></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #=
hdmi_pixel_encoding=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div d=
ir=3D"ltr">&gt; &gt; ## hdmi_group<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; Defines the HDMI type<br></div><div dir=3D"ltr">&gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Descri=
ption<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -----------------=
--------------------------------------------------------<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Use the pre=
ferred group reported by the edid (Default)<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; CEA<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; DMT<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #hdmi_group=
=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt=
; ## hdmi_mode<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; defines =
screen resolution in CEA or DMT format<br></div><div dir=3D"ltr">&gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; H means 16:9 variant=
 (of a normally 4:3 mode).<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; 2x means pixel doubled (i.e. higher clock rate, with each pixel repeate=
d<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; twice)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 4x mean=
s pixel quadrupled (i.e. higher clock rate, with each pixel<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; r=
epeated four times)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; red=
uced blanking means fewer bytes are used for blanking within the data<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; stream (i.e. lower clock rate, with fewe=
r wasted bytes)<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; hdmi_group=3DCEA&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hdmi_group=3DDMT<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------=
-----------------------------------------------<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; VGA&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 640x350&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 2&nbsp; &nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x400&nbsp; 85Hz<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 480=
p&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 720x400&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; 4&nbsp; &nbsp; &nbsp; &nbsp; 720p&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 60Hz<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; =
1080i 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; 640x480&nbsp; 72Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 640x480&nbsp; 75Hz<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nb=
sp; 480i&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 640x480&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 56Hz=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 9&nbsp; &nbsp; &nbsp; =
&nbsp; 240p&nbsp; 60Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 800x600&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; 10&nbsp; &nbsp; &nbsp; 480i&nbsp; 60Hz&nbsp; 4x&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 72Hz<br></di=
v><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 11&nbsp; &nbsp; &nbsp; 480i&nb=
sp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
800x600&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 12&n=
bsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 85Hz<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; 13&nbsp; &nbsp; &nbsp; 240p&nbsp; 60Hz&nbsp; 4x =
H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800x600&nbsp; 120H=
z<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 14&nbsp; &nbsp; &nbsp=
; 480p&nbsp; 60Hz&nbsp; 2x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 848x480&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; &nbsp; 15&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&nbsp; 2x H&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 43Hz&nbsp; DO NOT US=
E<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 16&nbsp; &nbsp; &nbsp=
; 1080p 60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 1024x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; 17&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 70Hz<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 18&nbsp; &nbsp; &nbsp; 576p=
&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1024x768&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; 19&nbsp; &nbsp; &nbsp; 720p&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1024x768&nbsp; 85Hz<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 20&nbsp; &nbsp; &nbsp; 1080i 50Hz&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 1024x768&nbsp; 120Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2=
1&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1152x864&nbsp; 75Hz<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 22&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&=
nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x=
768&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; 23&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&n=
bsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 24&nbsp; &nbs=
p; &nbsp; 288p&nbsp; 50Hz&nbsp; H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 1280x768&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; 25&nbsp; &nbsp; &nbsp; 576i&nbsp; 50Hz&nbsp; 4x&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x768&nbsp; 85Hz<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 26&nbsp; &nbsp; &nbsp; 57=
6i&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 1280x768&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; 27&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; 4x&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; &nbsp=
; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; &nbsp; 28&nbsp; &nbsp; &nbsp; 288p&nbsp; 50Hz&nbsp; 4x H&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 60Hz<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 29&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz=
&nbsp; 2x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128=
0x800&nbsp; 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 30&nbs=
p; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 2x H&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 85Hz<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 31&nbsp; &nbsp; &nbsp; 1080p 50Hz&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x800&nbsp; 120H=
z reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 32&n=
bsp; &nbsp; &nbsp; 1080p 24Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbsp; 60Hz<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; 33&nbsp; &nbsp; &nbsp; 1080p 25Hz&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x960&nbs=
p; 85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 34&nbsp; &nbsp;=
 &nbsp; 1080p 30Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1280x960&nbsp; 120Hz reduced blanking<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 35&nbsp; &nbsp; &nbsp; 480p&nbsp; 60Hz&n=
bsp; 4x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x=
1024 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 36&nbsp; &nbs=
p; &nbsp; 480p&nbsp; 60Hz&nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; 1280x1024 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; 37&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&nbsp; 4x&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024 85Hz<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 38&nbsp; &nbsp; &nbsp; 576p&nbsp; 50Hz&=
nbsp; 4x H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280x1024=
 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 39&nbsp; &nbsp; &nbsp; 1080i 50Hz&nbsp; reduced blanking&nbsp; &nbsp; 1360=
x768&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 40&nbsp=
; &nbsp; &nbsp; 1080i 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 1360x768&nbsp; 120Hz reduced blanking<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 41&nbsp; &nbsp; &nbsp; 720p&nbsp; 100H=
z&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400=
x1050&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; 42&nbsp; &nbsp; &nbsp; 576p&nbsp; 100Hz&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 60Hz<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 43&nbsp; &nbsp; &nbsp; 576p&n=
bsp; 100Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1400x1050 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 44&nbsp;=
 &nbsp; &nbsp; 576i&nbsp; 100Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 1400x1050 85Hz<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; 45&nbsp; &nbsp; &nbsp; 576i&nbsp; 100Hz H&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1400x1050 120Hz reduced blan=
king<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 46&nbsp; &nbsp; &n=
bsp; 1080i 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; 1440x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 47&nbsp; &nbsp; &nbsp; 720p&nbsp; =
120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1440x900&nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 48&=
nbsp; &nbsp; &nbsp; 480p&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 75Hz<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; 49&nbsp; &nbsp; &nbsp; 480p&nbsp; 120Hz H&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1440x900&nbsp; 85H=
z<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 50&nbsp; &nbsp; &nbsp=
; 480i&nbsp; 120Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 1440x900&nbsp; 120Hz reduced blanking<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; 51&nbsp; &nbsp; &nbsp; 480i&nbsp; 120Hz H&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 60Hz<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 52&nbsp; &nbsp; &nbsp; 576=
p&nbsp; 200Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1600x1200 65Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
53&nbsp; &nbsp; &nbsp; 576p&nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 70Hz<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 54&nbsp; &nbsp; &nbsp; 576i&nbsp; 200Hz&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 75Hz<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 55&nbsp; &nbsp; &nbsp; 576i&=
nbsp; 200Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 1600x1200 85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 56&nbsp=
; &nbsp; &nbsp; 480p&nbsp; 240Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 1600x1200 120Hz reduced blanking<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 57&nbsp; &nbsp; &nbsp; 480p&nbsp; 240H=
z H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050=
&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; 58&nbsp; &nbsp; &nbsp; 480i&nbsp; 240Hz&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 60Hz<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 59&nbsp; &nbsp; &nbsp; 480i&nbsp; =
240Hz H&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x=
1050 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 60&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1680x1050 85Hz<br></div><div=
 dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 61&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 1680x1050 120Hz reduced blanking<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 62&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1792x1344 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; 63&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 179=
2x1344 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 64&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1792x1344 120Hz reduced bl=
anking<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 65&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1856x1392 60Hz<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 66&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 1856x1392 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; 67&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 18=
56x1392 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 68&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x12=
00&nbsp; &nbsp; &nbsp; reduced blanking<br></div><div dir=3D"ltr">&gt; &gt;=
 ##&nbsp; &nbsp; 69&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; 1920x1200 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 70&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1200 75Hz<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 71&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1200 85Hz<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; 72&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1920x1200 120Hz reduced blanking<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; 73&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 1920x1440 60Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 74&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 75Hz<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 75&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 1920x1440 120Hz reduced blanking<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 76&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; 2560x1600&nbsp; &nbsp; &nbsp; reduced blanking<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 77&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 60Hz<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; 78&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 2560x1600 75Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; 79&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 =
85Hz<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 80&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2560x1600 120Hz reduced blanking<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 81&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1366x768&nbsp; 60Hz<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 82&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1080p&nbsp; &nbsp; 60Hz<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 83&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; 1600x900&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 84&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 2048x1152&nbsp; &nbsp; &nbsp; reduced blanking<br></di=
v><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 85&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 720p&nbsp; &nbsp; &nbsp; 60Hz<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 86&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 1366x768&nbsp; &nbsp; &nbsp; &nbsp; reduced blanking<=
br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
#hdmi_mode=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; ## config_hdmi_boost<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; &nbsp; configure the signal strength of the HDMI interface.<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; ---------------------------------------------------------------=
----------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbs=
p; &nbsp; &nbsp; (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; 1<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; Try if you have interference i=
ssues with HDMI<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 5<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 6<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; Maximum<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #config_hdmi=
_boost=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; ## hdmi_ignore_cec_init<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; Doesn't sent initial active source message.&nbsp; Avoids bringing<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; (CEC enabled) TV out of=
 standby and channel switch when rebooting.<br></div><div dir=3D"ltr">&gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nb=
sp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -------=
------------------------------------------------------------------<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; No=
rmal behaviour (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; 1&nbsp; &nbsp; &nbsp; &nbsp; Doesn't sent initial active source message<b=
r></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #=
hdmi_ignore_cec_init=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; ## hdmi_ignore_cec<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; Pretends CEC is not supported at all by TV.<br></div><div=
 dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; No CEC functions will be supported.<=
br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&g=
t; &gt; ##&nbsp; &nbsp; ---------------------------------------------------=
----------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
0&nbsp; &nbsp; &nbsp; &nbsp; Normal behaviour (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Pretend CEC=
 is not supported by TV<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; #hdmi_ignore_cec=3D1<br></div><div dir=3D"ltr">&gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; #################################=
###############################################<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; Overscan Video Settings<br></div><div dir=3D"ltr">&gt; &g=
t; ########################################################################=
########<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt;=
 &gt; ## overscan_left<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
Number of pixels to skip on left<br></div><div dir=3D"ltr">&gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; #overscan_left=3D0<br></div><div dir=3D"lt=
r">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## overscan_right<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Number of pixels to skip on rig=
ht<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; #overscan_right=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; ## overscan_top<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; Number of pixels to skip on top<br></div><div dir=3D"ltr">&gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #overscan_top=3D0<br></div><di=
v dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## overscan_bot=
tom<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Number of pixels to=
 skip on bottom<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; #overscan_bottom=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br=
></div><div dir=3D"ltr">&gt; &gt; ## disable_overscan<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; Set to 1 to disable overscan<br></div><div d=
ir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; ------------------------------------------------------------------=
-------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; =
&nbsp; &nbsp; Overscan Enabled (Default)<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Overscan Disabled<br></div><=
div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #disable_o=
verscan=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&=
gt; &gt; ##################################################################=
##############<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Framebuffer Vid=
eo Settings<br></div><div dir=3D"ltr">&gt; &gt; ###########################=
#####################################################<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## framebuffer_width<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Console framebuffer width =
in pixels. Default is display width minus<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; overscan.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; #framebuffer_width=3D0<br></div><div dir=3D"lt=
r">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## framebuffer_height<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Console framebuffer height =
in pixels. Default is display height minus<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; overscan.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; #framebuffer_height=3D0<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## framebuffer_depth<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Console framebuffer depth =
in bits per pixel.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------------=
-----------------------------------------<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; Valid, but default RGB pale=
tte makes an unreadable screen<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 16&nbsp; &nbsp; &nbsp; (Default)<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; 24&nbsp; &nbsp; &nbsp; Looks better but has corruption is=
sues as of 2012/06/15<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3=
2&nbsp; &nbsp; &nbsp; Has no corruption issues but needs framebuffer_ignore=
_alpha=3D1<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; and shows the wrong colors as of 2012/06/15<br></div=
><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #framebu=
ffer_depth=3D16<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; ## framebuffer_ignore_alpha<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; Set to 1 to disable alpha channel. Helps with 32bit.<br><=
/div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; -------------------------------------------------------=
------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; &nbsp; Enable Alpha Channel (Default)<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disable Alp=
ha Channel<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr"=
>&gt; &gt; #framebuffer_ignore_alpha=3D0<br></div><div dir=3D"ltr">&gt; &gt=
;<br></div><div dir=3D"ltr">&gt; &gt; #####################################=
###########################################<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; General Video Settings<br></div><div dir=3D"ltr">&gt; &gt; ##=
###########################################################################=
###<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;=
 ## display_rotate<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Rota=
te the display clockwise or flip the display.<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; The 90 and 270 degrees rotation options require addi=
tional memory on GPU,<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; s=
o won't work with the 16M GPU split.<br></div><div dir=3D"ltr">&gt; &gt; ##=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Des=
cription<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------=
-----------------------------------------------------------<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 0 degrees=
 (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbs=
p; &nbsp; &nbsp; 90 degrees<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 180 degrees<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 270 degrees<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0x10000&nbsp; Horizontal flip<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0x20000&nbsp; Vertical flip=
<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 #display_rotate=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## dispmanx_offline<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; Set to "1" to enable offline compositing<br></div><div dir=
=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; D=
efault 0<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; #dispmanx_offline=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; ###############################################=
#################################<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; Licensed Codecs<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; Hardware decoding of additional codecs can be =
enabled by purchasing a<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; licens=
e that is locked to the CPU serial number of your Raspberry Pi.<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Up=
 to 8 licenses per CODEC can be specified as a comma seperated list.<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ######=
##########################################################################<=
br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## =
decode_MPG2<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; License key=
 to allow hardware MPEG-2 decoding.<br></div><div dir=3D"ltr">&gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; #decode_MPG2=3D0x12345678<br></div><div=
 dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## decode_WVC1<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; License key to allow har=
dware VC-1 decoding.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; #decode_WVC1=3D0x12345678<br></div><div dir=3D"ltr">&g=
t; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ###############################=
#################################################<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; Camera Settings<br></div><div dir=3D"ltr">&gt; &gt; ###=
###########################################################################=
##<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; =
## start_x<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Set to "1" t=
o enable the camera module.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Enabling the camera requires gp=
u_mem option to be specified with a value<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; of at least 128.<br></div><div dir=3D"ltr">&gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><div=
 dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; start_x=3D1<b=
r></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## d=
isable_camera_led<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Turn =
off the red camera led when recording video or taking a still<br></div><div=
 dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; picture.<br></div><div dir=3D"ltr">&=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp;=
 &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ---=
----------------------------------------------------------------------<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp=
; LED enabled (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 1&nbsp; &nbsp; &nbsp; &nbsp; LED disabled<br></div><div dir=3D"ltr">&gt; &=
gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #disable_camera_led=3D1<br></div=
><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ###########=
#####################################################################<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Test Settings<br></div><div dir=3D"=
ltr">&gt; &gt; ############################################################=
####################<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## test_mode<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; Enable test sound/image during boot for manufacturing test.<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbs=
p; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; ---------------------------------------------------------=
----------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp=
; &nbsp; &nbsp; &nbsp; Disable Test Mod (Default)<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Enable Test Mode<br=
></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #t=
est_mode=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">=
&gt; &gt; #################################################################=
###############<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Memory Setting=
s<br></div><div dir=3D"ltr">&gt; &gt; #####################################=
###########################################<br></div><div dir=3D"ltr">&gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; ## disable_l2cache<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Disable arm access to GPU's L2 cache. =
Needs corresponding L2 disabled<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; kernel.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------------=
-----------------------------------------<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Enable L2 Cache (Default)<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &n=
bsp; Disable L2 cache<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div =
dir=3D"ltr">&gt; &gt; #disable_l2cache=3D0<br></div><div dir=3D"ltr">&gt; &=
gt;<br></div><div dir=3D"ltr">&gt; &gt; ## gpu_mem<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for all board revis=
ions.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; Default 64<br></div><div dir=3D"ltr">&gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; #gpu_mem=3D128<br></div><div dir=3D"ltr">&=
gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## gpu_mem_256<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for 256MB =
board revision.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; This op=
tion overrides gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; #gpu_mem_256=3D192<br></div><div dir=3D"ltr">&gt; &=
gt;<br></div><div dir=3D"ltr">&gt; &gt; ## gpu_mem_512<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for 512MB board=
 revision.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; This option =
overrides gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; #gpu_mem_512=3D448<br></div><div dir=3D"ltr">&gt; &gt;<b=
r></div><div dir=3D"ltr">&gt; &gt; ## gpu_mem_1024<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; GPU memory allocation in MB for 1024MB board re=
vision.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; This option ove=
rrides gpu_mem.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; #gpu_mem_1024=3D944<br></div><div dir=3D"ltr">&gt; &gt;<br>=
</div><div dir=3D"ltr">&gt; &gt; ## disable_pvt<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; Disable adjusting the refresh rate of RAM every 50=
0ms<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; (measuring RAM temp=
arature).<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; #disable_pvt=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><di=
v dir=3D"ltr">&gt; &gt; ###################################################=
#############################<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
CMA - Dynamic Memory Split<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; CMA enables dynamic management of the A=
RM and GPU memory split at runtime.<br></div><div dir=3D"ltr">&gt; &gt; ##<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; The following options need to =
be in cmdline.txt for CMA to work:<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; coherent_pool=3D6M smsc95xx.turbo_mode=3DN<br></div><div dir=3D=
"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ####################=
############################################################<br></div><div =
dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## cma_lwm<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; When GPU has less than cma_lw=
m (low water mark) memory available it<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; will request some from ARM.<br></div><div dir=3D"ltr">&gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #cma_lwm=3D16<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## cma_hwm<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; When GPU has more than cma_hwm (=
high water mark) memory available it<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; will release some to ARM.<br></div><div dir=3D"ltr">&gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; #cma_hwm=3D32<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ########################=
########################################################<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; Boot Option Settings<br></div><div dir=3D"ltr">=
&gt; &gt; #################################################################=
###############<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; ## disable_commandline_tags<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; Stop start.elf from filling in ATAGS (memory from 0x100) =
before<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; launching kernel=
<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 #disable_commandline_tags=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; ## cmdline (string)<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; Command line parameters. Can be used instead of cm=
dline.txt file<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; #cmdline=3D""<br></div><div dir=3D"ltr">&gt; &gt;<br></div><=
div dir=3D"ltr">&gt; &gt; ## kernel (string)<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; Alternative name to use when loading kernel.<br></div=
><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #kernel=
=3D""<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &g=
t; ## kernel_address<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Ad=
dress to load kernel.img file at<br></div><div dir=3D"ltr">&gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; #kernel_address=3D0x00000000<br></div><div=
 dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## kernel_old<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Support loading old kerne=
ls<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; ------------------------------------------------=
-------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; 0&nbsp; &nbsp; &nbsp; &nbsp; Disabled (Default)<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Load kernel at add=
ress 0x00000000<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D=
"ltr">&gt; &gt; #kernel_old=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; ## ramfsfile (string)<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; ramfs file to load<br></div><div dir=3D"ltr">&g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #ramfsfile=3D""<br></div><di=
v dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## ramfsaddr<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Address to load ramfs fil=
e at<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; #ramfsaddr=3D0x00000000<br></div><div dir=3D"ltr">&gt; &gt;<br></div><=
div dir=3D"ltr">&gt; &gt; ## initramfs (string address)<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ramfs file and address to load it at (it=
's like ramfsfile+ramfsaddr in<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; one option).<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; NOTE: this option uses different synta=
x than all other options - you<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; should not use "=3D" character here.<br></div>=
<div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #initramf=
s initramf.gz 0x00800000<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; ## device_tree_address<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; Address to load device_tree at<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #device_tree_address=
=3D0x00000000<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr"=
>&gt; &gt; ## init_uart_baud<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &=
nbsp; Initial uart baud rate.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 115200<br></div><div =
dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #init_uart_bau=
d=3D115200<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; ## init_uart_clock<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; Initial uart clock.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 3000000 (3MHz)<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #init_uart_c=
lock=3D3000000<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; ## init_emmc_clock<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; Initial emmc clock, increasing this can speedup your SD-card.<br></=
div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; Default 100000000 (100mhz)<br></div><div dir=3D"ltr">&gt; &gt; #=
#<br></div><div dir=3D"ltr">&gt; &gt; #init_emmc_clock=3D100000000<br></div=
><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## boot_del=
ay<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Wait for a given num=
ber of seconds in start.elf before loading<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; kernel.img.<br></div><div dir=3D"ltr">&gt; &gt; ##<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; delay =3D (1000 * boot_dela=
y) + boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 1<br></div><div dir=3D"ltr">&gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #boot_delay=3D0<br></div><div =
dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## boot_delay_ms<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Wait for a given number=
 of milliseconds in start.elf before loading<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; kernel.img.<br></div><div dir=3D"ltr">&gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; delay =3D (1000 * boot_de=
lay) + boot_delay_ms<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 0<br></div><div dir=3D"ltr">&g=
t; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #boot_delay_ms=3D0<br></div>=
<div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## avoid_saf=
e_mode<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Adding a jumper =
between pins 5 &amp; 6 of P1 enables a recovery Safe Mode.<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; If pins 5 &amp; 6 are used for connecti=
ng to external devices (e.g. GPIO),<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; then this setting can be used to ensure Safe Mode is not trigg=
ered.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"l=
tr">&gt; &gt; ##&nbsp; &nbsp; ---------------------------------------------=
----------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &=
nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Respect Safe Mode input (Default)<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; =
Ignore Safe Mode input<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div=
 dir=3D"ltr">&gt; &gt; #avoid_safe_mode=3D1<br></div><div dir=3D"ltr">&gt; =
&gt;<br></div><div dir=3D"ltr">&gt; &gt; ## disable_splash<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Avoids the rainbow splash screen on boo=
t.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; ------------------------------------------------=
-------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; 0&nbsp; &nbsp; &nbsp; &nbsp; Splash screen enabled (Default)<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Splas=
h screen disabled<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; #disable_splash=3D1<br></div><div dir=3D"ltr">&gt; &gt;<=
br></div><div dir=3D"ltr">&gt; &gt; #######################################=
#########################################<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; Overclocking Settings<br></div><div dir=3D"ltr">&gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; ARM, SDRAM and GPU each have the=
ir own PLLs and can have unrelated<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; frequencies.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; The GPU core, h264, v3d and isp share a PLL, so=
 need to have related<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; frequenc=
ies.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; pll_freq =3D floor(2400 /=
 (2 * core_freq)) * (2 * core_freq)<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; gpu_freq =3D pll_freq / [even number]<br></div><div dir=3D"ltr">&gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; The effective gpu_freq=
 is automatically rounded to nearest even integer, so<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; asking for core_freq =3D 500 and gpu_freq =3D 300 w=
ill result in divisor of<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; 2000/=
300 =3D 6.666 =3D&gt; 6 and so 333.33MHz.<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; Standard Profiles:<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; arm_freq&nbsp; =
&nbsp; core_freq&nbsp; &nbsp; sdram_freq&nbsp; &nbsp; over_voltage<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -------------------------------=
------------------------------------------<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; None&nbsp; &nbsp; &nbsp; &nbsp; 700&nbsp; &nbsp; &nbsp;=
 &nbsp; 250&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; 0<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Modest&nbsp;=
 &nbsp; &nbsp; 800&nbsp; &nbsp; &nbsp; &nbsp; 300&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; 400&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; Medium&nbsp; &nbsp; &nbsp; 900&nbsp; &nbsp; &nbsp=
; &nbsp; 333&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 2<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; High&nbsp; =
&nbsp; &nbsp; &nbsp; 950&nbsp; &nbsp; &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 450&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; Turbo&nbsp; &nbsp; &nbsp; &nbsp; 1000&nbsp;=
 &nbsp; &nbsp; &nbsp; 500&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 500&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 6<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##################################################=
##############################<br></div><div dir=3D"ltr">&gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; ## force_turbo<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; Control the kernel "ondemand" governor. It has no effec=
t if no overclock<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; setti=
ngs are specified.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; May =
set warrany bit.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; --------------------------------=
-----------------------------------------<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; Enable dynamic clocks and v=
oltage for the ARM core, GPU core and<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SDRAM (Default).<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; Overclocking of h264_freq, v3d_freq and isp_freq is ignored.<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Disa=
ble dynamic clocks and voltage for the ARM core, GPU core<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and S=
DRAM.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; Overclocking of h264_freq, v3d_freq and isp_freq is allow=
ed.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &=
gt; #force_turbo=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## initial_turbo<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; Enables turbo mode from boot for the given value in seconds (u=
p to 60)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; or until cpufr=
eq sets a frequency. Can help with sdcard corruption if<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; overclocked.<br></div><div dir=3D"ltr">&=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 0<b=
r></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #=
initial_turbo=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"=
ltr">&gt; &gt; ## temp_limit<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &=
nbsp; Overheat protection. Sets clocks and voltages to default when the SoC=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; reaches this Celsius v=
alue.<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Setting this high=
er than default voids warranty.<br></div><div dir=3D"ltr">&gt; &gt; ##<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 85<br></div><div di=
r=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #temp_limit=3D85=
<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ##=
 arm_freq<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Frequency of =
ARM in MHz.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; Default 700.<br></div><div dir=3D"ltr">&gt; &gt=
; ##<br></div><div dir=3D"ltr">&gt; &gt; #arm_freq=3D700<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## arm_freq_min<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Minimum frequency of ARM in=
 MHz (used for dynamic clocking).<br></div><div dir=3D"ltr">&gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 700.<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #arm_freq_mi=
n=3D700<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; ## gpu_freq<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Sets c=
ore_freq, h264_freq, isp_freq, v3d_freq together.<br></div><div dir=3D"ltr"=
>&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 2=
50.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &=
gt; #gpu_freq=3D250<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## core_freq<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; Frequency of GPU processor core in MHz. It has an impact on ARM<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; performance since it driv=
es L2 cache.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; #core_freq=3D250<br></div><div di=
r=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## core_freq_min<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Minimum frequency of GPU =
processor core in MHz (used for dynamic<br></div><div dir=3D"ltr">&gt; &gt;=
 ##&nbsp; &nbsp; clocking). It has an impact on ARM performance since it dr=
ives L2 cache.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #core_freq_min=3D250<br></div><=
div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## h264_freq<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Frequency of hardware v=
ideo block in MHz.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&=
gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #h264_freq=3D250<br></div><=
div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## isp_freq<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Frequency of image senso=
r pipeline block in MHz.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"=
ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #isp_freq=3D250<br></=
div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## v3d_f=
req<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Frequency of 3D blo=
ck in MHz.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; Default 250.<br></div><div dir=3D"ltr">&gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; #v3d_freq=3D250<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## sdram_freq<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Frequency of SDRAM in MHz.<br=
></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; Default 400.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; #sdram_freq=3D400<br></div><div dir=3D"ltr">&gt;=
 &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## sdram_freq_min<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Minimum frequency of SDRAM in MHz (use=
d for dynamic clocking).<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 400.<br></div><div dir=3D"=
ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #sdram_freq_min=3D400=
<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ##=
 avoid_pwm_pll<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Don't de=
dicate a pll to PWM audio. This will reduce analogue audio<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; quality slightly. The spare PLL allows =
the core_freq to be set<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 independently from the rest of the gpu allowing more control over<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; overclocking.<br></div><div dir=
=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; V=
alue&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; --------------------------------------------------------------------=
-----<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &n=
bsp; &nbsp; Linked core_freq (Default)<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; Unlinked core_freq<br></div><d=
iv dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #avoid_pwm_=
pll=3D1<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; ######################################################################=
##########<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; Voltage Settings<br=
></div><div dir=3D"ltr">&gt; &gt; #########################################=
#######################################<br></div><div dir=3D"ltr">&gt; &gt;=
<br></div><div dir=3D"ltr">&gt; &gt; ## current_limit_override<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Disables SMPS current limit protect=
ion. Can help if you are currently<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; hitting a reboot failure when overclocking too high.<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; May set warrany bit.<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #current_lim=
it_override=3D0x5A000020<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; ## over_voltage<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; ARM/GPU core voltage adjust.<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; May set warrany bit.<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp=
; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ---------=
----------------------------------------------------------------<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nb=
sp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &=
nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.9=
75 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &n=
bsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -7&nbs=
p; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp=
; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nb=
sp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nb=
sp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt;=
 ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nb=
sp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nb=
sp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 =
V (requires force_turbo=3D1 or current_limit_override)<br></div><div dir=3D=
"ltr">&gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V (r=
equires force_turbo=3D1 or current_limit_override)<br></div><div dir=3D"ltr=
">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #over_voltage=3D0<br></d=
iv><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## over_v=
oltage_min<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Minimum ARM/=
GPU core voltage adjust (used for dynamic clocking).<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&=
nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; -------------------------------------------------------------------------=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp=
; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -15&nbsp;=
 &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
-14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></di=
v><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&n=
bsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; =
&nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -8&nbsp;=
 &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125=
 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbs=
p; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -1&nbsp=
; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"lt=
r">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.2=
5&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp=
; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp;=
 &nbsp; 1.375 V (requires force_turbo=3D1)<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V (requires forc=
e_turbo=3D1)<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"lt=
r">&gt; &gt; #over_voltage_min=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br><=
/div><div dir=3D"ltr">&gt; &gt; ## over_voltage_sdram<br></div><div dir=3D"=
ltr">&gt; &gt; ##&nbsp; &nbsp; Sets over_voltage_sdram_c, over_voltage_sdra=
m_i, over_voltage_sdram_p<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; together<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ---------------------------------------=
----------------------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.=
875 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; =
&nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -11&=
nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &g=
t; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr"=
>&gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div=
 dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></=
div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&=
nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp;=
 &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -4&nbsp=
; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V=
 (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbs=
p; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; =
&nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 6&nbsp; =
&nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V<br></div>=
<div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #over_vol=
tage_sdram=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr=
">&gt; &gt; ## over_voltage_sdram_c<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; SDRAM controller voltage adjust.<br></div><div dir=3D"ltr">&gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &=
nbsp; Description<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -----=
--------------------------------------------------------------------<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&n=
bsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp;=
 &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -14&nbs=
p; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; =
##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"lt=
r">&gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div =
dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<=
br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; =
0.975 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp;=
 &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -7&=
nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt=
; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div =
dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&n=
bsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; =
&nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; =
&nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; =
V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp;=
 &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 4&nbsp;=
 &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.=
375 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &n=
bsp; &nbsp; 1.4&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><di=
v dir=3D"ltr">&gt; &gt; #over_voltage_sdram_c=3D0<br></div><div dir=3D"ltr"=
>&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## over_voltage_sdram_i<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; SDRAM I/O voltage adjust.<b=
r></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; Value&nbsp; &nbsp; Description<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; ----------------------------------------------------=
---------------------<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -=
16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; 0.85&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -13&nbsp; &nbsp; &nbsp; 0.875 V<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -12&nbsp; &nbsp; &nbsp; 0.9&nbs=
p; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -11&nbsp; &nbsp; &=
nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -10&nbsp;=
 &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div><div dir=3D"ltr">&gt; &gt; ##&=
nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp; V<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbsp; 1.025 V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nbsp; &nbsp; 1.05&nbsp; V<br><=
/div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -5&nbsp; &nbsp; &nbsp; 1.07=
5 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -4&nbsp; &nbsp; &nb=
sp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -3&nbsp=
; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##=
&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; 1.2&nbsp; V (Default)<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 1&nbsp; &nbsp; &nbsp; &nb=
sp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 2&nbsp; &nb=
sp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp;=
 &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nbsp; 1.3&nbsp; V<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 5&nbsp; &nbsp; &nbsp; &nbsp; 1.325 =
V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 6&nbsp; &nbsp; &nbsp;=
 &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 7&=
nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nbsp; V<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #over_voltage_sdram_i=
=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt=
; ## over_voltage_sdram_p<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; SDRAM phy voltage adjust.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></di=
v><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Value&nbsp; &nbsp; Description=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; ----------------------=
---------------------------------------------------<br></div><div dir=3D"lt=
r">&gt; &gt; ##&nbsp; &nbsp; -16&nbsp; &nbsp; &nbsp; 0.8&nbsp; V<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -15&nbsp; &nbsp; &nbsp; 0.825 V<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -14&nbsp; &nbsp; &nbsp; =
0.85&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -13&nbsp; =
&nbsp; &nbsp; 0.875 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -=
12&nbsp; &nbsp; &nbsp; 0.9&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; &nbsp; -11&nbsp; &nbsp; &nbsp; 0.925 V<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; -10&nbsp; &nbsp; &nbsp; 0.95&nbsp; V<br></div><div dir=
=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -9&nbsp; &nbsp; &nbsp; 0.975 V<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -8&nbsp; &nbsp; &nbsp; 1.0&nbsp;=
 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -7&nbsp; &nbsp; &nbs=
p; 1.025 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -6&nbsp; &nb=
sp; &nbsp; 1.05&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 -5&nbsp; &nbsp; &nbsp; 1.075 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; -4&nbsp; &nbsp; &nbsp; 1.1&nbsp; V<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; -3&nbsp; &nbsp; &nbsp; 1.125 V<br></div><div dir=3D"lt=
r">&gt; &gt; ##&nbsp; &nbsp; -2&nbsp; &nbsp; &nbsp; 1.15&nbsp; V<br></div><=
div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; -1&nbsp; &nbsp; &nbsp; 1.175 V<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nb=
sp; 1.2&nbsp; V (Default)<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; 1&nbsp; &nbsp; &nbsp; &nbsp; 1.225 V<br></div><div dir=3D"ltr">&gt; &gt;=
 ##&nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; 1.25&nbsp; V<br></div><div di=
r=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 3&nbsp; &nbsp; &nbsp; &nbsp; 1.275 V<br=
></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 4&nbsp; &nbsp; &nbsp; &nb=
sp; 1.3&nbsp; V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 5&nbsp;=
 &nbsp; &nbsp; &nbsp; 1.325 V<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; 6&nbsp; &nbsp; &nbsp; &nbsp; 1.35&nbsp; V<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; 7&nbsp; &nbsp; &nbsp; &nbsp; 1.375 V<br></div><di=
v dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; 8&nbsp; &nbsp; &nbsp; &nbsp; 1.4&nb=
sp; V<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; #over_voltage_sdram_p=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; ##############################################=
##################################<br></div><div dir=3D"ltr">&gt; &gt; ##&n=
bsp; USB Power<br></div><div dir=3D"ltr">&gt; &gt; ########################=
########################################################<br></div><div dir=
=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## max_usb_current<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; When set to 1, change th=
e output current limit (for all 4 USB<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; ports combined) from 600mA to double that, 1200mA.<br></div>=
<div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; =
&nbsp; This option is not available for Model A/B boards.<br></div><div dir=
=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; D=
efault 0.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">=
&gt; &gt; #max_usb_current=3D0<br></div><div dir=3D"ltr">&gt; &gt;<br></div=
><div dir=3D"ltr">&gt; &gt; ###############################################=
#################################<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; Base Device Tree Parameters<br></div><div dir=3D"ltr">&gt; &gt; #######=
#########################################################################<b=
r></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## a=
udio<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Enable the onboard=
 ALSA audio<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt=
; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Daudio=3Doff<br></div><d=
iv dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## i2c_arm<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Enable the ARM's i2c inter=
face<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; =
&gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; ##<br=
></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Di2c_arm=3Doff<br></div><div di=
r=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## i2c_vc<br></div>=
<div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Enable the i2c interface<br></di=
v><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp=
; &nbsp; Usually reserved for the VideoCore processor<br></div><div dir=3D"=
ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Defau=
lt off.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&g=
t; &gt; #dtparam=3Di2c_vc=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></di=
v><div dir=3D"ltr">&gt; &gt; ## i2c_arm_baudrate<br></div><div dir=3D"ltr">=
&gt; &gt; ##&nbsp; &nbsp; Set the baudrate of the ARM's i2c interface<br></=
div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nb=
sp; &nbsp; Default 100000.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div>=
<div dir=3D"ltr">&gt; &gt; #dtparam=3Di2c_arm_baudrate=3D100000<br></div><d=
iv dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## i2c_vc_baud=
rate<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Set the baudrate o=
f the VideoCore i2c interface<br></div><div dir=3D"ltr">&gt; &gt; ##<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default 100000.<br></div><div=
 dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Di2=
c_vc_baudrate=3D100000<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div di=
r=3D"ltr">&gt; &gt; ## i2s<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; Set to "on" to enable the i2s interface<br></div><div dir=3D"ltr">&gt; =
&gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default off.<br=
></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #d=
tparam=3Di2s=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D=
"ltr">&gt; &gt; ## spi<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
Set to "on" to enable the spi interfaces<br></div><div dir=3D"ltr">&gt; &gt=
; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default off.<br></=
div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtpa=
ram=3Dspi=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt; ## random<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; =
Set to "on" to enable the hardware random<br></div><div dir=3D"ltr">&gt; &g=
t; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default off.<br><=
/div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtp=
aram=3Drandom=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## uart0<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &n=
bsp; Set to "off" to disable uart0<br></div><div dir=3D"ltr">&gt; &gt; ##<b=
r></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default on.<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Du=
art0=3Don<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt=
; &gt; ## watchdog<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Set =
to "on" to enable the hardware watchdog<br></div><div dir=3D"ltr">&gt; &gt;=
 ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default off.<br></d=
iv><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtpar=
am=3Dwatchdog=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=
=3D"ltr">&gt; &gt; ## act_led_trigger<br></div><div dir=3D"ltr">&gt; &gt; #=
#&nbsp; &nbsp; Choose which activity the LED tracks.<br></div><div dir=3D"l=
tr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Use "h=
eartbeat" for a nice load indicator.<br></div><div dir=3D"ltr">&gt; &gt; ##=
<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default mmc.<br></div>=
<div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=
=3Dact_led_trigger=3Dmmc<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div =
dir=3D"ltr">&gt; &gt; ## act_led_activelow<br></div><div dir=3D"ltr">&gt; &=
gt; ##&nbsp; &nbsp; Set to "on" to invert the sense of the LED<br></div><di=
v dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nb=
sp; Default off.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=
=3D"ltr">&gt; &gt; #dtparam=3Dact_led_activelow=3Doff<br></div><div dir=3D"=
ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; ## act_led_gpio<br></div=
><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Set which GPIO to use for the a=
ctivity LED<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr=
">&gt; &gt; ##&nbsp; &nbsp; In case you want to connect it to an external d=
evice<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt;=
 &gt; ##&nbsp; &nbsp; Default 16 on a non-Plus board, 47 on a Plus or Pi 2.=
<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt;=
 #dtparam=3Dact_led_gpio=3D47<br></div><div dir=3D"ltr">&gt; &gt;<br></div>=
<div dir=3D"ltr">&gt; &gt; ## pwr_led_trigger<br></div><div dir=3D"ltr">&gt=
; &gt; ##&nbsp; &nbsp; Choose which activity the LED tracks.<br></div><div =
dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp=
; Use "heartbeat" for a nice load indicator.<br></div><div dir=3D"ltr">&gt;=
 &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Not available =
on Model A/B boards.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div d=
ir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default mmc.<br></div><div dir=3D"ltr"=
>&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Dpwr_led_trigge=
r=3Dmmc<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; =
&gt; ## pwr_led_activelow<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbs=
p; Set to "on" to invert the sense of the LED<br></div><div dir=3D"ltr">&gt=
; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Not available=
 on Model A/B boards.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div =
dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Default off.<br></div><div dir=3D"ltr=
">&gt; &gt; ##<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Dpwr_led_activ=
elow=3Doff<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&g=
t; &gt; ## pwr_led_gpio<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp;=
 Set which GPIO to use for the PWR LED<br></div><div dir=3D"ltr">&gt; &gt; =
##<br></div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; In case you want to =
connect it to an external device<br></div><div dir=3D"ltr">&gt; &gt; ##<br>=
</div><div dir=3D"ltr">&gt; &gt; ##&nbsp; &nbsp; Not available on Model A/B=
 boards.<br></div><div dir=3D"ltr">&gt; &gt; ##<br></div><div dir=3D"ltr">&=
gt; &gt; ##&nbsp; &nbsp; Default 35.<br></div><div dir=3D"ltr">&gt; &gt; ##=
<br></div><div dir=3D"ltr">&gt; &gt; #dtparam=3Dpwr_led_gpio=3D35<br></div>=
<div dir=3D"ltr">&gt; &gt; # Enable SPI bus<br></div><div dir=3D"ltr">&gt; =
&gt; dtparam=3Dspi=3Don<br></div><div dir=3D"ltr">&gt; &gt; # Enable UART<b=
r></div><div dir=3D"ltr">&gt; &gt; enable_uart=3D1<br></div><div dir=3D"ltr=
">&gt; &gt; # Enable VC4 Graphics<br></div><div dir=3D"ltr">&gt; &gt; dtove=
rlay=3Dvc4-kms-v3d<br></div><div dir=3D"ltr">&gt; &gt; # Enable Sony Raspbe=
rryPi Camera(imx219)<br></div><div dir=3D"ltr">&gt; &gt; dtoverlay=3Dimx219=
<br></div><div dir=3D"ltr">&gt; &gt; # Enable USB host mode<br></div><div d=
ir=3D"ltr">&gt; &gt; dtoverlay=3Ddwc2,dr_mode=3Dhost<br></div><div dir=3D"l=
tr">&gt; &gt; # Enable CAN<br></div><div dir=3D"ltr">&gt; &gt; dtoverlay=3D=
mcp2515-can0,oscillator=3D16000000,interrupt=3D25<br></div><div dir=3D"ltr"=
>&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; # Enable WM8960<br></div><di=
v dir=3D"ltr">&gt; &gt; dtoverlay=3Dwm8960-soundcard<br></div><div dir=3D"l=
tr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr"=
>&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><d=
iv dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"ltr">&gt; &gt; Any help will =
be appreciated!<br></div><div dir=3D"ltr">&gt; &gt;<br></div><div dir=3D"lt=
r">&gt; &gt;<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr">&gt; =
<br></div><div dir=3D"ltr">&gt;<br></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-<br>Links: You receive all messages sent to this group.<br>=
View/Reply Online (#60532): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60532" rel=3D"nofollow" target=3D"_blank">https://lists.yoctopro=
ject.org/g/yocto/message/60532</a><br>Mute This Topic: <a href=3D"https://l=
ists.yoctoproject.org/mt/99985319/7732448" rel=3D"nofollow" target=3D"_blan=
k">https://lists.yoctoproject.org/mt/99985319/7732448</a><br>Group Owner: y=
octo+owner@lists.yoctoproject.org<br>Unsubscribe: <a href=3D"https://lists.=
yoctoproject.org/g/yocto/unsub" rel=3D"nofollow" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/unsub</a> [oosman3@yahoo.com]<br>-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br><br></div>
            </div>
        </div></body></html>
------=_Part_455806_450064069.1688659443384--

