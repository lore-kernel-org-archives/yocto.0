Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F17CD13D3
	for <webhook@archiver.kernel.org>; Thu, 30 Apr 2026 07:55:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15135.1777535702812763637
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2026 00:55:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=kxOAbhPJ;
 spf=pass (domain: intel.com, ip: 198.175.65.17, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777535703; x=1809071703;
  h=from:to:subject:date:message-id:mime-version;
  bh=Bh7wmkBh6TysWDRzANThniRCoMLQtXnbOAePz/JXEMk=;
  b=kxOAbhPJkBKwTCOYjzMbnzufKiFwMhtUOh2drcm1zP4AMWy63t+f1OBv
   IkxLRx43XkDq2UtJ+reFDz+nlDjBdjyOBkRY0HJHPaRJmutxLfF1Ty5uN
   Zfc6i0X38a6okE1iJatUePtxZsTPZ56nDxpFpTFk0Pi8M23I2wVn51F3a
   vIX3wFAxEo7irtW8d6aVmJU0cEic0/xsmq+pfRMN6JZvS+5uj+9zAzAVL
   9VgE4S9yk4OnwhoRtH1b0r3HUJQZA65CBOLeZaMNvdJYztKTtxFKoxKVc
   Zq9Bs3Q9+IWvoaRRWFAluaROWg554AaTmAAaLRLYbk2yULwAmW71OmH/b
   w==;
X-CSE-ConnectionGUID: H5l9aZm9QSCfrb8fVsrh2A==
X-CSE-MsgGUID: 6yObSG9iQCORHH+K8ND6Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78467055"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; 
   d="scan'208,217";a="78467055"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2026 00:55:03 -0700
X-CSE-ConnectionGUID: aE8Qk22sQRKEkc95vfHfyg==
X-CSE-MsgGUID: bvXgk1pET5CNCIsH/bY8GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; 
   d="scan'208,217";a="231865452"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2026 00:55:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:55:01 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 00:55:01 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iZaQZeYMFt9u3zHFxShfz36MRpg4Dhckdq7+yiSmCK7JQ9SGnUY9kLQ7ba5e15/aAOsvGu0SmGQyAK0lEIqJf+tUfFm3pNnqF3kJm4MCs7B3dj/lytXZfxHGt/5UluxvpztAynWSFYt1M8gMXXN7y2mLcBG2zAhJysniUTn4ZRmU+Um4WHrzJ3Zv1j28mVmonrTIcnoi3+JRmKTNyFhjTjLRgBnn2H4wIBf8OGRqabF6VTgKToNtFu2bCk+B308ZC+9q0aQBYqVcKogqz8Nsd3nUji3v7Z6/Zg5bwIjX32R8vAh3pXyMys0sXkKepKvuxsDDnrMJXt0jnzfAZWUsGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bh7wmkBh6TysWDRzANThniRCoMLQtXnbOAePz/JXEMk=;
 b=DJNmAw9axLVVxuvBDLHj6thpdMkipzzL9+dhrtF0eGgAFTfvVZKwuNAzG9tUesIgGi8EeMuDmI31FU+1F6qtT7YTaKj094X21guxgh9vvN9S2LezaFxaYCcSrgA6afCWP55a0A2xqyKThYgnKQpsCUBqDlxCfMkIP2YYa4XVdAd4Bl/xwVhqUgdY5ufmzcijS3E/EHDh2Lo5EQDfnF72UU5h2+WOJKSBfzH223sdcn1HDgGLalDoFrJQYpL83q51+GROu6iCc0rnjbCCzctWPWtlk/Cw9tJGRf5K9zLbIw8TWKh1gVUxpFBTMzsYpla5YvT91NSqcszifrnZBs10sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SJ5PPFA058327E4.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::849) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 07:54:53 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9870.013; Thu, 30 Apr 2026
 07:54:53 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.35 (kirkstone-4.0.35) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.35 (kirkstone-4.0.35) is
 Released
