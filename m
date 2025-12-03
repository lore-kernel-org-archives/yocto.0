Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30028D12699
	for <webhook@archiver.kernel.org>; Wed,  3 Dec 2025 10:18:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11845.1764757087493704158
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Dec 2025 02:18:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=FGARPsD3;
 spf=pass (domain: intel.com, ip: 192.198.163.7, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764757087; x=1796293087;
  h=from:to:subject:date:message-id:mime-version;
  bh=sue86NOBHEVgvUIaxGbItTbREDv/REEE+b2Fd3jlP2w=;
  b=FGARPsD3Gb/mvzlZvCRwISql60wWOAc6HJhZy1h7DfDxUDjISEwWPtyp
   S1tEAsRHXte3hna5n/iSz6sv1/knC2v2j0tKlmFMuiXbDwUBlcksD9hW/
   zeXrciTgCD83d/nvMdpDByZ22r7LqcC/5LDehyMi+PYjncSEy4gAjgEo2
   dii5NI1iuajym/u+1nxVFwZBR5isNriqveiPEUFpPLQNcp3iZZOYUWZag
   hbAbUIEvxBh74WHeewe/STCeYU0xR7Ik1P8WupiCNaZbGhY39LV0K7Z7N
   n6I9o8K60CcuBz6munxC1Rx12kA7DygOYMatficEW70dt5ou5aB6y6n/6
   g==;
X-CSE-ConnectionGUID: ToYEAi8aSWqYbzA3hw1ikA==
X-CSE-MsgGUID: 9P7YmP8jSOyPwpGuPlPCSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="92224848"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; 
   d="scan'208,217";a="92224848"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Dec 2025 02:18:07 -0800
X-CSE-ConnectionGUID: g+b2loGuS6CF652k6g59bg==
X-CSE-MsgGUID: bbdJhqELTFKf9mkqcgYQFA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Dec 2025 02:18:07 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 02:18:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 02:18:06 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 02:18:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKIpYu93pkZfa2pf+2WfrWoHcpY9FIDMbdRjqzLwKlkHdGdA2dIkKFQQYzO+CRzLYHKnhqFqlQsqVQRZ1870RUCGXlOlNhQ9d6sda3XqbKSL4uvlIV9SRUtSxw1o8yS9G48U+SV2fBPLNmTRh2z2pkyJ2xkW+8wThB89pGamMbN+u7lqKoAbtl6X/OhJ66BEYih6DAoMX7MuQea/mLhxT7jntH0QeYt1nU9tmnlK09MJAN14q7Ql6DqbyqnHL35GW3f6+gUGRTt66eu0qNJbYOVuKfNRP2GlzbuRcpdRSCC7mQeiap7mNZQFjrSd7FZ3wxt3sIpxh4P2XYf5oqU6zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sue86NOBHEVgvUIaxGbItTbREDv/REEE+b2Fd3jlP2w=;
 b=hp6jw5QHK8861hWqgzC/CfeP0iXDU2K5HXDQh93VeF5FNhsakKT1sjSdQvzI/b0uySjtrZonlLE70ebWA2Lgiz1WYygDWLTPaJlBWZIMtNOJVMrG+l8DsjcyWn2j7zrF95k+CMVtT5i0u0frw2npRen+9hQw7qYQxVreh4C4iVan9E1Pq60YS6808EQEODkOYuUbIr4hbOtHjHrkUFIWXDFFHdCFlYPMkuLQYFuOsAnACIROh7obDy48yy7cZ1wvCX2filkFiV5rN9FlYIZGsYe9XgKDzrc6zcktoygYEBNHHM8s3RIU+DIRIxf0rws5hUk30QfJEsT67ahL4CnGSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.10; Wed, 3 Dec 2025 10:18:04 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 10:18:04 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT]  Yocto Project 5.0.14 (scarthgap-5.0.14) is Released
Thread-Topic: [ANNOUNCEMENT]  Yocto Project 5.0.14 (scarthgap-5.0.14) is
 Released
