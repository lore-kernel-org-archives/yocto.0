Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9FDC282D1
	for <webhook@archiver.kernel.org>; Thu,  6 Mar 2025 05:17:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by mx.groups.io with SMTP id smtpd.web10.5554.1741238218837157513
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 21:16:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=KV+cEwmw;
 spf=pass (domain: intel.com, ip: 192.198.163.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1741238219; x=1772774219;
  h=from:to:subject:date:message-id:mime-version;
  bh=3EVUWX+J9Vl6ty98R5n96rtYAOURrum5Qt5TCZumIQU=;
  b=KV+cEwmw7RwM84EzkoQHvLSc89O3MTiXOYm0mCCXlUOZC1gOPhZ8w4Lr
   6tCVsyZvtzdGLFKR39B3ZTa3vZHRzWNifIVxx0CSKgHCZhO0OlWyDbiK6
   uPDRkdUwImo2paSFZOTxi4fqoRDVi+MdCXkIV0rwlQ6FwG6ZAPvxJEANV
   NSpOflFifIAma68JSz/wkFovDVvkkcB5eaYbdury8YY6lRzzyWPPp8j6h
   CF180Q0UiEB2eyV8FDGA1m+LXQ7AkTd85qNO1qKG/iN6lAq/invhCjcHk
   g9fly8+7r+oitCZ6w4GHqn9kdcIvu9uJLIy23YY4HdAfgdL27VAMJZJaK
   Q==;
X-CSE-ConnectionGUID: IKiuyTNbQd6wHSatIF2sXQ==
X-CSE-MsgGUID: ine4sM6DSESkNONSCUIBXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45040345"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; 
   d="scan'208,217";a="45040345"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Mar 2025 21:16:58 -0800
X-CSE-ConnectionGUID: a5W9AQKxReOJQf9+PbFMgQ==
X-CSE-MsgGUID: kbYc8nAQSLSkaVMPjFC2fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208,217";a="123056561"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 05 Mar 2025 21:16:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 21:16:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 21:16:57 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 21:16:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r6iME6LnvRq3IoTzvwSUby1qRl6Xqk7YXelJt/ESBlRVnFCbb9fdKj6Ge1YaQcHi2cmHYScEGM4HUSSS3IJGTRe/xnSLQaB+1j4nSyV9W+wbYWb0IhvYkh5ABMUYZeeLZZ1yjOong70wrDd9iXas75Sz9vV1RLUZqiQLElBwoCl7nXneaNHiQeHMJPfgIFSLksBEjCavzFMN8UEwBYraIWbb6ueaTuqeFoUCLnUxqlGnYt86oZimW8U/Tx9MHwGxpDTHlDZHN1fm/Df1kppo3Daybc0kRWcJ0aNfJ02xoGpWD1gIvBySZ3uNGD3m+THEHlaV81IQ/TK+MvvRLhIWpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GJXONzYvakxjvi2GLtEGCGpaH2C/AukhMVNoD4fcGqc=;
 b=vnDYW8ncVYa4eZlS8Ch31h7MZwuDlt4jnur/sheSQ5AM/huVXpxzH8Z5zlELsov+jNEOAuQM85jRruoH005P2uNlHdZskSH59cJTrNMWffhFW567Ws7pBxtcJXfZcRRT25ou1ZPWcGXY5+8bu4iMak15/W0GgugjpkEGxR0JtVdGAUML4VmOS+7PdFrL5btUEUagbrZc7oRgh89RbxihgBU4CWpYxYr8XnVoHFkt0VlvWpzrXjYTm5Aia20smm04h8gxW3ukVPaSjOJfUmcS3jYuWJZXaVbl1JBAt0eRAiys3IFHNmfcrCyUfbVn2fVY65U04+Mo13evdhbQ5xuUsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA1PR11MB6758.namprd11.prod.outlook.com (2603:10b6:806:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Thu, 6 Mar
 2025 05:16:22 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%6]) with mapi id 15.20.8511.015; Thu, 6 Mar 2025
 05:16:22 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.1.3 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.1.3 is Released
