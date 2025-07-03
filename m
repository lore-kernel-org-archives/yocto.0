Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A964C8303C
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 02:23:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by mx.groups.io with SMTP id smtpd.web11.13339.1751509410477108984
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jul 2025 19:23:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=SW3f6y+n;
 spf=pass (domain: intel.com, ip: 192.198.163.17, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751509410; x=1783045410;
  h=from:to:subject:date:message-id:mime-version;
  bh=fsDP8TS6vsWlqc7b2NeyMOJGzL0DKhHnXaOeNxTFLc8=;
  b=SW3f6y+n/q/fpxOrIpPQ5x7eZzKdEMU9uWxK3W4m8ygE7ZwZS9bOuX5C
   iUfuuMPLUQ3Ii9B6VSgge9Nig0eZpY4i1Etnin+f8MXHsDlSMxVtON5a3
   dZWfsZAENuu9Loi1hPjD2BDcdLqpkGyuFpUFVHxiGKPr8EjLLdruYrSE8
   2Wpv46+oHGHJ/NSzUbDISa57FpFcEUOVKjQJRM9WimSXKN4U5lLAaa9M9
   R3HjZjPBCuL1b1scyQUWJbXF16cANd5L/cfhrjdN64WUnrJ/kRUm8eOSa
   z5QBmjIZywTRBG4Aj6oAfzey9GYot0v/Sp4aYypXBz1jC6Ya+IqFYzW3e
   A==;
X-CSE-ConnectionGUID: 0RzcPkDxRN6y+il7HPnaFg==
X-CSE-MsgGUID: N/TrBsTzTH69kd7SAme+rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53750674"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; 
   d="scan'208,217";a="53750674"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2025 19:23:30 -0700
X-CSE-ConnectionGUID: bvQRonMBRwWo4CWy3llDQQ==
X-CSE-MsgGUID: Ut6TXg8wRtm6WIO0fsxabg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; 
   d="scan'208,217";a="154375590"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2025 19:23:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 19:23:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 19:23:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 19:23:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/y64uKbL1qFcCa6Mu603aKvTSnuYNxW24YnsMHYQSAT6V8hOk7rPtQNn9vm6J7SOdp7d8AjSiare8Dwbv1BLd8ugx6TXfxn9HZWZt24hUaZZ9cf2IDbFAB7lsXkno1HormHdbk80QH4lC2xakwfbVqa08vZPqve464l56Al04ROO16sg1Qg2ocv6NMRP0P8j9VsKv1v4CSv6756O4wPnRaRJMZBi/47EHslgUSsF/aXPJaqoMiVgqNQwucip6Xem0CqsCJxGxP19xAosjMtPLyJ/waHkfeHWnW6IH0JRfWgCcTXpH95v3GHtJ0ifY+X/OP8E5yg1bxciqUCfZCSVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Elxh+T8zINadWRNvQtQ9luGgT/pgx1783BvQ9wLBrw=;
 b=UYa+/59COIunZXNh0Y2cwT1Dd24Hy6Es17bItPlFhrvqhuzaoxFs3prNLDvm/MMOSq8gAp7mps3h2LZj0fto4Q6BspS27VMFU6v7lIBs+9DMSfCtzeynQxBOTTgs1fwm1z00Xn9DmHyZ/arj6AI5XhBWGNkltSvC1EnEDu71+rcsjTfVME8HMS3rr19S1RF8fp1TwxnmGme/Uwn6aCjXrFsAhSFvCZS93aEG/wUsTwkJp8ZGv9D3v538biGC3Bbt4dRZfmtUA5BuzhsC4h2TA0GJeD0k99ufvmjcQrzG0bJ+fpC4v7oSddTsxNhh/StI9QMQTc3RF+QpdMXduz+skA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH7PR11MB8480.namprd11.prod.outlook.com (2603:10b6:510:2fe::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.32; Thu, 3 Jul
 2025 02:23:26 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8901.018; Thu, 3 Jul 2025
 02:23:26 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.3 (yocto-5.3_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.3 (yocto-5.3_M1)
  Now Available
Thread-Index: Advrv5KDm2Bs2sbtRjSOiXPQtykORA==
Date: Thu, 3 Jul 2025 02:23:26 +0000
Message-ID: <BL4PR11MB8797FC5357AFFE4E35F5F407B943A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH7PR11MB8480:EE_
x-ms-office365-filtering-correlation-id: 1559d82f-4f27-45fc-aa48-08ddb9d897a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Zt+qdYLih44fDNOfL3/2hFh5Jr+f4vLc4EG9oQRLLaCFc2BA6AqwnNWmvGMe?=
 =?us-ascii?Q?QMsfM5Zof0u+I6fYebVTA0KrbMEpS9w+sNfBcBHnBNEi0/c9/c8yZLg4AxXh?=
 =?us-ascii?Q?uWLlrtUxUiUikL0eGGcU4kwWsFAAYF/9pHbIfHtVwyIvwFj+jaLVsKytztYv?=
 =?us-ascii?Q?s1+3KOhaC82UBRUe7RqrLaesNohYozcIntXEBrK2wkg3JlFqA11IccJZo4xC?=
 =?us-ascii?Q?e8ymVECv8xmMFPfie66um783tuiNOgBcnop7ty49BdTJ30EANswoKFfwC0Wc?=
 =?us-ascii?Q?BRHxcnL4GT41EkM4S6kWG1Bb3I3FgWE5Ftdkzcf/pOmVjSIbusGSgWeurgZc?=
 =?us-ascii?Q?QiRCfRK0HBDRwPuIugMUFFL97oFmEVFD8CE+UcaanLYPQGYbl1CHhUSV2rqZ?=
 =?us-ascii?Q?bmsbQYW6aKrVjmykxnhju5fJk1DWLS8h1iJKSSDsHRK+KuczHEPnr61Z+nao?=
 =?us-ascii?Q?joCusSWAaIUqtV1siUbPGnQrYOgwNvVlxh85BGAehtR9OElR7Ie5Fsc1ZGMt?=
 =?us-ascii?Q?INA6o2GOVcTtsMsGKQ5W8yJcqWemgbywFNoNau1wbepTmnhwP6N7TqAnKHC9?=
 =?us-ascii?Q?33uoo8d8FKRVzEPKNiD1p5tU3WyIfok80yGzjVTGW06HPNQUK/KkudVYUShr?=
 =?us-ascii?Q?VSSEEvf5FZ52fkv3Ybf0T/1YMKMSTjLtzYw/fsraAnM+1oYAfLkzFvENEraj?=
 =?us-ascii?Q?I2Yd3EWSqBceXkuAWqDWWktsEFFJM5M52zkN8LvBBwJNhWKpdxcnep1h8Dqk?=
 =?us-ascii?Q?gmD25ssdPc4nXcNsZtnyQ+jOb4xw2kayeG+neycoLO69zBkFMC2OMAIRsgrA?=
 =?us-ascii?Q?nytup6qqe60lYjRwkvpJfD6Te9lkGRB2VvW4+FNMt/C312Tuz/22gapzl7gD?=
 =?us-ascii?Q?UPc1/xXfAH0VKk5ISrq6sDaqi/hkt4lE5icF3w0j0h7GjVQix/L1Y20lHMev?=
 =?us-ascii?Q?weLRIjMhw4hmXsq72F3sMawyxSfZwoluTEvSuC+fKKlOqRuss/E0l25pa0TD?=
 =?us-ascii?Q?zXiY93fqAus4aBeWtW9qNVyOWWrfBeYy5KyrWQvlkMLmKc/KjlHkJtGmVrHr?=
 =?us-ascii?Q?p4DXktmSR47U2rrYY8+6FkVNf6sxBK4RqYMFqdAjaNoQ4DfS0zgW4Tb4HdM7?=
 =?us-ascii?Q?CnOHZ6VyiVDt1A90mPWID1lThoiv8XIxcAz2JnxulKrxlwxevXaSwnSW26/Y?=
 =?us-ascii?Q?HBvBc9i3ommagj/1htOU7DdiOPaKnsAbZaTR+9F1ZMaPRn6wzYglq3p8RD43?=
 =?us-ascii?Q?PYelgPP9hnE23wPv3YLFpdWQUuvG32vpo+tDvnSCm/r+Zc55BPtT3U4Q8DJ8?=
 =?us-ascii?Q?xEgWGIOUzhy93E1DSHNqSrPVBU0Ah+AuL2OugFDQVbN8Qj4LtgsIY7NV+AcX?=
 =?us-ascii?Q?1WSIPe+dd5FfSnFbRRS5tk0rmSUdu7QaNwLJ+Is05j/sg5N9CGF267PcMYL4?=
 =?us-ascii?Q?oBEyNMgDV5E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yx6XFJzDXY0Uznwc8yZniLSUMJZQfilRWgEtcA/JcgauscKUWIakS2oU84Tb?=
 =?us-ascii?Q?0ykPkU7nDHYXwcqWAlNSMhcTdKdW91SZ4e9krAmpSCd46rwpp+U8+Eax90ss?=
 =?us-ascii?Q?fHmQdnvx7HxFqfG9hzOJCYDtstFxqJPniDDCJYRPkSePgOP6nVAz7KhC/ks3?=
 =?us-ascii?Q?0bqJoQztKtDfn+69bNMu2MPXGeDWZQkG+3TplouPvmSMni16+nyB25b3OS4v?=
 =?us-ascii?Q?rNDmXMJ7vYjaryJtBIJuBegaoD1wOfhZ6tvUoCfvnshfJsszM55OqPigxwGd?=
 =?us-ascii?Q?wAjIKD/wC/yHDgyChWD6GAZq4/a1Li3lwqAlwqKQUQUCU/VKvy3CsoQMhaXt?=
 =?us-ascii?Q?CyopffcR0pjcIaKGO1Y0oMf++JU4cVDalimz6Inw44yvwO9zKu7Qob5pcMBE?=
 =?us-ascii?Q?Q9CUzKWT0C6AC7Hpq4bwM47XrkbvidR6NWlcVJktTuptAo6EqPzJDZFtv+r4?=
 =?us-ascii?Q?9fOeAdmBbKc/iAIvXjGBqRMXVRweKPP+vIot6hZ9WQqJkGXitADMX81LqQsB?=
 =?us-ascii?Q?GMhViJvof8kJMNxwjXj+kvuDlagDijG61EiP+byD/a4xvzncy6f9dzXC2MbJ?=
 =?us-ascii?Q?xG3H/JXu/XDJTud4CHAAamjBNzzcK1sI6TduuYt5l8RAgwJYy82F3YZKeHT5?=
 =?us-ascii?Q?vhNtpo7nsNZVEeXT3QupLps4FSSjMJqix5lCfZSwzN41eE8qyDwulmnUVRBk?=
 =?us-ascii?Q?U1h/re4fIa6n7IlnYDT2XrFsFeXbZ+atjxWfNqMwTOyiI4GPkD5GSozGt/eu?=
 =?us-ascii?Q?DP1ZYqUvby7Er9y4tx7E/t0CbenZ/8VkeMYYLX9xoA4U8ubETpAqKRRsK/Nn?=
 =?us-ascii?Q?el9Dn08EJFUF+PIgV1Cxka2cyPEPu3QUCgVnC8RH+l+YLm7dBnWMMHfIU0Bw?=
 =?us-ascii?Q?8OfacqtjysmBXc8kEUE8SNvez4cn5h9+CRtyQ7rPEf41UqeFUOX1AfCa9OlZ?=
 =?us-ascii?Q?Sdvz/hanGDfmN4JfSEmoAHzjUtuhY3S+mRtXZZ5q/oxLCMLgcb8VlASBRMO/?=
 =?us-ascii?Q?VszVYawpD1jovW8wGF6l7kFIocOAaLU3r3kHQIlYh3uv6hhhjxXl3yNefgDN?=
 =?us-ascii?Q?6d9I1rjKmGg6ZWYTSoGNK1SV9dvCLuCl8MHncQh17qBk+CWbV9lTdPll6vDB?=
 =?us-ascii?Q?ouxi8hrquVqvIpMH1RKoQ/znxq0qerjsHuXXr8Ex0cPl2zV+wkbePajAalMt?=
 =?us-ascii?Q?/SgDkV8w2bKIxn1/9LovzQNOkiS/T42JO8KqsxMocehMNGQFdzhN576LeTXL?=
 =?us-ascii?Q?rxa4HfHhL5PjuEx4d6UoAZVwiUUyVPbovLmPG8req8Kv4tqm0kx9FReCSsUi?=
 =?us-ascii?Q?AP0b1kcjFvTt6lQQHd/vCIPozFNmsnirDPQu9lKUM4q1FSvtd9xSLuOzrG8I?=
 =?us-ascii?Q?pyphT1IUqT0LLDRpUW8G38OFw1R85Vwf7GWMUG/wIXehzQk75W80Z9YS+0iP?=
 =?us-ascii?Q?z7BKJ8iG7EHWdPgivk2kVpQpNKLLVjMOXy03oQrcd8KKsZB11TAiLhEoeVPN?=
 =?us-ascii?Q?Tk+UeVA69QdFkexMlVG/9QSLx5xTdLHUIJc0+KhSDopTWSuUYnmfeyCDdn/v?=
 =?us-ascii?Q?lWpERvoWesXFYqr/GqEbeLUQWo3639pvvArqL0Zq?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797FC5357AFFE4E35F5F407B943ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1559d82f-4f27-45fc-aa48-08ddb9d897a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2025 02:23:26.3957
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rsIdpnfrSpdJ/96Z/V7tJdEOyRx2H52ypXXpsFNVQy25P5oVHLDuBRIogH1YAf4oBN3yjH/zifPLkOp5WVByWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 02:23:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65597

--_000_BL4PR11MB8797FC5357AFFE4E35F5F407B943ABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are pleased to announce the first milestone release for Yocto Project 5.=
3 (yocto-5.3_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M1

bitbake: c2f29c9475c4b9cdd12af1f8610f2675f8fdd964
meta-agl: 40f98a677f182e7e7779407fdd651ccaf416a65e
meta-arm: f4438fdf7126b7e1045cb43ce541ffc7876b2c0a
meta-aws: 3e91782318cfa7858639a577da2729432d586f5f
meta-clang: 02e254ba1fb4937530d94a154b4c713c904c2d06
meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
meta-mingw: 8ad732e5aa174e2b5e80f7f276104cc09bb7212f
meta-openembedded: 3f77bb395c332b12135889bb6b57caee0801b43e
meta-virtualization: 0115e61cdd5fe8c705bb0350a0d75ebebcf84c79
oecore: 826ab8dde34882c3ef705f715d8808e46bbedcde
poky: 7733ddf733b883d6fe75768d5f9b6d3519d47dc3

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M1/te=
streport.txt

Known Issue:

There is an issue where we observed that the media control buttons are unre=
sponsive during manual testing. This issue is still under investigation.


Thank you.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release

--_000_BL4PR11MB8797FC5357AFFE4E35F5F407B943ABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<br>
<br>
We are pleased to announce the first milestone release for Yocto Project 5.=
3 (yocto-5.3_M1) is now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M1">http://do=
wnloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M1</a><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: c2f29c9475=
c4b9cdd12af1f8610f2675f8fdd964<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: 40f98a677=
f182e7e7779407fdd651ccaf416a65e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: f4438fdf7=
126b7e1045cb43ce541ffc7876b2c0a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: 3e9178231=
8cfa7858639a577da2729432d586f5f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: 02e254b=
a1fb4937530d94a154b4c713c904c2d06<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: 5640f65=
92c984f4832ff5f2ed1a35a607e5d21c5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: 8ad732e=
5aa174e2b5e80f7f276104cc09bb7212f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
3f77bb395c332b12135889bb6b57caee0801b43e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: 0115e61cdd5fe8c705bb0350a0d75ebebcf84c79<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: 826ab8dde34=
882c3ef705f715d8808e46bbedcde<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky: 7733ddf733b88=
3d6fe75768d5f9b6d3519d47dc3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M1/testreport=
.txt">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3=
_M1/testreport.txt</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issue:<br>
<br>
There is an issue where we observed that the media control buttons are unre=
sponsive during manual testing. This issue is still under investigation.<br=
>
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
 and Release<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797FC5357AFFE4E35F5F407B943ABL4PR11MB8797namp_--

