Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4644C43458
	for <webhook@archiver.kernel.org>; Thu,  2 Jul 2026 01:57:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.60292.1782957424529105160
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2026 18:57:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=lXmedB9D;
 spf=pass (domain: intel.com, ip: 192.198.163.11, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782957425; x=1814493425;
  h=from:to:subject:date:message-id:mime-version;
  bh=kgaMnQfsi+x91KfW/KaRGYmcFLpSQ9ObhSKuH8P64gw=;
  b=lXmedB9DvUpVl/6oIy0V8PCC5fi/W5DQGNKVZvMIchtpKrJUCwNgF6OG
   0vzSU/yxFxkJNyu127sVnLm9o65v+opI4wp096VaOHgtv9WQY5kkNv/3q
   uhabfiP7FRVfl3Ma1ooSgVK/OKpuNdrNFHnVd8XOQ5RiL35WMK0+u5QG7
   cBk8k5mPT/p3Jg1284g2+rsirog3tbJd/AC41krQ3MSUhYYWgmm+Qhg/t
   +bXMvXjnmKdq9BxJnmnfkH19m6eoRq+2SqV8jKSMT2SGwrjWYhKSrnBj6
   h2iX/3FNXNSUp5jmOkbPgCXCOsoBAGrLIwwmWDxEwkbI9k4y0iYI8Jvf7
   w==;
X-CSE-ConnectionGUID: oTiZz8qYRMGztg23GYS/pw==
X-CSE-MsgGUID: VxXn3nr1TOamKnecLBubqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94298951"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; 
   d="scan'208,217";a="94298951"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2026 18:57:02 -0700
X-CSE-ConnectionGUID: mlUI0PtgQmid1q84FYQeOA==
X-CSE-MsgGUID: tPwZuBrST9msHmmBdBUA9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; 
   d="scan'208,217";a="248744407"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2026 18:57:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 18:57:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 18:57:00 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 18:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uT96RVUQTJESlysyzDu0reD8dh9U2pQH8lXwIX8G5D3yJKLOd6WFSHjFKaIYpZK4lhO3Zq8pZFdeNLRfodzzaCEdmHdf/w3UA4rtJTHFDOAtq1o/pbH/I421DGtwdl/B4KfuCTlIsKdpaMXE5SGLj3DaqhxGr00u5cHrETHFyP7p8g56j3jAv/XZx75UsYPtvE//zW2dnwQP4YL7KKOcSL/mDo3VpN+lvLB8vhsbwEMbcBGZWtniwfn7ZBnEMAJoSpWO9z8VXTyksW8jnEMZNujROMfTea7KuhuV3jEaJoT+qBcLc2LPxZKPxjOuINRDOUK8Ym0Tb+0G9U2EoFkV2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgaMnQfsi+x91KfW/KaRGYmcFLpSQ9ObhSKuH8P64gw=;
 b=JxiTPoKUUAHg8T27xxT3DWhZrM2u7Gaf5nByxkEiinq5uQUr9EZ8/5qy4lauJ5MxjaUNfgg11x491G6Xg4BiV3wfJ8SXlOfl7xh5F5MXqHXpp8yWsp0ht8ozFCRxyIABeKzahhe0+xwVryQ3T7rcabAVLoUJrB8OsxemwBiT0J7tkgHsmjCe92fa/4n68ojx7r5tdsvG7FAcBFMXxAAhoHpFaAj6H8HhQSTDx2XgsqpxRcORPu9H04zUpdrOshuKYaAR0K/EpLWklSn2aagJkmv0ltaiwbStsYw0T+bbhDsmDIhLLNZbv95wxYEgI4kjyUe2og/s7grhLgXk5T+r4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA1PR11MB9470.namprd11.prod.outlook.com (2603:10b6:208:5af::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 01:56:58 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 01:56:57 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 6.1 (yocto-6.1_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 6.1 (yocto-6.1_M1)
  Now Available
Thread-Index: AQHdCcIe37jS4ZRm2kiRDOWI+YIpSA==
Date: Thu, 2 Jul 2026 01:56:57 +0000
Message-ID: <BL4PR11MB87970172F304088C5E92D190B9F52@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA1PR11MB9470:EE_
x-ms-office365-filtering-correlation-id: ab182644-0430-48c3-5246-08ded7dd32f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|376014|1800799024|10070799003|8096899003|11063799006|56012099006|18002099003|38070700021;
x-microsoft-antispam-message-info: iChO1HQkYIssucORtjdYkz71KJ+qG5zssiPkSegiEZcpBG3IzaABz8ghrW+Ef4GUobWX77C0dFe/SRADgbkmdoOsJrwhy4TM8rQIHsEH0XUy0892S3UZCmhFjnDeyktfcHvdK72uxPC3A8T7RIu9tYq6+slQpeD5CIGo1F+1waGcQWviElxda/kkVqxyOQJh6vXugDtb5mOOxmUOH28KAM4Tuuc67ve5Q+BxiVFif34FD9/oBMA7HVk7Cicwzm368lfRM1ASeINxWq9WV2Um8Fpvfy15B4jP6eFuLz3RfbbF0mClfhuF1uzm5fqie0SlsTwZOD/EPlV03E+qAKDJ9iINdSFAtUzoFwnmjPzmiEeDGHXLwjHAEuE/Zxn60fSYnU5wSxGen3/coTqEFYn0rlk8j6fHLs4QJHtg8xlVYSbVZ3oHWm2CUpjYVZwIjeYa6piTilPIH5pHyQcIcRKeuzygiHpq8kKcGgfEeamhlkK3BGsprw3ouwd2xkxJ9DXXT3Ug6ZOkftGyX+m43x2VEK8ZKvS2o4egAaOZRgaNrTmO1M6m75ESKovh/UW2xB6MIFzWKGTJBVaiYLaCYYj64Q3dEpWgcnOVNN3tIHsukNEk17OGWPjxiucFKNl5PWvJrRy4Ge3ZPI+ffloNHdEAHHbtBHlyL3PNaxuTHk2ujDs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(10070799003)(8096899003)(11063799006)(56012099006)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?QyBhKtv3fTT300SY3ORIzMJsPtLNL44FbaOaJRSLksTxRDFxZ/lfRXLh+7?=
 =?iso-8859-1?Q?OOWn88lhgFK2x3mnDC1axdh7HPy4T/hvm5qYBxujtMAruFUOGwCrbvvxLT?=
 =?iso-8859-1?Q?fYYZp2Jx0D64K7F/K0M7ljD38iEnvty+ogvzPUO1kHNLv39tTVFjq3vaHb?=
 =?iso-8859-1?Q?xS1KSl/Jcf2y5QtjBSnwwD2J1RYiPfhsXbQj2IUiVd1ecTVicw+5KhUvk9?=
 =?iso-8859-1?Q?13OCJ3SByJPjc2qDzeQvnytUq+aPGun1347O5DijDX/MP4MOtWFbmxP5xe?=
 =?iso-8859-1?Q?9pDH578KrzDJdApF+M/VPyp3TgS5spgPkM8aj6dmtDxZyztTwh6PIbc8yF?=
 =?iso-8859-1?Q?1FFTxPFfbgpN1XzwgTmLVkJtJXq2wPqebsWYLgctI14NinggdBXx/5p6xn?=
 =?iso-8859-1?Q?L+kifd75s/17jVsYPMWU9F31EUbpLe1SoGXab/rtUSo4PaJTgZMXeTrlrO?=
 =?iso-8859-1?Q?R30sOWyHAois/uXJfpHYJO8FOhLO3wmTYYob92JaRSz2RuZGEOUGi6QJom?=
 =?iso-8859-1?Q?4hbWjyonUiKf4oKcr5hhsW67RNb9SLygktoz0xgz56GKgmCWlI0SLBDd8K?=
 =?iso-8859-1?Q?9phj0QKLtVv9Jq3O27eBT9+APJ0NBl1U2MWHSwzz8HocfSqs0z7WG3Tumg?=
 =?iso-8859-1?Q?N1VyQ8KQVmM9YfzaFTYQvrH+uG1voR9NjiIXNLvwat/j7Gucgl1Nh//25l?=
 =?iso-8859-1?Q?sN0KouqS/B48PZhl5VgUTA6od4AEjMAQtGObCIfixp6owJ/LIbO4MEAZRO?=
 =?iso-8859-1?Q?8M32TLfegDUZSEU/b7vJ4aCM0d10+WfhyoTzjdiWpW9iD8257FW3CTxgpT?=
 =?iso-8859-1?Q?AlyoRojXa5q47XcHZv0qo+LnDORmbNJE2M7set2Ictdbg841a3PrMX7z8j?=
 =?iso-8859-1?Q?KPXUuRDt5mh+v16vCuS4wK2TCot5VqfGAQkI5SLDr4MFhHo9s98xH5N2Nd?=
 =?iso-8859-1?Q?OIwPvUlCEDBTs9BIXuWyjtdDCTLJKj4+/jpgUsPgZfYBdkJfmi308vcUQ+?=
 =?iso-8859-1?Q?ZHGNDviVirRSQ1sNF5GC7HvMJP8ONoC9SA78sGCnXZcZ7iDnth3kS3jFP/?=
 =?iso-8859-1?Q?fOBDpwuDf+8SlKHNSz7K02cWeXhenaNhDZToQgVD07TTFKO6LvSquyVkR/?=
 =?iso-8859-1?Q?TgQjwFsQiHTdTXtRCg+hEO543Tw+dR67Cx6BEPd7gTHo6q2qxiODwEmj0y?=
 =?iso-8859-1?Q?dWJBXeLAdPgezSH1w4NEbvVHSUKKatcluPI1bAFDaR584RVV75SqQenLQk?=
 =?iso-8859-1?Q?Eq2PgeTO6IR/roUJEYEXK32d2YAkoiFY7MSEXDJqlkn9hHNSBNP6nGJils?=
 =?iso-8859-1?Q?2hEWRHr10FBX2CIiOSqH1UstkudQfdgOEg20IGWlxWHHhZN6W0MrtUQDGq?=
 =?iso-8859-1?Q?RZ29E549l/9kkuIOSqYgP7cZZnVvrR8hUr/aZqSNrWraUdV4xWKw1M1B7g?=
 =?iso-8859-1?Q?xLC3F1yIJFEcxRLlGAhqPZAmjRSUD8HY7mK6WiiQaAt9mbjE++ecDwyWAo?=
 =?iso-8859-1?Q?AsXP33qeTy75ag5KQw1JVWwYCwt3Igbv/jwrKrCIOgQpctgGz3EPN+va9B?=
 =?iso-8859-1?Q?kR5LPntm1UG4IRdhHlrgGX8IkgvPAxE93sAfVhgFOWF96tavYFAebieiqM?=
 =?iso-8859-1?Q?mt+rPnRMVtzE9D7IqkxbJwhN5BiLWepU0krwdw1SesKZP/W6kampOIyOlQ?=
 =?iso-8859-1?Q?HmUYWDXuiHlxKcAFz57wkCrCh+TOdGJzv/3TuO8VO6B+NKkD3VwLR4wat0?=
 =?iso-8859-1?Q?G6mGKbjQDg/l8jllvjIIb5zakYClmZzDzMRtQc++WVorbs5PLklalmKkW+?=
 =?iso-8859-1?Q?E3goLMTl9hhJyZxjuL396eHhNBf6BBbjmuwFhz4xYMgZuKmRg0RaBLmz2O?=
 =?iso-8859-1?Q?LB?=
x-ms-exchange-antispam-messagedata-1: s7ZiYgkGsfRSYw==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87970172F304088C5E92D190B9F52BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: He/fZY3tvTup9R0x9c6cj5LdGYuyfjzbjr64GSxYLg6zGHk+6Ehx8Yhi2UunqnfFCXj4krAQFyambplk+Kls01A/ciP65C9cV/G26DLpwW7MZnw3LK1m/gu6CYs6zKiFYs9KPoe/wuL/P0V5ZNGYi6yKgdzuu8FwPOfen2+XsSOYDny+vFFl+FO/Rv9aHd+bLFojHFS/Nr48sMttmVM6RY89z6Ghf26Lnfo2/oDI4pSn2FownHZsXFG8kkutzUEMpnbs+mnCYUu/bntvXYKJTdBXVJJy5cKxYTt+cU9sNphYfMrMeRt/88eZ/hYgVMHTuwOpUS1SWDGTWop5kfTB5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab182644-0430-48c3-5246-08ded7dd32f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 01:56:57.5582
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 18zMZVuhL7PiD8WO0hQHtXd0FipS6i55oDj+3xaQuiVmHepliH6jWNlpb4xuhERgXUwMlWcdui1dkXjtbTYV3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9470
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2026 01:57:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66621

--_000_BL4PR11MB87970172F304088C5E92D190B9F52BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the first milestone release for Yocto Project 6.=
1 (yocto-6.1_M1) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M1

bitbake: c687d42b81b17e7a2399099cab0f1a6aafcf6520
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 02d361b4359fde9b6646129980f1484f7aa5b09e
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
meta-clang: 4b18f531a8d1047f49dd3097ddd00be870c0ed1e
meta-intel: 55e0ff278f7040dff5e453c509357820e8ce4c9b
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: 53cbcaba3f09cb50b72b91c2b33bdbd479da5f19
meta-qcom: bc2df58da599d0ec0a6826736d2a7a2e1863ca5c
meta-virtualization: 022f4356d4a9b389f51472d40a9330aa59f6bb9a
meta-yocto: 59c41245ad231f5320defcb275477e3d25a2203e
oecore: b5c24e1491dcb9ab0f782df6be6582fbd2151724
yocto-docs: be424bf52cd3ac9c83a4617d0b06afe8cde055be

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M1/t=
estreport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--_000_BL4PR11MB87970172F304088C5E92D190B9F52BL4PR11MB8797namp_
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
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Hi</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">We are pleased to announce the first mile=
stone release for Yocto Project 6.1 (yocto-6.1_M1) is now available for dow=
nload.</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Download:</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">https://downloads.yoctoproject.org/releas=
es/yocto/milestones/yocto-6.1_M1</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">bitbake: c687d42b81b17e7a2399099cab0f1a6a=
afcf6520</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-agl: 3c55b45bf920bec93938af02f2452cd=
698d3bacc</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-arm: 02d361b4359fde9b6646129980f1484=
f7aa5b09e</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e632=
3811a140a</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-clang: 4b18f531a8d1047f49dd3097ddd00=
be870c0ed1e</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-intel: 55e0ff278f7040dff5e453c509357=
820e8ce4c9b</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d=
0ea9de2b315</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-openembedded: 53cbcaba3f09cb50b72b91=
c2b33bdbd479da5f19</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-qcom: bc2df58da599d0ec0a6826736d2a7a=
2e1863ca5c</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-virtualization: 022f4356d4a9b389f514=
72d40a9330aa59f6bb9a</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">meta-yocto: 59c41245ad231f5320defcb275477=
e3d25a2203e</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">oecore: b5c24e1491dcb9ab0f782df6be6582fbd=
2151724</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">yocto-docs: be424bf52cd3ac9c83a4617d0b06a=
fe8cde055be</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Full Test Report:</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">https://downloads.yoctoproject.org/releas=
es/yocto/milestones/yocto-6.1_M1/testreport.txt</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Thank you.</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;"><br>
</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Chee Yang</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">chee.yang.lee@intel.com</span></div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Courier New&quot;=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif;">Yocto Project Build and Release</span></d=
iv>
</body>
</html>

--_000_BL4PR11MB87970172F304088C5E92D190B9F52BL4PR11MB8797namp_--