Thread-Index: AQHc2G91+Mo9plpGD0ifOLaFbIZ1cg==
Date: Thu, 30 Apr 2026 07:54:53 +0000
Message-ID: <BL4PR11MB8797FB4D5EDB4D00916B7982B9352@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SJ5PPFA058327E4:EE_
x-ms-office365-filtering-correlation-id: 69c0650b-1efe-4b76-cb81-08dea68dc38a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|8096899003|38070700021|13003099007|56012099003|18002099003;
x-microsoft-antispam-message-info: +Po3UdxdEeTunL68nIx0Q9WUXfV5UaDmPZVUjj+TrHqEKJnpBTUIAetmiibPcBJVvBbxvEtKPyH4HYGYGXAHg23cji0s3QUwBh/gzN6AjnqLTbgFes6SQ9JVNTT4jhlMw86T6fqpMzFBzJdUEd9gM+5rlqJ8UPQoFBeqR/BU6LIfjzB2J4v/kmCtno1fDLGcbFasj0TeGWjahEODlDy6Vl4wtsodgFVoyPNRDcWunwgdWjIeRgV/Ef+kQq/i/ZHu6fM1izMdQd/2sWaMDCA5ebWwEEV7ofFDgDpWcrH1N2ET7qjZKUm/gTPx788jffhG4V3Y+Tycp6VyAmkTiPS4GviwYirsVEG+pH1Ar3UDJzjoTIQV23XgxgfARsCCtColbOpWGmgumHfvfWGSDWwcyHOaRUV38VO9lcdqwHF+iUUtGv9ww1amI+2dZH4eyw+3PysZNRtO+OzrbIN7dZmfzcqAmQHO4IT/Xg8QDQe35G31C6VMqQqUnwg4WHlb7CdZXWivRJUGWx/dnbjBzq+t7aofYBdrb2oY0aPw5c1wLa4gCPBm1L6bhct8Er3/yPabIjpa4J7YKDQeoRPW2lDwEcb7jG1oHLgU1QUm7uEq7IyX+9TUSa6n0DuY4BXw7nqL5JuIEBQmnayojgpXO1U+Agbv/rqDmjKFoppVuRj7LQyt8g0LRZG+z6qKwEv9Pv0Vt5yc44Tno2AuXcmVwEy2OVSFo173awfk3cHv7xiaF1Zv58vRAWZBPAjfbuRPkR9s
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(8096899003)(38070700021)(13003099007)(56012099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BTsAvMX6VhVczN/h0rCg/KE6zZkl8dlFj+TwAKK9kcloLYHQfp02SigT2S?=
 =?iso-8859-1?Q?6KJIfyBuSRhDhoqVo/4lHgnXgOngjmCZvZphZGJVL5qCRDv9aRZ4TTl9v3?=
 =?iso-8859-1?Q?EUQlyYVvcKnTidDFyBwO/7m1ozfv9hvHqYU3hjwA8vWbkaL+iBYdJ9xGTn?=
 =?iso-8859-1?Q?y7bv4geyGntY+YyyNfHYSw9lnnL7VJzfduKdcbdU5XfExOqlyQIsoHElSq?=
 =?iso-8859-1?Q?5ii5QjYucniDu5Bgtawam3FFQn2kV+e0hEeb6aX/Pp0PwWdOwQU9JTF6Kg?=
 =?iso-8859-1?Q?rt6R5X8QlJ2EeNcnwb+qLq96v1goIPiQoaxa5mRryLsvCED/kYDI1z4iPs?=
 =?iso-8859-1?Q?lIwJoaelOt1oTRpC2Sq+ATZm6Va8mUfdaUjMzQD8pLMOGDRyrrLzGpUHG+?=
 =?iso-8859-1?Q?MoCBdWsoO9i6KF4x2jFtHplJpMxqiE/Nk1fs4FBVdL65UuE5Q4LD9TQ4V5?=
 =?iso-8859-1?Q?KRV7pulVXPd9YBVdjK7FKgcSvRI2H3d2W5ZwlI3wjSTs86u3SoGSLwRZu8?=
 =?iso-8859-1?Q?OinJj82UogUqPImHpxonMXGIJc5ywYOfy2V62HxJ3wX20FIgV0u5ENap9W?=
 =?iso-8859-1?Q?OOxuXzVvo+g7kvli+5y5b6n+PEnszxIq5iB6XPFoD4a0Czq2PhXUYG7UPr?=
 =?iso-8859-1?Q?I8lRIYD0SpqFJTCeJZRWwuWmZmUGPsclAQFA7KWRor3K9tpJ+wsKbtUBhS?=
 =?iso-8859-1?Q?8DBGVp672nG/Ik6R/jA+xbULaAEtuwvWaBP21aKjx42t9JlLrefaroENbm?=
 =?iso-8859-1?Q?CQa/DiHjhrrOKH/tWhD8Fn4SxcpHc29YIGlXlT5gapdPi0FouOSIi+gELM?=
 =?iso-8859-1?Q?WoHPqVknwjlIj8MPPPbY2WXfi0gl0vw1JEEhXTPNkRU+CAkDnGTKPa2ORZ?=
 =?iso-8859-1?Q?11mqhm73xrkcFbQRHFtHoHO4oFwsNiIpWjA5Jy22XfrFxOkjdJbZES+1pe?=
 =?iso-8859-1?Q?kdNfHDMQewgqkq0hSvoJHNxPtDiz/QloSp2Jk4PrIPfwou/gvW/n8zFzwv?=
 =?iso-8859-1?Q?243h82X7SQTQ/zDn+MR2xBPBKHOnoaLsecOAyyzykpXgzU/bclqFp8aegF?=
 =?iso-8859-1?Q?YSmg+ZT30+V1qfGiUsp6zHAomqfR5K+ZP/xgxX0Esadnu8oeoca2A9PE5/?=
 =?iso-8859-1?Q?MWuMuIvmmtKXyi1Tl4w/c+1dsRh2+oqA/uzO3oVOIKzTNRO6cvFRtL8ywy?=
 =?iso-8859-1?Q?dEUOXwi11lGA5iRc4R9Aw3l46bc8K+RotJrAuty6eeD9yPfQx9BuDZt+CS?=
 =?iso-8859-1?Q?gp8Iw8CJdQr1gTf6gnP85MBaD8f7g7OPVRRsJciMo273WU0vUSmtZw1D3u?=
 =?iso-8859-1?Q?GM6Y+nF2K7cjPk7B0VoDEVH0pMEMm3Ba0jOrBVnYGSexeDYcQ/nQKBAh/J?=
 =?iso-8859-1?Q?S8p0HIkuTs14S6Kjv7ad6llRXTwQ8MgMM4+INIhO5AAS3AuIqpdlZZSI53?=
 =?iso-8859-1?Q?ceu9BLH/F7bNsZS0ioIO4gyjmuonraEZhSjw9eDJEKfsB65ZGViuRIDM7I?=
 =?iso-8859-1?Q?f12maESA3Ydd6Dc42ugCgCOhwA6OXr9LRaiSgU3DADG/wKy5r05x5di3Em?=
 =?iso-8859-1?Q?gaPRK7EuefgaqI/IWNGz4iqbTiOqx5kyRf/688BWDsFL0DqsYcMjRb9vgf?=
 =?iso-8859-1?Q?WpbOqSyUDCvVxqRPCo1uCeO21F3UsAhL4NqNWh+PJMRlFdsN5SOEhxlwtq?=
 =?iso-8859-1?Q?Om+ndO/P0uSbXyhwlr0c+SS1oakQfVYgpHHIAOuCCo8Zbc3FgFYIPNldf6?=
 =?iso-8859-1?Q?F8vAp4BJPSRR/AXFr6jRx0xymXUb7T6VIGIzS2i3UTaS/5kj1wTdkH7bZn?=
 =?iso-8859-1?Q?4ULApUSlGguRzBoOUA1nXVJrkw94pukfstIm+g3G+oN8P3F8PZHyjcEYs+?=
 =?iso-8859-1?Q?C/?=
x-ms-exchange-antispam-messagedata-1: WdMA5s6npHrllw==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797FB4D5EDB4D00916B7982B9352BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dzZ45QZPYBSQCHxeF5XgJpsIRoNG7msqQhW6mAybGS4qSiBt31Qt5QpLyv6MwyeBuIer0U5WusCcKZkKG3WAkMjhVPj8U243mRbchfyiQMPPnKJqWDbCla7IxxnqX1ABqQUv+ebyhUltuxMhddsNEQILiaNJ3F/3eEr4iS4iW3VF/dfbOfvXMif+UJDHgE2Fmv2/+e5VGygsNn/a6iyfoPV/XEc29HK1xWyYJ+QuB8kwW6tJGESj3Z46XPvijuMwifdLXCYvojnUJkjGXJZ7TsYqEKW/bGIGNrzbD0z6z8dtXfDILbC5nO/0W6Ub9GmpWI8kjkp/hjI69PLHZpxSRA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69c0650b-1efe-4b76-cb81-08dea68dc38a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 07:54:53.4371
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K9Qzg408nxGXK1FckwUled0c4xSK762I4JX9MB55UvwwYzoiUkuS6xLTEFSQqc2YM8JyNIx/SzfgqJjIppvWvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFA058327E4
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 07:55:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66460

--_000_BL4PR11MB8797FB4D5EDB4D00916B7982B9352BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.35 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/poky-9343124=
9a6260da7bd29ee3ca32145d89e5b8259.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/testreport.t=
xt

Please note that this is the last planned release for the 4.0.X kirkstone s=
eries as our 4 year LTS period has come to an end.

Due to ongoing maintenance on the kernel.org mirrors, mirroring to kernel.o=
rg is currently delayed.

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--------------------------
yocto-4.0.35 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: ce6734c68649739c635675a133fa77edb9865028
Release Artefact: yocto-docs-ce6734c68649739c635675a133fa77edb9865028
sha: ddb6fac4d257f4f76836055cafad529729e99c293d3b8d3dabef926fad5e725f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/yocto-docs-c=
e6734c68649739c635675a133fa77edb9865028.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/yocto-docs-ce6734c=
68649739c635675a133fa77edb9865028.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: 93431249a6260da7bd29ee3ca32145d89e5b8259
Release Artefact: poky-93431249a6260da7bd29ee3ca32145d89e5b8259
sha: a8e95213248c5400276611754f2c98b8d8972e166bdf41433c45fcdd2bf668cb
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/poky-9343124=
9a6260da7bd29ee3ca32145d89e5b8259.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/poky-93431249a6260=
da7bd29ee3ca32145d89e5b8259.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: 51259c7e933a2ac8ebc01604d6e65607b76b7b56
Release Artefact: oecore-51259c7e933a2ac8ebc01604d6e65607b76b7b56
sha: 2cd531e2a107849e7a452e71e41f22b42160979066e10d0661e97acfab125b1f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/oecore-51259=
c7e933a2ac8ebc01604d6e65607b76b7b56.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/oecore-51259c7e933=
a2ac8ebc01604d6e65607b76b7b56.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: 34e3c9a19b8b955116109a2e9528966db3fced37
Release Artefact: meta-yocto-34e3c9a19b8b955116109a2e9528966db3fced37
sha: 18da6dbb745d5e4e42a93527c36751778155e3762728b0b1020b890480402dde
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-yocto-3=
4e3c9a19b8b955116109a2e9528966db3fced37.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-yocto-34e3c9a=
19b8b955116109a2e9528966db3fced37.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.35
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.35
Git Revision: 7fd0197fd5fedd23cc885b5e7e816d86a392fdf9
Release Artefact: bitbake-7fd0197fd5fedd23cc885b5e7e816d86a392fdf9
sha: 6c01ff2b4b0060ef3d6d3f1fc11690094b22865af4989946544d08d74b473ec9
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/bitbake-7fd0=
197fd5fedd23cc885b5e7e816d86a392fdf9.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/bitbake-7fd0197fd5=
fedd23cc885b5e7e816d86a392fdf9.tar.bz2


---------------
 Contributors
---------------
Aleksandar Nikolic
Antonin Godard
Bruce Ashfield
Fabien Thomas
Hitendra Prajapati
Jinfeng Wang
Ken Kurematsu
Kristiyan Chakarov
Lee Chee Yang
Martin Jansa
Paul Barker
Peter Marko
Richard Purdie
Ross Burton
Shaik Moin
Vijay Anusuri
Yanis BINARD
Yoann Congal

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
alsa-lib: Fix CVE-2026-25068
busybox: Fix CVE-2025-60876
curl: Fix CVE-2025-14524 CVE-2026-1965 CVE-2026-3783 CVE-2026-3784
ffmpeg: Fix CVE-2025-10256
gdk-pixbuf: Fix CVE-2025-6199
inetutils: Fix CVE-2026-28372
libarchive: Fix CVE-2026-4111
libpam: Fix CVE-2024-10963
linux-yocto/5.15: Fix CVE-2025-40082 CVE-2025-68358 CVE-2025-71089 CVE-2025=
-71220 CVE-2025-71222 CVE-2025-71232 CVE-2025-71233 CVE-2025-71235 CVE-2025=
-71236 CVE-2025-71237 CVE-2025-71238 CVE-2026-23111 CVE-2026-23112 CVE-2026=
-23169 CVE-2026-23190 CVE-2026-23193 CVE-2026-23198 CVE-2026-23202 CVE-2026=
-23206 CVE-2026-23209 CVE-2026-23216 CVE-2026-23221 CVE-2026-23222 CVE-2026=
-23228 CVE-2026-23229 CVE-2026-23231 CVE-2026-23234 CVE-2026-23235 CVE-2026=
-23236 CVE-2026-23237 CVE-2026-23238
ncurses: Fix CVE-2025-69720
python3: Fix CVE-2024-6923 CVE-2025-15282 CVE-2025-59375 CVE-2026-0865 CVE-=
2026-24515 CVE-2026-25210
python3-pip: Fix CVE-2026-1703
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459
sqlite3: Fix CVE-2025-70873
tiff: Fix CVE-2025-61143 CVE-2025-61144
vim: Fix CVE-2026-25749 CVE-2026-26269 CVE-2026-28418 CVE-2026-28419 CVE-20=
26-33412

---------------
Fixes
---------------
bitbake: tests/fetch: Avoid using git protocol in tests
build-appliance-image: Update to kirkstone head revision
contributor-guide/submit-changes.rst: Added missing word
create-pull-request: Keep commit hash to be pulled in cover email
createrepo-c: Fix createrepo-c-native build on GCC14 hosts (e.g. Fedora 41)
gtk+3: fix incompatible-pointer-types errors for native build on Fedora 41
libcomps: Fix libcomps-native build on GCC14 hosts (e.g. Fedora 41)
libpam: re-add missing libgen include
libtheora: set CVE_PRODUCT
linux-yocto/5.15: update to v5.15.201
lsb.py: strip ' from os-release file
migration-guide: add release notes for 4.0.33 4.0.34
oeqa/manual: Default to https git protocol for YP/OE repos
oeqa/sdk: Default to https git protocol for YP/OE repos
oeqa/selftest/git-submodule-test: Default to https git protocol for YP/OE r=
epos
overview-manual: escape wildcard in inline markup
poky.conf: Bump version for 4.0.35 release
python3: upgrade to 3.10.20
README.OE-Core: update contributor links and add kirkstone prefix
recipes: Default to https git protocol for YP/OE repos
recipetool: Recognise https://git. as git urls
ref-manual/system-requirements.rst: update end-of-life distros
scripts/install-buildtools: Update to 4.0.34
scripts: Default to https git protocol for YP/OE repos
selftest/scripts: Update old git protocol references
tcl: skip http11 tests
tiff: set status of CVE-2025-61145 as fixed by patch for CVE-2025-8961
tzdata,tzcode-native: Upgrade to 2026a



--_000_BL4PR11MB8797FB4D5EDB4D00916B7982B9352BL4PR11MB8797namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
We are pleased to announce the Yocto Project 4.0.35 Release is now availabl=
e for download.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/p=
oky-93431249a6260da7bd29ee3ca32145d89e5b8259.tar.bz2" id=3D"OWAde0b4e97-301=
9-f2f4-591f-d18c861f0b8b" class=3D"OWAAutoLink">https://downloads.yoctoproj=
ect.org/releases/yocto/yocto-4.0.35/poky-93431249a6260da7bd29ee3ca32145d89e=
5b8259.tar.bz2</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
A gpg signed version of these release notes is available at:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/R=
ELEASENOTES" id=3D"OWA54d97ba6-bf88-87f9-6ca4-6865e30f53fe" class=3D"OWAAut=
oLink">https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/RELEA=
SENOTES</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Full Test Report:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/t=
estreport.txt" id=3D"OWAfb074f90-79d3-86fa-5c17-ba593fe580d1" class=3D"OWAA=
utoLink">https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/tes=
treport.txt</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Please note that this is the last planned release for the 4.0.X kirkstone s=
eries as our 4 year LTS period has come to an end.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); --dar=
kreader-inline-color: var(--darkreader-text-000000, #ffffdd);" data-darkrea=
der-inline-color=3D"">
Due to ongoing maintenance on the kernel.org mirrors, mirroring to kernel.o=
rg is currently delayed.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Thank you for everyone's contributions to this release.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
chee.yang.lee@intel.com</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Yocto Project Build and Release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
yocto-4.0.35 Release Notes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
&nbsp;Repositories/Downloads</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: ce6734c68649739c635675a133fa77edb9865028</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: yocto-docs-ce6734c68649739c635675a133fa77edb9865028</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: ddb6fac4d257f4f76836055cafad529729e99c293d3b8d3dabef926fad5e725f</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/yocto-docs-c=
e6734c68649739c635675a133fa77edb9865028.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/yocto-docs-ce6734c=
68649739c635675a133fa77edb9865028.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: poky</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.yoctoproject.org/poky</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: 93431249a6260da7bd29ee3ca32145d89e5b8259</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: poky-93431249a6260da7bd29ee3ca32145d89e5b8259</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: a8e95213248c5400276611754f2c98b8d8972e166bdf41433c45fcdd2bf668cb</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/poky-9343124=
9a6260da7bd29ee3ca32145d89e5b8259.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/poky-93431249a6260=
da7bd29ee3ca32145d89e5b8259.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: 51259c7e933a2ac8ebc01604d6e65607b76b7b56</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: oecore-51259c7e933a2ac8ebc01604d6e65607b76b7b56</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: 2cd531e2a107849e7a452e71e41f22b42160979066e10d0661e97acfab125b1f</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/oecore-51259=
c7e933a2ac8ebc01604d6e65607b76b7b56.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/oecore-51259c7e933=
a2ac8ebc01604d6e65607b76b7b56.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: 34e3c9a19b8b955116109a2e9528966db3fced37</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: meta-yocto-34e3c9a19b8b955116109a2e9528966db3fced37</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: 18da6dbb745d5e4e42a93527c36751778155e3762728b0b1020b890480402dde</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-yocto-3=
4e3c9a19b8b955116109a2e9528966db3fced37.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-yocto-34e3c9a=
19b8b955116109a2e9528966db3fced37.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: meta-gplv2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.yoctoproject.org/meta-gplv2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: kirkstone</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Name: bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Repository Location: https://git.openembedded.org/bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Branch: 2.0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Tag: yocto-4.0.35</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Git Revision: 7fd0197fd5fedd23cc885b5e7e816d86a392fdf9</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Release Artefact: bitbake-7fd0197fd5fedd23cc885b5e7e816d86a392fdf9</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sha: 6c01ff2b4b0060ef3d6d3f1fc11690094b22865af4989946544d08d74b473ec9</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.35/bitbake-7fd0=
197fd5fedd23cc885b5e7e816d86a392fdf9.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.35/bitbake-7fd0197fd5=
fedd23cc885b5e7e816d86a392fdf9.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
&nbsp;Contributors</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Aleksandar Nikolic</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Antonin Godard</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Bruce Ashfield</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Fabien Thomas</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Hitendra Prajapati</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Jinfeng Wang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Ken Kurematsu</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Kristiyan Chakarov</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Lee Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Martin Jansa</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Paul Barker</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Peter Marko</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Richard Purdie</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Ross Burton</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Shaik Moin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Vijay Anusuri</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Yanis BINARD</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Yoann Congal</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
&nbsp;Known Issues</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
N/A</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Security Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
alsa-lib: Fix CVE-2026-25068</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
busybox: Fix CVE-2025-60876</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
curl: Fix CVE-2025-14524 CVE-2026-1965 CVE-2026-3783 CVE-2026-3784</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
ffmpeg: Fix CVE-2025-10256</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
gdk-pixbuf: Fix CVE-2025-6199</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
inetutils: Fix CVE-2026-28372</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
libarchive: Fix CVE-2026-4111</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
libpam: Fix CVE-2024-10963</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
linux-yocto/5.15: Fix CVE-2025-40082 CVE-2025-68358 CVE-2025-71089 CVE-2025=
-71220 CVE-2025-71222 CVE-2025-71232 CVE-2025-71233 CVE-2025-71235 CVE-2025=
-71236 CVE-2025-71237 CVE-2025-71238 CVE-2026-23111 CVE-2026-23112 CVE-2026=
-23169 CVE-2026-23190 CVE-2026-23193
 CVE-2026-23198 CVE-2026-23202 CVE-2026-23206 CVE-2026-23209 CVE-2026-23216=
 CVE-2026-23221 CVE-2026-23222 CVE-2026-23228 CVE-2026-23229 CVE-2026-23231=
 CVE-2026-23234 CVE-2026-23235 CVE-2026-23236 CVE-2026-23237 CVE-2026-23238=
&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
ncurses: Fix CVE-2025-69720</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
python3: Fix CVE-2024-6923 CVE-2025-15282 CVE-2025-59375 CVE-2026-0865 CVE-=
2026-24515 CVE-2026-25210</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
python3-pip: Fix CVE-2026-1703</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
sqlite3: Fix CVE-2025-70873</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
tiff: Fix CVE-2025-61143 CVE-2025-61144</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
vim: Fix CVE-2026-25749 CVE-2026-26269 CVE-2026-28418 CVE-2026-28419 CVE-20=
26-33412</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
bitbake: tests/fetch: Avoid using git protocol in tests</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
build-appliance-image: Update to kirkstone head revision</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
contributor-guide/submit-changes.rst: Added missing word</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
create-pull-request: Keep commit hash to be pulled in cover email</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
createrepo-c: Fix createrepo-c-native build on GCC14 hosts (e.g. Fedora 41)=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
gtk+3: fix incompatible-pointer-types errors for native build on Fedora 41<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
libcomps: Fix libcomps-native build on GCC14 hosts (e.g. Fedora 41)</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
libpam: re-add missing libgen include</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
libtheora: set CVE_PRODUCT</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
linux-yocto/5.15: update to v5.15.201</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
lsb.py: strip ' from os-release file</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
migration-guide: add release notes for 4.0.33 4.0.34</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
oeqa/manual: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
oeqa/sdk: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
oeqa/selftest/git-submodule-test: Default to https git protocol for YP/OE r=
epos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
overview-manual: escape wildcard in inline markup</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
poky.conf: Bump version for 4.0.35 release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
python3: upgrade to 3.10.20</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
README.OE-Core: update contributor links and add kirkstone prefix</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
recipes: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
recipetool: Recognise https://git. as git urls</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
ref-manual/system-requirements.rst: update end-of-life distros</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
scripts/install-buildtools: Update to 4.0.34</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
scripts: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
selftest/scripts: Update old git protocol references</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
tcl: skip http11 tests</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
tiff: set status of CVE-2025-61145 as fixed by patch for CVE-2025-8961</div=
>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); --dar=
kreader-inline-color: var(--darkreader-text-000000, #ffffdd);" data-darkrea=
der-inline-color=3D"">
tzdata,tzcode-native: Upgrade to 2026a</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797FB4D5EDB4D00916B7982B9352BL4PR11MB8797namp_--

