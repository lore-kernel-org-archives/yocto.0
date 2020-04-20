Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.92.70.62])
 by mx.groups.io with SMTP id smtpd.web11.2373.1587390866864822773
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 06:54:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=KJvc9/R1;
 spf=pass (domain: outlook.com, ip: 40.92.70.62, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6enL6gp3Z+wkUqCdNUJC9/nqESm4/t10ZRAzjZxymsjz11dPwHkoqvzUkyYF5yJwDFQe3vZQ/vSjlGrwrmsJVHqA32XtNmbKx7WCH64Gf8+/XELHbpu7jwX1wypwULNy5zP5PnRyreKlE8n4ubVgvDU9eHblfxmH2eeM43z4rxWLt6bw74bPPfOe+T36S5CZsGEPgcfIqUmC8sMjLdcm1R6Bc3jqdw/LaZXTedlTkrDLduy+Ynk0vdf8cqyfKsCv5o7RyEfTqjZo4oTn6wjoLq17/Ni6hDgkli4H58j2L18DQ8vMZGJmvlnpmIXksCfXOg/DNppQeai0HWsL+Zm6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Khh4bQDAZLgtqxsFrY5NfzOoYxwiZQx4Ln5EajPDmVg=;
 b=gWQOQnjQl743SR8K0tHUStLlxXJnOuQXPJKVtDQtMSo3PdgorvshQ2cYrdEQE1eH2CWCVTQYZjJU7n0cIa4hQB+kY603YPkSSbmiQLQWECJZDbhwrNreUTeFEJLH4IkIGac4H8D3aryCU+wfm+jCaM/fQrbRO6d3WhlhjiElbOXUzelLIDF6TXPi6VhstOD7qK/4fVCluaEU2X++ya183toH25e1mKa1BbfDJmU13laOiP/iopWKbDjdaSFsVP5osq5ZnGWZ0c3EGTYzP6lODO2bpUlezAa6Op+1J4rvLXPJePwsN2beYn0uOdWb2hGQtc+NAQhx91onFMQO4Fppkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Khh4bQDAZLgtqxsFrY5NfzOoYxwiZQx4Ln5EajPDmVg=;
 b=KJvc9/R14pFs3MeMdgGr2eahWC+BpJwCcNDd+i7Q9KXuo9eGP9wn9ebY9sHsV5W4LPdnlMRY96GigGg4TWfFGnCAqbqpuF0Myk2aNXbxtUbnoId26J1Tah0eqMYaO+MGMreQR3VDdVqpvDs+0GUuDfjaPXwkoHdSqKX0JyfP8JRgQx5laolYpfmNJAvAhxJyXxeszc6yl5+jXnGwChQ5V4oMfkbSneF3Gam+R1dOGcFL+iZs0Otx2fpkQSLLcDlrctBO5LcJd8fLjjZnus6yAN/cP6rqtXxZSH6rWANZEdVEkQC2CIpHZFn3TDy3DINxFGBhavNVc61724gqXzuzwQ==
Received: from VE1EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:e400:7e09::49) by
 VE1EUR03HT145.eop-EUR03.prod.protection.outlook.com (2a01:111:e400:7e09::424)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.18; Mon, 20 Apr
 2020 13:54:23 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 (2a01:111:e400:7e09::43) by VE1EUR03FT003.mail.protection.outlook.com
 (2a01:111:e400:7e09::108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Mon, 20 Apr 2020 13:54:23 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:702809661EB95B3C2AFC4CF12104F1E418CA6DBC2745D04D278768487EB77D33;UpperCasedChecksum:642A163A4CE77D82792982DC710883790B3FF57D09ABB0D8B9CFD604E584EE59;SizeAsReceived:8798;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39%6]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 13:54:23 +0000
Subject: Re: [yocto] Autotools bitbake recepie unexpected parameters
To: yocto@lists.yoctoproject.org
References: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR05MB428640ED2079CA896DAC9530A8D40@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Mon, 20 Apr 2020 15:54:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
X-ClientProxiedBy: AM6P191CA0054.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:7f::31) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <11fc0f31-9c98-207a-2d35-59ecaf2da6a8@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.37.167) by AM6P191CA0054.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 13:54:22 +0000
X-Microsoft-Original-Message-ID: <11fc0f31-9c98-207a-2d35-59ecaf2da6a8@outlook.com>
X-TMN: [JbTXRdw9uV6ikU9mccDPVTzwIQ7UH+fT]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: b1739e25-100e-4ac4-d692-08d7e53254ae
X-MS-TrafficTypeDiagnostic: VE1EUR03HT145:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nDBhMZ6k6ri2QaRWeEnOtVWmC9dARIsLFejuIHRBk+b+q12jVS2oLoRYNE+T/rCZ4BqVg9bYeY/wX3pJ7ZsxCBSRer5ifE/StsMCc2HpCxwkmEVlOh4SqCW+85qnYK8HKML2KXaxbzJfzTkSmflAVAcCMI2nGHkSwU18JIFhnoun+IBIeb47+m1hkcx3ZwAhelZm0os+DyBMui2VmgZi5iPzaylibijByIYg+7SA7hfaEKiUIpk4KvT3uSY9TJaW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB4286.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	W00ndZnSA/LCrRbf6PqHNRrKl5zE4TD5c/NRutzuFHLdfX0kUI4vuu6C46DxOm7em+qscVIXcRAuBAwHDzRRasNI+NgKERGkAr8IoUjfts5LIkgMI+7xWAOZGy9EesnTOzf5hXmH5Fc1Qgx1CQRriQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1739e25-100e-4ac4-d692-08d7e53254ae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 13:54:23.1442
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT145
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Mikeal,

