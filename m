Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.51])
 by mx.groups.io with SMTP id smtpd.web09.14907.1604942227190187383
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 09:17:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Edn9BUgc;
 spf=pass (domain: windriver.com, ip: 40.107.223.51, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S2dF0f/oZdEgcJHg0kNq2xYghF7gcFirddagNBGyhdC4PPozYgEyEGv2TdVFmcF7fpF1YQKiEpPzmDZOjiHhFiUTanEQwxnlaqOh9Lpl4ErbAdw2+E8nOT092018FZYK0sx95wGChAkGnvxqiW5R0aZeDX7S2J6NlkG9vPqnp9EMBLnr3CczADbwYI7aPUHsvjbPJXXVg6fNDOxG87wUrvjYPLfZ/TBlbvIx+hMaxgPZiDVsBIMcyozLThUA1PUOkMNsO3bQ3XautC/xEfJStX/GNBMbk2DKTR6AWBCK05xQ23GDDC5X6lnIhBH+FeJMjYicFujB/B1QCvOjqcF03w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e6/93SzbY0+/7qg/0ufnEihjhewj8fGFCpE9MTECl7k=;
 b=eCut4Wl698SHnA69Tvov7GZ7VbV/kV7G7IuFu1jyMCMVgYMTA2K60YJltQqxrAdsitv6JEacbXHGKSTURUnU3Ydvh/ekIf09pKtyVCIMrMRaXTk7W34Ilc6ybg4RjCRFh5d/umbHEfCxYd50hHGwZQPo4lgi8NGAMMeaFlezvN72cC7CXIvJcXvuVJn5oN7pHhHuPPtcSScTBh/BWywimPlzcCr6+D8TGzDV9URa0Dt/MvZMhZyUzp49mjYCkZDsXUvIrmx+Zus9kwf+75dPh0Q0Ij8ZBvIvvCaUe8hpva1qqPJtRingOOYCYwKtogEAJYVq3rTtLNPCaYVzMB0QeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e6/93SzbY0+/7qg/0ufnEihjhewj8fGFCpE9MTECl7k=;
 b=Edn9BUgciDLH2OvrCNSa8JvHQbMXUwFbn3TktzTD6IE0CQvf0wt9UwDV8yeVifijNVSt1oUXiOjqRFOUkBt/7x5N34rx30FHVzvXklMc6H0wobSjq5Q3Dxfi4Yxydqepk/HlthK24h2xVS1bSoPiytuLuOKoddQ36ictEKd3jIA=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN7PR11MB2706.namprd11.prod.outlook.com
 (2603:10b6:406:b3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Mon, 9 Nov
 2020 17:17:03 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f%11]) with mapi id 15.20.3541.025; Mon, 9 Nov 2020
 17:17:03 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Re: [yocto] [PATCH 1/1] openssl: Add c_rehash to misc package and add perl runtime dependency - resend...
To: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <163F9594C568AA0B.19204@lists.yoctoproject.org>
 <CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com>
