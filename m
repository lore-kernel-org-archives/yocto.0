Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA9A4C83F1B
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 02:07:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by mx.groups.io with SMTP id smtpd.web11.39599.1752718013736614603
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jul 2025 19:06:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=acfSZNwK;
 spf=pass (domain: intel.com, ip: 192.198.163.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752718014; x=1784254014;
  h=from:to:subject:date:message-id:mime-version;
  bh=E3WYIrmGdKfPlstQMeC3hRc2cXTfrJNyr0IbK3z+4ZA=;
  b=acfSZNwK4MVCsqowDbjaZlJETNjXZy9JSMGsGDiFpR3z3FHmKX9ylUaH
   kLffW5uYb9iHGYZyqLSw2A4eKRSlPY3Ig5inhlIa2plF1XfdPDhsXRxlR
   ILCd2ai/+XMUUYklG0bHD/pL4vnZbOwuJ3pMpk58JGNb/h8NIhIp+4M0T
   KTjXGPmS1NAvoTVJ1/DHyXldFcEuqPzdxseaWnfi0VAC8lbFilXeBBM2O
   IeCe//odO/4ocFYB7qIVMPfEJyrLBWcNircyR1vPh6lam9hjIEFSE5pKJ
   8RyB0X7icDxxXk2zNdIFhuKCOWKBii9Dd2p81WRZEfjBjE5VHG2XEdMFd
   g==;
X-CSE-ConnectionGUID: 23zNWRyMT0uYVG3GvTzL0g==
X-CSE-MsgGUID: LG5HogbtQ76IufBvdy3cOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55068675"
X-IronPort-AV: E=Sophos;i="6.16,317,1744095600"; 
   d="scan'208,217";a="55068675"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2025 19:06:53 -0700
X-CSE-ConnectionGUID: WzdhqUaZSL+KivL6L/1yaw==
X-CSE-MsgGUID: ytaBc7x6Qz2ZmYOLrpf2VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,317,1744095600"; 
   d="scan'208,217";a="158013150"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2025 19:06:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 19:06:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 19:06:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.75) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 19:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kpJMLvj2YYPz+zQLwCRmAYFLdfGaaXvVv3IJVJwv3W1+4hfpcdMhV6rrgvuac0XNWPZYYYSsTynjYNe30XmQ3Rkr/znfYo0I+j7Mj5akO8q+pkSGXltpg7urFC1wzch2Ezc6imrzUI2JivxlzCJa+cBw21dlkaD1eKPttd+agqdlzt1Sz2DjxCwaW83QeBoT0GEAuRgeF7pEbNeQgp2aa4D0WzFlRI9Cv6Qrtxw1tfgdQhSMhaODrvd5lvof9Mks83FuFP6oS8qqkLfUInT/SGYtQH7u3x/GZPgWLJJ0iGC0Sn+bzyQ/GgilLfgudyASBkXgCw+xhc1h4eKKusWTGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRnSwTLXtIe0rKpOhey6Q5ZF4uAjKasa5WM+hovlldE=;
 b=oq9XxE+AmJwNRXxXoOjiqz+vsIPgso7dnM9zA8+mSgYQLc6zJsC8LGJZXrgJRVttJK1z12mGbzTlF5anzCs1DS0qoq702yfJndvBm0rCSl7fPEH+n7s+HLZqRndlbxUXc7sBgVmw+bwhI5qt90brwzC6+D2ZbiZT4peqa5EzYGXUCzb2PbI7yjb/E8W6TH6RAItIJ2CdNc4tamOkyK010cD3nwUZcbpw+c5ta79AUzhmKCVSsFgMrJuPoRL/PLL5Dkv78TKwAhUugfo2N6JGIcuhcnYMJu5V1hVMLK4jG+Ha0cDOV8xtlOjWI4BNELsWC4Hn2ZXfmUXlptF67KJH4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA1PR11MB8831.namprd11.prod.outlook.com (2603:10b6:208:597::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.37; Thu, 17 Jul
 2025 02:06:22 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 02:06:22 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.2.2(walnascar-5.2.2) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.2.2(walnascar-5.2.2) is Released
Thread-Index: Adv2vLlcsmktyOefTnSMk/ZULpd6EA==
Date: Thu, 17 Jul 2025 02:06:21 +0000
Message-ID: <BL4PR11MB8797EE4C4282271C24EC4E31B951A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA1PR11MB8831:EE_
x-ms-office365-filtering-correlation-id: 5b79624c-858b-42a7-fa60-08ddc4d686e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|10070799003|1800799024|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?cvO8SPZkmzLYi8PtEhE9g8CA+O10TaqDc2jPkLXOXE2IkBxziio9bFnItS?=
 =?iso-8859-1?Q?/7u4eohTDbF1n6E5nWuiOMQq7HCTtSow8fNpa3DvTl/3R3L04+OWhy1dUN?=
 =?iso-8859-1?Q?MOqGMnx0Zx//A5ckI2j3x1ynoTkW27NEWPBEoP92i7JQXe4Ji8f/1/PafV?=
 =?iso-8859-1?Q?z7FAY6OBeO5bjGnOqCDpaV+kBNeJLmJ/uuVBHjUfflAnwKOP1O1bdn+qoi?=
 =?iso-8859-1?Q?ptcu3DqPqa2uDVyDqh2V21pVoXrCgbP4lb2JZdKzHr0lhlImgbfd7t+n2Q?=
 =?iso-8859-1?Q?EM+cOWR6j7YAQUSsIqkHf6kOnBHDgMvJbyq7GMdZ20959jFxHefxr0GpMD?=
 =?iso-8859-1?Q?IQb1BCdBQ5sstZQethbJ/nkvOfZL0WSSPoVjw178ZXPzEJgfvRz/kib7vN?=
 =?iso-8859-1?Q?JBMw2Su2GZuNnqWQAo7L/UdMdTvg5Qth4+PCNX94yt3yAewWyvV2ASfEOD?=
 =?iso-8859-1?Q?f6U+lKGQbiNJkQSEP1qYCITcSRK+/qmYDjih6IbIVrQrHhx6HveJRAF6r+?=
 =?iso-8859-1?Q?haT7LcdwZ/XJ74VpTXPPvx5BGXTxK1r0246QWUyYdr19eGTWQjqjsX2MMC?=
 =?iso-8859-1?Q?6Tdrj7iLz7xiBVPSXATtB723Qt/xWMIZ+s+D9PCBFuNfu1o+WOYniKfM8+?=
 =?iso-8859-1?Q?kOkyI7CzTA1XlBHxXbKcEDPBpW9qS3fPNdu/qC+neVw18Y1Vr4KNfABI80?=
 =?iso-8859-1?Q?PRqoA2JbVD2h3u1gFH2lRSkpqVG1nI2NE6RDlpnjl1TnFsPZmRjaCSly3O?=
 =?iso-8859-1?Q?q4Qr2rRZm78O9ItI3+JT+HzAoeQi1NyHi0gqe1SvL840K0fmQiHBjkmGy0?=
 =?iso-8859-1?Q?esh6DUoBIealh2Fl/TV+dzsXwx2U//Sho6rv4MJ73/bEppq/8iaCJTS1N0?=
 =?iso-8859-1?Q?x0TQF1kcYbD4jZ8+zvOXLPEXIWg2pUArC+QRN1Ysb26t8j6UE7TRaV2Pxy?=
 =?iso-8859-1?Q?3RqsYRb+l0cTtdNDsU+C82v+XiObM1dn2vnLw93Eb6YWs7r4hmNiN2biB+?=
 =?iso-8859-1?Q?gdvmtQZw1d/KctmP1PPF9EO53dSfSH9WUCUDsNJRVUqwMgYIEkJU3w/k3c?=
 =?iso-8859-1?Q?MVZk8uzJGj/y3QzQCOeUI8osTWGydlWekdTzM/QQiRUt7h7EnIXn5MIiRm?=
 =?iso-8859-1?Q?jt/8zE6NVBV/GdZuSsFN5a1TextQXfBM0cM0sDQ9fBo+5PF5vCfpNz86oj?=
 =?iso-8859-1?Q?7zN3gMI+isDkFBdAedZ2VeyNaeqJ1fWMnRo8Km2QHbuY0adJ3Ljz4B8WwZ?=
 =?iso-8859-1?Q?OmDQf9E0HGf9o2pawkv5B1JFQ44UoDtEY2Ed5ME3U1JITcTafdbgDoY116?=
 =?iso-8859-1?Q?Y5rB8SOqunMrl4LmTNTLaIJ+tap6bpXHdH1cY3yIUDjYwPLvqLSNoKUz99?=
 =?iso-8859-1?Q?2+vGsUYGiDoDLaGn+KLO09gaq6yrmZvEwtmK54VCk74w5HeoTC6q0MHYu8?=
 =?iso-8859-1?Q?Lx7C66gkbPe9wG9Q3qEbv9ZtfP07BMggbZ89AtzNvtp0nkYSU6RuI+8Ikh?=
 =?iso-8859-1?Q?oymu4YMVjQ6hF048v48Kdd?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5BgGWxqt3kg5LK69rBz62V89K7wYaWo5qjoS9Sz5s+/BzAKG5uGPmx4SC/?=
 =?iso-8859-1?Q?NValmJCuixvFy/YqrJGM/th8uSTAr2axrr7z5UMF/LM0NZ+PesiXWinoxr?=
 =?iso-8859-1?Q?/pNlKCOcOqqp766BAXq6CEGCRzjONwrcCEPJmq8E1cQtNZOcxF9nVvpNht?=
 =?iso-8859-1?Q?haIRVKPK/oChPpk8cXGxi9Bk1I8UCXUieglfid87eJgnbZCoL4aPUR4ZM7?=
 =?iso-8859-1?Q?5aiWyJnCFVAwfBMY2673kOINUmZnt4hUfIqtjHIMfh4V00B1EJdSZtDb+b?=
 =?iso-8859-1?Q?l7ON+0SUlW6+8UtP4cigFoVNndHqeql7H1WdQAO4jFM4+ixdULUXaV//IR?=
 =?iso-8859-1?Q?fUDUzU2EQ0NPFX/HdnfCcpckANzHVSt8V303mZBUA9onfkAkAbjJv6gCGj?=
 =?iso-8859-1?Q?qJX+esYpraceeTIVYZB4sNGrQx51QzpHfDf27rFxxwsgLWNq4DeER795XG?=
 =?iso-8859-1?Q?k2EXsy8+bO9EovmLb2cL5+GqmGjN+Q6FQmFLjkVpI5PzZ/nJq0EOVhPi2z?=
 =?iso-8859-1?Q?FrgDmGkq7poxu83epugOMhNg3AxqzEEczv74VXPWcn/sw100wf98r1TwUm?=
 =?iso-8859-1?Q?kh5Q4U4filZdzIzHYbhUIHUCRsdeO1gKG6uMCHLftn1+IPlfzRBAF95FxF?=
 =?iso-8859-1?Q?dawSmuV2YKGuMGYQVq8ZlANp/npuCj625m5EjaB3XzVHgezwKrcX1SMSrH?=
 =?iso-8859-1?Q?1dyuqEYzGre8WPTM2g+kRHWuUYjR5VWwgxeyWcb8mhJp0/IXr+3fjsuBAY?=
 =?iso-8859-1?Q?jxk6RdQReDcGp7LNNWIEo1ICIYcF4XIgX6wzfLpEux+8nc8s5svXVGz+5i?=
 =?iso-8859-1?Q?DFiAtBG0vPZw31L/nD+ahaRyAPYan8X5OzkbfrzdU2ElDGdfIp2DMWFrG9?=
 =?iso-8859-1?Q?yRY3ILRD19OkrHDpt3CguOz23Y2OgiSfJTMZ0B9lAr3IKUJSwTIV3VsoLG?=
 =?iso-8859-1?Q?YStVJPtcGcwsy2o4EQXnuJdGftUVI/QL6Kcg/7HlYfLuxs80rx+rVDWC22?=
 =?iso-8859-1?Q?9OllukrTC7PFo4mBAK6ktrAtZGycNACC6Jq9vUjsNN7FxsXWih+zoCoqEf?=
 =?iso-8859-1?Q?QvcjbmJvPvK070q4lb8YlEBrQTOBe30wf2ZDMtHiGs1/pOLxks0XQePv42?=
 =?iso-8859-1?Q?tFfHrPyb1Hr2E1CojXk1mYtD9L0kRS7aztcJjcit7PpwLhqdzAHRDILKMn?=
 =?iso-8859-1?Q?Vuw54B25VtroJyQQ+6mymMhDprxkO99rwwbKVR0ov7JJK20T9Qxi88d7BP?=
 =?iso-8859-1?Q?gfAoUwKrh7v9IiIzuqYWXvXV6J2VN+0qJoezIR6vdcMm27euLzdA76gfSo?=
 =?iso-8859-1?Q?MdMdD/iXyMPe9v4VN1otmsOFn75onrhq3wsIB8NB11ZSGi+sIEbNcv75K/?=
 =?iso-8859-1?Q?f9OvkKp6VHxi7tfZBEBJB8rBNusZmALkQ3xVvySWJ5YCcmkFqNF0KWPYMq?=
 =?iso-8859-1?Q?1u5LqeGL1de7Y6jxsXDl5Z8XgdxgccIbbWpvfUkYT8J5rWDVmrsDkNNtWh?=
 =?iso-8859-1?Q?pxYafV4laqwhylEjTt1fJPhVskvcy2IsG87u9BfUoooI60Q/yyPCoyATkp?=
 =?iso-8859-1?Q?h0xU3GcMVYZfJOjeD+pEoHsGXWCmZt7sYkQ5+fvYTNjzs0aUJHJ62cn6Xw?=
 =?iso-8859-1?Q?oYOt1HehiVc5WylOxa3nnPkU/ZmVdo28ynSmxtfoiVg4t9KbMKZyyp7J+E?=
 =?iso-8859-1?Q?/lY91vz8p1qcG13inAvG2CuepnHfDiPkdoFW3fBv?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797EE4C4282271C24EC4E31B951ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b79624c-858b-42a7-fa60-08ddc4d686e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2025 02:06:22.0840
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gUgRE3p+pR3YptDNBTAWNlOlNAlTzZbLUa9tAN/nNTrCf24r3WhXu6dV+rhfi2AeImT0n+QlI1dORCJTjY69MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8831
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 02:07:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65670

--_000_BL4PR11MB8797EE4C4282271C24EC4E31B951ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.2.2 Release is now available=
 for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/poky-41038342a=
471b4a8884548568ad147a1704253a3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/poky-41038342a471b4a88845=
48568ad147a1704253a3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.2.2 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: walnascar
Tag: yocto-5.2.2
Git Revision: 41038342a471b4a8884548568ad147a1704253a3
Release Artefact: poky-41038342a471b4a8884548568ad147a1704253a3
sha: 4b1e9c80949e5c5ab5ffeb4fa3dadb43b74b813fc9d132caabf1fc8c38bd8f5e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/poky-41038342=
a471b4a8884548568ad147a1704253a3.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/poky-41038342a471b4a8884=
548568ad147a1704253a3.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: walnascar
Tag: yocto-5.2.2
Git Revision: c855be07828c9cff3aa7ddfa04eb0c4df28658e4
Release Artefact: oecore-c855be07828c9cff3aa7ddfa04eb0c4df28658e4
sha: c510b69b984be7ad8045236a3dde9bc4f5833bc9f3045dc04d6442a9453165f4
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/oecore-c855be=
07828c9cff3aa7ddfa04eb0c4df28658e4.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/oecore-c855be07828c9cff3=
aa7ddfa04eb0c4df28658e4.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: walnascar
Tag: yocto-5.2.2
Git Revision: edce693e1b8fabd84651aa6c0888aafbcf238577
Release Artefact: meta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577
sha: 6cfed41b54f83da91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/meta-mingw-ed=
ce693e1b8fabd84651aa6c0888aafbcf238577.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/meta-mingw-edce693e1b8fa=
bd84651aa6c0888aafbcf238577.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.12
Tag: yocto-5.2.2
Git Revision: 74c28e14a9b5e2ff908a03f93c189efa6f56b0ca
Release Artefact: bitbake-74c28e14a9b5e2ff908a03f93c189efa6f56b0ca
sha: 1d417990d922289152af6274d461d7809d06c290d57e5373fd46bb0112e6b812
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/bitbake-74c28=
e14a9b5e2ff908a03f93c189efa6f56b0ca.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/bitbake-74c28e14a9b5e2ff=
908a03f93c189efa6f56b0ca.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: walnascar
Tag: yocto-5.2.2
Git Revision: 5754fb5efb54cf06f96012a88619baba0995b0fc

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: walnascar
Tag: yocto-5.2.2
Git Revision: 85f8e5c799ef38c6dcca615d7cc6baff325df259


---------------
Contributors
---------------
Aleksandar Nikolic
Alper Ak
Antonin Godard
Archana Polampalli
Bruce Ashfield
Carlos S=E1nchez de La Lama
Changqing Li
Christos Gavros
Colin Pinnell McAllister
Daniel Turull
Deepesh Varatharajan
Dixit Parmar
Enrico J=F6rns
Etienne Cordonnier
Guocai He
Gu=F0ni M=E1r Gilbert
Gyorgy Sarvari
Harish Sadineni
Jiaying Song
Lee Chee Yang
Mathieu Dubois-Briand
Mikko Rapeli
Moritz Haase
NeilBrown
Niko Mauno
Patrick Williams
Peter Marko
Praveen Kumar
Quentin Schulz
Randy MacLeod
Rasmus Villemoes
Richard Purdie
Robert P. J. Day
Robert Yang
Ross Burton
Sandeep Gundlupet Raju
Steve Sakoman
Trevor Gamblin
Trevor Woerner
Wang Mingyu
Yash Shinde
Yi Zhao
Yogita Urade
Yongxin Liu

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
bind: Fix CVE-2025-40775
binutils: Fix CVE-2025-1153 CVE-2025-1178 CVE-2025-1180 CVE-2025-1181 CVE-2=
025-1182 CVE-2025-3198 CVE-2025-5244
binutils: Ignore CVE-2025-1153 (fixed in current version)
epiphany: Fix CVE-2025-3839
go: Fix CVE-2025-0913 CVE-2025-4673 CVE-2025-22874
go: Ignore CVE-2024-3566
kea: Fix CVE-2025-32801 CVE-2025-32802 CVE-2025-32803
libarchive: Fix CVE-2025-5914
libsoup-2.4: Fix CVE-2024-52530 CVE-2024-52531 CVE-2025-2784 CVE-2025-4476 =
CVE-2025-4948 CVE-2025-4969 CVE-2025-32050 CVE-2025-32052 CVE-2025-32053 CV=
E-2025-32906 CVE-2025-32907 CVE-2025-32909 CVE-2025-32910 CVE-2025-32912 CV=
E-2025-32913 CVE-2025-32914 CVE-2025-46420 CVE-2025-46421
libsoup: Fix CVE-2025-4476 CVE-2025-4948 CVE-2025-4969 CVE-2025-32907 CVE-2=
025-32908 CVE-2025-32914
linux-yocto: Fix CVE-2023-3079 CVE-2023-52904 CVE-2023-52979 CVE-2025-22102=
 CVE-2025-37800 CVE-2025-37801 CVE-2025-37802 CVE-2025-37805 CVE-2025-37821=
 CVE-2025-37838 CVE-2025-37890 CVE-2025-37891 CVE-2025-37894 CVE-2025-37895=
 CVE-2025-37897 CVE-2025-37899 CVE-2025-37900 CVE-2025-37901 CVE-2025-37903=
 CVE-2025-37905 CVE-2025-37907 CVE-2025-37908 CVE-2025-37909 CVE-2025-37910=
 CVE-2025-37911 CVE-2025-37912 CVE-2025-37913 CVE-2025-37914 CVE-2025-37915=
 CVE-2025-37916 CVE-2025-37917 CVE-2025-37918 CVE-2025-37919 CVE-2025-37920=
 CVE-2025-37921 CVE-2025-37922 CVE-2025-37923 CVE-2025-37924 CVE-2025-37926=
 CVE-2025-37927 CVE-2025-37928 CVE-2025-37929 CVE-2025-37930 CVE-2025-37931=
 CVE-2025-37932 CVE-2025-37933 CVE-2025-37934 CVE-2025-37935 CVE-2025-37936=
 CVE-2025-37946 CVE-2025-37947 CVE-2025-37948 CVE-2025-37949 CVE-2025-37951=
 CVE-2025-37952 CVE-2025-37953 CVE-2025-37954 CVE-2025-37955 CVE-2025-37956=
 CVE-2025-37957 CVE-2025-37958 CVE-2025-37959 CVE-2025-37960 CVE-2025-37961=
 CVE-2025-37962 CVE-2025-37963 CVE-2025-37964 CVE-2025-37965 CVE-2025-37967=
 CVE-2025-37968 CVE-2025-37969 CVE-2025-37970 CVE-2025-37971 CVE-2025-37972=
 CVE-2025-37973 CVE-2025-37974 CVE-2025-37990 CVE-2025-37991 CVE-2025-37992=
 CVE-2025-37993 CVE-2025-37994 CVE-2025-37995 CVE-2025-37997 CVE-2025-37998=
 CVE-2025-37999
linux-yocto: Ignore CVE-2023-3079 CVE-2025-37996
net-tools: Fix CVE-2025-46836
ofono: Fix CVE-2024-7537
python3-setuptools: Fix CVE-2025-47273
python3-urllib3: Fix CVE-2025-50181 CVE-2025-50182
sqlite3: Fix CVE-2025-3277 CVE-2025-29088
sqlite3: mark CVE-2025-29087 as patched
systemd: Fix CVE-2025-4598
xz: Fix CVE-2025-31115


---------------
Fixes
---------------
bind: upgrade to 9.20.9
bitbake: toaster/tests/buildtest: Switch to new CDN
brief-yoctoprojectqs/index.rst: replace removed macro
brief-yoctoprojectqs/ref-manual: Switch to new CDN
bsp guide: update kernel version example to 6.12
bsp-guide: update all of section 1.8.2 to reflect current beaglebone conf f=
ile
bsp-guide: update lonely "4.12" kernel reference to "6.12"
build-appliance-image: Update to walnascar head revision
cmake: Correctly handle cost data of tests with arbitrary chars in name
conf.py: tweak SearchEnglish to be hyphen-friendly
cve-exclusion_6.12.inc: Update using current cvelistV5
cve-exclusions: correct cve status for 5 entries
docs: Clean up explanation of minimum required version numbers
docs: README: specify how to contribute instead of pointing at another file
docs: conf.py: silence SyntaxWarning on js_splitter_code
docs: sphinx-lint: superfluous backtick in front of role
docs: sphinx-lint: unbalanced inline literal markup
epiphany: upgrade to 48.3
gcc: Upgrade to GCC 14.3
gcc: fix incorrect preprocessor line numbers in large files
genericarm64.conf: increase INITRAMFS_MAXSIZE
ghostscript: upgrade to 10.05.1
glibc: stable 2.41 branch updates
go: upgrade to 1.24.4
kea: upgrade to 2.6.3
libarchive: upgrade to 3.7.9
libmatchbox: upgrade to 1.14
libsoup: upgrade to 3.6.5
linux-yocto/6.12: bsp/genericarm64: modular configuration updates
linux-yocto/6.12: libbpf: silence maybe-uninitialized warning from clang
linux-yocto/6.12: update to v6.12.31
linux-yoto/6.12: bsp/arm: fix CONFIG_CRYPTO_LIB_CHACHA
linux/cve-exclusion: Execute the script after changing to the new data sour=
ce
linux/cve-exclusion: correct fixed-version calculation
linux/cve-exclusion: do not shift first_affected
linux/cve-exclusion: update exclusions after script fixes
linux/cve-exclusion: update with latest cvelistV5
linux/generate-cve-exclusions: show the name and version of the data source
linux/generate-cve-exclusions: use data from CVEProject
linux: cve-exclusions: Amend terminology
linux: cve-exclusions: Fix false negatives
local.conf.sample: Switch to new CDN
migration-guides: add release notes for 4.0.27, 5.0.10, 5.2.1
nfs-utils: don't use signals to shut down nfs server.
oeqa/sstatetests: Fix NATIVELSBSTRING handling
oeqa/sstatetests: Improve/fix sstate creation tests
overview-manual: small number of pedantic cleanups
package_rpm.bbclass: Remove empty build directory
poky.conf: bump version for 5.2.2
python3-pygobject: RDEPENDS on gobject-introspection
python3-requests: upgrade to 2.32.4
python3: backport the full fix for importlib scanning invalid distributions
python3: drop old nis module dependencies
python3: remove obsolete deletion of non-deterministic .pyc files
python3: upgrade to 3.13.4
ref-manual/variables.rst: document IMAGE_ROOTFS_MAXSIZE INHIBIT_DEFAULT_RUS=
T_DEPS INHIBIT_UPDATERCD_BBCLASS INITRAMFS_MAXSIZE KERNEL_SPLIT_MODULES SST=
ATE_SKIP_CREATION
ref-manual: clarify KCONFIG_MODE default behaviour
ref-manual: classes: nativesdk: move note to appropriate section
ref-manual: classes: reword to clarify that native/nativesdk options are ex=
clusive
scripts/install-buildtools: Update to 5.2.1
sstate: apply proper umask when fetching from SSTATE_MIRROR
sstatetests: Switch to new CDN
systemd.bbclass: generate preset for templates
systemd: upgrade to 257.6
tcf-agent: correct the SRC_URI
testimage: get real os-release file
tune-cortexr52: Remove aarch64 for ARM Cortex-R52
util-linux: fix agetty segfault issue
xwayland: Add missing libtirpc dependency



--_000_BL4PR11MB8797EE4C4282271C24EC4E31B951ABL4PR11MB8797namp_
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
nnounce the Yocto Project 5.2.2 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.2/poky-41038342a471b4a88=
84548568ad147a1704253a3.tar.bz2">http://downloads.yoctoproject.org/releases=
/yocto/yocto-5.2.2/poky-41038342a471b4a8884548568ad147a1704253a3.tar.bz2</a=
><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://m=
irrors.kernel.org/yocto/yocto/yocto-5.2.2/poky-41038342a471b4a8884548568ad1=
47a1704253a3.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-5.2.2/pok=
y-41038342a471b4a8884548568ad147a1704253a3.tar.bz2</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.2/RELEASENOTES">http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.2/RELEASENOTES</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.2/testreport.txt">http:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.2.2/testreport.txt</a><o=
:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.2.2 Release=
 Notes<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 41038=
342a471b4a8884548568ad147a1704253a3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-41038342a471b4a8884548568ad147a1704253a3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4b1e9c80949e5c=
5ab5ffeb4fa3dadb43b74b813fc9d132caabf1fc8c38bd8f5e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.2/poky-41038342a471b4a8884548568ad=
147a1704253a3.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.2/poky-41038342a471b4a8884548568ad147a1704253=
a3.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: c855b=
e07828c9cff3aa7ddfa04eb0c4df28658e4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-c855be07828c9cff3aa7ddfa04eb0c4df28658e4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c510b69b984be7=
ad8045236a3dde9bc4f5833bc9f3045dc04d6442a9453165f4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.2/oecore-c855be07828c9cff3aa7ddfa0=
4eb0c4df28658e4.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.2/oecore-c855be07828c9cff3aa7ddfa04eb0c4df286=
58e4.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: edce6=
93e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 6cfed41b54f83d=
a91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.2/meta-mingw-edce693e1b8fabd84651a=
a6c0888aafbcf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.2/meta-mingw-edce693e1b8fabd84651aa6c0888aafb=
cf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.12<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 74c28=
e14a9b5e2ff908a03f93c189efa6f56b0ca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-74c28e14a9b5e2ff908a03f93c189efa6f56b0ca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 1d417990d92228=
9152af6274d461d7809d06c290d57e5373fd46bb0112e6b812<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.2/bitbake-74c28e14a9b5e2ff908a03f9=
3c189efa6f56b0ca.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.2/bitbake-74c28e14a9b5e2ff908a03f93c189efa6f5=
6b0ca.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 5754f=
b5efb54cf06f96012a88619baba0995b0fc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 85f8e=
5c799ef38c6dcca615d7cc6baff325df259<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alper Ak<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Carlos S=E1nchez de=
 La Lama<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Christos Gavros<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Colin Pinnell McAll=
ister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Daniel Turull<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gyorgy Sarvari<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mathieu Dubois-Bria=
nd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Moritz Haase<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">NeilBrown<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Niko Mauno<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Patrick Williams<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Randy MacLeod<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rasmus Villemoes<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert P. J. Day<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sandeep Gundlupet R=
aju<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Gamblin<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Woerner<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yongxin Liu<o:p></o=
:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: Fix CVE-2025-=
40775<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-1153 CVE-2025-1178 CVE-2025-1180 CVE-2025-1181 CVE-2025-1182 CVE-2025-3=
198 CVE-2025-5244<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Ignore CV=
E-2025-1153 (fixed in current version)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">epiphany: Fix CVE-2=
025-3839<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-09=
13 CVE-2025-4673 CVE-2025-22874<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Ignore CVE-2024=
-3566<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: Fix CVE-2025-3=
2801 CVE-2025-32802 CVE-2025-32803<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-5914<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2024-52530 CVE-2024-52531 CVE-2025-2784 CVE-2025-4476 CVE-2025-4948 CVE-2=
025-4969 CVE-2025-32050 CVE-2025-32052 CVE-2025-32053 CVE-2025-32906 CVE-20=
25-32907 CVE-2025-32909 CVE-2025-32910
 CVE-2025-32912 CVE-2025-32913 CVE-2025-32914 CVE-2025-46420 CVE-2025-46421=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
25-4476 CVE-2025-4948 CVE-2025-4969 CVE-2025-32907 CVE-2025-32908 CVE-2025-=
32914<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto: Fix CV=
E-2023-3079 CVE-2023-52904 CVE-2023-52979 CVE-2025-22102 CVE-2025-37800 CVE=
-2025-37801 CVE-2025-37802 CVE-2025-37805 CVE-2025-37821 CVE-2025-37838 CVE=
-2025-37890 CVE-2025-37891 CVE-2025-37894
 CVE-2025-37895 CVE-2025-37897 CVE-2025-37899 CVE-2025-37900 CVE-2025-37901=
 CVE-2025-37903 CVE-2025-37905 CVE-2025-37907 CVE-2025-37908 CVE-2025-37909=
 CVE-2025-37910 CVE-2025-37911 CVE-2025-37912 CVE-2025-37913 CVE-2025-37914=
 CVE-2025-37915 CVE-2025-37916 CVE-2025-37917
 CVE-2025-37918 CVE-2025-37919 CVE-2025-37920 CVE-2025-37921 CVE-2025-37922=
 CVE-2025-37923 CVE-2025-37924 CVE-2025-37926 CVE-2025-37927 CVE-2025-37928=
 CVE-2025-37929 CVE-2025-37930 CVE-2025-37931 CVE-2025-37932 CVE-2025-37933=
 CVE-2025-37934 CVE-2025-37935 CVE-2025-37936
 CVE-2025-37946 CVE-2025-37947 CVE-2025-37948 CVE-2025-37949 CVE-2025-37951=
 CVE-2025-37952 CVE-2025-37953 CVE-2025-37954 CVE-2025-37955 CVE-2025-37956=
 CVE-2025-37957 CVE-2025-37958 CVE-2025-37959 CVE-2025-37960 CVE-2025-37961=
 CVE-2025-37962 CVE-2025-37963 CVE-2025-37964
 CVE-2025-37965 CVE-2025-37967 CVE-2025-37968 CVE-2025-37969 CVE-2025-37970=
 CVE-2025-37971 CVE-2025-37972 CVE-2025-37973 CVE-2025-37974 CVE-2025-37990=
 CVE-2025-37991 CVE-2025-37992 CVE-2025-37993 CVE-2025-37994 CVE-2025-37995=
 CVE-2025-37997 CVE-2025-37998 CVE-2025-37999<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto: Ignore=
 CVE-2023-3079 CVE-2025-37996<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">net-tools: Fix CVE-=
2025-46836<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2024=
-7537<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Fix CVE-2025-47273<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-urllib3: Fi=
x CVE-2025-50181 CVE-2025-50182<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-3277 CVE-2025-29088<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: mark CVE-2=
025-29087 as patched<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Fix CVE-20=
25-4598<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: Fix CVE-2025-31=
115<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: upgrade to 9.=
20.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: toaster/te=
sts/buildtest: Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">brief-yoctoprojectq=
s/index.rst: replace removed macro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">brief-yoctoprojectq=
s/ref-manual: Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp guide: update k=
ernel version example to 6.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update a=
ll of section 1.8.2 to reflect current beaglebone conf file<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update l=
onely &quot;4.12&quot; kernel reference to &quot;6.12&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to walnascar head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Correctly ha=
ndle cost data of tests with arbitrary chars in name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf.py: tweak Sear=
chEnglish to be hyphen-friendly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-exclusion_6.12.=
inc: Update using current cvelistV5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-exclusions: cor=
rect cve status for 5 entries<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Clean up expl=
anation of minimum required version numbers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: README: speci=
fy how to contribute instead of pointing at another file<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: conf.py: sile=
nce SyntaxWarning on js_splitter_code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: sphinx-lint: =
superfluous backtick in front of role<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: sphinx-lint: =
unbalanced inline literal markup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">epiphany: upgrade t=
o 48.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: Upgrade to GCC=
 14.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: fix incorrect =
preprocessor line numbers in large files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">genericarm64.conf: =
increase INITRAMFS_MAXSIZE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: upgrad=
e to 10.05.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.41 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade to 1.24=
.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: upgrade to 2.6=
.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: upgrade=
 to 3.7.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libmatchbox: upgrad=
e to 1.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: upgrade to=
 3.6.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: b=
sp/genericarm64: modular configuration updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: l=
ibbpf: silence maybe-uninitialized warning from clang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: u=
pdate to v6.12.31<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yoto/6.12: bs=
p/arm: fix CONFIG_CRYPTO_LIB_CHACHA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/cve-exclusion=
: Execute the script after changing to the new data source<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/cve-exclusion=
: correct fixed-version calculation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/cve-exclusion=
: do not shift first_affected<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/cve-exclusion=
: update exclusions after script fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/cve-exclusion=
: update with latest cvelistV5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/generate-cve-=
exclusions: show the name and version of the data source<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux/generate-cve-=
exclusions: use data from CVEProject<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux: cve-exclusio=
ns: Amend terminology<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux: cve-exclusio=
ns: Fix false negatives<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">local.conf.sample: =
Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.27, 5.0.10, 5.2.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">nfs-utils: don't us=
e signals to shut down nfs server.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/sstatetests: F=
ix NATIVELSBSTRING handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/sstatetests: I=
mprove/fix sstate creation tests<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual: sm=
all number of pedantic cleanups<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm.bbclass=
: Remove empty build directory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-pygobject: =
RDEPENDS on gobject-introspection<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: u=
pgrade to 2.32.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: backport t=
he full fix for importlib scanning invalid distributions<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: drop old n=
is module dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: remove obs=
olete deletion of non-deterministic .pyc files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.13.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document IMAGE_ROOTFS_MAXSIZE INHIBIT_DEFAULT_RUST_DEPS INHIBIT_UPDA=
TERCD_BBCLASS INITRAMFS_MAXSIZE KERNEL_SPLIT_MODULES SSTATE_SKIP_CREATION<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: clarify=
 KCONFIG_MODE default behaviour<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: nativesdk: move note to appropriate section<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: reword to clarify that native/nativesdk options are exclusive<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.2.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sstate: apply prope=
r umask when fetching from SSTATE_MIRROR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sstatetests: Switch=
 to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd.bbclass: ge=
nerate preset for templates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 257.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tcf-agent: correct =
the SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testimage: get real=
 os-release file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tune-cortexr52: Rem=
ove aarch64 for ARM Cortex-R52<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: fix age=
tty segfault issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Add missi=
ng libtirpc dependency<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797EE4C4282271C24EC4E31B951ABL4PR11MB8797namp_--

