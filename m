Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.101])
 by mx.groups.io with SMTP id smtpd.web12.37530.1593958446062955851
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 07:14:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=LGNI2Vqc;
 spf=pass (domain: outlook.com, ip: 40.92.73.101, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpsFoEey/6CY0v8Wv3GxLrMCXNwps3QlngaXUl/CCGwErBl7h2mJx4gMafw68CWMLwkFi4O4RTPF1hgiiSNoAVuX0SvMmm2ygLc707tQGVTLDb4JH4642Rbl71PbIma6Bus8MUwPZoJnEMrMb9pry6TbX/nUjdYNyU1mnT/htjEZEc6JCH0FAOn0Ae82D2FCGAJQmIaAjzkoF+IXODx03LAR+FzU8sP0Yuyy65Vb5XQ4Wdr8/E33ioGVdLcZ/STll65rOAd0IMA4lZPL2R6aOBapUVhjeXNsfwTtkBAaLfGlwn2guTTdmyXIWrJAPx9CYvSUlWJ5Ofr/96ElT5XeCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uEn183rI52qsvF78wFdp+ERmfCzt9hzzw1CPyoZM2ug=;
 b=lzfGqwdij7tDiOzpfkAOK63g5X14M7SWaNrzGDzT44Mwy8DKy0++FQNcvXTrK1OvGsQeycxtf90q0qKP7MNq+a0BRwgxo9Nh51zpi4NfYAEha1QYFuC2jDVMBiei81Q++XVffsl1acqoqG79B/E/VsPRZjE7WSXZeroKSJAmRAqlUuVJocB6mChBZhf8k8OBoadNNSGBGho39Fxo2H2ISucu9UzZtmFZdGRqADoCAhbLZFyvcDGqBTk+EAzI0AM6I4rvRW3FH1FF4OyzK+uEGUVcgXPPU+Q2N5SMG5PbOT8Bm+smhUB/Of7pKY4aqxgHsNz4zQgMcSn3eMFhOtHK3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uEn183rI52qsvF78wFdp+ERmfCzt9hzzw1CPyoZM2ug=;
 b=LGNI2VqcdMcvcxUUA7j4623tTxK0sRrfg9SnKtLo7gF+8qb+U7+oIq4ZU4XuVR+f2juki7df8ZByGf1vSbtM6TTkjq4KD2eyfR9LgLMttbFNKKINjDKS8Dj4rWEZYzWhmkOLxRWwwrIbg+g57mWh/3Zlmo1AmLak3V+xohfZ3DZSbsIGNPmd/Irm/FZgj8QPLo2IdphC9yOaPVcxRwgJHyecIns+j/8dwuo1tqwfmpGq4jJenZJ7Gj2HieRKYd5w18A9r5d6YAu9RBTHcXUU925Q5dw3w1sVl58f1bt2EIKkHe2PMsmx3kFOxSfWXqPGZJktUkSJ6ct8brjqTu270g==
Received: from VI1EUR04FT057.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0e::4c) by
 VI1EUR04HT087.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0e::308)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24; Sun, 5 Jul
 2020 14:14:03 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:7e0e::40) by VI1EUR04FT057.mail.protection.outlook.com
 (2a01:111:e400:7e0e::274) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24 via Frontend
 Transport; Sun, 5 Jul 2020 14:14:03 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:1E80BD6599E4E9F64D5F4E39B50A3A5030E3E908B1B23B09876E997B4B363FD1;UpperCasedChecksum:2E46B9045B6EF0865B310DC63E2A84CAADD996A5F5906BAD5B14F2D86309EF9D;SizeAsReceived:8712;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::2c81:794e:63ae:e722]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::2c81:794e:63ae:e722%6]) with mapi id 15.20.3153.029; Sun, 5 Jul 2020
 14:14:03 +0000
Subject: Re: [yocto] Missing libc.a for RPI4 #sdk #yocto #linux
To: yocto@lists.yoctoproject.org
References: <h1NK.1593957741263849017.a8nR@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM7PR05MB6881B2CCC3CCC155360C39D8A8680@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 5 Jul 2020 16:14:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <h1NK.1593957741263849017.a8nR@lists.yoctoproject.org>
X-ClientProxiedBy: AM6PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:80::18) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <69178e17-c04d-c881-aafa-ed34f65146ae@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.86.238) by AM6PR10CA0041.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:80::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20 via Frontend Transport; Sun, 5 Jul 2020 14:14:02 +0000
X-Microsoft-Original-Message-ID: <69178e17-c04d-c881-aafa-ed34f65146ae@outlook.com>
X-TMN: [IMjCEkGNjx0CEfZ1A3VLsfO3glc4AoEb]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 5bc5dcd4-6042-41a7-d78f-08d820edab7d
X-MS-TrafficTypeDiagnostic: VI1EUR04HT087:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	clejW65mNL+1vqM2/ngBvXEg7gwq4O1/kXtMwdckuo62PY3Quak6+7W2bC8y8U418E3+DLiQuf9PoqB14YfEyjpsN5IMxSH929RwlQVQ0oe5Rgg581QotrhqC2O/mi9Uw33YJjSKIJ2Vs5xhyBLaGRRU+huR4E5BsZB/h2XlOzJ641ZZvg3+sLTemsQkpXIrjHf1jHYQM+sbgl03gB/Es0G1V876PWjxlcq87G4mq4ZKWP7boBUbBX3SEslfYIL9
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	NR0u2dmDIC/M4hqYUObw6MnanWc6XYluQb85loLoIT0Ln7TVXLOMmbDOQnS9pGG+YxzsQyzzHfl3esKhfAeQ588+Yerft+8pUD8k8eHDFkJXXmscjCDQjO+1YnrLCGxS1QGTmuihYGcH2wAUof3T5Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bc5dcd4-6042-41a7-d78f-08d820edab7d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2020 14:14:03.1793
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR04FT057.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT087
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

I assume you tried to compile on the target using the resulting image,=20
if that's the case the package isn't installed.
By using  'oe-pkgdata-util find-path */libc.a' in your build workspace,=20
you could track down the required package -> 'glibc-staticdev:=20
/usr/lib/libc.a'.
Now you simply have to add this package to your image, by using=20
'IMAGE_INSTALL +=3D "glibc-staticdev"' and the required files will be=20
installed

On 05.07.20 16:02, Pankaj Vinadrao Joshi wrote:
> Hi,
> i have built an image for the raspberrypi4 but i am not able to find=20
> libc.a file in /usr/lib and due to which i am getting an error w.r.t.=20
> static linking
> I am attaching the error which i am getting while compiling the program=
=20
> with --static option.
>=20
> make -C /home/root/lkp-tests/bin/event
> make: Entering directory '/home/root/lkp-tests/bin/event'
> gcc -static=C2=A0 wakeup.o=C2=A0=C2=A0 -o wakeup
> */usr/lib/gcc/aarch64-oe-linux/10.1.0/../../../../aarch64-oe-linux/bin/l=
d:=20
> cannot find -lc*
> collect2: error: ld returned 1 exit status
> make: *** [<builtin>: wakeup] Error 1
>=20
> Can someone suggest me how i can resolve this error,why i am not getting=
=
=20
> libc.a file in /usr/lib??Kindly help
>=20
> Thanks!
>=20
>=20
>=20
