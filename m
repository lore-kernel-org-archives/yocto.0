Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECEBC44501
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 10:33:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8751.1768991598678412281
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 02:33:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=hI1wR+xU;
 spf=pass (domain: intel.com, ip: 192.198.163.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768991599; x=1800527599;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=8lSPWzaUVFwB1qicebS1VnOhGzVygEaGeCbh4HtQk4Y=;
  b=hI1wR+xUzpKSdG1O18T4OZg6/ByFgy6PiE+TLPI22uKbxjZZASsK4jzy
   dJ/W4AcdSzCqs+oglXwLAPyaTrKGb9QaLe71qp8FlVS3dN0ux4JbHBObS
   4YkYVpRGV79oUZU8oXYAarKVceyvK6UIQvIV/sqt4h0w7Sc+jEUsv3hP8
   QTeehHsy93fSPxxBFqXSuLb1OWp5+gZhEHhNOKr1J93HEML+bg35keuO2
   77zGvKJcwjwpABkEy9tuKDIAQU+Vm7x2fsqOVdilqr6H6tfOIf3Vgdq1W
   8UAsuElLOqi7t+m4VFngJinOJ4ru1Now9k2otH9V/Y0ccPVXymcw+Ex09
   Q==;
X-CSE-ConnectionGUID: u1e5mJ5FS3qLNj2LONfq0g==
X-CSE-MsgGUID: BXvb4H9AToeDDkLESN+FqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="72803645"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208,217";a="72803645"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 02:33:18 -0800
X-CSE-ConnectionGUID: 4ZRcY7u+SwqHLOAFmQPQCg==
X-CSE-MsgGUID: Lx/DdmnJQsqDr/737v+bpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208,217";a="237084323"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 02:33:18 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:33:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 02:33:17 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:33:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kv0m+D900RAVlP3Ge9OOugj9cyw0FAq3tw0YjXDezeGASq7Erl3JmbWcq1+mPacRDkatKVXQ5bRPjKmygtDVKMDczURMcx+ic5tSVDVaJJFxsu0Une/ZOTPCf8DoswKXw7L/0WxuuNPTGgSSWlT6D3Kok/4R5JUB0YzqV48+CK15seRmR2ApoWnS2hHqqx/tC1+ga2uCG/lSYDHHMXoo2z3CBxeKFUMq141rLQ/Qrx8t+oJTqQGcPB6XiGGsBIt3PPSoI/ccFEJ+2//MAS/aaj6J1gD/+V4kbbYjJNBhPwGhgIneapHDhd6tO6aPFx/hNCNU7xBU+HHwWvoif21vdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2IyzAsFaQ9ZmUh/3zbgAOvjrOGnufHweAoSEaGDsh8=;
 b=LcidLiypgdFqVupGIHQzlGfqAXJ0SAVH6mgualTykaKsfShYImQ1HT2I3uMnJ4rZkvUZlOPHKgLSVN0RUseNcmD5t5MMFu9pBETQ3lOxzp8Q8pUvXRvvSWzQXV08gr2aK2xIwGgNi6NaM58A2nbJeqi6IXKw3m0BLWoWxbqEixmj8rg25N43zglxpHXlftiBTQJZHs8Ec4cTVcxJL2Urca9qRDC+mSTvrfHQKJGrrgJvePrpgj3EaXjkX/mAqMAl2rlfBDJ0Vv6TLD63qpY3H7u1IhRi2g26e8PgkWlj6B2mSC4cAJULJi3rlKxinQIyhEwl4edSUGli/XZI9mudzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CY8PR11MB6961.namprd11.prod.outlook.com (2603:10b6:930:5a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 10:33:08 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:33:08 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yoann Congal <yoann.congal@smile.fr>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is
 Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is
 Released
Thread-Index: AQHcirQ0sr2PFDXPtE602v7nHCpZNLVcakUAgAABna8=
Date: Wed, 21 Jan 2026 10:33:08 +0000
Message-ID: <BL4PR11MB8797013E2F4556DA2548FC42B996A@BL4PR11MB8797.namprd11.prod.outlook.com>
References: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
 <CAMSfU+4og5iAxadRkffgabZmuH=wEYATyMVbwiATUYU_s1CUPg@mail.gmail.com>
In-Reply-To: <CAMSfU+4og5iAxadRkffgabZmuH=wEYATyMVbwiATUYU_s1CUPg@mail.gmail.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CY8PR11MB6961:EE_
x-ms-office365-filtering-correlation-id: ae9fd74d-586e-4b7d-4e54-08de58d877f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|10070799003|4022899009|1800799024|366016|8096899003|13003099007|38070700021|7053199007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?+HDkbZTGuyYD5ZU8/mMN8qxt52nBJ93SU1gx6L/5Lfn1RUnYhpk/tzs035?=
 =?iso-8859-1?Q?KXTmV6J3vGGQefrK5lblwTStn0L46RWuq7JmwJjQsLTV3t0co8rwpo9IvD?=
 =?iso-8859-1?Q?D9uLRKUb44t/lMrJyjL/v//G/SIBZS4LVdeJzB4OGQEeE81TgYcc1pDWel?=
 =?iso-8859-1?Q?lsG+jauKpmTyetq3MxOIgyhcVvkSR1Y1gtBqXYqK6AQ1FWHT8zYZxd899r?=
 =?iso-8859-1?Q?LFZuNlBk4a++8mhwCXMaaL28/xxBbwLcb6RemiTNIlxIbKRnUT6s6Ue9MP?=
 =?iso-8859-1?Q?7OK7RnLCbpJH874VaNuChnKy5i27UrADokDERpBZIXGH9PD+hdw8rdCif/?=
 =?iso-8859-1?Q?r86qbgdltTonhqQ359BRX07+scwEuEimdbUoRn5CGy7uOwf6t057JzE9HZ?=
 =?iso-8859-1?Q?Ua1w+A6K9mk7tWAyM6NxdjE2rWivn8Iz7TliaqXdgB8cH/wvViMv2LolTp?=
 =?iso-8859-1?Q?iiojTOv9ZGoTWbpUXJVtble+v/oY+BGTZ99CFEltoiHd8bQdtFoZ1KvThl?=
 =?iso-8859-1?Q?Fw8+GAmYgI1W3Y2HXv0OoPjWhyBpFFG5jBMwFfOiY3fwLiKhHJQ5UBeO+F?=
 =?iso-8859-1?Q?KXYGY1zc7bOfCrvdHYQEyxhjZYjAnT1h1EuVjZWqEnb53lpQjblD2ZxbMg?=
 =?iso-8859-1?Q?y10bNUYWGiRCd0S/ffSqqjQpKMia+v4P59a9KEhsymSxXW+lyXYkelCFTh?=
 =?iso-8859-1?Q?dD6FPrw/Dgjlfuzdc9lKB3NvYDmEuk4hwmv5gLDxbSK2YdzIOfsRddRRby?=
 =?iso-8859-1?Q?Q5Pjkr64/+caOpeCZKIXL9NKth2l8cuEH2O9T4j3jNJcPogxRKF4LZOdco?=
 =?iso-8859-1?Q?32xKegscuO0yW5IgtnCQfJloiWAIf8qjOGQpsq0fbYg7nRwUMoiV/07TQb?=
 =?iso-8859-1?Q?QYzGQLtf/0xLpItlx0nzbCg+zal2huqa+G90CSHZ5UYoII86eWR1suCw55?=
 =?iso-8859-1?Q?iHQZXGPElfJ92zshDqoiepv59nYZq3+MwEMkcYLgQQ3xCJFy2PhOMgY/24?=
 =?iso-8859-1?Q?QqubNdKxh7SZEZ8edxRU8LEOlUK5ARz73RZBap2DjjnXmPUSpbUm5BWIS3?=
 =?iso-8859-1?Q?yEXn7GpSaENgahxTsMYOl+ZNwM21zbVEMGkYj3nOlNVg4u12fhB8PBesAh?=
 =?iso-8859-1?Q?BaVMeOd4i1lRxpCzsVUHq4EokQdEzinqAekJhwkaakkSvP2Fv9DJ1eDGQF?=
 =?iso-8859-1?Q?GeuBkFtjUJp9Lt/lQaoHz16O5eKvrkH9ouBxBswSv0e7W/emjicOpKghTq?=
 =?iso-8859-1?Q?nEyH3sJqy+kN3SKiw9w1yjOUXLDnEGzWlb7q6UEC6gzF2G4K0cPPgzN8q6?=
 =?iso-8859-1?Q?X6Qqw0iu2fFHMB4lJ2UVkVU+Zs+KQ9HXPgo1kmG5MXnekQ929cljbn8TNr?=
 =?iso-8859-1?Q?JK4l3gCN3rrgCvJmc9Y4mnXL2NH/VFFTQ8QDioMMfVoADzLkIEHOG5yf2E?=
 =?iso-8859-1?Q?btGBvowohlfHodpHl4oWYpKatEYdew8ErWRiXR3XNajCwGjh0hdN9A5rVg?=
 =?iso-8859-1?Q?/Jp1Oys1e/zcX62EIGZDH4LwCGfeID9rufNT0t+C0MuIKxlHbSjXWTKt1B?=
 =?iso-8859-1?Q?foCejnP7nSsljLdErI2KSxGrSvTIFjDYYjFfpuIMW6Z1BSKYuCPAWXzRjx?=
 =?iso-8859-1?Q?IAzuc1hQaSEiM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(4022899009)(1800799024)(366016)(8096899003)(13003099007)(38070700021)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Cwcq27MM06r/GEJEpNIrMv8SoiGpmAebgWjm9/UmCJlPyJRLRoGyrIQ6H/?=
 =?iso-8859-1?Q?lJgVz2nTNaFoCeYt9Q9XkSRXjx5DpnGp3QX1iT12zsw6dEQRxl8LL1FQvD?=
 =?iso-8859-1?Q?lOqxzC8Jc/B7zuM++rb7OOLyV4g88tWHQY4xk8/hp+y7T/MKEnAiXU7Kuw?=
 =?iso-8859-1?Q?27RPIhDkvl927XoZCIR+UDU7Y2FYNRArm7h8n3OFFeJVvvQkT2wegvEjVt?=
 =?iso-8859-1?Q?6cUHY67XKhP9NmVmeyJA6mHdQdhu8pNRXFgmT5I4WPvRPKebQ8yFaYpgqt?=
 =?iso-8859-1?Q?asY4MO/eAXdVrjbrR3ofnxqaWCxmStbb7boWLYU4th5/IzUobMF6Af0gMx?=
 =?iso-8859-1?Q?S8pHatZIJuq4Q9Nx1gmA1Q0NSf6KNyfYl+xbatmOxgWIl7rbNuk+j5ZA7O?=
 =?iso-8859-1?Q?dIzZ4N04/MDgLRE0GfR9d2HYyd3Td0pMFM/mAP1LYt1Gv/2Dkv2LKR4FTb?=
 =?iso-8859-1?Q?RcTDUnxyKuJlu7tOvra0xWUpnDhjQ7pfCKT4mi/gtJzkvr/1TmsX0QEoo+?=
 =?iso-8859-1?Q?sVHLVEf5f99VwRRU5eGkyfkgY+n7MDTqZSR2Z558dMNDmP3fc8N7W5AEku?=
 =?iso-8859-1?Q?VFUrCTMinDhRWwYOdJhpHob39KQD0scR0T/yUpKlq1skiRQice9A6QjTRF?=
 =?iso-8859-1?Q?7rT/GMhHIUY1JQqxzPWHU7UDa96GuMcE1kRLaXOSenbn/wOhGMkCwwo8po?=
 =?iso-8859-1?Q?SLEEUtYTTKVuh9yyYiEMwNcjU3LrTTKxX0tZ9CDpy5cs8GSQ6FiVEdcV6R?=
 =?iso-8859-1?Q?mctavcjnPhK09ngI51O/CI8GIXKv4UGl9BbKzrbLqhCf246G3iJwN8xFR1?=
 =?iso-8859-1?Q?Uz3PLcPjdCVIEHFwDLpyuxmH6HvdwVFamAMhYGtJAW+zuVpahCissnmRTB?=
 =?iso-8859-1?Q?I90yhLlyM1+RDQmoD3n15UOtGL3SEO9nvxtvriUnoFJBszBZYEYQjQM2w0?=
 =?iso-8859-1?Q?ZYiLn3TaKX9xFBnNul7MYcM7tV2JOmgAbYVbAs06anFLNEYRYLVhiUeI3u?=
 =?iso-8859-1?Q?WyzTiSgf/9KK/P6UabnOad4y0RSJuuq4/zdNOr23svWeXLUvVZGHsONwkq?=
 =?iso-8859-1?Q?5ivyo8EGf1jSbu7q3VK6UQI+yNcNAD9J4PYuOwOVK+SI54syg8SXpUrnq7?=
 =?iso-8859-1?Q?Oj6KlJzldS42HJaSU94bBUlqAbMU6TO2f4RcAAqa1H73NoUjsKIfevA/NP?=
 =?iso-8859-1?Q?Zty9zsunlgAo7tvm9I7jzS6Ea1vfwahbppwr+uoqJM6deSod1MMdwunR99?=
 =?iso-8859-1?Q?Eu2AjSFKugHSCMfqMDKTxpvPlKT6noxvjitk/luB8OztJpARaEP6KCcsu+?=
 =?iso-8859-1?Q?PIvXCZe15aYuYHuWgRi/EOZBf/i1opXeHEFRAw/bar6wKmwEq3VzGJwnpE?=
 =?iso-8859-1?Q?ZCg3j2IvoTTmohvlKk2dMpzEjlgQOI2a5crgvX3E7brMWQ5qYzqzWa2W/5?=
 =?iso-8859-1?Q?d2wl4STOYVGLygjO1hGKkRM1uJprS2s2GCsBeUhjzQIF+SMSpeZaHkYYjr?=
 =?iso-8859-1?Q?ByM85MOXHm+xkKWtNFhn4Yq8cCCU9N9Sk6Ff2wI9hWY/BJn+k3KIiF/qBC?=
 =?iso-8859-1?Q?rNTKqGOB1C7kZOvpmLYlD3t2TwU3+X0p3hk7UeuqSEPW5ho20XGd7lkzBu?=
 =?iso-8859-1?Q?VlSWb834YoVxpVc3NnG/B0EFZ1vQACAaDXec7lB+sMuCtwtiK1ZD9RPBbN?=
 =?iso-8859-1?Q?Gf3gFdMafP+uhpjDeU/t2Bi7HmKKhgAEz9xbc6iim348rpIwsrDsW42P1m?=
 =?iso-8859-1?Q?DTf8l++sbtJx5FuqLVgVNAjjG25obq+ejkJyhXham3DA7ivp7sKbxElOE7?=
 =?iso-8859-1?Q?t6UWK8LgEQwU9pzHY8tKu4Ey0gFZSlO4QoHdzJxEBZfK9eEiymFSTsZM2H?=
 =?iso-8859-1?Q?rO?=
x-ms-exchange-antispam-messagedata-1: Dl8snhDxVhcw+Q==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797013E2F4556DA2548FC42B996ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae9fd74d-586e-4b7d-4e54-08de58d877f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 10:33:08.1473
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ozWMkLl4ofb4XPYCU1sjcmYx4HvJ0yZfzuPwXrO3k61wgvxl1wxANBopcLtDwFJ/z67M/YYfeJbSb9KDlY72SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6961
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 10:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66167

--_000_BL4PR11MB8797013E2F4556DA2548FC42B996ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The sync to mirrors.kernel.org is in progress, might take some time to full=
y sync. ??
________________________________
From: Yoann Congal <yoann.congal@smile.fr>
Sent: Wednesday, 21 January 2026 6:22 pm
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Lee, Chee =
Yang <chee.yang.lee@intel.com>
Cc: yocto-announce@lists.yoctoproject.org <yocto-announce@lists.yoctoprojec=
t.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) =
is Released

Hello,

Le mer. 21 janv. 2026 =E0 11:02, Lee Chee Yang via lists.yoctoproject.org<h=
ttp://lists.yoctoproject.org> <chee.yang.lee=3Dintel.com@lists.yoctoproject=
.org<mailto:intel.com@lists.yoctoproject.org>> a =E9crit :
Hi

We are pleased to announce the Yocto Project 5.0.15 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb=
45edc7a8f0f6d5f4fe715c.tar.bz2

FYI, right now, the https://mirrors.kernel.org/... URL returns 404 (the dir=
ectory is present but the files are not)

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.0.15 Release Notes
--------------------------

Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen obt=
use failures in the execution of tar in various tasks after recent host dis=
tro updates. These newer versions of tar contain a CVE fix
which uses a new glibc call/syscall (openat2). The fix is to update to a ne=
wer pseudo version which handles this syscall. This is not included in this=
 stable release but we aim to include it in the next one.

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-docs-d=
84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4fc5=
05e8386693306b6a90b0064c0518.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb=
45edc7a8f0f6d5f4fe715c.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-69881=
57ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983978f=
fd6b12bcefedd4deaffdbbd1.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto-e=
1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3333c=
da3a4ae4706ce6577b987ba3a815.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.15
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c66=
a6639b5f117f554fde9b6b45a.tar.bz2


