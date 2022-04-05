Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38C3C48BCD
	for <webhook@archiver.kernel.org>; Tue,  5 Apr 2022 17:24:48 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web08.2646.1649136868001117837
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 22:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=FrlQzXg7;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649136868; x=1680672868;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=9Y5X9MGlt7huvnWz4pUuj/kt88XBtZ/k7BQlom3oEwE=;
  b=FrlQzXg7IHP10Fa77Kb0exqciAkcqJi/D/rhW0IkjJcgtg0kxQfXQfUq
   r+kvBmMN5D8l6dBelb6ykTtsjPGrjlt7fiQuotNTGRnJZtCP5hL20DU8U
   gNWMQUlm81ipRey9ncAFRfCmbudKlbbJeR0j20BM/ANk4DNzifxsNSSHf
   VnEr/qjZEBZsEcEAEQ89uDhNakXMZQmxDm1j2iUkoRM+Q3R3UDevGi8nb
   Bbcozvn2Jg++3lmf4OX5isySrrYsmgtj51ivbonyfRuArM0GZoaJ3mOxr
   X+Kp4oG4cKz1NIOu6smSOdyUergh0yPKdLoskea8peYAISX3ubBtgR7hd
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="259499013"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400";
   d="scan'208";a="259499013"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 22:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400";
   d="scan'208";a="696809446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2022 22:34:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 22:34:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 22:34:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 22:34:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSkcgNs/R3XNF/sciut3BVtCHZkzqGXOjOIPmp8b9YMgKTVhQWZYnV304+8H3RbiVg1F7bP4JQOBMDFQ/sW7G7pb7SAKY+/wslKS2SWojC3OCf/VMttlHy7Jgtpv8csm8pUetgdlGNfvrcTMAvbm5NriZ+6+vz7qzutsrNuQ6U/TZTDKR5AYJeE4Up3ksq+yLkwPVlmlQfWdHuN6xGRVJl36zR8NPkExb0iQ+avgkBpI1JZblPNZurae2GgeFVVTSVE+q0fXmODxPmMnB8XkWZrqchfK2nfEWgPXhsO/ri4lvA1Jhuj3mhTrVycyxmouQJFEXS8S7EPA8roE7oClGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BCTsrwxmuXTauk80p46+GJenX6TAz5kTu6PE+5WLy44=;
 b=TtwUZYzhkilGYqxHDPi7egYPGhJSMLw1dmSK/324N2f5MVz/iY/BLLD3z7n5VnyYkE6CLc1mm3gx7qLt7D2Eok1g7Dwwo+6Q1UCTG5E37ttCNMsxn1sJFOkFWAUF0Ef8eK+GWgCEZsx3QUGbhZptHgyI4stgQqb7M33+C5Na5UjU6Ntt8uxdNObg7+yGeS6wurDmnXYIqrztFt2Ky4PkxRHEnaXxSsldyjnY107I8b5oJGyOpK9tHvK0FPouFC9KJ6UNV55DZ1kHfETpWE2Y5vb1iEtO/g49liFNx7czf0dS4jTNVMy5IPmFoTvc7AP7FK9JOQKVvo7D7Vf5OX6rOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by BN8PR11MB3841.namprd11.prod.outlook.com (2603:10b6:408:85::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 05:34:24 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::8430:76ba:8bfa:4504]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::8430:76ba:8bfa:4504%7]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 05:34:24 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Davide Gardenal <davidegarde2000@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Davide Gardenal <davide.gardenal@huawei.com>
Subject: RE: [yocto] [meta-zephyr][PATCH] zephyr-kernel-src: add whitespace to
 fix File not found during build
Thread-Topic: [yocto] [meta-zephyr][PATCH] zephyr-kernel-src: add whitespace
 to fix File not found during build
Thread-Index: AQHYSCZEN+3OkfF94Ea3o235+S63j6zgzA4w
Date: Tue, 5 Apr 2022 05:34:24 +0000
Message-ID: 
 <CO1PR11MB5026C95D6C72B623C25EEE66C4E49@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20220404131634.45521-1-davide.gardenal@huawei.com>
