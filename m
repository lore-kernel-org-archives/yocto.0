Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA027FD9E2C
	for <webhook@archiver.kernel.org>; Fri, 27 Feb 2026 00:52:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.85268.1772153533539739289
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Feb 2026 16:52:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=UmJan8Zq;
 spf=pass (domain: intel.com, ip: 198.175.65.20, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772153534; x=1803689534;
  h=from:to:subject:date:message-id:mime-version;
  bh=1STWRwmvwm3fmreFk5wdq8clHEtQGWsuu6GUMt4/ONY=;
  b=UmJan8ZqX5pQwNG0Hoob7uaErGbONwKIZ4+ig+GlI5Qy7fGqvSaDuxF3
   LMYXmcx33u3LnvruPqJHq8YsHuynVeMVI+4+zBSqOyrXVg7dTUgz42Emu
   Gu3nL7DpCtMWL86KwnYNiCqOZo2jLDtDgjhPXxm1yHOyN2+amgh/rVi+u
   6ijV2jhkdlZy+cf+zpWTUkLJQ6VOnvsAypU2D/isjffblK8GkvaDsXj/H
   avspeBg2riciew9U/RiCm7rWioQGX/8NBYGI9VvLfYAyd2vBFgrDpnSNe
   hslCqq9RsusHCy30Os8KmeOl2WqafV0o81craPpvX4bUWXN2qpIzOceKb
   g==;
X-CSE-ConnectionGUID: C1ps714DQ8GgSVegbXtLQQ==
X-CSE-MsgGUID: jz647BitQty2NcDOwNKnuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72933852"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208,217";a="72933852"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 16:52:13 -0800
X-CSE-ConnectionGUID: R/logrRnTLqbyRUS9xATjw==
X-CSE-MsgGUID: ouXBJ1cwQQ+iglgQv4d/sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208,217";a="221248489"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 16:52:13 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 16:52:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 16:52:12 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 16:52:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u1tF24EEMti89gJVP3fPsFRfxZFcR7KxRIuMV2l273lWSsjzqaJMvr7FUCRHVqncoovLBZRGG6us+OiO5LT8/yhtTn0nL7cih6IZ4Bcwi/x4PoWjLFpQb3Q4cfUBWxn6d8m8J6A6ERmKaQrdR0yKI1I5JTY0ZS8LYr4nICM8No9hACz/v8fA1p+s09tWKD25OrfcBmr5fbd5lsW/gDV8Om3wSY+3/zmfHgvrMMdTWAv6TNaRO/7tt33W8AtW3u8KvKB03uijf1KdglffZJcO1a83qirNzV5C88AvfBmwsWwBA+8QcSmlz5MuuyYYRpQawWlGSdowcdZnhkNufJ7Rfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1STWRwmvwm3fmreFk5wdq8clHEtQGWsuu6GUMt4/ONY=;
 b=UJnEW7rUAaLTLfI73CnRcQLQem33c2qZb6hyDzWTd2uDO9sh0KYdQntGA5c4qVXEcPNQF6VswRHLdHTCxyUJDqhZLqWGFEAPtsVqkZCiCTbVrlbjqMsOC5ezMDUkUyx8mUr3yfLPv9dLybTs11+5SN6BFWr6A+7EtC7VHjQUlGaFVMFGILQUqfr65h18QW2ocEttrJ8NyqlpYGe/t63iFY3gF96f1PH/v2ibMhN7hUly7IWOzilo6LrOOxaPhiJHp636FqI6g8rw7HrGwz4XEHSoAJjFTHDTmqSunPNUh9z8tvI2bU3wbLzRogmrHXJb/1kaBAmfvLKK07lbz5TiaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA0PR11MB7211.namprd11.prod.outlook.com (2603:10b6:208:43f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 00:52:03 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 00:52:03 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.33(kirkstone-4.0.33) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.33(kirkstone-4.0.33) is
 Released
Thread-Index: AQHcpwhofWeruSXa9kGZ3tLZU0a2FA==
Date: Fri, 27 Feb 2026 00:52:03 +0000
Message-ID: <BL4PR11MB8797793B9D7BF1A9EA6E54CBB972A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA0PR11MB7211:EE_
x-ms-office365-filtering-correlation-id: 2ab0d388-c261-4f5c-85f2-08de759a6c47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|10070799003|376014|38070700021|8096899003|13003099007;
x-microsoft-antispam-message-info: 66BhGp3DtWKNpRs6orqIHbdpoohAyFEgGK6AU5O0Wz/CyLGZxihW55JXWsVd7NusLqiJ0sciCDduZmCjWbxSH2ltVSgtIFX5XMdEPLl6WHI5GmXFbETGmjBqHk816utR+SSi1ogSMjGFq/KL+Y6xNFYSNEJfxuHM7ba017fk0yKb9GGCwE7NGa5qK14Mi7BMqGAxnWFziPrEC7ejhfg0Sr2qD6O05Zode4kINXvKLcQSTXjLT/S8BXYonlLwXqlsFU1fN1Ti2NWfV0KaeFg+HEs4eRH1yShXG4qOhUwWqG4m9DdFQHwBEDmndj0CWa7RUP/ne+ztQNZlRpCdL+qX9g03ynKfnNBgpNkLs90YH3BMdQs3ah1alzFmutzceShIyR2mfyiR6rhRG/P0/HAkmgueZs7C5vCG2aZLUJ0BwpeaHoOfh8I76szh3zIwh/R7jPCk0jptqxlHzkXYYh8WCUWcvKJregriKu4qSPNMyawpJlU+38ILmjRTmE987yJOggKqb3JjlesutJq2KpsvDDF3u4rN39AcII1/QaAsWJlfmFwM8msjV7D4B5Vq3SqU/joqvw1uSXBvXgyec+S9zGQ7tshxm0/OKCGQK2IyPEzHrxMUcuiifxPbZ1lqX0rSkjGIJ1yKT6Eq3bd/jHgl6/eFSRXy6mHnOusPvnoeFIgCL2JKq9O1giJ04CEw62NhIy8HB6yHwYmUtT7XX7r+T+4CCAdrLw7fxftcM47gMGQTNUJ6w8Es91wESuCnrGHj
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021)(8096899003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+F+fZ3Gaokx+T5Xz3mp1Eb9XgTOSqo+MmHyql2hXrmco12RK/mMCOBsaXk?=
 =?iso-8859-1?Q?BORyQAW0Lsu2r/UnYFZbBwY2kIkn/Q85mMbzIquzpV0jFYvGpyWfRflvaj?=
 =?iso-8859-1?Q?ZfF2Mf0a7/kY0vPFnaeOZDQwPWRSfmFyLxnegYQ08d2V5vLVTh7Mv2Irvr?=
 =?iso-8859-1?Q?Z/iVbWLr9dVGWni0cdH0eJogFqUvwU7N3mnll01b//3H271LOkR6LCK3ts?=
 =?iso-8859-1?Q?iO43pGom7ty8JW+Y3Zk2lpe0iWfdYh5XvUbqwCTre8OU5ydY/sKPOY4ppb?=
 =?iso-8859-1?Q?1bSA7XtjnX6MYy7impL8HX5i0y0m1zh4z4ItuJvswLnGtU+WUdjx4OPQe9?=
 =?iso-8859-1?Q?4iJhtzWJO6mwOUyQz/7onwNi8eQMSkDA7E0KncUXiOWeItkKliyUrJcJjH?=
 =?iso-8859-1?Q?1SAx9tvhB+wD2SBfghl7un1levkSyCuFhdyB0mTKggGan04vXcRrycTeD1?=
 =?iso-8859-1?Q?OqoPB2dirzFKP4t4R9ym2zXbd5Vz4pNdz/O4ueypwH8gPMlKi8wAHPePGp?=
 =?iso-8859-1?Q?JEy3PI//ElkLKkyrQ3o6JujBDuGunh8hWZ1swH0z8LsYvu2tudx9zWL+pK?=
 =?iso-8859-1?Q?OCL5704RSoElpqrqLiF7SbIQLJMeBvKG1hgNkk2D5O6nFmfVk0q1DBRCVN?=
 =?iso-8859-1?Q?fUAh5oEoReVbupcx0rXBck3zaIczz4VmAoqZRPq5JTR9deHZC26ftgaQPc?=
 =?iso-8859-1?Q?qP9dc38UT5oBchXa8pkE9KFYQjG0VXbDvJmVMa5xDKcH4g8+BGuv2anzY9?=
 =?iso-8859-1?Q?q0OjWrYKZVlgEYLAIGbTZsJ/HVLCCS4HokvQFUhZ+F/zyLUBhmyr8ajFVc?=
 =?iso-8859-1?Q?5NKAFL/0+AyfSncOq3oRlVCS5bYWiDxsD5jVaOGzgBla1h2fxfLgQzoLd3?=
 =?iso-8859-1?Q?HL3eUS8lPriI/02Xyhkb2MjY/fJnU3r8D9YpZZw8ZZSp7BTxGs2LjDPCoq?=
 =?iso-8859-1?Q?JFajEOQdBAhLhZiG1sCJPnZrZ+/kd7b/wsKUDx9MPvT8waBzX6Gb9weVKp?=
 =?iso-8859-1?Q?SE7Y5w6gLSuvj11tUlUqJR9d+9a6Hpwmtp7VMDBs02epEF4C+TMQESZiuu?=
 =?iso-8859-1?Q?uEakKU+CMEjmy6cVlcVF9EoAwPZEkFkKIC5SJISVeLWfTg1sValFpz//RQ?=
 =?iso-8859-1?Q?UfE8ZKUpMsQPIBtAyOFTJ7VrYTyJDIZIPKXv/uYMkQlR49UuHSB/nd2znm?=
 =?iso-8859-1?Q?booaAp3TmmRr/mpT4S0Y7gQ6+jNkkm1+8/34bMsHoqEG6/h1W1qRmREP+N?=
 =?iso-8859-1?Q?jxV8piMiDnTrRoQQCnKmpO/Wbb+Si2nuJoeTyiAvgIFB1GbQFdmneOF2W1?=
 =?iso-8859-1?Q?qY2CDK1P5CIlfW3SpCTPHtH+TeNurE6CzjNq7ilr3DCsdxkbLQWmxS8Ndr?=
 =?iso-8859-1?Q?t5WlQPDxyGXg4nAe6KDQZsY+FrluseZVaiTUoCm5eB4YUV02LRFRwe7GVL?=
 =?iso-8859-1?Q?Z4KuCF4JSooKguWAoszGg0FPUI/8MiyWDEFL2pOf+NwsuodFMiAGAx2Q3S?=
 =?iso-8859-1?Q?ecuvrqdNjEn7GYJKNtOW8xRp7lkbiyZLOLWHNFJ31CMas3euxKafP+wTMS?=
 =?iso-8859-1?Q?O7MAB+he1Ucvpvzuiis2D6ei6DLO+oOF+bRfVcuCOi38eWhyXJKOgM2OlB?=
 =?iso-8859-1?Q?eegf1frAOMkXJLBL6Bu2tRWVQWtNu2XfuOfilVnTYZQfj9+CWvmOd4O058?=
 =?iso-8859-1?Q?mVNrVHxEJ4jO4JGr1XDA3NdMc+ubnBnbGthqtPjtRYHPBSqbe0p2ZxKm3U?=
 =?iso-8859-1?Q?CN2gPVkKkYD/Co7PYkNJYGiOQOpbxpbWhUYwo+d0piLIZ1OySyBdK1sniM?=
 =?iso-8859-1?Q?OL13rknS6kUZau7PxWV81E74GnL4P/dBoRXReET4C27F1zLoh1fCqNIv86?=
 =?iso-8859-1?Q?L6?=
x-ms-exchange-antispam-messagedata-1: pIi39i1VxmOuoA==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797793B9D7BF1A9EA6E54CBB972ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ab0d388-c261-4f5c-85f2-08de759a6c47
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 00:52:03.4675
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e+oWGUqAcMd+H+zyBzRe68Vyg6uA6w7gSoyUeeC7tzxFFlqS5qKutttXoX3SPmlKvdGRB3bLdmwPxcB9Djgp8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7211
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Feb 2026 00:52:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66280

--_000_BL4PR11MB8797793B9D7BF1A9EA6E54CBB972ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.33 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/poky-ff118ed=
e826a9ae45eb35025a5f7f612880fba01.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/poky-ff118ede826a9=
ae45eb35025a5f7f612880fba01.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-4.0.33 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9
Release Artefact: yocto-docs-6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9
sha: 42a0eb89c8f87a9a966aecb8265f463486d4383cb67d1e67382ddf9d4d7f88b5
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/yocto-docs-6=
799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/yocto-docs-6799b1b=
e5d48f4bf5dcd0b16c2dbc2e297d4ecd9.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: ff118ede826a9ae45eb35025a5f7f612880fba01
Release Artefact: poky-ff118ede826a9ae45eb35025a5f7f612880fba01
sha: 2a8c24406fa96fc52728a96f25136a3fd7ee652eea6e12319a6b7c0457ccfdfd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/poky-ff118ed=
e826a9ae45eb35025a5f7f612880fba01.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/poky-ff118ede826a9=
ae45eb35025a5f7f612880fba01.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
Release Artefact: oecore-036f76ea35c49a78d612093dcd8eb1fac7ded8d7
sha: fc180ff224529fd73a7aec4a4cf5beb40fba17646ee694715cf603baba26610c
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/oecore-036f7=
6ea35c49a78d612093dcd8eb1fac7ded8d7.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/oecore-036f76ea35c=
49a78d612093dcd8eb1fac7ded8d7.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: 677379f21941363d50f9d946963542b4ccb7e27c
Release Artefact: meta-yocto-677379f21941363d50f9d946963542b4ccb7e27c
sha: 90f52c406f4e69748b8d73eee07b8a1247d19cc29f4893174f110a034b10415f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-yocto-6=
77379f21941363d50f9d946963542b4ccb7e27c.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-yocto-677379f=
21941363d50f9d946963542b4ccb7e27c.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.33
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.33
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2


---------------
 Contributors
---------------
Aleksandar Nikolic
Antonin Godard
Changqing Li
Deepesh Varatharajan
Hitendra Prajapati
Jiaying Song
Kai Kang
Khem Raj
Libo Chen
Liyin Zhang
Martin Jansa
Mingli Yu
Paul Barker
Peter Marko
Richard Purdie
Robert Yang
Vijay Anusuri
Yash Shinde

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-1181 CVE-2025-11494 CVE-2025-11839 CVE-2025-11840
cups: Fix CVE-2025-58436 CVE-2025-61915
curl: Fix CVE-2025-14017 CVE-2025-15079 CVE-2025-15224
dropbear: Fix CVE-2019-6111
glib-2.0: Fix CVE-2025-13601 CVE-2025-14087 CVE-2025-14512
gnupg: Fix CVE-2025-68973
go: Fix CVE-2023-39323 CVE-2025-61727 CVE-2025-61729
go: Fix CVE-2025-58187 (update patch)
grub: Fix CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2025-61664
libarchive: Fix CVE-2025-60753 (update patch)
libpcap: Fix CVE-2025-11961 CVE-2025-11964
libsoup: fix CVE-2025-12105
libxslt: Fix CVE-2025-11731
python3: Fix CVE-2025-13836
python3-urllib3: Fix CVE-2025-66418
qemu: Fix CVE-2025-12464
qemu: Ignore CVE-2025-54566 CVE-2025-54567
rsync: Fix CVE-2025-10158
util-linux: Fix CVE-2025-14104


---------------
Fixes
---------------
build-appliance-image: Update to kirkstone head revision
contributor-guide/recipe-style-guide.rst: explain difference between layer =
and recipe license(s)
cross.bbclass: Propagate dependencies to outhash
cups: allow unknown directives in conf files
docs: Add a new "Security" section
oeqa: Use 2.14 release of cpio instead of 2.13
overview-manual/yp-intro.rst: change removed ECOSYSTEM to ABOUT
overview-manual/yp-intro.rst: fix SDK type in bullet list
overview-manual/yp-intro.rst: link to YP members and participants
overview-manual: convert YP-flow-diagram.png to SVG
poky.conf: Bump version for 4.0.33 release
pseudo: Upgrade to 1.9.2+git125b020dd2
ref-manual/classes.rst: document the image-container class
ref-manual/release-process.rst: add a "Development Cycle" section
ref-manual/svg/releases.svg: mark styhead and walnascar EOL
ref-manual/svg/releases.svg: mark whinlatter as current release
ref-manual/variables.rst: document the CCACHE_TOP_DIR variable
scripts/install-buildtools: Update to 4.0.31
test-manual/ptest.rst: detail the exit code and output requirements


--_000_BL4PR11MB8797793B9D7BF1A9EA6E54CBB972ABL4PR11MB8797namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
We are pleased to announce the Yocto Project 4.0.33 Release is now availabl=
e for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWAe30a4136-87df=
-c109-00db-9df21fd02de6" href=3D"https://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.33/poky-ff118ede826a9ae45eb35025a5f7f612880fba01.tar.bz2"=
>https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/poky-ff118e=
de826a9ae45eb35025a5f7f612880fba01.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWA9a3359c6-e9b2=
-dc7a-eaf0-9ad1b754baef" href=3D"https://mirrors.edge.kernel.org/yocto/yoct=
o/yocto-4.0.33/poky-ff118ede826a9ae45eb35025a5f7f612880fba01.tar.bz2">https=
://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/poky-ff118ede826a9ae45e=
b35025a5f7f612880fba01.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWA8d0eaf7b-7acd=
-1991-a611-9addc110a861" href=3D"https://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.33/RELEASENOTES">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.33/RELEASENOTES</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Full Test Report:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWAf4f57cac-c7bb=
-c913-1441-b0f90087b028" href=3D"https://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.33/testreport.txt">https://downloads.yoctoproject.org/rel=
eases/yocto/yocto-4.0.33/testreport.txt</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you for everyone's contributions to this release.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yocto Project Build and Release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-4.0.33 Release Notes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Repositories/Downloads</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: yocto-docs-6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 42a0eb89c8f87a9a966aecb8265f463486d4383cb67d1e67382ddf9d4d7f88b5</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/yocto-docs-6=
799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/yocto-docs-6799b1b=
e5d48f4bf5dcd0b16c2dbc2e297d4ecd9.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: ff118ede826a9ae45eb35025a5f7f612880fba01</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: poky-ff118ede826a9ae45eb35025a5f7f612880fba01</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 2a8c24406fa96fc52728a96f25136a3fd7ee652eea6e12319a6b7c0457ccfdfd</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/poky-ff118ed=
e826a9ae45eb35025a5f7f612880fba01.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/poky-ff118ede826a9=
ae45eb35025a5f7f612880fba01.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: oecore-036f76ea35c49a78d612093dcd8eb1fac7ded8d7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: fc180ff224529fd73a7aec4a4cf5beb40fba17646ee694715cf603baba26610c</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/oecore-036f7=
6ea35c49a78d612093dcd8eb1fac7ded8d7.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/oecore-036f76ea35c=
49a78d612093dcd8eb1fac7ded8d7.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 677379f21941363d50f9d946963542b4ccb7e27c</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-yocto-677379f21941363d50f9d946963542b4ccb7e27c</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 90f52c406f4e69748b8d73eee07b8a1247d19cc29f4893174f110a034b10415f</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-yocto-6=
77379f21941363d50f9d946963542b4ccb7e27c.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-yocto-677379f=
21941363d50f9d946963542b4ccb7e27c.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-gplv2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-gplv2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: 2.0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.33</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.33/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.33/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Contributors</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Aleksandar Nikolic</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Antonin Godard</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Changqing Li</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Deepesh Varatharajan</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hitendra Prajapati</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Jiaying Song</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Kai Kang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Khem Raj</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Libo Chen</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Liyin Zhang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Martin Jansa</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Mingli Yu</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Paul Barker</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Peter Marko</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Richard Purdie</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Robert Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Vijay Anusuri</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yash Shinde</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Known Issues</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
N/A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Security Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
binutils: Fix CVE-2025-1181 CVE-2025-11494 CVE-2025-11839 CVE-2025-11840</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cups: Fix CVE-2025-58436 CVE-2025-61915</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
curl: Fix CVE-2025-14017 CVE-2025-15079 CVE-2025-15224</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dropbear: Fix CVE-2019-6111</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glib-2.0: Fix CVE-2025-13601 CVE-2025-14087 CVE-2025-14512</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
gnupg: Fix CVE-2025-68973</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: Fix CVE-2023-39323 CVE-2025-61727 CVE-2025-61729</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: Fix CVE-2025-58187 (update patch)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
grub: Fix CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2025-61664</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libarchive: Fix CVE-2025-60753 (update patch)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libpcap: Fix CVE-2025-11961 CVE-2025-11964</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libsoup: fix CVE-2025-12105</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libxslt: Fix CVE-2025-11731</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3: Fix CVE-2025-13836</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3-urllib3: Fix CVE-2025-66418</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
qemu: Fix CVE-2025-12464</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
qemu: Ignore CVE-2025-54566 CVE-2025-54567</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
rsync: Fix CVE-2025-10158</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
util-linux: Fix CVE-2025-14104</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
build-appliance-image: Update to kirkstone head revision</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
contributor-guide/recipe-style-guide.rst: explain difference between layer =
and recipe license(s)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cross.bbclass: Propagate dependencies to outhash</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cups: allow unknown directives in conf files</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
docs: Add a new &quot;Security&quot; section</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oeqa: Use 2.14 release of cpio instead of 2.13</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: change removed ECOSYSTEM to ABOUT</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: fix SDK type in bullet list</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: link to YP members and participants</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual: convert YP-flow-diagram.png to SVG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
poky.conf: Bump version for 4.0.33 release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
pseudo: Upgrade to 1.9.2+git125b020dd2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/classes.rst: document the image-container class</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/release-process.rst: add a &quot;Development Cycle&quot; section=
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/svg/releases.svg: mark styhead and walnascar EOL</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/svg/releases.svg: mark whinlatter as current release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/variables.rst: document the CCACHE_TOP_DIR variable</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
scripts/install-buildtools: Update to 4.0.31</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
test-manual/ptest.rst: detail the exit code and output requirements</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797793B9D7BF1A9EA6E54CBB972ABL4PR11MB8797namp_--