Message-ID: <2f137030-1af2-0b93-327e-03d1caaa1469@windriver.com>
Date: Mon, 9 Nov 2020 12:16:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:180::17) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0004.namprd13.prod.outlook.com (2603:10b6:a03:180::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.13 via Frontend Transport; Mon, 9 Nov 2020 17:17:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d351f509-71fa-4364-cea3-08d884d34674
X-MS-TrafficTypeDiagnostic: BN7PR11MB2706:
X-Microsoft-Antispam-PRVS: 
	<BN7PR11MB2706DB9E6BE30FBFDB7C8750F8EA0@BN7PR11MB2706.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+L5zuU6KJHQ5am8OT6iJKKKmTSErYz9WVmbYIG3geETALUJR10nOEmjVLgRAvincDNWPyEwvKXyNhFXLjopyo49ivAFrGyO7gi4ufYBzX5vRBbq+hmVevMriUoFxQoMYaV10eOSFQLbNMXEuRHlrQFL4Af3RK+vwgvF7pdAT+zecAykjZrnNjdvsQgrDoOKDsidmX/wVeK77Kuf/pbcwtt327ic94rs6CqYXYlJJNBgYpXCfqSFS5EdURCW/m0S9m3lP09ymjHZQFE6KGIHaEfHZAd4GMZG4QO0l9YAcDu3bq5K4GOPGhinKUt4jDPLsjjB9P8WjeVQsJGKWQehhKtFwwIJiGdA5Z8GgbA3H9uSs4KIk6L3qcUIWlPttaDUMbwcku0RaKWx5hKf7XLbbrnqfN2bnF0PgmZxlXhNdsfztE0tDKVBM5q4axIzsrBN8X4/ZqSZkpiPbMa8ZbmP01w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(366004)(39850400004)(376002)(186003)(6486002)(316002)(8676002)(6666004)(83380400001)(8936002)(66556008)(66476007)(66946007)(2906002)(2616005)(956004)(31696002)(5660300002)(31686004)(26005)(4001150100001)(16576012)(36756003)(86362001)(966005)(52116002)(110136005)(478600001)(16526019)(53546011)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	1Ho6Fm3UInKzEkNkXs+y6IsCMd6/FELlNX7ZIJHXt6sEUTEox2Jxe0vQ6b9OAddMRM/Zj/B4QtIMudDn3+N4ZKmFrdtZUJE/l4f+lMfLPo556z15JKaWAxOKcZO97swmdM9lOecuo5WGQKGyxe6atCUvobdxvtfNlmM+e8KDH7S3TZ+0qWwzO6zTxA6toeEPgO+2yEHnCNUavSqu9bbSJeK1h0eOI8Xfn5s+8GVtbLYuUxiSSGOFzH5qnn6PHXDIqHXvxE6Jf0Ibictuqvp8TTgfynaAc2wmhz1ihBf8WAM/lPsVgjikwsz8QqIi/ZsmbGVpeYqH5Qgk1Kn83fIM1QEknLxLAchHeIstfGBgpZJQQ/Ch/BvBXBCRkQXHvjx8Ye+g7300QY2KjnXVdpq5dTPoT/b/lc0dD3+2TYzZjHtlTjKkvEGrtbwiXe1JFzk07zI8+TYrE5bKFX7qa+o1mGlVfrr6Jxqac5DjXl6M25k0fvhB2uSkEzbp0VoBN/NguBZbAOwDTQ71ixuaf0z/Yb7A34BybYJdLGv8XFWXn0waQdLASxNvux5hzwWfpo3YXPpv07HU7pOjAIuWj0qtt7Yxccwr7/OMzOrFHLnxNJ+g9sfZAq7bZRUwbWd1DVa2OvJMuXlr5Qcw3wPbWaEd/g==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d351f509-71fa-4364-cea3-08d884d34674
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2020 17:17:02.9680
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TBupapOK/3adV1sHNDvx8jV5I5gRzx2G9NErYUtcE7xzefz66q2UaZ0T1CFkI18e/aOEhLeMRKkQYBCL7DSZpGOO8P2i0If3o/zKq2g07RI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2706
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

Resend to get Stephen's correct email address.

On 2020-10-19 11:29 p.m., Federico Pellegrin wrote:
>
> Sorry, new to the process, adding the pull URL here:
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dfedepel=
l/bug14083
>
> Cheers,
> F.

Hi Federico,

Sorry for the delay. We've been getting the 3.2 release out the door
and participating in conferences.

Please rebase to openssl_1.1.1h and send it to the oe-core list:
openembedded-core@lists.openembedded.org

See: https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedd=
ed


We really should have a link to that site on a "Developers" page on=20
https://www.yoctoproject.org

Stephen Jolly, can you get that to happen and if not, who can?

../Randy

>
> Il giorno mar 20 ott 2020 alle ore 05:27 Federico Pellegrin=20
> <fede@evolware.org <mailto:fede@evolware.org>> ha scritto:
>
>
>     c_rehash implemented in perl is back (in history was moved to
>     shell for
>     some time), so handle it inside the -misc package so just that one
>     will
>     carry the heavy runtime dependency on perl and not the whole openssl
>     package. Note: in misc there were already before a few perl files
>     (tsget.pl <http://tsget.pl> and CA.pl) so the added perl
>     dependency will fix those too.
>
>     [YOCTO #14083]
>
>     Signed-off-by: Federico Pellegrin <fede@evolware.org
>     <mailto:fede@evolware.org>>
>     ---
>     =C2=A0meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb> | 3 ++-
>     =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
>
>     diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     index 815955837b..66d8851426 100644
>     --- a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     @@ -195,13 +195,14 @@ FILES_openssl-conf =3D
>     "${sysconfdir}/ssl/openssl.cnf \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${libdir}/ssl-1.1/openssl.cnf* \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0"
>     =C2=A0FILES_${PN}-engines =3D "${libdir}/engines-1.1"
>     -FILES_${PN}-misc =3D "${libdir}/ssl-1.1/misc"
>     +FILES_${PN}-misc =3D "${libdir}/ssl-1.1/misc ${bindir}/c_rehash"
>     =C2=A0FILES_${PN} =3D+ "${libdir}/ssl-1.1/*"
>     =C2=A0FILES_${PN}_append_class-nativesdk =3D "
>     ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>
>     =C2=A0CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"
>
>     =C2=A0RRECOMMENDS_libcrypto +=3D "openssl-conf"
>     +RDEPENDS_${PN}-misc =3D "perl"
>     =C2=A0RDEPENDS_${PN}-ptest +=3D "openssl-bin perl perl-modules bash"
>
>     =C2=A0RDEPENDS_${PN}-bin +=3D "openssl-conf"
>     --=20
>     2.26.2
>
>
>
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux

