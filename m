Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 443BFD5E36F
	for <webhook@archiver.kernel.org>; Tue, 16 Dec 2025 14:09:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23539.1765894141099885649
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Dec 2025 06:09:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=N1dWoIgm;
 spf=pass (domain: intel.com, ip: 198.175.65.21, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1765894141; x=1797430141;
  h=from:to:subject:date:message-id:mime-version;
  bh=6xjrRaMdsG1Qr6LazlyHMyUKvmyj+mIHvNT9y10sJNY=;
  b=N1dWoIgm04PgG8KEJPyc2sjNBrF5HcM+2z0VQWIUAfwYF3cyv6Mz5uyU
   0XmKXdYEpSc1yptz9uYwv5pFVdvgz6xZuRmEqJcdLjnxM1DiZPmbBoqin
   L6gNN6MOlGUF92heUUr/hslic8pnFDmw3WcBJ0uH4uoYs8JLfNnlUgkYF
   QrGFxP5Gr6y6eZhXrWHXPMX1ZTeVZM8fSrvoaPMQi3Lyj3sdCSlbLx/zT
   GtdnmN0Ny4xHGP5XteWhfuLzseKReGu1zC6xQ3ksuxp5qNbqZDgH3LCtS
   nw2oJYC8o9fbcHG1YneuqxWG+ELwG3Pt9krBeKNkJw4YNldRu40QvYWU7
   w==;
X-CSE-ConnectionGUID: uovLRVIiS5OVQZVxuaQggg==
X-CSE-MsgGUID: NoL3iJvqS8iElg9zCc5wBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67751020"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; 
   d="scan'208,217";a="67751020"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Dec 2025 06:09:01 -0800
X-CSE-ConnectionGUID: CTRA+q0NQ0OhvamZaRr9UQ==
X-CSE-MsgGUID: G/HOgKc8Q++DX9A8qnn9xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; 
   d="scan'208,217";a="202520463"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Dec 2025 06:09:00 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:08:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 06:08:59 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:08:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FpfKTOehIYmaWtKdqhjy5ehwRL+xKi0DJCKgMVvWf77/Q5Y75zXXNyytRVR9Y+jyccCSEKM6aKrMx10zHsGOtes39jhPnp0O88jUceezp51hDDWiZj4/pUpDnQx+LqwP30puJ2pgTTyqxq9/lxVngTl5sGOh2ZmDBswufAFcbbByDzp2tTOqq+py5j9x5KkWwUz2KXTrKuwFeHyPBm4ZW9gLzCqlDUcuFyb7NfmwF7mJV3CXfaGJBTcXRzm3zXEY7SALZk8vBaLJWQmtR3aXr2EJwLWTxbGEG1JtI21qZIGeKyt473wksQ/z4VEyFT4ZVlauZlPwZa26o8PYvEz7zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=drtd3huhCNbW2nkaBEJvIxhYfJ0VoRpWizT0GuDw0BI=;
 b=X9z2dCRwvYSGrNl+05jNSJumtHOWLpfqTSOyqizXtuyFaP8ZskCmZPUP0oLdgWJxmqN40+KwAVipiD5xj5kZ6xN7g6MIPg1HU/wlHhyl0b1kR0Uyvk4/pCv8JiOzSTQ5Xv4dju3UOT8+JYfEct5bKoNBKaYlpurIpw1rH/buTR0fyHIBXfUsXAh1QXZk+sFk54ORaj1JioFksj3g8xpaKAKfDMZx8IapFBcsfiB/NbmozSbq7M2GVBAdP7QKnynvhDIjCeMgIK8qLuLgQrUSl9LuKkuqU8OkOOKmWrj0Hd9jOihuTmr6tsjbAcfeo/N7xGJ+M3ZtjFv42pxr4g319w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS7PR11MB7781.namprd11.prod.outlook.com (2603:10b6:8:e1::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.13; Tue, 16 Dec 2025 14:08:54 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 14:08:53 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.3 (whinlatter-5.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.3 (whinlatter-5.3) is Released
Thread-Index: AQHcbpEd6cNtxL1R5EWnWnEUe4BxnA==
Date: Tue, 16 Dec 2025 14:08:52 +0000
Message-ID: <BL4PR11MB87971330708DBD429D5AA5ACB9AAA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS7PR11MB7781:EE_
x-ms-office365-filtering-correlation-id: d9937b98-4cc3-4c8d-a6ec-08de3caca4fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|366016|8096899003|38070700021|13003099007;
x-microsoft-antispam-message-info: =?Windows-1252?Q?ywr9YhzM2FqErY8vihOowFIDJUrKaExYKB1pBrMfDnZ82FuaJjubuq6b?=
 =?Windows-1252?Q?8rXuBNUj0ygrvYd3vJ3trcnU8Wp7lJSLBKxZAXY52HbBXTzJyQkt6a4Y?=
 =?Windows-1252?Q?HLyA/20N0Jcf1NjA8MTSWX45UqvkPGKNmoQlc/gZrki3en0JoteIWvu9?=
 =?Windows-1252?Q?MutAwmyKLSZlhFGDMeGejFzBLIhYk++k2DoWaI3BfE7rYwfANXbIdnqN?=
 =?Windows-1252?Q?5/4SxgvyZAbKK4+Q8B/eEYXKk4o88wPJz0d290VX78wXCNtModMO0WsC?=
 =?Windows-1252?Q?eGfE8dzwVLQKDHVtiZ6te1KWsXyLnHf0urOLDiHBnqnNwuFd83EzDiXg?=
 =?Windows-1252?Q?bXfHkjOHPFsh7uHqi/mbwTd4B9i5jaUF4L/ZC5a7MSTmeLD6CGPUBl6l?=
 =?Windows-1252?Q?byW+TrjJxqH+GoK26aZ7GSj6+tvGPtf7ihzr04Q1r5RcfecG8cvJCHov?=
 =?Windows-1252?Q?LPxoftPf1WIrau3qaIJJeBnjIKkpnFl754Sn37u0WXXDNCKygqnG0yCR?=
 =?Windows-1252?Q?AsnNp0P03lws5hdVjWdrXbWscH9bRdioH3NyYuCSWJk+zJ6XELizAqA3?=
 =?Windows-1252?Q?r/Gp7D4m6+uqykk0J6kcyUVyAALUbmlIhE2RwtnkqF3ToolovWWMSiCv?=
 =?Windows-1252?Q?DlDqS/OiXrLJRAtdseZ+rvzRAp++juptYFw+O/9ZrEGEEaqb88h11leh?=
 =?Windows-1252?Q?hXc1IY1Uv5U9/E9ea4BKHQ9ZO+VMqm50gZOVsxuw9X9LxVuTDv6qJLjp?=
 =?Windows-1252?Q?Ey/QbFt+MRQ+hUGdwWpILDSeXY74EKlEpNlUpTVwqiwfKd6ly8i29QNj?=
 =?Windows-1252?Q?nOLJa98Lxr6gH9qsZgg70UhwW8uAaU4z1ccd0uhqvdii1PPIL24EAUw/?=
 =?Windows-1252?Q?DFEQYrN6+ISXD5bduwDdxaDVYRFqwzyz2zmQqirR1ImRohEUvu9XrEgn?=
 =?Windows-1252?Q?wVwFpRKT26vKrDcP4MQFd5sCr1ndwyXhke1QKPC0sSq8c9L/AG+VCTXB?=
 =?Windows-1252?Q?PvOdqvWDOVeH1739Z0ntNB6sT/bzRkymJELCxZuuqgj33CZ7gadbDVVB?=
 =?Windows-1252?Q?MdRga7New4eYAYISBKMc9YGTs1vA6P3JeEZQxl3igL52ob1y0tuRYi8/?=
 =?Windows-1252?Q?kHi4QrKs8DHdJe87CWp7ERSSlJJKkGGQpixl5Q687Og6f4jxZoB0JcIy?=
 =?Windows-1252?Q?y6Pc125syS7Rfr24IPTWRAHXFvpdf+cIWtSeOM9+b05oISUA9XAjh7oj?=
 =?Windows-1252?Q?WZi0Nyr7mngOnoFBiUT1V9dFLhpLalQSDuTagyCi0FL7FfcU37+nlvSR?=
 =?Windows-1252?Q?UP7pB6EWyYozHo95eObFOO3lWIitPcQ4Z2TQmii6OynuLrDZY0ZMZQUT?=
 =?Windows-1252?Q?v2jW3hBVG+pDWUzYcnTYDSecOwXKfHU8XhdjxbGqtpxjDRPx2kEi7Xyn?=
 =?Windows-1252?Q?WhmYSG3GJ/DMKlvg2nKZ5OmYbzwfK/4M+syrWBrha+oKAVunHia74M1W?=
 =?Windows-1252?Q?IPJfoqeS8DOuBRoYEWhsyLNjnBkvg9mDd89H1XbeK7DkYZnX+3kWoIrK?=
 =?Windows-1252?Q?5zqvzfv+4EseD97U8AFidZe7Z08j3J8koysu8A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(8096899003)(38070700021)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?e5C8+23Vnw0Rm0KKiqi81TpD1EWLA25Ns3UJxgYY7EGqnuFeFY0MwrCm?=
 =?Windows-1252?Q?leju3CPLRyVr4Lssyn2cvYfnxfjIGtcer+QSKaycK344DMrThPk6WVQ1?=
 =?Windows-1252?Q?UAENAc80ZGus4uduK2Q96J6BV85QYlEwnjuntKqWCwlVElO+xbfHcHsH?=
 =?Windows-1252?Q?PBIzQxsJs+7XkHmjlOUaFtQbc2Cwb4Fz3P8pN0FfeawSS4ggFyr2sKCL?=
 =?Windows-1252?Q?XLmRYjd3HriwRIHrRLLZ2uUEndjmXNAOsSvaF3Hm1hlnFXBKA9+g6IXP?=
 =?Windows-1252?Q?MOF7ulyGzilR+xRl+GCw7nUGKsbFDqWNmL1j4XR4zJvpDgkbyyCOCqLj?=
 =?Windows-1252?Q?3t4H3hZ1KEZhVSMetcWrqvM2ztHeqEl9SpVKFZBrpRaQRpTahrqDZ9As?=
 =?Windows-1252?Q?vPTiHjxoc8/wvIx8SL/8nWDyE3c3Vh5BipzPjf+E99tlZEqskpLN820Q?=
 =?Windows-1252?Q?Gc5QhIGwysEIP+97Zv6qeytUdlXuIc6HgbCqkfaXy6ZyrwV7FQYiMtKK?=
 =?Windows-1252?Q?K6FEmSg6ctu83BnUEhUl3a9SFuA16nQRzBluU9F4cNZKnsEgOz6RPQDw?=
 =?Windows-1252?Q?ANqQC018YS7p14TEnX7qoYeEEkWZrPEIqLElH1WZ12nADAcSYRtYzs0G?=
 =?Windows-1252?Q?nzcFF3sRvxg2c14DnMsL3mvHxrB35m/C8ZsV0gfAxoXvR2xDRnYGELSO?=
 =?Windows-1252?Q?ozfUu3E7U8g/mMaj6H6/spFMb0TwjY48nm9/4MgooQfOBJUGHkb/Jt72?=
 =?Windows-1252?Q?flGlJW58SFC1f9hWVdE1lNvG/Qs4JtNvafZ0fsf+p567q0y1UJiq2l3t?=
 =?Windows-1252?Q?5sUAIl2N+I3GrjPPvlT5xG6P3yJVm0xCClCTRadPW9fWLbRgPK8NpFRL?=
 =?Windows-1252?Q?EcjwDbZJ7axz7o3N0lYB6hUCZIe8UdlUd+kWSldpwbbarVZanQ3l4YbP?=
 =?Windows-1252?Q?phmLRuqwaBhQuoms0zoZcR5UMtEdLAgdIpgdmvSeSB6mBib+LCb/6uTk?=
 =?Windows-1252?Q?NQ1CcQjaJ/TOgJ2v47m/hOJG26EoFq/bXtpzz49RcYKyRC2avaS85K8m?=
 =?Windows-1252?Q?/p5cZpEf+qUUmC4UOnrbF7ZO9BRLvmO71WixJkmS+RNJZfikD8Mu6wO2?=
 =?Windows-1252?Q?FYUAG8sAXsa57gGQYNJOcyyPOFHP7jbAeod2fWxe1Z9SRxaPQzDfqld9?=
 =?Windows-1252?Q?q3YPZxupom7gs52F2vOMqMEDmVARgmPHXVLPDAb+/Yr34rrncXYUK53K?=
 =?Windows-1252?Q?u4yb28rmSZdqJ0dKAaYy21Qma1ZH5S6zsTFGT+5t/g2nVtzS8FaEvPQ6?=
 =?Windows-1252?Q?2ZYSaLBkaps6TzB96R4LQFbRKAy0M58hw6nvmNkO0ezCeq9ZQWKxOaDn?=
 =?Windows-1252?Q?QYSRkoWm+hb4+hVRBRGl5MsgwxjsNlkpyAlnpWWti24TO1f8+7SsPauM?=
 =?Windows-1252?Q?hv38PImySdafUI7/8GB6dXKfB+QeFuwuYKxCG8lPwGma4ek1ORYlmT6F?=
 =?Windows-1252?Q?xSSSh+CL1YzxMdW8eZOzlPIGw/c0bcETzqiG8un2XwyJEeMrSe66l4az?=
 =?Windows-1252?Q?a/ZxNL0Ju4SMl75ogQAUdWk4sl2PsNnqQsRx+T18yCmKtJ1sRYzOp3cu?=
 =?Windows-1252?Q?zXpLjbh+0+MHFA0eGJtM7jR985gEcWczuwZiDQxfW0H1WqkLBuhML1e+?=
 =?Windows-1252?Q?BcoIWMnD2UBzsKzJJ7IgyBI7cW89OZg/2FEREwxl9jHuET4wJw/vQFxm?=
 =?Windows-1252?Q?RoUT6wNyJ3kCFjYf+R8vye5FTpJWZUrEqferdryH?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87971330708DBD429D5AA5ACB9AAABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9937b98-4cc3-4c8d-a6ec-08de3caca4fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2025 14:08:53.2945
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yIkNKdLJOHESebWVz4rIQKkgzJvFf4bF4CVaZAXQKp67uVQyjoMRVv3STWFLNwn+tu5/W/hvItBDqQQnSK+pZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7781
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Dec 2025 14:09:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66113

--_000_BL4PR11MB87971330708DBD429D5AA5ACB9AAABL4PR11MB8797namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.3 Release is now available f=
or download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@<mailto:chee.yang.lee@...>intel.com
Yocto Project Build and Release


Release notes for 5.3 (whinlatter)
----------------------------------

This release does have some significant changes which people need to be awa=
re of. We have added bitbake-setup and have switched to this as the default=
 way the project is presented to users (e.g. in our documentation and in ou=
r automated testing). Existing workflows with other tools such as kas or su=
bmodules, or individual repositories remain unchanged. We have stopped upda=
ting the poky repository and users will need to switch to the individual bi=
tbake, openembedded-core, meta-yocto and yocto-docs repositories instead th=
ough. Please see https://git.yoctoproject.org/poky/tree/README for more inf=
ormation.


New Features / Enhancements in 5.3
----------------------------------

- Linux kernel 6.16, gcc 15, glibc 2.42, LLVM 21.1.1, and over 300 other re=
cipe upgrades.

- Minimum Python version required on the host: 3.9.

- Host requirements changes:

  - The minimum disk space requirement is now 140Gbytes (previously 90Gbyte=
s).

  - The minimum RAM requirement is now 32Gbytes (previously 8Gbytes).

  - These changes are mainly due to recent additions of the LLVM and other =
resource heavy recipes. For guidance on how to limit the resources used by =
the OpenEmbedded Build System, see the Limiting the Host Resources Usage gu=
ide. (https://docs.yoctoproject.org/dev/dev-manual/limiting-resources.html)

- BitBake changes:

  - A new bitbake-setup tool can be used to clone the initial layers and se=
tup the environment. See the Yocto Project Quick Build (https://docs.yoctop=
roject.org/dev/brief-yoctoprojectqs/index.html) section for instructions on=
 how to build an image that uses the Poky distribution with this new tool.
    See the reference documentation of bitbake-setup at Setting Up The Envi=
ronment With bitbake-setup. (https://docs.yoctoproject.org/bitbake/dev/bitb=
ake-user-manual/bitbake-user-manual-environment-setup.html)

  - codeparser: Add function decorators for vardeps
    Adds bb.parse.vardeps and bb.parse.excludevardeps function decorators t=
hat can be used to explicitly add or exclude variables from a Python functi=
on parsed by BitBake.
    Move vardepexclude flag entries alongside functions for maintainability=
.

  - Fetcher:

    - Check for git-lfs existence before using it.
    - Add support for .debs files containing uncompressed data tarballs.
    - az: Add sanity check to check that AZ_SAS starts with ? to mark the s=
tart of the query parameters.
    - git:
      - Add the tag to shallow clone tarball name.
      - Verify if local clones contains a tag, when the tag=3D parameter is=
 used in SRC_URI.

  - knotty:

    - Pass failed task logs through the log infrastructure (use bb.plain() =
instead of print()).
    - Improve refresh rate of the footer progress bar.

  - Add support for automatically promoting class inherits to deferred inhe=
rits by listing them in the BB_DEFER_BBCLASSES variable.

  - =93Built-in=94 fragments support is now added to the addfragments direc=
tive. This is the fourth parameter to this directive, and should be the nam=
e of the variable that contains definitions of built-in fragments. Refer to=
 the documentation of addfragments (https://docs.yoctoproject.org/bitbake/d=
ev/bitbake-user-manual/bitbake-user-manual-metadata.html#addfragments-direc=
tive) to learn how to define new built-in fragments.

  - Listing these built-in fragments can be done with bitbake-config-build =
list-fragments, which could list:

      Available built-in fragments:
      machine/...     Sets MACHINE =3D ...
      distro/...      Sets DISTRO =3D ...

  - In the above example, this means that the MACHINE of DISTRO can be over=
ridden with:

  - OE_FRAGMENTS +=3D "machine/qemuarm64 distro/poky-bleeding"

  - This would set MACHINE to qemuarm64 and the DISTRO to poky-bleeding.

  - The tag- parameter in URLs can now be specified alongside the rev=3D pa=
rameter and SRCREV variable, and will ensure that the specified tag matches=
 the specified revision.
    It is strongly encouraged to include the tag=3D parameter to the SRC_UR=
I definition when possible.

  - tinfoil: add a wait_for decorator to wrap a function that makes an asyn=
chronous tinfoil call wait for event to say that the call has been successf=
ul, or an error has occurred.

  - New bb.utils.to_filemode() helper function which is a helper to take a =
variable=92s content containing a filemode and convert it to the proper Pyt=
hon representation of the number.

  - cooker: Use a shared counter for processing parser jobs. This allows th=
e parser processes to run independently of needing to be feed by the parent=
 process, and load balances them much better.

  - cooker/process/utils: Add a -P (--profile) option to BitBake to specify=
 what to profile. Can be =93main=94, =93idle=94 or =93parsing=94. Split the=
 reports in separate files.

  - A =93filtering=94 functionality was added and allows modifying the valu=
e of a variable before its value is returned by BitBake. The setVarFilter A=
PI can be used for applying the filters, but it is not recommended for gene=
ral use. It was added for internal use in the OpenEmbedded Build System in =
the native class. The list of filters that are allowed are derived from a s=
elect list of functions that must be added using a filter_proc decorator.

  - tests/parse: Add tests for include, require and include_all.

- Toolchain changes:

  - The Clang/LLVM toolchain can now be used as part of the build.

  - The PREFERRED_TOOLCHAIN_TARGET, PREFERRED_TOOLCHAIN_NATIVE and PREFERRE=
D_TOOLCHAIN_SDK variables can be used to customize the selected toolchain g=
lobally.

  - There are two supported toolchains: =93gcc=94 and =93clang=94. See the =
documentation of PREFERRED_TOOLCHAIN_TARGET for more details.

  - The toolchain is also customizable on a per-recipe basis, using the TOO=
LCHAIN and TOOLCHAIN_NATIVE variables.

      Warning:
      The TOOLCHAIN should not be set globally. For overriding the toolchai=
n globally, use PREFERRED_TOOLCHAIN_TARGET, PREFERRED_TOOLCHAIN_NATIVE and =
PREFERRED_TOOLCHAIN_SDK.

  - Multiple recipes were pinned to use the GCC/Binutils toolchain as they =
do not support being built with Clang/LLVM yet. In these recipes the TOOLCH=
AIN variable is set to =93gcc=94.

- Global configuration changes:

  - bitbake.conf/pseudo: Switch from exclusion list to inclusion list by sw=
apping PSEUDO_IGNORE_PATHS for PSEUDO_INCLUDE_PATHS which should be easier =
and more explicit to maintain.

  - bitbake.conf: Drop lz4 from HOSTTOOLS, as it is not required anymore, a=
nd the lz4-native package is used instead.

  - Configuration Fragments:

    - Add a fragment for the CDN sstate-cache mirror.
    - Add a show-fragments sub-command to the bitbake-config-build utility,=
 to show the content of fragments from command-line.

  - default-distrovars: set an empty default for LICENSE_PATH.

  - The default definition of UNPACKDIR is no longer sources-unpack but sou=
rces.

  - The default value for IMAGE_FSTYPES (defined in bitbake.conf) is now ta=
r.zst (previously tar.gz).

  - Remove the meta/conf/distro/include/distro_alias.inc include file, whic=
h associated a recipe name to one or more Distribution package name. This f=
ile is not used and maintained anymore.

  - A new configuration file build/conf/toolcfg.conf is now used by bitbake=
-config-build to manage Configuration Fragments.

  - bitbake.conf: add TMPDIR to the GIT_CEILING_DIRECTORIES Git variable. T=
his avoids Git trying to find a repository higher than TMPDIR in recipes th=
at use the build/tmp/work-shared/ directory for storing their sources. This=
 fixes reproducibility issues.

  - Changes to the genericarm64 machine configuration:

    - Increase the Initramfs maximum size.
    - Install extra Linux firmware packages to fix Linux kernel warnings.

- New variables:

  - The VIRTUAL-RUNTIME_dbus variable, to allow changing the runtime implem=
entation of D-Bus. See VIRTUAL-RUNTIME. (https://docs.yoctoproject.org/dev/=
ref-manual/variables.html#term-VIRTUAL-RUNTIME)

  - The VIRTUAL-RUNTIME_libsdl2 variable, to allow changing the runtime imp=
lementation of libsdl2. See VIRTUAL-RUNTIME. (https://docs.yoctoproject.org=
/dev/ref-manual/variables.html#term-VIRTUAL-RUNTIME)

  - The SPDX_PACKAGE_URL variable can be used in recipes to set the output =
software_packageUrl field in their associated SPDX 3.0 output (default valu=
e: empty string).

  - The KMETA_CONFIG_FEATURES variable can be used to control kernel-yocto =
configuration features. For now only prefer-modules is supported for this v=
ariable.

  - The TESTSDK_SUITES variable can be used to control the list of tests ru=
n for the testsdk class.

  - The UBOOT_FIT_CONF_FIRMWARE can be used to specify a firmware entry in =
the configuration node of a FIT image.

  - The SPDX_INCLUDE_COMPILED_SOURCES option allows the same as SPDX_INCLUD=
E_SOURCES but including only the sources used to compile the host tools and=
 the target packages.

  - The UBOOT_VERSION variable holds the package version (PV) and revision =
(PR) which are part of the installed and deployed filenames. Users can now =
override UBOOT_VERSION to changes the output filenames.

  - The UBOOT_MAKE_OPTS variable specifies extra options passed to make whe=
n building U-boot. Extra options can also be passed as the fourth argument =
of the UBOOT_CONFIG variable. See the documentation of uboot-config class f=
or more details. (https://docs.yoctoproject.org/dev/ref-manual/classes.html=
#ref-classes-uboot-config)

  - The WESTON_USER and WESTON_USER_HOME variables can be used to define th=
e username and home directory for the Weston user.

- New core tasks:

  - The do_list_image_features can be used to list the available IMAGE_FEAT=
URES for an image recipe.

- Kernel-related changes:

  - Support for the 6.17 kernel exists but 6.16 is the default selected one=
 in the Poky distro.

  - linux/generate-cve-exclusions: use data from CVEProject instead of the =
archived https://linuxkernelcves.com.

  - kernel-yocto: allow annotated options to be modified. For example if th=
e following kernel configuration is set:

        CONFIG_INET_TUNNEL=3Dy # OVERRIDE:$MODULE_OR_Y

    And if the KMETA_CONFIG_FEATURES variable contains prefer-modules, CONF=
IG_INET_TUNNEL will be set to m instead of y.

  - kernel-devsrc: Replace the extra System.map file with symbolic link.

  - kernel-module-split: Allow for external configuration files being assig=
ned to the correct kernel module package.

  - When built for the RISC-V architecture, ensure that the minimum require=
d features set by TUNE_FEATURES are set using the features_check class.

  - linux-yocto: when built for RISC-V, enable features in KERNEL_FEATURES =
based on features listed in TUNE_FEATURES.

  - perf: Enable coresight if enabled in MACHINE_FEATURES.

- New core recipes:

  - python3-pdm, python3-pdm-backend and python3-pdm-build-locked, which ar=
e dependencies of python3-webcolors. python3-pdm itself depends on python3-=
pdm-build-locked

  - bindgen-cli: a tool to generate Rust bindings.

  - python3-colorama: Cross-platform colored terminal text, needed by pytes=
t as a dependency.

  - libglvnd: imported from meta-oe which provides a vendor neutral approac=
h to handling OpenGL / OpenGL ES / EGL / GLX libraries.

  - python3-sphinx-argparse: A sphinx extension that automatically document=
s argparse commands and options. It is part of buildtools-docs-tarball for =
later use in the Yocto Project documentation.

  - python3-sphinx-copybutton: A sphinx extension that adds a copy button t=
o code blocks in Sphinx. It is part of buildtools-docs-tarball for later us=
e in the Yocto Project documentation.

  - python3-coherent-licensed: License management tooling for Coherent Syst=
em and skeleton projects. It became a new dependency of python3-zipp.

  - gn: a commonly used build tool to generate ninja files.

  - LLVM/Clang related recipes:

    - clang: LLVM based C/C++ compiler.
    - compiler-rt: LLVM based C/C++ compiler Runtime.
    - libclc: Implementation of the library requirements of the OpenCL C pr=
ogramming language.
    - libcxx: new implementation of the C++ standard library, targeting C++=
11 and above
    - llvm-tblgen-native: LLVM TableGen binaries for the build host, often =
used to build LLVM projects.
    - lld: the LLVM Linker.
    - lldb: LLDB debugger for LLVM projects.
    - llvm-project-source: canonical git mirror of the LLVM subversion repo=
sitory.
    - llvm: The LLVM Compiler Infrastructure.
    - openmp: LLVM OpenMP compiler Runtime.

  - kernel-signing-keys-native: this recipe is used in the kernel-fit-image=
 class to generate a pair of RSA public/private key. It replaces the do_gen=
erate_rsa_keys of the kernel-fit-image class.

- New DISTRO_FEATURES:

  - glvnd, which enables OpenGL Vendor Neutral Dispatch Library support whe=
n using recipes such as mesa.

  - opencl: support for the OpenCL (Open Computing Language) framework.

- New core classes:

  - The new kernel-fit-image class replaces the previous kernel-fitimage cl=
ass. It has been rewritten and improved to fix bug 12912. See the Removed C=
lasses section of the Migration notes for 5.3 (whinlatter) for more details=
 on how to switch to this new class. (https://docs.yoctoproject.org/dev/mig=
ration-guides/migration-5.3.html#removed-classes)

  - The new go-mod-update-modules class can be used to maintain Go recipes =
that use a BPN-go-mods.inc and BPN-licenses.inc and update these files auto=
matically.

  - The new python_pdm class supports building Python recipes with the PDM =
package and dependency manager.

- Architecture-specific changes:

  - Rework the RISC-V TUNE_FEATURES to make them based of the RISC-V ISA (I=
nstruction Set Architecture) implementation.

  - This implements the following base ISAs:

    - rv32i, rv64i
    - rv32e, rv64i

  - The following ABIs:

    - ilp32, ilp32e, ilp32f, ilp32d
    - lp64, lp64e, lp64f, lp64d

  - The following ISA extension are also implemented:

    - M: Integer Multiplication and Division Extension
    - A: Atomic Memory Extension
    - F: Single-Precision Floating-Point Extension
    - D: Double-Precision Floating-Point Extension
    - C: Compressed Extension
    - B: Bit Manipulation Extension (implies Zba, Zbb, Zbs)
    - V: Vector Operations Extension
    - Zicsr: Control and Status Register Access Extension
    - Zifencei: Instruction-Fetch Fence Extension
    - Zba: Address bit manipulation extension
    - Zbb: Basic bit manipulation extension
    - Zbc: Carry-less multiplication extension
    - Zbs: Single-bit manipulation extension
    - Zicbom: Cache-block management extension

  - The existing processors tunes are preserved:

    - riscv64 (rv64gc)
    - riscv32 (rv32gc)
    - riscv64nf (rv64imac_zicsr_zifencei)
    - riscv32nf (rv32imac_zicsr_zifencei)
    - riscv64nc (rv64imafd_zicsr_zifencei)

    See meta/conf/machine/include/riscv/README for more information. (https=
://git.openembedded.org/openembedded-core/tree/meta/conf/machine/include/ri=
scv/README)

  - Add support for new Arm64 instruction sets, which are represented as fi=
les to be included in MACHINE configuration in OpenEmbedded-Core (OE-Core).=
 The new configuration files are:

    - conf/machine/include/arm/arch-armv8-7a.inc
    - conf/machine/include/arm/arch-armv8-8a.inc
    - conf/machine/include/arm/arch-armv9-1a.inc
    - conf/machine/include/arm/arch-armv9-2a.inc
    - conf/machine/include/arm/arch-armv9-3a.inc

  - arch-mips.inc: Use -EB/-EL for denoting Endianness.

  - Enable riscv32 as supported arch for musl systems.

  - Powerpc: Use -maltivec in compiler flags if altivec is in TUNE_FEATURES=
.

  - arm: add a nocrypto feature to TUNE_FEATURES to complement the crypto f=
eature to explicitly disable cryptographic extensions via GCC flags.

  - This lead to the creation of two new tunes:

    - tune-cortexa72-nocrypto
    - tune-cortexa53-nocrypto

- QEMU / runqemu changes:

  - Refactor qemu functions into library functions (in lib/oe/qemu.py).

  - The qemux86-64 MACHINE now defaults to the x86-64-v3 micro-architecture=
 level.

  - The previous default was Core 2 era processors. This change means that =
the toolchain is configured to build for that level, and QEMU is configured=
 to emulate it.

  - The v3 level adds support for AVX/AVX2/BMI/BMI2/F16C and other newer in=
structions which are seeing increasing usage in modern software and add per=
formance benefits. Please see X86-64 Microarchitecture levels for definitio=
n of the levels and lists of Intel/AMD CPUs where support for the instructi=
ons was first added. (https://en.wikipedia.org/wiki/X86-64#Microarchitectur=
e_levels)

  - Note that if QEMU system emulation is used on an x86 build machine with=
 KVM enabled, then the build machine=92s CPU must also be recent enough to =
support these instructions natively.

  - runqemu:

    - The script can now run compressed images with snapshot mode. For exam=
ple, with IMAGE_FSTYPES containing ext4.zst, you can run:
    - runqemu snapshot ext4.zst <image-recipe>
    - Add support for the erofs filesystem.
    - The BitBake environment is now a requirement, and the script cannot r=
un without a successful call to bitbake -e.
      The script will also raise an error with the bitbake command is not f=
ound.

- Documentation changes:

  - Add documentation on Configuration Fragments:

    - Using Configuration Fragments (https://docs.yoctoproject.org/dev/ref-=
manual/fragments.html)
    - Creating New Configuration Fragments In Your Build (https://docs.yoct=
oproject.org/dev/dev-manual/creating-fragments.html)

  - Part of BitBake internals are now documented at https://docs.yoctoproje=
ct.org/bitbake/bitbake-user-manual/bitbake-user-manual-library-functions.ht=
ml.

  - A new Limiting the Host Resources Usage guide was created to help users=
 limit the resources used by the OpenEmbedded Build System.

  - A new Setting up a Hash Equivalence Server guide was created to help us=
ers setting up a Hash Equivalence server.

  - The QA checks defined in the OpenEmbedded Build System were gathered in=
 QA Error and Warning Messages.

  - A new Setting Up the Poky Reference Distro Manually document was added =
to instruct how to setup the Poky reference distribution manually, after th=
e master branch of the Poky repository has stopped being updated.

- Core library changes:

  - Add license_finder.py, which was extracted from recipetool to be shared=
 for multiple users. Improve its functionalities.

- Go changes:

  - go-mod-update-modules: Update license finding to use the new find_licen=
ses_up library function.

- Rust changes:

  - The rust-llvm recipe has been removed, and the rust recipe now uses the=
 same llvm recipe as clang.

  - Add the has-thread-local option to the rust-target-config class.

- Wic Image Creator changes:

  - After a Python upgrade, WIC plugins containing dashes (-) for their fil=
enames are no longer supported. One must convert the dashed to underscores =
(_) and update users of the plugins accordingly.
    See the Wic plugins containing dashes should be renamed section of the =
Yocto Project 5.3 Migration Guide for more information. (https://docs.yocto=
project.org/dev/migration-guides/migration-5.3.html#wic-plugins-containing-=
dashes-should-be-renamed)

  - wic: do not ignore IMAGE_ROOTFS_SIZE if the Rootfs is modified.

  - Several improvements in WIC selftests.

  - bootimg_efi.py: fail build if no binaries are installed.

  - Add new options to the wic ls, cp, rm, and write commands:

    - --image-name: name of the image to use the artifacts from.
    - --vars: directory with <image>.env files that store BitBake variables=
. This directory is usually found in STAGING_DIR.

  - Add the Wic-specific option --extra-partition-space to add extra empty =
space after the space filled by the filesystem in the partition.

  - The Wic-specific option --extra-space has a new alias --extra-filesyste=
m-space.

  - bootimg_pcbios: move Syslinux install into separate functions, to make =
it easier to add new bootloaders.
    The Grub bootloader can now be installed with this Wic plugin.

  - Add the Wic plugin extra_partition to install files from the DEPLOY_DIR=
_IMAGE directory into an extra non-rootfs partition. See the IMAGE_EXTRA_PA=
RTITION_FILES variable for more information. (https://docs.yoctoproject.org=
/dev/ref-manual/variables.html#term-IMAGE_EXTRA_PARTITION_FILES)

  - The --diskid option was added to allow passing a MS-DOS or GPT-formatte=
d disk IDs for a partition (for example: deadbeef-cafe-babe-f00d-cec2ea4efa=
ce).

- SDK-related changes:

  - Include additional information about Meson setting in the SDK environme=
nt setup script (host system, CPU family, etc.).

  - Add Go to SDK_TOOLCHAIN_LANGS, except for the following architecture on=
 which this is not supported:

    - RISC-V 32 bits (rv32)
    - PowerPC

  - Image-based SDKs can now include Zsh completions by adding the zsh-comp=
letion-pkgs feature to the IMAGE_FEATURES variable in the image recipe.

  - The SDK build is now part of the buildhistory difference analysis (buil=
dhistory-diff command).

- Testing-related changes:

  - bitbake/tests/fetch: Add tests for gitsm with git-lfs.

  - bitbake/lib/bb/tests/fetch: add a test case to ensure Git shallow fetch=
 works for tag containing slashes.

  - testexport: capture all tests and data from all layers (instead of the =
OpenEmbedded-Core (OE-Core) layer only).

  - OEQA:

    - SDK:
      - Add a test to sanity check that the generated SDK manifest was pars=
ed correctly and isn=92t empty.
      - Add a test to verify the manifests are generated correctly.
      - Add helpers to check for and install packages.
      - Add check that meson has detected the target correctly.

    - Simplify test specification and discovery:
      - Introduce the TESTSDK_CASE_DIRS variable to specify test directory =
types, replacing the need to modify the default_cases class member.
      - Discover tests from configured layers using a common discovery patt=
ern (<LAYER_DIR>/lib/oeqa/<dirname>/cases) where <dirname> is specified in =
TESTSDK_CASE_DIRS.
      - The =93buildtools=94 directories were renamed to follow the common =
discovery pattern (<LAYER_DIR>/lib/oeqa/<dirname>/cases) for consistency ac=
ross all SDK configurations.

    - selftest/reproducible: Limit memory used by diffoscope to avoid trigg=
ering OOM kills.
    - Add tests for the devicetree class.
    - Tests for the kernel-fit-image class have been reworked and improved.
    - data.py: add skipIfNotBuildArch decorator, to skip tests if BUILD_ARC=
H is not in present in the specified tuple.
    - selftest: add new test for toolchain switching.
    - utils/command: add a fast-path get_bb_var() that uses bitbake-getvar =
instead of bitbake -e when there is not postconfig argument passed.
    - core/case: add file exists assertion test case.
    - context.py: use TEST_SUITES if set.
    - runqemu: add new test for booting compressed images.
    - General improvements of the parallelization of tests, namely fixing s=
ome tests that could spawn an unlimited number of threads leading to OOM ki=
lls.
    - A new SDK test is now running for Go after go was added to SDK_TOOLCH=
AIN_LANGS.
    - Commands sent over SSH (using the OESSHTarget class) will now error w=
hen an SSH failure occurs. It is possible to ignore these errors by passing=
 ignore_ssh_fails when executing a command.

- Utility script changes:

  - sstate-cache-management: add a --dry-run argument

  - yocto-check-layer:

    - Expect success for test_patches_upstream_status. This means that patc=
h files must include an Upstream-Status to pass with this script.
    - Show the DISTRO used when running the script.
    - yocto-check-layer class:
      - Refactor to be extended easily.
      - Add a check_network_flag test that checks that no tasks other than =
do_fetch can access the network.

  - send-error-report:
    - Respect URL scheme in server name if it exists.
    - Drop --no-ssl as the server URL specifies it with http:// or https://=
.

  - buildstats.py:
    - Extend disk stats support for NVMe and flexible token count.
    - Add tracking of network I/O per interface.

  - buildstats-diff: find last two Buildstats files if none are specified.
  - pybootchartgui:
    - visualize /proc/net/dev network stats in graphs.
    - account for network statistics when calculating extents.

- Packaging changes:

  - Export debugsources in PKGDESTWORK as JSON. The source information used=
 during packaging can be use from other tasks to have more detailed informa=
tion on the files used during the compilation and improve SPDX accuracy.

  - When using the ipk and rpm package managers, give out more possible rea=
sons about unmatched packages.
    For example:
      E: Package 'catch2' has no installation candidate
      catch2 is a recipe. Its generated packages are: ['catch2-src', 'catch=
2-dbg', 'catch2-staticdev', 'catch2-dev', 'catch2-doc']
      Either specify a generated package or set ALLOW_EMPTY:${PN} =3D "1" i=
n catch2 recipe

  - package.py: replace all files unconditionally when copying debug source=
s (passing -u to the cpio command in copydebugsources()). This improves rep=
roducibility.

- LLVM related changes:

  - Like gcc-source, the LLVM project sources are part of work-shared under=
 TMPDIR. The project codebase is large and sharing it offers performance im=
provements.

- SPDX-related changes:

  - spdx30: Provide software_packageUrl field

  - spdx30_tasks: Change recipe license to =93declared=94 (instead of =93co=
ncluded=94)

  - create-spdx-2.2: support to override the version of a package in SPDX 2=
 through SPDX_PACKAGE_VERSION.

- devtool and recipetool changes:

  - Use lib/oe/license_finder to extract the license from source code.

  - Calculate source paths relative to UNPACKDIR.

  - Allow recipe create handlers to specify bitbake tasks to run.

  - create_go: Use go-mod class instead of go-vendor.

  - Go recipes are now generated with help of the new go-mod-update-modules=
 class.

  - Add a new improve_kernel_cve_report.py script in scripts/contrib for po=
st-processing of kernel CVE data.

  - Handle workspaces for multiconfig.

  - Fix upgrade for recipes with Git submodules.

- Patchtest-related changes:

  - Multiple improvements to the tool=92s README.

  - Don=92t match BitBake Python expansions as GitHub usernames (${@...} sy=
ntax).

- Security changes:

  - openssl: add FIPS support. This can be enabled through the fips PACKAGE=
CONFIG.

  - The default Poky template configuration (local.conf.sample) does not de=
fine the allow-empty-password, empty-root-password, and allow-root-login in=
 EXTRA_IMAGE_FEATURES anymore.

- Toaster changes:

  - Adapt it for bitbake-setup.

  - Remove hard dependency on the Poky repository, as its master branch is =
no longer updated.

- cve-check class changes:

  - cve-update-db-native: FKIE: use Secondary metric if there is no Primary=
 metric.

- New PACKAGECONFIG options for individual recipes:

  - ppp: l2tp, pptp
  - dropbear: x11 (renamed from enable-x11-forwarding)
  - gdb: source-highlight
  - gstreamer1.0-plugins-bad: analytics
  - mtd-utils: ubihealthd-service
  - openssl: fips
  - qemu: sdl-image, pixman
  - wget: pcre2
  - mesa: asahi, amd, svga, teflon, nouveau, xmlconfig
  - dbus: traditional-activation, message-bus
  - cmake: debugger
  - libcxx: unwind-cross
  - tiff: lerc
  - freetype: brotli
  - gawk: pma-if-64bit
  - x264: ffmpeg, opencl

- Systemd related changes:

  - Enable getty generator by default by adding serial-getty-generator to P=
ACKAGECONFIG.

  - Now uses the USE_NLS variable to enable or disable building translation=
s.

  - Fix deduplicated templates and instance lines in preset files when list=
ing both template and instances in SYSTEMD_SERVICE.

  - Stop enabling non-standard MAC policy when using the =91pni-names=92 fe=
ature (part of DISTRO_FEATURES). Instead, follow what is provided by upstre=
am systemd.

  - Install systemd-sysv-install when using the systemd-systemctl-native re=
cipe.

- sanity class changes:

  - insane: Move test for invalid PACKAGECONFIG to do_recipe_qa.

  - Add unimplemented-ptest detection for cargo-based tests, allowing to de=
tect when a cargo package has available tests that could be enable with Pte=
st.

  - Add a test for recipe naming/class mismatches.

  - Add a sanity test for =93bad=94 gcc installs on Ubuntu 24.04. The host =
should install libstdc++-14-dev instead of libgcc-14-dev to avoid build iss=
ues when building native with Clang.

  - Drop the var-undefined QA check as it was not relevant for the variable=
s it was checking, as those are mandatory by default.

- U-boot related changes:

  - uboot-sign: Add support for setting firmware property in FIT configurat=
ion with UBOOT_FIT_CONF_FIRMWARE.

  - uboot-sign: Add support for signing U-Boot FIT image without an SPL. Th=
e SPL_DTB_BINARY variable can be set to an empty string to indicate that no=
 SPL is present.

  - When built for the RISC-V architecture, read the TUNE_FEATURES variable=
 to automatically set U-boot configuration options (for example CONFIG_RISC=
V_ISA_F).

  - Improve the way build directories are split when having multiple config=
urations listed in UBOOT_CONFIG. This fixes an issue where two or more of t=
hese configurations were using the same directory for building (because the=
se were using the same defconfig file).

- Miscellaneous changes:

  - dropbear: The dropbearkey.service can now take extra arguments for key =
generation, through /etc/default/dropbear.

  - initscripts: add log_success_msg/log_failure_msg/log_warning_msg functi=
ons for logging in initscripts.

  - connman:

    - Mark iptables and nftables feature of PACKAGECONFIG mutually incompat=
ible.
    - Set dns-backend automatically to systemd-resolved when systemd-resolv=
ed is part of DISTRO_FEATURES.

  - uninative: show errors if installing fails.

  - meson: Allow user to override setup command options by exporting MESON_=
SETUP_OPTS in a recipe.

  - cmake: Enhance to emit a native toolchain CMake file. This is part of i=
mprovements allowing to use clang in an SDK.

  - Fix the runtime version of several recipes (they now return the effecti=
ve version instead of a default string like =93Unknown=94).

  - module: add KBUILD_EXTRA_SYMBOLS to the install command.

  - rpm-sequoia: add Ptest support.

  - libunwind: disable installation of tests directory with --disable-tests=
, which can be installed with the libunwind-ptest package instead.

  - boost: add process library to the list of built libraries.

  - base-files: add nsswitch-resolved.conf, only installed if systemd and s=
ystemd-resolved is part of DISTRO_FEATURES.

  - nfs-utils: don=92t use signals to shut down the NFS server in the assoc=
iated initscript, instead use rpc.nfsd 0.

  - readline: enable HOME, END, INSERT, and DELETE key bindings in inputrc.

  - Switch to a new sstate-cache CDN (http://sstate.yoctoproject.org).

  - sstate: Apply a proper umask when fetching from SSTATE_MIRRORS.

  - kernel-devsrc: make package version consistent with kernel source (by i=
nheriting kernelsrc).

  - externalsrc: Always ask Git for location of .git directory (may be diff=
erent from the default ${S}/.git).

  - features_check: Add support for REQUIRED_TUNE_FEATURES.

  - openssh: limit read access to sshd_config file (set its filemode to 060=
0).

  - barebox-tools now installs the rk-usb-loader utility.

  - The setuptools3_legacy class now supports the pep517-backend QA check.

  - The ccache class now supports using Ccache for native recipes when the =
local build configuration contains:

      ASSUME_PROVIDED +=3D "ccache-native"
      HOSTTOOLS +=3D "ccache"

  - python_pep517: use pyproject-build instead of calling the module with n=
ativepython3.

  - dbus-glib: include the binding tools separately into the ${PN}-tools pa=
ckage.

  - dbus: use the systemd class to handle the unit files of D-Bus.

  - dpkg: add ptest support.

  - shared-mime-info: Now uses the USE_NLS variable to enable building tran=
slations.

  - p11-kit: Now uses the USE_NLS variable to enable building translations.

  - babeltrace2: Enable Python plugins

  - initramfs-framework: mount a temporary filesystem on /run and move it t=
o the root filesystem directory before calling switch_root.

  - python3: Pass PLATFORM_TRIPLET explicitly when cross compiling to make =
the build deterministic instead of letting Python detect the platform tripl=
et (${HOST_ARCH}-${HOST_OS}).

  - pulseaudio: Add the audio group explicitly if pulseaudio-server is used=
.

  - oe/license_finder: Add find_licenses_up function to find licenses upwar=
ds until reaching a predefined top directory (as an argument).

  - mesa:

    - Build Mesa=92s Asahi tools when asahi is part of the recipe=92s PACKA=
GECONFIG variable.
    - The mesa recipe now declares two new PROVIDES for Vulkan and OpenCL I=
CD. These virtual provider are respectively named virtual-opencl-icd and vi=
rtual-vulkan-icd.

  - mesa-demos: split info tools to a separate package mesa-demos-info.

  - vte: skip gobject-introspection with Clang on Arm, as it caused build f=
ailures.

  - shadow: Increase the maximum group name length from 24 to 32 (default v=
alue provided by upstream recipe, was previously hardcoded to 24).

  - udev-extraconf: Speed up the mount.sh script by passing the block devic=
e of interest to blkid when getting partition label names.

  - piglit: enable OpenCL support if opencl is part of the DISTRO features.



Known Issues in 5.3
-------------------

N/A



Recipe License changes in 5.3
-----------------------------

The following changes have been made to the LICENSE values set by recipes:

Recipe                     Previous value                   New value

                           GFDL-1.2 & GPL-2.0-or-later      GFDL-1.3 & GPL-=
2.0-or-later
flac                       & LGPL-2.1-or-later              & LGPL-2.1-or-l=
ater & BSD-3-Clause
                           & BSD-3-Clause

rust                       (MIT | Apache-2.0) &             (MIT | Apache-2=
.0) &
                           Unicode-TOU                      Unicode-3.0

vulkan-validation-layers   Apache-2.0 & MIT                 Apache-2.0 & MI=
T & BSL-1.0

                           GPL-1.0-or-later &               GPL-1.0-or-late=
r & GPL-2.0-only
                           GPL-2.0-only & GPL-2.0-or-later  & GPL-2.0-or-la=
ter &
util-linux                 LGPL-2.1-or-later &              LGPL-2.1-or-lat=
er & BSD-2-Clause
                           BSD-2-Clause & B SD-3-Clause     & B SD-3-Clause=
 &
                           & BSD-4-Clause-UC & MIT          BSD-4-Clause-UC=
 & MIT &
                                                            EUPL-1.2

python3-docutils           CC0-1.0 & ZPL-2.1 & BSD-2-       CC0-1.0 & BSD-2=
-Clause &
                           Clause & GPL-3.0-only            GPL-3.0-only

tiff                       libtiff                          libtiff & BSD-4=
.3TAHOE

gawk                       GPL-3.0-only                     GPL-3.0-or-late=
r & AGPL-3.0-or-later

go-helloworld              MIT                              BSD-3-Clause



Security Fixes in 5.3
---------------------

The following CVEs have been fixed:

busybox       CVE-2025-46394
ghostscript   CVE-2025-59798, CVE-2025-59799, CVE-2025-59800
libmicrohttpd CVE-2025-59777, CVE-2025-62689
libpng        CVE-2025-64505, CVE-2025-64506, CVE-2025-64720, CVE-2025-6501=
8
libsndfile1   CVE-2024-50613, CVE-2025-52194
linux-yocto   CVE-2019-14899, CVE-2021-3714, CVE-2021-3864, CVE-2022-0400, =
CVE-2022-1247, CVE-2022-4543, CVE-2022-38096, CVE-2023-3397, CVE-2023-3640,=
 CVE-2023-4010, CVE-2023-6238, CVE-2023-6240, CVE-2023-6535, CVE-2023-39176=
, CVE-2023-39179, CVE-2023-39180, CVE-2024-52560, CVE-2024-57995, CVE-2024-=
58015, CVE-2024-58074, CVE-2024-58093, CVE-2024-58094, CVE-2024-58095, CVE-=
2024-58096, CVE-2024-58097, CVE-2025-4598, CVE-2025-21709, CVE-2025-21751, =
CVE-2025-21752, CVE-2025-21807, CVE-2025-21833, CVE-2025-21949, CVE-2025-22=
104, CVE-2025-22105, CVE-2025-22106, CVE-2025-22107, CVE-2025-22108, CVE-20=
25-22109, CVE-2025-22111, CVE-2025-22116, CVE-2025-22117, CVE-2025-22121, C=
VE-2025-22127, CVE-2025-23129, CVE-2025-23130, CVE-2025-23131, CVE-2025-231=
32, CVE-2025-23135, CVE-2025-37743, CVE-2025-37746, CVE-2025-37803, CVE-202=
5-37860, CVE-2025-37880, CVE-2025-37906, CVE-2025-38029, CVE-2025-38036, CV=
E-2025-38041, CVE-2025-38042, CVE-2025-38064, CVE-2025-38105, CVE-2025-3813=
2, CVE-2025-38137, CVE-2025-38140, CVE-2025-38187, CVE-2025-38199, CVE-2025=
-38205, CVE-2025-38207, CVE-2025-38234, CVE-2025-38248, CVE-2025-38261, CVE=
-2025-38284, CVE-2025-38311, CVE-2025-38359, CVE-2025-38426, CVE-2025-38584=
, CVE-2025-38591, CVE-2025-38597, CVE-2025-38605, CVE-2025-38621, CVE-2025-=
38627, CVE-2025-38636, CVE-2025-38656, CVE-2025-38678, CVE-2025-39677, CVE-=
2025-39678, CVE-2025-39745, CVE-2025-39762, CVE-2025-39764, CVE-2025-39789,=
 CVE-2025-40325
qemu          CVE-2024-6519, CVE-2024-8354
webkitgtk     CVE-2025-43342, CVE-2025-43343



Recipe Upgrades in 5.3
----------------------

The following recipes have been upgraded:


Recipe                            Previous version(s)        New version(s)
acpica                            20240827                   20250807
alsa-lib                          1.2.13                     1.2.14
alsa-tools                        1.2.11                     1.2.14
alsa-ucm-conf                     1.2.13                     1.2.14
alsa-utils                        1.2.13                     1.2.14
appstream                         1.0.4                      1.0.6
apr                               1.7.5                      1.7.6
apt                               2.6.1                      3.0.3
at-spi2-core                      2.56.0                     2.56.4
autoconf                          2.72e                      2.72
automake                          1.17                       1.18.1
babeltrace2                       2.1.0                      2.1.2
barebox                           2025.02.0                  2025.11.0
barebox-tools                     2025.02.0                  2025.11.0
base-passwd                       3.6.6                      3.6.7
bash                              5.2.37                     5.3
bc                                1.08.1                     1.08.2
bind                              9.20.11                    9.20.15
binutils                          2.44                       2.45
binutils-cross                    2.44                       2.45
binutils-cross-canadian           2.44                       2.45
binutils-crosssdk                 2.44                       2.45
binutils-testsuite                2.44                       2.45
blktrace                          1.3.0+git                  1.3.0
bluez5                            5.79                       5.85
bmaptool                          3.8.0+git                  3.9.0+git
boost                             1.87.0                     1.89.0
boost-build-native                1.87.0                     1.89.0
btrfs-tools                       6.13                       6.17
build-appliance-image             15.0.0 (316baad50b45...)   15.0.0
ca-certificates                   20241223                   20250419
cargo                             1.84.1                     1.90.0
cargo-c                           0.10.5+cargo-0.83.0        0.10.16+cargo-=
0.91.0
ccache                            4.11                       4.12.1
cmake                             3.31.6                     4.2.0
cmake-native                      3.31.6                     4.2.0
connman                           1.43                       1.45
coreutils                         9.6                        9.7
createrepo-c                      1.2.0                      1.2.1
cross-localedef-native            2.41+git                   2.42+git
cups                              2.4.11                     2.4.14
curl                              8.12.1                     8.17.0
debianutils                       5.21                       5.23.2
debugedit                         5.1                        5.2
dhcpcd                            10.2.2                     10.2.4
diffoscope                        289                        306
diffstat                          1.67                       1.68
diffutils                         3.11                       3.12
dnf                               4.22.0                     4.24.0
dos2unix                          7.5.2                      7.5.3
dpkg                              1.22.11                    1.22.21
dropbear                          2024.86                    2025.88
e2fsprogs                         1.47.1                     1.47.3
ed                                1.21                       1.22.2
elfutils                          0.192                      0.194
ell                               0.74                       0.80
enchant2                          2.8.2                      2.8.12
epiphany                          48.3                       48.5
erofs-utils                       1.8.5                      1.8.10
ethtool                           6.11                       6.15
expat                             2.7.2                      2.7.3
fastfloat                         8.0.2                      8.1.0
ffmpeg                            7.1.2                      8.0
flac                              1.4.3                      1.5.0
fmt                               11.1.4                     12.1.0
fontconfig                        2.15.0                     2.17.1
gawk                              5.3.1                      5.3.2
gcc                               14.3.0                     15.2.0
gcc-cross                         14.3.0                     15.2.0
gcc-cross-canadian                14.3.0                     15.2.0
gcc-crosssdk                      14.3.0                     15.2.0
gcc-runtime                       14.3.0                     15.2.0
gcc-sanitizers                    14.3.0                     15.2.0
gcc-source                        14.3.0                     15.2.0
gcr                               4.3.1                      4.4.0.1
gdb                               16.2                       16.3
gdb-cross                         16.2                       16.3
gdb-cross-canadian                16.2                       16.3
gdbm                              1.24                       1.26
gettext                           0.23.1                     0.26
gettext-minimal-native            0.23.1                     0.26
ghostscript                       10.05.1                    10.06.0
gi-docgen                         2025.3                     2025.5
git                               2.49.1                     2.51.2
glib-2.0                          2.84.4                     2.86.1
glib-2.0-initial                  2.84.4                     2.86.1
glib-networking                   2.80.0                     2.80.1
glibc                             2.41+git                   2.42+git
glibc-locale                      2.41+git                   2.42+git
glibc-mtrace                      2.41+git                   2.42+git
glibc-scripts                     2.41+git                   2.42+git
glibc-testsuite                   2.41+git                   2.42+git
glslang                           1.4.309.0                  1.4.328.1
gnu-config                        20240823+git               20250709+git
gnu-efi                           4.0.0                      4.0.2
gnupg                             2.5.5                      2.5.11
go                                1.24.6                     1.25.4
go-binary-native                  1.24.6                     1.25.4
go-cross-canadian                 1.24.6                     1.25.4
go-cross-core2-32                 1.24.6                     1.25.4
go-crosssdk                       1.24.6                     1.25.4
go-helloworld                     0.1 (d7b0ac127859...)      0.1 (8b405629c=
4a5...)
go-runtime                        1.24.6                     1.25.4
gperf                             3.1                        3.3
gpgme                             1.24.2                     2.0.1
grep                              3.11                       3.12
gsettings-desktop-schemas         48.0                       49.1
gst-devtools                      1.24.13                    1.26.7
gst-examples                      1.18.6                     1.26.7
gstreamer1.0                      1.24.13                    1.26.7
gstreamer1.0-libav                1.24.13                    1.26.7
gstreamer1.0-plugins-bad          1.24.13                    1.26.7
gstreamer1.0-plugins-base         1.24.13                    1.26.7
gstreamer1.0-plugins-good         1.24.13                    1.26.7
gstreamer1.0-plugins-ugly         1.24.13                    1.26.7
gstreamer1.0-python               1.24.13                    1.26.7
gstreamer1.0-rtsp-server          1.24.13                    1.26.7
gstreamer1.0-vaapi                1.24.13                    1.26.7
gtk+3                             3.24.43                    3.24.51
gtk4                              4.18.1                     4.18.6
gzip                              1.13                       1.14
harfbuzz                          10.4.0                     11.5.1
hwdata                            0.393                      0.399
hwlatdetect                       2.8                        2.9
icu                               76-1                       77-1
igt-gpu-tools                     1.30                       2.1
init-system-helpers               1.68                       1.69
iproute2                          6.13.0                     6.17.0
iputils                           20240905                   20250605
iso-codes                         4.17.0                     4.18.0
iw                                6.9                        6.17
json-glib                         1.10.6                     1.10.8
kbd                               2.7.1                      2.8.0
kea                               2.6.3                      3.0.1
kern-tools-native                 0.3+git (c8c1f17867d0...)  0.3+git (f589e=
1df2325...)
kexec-tools                       2.0.30                     2.0.31
kmod                              34.1                       34.2
kmscube                           0.0.1+git(311eaaaa473d...) 0.0.1+git(f60e=
50e887d3...)
less                              668                        685
libadwaita                        1.7.0                      1.7.6
libarchive                        3.7.9                      3.8.3
libatomic-ops                     7.8.2                      7.8.4
libc-test                         0+git (18e28496adee...)    0+git (f2bac77=
11bec...)
libcap                            2.75                       2.77
libcgroup                         3.1.0                      3.2.0
libcomps                          0.1.21                     0.1.23
libdnf                            0.73.4                     0.75.0
libdrm                            2.4.124                    2.4.128
libedit                           20250104-3.1               20251016-3.1
libevdev                          1.13.3                     1.13.5
libffi                            3.4.7                      3.5.2
libgcc                            14.3.0                     15.2.0
libgcc-initial                    14.3.0                     15.2.0
libgcrypt                         1.11.0                     1.11.2
libgfortran                       14.3.0                     15.2.0
libgit2                           1.9.0                      1.9.1
libgloss                          4.4.0+git                  4.5.0+git
libgpg-error                      1.51                       1.56
libinput                          1.27.1                     1.29.1
libjitterentropy                  3.6.2                      3.6.3
libjpeg-turbo                     3.0.1                      3.1.2
libmicrohttpd                     1.0.1                      1.0.2
libmodulemd                       2.15.0                     2.15.2
libnotify                         0.8.4                      0.8.6
libnss-nis                        3.2                        3.4
libogg                            1.3.5                      1.3.6
libpng                            1.6.47                     1.6.50
libproxy                          0.5.9                      0.5.10
librepo                           1.19.0                     1.20.0
librsvg                           2.59.2                     2.61.0
libsdl2                           2.32.2                     2.32.10
libsecret                         0.21.6                     0.21.7
libslirp                          4.9.0                      4.9.1
libsolv                           0.7.31                     0.7.35
libstd-rs                         1.84.1                     1.90.0
libtheora                         1.1.1                      1.2.0
libucontext                       1.2                        1.3.2
libunistring                      1.3                        1.4.1
libunwind                         1.6.2                      1.8.3
liburcu                           0.15.1                     0.15.3
libusb1                           1.0.27                     1.0.29
libuv                             1.50.0                     1.51.0
libwebp                           1.5.0                      1.6.0
libwpe                            1.16.2                     1.16.3
libxfixes                         6.0.1                      6.0.2
libxft                            2.3.8                      2.3.9
libxkbcommon                      1.8.1                      1.11.0
libxml2                           2.13.8                     2.14.6
libxmlb                           0.3.22                     0.3.23
libxres                           1.2.2                      1.2.3
libxscrnsaver                     1.2.4                      1.2.5
lighttpd                          1.4.77                     1.4.81
linux-firmware                    20250311                   20251111
linux-libc-headers                6.12                       6.17
linux-yocto                       6.12.47+git                6.12.55+git, 6=
.16.11+git,
                                                             6.17.6+git
linux-yocto-dev                   6.14+git                   6.18+git
linux-yocto-rt                    6.12.47+git                6.12.55+git, 6=
.16.11+git,
                                                             6.17.6+git
linux-yocto-tiny                  6.12.47+git                6.12.55+git, 6=
.16.11+git,
                                                             6.17.6+git
llvm                              20.1.0                     21.1.6
lsof                              4.99.4                     4.99.5
ltp                               20250130                   20250930
lttng-modules                     2.13.17                    2.14.3
lttng-tools                       2.13.14                    2.14.0
lttng-ust                         2.13.8                     2.14.0
lua                               5.4.7                      5.4.8
m4                                1.4.19                     1.4.20
m4-native                         1.4.19                     1.4.20
man-db                            2.13.0                     2.13.1
man-pages                         6.13                       6.15
mdadm                             4.3                        4.4
mesa                              24.0.7                     25.2.5
mesa-gl                           24.0.7                     25.2.5
meson                             1.7.0                      1.9.1
mmc-utils                         0.1+git                    1.0
mobile-broadband-provider-info    20240407                   20250613
mpfr                              4.2.1                      4.2.2
mpg123                            1.32.10                    1.33.2
msmtp                             1.8.28                     1.8.31
musl                              1.2.5+git(c47ad25ea3b4...) 1.2.5+git(0cca=
f0572e9c...)
nettle                            3.10.1                     3.10.2
newlib                            4.4.0+git                  4.5.0+git
nfs-utils                         2.8.2                      2.8.4
nghttp2                           1.65.0                     1.68.0
ninja                             1.12.1                     1.13.1
ofono                             2.15                       2.18
opensbi                           1.6                        1.7
openssh                           9.9p2                      10.2p1
openssl                           3.4.2                      3.5.4
opkg                              0.7.0                      0.9.0
ovmf                              edk2-stable202411          edk2-stable202=
508
pango                             1.56.2                     1.57.0
patch                             2.7.6                      2.8
patchelf                          0.18.0                     0.18.0+git
pciutils                          3.13.0                     3.14.0
piglit                            1.0+gitr (fc8179d31904...) 1.0+gitr (a0a2=
7e528f64...)
pinentry                          1.3.1                      1.3.2
pixman                            0.44.2                     0.46.4
pkgconf                           2.4.3                      2.5.1
pseudo                            1.9.0+git                  1.9.2+git
psplash                           0.1+git (1f64c654129f...)  0.1+git (53ae7=
4a36bf1...)
puzzles                           0.0+git (7da464122232...)  0.0+git (a7c78=
26bce5c...)
python3                           3.13.4                     3.13.9
python3-beartype                  0.20.0                     0.21.0
python3-booleanpy                 4.0                        5.0
python3-build                     1.2.2                      1.3.0
python3-calver                    2022.6.26                  2025.04.17
python3-certifi                   2025.1.31                  2025.8.3
python3-click                     8.1.8                      8.2.2
python3-cryptography              44.0.2                     45.0.7
python3-cryptography-vectors      44.0.2                     45.0.7
python3-cython                    3.0.12                     3.1.3
python3-dbusmock                  0.33.0                     0.37.0
python3-docutils                  0.21.2                     0.22
python3-dtschema                  2025.2                     2025.8
python3-flit-core                 3.11.0                     3.12.0
python3-hatch-fancy-pypi-readme   24.1.0                     25.1.0
python3-hatch-vcs                 0.4.0                      0.5.0
python3-hypothesis                6.129.2                    6.142.2
python3-idna                      3.10                       3.11
python3-iniconfig                 2.0.0                      2.1.0
python3-jsonschema                4.23.0                     4.25.1
python3-jsonschema-specifications 2024.10.1                  2025.9.1
python3-license-expression        30.4.1                     30.4.4
python3-lxml                      5.3.1                      6.0.2
python3-mako                      1.3.9                      1.3.10
python3-markdown                  3.7                        3.9
python3-maturin                   1.8.3                      1.9.4
python3-meson-python              0.17.1                     0.18.0
python3-numpy                     2.2.3                      2.3.4
python3-packaging                 24.2                       25.0
python3-pbr                       6.1.0                      7.0.1
python3-pip                       25.0.1                     25.2
python3-pluggy                    1.5.0                      1.6.0
python3-poetry-core               2.1.1                      2.1.3
python3-pycairo                   1.27.0                     1.28.0
python3-pycryptodome              3.22.0                     3.23.0
python3-pycryptodomex             3.22.0                     3.23.0
python3-pygments                  2.19.1                     2.19.2
python3-pygobject                 3.52.2                     3.54.5
python3-pyopenssl                 25.0.0                     25.1.0
python3-pyparsing                 3.2.1                      3.2.4
python3-pytest                    8.3.5                      8.4.2
python3-pytest-subtests           0.14.1                     0.14.2
python3-pytz                      2025.1                     2025.2
python3-rdflib                    7.1.3                      7.1.4
python3-referencing               0.36.2                     0.37.0
python3-requests                  2.32.4                     2.32.5
python3-rpds-py                   0.22.3                     0.27.1
python3-ruamel-yaml               0.18.10                    0.18.15
python3-scons                     4.9.0                      4.9.1
python3-setuptools                76.0.0                     80.9.0
python3-setuptools-rust           1.11.0                     1.12.0
python3-setuptools-scm            8.2.0                      8.3.1
python3-smartypants               2.0.0                      2.0.2
python3-snowballstemmer           2.2.0                      3.0.1
python3-trove-classifiers         2025.3.13.13               2025.9.11.17
python3-typing-extensions         4.12.2                     4.15.0
python3-unittest-automake-output  0.2                        0.3
python3-uritools                  4.0.3                      5.0.0
python3-urllib3                   2.3.0                      2.5.0
python3-webcolors                 24.8.0                     24.11.1
python3-wheel                     0.45.1                     0.46.1
python3-xmltodict                 0.14.2                     0.15.1
python3-yamllint                  1.36.0                     1.37.1
python3-zipp                      3.21.0                     3.23.0
qemu                              9.2.0                      10.0.6
qemu-native                       9.2.0                      10.0.6
qemu-system-native                9.2.0                      10.0.6
quilt                             0.68                       0.69
quilt-native                      0.68                       0.69
quota                             4.09                       4.10
re2c                              4.1                        4.3
readline                          8.2.13                     8.3
repo                              2.52                       2.58
resolvconf                        1.92                       1.94
rpcbind                           1.2.7                      1.2.8
rpm                               4.20.0                     4.20.1
rpm-sequoia                       1.7.0                      1.9.0
rpm-sequoia-crypto-policy         git (032b418a6db8...)      git (ae1df75b1=
155...)
rt-tests                          2.8                        2.9
ruby                              3.4.4                      3.4.5
rust                              1.84.1                     1.90.0
rust-cross-canadian               1.84.1                     1.90.0
sbc                               2.0                        2.1
scdoc                             1.11.3                     1.11.4
screen                            5.0.0                      5.0.1
shaderc                           2024.3                     2025.3
shadow                            4.17.3                     4.18.0
spirv-headers                     1.4.309.0                  1.4.328.1
spirv-tools                       1.4.309.0                  1.4.328.1
squashfs-tools                    4.6.1                      4.7.4
strace                            6.12                       6.17
stress-ng                         0.18.11                    0.19.04
sudo                              1.9.17p1                   1.9.17p2
swig                              4.3.0                      4.3.1
sysklogd                          2.7.1                      2.7.2
sysstat                           12.7.7                     12.7.8
systemd                           257.6                      257.8
systemd-boot                      257.6                      257.8
systemd-boot-native               257.6                      257.8
systemd-systemctl-native          257.6                      257.8
systemtap                         5.2                        5.3
systemtap-native                  5.2                        5.3
taglib                            2.0.2                      2.1.1
tcf-agent                         1.8.0+git                  1.9.0
tcl                               9.0.1                      9.0.2
tcl8                              8.6.16                     8.6.17
tiff                              4.7.0                      4.7.1
ttyrun                            2.37.0                     2.38.0
u-boot                            2025.01                    2025.10
u-boot-tools                      2025.01                    2025.10
unfs3                             0.10.0                     0.11.0
usbutils                          018                        019
util-linux                        2.40.4                     2.41.1
util-linux-libuuid                2.40.4                     2.41.1
valgrind                          3.24.0                     3.25.1
vim                               9.1.1652                   9.1.1683
vim-tiny                          9.1.1652                   9.1.1683
virglrenderer                     1.1.0                      1.1.1
vte                               0.78.2                     0.82.1
vulkan-headers                    1.4.309.0                  1.4.328.1
vulkan-loader                     1.4.309.0                  1.4.328.1
vulkan-samples                    git (8547ce1022a1...)      git (d27205d14=
d01...)
vulkan-tools                      1.4.309.0                  1.4.328.1
vulkan-utility-libraries          1.4.309.0                  1.4.328.1
vulkan-validation-layers          1.4.309.0                  1.4.328.1
vulkan-volk                       1.4.309.0                  1.4.328.1
wayland                           1.23.1                     1.24.0
wayland-protocols                 1.41                       1.45
webkitgtk                         2.48.2                     2.50.0
weston                            14.0.1                     14.0.2
which                             2.21                       2.23
wireless-regdb                    2025.02.20                 2025.10.07
xdpyinfo                          1.3.4                      1.4.0
xinput-calibrator                 0.7.5+git                  0.8.0
xkeyboard-config                  2.44                       2.45
xwayland                          24.1.6                     24.1.8
xz                                5.6.4                      5.8.1



Contributors to 5.3
-------------------

Thanks to the following people who contributed to this release:

Adam Blank
Adam Nilsson
Adrian Freihofer
Ahmad Fatoum
Alejandro Hernandez Samaniego
Aleksandar Nikolic
Alexander Kanavin
Alex Kiernan
Alon Bar-Lev
Alper Ak
Andreas Stergiopoulos
Andrej Valek
Anibal Limon
Ankur Tyagi
Anna-Lena Marx
Antonin Godard
Anuj Mittal
Archana Polampalli
Barne Carstensen
Benjamin Missey
Benjamin Szoke
Bo Sun
Bruce Ashfield
Carlos S=E1nchez de La Lama
Changqing Li
Chen Qi
Chris Laplante
Christian Lindeberg
Christos Gavros
Daisuke Yamane
Daniel McGregor
Daniel Turull
Daniel Wagenknecht
Dan McGregor
Dario Binacchi
David Reyna
Deepak Rathore
Deepesh Varatharajan
denisova-ok
Denys Dmytriyenko
Diego de los Santos
Diego Sueiro
Divya Chellam
Dixit Parmar
Dmitry Baryshkov
Enrico J=F6rns
Enrico Scholz
Erick Shepherd
Erik Lindsten
Etienne Cordonnier
Fabio Estevam
Falk Bauer
Gregor Herburger
Gu=F0ni M=E1r Gilbert
Gyorgy Sarvari
Haixiao Yan
Harish Sadineni
Hiago De Franco
hongxu
Hongxu Jia
Ines KCHELFI
Isaac True
Jaeyoon Jung
Jamin Lin
Jan Vermaete
Jason M. Bills
Jason Schonberg
Jayasurya Maganuru
Jeroen Hofstee
Jiaying Song
Jimmy Ho
Jinfeng Wang
Jo=E3o Henrique Ferreira de Freitas
Joao Marcos Costa
Jo=E3o Marcos Costa
Johannes Schneider
Jonathan Schnitzler
Jon Mason
J=F6rg Sommer
Jose Quaresma
Joshua Watt
Julian Haller
Kai Kang
Kavinaya S
Keerthivasan Raghavan
Khang D Nguyen
Khem Raj
Koch, Stefan
Koen Kooi
Kyungjik Min
Lamine REHAHLIA
Lee Chee Yang
leimaohui
Lei Maohui
Leon Anavi
Leonard Anderweit
Libo Chen
Liu Yiding
Li Wang
Louis Rannou
Luca Fancellu
Madhu Marri
Manuel Leonhardt
Marco Cavallini
Mark Asselstine
Mark Hatle
Markus Kurz
Markus Volk
Martin Jansa
Martin Siegumfeldt
Mathieu Dubois-Briand
Michael Halstead
Michael Jeanson
Michael Opdenacker
Michael Tretter
Michal Sieron
Mike Crowe
Mike Looijmans
Mikko Rapeli
Ming Liu
Mingli Yu
Moritz Haase
NeilBrown
Nguyen Dat Tho
Nikhil R
Niko Mauno
Ola x Nilsson
Olga Denisova
Osama Abdelkader
Osose Itua
Ovidiu Panait
Patrick Vogelaar
Patrick Williams
Patryk Seregiet
Paul Barker
Paul Gortmaker
Pedro Ferreira
Per x Johansson
Peter Kjellerstedt
Peter Marko
Peter Tatrai
Petr Vorel
Philip Lorenz
Philippe-Alexandre Mathieu
Pierre-Loup GOSSE
Poonam Jadhav
Praveen Kumar
Priyal Doshi
Quentin Schulz
rajmohan r
Randolph Sapp
Randy MacLeod
Raphael Schlarb
Rasmus Villemoes
Ricardo Salveti
Ricardo Simoes
Richard Gr=FCnert
Richard Purdie
Robbin Van Damme
Robert P. J. Day
Robert Tiemann
Robert Yang
Rogerio Guerra Borin
Ross Burton
Ryan Eatmon
Samuli Piippo
Sandeep Gundlupet Raju
Saravanan
Siddharth Doshi
Simone Wei=DF
Soumya Sambu
Stefan Eichenberger
Stefan Koch
Steffen Greber
Steve Sakoman
Talel BELHAJ SALEM
Thomas Perrot
Thune Tran
Tim Orling
Tobias Pistora
Tom Hochstein
Trevor Gamblin
Trevor Woerner
Tudor Ambarus
Uwe Kleine-K=F6nig
Veeresh Kadasani
Victor Kamensky
Vijay Anusuri
Vincent Davis Jr
Vishwas Udupa
Vivek Puar
Vyacheslav Yurkov
Walter Werner SCHNEIDER
Wang Mingyu
Weisser, Pascal.ext
Yannic Moog
Yash Shinde
Yi Zhao
Yoann Congal
Yogesh Tyagi
Yogita Urade
Zhang Peng
Zoltan Boszormenyi
Zolt=E1n B=F6sz=F6rm=E9nyi



Repositories / Downloads for Yocto-5.3
--------------------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: whinlatter
Tag: yocto-5.3
Git Revision: 79cd33b06e87c04e4f873a5afd9d53714bc5047f
Release Artefact: yocto-docs-79cd33b06e87c04e4f873a5afd9d53714bc5047f
sha: f2a353847243370d6924ea83542b055ee8098c51d4875b6a9b2cee79b98c0f29
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/yocto-docs-79cd=
33b06e87c04e4f873a5afd9d53714bc5047f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/yocto-docs-79cd33b06e87c04=
e4f873a5afd9d53714bc5047f.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: whinlatter
Tag: yocto-5.3
Git Revision: 8519978592483bb096ed5192fff7af6c887b799e
Release Artefact: oecore-8519978592483bb096ed5192fff7af6c887b799e
sha: 3b23d8a56a2f6e3872ec01272a76e3551ac1eab001f81c9abc680ce415aa888d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/oecore-85199785=
92483bb096ed5192fff7af6c887b799e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/oecore-8519978592483bb096e=
d5192fff7af6c887b799e.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: whinlatter
Tag: yocto-5.3
Git Revision: d02d3faaf4d6075ea03e9eb47654ec7639f929a0
Release Artefact: meta-yocto-d02d3faaf4d6075ea03e9eb47654ec7639f929a0
sha: e2a69bf93466cd010fd14e4f1b2bb5f45da165b00eb1fbf7987541d7a9378d47
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/meta-yocto-d02d=
3faaf4d6075ea03e9eb47654ec7639f929a0.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/meta-yocto-d02d3faaf4d6075=
ea03e9eb47654ec7639f929a0.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: whinlatter
Tag: yocto-5.3
Git Revision: 00323de97e397d4f6734ef2191806616989f5e10
Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616989f5e10
sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363127a1c77
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/meta-mingw-0032=
3de97e397d4f6734ef2191806616989f5e10.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/meta-mingw-00323de97e397d4=
f6734ef2191806616989f5e10.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.14
Tag: yocto-5.3
Git Revision: 720df1a53452983c1c832f624490e255cf389204
Release Artefact: bitbake-720df1a53452983c1c832f624490e255cf389204
sha: 08a5d8914b59e904a805fbf0e76058dfeddd49f4a022298a3c1485b98233db24
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/bitbake-720df1a=
53452983c1c832f624490e255cf389204.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.3/bitbake-720df1a53452983c1c=
832f624490e255cf389204.tar.bz2



--_000_BL4PR11MB87971330708DBD429D5AA5ACB9AAABL4PR11MB8797namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Hi<br>
<br>
</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">We are pleased t=
o announce the Yocto Project 5.3 Release is now available for download.</sp=
an></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(179, 187, 180);" class=3D"elementToProof"=
>
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><a data-auth=3D"=
NotApplicable" class=3D"OWAAutoLink" id=3D"anchor-b6ba0342-7a5c-55a7-3b8a-d=
9c7c47b2168" href=3D"https://downloads.yoctoproject.org/releases/yocto/yoct=
o-5.3/">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/</a></s=
pan></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(179, 187, 180);" class=3D"elementToProof"=
>
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><a data-auth=3D"=
NotApplicable" class=3D"OWAAutoLink" id=3D"anchor-a22442dd-f6fc-4284-0b14-9=
1cff81c5c9c" href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.3/">htt=
ps://mirrors.kernel.org/yocto/yocto/yocto-5.3/</a></span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">A gpg signed ver=
sion of these release notes is available at:</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(179, 187, 180);" class=3D"elementToProof"=
>
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><a style=3D"colo=
r: rgb(179, 187, 180);" data-auth=3D"NotApplicable" data-darkreader-inline-=
color=3D"" class=3D"OWAAutoLink" id=3D"OWAa2efa409-49ab-cc2f-000b-13bd0ccb8=
498" href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/RE=
LEASENOTES">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/REL=
EASENOTES</a></span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Full Test Report=
:</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(179, 187, 180);" class=3D"elementToProof"=
>
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><a style=3D"colo=
r: rgb(179, 187, 180);" data-auth=3D"NotApplicable" data-darkreader-inline-=
color=3D"" class=3D"OWAAutoLink" id=3D"OWAa9e7bf88-2621-d691-7694-d90545652=
6b1" href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/te=
streport.txt">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/t=
estreport.txt</a>&nbsp;</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Thank you for ev=
eryone's contributions to this release.</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">&nbsp;</span></d=
iv>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Chee Yang</span>=
</div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(179, 187, 180);" class=3D"elementToProof"=
>
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><a style=3D"colo=
r: rgb(179, 187, 180);" data-darkreader-inline-color=3D"" class=3D"OWAAutoL=
ink" id=3D"OWAd3932dd9-0713-fd6b-9396-2a38d8448213" href=3D"mailto:chee.yan=
g.lee@...">chee.yang.lee@</a>intel.com</span></div>
<div style=3D"text-align: left; text-indent: 0px; margin: 0px; font-family:=
 Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Yocto Project Bu=
ild and Release</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif;" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif;" class=3D"elementToProof">
<span style=3D"font-family: Arial, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release notes for 5.3 (whinlatter)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">----------------------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">This release does have some significant changes which people =
need to be aware of. We have added bitbake-setup and have switched to this =
as the default way the project is presented
 to users (e.g. in our documentation and in our automated testing). Existin=
g workflows with other tools such as kas or submodules, or individual repos=
itories remain unchanged. We have stopped updating the poky repository and =
users will need to switch to the
 individual bitbake, openembedded-core, meta-yocto and yocto-docs repositor=
ies instead though. Please see https://git.yoctoproject.org/poky/tree/READM=
E for more information.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">New Features / Enhancements in 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">----------------------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Linux kernel 6.16, gcc 15, glibc 2.42, LLVM 21.1.1, and ove=
r 300 other recipe upgrades.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Minimum Python version required on the host: 3.9.</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Host requirements changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The minimum disk space requirement is now 140Gbytes =
(previously 90Gbytes).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The minimum RAM requirement is now 32Gbytes (previou=
sly 8Gbytes).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - These changes are mainly due to recent additions of =
the LLVM and other resource heavy recipes. For guidance on how to limit the=
 resources used by the OpenEmbedded Build
 System, see the Limiting the Host Resources Usage guide. (https://docs.yoc=
toproject.org/dev/dev-manual/limiting-resources.html)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- BitBake changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A new bitbake-setup tool can be used to clone the in=
itial layers and setup the environment. See the Yocto Project Quick Build (=
https://docs.yoctoproject.org/dev/brief-yoctoprojectqs/index.html)
 section for instructions on how to build an image that uses the Poky distr=
ibution with this new tool.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; See the reference documentation of bitbake-setu=
p at Setting Up The Environment With bitbake-setup. (https://docs.yoctoproj=
ect.org/bitbake/dev/bitbake-user-manual/bitbake-user-manual-environment-set=
up.html)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - codeparser: Add function decorators for vardeps</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; Adds bb.parse.vardeps and bb.parse.excludevarde=
ps function decorators that can be used to explicitly add or exclude variab=
les from a Python function parsed by BitBake.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; Move vardepexclude flag entries alongside funct=
ions for maintainability.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Fetcher:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Check for git-lfs existence before using it.<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add support for .debs files containing uncomp=
ressed data tarballs.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - az: Add sanity check to check that AZ_SAS sta=
rts with ? to mark the start of the query parameters.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - git:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add the tag to shallow clone tarball n=
ame.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Verify if local clones contains a tag,=
 when the tag=3D parameter is used in SRC_URI.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - knotty:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Pass failed task logs through the log infrast=
ructure (use bb.plain() instead of print()).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Improve refresh rate of the footer progress b=
ar.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add support for automatically promoting class inheri=
ts to deferred inherits by listing them in the BB_DEFER_BBCLASSES variable.=
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - =93Built-in=94 fragments support is now added to the=
 addfragments directive. This is the fourth parameter to this directive, an=
d should be the name of the variable that contains
 definitions of built-in fragments. Refer to the documentation of addfragme=
nts (https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/bitbake-=
user-manual-metadata.html#addfragments-directive) to learn how to define ne=
w built-in fragments.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Listing these built-in fragments can be done with bi=
tbake-config-build list-fragments, which could list:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; Available built-in fragments:</span></di=
v>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; machine/... &nbsp; &nbsp; Sets MACHINE =
=3D ...</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; distro/... &nbsp; &nbsp; &nbsp;Sets DIST=
RO =3D ...</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - In the above example, this means that the MACHINE of=
 DISTRO can be overridden with:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - OE_FRAGMENTS +=3D &quot;machine/qemuarm64 distro/pok=
y-bleeding&quot;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - This would set MACHINE to qemuarm64 and the DISTRO t=
o poky-bleeding.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The tag- parameter in URLs can now be specified alon=
gside the rev=3D parameter and SRCREV variable, and will ensure that the sp=
ecified tag matches the specified revision.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; It is strongly encouraged to include the tag=3D=
 parameter to the SRC_URI definition when possible.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - tinfoil: add a wait_for decorator to wrap a function=
 that makes an asynchronous tinfoil call wait for event to say that the cal=
l has been successful, or an error has occurred.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - New bb.utils.to_filemode() helper function which is =
a helper to take a variable=92s content containing a filemode and convert i=
t to the proper Python representation of the
 number.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - cooker: Use a shared counter for processing parser j=
obs. This allows the parser processes to run independently of needing to be=
 feed by the parent process, and load balances
 them much better.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - cooker/process/utils: Add a -P (--profile) option to=
 BitBake to specify what to profile. Can be =93main=94, =93idle=94 or =93pa=
rsing=94. Split the reports in separate files.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A =93filtering=94 functionality was added and allows=
 modifying the value of a variable before its value is returned by BitBake.=
 The setVarFilter API can be used for applying
 the filters, but it is not recommended for general use. It was added for i=
nternal use in the OpenEmbedded Build System in the native class. The list =
of filters that are allowed are derived from a select list of functions tha=
t must be added using a filter_proc
 decorator.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - tests/parse: Add tests for include, require and incl=
ude_all.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Toolchain changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The Clang/LLVM toolchain can now be used as part of =
the build.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The PREFERRED_TOOLCHAIN_TARGET, PREFERRED_TOOLCHAIN_=
NATIVE and PREFERRED_TOOLCHAIN_SDK variables can be used to customize the s=
elected toolchain globally.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - There are two supported toolchains: =93gcc=94 and =
=93clang=94. See the documentation of PREFERRED_TOOLCHAIN_TARGET for more d=
etails.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The toolchain is also customizable on a per-recipe b=
asis, using the TOOLCHAIN and TOOLCHAIN_NATIVE variables.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; Warning:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; The TOOLCHAIN should not be set globally=
. For overriding the toolchain globally, use PREFERRED_TOOLCHAIN_TARGET, PR=
EFERRED_TOOLCHAIN_NATIVE and PREFERRED_TOOLCHAIN_SDK.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Multiple recipes were pinned to use the GCC/Binutils=
 toolchain as they do not support being built with Clang/LLVM yet. In these=
 recipes the TOOLCHAIN variable is set to
 =93gcc=94.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Global configuration changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bitbake.conf/pseudo: Switch from exclusion list to i=
nclusion list by swapping PSEUDO_IGNORE_PATHS for PSEUDO_INCLUDE_PATHS whic=
h should be easier and more explicit to maintain.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bitbake.conf: Drop lz4 from HOSTTOOLS, as it is not =
required anymore, and the lz4-native package is used instead.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Configuration Fragments:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add a fragment for the CDN sstate-cache mirro=
r.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add a show-fragments sub-command to the bitba=
ke-config-build utility, to show the content of fragments from command-line=
.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - default-distrovars: set an empty default for LICENSE=
_PATH.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The default definition of UNPACKDIR is no longer sou=
rces-unpack but sources.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The default value for IMAGE_FSTYPES (defined in bitb=
ake.conf) is now tar.zst (previously tar.gz).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Remove the meta/conf/distro/include/distro_alias.inc=
 include file, which associated a recipe name to one or more Distribution p=
ackage name. This file is not used and maintained
 anymore.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A new configuration file build/conf/toolcfg.conf is =
now used by bitbake-config-build to manage Configuration Fragments.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bitbake.conf: add TMPDIR to the GIT_CEILING_DIRECTOR=
IES Git variable. This avoids Git trying to find a repository higher than T=
MPDIR in recipes that use the build/tmp/work-shared/
 directory for storing their sources. This fixes reproducibility issues.</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Changes to the genericarm64 machine configuration:</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Increase the Initramfs maximum size.</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Install extra Linux firmware packages to fix =
Linux kernel warnings.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New variables:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The VIRTUAL-RUNTIME_dbus variable, to allow changing=
 the runtime implementation of D-Bus. See VIRTUAL-RUNTIME. (https://docs.yo=
ctoproject.org/dev/ref-manual/variables.html#term-VIRTUAL-RUNTIME)</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The VIRTUAL-RUNTIME_libsdl2 variable, to allow chang=
ing the runtime implementation of libsdl2. See VIRTUAL-RUNTIME. (https://do=
cs.yoctoproject.org/dev/ref-manual/variables.html#term-VIRTUAL-RUNTIME)</sp=
an></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The SPDX_PACKAGE_URL variable can be used in recipes=
 to set the output software_packageUrl field in their associated SPDX 3.0 o=
utput (default value: empty string).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The KMETA_CONFIG_FEATURES variable can be used to co=
ntrol kernel-yocto configuration features. For now only prefer-modules is s=
upported for this variable.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The TESTSDK_SUITES variable can be used to control t=
he list of tests run for the testsdk class.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The UBOOT_FIT_CONF_FIRMWARE can be used to specify a=
 firmware entry in the configuration node of a FIT image.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The SPDX_INCLUDE_COMPILED_SOURCES option allows the =
same as SPDX_INCLUDE_SOURCES but including only the sources used to compile=
 the host tools and the target packages.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The UBOOT_VERSION variable holds the package version=
 (PV) and revision (PR) which are part of the installed and deployed filena=
mes. Users can now override UBOOT_VERSION
 to changes the output filenames.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The UBOOT_MAKE_OPTS variable specifies extra options=
 passed to make when building U-boot. Extra options can also be passed as t=
he fourth argument of the UBOOT_CONFIG variable.
 See the documentation of uboot-config class for more details. (https://doc=
s.yoctoproject.org/dev/ref-manual/classes.html#ref-classes-uboot-config)</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The WESTON_USER and WESTON_USER_HOME variables can b=
e used to define the username and home directory for the Weston user.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New core tasks:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The do_list_image_features can be used to list the a=
vailable IMAGE_FEATURES for an image recipe.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Kernel-related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Support for the 6.17 kernel exists but 6.16 is the d=
efault selected one in the Poky distro.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - linux/generate-cve-exclusions: use data from CVEProj=
ect instead of the archived https://linuxkernelcves.com.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - kernel-yocto: allow annotated options to be modified=
. For example if the following kernel configuration is set:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; CONFIG_INET_TUNNEL=3Dy # OVERRIDE=
:$MODULE_OR_Y</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; And if the KMETA_CONFIG_FEATURES variable conta=
ins prefer-modules, CONFIG_INET_TUNNEL will be set to m instead of y.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - kernel-devsrc: Replace the extra System.map file wit=
h symbolic link.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - kernel-module-split: Allow for external configuratio=
n files being assigned to the correct kernel module package.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - When built for the RISC-V architecture, ensure that =
the minimum required features set by TUNE_FEATURES are set using the featur=
es_check class.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - linux-yocto: when built for RISC-V, enable features =
in KERNEL_FEATURES based on features listed in TUNE_FEATURES.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - perf: Enable coresight if enabled in MACHINE_FEATURE=
S.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New core recipes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3-pdm, python3-pdm-backend and python3-pdm-bui=
ld-locked, which are dependencies of python3-webcolors. python3-pdm itself =
depends on python3-pdm-build-locked</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bindgen-cli: a tool to generate Rust bindings.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3-colorama: Cross-platform colored terminal te=
xt, needed by pytest as a dependency.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - libglvnd: imported from meta-oe which provides a ven=
dor neutral approach to handling OpenGL / OpenGL ES / EGL / GLX libraries.<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3-sphinx-argparse: A sphinx extension that aut=
omatically documents argparse commands and options. It is part of buildtool=
s-docs-tarball for later use in the Yocto
 Project documentation.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3-sphinx-copybutton: A sphinx extension that a=
dds a copy button to code blocks in Sphinx. It is part of buildtools-docs-t=
arball for later use in the Yocto Project
 documentation.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3-coherent-licensed: License management toolin=
g for Coherent System and skeleton projects. It became a new dependency of =
python3-zipp.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - gn: a commonly used build tool to generate ninja fil=
es.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - LLVM/Clang related recipes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - clang: LLVM based C/C++ compiler.</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - compiler-rt: LLVM based C/C++ compiler Runtim=
e.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - libclc: Implementation of the library require=
ments of the OpenCL C programming language.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - libcxx: new implementation of the C++ standar=
d library, targeting C++11 and above</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - llvm-tblgen-native: LLVM TableGen binaries fo=
r the build host, often used to build LLVM projects.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - lld: the LLVM Linker.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - lldb: LLDB debugger for LLVM projects.</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - llvm-project-source: canonical git mirror of =
the LLVM subversion repository.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - llvm: The LLVM Compiler Infrastructure.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - openmp: LLVM OpenMP compiler Runtime.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - kernel-signing-keys-native: this recipe is used in t=
he kernel-fit-image class to generate a pair of RSA public/private key. It =
replaces the do_generate_rsa_keys of the
 kernel-fit-image class.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New DISTRO_FEATURES:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - glvnd, which enables OpenGL Vendor Neutral Dispatch =
Library support when using recipes such as mesa.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - opencl: support for the OpenCL (Open Computing Langu=
age) framework.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New core classes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The new kernel-fit-image class replaces the previous=
 kernel-fitimage class. It has been rewritten and improved to fix bug 12912=
. See the Removed Classes section of the
 Migration notes for 5.3 (whinlatter) for more details on how to switch to =
this new class. (https://docs.yoctoproject.org/dev/migration-guides/migrati=
on-5.3.html#removed-classes)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The new go-mod-update-modules class can be used to m=
aintain Go recipes that use a BPN-go-mods.inc and BPN-licenses.inc and upda=
te these files automatically.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The new python_pdm class supports building Python re=
cipes with the PDM package and dependency manager.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Architecture-specific changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Rework the RISC-V TUNE_FEATURES to make them based o=
f the RISC-V ISA (Instruction Set Architecture) implementation.</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - This implements the following base ISAs:</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - rv32i, rv64i</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - rv32e, rv64i</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The following ABIs:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - ilp32, ilp32e, ilp32f, ilp32d</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - lp64, lp64e, lp64f, lp64d</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The following ISA extension are also implemented:</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - M: Integer Multiplication and Division Extens=
ion</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - A: Atomic Memory Extension</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - F: Single-Precision Floating-Point Extension<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - D: Double-Precision Floating-Point Extension<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - C: Compressed Extension</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - B: Bit Manipulation Extension (implies Zba, Z=
bb, Zbs)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - V: Vector Operations Extension</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zicsr: Control and Status Register Access Ext=
ension</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zifencei: Instruction-Fetch Fence Extension</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zba: Address bit manipulation extension</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zbb: Basic bit manipulation extension</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zbc: Carry-less multiplication extension</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zbs: Single-bit manipulation extension</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Zicbom: Cache-block management extension</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The existing processors tunes are preserved:</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - riscv64 (rv64gc)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - riscv32 (rv32gc)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - riscv64nf (rv64imac_zicsr_zifencei)</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - riscv32nf (rv32imac_zicsr_zifencei)</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - riscv64nc (rv64imafd_zicsr_zifencei)</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; See meta/conf/machine/include/riscv/README for =
more information. (https://git.openembedded.org/openembedded-core/tree/meta=
/conf/machine/include/riscv/README)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add support for new Arm64 instruction sets, which ar=
e represented as files to be included in MACHINE configuration in OpenEmbed=
ded-Core (OE-Core). The new configuration
 files are:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - conf/machine/include/arm/arch-armv8-7a.inc</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - conf/machine/include/arm/arch-armv8-8a.inc</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - conf/machine/include/arm/arch-armv9-1a.inc</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - conf/machine/include/arm/arch-armv9-2a.inc</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - conf/machine/include/arm/arch-armv9-3a.inc</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - arch-mips.inc: Use -EB/-EL for denoting Endianness.<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Enable riscv32 as supported arch for musl systems.</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Powerpc: Use -maltivec in compiler flags if altivec =
is in TUNE_FEATURES.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - arm: add a nocrypto feature to TUNE_FEATURES to comp=
lement the crypto feature to explicitly disable cryptographic extensions vi=
a GCC flags.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - This lead to the creation of two new tunes:</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - tune-cortexa72-nocrypto</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - tune-cortexa53-nocrypto</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- QEMU / runqemu changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Refactor qemu functions into library functions (in l=
ib/oe/qemu.py).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The qemux86-64 MACHINE now defaults to the x86-64-v3=
 micro-architecture level.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The previous default was Core 2 era processors. This=
 change means that the toolchain is configured to build for that level, and=
 QEMU is configured to emulate it.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The v3 level adds support for AVX/AVX2/BMI/BMI2/F16C=
 and other newer instructions which are seeing increasing usage in modern s=
oftware and add performance benefits. Please
 see X86-64 Microarchitecture levels for definition of the levels and lists=
 of Intel/AMD CPUs where support for the instructions was first added. (htt=
ps://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Note that if QEMU system emulation is used on an x86=
 build machine with KVM enabled, then the build machine=92s CPU must also b=
e recent enough to support these instructions
 natively.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - runqemu:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - The script can now run compressed images with=
 snapshot mode. For example, with IMAGE_FSTYPES containing ext4.zst, you ca=
n run:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - runqemu snapshot ext4.zst &lt;image-recipe&gt=
;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add support for the erofs filesystem.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - The BitBake environment is now a requirement,=
 and the script cannot run without a successful call to bitbake -e.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; The script will also raise an error with=
 the bitbake command is not found.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Documentation changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add documentation on Configuration Fragments:</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Using Configuration Fragments (https://docs.y=
octoproject.org/dev/ref-manual/fragments.html)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Creating New Configuration Fragments In Your =
Build (https://docs.yoctoproject.org/dev/dev-manual/creating-fragments.html=
)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Part of BitBake internals are now documented at http=
s://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-l=
ibrary-functions.html.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A new Limiting the Host Resources Usage guide was cr=
eated to help users limit the resources used by the OpenEmbedded Build Syst=
em.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A new Setting up a Hash Equivalence Server guide was=
 created to help users setting up a Hash Equivalence server.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The QA checks defined in the OpenEmbedded Build Syst=
em were gathered in QA Error and Warning Messages.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - A new Setting Up the Poky Reference Distro Manually =
document was added to instruct how to setup the Poky reference distribution=
 manually, after the master branch of the
 Poky repository has stopped being updated.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Core library changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add license_finder.py, which was extracted from reci=
petool to be shared for multiple users. Improve its functionalities.</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Go changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - go-mod-update-modules: Update license finding to use=
 the new find_licenses_up library function.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Rust changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The rust-llvm recipe has been removed, and the rust =
recipe now uses the same llvm recipe as clang.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add the has-thread-local option to the rust-target-c=
onfig class.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Wic Image Creator changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - After a Python upgrade, WIC plugins containing dashe=
s (-) for their filenames are no longer supported. One must convert the das=
hed to underscores (_) and update users of
 the plugins accordingly.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; See the Wic plugins containing dashes should be=
 renamed section of the Yocto Project 5.3 Migration Guide for more informat=
ion. (https://docs.yoctoproject.org/dev/migration-guides/migration-5.3.html=
#wic-plugins-containing-dashes-should-be-renamed)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - wic: do not ignore IMAGE_ROOTFS_SIZE if the Rootfs i=
s modified.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Several improvements in WIC selftests.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bootimg_efi.py: fail build if no binaries are instal=
led.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add new options to the wic ls, cp, rm, and write com=
mands:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - --image-name: name of the image to use the ar=
tifacts from.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - --vars: directory with &lt;image&gt;.env file=
s that store BitBake variables. This directory is usually found in STAGING_=
DIR.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add the Wic-specific option --extra-partition-space =
to add extra empty space after the space filled by the filesystem in the pa=
rtition.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The Wic-specific option --extra-space has a new alia=
s --extra-filesystem-space.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bootimg_pcbios: move Syslinux install into separate =
functions, to make it easier to add new bootloaders.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; The Grub bootloader can now be installed with t=
his Wic plugin.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add the Wic plugin extra_partition to install files =
from the DEPLOY_DIR_IMAGE directory into an extra non-rootfs partition. See=
 the IMAGE_EXTRA_PARTITION_FILES variable
 for more information. (https://docs.yoctoproject.org/dev/ref-manual/variab=
les.html#term-IMAGE_EXTRA_PARTITION_FILES)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The --diskid option was added to allow passing a MS-=
DOS or GPT-formatted disk IDs for a partition (for example: deadbeef-cafe-b=
abe-f00d-cec2ea4eface).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- SDK-related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Include additional information about Meson setting i=
n the SDK environment setup script (host system, CPU family, etc.).</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add Go to SDK_TOOLCHAIN_LANGS, except for the follow=
ing architecture on which this is not supported:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - RISC-V 32 bits (rv32)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - PowerPC</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Image-based SDKs can now include Zsh completions by =
adding the zsh-completion-pkgs feature to the IMAGE_FEATURES variable in th=
e image recipe.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The SDK build is now part of the buildhistory differ=
ence analysis (buildhistory-diff command).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Testing-related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bitbake/tests/fetch: Add tests for gitsm with git-lf=
s.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - bitbake/lib/bb/tests/fetch: add a test case to ensur=
e Git shallow fetch works for tag containing slashes.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - testexport: capture all tests and data from all laye=
rs (instead of the OpenEmbedded-Core (OE-Core) layer only).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - OEQA:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - SDK:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add a test to sanity check that the ge=
nerated SDK manifest was parsed correctly and isn=92t empty.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add a test to verify the manifests are=
 generated correctly.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add helpers to check for and install p=
ackages.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add check that meson has detected the =
target correctly.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Simplify test specification and discovery:</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Introduce the TESTSDK_CASE_DIRS variab=
le to specify test directory types, replacing the need to modify the defaul=
t_cases class member.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Discover tests from configured layers =
using a common discovery pattern (&lt;LAYER_DIR&gt;/lib/oeqa/&lt;dirname&gt=
;/cases) where &lt;dirname&gt; is specified in TESTSDK_CASE_DIRS.</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - The =93buildtools=94 directories were =
renamed to follow the common discovery pattern (&lt;LAYER_DIR&gt;/lib/oeqa/=
&lt;dirname&gt;/cases) for consistency across all SDK configurations.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - selftest/reproducible: Limit memory used by d=
iffoscope to avoid triggering OOM kills.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add tests for the devicetree class.</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Tests for the kernel-fit-image class have bee=
n reworked and improved.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - data.py: add skipIfNotBuildArch decorator, to=
 skip tests if BUILD_ARCH is not in present in the specified tuple.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - selftest: add new test for toolchain switchin=
g.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - utils/command: add a fast-path get_bb_var() t=
hat uses bitbake-getvar instead of bitbake -e when there is not postconfig =
argument passed.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - core/case: add file exists assertion test cas=
e.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - context.py: use TEST_SUITES if set.</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - runqemu: add new test for booting compressed =
images.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - General improvements of the parallelization o=
f tests, namely fixing some tests that could spawn an unlimited number of t=
hreads leading to OOM kills.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - A new SDK test is now running for Go after go=
 was added to SDK_TOOLCHAIN_LANGS.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Commands sent over SSH (using the OESSHTarget=
 class) will now error when an SSH failure occurs. It is possible to ignore=
 these errors by passing ignore_ssh_fails when
 executing a command.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Utility script changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - sstate-cache-management: add a --dry-run argument</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - yocto-check-layer:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Expect success for test_patches_upstream_stat=
us. This means that patch files must include an Upstream-Status to pass wit=
h this script.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Show the DISTRO used when running the script.=
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - yocto-check-layer class:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Refactor to be extended easily.</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; - Add a check_network_flag test that che=
cks that no tasks other than do_fetch can access the network.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - send-error-report:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Respect URL scheme in server name if it exist=
s.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Drop --no-ssl as the server URL specifies it =
with http:// or https://.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - buildstats.py:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Extend disk stats support for NVMe and flexib=
le token count.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Add tracking of network I/O per interface.</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - buildstats-diff: find last two Buildstats files if n=
one are specified.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - pybootchartgui:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - visualize /proc/net/dev network stats in grap=
hs.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - account for network statistics when calculati=
ng extents.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Packaging changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Export debugsources in PKGDESTWORK as JSON. The sour=
ce information used during packaging can be use from other tasks to have mo=
re detailed information on the files used
 during the compilation and improve SPDX accuracy.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - When using the ipk and rpm package managers, give ou=
t more possible reasons about unmatched packages.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; For example:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; E: Package 'catch2' has no installation =
candidate</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; catch2 is a recipe. Its generated packag=
es are: ['catch2-src', 'catch2-dbg', 'catch2-staticdev', 'catch2-dev', 'cat=
ch2-doc']</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; Either specify a generated package or se=
t ALLOW_EMPTY:${PN} =3D &quot;1&quot; in catch2 recipe</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - package.py: replace all files unconditionally when c=
opying debug sources (passing -u to the cpio command in copydebugsources())=
. This improves reproducibility.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- LLVM related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Like gcc-source, the LLVM project sources are part o=
f work-shared under TMPDIR. The project codebase is large and sharing it of=
fers performance improvements.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- SPDX-related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - spdx30: Provide software_packageUrl field</span></di=
v>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - spdx30_tasks: Change recipe license to =93declared=
=94 (instead of =93concluded=94)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - create-spdx-2.2: support to override the version of =
a package in SPDX 2 through SPDX_PACKAGE_VERSION.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- devtool and recipetool changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Use lib/oe/license_finder to extract the license fro=
m source code.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Calculate source paths relative to UNPACKDIR.</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Allow recipe create handlers to specify bitbake task=
s to run.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - create_go: Use go-mod class instead of go-vendor.</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Go recipes are now generated with help of the new go=
-mod-update-modules class.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add a new improve_kernel_cve_report.py script in scr=
ipts/contrib for post-processing of kernel CVE data.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Handle workspaces for multiconfig.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Fix upgrade for recipes with Git submodules.</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Patchtest-related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Multiple improvements to the tool=92s README.</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Don=92t match BitBake Python expansions as GitHub us=
ernames (${@...} syntax).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Security changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - openssl: add FIPS support. This can be enabled throu=
gh the fips PACKAGECONFIG.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The default Poky template configuration (local.conf.=
sample) does not define the allow-empty-password, empty-root-password, and =
allow-root-login in EXTRA_IMAGE_FEATURES
 anymore.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Toaster changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Adapt it for bitbake-setup.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Remove hard dependency on the Poky repository, as it=
s master branch is no longer updated.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- cve-check class changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - cve-update-db-native: FKIE: use Secondary metric if =
there is no Primary metric.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- New PACKAGECONFIG options for individual recipes:</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - ppp: l2tp, pptp</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dropbear: x11 (renamed from enable-x11-forwarding)</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - gdb: source-highlight</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - gstreamer1.0-plugins-bad: analytics</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - mtd-utils: ubihealthd-service</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - openssl: fips</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - qemu: sdl-image, pixman</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - wget: pcre2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - mesa: asahi, amd, svga, teflon, nouveau, xmlconfig</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dbus: traditional-activation, message-bus</span></di=
v>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - cmake: debugger</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - libcxx: unwind-cross</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - tiff: lerc</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - freetype: brotli</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - gawk: pma-if-64bit</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - x264: ffmpeg, opencl</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Systemd related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Enable getty generator by default by adding serial-g=
etty-generator to PACKAGECONFIG.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Now uses the USE_NLS variable to enable or disable b=
uilding translations.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Fix deduplicated templates and instance lines in pre=
set files when listing both template and instances in SYSTEMD_SERVICE.</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Stop enabling non-standard MAC policy when using the=
 =91pni-names=92 feature (part of DISTRO_FEATURES). Instead, follow what is=
 provided by upstream systemd.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Install systemd-sysv-install when using the systemd-=
systemctl-native recipe.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- sanity class changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - insane: Move test for invalid PACKAGECONFIG to do_re=
cipe_qa.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add unimplemented-ptest detection for cargo-based te=
sts, allowing to detect when a cargo package has available tests that could=
 be enable with Ptest.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add a test for recipe naming/class mismatches.</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Add a sanity test for =93bad=94 gcc installs on Ubun=
tu 24.04. The host should install libstdc++-14-dev instead of libgcc-14-dev=
 to avoid build issues when building native with
 Clang.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Drop the var-undefined QA check as it was not releva=
nt for the variables it was checking, as those are mandatory by default.</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- U-boot related changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - uboot-sign: Add support for setting firmware propert=
y in FIT configuration with UBOOT_FIT_CONF_FIRMWARE.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - uboot-sign: Add support for signing U-Boot FIT image=
 without an SPL. The SPL_DTB_BINARY variable can be set to an empty string =
to indicate that no SPL is present.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - When built for the RISC-V architecture, read the TUN=
E_FEATURES variable to automatically set U-boot configuration options (for =
example CONFIG_RISCV_ISA_F).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Improve the way build directories are split when hav=
ing multiple configurations listed in UBOOT_CONFIG. This fixes an issue whe=
re two or more of these configurations were
 using the same directory for building (because these were using the same d=
efconfig file).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">- Miscellaneous changes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dropbear: The dropbearkey.service can now take extra=
 arguments for key generation, through /etc/default/dropbear.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - initscripts: add log_success_msg/log_failure_msg/log=
_warning_msg functions for logging in initscripts.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - connman:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Mark iptables and nftables feature of PACKAGE=
CONFIG mutually incompatible.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Set dns-backend automatically to systemd-reso=
lved when systemd-resolved is part of DISTRO_FEATURES.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - uninative: show errors if installing fails.</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - meson: Allow user to override setup command options =
by exporting MESON_SETUP_OPTS in a recipe.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - cmake: Enhance to emit a native toolchain CMake file=
. This is part of improvements allowing to use clang in an SDK.</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Fix the runtime version of several recipes (they now=
 return the effective version instead of a default string like =93Unknown=
=94).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - module: add KBUILD_EXTRA_SYMBOLS to the install comm=
and.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - rpm-sequoia: add Ptest support.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - libunwind: disable installation of tests directory w=
ith --disable-tests, which can be installed with the libunwind-ptest packag=
e instead.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - boost: add process library to the list of built libr=
aries.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - base-files: add nsswitch-resolved.conf, only install=
ed if systemd and systemd-resolved is part of DISTRO_FEATURES.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - nfs-utils: don=92t use signals to shut down the NFS =
server in the associated initscript, instead use rpc.nfsd 0.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - readline: enable HOME, END, INSERT, and DELETE key b=
indings in inputrc.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - Switch to a new sstate-cache CDN (http://sstate.yoct=
oproject.org).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - sstate: Apply a proper umask when fetching from SSTA=
TE_MIRRORS.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - kernel-devsrc: make package version consistent with =
kernel source (by inheriting kernelsrc).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - externalsrc: Always ask Git for location of .git dir=
ectory (may be different from the default ${S}/.git).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - features_check: Add support for REQUIRED_TUNE_FEATUR=
ES.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - openssh: limit read access to sshd_config file (set =
its filemode to 0600).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - barebox-tools now installs the rk-usb-loader utility=
.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The setuptools3_legacy class now supports the pep517=
-backend QA check.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - The ccache class now supports using Ccache for nativ=
e recipes when the local build configuration contains:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; ASSUME_PROVIDED +=3D &quot;ccache-native=
&quot;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; HOSTTOOLS +=3D &quot;ccache&quot;</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python_pep517: use pyproject-build instead of callin=
g the module with nativepython3.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dbus-glib: include the binding tools separately into=
 the ${PN}-tools package.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dbus: use the systemd class to handle the unit files=
 of D-Bus.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - dpkg: add ptest support.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - shared-mime-info: Now uses the USE_NLS variable to e=
nable building translations.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - p11-kit: Now uses the USE_NLS variable to enable bui=
lding translations.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - babeltrace2: Enable Python plugins</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - initramfs-framework: mount a temporary filesystem on=
 /run and move it to the root filesystem directory before calling switch_ro=
ot.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - python3: Pass PLATFORM_TRIPLET explicitly when cross=
 compiling to make the build deterministic instead of letting Python detect=
 the platform triplet (${HOST_ARCH}-${HOST_OS}).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - pulseaudio: Add the audio group explicitly if pulsea=
udio-server is used.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - oe/license_finder: Add find_licenses_up function to =
find licenses upwards until reaching a predefined top directory (as an argu=
ment).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - mesa:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - Build Mesa=92s Asahi tools when asahi is part=
 of the recipe=92s PACKAGECONFIG variable.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; - The mesa recipe now declares two new PROVIDES=
 for Vulkan and OpenCL ICD. These virtual provider are respectively named v=
irtual-opencl-icd and virtual-vulkan-icd.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - mesa-demos: split info tools to a separate package m=
esa-demos-info.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - vte: skip gobject-introspection with Clang on Arm, a=
s it caused build failures.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - shadow: Increase the maximum group name length from =
24 to 32 (default value provided by upstream recipe, was previously hardcod=
ed to 24).</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - udev-extraconf: Speed up the mount.sh script by pass=
ing the block device of interest to blkid when getting partition label name=
s.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; - piglit: enable OpenCL support if opencl is part of t=
he DISTRO features.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Known Issues in 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">-------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">N/A</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Recipe License changes in 5.3&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">-----------------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">The following changes have been made to the LICENSE values se=
t by recipes:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Recipe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; Previous value &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; New value</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GFDL-1.2 &amp; GPL-2.0-or-later &nbsp; =
&nbsp; &nbsp;GFDL-1.3 &amp; GPL-2.0-or-later</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">flac &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &amp; LGPL-2.1-or-later &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;&amp; LGPL-2.1-or-later &amp; BSD-3-Clause</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&amp; BSD-3-Clause &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rust &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; (MIT | Apache-2.0) &amp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; (MIT | Apache-2.0) &amp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Unicode-TOU &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Unicode-3.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-validation-layers &nbsp; Apache-2.0 &amp; MIT &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apache-2.0 &amp; MIT &amp; =
BSL-1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GPL-1.0-or-later &amp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; GPL-1.0-or-later &amp; GPL-2.0-only</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GPL-2.0-only &amp; GPL-2.0-or-later &nb=
sp;&amp; GPL-2.0-or-later &amp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">util-linux &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; LGPL-2.1-or-later &amp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;LGPL-2.1-or-later &amp; BSD-2-Clause</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;BSD-2-Clause &amp; B SD-3-Clause &nbsp;=
 &nbsp; &amp; B SD-3-Clause &amp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&amp; BSD-4-Clause-UC &amp; MIT &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;BSD-4-Clause-UC &amp; MIT &amp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; E=
UPL-1.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-docutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CC0-1.0 &=
amp; ZPL-2.1 &amp; BSD-2- &nbsp; &nbsp; &nbsp; CC0-1.0 &amp; BSD-2-Clause &=
amp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Clause &amp; GPL-3.0-only &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;GPL-3.0-only</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">tiff &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; libtiff &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libtiff &amp; BSD-4.3TAHOE</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gawk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; GPL-3.0-only &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; GPL-3.0-or-later &amp; AGPL-3.0-or-later</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-helloworld &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;MIT &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;BSD-3-Clause</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Security Fixes in 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">---------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">The following CVEs have been fixed:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">busybox &nbsp; &nbsp; &nbsp; CVE-2025-46394</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ghostscript &nbsp; CVE-2025-59798, CVE-2025-59799, CVE-2025-5=
9800</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libmicrohttpd CVE-2025-59777, CVE-2025-62689</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libpng &nbsp; &nbsp; &nbsp; &nbsp;CVE-2025-64505, CVE-2025-64=
506, CVE-2025-64720, CVE-2025-65018</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libsndfile1 &nbsp; CVE-2024-50613, CVE-2025-52194</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-yocto &nbsp; CVE-2019-14899, CVE-2021-3714, CVE-2021-38=
64, CVE-2022-0400, CVE-2022-1247, CVE-2022-4543, CVE-2022-38096, CVE-2023-3=
397, CVE-2023-3640, CVE-2023-4010, CVE-2023-6238,
 CVE-2023-6240, CVE-2023-6535, CVE-2023-39176, CVE-2023-39179, CVE-2023-391=
80, CVE-2024-52560, CVE-2024-57995, CVE-2024-58015, CVE-2024-58074, CVE-202=
4-58093, CVE-2024-58094, CVE-2024-58095, CVE-2024-58096, CVE-2024-58097, CV=
E-2025-4598, CVE-2025-21709, CVE-2025-21751,
 CVE-2025-21752, CVE-2025-21807, CVE-2025-21833, CVE-2025-21949, CVE-2025-2=
2104, CVE-2025-22105, CVE-2025-22106, CVE-2025-22107, CVE-2025-22108, CVE-2=
025-22109, CVE-2025-22111, CVE-2025-22116, CVE-2025-22117, CVE-2025-22121, =
CVE-2025-22127, CVE-2025-23129,
 CVE-2025-23130, CVE-2025-23131, CVE-2025-23132, CVE-2025-23135, CVE-2025-3=
7743, CVE-2025-37746, CVE-2025-37803, CVE-2025-37860, CVE-2025-37880, CVE-2=
025-37906, CVE-2025-38029, CVE-2025-38036, CVE-2025-38041, CVE-2025-38042, =
CVE-2025-38064, CVE-2025-38105,
 CVE-2025-38132, CVE-2025-38137, CVE-2025-38140, CVE-2025-38187, CVE-2025-3=
8199, CVE-2025-38205, CVE-2025-38207, CVE-2025-38234, CVE-2025-38248, CVE-2=
025-38261, CVE-2025-38284, CVE-2025-38311, CVE-2025-38359, CVE-2025-38426, =
CVE-2025-38584, CVE-2025-38591,
 CVE-2025-38597, CVE-2025-38605, CVE-2025-38621, CVE-2025-38627, CVE-2025-3=
8636, CVE-2025-38656, CVE-2025-38678, CVE-2025-39677, CVE-2025-39678, CVE-2=
025-39745, CVE-2025-39762, CVE-2025-39764, CVE-2025-39789, CVE-2025-40325</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">qemu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CVE-2024-6519, CVE-202=
4-8354</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">webkitgtk &nbsp; &nbsp; CVE-2025-43342, CVE-2025-43343</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Recipe Upgrades in 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">----------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">The following recipes have been upgraded:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Recipe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Previous version(s) &nbsp; &nbsp=
; &nbsp; &nbsp;New version(s)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">acpica &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;20240827 &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250807</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">alsa-lib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.13 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.2.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">alsa-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.11 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.2.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">alsa-ucm-conf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.2.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 1.2.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">alsa-utils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.2.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">appstream &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.0.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.0.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">apr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.7.5 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.7.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">apt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.6.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.0.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">at-spi2-core &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;2.56.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2.56.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">autoconf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.72e &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.72</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">automake &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.17 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.18.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">babeltrace2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2.1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.1.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">barebox &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2025.02.0 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2025.11.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">barebox-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 2025.02.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;2025.11.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">base-passwd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 3.6.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.6.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">bash &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.2.37 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">bc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.08.1 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.08.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">bind &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.20.11 &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.20.15</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">binutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.44 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">binutils-cross &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;2.44 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">binutils-cross-canadian &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.=
44 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">binutils-crosssdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 2.44 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">binutils-testsuite &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;2.44 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">blktrace &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.0+git &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">bluez5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.79 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.85</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">bmaptool &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.8.0+git &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.9.0+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">boost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.87.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.89.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">boost-build-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;1.87.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 1.89.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">btrfs-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 6.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.17</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">build-appliance-image &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 15.0.0 (316baad50b45...) &nbsp; 15.0.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ca-certificates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 20241223 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 20250419</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cargo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.84.1 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.90.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cargo-c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.10.5+cargo-0.83.0 &nbsp; &nbsp; &nb=
sp; &nbsp;0.10.16+cargo-0.91.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ccache &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.11 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.12.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cmake &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.31.6 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cmake-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;3.31.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 4.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">connman &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.43 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">coreutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">createrepo-c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cross-localedef-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;2.41+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">cups &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.4.11 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.4.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">curl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8.12.1 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8.17.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">debianutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 5.21 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.23.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">debugedit &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">dhcpcd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10.2.2 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10.2.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">diffoscope &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;289 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;306</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">diffstat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.67 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.68</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">diffutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.11 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.12</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">dnf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.22.0 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.24.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">dos2unix &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7.5.2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7.5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">dpkg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.22.11 &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.22.21</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">dropbear &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2024.86 &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2025.88</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">e2fsprogs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.47.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.47.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ed &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.21 &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.22.2</span></=
div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">elfutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.192 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.194</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ell &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.74 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.80</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">enchant2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8.2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8.12</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">epiphany &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;48.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 48.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">erofs-utils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.8.5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.8.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ethtool &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.11 &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.15</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">expat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.7.2 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.7.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">fastfloat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 8.0.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8.1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ffmpeg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7.1.2 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">flac &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.3 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.5.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">fmt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11.1.4 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12.1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">fontconfig &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.15.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.17.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gawk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.3.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.3.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 14.3.0 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-cross &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-cross-canadian &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-crosssdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-runtime &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-sanitizers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcc-source &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gcr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.3.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.4.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gdb &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16.2 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gdb-cross &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 16.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gdb-cross-canadian &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;16.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 16.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gdbm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.24 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.26</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gettext &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.23.1 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.26</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gettext-minimal-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;0.23.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 0.26</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ghostscript &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 10.05.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;10.06.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gi-docgen &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 2025.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2025.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.49.1 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.51.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glib-2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.84.4 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.86.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glib-2.0-initial &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;2.84.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.86.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glib-networking &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 2.80.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.80.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glibc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.41+git &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glibc-locale &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;2.41+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glibc-mtrace &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;2.41+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glibc-scripts &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 2.41+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glibc-testsuite &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 2.41+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 2.42+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">glslang &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gnu-config &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;20240823+git &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 20250709+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gnu-efi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.0.0 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gnupg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.5.5 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.5.11</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.24.6 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-binary-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;1.24.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-cross-canadian &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 1.24.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-cross-core2-32 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 1.24.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-crosssdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.24.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-helloworld &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 0.1 (d7b0ac127859...) &nbsp; &nbsp; &nbsp;0.1 (8b405=
629c4a5...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">go-runtime &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.24.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.25.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gperf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.1 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gpgme &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.24.2 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">grep &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.11 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.12</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gsettings-desktop-schemas &nbsp; &nbsp; &nbsp; &nbsp; 48.0 &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
49.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gst-devtools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gst-examples &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.18.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-libav &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;1.24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-plugins-bad &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.=
24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-plugins-base &nbsp; &nbsp; &nbsp; &nbsp; 1.24.13=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.26.=
7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-plugins-good &nbsp; &nbsp; &nbsp; &nbsp; 1.24.13=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.26.=
7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-plugins-ugly &nbsp; &nbsp; &nbsp; &nbsp; 1.24.13=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.26.=
7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1.24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-rtsp-server &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.=
24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gstreamer1.0-vaapi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;1.24.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;1.26.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gtk+3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.24.43 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.24.51</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gtk4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.18.1 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.18.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">gzip &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.13 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">harfbuzz &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10.4.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11.5.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">hwdata &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.393 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.399</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">hwlatdetect &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2.8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.9</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">icu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 76-1 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 77-1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">igt-gpu-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.30 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">init-system-helpers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1.68 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 1.69</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">iproute2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.13.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.17.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">iputils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20240905 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250605</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">iso-codes &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.17.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.18.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">iw &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.9 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.17</span=
></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">json-glib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.10.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.10.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kbd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.7.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kea &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.6.3 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kern-tools-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 0.3+git (c8c1f17867d0...) &nbsp;0.3+git (f589e1df2325...)</spa=
n></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kexec-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2.0.30 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2.0.31</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kmod &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;34.1 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 34.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">kmscube &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.0.1+git(311eaaaa473d...) 0.0.1+git(=
f60e50e887d3...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">less &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;668 &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;685</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libadwaita &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.7.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.7.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libarchive &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.7.9 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.8.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libatomic-ops &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 7.8.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;7.8.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libc-test &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 0+git (18e28496adee...) &nbsp; &nbsp;0+git=
 (f2bac7711bec...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libcap &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.75 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.77</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libcgroup &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libcomps &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.1.21 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.1.23</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libdnf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.73.4 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.75.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libdrm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.4.124 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.4.128</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libedit &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250104-3.1 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 20251016-3.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libevdev &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.13.3 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.13.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libffi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.4.7 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.5.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgcc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgcc-initial &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgcrypt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.11.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.11.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgfortran &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 14.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 15.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgit2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.9.0 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgloss &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.4.0+git &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.5.0+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libgpg-error &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.51 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.56</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libinput &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.27.1 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.29.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libjitterentropy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;3.6.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;3.6.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libjpeg-turbo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 3.0.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;3.1.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libmicrohttpd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.0.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libmodulemd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2.15.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2.15.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libnotify &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.8.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.8.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libnss-nis &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libogg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.5 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libpng &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.6.47 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.6.50</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libproxy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.5.9 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.5.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">librepo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.19.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.20.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">librsvg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.59.2 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.61.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libsdl2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.32.2 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.32.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libsecret &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.21.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.21.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libslirp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.9.0 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.9.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libsolv &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.7.31 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.7.35</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libstd-rs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.84.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.90.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libtheora &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.1.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libucontext &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libunistring &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libunwind &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.6.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.8.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">liburcu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.15.1 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.15.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libusb1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.0.27 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.0.29</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libuv &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.50.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.51.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libwebp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.5.0 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.6.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libwpe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.16.2 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.16.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxfixes &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.0.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxft &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.3.8 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.3.9</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxkbcommon &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.8.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.11.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxml2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.13.8 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.14.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxmlb &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.3.22 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.3.23</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxres &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.2.2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">libxscrnsaver &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.2.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.2.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lighttpd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.77 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.4.81</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-firmware &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;20250311 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 20251111</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-libc-headers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;6.12 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 6.17</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-yocto &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 6.12.47+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;6.12.55+git, 6.16.11+git,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;6.17.6+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-yocto-dev &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 6.14+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 6.18+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-yocto-rt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;6.12.47+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;6.12.55+git, 6.16.11+git,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;6.17.6+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">linux-yocto-tiny &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;6.12.47+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;6.12.55+git, 6.16.11+git,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;6.17.6+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">llvm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;20.1.0 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 21.1.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lsof &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.99.4 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.99.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ltp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250130 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250930</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lttng-modules &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 2.13.17 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;2.14.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lttng-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2.13.14 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;2.14.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lttng-ust &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.13.8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.14.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">lua &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.4.7 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.4.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">m4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.19 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.4.20</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">m4-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.4.19 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.4.20</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">man-db &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.13.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.13.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">man-pages &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.15</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mdadm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.3 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mesa &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;24.0.7 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 25.2.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mesa-gl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24.0.7 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 25.2.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">meson &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.7.0 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mmc-utils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.1+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mobile-broadband-provider-info &nbsp; &nbsp;20240407 &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20250613</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mpfr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.2.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.2.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">mpg123 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.32.10 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.33.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">msmtp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.8.28 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.8.31</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">musl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.5+git(c47ad25ea3b4...) =
1.2.5+git(0ccaf0572e9c...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">nettle &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.10.1 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.10.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">newlib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.4.0+git &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.5.0+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">nfs-utils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.8.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">nghttp2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.65.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.68.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ninja &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.12.1 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.13.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ofono &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.15 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.18</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">opensbi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">openssh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.9p2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10.2p1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">openssl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.4.2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.5.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">opkg &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.7.0 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.9.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ovmf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;edk2-stable202411 &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;edk2-stable202508</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pango &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.56.2 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.57.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">patch &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.7.6 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">patchelf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.18.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.18.0+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pciutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.13.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.14.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">piglit &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.0+gitr (fc8179d31904...) 1.0+g=
itr (a0a27e528f64...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pinentry &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.1 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pixman &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.44.2 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.46.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pkgconf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.4.3 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.5.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">pseudo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.0+git &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.2+git</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">psplash &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.1+git (1f64c654129f...) &nbsp;0.1+g=
it (53ae74a36bf1...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">puzzles &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.0+git (7da464122232...) &nbsp;0.0+g=
it (a7c7826bce5c...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.13.4 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.13.9</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-beartype &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;0.20.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 0.21.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-booleanpy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 4.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;5.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-build &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.2.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.3.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-calver &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;2022.6.26 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;2025.04.17</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-certifi &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 2025.1.31 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;2025.8.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-click &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 8.1.8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;8.2.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-cryptography &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;44.0.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 45.0.7</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-cryptography-vectors &nbsp; &nbsp; &nbsp;44.0.2 &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 45.0.7</sp=
an></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-cython &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;3.0.12 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 3.1.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-dbusmock &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;0.33.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 0.37.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-docutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;0.21.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 0.22</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-dtschema &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;2025.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2025.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-flit-core &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 3.11.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 3.12.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-hatch-fancy-pypi-readme &nbsp; 24.1.0 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 25.1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-hatch-vcs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 0.4.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;0.5.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-hypothesis &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;6.129.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;6.142.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-idna &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;3.10 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.11</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-iniconfig &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 2.0.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;2.1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-jsonschema &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;4.23.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 4.25.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-jsonschema-specifications 2024.10.1 &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2025.9.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-license-expression &nbsp; &nbsp; &nbsp; &nbsp;30.4.1 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30.4.=
4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-lxml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;5.3.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-mako &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.3.9 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-markdown &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;3.7 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;3.9</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-maturin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 1.8.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;1.9.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-meson-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;0.17.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0.18.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-numpy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 2.2.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;2.3.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-packaging &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 24.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 25.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pbr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 6.1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pip &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 25.0.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 25.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pluggy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;1.5.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.6.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-poetry-core &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 2.1.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;2.1.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pycairo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 1.27.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1.28.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pycryptodome &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;3.22.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 3.23.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pycryptodomex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; 3.22.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; 3.23.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pygments &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;2.19.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.19.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pygobject &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 3.52.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 3.54.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pyopenssl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 25.0.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 25.1.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pyparsing &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 3.2.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;3.2.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pytest &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;8.3.5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;8.4.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pytest-subtests &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.=
14.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0.14.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-pytz &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;2025.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 2025.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-rdflib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;7.1.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;7.1.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-referencing &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 0.36.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0.37.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-requests &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;2.32.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 2.32.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-rpds-py &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 0.22.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 0.27.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-ruamel-yaml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 0.18.10 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;0.18.15</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-scons &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 4.9.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;4.9.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-setuptools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;76.0.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 80.9.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-setuptools-rust &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.=
11.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1.12.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-setuptools-scm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;8.2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;8.3.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-smartypants &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 2.0.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;2.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-snowballstemmer &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.=
2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;3.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-trove-classifiers &nbsp; &nbsp; &nbsp; &nbsp; 2025.3.=
13.13 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2025.9.11.17</span><=
/div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-typing-extensions &nbsp; &nbsp; &nbsp; &nbsp; 4.12.2 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.15.=
0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-unittest-automake-output &nbsp;0.2 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.3</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-uritools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;4.0.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;5.0.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-urllib3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 2.3.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;2.5.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-webcolors &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 24.8.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 24.11.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-wheel &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 0.45.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 0.46.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-xmltodict &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 0.14.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 0.15.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-yamllint &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;1.36.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1.37.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">python3-zipp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;3.21.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 3.23.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">qemu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.2.0 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10.0.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">qemu-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 9.2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10.0.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">qemu-system-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;9.2.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;10.0.6</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">quilt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.68 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.69</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">quilt-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;0.68 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.69</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">quota &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.09 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">re2c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.1 &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.3</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">readline &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8.2.13 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">repo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.52 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.58</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">resolvconf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.92 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.94</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rpcbind &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.2.7 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.2.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rpm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.20.0 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.20.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rpm-sequoia &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.7.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rpm-sequoia-crypto-policy &nbsp; &nbsp; &nbsp; &nbsp; git (03=
2b418a6db8...) &nbsp; &nbsp; &nbsp;git (ae1df75b1155...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rt-tests &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.9</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ruby &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.4.4 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.4.5</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rust &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.84.1 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.90.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rust-cross-canadian &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 1.84.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 1.90.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sbc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.0 &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.1</span></div=
>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">scdoc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.11.3 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.11.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">screen &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.0.0 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.0.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">shaderc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2024.3 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2025.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">shadow &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.17.3 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.18.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">spirv-headers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">spirv-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">squashfs-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;4.6.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;4.7.4</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">strace &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6.12 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6.17</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">stress-ng &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.18.11 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.19.04</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sudo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.9.17p1 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.9.17p2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">swig &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.3.0 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.3.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sysklogd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.7.1 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.7.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sysstat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12.7.7 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12.7.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemd &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 257.6 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;257.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemd-boot &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;257.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;257.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemd-boot-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; 257.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;257.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemd-systemctl-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;25=
7.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;257.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemtap &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 5.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">systemtap-native &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;5.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">taglib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.0.2 &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.1.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">tcf-agent &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.8.0+git &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.9.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">tcl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.0.1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">tcl8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8.6.16 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8.6.17</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">tiff &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.7.0 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4.7.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">ttyrun &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.37.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.38.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">u-boot &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2025.01 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2025.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">u-boot-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;2025.01 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;2025.10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">unfs3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.10.0 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.11.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">usbutils &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;018 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;019</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">util-linux &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.40.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.41.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">util-linux-libuuid &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;2.40.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 2.41.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">valgrind &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.24.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.25.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.1.1652 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.1.1683</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vim-tiny &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9.1.1652 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9.1.1683</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">virglrenderer &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;1.1.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vte &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.78.2 &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0.82.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-headers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-loader &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; 1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-samples &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;git (8547ce1022a1...) &nbsp; &nbsp; &nbsp;git (d2720=
5d14d01...)</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-tools &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-utility-libraries &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.=
4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.3=
28.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-validation-layers &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.=
4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.3=
28.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">vulkan-volk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1.4.309.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;1.4.328.1</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">wayland &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.23.1 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.24.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">wayland-protocols &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 1.41 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 1.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">webkitgtk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.48.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.50.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">weston &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14.0.1 &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 14.0.2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">which &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.21 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.23</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">wireless-regdb &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;2025.02.20 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; 2025.10.07</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">xdpyinfo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.3.4 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.4.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">xinput-calibrator &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 0.7.5+git &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;0.8.0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">xkeyboard-config &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;2.44 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 2.45</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">xwayland &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;24.1.6 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24.1.8</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">xz &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.6.4 &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5.8.1</span></d=
iv>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Contributors to 5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">-------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Thanks to the following people who contributed to this releas=
e:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Adam Blank</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Adam Nilsson</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Adrian Freihofer</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ahmad Fatoum</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Alejandro Hernandez Samaniego</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Aleksandar Nikolic</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Alexander Kanavin</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Alex Kiernan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Alon Bar-Lev</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Alper Ak</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Andreas Stergiopoulos</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Andrej Valek</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Anibal Limon</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ankur Tyagi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Anna-Lena Marx</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Antonin Godard</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Anuj Mittal</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Archana Polampalli</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Barne Carstensen</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Benjamin Missey</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Benjamin Sz&#337;ke</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Bo Sun</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Bruce Ashfield</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Carlos S=E1nchez de La Lama</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Changqing Li</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Chen Qi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Chris Laplante</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Christian Lindeberg</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Christos Gavros</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Daisuke Yamane</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Daniel McGregor</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Daniel Turull</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Daniel Wagenknecht</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Dan McGregor</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Dario Binacchi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">David Reyna</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Deepak Rathore</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Deepesh Varatharajan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">denisova-ok</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Denys Dmytriyenko</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Diego de los Santos</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Diego Sueiro</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Divya Chellam</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Dixit Parmar</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Dmitry Baryshkov</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Enrico J=F6rns</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Enrico Scholz</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Erick Shepherd</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Erik Lindsten</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Etienne Cordonnier</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Fabio Estevam</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Falk Bauer</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Gregor Herburger</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Gu=F0ni M=E1r Gilbert</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Gyorgy Sarvari</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Haixiao Yan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Harish Sadineni</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Hiago De Franco</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">hongxu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Hongxu Jia</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ines KCHELFI</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Isaac True</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jaeyoon Jung</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jamin Lin</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jan Vermaete</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jason M. Bills</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jason Schonberg</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jayasurya Maganuru</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jeroen Hofstee</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jiaying Song</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jimmy Ho</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jinfeng Wang</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jo=E3o Henrique Ferreira de Freitas</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Joao Marcos Costa</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jo=E3o Marcos Costa</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Johannes Schneider</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jonathan Schnitzler</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jon Mason</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">J=F6rg Sommer</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Jose Quaresma</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Joshua Watt</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Julian Haller</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Kai Kang</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Kavinaya S</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Keerthivasan Raghavan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Khang D Nguyen</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Khem Raj</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Koch, Stefan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Koen Kooi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Kyungjik Min</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Lamine REHAHLIA</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Lee Chee Yang</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">leimaohui</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Lei Maohui</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Leon Anavi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Leonard Anderweit</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Libo Chen</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Liu Yiding</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Li Wang</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Louis Rannou</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Luca Fancellu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Madhu Marri</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Manuel Leonhardt</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Marco Cavallini</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mark Asselstine</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mark Hatle</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Markus Kurz</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Markus Volk</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Martin Jansa</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Martin Siegumfeldt</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mathieu Dubois-Briand</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Michael Halstead</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Michael Jeanson</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Michael Opdenacker</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Michael Tretter</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Michal Sieron</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mike Crowe</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mike Looijmans</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mikko Rapeli</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ming Liu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Mingli Yu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Moritz Haase</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">NeilBrown</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Nguyen Dat Tho</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Nikhil R</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Niko Mauno</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ola x Nilsson</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Olga Denisova</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Osama Abdelkader</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Osose Itua</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ovidiu Panait</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Patrick Vogelaar</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Patrick Williams</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Patryk Seregiet</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Paul Barker</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Paul Gortmaker</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Pedro Ferreira</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Per x Johansson</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Peter Kjellerstedt</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Peter Marko</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Peter Tatrai</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Petr Vorel</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Philip Lorenz</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Philippe-Alexandre Mathieu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Pierre-Loup GOSSE</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Poonam Jadhav</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Praveen Kumar</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Priyal Doshi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Quentin Schulz</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">rajmohan r</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Randolph Sapp</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Randy MacLeod</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Raphael Schlarb</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Rasmus Villemoes</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ricardo Salveti</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ricardo Simoes</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Richard Gr=FCnert</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Richard Purdie</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Robbin Van Damme</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Robert P. J. Day</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Robert Tiemann</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Robert Yang</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Rogerio Guerra Borin</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ross Burton</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Ryan Eatmon</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Samuli Piippo</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Sandeep Gundlupet Raju</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Saravanan</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Siddharth Doshi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Simone Wei=DF</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Soumya Sambu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Stefan Eichenberger</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Stefan Koch</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Steffen Greber</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Steve Sakoman</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Talel BELHAJ SALEM</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Thomas Perrot</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Thune Tran</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tim Orling</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tobias Pistora</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tom Hochstein</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Trevor Gamblin</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Trevor Woerner</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tudor Ambarus</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Uwe Kleine-K=F6nig</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Veeresh Kadasani</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Victor Kamensky</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Vijay Anusuri</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Vincent Davis Jr</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Vishwas Udupa</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Vivek Puar</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Vyacheslav Yurkov</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Walter Werner SCHNEIDER</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Wang Mingyu</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Weisser, Pascal.ext</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yannic Moog</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yash Shinde</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yi Zhao</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yoann Congal</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yogesh Tyagi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Yogita Urade</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Zhang Peng</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Zoltan Boszormenyi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Zolt=E1n B=F6sz=F6rm=E9nyi</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp;&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">&nbsp; &nbsp;&nbsp;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repositories / Downloads for Yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">--------------------------------------</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Name: yocto-docs</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Location: https://git.yoctoproject.org/yocto-docs<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Branch: whinlatter</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tag: yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Git Revision: 79cd33b06e87c04e4f873a5afd9d53714bc5047f</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release Artefact: yocto-docs-79cd33b06e87c04e4f873a5afd9d5371=
4bc5047f</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sha: f2a353847243370d6924ea83542b055ee8098c51d4875b6a9b2cee79=
b98c0f29</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Download Locations:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/y=
octo-docs-79cd33b06e87c04e4f873a5afd9d53714bc5047f.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://mirrors.kernel.org/yocto/yocto/yocto-5.3/yocto-docs-7=
9cd33b06e87c04e4f873a5afd9d53714bc5047f.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Name: openembedded-core</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Location: https://git.openembedded.org/openembedde=
d-core</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Branch: whinlatter</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tag: yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Git Revision: 8519978592483bb096ed5192fff7af6c887b799e</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release Artefact: oecore-8519978592483bb096ed5192fff7af6c887b=
799e</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sha: 3b23d8a56a2f6e3872ec01272a76e3551ac1eab001f81c9abc680ce4=
15aa888d</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Download Locations:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/o=
ecore-8519978592483bb096ed5192fff7af6c887b799e.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://mirrors.kernel.org/yocto/yocto/yocto-5.3/oecore-85199=
78592483bb096ed5192fff7af6c887b799e.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Name: meta-yocto</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Location: https://git.yoctoproject.org/meta-yocto<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Branch: whinlatter</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tag: yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Git Revision: d02d3faaf4d6075ea03e9eb47654ec7639f929a0</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release Artefact: meta-yocto-d02d3faaf4d6075ea03e9eb47654ec76=
39f929a0</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sha: e2a69bf93466cd010fd14e4f1b2bb5f45da165b00eb1fbf7987541d7=
a9378d47</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Download Locations:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/m=
eta-yocto-d02d3faaf4d6075ea03e9eb47654ec7639f929a0.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://mirrors.kernel.org/yocto/yocto/yocto-5.3/meta-yocto-d=
02d3faaf4d6075ea03e9eb47654ec7639f929a0.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Name: meta-mingw</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Location: https://git.yoctoproject.org/meta-mingw<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Branch: whinlatter</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tag: yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Git Revision: 00323de97e397d4f6734ef2191806616989f5e10</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616=
989f5e10</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363=
127a1c77</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Download Locations:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/m=
eta-mingw-00323de97e397d4f6734ef2191806616989f5e10.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://mirrors.kernel.org/yocto/yocto/yocto-5.3/meta-mingw-0=
0323de97e397d4f6734ef2191806616989f5e10.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Name: bitbake</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Repository Location: https://git.openembedded.org/bitbake</sp=
an></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Branch: 2.14</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Tag: yocto-5.3</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Git Revision: 720df1a53452983c1c832f624490e255cf389204</span>=
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Release Artefact: bitbake-720df1a53452983c1c832f624490e255cf3=
89204</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">sha: 08a5d8914b59e904a805fbf0e76058dfeddd49f4a022298a3c1485b9=
8233db24</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">Download Locations:</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3/b=
itbake-720df1a53452983c1c832f624490e255cf389204.tar.bz2</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif;">https://mirrors.kernel.org/yocto/yocto/yocto-5.3/bitbake-720d=
f1a53452983c1c832f624490e255cf389204.tar.bz2</span></div>
<div class=3D"elementToProof"><br>
</div>
<div class=3D"elementToProof"><br>
</div>
</body>
</html>

--_000_BL4PR11MB87971330708DBD429D5AA5ACB9AAABL4PR11MB8797namp_--

