Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1E4C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 07:38:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by mx.groups.io with SMTP id smtpd.web11.6050.1737099525500484813
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2025 23:38:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=SuLwmeVJ;
 spf=pass (domain: intel.com, ip: 192.198.163.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737099525; x=1768635525;
  h=from:to:subject:date:message-id:mime-version;
  bh=mwhlnxSojOsLBI4psQEuDV/3/je+QVoh3LaG0PR5lLQ=;
  b=SuLwmeVJZ8d/G6U3OIR1St5Ywk2p9VtIIlN8qt3CqgrgQKmGBAKMomqe
   IZI1L4uaTQ9TPZ8FahGBsiX6yY2Eyu1UPa+L0QqyivTbqgLIiGMHaet3T
   Aneu8c+7dnRIj7sPfIRahNO8Z/+SGVHi2+GP0jMH+TTOkF2YYu/EkEK9D
   /5DJlelukWuzwdyF2IkqJxu9aLoMaej9zAPenN/KifuCLrhV6/c4lTaYF
   RPHX62B6YCfqDlEnSatnxbPFRzrMyozfhnq1Y0MehvdvM7a88dT85Aykk
   0QbUd4ue0Althy2yUw+0V4kvrwcbJjTmoRs2BByeOvvZHUrT6p39otzS/
   Q==;
X-CSE-ConnectionGUID: VTSXKhy1TSSy6gf7EOt5pA==
X-CSE-MsgGUID: KP6RCSWcRSCMfTQj1PgtFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40330394"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; 
   d="scan'208,217";a="40330394"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2025 23:38:42 -0800
X-CSE-ConnectionGUID: G5UYUmJwSW+YrYRUzA1xow==
X-CSE-MsgGUID: +ur6g2cXT9+/xtjepvR6uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; 
   d="scan'208,217";a="105519407"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 16 Jan 2025 23:38:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 23:38:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 23:38:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 23:38:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NSECTgqqZ+RP93oaQXplw9UBsMZ71Jb/mu8VpKCGUCc2vsZGFIKyhnpp0T6L05Vh70OZdhq9MA2dpwIYJmzcCHO6yz9nm/cVEhD4XoO0DFbdSiCKiIjbE02n4nti7nCTWsc9GJOlS6sZkkzxAueGE6jV6+ZjQ+kil2HMvKW5iQVdRoX2+4yuSKXgVIaa9O8SVEZt4YCm0WtV0EA6L2A/IYlV90THWXxEIAsJvcRMYK7oYrLYQsCyK56KweHw89L3PX+n7wBny+5v6vDADrjLrNcM2QnVIP5pCheA/MxmFGOFSFfKwgZ3FNPjGg1Gu/h59m14MSvG4pdYce3o/LCarg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bT1UinNLI/6aw9+eb+47EyOmpIP4D6ZEyo8lSpwKEY8=;
 b=Ztqm9ZX5iyllEryD/qSC68XfE2uJBnjH5XYwydqj5SJYPsyJ8WD0o/LYmaNS+S6zgz22s7dXEwkEOMEFAkBVGs7dy1xFeHkozYAc5RIsMGTpqlm6Mllgcosn1ubmQTEzEu0z8Fc4kfQBqf0Ou1Nqg9vOGaLPJ/j4T5Jf6pociKf/Ypr0Nt08CN2YjqgCeyGM/6ebN3WRONMvfdTP/JHbjxj+vNP8ZfcArzIi5LDjYvf//VdKbjkWZke9DjN2Nk5Vx22Li3c/LFx9ZxAsM+xOnWbUIUP0jc2mfITtvNZpmCCOoSE6yqA7M8dH2HXYVHsVpawez8k/SMdhVW/9dLjk8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CY8PR11MB7057.namprd11.prod.outlook.com (2603:10b6:930:53::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Fri, 17 Jan
 2025 07:38:19 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 07:38:18 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.2 (yocto-5.2_M1) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.2 (yocto-5.2_M1)
 Now Available
Thread-Index: AdtosLvKE8UgTyDwQYSIn2QF6cFXLQ==
Date: Fri, 17 Jan 2025 07:38:18 +0000
Message-ID: <BL4PR11MB879725025C0639B94AF84D43B91B2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CY8PR11MB7057:EE_
x-ms-office365-filtering-correlation-id: de83828e-752f-468f-4a52-08dd36c9e913
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+5DVkgDIPN9Qk1CC1pwBiy94QXwEMu+EqAQidCzuUn1TTdeb/dQNtA0+HW+q?=
 =?us-ascii?Q?gLpX3F+PnO3CH6gH5pu3X0tZCrwz/Cyh5gAmFg9dHiTJhL+XYB7z8SV3TxBv?=
 =?us-ascii?Q?wh61VD6HwQzZnEfsUaJxnATg/x/K75+IJcAepFBqVz1StOaSSIy8ztbjkRXx?=
 =?us-ascii?Q?6PEF53P/0ZQZG1j9YOeI47hvgtksDZefvmfbI4P6fUQX8RNqa0I8VLCpLvRr?=
 =?us-ascii?Q?LycDMHOXfyKs09gR/OLuXai1wCiF+Qs2Mxe1andurAQPQveTRky9fwhZk8Vj?=
 =?us-ascii?Q?YgCOpUPigBaw9PxqVa5DwnasyU0RPS4vw35SDv6SL0FBdDgLNNxIMdfMSrEh?=
 =?us-ascii?Q?6jFUxbG9+5V23zQsMJKcKQ9xXdMrxfrI/tARqSsHSA91c6gacI0LdXxHb8cO?=
 =?us-ascii?Q?6OXJO7r0J3hSblyjKxEWJlL3jI+qMBk/S5e5DcZV3ZPXMw0rZBZDNVPLQaDh?=
 =?us-ascii?Q?NCsGrHXwLzXFt7I2Jf0mhbThAK+Y4V8XCIlfxSTxmkE2zMUBxQTX+gukoXI+?=
 =?us-ascii?Q?qMa69iOZ4W9vNPjsvJpw5myKMEpXF0ZYHWkbF4NtOgb7oQBI4AyK+BazrWRe?=
 =?us-ascii?Q?qCRsb5HI1QaZARQntZd+D0SOd6AHIanLmdzsLpHl2onUac2dgGdFHgCpmVd9?=
 =?us-ascii?Q?KHGBa64WBktsisbSVBob7WHFdbMhmnccf5k1r1tZraUA2k+o7rPSUVmZYLUh?=
 =?us-ascii?Q?Z2XhjZd5Zw1CSyHKar7Gbye0LlzMg19NDjezkdaeoaTZEiIjXr/Hw2QQcRyu?=
 =?us-ascii?Q?YOYQpxwCIxoFwVczp4mO3oeuhtWo7ssSQX2379t3tIcIe6CO6wB9Yre76jKw?=
 =?us-ascii?Q?SLyJnVjU+eHqKkyxKHJuWjXFVsYRTHceCvyT5QNcA3rgnEQEnku9I2J6nV+w?=
 =?us-ascii?Q?YLs/x8ZTTkZ/tXfxoBT7ZBmPw0L9N7LcSYPtima30GUdJZsO8lxxBZjT5icU?=
 =?us-ascii?Q?1S5XZnSlrW27Rrj/OoZtU1vz1r/qsEAtgbk1abzuD4mb0tVCm6VxxORx3HbI?=
 =?us-ascii?Q?0SbVx6ibXshnCAwvEEiQNdKeithQfRVp5nGAeYWWgedLeTfI/DYYjHeAM9wy?=
 =?us-ascii?Q?fb2tzDte0kCElgkMCCqTpBFTxZ4d6XySlXtV3wZArzWmKxn7UDgOtJKz1YE7?=
 =?us-ascii?Q?v7hzfPfNJvB3sNIrekTbpsw5F1YmvflpsIYrT6CaljlJdtY3aX9031CcI4hA?=
 =?us-ascii?Q?iMndziJbv/ENumbJl0v16jzjeiVXAD0/oiYrUjmgBLPqT+c2Hah7VkVDcNFc?=
 =?us-ascii?Q?2Gr8sAzIyHVAj8Epif/MEUzYZmdRto0u3PJZPof5bYRdonR8DU7tqIHbQWtm?=
 =?us-ascii?Q?rVkHtBHH6nSoLrmrAtrlm6im7dmWt1Dwa8NOvVKBjbEljPPSzScfrXCZJc59?=
 =?us-ascii?Q?JwYlfRQli1gb0UPrRhfLqAuRSTHS?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gA41wVor2MDp5TxfaIj884O9HpjwZOgGbTMrNifMDqyxQloznrl7garQZwx3?=
 =?us-ascii?Q?3ZXJ+4xip+M76TF/WeG8koupIFtINrAedBsOzJ/M+QeVK33BBjENSTk97dp6?=
 =?us-ascii?Q?g3F1eg9ucX7bF/M/r8kWVonLhIw4flSybLjgAhYkzKRdViQB2Mu8tcHLxuwp?=
 =?us-ascii?Q?17LeQKXi6jTvJH5qkiprDfFQnSvaPtujespVfpBh95b3LiEsAl77JAfcF1xH?=
 =?us-ascii?Q?fbqYnN9Dj/quo/YFD0QwM9qqVACTkFtx5SVo0C04FGxWxmKRGJXSLRlK1Cng?=
 =?us-ascii?Q?FKY4Yxr5OBrKmCj4DVzb/TuRmc5Wk+P72Gd/+VcKbDBg3cRzC6ibSRIWlId3?=
 =?us-ascii?Q?vRe5EP0KXxydhW7Wqx5NA7f1jLvUseo0Wicx5QlXFg/p1gf9JLeWInOD/yQA?=
 =?us-ascii?Q?ANT4mrLvt5iwVoikF0dTjvmjtANef9gTJN92g5qBV+hYrjGgkJw+WbKeeJ9B?=
 =?us-ascii?Q?4MyUPYOxDiNFr+iFbOIaYSPNCohQAn+lTScmxKxyL9+Nrz+KuOeR8s039J7F?=
 =?us-ascii?Q?Cx6+k7fLnHb8WqWXfvZcPICXJ/uIACOhJUV7/HPyMZDDodaTKKZ/F/q0SM1A?=
 =?us-ascii?Q?2KCks4RDOaBghctScDbBMsVZzPA9QYwFaNxDNEEvLfLZ0lkPjPTa6u6Yj1hp?=
 =?us-ascii?Q?pvFvOeMRFrJCZIBc0gNtBNCocko+jAvJhO6s+p7UBIygbVLKh4JAgoi9AP6J?=
 =?us-ascii?Q?E43UlFcsqn7RioodAq44xJTKv1ySd78zzUqLBLa6N+dvicfC2V5U3QrwcCp3?=
 =?us-ascii?Q?sqaGemSJQMosYeUAbTjPOXHZpYZuTnw2edxp9nUkH8naIC58uoGrPyI9QRxm?=
 =?us-ascii?Q?HJuhIDUsG0FgcNk2P4uh7f81YYfZ2BW+DqWOAOvsdlEkhq0BkE03cxikQN1B?=
 =?us-ascii?Q?HkRyXHDaf7wjZOqzPSe/AHvktYq5LmQnWDwEfTlGZXDPF/GtlqdU8B0iRS4S?=
 =?us-ascii?Q?b/uGSpWhsYzQwfx/pkXc+ssQcnrrS9ubCHBEiArzGhNxW+BIIUYv4Y+y1h6W?=
 =?us-ascii?Q?1AqM1LKJ1ymsUmfVfWQkC1HRg7GTKN75NwURWeGxYmb/fDsfF3RO6+86TIY+?=
 =?us-ascii?Q?k9vD3vK8+lXQuQTI3G8SI2E/dUT+TeibbZWoOVW97BMLMb8L113GmSiOWgoL?=
 =?us-ascii?Q?EFi+Ug88no4b8V140Lgj3yzrmgPsyqRzm4szNOHnumtK4MdEklfXqdAdt/iT?=
 =?us-ascii?Q?mpWRl3xouHLifyS50Cn2EhO8Lh8/YIqraWd7nek8T1tAn/F8gC0UT+OwR5Fw?=
 =?us-ascii?Q?caCgj281a+eAqh4XShSa/hvetuLKhWNCj7YBcCU/ZOaIVobi88l8HyJdNc97?=
 =?us-ascii?Q?oHALK843O0XWEzwBrL7/UkEW4jzKEUwMcfNXlxS2PWkZUni2PigCT9SnCBeb?=
 =?us-ascii?Q?yydHS1dOcgllgXYcCAuCZ9koI3wwN7d2EpHHI+b2LNLktt8HKmrg5bwDSDIL?=
 =?us-ascii?Q?bVwlBN2vqAIa4kEk9bRzldTU0Z6xMC/hypQnOnfAOn27DoQFXjhU3eLLeQXY?=
 =?us-ascii?Q?eVNFs8Jrjfob9bYQIpfs6DPcRuHoNzPY3630mWn7wTpcaLuE6comvuVZ71Ao?=
 =?us-ascii?Q?F15oggloqwyRz7ur2HtRFigUwmzYQyf8MY+9GVoL?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879725025C0639B94AF84D43B91B2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de83828e-752f-468f-4a52-08dd36c9e913
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2025 07:38:18.2856
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bdiR6D1EsotCP2c7iz3jVICvVTDqUFxgLw+KeNNkTC3IIquWlpoCJi7sJA9R9MVTN35IQceUxYRkICYQeKkugg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7057
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 07:38:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64572

--_000_BL4PR11MB879725025C0639B94AF84D43B91B2BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the first milestone release for Yocto Project 5.=
2 (yocto-5.2_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M1

bitbake: ba90fe673aa87cb0cda9b2e465ebe2063551f527
meta-agl: c036aa7b02f8cdf0f9190358bb8d8128c47c689b
meta-arm: b2c43dbf9b4e7c22038bdd5d01633962afe8f18f
meta-aws: 74dc7bc21a81c82fa9640997da206ee097704341
meta-clang: 147349b7334b8a25b96bb08c2361ae0ae95e7eb6
meta-intel: d0150964ca7c6a83d38ba54cda3e19b34d274f80
meta-mingw: 220a8ad605d60247df27d3a66facc89c1854ed10
meta-openembedded: da51096bcf257723a929c799bc6934877de81fa5
meta-virtualization: c1f668c337a56457acacbbefe4d1f1989202ba95
oecore: e345b34703d4fa5e0bc9a82ac33b7c1fd84f99fe
poky: fafd1db382cc24c53c17170df82780f9d593ca1f


Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M1/te=
streport.txt


Notes:

During QA, an issue was identified with beaglebone:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15703
This issue was tracked to an issue with the new 6.12 kernel and a fix has b=
een merged to master for this.

A second issue was also identified with beagleplay, a newly tested platform=
:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15704
This issue is again 6.12 kernel related and the exact issue is still being =
root caused. It is specific to that hardware platform and other aspects of =
the release are not affected.

During the build of this release there were also some other issues encounte=
red. A meta-agl-core issue was encountered which was fixed in their layer. =
There was a CVE database issue in testing which was infrastructure related =
and a workaround is now in place for that. There was also a rare intermitte=
nt dnf test failure which is still being investigated.


Thank you.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--_000_BL4PR11MB879725025C0639B94AF84D43B91B2BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the first milestone release for Yocto Project 5.2 (yocto-5.2_M1) is=
 now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M1">http://do=
wnloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M1</a><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: ba90fe673a=
a87cb0cda9b2e465ebe2063551f527<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: c036aa7b0=
2f8cdf0f9190358bb8d8128c47c689b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: b2c43dbf9=
b4e7c22038bdd5d01633962afe8f18f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: 74dc7bc21=
a81c82fa9640997da206ee097704341<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: 147349b=
7334b8a25b96bb08c2361ae0ae95e7eb6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: d015096=
4ca7c6a83d38ba54cda3e19b34d274f80<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: 220a8ad=
605d60247df27d3a66facc89c1854ed10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
da51096bcf257723a929c799bc6934877de81fa5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: c1f668c337a56457acacbbefe4d1f1989202ba95<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: e345b34703d=
4fa5e0bc9a82ac33b7c1fd84f99fe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky: fafd1db382cc2=
4c53c17170df82780f9d593ca1f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M1/testreport=
.txt">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2=
_M1/testreport.txt</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
Notes:<br>
<br>
During QA, an issue was identified with beaglebone:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D15703">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D15703</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">This issue was trac=
ked to an issue with the new 6.12 kernel and a fix has been merged to maste=
r for this.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A second issue was =
also identified with beagleplay, a newly tested platform:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D15704">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D15704</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">This issue is again=
 6.12 kernel related and the exact issue is still being root caused. It is =
specific to that hardware platform and other aspects of the release are not=
 affected.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">During the build of=
 this release there were also some other issues encountered. A meta-agl-cor=
e issue was encountered which was fixed in their layer. There was a CVE dat=
abase issue in testing which was infrastructure
 related and a workaround is now in place for that. There was also a rare i=
ntermittent dnf test failure which is still being investigated.<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you.<o:p></o:=
p></span></p>
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
</div>
</body>
</html>

--_000_BL4PR11MB879725025C0639B94AF84D43B91B2BL4PR11MB8797namp_--

