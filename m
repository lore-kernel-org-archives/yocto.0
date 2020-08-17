Received: from EUR06-DB8-obe.outbound.protection.outlook.com (EUR06-DB8-obe.outbound.protection.outlook.com [40.92.51.25])
 by mx.groups.io with SMTP id smtpd.web11.51340.1597693117855764159
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 12:38:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=g1VBFRSb;
 spf=pass (domain: outlook.com, ip: 40.92.51.25, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOtQaVOw/XmQExfMg2HK08nxMiXWqZatWTsbP5+CqyVHC5zoGbWcb12kRedSYMsNAGGk5BbX986jI0sRBMGKvDFG5gUmaGrsmwrU2On14znGnVx5UXh/9NWHL3j6RAwqYtBUzcLnGkQKqq83YoYWVpFTZFt1T1gxNCYuQcM1Mcp9za1A5eTHvrPlBN8V6gNNz1119B1nf3xT/yEHh/d8cHdtX3X9bCMGK95H54mmzO9dnKGxMamT6zNstaIxBAMXZnbOCMvOmvgNMoQCXfaXsDci/TGbmsjC3evWkFGhaF4O2xvw4PfV38RA8F2fs7ccI8NtR6swW4mITH1JWXYDwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAhqANYleYCAqTHV9HZYTK/suRTkPyAn20lxZH2/Kt4=;
 b=fbU4b5mlXzjjpQ3KWAM9jYMqSR6q2z45kKFsvUQBkxZTqPGEGStVAg720oE/rRgYw7a4Z5FPf7GNWs4nPLlez9CMou9YRfOxsROvUs5kCVSlc2FsCa6BAsfRnlZUcSTNSOfAcxMgaTat/ZnC73L0WWMv0mCBjS0mZVbrE07mqH+gKQcYqk+qNz4Ve/PTCgW5I4R1sjILGPwhUQVEKEWvbVN2QWDjrJQfccobPRHrxKN4z+D+7qJmF2JOX0syUM9N2m37o4BS4TpBZPUzZ+qtEHzEy5SruKIouAuQig8AlgjbX05na2/pbQMeZsq5s+rJXCn1z6FbF7AZw1z68+P79w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAhqANYleYCAqTHV9HZYTK/suRTkPyAn20lxZH2/Kt4=;
 b=g1VBFRSbGbuZpLHQY2yinmJP+Cy+PYm3Nfw2BgECEzLqP0Xdz+dlOcJmysUGGxih6FaUPHK6BxB2uT2x5P06/FcJOSIkQIN8WHZo8Ov+g9iDkyzHBG4Q8obPADaGI0hecRozyb+ALDnxrXfTWEwzeluKTeIOXzZz1QqetrDKvP9Hmhl4rBzZixFO9NNRg20cno5tikEjhszG5CqKKRRZjMjkaWt7XJ+hz+dmcGnYiBMmo3MZmFDRknq2d1yL2R/alfbfevIuuIP5UbeBRQrBeqNa/qTOFp1BMdvW7QboX1AVkqTWFqrNYsQprISPonc5fnbgelZpchUCe9wNOlVpaA==
Received: from DB8EUR06FT025.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc35::4d) by
 DB8EUR06HT257.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc35::167)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16; Mon, 17 Aug
 2020 19:38:35 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:fc35::50) by DB8EUR06FT025.mail.protection.outlook.com
 (2a01:111:e400:fc35::157) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16 via Frontend
 Transport; Mon, 17 Aug 2020 19:38:35 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:6513F73FB46EC21E6C4F09946D6952A6AFF54D6ED505F523BEE7F78402C66295;UpperCasedChecksum:830608B0F36712A7FBB8D40928BF3AE7C6D6BFFAB484F9FB850D6C5176A60560;SizeAsReceived:8766;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e%7]) with mapi id 15.20.3283.027; Mon, 17 Aug 2020
 19:38:35 +0000
Subject: Re: [yocto] pkg-config dependencies?
To: yocto@lists.yoctoproject.org
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
 <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM7PR05MB6881CBB43DD119169321ECE7A85F0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Mon, 17 Aug 2020 21:38:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