---------------
 Contributors
---------------

Thanks to the following people who contributed to this release:

Adarsh Jagadish Kamini
Aleksandar Nikolic
Alexander Kanavin
Benjamin Robin (Schneider Electric)
Changqing Li
Daniel Turull
Deepak Rathore
Deepesh Varatharajan
Enrico J=F6rns
Gyorgy Sarvari
Hitendra Prajapati
Hongxu Jia
Hugo SIMELIERE
Jiaying Song
Kai Kang
Kamel Bouhara (Schneider Electric)
Lee Chee Yang
Martin Jansa
Mingli Yu
Moritz Haase
Osama Abdelkader
Ovidiu Panait
Peter Marko
Praveen Kumar
Quentin Schulz
Robert P. J. Day
Ross Burton
Steve Sakoman
Vijay Anusuri
Walter Werner SCHNEIDER
Yash Shinde
Yogita Urade

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840
cmake-native: Fix CVE-2025-9301
cups: Fix CVE-2025-58436 CVE-2025-61915
gnutls: Fix CVE-2025-9820
go: Fix CVE-2025-61727 CVE-2025-61729
go: Update CVE-2025-58187 patches
grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2=
025-61664
libarchive: Fix CVE-2025-60753
libarchive: Fix 2 security issue (https://github.com/libarchive/libarchive/=
pull/2753 and  https://github.com/libarchive/libarchive/pull/2768)
libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experimental=
 code
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293
libsoup: Fix CVE-2025-12105
libssh2: Fix CVE-2023-48795
libxml2: Fix CVE-2025-7425
libxslt: Fix CVE-2025-11731
musl: Fix CVE-2025-26519
python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471
python3: Fix CVE-2025-6075
qemu: Fix CVE-2025-12464
rsync: Fix CVE-2025-10158
ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594
sqlite3: Fix CVE-2025-7709
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231


---------------
Fixes/Feature Changes
---------------
build-appliance-image: Update to scarthgap head revision
classes/create-spdx-2.2: Define SPDX_VERSION to 2.2
cml1.bbclass: use consistent make flags for menuconfig
cross.bbclass: Propagate dependencies to outhash
curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected
curl: Use host CA bundle by default for native(sdk) builds
cve-check: extract extending CVE_STATUS to library function
dev-manual/layers.rst: document "bitbake-layers show-machines"
dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'
dev-manual/new-recipe.rst: typo, "whith" -> "which"
dev-manual/new-recipe.rst: update "recipetool -h" output
dev-manual/sbom.rst: reflect that create-spdx is enabled by default
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n
documentation: link to the Releases page on yoctoproject.org<http://yoctopr=
oject.org> instead of wiki
glslang: fix compiling with gcc15
go: add sdk test
go: extend runtime test
go: remove duplicate arch map in sdk test
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures
kernel-dev: add disable config example
kernel-dev: common: migrate bitbake -e to bitbake-getvar
kernel.bbclass: Add task to export kernel configuration to SPDX
libssh2: fix regression in KEX method validation (GH-1553)
libssh2: upgrade to 1.11.1
migration-guides: add release notes for 4.0.31 and 5.0.13
oe/sdk: fix empty SDK manifests
oeqa/sdk/buildepoxy: skip test in eSDK
oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGECON=
FIG
oeqa: drop unnecessary dependency from go runtime tests
oeqa: fix package detection in go sdk tests
overview-manual: migrate to SVG + fix typo
poky.conf: bump version for 5.0.15
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar
ruby: Upgrade to 3.3.10
rust-target-config: fix nativesdk-libstd-rs build with baremetal
scripts/install-buildtools: Update to 5.0.14
spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM
spdx30: fix cve status for patch files in VEX
spdx30: provide all CVE_STATUS, not only Patched status
spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX
spdx: Revert "spdx: Update for bitbake changes"
spdx: extend CVE_STATUS variables
testsdk: allow user to specify which tests to run
vex.bbclass: add a new class
vex: fix rootfs manifest
xserver-xorg: remove redundant patch





-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66165): https://lists.yoctoproject.org/g/yocto/message/=
66165
Mute This Topic: https://lists.yoctoproject.org/mt/117378981/4316185
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@smi=
le.fr<mailto:yoann.congal@smile.fr>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-