Thread-Index: AQHcZDxgMHFFjdBNDk+1GCBE300gyw==
Date: Wed, 3 Dec 2025 10:18:04 +0000
Message-ID: <BL4PR11MB87974A8A80B067FBF0B8163DB9D9A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS7PR11MB7808:EE_
x-ms-office365-filtering-correlation-id: 1c38897d-c82d-4c2b-91fa-08de32553ee1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?LpcfHNlQq2IqBiryrFKrxq+HZ9rkPrNLYRRJS7zuiQTb0G382VJcIW2V6n?=
 =?iso-8859-1?Q?k389SJFG6QAJO6R6+9hcKVi0WcsCh0y7htzEnGWVkRlha6Y/THVyIfkJRo?=
 =?iso-8859-1?Q?kg4j5eNoUeYoCS6yvxY+qtVarCoDmyV/AicOqDXi2//RCZl99cVOCjlJK6?=
 =?iso-8859-1?Q?F6MPCN4y7X7kfQuo7k91bWFHaCQaKZAlz6TotHVF+PBw1hWrtMKlOa6bGV?=
 =?iso-8859-1?Q?Gfxkynporu65+7hbiue5ggWasLrdGbWndZ+iDVEtNpxQARiCktCavbDD+x?=
 =?iso-8859-1?Q?cd7ZsO9VSdYPbHUiZmXXIe0j32bcvaQ2wlxRBdaDDaXnApZH5wKOs9aLiF?=
 =?iso-8859-1?Q?swXL8ZuZ/eB5Ljo3fNZWOXKhSKBIwo5I7yDB0DnU7GZ/0CngLXfMsfy+HD?=
 =?iso-8859-1?Q?Nr1SAqgWd9k/sMG5ulGAeenRarbdTvhcIZ67p6tL3qdmU4Xx80eYdrtNIJ?=
 =?iso-8859-1?Q?vHeodGhcEC6UW1kpEx20ZkmClSSdNIm+fBO57KRgFJ1bFoigA2HrXa82ym?=
 =?iso-8859-1?Q?vugQB1Jzlfn/pWmqY/SdAS4ADzd1HRxPu81LQLbaVwchi+etKLiozOSsV8?=
 =?iso-8859-1?Q?kZHgGLfxc7oRQi3i44CnGooJzCb/Rtw+cGxCl99v1Tj27t1Q62l1MVAkuM?=
 =?iso-8859-1?Q?gGKMBlfoytfAN0OAq4m7TsDzL9k+G6LnHYxdGkf3pIF7tN9x3pyxELWW1w?=
 =?iso-8859-1?Q?8hJTS9DFTeqebUxkXigf9heH8kLNatr/qz/XKSV+WYoK5Cv4s5LB97Zq5U?=
 =?iso-8859-1?Q?eX6JT3UeZuQEThQZE8RSzPx8f0Q1Z0tsU1XvI6/vBN8Gvp1yQE1ZpgjmJx?=
 =?iso-8859-1?Q?tDfUIBrzNJkbiK+krCAwh24u0Wtg/i9hsDeUakTrnliqmGbm9e0PyiYUht?=
 =?iso-8859-1?Q?eSrS5ZDcAyydPUbZx4SiU7/VYWisIW4ppnZpqUL/ElLh5/aEH7MP4tmfwt?=
 =?iso-8859-1?Q?2Kds6Rbmjf7igVuw6P+kLn785H3tF7LLa2jZbTbhSTDsRWyvRZRXEjoGhS?=
 =?iso-8859-1?Q?P8x9Xs2KOk6AKznSiskkKAYYWK2rYPvgxoP6R8Yw6Yydqx2dWpXZ9cxVZh?=
 =?iso-8859-1?Q?PV06s8JL46w+By8LWmP6Ok6g3m5PFL8Tsu8sldD9TNAxFaOHOapEoKbqNY?=
 =?iso-8859-1?Q?saE6Cpq4PorRhowBx857b0PYdwd1W7pUAEGC5tnMrrpZd+lcSjNTyZcdIn?=
 =?iso-8859-1?Q?lWXGeCgLx3ezyz3UuP1Fv9obGuKY/tC4v11pNF+M4ISEPaltzwl0vUmYzx?=
 =?iso-8859-1?Q?Vw43DiAad/yA2zUU1ApMOazlwG8RlSYE5a3XPpheFSO76e/Ow0/6MNcHbO?=
 =?iso-8859-1?Q?ZCC+7tT7BL5IPfvEU9MOgD1JmlIhH/cBPbxivOON/aBM2nni+TE+Q7+Smv?=
 =?iso-8859-1?Q?y6X+Ox6rS0yq6w5iJmt2wFLbdvihcl7GF2dodFZRovQLXt9DR6/3GnnbNb?=
 =?iso-8859-1?Q?NLDNpLX5sjcMYnMEoDME9PkS4qcsH1d+7fRGHJVPmlbp2dtk+M4+xpPM2D?=
 =?iso-8859-1?Q?APn/2m0e152BNDONqIDdWgyO/Kvxna1xOINXZUqKlmANkSOMWqZT8zODb4?=
 =?iso-8859-1?Q?lZmNbKhHfMBufwgMtwlM3XJ92WBu?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1Ie7+U+6yni77B1Gi25sZE+ppjyqYQ2M7WGhI4PAvyrA+OxLjy0Z9mw9Cj?=
 =?iso-8859-1?Q?3IGQwQyIW59c0GyJzy/bQb5sys3WxFTGWVQjgUVwfwKp8xVVnjsuAAOHPC?=
 =?iso-8859-1?Q?oiAulHHezzlhIDBsi7SPNj8shDr3cXu9M2PF8esCZbs3Cff7Xd8m9saqVw?=
 =?iso-8859-1?Q?gWt/QdvbT4iVJOWwQGKmSL6Ws4Ibqn6rc5DKTVkyy1nMUjp8q11w/zTPyB?=
 =?iso-8859-1?Q?G8J3O4XSO0cYAukl4QdI2I4aEcsIXxMOf9g1V0SoM2rADISS5yOoa2kvnf?=
 =?iso-8859-1?Q?sNLoguvHG5eleHe07fLaJniYvtIDrDZ/uE77DgcBHYDLtggAOHffI48f8C?=
 =?iso-8859-1?Q?hR6x9XD+2LhPOLk4i5lHonGL1x4r7r+ZYsrFQKxqEG7ON0H0YBIKJAkBCI?=
 =?iso-8859-1?Q?Tay4NEl9ahVCPorxcbK2GWtuzYugCljH2Stxl6q6vtvC3zalYIHg4yp5Vt?=
 =?iso-8859-1?Q?DpmfeSJ6Eq1AxC+QwdF7R822wl/iewA3cVRjhjMbsMlGkslyzzJ08nOtif?=
 =?iso-8859-1?Q?JUJDoOm02tlEVs/1uYVivlmJjOClDttsqpr/Gygp6HeU4IWTNBOyt6bjtZ?=
 =?iso-8859-1?Q?ITyehz52Jra5RvPR+iReRLG+g+pI0BnNstypFZQutesIk4ORruv/qNQhij?=
 =?iso-8859-1?Q?Lzdc2BWDxO5g9mXyWzs9kg0SSI3Cjk4CIkD/XbE1sUrUll2UyqXiDKYzgQ?=
 =?iso-8859-1?Q?3chB0yYOgvGpyae2b9BHGqBHLs7QAxpnwhTQkT663JB+5E1zUv2Y/MiXfW?=
 =?iso-8859-1?Q?p6FhiT/y52R6vU66fKkdjDdbBUrr5PmJGagaK/2DUr5g+pz2v43+nuVHIq?=
 =?iso-8859-1?Q?qoBYYH4R+K424PVSuX3yX999WDMDejdCeSElsSqGWT0TTfiPGDRUzvDjyB?=
 =?iso-8859-1?Q?Zuq7eEU7iZjnQgvLbHrVGLQVobkWmNXp7KEoVwJKmcBf7rZEHh/TxsZsQJ?=
 =?iso-8859-1?Q?rDFHkNfqm/Bgc1LyKjC1PYbTojmWdZZF6A31zlfkPe+Vt9map50qIOZ5Xj?=
 =?iso-8859-1?Q?E1pzRuEukEts08/yIZUnpSQUnum8AsHHnbVpBH7pYAlGbd03LsgEXRqnLH?=
 =?iso-8859-1?Q?eLlPhQ5JuSmP9XxWRo5uNY1mmIJ4brwACV3p81lx9PAJJ5f3LWWw2b2vMb?=
 =?iso-8859-1?Q?Ir+HP4v84KpVRDZ6YhPIEPVbHXFXsZOweFYwUUNlcVZhNLlDkzAsBnNBbG?=
 =?iso-8859-1?Q?VQcMj+sRc8n6+12XQ60sjsAuc/xxwS+78palLz7XmA0uH0Ht6Lmcb/Nuu/?=
 =?iso-8859-1?Q?zMkg7GxYn7EROR29Mg9m0P+G0opZx3Yu0iygmPTBANcSA/tjbqx8v1ngDz?=
 =?iso-8859-1?Q?BTamZrLaMDu7aoFbxUQylX7OPgW8QSBraKE+J/ufEBlSGkeojLsyqEm49g?=
 =?iso-8859-1?Q?RTa2oXNdJus8TMfUwpYszwKeEcbJ1LD2uid8zrSuI3Bc5pjyFC58PSpAGc?=
 =?iso-8859-1?Q?Uc3bCpMKxDRw7adn9EL3vf6BmbZ6CAKuIiFtjpFb+wyrzdXFs3xvxlNorl?=
 =?iso-8859-1?Q?FUr7pRyIibTwbfBHexHxROxHOPuIH4Ql6TIghNHHNhubfX9iD8HW7l+DJC?=
 =?iso-8859-1?Q?9qMIBcGO4JWSVuDEOTJO3E5rYCkirAs6Ca+ZgbVlqOeX3ZZO2r746OjOG5?=
 =?iso-8859-1?Q?WHQekz4HZtWuy1zaQHrU+116iBLGKVMLa7?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87974A8A80B067FBF0B8163DB9D9ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c38897d-c82d-4c2b-91fa-08de32553ee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2025 10:18:04.1453
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DsRrJfQdXlCo5SvPq/B7XxuCGxc2/DNF4HvVMT0yZV+jAbGqZ3FqClfi9fkrvoVvWWM+Q63mi5t0A8gvvQyMAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Dec 2025 10:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66087

