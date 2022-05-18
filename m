Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F369C433F5
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 01:39:03 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web11.235.1652837933429352955
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 May 2022 18:38:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=A7adLD9R;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652837933; x=1684373933;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=ttOl/f2FDjrlifR2Bbx3qSRGtn8IshBbWufrEqOfNNI=;
  b=A7adLD9RVnC1nVYTrt3ER17+HPfhty5RNyl5cZYcr8LEAZ/2IkW2Uw0X
   dMQiSN8G7qcLKdC3TnJS78cwExrgL1LxRjKRYKSWlxqY88NtWeEXwQLsI
   3foHLHVflHX6hzTceUiOu/FF+tjuywN8vlk6j6G/0mbMq3EHicFwwga6c
   324AxkSBZSwBgfEiSHpFELMk2fbE51JHUKF80NF2hv0y7rHjOVAqXwpuR
   tpPR6FkYwEj3Kdb8/R9YC3Cn1umxcUuz1tScKVjEVbr7H1wYqiau5tIm+
   eMB0SrugefXzN7GkzPpjVCr09ss//1h6BHayoYl7MBjopxeKgQwYYPT2z
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="251315128"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600";
   d="scan'208";a="251315128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 18:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600";
   d="scan'208";a="556059328"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga002.jf.intel.com with ESMTP; 17 May 2022 18:38:51 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 18:38:51 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 18:38:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 17 May 2022 18:38:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 17 May 2022 18:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BR0JYSKoskgDGh/NLXohLV//IzntHb49BvamS5KwakqTCnmeEBj6rByyMahhJboPwQSnsLC/Jpr9RXRlbX6KI4csLVYMLA00ToZMrXs/szim/uo6dqQfInQGSF9R5A7Nk39xGENwDVdcyYf23GcUDSF0++8NOBHjZCCvrbud0hXIU+v539T9vUm7dpZ9g5IqfIRsB0kTdYYkjpp7Gi/XmhTTzgHi3S+kNIxPHCYxjnFhl+w8GDzPevvbZqi+7EPZTLcdWxun11Zu2dX1fJNu6cBkhtjyC4UdE8RUNFFBCDVK7ZPDPeohfO63cl5aM5d8Idc2mAY3eJUmyTqs1uXa9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKb2pnmHIIgsQ4QOpUwSmXBmx+t5FiXeFAGiQKg6dlM=;
 b=mLIn3BSNQ7t5kZJi5R7GnKkntw/G2V/yLJSbj6nvGEHDYWaZbSeidgnM3LAd/03EVCFxAA4NBKUPLFGmUBQJDvUXoWsJZSquMfpPFVHhGLIz/Hg84n8kUAuWqWWidR7wG7vwjw384p1kK1akjqFsDQan9dqq1elfj7gw7PGgYCUK1Th5jn1YbOSKD9UXNdjzVMamiOclGO+7zBi0LIcQCJNSWWY6GzAamrzeYK3uoTmS/n6Sr8fdJVnIylwNjMv1BjHSici5NQF/zsRNfClx8J4tHdwmvRhLizfd82V4ShwlVqMl617NnjWsNsMBUHyMOQMFdendx7aOlljSM0slyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by DM6PR11MB3770.namprd11.prod.outlook.com (2603:10b6:5:13c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Wed, 18 May
 2022 01:38:49 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::9cf7:d539:3bef:7310]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::9cf7:d539:3bef:7310%9]) with mapi id 15.20.5273.014; Wed, 18 May 2022
 01:38:49 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Ross Burton <ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "elizabeth.flanagan@huawei.com" <elizabeth.flanagan@huawei.com>
Subject: RE: [yocto] [meta-zephyr][PATCH 02/10] python3-gitlint: remove,
 unused
Thread-Topic: [yocto] [meta-zephyr][PATCH 02/10] python3-gitlint: remove,
 unused
Thread-Index: AQHYZrwdYs3theBNG0K+QVj+EjJZca0j4bGA
Date: Wed, 18 May 2022 01:38:49 +0000
Message-ID: 
 <CO1PR11MB5026D3ACCB4A5E10E6A784EDC4D19@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
 <20220513112448.2257180-2-ross.burton@arm.com>
