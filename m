Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.58])
 by mx.groups.io with SMTP id smtpd.web11.465.1578089778122694728
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 14:16:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=sqWGctqN;
 spf=pass (domain: sierrawireless.com, ip: 40.107.92.58, mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J9el8cmgOVRsokN+Mw33V3zRCepDHLkVTIHV+nHzMLtFyu9jO/wpvqtd+IZc2QMShiLsLyysXqpKMsY+i351IDIunEkxMG2mZsHlIp2hN/W8uWwit3Mj22erKJixR0RkneqjxwtPHCF8ylFuHbLjh7TC3LhGwP6YCEbOvbsenoLDBaM4S6B9de1/B9UgGS9jqDuoHaRLyZEJp+S0T/SqvKAZbaJcjqhkKxIsIoDIB4vkY5O2DihvdbZCkrf6z9zcSRQAjc1s48WkgCj3bpApQjLAjVzu7xmSDCFvmneHQ4Nt2fxwqt720ikeS8PGa32c21UEZdsmduOoTk+uHMX5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MpOSdsINZzLNSEje3BGZ+bi5SgdM6D4txcE/BjLPFO8=;
 b=b6oAfk2F0ppkCnO+vvb9qyQl9QLFTYvZYcZVddSmiUs9krUuFAY+3aC33k/uFKlOj/xq6drWyjufz6cKG439hSWp/llWuk2meWb1NgMpRI8cd7A7cNue6/LcNEiQf0mWt5p/DRAQi7WB9v1AKC+x1uNq9Ng7lqd0pE+Z3hFWwbJo2uv+PUkmFKdQMI9rkucBRztLjEsybwahRqbpxAo4pG+Tzr2VPfJDDQWfcTo5SSPLHeQrrkWWwldhxhX2sVpbwNR9d0RpFLRNQBU8fJ3k7RW34JxPOrTJXNnK1YBwPeh1kTHbmfC0CIw/vai9ZemA/dsW4q2m0CY43FpOqfiigA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MpOSdsINZzLNSEje3BGZ+bi5SgdM6D4txcE/BjLPFO8=;
 b=sqWGctqNTCfno020zoBimUR+v0hS8j5ogFQYUfP1FiSQmhe7ms/ChfiacrsBqWBWq+lCHGges+623IpTRuNtoVBG7a14F7iZ5K5bI/fe/njQa7AMOCnX6VTGV2Gh6Go08TKMbk1QQZty0x5GgBqtVr9Q4AmNqJ1R9KCsRYUEsvA=
Received: from MWHPR02MB2463.namprd02.prod.outlook.com (10.168.204.145) by
 MWHPR02MB3357.namprd02.prod.outlook.com (10.164.133.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Fri, 3 Jan 2020 22:16:15 +0000
Received: from MWHPR02MB2463.namprd02.prod.outlook.com
 ([fe80::b502:13ea:55a7:9cf7]) by MWHPR02MB2463.namprd02.prod.outlook.com
 ([fe80::b502:13ea:55a7:9cf7%11]) with mapi id 15.20.2581.014; Fri, 3 Jan 2020
 22:16:15 +0000
From: "Darcy Watkins" <dwatkins@sierrawireless.com>
To: Richard Leitner <richard.leitner@skidata.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [yocto] meta-java / openjdk-8-native spontaneously broken in warrior on CentOS7
Thread-Topic: [yocto] meta-java / openjdk-8-native spontaneously broken in
 warrior on CentOS7
Thread-Index: AdXCdoRk40GdJvA+TXWv8P2QtzirrgAC2doAAABB77A=
Date: Fri, 3 Jan 2020 22:16:15 +0000
Message-ID: 
 <MWHPR02MB2463E70174ECDCD1E2BD9128B2230@MWHPR02MB2463.namprd02.prod.outlook.com>
References: 
 <MWHPR02MB2463ECAC0C98AF970B2EC44FB2230@MWHPR02MB2463.namprd02.prod.outlook.com>
 <5ed37d27-0669-d6d0-7841-f0e3762ae4f6@skidata.com>
In-Reply-To: <5ed37d27-0669-d6d0-7841-f0e3762ae4f6@skidata.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=dwatkins@sierrawireless.com; 
x-originating-ip: [208.81.120.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e0eb0df2-9a51-4e6d-7824-08d7909a8cb5
x-ms-traffictypediagnostic: MWHPR02MB3357:|MWHPR02MB3357:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MWHPR02MB3357E0FA1BBEF44164EBBD7DB2230@MWHPR02MB3357.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(346002)(39860400002)(376002)(136003)(396003)(366004)(13464003)(199004)(189003)(316002)(64756008)(66946007)(52536014)(4326008)(478600001)(5660300002)(76116006)(966005)(66446008)(66556008)(8676002)(7696005)(86362001)(54906003)(81156014)(6916009)(81166006)(66476007)(186003)(2906002)(55016002)(71200400001)(53546011)(26005)(15974865002)(33656002)(45080400002)(6506007)(9686003)(8936002);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR02MB3357;H:MWHPR02MB2463.namprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: sierrawireless.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aaGCC/0cGnft84PnGm1XPcjLkv5xEMAxTZumn/ll5THNGxSJvaGJf7qG1AN4Qjh8g9jBdcQ8e9THMblJh2F8onE8cZRhC4gbIXLra754QdTKHbDrgfq6Vb2gRxwgCuiY4MCTxhJTbNdTs/jR0mMmpx+gOqXzLEP8xb2UPf17m8c4N1mNHdichDPBwierhDKY35aoV60CX7gxe/oviqM5I6xHA405us5kgT7kHsXbd1Qiu4BqYPFY1i6doCw8eTgBMErfQe3zHZSzFBMqj2ANvfrgIpM6q3iG4Js+9cEmSFlfiIGwC1f4tp8/B3N3gdbxEEqp/w6K1clKo576KIFVi01SVuyrXDOpat9WLhbNIoaYKIxggHT1U4AW1SXUU+rpXXgbO93UhVeyWyKHrRBeJXldvgJUSUtSblGC5SYZ9ZAyZj5vza+M7zWVCT5cqOOcJU8rYTHdvbDOuJjbRwn3DAPyyjd8Rfj0pvssq+BJDGFCBsQksWYC/NkiTs4iFsfwB1HJ6OEa3kcbEeS4qyL+yA==
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0eb0df2-9a51-4e6d-7824-08d7909a8cb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 22:16:15.4611
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhAoUzzhk46+0HOWK31w5JziLHlGOAUh5pqrX/AzyuiL+e5jwm6Y6alzQ/rXVPHLpU3cKxKjaaZgLKV/oNTE5MWowo7IhEIgHPBu9m/xSN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3357
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Richard!

It may only be necessary to revert the BUILD_CFLAGS portion as I imagine th=
at the TARGET_CFLAGS will always be passed to a newer version of GCC.

Regards,

Darcy

Darcy Watkins ::=A0=A0Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct=A0 +1 604 233 7989=A0 =A0::=A0 Fax=A0 +1 604 231 1109  ::  Main  +1 =
604 231 1100
13811 Wireless Way=A0 ::=A0Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com :: www.sierrawireless.com

-----Original Message-----
From: Richard Leitner <richard.leitner@skidata.com>=20
Sent: January-03-20 2:06 PM
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto@lists.yoctoproject.org; openembedded-devel@lists.openembedded.org
Subject: Re: [yocto] meta-java / openjdk-8-native spontaneously broken in w=
arrior on CentOS7

Hi Darcy,


On 1/3/20 9:43 PM, Darcy Watkins wrote:
> Happy New Year
>=20
> Hi,
>=20
> My warrior build with meta-java spontaneously broke over the holidays.

I've backported 2 patches from master to warrior on Dec 27:
https://can01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.op=
enembedded.org%2Fpipermail%2Fopenembedded-devel%2F2019-December%2F203803.ht=
ml&amp;data=3D02%7C01%7Cdwatkins%40sierrawireless.com%7Ce5c6a625ad234f4fced=
e08d790991d2f%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C6371368596175703=
62&amp;sdata=3Dim%2BwhEFpo71xSglTnDV9%2FooRDS99OYZGoRR%2BQrVAB0Y%3D&amp;res=
erved=3D0

In there "commit d5a8ec9e269d1f04a6cf78867ebf74a297f33258" added "-Wno-erro=
r=3Dstringop-overflow" to BUILD and TARGET CFLAGS.


...

>=20
> After inspecting the config.log, it appears that=20
> "-Wno-error=3Dstringop-overflow" was among the BUILD_CFLAGS.=A0 The old G=
CC=20
> 4.8.5 provided by CentOS did not like this.=A0 My workaround was:
>=20
> local.conf:
>=20
>  =A0=A0 BUILD_CFLAGS_remove =3D "-Wno-error=3Dstringop-overflow"
>=20
> I still haven't a clue why this only shows up now when the commit that=20
> changed openjdk-8-release-172b11-common.inc is dated June 25, 2019=20
> "openjdk-8: disable stringop-overflow compiler errors".
>=20

As you correctly mentioned GCC 4.8.5 doesn't support that flag.
AFAIK GCC 7 introduced it.

I will first revert that patch on warrior and send a fixed one (which=20
respects the compiler version) later on.

Thank you for that catch and your email to the ml!

regards;rl