In-Reply-To: <20220404131634.45521-1-davide.gardenal@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62a46942-0207-4b41-d210-08da16c5f1b2
x-ms-traffictypediagnostic: BN8PR11MB3841:EE_
x-microsoft-antispam-prvs: 
 <BN8PR11MB384131C206AE3EC86721A284C4E49@BN8PR11MB3841.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3Ik69wZ4c7Jpn2rzvyuIVFJRz0TkBm5he/6GloU3r1H+nXVqLruCjl9c7Yc3kKA0d8qFTViHgoxNBX+xi2bZrzRLMw6G/dBrVS3kWBXkvKQUdDUjT/qBpiAH93W9HUchyNgEQPT5n6eB23CfeTFCcGJ16PZE7vrPY+Pgfrd4ziIKrTUyrdH/LouWZB4+uJvwZv9sriKJuQmw/OLZA6My/Fb2AKQfs2lQRleRs24q6jcNjy6apF8TORyAMcmKs2guYk+UPhLa8KfREkfSBMHotnUXcRYhK7EK8c+UvQU6zM+GLkUzeoP8Pjo2rf/SME2JmkxUYqKEryhOZKzClqGDhqqkxdqGdg3DnF3d5b4UDpgWwhfrzj9Q9yTG7U2ov3GCmIXi1Z9oHr1ed2A0MZ/aEj038ZyW/E77j2o7GEKH/ZYIkUB5AL8GnlvwruWdFDS2ENH1iv4eGfxqDE3q15c0WY3eSXWSumcscKP2GKjozPjxXPgbyYiFaQMvOhACQiJ54Ccousi0S3YZu1M3tMoP3JjYuRFooDgYu/nbCtTwxfj2E/WhXVKTpUfrt6Tge7Rs/ftbKUFhhF8Y4lCwLpMeRwcAiz3Iyl3NDHCf5qgDAUyuUC/bzT2qVUsVhMJMRnGasHNC+cUDdpqIE9YJhNIXh/ispUX5p7eSWZ7vqun8SQ2zgbz+bdWDNWlKlB1JACZSIr8QH4Zqbs2nL2gVM/crIK6eiwT5mrr59R1qzosPfh/H6p46kUQ4jWJ4Q1jtZw2aM/HPMEGO6C1j+7mDvV1amK5rp+FJdCECiHkuZllNypE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38100700002)(66946007)(4326008)(110136005)(52536014)(64756008)(66476007)(71200400001)(82960400001)(66556008)(76116006)(38070700005)(8936002)(86362001)(966005)(66446008)(8676002)(7696005)(316002)(122000001)(2906002)(6506007)(5660300002)(508600001)(9686003)(55016003)(83380400001)(186003)(26005)(53546011)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?PfcUcpExJZo05TnwTgIPL7w2qQIzSOkWQ0x7l0ShIMqcOqwoksBZ+MFXsO4m?=
 =?us-ascii?Q?MH1fx0n/A8QBzbKHuY0ZsncFnjaBamUoY/ztE2Or+FPluklF5vVyGXa/n652?=
 =?us-ascii?Q?hHTO40nBAO4dvoGFVZB137tHCwP4IdrsxuX1fqG/oFAl4WXo0kSe+kjhb3ms?=
 =?us-ascii?Q?KTcu8pC50vmHb5S0ioqzbH3BK5BRtLqXsNT/J0jYvGMoE/sSDZubDjewjCvg?=
 =?us-ascii?Q?I6Ps+Sjozy1AmWPg2NPdHPn84CLb/7+ZvmcWeWEsV6ATS3CdQJDtDG4z03mj?=
 =?us-ascii?Q?6HAKbkVvKhRSpmQpAFcAQHb7aOhXMJjYkLlb6C+fyE8bW2XVEApMEkY23I9+?=
 =?us-ascii?Q?CuU1ZAbTjjq+kyI374S+Bk82I88kHyE5cI62k1h+t848SbuiN/pvfdzJHT/c?=
 =?us-ascii?Q?ht/2Ry3NgdfbEJyNNSztbGLxrO/PkM0hYs4b4OCPouhP2JGWMR/E+d5ToaJq?=
 =?us-ascii?Q?XCXgCmANwy8eZZCE9i3kwuLJI1rzYMap/ktFjaxRddwsc3UL6fB5dTiejPWM?=
 =?us-ascii?Q?ixKVS3Q4V1UC94r4zQ2lSmeWd8kRsuLpT+kC251Mo7Jm1pvXS6BWvDanEZTz?=
 =?us-ascii?Q?lL5zMma8dpmVJlFCBXgpBeNh4l7lEHYIOpZD5UdgdNMKx/e2zGVnkvJEse2y?=
 =?us-ascii?Q?fbCIEyEyISgQXsFHcKyFDKUppb3TLFF9A5Y9qFIGYMxyAchdu7YroARn/H1H?=
 =?us-ascii?Q?DSwTHxrGGjch/ARQzgPLiugS7JlByc4+e/TMFERzerL3I7el/Ho1RlD0mKVk?=
 =?us-ascii?Q?HLCl5Bklny/pSUyIhC0hxkag0m6sn2X5uJaDB7qqDE2P2bOySteGxmIu0DUd?=
 =?us-ascii?Q?IlXdRbbP9vqLiFOz6n6z+xx/N/Ma1ZfXcBkCJvGU2D8TdUCQeK/6Lkx5r4kL?=
 =?us-ascii?Q?ih+DrJuMLQ/PoP/zkVLFBM8ZSw6Nacf1CpmchxtkNoAnynzdnAEvSYiiPaDx?=
 =?us-ascii?Q?sxHNMP6PHC+rz+W3MWTazMobHur5UwoLyKKcEcd48uxxS27DMV4uf7Pz2vUy?=
 =?us-ascii?Q?AHF8G/9lq0+uETtN9CIV/shoHA63VSJRwhmB3vcpoN6Dv4XblZ9poGYylcpZ?=
 =?us-ascii?Q?O3rmAkq5l6LnN/+iU+zz6dE0NH8Sb4wzNJAHSupk5rhX3/4Nt4IO/UlMWpe9?=
 =?us-ascii?Q?Jj9IJv6a/6682NsfxmSXJWN0NjvsUxKrl7FJR9070VnOBErW4dpeRh7SJ4fD?=
 =?us-ascii?Q?RroylyzUk85AuGs7z5Czgcuz/fHUmKKZiNdjnq2/2oILOzEFtOBVY8CLWW7R?=
 =?us-ascii?Q?71pWEfDtqmfuydQ4ZWiJdQ55acIvQcP1SiUIV4VU3P+/aBY52/BByfX13Zfb?=
 =?us-ascii?Q?bUCM0k6IGZpzYqxLa4gkWNkgitNZ8I1pBP1feysTWUu50LUux5WB6ZCKCHoM?=
 =?us-ascii?Q?mX2PTXNrpOhXjJUqM9MUvIrhqu0cxElxEdxfMhWsAtVJoz5kHI7M2BwhKIX2?=
 =?us-ascii?Q?FnUxBY9j+pWEdyHQB+UAzjYLMPLc5IYYEclnnCe7mNEEqsjRBRPBUqJfeHfm?=
 =?us-ascii?Q?Rmqpyp0qwNTv9SJJAUWsrTTSse7OtaGbwwZ0c7y8t7e+eOkxyo99FOIr70fY?=
 =?us-ascii?Q?ttBOcognmSflmyWfzkINzS/J/WvgnDM1g8CKW1Rx2rLivrCuOaTB5ethU0wK?=
 =?us-ascii?Q?U9AYGIYRwM1NO/AxGc/W51f1aJ5nIR4QYp0hWoYtiflI+/5eZq+AwzS/NbEp?=
 =?us-ascii?Q?GtFBU+AJGRU0CNPkJWV4hxbJYEoN7haQ0knkB96tFf9jwlOBcSqj7Nsd2H33?=
 =?us-ascii?Q?OwhEehpAU76HdvqXNuJeP76Z5CMSi5E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 62a46942-0207-4b41-d210-08da16c5f1b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 05:34:24.5118
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 w7tM/eDpdOEJn/74y3pAYStI5aHYxoisa8wj6vwDIx0g2onJ+7thEhjMQ5pykS28clBN+7mRKVpnj/XO+RSSRcgKipkqnCbJj9+Ib41WNBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3841
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Apr 2022 17:24:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56664



> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Davide Gardenal
> Sent: Monday, April 4, 2022 9:17 PM
> To: yocto@lists.yoctoproject.org
> Cc: Davide Gardenal <davide.gardenal@huawei.com>
> Subject: [yocto] [meta-zephyr][PATCH] zephyr-kernel-src: add whitespace t=
o
> fix File not found during build
>=20
> Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
> ---
>  .../recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-
> src-3.0.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-
> kernel-src-3.0.0.inc
> index f4ea7d3..61a5076 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> 3.0.0.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-
> 3.0.0.inc
> @@ -69,4 +69,4 @@ SRCREV_zscilib =3D
> "12bfe3f0a9fcbfe3edab7eabc9678b6c62875d34"
>  ZEPHYR_BRANCH =3D "v3.0-branch"
>  PV =3D "3.0.0+git${SRCPV}"
>=20
> -SRC_URI +=3D "file://0001-lvgl-add-support-for-lvgl-v8.2.0.patch"
> +SRC_URI +=3D "file://0001-lvgl-add-support-for-lvgl-v8.2.0.patch "

[Naveen] It does not apply. Did you send any patch previously, which I miss=
ed ?

https://git.yoctoproject.org/meta-zephyr/tree/meta-zephyr-core/recipes-kern=
el/zephyr-kernel/zephyr-kernel-src-3.0.0.inc#n70

> --
> 2.32.0