--
Yoann Congal
Smile ECS

--_000_BL4PR11MB8797013E2F4556DA2548FC42B996ABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div data-darkreader-inline-color=3D"" style=3D"font-family: Aptos, Aptos_E=
mbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-te=
xt-000000, #ffffdd);" class=3D"elementToProof">
The sync to mirrors.kernel.org is in progress, might take some time to full=
y sync.
<span id=3D"&#55357;&#56898;">&#55357;&#56898;</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Yoann Congal &lt;yoan=
n.congal@smile.fr&gt;<br>
<b>Sent:</b> Wednesday, 21 January 2026 6:22 pm<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; Lee, Chee Yang &lt;chee.yang.lee@intel.com&gt;<br>
<b>Cc:</b> yocto-announce@lists.yoctoproject.org &lt;yocto-announce@lists.y=
octoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5=
.0.15) is Released</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">Hello,</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">Le&nbsp;mer. 21 janv. 2026 =E0&nbsp=
;11:02, Lee Chee Yang via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;chee.yang.lee=3D<a href=3D"mailto:intel.com@lists.yoctoproj=
ect.org" target=3D"_blank">intel.com@lists.yoctoproject.org</a>&gt; a =E9cr=
it&nbsp;:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi&nbsp;<br>
<br>
We are pleased to announce the Yocto Project 5.0.15 Release is now availabl=
e for download.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a id=3D"x_m_3204446991504922251m_7311700050034234464anchor-57774d4f-b677-b=
841-b1dd-9dfc8e00b2f9" href=3D"https://downloads.yoctoproject.org/releases/=
yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" t=
arget=3D"_blank">https://downloads.yoctoproject.org/releases/yocto/yocto-5.=
0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a id=3D"x_m_3204446991504922251m_7311700050034234464anchor-817928c9-4311-d=
0a0-ee95-dd1bc63bd8b2" href=3D"https://mirrors.kernel.org/yocto/yocto/yocto=
-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" target=3D"_b=
lank">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac39100=
8ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a>&nbsp;</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>FYI, right now, the&nbsp;<a href=3D"https://mirrors.kernel.org/." targ=
et=3D"_blank">https://mirrors.kernel.org/.</a>.. URL returns 404 (the direc=
tory is present but the files are not)</div>
<div>&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a id=3D"x_m_3204446991504922251m_7311700050034234464anchor-689ef0b6-4dab-d=
744-c887-4be34bcd890a" href=3D"https://downloads.yoctoproject.org/releases/=
yocto/yocto-5.0.15/RELEASENOTES" target=3D"_blank">https://downloads.yoctop=
roject.org/releases/yocto/yocto-5.0.15/RELEASENOTES</a>&nbsp;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Full Test Report:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a id=3D"x_m_3204446991504922251m_7311700050034234464anchor-6b272b1e-3f88-f=
5a3-d9d2-dd700e907ea9" href=3D"https://downloads.yoctoproject.org/releases/=
yocto/yocto-5.0.15/testreport.txt" target=3D"_blank">https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.0.15/testreport.txt</a>&nbsp;<br>
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thank you for everyone's contributions to this release.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Chee Yang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"mailto:chee.yang.lee@intel.com" target=3D"_blank">chee.yang.lee@=
intel.com</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Yocto Project Build and Release<br>
<br>
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
yocto-5.0.15 Release Notes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen obt=
use failures in the execution of tar in various tasks after recent host dis=
tro updates. These newer versions of tar contain a CVE fix<br>
which uses a new glibc call/syscall (openat2). The fix is to update to a ne=
wer pseudo version which handles this syscall. This is not included in this=
 stable release but we aim to include it in the next one.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