--_000_BL4PR11MB87974A8A80B067FBF0B8163DB9D9ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.14 Release is now availabl=
e for download.

Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/poky-7e86749=
96b0164b07e56bc066d0fba790e627061.tar.bz2
Https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/poky-7e8674996b0164b07e=
56bc066d0fba790e627061.tar.bz2

A gpg signed version of these release notes is available at:

Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/RELEASENOTES

Full Test Report:

Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release



--------------------------
yocto-5.0.14 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.14
Git Revision: a8687e4bb2e822670b6ad110613a12fa02943d3d
Release Artefact: yocto-docs-a8687e4bb2e822670b6ad110613a12fa02943d3d
sha: 72a51b6049a59f773720d9b0aa94f090222a41aeb22d65c5f4211c78418fb6fa
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/yocto-docs-a=
8687e4bb2e822670b6ad110613a12fa02943d3d.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/yocto-docs-a8687e4bb2e8=
22670b6ad110613a12fa02943d3d.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.14
Git Revision: 7e8674996b0164b07e56bc066d0fba790e627061
Release Artefact: poky-7e8674996b0164b07e56bc066d0fba790e627061
sha: 071e189ebccfad99d4d79ea9021475296fa642611828249f0963b019f842a021
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/poky-7e86749=
96b0164b07e56bc066d0fba790e627061.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/poky-7e8674996b0164b07e=
56bc066d0fba790e627061.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.14
Git Revision: 471adaa5f77fa3b974eab60a2ded48e360042828
Release Artefact: oecore-471adaa5f77fa3b974eab60a2ded48e360042828
sha: 4dfad047a68aea2293845cdb4a86911bb3b1b0444a63f51b4e5a2448018d6a5e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/oecore-471ad=
aa5f77fa3b974eab60a2ded48e360042828.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/oecore-471adaa5f77fa3b9=
74eab60a2ded48e360042828.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.14
Git Revision: bf6aea52c4009e08f26565c33ce432eec7cfb090
Release Artefact: meta-yocto-bf6aea52c4009e08f26565c33ce432eec7cfb090
sha: 92c9da1027efaf945d80bcd44984d5f8e7606c7ded485b57c0c8f47c9fa1302d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/meta-yocto-b=
f6aea52c4009e08f26565c33ce432eec7cfb090.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/meta-yocto-bf6aea52c400=
9e08f26565c33ce432eec7cfb090.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.14
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.14
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/bitbake-8dcf084522b9c66=
a6639b5f117f554fde9b6b45a.tar.bz2


