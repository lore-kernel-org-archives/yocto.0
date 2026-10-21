Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7409.1792574300026259833
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 02:18:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Y7sWcjwu;
 spf=pass (domain: intel.com, ip: 198.175.65.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1792574301; x=1824110301;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=KbST1GedepUvdB+rj4iyysLAEymTxjbbTB8zinSJPJA=;
  b=Y7sWcjwu2rAIfyQCSvF3P40+WIvSvByKgolZezQQtKnyb/Dluz+I2/Ba
   VBTdFuq/Ic7QgASX5pz97eJgYVCwhRL4K1bJxdjuFz7onZjEAwRBIh+aM
   sPQuR0j94qKegJ4+07v5/XNme6/8KxGL6g8ZhddvBY6FYnJWscMPm2NJu
   2iGWJDhByFqaUhKHG0fBMgtNrtFxQ3qm00dJFxT3dSJEmoJbKeFKYtIBA
   0se6ooEd8Eeyhfxqj+7cUXFQpsUc7mmtRS9+luHTcJABKD4q1QH1Dpnr4
   P1fzzfd6se0E634TfDEV3jzb2IaX3/UW27w7PGYN1NH95MdVkA9krALAS
   g==;
X-CSE-ConnectionGUID: ouSj+N5BRxycCqcfVa+QNg==
X-CSE-MsgGUID: QutDFX5nQOiePpBIRqVfrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11941"; a="1304333"
X-IronPort-AV: E=Sophos;i="6.27,169,1787036400"; 
   d="scan'208";a="1304333"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2026 02:18:20 -0700
X-CSE-ConnectionGUID: m9u8XsDjT6itM/q4juy7vQ==
X-CSE-MsgGUID: oyf5/emuQBiHRF4o72pgPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,169,1787036400"; 
   d="scan'208";a="3359679"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2026 02:18:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49; Wed, 21 Oct 2026 02:18:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49 via Frontend Transport; Wed, 21 Oct 2026 02:18:18 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49; Wed, 21 Oct 2026 02:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ppxJ3XVSOeu8YaTdWPujFUL9c9n9RUtYVu5PEwlW54khFDvayaDUUyvceIWeTsXaDCgMPq1nZgQDEqfj6b2lMBeaTk1VyBVf80ASEa1mXv8v1927bez9SfD/umhtOzNnY0t2QPPC5Is2LooxpXBBGGLF2MdYkhfrxEZmsRCnDZVEQqhOEt5ttXR2D8ls8tGQcJmZt219Adsqc6xlz8o2sIi65gma9x/8Q332P5LlJPfxARQ658H3rv79wMgM3yofE7/Ft1KFS1Zw3/HQdTJpIyFvv0gOCht/1IkEHhoSkCLUOYUck4yUs2s4FzSSHF+w3uIm+yfJA2GJTqu1YYsqag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=26vFjNQbnTh/iSQXfzozLvevGLee83hZQ2vnSThG9ow=;
 b=ZEPXqJsk/nONtSHUwlHkWa+4BbLBsm1mMzrvaV59WP4dPWIc9xAPD3VdmrrNHgCe1vuu9dIsaaLZqOxD6HGAwu+WvDVevsO4yA3I//hIg/ecN/BVUrRUeW8h4v8UMzzyOLuwquvEJxa1MJxnBlv4fAY3KpnIzh9IqLXmo1rJBqoPBnnoW9kEcYTm7fcUy6PtPhs2QZ1Im0KbgBu4IRgKoxNwniQzYqI2DvZcNLQsLPjhZNNTjhpJTpkYpoarnfunr7iAfqEdwzerm1vyRcWKuqo0FEW6GkGdqkdLZl/WkzqfLABMJQXLoC6ytUTRc8K2EnRDl63DwpCxeTnIZVdZAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.522.19; Wed, 21 Oct
 2026 09:18:09 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%5]) with mapi id 15.21.0522.016; Wed, 21 Oct 2026
 09:18:09 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.1 (blacksail-6.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.1 (blacksail-6.1) is Released
Thread-Index: AQHdYTupQuUMGjt0Y0iO6ivcjpVHlA==
Date: Wed, 21 Oct 2026 09:18:09 +0000
Message-ID: <BL4PR11MB8797915D07814C8C333A78C4B9662@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DM4PR11MB5325:EE_
x-ms-office365-filtering-correlation-id: c6f4c4a7-4301-4d84-0053-08df2f543973
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|23010399003|1800799024|261009221227099003|261009223027099003|10067099003|56012099006|5023799004|3023799007|6133799003|18002099003|11063799006|38070700021;
x-microsoft-antispam-message-info: ZX7ndDpkTzbK/vFVbZ3lmwsDaB5fslbSVduT54oqXrpv1L8y9fJ1RwDckdq5MqUs76vrnvoT4DsSLhZqLOO1PKg/R/fZfbx885YyMOM8e8pnpSlx4auKBZO4CpOJSlsVi9jlB9IQsJsIXNfPgd2GwG8DK4mUsBuCZyAmmQbQ4sjE5L1TFRT/TIfRrFb8n5maUGu2dY3/gZDbLhotR1mWMYO8n6117+rxzHRYG6aLAM6xfmk+7YsOZivQhnX2OWH1XvOifwSwliYyCEiH7bqh+gKEx9rY99GKmVdh4dnJ6ODURd4LZwIi7WoyUhX+F7e7x83fH+vn5ykP1J/kLxmgf5KgA44SN3SZzcpXsfIZNNBw08FPq3hmuctnGwdmSsbXtc2xFoM31NnyGbdAaoUuPZGFm4lxQaFMiyN6xV/8VJsNcscN42xiuZuK7h4h6ZB1kzYJdurGEQSEFXodstq5aN5f9mDAl89bP1fIPXY1epqKu6ZATl3I0ItUMSKHffJvugLG70WRVn/14OgiZ+pt/h1nw8wJWfV5J5dpMoKmIZgzqWxv3HVlovuWP5DY4m10SWLswRYv3KvcBZDP6xqttVuo9hy97Lt2pSFoRty1ga9dXG77wNbjr0OfA8f8FVhs6zuAOGLmYhSzX3MFNcln0abFHUh1jkAoH0OmE0tlJK0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(261009221227099003)(261009223027099003)(10067099003)(56012099006)(5023799004)(3023799007)(6133799003)(18002099003)(11063799006)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?6bQPb7wPpjnmwgaeiIn8lDbqDeX2khm8vKkOAK1r3f8D/Cc2nEP0LP8+?=
 =?Windows-1252?Q?rlGSGxICHiq6EUWW0hDcGfJIoo68iHu14kybT1+LvlyJ7O12wdsP/WCx?=
 =?Windows-1252?Q?gvbqvi7bSorIJH+Zpp31VjhCy6lnsYrR84JiXBW6X/xak80p3ACTozsG?=
 =?Windows-1252?Q?E3eud2bgHnQO1+amX5C7p0ElBOlL+U1ATCBnR6x5SQZozk4I6M8o5+T6?=
 =?Windows-1252?Q?TQ/MExcPGy7ySFk1o0hDQGhdacsN06TikFb7u3uWZAoyi3Whek0qLkEY?=
 =?Windows-1252?Q?FiXmgxZoZRic2kT6PCGcvucxW9DpRWaVm/UoQWd6N2xNfh6MVw970YF5?=
 =?Windows-1252?Q?NZDU3qMMmj82xGu8KxvJE7lcOjXCcO7oISl7kUPp6rOT9+u8KnMe9sNT?=
 =?Windows-1252?Q?oHOtfxEAHM0GaMJ38gs9Us6GSmI3H9SelgpYem9YJb/xX5KFllRfziM2?=
 =?Windows-1252?Q?lLq/Ko4bdHUYFtatRsEj7+98YHF4GmdSMraQSc6AkOGfPmUjHX0Coc87?=
 =?Windows-1252?Q?3bRMRpodQ1dpGuHSuvE25oWU0f8X4ME/9qGVcPinVbHVXvbTRFGdwFiw?=
 =?Windows-1252?Q?v9bbxsVuzsyywy8E05OXKAgpwsr8YHvjHTjBd+kUnlxqFkDfXb9JPRQj?=
 =?Windows-1252?Q?v/lIWqZoCmn8iaW2WbQIzae/viVoLldStUWrFscuU59cdyNIiRkJKr5Y?=
 =?Windows-1252?Q?meJ2DYjkjOJ9i7Ec1IDETHdyPZxU+Rzq8ZDZObJ1xixjJ5AVRNM49yzA?=
 =?Windows-1252?Q?47UqTF3o9rlfGrRMhZJMYBhT5GUT7ENRye7qoU8+g7tNRvkM9J9BWH+1?=
 =?Windows-1252?Q?mBPMJeJPWk0BvIKR+1y9BBfzamuIkqVFp4vs46dc5/sFhE6pW+Zws8jv?=
 =?Windows-1252?Q?rBct7MKE7NX5+pvpLYUAG+mYxFmM5gj8N8NcAuNvVZS9axhgPXSq84H/?=
 =?Windows-1252?Q?TrllVLUjf2lrD/PNlOD6lo93P/RE5bJ046HwdHTlhTwJuv79LgY6zoId?=
 =?Windows-1252?Q?AN8Hq3vyXGzGz0PyqRUBOtjli03zMFb5BzUn5gaj2MaO/wCcAM1K8VRV?=
 =?Windows-1252?Q?7iG/0QWBZeMw0N19A3FdocRw+r11zS8rzcvvywgFBsjjYcTJFLDJmUEh?=
 =?Windows-1252?Q?uptsJoJA2/OfOvuvqdvjyn9MWPCjnl7HX+IuYO5hOBPoJqvn5Iv7J8np?=
 =?Windows-1252?Q?7+U3zlBEtAH9/6xXe3uC5vvcnGyEhZQzPJ5rmu5+xie6HbCFbbYVnm4U?=
 =?Windows-1252?Q?5UYtGXGXBNTsbptsq2FbvHLRhEMEq+/5dX9+5P7/MMO+L3S3uSxkrqTf?=
 =?Windows-1252?Q?TC/GpJywje45ch/Tbpoea89CVxKSD6ATQ3fKwaJopskRzkzIO/5NHMd6?=
 =?Windows-1252?Q?Ix7qJxo1/wSYfrysKHmzs5ICpYaGEFEdh1cOIEofXM8iSMuQswPlSKnx?=
 =?Windows-1252?Q?19KBAb2DWXW+n9UPjCJDF/cq496db3uQ+HFZDfGuJ6S1Pu6ejVWdM2uJ?=
 =?Windows-1252?Q?xhuxXHanAT9tAt9lSNwFOlQhxqHfKnTyA7zkoG7PoQi/9WzzoHNfFAoR?=
 =?Windows-1252?Q?3oRJdEjvokN+KDf6Nq7BOLM+A53GUVw2cV1tcXuw1+OkrHNp8YBWHXEa?=
 =?Windows-1252?Q?3/6614u0cDM3OztPXWCVFLtg+BCGfr+OcOIkr0fwebHHtZV+NhM4fWyW?=
 =?Windows-1252?Q?u4PbCJWsueMKgBgYkMAeGEIaH0CStrir1NT0HHelAQ4ZYqt55MVzvFSk?=
 =?Windows-1252?Q?GlYEdvh1MDl7wB+2L5MTxptn7VLBX8fDhuINUngGj4yHG4Ha1YAFlwAo?=
 =?Windows-1252?Q?a9PyQIv2TEV7f5/9D8hfhGzKabC39lu1pBywJYA6HFFGeZh7qRfx2Vz7?=
 =?Windows-1252?Q?H04EMO0orClXAw=3D=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nzPld48GsvzW1gOzfxoF5QIGWgQ5YIzpJHZukIrKb7STWTdde0fOuBGFcZDVchCCUwLexuP6GySaHeTKL9p4KFPnENqHgP3CaAyZY1dF+tz/up3qGjJ/l91nvmXtbbeEQwjhezOycOGjbkFUC8/S9NIYJwHm9aW8yk2QmE3sAONs1EyMqo/P6AsUxYMtlzwjQtcXJrbLWMFqT6Ppyv+OE6w2JAEMkdtqaFRZsokIBx52OSEb8k9cvbN9zBLt3RkGCG8rWeds2FZZ1TFRVsQ6X8YuzZycTw8K6RqfBXRdD1BZIFV1EQv4E/ICveyHFxkyrtxnuZJ+nkHC1Fshq5p+7w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6f4c4a7-4301-4d84-0053-08df2f543973
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2026 09:18:09.6950
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dxw7uGSsOSXWot1Kr/hE+OwZXFsrQasDdJQNlTzqE8o9R8HdOLj6HqsPZaqOWeAj778dh8qzlss7z4Y8ITZ72A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
Return-Path: chee.yang.lee@intel.com
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 09:18:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66772

Hi,=0A=
=0A=
We are pleased to announce the Yocto Project 6.1 Release is now available f=
or download.=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.1/=0A=
=0A=
A gpg signed version of these release notes is available at:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/RELEASENOTES=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/testreport.txt=
=0A=
=0A=
Thank you for everyone's contributions to this release.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=
=0A=
=0A=
=0A=
--------------------------=0A=
yocto-6.1 Release Notes=0A=
--------------------------=0A=
=0A=
This document lists new features and enhancements for the Yocto Project 6.1=
 Release (codename =93blacksail=94). For a list of breaking changes and mig=
ration guides, see the Migration notes for 6.1 (blacksail). (https://docs.y=
octoproject.org/migration-guides/migration-6.1.html)=0A=
=0A=
=0A=
New Features / Enhancements in 6.1=0A=
----------------------------------=0A=
=0A=
- Linux kernel 7.2, gcc 16.2, glibc 2.44, LLVM 23.1.1, and over 300 other r=
ecipe upgrades=0A=
=0A=
- Minimum Python version required on the host: 3.9.=0A=
=0A=
- Kernel-related changes:=0A=
=0A=
  - kernel-module-split: Return list of values in extract_modinfo (43da9b9)=
=0A=
=0A=
  - kernel: Disable module tarball deployment (MODULE_TARBALL_DEPLOY) by de=
fault (f51d48c)=0A=
=0A=
  - linux-yocto: Remove CVE exclusion list as sbom-cve-check does this itse=
lf (596ad6c)=0A=
=0A=
  - kernel-fit-image:=0A=
=0A=
    - Validate key files expected by mkimage for the selected algorithm (75=
70ab5)=0A=
    - Do not include kernel property in DTBO configuration sub-nodes (06ed3=
40)=0A=
    - Fix operation with KERNEL_DTBVENDORED set to =931=94 (4297b94)=0A=
    - Add KERNEL_DTBVENDORED support for FIT_CONF_DEFAULT_DTB (3bceb2d)=0A=
    - Make kernel entry point and load address optional (54c4b48)=0A=
    - Avoid shadowing os stdlib import (fe1b5a0)=0A=
    - Introduce FIT_OS variable to override =91os=92 field (dc00e83)=0A=
    - Reference the boot script as =93script=94 (6bb0775)=0A=
    - Skip sign key check for PKCS #11 URI (b606b71)=0A=
    - Don=92t add configuration hash node when signing is enabled (7346ffe)=
=0A=
=0A=
  - kernel-arch: Add Clang toolchain support (928d819)=0A=
=0A=
  - kernel-arch: Fall back to GNU ld unless ld-is-lld is in DISTRO_FEATURES=
 (f92bfb5)=0A=
=0A=
  - kernel-yocto: Set CLANG_FLAGS for kernel config checks when using Clang=
 (e88ee79)=0A=
=0A=
  - linux-yocto-dev: Enable BSP config audit reporting (through KCONF_BSP_A=
UDIT_LEVEL) (c98e839)=0A=
=0A=
  - kernel-devsrc: Install sources required for BPF host tools (cf5b627)=0A=
=0A=
  - kernel-yocto-rust: Add Clang toolchain check for riscv64 (2b22849)=0A=
=0A=
  - lib/oe/kernel_module.py: Re-sign kernel modules after package stripping=
 process (a608d10)=0A=
=0A=
  - kernel-module-split: Don=92t re-sign compressed kernel modules (3483d02=
)=0A=
=0A=
- New core recipes:=0A=
=0A=
  - python3-vcs-versioning: Added as a new dependency of the python3-setupt=
ools-scm recipe (507bb52)=0A=
=0A=
  - cgo-helloworld: A Go example recipe with cgo enabled (204e4f7)=0A=
=0A=
  - jansson: Add a recipe from meta-oe, as it is a new hard dependency of t=
he igt-gpu-tools recipe (2b6e7d0)=0A=
=0A=
  - packagegroup-core-buildessential-rust: A packagegroup to provide the on=
-target dependencies required for building Rust-based kernel modules, inclu=
ding the Rust toolchain, bindgen, and libclang (500b45f)=0A=
=0A=
  - nativesdk-packagegroup-sdk-host-rust: Similar to packagegroup-core-buil=
dessential-rust but for building Rust-based kernel modules in the SDK (a05c=
097)=0A=
=0A=
  - nativesdk-packagegroup-sdk-host-clang: nativesdk packagegroup providing=
 the Clang, lld, and llvm-bin dependencies needed to build external/out-of-=
tree modules in the SDK using the LLVM/Clang toolchain (2b1db6e)=0A=
=0A=
  - gstreamer1.0-plugins-rs: GStreamer Rust plugins (3a2b032)=0A=
=0A=
  - rust-source: Recipe that fetches, unpacks, and patches the rustc source=
 tree into a =93work-shared=94 location (395fe16)=0A=
=0A=
  - libzip: Added because it is a dependency of various tools (f17e875)=0A=
=0A=
  - mesa-libclc: New recipe for forking libclc for Rusticl purposes in Mesa=
 (956aaf3)=0A=
=0A=
  - libtracefs: Added as powertop version 2.16 requires it (3c3f227)=0A=
=0A=
  - libfaketime: Used for reproducibility testing (f3a4faa)=0A=
=0A=
  - python3-tomlkit: New dependency of hatchling (46d3b26)=0A=
=0A=
- New core classes:=0A=
=0A=
  - python_uv_build: Used to build Python recipes with uv_build, a slimmed =
down version of uv (c535a9f)=0A=
=0A=
  - upstream-stable-release-point: Helper class for setting the UPSTREAM_ST=
ABLE_RELEASE_REGEX variable with STABLE_VERSION_PARTS (a1e069d)=0A=
=0A=
  - python_pbr: Used to build Python recipes with the Python Build Reasonab=
leness backend (b9f3b36)=0A=
=0A=
- New variables:=0A=
=0A=
  - UBOOT_FIT_CONF_DESC allows configuring the description property of the =
configuration node of a U-Boot FIT image (df16e4a)=0A=
=0A=
  - KERNEL_TOOLCHAIN: Allows specifying the toolchain to use to build the L=
inux kernel (0e3756e)=0A=
=0A=
  - FIT_OS: Controls the os field of the FIT image built with the kernel-fi=
t-image class (dc00e83)=0A=
=0A=
  - CARGO_PROFILE: Allows selecting the cargo profile to use (--profile) (d=
4de7d0)=0A=
=0A=
- OpenEmbedded-Core (OE-Core) library changes:=0A=
=0A=
  - oe/lsb: Only read /etc/os-release (1331c5f)=0A=
=0A=
  - oe/utils: Drop all_distro_features() (28d32a9)=0A=
=0A=
- Global configuration changes:=0A=
=0A=
  - bitbake.conf:=0A=
=0A=
    - Define a new firmwaredir variable (which by default points to /lib/fi=
rmware). This variable was adopted in several recipes to replace ${nonarch_=
base_libdir}/firmware (2b75c7b)=0A=
    - Drop opencl from DISTRO_FEATURES_FILTER_NATIVE and DISTRO_FEATURES_FI=
LTER_NATIVESDK (f810998)=0A=
=0A=
  - useradd*: Add support for the USERMOD_PARAM variable, acting as a repla=
cement of the GROUPMEMS_PARAM variable (b8da733, cec67e2)=0A=
=0A=
    Show a deprecation warning if GROUPMEMS_PARAM is used (06f48de)=0A=
=0A=
  - useradd*: Switch from --root to --prefix option (a7b846b)=0A=
=0A=
- BitBake changes:=0A=
=0A=
  - The git-make-shallow utility script was dropped along with its test cas=
es. It was replaced by Git native shallow fetches 0223ec6=0A=
=0A=
  - Replace codegen with ast.unparse() (76dd6d6)=0A=
=0A=
  - After the removal of the previous obsolete bb.fetch module, the bb.fetc=
h2 module was renamed to bb.fetch. A warning will be printed if bb.fetch2 i=
s used in layers (34ea7cb)=0A=
=0A=
  - fetch/git:=0A=
=0A=
    - Fix leaking of temporary directory (c7ebe03)=0A=
    - Fix trailing slash in clone command causing double slash in alternate=
s (797b0a3)=0A=
    - Accept SHA256 revisions (707ba7e)=0A=
=0A=
  - Unpack RPMs with --no-absolute-filenames (1b1a715)=0A=
=0A=
  - tinfoil:=0A=
=0A=
    - Only allow one process progress bar at once (d6bc0e5)=0A=
    - Add a prepared task runner, to execute a single recipe task and nothi=
ng else (280a3b3)=0A=
=0A=
  - knotty: Show elapsed time on the task progress bar (b8dfa35)=0A=
=0A=
  - bitbake-setup:=0A=
=0A=
    - Add a =93notes=94 item to bitbake-setup configuration files which cre=
ate a =93conf-notes.txt=94 file in the Build Directory (020a5ba)=0A=
    - Add a --version option (0e39aca)=0A=
    - Add PyPI packaging for bitbake-setup, allowing to install the tool wi=
th pip (6b51b93)=0A=
    - Use the BitBake built-in fetcher for buildtools installer download (e=
8d531c)=0A=
    - default-registry: Use the core/yocto/monitor-disk-space fragment by d=
efault (975b322)=0A=
    - Print a note about fetcher log if something fails there (3860fab)=0A=
=0A=
  - lib: Drop pyinotify, as it wasn=92t used by BitBake anymore (d20e7dc)=
=0A=
=0A=
  - lib: Rename fetch2 as fetch and invert compatibility shim to make bb.fe=
tch2 equal to bb.fetch (34ea7cb)=0A=
=0A=
  - fetch: Switch to shared locking for read accesses (e8f8ab6)=0A=
=0A=
  - fetch/crate: Support user-defined protocols (22a993a)=0A=
=0A=
  - fetch: Export AWS_SHARED_CREDENTIALS_FILE for S3 fetches, allowing to u=
se a credential file different than ~/.aws/credentials (0d6aa2b)=0A=
=0A=
  - fetch/{npm,npmsw}: Re-enable fetchers now that checksums come from SRC_=
URI, and restore the fetcher=92s test coverage (9e45e00, f7608f3)=0A=
=0A=
  - fetch/wget:=0A=
=0A=
    - Handle long filenames correctly (da1fcdf)=0A=
    - Reuse cached HTTPS connections (2c236d8)=0A=
    - Cache SSL context instead of recreating every time (625b25a)=0A=
=0A=
  - fetch/gitsm: Store the original URL data to fix relative gitsm:// paths=
 (5887225)=0A=
=0A=
  - Add pyproject.toml and vendor.txt for vendoring (70b54fd)=0A=
=0A=
  - data: Return a list from exported_vars() (c870f5b)=0A=
=0A=
  - asyncrpc: Add Task Group (4fc36e6)=0A=
=0A=
  - hashserv:=0A=
=0A=
    - Client: Add asynchronous streaming API (544d9f1)=0A=
    - Server: Add queued streaming API (9e0f064)=0A=
=0A=
- SPDX-related changes:=0A=
=0A=
  - Add SHA 512 support (383a5a6)=0A=
=0A=
  - Add custom annotations to recipe packages (e5a4a7d)=0A=
=0A=
  - common-licenses: Add SPDX License Exceptions (9c8d126)=0A=
=0A=
  - lib/oe: Add SPDX license library (51c7930)=0A=
=0A=
  - lib/oe/license: Rework package licenses matching (e3c5cb7)=0A=
=0A=
  - lib/oe/spdx30_tasks: Fix image deploy dir (fe3a721)=0A=
=0A=
- sbom-cve-check-related changes:=0A=
=0A=
  - sbom-cve-check recipe: Enable offline mode (db2e0fd)=0A=
=0A=
- Packaging changes:=0A=
=0A=
  - package_manager/ipk: Skip checksums for unsigned local feeds (3f50b04)=
=0A=
=0A=
  - package_rpm: Drop external dependency generator to support RPM 6 (093ae=
99)=0A=
=0A=
  - libarchive: Add RPM format reader to support RPM 6 (8401bac)=0A=
=0A=
  - No longer modify paths in save_debugsources_info() (b567c2f)=0A=
=0A=
- QEMU / runqemu changes:=0A=
=0A=
  - runqemu-export-rootfs: Set PSEUDO_INCLUDE_PATHS for unfsd (76b8b83)=0A=
=0A=
  - runqemu-extract-sdk: Refactor in Python (78c176d)=0A=
=0A=
  - qemu: Set the compilation progress bar flag (21994d6)=0A=
=0A=
  - qemu: Add ppc64le support to COMPATIBLE_HOST (77a329d)=0A=
=0A=
  - python3-qemu-qmp: Added as a new dependency of QEMU (5babf4e)=0A=
=0A=
- Documentation changes:=0A=
=0A=
  - New document on shared state signing (https://docs.yoctoproject.org/sec=
urity-manual/sstate-signing.html)=0A=
=0A=
  - New document on setting up a shared state mirror (https://docs.yoctopro=
ject.org/dev-manual/sstate-mirrors-setup.html)=0A=
=0A=
  - New document on how security is handled in builds: Build Process Securi=
ty (https://docs.yoctoproject.org/security-manual/build-process-security.ht=
ml)=0A=
=0A=
- Go changes:=0A=
=0A=
  - go-vendor: Remove vendor symlink (d3cbc28)=0A=
=0A=
- Testing-related changes:=0A=
=0A=
  - ptest support was added for the following recipes:=0A=
=0A=
    - go (9ca4140)=0A=
    - libatomic-ops (d899b7f)=0A=
    - libcap (bfc0a65)=0A=
    - libxslt (fa4328b)=0A=
    - python3-certifi (0aa251f)=0A=
    - python3-pyopenssl (3fdfff9)=0A=
    - python3-vcs-versioning (90c8bc1)=0A=
    - wget (bb24e39)=0A=
    - zstd (f3e3ccb)=0A=
=0A=
  - meta-selftest: Add a usegroup-deponly recipe to test USERADD_DEPENDS on=
ly (36eac58)=0A=
=0A=
  - python3: Use a SKIPPED_TESTS variable instead of test skip patches (a8b=
2baa)=0A=
=0A=
  - oeqa/oelib: Add runcmd tests (b364c44)=0A=
=0A=
  - oeqa/selftest/pkgdata: Add a test for variable consistency in multilib*=
 (b937278)=0A=
=0A=
  - oeqa/selftest/kernelmodulesplit: Test cross-recipe kernel module depend=
encies (6ca1f21)=0A=
=0A=
  - oe-selftest: kernel-fit-image: Add tests for KERNEL_DTBVENDORED (de2e11=
e)=0A=
=0A=
  - testimage: Handle bootlog variants on failed QEMU tests (7a65969)=0A=
=0A=
  - oeqa/selftest: Add go-vendor selftest suite (79d251a)=0A=
=0A=
  - oeqa/selftest/clang: Add selftests for Clang/LLVM/LLD test suites (8e7a=
293)=0A=
=0A=
  - oe-selftest: devtool: Add test for add/finish workflow (36472a7)=0A=
=0A=
- devtool-related changes:=0A=
=0A=
  - Disable GPG signing when setting up source tree repos (b5c84b0)=0A=
=0A=
  - upgrade command: Extract changelog between versions (ddd54d6)=0A=
=0A=
  - Fix finish/update-recipe for recipes using AUTOREV (ae7be93)=0A=
=0A=
  - Fix update-recipe/finish --initial-rev override (62abb60)=0A=
=0A=
  - Guess srcrev update mode for gitsm:// recipes too (9307c37)=0A=
=0A=
  - upgrade: Ignore changelogs from 3rd party (1c9d4bb)=0A=
=0A=
  - deploy-target: Fix running strip under pseudo (a48a731)=0A=
=0A=
  - ide-sdk:=0A=
=0A=
    - Add LLDB support for Clang toolchain (e81d897)=0A=
    - Default to all modified recipes (4c1c0ff)=0A=
    - Auto-write image debug settings to bbappend (929a8c1)=0A=
    - Support runqemu slirp (5cc15ec)=0A=
    - Support NFS rootfs (4ab284a)=0A=
    - Add clangd support for VSCode IntelliSense (10a0a09)=0A=
    - Support clangd for non-clang toolchain recipes (da9ac67)=0A=
    - Format C/C++ with clangd when .clang-format is present (5c13e48)=0A=
    - Support LLDB ATTACH mode (6a4227b)=0A=
    - Allow =96ide to select multiple plugins (8aa5c03)=0A=
=0A=
  - Fix file copy on finish --force (b8fda5d)=0A=
=0A=
  - deploy-target: Add --package/--file-glob filters (cf6d07f)=0A=
=0A=
  - deploy: Make pseudo calls independent of bitbake.conf (462019b)=0A=
=0A=
  - deploy: Allow deploying directly into a local rootfs directory (763accb=
)=0A=
=0A=
- Utility script changes:=0A=
=0A=
  - scripts/cve-json-to-text.py: Simplify getopt argument parsing (a92dfe5)=
=0A=
=0A=
  - upgrade command: Add a --stable option (1e86aa0)=0A=
=0A=
  - oe-pkgdata-util: Fix empty runtime-rprovides directory handling (678c1c=
2, dbca656)=0A=
=0A=
  - recipeutils: Add optional stable_upgrade parameter to get_recipe_upgrad=
e_status, to add the possibility of doing stable version upgrades of recipe=
s (1ed8fdd)=0A=
=0A=
  - scripts/pull-spdx-licenses.py: Add exceptions to the script that update=
s the SPDX license files (4190cdd)=0A=
=0A=
  - install-buildtools:=0A=
=0A=
    - Auto-discover environment setup script via glob (1105378)=0A=
    - Add a --local-file option (e160ff4)=0A=
=0A=
  - scripts/contrib: Add reuse-get-license.py, a script that extracts the L=
ICENSE and LIC_FILES_CHKSUM for projects that use reuse (8ec5b74)=0A=
=0A=
  - scripts/contrib: Add helper to report and fix missing SRC_URI ;tag=3D p=
arameters (d9a75fa)=0A=
=0A=
  - resulttool: Add support for ptests results for both Musl and Glibc (c05=
08fb)=0A=
=0A=
  - scripts/oe-depends-dot: Give the dotfile argument a sensible default (8=
8620a3)=0A=
=0A=
  - sstate-cache-management.py: Also check the SSTATE_DIR environment varia=
ble for --cache-dir (ad44f5e)=0A=
=0A=
- Clang/LLVM-related changes:=0A=
=0A=
  - clang: Enable cmake flags for llvm, clang, lld tests (c926c4f)=0A=
=0A=
- Patchtest-related changes:=0A=
=0A=
- insane / sanity classes-related changes:=0A=
=0A=
  - Add a check that SOURCE_MIRROR_URL is defined when own-mirrors is used =
(6d989b9)=0A=
=0A=
  - Add a check for build host HOME directory in packaged files (81bbe42)=
=0A=
=0A=
  - Allow exceptions in buildpaths HOME checks (ee29a91)=0A=
=0A=
  - sanity: Warn on Cargo config files outside of the build tree (77516d3)=
=0A=
=0A=
  - Increase shebang size limit (c205e77)=0A=
=0A=
  - Improve HOME checks exceptions (f6b9494)=0A=
=0A=
- Security changes:=0A=
=0A=
- sbom-cve-check-related changes:=0A=
=0A=
- New PACKAGECONFIG options for individual recipes:=0A=
=0A=
  - curl: libpsl, libssh=0A=
=0A=
  - dhcpcd: seccomp=0A=
=0A=
  - ethtool: pretty-dump=0A=
=0A=
  - ffmpeg: libdav1d=0A=
=0A=
  - iproute2: dcb, dpll=0A=
=0A=
  - libical: introspection, vala=0A=
=0A=
  - libportal: gtk4=0A=
=0A=
  - librsvg: avif, gdkpixbuf=0A=
=0A=
  - p11-kit: systemd, trust=0A=
=0A=
  - pciutils: dns, shared=0A=
=0A=
  - perf: bpf-skel, llvm=0A=
=0A=
  - python3-requests: chardet, charset-normalizer=0A=
=0A=
  - seatd: manpages=0A=
=0A=
  - strace: libdw=0A=
=0A=
  - vim: desktop=0A=
=0A=
  - webkitgtk: bubblewrap, librice, webrtc=0A=
=0A=
  - wpa-supplicant: suiteb, mbo, wnm=0A=
=0A=
- systemd-related changes:=0A=
=0A=
  - systemd-tools-native: Add systemd-hwdb (2a7c2dd)=0A=
=0A=
  - systemd: Enable coredump in PACKAGECONFIG by default (1086a56)=0A=
=0A=
- U-Boot-related changes:=0A=
=0A=
  - Add support for Clang toolchain (3214211)=0A=
=0A=
  - uboot-sign: List the TEE loadable behind U-Boot (a9a20a0)=0A=
=0A=
- Busybox-related changes:=0A=
=0A=
  - fdisk: Enable GPT support (d0914b8)=0A=
=0A=
  - Enable xxd (2852025)=0A=
=0A=
  - Enable findfs for initramfs LABEL support (c2b681e)=0A=
=0A=
- initramfs-framework-related changes:=0A=
=0A=
  - overlayroot: Use switch_root instead of chroot (848c368)=0A=
=0A=
  - Add opt-in root-only udev trigger (d3a196f)=0A=
=0A=
  - Support LABEL with root-only udev trigger (fda394c)=0A=
=0A=
  - Avoid external commands in rootfs resolution (d6e8e72)=0A=
=0A=
  - Allow opting out of efivarfs mount (9147744)=0A=
=0A=
- Miscellaneous changes:=0A=
=0A=
  - pulseaudio: Split pactl into a dedicated client subpackage (31dd308)=0A=
=0A=
  - u-boot-tools: Add dependency on libyaml for dtschema validation (02e09e=
0)=0A=
=0A=
  - p11-kit: Rewrite packaging to provide additional p11-kit-modules and p1=
1-kit-remote packages (7511a86)=0A=
=0A=
  - harfbuzz: Improve packaging (fb39870)=0A=
=0A=
  - sstate: Detect broken shared state paths containing TMPDIR (907af8f)=0A=
=0A=
  - gcr: Package the ssh-agent into a separate package (c957909)=0A=
=0A=
  - glibc: Disable automatic libatomic linking (677f0ac)=0A=
=0A=
  - uboot-sign: Sign SPL FIT into a copy of the SPL DTB (79584fe)=0A=
=0A=
  - archiver: Properly remove artifacts when configuration changes (4b0ac92=
)=0A=
=0A=
  - wget: Disable NTLM support (4eb7e98)=0A=
=0A=
  - vex: Drop obsolete conflict check with cve-check class (ddb00a3)=0A=
=0A=
  - toaster: Support layers that are not Git repositories (3fb96cc)=0A=
=0A=
  - classes/meson: Use ninja explicitly when compiling (9e1513b)=0A=
=0A=
  - webkitgtk: Allow using Clang to compile for arm target (7702381)=0A=
=0A=
  - report-error: Add site.conf/toolcfg.conf into error report (40ca5fc)=0A=
=0A=
  - cml1: Use KCONFIG_CONFIG_ROOTDIR in savedefconfig (4696450)=0A=
=0A=
  - uki: Make initramfs optional (909d3ba)=0A=
=0A=
  - cpan_build: Disable .packlist and HTML doc (3c2bb7b)=0A=
=0A=
  - useradd*: Drop groupmems from sysroot setup, as groupmems was removed f=
rom shadow version 4.20.0 (de0bf57)=0A=
=0A=
  - image_types: Make oe_mkext234fs reproducible (8d1d548)=0A=
=0A=
  - pypi: Only set downloadprefix in SRC_URI if needed (be391d8)=0A=
=0A=
  - sqlite3: Squash sqlite3.inc into the recipe, since this is the only pla=
ce where it is used. (35db548)=0A=
=0A=
=0A=
Known Issues in 6.1=0A=
-------------------=0A=
=0A=
N/A=0A=
=0A=
=0A=
Recipe License changes in 6.1=0A=
-----------------------------=0A=
=0A=
The following changes have been made to the LICENSE values set by recipes:=
=0A=
=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| Recipe(s)                | Previous value                                =
                 | New value                                               =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| erofs-utils              | GPL-2.0-or-later                              =
                 | MIT AND (GPL-2.0-or-later OR MIT)                       =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| git                      | GPL-2.0-only AND GPL-2.0-or-later AND BSD-3-Cl=
ause AND MIT AND | GPL-2.0-only AND GPL-2.0-or-later AND BSD-3-Clause AND M=
IT AND         |=0A=
|                          | BSL-1.0 AND LGPL-2.1-or-later                 =
                 | LGPL-2.1-or-later                                       =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| fmt                      | MIT                                           =
                 | MIT-with-fmt-exception                                  =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| vulkan-headers           | Apache-2.0 AND MIT                            =
                 | Apache-2.0 AND MIT AND (Apache-2.0 OR MIT)              =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| vulkan-validation-layers | Apache-2.0 AND BSL-1.0 AND MIT                =
                 | Apache-2.0 AND BSL-1.0 AND MIT AND BSD-2-Clause AND (Apa=
che-2.0 WITH   |=0A=
|                          |                                               =
                 | LLVM-exception)                                         =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
| lttng-tools              | GPL-2.0-only AND LGPL-2.1-only                =
                 | BSD-2-Clause AND BSD-3-Clause AND BSL-1.0 AND CC0-1.0 AN=
D CC-BY-SA-4.0 |=0A=
|                          |                                               =
                 | AND FSFAP AND GPL-2.0-only AND GPL-2.0-or-later AND GPL-=
2.0-or-later   |=0A=
|                          |                                               =
                 | WITH Autoconf-exception-2.0 AND GPL-2.0-or-later WITH   =
               |=0A=
|                          |                                               =
                 | Autoconf-exception-macro AND LGPL-2.1-only AND LGPL-2.1-=
or-later AND   |=0A=
|                          |                                               =
                 | MIT                                                     =
               |=0A=
+--------------------------+-----------------------------------------------=
-----------------+---------------------------------------------------------=
---------------+=0A=
=0A=
=0A=
Security Fixes in 6.1=0A=
---------------------=0A=
=0A=
The following CVEs have been fixed:=0A=
=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| Recipe                | CVE IDs                                          =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| acl                   | CVE-2026-54369, CVE-2026-54370                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| alsa-lib              | CVE-2026-90781, CVE-2026-96674, CVE-2026-96675   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| attr                  | CVE-2026-54371                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| avahi                 | CVE-2025-59529                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| bind                  | CVE-2026-19033, CVE-2026-19662, CVE-2026-19666, C=
VE-2026-19667, CVE-2026-19668, CVE-2026-19941, CVE-2026-75029, CVE-2026-761=
63,                |=0A=
|                       | CVE-2026-77119, CVE-2026-77692, CVE-2026-78301, C=
VE-2026-80274, CVE-2026-81563, CVE-2026-81736                              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| binutils              | CVE-2026-6844, CVE-2026-6845                     =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| binutils-cross-x86_64 | CVE-2026-6844, CVE-2026-6845                     =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| binutils-testsuite    | CVE-2026-6844, CVE-2026-6845                     =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| bison                 | CVE-2026-56390                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| bluez5                | CVE-2026-19774                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| busybox               | CVE-2026-38752, CVE-2026-38753, CVE-2026-38755   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| cairo                 | CVE-2025-50422                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| coreutils             | CVE-2026-56392                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| cryptodev-linux       | CVE-2026-28529                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| cups                  | CVE-2024-47850                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| curl                  | CVE-2026-8926, CVE-2026-11564, CVE-2026-11856, CV=
E-2026-18924, CVE-2026-19931, CVE-2026-80230, CVE-2026-80231, CVE-2026-8025=
5, CVE-2026-82208  |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| epiphany              | CVE-2026-18487                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| expat                 | CVE-2026-66046, CVE-2026-76641, CVE-2026-76956, C=
VE-2026-76957, CVE-2026-93990, CVE-2026-102633                             =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| ffmpeg                | CVE-2026-58049, CVE-2026-66036, CVE-2026-66040, C=
VE-2026-66041, CVE-2026-70628, CVE-2026-70629, CVE-2026-70630, CVE-2026-706=
31,                |=0A=
|                       | CVE-2026-70632, CVE-2026-75141, CVE-2026-75142, C=
VE-2026-75143, CVE-2026-75144, CVE-2026-75145, CVE-2026-75146, CVE-2026-751=
47, CVE-2026-96611 |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| gdk-pixbuf            | CVE-2026-5201                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| ghostscript           | CVE-2026-19547, CVE-2026-39919                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| glibc                 | CVE-2011-0536, CVE-2025-0577, CVE-2026-8674, CVE-=
2026-18374, CVE-2026-19499, CVE-2026-19542, CVE-2026-77117, CVE-2026-80489,=
 CVE-2026-86805,   |=0A=
|                       | CVE-2026-89092, CVE-2026-95818, CVE-2026-97399   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| gnutls                | CVE-2023-0361                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| graphene              | CVE-2026-81281                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| gstreamer1.0          | CVE-2026-73433, CVE-2026-73434                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libarchive            | CVE-2026-4424                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libgcrypt             | CVE-2024-2236                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libgit2               | CVE-2026-5917, CVE-2026-53583, CVE-2026-53584, CV=
E-2026-53585, CVE-2026-53586, CVE-2026-53587                               =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libpcre2              | CVE-2026-86145, CVE-2026-89156, CVE-2026-89157, C=
VE-2026-89158, CVE-2026-89160, CVE-2026-89161, CVE-2026-89162, CVE-2026-103=
111                |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libsndfile1           | CVE-2024-50613, CVE-2025-52194                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libsolv               | CVE-2026-48863, CVE-2026-48864                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libsoup               | CVE-2026-3099, CVE-2026-3632, CVE-2026-3633, CVE-=
2026-3634, CVE-2026-12548, CVE-2026-12549, CVE-2026-66337, CVE-2026-66338, =
CVE-2026-66339     |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libtheora             | CVE-2026-5673                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libx11                | CVE-2026-88806, CVE-2026-94283, CVE-2026-94284, C=
VE-2026-94285                                                              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libxfont              | CVE-2026-44950                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libxi                 | CVE-2026-93541, CVE-2026-93542, CVE-2026-93543, C=
VE-2026-93544, CVE-2026-93545, CVE-2026-94281, CVE-2026-94282              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libxrender            | CVE-2026-88807                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| libxtst               | CVE-2026-94286                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| linux-yocto           | CVE-2019-14899, CVE-2020-10774, CVE-2021-3714, CV=
E-2021-3864, CVE-2022-0400, CVE-2022-1247, CVE-2022-4543, CVE-2023-3397, CV=
E-2023-3640,       |=0A=
|                       | CVE-2023-6238, CVE-2023-6240, CVE-2025-71074, CVE=
-2025-71306, CVE-2025-71308, CVE-2025-71313, CVE-2026-23328, CVE-2026-23374=
, CVE-2026-23377,  |=0A=
|                       | CVE-2026-31501, CVE-2026-31771, CVE-2026-31777, C=
VE-2026-43022, CVE-2026-43042, CVE-2026-43045, CVE-2026-43053, CVE-2026-430=
95,                |=0A=
|                       | CVE-2026-43115, CVE-2026-43131, CVE-2026-43174, C=
VE-2026-43191, CVE-2026-43204, CVE-2026-43228, CVE-2026-43299, CVE-2026-433=
08,                |=0A=
|                       | CVE-2026-43310, CVE-2026-43311, CVE-2026-43326, C=
VE-2026-43414, CVE-2026-43443, CVE-2026-45961, CVE-2026-45991, CVE-2026-460=
08,                |=0A=
|                       | CVE-2026-46017, CVE-2026-46032, CVE-2026-46153, C=
VE-2026-46210, CVE-2026-46245, CVE-2026-46298, CVE-2026-46302, CVE-2026-463=
11,                |=0A=
|                       | CVE-2026-46330, CVE-2026-52949, CVE-2026-52956, C=
VE-2026-52960, CVE-2026-52965, CVE-2026-52988, CVE-2026-53007, CVE-2026-530=
08,                |=0A=
|                       | CVE-2026-53009, CVE-2026-53017, CVE-2026-53024, C=
VE-2026-53025, CVE-2026-53091, CVE-2026-53106, CVE-2026-53108, CVE-2026-531=
24,                |=0A=
|                       | CVE-2026-53222, CVE-2026-53257, CVE-2026-53285, C=
VE-2026-53292, CVE-2026-53308, CVE-2026-53401, CVE-2026-63811, CVE-2026-638=
79,                |=0A=
|                       | CVE-2026-63941, CVE-2026-63977, CVE-2026-63983, C=
VE-2026-64013, CVE-2026-64019, CVE-2026-64020, CVE-2026-64040, CVE-2026-640=
57,                |=0A=
|                       | CVE-2026-64067, CVE-2026-64079, CVE-2026-64117, C=
VE-2026-64123, CVE-2026-64146, CVE-2026-64154, CVE-2026-64159, CVE-2026-641=
60,                |=0A=
|                       | CVE-2026-64283, CVE-2026-64325, CVE-2026-64341, C=
VE-2026-64388, CVE-2026-64400, CVE-2026-68086, CVE-2026-68103, CVE-2026-681=
05,                |=0A=
|                       | CVE-2026-68242, CVE-2026-68286, CVE-2026-68287, C=
VE-2026-68288, CVE-2026-68289, CVE-2026-68291, CVE-2026-68295, CVE-2026-683=
03,                |=0A=
|                       | CVE-2026-68305, CVE-2026-68312, CVE-2026-68323, C=
VE-2026-68337, CVE-2026-68375, CVE-2026-68399, CVE-2026-68404, CVE-2026-684=
36,                |=0A=
|                       | CVE-2026-68441, CVE-2026-68447, CVE-2026-68470, C=
VE-2026-72031, CVE-2026-72064, CVE-2026-72091, CVE-2026-72315, CVE-2026-723=
29,                |=0A=
|                       | CVE-2026-72331, CVE-2026-72334, CVE-2026-72337, C=
VE-2026-72345, CVE-2026-72355, CVE-2026-72370, CVE-2026-72377, CVE-2026-723=
80,                |=0A=
|                       | CVE-2026-72388, CVE-2026-72397, CVE-2026-72402, C=
VE-2026-72404, CVE-2026-72413, CVE-2026-72423, CVE-2026-72438, CVE-2026-724=
40,                |=0A=
|                       | CVE-2026-72454, CVE-2026-72463, CVE-2026-72477, C=
VE-2026-72485, CVE-2026-72494, CVE-2026-72496, CVE-2026-72497, CVE-2026-724=
99,                |=0A=
|                       | CVE-2026-74258, CVE-2026-74260, CVE-2026-74269, C=
VE-2026-74272, CVE-2026-74273, CVE-2026-74277, CVE-2026-74289, CVE-2026-742=
91,                |=0A=
|                       | CVE-2026-74294, CVE-2026-74307, CVE-2026-74317, C=
VE-2026-74336, CVE-2026-74338, CVE-2026-74342, CVE-2026-74347, CVE-2026-743=
50,                |=0A=
|                       | CVE-2026-74354, CVE-2026-74367, CVE-2026-74373, C=
VE-2026-74374, CVE-2026-74375, CVE-2026-74407, CVE-2026-74419, CVE-2026-744=
49,                |=0A=
|                       | CVE-2026-74466, CVE-2026-74496, CVE-2026-74521, C=
VE-2026-74527, CVE-2026-74542, CVE-2026-74544, CVE-2026-74558, CVE-2026-745=
61,                |=0A=
|                       | CVE-2026-74562, CVE-2026-74568, CVE-2026-74713, C=
VE-2026-74715, CVE-2026-74716, CVE-2026-74721, CVE-2026-74723, CVE-2026-747=
29,                |=0A=
|                       | CVE-2026-74735, CVE-2026-74745, CVE-2026-74747, C=
VE-2026-74750, CVE-2026-74752, CVE-2026-74754, CVE-2026-80521, CVE-2026-805=
24,                |=0A=
|                       | CVE-2026-80579, CVE-2026-80580, CVE-2026-80631, C=
VE-2026-80634, CVE-2026-80655, CVE-2026-80657, CVE-2026-80668, CVE-2026-806=
93,                |=0A=
|                       | CVE-2026-80705, CVE-2026-80729, CVE-2026-80738, C=
VE-2026-80747, CVE-2026-80785, CVE-2026-80786, CVE-2026-80884, CVE-2026-808=
99,                |=0A=
|                       | CVE-2026-89513, CVE-2026-89527, CVE-2026-89534, C=
VE-2026-89537, CVE-2026-89568, CVE-2026-89584, CVE-2026-89601, CVE-2026-896=
10,                |=0A=
|                       | CVE-2026-89611, CVE-2026-89642, CVE-2026-89654, C=
VE-2026-89705, CVE-2026-89709, CVE-2026-89718, CVE-2026-89755, CVE-2026-897=
64,                |=0A=
|                       | CVE-2026-89772, CVE-2026-89792, CVE-2026-89796, C=
VE-2026-89805, CVE-2026-89812, CVE-2026-89813, CVE-2026-89815, CVE-2026-898=
27,                |=0A=
|                       | CVE-2026-89838, CVE-2026-89840, CVE-2026-89859, C=
VE-2026-89862, CVE-2026-89866, CVE-2026-89868, CVE-2026-89907, CVE-2026-900=
40,                |=0A=
|                       | CVE-2026-90061, CVE-2026-90079, CVE-2026-90082, C=
VE-2026-90093, CVE-2026-90095, CVE-2026-90098, CVE-2026-90099, CVE-2026-901=
04,                |=0A=
|                       | CVE-2026-90105, CVE-2026-90106, CVE-2026-90111, C=
VE-2026-90121, CVE-2026-90142, CVE-2026-90144, CVE-2026-90154, CVE-2026-901=
55,                |=0A=
|                       | CVE-2026-90156, CVE-2026-90162, CVE-2026-90167, C=
VE-2026-90174, CVE-2026-90177, CVE-2026-90182, CVE-2026-90183, CVE-2026-902=
06,                |=0A=
|                       | CVE-2026-90208, CVE-2026-90211, CVE-2026-90217, C=
VE-2026-90234, CVE-2026-90237, CVE-2026-90242, CVE-2026-90263, CVE-2026-902=
67,                |=0A=
|                       | CVE-2026-90273, CVE-2026-90301, CVE-2026-90311, C=
VE-2026-90315, CVE-2026-90317, CVE-2026-90320, CVE-2026-90321, CVE-2026-903=
23,                |=0A=
|                       | CVE-2026-90330, CVE-2026-90335, CVE-2026-90336, C=
VE-2026-90337, CVE-2026-90345, CVE-2026-90346, CVE-2026-90347, CVE-2026-903=
55,                |=0A=
|                       | CVE-2026-90359, CVE-2026-90365, CVE-2026-90380, C=
VE-2026-90381, CVE-2026-90408, CVE-2026-90409, CVE-2026-90412, CVE-2026-904=
17,                |=0A=
|                       | CVE-2026-90421, CVE-2026-90427, CVE-2026-92480, C=
VE-2026-92482, CVE-2026-93044, CVE-2026-93047, CVE-2026-93096, CVE-2026-930=
99,                |=0A=
|                       | CVE-2026-93104, CVE-2026-93105, CVE-2026-93116, C=
VE-2026-93122, CVE-2026-93125, CVE-2026-93129, CVE-2026-93135, CVE-2026-931=
44,                |=0A=
|                       | CVE-2026-93148, CVE-2026-93164, CVE-2026-93168, C=
VE-2026-93175, CVE-2026-93176, CVE-2026-93179, CVE-2026-93181, CVE-2026-932=
01,                |=0A=
|                       | CVE-2026-93216, CVE-2026-93221, CVE-2026-93248, C=
VE-2026-93251, CVE-2026-93260, CVE-2026-93270, CVE-2026-93282, CVE-2026-932=
84,                |=0A=
|                       | CVE-2026-93285, CVE-2026-93286, CVE-2026-93287, C=
VE-2026-93288, CVE-2026-93781, CVE-2026-93782, CVE-2026-93783, CVE-2026-937=
84,                |=0A=
|                       | CVE-2026-93785, CVE-2026-93786, CVE-2026-93787, C=
VE-2026-93788, CVE-2026-93789, CVE-2026-93790, CVE-2026-93791, CVE-2026-937=
92,                |=0A=
|                       | CVE-2026-93793, CVE-2026-93794, CVE-2026-93795, C=
VE-2026-93796, CVE-2026-93797, CVE-2026-93798, CVE-2026-93799, CVE-2026-938=
00,                |=0A=
|                       | CVE-2026-93801, CVE-2026-93802, CVE-2026-93803, C=
VE-2026-93804, CVE-2026-93805, CVE-2026-93806, CVE-2026-93807, CVE-2026-938=
08,                |=0A=
|                       | CVE-2026-93810, CVE-2026-93811, CVE-2026-93812, C=
VE-2026-93813, CVE-2026-93814, CVE-2026-93815, CVE-2026-93816, CVE-2026-938=
17,                |=0A=
|                       | CVE-2026-93818, CVE-2026-93819, CVE-2026-93820, C=
VE-2026-93821, CVE-2026-93822, CVE-2026-93823, CVE-2026-93824, CVE-2026-938=
25,                |=0A=
|                       | CVE-2026-93826, CVE-2026-93827, CVE-2026-93828, C=
VE-2026-93829, CVE-2026-93830, CVE-2026-97407, CVE-2026-97408, CVE-2026-974=
09,                |=0A=
|                       | CVE-2026-97410, CVE-2026-97411, CVE-2026-97412, C=
VE-2026-97413, CVE-2026-97414, CVE-2026-97415, CVE-2026-97416, CVE-2026-974=
17,                |=0A=
|                       | CVE-2026-97418, CVE-2026-97419, CVE-2026-97420, C=
VE-2026-97421, CVE-2026-97422, CVE-2026-97423, CVE-2026-97424, CVE-2026-974=
25,                |=0A=
|                       | CVE-2026-97426, CVE-2026-97427, CVE-2026-97428, C=
VE-2026-97429, CVE-2026-97430, CVE-2026-97431, CVE-2026-97432, CVE-2026-974=
33,                |=0A=
|                       | CVE-2026-97434, CVE-2026-97435, CVE-2026-97436, C=
VE-2026-97437, CVE-2026-97438, CVE-2026-97439, CVE-2026-97440, CVE-2026-974=
41,                |=0A=
|                       | CVE-2026-97442, CVE-2026-97443, CVE-2026-97444, C=
VE-2026-97445, CVE-2026-97446, CVE-2026-97447, CVE-2026-97448, CVE-2026-974=
49,                |=0A=
|                       | CVE-2026-97450, CVE-2026-97451, CVE-2026-97452, C=
VE-2026-97453, CVE-2026-97454, CVE-2026-97455, CVE-2026-97456, CVE-2026-974=
72,                |=0A=
|                       | CVE-2026-97473, CVE-2026-97474, CVE-2026-97475, C=
VE-2026-97476, CVE-2026-97477, CVE-2026-97478, CVE-2026-97479, CVE-2026-974=
80,                |=0A=
|                       | CVE-2026-97481, CVE-2026-97482, CVE-2026-97483, C=
VE-2026-97484, CVE-2026-97485, CVE-2026-97486, CVE-2026-97487, CVE-2026-974=
88,                |=0A=
|                       | CVE-2026-97489, CVE-2026-97490, CVE-2026-97491, C=
VE-2026-97492, CVE-2026-97493, CVE-2026-97494, CVE-2026-97495, CVE-2026-974=
96,                |=0A=
|                       | CVE-2026-97497, CVE-2026-97498, CVE-2026-97499, C=
VE-2026-97500, CVE-2026-97501, CVE-2026-97502, CVE-2026-97503, CVE-2026-975=
04,                |=0A=
|                       | CVE-2026-97505, CVE-2026-97506, CVE-2026-97507, C=
VE-2026-97508, CVE-2026-97509, CVE-2026-97510, CVE-2026-97511, CVE-2026-975=
12,                |=0A=
|                       | CVE-2026-97513, CVE-2026-97514, CVE-2026-97515, C=
VE-2026-97516, CVE-2026-97517, CVE-2026-97518, CVE-2026-97519, CVE-2026-975=
20,                |=0A=
|                       | CVE-2026-97521, CVE-2026-97522, CVE-2026-97523, C=
VE-2026-97524, CVE-2026-97525, CVE-2026-97526, CVE-2026-97527, CVE-2026-975=
28,                |=0A=
|                       | CVE-2026-97529, CVE-2026-97530, CVE-2026-97531, C=
VE-2026-97532, CVE-2026-97533, CVE-2026-97534, CVE-2026-97535, CVE-2026-975=
36,                |=0A=
|                       | CVE-2026-97537, CVE-2026-97538, CVE-2026-97539, C=
VE-2026-97540, CVE-2026-97541, CVE-2026-97542, CVE-2026-97543, CVE-2026-975=
44,                |=0A=
|                       | CVE-2026-97545, CVE-2026-97546, CVE-2026-97547, C=
VE-2026-97548, CVE-2026-97549, CVE-2026-97550, CVE-2026-97551, CVE-2026-975=
52,                |=0A=
|                       | CVE-2026-97555, CVE-2026-97556, CVE-2026-97557, C=
VE-2026-97558, CVE-2026-97559, CVE-2026-97560, CVE-2026-97561, CVE-2026-975=
62,                |=0A=
|                       | CVE-2026-97563, CVE-2026-97564, CVE-2026-97565, C=
VE-2026-97566, CVE-2026-97567, CVE-2026-97568, CVE-2026-97571, CVE-2026-975=
72,                |=0A=
|                       | CVE-2026-97573, CVE-2026-97574, CVE-2026-97575, C=
VE-2026-97576, CVE-2026-97577, CVE-2026-97578, CVE-2026-97579, CVE-2026-975=
81,                |=0A=
|                       | CVE-2026-97582, CVE-2026-97583, CVE-2026-97584, C=
VE-2026-97585, CVE-2026-97586, CVE-2026-97587, CVE-2026-97588, CVE-2026-975=
89,                |=0A=
|                       | CVE-2026-97590, CVE-2026-97591, CVE-2026-97592, C=
VE-2026-97593, CVE-2026-97594, CVE-2026-97595, CVE-2026-97596, CVE-2026-975=
97,                |=0A=
|                       | CVE-2026-97598, CVE-2026-97599, CVE-2026-97600, C=
VE-2026-97601, CVE-2026-97602, CVE-2026-97603, CVE-2026-97604, CVE-2026-976=
05,                |=0A=
|                       | CVE-2026-97606, CVE-2026-97607, CVE-2026-97608, C=
VE-2026-97609, CVE-2026-97610, CVE-2026-97611, CVE-2026-97612, CVE-2026-976=
13,                |=0A=
|                       | CVE-2026-97614, CVE-2026-97615, CVE-2026-97616, C=
VE-2026-97617, CVE-2026-97618, CVE-2026-97619, CVE-2026-97620, CVE-2026-976=
21,                |=0A=
|                       | CVE-2026-97899, CVE-2026-97900, CVE-2026-97901, C=
VE-2026-97902, CVE-2026-97903, CVE-2026-97904, CVE-2026-97905, CVE-2026-979=
06,                |=0A=
|                       | CVE-2026-97907, CVE-2026-97908, CVE-2026-97909, C=
VE-2026-97910, CVE-2026-97915, CVE-2026-97916, CVE-2026-97917, CVE-2026-979=
18,                |=0A=
|                       | CVE-2026-97919, CVE-2026-97920, CVE-2026-97921, C=
VE-2026-97922, CVE-2026-97923, CVE-2026-97924, CVE-2026-97925, CVE-2026-979=
26,                |=0A=
|                       | CVE-2026-97927, CVE-2026-97928, CVE-2026-97929, C=
VE-2026-97930, CVE-2026-97931, CVE-2026-97934, CVE-2026-97935, CVE-2026-979=
36,                |=0A=
|                       | CVE-2026-97938, CVE-2026-97939, CVE-2026-97940, C=
VE-2026-97942, CVE-2026-97943, CVE-2026-97944, CVE-2026-97945, CVE-2026-979=
46,                |=0A=
|                       | CVE-2026-97947, CVE-2026-97948, CVE-2026-97949, C=
VE-2026-97950, CVE-2026-97951, CVE-2026-97952, CVE-2026-97953, CVE-2026-979=
54,                |=0A=
|                       | CVE-2026-97955, CVE-2026-97956, CVE-2026-97957, C=
VE-2026-97958, CVE-2026-97959, CVE-2026-97960, CVE-2026-97961, CVE-2026-979=
62,                |=0A=
|                       | CVE-2026-97963, CVE-2026-97964, CVE-2026-97965, C=
VE-2026-97966, CVE-2026-97967, CVE-2026-97968, CVE-2026-97969, CVE-2026-979=
70,                |=0A=
|                       | CVE-2026-97972, CVE-2026-97973, CVE-2026-97974, C=
VE-2026-97975, CVE-2026-97976, CVE-2026-97977, CVE-2026-97978, CVE-2026-979=
79,                |=0A=
|                       | CVE-2026-97981, CVE-2026-97982, CVE-2026-97984, C=
VE-2026-97985, CVE-2026-97986, CVE-2026-97987, CVE-2026-97988, CVE-2026-979=
89,                |=0A=
|                       | CVE-2026-97990, CVE-2026-97991, CVE-2026-97992, C=
VE-2026-97993, CVE-2026-97994, CVE-2026-97995, CVE-2026-97996, CVE-2026-979=
97,                |=0A=
|                       | CVE-2026-97998, CVE-2026-98000, CVE-2026-98001, C=
VE-2026-98003, CVE-2026-98004, CVE-2026-98006, CVE-2026-98007, CVE-2026-980=
08,                |=0A=
|                       | CVE-2026-98009, CVE-2026-98010, CVE-2026-98011, C=
VE-2026-98012, CVE-2026-98013, CVE-2026-98014, CVE-2026-98015, CVE-2026-980=
16,                |=0A=
|                       | CVE-2026-98017, CVE-2026-98018, CVE-2026-98019, C=
VE-2026-98020, CVE-2026-98021, CVE-2026-98022, CVE-2026-98023, CVE-2026-980=
24,                |=0A=
|                       | CVE-2026-98025, CVE-2026-98026, CVE-2026-98027, C=
VE-2026-98028, CVE-2026-98029, CVE-2026-98030, CVE-2026-98031, CVE-2026-980=
32,                |=0A=
|                       | CVE-2026-98033, CVE-2026-98037, CVE-2026-98038, C=
VE-2026-98039, CVE-2026-98041, CVE-2026-98043, CVE-2026-98044, CVE-2026-980=
45,                |=0A=
|                       | CVE-2026-98046, CVE-2026-98047, CVE-2026-98048, C=
VE-2026-98049, CVE-2026-98050, CVE-2026-98051, CVE-2026-98052, CVE-2026-980=
53,                |=0A=
|                       | CVE-2026-98054, CVE-2026-98055, CVE-2026-98056, C=
VE-2026-98058, CVE-2026-98059, CVE-2026-98060, CVE-2026-98061, CVE-2026-980=
62,                |=0A=
|                       | CVE-2026-98063, CVE-2026-98064, CVE-2026-98066, C=
VE-2026-98067, CVE-2026-98068, CVE-2026-98069, CVE-2026-98070, CVE-2026-980=
71,                |=0A=
|                       | CVE-2026-98072, CVE-2026-98073, CVE-2026-98074, C=
VE-2026-98075, CVE-2026-98076, CVE-2026-98077, CVE-2026-98078, CVE-2026-980=
79,                |=0A=
|                       | CVE-2026-98080, CVE-2026-98081, CVE-2026-98082, C=
VE-2026-98083, CVE-2026-98085, CVE-2026-98086, CVE-2026-98087, CVE-2026-980=
88,                |=0A=
|                       | CVE-2026-98089, CVE-2026-98090, CVE-2026-98091, C=
VE-2026-98092, CVE-2026-98093, CVE-2026-98094, CVE-2026-98095, CVE-2026-980=
96,                |=0A=
|                       | CVE-2026-98097, CVE-2026-98098, CVE-2026-98099, C=
VE-2026-98101, CVE-2026-98102, CVE-2026-98103, CVE-2026-98104, CVE-2026-981=
05,                |=0A=
|                       | CVE-2026-98106, CVE-2026-98107, CVE-2026-98108, C=
VE-2026-98109, CVE-2026-98110, CVE-2026-98111, CVE-2026-98113, CVE-2026-981=
14,                |=0A=
|                       | CVE-2026-98116, CVE-2026-98117, CVE-2026-98118, C=
VE-2026-98119, CVE-2026-98120, CVE-2026-98121, CVE-2026-98122, CVE-2026-981=
23,                |=0A=
|                       | CVE-2026-98124, CVE-2026-98126, CVE-2026-98127, C=
VE-2026-98128, CVE-2026-98129, CVE-2026-98130, CVE-2026-98131, CVE-2026-981=
34,                |=0A=
|                       | CVE-2026-98142, CVE-2026-98146, CVE-2026-98147, C=
VE-2026-98148, CVE-2026-98151, CVE-2026-98152, CVE-2026-98153, CVE-2026-981=
54,                |=0A=
|                       | CVE-2026-98155, CVE-2026-98156, CVE-2026-98157, C=
VE-2026-98158, CVE-2026-98159, CVE-2026-100072                             =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| nfs-utils             | CVE-2025-12801                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| openssh               | CVE-2026-55654, CVE-2026-55655, CVE-2026-73281, C=
VE-2026-73282, CVE-2026-73283                                              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| openssl               | CVE-2015-3216, CVE-2026-35189, CVE-2026-35191, CV=
E-2026-42772, CVE-2026-54872, CVE-2026-54873, CVE-2026-54875, CVE-2026-7289=
7, CVE-2026-75804, |=0A=
|                       | CVE-2026-75805, CVE-2026-75806, CVE-2026-77696, C=
VE-2026-84782, CVE-2026-84784                                              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| ovmf                  | CVE-2017-5731, CVE-2019-14584                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| perl                  | CVE-2026-15534, CVE-2026-82560                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| popt                  | CVE-2026-18739, CVE-2026-18743, CVE-2026-18839   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| ppp                   | CVE-2020-15704                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| pulseaudio            | CVE-2020-15710, CVE-2020-16123                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3               | CVE-2025-15367, CVE-2026-12345, CVE-2026-15310, C=
VE-2026-15806, CVE-2026-17084, CVE-2026-19445, CVE-2026-19553, CVE-2026-196=
72, CVE-2026-87910 |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3-cryptography  | CVE-2026-69247                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3-git           | CVE-2026-67322, CVE-2026-67323, CVE-2026-67324, C=
VE-2026-67325, CVE-2026-67326, CVE-2026-69097, CVE-2026-73619, CVE-2026-736=
20,                |=0A=
|                       | CVE-2026-73621, CVE-2026-73622, CVE-2026-73623, C=
VE-2026-73624, CVE-2026-73625, CVE-2026-76217, CVE-2026-76218, CVE-2026-762=
19,                |=0A=
|                       | CVE-2026-76220, CVE-2026-76221, CVE-2026-76222, C=
VE-2026-78675, CVE-2026-78676, CVE-2026-78677, CVE-2026-78678, CVE-2026-786=
79,                |=0A=
|                       | CVE-2026-87817, CVE-2026-87818, CVE-2026-87819, C=
VE-2026-100689                                                             =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3-lxml          | CVE-2026-49825                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3-mako          | CVE-2026-102991                                  =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| python3-urllib3       | CVE-2026-44432, CVE-2026-97687, CVE-2026-97688, C=
VE-2026-97689                                                              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| qemu                  | CVE-2026-3195, CVE-2026-3196, CVE-2026-3842      =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| qemu-system-native    | CVE-2026-3195, CVE-2026-3196, CVE-2026-3842      =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| rpm-sequoia           | CVE-2026-2625                                    =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| rsync                 | CVE-2026-29518, CVE-2026-41035, CVE-2026-43617, C=
VE-2026-43618, CVE-2026-43619, CVE-2026-43620, CVE-2026-45232, CVE-2026-537=
83,                |=0A=
|                       | CVE-2026-53784, CVE-2026-53785, CVE-2026-53786, C=
VE-2026-53788, CVE-2026-53789, CVE-2026-53790, CVE-2026-53791, CVE-2026-537=
92,                |=0A=
|                       | CVE-2026-53793, CVE-2026-53794, CVE-2026-53795, C=
VE-2026-53796, CVE-2026-53797, CVE-2026-53798, CVE-2026-53799, CVE-2026-538=
00,                |=0A=
|                       | CVE-2026-53801, CVE-2026-53802, CVE-2026-53803, C=
VE-2026-70452, CVE-2026-70453, CVE-2026-70454, CVE-2026-70456, CVE-2026-704=
57,                |=0A=
|                       | CVE-2026-70458, CVE-2026-70459, CVE-2026-70460, C=
VE-2026-70461, CVE-2026-70462, CVE-2026-70463, CVE-2026-70464              =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| sudo                  | CVE-2026-82474                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| tar                   | CVE-2026-18477, CVE-2026-18508                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| u-boot-tools          | CVE-2026-71971, CVE-2026-71972, CVE-2026-71973, C=
VE-2026-71974, CVE-2026-74220, CVE-2026-74221, CVE-2026-74222, CVE-2026-742=
25                 |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| util-linux            | CVE-2026-76642                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| util-linux-libuuid    | CVE-2026-76642                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| vim                   | CVE-2026-51400, CVE-2026-51401, CVE-2026-73070   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| webkitgtk             | CVE-2026-78376, CVE-2026-83596                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| xserver-xorg          | CVE-2026-55999, CVE-2026-56000                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
| zlib                  | CVE-2026-85091                                   =
                                                                           =
                   |=0A=
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+=0A=
=0A=
=0A=
Recipe Upgrades in 6.1=0A=
----------------------=0A=
=0A=
The following recipes have been upgraded:=0A=
=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| Recipe                               | Previous version(s)      | New ver=
sion(s)           |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| acl                                  | 2.3.2                    | 2.4.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| acpica                               | 20251212                 | 2026040=
8                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| adwaita-icon-theme                   | 49.0                     | 50.0   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| alsa-lib                             | 1.2.15.3                 | 1.2.16.=
1                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| alsa-ucm-conf                        | 1.2.15.3                 | 1.2.16.=
1                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| alsa-utils                           | 1.2.15.2                 | 1.2.16 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| appstream                            | 1.1.2                    | 1.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| apr-util                             | 1.6.3                    | 1.6.5  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| at-spi2-core                         | 2.60.0                   | 2.62.0.=
1                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| attr                                 | 2.5.2                    | 2.6.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| avahi                                | 0.8                      | 0.9~rc5=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| barebox                              | 2026.04.0                | 2026.09=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| barebox-tools                        | 2026.04.0                | 2026.08=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| bash-completion                      | 2.17.0                   | 2.18.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| bind                                 | 9.20.26                  | 9.20.29=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| binutils                             | 2.46.1                   | 2.47   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| binutils-cross                       | 2.46.1                   | 2.47   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| binutils-cross-canadian              | 2.46.1                   | 2.47   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| binutils-crosssdk                    | 2.46.1                   | 2.47   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| binutils-testsuite                   | 2.46.1                   | 2.47   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| bluez5                               | 5.86                     | 5.87   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| boost                                | 1.90.0                   | 1.92.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| boost-build-native                   | 1.90.0                   | 1.92.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| btrfs-tools                          | 6.19.1                   | 7.1    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| busybox                              | 1.37.0                   | 1.38.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| busybox-inittab                      | 1.37.0                   | 1.38.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ca-certificates                      | 20260601                 | 2026081=
6                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cairo                                | 1.18.4                   | 1.18.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cargo                                | 1.94.1                   | 1.98.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cargo-c                              | 0.10.21+cargo-0.95.0     | 0.10.25=
+cargo-0.99.0     |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ccache                               | 4.13.3                   | 4.14   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| clang                                | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cmake                                | 4.3.1                    | 4.4.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cmake-native                         | 4.3.1                    | 4.4.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| compiler-rt                          | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| compiler-rt-sanitizers               | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| coreutils                            | 9.10                     | 9.11   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| createrepo-c                         | 1.2.3                    | 1.2.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cross-localedef-native               | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cryptodev-linux                      | 1.14                     | 1.14+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cryptodev-module                     | 1.14                     | 1.14+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cryptodev-tests                      | 1.14                     | 1.14+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| cups                                 | 2.4.16                   | 2.4.19 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| curl                                 | 8.19.0                   | 8.22.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| debianutils                          | 5.23.2                   | 5.24   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| debugedit                            | 5.2                      | 5.3    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| dhcpcd                               | 10.3.1                   | 10.5.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| diffoscope                           | 314                      | 329    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| diffstat                             | 1.68                     | 1.69   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| dos2unix                             | 7.5.4                    | 7.5.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| dropbear                             | 2025.89                  | 2026.94=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| dtc                                  | 1.7.2                    | 1.8.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ed                                   | 1.22.5                   | 1.22.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| elfutils                             | 0.194                    | 0.196  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| enchant2                             | 2.8.15                   | 2.8.21 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| epiphany                             | 49.7                     | 50.6   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| erofs-utils                          | 1.9.1                    | 1.9.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ethtool                              | 6.19                     | 7.1    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| expat                                | 2.7.5                    | 2.8.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| fastfloat                            | 8.2.4                    | 8.2.10 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ffmpeg                               | 8.0.3                    | 9.0.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| file                                 | 5.47                     | 5.48   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| findutils                            | 4.10.0                   | 4.11.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| fmt                                  | 12.1.0                   | 12.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| font-util                            | 1.4.1                    | 1.4.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| fontconfig                           | 2.17.1                   | 2.18.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gawk                                 | 5.4.0                    | 5.4.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc                                  | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-cross                            | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-cross-canadian                   | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-crosssdk                         | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-runtime                          | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-sanitizers                       | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gcc-source                           | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gdk-pixbuf                           | 2.44.5                   | 2.44.8 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ghostscript                          | 10.06.0                  | 10.07.1=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| git                                  | 2.53.0                   | 2.55.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glib-2.0                             | 2.88.2                   | 2.88.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glib-2.0-initial                     | 2.88.2                   | 2.88.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glibc                                | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glibc-locale                         | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glibc-mtrace                         | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glibc-scripts                        | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glibc-testsuite                      | 2.43+git                 | 2.44+gi=
t                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| glslang                              | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gn                                   | 0+git (9d19a7870add=85)    | 0+git=
 (17b0057970fa=85)    |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gnu-config                           | 20250709+git             | 2026062=
9+git             |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gnupg                                | 2.5.17                   | 2.5.22 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gnutls                               | 3.8.12                   | 3.8.13 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go                                   | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go-binary-native                     | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go-cross-canadian                    | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go-cross-core2-32                    | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go-crosssdk                          | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| go-runtime                           | 1.26.5                   | 1.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gpgme                                | 2.0.1                    | 2.1.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gst-devtools                         | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gst-examples                         | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0                         | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-libav                   | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-plugins-bad             | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-plugins-base            | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-plugins-good            | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-plugins-ugly            | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-python                  | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gstreamer1.0-rtsp-server             | 1.28.5                   | 1.28.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gtk-doc                              | 1.35.1                   | 1.36.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gtk4                                 | 4.22.2                   | 4.22.4 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| gzip                                 | 1.14                     | 1.15   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| harfbuzz                             | 12.3.2                   | 14.4.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| hwdata                               | 0.406                    | 0.410  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| igt-gpu-tools                        | 2.3                      | 2.5    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| inetutils                            | 2.7                      | 2.8    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| iproute2                             | 6.19.0                   | 7.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| json-c                               | 0.18                     | 0.19   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| kbd                                  | 2.9.0                    | 2.10.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| kea                                  | 3.0.3                    | 3.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| less                                 | 692                      | 704    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libadwaita                           | 1.8.4                    | 1.9.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libarchive                           | 3.8.7                    | 3.8.9  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libcap                               | 2.77                     | 2.78   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libcap-ng                            | 0.9.1                    | 0.9.5  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libcap-ng-python                     | 0.9.1                    | 0.9.5  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libcxx                               | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libdisplay-info                      | 0.3.0                    | 0.4.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libdrm                               | 2.4.131                  | 2.4.134=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libedit                              | 20251016-3.1             | 2026051=
2-3.1             |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libevdev                             | 1.13.6                   | 1.13.7 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libevent                             | 2.1.12                   | 2.1.13 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libffi                               | 3.5.2                    | 3.8.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libfyaml                             | 0.9.4                    | 0.9.6  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgcc                               | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgcc-initial                       | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgcrypt                            | 1.12.1                   | 1.12.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgfortran                          | 15.3.0                   | 16.2.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgit2                              | 1.9.2                    | 1.9.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libgpg-error                         | 1.59                     | 1.61   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libical                              | 3.0.20                   | 4.0.5  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libinput                             | 1.30.2                   | 1.31.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libjpeg-turbo                        | 3.1.3                    | 3.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libksba                              | 1.6.8                    | 1.8.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libmd                                | 1.1.0                    | 1.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libmicrohttpd                        | 1.0.2                    | 1.0.10 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libmodulemd                          | 2.15.2                   | 2.15.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libmpc                               | 1.3.1                    | 1.4.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libpcre2                             | 10.47                    | 10.48  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libpng                               | 1.6.56                   | 1.6.58 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libportal                            | 0.9.1                    | 0.10.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libpsl                               | 0.21.5                   | 0.23.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| librepo                              | 1.20.0                   | 1.21.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| librsvg                              | 2.61.3                   | 2.63.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libseccomp                           | 2.6.0                    | 2.6.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libsecret                            | 0.21.7                   | 0.21.8.=
2                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libslirp                             | 4.9.1                    | 4.9.5  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libsolv                              | 0.7.36                   | 0.7.39 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libstd-rs                            | 1.94.1                   | 1.98.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libtest-fatal-perl                   | 0.018                    | 0.019  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libtool                              | 2.5.4                    | 2.6.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libtool-cross                        | 2.5.4                    | 2.6.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libtool-native                       | 2.5.4                    | 2.6.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libusb1                              | 1.0.29                   | 1.0.30 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libva                                | 2.23.0                   | 2.24.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libva-initial                        | 2.23.0                   | 2.24.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libva-utils                          | 2.23.0                   | 2.24.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libxfont2                            | 2.0.7                    | 2.0.9  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libxi                                | 1.8.2                    | 1.8.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libxkbcommon                         | 1.13.1                   | 1.13.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| libxmlb                              | 0.3.25                   | 0.3.29 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lighttpd                             | 1.4.82                   | 1.4.85 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-firmware                       | 20260410                 | 2026091=
6                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-libc-headers                   | 6.18                     | 7.2    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-yocto                          | 6.18.39+git              | 6.18.48=
+git, 7.2.2+git   |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-yocto-dev                      | 7.0+git                  | 7.2+git=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-yocto-rt                       | 6.18.39+git              | 6.18.48=
+git, 7.2.2+git   |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| linux-yocto-tiny                     | 6.18.39+git              | 6.18.48=
+git, 7.2.2+git   |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lld                                  | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lldb                                 | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| llvm                                 | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| llvm-tblgen-native                   | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| log4cplus                            | 2.1.2                    | 2.2.0.1=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lsof                                 | 4.99.6                   | 4.99.7 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ltp                                  | 20260130                 | 2026052=
9                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lttng-modules                        | 2.14.4                   | 2.16.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lttng-tools                          | 2.14.1                   | 2.16.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lttng-ust                            | 2.14.0                   | 2.16.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lua                                  | 5.5.0                    | 5.5.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| lzip                                 | 1.25                     | 1.26   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| makedumpfile                         | 1.7.8                    | 1.7.9  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| man-pages                            | 6.17                     | 6.19   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mesa                                 | 26.0.5                   | 26.2.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mesa-demos                           | 9.0.0                    | 9.0.0+g=
it                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mesa-gl                              | 26.0.5                   | 26.2.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mesa-tools-native                    | 26.0.5                   | 26.2.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| meson                                | 1.10.2                   | 1.12.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| minicom                              | 2.10                     | 2.11.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mkfontscale                          | 1.2.3                    | 1.2.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| mpg123                               | 1.33.4                   | 1.33.7 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| msmtp                                | 1.8.32                   | 1.8.34 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| nasm                                 | 3.01                     | 3.02   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| nativesdk-libtool                    | 2.5.4                    | 2.6.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| neard                                | 0.19                     | 0.20   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| netbase                              | 6.5                      | 6.6    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| nettle                               | 3.10.2                   | 4.0    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| nfs-utils                            | 2.8.7                    | 2.9.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| nghttp2                              | 1.68.1                   | 1.70.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| openmp                               | 22.1.8                   | 23.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| opensbi                              | 1.8.1                    | 1.9    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| openssh                              | 10.3p1                   | 10.5p1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| openssl                              | 3.5.7                    | 4.0.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| opkg                                 | 0.9.0                    | 0.10.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| orc                                  | 0.4.42                   | 0.4.43 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ovmf                                 | edk2-stable202511        | edk2-st=
able202605        |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| p11-kit                              | 0.26.4                   | 0.26.5 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| pango                                | 1.57.0                   | 1.58.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| parted                               | 3.6                      | 3.8    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| patchelf                             | 0.18.0+git               | 0.19.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| pciutils                             | 3.14.0                   | 3.15.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| perl                                 | 5.42.0                   | 5.44.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| piglit                               | 1.0+gitr (a0a27e528f64=85) | 1.0+g=
itr (56f237be32ed=85) |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| pinentry                             | 1.3.2                    | 1.3.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| pkgconf                              | 2.5.1                    | 3.0.6  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| powertop                             | 2.15                     | 2.16   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ppp                                  | 2.5.2                    | 2.5.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| procps                               | 4.0.6                    | 4.0.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| puzzles                              | 0.0+git (ecb576fb2a0a=85)  | 0.0+g=
it (3c3632259d29=85)  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3                              | 3.14.6                   | 3.14.7 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-attrs                        | 25.4.0                   | 26.1.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-build                        | 1.4.0                    | 1.6.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-certifi                      | 2026.2.25                | 2026.7.=
22                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-cffi                         | 2.0.0                    | 2.1.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-click                        | 8.3.1                    | 8.5.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-cryptography                 | 46.0.7                   | 50.0.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-cryptography-vectors         | 46.0.7                   | 50.0.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-cython                       | 3.2.4                    | 3.2.9  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-docutils                     | 0.22.4                   | 0.23   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-dtc                          | 1.7.2                    | 1.8.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-dtschema                     | 2025.12                  | 2026.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-editables                    | 0.5                      | 0.6    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-git                          | 3.1.43                   | 3.1.61 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-hatchling                    | 1.29.0                   | 1.31.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-hypothesis                   | 6.151.9                  | 6.167.0=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-idna                         | 3.11                     | 3.20   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-imagesize                    | 2.0.0                    | 2.0.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-installer                    | 0.7.0                    | 1.0.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-jsonpointer                  | 3.0.0                    | 3.1.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-lxml                         | 6.0.2                    | 6.1.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-mako                         | 1.3.10                   | 1.4.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-markdown                     | 3.10.2                   | 3.10.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-maturin                      | 1.12.4                   | 1.15.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-meson-python                 | 0.19.0                   | 0.20.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-more-itertools               | 10.6.0                   | 10.8.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-numpy                        | 2.4.3                    | 2.5.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-packaging                    | 26.0                     | 26.3   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pathspec                     | 1.0.4                    | 1.1.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pbr                          | 7.0.3                    | 7.1.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pdm                          | 2.26.6                   | 2.29.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pdm-backend                  | 2.4.7                    | 2.4.9  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pip                          | 26.0.1                   | 26.2.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-poetry-core                  | 2.3.1                    | 2.4.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pycairo                      | 1.29.0                   | 1.29.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pyelftools                   | 0.32                     | 0.33   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pygments                     | 2.19.2                   | 2.21.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pygobject                    | 3.56.1                   | 3.58.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pyopenssl                    | 26.0.0                   | 26.4.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pyproject-hooks              | 1.2.0                    | 1.3.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pyproject-metadata           | 0.11.0                   | 0.12.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pytest                       | 9.0.2                    | 9.1.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-pytz                         | 2026.1                   | 2026.3.=
post1             |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-requests                     | 2.32.5                   | 2.34.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-rpds-py                      | 0.30.0                   | 2026.6.=
3                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-sbom-cve-check               | 1.3.1                    | 1.3.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-scons                        | 4.10.1                   | 4.11.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-setuptools                   | 82.0.1                   | 84.0.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-setuptools-rust              | 1.12.0                   | 1.13.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-setuptools-scm               | 9.2.2                    | 10.2.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-shacl2code                   | 1.0.1                    | 1.1.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-snowballstemmer              | 3.0.1                    | 3.1.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-spdx-python-model            | 0.0.5                    | 0.0.6  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-sphinx-argparse              | 0.5.2                    | 0.6.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-testtools                    | 2.8.7                    | 2.9.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-trove-classifiers            | 2026.1.14.14             | 2026.6.=
1.19              |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-typing-extensions            | 4.15.0                   | 4.16.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-uritools                     | 6.0.1                    | 6.1.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-urllib3                      | 2.6.3                    | 2.8.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-uv-build                     | 0.10.10                  | 0.12.9 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-wcwidth                      | 0.6.0                    | 0.8.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-websockets                   | 16.0                     | 17.1   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-wheel                        | 0.46.3                   | 0.48.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| python3-zipp                         | 3.23.0                   | 4.1.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| qemu                                 | 10.2.0                   | 11.1.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| qemu-native                          | 10.2.0                   | 11.1.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| qemu-system-native                   | 10.2.0                   | 11.1.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| re2c                                 | 4.4                      | 4.6    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| repo                                 | 2.61.1                   | 2.66.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| resolvconf                           | 1.94                     | 1.95   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rpm                                  | 4.20.1                   | 6.0.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rpm-sequoia                          | 1.10.1                   | 1.10.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rpm-sequoia-crypto-policy            | git (f3f5fa454345=85)      | git (=
359ab169da6a=85)      |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rsync                                | 3.4.1                    | 3.5.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ruby                                 | 4.0.5                    | 4.0.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rust                                 | 1.94.1                   | 1.98.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| rust-cross-canadian                  | 1.94.1                   | 1.98.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| sbom-cve-check-update-cvelist-native | 2026-05-07               | 2026-08=
-25               |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| sbom-cve-check-update-nvd-native     | 2026.05.07-000006        | 2026.08=
.25-000009        |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| scdoc                                | 1.11.4                   | 1.11.5 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| screen                               | 5.0.1                    | 5.0.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| shaderc                              | 2026.1                   | 2026.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| shadow                               | 4.19.4                   | 4.20.2 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| shared-mime-info                     | 2.4                      | 2.5.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| spirv-headers                        | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| spirv-llvm-translator                | 22.1.1                   | 23.1.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| spirv-tools                          | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| sqlite3                              | 3.51.3                   | 3.53.4 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| strace                               | 6.19                     | 7.2    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| stress-ng                            | 0.20.01                  | 0.22.00=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| swig                                 | 4.4.1                    | 4.5.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| sysstat                              | 12.7.9                   | 12.8.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| systemd                              | 259.5                    | 261.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| systemd-boot                         | 259.5                    | 261.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| systemd-boot-native                  | 259.5                    | 261.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| systemtap                            | 5.4                      | 5.5    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| systemtap-native                     | 5.4                      | 5.5    =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| taglib                               | 2.2.1                    | 2.3.1  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| tcf-agent                            | 1.9.0                    | 1.11.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| tcl                                  | 9.0.3                    | 9.0.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| tcl8                                 | 8.6.17                   | 8.6.18 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| tiff                                 | 4.7.1                    | 4.7.2  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| time                                 | 1.9                      | 1.10   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| ttyrun                               | 2.41.0                   | 2.44.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| tzdata/tzcode-native                 | 2026c                    | 2026d  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| u-boot                               | 2026.01                  | 2026.07=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| u-boot-tools                         | 2026.01                  | 2026.07=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| utfcpp                               | 4.0.9                    | 4.2.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| util-linux                           | 2.41.5                   | 2.42.4 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| util-linux-libuuid                   | 2.41.5                   | 2.42.3 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vala                                 | 0.56.18                  | 0.56.19=
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| valgrind                             | 3.26.0                   | 3.27.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vim                                  | 9.2.0340                 | 9.2.099=
3                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vim-tiny                             | 9.2.0340                 | 9.2.099=
3                 |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| virglrenderer                        | 1.2.0                    | 1.3.0  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vte                                  | 0.82.2                   | 0.84.1 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-headers                       | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-loader                        | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-samples                       | git (fa2cf45adde0=85)      | git (=
383471195757=85)      |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-tools                         | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-utility-libraries             | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-validation-layers             | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| vulkan-volk                          | 1.4.341.0                | 1.4.357=
.0                |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| waffle                               | 1.8.1                    | 1.8.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| wayland                              | 1.24.0                   | 1.26.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| wayland-protocols                    | 1.47                     | 1.49   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| webkitgtk                            | 2.50.6                   | 2.52.6 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| weston                               | 15.0.0                   | 16.0.0 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| which                                | 2.23                     | 2.25   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| wireless-regdb                       | 2026.05.30               | 2026.09=
.03               |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| wpa-supplicant                       | 2.11                     | 2.12   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xev                                  | 1.2.6                    | 1.2.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xkeyboard-config                     | 2.47                     | 2.48   =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xmodmap                              | 1.0.11                   | 1.0.12 =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xrandr                               | 1.5.3                    | 1.5.4  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xset                                 | 1.2.5                    | 1.2.6  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xvinfo                               | 1.1.5                    | 1.1.6  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xwininfo                             | 1.1.6                    | 1.1.7  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
| xz                                   | 5.8.2                    | 5.8.3  =
                  |=0A=
+--------------------------------------+--------------------------+--------=
------------------+=0A=
=0A=
=0A=
Contributors to 6.1=0A=
-------------------=0A=
=0A=
Thanks to the following people who contributed to this release:=0A=
=0A=
-  Adam Blank=0A=
-  Adam Duskett=0A=
-  Adarsh Jagadish Kamini=0A=
-  Aditya GS=0A=
-  Adrian Freihofer=0A=
-  Aksh Garg=0A=
-  Alejandro Hernandez Samaniego=0A=
-  Alejandro Mery=0A=
-  Alessandro Zini=0A=
-  Alexander Kanavin=0A=
-  Alexander Stein=0A=
-  Alex Kiernan=0A=
-  Alper Ak=0A=
-  Amaury Couderc=0A=
-  Anders Heimer=0A=
-  Andreas M=FCtzel=0A=
-  Andrei Lalaev=0A=
-  Andrej Valek=0A=
-  Andrew Geissler=0A=
-  Anis Bougrine=0A=
-  Ankur Tyagi=0A=
-  Anthony Squires=0A=
-  Antoine Gouby=0A=
-  Antonin Godard=0A=
-  Anton Skorup=0A=
-  Aravind Bandari=0A=
-  AshishKumar Mishra=0A=
-  Aswin Murugan=0A=
-  Aurelien DESBRIERES=0A=
-  Baban=0A=
-  Babanpreet Singh=0A=
-  Benjamin Robin=0A=
-  Bhavikkumar Girishbhai Ronvelia=0A=
-  Bin Cao=0A=
-  Bruce Ashfield=0A=
-  Changqing Li=0A=
-  Chen Qi=0A=
-  Chris Laplante=0A=
-  Colin Pinnell McAllister=0A=
-  Corentin Guillevic=0A=
-  Daiane Angolini=0A=
-  Daniel Dragomir=0A=
-  Daniel McGregor=0A=
-  Daniel Turull=0A=
-  Daniel Wagenknecht=0A=
-  David Nystr=F6m=0A=
-  David Reyna=0A=
-  Dawid Bijak=0A=
-  Deepesh Varatharajan=0A=
-  Denys Dmytriyenko=0A=
-  Devansh Patel=0A=
-  Dmitry Baryshkov=0A=
-  Dmitry Sakhonchik=0A=
-  Efe Can Icoz=0A=
-  Eil=EDs =91pidge=92 N=ED Fhlannag=E1in=0A=
-  El Mehdi YOUNES=0A=
-  Enoch Ng=0A=
-  Enzo Frese=0A=
-  Eric Meyers=0A=
-  Ernest Van Hoecke=0A=
-  Esa Jaaskela=0A=
-  Etienne Cordonnier=0A=
-  Fabian Pfitzner=0A=
-  Fabian Pflug=0A=
-  Fabien Lehoussel=0A=
-  Fabio Estevam=0A=
-  Florin Diaconescu=0A=
-  Francesco Valla=0A=
-  Francisco Pedraza=0A=
-  Fredrik Svensson (svsvenss)=0A=
-  Frieder Schrempf=0A=
-  Gabriel Smith=0A=
-  Gavvala, Kris=0A=
-  George Refseth=0A=
-  Ghanshyam Banait=0A=
-  Gu=F0ni M=E1r Gilbert=0A=
-  Gustavo Henrique Nihei=0A=
-  Haiqing Bai=0A=
-  Haixiao Yan=0A=
-  Hangtian Zhu=0A=
-  Harald Brinkmann=0A=
-  Harish Sadineni=0A=
-  Hemanth Kumar M D=0A=
-  Hetvi Thakar=0A=
-  Hiago De Franco=0A=
-  Himani Barde=0A=
-  Himani Ramesh Barde=0A=
-  Himanshu Jadon=0A=
-  hongxu=0A=
-  Igor Opaniuk=0A=
-  Ivan Nestlerode=0A=
-  jaekyu.lee=0A=
-  Jaeyoon Jung=0A=
-  Jaipaul Cheernam=0A=
-  Jamin Lin=0A=
-  Jan Vermaete=0A=
-  Jate Sujjavanich=0A=
-  Jesse Van Gavere=0A=
-  Jinfeng Wang=0A=
-  Jinwang Li=0A=
-  Jo=E3o Marcos Costa=0A=
-  Joerg Vehlow=0A=
-  Johan Anderholm=0A=
-  John Ripple=0A=
-  Jonas Juffinger=0A=
-  J=F6rg Sommer=0A=
-  Jose Quaresma=0A=
-  Joshua Watt=0A=
-  Juhandr=E9 Knoetze=0A=
-  Junjie Cao=0A=
-  Kanksha Paturi=0A=
-  Karthik=0A=
-  KAZUYOSHI AKIYAMA (?? ??)=0A=
-  Khem Raj=0A=
-  Kris Gavvala=0A=
-  Kyungjik Min=0A=
-  Lee Chee Yang=0A=
-  Leon Anavi=0A=
-  Leonardo Costa=0A=
-  Leonid Iziumtsev=0A=
-  Levi Shafter=0A=
-  Lian Wang=0A=
-  Li Wang=0A=
-  Li Zhou=0A=
-  Luca Fancellu=0A=
-  Marcio Henriques=0A=
-  Marcus Flyckt=0A=
-  Marek Vasut=0A=
-  Mark Hatle=0A=
-  Mark Jonas=0A=
-  Markus Swarowsky=0A=
-  Markus Volk=0A=
-  mark.yang=0A=
-  Marta Rybczynska=0A=
-  Martin Jansa=0A=
-  Mathieu Dubois-Briand=0A=
-  Matt Madison=0A=
-  Mengshi Wu=0A=
-  Metz, Josiah=0A=
-  Michael Halstead=0A=
-  Michael Opdenacker=0A=
-  Michael Tretter=0A=
-  Michal Sieron=0A=
-  Mikko Rapeli=0A=
-  Mingli Yu=0A=
-  Minwoo Choi=0A=
-  Moritz Haase=0A=
-  Nate Kent=0A=
-  Nathaniel White=0A=
-  Nick Owens=0A=
-  Nico=0A=
-  Nicolas Dechesne=0A=
-  Niko Mauno=0A=
-  Nora Schiffer=0A=
-  Oleksiy Obitotskyy=0A=
-  Omkar Patil=0A=
-  Otavio Salvador=0A=
-  Pascal Eberhard=0A=
-  Paul Barker=0A=
-  Paul Eggleton=0A=
-  Peter Kjellerstedt=0A=
-  Peter Marko=0A=
-  Peter Tatrai=0A=
-  Philip Lorenz=0A=
-  Prabhudasu Vatala=0A=
-  Pratik Farkase=0A=
-  Quan Sun=0A=
-  Quentin Schulz=0A=
-  Rasmus Villemoes=0A=
-  Ricardo Salveti=0A=
-  Ricardo Simoes=0A=
-  Richard Purdie=0A=
-  Robert P. J. Day=0A=
-  Robert Yang=0A=
-  Rob Woolley=0A=
-  Roland Kovacs=0A=
-  Ross Burton=0A=
-  Rouven Czerwinski=0A=
-  Rouven Rastetter=0A=
-  Ryan Eatmon=0A=
-  Sai Sneha=0A=
-  Sam Kent=0A=
-  Sandeep J=0A=
-  Sebastian Muxel=0A=
-  Sergio Prado=0A=
-  sh0127.shin=0A=
-  Shinu Chandran=0A=
-  Siddharth Doshi=0A=
-  Siva Balasubramanian=0A=
-  Sudhir Dumbhare=0A=
-  Sumanth Gavini=0A=
-  Sundeep KOKKONDA=0A=
-  Sunil Dora=0A=
-  Tafil Avdyli=0A=
-  Tan Siewert=0A=
-  Taruntej Kanakamalla=0A=
-  Tejas Kanfade=0A=
-  Theo Gaige=0A=
-  Thomas Perrot=0A=
-  Thorsten Schmelzer=0A=
-  Thune Tran=0A=
-  Tim Orling=0A=
-  Tobias Pistora=0A=
-  Trevor Gamblin=0A=
-  Trevor Woerner=0A=
-  T, Sai Sireesha=0A=
-  Tushar Darote=0A=
-  Ulrich =D6lmann=0A=
-  Vijay Anusuri=0A=
-  Viswanath Kraleti=0A=
-  Vivek Puar=0A=
-  Vyacheslav Yurkov=0A=
-  Walter Werner Schneider=0A=
-  Wang Mingyu=0A=
-  Wei Deng=0A=
-  Wei Gao=0A=
-  Wei Zhang=0A=
-  Wenwen Fu=0A=
-  Wes Malone=0A=
-  WXbet=0A=
-  Xiaozhan Li=0A=
-  Xiuzhuo Shang=0A=
-  Yann Dirson=0A=
-  Yash Shinde=0A=
-  Yoann Congal=0A=
-  Yogesh Tyagi=0A=
-  Zheng Ruoqin=0A=
-  Zhixiong Chi=0A=
-  Zk47T=0A=
-  Zolt=E1n B=F6sz=F6rm=E9nyi=0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: blacksail=0A=
Tag: yocto-6.1=0A=
Git Revision: f26faba8568a3c8fc81d81d3650cc419847a4e17=0A=
Release Artefact: yocto-docs-f26faba8568a3c8fc81d81d3650cc419847a4e17=0A=
sha: db04fa7ccbe99ab633f83329490a4af296328c749835559bcc840a3f8aaf9b51=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/yocto-docs-f26f=
aba8568a3c8fc81d81d3650cc419847a4e17.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.1/yocto-docs-f26faba856=
8a3c8fc81d81d3650cc419847a4e17.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: blacksail=0A=
Tag: yocto-6.1=0A=
Git Revision: 419c1b0f1ed0e3ce22b1022061f763d007883121=0A=
Release Artefact: oecore-419c1b0f1ed0e3ce22b1022061f763d007883121=0A=
sha: 2619d7b6104324debe382938dfddc6e3b23d8b258e09a3d22c440d0dcafb17be=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/oecore-419c1b0f=
1ed0e3ce22b1022061f763d007883121.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.1/oecore-419c1b0f1ed0e3=
ce22b1022061f763d007883121.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: blacksail=0A=
Tag: yocto-6.1=0A=
Git Revision: 43946d08974e61361f6313ae348c5d87c12be934=0A=
Release Artefact: meta-yocto-43946d08974e61361f6313ae348c5d87c12be934=0A=
sha: cc2c54afc85fce7cd429eb356ada6b3b921fe6065169a297c085adba16bead21=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/meta-yocto-4394=
6d08974e61361f6313ae348c5d87c12be934.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.1/meta-yocto-43946d0897=
4e61361f6313ae348c5d87c12be934.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.20=0A=
Tag: yocto-6.1=0A=
Git Revision: 634f8dede6b9d71b5a6691499fd05a8678b46eae=0A=
Release Artefact: bitbake-634f8dede6b9d71b5a6691499fd05a8678b46eae=0A=
sha: bb9f71d0d6de0d8f456bfe35f6e3f9db518e39d15af3cd49b51a90f2c5488c58=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.1/bitbake-634f8de=
de6b9d71b5a6691499fd05a8678b46eae.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.1/bitbake-634f8dede6b9d=
71b5a6691499fd05a8678b46eae.tar.bz2=0A=
=0A=
=0A=