&nbsp;Repositories/Downloads</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: yocto-docs</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/yocto-docs" ta=
rget=3D"_blank">
https://git.yoctoproject.org/yocto-docs</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/y=
octo-docs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-doc=
s-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d=
84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4fc505e83866=
93306b6a90b0064c0518.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: poky</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/poky" target=
=3D"_blank">
https://git.yoctoproject.org/poky</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/p=
oky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" target=3D"_blank">htt=
ps://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac391=
008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" target=3D"_blank">https://mirror=
s.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5=
f4fe715c.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: openembedded-core</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.openembedded.org/openembedded-c=
ore" target=3D"_blank">
https://git.openembedded.org/openembedded-core</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/o=
ecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2" target=3D"_blank">h=
ttps://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-698815=
7ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-69881=
57ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2" target=3D"_blank">https://mirr=
ors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983978ffd6b12bcefed=
d4deaffdbbd1.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: meta-yocto</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/meta-yocto" ta=
rget=3D"_blank">
https://git.yoctoproject.org/meta-yocto</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/m=
eta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yoct=
o-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e=
1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3333cda3a4ae4=
706ce6577b987ba3a815.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: meta-mingw</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/meta-mingw" ta=
rget=3D"_blank">
https://git.yoctoproject.org/meta-mingw</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-ming=
w-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Name: bitbake</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.openembedded.org/bitbake" targe=
t=3D"_blank">
https://git.openembedded.org/bitbake</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Branch: 2.8</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/b=
itbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2" target=3D"_blank">=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2" target=3D"_blank">https://mir=
rors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c66a6639b5f117=
f554fde9b6b45a.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
&nbsp;Contributors</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks to the following people who contributed to this release:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Adarsh Jagadish Kamini</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Aleksandar Nikolic</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Alexander Kanavin</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Benjamin Robin (Schneider Electric)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Changqing Li</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Daniel Turull</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Deepak Rathore</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Deepesh Varatharajan</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Enrico J=F6rns</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Gyorgy Sarvari</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hitendra Prajapati</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hongxu Jia</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hugo SIMELIERE</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jiaying Song</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Kai Kang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Kamel Bouhara (Schneider Electric)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Lee Chee Yang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Martin Jansa</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Mingli Yu</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Moritz Haase</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Osama Abdelkader</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ovidiu Panait</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Peter Marko</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Praveen Kumar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Quentin Schulz</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Robert P. J. Day</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ross Burton</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Steve Sakoman</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Vijay Anusuri</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Walter Werner SCHNEIDER</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Yash Shinde</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Yogita Urade</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
&nbsp;Known Issues</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
N/A</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Security Fixes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
cmake-native: Fix CVE-2025-9301</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
cups: Fix CVE-2025-58436 CVE-2025-61915</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
gnutls: Fix CVE-2025-9820</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
go: Fix CVE-2025-61727 CVE-2025-61729</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
go: Update CVE-2025-58187 patches</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2=
025-61664</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libarchive: Fix CVE-2025-60753</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libarchive: Fix 2 security issue (<a href=3D"https://github.com/libarchive/=
libarchive/pull/2753" target=3D"_blank">https://github.com/libarchive/libar=
chive/pull/2753</a> and &nbsp;<a href=3D"https://github.com/libarchive/liba=
rchive/pull/2768" target=3D"_blank">https://github.com/libarchive/libarchiv=
e/pull/2768</a>)&nbsp;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experimental=
 code</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libsoup: Fix CVE-2025-12105</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libssh2: Fix CVE-2023-48795</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libxml2: Fix CVE-2025-7425</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libxslt: Fix CVE-2025-11731</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