---------------
 Contributors
---------------
Alexander Kanavin
Anders Heimer
Ankur Tyagi
Antonin Godard
Archana Polampalli
Bastian Krause
Bin Lan
Bruce Ashfield
Carlos Alberto Lopez Perez
Daniel Semkowicz
David Nystr=F6m
Deepesh Varatharajan
Gyorgy Sarvari
Hongxu Jia
Joshua Watt
Jo=E3o Marcos Costa
Kamel Bouhara (Schneider Electric)
Lee Chee Yang
Martin Jansa
Matthias Schiffer
Michael Haener
Paul Barker
Peter Marko
Philippe-Alexandre Mathieu
Praveen Kumar
Rajeshkumar Ramasamy
Rasmus Villemoes
Richard Purdie
Robert P. J. Day
Saravanan
Soumya Sambu
Steve Sakoman
Theodore A. Roth
Wang Mingyu
Yannic Moog
Yash Shinde
Yogita Urade

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
bind: Fix CVE-2025-8677 CVE-2025-40778 CVE-2025-40780
binutils: Fix CVE-2025-8225 CVE-2025-11081 CVE-2025-11082 CVE-2025-11083 CV=
E-2025-11412 CVE-2025-11413 CVE-2025-11414
cmake: fix CVE-2025-9301
curl: Ignore CVE-2025-10966
elfutils: Fix CVE-2025-1376 CVE-2025-1377
expat: Fix CVE-2025-59375
glib-networking: Fix CVE-2025-60018 CVE-2025-60019
gnupg: Ignore CVE-2025-30258
go: Fix CVE-2025-47912 CVE-2025-58185 CVE-2025-58187 CVE-2025-58188 CVE-202=
5-58189 CVE-2025-61723 CVE-2025-61724
libpam: Ignore CVE-2025-6018
lz4: Fix CVE-2025-62813
openssh: Fix CVE-2025-61984 CVE-2025-61985
python3: Fix CVE-2025-59375
python3-xmltodict: Fix CVE-2025-9375
qemu: Fix CVE-2024-8354
tiff: Ignore CVE-2025-8961
u-boot: Fix CVE-2024-42040
wpa-supplicant: Fix CVE-2025-24912


