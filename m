Received: from msgsrv3.atosorigin.de (msgsrv3.atosorigin.de [194.8.120.225])
 by mx.groups.io with SMTP id smtpd.web11.3123.1581504339913932737
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 02:45:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zeiss.onmicrosoft.com header.s=selector2-zeiss-onmicrosoft-com header.b=sK6t753v;
 spf=pass (domain: zeiss.com, ip: 194.8.120.225, mailfrom: christian.lohr.ext@zeiss.com)
Received: from julia-mo1.my-it-solutions.net (HELO julia-mo1.ccsn.de.ao-srv.com) ([194.8.124.177])
  by msgsrv-out1.atosorigin.de with ESMTP; 12 Feb 2020 11:45:37 +0100
Received: from julia-mo1.ccsn.de.ao-srv.com (unknown [194.8.124.177]) by MCS02-MA1.atosorigin.de with smtp
	 id 7c32_4439_8ea06329_f3dd_4258_a487_ae1cc8ba7b72;
	Wed, 12 Feb 2020 11:45:36 +0100
Received: from julia-mo1 (localhost [127.0.0.1])
	by julia-mo1.ccsn.de.ao-srv.com (Postfix) with ESMTP id D9E9C1AB7301;
	Wed, 12 Feb 2020 11:45:09 +0100 (CET)
Received: from ADEFTH01IMS011.zeiss.org (ADEFTH01IMS011.zeiss.org [10.193.156.179])
	by julia-mo1.ccsn.de.ao-srv.com (Postfix) with ESMTP id B4E8A172601F;
	Wed, 12 Feb 2020 11:45:09 +0100 (CET)
Received: from ADEFTH01IMS011.cznet.zeiss.org (localhost [127.0.0.1])
	by ADEFTH01IMS011.zeiss.org (Postfix) with ESMTP id 221548D568;
	Wed, 12 Feb 2020 10:45:37 +0000 (GMT)
Received: from ADEERL01SMS004.cznet.zeiss.org (adeerl01sms004.zeiss.org [10.167.4.50])
	by ADEFTH01IMS011.zeiss.org (Postfix) with ESMTP id 182088D1C7;
	Wed, 12 Feb 2020 10:45:37 +0000 (GMT)
Received: from ADEFUE01IUCC23.zeiss.org (10.167.12.168) by
 adeerl01sms004.cznet.zeiss.org (10.167.4.50) with Microsoft SMTP Server (TLS)
 id 14.3.468.0; Wed, 12 Feb 2020 11:45:36 +0100
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (104.47.10.51) by
 hybrid.ext.smtp.zeiss.com (217.115.69.78) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.845.34; Wed, 12 Feb 2020 11:45:36 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VYZemuJ59LCkZh6iRX99CvB6virisPQ6PDK1Ev4xn5KnH8DKPDJgCJbpyxQ0L10bjYbHXda2pfPMXSieb6PKDhh4sZzjpe5zi7BT6QuoYAKiA0tov2+IxLd4RGQvw+jUkicrh24RC4+QDksAD/UC8CDFqqGDlR8sqA4Yzc8hsHksPWMMxrWnbma2/PcZTekUV7hIZ0dB34TdGJumKhZXZ8pYlnnyV7ECYv0c1xK/UAT2uueVIYX+3GXloPIDv8cUVaMX++Xb8PgwX1I/rRT6SpAyptKl/SURw0pBWdPJ/VBeOUpMg0GAy+RioXo3RSrgaY0Mj9qu1hYNL5KEjYExAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3pc4kOpuCN6fN0zlOPBaynO1u6yIS5n+Qm/W0gzgKVQ=;
 b=SkrAAearAh8ES2fdLxaZkhjQY8RNoYOP62rU3RhXHnp0vHaGTIwkMDzTAWeu6Sl6OoC0Et8SbLtGxIwHAfDMrLXxe0c1j9ECJVNMDXSIC6JOUPGPOazJ9JD+Hq2Ixfpgf3crOSam/iSGB0cBaDLzhrHcOoub/oc+S+mPpw2408sg7pIwYJTCLosld6OcvsJSxg+NnI4QtWjIqXKUsFREIKVP2IcpDq9+hBnwV9EL6aa5gQptUxn+Xvtl4z32CNp7X9L64+7xVJa1FL06xnrTgyVXdgCRRCx69L0HYclGgrBp5C9PEzkHJt2D/2xvvaHO6Zjiwbpcnm9YIxWpHmvejg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3pc4kOpuCN6fN0zlOPBaynO1u6yIS5n+Qm/W0gzgKVQ=;
 b=sK6t753vlaFfgxNR7xh8mkcqdEOolQ1veqivFgOTk87l5LlUqx9mHZyIP+5M3+HLk8bZXE1LgSX51mWwz1BajgXHgPTUJdY61uQQu3ycxpjAmKkzjzR57OXaHZPBCA/rc081V8mvJCJULUOif9TzUCVFDu+u9rbTuiNymVYPhIg=
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM (10.186.130.84) by
 AM0P190MB0769.EURP190.PROD.OUTLOOK.COM (10.186.131.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 12 Feb 2020 10:45:35 +0000
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e]) by AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e%6]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 10:45:35 +0000
From: "Christian Lohr" <christian.lohr.ext@zeiss.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
Thread-Topic: [yocto] Creating a QEmu (x86-64) Image, which can execute binary
 applications from other x86-64 linux OSes
