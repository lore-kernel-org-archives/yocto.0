Received: from msgsrv3.atosorigin.de (msgsrv3.atosorigin.de [194.8.120.225])
 by mx.groups.io with SMTP id smtpd.web11.359.1581615900055431034
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:45:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zeiss.onmicrosoft.com header.s=selector2-zeiss-onmicrosoft-com header.b=nHhjHl+W;
 spf=pass (domain: zeiss.com, ip: 194.8.120.225, mailfrom: christian.lohr.ext@zeiss.com)
Received: from julia-mo2.my-it-solutions.net (HELO julia-mo2.ccsn.de.ao-srv.com) ([194.8.124.179])
  by msgsrv-out1.atosorigin.de with ESMTP; 13 Feb 2020 18:44:56 +0100
Received: from julia-mo2.ccsn.de.ao-srv.com (unknown [194.8.124.179]) by MCS02-MA1.atosorigin.de with smtp
	 id 762c_1035_4e7624ac_f5b1_4fe6_8537_114fe8c1b1da;
	Thu, 13 Feb 2020 18:44:56 +0100
Received: from julia-mo2 (localhost [127.0.0.1])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 92D3E192AF82;
	Thu, 13 Feb 2020 18:44:36 +0100 (CET)
Received: from ADEERL01IMS011.zeiss.org (ADEERL01IMS011.zeiss.org [10.193.156.178])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 6E993192AF82;
	Thu, 13 Feb 2020 18:44:36 +0100 (CET)
Received: from ADEERL01IMS011 (localhost [127.0.0.1])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 43A69265DE8;
	Thu, 13 Feb 2020 17:44:56 +0000 (GMT)
Received: from ADEERL01SMS004.cznet.zeiss.org (adeerl01sms004.zeiss.org [10.167.4.50])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 3A08F265C8E;
	Thu, 13 Feb 2020 17:44:56 +0000 (GMT)
Received: from ADEFUE01IUCC23.zeiss.org (10.167.12.168) by
 adeerl01sms004.cznet.zeiss.org (10.167.4.50) with Microsoft SMTP Server (TLS)
 id 14.3.468.0; Thu, 13 Feb 2020 18:44:55 +0100
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.105)
 by hybrid.ext.smtp.zeiss.com (217.115.69.78) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.845.34; Thu, 13 Feb 2020 18:44:55 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bg6+4+Hw2uj7pCxylNshXT0wyrBfq8vmY0AqO7UQQeM/w6a8Edc7sxq0wGzXJQRY64/FDqE4q4OgfosJPqN4um3ZJmSS/1voiA7qOQnqrW9xJ2l6o9ii3JY8uyJ54S9X2Angk/TX1f9clxJWhEq7EZctLmNhbI9Mdzi5KZ3txcAWXD6R/JAjqNeZNJLyjkjQuLp59zXBT0RU7pnorFNqtePpzHsHT4qO1upCF4zX/jT2D47RvTp6coX4FA3fXAFj+t7WiPgn0n+XzO3L2SJYlp4TuqUc3IHMDU7fEZvHzyl8SrFLon/Ka+C3Ovq8OP+GGfwxLQSYuzXhiEFZmqowsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxhgvxHzA3iFCSwqKnwS+dWodFMM4o6vkyJBuNdWeSE=;
 b=DmK1Vb63DSATqrlRCt9f3Vsrjrhn0Zi0V0U4PPZP+7mOdkJqchJc9bL873qAweh86wYuDI6os4osi8Jq8RpYrYWKgl16gdHMav7RUcHI2xVbQaBV7+vixltyUrm67BPPCq8TtJE0johdZ6YsBhFIfenf38Gch/jYb/8HGIU6LOB3ofJBO1uB6gdEIi0NmDx6sAhE9/7mv2MuQ+Av5TSz9SmSGDOZ1OXxw5xqjsdC67osL8BXX50l9xK+Xv/5d9FplDiYXU6xYsWcjLWFYe+k58zEq70beByWZKqfAYocojxLtA3h0GSStvrtVfMEQ4eVJUd1iqv9fzoyXS4JoYT2lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxhgvxHzA3iFCSwqKnwS+dWodFMM4o6vkyJBuNdWeSE=;
 b=nHhjHl+WiABhN9h1ybfY5AMnizN6eoBFornJZPPzX5aMjm2BpVrwSc/4QFeSBdsClq3mrV8oEQ7Tn0GQGJ56vyaOeCTia5GttWdxIqroisu7WvFoDyuLAq9U3iYv/rabY5zwdIhCZUJQCFppkDTymGblQK0+9iiTiwpm7nXS5do=
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM (10.186.130.84) by
 AM0P190MB0769.EURP190.PROD.OUTLOOK.COM (10.186.131.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 13 Feb 2020 17:44:54 +0000
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e]) by AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e%6]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 17:44:54 +0000
From: "Christian Lohr" <christian.lohr.ext@zeiss.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
Thread-Topic: [yocto] Creating a QEmu (x86-64) Image, which can execute binary
 applications from other x86-64 linux OSes