---------------
Fixes
---------------
bind: upgrade to 9.18.41
bitbake: bb/fetch2/__init__.py: remove a DeprecationWarning in uri_replace(=
)
bitbake: fetch2/wget: Keep query parameters in URL during checkstatus
build-appliance-image: Update to scarthgap head revision
ca-certificates: Add comment for provenance of SRCREV
ca-certificates: fix on-target postinstall script
ca-certificates: get sources from debian tarballs
ca-certificates: submit sysroot patch upstream, drop default-sysroot.patch
ca-certificates: upgrade to 20250419
classes/create-spdx-2.2: align DEPLOY_DIR_SPDX with SPDX_VERSION layout
classes/create-spdx-2.2: Handle empty packages
classes-global/license: Move functions to library code
classes-global/staging: Exclude do_create_spdx from automatic sysroot exten=
sion
classes-recipe/baremetal-image: Add image file manifest
classes-recipe/image: Add image file manifest
curl: only set CA bundle in target build
dev-manual, test-manual: Update autobuilder output links
flex: fix build with gcc-15 on host
glibc: stable 2.39 branch updates
gstreamer1.0-plugins-bad: fix buffer allocation fail for v4l2codecs
icu: Backport patch to fix build issues with long paths (>512 chars)
iptables: remove /etc/ethertypes
lib/license: Move package license skip to library
lib: oe: license: Add missing import
lib: oeqa: spdx: Add tests for extra options
linux-yocto/6.6: update to v6.6.111
meta: backport SPDX 3.0 fixes and tasks from upstream version Walnascar
migration-guides: add release notes for 4.0.30
oe-build-perf-report: relax metadata matching rules
oe-core: Remove empty file
oeqa/runtime/ping: don't bother trying to ping localhost
oeqa/selftest: Add SPDX 3.0 include source case for work-share
oeqa/selftest/devtool: Update after upstream repo changes
oeqa: spdx: Add tar test for SPDX 2.2
overview-manual/yp-intro.rst: update on-target packaging info
perf: add arm64 source files for unistd_64.h
poky.conf: bump version for 5.0.14
python3: upgrade to 3.12.12
ref-manual/classes.rst: document the relative_symlinks class
ref-manual/classes.rst: extend the uninative class documentation
ref-manual/classes.rst: gettext: extend the documentation of the class
ref-manual/variables.rst: document CCACHE_DISABLE CHECKSUM UNINATIVE_URL RE=
QUIRED_COMBINED_FEATURES REQUIRED_IMAGE_FEATURES REQUIRED_MACHINE_FEATURES =
USE_NLS variable
ref-manual/variables.rst: fix LAYERDEPENDS description
selftest: spdx: Add SPDX 3.0 test cases
selftest/spdx: Fix for SPDX_VERSION addition
spdx 3.0: Rework how SPDX aliases are linked
spdx30_tasks: adapt CVE handling to new cve-check API
spdx30_tasks: fix FetchData attribute in add_download_files
util-linux: fix pointer usage in hwclock param handling
vulnerabilities: update nvdcve file name
webkitgtk: upgrade to 2.44.4
wireless-regdb: upgrade to 2025.10.07
xf86-video-intel: correct SRC_URI as freedesktop anongit is down



