Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713B6CD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 06:52:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1709.1778655166711969450
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 23:52:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=R7zHrCr2;
 spf=pass (domain: intel.com, ip: 198.175.65.17, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778655168; x=1810191168;
  h=from:to:subject:date:message-id:mime-version;
  bh=9gghhsJPKwgQi7P1r7bM4p6iCMM08XDTCzZJw4rf7AM=;
  b=R7zHrCr25hCmYoYTRq1BsRZUvujwciSV4fQqvYDKsqmUzBQZElBP/f7s
   hOJYHuY5DdtlMLYou33FNal1zfeOoC44KDzrpC7KTEBewTbCj0hTeq/uj
   /hgoTpR5MVXuBT65JiY3D+RXNduwtOynfve+kXkwRq87/h0QITGIonDum
   DdMOmDhu5YAYd/j0xCVfxYfrnqizL65EXO/AKf3IGUQUJ6I49xtNiqnmU
   gWAe3rV1SIfHmkTJD/INLs0Y+yhTX27O6K15EUKx6jYb8p3NSEIFMz50u
   frvOiMNDp0Mw0yZU27sMrSkOoH64BPYrWmtLHKt4KY16pBFbRcE5hb+bT
   w==;
X-CSE-ConnectionGUID: ZWr++UGpSpWDlsamSf/Kiw==
X-CSE-MsgGUID: JDAS50+qTXiM/EtqfNxebQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="79556968"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; 
   d="scan'208,217";a="79556968"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 23:52:46 -0700
X-CSE-ConnectionGUID: /ZilvgQnTiiH93aICuqj+A==
X-CSE-MsgGUID: XhMFXm7ES7KGt0xVUwg1rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; 
   d="scan'208,217";a="237016285"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 23:52:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 23:52:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 23:52:44 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 23:52:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWCQw3JY7S56kStuzO5vIfU/JaBCGnHoVNgU3IZ6gpT2kScwD9MZu/1HLzvlOkcmfaYnCx0MWDzBeYUVcEojWQ8qnopLijL5ssNkxKffuPc3M7cZ4fd9PUEgSmWfjMQPD8Tu7ZV6rH+Mc/5rAa4LRhb7piZSrGOZuIJD3ROLz3KjyroEVKLx8gcN91tQ3gW4QwVgTuxoX2D9gT/7YJRiS6PHGzKZhnFRIwQdDBoMb90qVI6rANaVKxaQc/0vFFLyJxia5VwnaXtupTdjV8KBFhfnyj3VacDUfmok2wajHz+giZYWx8kNczmG+Ql6Hj1awlhC3aaaZR3HfVdC0LRSEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lJ/fiTbFbcXqSc+cUUEf8D71EFrcjQl9xFpstRu4VFI=;
 b=n4glvr1VD7oUu/7Bjkm75Ibxb6T4Gdu56jpvR949MqVdnn01aN8f20340Q/ZTCBpBtMD/IWNpwTPQ8S8LBYKvgrCRtfQByB02NHFEKvJdK6nQRDD5VBQ/3gV1JvIVWXdd+GFTQkOy5czJPdqlDeTqo/vkFX9pRsLdoWlapQ5pNtWglOokrfbOUh+b7H2UQ+BsE6PaMYmlCzrEbb5IVfFN9K8npDIoDRq1Se8GqYxtO8FwRSIYXDh4itMVssCwvUCEoQRyrSQFGx5mArvq0q90FFHZmuCyN0kV2ZzGzwaQURpxST1EjUdIY/eF0sNBgAPQiT6VPDNovmczoWNeNyIDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS0PR11MB8208.namprd11.prod.outlook.com (2603:10b6:8:165::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Wed, 13 May
 2026 06:52:39 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 06:52:39 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.0 (wrynose-6.0) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.0 (wrynose-6.0) is Released
Thread-Index: AQHc4qIMea7x2Tzvck2ksBvo8/J5ag==
Date: Wed, 13 May 2026 06:52:39 +0000
Message-ID: <BL4PR11MB87972EEF33C603DFE901BE00B9062@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS0PR11MB8208:EE_
x-ms-office365-filtering-correlation-id: 58d2b400-ac3b-4ae7-f4f8-08deb0bc395e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003|18002099003|56012099003|3023799003|13003099007|38070700021|11063799003;
x-microsoft-antispam-message-info: gktPJlEyRxN3gEuBQYlucZiJS4l39eT7D4BT/bdM8JDuTVTWCAQIIfOss4ZlGqnl4+HsBaThObJTNKjcLidra+eH/DxKEqRXTdU2T0MOKUPfNaLKxYyHn16ALP5CTc7YUhxrn41056ei+Z6sZ8a3H1TEh51ZpWfz07LNQqYlE/48DUlMKsdOpdywebns0rcYB8/44tZbublCWCzGtRJD1R4m4hTTSCTzqC5xpXHwNvFj25cWLJ+KplbNZFclE6P0TmkdNceC1EYEYTauJRFyZTwTnldhSHPKQXMIIAQNOSx9d3dTIjy6vFGq5vPMZdGXqif+byQ/VgckqgTyPp+oTALL7rRozauopJTjAYob3yD8pnvHwBsud3eg1QlB+Z6qkkamuZ1mty2v6jfIy2b7oZd90bR5buBfJT7Qw9tM9CLwViq3VIheUMwxoUohJBTDhW49LN178PIrR9R2O8A18mlRCZTu9K7rwgFsZ3oLWweTZK4MzNCXETYMmuWE+BgL7xQwAefwnx+C8+7hC9vOiDRyFcrvVUY5ahr0Tz1+IcF//2AnpXI8dQiFYDkYekOvZwjnDGlbBe+eIncmD9HYwd+j1Ifcs+6Id6Jyr4Aj8840CBIA9Ev/8muBk/Qx7OwjUidmJQvxrvRTN1xjMXNtITuQcsXMmrJ5V8+3jAPtfO5F2dsUEGtru1kuLb+sQdIV/mrdolUbdy5zpJ+dWB/STg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(8096899003)(18002099003)(56012099003)(3023799003)(13003099007)(38070700021)(11063799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?cSZR/XLl6js3OtrnJ1qYCLleE+lfmVUh1ZZJaaOyrCPJqJ5yi9YYoCao?=
 =?Windows-1252?Q?ckwpWKV6uVFwHdbJV4EFlbLgW9kMwgml5pkZHY8E4WvKkkSgkKn4KS99?=
 =?Windows-1252?Q?tZlKGUenSmEBV05bZWYn1eaFLAG1HaOvLezDGF9e+nrSMQWko9lJXMWI?=
 =?Windows-1252?Q?p69BirFMMQ0R2F3YcqYxO7H/OqycfKdorkgytNPKbdY49xAwVt299o9H?=
 =?Windows-1252?Q?0oOvs5ZxYsS+I1vbqaxMu7+IA9erjv8/D7DIOyaZM0yvZSc5IZeCt4y7?=
 =?Windows-1252?Q?fqNY2i5yvZQS8c7KoKcCzJ0qcfoNna+LEgPk2Icj3kHktU9N2Ge2LSPU?=
 =?Windows-1252?Q?lH/FpLe7kHA09smY+gpm9NQf/6xXPK+TQseW2yENU33M6KfGNz+ji69S?=
 =?Windows-1252?Q?oOSfH0cpjjXxdjzK5XIcj0ke9aEs4a05rVqAQ4bPuJ7W160W2WCq0za9?=
 =?Windows-1252?Q?VRjaVg4CHqBc5/NqzJyZxAg6jFGzJtnRQghPYI371T4jFw9s4pjqfZTO?=
 =?Windows-1252?Q?BgKMXwA0v8E0ifb7IQx3+lnSfM7tekLFlUCpX/zsozBoDrRBj/1NeDvc?=
 =?Windows-1252?Q?1XI+9b/TWCJo/BlYJt0n3Sfwxynxc6tBBqrnSBzOJPXGTYie6yI5DeZg?=
 =?Windows-1252?Q?qupv3jXglP8ZsTzKyfebO1BOmNRxJ23UfT8GBLEQ8hpcbZyrLIG6mJXV?=
 =?Windows-1252?Q?iNL68WiD/jAdmL00SthEDGfRao8dksAfPLt05e+Cxx/4eLOPR+815zpq?=
 =?Windows-1252?Q?ggL46tandqmpjm6hhzL7whPX0xfHhdjSyBoxwPVABdcb8k+PySWEoNIx?=
 =?Windows-1252?Q?2fHKuP4MUo6whztGHTFdLPBTlITkGAvDnbt2hM0WvdkfkjYG+nsSswXz?=
 =?Windows-1252?Q?QvOWMgRtcqd++EsU37QfrjCP8rEDPdbBnkRNvdvhGyKw8wHDENVT9oYh?=
 =?Windows-1252?Q?NXFfAnOBLKEFH+MCUoOYvU9bhFMGmUHIEnLv32u/uJ9fVp22nxqMVb/K?=
 =?Windows-1252?Q?lzRlnkb9KncLu6cvFzuYBUxU15YRSEkeOVoVEzLCfig2QFW55NjxOH+I?=
 =?Windows-1252?Q?oKVTNSZ+Z1TkHEgjE7EwvMt7aUZNFHaGQVu3nV1BsC2ToTtQOyom9grI?=
 =?Windows-1252?Q?OpOrjzIWzKv3FRFPdiVk4SskR73k4BMwFpRCumR7LrDA97qj9hBAHw9P?=
 =?Windows-1252?Q?AMyylb0IACDqE+vbYQzM0poexj8ychAL3q0bcbsTCuAarfzRA2DLm6a6?=
 =?Windows-1252?Q?O8vNSy64lmrp/5hRT9R2RVFkuEyjMKc69kNeJtn24dFwJMgc0WvnDMO8?=
 =?Windows-1252?Q?jkrgizyqyhqiAB4XDlru/uhz4nV7B/9Pi33KUAVPDHH07jJVnsa9D6JF?=
 =?Windows-1252?Q?hWyQqUcjaNQa89Hu64tkfOzk9aKOY5AQmz1aErGY3JlIA/jeAUu6fNF/?=
 =?Windows-1252?Q?8SYN6cnWDqQpD+zvRf39bwk2fcc49HpxLukZpcX3LYkxEuT5bObCnKGY?=
 =?Windows-1252?Q?nKGp1+mIT7lEPyVfO55xpIHgm+rImJG6LvLjVQbmqme3WnzmTiz/ShOw?=
 =?Windows-1252?Q?v4KbZE1aN4/ew6MJtTpPXz2hBXfAz/4aM7GEdcNAkAUNyKxK73DYBx+H?=
 =?Windows-1252?Q?tIiynCQJzedRgxx5nmRJTcEOc9ubqtRFDxHNCqNTVHZyJt8gmO46p8Fq?=
 =?Windows-1252?Q?4lXDeDz98P97RHdk0GCcDEUZ0TR985+KkVetiDRi1pPVh4ydQ22X7fHB?=
 =?Windows-1252?Q?koERBYiBVyorZxURrTOXAPGd6MRWYMK+ntZ/onQ1mvpcZRiwTqM4ujqH?=
 =?Windows-1252?Q?b0nMzjDTKznCH/7lgr0xOQJXEsEh8IUUEy4DSGVGkM6s3FqqsTr1kNCK?=
 =?Windows-1252?Q?P0hDP+JwfyfAfA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87972EEF33C603DFE901BE00B9062BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mteLhWgYaIEATmK4Oqio/v9tpQTwaqFUugfZZcyYsi3kCGRCAdqf/U3Acg7pkQeJ7f5l84yH6OtKov2tosTwQZDGdBbhNVT3WbVuqyREuKp/h0xiQvr9U3tnTPUG5j+Vscoa7eTyjsBU78ThhIhcXM+K28FaN+Bwudk5piaPXLTOCK87YngCoy96W8DWyB61B9aFD0tvKtf2A9UvV5G//B3d9DN329zijhVc9cAJdcCGehtF6dhd34pB0IstE8GQPKZmg/CTJWQncKNeCiIBoyUYPxB+5qt2hwqtR+7NK4zKmp99MG1I3TCPRFBsCJMPbB/LvDznfex3eD0tNZWMbA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d2b400-ac3b-4ae7-f4f8-08deb0bc395e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 06:52:39.0239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1OCcxe4e7LO4PzIJBF222qc6KEG4dUGnwUxgJL9fGJVOqLWU1xeP2SLljMp7ZkQJVqiEVVYraelLBfYW2eHJJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8208
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 06:52:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66548

--_000_BL4PR11MB87972EEF33C603DFE901BE00B9062BL4PR11MB8797namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 6.0 Release is now available f=
or download.

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/
https://mirrors.kernel.org/yocto/yocto/yocto-6.0/

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/testreport.txt

We have removed build-appliance images, core-image-ptest images and x86-64 =
extensible SDK installers from our release artefacts to reduce unnecessary =
disk space usage.
Please let us know if you depend on any of these artefacts.

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-6.0 Release Notes
--------------------------

This document lists new features and enhancements for the Yocto Project 6.0=
 Release (codename =93wrynose=94). For a list of breaking changes and migra=
tion guides, see the Migration notes for 6.0 (wrynose). (https://docs.yocto=
project.org/dev/migration-guides/migration-6.0.html)

The 6.0 (wrynose) release is the new LTS release after 5.0 (scarthgap). If =
you are migrating from the 5.0 version, be sure to read the previous migrat=
ion guides:

    Release 5.1 (styhead) : https://docs.yoctoproject.org/dev/migration-gui=
des/migration-5.1.html

    Release 5.2 (walnascar) : https://docs.yoctoproject.org/dev/migration-g=
uides/migration-5.2.html

    Release 5.3 (whinlatter) : https://docs.yoctoproject.org/dev/migration-=
guides/migration-5.3.html

See also the list of new features and enhancements of the previous releases=
:

    Release notes for 5.1 (styhead) : https://docs.yoctoproject.org/dev/mig=
ration-guides/release-notes-5.1.html

    Release notes for 5.2 (walnascar) : https://docs.yoctoproject.org/dev/m=
igration-guides/release-notes-5.2.html

    Release notes for 5.3 (whinlatter) : https://docs.yoctoproject.org/dev/=
migration-guides/release-notes-5.3.html


New Features / Enhancements in 6.0
----------------------------------

- Linux kernel 6.18, gcc 15.2, glibc 2.43, LLVM 22.1.2, and over 300 other =
recipe upgrades

- Minimum Python version required on the host: 3.9.

- Kernel-related changes:

  - kernel-fit-image: Support arbitrary loadables (2535427)

  - kernel-yocto: Allow enabling Rust in the kernel by adding rust to the K=
ERNEL_FEATURES (for Linux kernel recipes inheriting this class) (6719ed4)

  - Disable ccache support when Linux kernel Rust support is enabled (d80d0=
06)

- New core recipes:

  - libconfig: Import recipe from https://git.openembedded.org/meta-openemb=
edded/, needed by one of the Mesa recipes (1a0196a)

  - python3-sphinxcontrib-svg2pdfconverter: Used for the generation of the =
Yocto Project documentation (f3f0019)

  - python3-pyzstd: Import from meta-python, needed by the ukify tool of sy=
stemd v258 (88a2713)

  - python3-uv-build: This recipe adds the uv Python build backend, require=
d by python3-cryptography (0880cd2)

  - blueprint-compiler: Add the recipe as it became a dependency of the epi=
phany recipe after its upgrade to 49.2 (4212392)

  - python3-sbom-cve-check: New recipe for building and using sbom-cve-chec=
k, a lightweight SBOM CVE analysis tool (0fdacec)

  - python3-shacl2code, python3-hatch-build-scripts, python3-spdx-python-mo=
del: Added as dependencies of python3-sbom-cve-check (4862221, 41591af, a83=
eaca)

  - libfyaml: Added as a dependency of appstream (b8b7b58)

  - meta-world-recipe-sbom: Building this recipe will produce SBOM document=
s for each recipe present in the build environment, using the create-spdx c=
lass. This is different from the image SBOM which can also be generated usi=
ng the create-spdx class after building an image. See Creating a Software B=
ill of Materials for more information (https://docs.yoctoproject.org/dev/de=
v-manual/sbom.html) (d999ac4)

  - python3-kirk: The Kirk application is a fork of runltp-ng and became th=
e official LTP tests executor (c33fd4e)

  - wic: This recipe builds the WIC command-line tool. This used to be part=
 of OpenEmbedded-Core (OE-Core) but is now externally managed (25ca1cb, b9e=
2a2f)

- New core classes:

  - kernel-yocto-rust: Adds the required dependencies to build the Rust com=
ponents of the Linux kernel (6c90097)

  - module-rust: Support for building out-of-tree Rust kernel modules. An e=
xample recipe using this class can be found in meta-skeleton/recipes-kernel=
/rust-out-of-tree-module (76fd22f, 76fd22f)

  - sbom-cve-check: Class for post-build CVE analysis of an image, which us=
es the sbom-cve-check tool internally. This also obsoletes the cve-check cl=
ass. (8ef22ad, 00de455)

  - sbom-cve-check-recipe: Class for post-build CVE analysis of recipes (us=
ing the recipe SBOM, meaning building the software provided by the recipe i=
s not needed), which uses the sbom-cve-check tool internally (e2518b1)

- New variables:

  - The OPENSSH_HOST_KEY_DIR variable can be used to specify the directory =
where OpenSSH host keys are stored. The default value is /etc/ssh (addd80d)

  - The OPENSSH_HOST_KEY_DIR_READONLY_CONFIG variable can be used to specif=
y the directory where OpenSSH host keys are stored when the device uses a r=
ead-only filesystem. The default value is /var/run/ssh (addd80d)

  - The SPDX_INCLUDE_KERNEL_CONFIG can be set to =931=94 to export the Linu=
x kernel configuration (CONFIG_* parameters) into the SPDX document when us=
ing the create-spdx class (228a968)

  - The SPDX_INCLUDE_PACKAGECONFIG variable can be set to =931=94 to export=
 a recipe=92s PACKAGECONFIG features (enabled/disabled) into the SPDX docum=
ent when using the create-spdx class (228a968)

  - The SPDX_PACKAGE_URL allows specifying a space-separated list of Packag=
e URLs (purls) for the software Package when using the create-spdx class (8=
74b2d3)

  - The SPDX_GIT_PURL_MAPPINGS variable allows mapping domain names to PURL=
s (Package URLs) in SPDX documents (9f1825e)

  - The SPDX_CONCLUDED_LICENSE allows specifying the hasConcludedLicense ob=
ject of individual SBOM packages when using the create-spdx class (bb21c6a)

  - The FIT_MKIMAGE_EXTRA_OPTS variable allows passing extra options to the=
 mkimage command when creating a FIT image with the kernel-fit-image class =
(d925d67)

  - The FIT_CONF_MAPPINGS variable allows mapping extra configurations to e=
xisting ones or rename an existing configuration in FIT images created with=
 the kernel-fit-image class (e30f809)

  - The UBOOT_CONFIG_FRAGMENTS and UBOOT_FRAGMENTS allow supplying addition=
al configuration fragments to the existing U-Boot configuration. See the de=
finition of the variables for more information, and the documentation of th=
e uboot-config class (https://docs.yoctoproject.org/dev/ref-manual/classes.=
html#ref-classes-uboot-config) (9e96d3d)

  - The IMAGE_EXTRA_PARTITION_FILES allows specifying extra files from the =
deploy directory (DEPLOY_DIR_IMAGE) to install in a WIC partition created w=
ith the extra_partition plugin (e152607)

  - The FIT_LOADABLES, FIT_LOADABLE_FILENAME, FIT_LOADABLE_TYPE, FIT_LOADAB=
LE_ARCH, FIT_LOADABLE_OS and FIT_LOADABLE_LOADADDRESS variables can be used=
 to specify arbitrary loadables in a FIT image (2535427)

- Global configuration changes:

  - Changes in DISTRO_FEATURES default values and how DISTRO_FEATURES & MAC=
HINE_FEATURES are provided, see migration guides for more information. (htt=
ps://docs.yoctoproject.org/dev/migration-guides/migration-6.0.html#changes-=
in-how-default-distro-features-and-machine-features-are-provided)

  - base-passwd: Add a clock group as systemd version v258 introduces this =
group to enable applications like linuxptp to open clocks without root priv=
ileges (aad8493)

  - lto.inc: Add a Clang specific LTO configuration (253da2e)

  - bitbake.conf:

    - remove DEBUG_PREFIX_MAP from TARGET_LDFLAGS (1797741)
    - The default definition of TARGET_LDFLAGS used to contain the value of=
 DEBUG_PREFIX_MAP, to fix binary reproducibility issues. This was no longer=
 needed after the originating GCC bug was fixed (1797741)
    - Switch BB_SIGNATURE_HANDLER to OEEquivHash and BB_HASHSERVE to auto b=
y default (5596ea1, 4a38840)

  - The uninative class is now enabled by default. This allows reuse of nat=
ive sstate built on one distro on another (722897f)

  - The no-static-libs.inc file, disabling most static libraries in various=
 recipes, is now included by default in the default distro setup (appearing=
 as the nodistro DISTRO) (03fc931)

  - The security_flags.inc file, adding various security related flags to t=
he default compiler and linker, is now included by default in the default d=
istro setup (appearing as nodistro DISTRO) (4c2d64c)

  - The yocto-space-optimize.inc file, adding various space optimization tw=
eaks, is now included by default in the default distro setup (appearing as =
nodistro DISTRO) (175fcf9)

- QEMU / runqemu changes:

  - qemuboot`: Make the tap interface nameserver configurable through QB_TA=
P_NAMESERVER (0e8c258)

  - qemu: Disable the libkeyutils feature (30cc9f5)

  - runqemu-extract-sdk: Support the tar.zst format (650bb45)

  - qemurunner: Improve qmp module detection (a7386d0)

  - runqemu: Support .tar.zst, .tar,xz, .tar rootfs archive types (3a6172f)

  - runqemu: Allow VNC to be used as a fallback when there is no DISPLAY se=
t (df9e9f3)

- Documentation changes:

  - The documentation build now fetches the list of active and inactive ver=
sion of the documentation from the remote releases.json file. This also app=
lies to the BitBake documentation.

- Go changes:

  - go: Disable workspaces when building (GOWORK=3D"off") (c52c5e8)

  - meta-go-toolchain: Disable support for the riscv32 and ppc32 architectu=
res, as this was not supported (f554071)

- Rust changes:

  - Enable dynamic linking with llvm. This allows dynamically linking to li=
bLLVM.so instead of linking statically (74ba238)

  - Install Rust library sources for make rustavailable support (2912ca3)

  - Enable dynamic LLVM linking by default (d0671c3)

  - Enable fully static linking when TCLIBC is set to musl (75409c6)

- Wic Image Creator changes:

  - wic/engine: Fix copying directories into wic image with ext* partitions=
 (1ed38af)

  - Re-implement sector-size support (b50d6de)

  - The Wic tool is now maintained in a separate project, no longer part of=
 OpenEmbedded-Core (OE-Core): https://git.yoctoproject.org/wic/

  - A new wicenv type can be added to IMAGE_FSTYPES to place the .env file =
generate by Wic in the deployment directory (DEPLOY_DIR_IMAGE) (e4d4970)

- Testing-related changes:

  - ptest support was added for the following recipes:

    - libarchive (6e0bf90)
    - libassuan (1010abf)
    - libcheck (1bb06e2)
    - libconfig (f3e9d13)
    - libksba (f50a200)
    - libmd (4c0a413)
    - libpcre2 (a7b79bf)
    - libsolv (f5432d1)
    - libyaml (ed2a345)
    - utfcpp (49314ca)

  - selftests: Use SHA256 keys for RPM tests (692919b)

  - oeqa: Open JSON files to parse in a context manager (e96baf5)

  - resulttool: Add ptest support to the JUnit output format (2abe2d7)

  - do_testimage: Print last lines of kernel log on test fail (fea3c44)

  - reproducible: Use the jQuery CDN instead of jquery-native (d3ee549)

  - selftest: Test installation of recipes with complex packaging (6f3aab6)

  - Add test_sdk_runqemu to test the execution of runqemu from an SDK (7fbb=
281)

  - Add tests for Rust support in the Linux kernel (01ea2b2, 10dff9f)

  - Replace runltp with kirk, as it became the new official LTP test execut=
or (c1e5ed4)

  - WIC related tests were updated after wic was moved to its own repositor=
y and is externally managed (b9e2a2f)

- Utility script changes:classes

  - bitbake-config-build: It is now possible to disable all fragments start=
ing with a prefix by issuing bitbake-config-build disable-fragment <prefix>=
/ (573695d)

  - recipetool: Support PEP639-variant of license key in Python pyproject.t=
oml files (9d1a7bb)

  - buildhistory:

    - Also show renamed directories (9bf2211)
    - Fix handling of RDEPENDS style strings (b013d62)

  - create-pull-request: Keep commit hash to be pulled in cover email (c78f=
5ae)

  - yocto-check-layer: Add messages in test_readme assertions (9fe883c)

  - improve_kernel_cve_report:

    - Sort kernel_compiled_files (682e5be)
    - Correct the description for fixed version (b76da20)
    - Update data if CVE exists (9ea6d92)
    - Validate that cve details field exists (80ff490)

  - oe-pkgdata-util: improve the lookup-pkg error message for RPROVIDES pac=
kages (46ff3a8)

- BitBake changes:

  - bitbake-layers:

    - Add a --show-variants option to the show-recipes subcommand to displa=
y BBCLASSEXTEND variants (353d5e9)
    - Fix the branch detection method of layerindex-fetch (af9dd01)

  - bitbake-setup:

    - Implement symlinking local sources into builds with the --use-local-s=
ource option of the init subcommand (ed5a3a0)
    - Convert print() calls to use a BitBake logger (6e511d0)
    - Correct several scenarios in layer updates (aa15cc7)
    - Source in the git-remote section can now be specified more simply wit=
h the uri property, instead of the remotes property (7941a5d). For example:

          "bitbake": {
              "git-remote": {
                  "uri": "https://git.openembedded.org/bitbake",
                  "branch": "master",
                  "rev": "master"
              }
          }

    - Use the internal registry if run from a Git checkout, from a remote B=
itBake repository otherwise (675e907)
    - Fragments passed in the oe-fragments-one-of property can now contain =
descriptions (29f2cee)
    - Improve the readability of choices during the bitbake-setup init comm=
and (d970063)
    - Enable coloring of the diff outputs when using the bitbake-setup stat=
us or bitbake-setup update commands
    - The bitbake-setup update now behaves in a non-destructive way: local =
commits and modifications to layers are taken into account, and the tool wi=
ll either stop or warn the user that the update is possible or not (2ee3a19=
)
    - Share Shared State by default between builds, by adding a definition =
for SSTATE_DIR and BB_HASHSERVE_DB_DIR in the site.conf file created by bit=
bake-setup init (a70c336)
    - Generate config files for VSCode by default, unless --no-init-vscode =
is passed to bitbake-setup init (92fd721)

  - The unpack() function (the one containing the logic of the do_unpack ta=
sk), can now take an update argument to allow updating a Git repository in-=
place rather than deleting it and re-creating it. An alias function named u=
npack_update() was created for this unpack mode. See The Non-Destructive Up=
date (unpack_update) for more information (https://docs.yoctoproject.org/bi=
tbake/dev/bitbake-user-manual/bitbake-user-manual-fetching.html#bb-the-unpa=
ck-update) (e7d5e15)

  - cooker: Use BB_HASHSERVE_DB_DIR as hash server database location. If un=
set, the existing behavior is preserved (b339d05)

  - bitbake-getvar: Show close matches when no providers are found (1f8fa7c=
)

  - The GIT_CONFIG_GLOBAL environment variable will now be taken into accou=
nt by the Git fetcher, to allow passing a different set of Git configuratio=
n options when fetching Git repositories (4c37844)

  - When using the subpath parameter with the Git fetcher in an SRC_URI, pr=
operly make the HEAD point to the value specified in SRCREV.

- Clang/LLVM related changes:

  - compiler-rt:

    - Remove the need to depend on libgcc (f504b6b)
    - Always build C runtime (crt) files (56fe42a)

  - libcxx: Remove GNU runtime from dependencies (8034509)

  - libcxx/compiler-rt: Add support for llvm-libgcc, a drop-in replacement =
for libgcc and crt files (ed02230)

- SPDX-related changes:

  - Output SBOM documents now include recipe metadata (d999ac4)

  - spdx30_tasks: Fix SPDX_CUSTOM_ANNOTATION_VARS implementation (52ab3b6)

  - kernel: Add a task to export the kernel configuration to SPDX (228a968)

  - Add support for exporting the PACKAGECONFIG to SPDX (7ec61ac)

  - Add suport for package URLs (PURLs) through SPDX_PACKAGE_URL (874b2d3)

  - Support only SPDX 3 and removed SPDX 2.2 support (12abd05)

  - The create-spdx class used to include VEX statements in the SPDX docume=
nts tied to each packages. This is no longer the case, as these statements =
are now found in the SPDX documents for recipes directly. This was done to =
decrease the duplication of these statements for packages that were generat=
ed by the same recipe.
    The output SPDX document for an image recipe will still include the VEX=
 statements, as the SPDX document for the image also include the recipe SPD=
X metadata.
    The inclusion of VEX statements in SPDX documents can be controlled wit=
h the SPDX_INCLUDE_VEX variable (d999ac4)

- devtool changes:

  - ide-sdk:

    - Find bitbake-setup=92s init-build-env first, and oe-init-build-env if=
 not found (6ab7e9e)
    - Add gdbserver attach mode support (1191710)
    - Support GDB pretty-printing for C++ STL types (a69e2ba)
    - Support kernel module development (aaf15d6)

  - Add new patches in correct order when running devtool finish (fa7877d)

  - Prevent devtool modify -n from corrupting Linux kernel Git repos (d383e=
a3)

- Patchtest-related changes:

  - Code refactoring and improvements (86d0b22, 317ef42, 6cdb5cb, ae787b3, =
a850252)

  - Reject Upstream-Status after scissors (2156ef9)

- insane / sanity classes related changes:

  - Reject TMPDIR containing redundant slashes to avoid errors in execution=
s of do_populate_sysroot (3e72ebe)

  - sanity: Warn when the Shared State cache directory (SSTATE_DIR) is outs=
ide of the build directory (BUILDDIR), but the Hash Equivalence database is=
 inside it (491de0d)

- Security changes:

  - A new document was added to the Yocto Project documentation: Yocto Proj=
ect Security Reference. It is intended to document how to report vulnerabil=
ities to the Yocto Project security team.

- sbom-cve-check-related changes:

  - Escape special characters in CPE 2.3 strings (9dd9c00)

- New PACKAGECONFIG options for individual recipes:

  - curl: schannel
  - gstreamer1.0-plugins-bad: fdkaac
  - gstreamer1.0-plugins-good: qt6
  - libinput: lua, libwacom, mtdev
  - librepo: sequoia
  - mesa: expat, zlib
  - openssl: legacy
  - opkg: acl, xattr
  - orc: hotdoc
  - python3: freethreading (experimental, see c569901)
  - python3-cryptography: legacy-openssl
  - systemd: osc-context
  - systemtap: readline

- systemd related changes:

  - Package ukify separately, with the systemd-ukify package name (e924274)

- U-Boot related changes:

  - uboot-config: Add support for generating the U-Boot initial environment=
 in binary format using UBOOT_INITIAL_ENV_BINARY (cf11b14)

  - A new way of specifying multiple U-Boot configurations has been added (=
cd9e730). See U-Boot configuration flow changes (ref-classes-uboot-config) =
(https://docs.yoctoproject.org/dev/migration-guides/migration-6.0.html#ref-=
migration-6-0-u-boot-config-flow-changes)

- Miscellaneous changes:

  - curl: Ensure CURL_CA_BUNDLE from host environment is respected (545e43a=
)

  - weston: Add PipeWire as runtime dependency when pipewire is part of PAC=
KAGECONFIG (9f52867)

  - uki: Use basename of device trees available via KERNEL_DEVICETREE (27a7=
fbb)

  - rpcbind: Set the owner of /run/rpcbind to rpc (80e4289)

  - archiver: Remove WORKDIR from the patch directory (c99d228)

  - gtk4: Convert to use the gnomebase class (fcd5e7c)

  - udev-extraconf: Split automount and autonet into seperate packages (ude=
v-extraconf-automount and udev-extraconf-autonet) (08662d7)

  - e2fsprogs: Fix a bug for files larger than 2GB (683a1e7)

  - mesa: Add support for the virtio, gfxstream, hasvk Vulkan drivers (8e7f=
fdc, 3b56f14)

  - mesa: Drop VDPAU remnants in the recipe after upstream support was remo=
ved (3b05f58)

  - cross: Propagate dependencies to outhash, improving hash equivalence (2=
67b651)

  - run-postinsts: Propagate exit status to the run-postinsts.service syste=
md service (7f74d88)

  - freetype: Use meson instead of autotools* (7395e4f)

  - wpa-supplicant:

    - Build with OWE support by default (d16c66b)
    - Build with 802.11be support by default (d16c66b)

  - overlayfs: Remove helper unit (623c20f)

  - patch: Show full path when a patch fails to apply (602e28b)

  - kea: Replace keactrl with kea daemons (kea-dhcp*) in initscripts (7f9d9=
29), and remove keactrl from the recipe (08c3877)

  - initramfs-framework:

    - Add handover of PID 1=92s arguments to modules (a0ab3d1)
    - Fix Linux kernel command line parsing when passing in double quotes (=
f9acaf1)

  - perl: Provide pod2man (in the recipe=92s PROVIDES definition). This is =
used by many other recipes to produce man pages. This allows existing recip=
es to explicitly depend on pod2man-native to produce man pages (1d1e55d)

  - build-sysroots: Add sysroot tasks to default build and remove warning (=
e73f150)

  - Licenses and manifests are now deployed in the SDK when setting COPY_LI=
C_DIRS and/or COPY_LIC_MANIFEST, for both host and target sysroots (f757ae4=
)

  - openssl: Disable TLS 1.0/1.1 by default (d5501e7)

  - python3-cryptography: Disable legacy-openssl feature by default (1acd19=
9)

  - openssl: Add support for config snippet includes. This can be done by i=
nstalling extra configuration files in ${sysconfdir}/ssl/openssl.cnf.d/ (34=
bafcf)

  - busybox:

    - Enable SELinux support if DISTRO_FEATURES contains selinux (c544f12)
    - Do not build SUID binary without an applet (1406f95)

  - coreutils: kill and uptime are no longer provided by the recipe (cedeb9=
5)

  - tcl8: Skip timing-sensitive ptests (1b93479)

  - license_image.bbclass: Report all packages with incompatible license (w=
hen using INCOMPATIBLE_LICENSE) (57fe3e4)

  - python3: Package all of the compression module into python3-compression=
 (5f34680)

  - gobject-introspection: Disable cache for the scanner during the do_comp=
ile task (GI_SCANNER_DISABLE_CACHE=3D1), to fix an intermittent build failu=
re (2b55dd1)

  - archiver: Don=92t try to preserve all attributes when copying files (6e=
83136)

  - useradd*: allow inheriting the class with only USERADD_DEPENDS set, whe=
n a recipe only depends on users/groups created by another (09a901b)

  - vim: disable GTK+3 UI by default (a07763f)


Known Issues in 6.0
-------------------

Referencing an unset variable in DISTRO_FEATURES causes DISTRO_FEATURES_NAT=
IVE and DISTRO_FEATURES_NATIVESDK to be set incorrectly. The leads to confu=
sing errors, such as
  - Nothing PROVIDES 'libseccomp-native'
  - Required build target 'glibc' has no buildable providers.

To resolve these errors, ensure that all variables used in DISTRO_FEATURES =
are set. Variables may be set to an empty string if not needed.

A fix for this issue is in progress and should be included in Yocto Project=
 6.0.1. See Yocto bug #16275 for further details (https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D16275).


Recipe License changes in 6.0
-----------------------------

The following changes have been made to the LICENSE values set by recipes:

+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| Recipe(s)                   | Previous value                             =
            | New value                                                    =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| libxcrypt-compat, libxcrypt | LGPL-2.1-only                              =
            | LGPL-2.1-only & 0BSD & BSD-3-Clause                          =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| libpcre2                    | BSD-3-Clause                               =
            | BSD-3-Clause & BSD-2-Clause & MIT                            =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| libtest-fatal-perl          | Artistic-1.0 | GPL-1.0-or-later            =
            | Artistic-1.0-Perl | GPL-1.0-or-later                         =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| python3-cffi                | MIT                                        =
            | MIT-0                                                        =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| icu                         | ICU                                        =
            | ICU & MIT                                                    =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| iso-code                    | LGPL-2.1-only                              =
            | LGPL-2.1-or-later                                            =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+
| ruby                        | Ruby | BSD-2-Clause | BSD-3-Clause | GPL-2.=
0-only |    | Ruby | BSD-2-Clause | BSD-3-Clause | GPL-2.0-only | ISC | MIT=
 | BSL-1.0 |     |
|                             | ISC | MIT                                  =
            | Apache-2.0                                                   =
                 |
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+


Security Fixes in 6.0
---------------------

The following CVEs have been fixed:

+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| Recipe                | CVE IDs                                          =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| avahi                 | CVE-2025-59529, CVE-2026-34933                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| binutils              | CVE-2025-69644, CVE-2025-69647, CVE-2025-69648, C=
VE-2025-69649, CVE-2025-69650, CVE-2025-69651, CVE-2025-69652, CVE-2026-344=
1, CVE-2026-3442,  |
|                       | CVE-2026-4647                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| binutils-cross-x86_64 | CVE-2025-69644, CVE-2025-69647, CVE-2025-69648, C=
VE-2025-69649, CVE-2025-69650, CVE-2025-69651, CVE-2025-69652, CVE-2026-344=
1, CVE-2026-3442,  |
|                       | CVE-2026-4647                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| binutils-testsuite    | CVE-2025-69644, CVE-2025-69647, CVE-2025-69648, C=
VE-2025-69649, CVE-2025-69650, CVE-2025-69651, CVE-2025-69652, CVE-2026-344=
1, CVE-2026-3442,  |
|                       | CVE-2026-4647                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| cargo                 | CVE-2026-39837, CVE-2026-39839, CVE-2026-39840, C=
VE-2026-39841                                                              =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| cups                  | CVE-2026-34978, CVE-2026-34979, CVE-2026-34980, C=
VE-2026-34990, CVE-2026-39314, CVE-2026-39316                              =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| ffmpeg                | CVE-2025-69693, CVE-2026-40962                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| glibc                 | CVE-2026-4046, CVE-2026-4437, CVE-2026-4438      =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| go                    | CVE-2026-27140, CVE-2026-27143, CVE-2026-27144, C=
VE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-32283, CVE-2026-322=
88, CVE-2026-32289 |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| go-binary-native      | CVE-2026-27140, CVE-2026-27143, CVE-2026-27144, C=
VE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-32283, CVE-2026-322=
88, CVE-2026-32289 |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| go-cross-x86-64-v3    | CVE-2026-27140, CVE-2026-27143, CVE-2026-27144, C=
VE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-32283, CVE-2026-322=
88, CVE-2026-32289 |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| go-runtime            | CVE-2026-27140, CVE-2026-27143, CVE-2026-27144, C=
VE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-32283, CVE-2026-322=
88, CVE-2026-32289 |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| gstreamer1.0          | CVE-2026-2920, CVE-2026-2921, CVE-2026-2922, CVE-=
2026-2923, CVE-2026-3081, CVE-2026-3082, CVE-2026-3083, CVE-2026-3084, CVE-=
2026-3085,         |
|                       | CVE-2026-3086                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libarchive            | CVE-2026-5121                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libexif               | CVE-2026-40385, CVE-2026-40386                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libinput              | CVE-2026-35093, CVE-2026-35094                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libpng                | CVE-2026-33416, CVE-2026-33636                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libsndfile1           | CVE-2024-50613, CVE-2025-52194                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| libsoup               | CVE-2026-1467, CVE-2026-1536, CVE-2026-1539, CVE-=
2026-1801, CVE-2026-2443, CVE-2026-3099, CVE-2026-3632, CVE-2026-3633, CVE-=
2026-3634,         |
|                       | CVE-2026-4271, CVE-2026-5119                     =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| linux-yocto           | CVE-2019-14899, CVE-2021-3714, CVE-2021-3864, CVE=
-2022-0400, CVE-2022-1247, CVE-2022-4543, CVE-2023-3397, CVE-2023-3640, CVE=
-2023-4010,        |
|                       | CVE-2023-6238, CVE-2023-6240, CVE-2025-40039, CVE=
-2025-40040, CVE-2025-40082, CVE-2025-40149, CVE-2025-40164, CVE-2025-40251=
, CVE-2025-68211,  |
|                       | CVE-2025-68214, CVE-2025-68223, CVE-2025-68333, C=
VE-2025-68340, CVE-2025-68351, CVE-2025-68358, CVE-2025-68365, CVE-2025-687=
25, CVE-2025-68749,|
|                       | CVE-2025-68817, CVE-2025-68823, CVE-2025-71071, C=
VE-2025-71072, CVE-2025-71073, CVE-2025-71074, CVE-2025-71075, CVE-2025-710=
76, CVE-2025-71077,|
|                       | CVE-2025-71078, CVE-2025-71079, CVE-2025-71080, C=
VE-2025-71081, CVE-2025-71082, CVE-2025-71083, CVE-2025-71084, CVE-2025-710=
85, CVE-2025-71086,|
|                       | CVE-2025-71087, CVE-2025-71088, CVE-2025-71089, C=
VE-2025-71091, CVE-2025-71093, CVE-2025-71094, CVE-2025-71095, CVE-2025-710=
96, CVE-2025-71097,|
|                       | CVE-2025-71098, CVE-2025-71099, CVE-2025-71100, C=
VE-2025-71101, CVE-2025-71102, CVE-2025-71104, CVE-2025-71105, CVE-2025-711=
07, CVE-2025-71108,|
|                       | CVE-2025-71109, CVE-2025-71111, CVE-2025-71112, C=
VE-2025-71113, CVE-2025-71114, CVE-2025-71115, CVE-2025-71116, CVE-2025-711=
17, CVE-2025-71118,|
|                       | CVE-2025-71119, CVE-2025-71120, CVE-2025-71121, C=
VE-2025-71122, CVE-2025-71124, CVE-2025-71125, CVE-2025-71126, CVE-2025-711=
27, CVE-2025-71128,|
|                       | CVE-2025-71129, CVE-2025-71130, CVE-2025-71131, C=
VE-2025-71132, CVE-2025-71133, CVE-2025-71134, CVE-2025-71135, CVE-2025-711=
36, CVE-2025-71137,|
|                       | CVE-2025-71138, CVE-2025-71141, CVE-2025-71142, C=
VE-2025-71143, CVE-2025-71147, CVE-2025-71148, CVE-2025-71149, CVE-2025-711=
50, CVE-2025-71151,|
|                       | CVE-2025-71152, CVE-2025-71153, CVE-2025-71154, C=
VE-2025-71156, CVE-2025-71157, CVE-2025-71158, CVE-2025-71160, CVE-2025-711=
61, CVE-2025-71162,|
|                       | CVE-2025-71163, CVE-2025-71180, CVE-2025-71182, C=
VE-2025-71183, CVE-2025-71184, CVE-2025-71185, CVE-2025-71186, CVE-2025-711=
87, CVE-2025-71188,|
|                       | CVE-2025-71189, CVE-2025-71190, CVE-2025-71191, C=
VE-2025-71200, CVE-2025-71201, CVE-2025-71202, CVE-2025-71203, CVE-2025-712=
04, CVE-2025-71220,|
|                       | CVE-2025-71221, CVE-2025-71222, CVE-2025-71223, C=
VE-2025-71225, CVE-2025-71227, CVE-2025-71229, CVE-2025-71230, CVE-2025-712=
31, CVE-2025-71232,|
|                       | CVE-2025-71233, CVE-2025-71234, CVE-2025-71235, C=
VE-2025-71236, CVE-2025-71237, CVE-2025-71238, CVE-2026-22976, CVE-2026-229=
77, CVE-2026-22978,|
|                       | CVE-2026-22979, CVE-2026-22980, CVE-2026-22981, C=
VE-2026-22982, CVE-2026-22984, CVE-2026-22985, CVE-2026-22986, CVE-2026-229=
89, CVE-2026-22990,|
|                       | CVE-2026-22991, CVE-2026-22992, CVE-2026-22993, C=
VE-2026-22994, CVE-2026-22996, CVE-2026-22997, CVE-2026-22998, CVE-2026-229=
99, CVE-2026-23000,|
|                       | CVE-2026-23001, CVE-2026-23002, CVE-2026-23003, C=
VE-2026-23005, CVE-2026-23006, CVE-2026-23007, CVE-2026-23008, CVE-2026-230=
09, CVE-2026-23010,|
|                       | CVE-2026-23011, CVE-2026-23013, CVE-2026-23015, C=
VE-2026-23017, CVE-2026-23018, CVE-2026-23019, CVE-2026-23020, CVE-2026-230=
21, CVE-2026-23023,|
|                       | CVE-2026-23025, CVE-2026-23026, CVE-2026-23060, C=
VE-2026-23061, CVE-2026-23062, CVE-2026-23063, CVE-2026-23064, CVE-2026-230=
65, CVE-2026-23066,|
|                       | CVE-2026-23067, CVE-2026-23068, CVE-2026-23069, C=
VE-2026-23070, CVE-2026-23071, CVE-2026-23072, CVE-2026-23073, CVE-2026-230=
74, CVE-2026-23075,|
|                       | CVE-2026-23076, CVE-2026-23077, CVE-2026-23078, C=
VE-2026-23080, CVE-2026-23081, CVE-2026-23083, CVE-2026-23084, CVE-2026-230=
85, CVE-2026-23086,|
|                       | CVE-2026-23087, CVE-2026-23088, CVE-2026-23089, C=
VE-2026-23090, CVE-2026-23091, CVE-2026-23092, CVE-2026-23093, CVE-2026-230=
94, CVE-2026-23095,|
|                       | CVE-2026-23096, CVE-2026-23097, CVE-2026-23098, C=
VE-2026-23099, CVE-2026-23100, CVE-2026-23101, CVE-2026-23102, CVE-2026-231=
03, CVE-2026-23104,|
|                       | CVE-2026-23105, CVE-2026-23107, CVE-2026-23108, C=
VE-2026-23109, CVE-2026-23110, CVE-2026-23111, CVE-2026-23112, CVE-2026-231=
13, CVE-2026-23114,|
|                       | CVE-2026-23115, CVE-2026-23116, CVE-2026-23118, C=
VE-2026-23119, CVE-2026-23120, CVE-2026-23121, CVE-2026-23122, CVE-2026-231=
23, CVE-2026-23124,|
|                       | CVE-2026-23125, CVE-2026-23126, CVE-2026-23128, C=
VE-2026-23129, CVE-2026-23130, CVE-2026-23131, CVE-2026-23133, CVE-2026-231=
35, CVE-2026-23136,|
|                       | CVE-2026-23137, CVE-2026-23138, CVE-2026-23139, C=
VE-2026-23140, CVE-2026-23141, CVE-2026-23142, CVE-2026-23143, CVE-2026-231=
44, CVE-2026-23146,|
|                       | CVE-2026-23147, CVE-2026-23148, CVE-2026-23150, C=
VE-2026-23151, CVE-2026-23152, CVE-2026-23154, CVE-2026-23156, CVE-2026-231=
57, CVE-2026-23158,|
|                       | CVE-2026-23160, CVE-2026-23161, CVE-2026-23163, C=
VE-2026-23164, CVE-2026-23166, CVE-2026-23167, CVE-2026-23168, CVE-2026-231=
69, CVE-2026-23170,|
|                       | CVE-2026-23171, CVE-2026-23172, CVE-2026-23173, C=
VE-2026-23186, CVE-2026-23187, CVE-2026-23188, CVE-2026-23190, CVE-2026-231=
91, CVE-2026-23192,|
|                       | CVE-2026-23193, CVE-2026-23195, CVE-2026-23196, C=
VE-2026-23197, CVE-2026-23198, CVE-2026-23199, CVE-2026-23201, CVE-2026-232=
04, CVE-2026-23205,|
|                       | CVE-2026-23206, CVE-2026-23208, CVE-2026-23209, C=
VE-2026-23210, CVE-2026-23212, CVE-2026-23213, CVE-2026-23214, CVE-2026-232=
15, CVE-2026-23216,|
|                       | CVE-2026-23217, CVE-2026-23219, CVE-2026-23220, C=
VE-2026-23221, CVE-2026-23222, CVE-2026-23223, CVE-2026-23224, CVE-2026-232=
26, CVE-2026-23227,|
|                       | CVE-2026-23228, CVE-2026-23229, CVE-2026-23230, C=
VE-2026-23231, CVE-2026-23233, CVE-2026-23234, CVE-2026-23235, CVE-2026-232=
36, CVE-2026-23237,|
|                       | CVE-2026-23238                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| mesa                  | CVE-2026-40393                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| nfs-utils             | CVE-2025-12801                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| nghttp2               | CVE-2026-27135                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| openssh               | CVE-2026-35414                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| python3               | CVE-2026-4519                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| python3-requests      | CVE-2026-25645                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| qemu                  | CVE-2024-6519                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| qemu-system-native    | CVE-2024-6519                                    =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| sqlite3               | CVE-2025-70873                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| systemd-boot          | CVE-2026-29111, CVE-2026-40226                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| vim                   | CVE-2026-28417, CVE-2026-28418, CVE-2026-28419, C=
VE-2026-28420, CVE-2026-28421, CVE-2026-28422, CVE-2026-33412, CVE-2026-347=
14, CVE-2026-35177 |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+
| xz                    | CVE-2026-34743                                   =
                                                                           =
                   |
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+


Recipe Upgrades in 6.0
----------------------

The following recipes have been upgraded:

+----------------------------------+---------------------------+-----------=
----------------+
| Recipe                           | Previous version(s)       | New versio=
n(s)            |
+----------------------------------+---------------------------+-----------=
----------------+
| acpica                           | 20250807                  | 20251212  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| adwaita-icon-theme               | 48.0                      | 49.0      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| alsa-lib                         | 1.2.14                    | 1.2.15.3  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| alsa-tools                       | 1.2.14                    | 1.2.15    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| alsa-ucm-conf                    | 1.2.14                    | 1.2.15.3  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| alsa-utils                       | 1.2.14                    | 1.2.15.2  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| appstream                        | 1.0.6                     | 1.1.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| aspell                           | 0.60.8.1                  | 0.60.8.2  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| at-spi2-core                     | 2.56.4                    | 2.60.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| autoconf                         | 2.72                      | 2.73      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| barebox                          | 2025.09.3                 | 2026.04.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| barebox-tools                    | 2025.09.3                 | 2026.04.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| base-passwd                      | 3.6.7                     | 3.6.8     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| bash-completion                  | 2.16.0                    | 2.17.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| bind                             | 9.20.15                   | 9.20.22   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| binutils                         | 2.45.1+git                | 2.46      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| binutils-cross                   | 2.45.1+git                | 2.46      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| binutils-cross-canadian          | 2.45.1+git                | 2.46      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| binutils-crosssdk                | 2.45.1+git                | 2.46      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| binutils-testsuite               | 2.45.1+git                | 2.46      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| bluez5                           | 5.84                      | 5.86      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| boost                            | 1.89.0                    | 1.90.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| boost-build-native               | 1.89.0                    | 1.90.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| btrfs-tools                      | 6.16                      | 6.19.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cargo                            | 1.90.0                    | 1.94.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cargo-c                          | 0.10.16+cargo-0.91.0      | 0.10.21+ca=
rgo-0.95.0      |
+----------------------------------+---------------------------+-----------=
----------------+
| ccache                           | 4.12.3                    | 4.13.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| clang                            | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cmake                            | 4.1.2                     | 4.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cmake-native                     | 4.1.2                     | 4.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| compiler-rt                      | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| compiler-rt-sanitizers           | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| connman                          | 1.45                      | 2.0       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| coreutils                        | 9.7                       | 9.10      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| createrepo-c                     | 1.2.1                     | 1.2.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cross-localedef-native           | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| cryptodev-linux                  | 1.14 (135cbff90af2=85)      | 1.14 (08=
644db02d43=85)      |
+----------------------------------+---------------------------+-----------=
----------------+
| cryptodev-module                 | 1.14 (135cbff90af2=85)      | 1.14 (08=
644db02d43=85)      |
+----------------------------------+---------------------------+-----------=
----------------+
| cryptodev-tests                  | 1.14 (135cbff90af2=85)      | 1.14 (08=
644db02d43=85)      |
+----------------------------------+---------------------------+-----------=
----------------+
| cups                             | 2.4.15                    | 2.4.16    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| curl                             | 8.17.0                    | 8.19.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dhcpcd                           | 10.2.4                    | 10.3.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| diffoscope                       | 306                       | 314       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dmidecode                        | 3.6                       | 3.7       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dnf                              | 4.23.0                    | 4.24.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dos2unix                         | 7.5.2                     | 7.5.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dpkg                             | 1.22.21                   | 1.23.7    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| dropbear                         | 2025.88                   | 2025.89   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| e2fsprogs                        | 1.47.3                    | 1.47.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ed                               | 1.22.2                    | 1.22.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| elfutils                         | 0.193                     | 0.194     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ell                              | 0.80                      | 0.83      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| enchant2                         | 2.8.14                    | 2.8.15    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| epiphany                         | 48.5                      | 49.7      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| erofs-utils                      | 1.8.10                    | 1.9.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ethtool                          | 6.15                      | 6.19      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| expat                            | 2.7.4                     | 2.7.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| fastfloat                        | 8.0.2                     | 8.2.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ffmpeg                           | 8.0                       | 8.0.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| file                             | 5.46                      | 5.47      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| fmt                              | 11.2.0                    | 12.1.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| font-alias                       | 1.0.5                     | 1.0.6     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| freetype                         | 2.13.3                    | 2.14.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gawk                             | 5.3.2                     | 5.4.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gdb                              | 16.3                      | 17.1      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gdb-cross                        | 16.3                      | 17.1      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gdb-cross-canadian               | 16.3                      | 17.1      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gdk-pixbuf                       | 2.42.12                   | 2.44.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gettext                          | 0.26                      | 1.0       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gettext-minimal-native           | 0.26                      | 1.0       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gi-docgen                        | 2025.4                    | 2026.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| git                              | 2.51.0                    | 2.53.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glew                             | 2.2.0                     | 2.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glib-2.0                         | 2.86.4                    | 2.88.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glib-2.0-initial                 | 2.86.4                    | 2.88.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glibc                            | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glibc-locale                     | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glibc-mtrace                     | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glibc-scripts                    | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glibc-testsuite                  | 2.42+git                  | 2.43+git  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| glslang                          | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gn                               | 0+git (81b24e01531e=85)     | 0+git (9=
d19a7870add=85)     |
+----------------------------------+---------------------------+-----------=
----------------+
| gnu-efi                          | 4.0.2                     | 4.0.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gnupg                            | 2.5.11                    | 2.5.17    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gnutls                           | 3.8.10                    | 3.8.12    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go                               | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go-binary-native                 | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go-cross-canadian                | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go-cross-core2-32                | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go-crosssdk                      | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| go-helloworld                    | 0.1 (8b405629c4a5=85)       | 0.1 (7f0=
5d217867b=85)       |
+----------------------------------+---------------------------+-----------=
----------------+
| go-runtime                       | 1.25.9                    | 1.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gobject-introspection            | 1.84.0                    | 1.86.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| groff                            | 1.23.0                    | 1.24.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| grub                             | 2.12                      | 2.14      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| grub-efi                         | 2.12                      | 2.14      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gsettings-desktop-schemas        | 48.0                      | 50.0      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gst-devtools                     | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gst-examples                     | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0                     | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-libav               | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-plugins-bad         | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-plugins-base        | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-plugins-good        | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-plugins-ugly        | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-python              | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gstreamer1.0-rtsp-server         | 1.26.7                    | 1.28.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gtk-doc                          | 1.34.0                    | 1.35.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| gtk4                             | 4.18.6                    | 4.22.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| harfbuzz                         | 11.4.5                    | 12.3.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| hwdata                           | 0.399                     | 0.405     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| hwlatdetect                      | 2.9                       | 2.10      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| icu                              | 77-1                      | 78.3      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ifupdown                         | 0.8.44                    | 0.8.45    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| igt-gpu-tools                    | 2.1                       | 2.3       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| inetutils                        | 2.6                       | 2.7       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| iproute2                         | 6.16.0                    | 6.19.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| iptables                         | 1.8.11                    | 1.8.13    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| iso-codes                        | 4.18.0                    | 4.20.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| kbd                              | 2.8.0                     | 2.9.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| kea                              | 3.0.1                     | 3.0.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| kern-tools-native                | 0.3+git (f589e1df2325=85)   | 0.3+git =
(a4a362d9f4f0=85)   |
+----------------------------------+---------------------------+-----------=
----------------+
| kexec-tools                      | 2.0.31                    | 2.0.32    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| kmscube                          | 0.0.1+git (2c1f2646c5e5=85) | 0.0.1+gi=
t (f60e50e887d3=85) |
+----------------------------------+---------------------------+-----------=
----------------+
| less                             | 679                       | 692       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libadwaita                       | 1.7.6                     | 1.8.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libarchive                       | 3.8.6                     | 3.8.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libatomic-ops                    | 7.8.4                     | 7.10.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libcap                           | 2.76                      | 2.77      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libcap-ng                        | 0.8.5                     | 0.9.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libcap-ng-python                 | 0.8.5                     | 0.9.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libclc                           | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libcomps                         | 0.1.22                    | 0.1.24    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libcxx                           | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libdisplay-info                  | 0.2.0                     | 0.3.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libdnf                           | 0.74.0                    | 0.75.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libdrm                           | 2.4.125                   | 2.4.131   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libedit                          | 20250104-3.1              | 20251016-3=
.1              |
+----------------------------------+---------------------------+-----------=
----------------+
| libevdev                         | 1.13.5                    | 1.13.6    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libexif                          | 0.6.25                    | 0.6.26    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libfontenc                       | 1.1.8                     | 1.1.9     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libgcrypt                        | 1.11.2                    | 1.12.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libgit2                          | 1.9.1                     | 1.9.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libgloss                         | 4.5.0+git                 | 4.6.0+git =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libgpg-error                     | 1.56                      | 1.59      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libinput                         | 1.29.1                    | 1.30.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libjpeg-turbo                    | 3.1.2                     | 3.1.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libksba                          | 1.6.7                     | 1.6.8     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libnl                            | 3.11.0                    | 3.12.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libnotify                        | 0.8.6                     | 0.8.8     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libpam                           | 1.7.1                     | 1.7.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libpciaccess                     | 0.18.1                    | 0.19      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libpcre2                         | 10.46                     | 10.47     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libproxy                         | 0.5.10                    | 0.5.12    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| librsvg                          | 2.61.0                    | 2.61.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libsolv                          | 0.7.35                    | 0.7.36    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libstd-rs                        | 1.90.0                    | 1.94.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libtasn1                         | 4.20.0                    | 4.21.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libtest-fatal-perl               | 0.017                     | 0.018     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libtirpc                         | 1.3.6                     | 1.3.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libtraceevent                    | 1.8.4                     | 1.9.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libubootenv                      | 0.3.6                     | 0.3.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libunistring                     | 1.3                       | 1.4.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| liburcu                          | 0.15.3                    | 0.15.6    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libuv                            | 1.51.0                    | 1.52.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libva                            | 2.22.0                    | 2.23.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libva-initial                    | 2.22.0                    | 2.23.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libva-utils                      | 2.22.0                    | 2.23.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libx11                           | 1.8.12                    | 1.8.13    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libx11-compose-data              | 1.8.4                     | 1.8.12    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxcomposite                    | 0.4.6                     | 0.4.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxcrypt                        | 4.4.38                    | 4.5.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxcrypt-compat                 | 4.4.38                    | 4.5.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxdamage                       | 1.1.6                     | 1.1.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxext                          | 1.3.6                     | 1.3.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxinerama                      | 1.1.5                     | 1.1.6     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxkbcommon                     | 1.11.0                    | 1.13.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxkbfile                       | 1.1.3                     | 1.2.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxml2                          | 2.14.6                    | 2.15.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxmu                           | 1.2.1                     | 1.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxpm                           | 3.5.17                    | 3.5.18    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxrandr                        | 1.5.4                     | 1.5.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxslt                          | 1.1.43                    | 1.1.45    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxvmc                          | 1.0.14                    | 1.0.15    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| libxxf86vm                       | 1.1.6                     | 1.1.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lighttpd                         | 1.4.81                    | 1.4.82    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-firmware                   | 20251111                  | 20260410  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-libc-headers               | 6.17                      | 6.18      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-yocto                      | 6.12.69+git, 6.16.11+git  | 6.18.24+gi=
t               |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-yocto-dev                  | 6.18+git                  | 7.0+git   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-yocto-rt                   | 6.12.69+git, 6.16.11+git  | 6.18.24+gi=
t               |
+----------------------------------+---------------------------+-----------=
----------------+
| linux-yocto-tiny                 | 6.12.69+git, 6.16.11+git  | 6.18.24+gi=
t               |
+----------------------------------+---------------------------+-----------=
----------------+
| lld                              | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lldb                             | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| llvm                             | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| llvm-tblgen-native               | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lsof                             | 4.99.5                    | 4.99.6    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ltp                              | 20250930                  | 20260130  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lttng-modules                    | 2.14.3                    | 2.14.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lttng-tools                      | 2.14.0                    | 2.14.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lua                              | 5.4.8                     | 5.5.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| lzlib                            | 1.15                      | 1.16      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| m4                               | 1.4.20                    | 1.4.21    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| m4-native                        | 1.4.20                    | 1.4.21    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| makedumpfile                     | 1.7.7                     | 1.7.8     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| man-pages                        | 6.15                      | 6.17      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| mdadm                            | 4.4                       | 4.6       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| mesa                             | 25.2.8                    | 26.0.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| mesa-gl                          | 25.2.8                    | 26.0.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| meson                            | 1.9.1                     | 1.10.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| mpg123                           | 1.33.2                    | 1.33.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| msmtp                            | 1.8.31                    | 1.8.32    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| mtd-utils                        | 2.3.0                     | 2.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| musl                             | 1.2.5+git                 | 1.2.6+git =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| nasm                             | 2.16.03                   | 3.01      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ncurses                          | 6.5                       | 6.6       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| newlib                           | 4.5.0+git                 | 4.6.0+git =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| nfs-utils                        | 2.8.4                     | 2.8.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| nghttp2                          | 1.66.0                    | 1.68.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ninja                            | 1.13.1                    | 1.13.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ofono                            | 2.18                      | 2.19      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| openmp                           | 21.1.7                    | 22.1.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| opensbi                          | 1.7                       | 1.8.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| openssh                          | 10.2p1                    | 10.3p1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| opkg                             | 0.8.0                     | 0.9.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| orc                              | 0.4.41                    | 0.4.42    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ovmf                             | edk2-stable202508         | edk2-stabl=
e202511         |
+----------------------------------+---------------------------+-----------=
----------------+
| p11-kit                          | 0.25.5                    | 0.26.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| perl                             | 5.40.2                    | 5.42.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| perlcross                        | 1.6.2                     | 1.6.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| picolibc                         | 1.8.6+git                 | 1.8.11+git=
                |
+----------------------------------+---------------------------+-----------=
----------------+
| picolibc-helloworld              | 1.8.6+git                 | 1.8.11+git=
                |
+----------------------------------+---------------------------+-----------=
----------------+
| procps                           | 4.0.5                     | 4.0.6     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| pseudo                           | 1.9.3+git                 | 1.9.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| puzzles                          | 0.0+git (a7c7826bce5c=85)   | 0.0+git =
(ecb576fb2a0a=85)   |
+----------------------------------+---------------------------+-----------=
----------------+
| python3                          | 3.13.12                   | 3.14.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-attrs                    | 25.3.0                    | 25.4.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-babel                    | 2.17.0                    | 2.18.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-bcrypt                   | 4.3.0                     | 5.0.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-beartype                 | 0.21.0                    | 0.22.9    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-build                    | 1.3.0                     | 1.4.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-calver                   | 2025.04.17                | 2025.10.20=
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-certifi                  | 2025.8.3                  | 2026.2.25 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-cffi                     | 1.17.1                    | 2.0.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-chardet                  | 5.2.0                     | 6.0.0.post=
1               |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-click                    | 8.2.2                     | 8.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-cryptography             | 45.0.7                    | 46.0.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-cryptography-vectors     | 45.0.7                    | 46.0.5    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-cython                   | 3.1.3                     | 3.2.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-dbusmock                 | 0.37.0                    | 0.38.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-docutils                 | 0.22                      | 0.22.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-dtschema                 | 2025.8                    | 2025.12   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-hatchling                | 1.27.0                    | 1.29.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-hypothesis               | 6.142.2                   | 6.151.9   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-imagesize                | 1.4.1                     | 2.0.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-iniconfig                | 2.1.0                     | 2.3.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-jsonschema               | 4.25.1                    | 4.26.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-markdown                 | 3.9                       | 3.10.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-markupsafe               | 3.0.2                     | 3.0.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-maturin                  | 1.9.4                     | 1.12.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-meson-python             | 0.18.0                    | 0.19.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-numpy                    | 2.3.4                     | 2.4.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-packaging                | 25.0                      | 26.0      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pathspec                 | 0.12.1                    | 1.0.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pbr                      | 7.0.1                     | 7.0.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pdm                      | 2.25.9                    | 2.26.6    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pdm-backend              | 2.4.5                     | 2.4.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pdm-build-locked         | 0.3.5                     | 0.3.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pip                      | 25.2                      | 26.0.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-poetry-core              | 2.1.3                     | 2.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-psutil                   | 7.0.0                     | 7.2.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pyasn1                   | 0.6.1                     | 0.6.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pycairo                  | 1.28.0                    | 1.29.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pycparser                | 2.22                      | 3.0       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pygobject                | 3.52.3                    | 3.56.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pyopenssl                | 25.1.0                    | 26.0.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pyparsing                | 3.2.4                     | 3.3.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pyproject-metadata       | 0.9.1                     | 0.11.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pytest                   | 8.4.2                     | 9.0.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pytest-subtests          | 0.14.2                    | 0.15.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pytz                     | 2025.2                    | 2026.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-pyyaml                   | 6.0.2                     | 6.0.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-rdflib                   | 7.1.4                     | 7.6.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-rpds-py                  | 0.27.1                    | 0.30.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-ruamel-yaml              | 0.18.15                   | 0.19.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-scons                    | 4.9.1                     | 4.10.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-setuptools               | 80.9.0                    | 82.0.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-setuptools-scm           | 8.3.1                     | 9.2.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-sphinx                   | 8.2.1                     | 9.1.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-sphinx-rtd-theme         | 3.0.2                     | 3.1.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-testtools                | 2.7.2                     | 2.8.7     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-trove-classifiers        | 2025.9.11.17              | 2026.1.14.=
14              |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-unittest-automake-output | 0.3                       | 0.4       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-uritools                 | 5.0.0                     | 6.0.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-urllib3                  | 2.5.0                     | 2.6.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-wcwidth                  | 0.2.13                    | 0.6.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-webcolors                | 24.11.1                   | 25.10.0   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-websockets               | 15.0.1                    | 16.0      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-wheel                    | 0.46.1                    | 0.46.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-xmltodict                | 0.15.1                    | 1.0.4     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| python3-yamllint                 | 1.37.1                    | 1.38.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| qemu                             | 10.0.6                    | 10.2.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| qemu-native                      | 10.0.6                    | 10.2.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| qemu-system-native               | 10.0.6                    | 10.2.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| quota                            | 4.10                      | 4.11      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| re2c                             | 4.3                       | 4.4       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| repo                             | 2.58                      | 2.61.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| resolvconf                       | 1.93                      | 1.94      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| rgb                              | 1.1.0                     | 1.1.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| rpm-sequoia                      | 1.9.0                     | 1.10.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| rpm-sequoia-crypto-policy        | git (ae1df75b1155=85)       | git (f3f=
5fa454345=85)       |
+----------------------------------+---------------------------+-----------=
----------------+
| rt-tests                         | 2.9                       | 2.10      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ruby                             | 3.4.5                     | 4.0.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| rust                             | 1.90.0                    | 1.94.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| rust-cross-canadian              | 1.90.0                    | 1.94.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| sbc                              | 2.1                       | 2.2       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| scdoc                            | 1.11.3                    | 1.11.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| seatd                            | 0.9.1                     | 0.9.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| shaderc                          | 2025.3                    | 2026.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| shadow                           | 4.18.0                    | 4.19.4    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| socat                            | 1.8.0.3                   | 1.8.1.1   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| spirv-headers                    | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| spirv-llvm-translator            | 21.1.1                    | 22.1.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| spirv-tools                      | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| sqlite3                          | 3.48.0                    | 3.51.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| squashfs-tools                   | 4.7.2                     | 4.7.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| strace                           | 6.16                      | 6.19      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| stress-ng                        | 0.19.04                   | 0.20.01   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| swig                             | 4.3.1                     | 4.4.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| sysstat                          | 12.7.8                    | 12.7.9    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemd                          | 257.8                     | 259.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemd-boot                     | 257.8                     | 259.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemd-boot-native              | 257.8                     | 259.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemd-systemctl-native         | 257.8                     | 259.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemtap                        | 5.3                       | 5.4       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| systemtap-native                 | 5.3                       | 5.4       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| taglib                           | 2.1.1                     | 2.2.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| tcl                              | 9.0.2                     | 9.0.3     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| texinfo                          | 7.2                       | 7.3       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| ttyrun                           | 2.38.0                    | 2.41.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| u-boot                           | 2025.10                   | 2026.01   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| u-boot-tools                     | 2025.10                   | 2026.01   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| usbutils                         | 018                       | 019       =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| utfcpp                           | 4.0.6                     | 4.0.9     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| util-linux                       | 2.41.1                    | 2.41.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| util-linux-libuuid               | 2.41.1                    | 2.41.3    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| valgrind                         | 3.25.1                    | 3.26.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vim                              | 9.1.1683                  | 9.2.0340  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vim-tiny                         | 9.1.1683                  | 9.2.0340  =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| virglrenderer                    | 1.1.1                     | 1.2.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vte                              | 0.82.1                    | 0.82.2    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-headers                   | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-loader                    | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-samples                   | git (d27205d14d01=85)       | git (fa2=
cf45adde0=85)       |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-tools                     | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-utility-libraries         | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-validation-layers         | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| vulkan-volk                      | 1.4.328.1                 | 1.4.341.0 =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| wayland-protocols                | 1.45                      | 1.47      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| wayland-utils                    | 1.2.0                     | 1.3.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| webkitgtk                        | 2.50.4                    | 2.50.6    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| weston                           | 14.0.2                    | 15.0.0    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| wpebackend-fdo                   | 1.16.0                    | 1.16.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| x264                             | r3039+git (31e19f92f00c=85) | r3039+gi=
t (0480cb05fa18=85) |
+----------------------------------+---------------------------+-----------=
----------------+
| xauth                            | 1.1.4                     | 1.1.5     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xcb-util-cursor                  | 0.1.5                     | 0.1.6     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xeyes                            | 1.3.0                     | 1.3.1     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xkbcomp                          | 1.4.7                     | 1.5.0     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xkeyboard-config                 | 2.45                      | 2.47      =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xorgproto                        | 2024.1                    | 2025.1    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xserver-xorg                     | 21.1.18                   | 21.1.21   =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xwayland                         | 24.1.8                    | 24.1.9    =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| xz                               | 5.8.1                     | 5.8.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+
| zlib                             | 1.3.1                     | 1.3.2     =
                |
+----------------------------------+---------------------------+-----------=
----------------+


Contributors to 6.0
-------------------

Thanks to the following people who contributed to this release:

-  Adam Blank
-  Adam Duskett
-  Adarsh Jagadish Kamini
-  Aditya Kurdunkar
-  Adrian Freihofer
-  Ahmad Fatoum
-  Alejandro Hernandez Samaniego
-  Aleksandar Nikolic
-  Alexander Kanavin
-  Alexander Sverdlin
-  Alex Bradbury
-  Alex Kiernan
-  Amaury Couderc
-  Andrej Kozemcak
-  Anibal Limon
-  Ankur Tyagi
-  Antonin Godard
-  Ashish Kumar Mishra
-  Ashish Sharma
-  BELHADJ SALEM Talel
-  Benjamin Robin
-  Bruce Ashfield
-  Changqing Li
-  Chen Qi
-  Clement Faure
-  Colin Pinnell McAllister
-  Corentin Guillevic
-  Daiane Angolini
-  Daniel Dragomir
-  Daniel Turull
-  Dan McGregor
-  Deepesh Varatharajan
-  Dmitry Baryshkov
-  Dragomir, Daniel
-  El Mehdi YOUNES
-  Enrico J=F6rns
-  Ernst Persson
-  Etienne Cordonnier
-  Fabio Berton
-  Fabio Estevam
-  Favazza, Samuele
-  Florian Schmaus
-  Francesco Valla
-  Franz Schnyder
-  Germann, Bastian
-  Gu=F0ni M=E1r Gilbert
-  Gyorgy Sarvari
-  Haiqing Bai
-  Harish Sadineni
-  Hemanth Kumar M D
-  Het Patel
-  Hiago De Franco
-  Himanshu Jadon
-  hongxu
-  Hongxu Jia
-  Jaeyoon Jung
-  Jan Luebbe
-  Jan Vermaete
-  Jason Schonberg
-  Javier Tia
-  Jiaying Song
-  Jinfeng Wang
-  Jo=E3o Marcos Costa
-  J=F6rg Sommer
-  Jose Quaresma
-  Joshua Watt
-  Kai Kang
-  Kamel Bouhara
-  Kavinaya S
-  Ken Kurematsu
-  Khai Dang
-  Khalifa Rouis
-  Khem Raj
-  Koen Kooi
-  Kory Maincent
-  Kristiyan Chakarov
-  Krupal Ka Patel
-  Lee Chee Yang
-  Leon Anavi
-  Le Qi
-  Liu Yiding
-  Livin Sunny
-  Liyin Zhang
-  Logan Gallois
-  Louis Rannou
-  Lucas Stach
-  Luka Krstic
-  Mahesh Angadi
-  Mark Hatle
-  Mark-Pk Tsai
-  Markus Volk
-  mark.yang
-  Martin Jansa
-  Martin Schwan
-  Mathieu Dubois-Briand
-  Matt Madison
-  Maxin B. John
-  Maxin John
-  Max Krummenacher
-  Miaoqing Pan
-  Michael Arndt
-  Michael Halstead
-  Michael Opdenacker
-  Michal Sieron
-  Mikko Rapeli
-  Ming Liu
-  Mingli Yu
-  Miroslav Cernak
-  Mohammad Rafi Shaik
-  Mohammad Rahimi
-  Moritz Haase
-  Naftaly RALAMBOARIVONY
-  Naman Jain
-  Nikhil R
-  Niko Mauno
-  Nora Schiffer
-  Osama Abdelkader
-  Patrick Vogelaar
-  Patrick Wicki
-  Paul Barker
-  Pavel L=F6bl
-  Peter Bergin
-  Peter de Ridder
-  Peter Kjellerstedt
-  Peter Marko
-  Peter Tatrai
-  Philip Lorenz
-  Pierre-Loup GOSSE
-  Piotr Bulinski
-  Pratik Farkase
-  Quentin Schulz
-  Randolph Sapp
-  Randy MacLeod
-  Ricardo Salveti
-  Ricardo Simoes
-  Ricardo Ungerer
-  Richard Purdie
-  Robert Joslyn
-  Robert P. J. Day
-  Robert Yang
-  Rob Woolley
-  Ross Burton
-  Rouven Rastetter
-  Ryan Eatmon
-  Sam Povilus
-  Samuli Piippo
-  Sandeep Gundlupet Raju
-  Scott Murray
-  Shaik Moin
-  Shotaro Uchida
-  Stefano Babic
-  Stefano Tondo
-  Sunil Dora
-  sven.kalmbach
-  Swami
-  Telukula Jeevan Kumar Sahu
-  Theo GAIGE
-  Thomas Perrot
-  Tim Orling
-  Tom Geelen
-  Trevor Gamblin
-  Trevor Woerner
-  Ulrich =D6lmann
-  Uwe Kleine-K=F6nig
-  Veeresh Kadasani
-  Victor Kamensky
-  Vijay Anusuri
-  Viswanath Kraleti
-  Vivek Puar
-  Vyacheslav Yurkov
-  Wang Mingyu
-  Weisser, Pascal
-  Xiangyu Chen
-  Yanis BINARD
-  Yann Dirson
-  Yannic Moog
-  Yash Gupta
-  Yash Shinde
-  Yasir Al-Latifi
-  Yiding Liu
-  Yi Zhao
-  Yoann Congal
-  Yongxin Liu
-  Zhangfei Gao
-  Zhang Peng
-  Zk47T
-  Zolt=E1n B=F6sz=F6rm=E9nyi


Repositories / Downloads for 6.0
--------------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: wrynose
Tag: yocto-6.0
Git Revision: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63
Release Artefact: yocto-docs-eb74fdfd9e5e579a65e8872d1a73b51e77b14f63
sha: 50d7391b4b4d169649a5628a8f367443eb03fb78faa813b9c20d5214e49ce782
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/yocto-docs-eb74=
fdfd9e5e579a65e8872d1a73b51e77b14f63.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/yocto-docs-eb74fdfd9e=
5e579a65e8872d1a73b51e77b14f63.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: wrynose
Tag: yocto-6.0
Git Revision: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c
Release Artefact: oecore-42fa856a00ac16b2a7a83d7ecfa60a5be192b16c
sha: 14abd19071d1b31737f5d3946182f21825e0a7121468054bbaa68f207b018fb6
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/oecore-42fa856a=
00ac16b2a7a83d7ecfa60a5be192b16c.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/oecore-42fa856a00ac16=
b2a7a83d7ecfa60a5be192b16c.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: wrynose
Tag: yocto-6.0
Git Revision: 904846ae078ee20de073040ebb77c86e19250f56
Release Artefact: meta-yocto-904846ae078ee20de073040ebb77c86e19250f56
sha: d3470939772339d2d70a2bbdd4e01563357c376fdb496d5515a1f96bce4e2ea2
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/meta-yocto-9048=
46ae078ee20de073040ebb77c86e19250f56.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/meta-yocto-904846ae07=
8ee20de073040ebb77c86e19250f56.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: wrynose
Tag: yocto-6.0
Git Revision: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
Release Artefact: meta-mingw-a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
sha: cea731150cd3caedd90ca6a82bf050a00c3705cea166d24a6077d07b1b7b2404
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/meta-mingw-a4ba=
674d6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/meta-mingw-a4ba674d6a=
0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.18
Tag: yocto-6.0
Git Revision: 33581c84f3a85008239acbd940501a35de48dc91
Release Artefact: bitbake-33581c84f3a85008239acbd940501a35de48dc91
sha: 8a0b0243b50b6e004f3350824628f69ee66be0d3a28bc25f3d96b35406015ba7
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/bitbake-33581c8=
4f3a85008239acbd940501a35de48dc91.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/bitbake-33581c84f3a85=
008239acbd940501a35de48dc91.tar.bz2




--_000_BL4PR11MB87972EEF33C603DFE901BE00B9062BL4PR11MB8797namp_
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
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
Hi<br>
<br>
We are pleased to announce the Yocto Project 6.0 Release is now available f=
or download.<br>
<br>
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/" id=
=3D"OWA3d6b0008-63a1-b97b-276a-bce7073b1834" class=3D"OWAAutoLink" data-aut=
h=3D"NotApplicable">https://downloads.yoctoproject.org/releases/yocto/yocto=
-6.0/</a>&nbsp;<br>
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-6.0/" id=3D"OWA8727=
b648-5a5a-83ba-19a1-ca4852236fb9" class=3D"OWAAutoLink" data-auth=3D"NotApp=
licable">https://mirrors.kernel.org/yocto/yocto/yocto-6.0/</a>&nbsp;<br>
<br>
A gpg signed version of these release notes is available at:<br>
<br>
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/RELE=
ASENOTES" id=3D"OWA1f7885c3-f5c5-48f3-3ce6-71e4d86c55ec" class=3D"OWAAutoLi=
nk" data-auth=3D"NotApplicable">https://downloads.yoctoproject.org/releases=
/yocto/yocto-6.0/RELEASENOTES</a>&nbsp;<br>
<br>
Full Test Report:<br>
<br>
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/test=
report.txt" id=3D"OWA526d1618-2a85-4501-c879-a4903c5677eb" class=3D"OWAAuto=
Link" data-auth=3D"NotApplicable">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-6.0/testreport.txt</a>&nbsp;<br>
<br>
We have removed build-appliance images, core-image-ptest images and x86-64 =
extensible SDK installers from our release artefacts to reduce unnecessary =
disk space usage.&nbsp;<br>
Please let us know if you depend on any of these artefacts.<br>
<br>
Thank you for everyone's contributions to this release.<br>
<br>
Chee Yang<br>
chee.yang.lee@intel.com<br>
Yocto Project Build and Release</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
--------------------------<br>
yocto-6.0 Release Notes<br>
--------------------------<br>
<br>
This document lists new features and enhancements for the Yocto Project 6.0=
 Release (codename =93wrynose=94). For a list of breaking changes and migra=
tion guides, see the Migration notes for 6.0 (wrynose). (https://docs.yocto=
project.org/dev/migration-guides/migration-6.0.html)<br>
<br>
The 6.0 (wrynose) release is the new LTS release after 5.0 (scarthgap). If =
you are migrating from the 5.0 version, be sure to read the previous migrat=
ion guides:<br>
<br>
&nbsp; &nbsp; Release 5.1 (styhead) : https://docs.yoctoproject.org/dev/mig=
ration-guides/migration-5.1.html<br>
<br>
&nbsp; &nbsp; Release 5.2 (walnascar) : https://docs.yoctoproject.org/dev/m=
igration-guides/migration-5.2.html<br>
<br>
&nbsp; &nbsp; Release 5.3 (whinlatter) : https://docs.yoctoproject.org/dev/=
migration-guides/migration-5.3.html<br>
<br>
See also the list of new features and enhancements of the previous releases=
:<br>
<br>
&nbsp; &nbsp; Release notes for 5.1 (styhead) : https://docs.yoctoproject.o=
rg/dev/migration-guides/release-notes-5.1.html<br>
<br>
&nbsp; &nbsp; Release notes for 5.2 (walnascar) : https://docs.yoctoproject=
.org/dev/migration-guides/release-notes-5.2.html<br>
<br>
&nbsp; &nbsp; Release notes for 5.3 (whinlatter) : https://docs.yoctoprojec=
t.org/dev/migration-guides/release-notes-5.3.html</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
New Features / Enhancements in 6.0<br>
----------------------------------<br>
<br>
- Linux kernel 6.18, gcc 15.2, glibc 2.43, LLVM 22.1.2, and over 300 other =
recipe upgrades<br>
<br>
- Minimum Python version required on the host: 3.9.<br>
<br>
- Kernel-related changes:<br>
<br>
&nbsp; - kernel-fit-image: Support arbitrary loadables (2535427)<br>
&nbsp;&nbsp;<br>
&nbsp; - kernel-yocto: Allow enabling Rust in the kernel by adding rust to =
the KERNEL_FEATURES (for Linux kernel recipes inheriting this class) (6719e=
d4)<br>
&nbsp;&nbsp;<br>
&nbsp; - Disable ccache support when Linux kernel Rust support is enabled (=
d80d006)<br>
<br>
- New core recipes:<br>
<br>
&nbsp; - libconfig: Import recipe from https://git.openembedded.org/meta-op=
enembedded/, needed by one of the Mesa recipes (1a0196a)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-sphinxcontrib-svg2pdfconverter: Used for the generation of=
 the Yocto Project documentation (f3f0019)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-pyzstd: Import from meta-python, needed by the ukify tool =
of systemd v258 (88a2713)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-uv-build: This recipe adds the uv Python build backend, re=
quired by python3-cryptography (0880cd2)<br>
&nbsp;&nbsp;<br>
&nbsp; - blueprint-compiler: Add the recipe as it became a dependency of th=
e epiphany recipe after its upgrade to 49.2 (4212392)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-sbom-cve-check: New recipe for building and using sbom-cve=
-check, a lightweight SBOM CVE analysis tool (0fdacec)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-shacl2code, python3-hatch-build-scripts, python3-spdx-pyth=
on-model: Added as dependencies of python3-sbom-cve-check (4862221, 41591af=
, a83eaca)<br>
&nbsp;&nbsp;<br>
&nbsp; - libfyaml: Added as a dependency of appstream (b8b7b58)<br>
&nbsp;&nbsp;<br>
&nbsp; - meta-world-recipe-sbom: Building this recipe will produce SBOM doc=
uments for each recipe present in the build environment, using the create-s=
pdx class. This is different from the image SBOM which can also be generate=
d using the create-spdx class after building
 an image. See Creating a Software Bill of Materials for more information (=
https://docs.yoctoproject.org/dev/dev-manual/sbom.html) (d999ac4)<br>
&nbsp;&nbsp;<br>
&nbsp; - python3-kirk: The Kirk application is a fork of runltp-ng and beca=
me the official LTP tests executor (c33fd4e)<br>
&nbsp;&nbsp;<br>
&nbsp; - wic: This recipe builds the WIC command-line tool. This used to be=
 part of OpenEmbedded-Core (OE-Core) but is now externally managed (25ca1cb=
, b9e2a2f)<br>
&nbsp;&nbsp;<br>
- New core classes:<br>
<br>
&nbsp; - kernel-yocto-rust: Adds the required dependencies to build the Rus=
t components of the Linux kernel (6c90097)<br>
<br>
&nbsp; - module-rust: Support for building out-of-tree Rust kernel modules.=
 An example recipe using this class can be found in meta-skeleton/recipes-k=
ernel/rust-out-of-tree-module (76fd22f, 76fd22f)<br>
<br>
&nbsp; - sbom-cve-check: Class for post-build CVE analysis of an image, whi=
ch uses the sbom-cve-check tool internally. This also obsoletes the cve-che=
ck class. (8ef22ad, 00de455)<br>
<br>
&nbsp; - sbom-cve-check-recipe: Class for post-build CVE analysis of recipe=
s (using the recipe SBOM, meaning building the software provided by the rec=
ipe is not needed), which uses the sbom-cve-check tool internally (e2518b1)=
<br>
<br>
- New variables:<br>
<br>
&nbsp; - The OPENSSH_HOST_KEY_DIR variable can be used to specify the direc=
tory where OpenSSH host keys are stored. The default value is /etc/ssh (add=
d80d)<br>
<br>
&nbsp; - The OPENSSH_HOST_KEY_DIR_READONLY_CONFIG variable can be used to s=
pecify the directory where OpenSSH host keys are stored when the device use=
s a read-only filesystem. The default value is /var/run/ssh (addd80d)<br>
<br>
&nbsp; - The SPDX_INCLUDE_KERNEL_CONFIG can be set to =931=94 to export the=
 Linux kernel configuration (CONFIG_* parameters) into the SPDX document wh=
en using the create-spdx class (228a968)<br>
<br>
&nbsp; - The SPDX_INCLUDE_PACKAGECONFIG variable can be set to =931=94 to e=
xport a recipe=92s PACKAGECONFIG features (enabled/disabled) into the SPDX =
document when using the create-spdx class (228a968)<br>
<br>
&nbsp; - The SPDX_PACKAGE_URL allows specifying a space-separated list of P=
ackage URLs (purls) for the software Package when using the create-spdx cla=
ss (874b2d3)<br>
<br>
&nbsp; - The SPDX_GIT_PURL_MAPPINGS variable allows mapping domain names to=
 PURLs (Package URLs) in SPDX documents (9f1825e)<br>
<br>
&nbsp; - The SPDX_CONCLUDED_LICENSE allows specifying the hasConcludedLicen=
se object of individual SBOM packages when using the create-spdx class (bb2=
1c6a)<br>
<br>
&nbsp; - The FIT_MKIMAGE_EXTRA_OPTS variable allows passing extra options t=
o the mkimage command when creating a FIT image with the kernel-fit-image c=
lass (d925d67)<br>
<br>
&nbsp; - The FIT_CONF_MAPPINGS variable allows mapping extra configurations=
 to existing ones or rename an existing configuration in FIT images created=
 with the kernel-fit-image class (e30f809)<br>
<br>
&nbsp; - The UBOOT_CONFIG_FRAGMENTS and UBOOT_FRAGMENTS allow supplying add=
itional configuration fragments to the existing U-Boot configuration. See t=
he definition of the variables for more information, and the documentation =
of the uboot-config class (https://docs.yoctoproject.org/dev/ref-manual/cla=
sses.html#ref-classes-uboot-config)
 (9e96d3d)<br>
<br>
&nbsp; - The IMAGE_EXTRA_PARTITION_FILES allows specifying extra files from=
 the deploy directory (DEPLOY_DIR_IMAGE) to install in a WIC partition crea=
ted with the extra_partition plugin (e152607)<br>
<br>
&nbsp; - The FIT_LOADABLES, FIT_LOADABLE_FILENAME, FIT_LOADABLE_TYPE, FIT_L=
OADABLE_ARCH, FIT_LOADABLE_OS and FIT_LOADABLE_LOADADDRESS variables can be=
 used to specify arbitrary loadables in a FIT image (2535427)<br>
<br>
- Global configuration changes:<br>
<br>
&nbsp; - Changes in DISTRO_FEATURES default values and how DISTRO_FEATURES =
&amp; MACHINE_FEATURES are provided, see migration guides for more informat=
ion. (https://docs.yoctoproject.org/dev/migration-guides/migration-6.0.html=
#changes-in-how-default-distro-features-and-machine-features-are-provided)<=
br>
<br>
&nbsp; - base-passwd: Add a clock group as systemd version v258 introduces =
this group to enable applications like linuxptp to open clocks without root=
 privileges (aad8493)<br>
<br>
&nbsp; - lto.inc: Add a Clang specific LTO configuration (253da2e)<br>
<br>
&nbsp; - bitbake.conf:<br>
<br>
&nbsp; &nbsp; - remove DEBUG_PREFIX_MAP from TARGET_LDFLAGS (1797741)<br>
&nbsp; &nbsp; - The default definition of TARGET_LDFLAGS used to contain th=
e value of DEBUG_PREFIX_MAP, to fix binary reproducibility issues. This was=
 no longer needed after the originating GCC bug was fixed (1797741)<br>
&nbsp; &nbsp; - Switch BB_SIGNATURE_HANDLER to OEEquivHash and BB_HASHSERVE=
 to auto by default (5596ea1, 4a38840)<br>
<br>
&nbsp; - The uninative class is now enabled by default. This allows reuse o=
f native sstate built on one distro on another (722897f)<br>
<br>
&nbsp; - The no-static-libs.inc file, disabling most static libraries in va=
rious recipes, is now included by default in the default distro setup (appe=
aring as the nodistro DISTRO) (03fc931)<br>
<br>
&nbsp; - The security_flags.inc file, adding various security related flags=
 to the default compiler and linker, is now included by default in the defa=
ult distro setup (appearing as nodistro DISTRO) (4c2d64c)<br>
<br>
&nbsp; - The yocto-space-optimize.inc file, adding various space optimizati=
on tweaks, is now included by default in the default distro setup (appearin=
g as nodistro DISTRO) (175fcf9)<br>
<br>
- QEMU / runqemu changes:<br>
<br>
&nbsp; - qemuboot`: Make the tap interface nameserver configurable through =
QB_TAP_NAMESERVER (0e8c258)<br>
<br>
&nbsp; - qemu: Disable the libkeyutils feature (30cc9f5)<br>
<br>
&nbsp; - runqemu-extract-sdk: Support the tar.zst format (650bb45)<br>
<br>
&nbsp; - qemurunner: Improve qmp module detection (a7386d0)<br>
<br>
&nbsp; - runqemu: Support .tar.zst, .tar,xz, .tar rootfs archive types (3a6=
172f)<br>
<br>
&nbsp; - runqemu: Allow VNC to be used as a fallback when there is no DISPL=
AY set (df9e9f3)<br>
<br>
- Documentation changes:<br>
<br>
&nbsp; - The documentation build now fetches the list of active and inactiv=
e version of the documentation from the remote releases.json file. This als=
o applies to the BitBake documentation.<br>
<br>
- Go changes:<br>
<br>
&nbsp; - go: Disable workspaces when building (GOWORK=3D&quot;off&quot;) (c=
52c5e8)<br>
<br>
&nbsp; - meta-go-toolchain: Disable support for the riscv32 and ppc32 archi=
tectures, as this was not supported (f554071)<br>
<br>
- Rust changes:<br>
<br>
&nbsp; - Enable dynamic linking with llvm. This allows dynamically linking =
to libLLVM.so instead of linking statically (74ba238)<br>
<br>
&nbsp; - Install Rust library sources for make rustavailable support (2912c=
a3)<br>
<br>
&nbsp; - Enable dynamic LLVM linking by default (d0671c3)<br>
<br>
&nbsp; - Enable fully static linking when TCLIBC is set to musl (75409c6)<b=
r>
<br>
- Wic Image Creator changes:<br>
<br>
&nbsp; - wic/engine: Fix copying directories into wic image with ext* parti=
tions (1ed38af)<br>
<br>
&nbsp; - Re-implement sector-size support (b50d6de)<br>
<br>
&nbsp; - The Wic tool is now maintained in a separate project, no longer pa=
rt of OpenEmbedded-Core (OE-Core): https://git.yoctoproject.org/wic/<br>
<br>
&nbsp; - A new wicenv type can be added to IMAGE_FSTYPES to place the .env =
file generate by Wic in the deployment directory (DEPLOY_DIR_IMAGE) (e4d497=
0)<br>
<br>
- Testing-related changes:<br>
<br>
&nbsp; - ptest support was added for the following recipes:<br>
<br>
&nbsp; &nbsp; - libarchive (6e0bf90)<br>
&nbsp; &nbsp; - libassuan (1010abf)<br>
&nbsp; &nbsp; - libcheck (1bb06e2)<br>
&nbsp; &nbsp; - libconfig (f3e9d13)<br>
&nbsp; &nbsp; - libksba (f50a200)<br>
&nbsp; &nbsp; - libmd (4c0a413)<br>
&nbsp; &nbsp; - libpcre2 (a7b79bf)<br>
&nbsp; &nbsp; - libsolv (f5432d1)<br>
&nbsp; &nbsp; - libyaml (ed2a345)<br>
&nbsp; &nbsp; - utfcpp (49314ca)</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
&nbsp; - selftests: Use SHA256 keys for RPM tests (692919b)<br>
<br>
&nbsp; - oeqa: Open JSON files to parse in a context manager (e96baf5)<br>
<br>
&nbsp; - resulttool: Add ptest support to the JUnit output format (2abe2d7)=
<br>
<br>
&nbsp; - do_testimage: Print last lines of kernel log on test fail (fea3c44=
)<br>
<br>
&nbsp; - reproducible: Use the jQuery CDN instead of jquery-native (d3ee549=
)<br>
<br>
&nbsp; - selftest: Test installation of recipes with complex packaging (6f3=
aab6)<br>
<br>
&nbsp; - Add test_sdk_runqemu to test the execution of runqemu from an SDK =
(7fbb281)<br>
<br>
&nbsp; - Add tests for Rust support in the Linux kernel (01ea2b2, 10dff9f)<=
br>
<br>
&nbsp; - Replace runltp with kirk, as it became the new official LTP test e=
xecutor (c1e5ed4)<br>
<br>
&nbsp; - WIC related tests were updated after wic was moved to its own repo=
sitory and is externally managed (b9e2a2f)<br>
<br>
- Utility script changes:classes<br>
<br>
&nbsp; - bitbake-config-build: It is now possible to disable all fragments =
starting with a prefix by issuing bitbake-config-build disable-fragment &lt=
;prefix&gt;/ (573695d)<br>
<br>
&nbsp; - recipetool: Support PEP639-variant of license key in Python pyproj=
ect.toml files (9d1a7bb)<br>
<br>
&nbsp; - buildhistory:<br>
<br>
&nbsp; &nbsp; - Also show renamed directories (9bf2211)<br>
&nbsp; &nbsp; - Fix handling of RDEPENDS style strings (b013d62)<br>
<br>
&nbsp; - create-pull-request: Keep commit hash to be pulled in cover email =
(c78f5ae)<br>
<br>
&nbsp; - yocto-check-layer: Add messages in test_readme assertions (9fe883c=
)<br>
<br>
&nbsp; - improve_kernel_cve_report:<br>
<br>
&nbsp; &nbsp; - Sort kernel_compiled_files (682e5be)<br>
&nbsp; &nbsp; - Correct the description for fixed version (b76da20)<br>
&nbsp; &nbsp; - Update data if CVE exists (9ea6d92)<br>
&nbsp; &nbsp; - Validate that cve details field exists (80ff490)<br>
<br>
&nbsp; - oe-pkgdata-util: improve the lookup-pkg error message for RPROVIDE=
S packages (46ff3a8)<br>
<br>
- BitBake changes:<br>
<br>
&nbsp; - bitbake-layers:<br>
<br>
&nbsp; &nbsp; - Add a --show-variants option to the show-recipes subcommand=
 to display BBCLASSEXTEND variants (353d5e9)<br>
&nbsp; &nbsp; - Fix the branch detection method of layerindex-fetch (af9dd0=
1)<br>
<br>
&nbsp; - bitbake-setup:<br>
<br>
&nbsp; &nbsp; - Implement symlinking local sources into builds with the --u=
se-local-source option of the init subcommand (ed5a3a0)<br>
&nbsp; &nbsp; - Convert print() calls to use a BitBake logger (6e511d0)<br>
&nbsp; &nbsp; - Correct several scenarios in layer updates (aa15cc7)<br>
&nbsp; &nbsp; - Source in the git-remote section can now be specified more =
simply with the uri property, instead of the remotes property (7941a5d). Fo=
r example:<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;bitbake&quot;: {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;git-remote&quot;: {<=
br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;uri&qu=
ot;: &quot;https://git.openembedded.org/bitbake&quot;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;branch=
&quot;: &quot;master&quot;,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;rev&qu=
ot;: &quot;master&quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
<br>
&nbsp; &nbsp; - Use the internal registry if run from a Git checkout, from =
a remote BitBake repository otherwise (675e907)<br>
&nbsp; &nbsp; - Fragments passed in the oe-fragments-one-of property can no=
w contain descriptions (29f2cee)<br>
&nbsp; &nbsp; - Improve the readability of choices during the bitbake-setup=
 init command (d970063)<br>
&nbsp; &nbsp; - Enable coloring of the diff outputs when using the bitbake-=
setup status or bitbake-setup update commands<br>
&nbsp; &nbsp; - The bitbake-setup update now behaves in a non-destructive w=
ay: local commits and modifications to layers are taken into account, and t=
he tool will either stop or warn the user that the update is possible or no=
t (2ee3a19)<br>
&nbsp; &nbsp; - Share Shared State by default between builds, by adding a d=
efinition for SSTATE_DIR and BB_HASHSERVE_DB_DIR in the site.conf file crea=
ted by bitbake-setup init (a70c336)<br>
&nbsp; &nbsp; - Generate config files for VSCode by default, unless --no-in=
it-vscode is passed to bitbake-setup init (92fd721)<br>
<br>
&nbsp; - The unpack() function (the one containing the logic of the do_unpa=
ck task), can now take an update argument to allow updating a Git repositor=
y in-place rather than deleting it and re-creating it. An alias function na=
med unpack_update() was created for this
 unpack mode. See The Non-Destructive Update (unpack_update) for more infor=
mation (https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/bitba=
ke-user-manual-fetching.html#bb-the-unpack-update) (e7d5e15)<br>
<br>
&nbsp; - cooker: Use BB_HASHSERVE_DB_DIR as hash server database location. =
If unset, the existing behavior is preserved (b339d05)<br>
<br>
&nbsp; - bitbake-getvar: Show close matches when no providers are found (1f=
8fa7c)<br>
<br>
&nbsp; - The GIT_CONFIG_GLOBAL environment variable will now be taken into =
account by the Git fetcher, to allow passing a different set of Git configu=
ration options when fetching Git repositories (4c37844)<br>
<br>
&nbsp; - When using the subpath parameter with the Git fetcher in an SRC_UR=
I, properly make the HEAD point to the value specified in SRCREV.<br>
<br>
- Clang/LLVM related changes:<br>
<br>
&nbsp; - compiler-rt:<br>
&nbsp;&nbsp;<br>
&nbsp; &nbsp; - Remove the need to depend on libgcc (f504b6b)<br>
&nbsp; &nbsp; - Always build C runtime (crt) files (56fe42a)<br>
<br>
&nbsp; - libcxx: Remove GNU runtime from dependencies (8034509)<br>
<br>
&nbsp; - libcxx/compiler-rt: Add support for llvm-libgcc, a drop-in replace=
ment for libgcc and crt files (ed02230)<br>
<br>
- SPDX-related changes:<br>
<br>
&nbsp; - Output SBOM documents now include recipe metadata (d999ac4)<br>
<br>
&nbsp; - spdx30_tasks: Fix SPDX_CUSTOM_ANNOTATION_VARS implementation (52ab=
3b6)<br>
<br>
&nbsp; - kernel: Add a task to export the kernel configuration to SPDX (228=
a968)<br>
<br>
&nbsp; - Add support for exporting the PACKAGECONFIG to SPDX (7ec61ac)<br>
<br>
&nbsp; - Add suport for package URLs (PURLs) through SPDX_PACKAGE_URL (874b=
2d3)<br>
<br>
&nbsp; - Support only SPDX 3 and removed SPDX 2.2 support (12abd05)<br>
<br>
&nbsp; - The create-spdx class used to include VEX statements in the SPDX d=
ocuments tied to each packages. This is no longer the case, as these statem=
ents are now found in the SPDX documents for recipes directly. This was don=
e to decrease the duplication of these
 statements for packages that were generated by the same recipe.<br>
&nbsp; &nbsp; The output SPDX document for an image recipe will still inclu=
de the VEX statements, as the SPDX document for the image also include the =
recipe SPDX metadata.<br>
&nbsp; &nbsp; The inclusion of VEX statements in SPDX documents can be cont=
rolled with the SPDX_INCLUDE_VEX variable (d999ac4)<br>
<br>
- devtool changes:<br>
<br>
&nbsp; - ide-sdk:<br>
<br>
&nbsp; &nbsp; - Find bitbake-setup=92s init-build-env first, and oe-init-bu=
ild-env if not found (6ab7e9e)<br>
&nbsp; &nbsp; - Add gdbserver attach mode support (1191710)<br>
&nbsp; &nbsp; - Support GDB pretty-printing for C++ STL types (a69e2ba)<br>
&nbsp; &nbsp; - Support kernel module development (aaf15d6)<br>
<br>
&nbsp; - Add new patches in correct order when running devtool finish (fa78=
77d)<br>
<br>
&nbsp; - Prevent devtool modify -n from corrupting Linux kernel Git repos (=
d383ea3)<br>
<br>
- Patchtest-related changes:<br>
<br>
&nbsp; - Code refactoring and improvements (86d0b22, 317ef42, 6cdb5cb, ae78=
7b3, a850252)<br>
<br>
&nbsp; - Reject Upstream-Status after scissors (2156ef9)<br>
<br>
- insane / sanity classes related changes:<br>
<br>
&nbsp; - Reject TMPDIR containing redundant slashes to avoid errors in exec=
utions of do_populate_sysroot (3e72ebe)<br>
<br>
&nbsp; - sanity: Warn when the Shared State cache directory (SSTATE_DIR) is=
 outside of the build directory (BUILDDIR), but the Hash Equivalence databa=
se is inside it (491de0d)<br>
<br>
- Security changes:<br>
<br>
&nbsp; - A new document was added to the Yocto Project documentation: Yocto=
 Project Security Reference. It is intended to document how to report vulne=
rabilities to the Yocto Project security team.<br>
<br>
- sbom-cve-check-related changes:<br>
<br>
&nbsp; - Escape special characters in CPE 2.3 strings (9dd9c00)<br>
<br>
- New PACKAGECONFIG options for individual recipes:<br>
<br>
&nbsp; - curl: schannel<br>
&nbsp; - gstreamer1.0-plugins-bad: fdkaac<br>
&nbsp; - gstreamer1.0-plugins-good: qt6<br>
&nbsp; - libinput: lua, libwacom, mtdev<br>
&nbsp; - librepo: sequoia<br>
&nbsp; - mesa: expat, zlib<br>
&nbsp; - openssl: legacy<br>
&nbsp; - opkg: acl, xattr<br>
&nbsp; - orc: hotdoc<br>
&nbsp; - python3: freethreading (experimental, see c569901)&nbsp;<br>
&nbsp; - python3-cryptography: legacy-openssl<br>
&nbsp; - systemd: osc-context<br>
&nbsp; - systemtap: readline<br>
<br>
- systemd related changes:<br>
<br>
&nbsp; - Package ukify separately, with the systemd-ukify package name (e92=
4274)<br>
<br>
- U-Boot related changes:<br>
<br>
&nbsp; - uboot-config: Add support for generating the U-Boot initial enviro=
nment in binary format using UBOOT_INITIAL_ENV_BINARY (cf11b14)<br>
<br>
&nbsp; - A new way of specifying multiple U-Boot configurations has been ad=
ded (cd9e730). See U-Boot configuration flow changes (ref-classes-uboot-con=
fig) (https://docs.yoctoproject.org/dev/migration-guides/migration-6.0.html=
#ref-migration-6-0-u-boot-config-flow-changes)<br>
<br>
- Miscellaneous changes:<br>
<br>
&nbsp; - curl: Ensure CURL_CA_BUNDLE from host environment is respected (54=
5e43a)<br>
<br>
&nbsp; - weston: Add PipeWire as runtime dependency when pipewire is part o=
f PACKAGECONFIG (9f52867)<br>
<br>
&nbsp; - uki: Use basename of device trees available via KERNEL_DEVICETREE =
(27a7fbb)<br>
<br>
&nbsp; - rpcbind: Set the owner of /run/rpcbind to rpc (80e4289)<br>
<br>
&nbsp; - archiver: Remove WORKDIR from the patch directory (c99d228)<br>
<br>
&nbsp; - gtk4: Convert to use the gnomebase class (fcd5e7c)<br>
<br>
&nbsp; - udev-extraconf: Split automount and autonet into seperate packages=
 (udev-extraconf-automount and udev-extraconf-autonet) (08662d7)<br>
<br>
&nbsp; - e2fsprogs: Fix a bug for files larger than 2GB (683a1e7)<br>
<br>
&nbsp; - mesa: Add support for the virtio, gfxstream, hasvk Vulkan drivers =
(8e7ffdc, 3b56f14)<br>
<br>
&nbsp; - mesa: Drop VDPAU remnants in the recipe after upstream support was=
 removed (3b05f58)<br>
<br>
&nbsp; - cross: Propagate dependencies to outhash, improving hash equivalen=
ce (267b651)<br>
<br>
&nbsp; - run-postinsts: Propagate exit status to the run-postinsts.service =
systemd service (7f74d88)<br>
<br>
&nbsp; - freetype: Use meson instead of autotools* (7395e4f)<br>
<br>
&nbsp; - wpa-supplicant:<br>
<br>
&nbsp; &nbsp; - Build with OWE support by default (d16c66b)<br>
&nbsp; &nbsp; - Build with 802.11be support by default (d16c66b)<br>
<br>
&nbsp; - overlayfs: Remove helper unit (623c20f)<br>
<br>
&nbsp; - patch: Show full path when a patch fails to apply (602e28b)<br>
<br>
&nbsp; - kea: Replace keactrl with kea daemons (kea-dhcp*) in initscripts (=
7f9d929), and remove keactrl from the recipe (08c3877)<br>
<br>
&nbsp; - initramfs-framework:<br>
<br>
&nbsp; &nbsp; - Add handover of PID 1=92s arguments to modules (a0ab3d1)<br=
>
&nbsp; &nbsp; - Fix Linux kernel command line parsing when passing in doubl=
e quotes (f9acaf1)<br>
<br>
&nbsp; - perl: Provide pod2man (in the recipe=92s PROVIDES definition). Thi=
s is used by many other recipes to produce man pages. This allows existing =
recipes to explicitly depend on pod2man-native to produce man pages (1d1e55=
d)<br>
<br>
&nbsp; - build-sysroots: Add sysroot tasks to default build and remove warn=
ing (e73f150)<br>
<br>
&nbsp; - Licenses and manifests are now deployed in the SDK when setting CO=
PY_LIC_DIRS and/or COPY_LIC_MANIFEST, for both host and target sysroots (f7=
57ae4)<br>
<br>
&nbsp; - openssl: Disable TLS 1.0/1.1 by default (d5501e7)<br>
<br>
&nbsp; - python3-cryptography: Disable legacy-openssl feature by default (1=
acd199)<br>
<br>
&nbsp; - openssl: Add support for config snippet includes. This can be done=
 by installing extra configuration files in ${sysconfdir}/ssl/openssl.cnf.d=
/ (34bafcf)<br>
<br>
&nbsp; - busybox:<br>
<br>
&nbsp; &nbsp; - Enable SELinux support if DISTRO_FEATURES contains selinux =
(c544f12)<br>
&nbsp; &nbsp; - Do not build SUID binary without an applet (1406f95)<br>
<br>
&nbsp; - coreutils: kill and uptime are no longer provided by the recipe (c=
edeb95)<br>
<br>
&nbsp; - tcl8: Skip timing-sensitive ptests (1b93479)<br>
<br>
&nbsp; - license_image.bbclass: Report all packages with incompatible licen=
se (when using INCOMPATIBLE_LICENSE) (57fe3e4)<br>
<br>
&nbsp; - python3: Package all of the compression module into python3-compre=
ssion (5f34680)<br>
<br>
&nbsp; - gobject-introspection: Disable cache for the scanner during the do=
_compile task (GI_SCANNER_DISABLE_CACHE=3D1), to fix an intermittent build =
failure (2b55dd1)<br>
<br>
&nbsp; - archiver: Don=92t try to preserve all attributes when copying file=
s (6e83136)<br>
<br>
&nbsp; - useradd*: allow inheriting the class with only USERADD_DEPENDS set=
, when a recipe only depends on users/groups created by another (09a901b)<b=
r>
<br>
&nbsp; - vim: disable GTK+3 UI by default (a07763f)</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
Known Issues in 6.0<br>
-------------------<br>
<br>
Referencing an unset variable in DISTRO_FEATURES causes DISTRO_FEATURES_NAT=
IVE and DISTRO_FEATURES_NATIVESDK to be set incorrectly. The leads to confu=
sing errors, such as<br>
&nbsp; - Nothing PROVIDES 'libseccomp-native'<br>
&nbsp; - Required build target 'glibc' has no buildable providers.<br>
<br>
To resolve these errors, ensure that all variables used in DISTRO_FEATURES =
are set. Variables may be set to an empty string if not needed.<br>
<br>
A fix for this issue is in progress and should be included in Yocto Project=
 6.0.1. See Yocto bug #16275 for further details (https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D16275).<br>
<br>
<br>
Recipe License changes in 6.0<br>
-----------------------------<br>
<br>
The following changes have been made to the LICENSE values set by recipes:<=
br>
<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| Recipe(s)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| Previous value&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;| New value&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| libxcrypt-compat, libxcrypt | LGPL-2.1-only&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | LGPL-2.1-only &amp; 0BSD &amp; =
BSD-3-Clause&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;|<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| libpcre2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | BSD-3-Clause&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;| BSD-3-Clause &amp; BSD-2-Clause &amp; MIT&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
|<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| libtest-fatal-perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Artistic-1.0 | GPL=
-1.0-or-later&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; | Artistic-1.0-Perl | GPL-1.0-or-later&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| python3-cffi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | MIT=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; | MIT-0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<b=
r>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| icu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| ICU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | ICU &amp; MIT&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| iso-code&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | LGPL-2.1-only&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; | LGPL-2.1-or-later&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
| ruby&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | Ruby | BSD-2-Clause | BSD-3-Clause | GPL-2.0-only |&nbsp; =
&nbsp; | Ruby | BSD-2-Clause | BSD-3-Clause | GPL-2.0-only | ISC | MIT | BS=
L-1.0 |&nbsp; &nbsp; &nbsp;|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| ISC | MIT&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Apache-2.0&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; |<br>
+-----------------------------+--------------------------------------------=
------------+--------------------------------------------------------------=
-----------------+<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
<br>
Security Fixes in 6.0<br>
---------------------<br>
<br>
The following CVEs have been fixed:<br>
<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| Recipe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE IDs&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| avahi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-=
2025-59529, CVE-2026-34933&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| binutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2025-69644=
, CVE-2025-69647, CVE-2025-69648, CVE-2025-69649, CVE-2025-69650, CVE-2025-=
69651, CVE-2025-69652, CVE-2026-3441, CVE-2026-3442,&nbsp; |<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-4647&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| binutils-cross-x86_64 | CVE-2025-69644, CVE-2025-69647, CVE-2025-69648, C=
VE-2025-69649, CVE-2025-69650, CVE-2025-69651, CVE-2025-69652, CVE-2026-344=
1, CVE-2026-3442,&nbsp; |<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-4647&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| binutils-testsuite&nbsp; &nbsp; | CVE-2025-69644, CVE-2025-69647, CVE-202=
5-69648, CVE-2025-69649, CVE-2025-69650, CVE-2025-69651, CVE-2025-69652, CV=
E-2026-3441, CVE-2026-3442,&nbsp; |<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-4647&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| cargo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-=
2026-39837, CVE-2026-39839, CVE-2026-39840, CVE-2026-39841&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| cups&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-=
2026-34978, CVE-2026-34979, CVE-2026-34980, CVE-2026-34990, CVE-2026-39314,=
 CVE-2026-39316&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| ffmpeg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2025-=
69693, CVE-2026-40962&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| glibc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-=
2026-4046, CVE-2026-4437, CVE-2026-4438&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| go&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |=
 CVE-2026-27140, CVE-2026-27143, CVE-2026-27144, CVE-2026-32280, CVE-2026-3=
2281, CVE-2026-32282, CVE-2026-32283, CVE-2026-32288, CVE-2026-32289 |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| go-binary-native&nbsp; &nbsp; &nbsp; | CVE-2026-27140, CVE-2026-27143, CV=
E-2026-27144, CVE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-3228=
3, CVE-2026-32288, CVE-2026-32289 |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| go-cross-x86-64-v3&nbsp; &nbsp; | CVE-2026-27140, CVE-2026-27143, CVE-202=
6-27144, CVE-2026-32280, CVE-2026-32281, CVE-2026-32282, CVE-2026-32283, CV=
E-2026-32288, CVE-2026-32289 |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| go-runtime&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-27140, CVE=
-2026-27143, CVE-2026-27144, CVE-2026-32280, CVE-2026-32281, CVE-2026-32282=
, CVE-2026-32283, CVE-2026-32288, CVE-2026-32289 |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| gstreamer1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-2920, CVE-2026-=
2921, CVE-2026-2922, CVE-2026-2923, CVE-2026-3081, CVE-2026-3082, CVE-2026-=
3083, CVE-2026-3084, CVE-2026-3085,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-3086&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libarchive&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-5121&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |=
<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libexif&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2026-=
40385, CVE-2026-40386&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libinput&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-35093=
, CVE-2026-35094&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libpng&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-=
33416, CVE-2026-33636&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libsndfile1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2024-50613, CVE=
-2025-52194&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| libsoup&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2026-=
1467, CVE-2026-1536, CVE-2026-1539, CVE-2026-1801, CVE-2026-2443, CVE-2026-=
3099, CVE-2026-3632, CVE-2026-3633, CVE-2026-3634,&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-4271, CVE-2026-5119&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| linux-yocto&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2019-14899, CVE=
-2021-3714, CVE-2021-3864, CVE-2022-0400, CVE-2022-1247, CVE-2022-4543, CVE=
-2023-3397, CVE-2023-3640, CVE-2023-4010,&nbsp; &nbsp; &nbsp; &nbsp; |<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2023-6238, CVE-2023-6240, CVE-2025-40039, CVE-2025-40040, CV=
E-2025-40082, CVE-2025-40149, CVE-2025-40164, CVE-2025-40251, CVE-2025-6821=
1,&nbsp; |<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-68214, CVE-2025-68223, CVE-2025-68333, CVE-2025-68340, =
CVE-2025-68351, CVE-2025-68358, CVE-2025-68365, CVE-2025-68725, CVE-2025-68=
749,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-68817, CVE-2025-68823, CVE-2025-71071, CVE-2025-71072, =
CVE-2025-71073, CVE-2025-71074, CVE-2025-71075, CVE-2025-71076, CVE-2025-71=
077,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71078, CVE-2025-71079, CVE-2025-71080, CVE-2025-71081, =
CVE-2025-71082, CVE-2025-71083, CVE-2025-71084, CVE-2025-71085, CVE-2025-71=
086,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71087, CVE-2025-71088, CVE-2025-71089, CVE-2025-71091, =
CVE-2025-71093, CVE-2025-71094, CVE-2025-71095, CVE-2025-71096, CVE-2025-71=
097,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71098, CVE-2025-71099, CVE-2025-71100, CVE-2025-71101, =
CVE-2025-71102, CVE-2025-71104, CVE-2025-71105, CVE-2025-71107, CVE-2025-71=
108,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71109, CVE-2025-71111, CVE-2025-71112, CVE-2025-71113, =
CVE-2025-71114, CVE-2025-71115, CVE-2025-71116, CVE-2025-71117, CVE-2025-71=
118,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71119, CVE-2025-71120, CVE-2025-71121, CVE-2025-71122, =
CVE-2025-71124, CVE-2025-71125, CVE-2025-71126, CVE-2025-71127, CVE-2025-71=
128,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71129, CVE-2025-71130, CVE-2025-71131, CVE-2025-71132, =
CVE-2025-71133, CVE-2025-71134, CVE-2025-71135, CVE-2025-71136, CVE-2025-71=
137,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71138, CVE-2025-71141, CVE-2025-71142, CVE-2025-71143, =
CVE-2025-71147, CVE-2025-71148, CVE-2025-71149, CVE-2025-71150, CVE-2025-71=
151,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71152, CVE-2025-71153, CVE-2025-71154, CVE-2025-71156, =
CVE-2025-71157, CVE-2025-71158, CVE-2025-71160, CVE-2025-71161, CVE-2025-71=
162,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71163, CVE-2025-71180, CVE-2025-71182, CVE-2025-71183, =
CVE-2025-71184, CVE-2025-71185, CVE-2025-71186, CVE-2025-71187, CVE-2025-71=
188,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71189, CVE-2025-71190, CVE-2025-71191, CVE-2025-71200, =
CVE-2025-71201, CVE-2025-71202, CVE-2025-71203, CVE-2025-71204, CVE-2025-71=
220,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71221, CVE-2025-71222, CVE-2025-71223, CVE-2025-71225, =
CVE-2025-71227, CVE-2025-71229, CVE-2025-71230, CVE-2025-71231, CVE-2025-71=
232,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2025-71233, CVE-2025-71234, CVE-2025-71235, CVE-2025-71236, =
CVE-2025-71237, CVE-2025-71238, CVE-2026-22976, CVE-2026-22977, CVE-2026-22=
978,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-22979, CVE-2026-22980, CVE-2026-22981, CVE-2026-22982, =
CVE-2026-22984, CVE-2026-22985, CVE-2026-22986, CVE-2026-22989, CVE-2026-22=
990,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-22991, CVE-2026-22992, CVE-2026-22993, CVE-2026-22994, =
CVE-2026-22996, CVE-2026-22997, CVE-2026-22998, CVE-2026-22999, CVE-2026-23=
000,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23001, CVE-2026-23002, CVE-2026-23003, CVE-2026-23005, =
CVE-2026-23006, CVE-2026-23007, CVE-2026-23008, CVE-2026-23009, CVE-2026-23=
010,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23011, CVE-2026-23013, CVE-2026-23015, CVE-2026-23017, =
CVE-2026-23018, CVE-2026-23019, CVE-2026-23020, CVE-2026-23021, CVE-2026-23=
023,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23025, CVE-2026-23026, CVE-2026-23060, CVE-2026-23061, =
CVE-2026-23062, CVE-2026-23063, CVE-2026-23064, CVE-2026-23065, CVE-2026-23=
066,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23067, CVE-2026-23068, CVE-2026-23069, CVE-2026-23070, =
CVE-2026-23071, CVE-2026-23072, CVE-2026-23073, CVE-2026-23074, CVE-2026-23=
075,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23076, CVE-2026-23077, CVE-2026-23078, CVE-2026-23080, =
CVE-2026-23081, CVE-2026-23083, CVE-2026-23084, CVE-2026-23085, CVE-2026-23=
086,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23087, CVE-2026-23088, CVE-2026-23089, CVE-2026-23090, =
CVE-2026-23091, CVE-2026-23092, CVE-2026-23093, CVE-2026-23094, CVE-2026-23=
095,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23096, CVE-2026-23097, CVE-2026-23098, CVE-2026-23099, =
CVE-2026-23100, CVE-2026-23101, CVE-2026-23102, CVE-2026-23103, CVE-2026-23=
104,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23105, CVE-2026-23107, CVE-2026-23108, CVE-2026-23109, =
CVE-2026-23110, CVE-2026-23111, CVE-2026-23112, CVE-2026-23113, CVE-2026-23=
114,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23115, CVE-2026-23116, CVE-2026-23118, CVE-2026-23119, =
CVE-2026-23120, CVE-2026-23121, CVE-2026-23122, CVE-2026-23123, CVE-2026-23=
124,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23125, CVE-2026-23126, CVE-2026-23128, CVE-2026-23129, =
CVE-2026-23130, CVE-2026-23131, CVE-2026-23133, CVE-2026-23135, CVE-2026-23=
136,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23137, CVE-2026-23138, CVE-2026-23139, CVE-2026-23140, =
CVE-2026-23141, CVE-2026-23142, CVE-2026-23143, CVE-2026-23144, CVE-2026-23=
146,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23147, CVE-2026-23148, CVE-2026-23150, CVE-2026-23151, =
CVE-2026-23152, CVE-2026-23154, CVE-2026-23156, CVE-2026-23157, CVE-2026-23=
158,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23160, CVE-2026-23161, CVE-2026-23163, CVE-2026-23164, =
CVE-2026-23166, CVE-2026-23167, CVE-2026-23168, CVE-2026-23169, CVE-2026-23=
170,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23171, CVE-2026-23172, CVE-2026-23173, CVE-2026-23186, =
CVE-2026-23187, CVE-2026-23188, CVE-2026-23190, CVE-2026-23191, CVE-2026-23=
192,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23193, CVE-2026-23195, CVE-2026-23196, CVE-2026-23197, =
CVE-2026-23198, CVE-2026-23199, CVE-2026-23201, CVE-2026-23204, CVE-2026-23=
205,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23206, CVE-2026-23208, CVE-2026-23209, CVE-2026-23210, =
CVE-2026-23212, CVE-2026-23213, CVE-2026-23214, CVE-2026-23215, CVE-2026-23=
216,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23217, CVE-2026-23219, CVE-2026-23220, CVE-2026-23221, =
CVE-2026-23222, CVE-2026-23223, CVE-2026-23224, CVE-2026-23226, CVE-2026-23=
227,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23228, CVE-2026-23229, CVE-2026-23230, CVE-2026-23231, =
CVE-2026-23233, CVE-2026-23234, CVE-2026-23235, CVE-2026-23236, CVE-2026-23=
237,|<br>
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;| CVE-2026-23238&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| mesa&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-=
2026-40393&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| nfs-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2025-12801=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| nghttp2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2026-=
27135&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| openssh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2026-=
35414&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| python3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2026-=
4519&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| python3-requests&nbsp; &nbsp; &nbsp; | CVE-2026-25645&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| qemu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-=
2024-6519&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| qemu-system-native&nbsp; &nbsp; | CVE-2024-6519&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| sqlite3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| CVE-2025-=
70873&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| systemd-boot&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | CVE-2026-29111, CVE-2026=
-40226&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| vim&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|=
 CVE-2026-28417, CVE-2026-28418, CVE-2026-28419, CVE-2026-28420, CVE-2026-2=
8421, CVE-2026-28422, CVE-2026-33412, CVE-2026-34714, CVE-2026-35177 |<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+<br>
| xz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |=
 CVE-2026-34743&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;|<br>
+-----------------------+--------------------------------------------------=
---------------------------------------------------------------------------=
-------------------+</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
Recipe Upgrades in 6.0<br>
----------------------<br>
<br>
The following recipes have been upgraded:<br>
<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| Recipe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| Previous version(s)&nbsp; &nbsp; &nbsp; &nb=
sp;| New version(s)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| acpica&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 20250807&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 20251212&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| adwaita-icon-theme&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 48.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 49.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| alsa-lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.2.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.2.15.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| alsa-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.2.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.2.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| alsa-ucm-conf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.2.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 1.2.15.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| alsa-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.2.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.2.15.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| appstream&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| aspell&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 0.60.8.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.60.8.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| at-spi2-core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 2.56.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.60.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| autoconf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.72&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.73&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| barebox&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 2025.09.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 2026.04.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| barebox-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2025.09.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 2026.04.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| base-passwd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 3.6.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 3.6.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| bash-completion&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 2.16.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 2.17.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| bind&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 9.20.15&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 9.20.22&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| binutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.45.1+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.46&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| binutils-cross&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 2.45.1+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 2.46&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| binutils-cross-canadian&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.45.1+git&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.46&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| binutils-crosssdk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 2.45.1+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.46&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| binutils-testsuite&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 2.45.1+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.46&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| bluez5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 5.84&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 5.86&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| boost&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.89.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.90.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| boost-build-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 1.89.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.90.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| btrfs-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 6.16&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 6.19.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cargo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.90.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.94.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cargo-c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.10.16+cargo-0.91.0&nbsp; &nbsp; &nbsp; | 0.10.=
21+cargo-0.95.0&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ccache&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 4.12.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.13.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| clang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cmake&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 4.1.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.3.1&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cmake-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 4.1.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 4.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| compiler-rt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| compiler-rt-sanitizers&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.=
3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br=
>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| connman&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.45&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| coreutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 9.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 9.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| createrepo-c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.2.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.2.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cross-localedef-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.42+git=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.43+git&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cryptodev-linux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 1.14 (135cbff90af2=85)&nbsp; &nbsp; &nbsp; | 1.14 (08644db02d43=85)&=
nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cryptodev-module&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 1.14 (135cbff90af2=85)&nbsp; &nbsp; &nbsp; | 1.14 (08644db02d43=85)&=
nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cryptodev-tests&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 1.14 (135cbff90af2=85)&nbsp; &nbsp; &nbsp; | 1.14 (08644db02d43=85)&=
nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| cups&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.4.15&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.4.16&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| curl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 8.17.0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 8.19.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dhcpcd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 10.2.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 10.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| diffoscope&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 306&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 314&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dmidecode&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 3.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dnf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.23.0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.24.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dos2unix&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 7.5.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 7.5.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dpkg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.22.21&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.23.7&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| dropbear&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2025.88&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 2025.89&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| e2fsprogs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.47.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.47.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ed&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.22.2&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.22.5&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| elfutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 0.193&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.194&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ell&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.80&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.83&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| enchant2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.8.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.8.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| epiphany&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 48.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 49.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| erofs-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.8.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ethtool&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 6.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 6.19&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| expat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 2.7.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.7.5&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| fastfloat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 8.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 8.2.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ffmpeg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 8.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 8.0.1&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| file&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.46&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 5.47&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| fmt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 11.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 12.1.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| font-alias&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.0.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| freetype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.13.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.14.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gawk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.3.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.4.0&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gdb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 16.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 17.1&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gdb-cross&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 16.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 17.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gdb-cross-canadian&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 16.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 17.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gdk-pixbuf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 2.42.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 2.44.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gettext&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.26&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gettext-minimal-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.26&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | =
1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gi-docgen&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2025.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 2026.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.51.0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.53.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glew&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.3.1&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glib-2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.86.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.88.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glib-2.0-initial&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 2.86.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 2.88.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glibc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 2.42+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.43+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glibc-locale&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 2.42+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.43+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glibc-mtrace&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 2.42+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.43+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glibc-scripts&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.42+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 2.43+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glibc-testsuite&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 2.42+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 2.43+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| glslang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gn&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0+git (81b24e01531e=85)&nbsp; &nb=
sp; &nbsp;| 0+git (9d19a7870add=85)&nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gnu-efi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 4.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gnupg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 2.5.11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.5.17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gnutls&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 3.8.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 3.8.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.25.9&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.26.2&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-binary-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 1.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 1.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-cross-canadian&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 1.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-cross-core2-32&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 1.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-crosssdk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-helloworld&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 0.1 (8b405629c4a5=85)&nbsp; &nbsp; &nbsp; &nbsp;| 0.1 (7f05d217=
867b=85)&nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| go-runtime&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gobject-introspection&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.84.0&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.86.=
0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br=
>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| groff&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.23.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.24.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| grub&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.14&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| grub-efi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gsettings-desktop-schemas&nbsp; &nbsp; &nbsp; &nbsp; | 48.0&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 50.0&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br=
>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gst-devtools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.26.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.28.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gst-examples&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.26.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.28.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.26.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.28.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-libav&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 1.26.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.28.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-plugins-bad&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.26.7&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.28.2&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-plugins-base&nbsp; &nbsp; &nbsp; &nbsp; | 1.26.7&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.28.2&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-plugins-good&nbsp; &nbsp; &nbsp; &nbsp; | 1.26.7&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.28.2&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-plugins-ugly&nbsp; &nbsp; &nbsp; &nbsp; | 1.26.7&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.28.2&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.2=
6.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | =
1.28.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gstreamer1.0-rtsp-server&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.26.7&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.28.2&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gtk-doc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.34.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.35.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| gtk4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.18.6&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.22.1&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| harfbuzz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 11.4.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 12.3.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| hwdata&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 0.399&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.405&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| hwlatdetect&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 2.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 2.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| icu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 77-1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 78.3&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ifupdown&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 0.8.44&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.8.45&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| igt-gpu-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 2.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| inetutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| iproute2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 6.16.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 6.19.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| iptables&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.8.11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.8.13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| iso-codes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 4.18.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 4.20.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| kbd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.8.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.9.0&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| kea&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 3.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.0.3&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| kern-tools-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 0.3+git (f589e1df2325=85)&nbsp; &nbsp;| 0.3+git (a4a362d9f4f0=85)&nbsp; &=
nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| kexec-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 2.0.31&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.0.32&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| kmscube&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.0.1+git (2c1f2646c5e5=85) | 0.0.1+git (f60e50e=
887d3=85) |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| less&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 679&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 692&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libadwaita&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.7.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.8.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libarchive&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 3.8.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 3.8.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libatomic-ops&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 7.8.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 7.10.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libcap&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 2.76&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.77&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libcap-ng&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 0.8.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 0.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libcap-ng-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 0.8.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 0.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libclc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libcomps&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 0.1.22&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.1.24&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libcxx&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libdisplay-info&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 0.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 0.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libdnf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 0.74.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.75.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libdrm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 2.4.125&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.4.131&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libedit&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 20250104-3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 20251016-3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libevdev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.13.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.13.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libexif&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.6.25&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.6.26&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libfontenc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.1.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libgcrypt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.11.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.12.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libgit2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.9.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libgloss&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 4.5.0+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 4.6.0+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libgpg-error&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.56&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.59&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libinput&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.29.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.30.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libjpeg-turbo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 3.1.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 3.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libksba&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.6.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.6.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libnl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 3.11.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 3.12.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libnotify&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 0.8.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 0.8.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libpam&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 1.7.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.7.2&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libpciaccess&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 0.18.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 0.19&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libpcre2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 10.46&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 10.47&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libproxy&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 0.5.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.5.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| librsvg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 2.61.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.61.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libsolv&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.7.35&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.7.36&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libstd-rs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.90.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.94.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libtasn1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 4.20.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 4.21.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libtest-fatal-perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 0.017&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 0.018&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libtirpc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.3.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libtraceevent&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.8.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 1.9.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libubootenv&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 0.3.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 0.3.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libunistring&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| liburcu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.15.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.15.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libuv&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.51.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.52.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libva&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 2.22.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.23.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libva-initial&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.22.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.23.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libva-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 2.22.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.23.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libx11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 1.8.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8.13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libx11-compose-data&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8=
.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 1.8.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxcomposite&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 0.4.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 0.4.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxcrypt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 4.4.38&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 4.5.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxcrypt-compat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 4.4.38&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 4.5.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxdamage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.1.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxext&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.3.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxinerama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.1.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.1.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxkbcommon&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.11.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 1.13.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxkbfile&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxml2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 2.14.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2.15.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxmu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 1.2.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.1&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxpm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 3.5.17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 3.5.18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxrandr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.5.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.5.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxslt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.1.43&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.1.45&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxvmc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.0.14&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.0.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| libxxf86vm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.1.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lighttpd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.4.81&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.4.82&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-firmware&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 20251111&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 20260410&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-libc-headers&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 6.17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 6.18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-yocto&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 6.12.69+git, 6.16.11+git&nbsp; | 6.18.24+git&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-yocto-dev&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 6.18+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 7.0+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-yocto-rt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 6.12.69+git, 6.16.11+git&nbsp; | 6.18.24+git&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| linux-yocto-tiny&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 6.12.69+git, 6.16.11+git&nbsp; | 6.18.24+git&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lld&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lldb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| llvm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| llvm-tblgen-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lsof&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.99.5&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.99.6&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ltp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 20250930&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 20260130&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lttng-modules&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.14.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.14.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lttng-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 2.14.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.14.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lua&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 5.4.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.5.0&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| lzlib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.16&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| m4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.20&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.4.21&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| m4-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.4.20&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 1.4.21&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| makedumpfile&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.7.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.7.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| man-pages&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 6.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 6.17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| mdadm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 4.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.6&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| mesa&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 25.2.8&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 26.0.5&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| mesa-gl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 25.2.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 26.0.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| meson&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.10.2&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| mpg123&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 1.33.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.33.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| msmtp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8.31&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8.32&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| mtd-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 2.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| musl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.2.5+git&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.2.6+git&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| nasm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.16.03&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.01&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ncurses&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 6.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 6.6&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| newlib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 4.5.0+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 4.6.0+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| nfs-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2.8.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 2.8.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| nghttp2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.66.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.68.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ninja&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.13.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.13.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ofono&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 2.18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.19&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| openmp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 21.1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| opensbi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.8.1&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| openssh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 10.2p1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 10.3p1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| opkg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.8.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.9.0&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| orc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.4.41&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.4.42&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ovmf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| edk2-stable202508&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| edk2-stable202511&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| p11-kit&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.25.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 0.26.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.40.2&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 5.42.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| perlcross&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 1.6.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.6.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| picolibc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 1.8.6+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.8.11+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| picolibc-helloworld&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8=
.6+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.8.1=
1+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| procps&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.6&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| pseudo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 1.9.3+git&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 1.9.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| puzzles&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 0.0+git (a7c7826bce5c=85)&nbsp; &nbsp;| 0.0+git =
(ecb576fb2a0a=85)&nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 3.13.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;| 3.14.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-attrs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 25.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 25.4.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-babel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.17.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.18.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-bcrypt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 4.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 5.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-beartype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 0.21.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 0.22.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-build&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 1.4.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-calver&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 2025.04.17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 2025.10.20&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br=
>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-certifi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 2025.8.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 2026.2.25&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-cffi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.17.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-chardet&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 5.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 6.0.0.post1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-click&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 8.2.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 8.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-cryptography&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 45.=
0.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | =
46.0.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-cryptography-vectors&nbsp; &nbsp; &nbsp;| 45.0.7&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 46.0.5&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-cython&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 3.1.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 3.2.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-dbusmock&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 0.37.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 0.38.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-docutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 0.22&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 0.22.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-dtschema&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 2025.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 2025.12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-hatchling&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 1.27.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.29.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-hypothesis&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 6.142.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 6.151.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-imagesize&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 1.4.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 2.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-iniconfig&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 2.1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 2.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-jsonschema&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 4.25.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 4.26.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-markdown&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 3.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 3.10.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-markupsafe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 3.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 3.0.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-maturin&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 1.9.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 1.12.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-meson-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.1=
8.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | =
0.19.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-numpy&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 2.3.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 2.4.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-packaging&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 25.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 26.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pathspec&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 0.12.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 1.0.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pbr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 7.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 7.0.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pdm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 2.25.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2.26.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pdm-backend&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.4=
.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 2.4.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pdm-build-locked&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.3.5&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.3.7=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pip&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 25.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 26.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-poetry-core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.1=
.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 2.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-psutil&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 7.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 7.2.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pyasn1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 0.6.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 0.6.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pycairo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 1.28.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 1.29.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pycparser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 2.22&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pygobject&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 3.52.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 3.56.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pyopenssl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 25.1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 26.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pyparsing&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 3.2.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 3.3.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pyproject-metadata&nbsp; &nbsp; &nbsp; &nbsp;| 0.9.1&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.11.0&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pytest&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 8.4.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 9.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pytest-subtests&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.14.2&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.15.0&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pytz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 2025.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 2026.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-pyyaml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 6.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 6.0.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-rdflib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 7.1.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 7.6.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-rpds-py&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 0.27.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 0.30.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-ruamel-yaml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.1=
8.15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| =
0.19.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-scons&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 4.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 4.10.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-setuptools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 80.9.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 82.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-setuptools-scm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 8.3.1&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| =
9.2.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-sphinx&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 8.2.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 9.1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-sphinx-rtd-theme&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.0.2&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.1.0=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-testtools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 2.7.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 2.8.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-trove-classifiers&nbsp; &nbsp; &nbsp; &nbsp; | 2025.9.11.17&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2026.1.14.14&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-unittest-automake-output | 0.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.4&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-uritools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 5.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 6.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-urllib3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 2.5.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 2.6.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-wcwidth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 0.2.13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 0.6.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-webcolors&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 24.11.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 25.10.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-websockets&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 15.0.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 16.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-wheel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 0.46.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 0.46.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-xmltodict&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 0.15.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 1.0.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| python3-yamllint&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 1.37.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 1.38.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| qemu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 10.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 10.2.0&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| qemu-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 10.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; | 10.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| qemu-system-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 10.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 10.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| quota&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 4.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.11&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| re2c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.4&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| repo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.58&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.61.1&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| resolvconf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 1.93&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 1.94&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rgb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.1.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.1&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rpm-sequoia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.9.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 1.10.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rpm-sequoia-crypto-policy&nbsp; &nbsp; &nbsp; &nbsp; | git (ae1df75b1155=
=85)&nbsp; &nbsp; &nbsp; &nbsp;| git (f3f5fa454345=85)&nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rt-tests&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 2.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.10&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ruby&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 3.4.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.2&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rust&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.90.0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.94.1&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| rust-cross-canadian&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.9=
0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | =
1.94.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| sbc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.2&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| scdoc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.11.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 1.11.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| seatd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 0.9.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 0.9.3&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| shaderc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 2025.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 2026.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| shadow&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 4.18.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 4.19.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| socat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.8.0.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.8.1.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| spirv-headers&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| spirv-llvm-translator&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 21.1.1&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 22.1.=
1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br=
>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| spirv-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| sqlite3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 3.48.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 3.51.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| squashfs-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 4.7.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 4.7.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| strace&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 6.16&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 6.19&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| stress-ng&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 0.19.04&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 0.20.01&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| swig&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.4.1&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| sysstat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 12.7.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 12.7.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 257.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 259.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemd-boot&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 257.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;| 259.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemd-boot-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 257=
.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;| 259.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemd-systemctl-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 257.8&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 259.5=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemtap&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 5.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| systemtap-native&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 5.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 5.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| taglib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 2.1.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2.2.1&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| tcl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 9.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 9.0.3&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| texinfo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 7.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 7.3&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| ttyrun&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 2.38.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2.41.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| u-boot&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 2025.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 2026.01&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| u-boot-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 2025.10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 2026.01&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| usbutils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 018&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 019&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| utfcpp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 4.0.9&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| util-linux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| 2.41.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 2.41.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| util-linux-libuuid&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
| 2.41.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; | 2.41.3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| valgrind&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 3.25.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 3.26.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vim&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 9.1.1683&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 9.2.0340&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vim-tiny&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 9.1.1683&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 9.2.0340&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| virglrenderer&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.1.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 1.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vte&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.82.1&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 0.82.2&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-headers&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-loader&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-samples&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| git (d27205d14d01=85)&nbsp; &nbsp; &nbsp; &nbsp;| git (fa2cf45a=
dde0=85)&nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-tools&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-utility-libraries&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.328.1&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.341.0&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-validation-layers&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.328.1&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.4.341.0&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| vulkan-volk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; | 1.4.328.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 1.4.341.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| wayland-protocols&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
| 1.45&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; | 1.47&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| wayland-utils&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; | 1.2.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 1.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| webkitgtk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2.50.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 2.50.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| weston&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;| 14.0.2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; | 15.0.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| wpebackend-fdo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;| 1.16.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 1.16.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| x264&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| r3039+git (31e19f92f00c=85) | r3039+gi=
t (0480cb05fa18=85) |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xauth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.1.4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.1.5&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xcb-util-cursor&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; | 0.1.5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;| 0.1.6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xeyes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; | 1.3.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.1&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xkbcomp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; | 1.4.7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.5.0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xkeyboard-config&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;| 2.45&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; | 2.47&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xorgproto&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; | 2024.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; | 2025.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xserver-xorg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;| 21.1.18&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;| 21.1.21&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xwayland&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;| 24.1.8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; | 24.1.9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| xz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.8.1&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 5.8.2&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+<br>
| zlib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| 1.3.2&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>
+----------------------------------+---------------------------+-----------=
----------------+</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
Contributors to 6.0<br>
-------------------<br>
<br>
Thanks to the following people who contributed to this release:<br>
<br>
-&nbsp; Adam Blank<br>
-&nbsp; Adam Duskett<br>
-&nbsp; Adarsh Jagadish Kamini<br>
-&nbsp; Aditya Kurdunkar<br>
-&nbsp; Adrian Freihofer<br>
-&nbsp; Ahmad Fatoum<br>
-&nbsp; Alejandro Hernandez Samaniego<br>
-&nbsp; Aleksandar Nikolic<br>
-&nbsp; Alexander Kanavin<br>
-&nbsp; Alexander Sverdlin<br>
-&nbsp; Alex Bradbury<br>
-&nbsp; Alex Kiernan<br>
-&nbsp; Amaury Couderc<br>
-&nbsp; Andrej Kozemcak<br>
-&nbsp; Anibal Limon<br>
-&nbsp; Ankur Tyagi<br>
-&nbsp; Antonin Godard<br>
-&nbsp; Ashish Kumar Mishra<br>
-&nbsp; Ashish Sharma<br>
-&nbsp; BELHADJ SALEM Talel<br>
-&nbsp; Benjamin Robin<br>
-&nbsp; Bruce Ashfield<br>
-&nbsp; Changqing Li<br>
-&nbsp; Chen Qi<br>
-&nbsp; Clement Faure<br>
-&nbsp; Colin Pinnell McAllister<br>
-&nbsp; Corentin Guillevic<br>
-&nbsp; Daiane Angolini<br>
-&nbsp; Daniel Dragomir<br>
-&nbsp; Daniel Turull<br>
-&nbsp; Dan McGregor<br>
-&nbsp; Deepesh Varatharajan<br>
-&nbsp; Dmitry Baryshkov<br>
-&nbsp; Dragomir, Daniel<br>
-&nbsp; El Mehdi YOUNES<br>
-&nbsp; Enrico J=F6rns<br>
-&nbsp; Ernst Persson<br>
-&nbsp; Etienne Cordonnier<br>
-&nbsp; Fabio Berton<br>
-&nbsp; Fabio Estevam<br>
-&nbsp; Favazza, Samuele<br>
-&nbsp; Florian Schmaus<br>
-&nbsp; Francesco Valla<br>
-&nbsp; Franz Schnyder<br>
-&nbsp; Germann, Bastian<br>
-&nbsp; Gu=F0ni M=E1r Gilbert<br>
-&nbsp; Gyorgy Sarvari<br>
-&nbsp; Haiqing Bai<br>
-&nbsp; Harish Sadineni<br>
-&nbsp; Hemanth Kumar M D<br>
-&nbsp; Het Patel<br>
-&nbsp; Hiago De Franco<br>
-&nbsp; Himanshu Jadon<br>
-&nbsp; hongxu<br>
-&nbsp; Hongxu Jia<br>
-&nbsp; Jaeyoon Jung<br>
-&nbsp; Jan Luebbe<br>
-&nbsp; Jan Vermaete<br>
-&nbsp; Jason Schonberg<br>
-&nbsp; Javier Tia<br>
-&nbsp; Jiaying Song<br>
-&nbsp; Jinfeng Wang<br>
-&nbsp; Jo=E3o Marcos Costa<br>
-&nbsp; J=F6rg Sommer<br>
-&nbsp; Jose Quaresma<br>
-&nbsp; Joshua Watt<br>
-&nbsp; Kai Kang<br>
-&nbsp; Kamel Bouhara<br>
-&nbsp; Kavinaya S<br>
-&nbsp; Ken Kurematsu<br>
-&nbsp; Khai Dang<br>
-&nbsp; Khalifa Rouis<br>
-&nbsp; Khem Raj<br>
-&nbsp; Koen Kooi<br>
-&nbsp; Kory Maincent<br>
-&nbsp; Kristiyan Chakarov<br>
-&nbsp; Krupal Ka Patel<br>
-&nbsp; Lee Chee Yang<br>
-&nbsp; Leon Anavi<br>
-&nbsp; Le Qi<br>
-&nbsp; Liu Yiding<br>
-&nbsp; Livin Sunny<br>
-&nbsp; Liyin Zhang<br>
-&nbsp; Logan Gallois<br>
-&nbsp; Louis Rannou<br>
-&nbsp; Lucas Stach<br>
-&nbsp; Luka Krstic<br>
-&nbsp; Mahesh Angadi<br>
-&nbsp; Mark Hatle<br>
-&nbsp; Mark-Pk Tsai<br>
-&nbsp; Markus Volk<br>
-&nbsp; mark.yang<br>
-&nbsp; Martin Jansa<br>
-&nbsp; Martin Schwan<br>
-&nbsp; Mathieu Dubois-Briand<br>
-&nbsp; Matt Madison<br>
-&nbsp; Maxin B. John<br>
-&nbsp; Maxin John<br>
-&nbsp; Max Krummenacher<br>
-&nbsp; Miaoqing Pan<br>
-&nbsp; Michael Arndt<br>
-&nbsp; Michael Halstead<br>
-&nbsp; Michael Opdenacker<br>
-&nbsp; Michal Sieron<br>
-&nbsp; Mikko Rapeli<br>
-&nbsp; Ming Liu<br>
-&nbsp; Mingli Yu<br>
-&nbsp; Miroslav Cernak<br>
-&nbsp; Mohammad Rafi Shaik<br>
-&nbsp; Mohammad Rahimi<br>
-&nbsp; Moritz Haase<br>
-&nbsp; Naftaly RALAMBOARIVONY<br>
-&nbsp; Naman Jain<br>
-&nbsp; Nikhil R<br>
-&nbsp; Niko Mauno<br>
-&nbsp; Nora Schiffer<br>
-&nbsp; Osama Abdelkader<br>
-&nbsp; Patrick Vogelaar<br>
-&nbsp; Patrick Wicki<br>
-&nbsp; Paul Barker<br>
-&nbsp; Pavel L=F6bl<br>
-&nbsp; Peter Bergin<br>
-&nbsp; Peter de Ridder<br>
-&nbsp; Peter Kjellerstedt<br>
-&nbsp; Peter Marko<br>
-&nbsp; Peter Tatrai<br>
-&nbsp; Philip Lorenz<br>
-&nbsp; Pierre-Loup GOSSE<br>
-&nbsp; Piotr Buli&#324;ski<br>
-&nbsp; Pratik Farkase<br>
-&nbsp; Quentin Schulz<br>
-&nbsp; Randolph Sapp<br>
-&nbsp; Randy MacLeod<br>
-&nbsp; Ricardo Salveti<br>
-&nbsp; Ricardo Simoes<br>
-&nbsp; Ricardo Ungerer<br>
-&nbsp; Richard Purdie<br>
-&nbsp; Robert Joslyn<br>
-&nbsp; Robert P. J. Day<br>
-&nbsp; Robert Yang<br>
-&nbsp; Rob Woolley<br>
-&nbsp; Ross Burton<br>
-&nbsp; Rouven Rastetter<br>
-&nbsp; Ryan Eatmon<br>
-&nbsp; Sam Povilus<br>
-&nbsp; Samuli Piippo<br>
-&nbsp; Sandeep Gundlupet Raju<br>
-&nbsp; Scott Murray<br>
-&nbsp; Shaik Moin<br>
-&nbsp; Shotaro Uchida<br>
-&nbsp; Stefano Babic<br>
-&nbsp; Stefano Tondo<br>
-&nbsp; Sunil Dora<br>
-&nbsp; sven.kalmbach<br>
-&nbsp; Swami<br>
-&nbsp; Telukula Jeevan Kumar Sahu<br>
-&nbsp; Theo GAIGE<br>
-&nbsp; Thomas Perrot<br>
-&nbsp; Tim Orling<br>
-&nbsp; Tom Geelen<br>
-&nbsp; Trevor Gamblin<br>
-&nbsp; Trevor Woerner<br>
-&nbsp; Ulrich =D6lmann<br>
-&nbsp; Uwe Kleine-K=F6nig<br>
-&nbsp; Veeresh Kadasani<br>
-&nbsp; Victor Kamensky<br>
-&nbsp; Vijay Anusuri<br>
-&nbsp; Viswanath Kraleti<br>
-&nbsp; Vivek Puar<br>
-&nbsp; Vyacheslav Yurkov<br>
-&nbsp; Wang Mingyu<br>
-&nbsp; Weisser, Pascal<br>
-&nbsp; Xiangyu Chen<br>
-&nbsp; Yanis BINARD<br>
-&nbsp; Yann Dirson<br>
-&nbsp; Yannic Moog<br>
-&nbsp; Yash Gupta<br>
-&nbsp; Yash Shinde<br>
-&nbsp; Yasir Al-Latifi<br>
-&nbsp; Yiding Liu<br>
-&nbsp; Yi Zhao<br>
-&nbsp; Yoann Congal<br>
-&nbsp; Yongxin Liu<br>
-&nbsp; Zhangfei Gao<br>
-&nbsp; Zhang Peng<br>
-&nbsp; Zk47T<br>
-&nbsp; Zolt=E1n B=F6sz=F6rm=E9nyi<br>
<br>
<br>
Repositories / Downloads for 6.0<br>
--------------------------------<br>
<br>
Repository Name: yocto-docs<br>
Repository Location: https://git.yoctoproject.org/yocto-docs<br>
Branch: wrynose<br>
Tag: yocto-6.0<br>
Git Revision: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63<br>
Release Artefact: yocto-docs-eb74fdfd9e5e579a65e8872d1a73b51e77b14f63<br>
sha: 50d7391b4b4d169649a5628a8f367443eb03fb78faa813b9c20d5214e49ce782<br>
Download Locations:<br>
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/yocto-docs-eb74=
fdfd9e5e579a65e8872d1a73b51e77b14f63.tar.bz2<br>
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/yocto-docs-eb74fdfd9e=
5e579a65e8872d1a73b51e77b14f63.tar.bz2<br>
<br>
Repository Name: openembedded-core<br>
Repository Location: https://git.openembedded.org/openembedded-core<br>
Branch: wrynose<br>
Tag: yocto-6.0<br>
Git Revision: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c<br>
Release Artefact: oecore-42fa856a00ac16b2a7a83d7ecfa60a5be192b16c<br>
sha: 14abd19071d1b31737f5d3946182f21825e0a7121468054bbaa68f207b018fb6<br>
Download Locations:<br>
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/oecore-42fa856a=
00ac16b2a7a83d7ecfa60a5be192b16c.tar.bz2<br>
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/oecore-42fa856a00ac16=
b2a7a83d7ecfa60a5be192b16c.tar.bz2<br>
<br>
Repository Name: meta-yocto<br>
Repository Location: https://git.yoctoproject.org/meta-yocto<br>
Branch: wrynose<br>
Tag: yocto-6.0<br>
Git Revision: 904846ae078ee20de073040ebb77c86e19250f56<br>
Release Artefact: meta-yocto-904846ae078ee20de073040ebb77c86e19250f56<br>
sha: d3470939772339d2d70a2bbdd4e01563357c376fdb496d5515a1f96bce4e2ea2<br>
Download Locations:<br>
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/meta-yocto-9048=
46ae078ee20de073040ebb77c86e19250f56.tar.bz2<br>
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/meta-yocto-904846ae07=
8ee20de073040ebb77c86e19250f56.tar.bz2<br>
<br>
Repository Name: meta-mingw<br>
Repository Location: https://git.yoctoproject.org/meta-mingw<br>
Branch: wrynose<br>
Tag: yocto-6.0<br>
Git Revision: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315<br>
Release Artefact: meta-mingw-a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315<br>
sha: cea731150cd3caedd90ca6a82bf050a00c3705cea166d24a6077d07b1b7b2404<br>
Download Locations:<br>
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/meta-mingw-a4ba=
674d6a0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2<br>
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/meta-mingw-a4ba674d6a=
0a17e4c0bc4c11bbb9d0ea9de2b315.tar.bz2<br>
<br>
Repository Name: bitbake<br>
Repository Location: https://git.openembedded.org/bitbake<br>
Branch: 2.18<br>
Tag: yocto-6.0<br>
Git Revision: 33581c84f3a85008239acbd940501a35de48dc91<br>
Release Artefact: bitbake-33581c84f3a85008239acbd940501a35de48dc91<br>
sha: 8a0b0243b50b6e004f3350824628f69ee66be0d3a28bc25f3d96b35406015ba7<br>
Download Locations:<br>
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0/bitbake-33581c8=
4f3a85008239acbd940501a35de48dc91.tar.bz2<br>
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0/bitbake-33581c84f3a85=
008239acbd940501a35de48dc91.tar.bz2<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-colo=
r: var(--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D=
"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, &quot;Aptos_Embe=
ddedFont&quot;, &quot;Aptos_MSFontService&quot;, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-color: var(=
--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, &quot;Aptos_Embe=
ddedFont&quot;, &quot;Aptos_MSFontService&quot;, Calibri, Helvetica, sans-s=
erif; font-size: 12pt; color: rgb(0, 0, 0); --darkreader-inline-color: var(=
--darkreader-text-000000, #e8e6e3);" data-darkreader-inline-color=3D"">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB87972EEF33C603DFE901BE00B9062BL4PR11MB8797namp_--