Thread-Index: AduORoN8gMPCHx+3S/6EDEHzWJwpFw==
Date: Thu, 6 Mar 2025 05:16:22 +0000
Message-ID: <BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA1PR11MB6758:EE_
x-ms-office365-filtering-correlation-id: 5156098d-53a0-4964-edbd-08dd5c6e0924
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KcNcrqE56gwzwYGMAMLvXln717VcOL1E429aLF5/ZmRvWWtcYiHWOgQzW1jR?=
 =?us-ascii?Q?7xKcn4bOxOj7ayBoJKOfWFaoPmArvEwtmRHn5VVXfoVLKUcs3JcSNWRWPBie?=
 =?us-ascii?Q?ypxGmoZ+ualtuq2SmWi0UUkZOdkuQ7uZKgU5vFnZw37kg3e7kig1V+iR1QNx?=
 =?us-ascii?Q?n3EkjmF4G239lA4e9BfryGDQ+szOFrIw6Bmrbi98RFhbqU7wMaJLj27sGR0X?=
 =?us-ascii?Q?wBeopSKCMZY9OTGH3aC89mpgNrArQRkep0q/zrfDLBtLjTW5XKlnvi1iPu6i?=
 =?us-ascii?Q?wQIiVi8oDcCEyrl+PpQHhouYqpsHL9MR4A7RTpUkgf8xS3eqZexiEbL/RNKA?=
 =?us-ascii?Q?YQSz/xzlWHAvxoje9zlw2p3tkSDd7EG3e19Hfcxmd/aeB/bFvMvf5OjNc+ZN?=
 =?us-ascii?Q?NBeG35nQrUDV/IrI3NOF1+WWG7rnqJ7gsxWJKIm64ef7RvZ+gYyMPiwWjegg?=
 =?us-ascii?Q?bGihjriKmh9CKsHPmoApCe99bpXyKWKRD/+4b39DdL4V7pKjA85l1EmuHHMh?=
 =?us-ascii?Q?l786G9Q5SSWgyYR8T88lP+2PCghfCbXnP7Kky4XVJyoreOwV1kRiRrYr3m8N?=
 =?us-ascii?Q?t65wCzKEMj1r6A+1Am0SqTM9oyCtu43voYvPZ6yP5nR7MS5ow0CL0ME4NaZq?=
 =?us-ascii?Q?bs9XzJa537xdGZUkfVhb36pqun6j2+XRSEzFetiU9MLNkxb1Tpu8bqFEBkvc?=
 =?us-ascii?Q?I1+KFHAkKfAlA+HdOBh5sUu0PQEIvhpVoQi03YSlscIXIcbZZYFvJg5Ztucl?=
 =?us-ascii?Q?Hkva/MpxOW3g2DhDrpA5jr/9rU2sOlEmfOTolTRst94zTLLRF/ABE6SPPmXZ?=
 =?us-ascii?Q?l26gnI8E7tQacp8N14bjqaAgr1CGnwSUdI0T3jewJonFshtmdamai2wywFTR?=
 =?us-ascii?Q?x2trzkFGJ0uiJZdRnEapxRs119shWclcbifgL02s8PVVu0FFgOn7/t7yni6N?=
 =?us-ascii?Q?MnXhzZyMai9JNT4kSb58b39tk7Rtlr83I+82/sg//nLLFmSW8OZ+RmeWwI7r?=
 =?us-ascii?Q?Xm4dztq0pundqmI3aKmWxSGUre4HAgM2LtjujrG7eOFzp3knH7qcW3wpYvvX?=
 =?us-ascii?Q?eAjz0qmYqe0ZMh2kkzhdO5yY9NjB/B2AmDW/TxatBTGEGXF1b2Ju97u0C2ao?=
 =?us-ascii?Q?bpkGbokViUN8laXJd/zhIm72OiT/pGQD7OP2q6rAQtScEu6P13ZEXRlfcHLV?=
 =?us-ascii?Q?KEAG+1MxMY9sQcFrmATCl77GMP/gsGDxusZlX0H+dtXzOgrxy8RsalH7JnB7?=
 =?us-ascii?Q?npPUYz1GBsUGizSOsUo8CYeU05DafwSTU2aAkuLtnGow6/9f3qXIWlpmnLI4?=
 =?us-ascii?Q?6oOreuNhGqBDETVof9HFdrVgJDrv5RA8R1GzmaKyLHZbkVnIef5F9bIrMuVJ?=
 =?us-ascii?Q?LOltGlxKHhOwNTxbA9LSIIgbZR6o?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BkuA8IaMyBCTh+n7EksF4+/IRuDondrFpaNmVOSt0iOjF24pHs7z6JjOCp7d?=
 =?us-ascii?Q?vuknQk1ije5C7+NYxXrWkgcbDFrgKJjvdDCASq5bEgC63a8v4RG8919MZVmc?=
 =?us-ascii?Q?4PL9SFmoIMvuzR4DCQOgb8QId4yOmEHrMPQfs0ArVBT8/Srw9htn/4Mxu4hf?=
 =?us-ascii?Q?LrMf7bNmaQ0mu2fgMHL8UPO0tVs66zbhQN3UGrhuivfhn9dfR2Px83Vr6Sz+?=
 =?us-ascii?Q?+JZb/dfMnLJudL0V/s3/Nm9gbp4qYehgwQiMsz19iMhkNK7gwB528R01WjDt?=
 =?us-ascii?Q?jaBFvFzuZb+ym2yVZfk9j+Mz8/+QWUgQGhst1opxIbZTThvjYbRS9aUonrI9?=
 =?us-ascii?Q?j8LlSRdOCXnllOzp+fEFlWMv4Fv8JYURUboFXYfn+88wdTN8CcCVrcwyzind?=
 =?us-ascii?Q?Fw26LVNKFO/u5G1Gy7R5CppaoWu+KH7gMOck5k8VfHcWJaj+qyX/jmEmVL+h?=
 =?us-ascii?Q?3Jus/uS/+xbx/bfTWnSLEQjbTGFuf0IJQZrSJVdhFDVecwJY3g0hJEqWb5c+?=
 =?us-ascii?Q?dIVcLK+O9sdJhzPB0owy3pAnr1CDMla7Mla1dcbspU5HWjuVN0s+1l495AS5?=
 =?us-ascii?Q?1B1fSWw5WZV7/QYxInmh9iySU1gcNwfxw/K+tvoMhChBZ4GJ0gBWyfDUdvLj?=
 =?us-ascii?Q?pKzSaU4djGlADEImB/S1dck21moGgYKgrayKAm4fLluikvAqQqVhPjEsbKx7?=
 =?us-ascii?Q?fKTqTyMnpVp2Xv+OkKm0Q/kSVsiBYqz8SO86nE3eCadmzm0fb7246cKpfKrv?=
 =?us-ascii?Q?dwRgXBeeSMnahNI8vdnck8le83LSZ5NtM4yZ1SXcwKANKvxtyGqSppGZ4fBG?=
 =?us-ascii?Q?XmMum7xij/xbIpo9xBy1Mtw+ryy7Ukgb3fPiwVgDH/GAJpCQLeONPqhEQXZF?=
 =?us-ascii?Q?m4pA4pJzlV6eHKejenWRu0t8I/IAmX2RVDQdu0fhXGZsFBYP4dSeHwt2N3gX?=
 =?us-ascii?Q?X6/KKejfg2U5JKXue5efLDi45YBY2Q9tQCve/fE/p4iOOD01XMitY+iqVdur?=
 =?us-ascii?Q?WrER9TGe5nR1M5vdYOnGDm7bMZWZrJV4vuyiScS8XXcVblvcel//dW/S1taO?=
 =?us-ascii?Q?FtKM78haUUg8S1CP3FzS0YsY1RWfIq07Rd67GYIutuX4zjRnoNQHURXlbC8m?=
 =?us-ascii?Q?oBbYFT4QI6rapT8iXbnyVaHpk7nz73RSd7+CadKMG65H7bW6IqvCrJbAZ5bl?=
 =?us-ascii?Q?MMFdPR0f0ZODpQDg1Dj4CiD65Rpfs5oBM9JIq753xG4zPyTSjFNMHPTQFnWD?=
 =?us-ascii?Q?EYUtFd0/RE6PtwlD72P7J5zhBNQFtXSKkJTh/ZEjAiTlxiJjgcLKOSuWdWYg?=
 =?us-ascii?Q?dkRZTQXNLLhzksZc0j9F/+Cacd5+uTsMLlDxzuM1lmhkzflHMm2A8IeqHnDQ?=
 =?us-ascii?Q?y1Qdr3LoFUorWvhRt3faaqja+bSQcPR2TIT+r3LJ27+Gq3HSKVWfrX31LsCc?=
 =?us-ascii?Q?uFysT6whQu2ILbpiffzybpWWyyI5Z8PbWToqXefL6Y0SB8yuCiha7jZfGN3c?=
 =?us-ascii?Q?2XbeH0TgZLVH9Gm5ZYzCGeLLsYHjXufZY9Dxfd+okJwsCULm7lLb4d9wKRlJ?=
 =?us-ascii?Q?sdsdeJu2SMOeKSeXz1lDeyjVGzi4iw+zdqPCHR38?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5156098d-53a0-4964-edbd-08dd5c6e0924
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 05:16:22.5643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MhslKlzkxntpm2xgSWA0CSzQHIHaP0qbba6cocIChiax3iSIABXQNa9ddvHVN7lRFmuSWq6D43AvXKH3Zf92Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6758
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Mar 2025 05:17:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64928