Thread-Index: AdXhe7XXITfcuZjzRnOvXbaB5vpC8wABeHmAAAAvroAAAQPhgAAB6Tfg
Date: Wed, 12 Feb 2020 10:45:35 +0000
Message-ID: <AM0P190MB0770F8B1522BC252623F7098C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
 <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com>
In-Reply-To: <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.200.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e41c9d6-c250-40c7-be0b-08d7afa8b109
x-ms-traffictypediagnostic: AM0P190MB0769:
x-microsoft-antispam-prvs: <AM0P190MB0769BB5B9A4A5537459DBE23C21B0@AM0P190MB0769.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(136003)(376002)(346002)(396003)(199004)(189003)(55016002)(33656002)(316002)(2906002)(8676002)(6916009)(9686003)(86362001)(7696005)(478600001)(966005)(45080400002)(4326008)(26005)(8936002)(55236004)(66446008)(19627235002)(81156014)(76116006)(64756008)(5660300002)(66574012)(186003)(71200400001)(66946007)(66476007)(52536014)(66556008)(6506007)(81166006);DIR:OUT;SFP:1102;SCL:1;SRVR:AM0P190MB0769;H:AM0P190MB0770.EURP190.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: zeiss.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: neHVtSRSeLoVOncrYT5SrF4VHe6aAoAAfJTQhrU9OFilyxmSPflYkCIXxfCGDwyWO0STNL2t56ouNEnBM0iRTxvK88Je9zIHITx6csx/uLhrW86bTM2cNp9MOoEUaloJjYW/8PB+1SNtUy7hv21ozBWehjtdpW23Zy2fhnsFFqUQ6dGg8vkG5R87xgOp45SB32nrzik2iMNj3x6MAACS00dq7BmdCJHcRpHNULIjS2ZDCKxrHBLVRMsKZVXe6PqmAD7o3CEyw9KUjh7A4CyZ4BDz5o6zXO1JxQh9kz2rpntkGQAciXkIYGBIVdiZZd6d9Z1Fmsta8SssQPHGTJm31un12zwSV3GiU8WECMlIZaU+RU/n7gSu8clnlIW4fzt5u4jlEMi9GZaM+6gQrUct4ETjxEzfhCR4WoHyC1sUaAlhggoYNY/w88GiftbFLLSNSFYdrTQwMPQxH9Ce3x84QTl9Jhlj1ALDsafqD6YmBWjB6I2xu4BOK/q8ahw6B6PPOpY7Pc4FKp4dH1JZ9sQkcA==
x-ms-exchange-antispam-messagedata: 9C/5FWnRQ3vvlG1zB/nNpTPvtY8/43SJOoq9YKWE5jkM/qIdT8sjwJv2OzTMZbTco+FtCvII9215l0BtLSVxmJGQq39jVNDk1J9QRbAZpVHcmjzCzI3FbFFzUm/xKIbkrJ8b3JzqSVaPYMbjk96XLQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e41c9d6-c250-40c7-be0b-08d7afa8b109
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 10:45:35.4323
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h/84jVdl3hmmhe/AZ6e3V48rwpKcRTqomMTlZxWloa35YVu1xS7sXEYWlZ0CG+JMX8wlCRN7F3Ay1fVjFfvYC/ayHcy9IEu7ir/+BFbkGVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0769
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Level: 
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0.7
X-NAI-Spam-Version: 2.3.0.9418 : core <6733> : inlines <7189> : streams
 <1847107> : uri <2986892>
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0P190MB0770F8B1522BC252623F7098C21B0AM0P190MB0770EURP_"