musl: Fix CVE-2025-26519</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
python3: Fix CVE-2025-6075</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
qemu: Fix CVE-2025-12464</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
rsync: Fix CVE-2025-10158</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
sqlite3: Fix CVE-2025-7709</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Fixes/Feature Changes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
build-appliance-image: Update to scarthgap head revision</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
classes/create-spdx-2.2: Define SPDX_VERSION to 2.2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
cml1.bbclass: use consistent make flags for menuconfig</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
cross.bbclass: Propagate dependencies to outhash</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
curl: Use host CA bundle by default for native(sdk) builds</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
cve-check: extract extending CVE_STATUS to library function</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual/layers.rst: document &quot;bitbake-layers show-machines&quot;</d=
iv>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual/new-recipe.rst: typo, &quot;whith&quot; -&gt; &quot;which&quot;<=
/div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual/new-recipe.rst: update &quot;recipetool -h&quot; output</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual/sbom.rst: reflect that create-spdx is enabled by default</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
documentation: link to the Releases page on <a href=3D"http://yoctoproject.=
org" target=3D"_blank">
yoctoproject.org</a> instead of wiki</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
glslang: fix compiling with gcc15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
go: add sdk test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
go: extend runtime test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
go: remove duplicate arch map in sdk test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures</di=
v>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
kernel-dev: add disable config example</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
kernel-dev: common: migrate bitbake -e to bitbake-getvar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
kernel.bbclass: Add task to export kernel configuration to SPDX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libssh2: fix regression in KEX method validation (GH-1553)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
libssh2: upgrade to 1.11.1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
migration-guides: add release notes for 4.0.31 and 5.0.13</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
oe/sdk: fix empty SDK manifests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
oeqa/sdk/buildepoxy: skip test in eSDK</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGECON=
FIG</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
oeqa: drop unnecessary dependency from go runtime tests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
oeqa: fix package detection in go sdk tests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
overview-manual: migrate to SVG + fix typo</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
poky.conf: bump version for 5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
ruby: Upgrade to 3.3.10</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
rust-target-config: fix nativesdk-libstd-rs build with baremetal</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
scripts/install-buildtools: Update to 5.0.14</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx30: fix cve status for patch files in VEX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx30: provide all CVE_STATUS, not only Patched status</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx: Revert &quot;spdx: Update for bitbake changes&quot;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
spdx: extend CVE_STATUS variables</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
testsdk: allow user to specify which tests to run</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
vex.bbclass: add a new class</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
vex: fix rootfs manifest</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
xserver-xorg: remove redundant patch</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
<br>
<br>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66165): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66165" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/66165</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117378981/431=
6185" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/117378981/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:yoann.c=
ongal@smile.fr" target=3D"_blank">yoann.congal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div>
</blockquote>
</div>
<div><br clear=3D"all">
</div>
<br>
<span class=3D"x_gmail_signature_prefix">-- </span><br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font>
<div><font face=3D"Raleway, regular">Smile ECS</font></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL4PR11MB8797013E2F4556DA2548FC42B996ABL4PR11MB8797namp_--