--_000_BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.1.3 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/poky-11a8dec6=
e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2
https://mirrors.kernel.org/yocto/yocto/ yocto-5.1.3/poky-11a8dec6e29ac0b2fd=
942c0fc00dd7fc30658841.tar.bz2<https://mirrors.kernel.org/yocto/yocto/yocto=
-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2>

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--------------------------
yocto-5.1.3 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: styhead
Tag: yocto-5.1.3
Git Revision: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
Release Artefact: poky-11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
sha: 9ebcacaab53058fd97b06134e06b5883df3c7ddb25dae43a2f3809c4f65d24b5
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/poky-11a8dec6=
e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/poky-11a8dec6e29ac0b2fd9=
42c0fc00dd7fc30658841.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: styhead
Tag: yocto-5.1.3
Git Revision: 35ffa0ed523ba95f069dff5b7df3f819ef031015
Release Artefact: oecore-35ffa0ed523ba95f069dff5b7df3f819ef031015
sha: 67efedf0afa9ac9e4664f02923a4c5c2429f2f1be697e39f9cbffb9e3f2d9d2c
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/oecore-35ffa0=
ed523ba95f069dff5b7df3f819ef031015.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/oecore-35ffa0ed523ba95f0=
69dff5b7df3f819ef031015.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: styhead
Tag: yocto-5.1.3
Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/meta-mingw-77=
fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/meta-mingw-77fe18d4f8ec3=
4501045c5d92ce7e13b1bd129e9.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.10
Tag: yocto-5.1.3
Git Revision: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
Release Artefact: bitbake-58e5c70a0572ff5994dc181694e05cd5d3ddaf66
sha: 8b1d8aa3de6ca8c520f1b528e342e06de0cff918a11d77862c499185a9ba8fec
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/bitbake-58e5c=
70a0572ff5994dc181694e05cd5d3ddaf66.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/bitbake-58e5c70a0572ff59=
94dc181694e05cd5d3ddaf66.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: styhead
Tag: yocto-5.1.3
Git Revision: fd9c744d6e73a5719e61a3c0063b1602ca386e91