--_000_AM0P190MB0770F8B1522BC252623F7098C21B0AM0P190MB0770EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I used the x86_64 variant from the layer (it only downloads the binaries an=
d copies them).
And I checked that with ldd, it seemed ok so far:
---------------------------------------------------------
root@qemux86-64:/usr/share/dotnet# ldd dotnet
            linux-vdso.so.1 (0x00007fffea543000)
            libpthread.so.0 =3D> /lib/libpthread.so.0 (0x00007f9fde06c000)
            libdl.so.2 =3D> /lib/libdl.so.2 (0x00007f9fde067000)
            libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x00007f9fddee5000=
)
            libm.so.6 =3D> /lib/libm.so.6 (0x00007f9fddda4000)
            libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x00007f9fddd8a000)
            libc.so.6 =3D> /lib/libc.so.6 (0x00007f9fddbd0000)
            /lib64/ld-linux-x86-64.so.2 =3D> /lib/ld-linux-x86-64.so.2 (0x0=
0007f9fde097000)

Strace didn't help either:
-------------------------------
root@qemux86-64:/# strace /usr/share/dotnet/dotnet
execve("/usr/share/dotnet/dotnet", ["/usr/share/dotnet/dotnet"], 0x7ffe22f0=
ab70 /* 22 vars */) =3D -1 ENOENT (No such file or directory)
strace: exec: No such file or directory
+++ exited with 1 +++

It's strange that it denies that the binaries are there. Normally I would h=
ave expected something like "wrong elf architecture" or something about mis=
sing libraries. The only thing I think I could do now, is to turn this "-en=
able-default-pie" off, but I'm not sure if this helps, and I don't know whe=
re to turn it off. And what I'm also trying is to go back to Yocto Rocko Re=
lease (for this experiment I used Warrior Release)

Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Alexander Kanavin
Gesendet: Mittwoch, 12. Februar 2020 10:26
An: Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
Cc: yocto@lists.yoctoproject.org
Betreff: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute bina=
ry applications from other x86-64 linux OSes

That layer does have the x86_64 variant as well, no? Is it not working?
https://github.com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/do=
tnet-core/dotnet-core_3.1.1.inc<https://eur01.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%2F=
master%2Frecipes-runtime%2Fdotnet-core%2Fdotnet-core_3.1.1.inc&data=3D02%7C=
01%7C%7C9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8=
%7C1%7C0%7C637170963895389857&sdata=3DcNLHxV3mxEXWObfdhyjXlArkg1xdRc7O7jeXE=
RP%2BpKk%3D&reserved=3D0>

The error you're seeing is almost certainly due to Yocto using /lib/ld-so..=
. for dynamic loader, and the binary hardcoding /lib64/....

Alex

On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] <christian.lohr.ext@zei=
ss.com<mailto:christian.lohr.ext@zeiss.com>> wrote:
Hello Alex,