To me it seems like the makefile has no support for DESTDIR builtin -=20
which is the mechanism poky relies on.
I've seen this projects offers a cmake file as well, maybe you have more=
=20
luck with that, if not you have to patch the makefile.in, so it will=20
understand DESTDIR, which default to none and prefixes every path in the=
=20
makefile on installing.
I'm not sure about the --prefix hack - I would rather go for doing it=20
correctly in the makefile.

Regards
Konrad

On 20.04.20 15:43, Mikael Falkvidd via lists.yoctoproject.org wrote:
> Hi.
>=20
> I am trying to add a bitbake recipe for https://github.com/quiet/libfec
>=20
> This is my libfec/libfec_1.0.bb <http://libfec_1.0.bb>:
> *FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> EXTRA_OECONF =3D "--prefix=3D${D}/usr/local"
>=20
> SRCREV =3D "9750ca0a6d0a786b506e44692776b541f90daa91"
> SRC_URI =3D "git://github.com/quiet/libfec.git=20
> <http://github.com/quiet/libfec.git>"
> S =3D "${WORKDIR}/git"
>=20
> inherit autotools*
>=20
> When I bake it (bitbake -c clean libfec && bitbake libfec -v), I get the=
=
=20
> following error:
> *ERROR: Function failed: do_install (log file is located at=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/temp/log.do_install.14765)
> ERROR: Logfile of failure stored in:=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/temp/log.do_install.14765
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',=
=20
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'commo=
n']
> | DEBUG: Executing shell function do_install
> | + cd=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/build
> | + do_install
> | + autotools_do_install
> | + oe_runmake=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> | + oe_runmake_call=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> | + bbnote make -j 8=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> | + echo NOTE: make -j 8=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> | NOTE: make -j 8=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> | + make -j 8=20
> DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7a=
hf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image=20
> install
> |
> | mkdir -p /usr/lib
> |
> | install -m 644 -p libfec.so libfec.a /usr/lib
> |
> | install: cannot create regular file '/usr/lib/libfec.so': Permission=
=20
> denied*
>=20
> This seems to be due to configure getting lots of parameters that I have=
=
=20
> not actively specified (bindir, sbindir, libexecdir, ...):
>=20
> *autoreconf: configure.in <http://configure.in>: not using Automake
> autoreconf: running: gnu-configize
>=20
> autoreconf: Leaving directory `.'
>=20
> + cd=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/build
> + [ -e=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
> ]
> + oe_runconf
> +=20
> cfgscript=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv=
7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
> + [ -x=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
> ]
>=20
> + bbnote Running=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
>  =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
--host=3Darm-oe-linux-gnueabi
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/usr  =20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_prefix=3D/usr =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/usr/bin       =
 =20
> --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --libexe=
cdir=3D/usr/lib/libfec      =20
>  =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
-sysconfdir=3D/etc=20
> --sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 --localstatedir=3D/var=20
>  =C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 --includedir=3D/usr/include=20
> --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
--infodir=3D/usr/share/info      =20
>  =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 --disable-silent-rules      =20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependency-tracking=20
> --with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-gl=
ibc/sysroots/zynq-soft-nanosdr-mb-v2=20
> --prefix=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7=
ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local
> + echo NOTE: Running=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
>  =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 --host=3Darm-oe-linux-gnueabi
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/us=
r=20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_p=
refix=3D/usr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/us=
r/bin    =20
>  =C2=A0 =C2=A0 =C2=A0 --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 --libexecdir=3D/usr/lib/libfec    =20
>  =C2=A0 =C2=A0 =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0--sysconfdir=3D/etc=20
> --sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 --localstatedir=3D/var=20
>  =C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 --includedir=3D/usr/include=20
> --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
--infodir=3D/usr/share/info      =20
>  =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 --disable-silent-rules      =20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependency-tracking=20
> --with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-gl=
ibc/sysroots/zynq-soft-nanosdr-mb-v2=20
> --prefix=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7=
ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local
> NOTE: Running=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
>  =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0--host=3Darm-oe-linux-gnueabi
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/usr  =20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_prefix=3D/usr =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/usr/bin       =
 =20
> --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --libexe=
cdir=3D/usr/lib/libfec      =20
>  =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
-sysconfdir=3D/etc=20
> --sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 --localstatedir=3D/var=20
>  =C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 --includedir=3D/usr/include=20
> --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
--infodir=3D/usr/share/info      =20
>  =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 --disable-silent-rules      =20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependency-tracking=20
> --with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-gl=
ibc/sysroots/zynq-soft-nanosdr-mb-v2=20
> --prefix=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7=
ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local
> + set +e
> +=20
> /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/libfec/1.0-r0/git/configure=20
> --build=3Dx86_64-linux --host=3Darm-oe-linux-gnueabi=20
> --target=3Darm-oe-linux-gnueabi --prefix=3D/usr --exec_prefix=3D/usr=20
> --bindir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/lib/libfec=
=
=20
> --datadir=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com=20
> --localstatedir=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include=
=20
> --oldincludedir=3D/usr/include --infodir=3D/usr/share/info=20
> --mandir=3D/usr/share/man --disable-silent-rules=20
> --disable-dependency-tracking=20
> --with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-gl=
ibc/sysroots/zynq-soft-nanosdr-mb-v2=20
> --prefix=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7=
ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local*
>=20
> I /think/ I need to find why these parameters are passed, and make sure=
=20
> they are not passed so ./configure can fall back to just using --prefix.
> Could anyone give me any hints on how to troubleshoot this?
>=20
> Best regards
> Mikael
>=20
>=20
>=20
