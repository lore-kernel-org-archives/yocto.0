Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FA2E74900
	for <webhook@archiver.kernel.org>; Wed, 24 Dec 2025 00:43:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.112580.1766537026222199126
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 16:43:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=K5OTxrUy;
 spf=pass (domain: intel.com, ip: 198.175.65.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1766537026; x=1798073026;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=x1MAorzxrrTqb4B4Z8niJDsjePPZRYsR3FF9j/kpdxo=;
  b=K5OTxrUyjcKoWclSBxh7K9imeoD3/wrm6AvauRvZvFhOgR48g7sF9vbA
   OVurBKTpH2mVL66e0DNjfho+QalZd89eUEZcC2pOCW9zxLGuQgk3Bzml4
   Zn3oi6jZ5wZLBBZzYc/YbGM7gqVApbiWhU56QEtFMsvgvS9enjlCcOehF
   ADYwpC1maKGOx6CAtytKJKbtdZbnrcZxfhLoAJrpL67godhkOhjadpS8W
   /moJmTcKQpZNE//baF4NOtLzGfUsAIZ9pQ6YUtfOS3Si3hZi/xaTBOsPb
   znKZDxqKPFRui+ICXn6jB+YpUFZFZH07ERUsQbd8y4Oucgcsgt4oPLaE7
   A==;
X-CSE-ConnectionGUID: 34Fb8qOBQbuAuVoDQWzyrg==
X-CSE-MsgGUID: mGkWyKbQTw2hfts2ZK1NoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="72235467"
X-IronPort-AV: E=Sophos;i="6.21,172,1763452800"; 
   d="scan'208";a="72235467"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Dec 2025 16:43:45 -0800
X-CSE-ConnectionGUID: hZKOucmuTUaAbfNHrdYvSQ==
X-CSE-MsgGUID: GQyFSsMjS+uutCj0zhdFoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,172,1763452800"; 
   d="scan'208";a="199930147"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Dec 2025 16:43:46 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 16:43:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 16:43:45 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 16:43:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mt+qIE0YcMDj3h0OXH6lBPWZwAvWwm7ISnLM0zL5wKIAS8tjsb8Lc3yoHIJMDXi9edY2rgSws1GFGa1R+39G0hgu7YLMLScIu06T4Ucu/C3ZIucYyFtmSrlx1hJz+LSZ+10AjGG78AH1OpmveyTozmuj/of9TX/r98SBnzG3xGyTmPPa+6237utSnRKbvSu8C2WWhUPg2cGp/2hQ3ae0qJ1HkmeDcEGqH1FMMDi5UR3zK/7uOhhxdEcSzWJDlM7HqUFREFRpULSBP39zJqreVuRF/OguYhFXVe0W6y4AMtcaUfH/ynp/jjrmdk8HfruJl38khVtQCSoaJCH0BGVqkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03uzfcXSERTN+BfQR5d6x9yJtrf4cHqLgq0wSklcPtU=;
 b=CNQKdMkcb3v/OQuHFMziN5kz7m7dta27cUoAMXO8Y4Im2MCHorOalhBl8YvOyDr4mZ9hhBndQmjGeuYbKk6D4kg85dYsQU1Yq/Fh0X444EHG7uV0+Qyg6ka6ZmXGdxO41TcGaNonjjKetwxS3sAdHAxKWU2ptYstTw+43Cmjs4EJhNzJcFoSNO8NSL0ZI1vjeRTphRqwC3+aia310BEnzAsOWviZLMD2SbwOpOKgb+q9ABhQ/hpyWv5ilAGgnK92DC2uXJ9MxkVog2gWU37uYAoVmpGo7z4+dxIeC9XNn31/1u0apqn0MgFM+aK5VFAVq/8fM4QpNcYkC+rJagUD/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS0PR11MB8232.namprd11.prod.outlook.com (2603:10b6:8:15d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Wed, 24 Dec
 2025 00:43:43 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.9456.008; Wed, 24 Dec 2025
 00:43:42 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.32(kirkstone-4.0.32) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.32(kirkstone-4.0.32) is
 Released
Thread-Index: AQHcdG1mm1mSAbVsCEmS2vzIxLRykw==
Date: Wed, 24 Dec 2025 00:43:42 +0000
Message-ID: <BL4PR11MB8797A9CCF9ADD0B209E07EABB9B2A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS0PR11MB8232:EE_
x-ms-office365-filtering-correlation-id: d8469b04-8178-4219-0b49-08de42857ce0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|13003099007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?T1lv2R1Ti8vxXa3pnbpjckI3/NIDE4Z/YgnKPrrJqDtPc8B/qN+BVlDIEk?=
 =?iso-8859-1?Q?3aG8H2wApXMVcs8HJyGK4kN2bDS47bUSGs/N/mFPR4i8gsxuEzFJw/nXpN?=
 =?iso-8859-1?Q?3kjI1HZYbLEtEXwI20GlwRbVjlp7jp07yLbs0T7FUuWg/Nvnf6abzTj7ox?=
 =?iso-8859-1?Q?MsBVU4PSokdbPIdml0D8ikVkFCD/a4yTl3MW4pWTHZPciMwHx8uiX03gfY?=
 =?iso-8859-1?Q?vyB2d+TKuAM8qtFOVdkUeRyxDKcnrJ/BtNqeE0FxPXXvSXnZWHqFhpw7Jh?=
 =?iso-8859-1?Q?toFhv9cP2fsVhddVKluhMHnQ6GwKVdLooWFL77nDRFP+vHKh6kl47Oe3WZ?=
 =?iso-8859-1?Q?5n3mZd8FiQZJOruBq6W1BtSiz3q8nIBKPgMxVJWFztRqkso0KZ2HCuKHf6?=
 =?iso-8859-1?Q?DjJzNk7H1k+SbgyCZjFsGtxWVT8lO5mTtUKCDvO2WozoqACgNDLp53EDeO?=
 =?iso-8859-1?Q?pmeCWHuBTcANeomSzWeNrXE/AcU4bAi5K7Bm6S4G1DQQcaK2mQIDkEQR8d?=
 =?iso-8859-1?Q?mG7MIz2khYVXNGmr4cvWtQdj7zKfle6EFROvgulFxrPmF5g+48eDugSzxX?=
 =?iso-8859-1?Q?SuC9d85/Di+hsuJzIyZZZjDM93poekyHIUz0oo4dRPYE2OVhQ0gCb0eTR/?=
 =?iso-8859-1?Q?yq0+4asn+t96dF1vpUpbXpnKMI+sEsq/IhiR6+XxLeZ6V/OHKuQ04Ich4R?=
 =?iso-8859-1?Q?1AC8zTuTJQ9cot2jcQiPqe9O1WwJ49KJ8DNJwcwdAMNfmN64USJi4RqAes?=
 =?iso-8859-1?Q?qfI6JqL8RHmbn8P3yRKlJR9HsmdVu46iwOAnkUaXsKVID15uJtt4iqxowX?=
 =?iso-8859-1?Q?v3cMvejttpvjQL+Wa+Y+eZeusYg1ikpuzwFsJfHOYKhNAf8lHfNIr9F3JU?=
 =?iso-8859-1?Q?+hmwZnqB7b3QH3LMxVnooKZHfjCU5DOWu0bFTlFfK/HoyVvX+5w7BL0+ob?=
 =?iso-8859-1?Q?aN7xB8FsyAvUWdp6wY0W7gF3NkveZWYGgVwRB2VRaIHrnWzHYou2kF3PGA?=
 =?iso-8859-1?Q?YxQ+TSdcktiUr2E9IWVycGdVlhVIgD+DaVtQs6fU0w9gKRDqL/e6G2eLlp?=
 =?iso-8859-1?Q?YNiMAtJW/R8BMRPdB/e5AZzqJj5ap+Nz9sFtQ5hemkamF7aRvFZxBAdnPz?=
 =?iso-8859-1?Q?/MQPCGRKBrodMdqcc4kkJ7Oe0F6/+/qNRb0ZYfjN/CQ8sHBaEqP6AJtXrc?=
 =?iso-8859-1?Q?LsGvxJh6zgBKGqTX66p6LE6JaWWpTBsIPW9D0n+BLgE+56eMXoC2XLeG5Z?=
 =?iso-8859-1?Q?FwJYvSgt2Xkh2kJQNoNLmO7w8vqTSbB5+hT0tPocvRF4xNY94Df80sOd2B?=
 =?iso-8859-1?Q?WSV0V4FmhIYATfrXCRK4mVPYUPlWHGT3g/ZWigLy9Ztn2rdePOeu8URBxo?=
 =?iso-8859-1?Q?qqQAW/Iq5JKqwbqFegzuycbZ/3IGTeZ9T4we2nafk5GftWouxMn5Tw1R/2?=
 =?iso-8859-1?Q?u+TPZnbzQGCkzl3JM1jP/TV9k06q7XdOIWPmm5crdr1v1dk6NFaouuVGFv?=
 =?iso-8859-1?Q?vv1kSqv9i0IlRMaPkxar9XyQH95hbGKqSBFvQa+PQ40Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?YtIFQe1dko3zJUPZ5XnMxF7ofi8hCFxp0LNNKcKZaiBAedlUm97T57RJQm?=
 =?iso-8859-1?Q?xOH6+WGbLo9FSKMek28WAxCYqafmNsHTpg0WjJOZ3fCxzOzlURtgJ9RyC9?=
 =?iso-8859-1?Q?k7k6xQUDbFyPdMxUdvhSoHN4v3oi81grXOSIFOftsnJBVU/UH7RWZHjGPT?=
 =?iso-8859-1?Q?SqHhNFhUHOHN3BZR5fo0fPcLhJp+f6eoadnN7V48rQhL7v06yoznhV6Bpb?=
 =?iso-8859-1?Q?uEtIw0RtJ01oopapWJIesNJDZrBEBqgMVNfT/HdHwjnTiExzF5boQ8SOfx?=
 =?iso-8859-1?Q?qBE6S42C2KpeCodvrdxhHFDKgFLc7ejH4CG9GW/lYnllfRvlTzZosIjexY?=
 =?iso-8859-1?Q?fHkMGk6snSlENY/iafcKXrcNpwux03dA+RYsSbzCaRP3f844togduYnw1t?=
 =?iso-8859-1?Q?tWdMon0ZxcDfj2lx4fmGbKr3bVRr1nblFjKKIWzFS/tgjDdoGARyVAjZLD?=
 =?iso-8859-1?Q?TDsHvqxpVcSXIMloMaoy7ooP4y4tuM0xpz7OPXrke5YNPQ4cmg6c6BENtI?=
 =?iso-8859-1?Q?IPN0ZMsfhlNBjkG/jH43APwcjEtMiD3C+wwzMh97+olxNZ/3UEc6vT6V6Q?=
 =?iso-8859-1?Q?2cfRqOW8EX44c+O5aAbqzLYJQHP0vfnc8HU915YIkjh/QWWRbsxJE+clzm?=
 =?iso-8859-1?Q?NQ368MDYibR51xGqEm5EGotjyI2HOejjTvsSdCWhcFLXCeATI/6CkAg4UU?=
 =?iso-8859-1?Q?WUqyJwTB3/tVCiDSIcAyP3ZVKc1xKwSN9IiczPhhDwK+DaIaxkUf9g5fxO?=
 =?iso-8859-1?Q?0cpArN4LkMzJP0p6XCP+kAh995QHTna76Jm1vrL4ZxKzkS1YIeYi16nz2V?=
 =?iso-8859-1?Q?MDukBgjvwhlogx3HRJvJ68EA+CnwUVFInE2QBKb+KUrmQ73WXxAezTpOpE?=
 =?iso-8859-1?Q?N4oKAFGm7I7bzRXOGHaliNdMzONO2D39AZdiuhNGzw/QXpM2cKV2YbuIZ/?=
 =?iso-8859-1?Q?IgyApOZVaD6MZtkhOidorJrwbuf23GURRy1/NpIZ6tK1c7ZE38kJOEzmAY?=
 =?iso-8859-1?Q?835hoherYwyexitsFK+GYogEm9Azidq9Xa1ptpy/3YCT+UvI2bFZ9fPDNP?=
 =?iso-8859-1?Q?BqglotttQoD4vBTauyNJ/9M1cXiW/ukUUPr256WVSeL8l2qbNX7hA1GPb0?=
 =?iso-8859-1?Q?hyYR7K5j4oE25daBf7YI/7ylRm/g1x3big5EO4MBPxbS1gxBQywOWMVIy4?=
 =?iso-8859-1?Q?41l4Ve2FQeqzCQb5oFBwmdDTdteguu+JlZ0wepoXEOQ3vSAg7k7sAIINla?=
 =?iso-8859-1?Q?R+Y3ZoK1pp7xPh0jPLdL4zqzAvBwxlJrShf7ssryTGmo7GE/uRJ49UhhxB?=
 =?iso-8859-1?Q?xNvw0zf4o12A5K0rxSEkbCgHpNaBmW65j7xKoKE5FVmQgFL37kd35waduB?=
 =?iso-8859-1?Q?mAo45hRnqfO9U5C/6X+fPSXk9R+pGM3B5J31B2ntDF1JtN03/bzV4Fo5tK?=
 =?iso-8859-1?Q?rqqniSH0ksJ69boEeJd4wiSYB1nBRPlEsNlvNFlwZ3tYQTuoA35jyromYO?=
 =?iso-8859-1?Q?JaXpBu9iJwxnc5zLXjAtEZbUSAsxsMttI/elIKMAhSLlCIuoJ3gA02HNub?=
 =?iso-8859-1?Q?BjLfBA/AFzAkWPh3OtXj2N8EVoQKMjZzhMQfCLzHEQNS5+Q9uGyqrtwoMM?=
 =?iso-8859-1?Q?b7Xl4TDTgchOuh+eU8EqhdydHGBGSIFW9A4fORgvyE+WZNJktsQFDzD3l1?=
 =?iso-8859-1?Q?7U6632xNQBN+PPMCwV7pS8TXc0qFIzClczphKsC2mXAAxGZEGcW9XvVtYq?=
 =?iso-8859-1?Q?LiCb+1nS7aqdnAOxXgK5g+8RT3CkIpKDQQg0R4j7Zn3yoWplUm2QNLJXGG?=
 =?iso-8859-1?Q?F0CkBSQZHA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8469b04-8178-4219-0b49-08de42857ce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2025 00:43:42.5878
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7cG5e1vv365e7xAcJl8ftq6dElWyL+rFXKv2IAdJqdHmdbi3nchrvXdHFWzwCZR7zAbjjWVCcsc23DmDWJY+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8232
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Dec 2025 00:43:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66126

Hi=0A=
=0A=
We are pleased to announce the Yocto Project 4.0.32 Release is now availabl=
e for download.=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/poky-2c05660=
b21c7cc1082aeac8b75d8a2d82e249f63.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/poky-2c05660b21c7c=
c1082aeac8b75d8a2d82e249f63.tar.bz2=0A=
=0A=
A gpg signed version of these release notes is available at:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/RELEASENOTES=
=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/testreport.t=
xt=0A=
=0A=
Thank you for everyone's contributions to this release.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=
=0A=
=0A=
--------------------------=0A=
yocto-4.0.32 Release Notes=0A=
--------------------------=0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 4b9df539fa06fb19ed8b51ef2d46e5c56779de81=0A=
Release Artefact: yocto-docs-4b9df539fa06fb19ed8b51ef2d46e5c56779de81=0A=
sha: 70ee2caf576683c5f31ac5a592cde1c0650ece25cfcd5ff3cc7eedf531575611=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/yocto-docs-4=
b9df539fa06fb19ed8b51ef2d46e5c56779de81.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/yocto-docs-4b9df53=
9fa06fb19ed8b51ef2d46e5c56779de81.tar.bz2=0A=
=0A=
Repository Name: poky=0A=
Repository Location: https://git.yoctoproject.org/poky=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 2c05660b21c7cc1082aeac8b75d8a2d82e249f63=0A=
Release Artefact: poky-2c05660b21c7cc1082aeac8b75d8a2d82e249f63=0A=
sha: d7a55a18a597a7b140a81586b7ca6379c208ebbb3285de36c48fde10882947d8=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/poky-2c05660=
b21c7cc1082aeac8b75d8a2d82e249f63.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/poky-2c05660b21c7c=
c1082aeac8b75d8a2d82e249f63.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 2ed3f8b938579dbbb804e04c45a968cc57761db7=0A=
Release Artefact: oecore-2ed3f8b938579dbbb804e04c45a968cc57761db7=0A=
sha: 11b9632586dfbf3f0ef69eca2014a8002f25ca8d53cfe9424e27361ba3a20831=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/oecore-2ed3f=
8b938579dbbb804e04c45a968cc57761db7.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/oecore-2ed3f8b9385=
79dbbb804e04c45a968cc57761db7.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 77b40877c179ea3ce5c37c7ba1831e9c0e289266=0A=
Release Artefact: meta-yocto-77b40877c179ea3ce5c37c7ba1831e9c0e289266=0A=
sha: e908d42690881cd6e07b9ca18a21eb8761a0ec72d940b12905622e75ba913974=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/meta-yocto-7=
7b40877c179ea3ce5c37c7ba1831e9c0e289266.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/meta-yocto-77b4087=
7c179ea3ce5c37c7ba1831e9c0e289266.tar.bz2=0A=
=0A=
Repository Name: meta-mingw=0A=
Repository Location: https://git.yoctoproject.org/meta-mingw=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e=0A=
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e=0A=
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2=0A=
=0A=
Repository Name: meta-gplv2=0A=
Repository Location: https://git.yoctoproject.org/meta-gplv2=0A=
Branch: kirkstone=0A=
Tag: yocto-4.0.32=0A=
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a=0A=
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a=0A=
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.0=0A=
Tag: yocto-4.0.32=0A=
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2=0A=
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2=0A=
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.32/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.32/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2=0A=
=0A=
=0A=
---------------=0A=
 Contributors=0A=
---------------=0A=
Alexander Kanavin=0A=
Archana Polampalli=0A=
Divya Chellam=0A=
Gyorgy Sarvari=0A=
Hitendra Prajapati=0A=
Hongxu Jia=0A=
Jason Schonberg=0A=
Lee Chee Yang=0A=
Peter Marko=0A=
Praveen Kumar=0A=
Quentin Schulz=0A=
Richard Purdie=0A=
Robert P. J. Day=0A=
Ross Burton=0A=
Saquib Iltaf=0A=
Soumya Sambu=0A=
Steve Sakoman=0A=
Vijay Anusuri=0A=
Walter Werner SCHNEIDER=0A=
=0A=
---------------=0A=
 Known Issues=0A=
---------------=0A=
N/A=0A=
=0A=
=0A=
---------------=0A=
Security Fixes=0A=
---------------=0A=
bind: Fix CVE-2025-8677 CVE-2025-40778 CVE-2025-40780=0A=
binutils: Fix CVE-2025-11412 CVE-2025-11413=0A=
curl: Ignore CVE-2025-10966=0A=
elfutils: Fix CVE-2025-1376 CVE-2025-1377=0A=
gnutls: Fix CVE-2025-9820=0A=
go: Fix CVE-2024-24783 CVE-2025-58187 CVE-2025-58189 CVE-2025-61723 CVE-202=
5-61724=0A=
libarchive: Fix CVE-2025-60753=0A=
libarchive: Fix 2 security issue (https://github.com/libarchive/libarchive/=
pull/2753 and  https://github.com/libarchive/libarchive/pull/2768) =0A=
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293=0A=
libxml2: Fix CVE-2025-7425=0A=
musl: Fix CVE-2025-26519=0A=
openssh: Fix CVE-2025-61984 CVE-2025-61985=0A=
python3-idna: Fix CVE-2024-3651=0A=
python3-urllib3: Fix CVE-2024-37891=0A=
python3: fix CVE-2025-6075=0A=
ruby: Fix CVE-2024-35176 CVE-2024-39908 CVE-2024-41123=0A=
rust-cross-canadian: Ignore CVE-2024-43402=0A=
u-boot: Fix CVE-2024-42040=0A=
wpa-supplicant: Fix CVE-2025-24912=0A=
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231=0A=
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231=0A=
=0A=
=0A=
---------------=0A=
Fixes=0A=
---------------=0A=
babeltrace2: fetch with https protocol=0A=
bind: upgrade to 9.18.41=0A=
build-appliance-image: Update to kirkstone head revision=0A=
dev-manual/layers.rst: document "bitbake-layers show-machines"=0A=
dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'=0A=
dev-manual/new-recipe.rst: typo, "whith" -> "which"=0A=
dev-manual/new-recipe.rst: update "recipetool -h" output=0A=
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n=0A=
documentation: link to the Releases page on yoctoproject.org instead of wik=
i=0A=
efibootmgr: update SRC_URI branch=0A=
flac: patch seeking bug=0A=
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures=0A=
kernel-dev: add disable config example=0A=
kernel-dev: common: migrate bitbake -e to bitbake-getvar=0A=
libmicrohttpd: disable experimental code by default=0A=
migration-guides: add release notes for 4.0.31=0A=
oe-build-perf-report: relax metadata matching rules=0A=
overview-manual: migrate to SVG + fix typo=0A=
poky.conf: bump version for 4.0.32=0A=
python3-urllib3: upgrade to 1.26.20=0A=
recipes: Don't use ftp.gnome.org=0A=
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar=0A=
systemd-bootchart: update SRC_URI branch=0A=
xf86-video-intel: correct SRC_URI as freedesktop anongit is down=0A=

