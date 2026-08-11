Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6406C5AC67
	for <webhook@archiver.kernel.org>; Tue, 11 Aug 2026 03:45:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.46795.1786419907766435640
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Aug 2026 20:45:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Z+lqHRgk;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1786419908; x=1817955908;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=Ndt3yJBx6NsAqLO0eiysTYIzhw2v8CJA/iGCwxWdyzs=;
  b=Z+lqHRgkLuSF4Xf3cUhwlO9HXsQATUAvTJKqqBGky9jTx7TF0Ikc0zs8
   ear3ILhOW+N57NfA+Bid+K0TUxgHSCq/v6TYWuynbeebDz/GOyRlrQFIS
   aVCV4IeNbUArZtxM2YYX8uHO7ZCu5Oticst4PIikLIeHvl0nsLG+5k7x3
   6DbOYEbvr4sHBe4ZOfOPo7hmMTKwK9M79sLT2SsZje6A43hkkuLJZP5R7
   ER4QAHjA24Hcs1wAG5UHYyl+67y58st7wx/icqiVKYFtLSUNDv0jcJt4X
   uo0E6EL4UeFX+zJ0XOrSvJzSOLEFESwxfn9/+zsEpU2rwpuA3VUsepTRl
   Q==;
X-CSE-ConnectionGUID: nN7S2ff3SYWv6st3PtkwRQ==
X-CSE-MsgGUID: Br3L7mT4RJyHCXQx2y7mMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11871"; a="109731744"
X-IronPort-AV: E=Sophos;i="6.25,217,1779174000"; 
   d="scan'208";a="109731744"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2026 20:45:07 -0700