Thanks for replying. Yes, I know that this isn't the way it works on Yocto =
(and I told the managers it is a crappy idea to do that more than once). Bu=
t they need .NET Core in that company I work for, and Mono doesn't work (th=
at's what they told me). Compiling .NET Core through the Yocto process is u=
gly, because Microsoft used a mixture of shell scripts to compile it for so=
me platforms, it won't work this way on Yocto. Actually one already tried i=
t, but only until .NET Core 2.2: https://github.com/Tragetaschen/meta-aspne=
t<https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithu=
b.com%2FTragetaschen%2Fmeta-aspnet&data=3D02%7C01%7C%7C9fcdf4961c734162c5d0=
08d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C63717096389538985=
7&sdata=3Di%2B0qmtpQc21O1%2FFxhPOmpzKTC8tSZuf%2FXT6pHOi%2Bcrk%3D&reserved=
=3D0>
And despite this, I already managed to get the dotnet binaries for ARM32 an=
d ARM64 already working on a i.MX6 and i.MX8
There's a layer which just deploys the binaries: https://github.com/RDunkle=
y/meta-dotnet-core<https://eur01.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core&data=3D02%7C01%7C%7C9f=
cdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7=
C637170963895399810&sdata=3D7mJmB7jX6AkoZVgSX4GK3nDRvdHW1%2FBqYy1SXQiCA1Q%3=
D&reserved=3D0>
This is currently the last step. I thought if it worked on i.MX6 and i.MX8 =
it shouldn't be a problem to get it running on Virtualbox with x86-64. It s=
hould only make the things easy for the developers. It isn't even our targe=
t platform.

Best regards,


Christian Lohr
Von: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoc=
to@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> Im Auftrag =
von Alexander Kanavin
Gesendet: Mittwoch, 12. Februar 2020 09:51
An: Lohr, Christian [ext] <christian.lohr.ext@zeiss.com<mailto:christian.lo=
hr.ext@zeiss.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Betreff: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute bina=
ry applications from other x86-64 linux OSes

Yocto generally does not support this use case. The binary was compiled in =
a different environment and expects things in different places, and probabl=
y being different versions too. I could point out the specific problem why =
the executable doesn't even start, but it's really the wrong way to approac=
h it. Is the source code for it available?

Microsoft specifically lists which distributions are supported, and there i=
s nothing Yocto-based in it:
https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=3Dne=
tcore31&pivots=3Dos-linux<https://eur01.safelinks.protection.outlook.com/?u=
rl=3Dhttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fd=
ependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&data=3D02%7C01%7C%7C9fcd=
f4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6=
37170963895399810&sdata=3DR%2B7kWekYa8He%2F7zp9lzpkmhbghrz8CMYiXs4f7HrXzM%3=
D&reserved=3D0>

For mono things you can use meta-mono layer, but I am not sure if it provid=
es exactly the item you're after.

Alex

On Wed, 12 Feb 2020 at 09:36, Christian Lohr <christian.lohr.ext@zeiss.com<=
mailto:christian.lohr.ext@zeiss.com>> wrote:
Hello,

I'm trying to create a normal QEmu (x86-64) Image, which I can let run in V=
irtualbox. As a addition I deployed .NET Core, which I got from this side:
https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetc=
ore-3.1.1-linux-x64-binaries<https://eur01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank=
-you%2Fruntime-aspnetcore-3.1.1-linux-x64-binaries&data=3D02%7C01%7C%7C9fcd=
f4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6=
37170963895409777&sdata=3Dhcbhbcd6Qc1PLEtMWTLRd6zOdrFBojA%2B9hp%2FF9IWbdE%3=
D&reserved=3D0>

But I can't execute it:
----------------------------
root@qemux86-64:/usr/share/dotnet# ./dotnet
-sh: ./dotnet: No such file or directory


But it is there:
------------------
root@qemux86-64:/usr/share/dotnet# ls -lh
total 116K
-rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt
-rw-r--r-- 1 root root  31K Feb 10 02:33 ThirdPartyNotices.txt
-rwxr-xr-x 1 root root  72K Feb 10 02:33 dotnet
drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host
drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared


It tried to get more information about the dotnet-executable
---------------------------------------------------------------------------=
---
root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x402f17
  Start of program headers:          64 (bytes into file)
  Start of section headers:          71032 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         10
  Size of section headers:           64 (bytes)
  Number of section headers:         31
  Section header string table index: 30

root@qemux86-64:/usr/share/dotnet#  file dotnet
dotnet: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically li=
nked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildI=
D[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf0c99, stripped


I compared those values with that from Python, which does run on this syste=
m
---------------------------------------------------------------------------=
----------------------------
root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/python3.7
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN (Shared object file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x1060
  Start of program headers:          64 (bytes into file)
  Start of section headers:          12568 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         11
  Size of section headers:           64 (bytes)
  Number of section headers:         27
  Section header string table index: 26

root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7
/usr/bin/python3.7: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV)=
, dynamically linked, interpreter /lib/ld-linux-x86-64.so.2, BuildID[sha1]=
=3Da455873f278466378405802b0e0171337e52a81c, for GNU/Linux 3.2.0, stripped

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

The only difference I found, is that Python is a "ELF 64-bit LSB pie execut=
able" whereas dotnet is a "ELF 64-bit LSB executable". I tried to turn that=
 PIE (seemed to be a gcc option: --enable-default-pie) feature of, but that=
 didn't work well, and I couldn't find a way to remove it.


----

Best regards,

Christian Lohr
Im Auftrag von:
Carl Zeiss Meditec AG
G=F6schwitzer Strasse 51-52
07745 Jena, Deutschland
christian.lohr.ext@zeiss.com<mailto:christian.lohr.ext@zeiss.com>
Tel: +493641220206





--_000_AM0P190MB0770F8B1522BC252623F7098C21B0AM0P190MB0770EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">I used the =
x86_64 variant from the layer (it only downloads the binaries and copies th=
em).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">And I check=
ed that with ldd, it seemed ok so far:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">-----------=
----------------------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ldd=
 dotnet<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; linux-vdso.so.1 (0x=
00007fffea543000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libpthread.so.0 =3D=
&gt; /lib/libpthread.so.0 (0x00007f9fde06c000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libdl.so.2 =3D&gt; =
/lib/libdl.so.2 (0x00007f9fde067000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;mso-fareast-language:EN-US">libstdc&#43;&#43;.so.6 =3D&gt; /usr/lib/li=
bstdc&#43;&#43;.so.6 (0x00007f9fddee5000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;mso-fareast-language:EN-US">libm.so.6 =3D&gt; /lib/libm=
.so.6 (0x00007f9fddda4000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libgcc_s.so.1 =3D&g=
t; /lib/libgcc_s.so.1 (0x00007f9fddd8a000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libc.so.6 =3D&gt; /=
lib/libc.so.6 (0x00007f9fddbd0000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /lib64/ld-linux-x86=
-64.so.2 =3D&gt; /lib/ld-linux-x86-64.so.2 (0x00007f9fde097000)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">Strace didn=
&#8217;t help either:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">-----------=
--------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">root@qemux8=
6-64:/# strace /usr/share/dotnet/dotnet
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">execve(&quo=
t;/usr/share/dotnet/dotnet&quot;, [&quot;/usr/share/dotnet/dotnet&quot;], 0=
x7ffe22f0ab70 /* 22 vars */) =3D -1 ENOENT (No such file or directory)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">strace: exe=
c: No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">&#43;&#43;&=
#43; exited with 1 &#43;&#43;&#43;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">It&#8217;s =
strange that it denies that the binaries are there. Normally I would have e=
xpected something like &#8220;wrong elf architecture&#8221; or something
 about missing libraries. The only thing I think I could do now, is to turn=
 this &#8220;&#8212;enable-default-pie&#8221; off, but I&#8217;m not sure i=
f this helps, and I don&#8217;t know where to turn it off. And what I&#8217=
;m also trying is to go back to Yocto Rocko Release (for this experiment
 I used Warrior Release)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b>Von:</b> yocto@lists.yoctoproject.org &lt;yocto@l=
ists.yoctoproject.org&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 10:26<br>
<b>An:</b> Lohr, Christian [ext] &lt;christian.lohr.ext@zeiss.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">That layer does have the x86_64 variant as well, no?=
 Is it not working?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%=
2Fmaster%2Frecipes-runtime%2Fdotnet-core%2Fdotnet-core_3.1.1.inc&amp;data=
=3D02%7C01%7C%7C9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776=
fa3703e8%7C1%7C0%7C637170963895389857&amp;sdata=3DcNLHxV3mxEXWObfdhyjXlArkg=
1xdRc7O7jeXERP%2BpKk%3D&amp;reserved=3D0">https://github.com/RDunkley/meta-=
dotnet-core/blob/master/recipes-runtime/dotnet-core/dotnet-core_3.1.1.inc</=
a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The error you're seeing is almost certainly due to Y=
octo using /lib/ld-so... for dynamic loader, and the binary hardcoding /lib=
64/....<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] =
&lt;<a href=3D"mailto:christian.lohr.ext@zeiss.com">christian.lohr.ext@zeis=
s.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">Hello Alex,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">Thanks for replying. Yes, I know that this isn&#8217=
;t the way it works on Yocto (and I told the managers it
 is a crappy idea to do that more than once). But they need .NET Core in th=
at company I work for, and Mono doesn&#8217;t work (that&#8217;s what they =
told me). Compiling .NET Core through the Yocto process is ugly, because Mi=
crosoft used a mixture of shell scripts to compile
 it for some platforms, it won&#8217;t work this way on Yocto. Actually one=
 already tried it, but only until .NET Core 2.2:
</span><a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgithub.com%2FTragetaschen%2Fmeta-aspnet&amp;data=3D02%7C01%7C%7C=
9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0=
%7C637170963895389857&amp;sdata=3Di%2B0qmtpQc21O1%2FFxhPOmpzKTC8tSZuf%2FXT6=
pHOi%2Bcrk%3D&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">http=
s://github.com/Tragetaschen/meta-aspnet</span></a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">And despite this, I already managed to get the dotne=
t binaries for ARM32 and ARM64 already working on
 a i.MX6 and i.MX8</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">There&#8217;s a layer which just deploys the =
binaries:
<a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core&amp;data=3D02%7C01%7C%7C9fcdf4=
961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637=
170963895399810&amp;sdata=3D7mJmB7jX6AkoZVgSX4GK3nDRvdHW1%2FBqYy1SXQiCA1Q%3=
D&amp;reserved=3D0" target=3D"_blank">
https://github.com/RDunkley/meta-dotnet-core</a></span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">This is currently the last step. I thought if it wor=
ked on i.MX6 and i.MX8 it shouldn&#8217;t be a problem to
 get it running on Virtualbox with x86-64. It should only make the things e=
asy for the developers. It isn&#8217;t even our target platform.</span><o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">Best regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Christian Lohr</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b>Von:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 09:51<br>
<b>An:</b> Lohr, Christian [ext] &lt;<a href=3D"mailto:christian.lohr.ext@z=
eiss.com" target=3D"_blank">christian.lohr.ext@zeiss.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Yocto generally does not support this use case. The binary was com=
piled in a different environment and expects things in different places, an=
d probably being different versions
 too. I could point out the specific problem why the executable doesn't eve=
n start, but it's really the wrong way to approach it. Is the source code f=
or it available?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Microsoft specifically lists which distributions are supported, an=
d there is nothing Yocto-based in it:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dh=
ttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fdepende=
ncies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C01%7C%7C9fcdf4=
961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637=
170963895399810&amp;sdata=3DR%2B7kWekYa8He%2F7zp9lzpkmhbghrz8CMYiXs4f7HrXzM=
%3D&amp;reserved=3D0" target=3D"_blank">https://docs.microsoft.com/en-us/do=
tnet/core/install/dependencies?tabs=3Dnetcore31&amp;pivots=3Dos-linux</a><o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">For mono things you can use meta-mono layer, but I am not sure if =
it provides exactly the item you're after.
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Alex<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Wed, 12 Feb 2020 at 09:36, Christian Lohr &lt;<a href=3D"mailto=
:christian.lohr.ext@zeiss.com" target=3D"_blank">christian.lohr.ext@zeiss.c=
om</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;marg=
in-bottom:5.0pt;border-color:currentcolor currentcolor currentcolor rgb(204=
,204,204)">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">Hello,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">I&#8217;m trying to create a normal QEmu (x86-64) Im=
age, which I can let run in Virtualbox. As a addition I
 deployed .NET Core, which I got from this side:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dh=
ttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fru=
ntime-aspnetcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%7C%7C9fcdf4961=
c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170=
963895409777&amp;sdata=3Dhcbhbcd6Qc1PLEtMWTLRd6zOdrFBojA%2B9hp%2FF9IWbdE%3D=
&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">https://dotnet.mi=
crosoft.com/download/dotnet-core/thank-you/runtime-aspnetcore-3.1.1-linux-x=
64-binaries</span></a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">But I can&#8217;t execute it:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ./dotnet
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-sh: ./dotnet: No such file or directory</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">But it is there:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ls -lh</span><o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">total 116K</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rw-r--r-- 1 root root&nbsp; 31K Feb 10 02:33 ThirdP=
artyNotices.txt</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rwxr-xr-x 1 root root&nbsp; 72K Feb 10 02:33 dotnet=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">It tried to get more information about the dotnet-ex=
ecutable</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------------------------------=
--------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">ELF Header:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELF64</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2's complement,=
 little endian</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UNIX - System V</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 0</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EXEC (Executabl=
e file)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro Devices X86-64<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x402f17</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 71032 (bytes into file)</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Section header string table index: 30</span><=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# &nbsp;file dotnet=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">dotnet: ELF 64-bit LSB executable, x86-64, version 1=
 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
 for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf=
0c99, stripped</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">I compared those values with that from Python, which=
 does run on this system</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------------------------------=
---------------------------------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/=
python3.7</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">ELF Header:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELF64</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2's complement,=
 little endian</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNIX - System V</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 0</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DYN (Shared obj=
ect file)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro Devices X86-64<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1060</span><o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12568 (bytes into file)</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 27</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Section header string table index: 26</span><=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7</span><o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">/usr/bin/python3.7: ELF 64-bit LSB pie executable, x=
86-64, version 1 (SYSV), dynamically linked, interpreter
 /lib/ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e01713=
37e52a81c, for GNU/Linux 3.2.0, stripped</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">The only difference I found, is that Python is a &#8=
220;ELF 64-bit LSB pie executable&#8221; whereas dotnet is a &#8220;ELF
 64-bit LSB executable&#8221;. I tried to turn that PIE (seemed to be a gcc=
 option: --enable-default-pie) feature of, but that didn&#8217;t work well,=
 and I couldn&#8217;t find a way to remove it.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">Best regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Christian Lohr</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Im Auftrag von:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Carl Zeiss Meditec AG<br>
G=F6schwitzer Strasse 51-52</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">07745 Jena, Deutschland</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black"><a href=3D"mailto:christian.lohr.ext@zeiss.com" target=3D"_bl=
ank">christian.lohr.ext@zeiss.com</a></span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">Tel: &#43;493641220206</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;color:black">&nbsp;</span><o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_AM0P190MB0770F8B1522BC252623F7098C21B0AM0P190MB0770EURP_--