X-ClientProxiedBy: AM6P195CA0088.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::29) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <adb6c9b6-eb5f-26d0-e2d6-1ff7b6e92003@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.87.164) by AM6P195CA0088.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16 via Frontend Transport; Mon, 17 Aug 2020 19:38:35 +0000
X-Microsoft-Original-Message-ID: <adb6c9b6-eb5f-26d0-e2d6-1ff7b6e92003@outlook.com>
X-TMN: [bEnZCQ9Zm+v3/kHlwMpx6kiHhaTIzpLj]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 568b0ced-69c8-4707-7c13-08d842e5219c
X-MS-TrafficTypeDiagnostic: DB8EUR06HT257:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4qSLUP+92tyx9Hrs/c4HQZeSNJP61X5TF1CFU1zQq329XNd6QJhY5cetRWDoXaqd9bYvZtsEJzuqCD4wrynDt6hTfT3gitkNzYjnYGZCkTxjWu23PGnIquWxkBJaguZfQFOv1AAZxCsormsqZ/iA0iwB1cGD1B3ZjmPdGn2C6caC3OZRzJRjR8SMRBKYwhn45UvgseddOJRHMCi+dI8ANdxf+dxxpM2J9wEDKUk6lZMOCPR+BwJizuM79zer4GZQ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	0f5OQiseLYm467t7vXQlQyUOrEcKCZWSyLxO/b/1We9NTmDj5CMwW3WktHax2xEwBF+ZbkyMxacMkWeUD1D/08RPXfuBW8Dq/rZZNOfJtdu/ecOCwt49cDQALgXaC3LaYSVbJNLGyODXnlYd+fhQKQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 568b0ced-69c8-4707-7c13-08d842e5219c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2020 19:38:35.4789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	DB8EUR06FT025.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR06HT257
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Did you had a look at=20
https://github.com/kraj/meta-openwrt/blob/master/recipes-networking/ipset/=
ipset_6.38.bb=20
yet?
That pretty much looks like the one you were looking for, but for an=20
older version, right?
Maybe you can try to use that recipe as a basis for your update package

On 17.08.20 20:25, Alexander Kanavin wrote:
> You need to add DEPENDS =3D "libmnl" maybe?
>=20
> RDEPENDS is needed for runtime things like script interpreters or=20
> supplementary data; plain library dependencies are build-time.
>=20
> Alex
>=20
> On Mon, 17 Aug 2020 at 19:14, Rob Prowel <rprowel@comcast.net=20
> <mailto:rprowel@comcast.net>> wrote:
>=20
>     I'm trying to add the ipset utility to my arm build so that I can gr=
oup
>     IP/ports for use in tc and netfilter.=C2=A0 I was able to update the=
 vendor
>     supplied iptools2 recipe to install tc and iptables, but ipset is a
>     fresh recipe, not included in another existing layer.
>=20
>     I'm adding the following in its bb file:
>=20
>     # -----------------------------------------------------------------
>     SRC_URI =3D=C2=A0 "file://ipset-7.6.tar.bz2"
>     SRC_URI[md5sum] =3D "3a6f5952fd1bcf0eefb9c7c087acbfc9"
>=20
>=20
>     inherit pkgconfig
>=20
>     S =3D "${WORKDIR}/ipset-7.6"
>=20
>     RDEPENDS_${PN} +=3D "libmnl"
>=20
>     FILES_${PN} =3D=C2=A0 ""
>     # list will be populated once I know what the package wants to insta=
ll
>=20
>     do_configure(){
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0./configure --prefix=3D/ --host=
=3Darm-linuxeabi
>     }
>=20
>     do_compile(){
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make DESTDIR=3D${D}
>     }
>=20
>     do_install(){
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0oe_runmake install DESTDIR=3D${D}
>     }
>=20
>     # -----------------------------------------------------------------
>=20
>     problem is that it depends on libmnl (which already exists as a lowe=
r
>     layer recipe), and the ipset configure script barfs on pkg-config wi=
th
>     the following message.
>=20
>     | checking whether ln -s works... yes
>     | checking for libmnl... no
>     | configure: error: Package requirements (libmnl >=3D 1) were not me=
t:
>     |
>     | No package 'libmnl' found
>     |
>     | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>     | installed software in a non-standard prefix.
>     |
>     | Alternatively, you may set the environment variables libmnl_CFLAGS
>     | and libmnl_LIBS to avoid the need to call pkg-config.
>     | See the pkg-config man page for more details.
>     | WARNING: exit code 1 from a shell command.
>=20
>=20
>     the PKG_CONFIG_PATH variable seems correct under devshell, but there=
 is
>     no libmnl.pc file in there.=C2=A0 How do I force libmnl to create an=
d
>     stage a
>     proper pkg-config .pc file where it needs to be?
>=20
>=20
>=20
>=20
>=20
>=20