In-Reply-To: <20220513112448.2257180-2-ross.burton@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 742058ee-100c-48ef-d7af-08da386f285b
x-ms-traffictypediagnostic: DM6PR11MB3770:EE_
x-microsoft-antispam-prvs: 
 <DM6PR11MB3770BD1E93C1DC73DFC38FD2C4D19@DM6PR11MB3770.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KGyZOtv5iBYd8p+TBwblcBCZ14FGR8jIJ12yoqVvyqX3iY7ulnzzBRTXFiSIbgLXysOCw11XhK47t9GhYufdWxeNC84m3qUGfG1Uo3ose3fk1cW5Qr7J4/yyhiOHeOrkuRp/BUHAZeiP5YXj71AOhCHKjWqCOyfy/b5EvoKPLn5wZ1iwqGZWhuKFUQ15DPyNKB1l9n+RD9OKerCsyGdPfPwykGbE530w4CFDNP2ieDPTD4M0gGIbDqvfQ5LWXOSdGZV2SrnLz2ZoJ9ziR3wnJFveaWPkjHF21M/B1BJgjeOT606vnorxZwIaMQ3egf3iXCVFcPdRn38b3fq9Qiea5lYN/sZF5vJAhZ1eBLQcXjjJMfSEDkD7IUO2CSmUDHlGWArIYOxCw0ur0s+GOPSE1FncRknIySLbKN1f3hesaDPo9BDXEXu/v5d2OEPWvoaTohg6NaasdtfFRZ8TJHzLh+H1dL5DjHysLX9e86dig+eGT6wjKIVicf2aQytZ5cWEiRoxvIzAalAlulckCElsEi9TKcxnt6UjqkKuEGSBENo4imSQG5afo9FCVPcbf/nY1V0s28EoDJOjf0dgympumGIFbGZCTFUJuBvkPI+4Y2zJE7toCixTLrUrwSyedUFA9x0cFcY/zbFHR2zdZMilimL1ixgwqrjS/DRo9CqqQ60mQadjKKNGerBj87S//5w/D9qdTR+mfvVwqN3Bo5CjUrZkT7+LBS/ii+K8NEd3pxEf86rdnmfxoTkKKa1+PgqH6Vsga02VQhos6lnJBJgDdPCbeSXDu2vXyuxTKM/A8hs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(6506007)(71200400001)(76116006)(8676002)(66556008)(38100700002)(2906002)(86362001)(38070700005)(316002)(186003)(83380400001)(82960400001)(5660300002)(508600001)(52536014)(33656002)(66946007)(66574015)(7696005)(55016003)(26005)(66476007)(9686003)(110136005)(122000001)(8936002)(66446008)(64756008)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hZuNaU//x391xMt415WjbTIyYlzxUVvkUm+d4n0qLlfMOpSix2WQBylNW4?=
 =?iso-8859-1?Q?yPunfke9lxxRUWmrvCs9CftIcVPB2ySEYQIWNs1JBk9czve54eIBA2gr7j?=
 =?iso-8859-1?Q?f1MpM4uZBXJnA+kSEZkDCOuPfhlQ9Uo0cAARKjfCsuw4QY8e3S2VSTjEnA?=
 =?iso-8859-1?Q?hBlG+wXICXp40Kd4I1TtMs7Paj4Vz1RXd8v8CJYMco3AQEtjP/iSwKArqC?=
 =?iso-8859-1?Q?6waTMLrU1vIkTkngtD+Gs5jS3YJ6QvB0ogQ1jWcQcI1BxN4NIDa56XiVu7?=
 =?iso-8859-1?Q?UMcKTvzlGjNId3SxlbjMvK/zmh1uCwIH2lJ4i37MZF2IOTP13kmVMjCp5k?=
 =?iso-8859-1?Q?3HQL8/772GkIbNrB/C+zjsXUE1Ea6AUcaAsso2uIBiyyR7N/esibjJH10c?=
 =?iso-8859-1?Q?chwscBAxqr0YSBLmUPI+D/ztEU9fgMivjxx0SE/Ooa+wlafbce5TPq9/Ki?=
 =?iso-8859-1?Q?3CedIuzTqRHaa1gXRXUYqzL/7DHVV9TXIL0hnYaGhHAyakPSW9CwrbTds2?=
 =?iso-8859-1?Q?ZsbihVxrJMPBgeWFD7ZxkEr6IjfxyXTISxOMAXrv+lgmp5B5NNCTRj7baW?=
 =?iso-8859-1?Q?syNRvSJ8xf0+iO2ILgJwym5sm2Bm7jBc1jf3S+fYL7/EotnHW9rm0FAn7U?=
 =?iso-8859-1?Q?0v3uJWZ6Gzl3ob3+RljgkgQqISHYALA3yuT8ZdbXkiNCMVVamDYTnrc6Tw?=
 =?iso-8859-1?Q?ss1Y/7GEAEI5O7WMowqfqsq/chVyk9b6Pau/czE6V2kzJTAoHPprmUnzQ6?=
 =?iso-8859-1?Q?GphFIIKmgVTKPhv3cXoF2zCjL5EwiFixoJhVe0f+67cACZmgKeZ2FkaEUS?=
 =?iso-8859-1?Q?eWZf+S4OiVyYBIEYFpKv42r+tmNKBSlWP706JmVq5bVjH0sTOE0L2ts7W4?=
 =?iso-8859-1?Q?WJcCZb9oUCZSr1Yd44pwBltUp1q249ORU153kWlOVZA7EjWLDOQZflF77p?=
 =?iso-8859-1?Q?0aDNG9NEvsdm4EhfDtSkKilYn2DJNSBRFvDkzWeS4rDlVUx+abLvzC1IAE?=
 =?iso-8859-1?Q?rJ/GpcpyAuoWRfKfnV6UVkbc+hxWSxDT3x4uWCasr5bpiEDPFycvJNRICN?=
 =?iso-8859-1?Q?YJB9eXjmQXC7QP396eXqlr+uJAOFi+3crquPd9C4Whvp/ocyYtfFU/q9IS?=
 =?iso-8859-1?Q?4eWvIOEBq+IbtKGYZ/o0/AgGPQ3aoiVHS56mFzR1lBanAxC5T5V5+MMmjJ?=
 =?iso-8859-1?Q?hc8E0uboBCrMrRyUbQMPfDd5Doatc9tbXD2cvdp834d1Y1cnpnBTYNT7si?=
 =?iso-8859-1?Q?SpJl2E4Vb1IrH3GqAuZDaKv7cFZ568Of/330lVH+VKVkLBWcOGGsbuJapN?=
 =?iso-8859-1?Q?0uveTUG6EGPf9uZz4lwGq+iTFnRJJ+XynIz8CU9UHlNiRNSLsWiQAkgb5i?=
 =?iso-8859-1?Q?ExGzizNAZ9esEisK8Bno/RmNj7W2xzKS3J9HmrPEhqR9trA/YBf0z2oroq?=
 =?iso-8859-1?Q?znHK+VfWvVLQrhDj38Bj4RwpwXgKm9wSBKFjbLrMRLjYpLr4mto4tg9GjG?=
 =?iso-8859-1?Q?fKWUz0N8cnb04wzl0qWQxMLGYp2AOM7lfGmXXiHGi1y1dj4s1ifWKHIGIi?=
 =?iso-8859-1?Q?jGgDvrL8tQoNKxi3LK8jS8w3RYmg9syNVVr/7ka4vdBYkpuImudgdodsK7?=
 =?iso-8859-1?Q?Z0lk04NiziGE84ZN/8A8Uyy+eY+Lwgg4weidINxEurhNQuHgoXCltkTTWw?=
 =?iso-8859-1?Q?VJt1ZUyEQQac1sSXH5dZgdJJXl2XCuYgWrgbHM6xjKhuIKssq2SHWIKQcl?=
 =?iso-8859-1?Q?umNHW/U7Q7d9662yXMLXrrG+m9aeiCY02VLcERDmRP114aOa0rKYT0A43Q?=
 =?iso-8859-1?Q?jiGzu4NfRHTLEwPKwRqKUPQfM7ibvR0=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 742058ee-100c-48ef-d7af-08da386f285b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2022 01:38:49.5510
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 i42a6PDLYKxDfdXQgPG6wUfgvKktJPKGI5voQlnBvFJsqycqDArvb+w11VCzbmE/K96lbvcdsOaXuEJ9JWDHQynEQ1Kop/XDmUMh00/RDkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3770
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 01:39:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57125