---------------
Contributors
---------------
Adrian Freihofer
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Bruce Ashfield
Chris Laplante
Divya Chellam
Harish Sadineni
Jiaying Song
Joerg Schmidt
Lee Chee Yang
Mikko Rapeli
Peter Marko
Richard Purdie
Ross Burton
Simon A. Eugster
Steve Sakoman


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
go: Fix CVE-2024-45336 CVE-2024-45341 CVE-2025-22866
linux-yocto/6.6: Fix CVE-2024-36476 CVE-2024-53179 CVE-2024-56582 CVE-2024-=
56703 CVE-2024-57801 CVE-2024-57802 CVE-2024-57841 CVE-2024-57882 CVE-2024-=
57887 CVE-2024-57890 CVE-2024-57892 CVE-2024-57895 CVE-2024-57896 CVE-2024-=
57900 CVE-2024-57901 CVE-2024-57902 CVE-2024-57906 CVE-2024-57907 CVE-2024-=
57908 CVE-2024-57910 CVE-2024-57911 CVE-2024-57912 CVE-2024-57913 CVE-2024-=
57916 CVE-2024-57922 CVE-2024-57925 CVE-2024-57926 CVE-2024-57933 CVE-2024-=
57938 CVE-2024-57939 CVE-2024-57940 CVE-2024-57949 CVE-2024-57951 CVE-2025-=
21631 CVE-2025-21636 CVE-2025-21637 CVE-2025-21638 CVE-2025-21639 CVE-2025-=
21640 CVE-2025-21642 CVE-2025-21652 CVE-2025-21658 CVE-2025-21665 CVE-2025-=
21666 CVE-2025-21667 CVE-2025-21669 CVE-2025-21670 CVE-2025-21671 CVE-2025-=
21673 CVE-2025-21674 CVE-2025-21675 CVE-2025-21676 CVE-2025-21680 CVE-2025-=
21681 CVE-2025-21683 CVE-2025-21684 CVE-2025-21687 CVE-2025-21689 CVE-2025-=
21690 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699
pyhton3: Fix CVE-2024-12254, CVE-2025-0938 and 3 other vulnerabilities (gh-=
80222, gh-119511 and gh-126108).
socat: Fix CVE-2024-54661
vim: Fix CVE-2025-22134 CVE-2025-24014


---------------
Fixes
---------------
bitbake: bblayers/query: Fix using "removeprefix" string method
bitbake: cooker: Make cooker 'skiplist' per-multiconfig/mc
bitbake: tests/fetch: Fix git shallow test failure with git >=3D 2.48
boost: fix do_fetch error
build-appliance-image: Update to styhead head revision
classes/nativesdk: also override TUNE_PKGARCH
classes/qemu: use tune to select QEMU_EXTRAOPTIONS, not package architectur=
e
cmake: apply parallel build settings to ptest tasks
contributor-guide/submit-changes: add policy on AI generated code
cve-check: fix cvesInRecord
cve-check: restore CVE_CHECK_SHOW_WARNINGS functionality
dev-manual/building: document the initramfs-framework recipe
devtool: ide-sdk recommend DEBUG_BUILD
devtool: ide-sdk remove the plugin from eSDK installer
devtool: ide-sdk sort cmake preset
devtool: modify support debug-builds
docs: Add favicon for the documentation html
docs: Fix typo in standards.md
docs: Update autobuilder URLs to valkyrie
enchant2: correct SRC_URI and other uris
go: upgrade to 1.22.12
libnsl2: set CVE_PRODUCT
libxml-parser-perl: correct SRC_URI
linux-yocto/6.6: update to v6.6.75
linux: Modify kernel configuration to fix runqlat issue
lrzsz: update SRC_URI to avoid redirect
migration-guides: add release notes for 4.0.24, 5.0.6, 5.0.7 and 5.1.2
oe-selftest: devtool ide-sdk use modify debug-build
oeqa/gitarchive: Fix syntax warning
poky.conf: bump version for 5.1.3
python3: upgrade 3.12.9
ref-manual/faq: add q&a on systemd as default
resulttool/store: Fix permissions of logarchive
rust-target-config: Fix TARGET_C_INT_WIDTH with correct size
scripts/install-buildtools: Update to 5.1.2
sdk-manual: extensible.rst: devtool ide-sdk improve
sdk-manual: extensible.rst: update devtool ide-sdk
systemd: set CVE_PRODUCT
test-manual/ptest: link to common framework ptest classes
test-manual/reproducible-builds: fix reproducible links
vim: Upgrade 9.1.1043




--_000_BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2BL4PR11MB8797namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
We are pleased to announce the Yocto Project 5.1.3 Release is now available=
 for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/po=
ky-11a8dec6e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2">https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.1.3/poky-11a8dec6e29ac0b2fd942c0fc00dd7=
fc30658841.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd=
897f0e69e46a5.tar.bz2">https://mirrors.kernel.org/yocto/yocto/<span style=
=3D"font-size:12.0pt;color:windowtext;text-decoration:none">
</span>yocto-5.1.3/poky-11a8dec6e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2</a=
><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/testreport.txt</a>=
<o:p></o:p></span></p>
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
 and Release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.1.3 Release=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 11a8d=
ec6e29ac0b2fd942c0fc00dd7fc30658841<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-11a8dec6e29ac0b2fd942c0fc00dd7fc30658841<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 9ebcacaab53058=
fd97b06134e06b5883df3c7ddb25dae43a2f3809c4f65d24b5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.3/poky-11a8dec6e29ac0b2fd942c0fc00=
dd7fc30658841.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.3/poky-11a8dec6e29ac0b2fd942c0fc00dd7fc306588=
41.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 35ffa=
0ed523ba95f069dff5b7df3f819ef031015<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-35ffa0ed523ba95f069dff5b7df3f819ef031015<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 67efedf0afa9ac=
9e4664f02923a4c5c2429f2f1be697e39f9cbffb9e3f2d9d2c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.3/oecore-35ffa0ed523ba95f069dff5b7=
df3f819ef031015.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.3/oecore-35ffa0ed523ba95f069dff5b7df3f819ef03=
1015.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 77fe1=
8d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4c7f8100a3675d=
9863e51825def3df5b263ffc81cd57bae26eedbc156d771534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.3/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.3/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b=
1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.10<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 58e5c=
70a0572ff5994dc181694e05cd5d3ddaf66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-58e5c70a0572ff5994dc181694e05cd5d3ddaf66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 8b1d8aa3de6ca8=
c520f1b528e342e06de0cff918a11d77862c499185a9ba8fec<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.3/bitbake-58e5c70a0572ff5994dc1816=
94e05cd5d3ddaf66.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.3/bitbake-58e5c70a0572ff5994dc181694e05cd5d3d=
daf66.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: fd9c7=
44d6e73a5719e61a3c0063b1602ca386e91<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joerg Schmidt<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Simon A. Eugster<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2024-45=
336 CVE-2024-45341 CVE-2025-22866<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2024-36476 CVE-2024-53179 CVE-2024-56582 CVE-2024-56703 CVE-2024-5780=
1 CVE-2024-57802 CVE-2024-57841 CVE-2024-57882 CVE-2024-57887 CVE-2024-5789=
0 CVE-2024-57892 CVE-2024-57895 CVE-2024-57896
 CVE-2024-57900 CVE-2024-57901 CVE-2024-57902 CVE-2024-57906 CVE-2024-57907=
 CVE-2024-57908 CVE-2024-57910 CVE-2024-57911 CVE-2024-57912 CVE-2024-57913=
 CVE-2024-57916 CVE-2024-57922 CVE-2024-57925 CVE-2024-57926 CVE-2024-57933=
 CVE-2024-57938 CVE-2024-57939 CVE-2024-57940
 CVE-2024-57949 CVE-2024-57951 CVE-2025-21631 CVE-2025-21636 CVE-2025-21637=
 CVE-2025-21638 CVE-2025-21639 CVE-2025-21640 CVE-2025-21642 CVE-2025-21652=
 CVE-2025-21658 CVE-2025-21665 CVE-2025-21666 CVE-2025-21667 CVE-2025-21669=
 CVE-2025-21670 CVE-2025-21671 CVE-2025-21673
 CVE-2025-21674 CVE-2025-21675 CVE-2025-21676 CVE-2025-21680 CVE-2025-21681=
 CVE-2025-21683 CVE-2025-21684 CVE-2025-21687 CVE-2025-21689 CVE-2025-21690=
 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pyhton3: Fix CVE-20=
24-12254, CVE-2025-0938 and 3 other vulnerabilities (gh-80222, gh-119511 an=
d gh-126108).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">socat: Fix CVE-2024=
-54661<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-2=
2134 CVE-2025-24014<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bblayers/q=
uery: Fix using &quot;removeprefix&quot; string method<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: cooker: Ma=
ke cooker 'skiplist' per-multiconfig/mc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Fix git shallow test failure with git &gt;=3D 2.48<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">boost: fix do_fetch=
 error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to styhead head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/nativesdk: =
also override TUNE_PKGARCH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/qemu: use t=
une to select QEMU_EXTRAOPTIONS, not package architecture<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: apply parall=
el build settings to ptest tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes: add policy on AI generated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: fix cves=
InRecord<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: restore =
CVE_CHECK_SHOW_WARNINGS functionality<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/building=
: document the initramfs-framework recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk re=
commend DEBUG_BUILD<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk re=
move the plugin from eSDK installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk so=
rt cmake preset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: modify sup=
port debug-builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Add favicon f=
or the documentation html<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Fix typo in s=
tandards.md<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Update autobu=
ilder URLs to valkyrie<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">enchant2: correct S=
RC_URI and other uris<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade to 1.22=
.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libnsl2: set CVE_PR=
ODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml-parser-perl:=
 correct SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.75<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux: Modify kerne=
l configuration to fix runqlat issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lrzsz: update SRC_U=
RI to avoid redirect<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.24, 5.0.6, 5.0.7 and 5.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oe-selftest: devtoo=
l ide-sdk use modify debug-build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/gitarchive: Fi=
x syntax warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade 3.=
12.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/faq: add=
 q&amp;a on systemd as default<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool/store: F=
ix permissions of logarchive<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-target-config:=
 Fix TARGET_C_INT_WIDTH with correct size<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk-manual: extensi=
ble.rst: devtool ide-sdk improve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk-manual: extensi=
ble.rst: update devtool ide-sdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: set CVE_PR=
ODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/ptest: =
link to common framework ptest classes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/reprodu=
cible-builds: fix reproducible links<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Upgrade 9.1.10=
43<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2BL4PR11MB8797namp_--