--_000_BL4PR11MB87974A8A80B067FBF0B8163DB9D9ABL4PR11MB8797namp_
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
Hi<br>
<br>
We are pleased to announce the Yocto Project 5.0.14 Release is now availabl=
e for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWA223d508a-2c0f-908b-ac10-6cfb95e834cd" hre=
f=3D"Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/poky-7e=
8674996b0164b07e56bc066d0fba790e627061.tar.bz2">Https://downloads.yoctoproj=
ect.org/releases/yocto/yocto-5.0.14/poky-7e8674996b0164b07e56bc066d0fba790e=
627061.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWAfad767c5-0cec-d8b9-0f8d-14df3654957d" hre=
f=3D"Https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/poky-7e8674996b016=
4b07e56bc066d0fba790e627061.tar.bz2">Https://mirrors.kernel.org/yocto/yocto=
/yocto-5.0.14/poky-7e8674996b0164b07e56bc066d0fba790e627061.tar.bz2</a>&nbs=
p;</div>
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
<a class=3D"OWAAutoLink" id=3D"OWA1373a827-43e0-318c-b675-74686c1ab296" hre=
f=3D"Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/RELEASE=
NOTES">Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/RELEA=
SENOTES</a>&nbsp;</div>
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
<a class=3D"OWAAutoLink" id=3D"OWAc42ac215-baf7-74d9-c7f5-941a3d5a80a9" hre=
f=3D"Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/testrep=
ort.txt">Https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/tes=
treport.txt</a>&nbsp;</div>
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
Yocto Project Build and Release<br>
<br>
</div>
<pre class=3D"elementToProof"><div style=3D"text-align: left; text-indent: =
0px; white-space: pre-wrap; font-family: Aptos, Aptos_EmbeddedFont, Aptos_M=
SFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0=
, 0, 0);" class=3D"elementToProof">=0A=
--------------------------=0A=
yocto-5.0.14 Release Notes=0A=
--------------------------=0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: scarthgap=0A=
Tag: yocto-5.0.14=0A=
Git Revision: a8687e4bb2e822670b6ad110613a12fa02943d3d=0A=
Release Artefact: yocto-docs-a8687e4bb2e822670b6ad110613a12fa02943d3d=0A=
sha: 72a51b6049a59f773720d9b0aa94f090222a41aeb22d65c5f4211c78418fb6fa=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/yocto-docs-a=
8687e4bb2e822670b6ad110613a12fa02943d3d.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/yocto-docs-a8687e4bb2e8=
22670b6ad110613a12fa02943d3d.tar.bz2=0A=
=0A=
Repository Name: poky=0A=
Repository Location: https://git.yoctoproject.org/poky=0A=
Branch: scarthgap=0A=
Tag: yocto-5.0.14=0A=
Git Revision: 7e8674996b0164b07e56bc066d0fba790e627061=0A=
Release Artefact: poky-7e8674996b0164b07e56bc066d0fba790e627061=0A=
sha: 071e189ebccfad99d4d79ea9021475296fa642611828249f0963b019f842a021=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/poky-7e86749=
96b0164b07e56bc066d0fba790e627061.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/poky-7e8674996b0164b07e=
56bc066d0fba790e627061.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: scarthgap=0A=
Tag: yocto-5.0.14=0A=
Git Revision: 471adaa5f77fa3b974eab60a2ded48e360042828=0A=
Release Artefact: oecore-471adaa5f77fa3b974eab60a2ded48e360042828=0A=
sha: 4dfad047a68aea2293845cdb4a86911bb3b1b0444a63f51b4e5a2448018d6a5e=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/oecore-471ad=
aa5f77fa3b974eab60a2ded48e360042828.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/oecore-471adaa5f77fa3b9=
74eab60a2ded48e360042828.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: scarthgap=0A=
Tag: yocto-5.0.14=0A=
Git Revision: bf6aea52c4009e08f26565c33ce432eec7cfb090=0A=
Release Artefact: meta-yocto-bf6aea52c4009e08f26565c33ce432eec7cfb090=0A=
sha: 92c9da1027efaf945d80bcd44984d5f8e7606c7ded485b57c0c8f47c9fa1302d=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/meta-yocto-b=
f6aea52c4009e08f26565c33ce432eec7cfb090.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/meta-yocto-bf6aea52c400=
9e08f26565c33ce432eec7cfb090.tar.bz2=0A=
=0A=
Repository Name: meta-mingw=0A=
Repository Location: https://git.yoctoproject.org/meta-mingw=0A=
Branch: scarthgap=0A=
Tag: yocto-5.0.14=0A=
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f=0A=
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f=0A=
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.8=0A=
Tag: yocto-5.0.14=0A=
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a=0A=
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a=0A=
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.14/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.14/bitbake-8dcf084522b9c66=
a6639b5f117f554fde9b6b45a.tar.bz2=0A=
=0A=
=0A=
---------------=0A=
 Contributors=0A=