Hi Eil=EDs N=ED Fhlannag=E1in,

All these Python recipes can be moved to meta-python if needed !

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Ross Burton
> Sent: Friday, May 13, 2022 7:25 PM
> To: yocto@lists.yoctoproject.org
> Cc: elizabeth.flanagan@huawei.com
> Subject: [yocto] [meta-zephyr][PATCH 02/10] python3-gitlint: remove,
> unused
>=20
> This recipe was added to meta-zephyr in de73bdba but nothing uses it.
>=20
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  .../python/python3-gitlint_0.15.1.bb               | 14 --------------
>  1 file changed, 14 deletions(-)
>  delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-
> gitlint_0.15.1.bb
>=20
> diff --git a/meta-zephyr-core/recipes-devtools/python/python3-
> gitlint_0.15.1.bb b/meta-zephyr-core/recipes-devtools/python/python3-
> gitlint_0.15.1.bb
> deleted file mode 100644
> index 143e2cb..0000000
> --- a/meta-zephyr-core/recipes-devtools/python/python3-gitlint_0.15.1.bb
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -# SPDX-FileCopyrightText: Huawei Inc.
> -# SPDX-License-Identifier: Apache-2.0
> -
> -SUMMARY =3D "Python gitlint"
> -HOMEPAGE =3D "https://pypi.org/project/gitlint"
> -LICENSE =3D "MIT"
> -LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D2ddf75221dde30f107af8595a43b4009"
> -
> -inherit pypi setuptools3
> -
> -PYPI_PACKAGE =3D "gitlint"
> -SRC_URI[md5sum] =3D "4835bedc50129934a47cf099d906d2ca"
> -SRC_URI[sha256sum] =3D
> "4b22916dcbdca381244aee6cb8d8743756cfd98f27e7d1f02e78733f07c3c21c"
> -BBCLASSEXTEND =3D "native nativesdk"
> --
> 2.25.1