Thread-Index: AdXhe7XXITfcuZjzRnOvXbaB5vpC8wABeHmAAAAvroAAAQPhgAAB6TfgAAFjPAAAAJ+BUAAOc3OAADFBFeA=
Date: Thu, 13 Feb 2020 17:44:53 +0000
Message-ID: <AM0P190MB07707C46E4F83CA93EEBF0D0C21A0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
 <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com>
 <AM0P190MB0770F8B1522BC252623F7098C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj8L5u197TNh9XNFed-U+8MLUb6r=58qyFSdkr6ubj4LMg@mail.gmail.com>
 <AM0P190MB0770F39B0C5D821CEB773BBCC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <c28f22c4-2c19-8742-5058-9ea88afa0d5d@gmail.com>
In-Reply-To: <c28f22c4-2c19-8742-5058-9ea88afa0d5d@gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.200.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8faa2498-5f87-4bd9-b063-08d7b0ac6f78
x-ms-traffictypediagnostic: AM0P190MB0769:
x-microsoft-antispam-prvs: <AM0P190MB0769A0C96002FBB0CE14B535C21A0@AM0P190MB0769.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;SFS:(10001)(10019020)(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(199004)(189003)(8676002)(478600001)(6916009)(2906002)(55016002)(316002)(7696005)(86362001)(9686003)(33656002)(966005)(45080400002)(76116006)(30864003)(26005)(8936002)(55236004)(53546011)(4326008)(66446008)(66946007)(66574012)(64756008)(81156014)(71200400001)(81166006)(6506007)(66556008)(5660300002)(66476007)(52536014)(186003);DIR:OUT;SFP:1102;SCL:1;SRVR:AM0P190MB0769;H:AM0P190MB0770.EURP190.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: zeiss.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tFwXC1U4phgkJpgmn68g4CbD35k521NLtaxpM59MEOkwgUxXeXCpbsVIVRQwpb4QSqPPgyhLV3bnztVzKFazDI3V+Qpq6dAYJ0q5gl0wSkZulHqfh/uNcC8wovdxYEmhZpch82Bg2JUZVYdKmBW4Y3wQC/6YDlgWdEOS9COKiEh1zTXWdG+DODLcZuP20BPjS32j5F6UICks8PtXab5e14bAd86r9p/s3CWryLBiB649N1KUz+y9QLlweJCjgqNwHRsG4sioh/ViLIMB8T9IsWJcaP+6j033N1tkL7hZ/MlGakz+UmfUaZXSsfI3xTw/ffeX0NC3uDPQUpk/+spR8bY+TZbdFJQG4rTZqpCDKTKDl/W6PX4BGxwao8hQSwTV46f+hLtxjWx0SNc+IrM6wu8xSjSAsvLenl4gKCIS07UsFGnorS1vW3uhRic5S+XZUEc2kKS45AqjskU5bWLtC+Gtw67XvcYSIrg/AYZcTNL+oCuJXOC1r/PJ+o8s5onXWe3a7BOaCbG4w+mQ4h6jup10krbFnA8v/Pf7t84rXLwmgSvrUiBYIdjqkq5ZCIzhQdHVaqFTi2czWOtCdUjvoSRWSqYTgtC0o0qWnXdYCLWfeNBjW7owEMJMsKZjzgfF
x-ms-exchange-antispam-messagedata: qcxhDMCJNC9WrevjV/a9FEu1BjZ5LaxfOioXP71qTUcoGcgYlEZJfkrNtN9QOC9SwrpXDvSbm7TiJed4eFOW2JLJBmpf2hDTamaDMVxM/7piEp4ykSxbKJJKaajUyCIE+MMB8Vhapxsd0dHhE1KruQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8faa2498-5f87-4bd9-b063-08d7b0ac6f78
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 17:44:54.3823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BLwFIaEPx4hn4CizHnPIgS7KNi6lTm48xq9GABjf0wEONH5vya3EyLT5ycs1Bua8JAcYtDrU+FGk2Lr9cHhtthzZTj+My1+bVKbOtkjry7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0769
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Level: 
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0.7
X-NAI-Spam-Version: 2.3.0.9418 : core <6735> : inlines <7190> : streams
 <1847231> : uri <2987630>
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Khem,

Thanks for that advice, it seems to be the best way to handle this.

Best regards,

Christian Lohr

-----Urspr=FCngliche Nachricht-----
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Khem Raj
Gesendet: Mittwoch, 12. Februar 2020 19:12
An: Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>; Alexander Kanavin=
 <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Betreff: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute bina=
ry applications from other x86-64 linux OSes

On 2/12/20 3:19 AM, Christian Lohr wrote:
> Ok, I created a symbolic link with "ln -s /lib /lib64" and it seemed=20
> to work. Thanks a lot.

right, if you built multilib image then it will be using /lib64 automatical=
ly.

https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.yoc=
toproject.org%2Fdocs%2Fcurrent%2Fdev-manual%2Fdev-manual.html%23combining-m=
ultiple-versions-library-files-into-one-image&amp;data=3D02%7C01%7C%7Cafab2=
4d3bd894869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C63=
7171279406982418&amp;sdata=3Dk7AMcA2eXvLgqBbtaUQFNSFIFBVitJ8v9oQK5%2FYacRU%=
3D&amp;reserved=3D0

>=20
> *Von:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *Im=20
> Auftrag von *Alexander Kanavin
> *Gesendet:* Mittwoch, 12. Februar 2020 12:00
> *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can=20
> execute binary applications from other x86-64 linux OSes
>=20
> But this is exactly what happens: the kernel reads the dynamic=20
> loader/interpreter path from the binary (which is different than the=20
> list of dynamically linked libraries printed by ldd), isn't able to=20
> find it and stops right there.
>=20
> Try like this:
>=20
> /lib/ld-linux-x86-64.so.2 /usr/share/dotnet/dotnet
>=20
> Alex
>=20
> On Wed, 12 Feb 2020 at 11:45, Lohr, Christian [ext]=20
> <christian.lohr.ext@zeiss.com <mailto:christian.lohr.ext@zeiss.com>> wrot=
e:
>=20
>     I used the x86_64 variant from the layer (it only downloads the
>     binaries and copies them).
>=20
>     And I checked that with ldd, it seemed ok so far:
>=20
>     ---------------------------------------------------------
>=20
>     root@qemux86-64:/usr/share/dotnet# ldd dotnet
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 linux-vdso.so.1 (0x00007fffea54300=
0)
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libpthread.so.0 =3D> /lib/libpthre=
ad.so.0
>     (0x00007f9fde06c000)
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libdl.so.2 =3D> /lib/libdl.so.2 (0=
x00007f9fde067000)
>=20
>     libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x00007f9fddee5000)
>=20
>     libm.so.6 =3D> /lib/libm.so.6 (0x00007f9fddda4000)
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libgcc_s.so.1 =3D> /lib/libgcc_s.s=
o.1=20
> (0x00007f9fddd8a000)
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libc.so.6 =3D> /lib/libc.so.6 (0x0=
0007f9fddbd0000)
>=20
>      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /lib64/ld-linux-x86-64.so.2 =3D>
>     /lib/ld-linux-x86-64.so.2 (0x00007f9fde097000)
>=20
>     Strace didn't help either:
>=20
>     -------------------------------
>=20
>     root@qemux86-64:/# strace /usr/share/dotnet/dotnet
>=20
>     execve("/usr/share/dotnet/dotnet", ["/usr/share/dotnet/dotnet"],
>     0x7ffe22f0ab70 /* 22 vars */) =3D -1 ENOENT (No such file or=20
> directory)
>=20
>     strace: exec: No such file or directory
>=20
>     +++ exited with 1 +++
>=20
>     It's strange that it denies that the binaries are there. Normally I
>     would have expected something like "wrong elf architecture" or
>     something about missing libraries. The only thing I think I could do
>     now, is to turn this "-enable-default-pie" off, but I'm not sure if
>     this helps, and I don't know where to turn it off. And what I'm also
>     trying is to go back to Yocto Rocko Release (for this experiment I
>     used Warrior Release)
>=20
>     *Von:* yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org>> *Im Auftrag von *Alexander
>     Kanavin
>     *Gesendet:* Mittwoch, 12. Februar 2020 10:26
>     *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com
>     <mailto:christian.lohr.ext@zeiss.com>>
>     *Cc:* yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.o=
rg>
>     *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can
>     execute binary applications from other x86-64 linux OSes
>=20
>     That layer does have the x86_64 variant as well, no? Is it not workin=
g?
>=20
>     https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fg=
ithub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%2Fmaster%2Frecipes-runtime%2=
Fdotnet-core%2Fdotnet-core_3.1.1.inc&amp;data=3D02%7C01%7C%7Cafab24d3bd8948=
69269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C63717127940=
6982418&amp;sdata=3DS0WxuzuKiJcCdXLuVKJjgCxcl0kup6TUNT1fDPyQNUc%3D&amp;rese=
rved=3D0
>    =20
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit
> hub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%2Fmaster%2Frecipes-runtim
> e%2Fdotnet-core%2Fdotnet-core_3.1.1.inc&amp;data=3D02%7C01%7C%7Cafab24d3
> bd894869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C
> 637171279406982418&amp;sdata=3DS0WxuzuKiJcCdXLuVKJjgCxcl0kup6TUNT1fDPyQN
> Uc%3D&amp;reserved=3D0>
>=20
>     The error you're seeing is almost certainly due to Yocto using
>     /lib/ld-so... for dynamic loader, and the binary hardcoding /lib64/..=
..
>=20
>     Alex
>=20
>     On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext]
>     <christian.lohr.ext@zeiss.com <mailto:christian.lohr.ext@zeiss.com>>
>     wrote:
>=20
>         Hello Alex,
>=20
>         Thanks for replying. Yes, I know that this isn't the way it
>         works on Yocto (and I told the managers it is a crappy idea to
>         do that more than once). But they need .NET Core in that company
>         I work for, and Mono doesn't work (that's what they told me).
>         Compiling .NET Core through the Yocto process is ugly, because
>         Microsoft used a mixture of shell scripts to compile it for some
>         platforms, it won't work this way on Yocto. Actually one already
>         tried it, but only until .NET Core 2.2:
>         https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fgithub.com%2FTragetaschen%2Fmeta-aspnet&amp;data=3D02%7C01%7C%7Cafab24d3=
bd894869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C63717=
1279406982418&amp;sdata=3DNxojWXOJbRlLijXNQ74h4%2FbPWgvmkvX47w%2FhyqjJUL0%3=
D&amp;reserved=3D0
>        =20
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit
> hub.com%2FTragetaschen%2Fmeta-aspnet&amp;data=3D02%7C01%7C%7Cafab24d3bd8
> 94869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637
> 171279406982418&amp;sdata=3DNxojWXOJbRlLijXNQ74h4%2FbPWgvmkvX47w%2FhyqjJ
> UL0%3D&amp;reserved=3D0>
>=20
>         And despite this, I already managed to get the dotnet binaries
>         for ARM32 and ARM64 already working on a i.MX6 and i.MX8
>=20
>         There's a layer which just deploys the binaries:
>         https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core&amp;data=3D02%7C01%7C%7Cafab24d=
3bd894869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6371=
71279406982418&amp;sdata=3DT00TXDmEFPBo4T66Quvzy4P%2Bkqki5BWaeWqehh%2B2gXY%=
3D&amp;reserved=3D0
>        =20
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit
> hub.com%2FRDunkley%2Fmeta-dotnet-core&amp;data=3D02%7C01%7C%7Cafab24d3bd
> 894869269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C63
> 7171279406982418&amp;sdata=3DT00TXDmEFPBo4T66Quvzy4P%2Bkqki5BWaeWqehh%2B
> 2gXY%3D&amp;reserved=3D0>
>=20
>         This is currently the last step. I thought if it worked on i.MX6
>         and i.MX8 it shouldn't be a problem to get it running on
>         Virtualbox with x86-64. It should only make the things easy for
>         the developers. It isn't even our target platform.
>=20
>         Best regards,
>=20
>         Christian Lohr
>=20
>         *Von:* yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>
>         <yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>> *Im Auftrag von
>         *Alexander Kanavin
>         *Gesendet:* Mittwoch, 12. Februar 2020 09:51
>         *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com
>         <mailto:christian.lohr.ext@zeiss.com>>
>         *Cc:* yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>
>         *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can
>         execute binary applications from other x86-64 linux OSes
>=20
>         Yocto generally does not support this use case. The binary was
>         compiled in a different environment and expects things in
>         different places, and probably being different versions too. I
>         could point out the specific problem why the executable doesn't
>         even start, but it's really the wrong way to approach it. Is the
>         source code for it available?
>=20
>         Microsoft specifically lists which distributions are supported,
>         and there is nothing Yocto-based in it:
>=20
>         https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fdependencies%3Fta=
bs%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C01%7C%7Cafab24d3bd894869=
269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6371712794069=
82418&amp;sdata=3DRAHH6UvIQpXPUyxI5OhlYv1UZyuInRwBQgptqc8g%2Bss%3D&amp;rese=
rved=3D0
>        =20
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdoc
> s.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fdependencies%3Ftab
> s%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C01%7C%7Cafab24d3bd8948
> 69269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171
> 279406982418&amp;sdata=3DRAHH6UvIQpXPUyxI5OhlYv1UZyuInRwBQgptqc8g%2Bss%3
> D&amp;reserved=3D0>
>=20
>         For mono things you can use meta-mono layer, but I am not sure
>         if it provides exactly the item you're after.
>=20
>         Alex
>=20
>         On Wed, 12 Feb 2020 at 09:36, Christian Lohr
>         <christian.lohr.ext@zeiss.com
>         <mailto:christian.lohr.ext@zeiss.com>> wrote:
>=20
>             Hello,
>=20
>             I'm trying to create a normal QEmu (x86-64) Image, which I
>             can let run in Virtualbox. As a addition I deployed .NET
>             Core, which I got from this side:
>=20
>             https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fruntime-=
aspnetcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%7C%7Cafab24d3bd89486=
9269008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171279406=
992365&amp;sdata=3DhDN%2BmtyxOpjAzwD9oNPzqVcSJrYgnoZYV6e31yLtlsI%3D&amp;res=
erved=3D0
>            =20
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdot
> net.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fruntime-aspne
> tcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%7C%7Cafab24d3bd8948692
> 69008d7afe71947%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171279
> 406992365&amp;sdata=3DhDN%2BmtyxOpjAzwD9oNPzqVcSJrYgnoZYV6e31yLtlsI%3D&a
> mp;reserved=3D0>
>=20
>             But I can't execute it:
>=20
>             ----------------------------
>=20
>             root@qemux86-64:/usr/share/dotnet# ./dotnet
>=20
>             -sh: ./dotnet: No such file or directory
>=20
>             But it is there:
>=20
>             ------------------
>=20
>             root@qemux86-64:/usr/share/dotnet# ls -lh
>=20
>             total 116K
>=20
>             -rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt
>=20
>             -rw-r--r-- 1 root root=A0 31K Feb 10 02:33=20
> ThirdPartyNotices.txt
>=20
>             -rwxr-xr-x 1 root root=A0 72K Feb 10 02:33 dotnet
>=20
>             drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host
>=20
>             drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared
>=20
>             It tried to get more information about the=20
> dotnet-executable
>=20
>            =20
> ----------------------------------------------------------------------
> --------
>=20
>             root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
>=20
>             ELF Header:
>=20
>              =A0 Magic:=A0=A0 7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 0=
0=20
> 00
>=20
>              =A0=A0Class:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ELF64
>=20
>              =A0 Data:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2's complement, little
>             endian
>=20
>              =A0 Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1 (current)
>=20
>              =A0 OS/ABI:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 UNIX - System V
>=20
>              =A0 ABI Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 0
>=20
>              =A0 Type:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0EXEC (Executable=20
> file)
>=20
>              =A0 Machine:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Advanced Micro Devices
>             X86-64
>=20
>              =A0 Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x1
>=20
>              =A0 Entry point address:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 0x402f17
>=20
>              =A0 Start of program headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0 64 =
(bytes into file)
>=20
>              =A0 Start of section headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0 710=
32 (bytes into=20
> file)
>=20
>              =A0 Flags:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x0
>=20
>              =A0 Size of this header:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 64 (bytes)
>=20
>              =A0 Size of program headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5=
6 (bytes)
>=20
>              =A0 Number of program headers:=A0=A0=A0=A0=A0=A0=A0=A0 10
>=20
>              =A0 Size of section headers:=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A06=
4 (bytes)
>=20
>              =A0 Number of section headers:=A0=A0=A0=A0=A0=A0=A0=A0 31
>=20
>              =A0 Section header string table index: 30
>=20
>             root@qemux86-64:/usr/share/dotnet# =A0file dotnet
>=20
>             dotnet: ELF 64-bit LSB executable, x86-64, version 1 (SYSV),
>             dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
>             for GNU/Linux 2.6.32,
>             BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf0c99,=20
> stripped
>=20
>             I compared those values with that from Python, which does
>             run on this system
>=20
>            =20
> ----------------------------------------------------------------------
> ---------------------------------
>=20
>             root@qemux86-64:/opt/jre-8/bin# readelf -h=20
> /usr/bin/python3.7
>=20
>             ELF Header:
>=20
>              =A0 Magic:=A0=A0 7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 0=
0=20
> 00
>=20
>              =A0=A0Class:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ELF64
>=20
>              =A0 Data:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2's complement, little
>             endian
>=20
>              =A0 Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1 (current)
>=20
>              =A0 OS/ABI:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0UNIX - System V
>=20
>              =A0 ABI Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 0
>=20
>              =A0 Type:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DYN (Shared object=20
> file)
>=20
>              =A0 Machine:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Advanced Micro Devices
>             X86-64
>=20
>              =A0 Version:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x1
>=20
>              =A0 Entry point address:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 0x1060
>=20
>              =A0 Start of program headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0 64 =
(bytes into file)
>=20
>              =A0 Start of section headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0 125=
68 (bytes into=20
> file)
>=20
>              =A0 Flags:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x0
>=20
>              =A0 Size of this header:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 64 (bytes)
>=20
>              =A0 Size of program headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5=
6 (bytes)
>=20
>              =A0 Number of program headers:=A0=A0=A0=A0=A0=A0=A0=A0 11
>=20
>              =A0 Size of section headers:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6=
4 (bytes)
>=20
>              =A0 Number of section headers:=A0=A0=A0=A0=A0=A0=A0=A0 27
>=20
>              =A0 Section header string table index: 26
>=20
>             root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7
>=20
>             /usr/bin/python3.7: ELF 64-bit LSB pie executable, x86-64,
>             version 1 (SYSV), dynamically linked, interpreter
>             /lib/ld-linux-x86-64.so.2,
>             BuildID[sha1]=3Da455873f278466378405802b0e0171337e52a81c, for
>             GNU/Linux 3.2.0, stripped
>=20
>            =20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>             The only difference I found, is that Python is a "ELF 64-bit
>             LSB pie executable" whereas dotnet is a "ELF 64-bit LSB
>             executable". I tried to turn that PIE (seemed to be a gcc
>             option: --enable-default-pie) feature of, but that didn't
>             work well, and I couldn't find a way to remove it.
>=20
>             ----
>=20
>             Best regards,
>=20
>             Christian Lohr
>=20
>             Im Auftrag von:
>=20
>             Carl Zeiss Meditec AG
>             G=F6schwitzer Strasse 51-52
>=20
>             07745 Jena, Deutschland
>=20
>             christian.lohr.ext@zeiss.com
>             <mailto:christian.lohr.ext@zeiss.com>
>=20
>             Tel: +493641220206
>=20
>=20
>=20
>=20

