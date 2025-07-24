Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648A6C83F1A
	for <webhook@archiver.kernel.org>; Thu, 24 Jul 2025 02:20:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by mx.groups.io with SMTP id smtpd.web11.3259.1753323647375005619
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jul 2025 19:20:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=JX0fvima;
 spf=pass (domain: intel.com, ip: 192.198.163.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753323647; x=1784859647;
  h=from:to:subject:date:message-id:mime-version;
  bh=mXcCxRZxwthBicktGHqWuKpswBu7IzpJ7sOAqoOJNIM=;
  b=JX0fvimaY6MJs6QYLUgJib7ciCFQeTvi8xeZ033BtErlVGSbkg3+tdKm
   eKHlrejy4cbgG1gJMyhgAQLm9HD+MzlySyUL1CA3kMI9apNl4Poc4UfrS
   rTokc4/GGptcBC4nGr61dZyl69VBM75wTtV7KqJPRoIi8G28X0cS0dbl+
   5v3uwftlAh8krdpxkCGqNMq2MmbiSrU/Ta/oMWlJaLtx0/BVEI/XtScVN
   W6hcIaszeZeTUMa5QP59HNWAPvcVp9oOpxEV2taFxkToS1L+rMAsXsrxS
   HFNlkPaVCs66erWP9MyHf65ov5czwC/3euJagnI9vSXvVYifYwJADDn5K
   Q==;
X-CSE-ConnectionGUID: i0MCdRyRTzmkB0ttqUeipA==
X-CSE-MsgGUID: dA19LEEkQrq/h0z8Q7AYfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="54713946"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; 
   d="scan'208,217";a="54713946"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2025 19:20:42 -0700
X-CSE-ConnectionGUID: ZgdfjpSdStaRK7zWOZGK0Q==
X-CSE-MsgGUID: cbktmrbCQFCGuzLSRSoJxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; 
   d="scan'208,217";a="159140799"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2025 19:20:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 19:20:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 19:20:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 19:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZROPhNUfGZ2HGNe10auTghlRHMbCfuXDfWq70CTm6Cmip6aOsRW1q6Ff6eqXR0Q5YVTnWNVFZ8xMgerZiMCefLjnhnjIvZAKkP0ZBKAtX/4NNZ9w2cApeZg5iLfGKgY3CyIK3QGF4hKNZ4JhW6QPtk2dcoc4EEH2YvWL03o2c22o0TNwm9exOHZDSDZ8pom9fi6d454lCKZaqo/MixmMPl7P8XoOHsOZc0ZsRmtYIZd7Opiys3wU7t1lVd4sFp0wlzcTZvz3bLfk2Q/MruKk6rZWQjGk7kea96kOVOCVWl7qafxia/Fx6t22El9qFzeFbZunhFzttL9uGPqDp0D4XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ks1QpxpeIjwR94KgHCIwIDMvBFQg/OPH7JwuSqQypPM=;
 b=WypZzywEcut6pKe8EovKEqpJTjplePmDjxttA1Dq+/6UXd6M59YZR+0IYH2kyRN+r4BeHgWFzdCxBXTkCOhHoyrm9P3zE1Eit10S08mS0NlU2HyIr7AKYl+pA1n7gramjN419w8KyEHegnl42jQ7qALZNkX9Q2BnrckANn4NuokM68NTdHAWtYBGqI3EgXWe5K9GyII7a4QjICwbVKyabNGHhYcQ3bG7Fj1iU0DWaJGQbc7TxWhLI1YLgNcDyzw9dDxAFhFGHDchCl/UCSkm8YU5e6+VG5+rdFnuo32rEugLEsIQtfRG8QINpDAwd+cvMEDoReVkcYofi/06z8HMAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CH3PR11MB7299.namprd11.prod.outlook.com (2603:10b6:610:14b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 02:20:11 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 02:20:10 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.11(scarthgap-5.0.11) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.11(scarthgap-5.0.11) is
 Released
Thread-Index: Adv8Nx0pz+MBI+ArTCadf3ua15Dx/w==
Date: Thu, 24 Jul 2025 02:20:10 +0000
Message-ID: <BL4PR11MB87971589CE4C9E80BB0A4E49B95EA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CH3PR11MB7299:EE_
x-ms-office365-filtering-correlation-id: abf923ac-da48-4453-8c3a-08ddca589dae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?bPbFp9OLms+kHmgZBFp0iiDGLS47F/t1c2fNIR21r7Gpp6zo2fhG1Pkk7W?=
 =?iso-8859-1?Q?iscOeLVwW6zyTCGcaQLUD+ZiI/zrhbFO1s+Tmj3BvQSPmA+1OnmEGMBBSG?=
 =?iso-8859-1?Q?v0SnivIggxqk38mJzNpBB7npUtzoM9DF+1dQxCo4FInwyhkTNxJ3WH7m11?=
 =?iso-8859-1?Q?ptwYOxPPTfl0fKv9NqiOF9uO2f6ht4ipNPgEY7n3qmL5iz1d1r2Uy/S0qX?=
 =?iso-8859-1?Q?lJdufj3nkU3hE0BGElQTi2CiC+r/Zzm7HHRaa8FRuzTUFVnRCZ3trlZq8E?=
 =?iso-8859-1?Q?qC+xS/QGBnAyieIK+/DetAdoiU7SySenuPZBb+e0UBSV/z/tcWLItu1xfX?=
 =?iso-8859-1?Q?cSiT5SNMNOfIBS1ceLHKUJejf3s0DvW/h/g9/Scur4by1zXnBs9/7YZ4cn?=
 =?iso-8859-1?Q?wc/qEnIjN/tY3macHg4FlTTsPGXliM5uXGR5FYag0wzwAFVoR/RrJBNPis?=
 =?iso-8859-1?Q?dFEWys+xS6Ol6P2jhHypWglX4pyCL/y1r2Fs/o07Nn22D4zAZlS4u+QYqy?=
 =?iso-8859-1?Q?S4yNfcdrVUsREYPNTGhV3f69tKM6yrijndjoYEcgDhaLKCOtZzKrnsfwhL?=
 =?iso-8859-1?Q?h/sZt7uDSUW0wfUEmuEEphHS2q5qJA1PGcUbewQTmxxWd2pni2GY9IEOy/?=
 =?iso-8859-1?Q?2H7+2g6ZYFmvdGwcDRszo8ZaLRz+z0nUgz1QZSavOWYOe64P04+RTLitWU?=
 =?iso-8859-1?Q?XolIOBFjWXA7h/nNrUDMO9IliFSz7UCcKTIKvz4IX6C4wmftTzulV2yBCh?=
 =?iso-8859-1?Q?US2sPkPwzKE8pWvu2J0TMCa6C1ePaxUR3wpvnF+NSDj3FJRHmEl0BBfgzj?=
 =?iso-8859-1?Q?jstehztuBqj5El6BwNeLCa80X6alUTkGfrjavPzVY5a0N25BuTF7GuTheI?=
 =?iso-8859-1?Q?QyeSig9m0txRef+Ugu+yIlQXYm2pVQpLslimcWTZ6QhSX2HSzMTw2ADfvb?=
 =?iso-8859-1?Q?lprrjvj9CiiOnlEF+47Q/j1o5FtMzu6jaWqy0qvzA5ax3kvtUf1sbDnZr+?=
 =?iso-8859-1?Q?OCyBK5/ROtdJatan7O6BGC9NEbUgCCjjn5MhH0dvIWazjz+onIwL49lHtO?=
 =?iso-8859-1?Q?gcG0UZtxRKGvN/rEW4RaVv6YFWRsHe2qXJrbRiep93o0Hy+gmEXPRBDqoM?=
 =?iso-8859-1?Q?Px8vYqYkPrkMqH4mFxgfpkumwePPoPIlNH0CUqsBEovXyDVFkNVMa/FE1w?=
 =?iso-8859-1?Q?HnHMPGfPoQWuIk4Uww4NeCjDV3yAbHRvE+ajRJNyDL71V3zNq5fFtuH94h?=
 =?iso-8859-1?Q?dRPpfspVavMJoc9HVxstFxHylQsTV7RIDrteLkfzilQd2x2FF6oL6MV125?=
 =?iso-8859-1?Q?H71X2j+eSHHqX3+SVaZ5ABpF6XlIjD0WowGiB0DcGqv7BIUPE6VK5Et6hL?=
 =?iso-8859-1?Q?4yiz98z31wpwrzNs5yXv5sKa/s0yTiW4yKGYJRLpJbbLfcZqNFPA2QMTeq?=
 =?iso-8859-1?Q?loA8r5t/gHFcPzpJg27VNdBlJ/DLWAyf8BzFdhrPREmkIzd7BIwHgGFozw?=
 =?iso-8859-1?Q?e2jfeuldlAbSsuLeX6givX?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Y21JcUZVvOPZFQXIt3Bq0m6glerMdi/od1IMo0TIxWKeBfa7Nz2ti37Eun?=
 =?iso-8859-1?Q?x/PaFRY/1NJa9d931AVgj6WP1s2o4/Me3uM/Bukr4RqCwdFg2swwvZn6iH?=
 =?iso-8859-1?Q?/FIRWkslQ9nhml6459kHvOTSjxGwJ64KMxckOFLymYfBtSYmXG8K0INjUS?=
 =?iso-8859-1?Q?Zi3lkXcTGZ3fFvCdhA7VyAjK7hi8VCTH/ABqIoWJSxn/wgeG4Svvz0rK6x?=
 =?iso-8859-1?Q?tgJ2cSEUfRsaTUjUsC4vSjM5etzQcArNBBApri+UKilFBxQ9zv00ESb9Of?=
 =?iso-8859-1?Q?Br7ikPciSiw7swj9m6LKhrWoGUpYvu8FInRE3qWUhvFLG1p4PYA71higZt?=
 =?iso-8859-1?Q?99pU1+uG8nxX+cGYISwQ4VMEBBEacq0Ftppjq6N6kuKe9AxAbFa1gAhfJN?=
 =?iso-8859-1?Q?HDBv8aG7eMqgEw0lZkeBuvxR2aNZTJuq8L2Gc3vrKCryO+aO08dP1ik66c?=
 =?iso-8859-1?Q?MVfkirMmyJywQKuVoHY1GpqIsn6c/NPiElfjgzl6ohe0Fq0p1recsSVWJk?=
 =?iso-8859-1?Q?E6uh2Dm/DvOsjAQEg992A2W90I5pfccwbzYVgFryVh6GNthEVZt5xrjHBe?=
 =?iso-8859-1?Q?FG3oWqUMPQelKeE6IjrgFrhud1eZPJKKV1qC8JWB6YFLO6XXdgPj7qp5Km?=
 =?iso-8859-1?Q?C+6mFpNFvvR6qd+eeycRzzNU/nmKjbdENIfyp17dltaqUXYFvDQJbSPOOv?=
 =?iso-8859-1?Q?8kHWpQq07et+q2VC0aYoWVMLiaNNp0cSqXHS7FuH7A2d84mVU76OkJFmTT?=
 =?iso-8859-1?Q?nfNxSsbPRWCaTAGQfOv9TkuZJj1piz0WozokBIfC3Nz3IdvBa02TcaYF/v?=
 =?iso-8859-1?Q?ew0aWWnZSXJmEyxX6IqQspVWdjJ4+G6FWSdFYWFYy8ob6HTFFvsL7hSfwZ?=
 =?iso-8859-1?Q?paYG9ij0JbByD/zMMqPfwwKo+kEN/ZfD6qI7JYRCbvHqQIxn6uI2rGZlsA?=
 =?iso-8859-1?Q?cV+D6pjB5DhI+HdBHDJe9zfRg/AKmijZHjSRrcth3wVE9Dl4OIpCMfW2/t?=
 =?iso-8859-1?Q?uUR7rM+sAUuRToz+Tew8LsArZYiwPlz5E6eXF9SSBVPoy7vIN+gG0AG5sk?=
 =?iso-8859-1?Q?xbjwOD1Xz2Y4j9Wyi78lOz6QFqApnWphojQBw9ZGiRs9mc/prTG97PuH1U?=
 =?iso-8859-1?Q?LzqQCQ1ggR1AYJwLnCJSVAm7HldFTnK/D1X0LGrx4ARELrDNrsDel+02a1?=
 =?iso-8859-1?Q?YSUvt3eRe+xds9U+8j1fXD4mwTn1rttZGWL0iDVBiTT5nAz6pK9Hl0Ii1B?=
 =?iso-8859-1?Q?gT/K/jk1JLLYKlBwYs0g4wb6MfAgvKQBr5xWFrmm49ddPSgjYLTxj8Fe8D?=
 =?iso-8859-1?Q?z2z0m98n9EYvO4KFyOatwHAIn9ZYkui5FqAB+NYUTCI4P5T4sEODSP1M0o?=
 =?iso-8859-1?Q?CuMLuHg7nz7Ahq84ebBlzyWAcKCyrAz3SSFknyBhxz7PRhlVrDq1CzH4gA?=
 =?iso-8859-1?Q?xcpl/11w4zgEZ0SX8eUCVJrhvUTdbOdv2FGFKqlXVS1u2afG0wnayIw6i2?=
 =?iso-8859-1?Q?fBiWxYgtUt8DqRBK/HwPzzDUSe0X/HOgI8bOEYirnBGP3HJFsLXccBL8XC?=
 =?iso-8859-1?Q?LCI58NzYXsWZqRPtc5hcQhmAOnqwt7+DMUZU1S19vUKnAI5bwf4O3LhyMu?=
 =?iso-8859-1?Q?D6dnGqvb67ruL7fLdHBcDaXiu6BHXgTHIe?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87971589CE4C9E80BB0A4E49B95EABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abf923ac-da48-4453-8c3a-08ddca589dae
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 02:20:10.7732
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BBEpDq+hgzBHgwGNQhklU5fViHheB0XPre7hQ1+v8fZAkMdcrX7usUZjkR/jqXCP45cDJQ09soKRCM7ijzZKGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7299
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Jul 2025 02:20:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65704

--_000_BL4PR11MB87971589CE4C9E80BB0A4E49B95EABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.11 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/poky-ae2d527=
58fc2fcb0ed996aa234430464ebf4b310.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed=
996aa234430464ebf4b310.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.0.11 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.11
Git Revision: ae2d52758fc2fcb0ed996aa234430464ebf4b310
Release Artefact: poky-ae2d52758fc2fcb0ed996aa234430464ebf4b310
sha: 48dec434dd51e5c9c626abdccc334da300fa2b4975137d526f5df6703e5a930e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/poky-ae2d527=
58fc2fcb0ed996aa234430464ebf4b310.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed=
996aa234430464ebf4b310.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.11
Git Revision: 7a59dc5ee6edd9596e87c2fbcd1f2594c06b3d1b
Release Artefact: oecore-7a59dc5ee6edd9596e87c2fbcd1f2594c06b3d1b
sha: fb50992a28298915fe195e327628d6d5872fd2dbc74189c2d840178cd860bb2e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/oecore-7a59d=
c5ee6edd9596e87c2fbcd1f2594c06b3d1b.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11/oecore-7a59dc5ee6edd959=
6e87c2fbcd1f2594c06b3d1b.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.11
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.11
Git Revision: 139f61fe9eec221745184a14b3618d2dfa650b91
Release Artefact: bitbake-139f61fe9eec221745184a14b3618d2dfa650b91
sha: 86669d4220c50d35c0703f151571954ad9c6285cc91a870afbb878d2e555d2ca
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/bitbake-139f=
61fe9eec221745184a14b3618d2dfa650b91.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11/bitbake-139f61fe9eec221=
745184a14b3618d2dfa650b91.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.11
Git Revision: 50e5c0d85d3775ac1294bdcd7f11deaa382c9d08

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.11
Git Revision: 3f88cb85cca8f9128cfaab36882c4563457b03d9


---------------
Contributors
---------------
Aleksandar Nikolic
Andrew Fernandes
Antonin Godard
Archana Polampalli
Ashish Sharma
Bruce Ashfield
Carlos S=E1nchez de La Lama
Changqing Li
Chen Qi
Colin Pinnell McAllister
Daniel Turull
Deepesh Varatharajan
Divya Chellam
Dixit Parmar
Enrico J=F6rns
Etienne Cordonnier
Guocai He
Gu=F0ni M=E1r Gilbert
Hitendra Prajapati
Jiaying Song
Lee Chee Yang
Moritz Haase
NeilBrown
Peter Marko
Poonam Jadhav
Praveen Kumar
Preeti Sachan
Quentin Schulz
Richard Purdie
Robert P. J. Day
Roland Kovacs
Ryan Eatmon
Sandeep Gundlupet Raju
Savvas Etairidis
Steve Sakoman
Victor Giraud
Vijay Anusuri
Virendra Thakur
Wang Mingyu
Yogita Urade

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-5244 CVE-2025-5245
busybox: Fix CVE-2022-48174
coreutils: Fix CVE-2025-5278
curl: Ignore CVE-2025-5025 if PACKAGECONFIG set with openssl
ffmpeg: Fix CVE-2025-1373
glibc: fix CVE-2025-4802 CVE-2025-5702
gnupg: Fix CVE-2025-30258
go: Fix CVE-2025-4673
go: Ignore CVE-2024-3566
icu: Fix CVE-2025-5222
kea: Fix CVE-2025-32801 CVE-2025-32802 CVE-2025-32803
libarchive: fix CVE-2025-5914 CVE-2025-5915 CVE-2025-5916 CVE-2025-5917 CVE=
-2025-5918
libsoup-2.4: Fix CVE-2025-2784 CVE-2025-4476 CVE-2025-4945 CVE-2025-4948 CV=
E-2025-4969 CVE-2025-32050 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE=
-2025-46421
libsoup-3.4: Fix CVE-2025-2784 CVE-2025-4945 CVE-2025-4948 CVE-2025-4969 CV=
E-2025-32050 CVE-2025-32051 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CV=
E-2025-32908 CVE-2025-46421
libxml2: Fix CVE-2025-6021
linux-yocto-6.6: Fix CVE-2025-21995 CVE-2025-21996 CVE-2025-21997 CVE-2025-=
21999 CVE-2025-22001 CVE-2025-22003 CVE-2025-22004 CVE-2025-22005 CVE-2025-=
22007 CVE-2025-22009 CVE-2025-22010 CVE-2025-22014 CVE-2025-22018 CVE-2025-=
22020 CVE-2025-22027 CVE-2025-22033 CVE-2025-22035 CVE-2025-22038 CVE-2025-=
22040 CVE-2025-22041 CVE-2025-22054 CVE-2025-22056 CVE-2025-22063 CVE-2025-=
22066 CVE-2025-22080 CVE-2025-22081 CVE-2025-22088 CVE-2025-22097 CVE-2025-=
23136 CVE-2025-37785 CVE-2025-37800 CVE-2025-37801 CVE-2025-37803 CVE-2025-=
37805 CVE-2025-37838 CVE-2025-37893 CVE-2025-38152 CVE-2025-39728 CVE-2025-=
39735
net-tools: Fix CVE-2025-46836
python3-setuptools: Fix CVE-2025-47273
python3-requests: fix CVE-2024-47081
python3-urllib3: Fix CVE-2025-50181
python3: Fix CVE 2024-12718 CVE 2025-4138 CVE 2025-4330 CVE 2025-4435 CVE-2=
025-4516 CVE 2025-4517
screen: fix CVE-2025-46802 CVE-2025-46804 CVE-2025-46805
sudo: Fix CVE-2025-32462
xwayland: Fix CVE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 C=
VE-2025-49179 CVE-2025-49180


---------------
Fixes
---------------
bitbake: ast: Change deferred inherits to happen per recipe
bitbake: fetch2: Avoid deprecation warning
bitbake: gcp.py: remove slow calls to gsutil stat
bitbake: toaster/tests/buildtest: Switch to new CDN
brief-yoctoprojectqs/ref-manual: Switch to new CDN
bsp-guide: update kernel version example to 6.12
bsp-guide: update all of section 1.8.2 to reflect current beaglebone conf f=
ile
bsp-guide: update lonely "4.12" kernel reference to "6.12"
build-appliance-image: Update to scarthgap head revision
cmake: Correctly handle cost data of tests with arbitrary chars in name
conf.py: improve SearchEnglish to handle terms with dots
docs: Clean up explanation of minimum required version numbers
docs: README: specify how to contribute instead of pointing at another file
docs: conf.py: silence SyntaxWarning on js_splitter_code
gcc: Upgrade to GCC 13.4
ghostscript: upgrade to 10.05.1
glibc: stable 2.39 branch updates (06a70769fd...)
gnupg: update to 2.4.8
gtk+: add missing libdrm dependency
kea: upgrade to 2.4.2
libpng: Add ptest
libsoup-2.4: fix do_compile failure
linux-yocto/6.6: fix beaglebone ethernet
linux-yocto/6.6: update to v6.6.96
local.conf.sample: Switch to new CDN
ltp: backport patch to fix compilation error for x86_64
migration-guides: add release notes for 4.0.27, 4.0.28, 5.0.10
minicom: correct the SRC_URI
nfs-utils: don't use signals to shut down nfs server.
overview-manual/concepts.rst: fix sayhello hardcoded bindir
overview-manual: small number of pedantic cleanups
package: export debugsources in PKGDESTWORK as json
poky.conf: bump version for 5.0.11
python3-requests: upgrade to 2.32.4
python3: upgrade to 3.12.11
ref-manual: clarify KCONFIG_MODE default behaviour
ref-manual: classes: nativesdk: move note to appropriate section
ref-manual: classes: reword to clarify that native/nativesdk options are ex=
clusive
ref-manual: document KERNEL_SPLIT_MODULES variable
scripts/install-buildtools: Update to 5.0.10
spdx: add option to include only compiled sources
sstatetests: Switch to new CDN
systemd: Rename systemd_v255.21 to systemd_255.21
systemd: upgrade to 255.21
tcf-agent: correct the SRC_URI
testimage: get real os-release file
tune-cortexr52: Remove aarch64 for ARM Cortex-R52
uboot: Allow for customizing installed/deployed file names


--_000_BL4PR11MB87971589CE4C9E80BB0A4E49B95EABL4PR11MB8797namp_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.0.11 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb=
0ed996aa234430464ebf4b310.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed996aa234430464ebf4b310.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed996aa234=
430464ebf4b310.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.11=
/poky-ae2d52758fc2fcb0ed996aa234430464ebf4b310.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-5.0.11/testreport.txt</=
a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.11 Releas=
e Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ae2d5=
2758fc2fcb0ed996aa234430464ebf4b310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-ae2d52758fc2fcb0ed996aa234430464ebf4b310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 48dec434dd51e5=
c9c626abdccc334da300fa2b4975137d526f5df6703e5a930e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed996aa234=
430464ebf4b310.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.11/poky-ae2d52758fc2fcb0ed996aa234430464ebf4b=
310.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7a59d=
c5ee6edd9596e87c2fbcd1f2594c06b3d1b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-7a59dc5ee6edd9596e87c2fbcd1f2594c06b3d1b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fb50992a282989=
15fe195e327628d6d5872fd2dbc74189c2d840178cd860bb2e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.11/oecore-7a59dc5ee6edd9596e87c2fb=
cd1f2594c06b3d1b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.11/oecore-7a59dc5ee6edd9596e87c2fbcd1f2594c06=
b3d1b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ab073def6487f2=
37ac125d239b3739bf02415270959546b6b287778664f0ae65<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.11/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.11/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d811=
6daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 139f6=
1fe9eec221745184a14b3618d2dfa650b91<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-139f61fe9eec221745184a14b3618d2dfa650b91<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 86669d4220c50d=
35c0703f151571954ad9c6285cc91a870afbb878d2e555d2ca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.11/bitbake-139f61fe9eec221745184a1=
4b3618d2dfa650b91.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.11/bitbake-139f61fe9eec221745184a14b3618d2dfa=
650b91.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 50e5c=
0d85d3775ac1294bdcd7f11deaa382c9d08<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.11<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 3f88c=
b85cca8f9128cfaab36882c4563457b03d9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Andrew Fernandes<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Carlos S=E1nchez de=
 La Lama<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Colin Pinnell McAll=
ister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Daniel Turull<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Dixit Parmar<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Etienne Cordonnier<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Guocai He<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Moritz Haase<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">NeilBrown<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Poonam Jadhav<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Preeti Sachan<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert P. J. Day<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Roland Kovacs<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ryan Eatmon<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sandeep Gundlupet R=
aju<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Savvas Etairidis<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Victor Giraud<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Virendra Thakur<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-5244 CVE-2025-5245<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix CVE-20=
22-48174<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">coreutils: Fix CVE-=
2025-5278<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Ignore CVE-20=
25-5025 if PACKAGECONFIG set with openssl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
5-1373<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: fix CVE-2025=
-4802 CVE-2025-5702
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: Fix CVE-2025=
-30258<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-46=
73<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Ignore CVE-2024=
-3566<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: Fix CVE-2025-5=
222<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: Fix CVE-2025-3=
2801 CVE-2025-32802 CVE-2025-32803<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: fix CVE=
-2025-5914 CVE-2025-5915 CVE-2025-5916 CVE-2025-5917 CVE-2025-5918<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2025-2784 CVE-2025-4476 CVE-2025-4945 CVE-2025-4948 CVE-2025-4969 CVE-202=
5-32050 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE-2025-46421<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-3.4: Fix CV=
E-2025-2784 CVE-2025-4945 CVE-2025-4948 CVE-2025-4969 CVE-2025-32050 CVE-20=
25-32051 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE-2025-32908 CVE-20=
25-46421<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-6021<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto-6.6: Fi=
x CVE-2025-21995 CVE-2025-21996 CVE-2025-21997 CVE-2025-21999 CVE-2025-2200=
1 CVE-2025-22003 CVE-2025-22004 CVE-2025-22005 CVE-2025-22007 CVE-2025-2200=
9 CVE-2025-22010 CVE-2025-22014 CVE-2025-22018
 CVE-2025-22020 CVE-2025-22027 CVE-2025-22033 CVE-2025-22035 CVE-2025-22038=
 CVE-2025-22040 CVE-2025-22041 CVE-2025-22054 CVE-2025-22056 CVE-2025-22063=
 CVE-2025-22066 CVE-2025-22080 CVE-2025-22081 CVE-2025-22088 CVE-2025-22097=
 CVE-2025-23136 CVE-2025-37785 CVE-2025-37800
 CVE-2025-37801 CVE-2025-37803 CVE-2025-37805 CVE-2025-37838 CVE-2025-37893=
 CVE-2025-38152 CVE-2025-39728 CVE-2025-39735
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">net-tools: Fix CVE-=
2025-46836<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Fix CVE-2025-47273<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: f=
ix CVE-2024-47081<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-urllib3: Fi=
x CVE-2025-50181<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE 20=
24-12718 CVE 2025-4138 CVE 2025-4330 CVE 2025-4435 CVE-2025-4516 CVE 2025-4=
517<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">screen: fix CVE-202=
5-46802 CVE-2025-46804 CVE-2025-46805<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: Fix CVE-2025-=
32462<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix CVE-2=
025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 CVE-2025-49179 CVE-2=
025-49180<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: ast: Chang=
e deferred inherits to happen per recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2: Av=
oid deprecation warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gcp.py: re=
move slow calls to gsutil stat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: toaster/te=
sts/buildtest: Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">brief-yoctoprojectq=
s/ref-manual: Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update k=
ernel version example to 6.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update a=
ll of section 1.8.2 to reflect current beaglebone conf file<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update l=
onely &quot;4.12&quot; kernel reference to &quot;6.12&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Correctly ha=
ndle cost data of tests with arbitrary chars in name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf.py: improve Se=
archEnglish to handle terms with dots<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Clean up expl=
anation of minimum required version numbers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: README: speci=
fy how to contribute instead of pointing at another file<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: conf.py: sile=
nce SyntaxWarning on js_splitter_code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: Upgrade to GCC=
 13.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: upgrad=
e to 10.05.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates (06a70769fd...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: update to 2.=
4.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gtk+: add missing l=
ibdrm dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: upgrade to 2.4=
.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpng: Add ptest<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: fix do=
_compile failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: fi=
x beaglebone ethernet<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.96<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">local.conf.sample: =
Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ltp: backport patch=
 to fix compilation error for x86_64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.27, 4.0.28, 5.0.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">minicom: correct th=
e SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">nfs-utils: don't us=
e signals to shut down nfs server.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/con=
cepts.rst: fix sayhello hardcoded bindir<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual: sm=
all number of pedantic cleanups<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package: export deb=
ugsources in PKGDESTWORK as json<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: u=
pgrade to 2.32.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.12.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: clarify=
 KCONFIG_MODE default behaviour<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: nativesdk: move note to appropriate section<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: reword to clarify that native/nativesdk options are exclusive<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: documen=
t KERNEL_SPLIT_MODULES variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">spdx: add option to=
 include only compiled sources<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sstatetests: Switch=
 to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Rename sys=
temd_v255.21 to systemd_255.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 255.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tcf-agent: correct =
the SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testimage: get real=
 os-release file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tune-cortexr52: Rem=
ove aarch64 for ARM Cortex-R52<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">uboot: Allow for cu=
stomizing installed/deployed file names<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87971589CE4C9E80BB0A4E49B95EABL4PR11MB8797namp_--