---------------=0A=
Alexander Kanavin=0A=
Anders Heimer=0A=
Ankur Tyagi=0A=
Antonin Godard=0A=
Archana Polampalli=0A=
Bastian Krause=0A=
Bin Lan=0A=
Bruce Ashfield=0A=
Carlos Alberto Lopez Perez=0A=
Daniel Semkowicz=0A=
David Nystr=F6m=0A=
Deepesh Varatharajan=0A=
Gyorgy Sarvari=0A=
Hongxu Jia=0A=
Joshua Watt=0A=
Jo=E3o Marcos Costa=0A=
Kamel Bouhara (Schneider Electric)=0A=
Lee Chee Yang=0A=
Martin Jansa=0A=
Matthias Schiffer=0A=
Michael Haener=0A=
Paul Barker=0A=
Peter Marko=0A=
Philippe-Alexandre Mathieu=0A=
Praveen Kumar=0A=
Rajeshkumar Ramasamy=0A=
Rasmus Villemoes=0A=
Richard Purdie=0A=
Robert P. J. Day=0A=
Saravanan=0A=
Soumya Sambu=0A=
Steve Sakoman=0A=
Theodore A. Roth=0A=
Wang Mingyu=0A=
Yannic Moog=0A=
Yash Shinde=0A=
Yogita Urade=0A=
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
binutils: Fix CVE-2025-8225 CVE-2025-11081 CVE-2025-11082 CVE-2025-11083 CV=
E-2025-11412 CVE-2025-11413 CVE-2025-11414=0A=
cmake: fix CVE-2025-9301=0A=
curl: Ignore CVE-2025-10966=0A=
elfutils: Fix CVE-2025-1376 CVE-2025-1377=0A=
expat: Fix CVE-2025-59375=0A=
glib-networking: Fix CVE-2025-60018 CVE-2025-60019=0A=
gnupg: Ignore CVE-2025-30258=0A=
go: Fix CVE-2025-47912 CVE-2025-58185 CVE-2025-58187 CVE-2025-58188 CVE-202=
5-58189 CVE-2025-61723 CVE-2025-61724=0A=
libpam: Ignore CVE-2025-6018=0A=
lz4: Fix CVE-2025-62813=0A=
openssh: Fix CVE-2025-61984 CVE-2025-61985=0A=
python3: Fix CVE-2025-59375=0A=
python3-xmltodict: Fix CVE-2025-9375=0A=
qemu: Fix CVE-2024-8354=0A=
tiff: Ignore CVE-2025-8961=0A=
u-boot: Fix CVE-2024-42040=0A=
wpa-supplicant: Fix CVE-2025-24912=0A=
=0A=
=0A=
---------------=0A=
Fixes=0A=
---------------=0A=
bind: upgrade to 9.18.41=0A=
bitbake: bb/fetch2/__init__.py: remove a DeprecationWarning in uri_replace(=
)=0A=
bitbake: fetch2/wget: Keep query parameters in URL during checkstatus=0A=
build-appliance-image: Update to scarthgap head revision=0A=
ca-certificates: Add comment for provenance of SRCREV=0A=
ca-certificates: fix on-target postinstall script=0A=
ca-certificates: get sources from debian tarballs=0A=
ca-certificates: submit sysroot patch upstream, drop default-sysroot.patch=
=0A=
ca-certificates: upgrade to 20250419=0A=
classes/create-spdx-2.2: align DEPLOY_DIR_SPDX with SPDX_VERSION layout=0A=
classes/create-spdx-2.2: Handle empty packages=0A=
classes-global/license: Move functions to library code=0A=
classes-global/staging: Exclude do_create_spdx from automatic sysroot exten=
sion=0A=
classes-recipe/baremetal-image: Add image file manifest=0A=
classes-recipe/image: Add image file manifest=0A=
curl: only set CA bundle in target build=0A=
dev-manual, test-manual: Update autobuilder output links=0A=
flex: fix build with gcc-15 on host=0A=
glibc: stable 2.39 branch updates=0A=
gstreamer1.0-plugins-bad: fix buffer allocation fail for v4l2codecs=0A=
icu: Backport patch to fix build issues with long paths (&gt;512 chars)=0A=
iptables: remove /etc/ethertypes=0A=
lib/license: Move package license skip to library=0A=
lib: oe: license: Add missing import=0A=
lib: oeqa: spdx: Add tests for extra options=0A=
linux-yocto/6.6: update to v6.6.111=0A=
meta: backport SPDX 3.0 fixes and tasks from upstream version Walnascar=0A=
migration-guides: add release notes for 4.0.30=0A=
oe-build-perf-report: relax metadata matching rules=0A=
oe-core: Remove empty file=0A=
oeqa/runtime/ping: don't bother trying to ping localhost=0A=
oeqa/selftest: Add SPDX 3.0 include source case for work-share=0A=
oeqa/selftest/devtool: Update after upstream repo changes=0A=
oeqa: spdx: Add tar test for SPDX 2.2=0A=
overview-manual/yp-intro.rst: update on-target packaging info=0A=
perf: add arm64 source files for unistd_64.h=0A=
poky.conf: bump version for 5.0.14=0A=
python3: upgrade to 3.12.12=0A=
ref-manual/classes.rst: document the relative_symlinks class=0A=
ref-manual/classes.rst: extend the uninative class documentation=0A=
ref-manual/classes.rst: gettext: extend the documentation of the class=0A=
ref-manual/variables.rst: document CCACHE_DISABLE CHECKSUM UNINATIVE_URL RE=
QUIRED_COMBINED_FEATURES REQUIRED_IMAGE_FEATURES REQUIRED_MACHINE_FEATURES =
USE_NLS variable=0A=
ref-manual/variables.rst: fix LAYERDEPENDS description=0A=
selftest: spdx: Add SPDX 3.0 test cases=0A=
selftest/spdx: Fix for SPDX_VERSION addition=0A=
spdx 3.0: Rework how SPDX aliases are linked=0A=
spdx30_tasks: adapt CVE handling to new cve-check API=0A=
spdx30_tasks: fix FetchData attribute in add_download_files=0A=
util-linux: fix pointer usage in hwclock param handling=0A=
vulnerabilities: update nvdcve file name=0A=
webkitgtk: upgrade to 2.44.4=0A=
wireless-regdb: upgrade to 2025.10.07=0A=
xf86-video-intel: correct SRC_URI as freedesktop anongit is down</div></pre=
>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
<br>
</div>
</body>
</html>

--_000_BL4PR11MB87974A8A80B067FBF0B8163DB9D9ABL4PR11MB8797namp_--

