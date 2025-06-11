Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E216C71133
	for <webhook@archiver.kernel.org>; Wed, 11 Jun 2025 03:36:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by mx.groups.io with SMTP id smtpd.web10.2257.1749612994901360151
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 20:36:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=BE1lmCwA;
 spf=pass (domain: intel.com, ip: 198.175.65.21, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1749612995; x=1781148995;
  h=from:to:subject:date:message-id:mime-version;
  bh=Lqzyy6OLjkvko780cKLrU5FO6aGDs8DWhNMiujlUFWw=;
  b=BE1lmCwAmYFXIA7hqKiClNeXmX7/rnaDePlnK4Vha7KQMc6fhxwRUENF
   vVbNIyQR1IrsQY2w74mN2BvXFAEgClDoplL0or0BDnJF1jX3Jw3f0Rg+g
   p4PR8/VTk2QEMAXOsDV+zUF8iItBUX8uYjLDON2B1zUdiJlQxqAqK8MwW
   rYnhDTp5wJ9w3zmnsxlUsO79625osA9PMdeID0pqAX6POryhIP1z2M8Sz
   VyRx20Ay6Ibkg97+lyVMNH2aXVgSTNsqBpsgnkmjzNttbf86augR1L4VH
   9AlA6QrTBYvfGQgx/dwhPGBR4b9tC/jCZ1rfeHFr+jqeL7016eZxlaFHV
   w==;
X-CSE-ConnectionGUID: CYzL/LagTnK6wNkXJN1ilg==
X-CSE-MsgGUID: ReVskJslQuWJRMj2LfNf8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51602180"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; 
   d="scan'208,217";a="51602180"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2025 20:36:34 -0700
X-CSE-ConnectionGUID: msyXRNrdQrGvnkEQ21h1Pg==
X-CSE-MsgGUID: 036BzT/eRDGbDxXAL5BkcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; 
   d="scan'208,217";a="177949840"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2025 20:36:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 20:36:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 20:36:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.53)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 20:36:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mEWYLOnE0prHOYJKmx8nwxIuS9Gu0t+SssUEEPFCJ40ZOJhI+IhMxvvl9wXWTmQ3n7cosdcErnraUc2KpVA9QK1Ef5ULTWRAu7ltbnFqEg57DrV4YsoQTgMYM311MKJeRDDImUp2Ahk4cYnFzrlzKq/f7tyz3dsNE6P5VHzrn2uru+wEIrhKGrPLUnLn+H/5/oMHw13StoPEZOOWbuueycSlqHG2dKdOdVoU/UeSlHY5Fe+s0PMIfFIL5kP+DDZOMjp4DLTY6ZUWOvI+CTjrk3BAONblSA9tiaqQ5ju9xUUSL+AgQb/h6F3nHmCfF2Ux4FOlgG/bdfk+Wblg7qsFwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pw4E73b7Aion+708Qy6JhUgV9lUm+MQcFQF9rXv/OU0=;
 b=F8ApBB0fvpU3bnop9IDTX5Fa9hcXA+bAOhsUP3mMjitD3nEhsgQh7uq+wvM0G0oYS/W+kohIbeJX6Dnem/6JsvGaDsIpgcRiPHjeDGa3VXX/pIIA19tVSzkPnYZN0yn2stXqz0u8/3T508zNRuxGFzRQQEqgitI9Zx1SE+Zu5RBNRijK4IYyfMNKhijiEq9gxE0LYkPi5sOGi2Y3wQF5soB+hkObEnxScK8yWdlgDPUhLeXlESmwOkwu9kqGVhpbOKStrfEAyd3PLT2N6dzyA54a42fqxxFhMRf0ebUAcQxPzmuk+2svjX7KncAyJII3PH6h4wgPMM9mR6yTnaOXHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH7PR11MB6608.namprd11.prod.outlook.com (2603:10b6:510:1b3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Wed, 11 Jun
 2025 03:36:29 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8813.024; Wed, 11 Jun 2025
 03:36:29 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.10 (scarthgap-5.0.10) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.10 (scarthgap-5.0.10) is
 Released
Thread-Index: AdvagQ2jTLkvzkqDRbKcacfeSg+Raw==
Date: Wed, 11 Jun 2025 03:36:29 +0000
Message-ID: <BL4PR11MB879745AB593E730BD8200A54B975A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH7PR11MB6608:EE_
x-ms-office365-filtering-correlation-id: 130684d0-1e71-4629-5ef9-08dda899272d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?djzG1zwcc8QWWMu+1yXxUZCFuXFEIkGAtY+DMTedkM+ePWkfya8uALF0mM?=
 =?iso-8859-1?Q?fo1pwJqpG10Yv1lqWGX3c/NKF2O2rohbpXEfebnw0o3xSigCzZsJoAEcSo?=
 =?iso-8859-1?Q?79DRr4p9ls0ZY9NULTrFe2z4Y0BFyfnwd7QCKcS8FzbiN+bsKCb7IzuVJi?=
 =?iso-8859-1?Q?5/hFA14FpRGYZSCgmugjhMs/zK31n6gTjpYVbRrTw6JHaRaD8hLAzsFYRO?=
 =?iso-8859-1?Q?nYzoUopIRZ46NUm9MDl67X3AJ2/T5gFmilsQvpjKQdKyWdApC1HJBffYsK?=
 =?iso-8859-1?Q?DSwARG9VdSs9OcqjolAE/Qh+UTnBbofi5Nsr+vqaP0lhYPQXh7kxn8VdlA?=
 =?iso-8859-1?Q?t2QuQml29atSAw2o+ckDzyehAD4YF4trTb+Vpbq+WmSdomb5RPe9qyU4lB?=
 =?iso-8859-1?Q?IW+l1lBsWhL2DyAF+l7A9op719+XZhCsZUomMM6uSQ5HLxebeIP1wsaP//?=
 =?iso-8859-1?Q?2ObPi9kNM2UIbWpLJc3MnisAZRh4o+vy8YiYZpcFYIZ/3I+8OyIbqXv0av?=
 =?iso-8859-1?Q?3IuMXribDzFoMbxTAnauUFW3TBmnMHL/Y57vN7XGPs/Bwp7bYxgli9Qgbq?=
 =?iso-8859-1?Q?8snduneeMbHmEQxUH5JpP2JVA1S42YzFlJ4PNgjEWGHHl5SussbkjtjsOr?=
 =?iso-8859-1?Q?w5DfoyNemdt49JZ9yPn86mBR7FC1+wOhVKwRhFWLKLvbyyT/1YLC1wl8f0?=
 =?iso-8859-1?Q?Ncb9sjnhMXiXYtFkewWDEWuGM98XnRD+jyQiVygOIydZy0k/5ztwsaDpKp?=
 =?iso-8859-1?Q?HOD3aDFkt4wesDofabZFao4j4E14o2FAkQilfnodC72A7K56MQ96cuMuAm?=
 =?iso-8859-1?Q?gM7nS8r3UHSWlVCeUC+wcFs0+Y4KshIMcU08d2pDN+xBYzYQV1eKdvXtup?=
 =?iso-8859-1?Q?qNuv1PglFTXVP1G1HGzZsDx6srqYWRvcO0jMnZMIJ9+ftFbFMJnrXORwOc?=
 =?iso-8859-1?Q?3ZAaiJjiemwr0He4OTRi8/hXPD/ebvKhIx89Fl4kmrrOnUyWUe+5vgOyeF?=
 =?iso-8859-1?Q?MmYKBAK/94DXAdd3F/jr+4NxQhXBvtaEViAZGYZA0XWMOM86R4lsurp57K?=
 =?iso-8859-1?Q?Q/p77GTgDzqXTryu/ancMItySWgIdbdgBSNhkn2T2jmUHKAKBPph0D78mH?=
 =?iso-8859-1?Q?EU4fuVW74CBJep8DfmByf6VrhfZbO0nX8LI0O4MJ8wqD7Ry5/8FdGYM5c8?=
 =?iso-8859-1?Q?P/mex5kRlvArDnQwRf/5UmfXYoKEYayX9C/9pW5fNwIFS1KG2Nyukv+XwV?=
 =?iso-8859-1?Q?hMRDLdiyKmZJg3GdT0QR2gwvb54ZtTVLt53zbnNeFkRycuQEX1uvSgAM7Z?=
 =?iso-8859-1?Q?Nz1Rd1RzKhS+AoIWcvcxY6lhpbp9cWVUoLHgSlA2bK3DhZCq+6jRsLyOJJ?=
 =?iso-8859-1?Q?wpoZZSn295VOEN/vu2H6vZ3IAa5mPqUwqtvcE9wtz5KRgZdJTtvDmslXRK?=
 =?iso-8859-1?Q?df2HjzGMqldH0X5UXzMyu3toL+luAQ/+yijA7gFQJEU//UWBFQ4pCugPJR?=
 =?iso-8859-1?Q?8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?A8xInPDCB/O8otZpM6kyZHfZpzESor2tTjDDGXqn6bpjXXTIw6XgUw66pE?=
 =?iso-8859-1?Q?FyWxfT6mFN+vzVjrUfwSNdKCyfW2b7xByh3BMpBoyrlutQY1Jdxwp23xA9?=
 =?iso-8859-1?Q?LRqs/AWhVSw2m6cKuQJe1bRMTovWPpdPXlh2iKQM7igqFfnactcBWXwjCx?=
 =?iso-8859-1?Q?mUWCDoKUSaWVVeyWesJ/yjlmNkLbssk7oY5yyBKpTZ4paQxTKMU6P4Zy1o?=
 =?iso-8859-1?Q?wzlm/lzw2UHFDprLevzZf25WhhQrH5wqdVNqFn4uTA/rjzElJ6IuTXSJq0?=
 =?iso-8859-1?Q?XtkC9lMFhnkB4fxY7hPKbSlxQK1Oeg1X5V9bB/N12CTtFaxtJ5vm0vzMuR?=
 =?iso-8859-1?Q?wWB9NMwrn7TeZmK46s0PEWJ0O9fAqJL/yERAKhdYOXF3q3EEexjCIsEANb?=
 =?iso-8859-1?Q?H9aZP4D25Kp/xPcUxos0YQBcmlHo9sLo9sp2IOZjNgH2uNE+NkpO+vvb4a?=
 =?iso-8859-1?Q?drizYztbLm2XTQIaVQnYPAFbtUFdDzjT9EBZJz675bRQVOG+oW7+zh+mZG?=
 =?iso-8859-1?Q?v9W0luiFs6PxWqcIBDmUkb85FX+aXMXGGwMz/fENdsyYUodJPK/4/S8LWD?=
 =?iso-8859-1?Q?hANs4wlPtWnPrfWdm3VFbzB36QHDU8YB61NrOY9eMPhOqZwprADPt5ctig?=
 =?iso-8859-1?Q?EvHsfDwMzalEWGk2FNVaEl8s9rO3XxPxuH7ZjCFttjE/kPOmL/bS+IEgZS?=
 =?iso-8859-1?Q?UlJpKBebo3okwXpkGlNBA7Awdea9jEcZ0ih4Tcc6LWatd5W2XRZ3EYVOZh?=
 =?iso-8859-1?Q?txrGSTbBhmKGXMRgABpxzXSTQCcEZEJ7b1UTN6B+RhR1KMHjLDtmU44kj+?=
 =?iso-8859-1?Q?u30OOuwARN6YYSsQEgTNp8sdAF6cLcC0mm2SaPTWD7vbFBy17daUVRwLH/?=
 =?iso-8859-1?Q?61oLYGqNEg8/XeIqRPlxvdQ5wzb5Iw5ecYkL/PFjnNsupMt3sOh5MGWFzL?=
 =?iso-8859-1?Q?KOLiccKqfhFLOwu0dlhb372SnHiyMIEdDlWZe0zbFQF92iqfchnrlN2QDa?=
 =?iso-8859-1?Q?7i1urvfo3YEekePntpTn7A4F+/gGXLGFhwDJwGRaXoBpgQziaWdkn3UwPY?=
 =?iso-8859-1?Q?jarvobK10qoKltbX1OLj57YupQqr66BOVp5u0cT0bScNw2GMOMiaJgtTI5?=
 =?iso-8859-1?Q?YF5IQkVLiZdgx2lVKI2ue3lYjT8Oaka7aG05sOMdfMXM1Y4TknEPBXUojK?=
 =?iso-8859-1?Q?BW5M5nvgdWJQ/3CefvyMEOS4N0SqDjb8TawqdGcSTyqqni8SML2dvKTGs2?=
 =?iso-8859-1?Q?pEqSzl4EiKiFnU30+A67YIOoNAHzvuDt/9Hevt38sqQNSQNsPdOKLIV2/4?=
 =?iso-8859-1?Q?tvozLtlb9mwjmUxce5WnsKYePD9xGxfvA3n710y50kfCXZbxv6pc4HTIVQ?=
 =?iso-8859-1?Q?PxGc/KSAeYxcW34CiK/u3mYqgrdcollf+UjJNKgLtlGMxYH4vpXITxA54A?=
 =?iso-8859-1?Q?cn1RsIYWqBD3df3LKq5L6gEkz2FQBkfrlRLpRSZIlN1ynKM4UHmvToSyL2?=
 =?iso-8859-1?Q?MDioA0M28Ftdly5YEYXm+AO/Fv5MG7S968ISPVgP2MIgUTWbT5CX80mUV5?=
 =?iso-8859-1?Q?ImH9TiW1y/kdmoM8PWA8If0x8yd/Z0I4mIeDWTm70UTmyistbSyygzzDcH?=
 =?iso-8859-1?Q?b36zbBdGTy7q6vsQuPLoZTqZexjEDSybJx?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879745AB593E730BD8200A54B975ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 130684d0-1e71-4629-5ef9-08dda899272d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2025 03:36:29.7018
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JtwXptDvCP6ibSwYhwnanwuBhiw5b7rbbdLRSPbcyuesGUurs65TpUuLIX0O7+9Gf50eigDSGaEidG3dqWuMww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Jun 2025 03:36:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65504

--_000_BL4PR11MB879745AB593E730BD8200A54B975ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.10 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/poky-ac25790=
0c33754957b2696529682029d997a8f28.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10/poky-ac257900c33754957b=
2696529682029d997a8f28.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.0.10 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.10
Git Revision: ac257900c33754957b2696529682029d997a8f28
Release Artefact: poky-ac257900c33754957b2696529682029d997a8f28
sha: ddca7e54b331e78214bea65b346320d4fbcddf4b51103bfbbd9fc3960f32cdc7
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/poky-ac25790=
0c33754957b2696529682029d997a8f28.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10/poky-ac257900c33754957b=
2696529682029d997a8f28.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.10
Git Revision: d5342ffc570d47a723b18297d75bd2f63c2088db
Release Artefact: oecore-d5342ffc570d47a723b18297d75bd2f63c2088db
sha: daa62094f2327f4b3fbcc485e8964d1b86a4722f58fb37e0d8e8e9885094a262
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/oecore-d5342=
ffc570d47a723b18297d75bd2f63c2088db.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10/oecore-d5342ffc570d47a7=
23b18297d75bd2f63c2088db.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.10
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.10
Git Revision: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
Release Artefact: bitbake-696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
sha: fc83f879cd6dd14b9b7eba0161fec23ecc191fed0fb00556ba729dceef6c145f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/bitbake-696c=
2c1ef095f8b11c7d2eff36fae50f58c62e5e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10/bitbake-696c2c1ef095f8b=
11c7d2eff36fae50f58c62e5e.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.10
Git Revision: 3996388e337377bedc113d072a51fe9d68dd40c6


---------------
Contributors
---------------
Adrian Freihofer
Aleksandar Nikolic
Alexander Kanavin
Alon Bar-Lev
Alper Ak
Andrew Kreimer
Antonin Godard
Archana Polampalli
Ashish Sharma
Changqing Li
Christos Gavros
Deepesh Varatharajan
Divya Chellam
Divyanshu Rathore
Enrico J=F6rns
Etienne Cordonnier
Gu=F0ni M=E1r Gilbert
Haixiao Yan
Harish Sadineni
Igor Opaniuk
Jeroen Hofstee
Lee Chee Yang
Nguyen Dat Tho
Niko Mauno
Peter Marko
Praveen Kumar
Priyal Doshi
Rogerio Guerra Borin
Shubham Kulkarni
Soumya Sambu
Steve Sakoman
Sunil Dora
Trevor Woerner
Vijay Anusuri
Virendra Thakur
Vyacheslav Yurkov
Yi Zhao
Yogita Urade
rajmohan r

---------------
Known Issues
---------------
There is an issue where the target libsoup-2.4 build may fail if apachectl =
is present on the build host. The issue only affects test binaries which ar=
en't actually used. The issue can be fixed by disabling the tests or updati=
ng to more recent changes on the scarthgap branch which fix this.



---------------
Security Fixes
---------------
binutils: Fix CVE-2025-1153 CVE-2025-1179 CVE-2025-1180 CVE-2025-1182
connman: Fix CVE-2025-32366 CVE-2025-32743
curl: Fix CVE-2024-11053 CVE-2025-0167
elfutils: Fix CVE-2025-1371
ffmpeg: Fix CVE-2024-7055 CVE-2024-32230 CVE-2024-35366 CVE-2024-36613 CVE-=
2024-36616 CVE-2024-36617 CVE-2024-36619
git: Fix CVE-2024-50349 CVE-2024-52006
glib-2.0: fix CVE-2025-3360 CVE-2025-4373
iputils: Fix CVE-2025-47268
libpam: Fix CVE-2024-10041
libsoup-2.4: Fix CVE-2024-52530 CVE-2024-52531 CVE-2024-52532 CVE-2025-3290=
6 CVE-2025-32909 CVE-2025-32910 CVE-2025-32911  CVE-2025-32912 CVE-2025-329=
13 CVE-2025-32914 CVE-2025-46420
libsoup: Fix CVE-2025-4476 CVE-2025-32906 CVE-2025-32909 CVE-2025-32910 CVE=
-2025-32911 CVE-2025-32912 CVE-2025-32913 CVE-2025-32914 CVE-2025-46420
libxml2: Fix CVE-2025-32414 CVE-2025-32415
openssh: Fix CVE-2025-32728
perl: Fix CVE-2024-56406
ppp: Fix CVE-2024-58250
python3-jinja2: Fix CVE-2024-56201 CVE-2024-56326 CVE-2025-27516
ruby: Fix CVE-2025-27221
sqlite3: Fix CVE-2025-3277 CVE-2025-29087 CVE-2025-29088


---------------
Fixes
---------------
binutils: stable 2.42 branch updates
bluez5: add missing tools to noinst-tools package
bluez5: backport a patch to fix btmgmt -i
bluez5: make media control a PACKAGECONFIG option
build-appliance-image: Update to scarthgap head revision
buildtools-tarball: Make buildtools respects host CA certificates
buildtools-tarball: add envvars into BB_ENV_PASSTHROUGH_ADDITIONS
buildtools-tarball: move setting of envvars to respective envfile
contributor-guide/submit-changes: encourage patch version changelogs
cve-check.bbclass: Fix symlink handling also for text files
cve-update-nvd2-native: Revert "cve-update-nvd2-native: Tweak to work bette=
r with NFS DL_DIR"
dev-manual/sbom.rst: fix wrong build outputs
docs: Fix dead links that use the DISTRO macro
docs: conf.py: tweak SearchEnglish to be hyphen-friendly
docs:conf.py: define a manpage url
ffmpeg: upgrade to 6.1.2
git: upgrade to 2.44.3
glibc-y2038-tests: remove glibc-y2038-tests_2.39.bb recipe
glibc: Add single-threaded fast path to rand()
glibc: stable 2.39 branch updates
initscripts: add function log_success_msg/log_failure_msg/log_warning_msg
libatomic-ops: Update GITHUB_BASE_URI
manuals: remove repeated word
migration-guides: add release notes for 4.0.26, 5.0.8, 5.0.9
module.bbclass: add KBUILD_EXTRA_SYMBOLS to install
perl: upgrade to 5.38.4
perlcross: upgrade to 1.6.2
poky.conf: bump version for 5.0.10
poky.yaml: introduce DISTRO_LATEST_TAG
python3-jinja2: upgrade to 3.1.6
ref-manual/release-process: update releases.svg
ref-manual/variables.rst: HOST_CC_ARCH: fix wrong SDK reference
ref-manual/variables.rst: WATCHDOG_TIMEOUT: fix recipe name
ref-manual/variables.rst: add manpage links for toolchain variables
ref-manual/variables.rst: add missing documentation for BUILD_* variables
ref-manual/variables.rst: document HOST_*_ARCH variables
ref-manual/variables.rst: document INHIBIT_DEFAULT_RUST_DEPS
ref-manual/variables.rst: document INHIBIT_UPDATERCD_BBCLASS
ref-manual/variables.rst: document SSTATE_SKIP_CREATION
ref-manual/variables.rst: document WIC_CREATE_EXTRA_ARGS
ref-manual/variables.rst: document autotools class related variables
ref-manual/variables.rst: document missing SDK_*_ARCH variables
ref-manual/variables.rst: document the IMAGE_ROOTFS_MAXSIZE variable
ref-manual/variables.rst: document the INITRAMFS_MAXSIZE variable
ref-manual/variables.rst: improve the PKGV documentation
ref-manual/variables.rst: update ROOT_HOME documentation
ref-manual: kernel-fitimage.bbclass does not use SPL_SIGN_KEYNAME
scripts/install-buildtools: Update to 5.0.9
sphinx-lint: missing space after literal
sphinx-lint: trailing whitespace
sphinx-lint: unbalanced inline literal markup
systemd: Password agents shouldn't be optional
systemd: upgrade to 255.18
test-manual/intro: remove Buildbot version used
tzdata/tzcode-native: upgrade 2025a -> 2025b
u-boot: ensure keys are generated before assembling U-Boot FIT image
util-linux: Add fix to isolate test fstab entries using CUSTOM_FSTAB
wic: bootimg-efi: Support + symbol in filenames


--_000_BL4PR11MB879745AB593E730BD8200A54B975ABL4PR11MB8797namp_
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
We are pleased to announce the Yocto Project 5.0.10 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/poky-ac257900c337549=
57b2696529682029d997a8f28.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-5.0.10/poky-ac257900c33754957b2696529682029d997a8f28.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.10/poky-ac257900c33754957b26965296=
82029d997a8f28.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.10=
/poky-ac257900c33754957b2696529682029d997a8f28.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-5.0.10/testreport.txt</=
a><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.10 Releas=
e Notes<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.10<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ac257=
900c33754957b2696529682029d997a8f28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-ac257900c33754957b2696529682029d997a8f28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ddca7e54b331e7=
8214bea65b346320d4fbcddf4b51103bfbbd9fc3960f32cdc7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.10/poky-ac257900c33754957b26965296=
82029d997a8f28.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.10/poky-ac257900c33754957b2696529682029d997a8=
f28.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.10<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d5342=
ffc570d47a723b18297d75bd2f63c2088db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-d5342ffc570d47a723b18297d75bd2f63c2088db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: daa62094f2327f=
4b3fbcc485e8964d1b86a4722f58fb37e0d8e8e9885094a262<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.10/oecore-d5342ffc570d47a723b18297=
d75bd2f63c2088db.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.10/oecore-d5342ffc570d47a723b18297d75bd2f63c2=
088db.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.10<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ab073def6487f2=
37ac125d239b3739bf02415270959546b6b287778664f0ae65<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.10/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.10/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d811=
6daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.10<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 696c2=
c1ef095f8b11c7d2eff36fae50f58c62e5e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-696c2c1ef095f8b11c7d2eff36fae50f58c62e5e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fc83f879cd6dd1=
4b9b7eba0161fec23ecc191fed0fb00556ba729dceef6c145f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.10/bitbake-696c2c1ef095f8b11c7d2ef=
f36fae50f58c62e5e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.10/bitbake-696c2c1ef095f8b11c7d2eff36fae50f58=
c62e5e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.10<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 39963=
88e337377bedc113d072a51fe9d68dd40c6<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alon Bar-Lev<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alper Ak<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Andrew Kreimer<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Christos Gavros<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divyanshu Rathore<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Etienne Cordonnier<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Haixiao Yan<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Igor Opaniuk<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jeroen Hofstee<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Nguyen Dat Tho<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Niko Mauno<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rogerio Guerra Bori=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Shubham Kulkarni<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sunil Dora<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Woerner<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Virendra Thakur<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vyacheslav Yurkov<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rajmohan r<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">There is an issue w=
here the target libsoup-2.4 build may fail if apachectl is present on the b=
uild host. The issue only affects test binaries which aren't actually used.=
 The issue can be fixed by disabling
 the tests or updating to more recent changes on the scarthgap branch which=
 fix this.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-1153 CVE-2025-1179 CVE-2025-1180 CVE-2025-1182<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">connman: Fix CVE-20=
25-32366 CVE-2025-32743<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
11053 CVE-2025-0167<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">elfutils: Fix CVE-2=
025-1371<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
4-7055 CVE-2024-32230 CVE-2024-35366 CVE-2024-36613 CVE-2024-36616 CVE-2024=
-36617 CVE-2024-36619<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2024-5=
0349 CVE-2024-52006<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: fix CVE-2=
025-3360 CVE-2025-4373<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-47268<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10041<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2024-52530 CVE-2024-52531 CVE-2024-52532 CVE-2025-32906 CVE-2025-32909 CV=
E-2025-32910 CVE-2025-32911&nbsp; CVE-2025-32912 CVE-2025-32913 CVE-2025-32=
914 CVE-2025-46420<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
25-4476 CVE-2025-32906 CVE-2025-32909 CVE-2025-32910 CVE-2025-32911 CVE-202=
5-32912 CVE-2025-32913 CVE-2025-32914 CVE-2025-46420<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-32414 CVE-2025-32415<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-32728<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: Fix CVE-2024-=
56406<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ppp: Fix CVE-2024-5=
8250<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-jinja2: Fix=
 CVE-2024-56201 CVE-2024-56326 CVE-2025-27516<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2025-=
27221<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-3277 CVE-2025-29087 CVE-2025-29088<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
42 branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez5: add missing=
 tools to noinst-tools package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez5: backport a =
patch to fix btmgmt -i<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez5: make media =
control a PACKAGECONFIG option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-tarball:=
 Make buildtools respects host CA certificates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-tarball:=
 add envvars into BB_ENV_PASSTHROUGH_ADDITIONS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-tarball:=
 move setting of envvars to respective envfile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes: encourage patch version changelogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check.bbclass: =
Fix symlink handling also for text files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Revert &quot;cve-update-nvd2-native: Tweak to work better with NFS DL_=
DIR&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/sbom.rst=
: fix wrong build outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Fix dead link=
s that use the DISTRO macro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: conf.py: twea=
k SearchEnglish to be hyphen-friendly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs:conf.py: defin=
e a manpage url<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: upgrade to =
6.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: upgrade to 2.4=
4.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc-y2038-tests: =
remove glibc-y2038-tests_2.39.bb recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Add single-t=
hreaded fast path to rand()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">initscripts: add fu=
nction log_success_msg/log_failure_msg/log_warning_msg<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libatomic-ops: Upda=
te GITHUB_BASE_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">manuals: remove rep=
eated word<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.26, 5.0.8, 5.0.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">module.bbclass: add=
 KBUILD_EXTRA_SYMBOLS to install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: upgrade to 5.=
38.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perlcross: upgrade =
to 1.6.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml: introduc=
e DISTRO_LATEST_TAG<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-jinja2: upg=
rade to 3.1.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/release-=
process: update releases.svg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: HOST_CC_ARCH: fix wrong SDK reference<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: WATCHDOG_TIMEOUT: fix recipe name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: add manpage links for toolchain variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: add missing documentation for BUILD_* variables<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document HOST_*_ARCH variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document INHIBIT_DEFAULT_RUST_DEPS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document INHIBIT_UPDATERCD_BBCLASS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document SSTATE_SKIP_CREATION<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document WIC_CREATE_EXTRA_ARGS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document autotools class related variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document missing SDK_*_ARCH variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document the IMAGE_ROOTFS_MAXSIZE variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document the INITRAMFS_MAXSIZE variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: improve the PKGV documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: update ROOT_HOME documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: kernel-=
fitimage.bbclass does not use SPL_SIGN_KEYNAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: missin=
g space after literal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: traili=
ng whitespace<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: unbala=
nced inline literal markup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Password a=
gents shouldn't be optional<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 255.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/intro: =
remove Buildbot version used<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade 2025a -&gt; 2025b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">u-boot: ensure keys=
 are generated before assembling U-Boot FIT image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: Add fix=
 to isolate test fstab entries using CUSTOM_FSTAB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wic: bootimg-efi: S=
upport + symbol in filenames<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879745AB593E730BD8200A54B975ABL4PR11MB8797namp_--