X-CSE-ConnectionGUID: UuZ9Reb9RyaprhmiXhH2lA==
X-CSE-MsgGUID: f7hcnY0ZSDC2pGkXjH88iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,217,1779174000"; 
   d="scan'208";a="263269818"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2026 20:45:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Mon, 10 Aug 2026 20:45:06 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45 via Frontend Transport; Mon, 10 Aug 2026 20:45:06 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.35) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Mon, 10 Aug 2026 20:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ydsZ5o5Mya1e99j+YjA6kzp+/cBLmkUerbKlzGmHDVDB5Qirma0tDRYFBIMxhhoxEOHFLAieXa0d2kseZ/cjCnHU1k/ZVnMm5jv2JiQXeVnNPTrelhWskIAAINMD2sgGIBybOZRJDbhYKQ+BHCj3ADeq00EYWqZFcs+AVg0tJMetw/7Pv8Ql4grPhoByrz+n1lbTJZLjhKTQevjqISMvQrgeVt5r/xh5LcCchcZ87gUoxGHlHISOQC0+D3kcfaP0Wuiuti0Kx+eWHPtvOYY5LhuM53lTSwAcm4EkUGjjyO0lm7elROSxztiQT1d6mraW4yZQ9UHb/Kt9nVwxfRT/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ndt3yJBx6NsAqLO0eiysTYIzhw2v8CJA/iGCwxWdyzs=;
 b=kSAarhjja6p7KrtEpnRO70v7baMGAzwtAyW7pXN7F8AWKDcIXzbXarQXZpuIN9HTTb9cMFQrk6Xolx49Il929qW7OaY53oWOCUKnp2jJJ/BX7wjmgPozeLNFG6X7BTBTrlEYiWoRyweOpxBDZvo2D2dkkMHh+lBOT0Ri+DkUNSVhoJ+E5u26xG82PSzvw7DMSr2sagO6u6U90hbRR9ecP96AAdmAZldsGC1eHrIJ6xtG4EZUGeb2Y01jkanE7DU5u0O5gjjPcTE5MNAn+8+gRCKQtFflXSTu3Cog8NlLXtxIyt/b0aGlBDbUxgLyuCVl5F+ZjYxvKeWdwBALzqn/rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS3PR11MB9621.namprd11.prod.outlook.com (2603:10b6:8:38f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.25; Tue, 11 Aug
 2026 03:45:05 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.21.0315.008; Tue, 11 Aug 2026
 03:45:05 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 6.1 (yocto-6.1_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 6.1 (yocto-6.1_M2)
  Now Available
Thread-Index: AQHdKUOIidvJ6LoSzkyTsslOPu07LA==
Date: Tue, 11 Aug 2026 03:45:05 +0000
Message-ID: <BL4PR11MB8797A21C58420AB38B84DE18B9DD2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS3PR11MB9621:EE_
x-ms-office365-filtering-correlation-id: 6004415b-39e0-4347-8b0a-08def75aee5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|38070700021|11063799006|56012099006|10067099003|18002099003;
x-microsoft-antispam-message-info: pEs5LftRRj9EipPO2UXnBD4KLQqjb1xa+5mjxwezNVCQdnoE0wcCHus4d/ZiXGxsW3H8MAneR89d5s091k+0sA8UV8dmVHwa1hxF3ohei3lVXw7/Z/66YQWz8I09PI82LvOzTzR7WgtjlRpORHDFX7g1VdtSvVGJYAubuDjxPdlOoj46LUqj/v81ADYxuq2WJITWWNVA3YCZ3cVsXHotzq9LAaceazWaHVtYUHnxX47aSzIIKp6As0qTrOCTS1OHfyuQEyRDKvpFEkrqwW2U+E0bR/bVjZpztP7Q/+x8AugNBqkpf/5T3nFaTetCVwm6RvKsLf8JZou6oCR5W0mqcAgv0XjmekAmhB1H1xulix2VWndvU24lhP71LVJR+zWFWnGBTuz9mjCCiGFzy4xwgIeD19NcMV9VByhHXY3MKLfcYhNEYiw678FidFim5Ap7IpNBZoOlQwtSb2ProS4xzXR687NHcOALmXU4tUm+IexwrUmBhCUf8aMPtRlPa5GRJj1WzDKymnUCnofsBu2f13oEUrmsUOwayBc7B4LhZYD+TBaScY7xTn2qBnMIJIEF2b6pdoL9ylY5UARZWhtapkZnLpkOH9dOTtl6YCrBdpnfFCBPIliKlWn1QL4DCPs6WYRvCSE9RON3fDwic44r9TJEU2QOA65bh5xMtJTjPQF/pxhgzbtCVxToWJrhqptpvNABbuFmu+4hZuqwuEyRaTyA+jCLT82xH9Jjd9F4xeM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(38070700021)(11063799006)(56012099006)(10067099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?VlKSFe7VbETZg0Iv7ZcPxMNPqzGbKccsRaqG4/VM4mTBg/hVg8vzjO73xQ?=
 =?iso-8859-1?Q?iy7DTb8volTLtno4+n0TNe5QWkhF9JiV+aD89WCBmesf6IBxjkH8NdPkjc?=
 =?iso-8859-1?Q?fVgeCyXW+5SXGotHK3wrjZ9VyWAu5EOFlS++acifn9AYisaCbfEhd4p8Pg?=
 =?iso-8859-1?Q?M1ZMJwzyzLb6KUk/6IR8CIhHGuN4t+kyeohiVU26m9lbeKXYiVxJkeUNws?=
 =?iso-8859-1?Q?RVHK+ve1HjFjNVHdWZDu3tdXHG074DqO3rXBBQI9lcBRemJk0eBj4oGFX/?=
 =?iso-8859-1?Q?0qSxInwfrOZ88xS1S2i1hOYOx8xjiYyc1xbHhC/H6Za1rfHn2dgLjfF4ID?=
 =?iso-8859-1?Q?DkRihPM7W8hix+rJUbhtZzL1JMoT5HV0uvlRTTZLnay6FtYhzGoEdTVyOM?=
 =?iso-8859-1?Q?NZOAhMkbwT4bO+F+BYE8Mau1hvWQbExXG4W3Cn7d2vVsZDvBafmaM+IvZT?=
 =?iso-8859-1?Q?rxCJt57xfrhWZjQF1KpoQeEEj429F/Fx3eiKVVkcWgWAh/3en+5HoAPvdA?=
 =?iso-8859-1?Q?4VP2njq3THk6TYK9HdY8O4H/84Nx3QECer968puXBks2Uj7+bKiU2suli/?=
 =?iso-8859-1?Q?Kn9AWVxMWnUP7yKmVeG144IP5E30zFT1eXiK4pI4jW2yvpvok0IAjbF2Oe?=
 =?iso-8859-1?Q?aLLCwkX6YSeZjfrxW9cdbg7cGXSlz7RBOjkqQ8XbCf0V0Ske7rntJcYZSX?=
 =?iso-8859-1?Q?6lj4dwIHlNI382202pygljvYKmg6FwNo8zWwJl8AoPbXRQqKeX3S+bUCYZ?=
 =?iso-8859-1?Q?xkI3HkA3qWIKwnqNUEIyzahAApeutd+IkN1K9eixtEzhW47BAcRTfin0CE?=
 =?iso-8859-1?Q?e4WI3ZADORS2RaPMHqyc4X7QaXBoZEdJN5wa9KQWimByH4pXXnp6km2uM8?=
 =?iso-8859-1?Q?qllyi9Z3sql7x36SXjWU1FTCPmshCohUhVjjRjqvt7nCOm1+fPJw3YzQ7i?=
 =?iso-8859-1?Q?NX4+Mndr9npIEPrAV6Tr5ewKFaLu8jEGBptiijgrU6DD/A+2WHqybZFPai?=
 =?iso-8859-1?Q?klr+0WBKS8NSeQYL7fPLbuCNAqQ6wj5rUM4ec1EQfWaYkqT1qofmiQEpeD?=
 =?iso-8859-1?Q?o8hZb++jXComENgJMkUEWxc9Q25vyCRV3423dKQLGx4/MwfAnWpqwSyN6b?=
 =?iso-8859-1?Q?bSfpq2bzGChnvsALhdmV4mE0Cy5jDEH1IGsO9j5JprTS4QWq0xtL2bO+HA?=
 =?iso-8859-1?Q?HBTmQrkiSagQ/TckfQ2tStmZy6ocJ20LUt+DIIRTCh9xVpFU1DJFzCBLDV?=
 =?iso-8859-1?Q?fsR42uwaVeAwi+6pNcdLIsa/ko11Sn7LTOAtm5bBJc4JqYJ8S6NzfXOI8K?=
 =?iso-8859-1?Q?34lfDg0CadOxLfqD+/BvaCQePAkh4a4esvWdTAfMJEmovUT3yqojw8tal9?=
 =?iso-8859-1?Q?IYzJuvJ7JyJAvXSoM72pILNoTJ6CMCisG78JNsTCIQxQH5vv0mshVt7pOO?=
 =?iso-8859-1?Q?iZ85Xi22e+bgxJzrZpSV+kFy4VZ9w3xgqcEjjpQ5GtKKT9jILmZ2z3Cmf9?=
 =?iso-8859-1?Q?Tl0/nY8aNDQfv1Pv9e9LvPFYVYseiJsB31paRaHJtshB1wpIj0I2Q6NaTK?=
 =?iso-8859-1?Q?LNpsBVk9M7SXkzzRxs3VqdyTLHwlFlAKriohqoZ77U7EjSsFnaB5t4cYIC?=
 =?iso-8859-1?Q?8miSHFXb+p7+cLFAH0G72NJITpbYTTEOfh60G2XxFKUcX9KMwJuSXfyMnQ?=
 =?iso-8859-1?Q?0XmO07bGA4MEFN3fwz/atKwCC2F7b2cxpwBok1cFj0wzRS3T7tyXUt7Kcl?=
 =?iso-8859-1?Q?R1w8olAjTc0WATk3LFeZbKG3eHWOtDut2aVhHEHMiPxnYRGjxbWEtiYQD9?=
 =?iso-8859-1?Q?vbV7GdZRwQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: r4akUr0kV1i9aCWKC56bw0Dh0wiu7ER33RwZuoSMuAnRKJtTHpWqngSRVioycomlvzyW3pAFhH6if5sgDPKXFZWM1ed+OD8BHbXQ0IH0PGrTmc/pAY9qu+YYPfFvDUpXx0EGxJ/dmSo3vBzoQx88uN1u6bDMBk+gsws19o+BhwLowpq7Dqi7dxe3tzY9hiHqcyEYRnxZGsvLcqKNnrvt3cbivPMoZCL2a3TKnOeOlqK67Xu0fMnio484rdas58wK0ySK2afKX/sPrpOTZdO0MkAw+hNURZdqAD4BFkkg8U2cSGzQFZSE7Twi8x9pJPPq1dON9dn5BsKG38IzE7jt+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6004415b-39e0-4347-8b0a-08def75aee5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2026 03:45:05.1074
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BT0BYLKKXrPhmuxwN+SIAAo5iECC8QGIrxZcINvnICDnw+P0u7Xwxi+6s+N7pDJ8eypCyjL1kQ4ocju6h5wyOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9621
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Aug 2026 03:45:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66683

Hi=0A=
=0A=
We are pleased to announce the second milestone release for Yocto Project 6=
.1 (yocto-6.1_M2) is now available for download.=0A=
=0A=
Download:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M2/=
=0A=
=0A=
bitbake: c251833d2062ef92fc7e77ab6456af928ad1d31a=0A=
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc=0A=
meta-arm: 167661762b7d3985751fff066b5e7355325f3ecc=0A=
meta-aws: 64aaf5c905b47bff49060e217ee96bdd8423707f=0A=
meta-clang: 0baedd06e78d26d3b927471cfd91960b7229a178=0A=
meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238=0A=
meta-mingw: e2aac06ec74e46d08b7e68f61043047c761ae9f9=0A=
meta-openembedded: 2dc51e7171cc94b55ae8cd72cac183bc7293ea35=0A=
meta-qcom: 2eb6cef3b3c25cf80c57e8b76b1b573770465a2b=0A=
meta-virtualization: a4987f0af6f30883e1dcd52cec66311343241d6f=0A=
meta-yocto: e4690557fb0fffcb5e9a86d1c1ebc550bb0da090=0A=
oecore: c0508fbea8d26242e0c761d412d727943f9d6355=0A=
yocto-docs: 358519ca6406a89fee42c45dcaf63a37a374f33c=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M2/t=
estreport.txt=0A=
=0A=
Thank you.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=

