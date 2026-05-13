Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAD3CD37AC
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 02:24:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3187.1778639058803342507
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 19:24:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=nBDPe31e;
 spf=pass (domain: intel.com, ip: 198.175.65.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778639059; x=1810175059;
  h=from:to:subject:date:message-id:mime-version;
  bh=FGoFdCpqsCyZhBsXAUYGC6RBeMAUs7YvrZKOdqCns38=;
  b=nBDPe31ecWzdE5UNzi4BRJm5DKI/VSyoZH//UYtLvAO8BrBWJ29Grqnv
   wqDU1WMktz2IaASHKyqh10fXECk/FW6N+WaqBeWmoZ4lBmM7DeRRw0oGL
   US4DBfNOhm8IlOYll5nmmG5jwNsxKt1Ih00fUmrr/AdB0k7JPhLbDnK2+
   D9te0FKLTydCkVRP6hJiLO2yhPjWiUt8yeG0mB3WhWfuqqwAKUhKYD4/F
   oXh/Ej/WevURQVQhiE8DdpUjC9MGbsf3EspdhDGOmFsrPTQWTtZ+ioCZd
   UO2B+VqxNwL+K4/otzqVnWbU7zGMxCmynFsocuiJ0wwEE2Ptq2yseXs2r
   Q==;
X-CSE-ConnectionGUID: 2pTQX71ATtGhJW+eEfmQvA==
X-CSE-MsgGUID: P5MRDUL8S5+BL0vrtYqXgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="79511094"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; 
   d="scan'208,217";a="79511094"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 19:24:19 -0700
X-CSE-ConnectionGUID: d8jtcubERyuf64IYv4A4vQ==
X-CSE-MsgGUID: V88VVBtkRtyht0BbONFRTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; 
   d="scan'208,217";a="268288316"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 19:24:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 19:24:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 19:24:16 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 19:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MM54DBfBtrb1JF9sO9WfAsU2Fk1eqsBNIEt23KjBfZw6dDNIt63DVf+/x4ZfP5RL3IhVLsp7PQDlQi+1sYMdmy4lQ972rNMcnD8vsE/Bmlmgx0Fq26CanPyecBSEb+W3YMybBVL7/3xIST4rtumRii9npywnkYDVZUyVD4ny+r1P6yaPam24RIX468eClJKzvt5fBDW9TVorkEWZ62srPsGtEDzReczUKXERqzboxcRdXbvElJ2k6vilUgL52jMPZqL1FZRhftRhhaP2Lej2er0UkowtqCKX8CON5uZ64poqsKIUndzRGLpvQWvv0mt6Mu7+9owyu6mUF6g+FtO7jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FGoFdCpqsCyZhBsXAUYGC6RBeMAUs7YvrZKOdqCns38=;
 b=lNgA1xPLUXhlUTHXGQfLujB5sFx9DtNihsTsIyafn3rKaAQxJ5fqhzhkDo5gKg60jnF8dlTKu61h2IewN+NSPYfyUg53duCKSMIlPbegFziFAAc82Xx4IY/unfF/+RBcVE0N4lVKXs8vq8q9u9Njpg37g5YSy5Nza1Mv8vTnSf4sgLWsLhWMuIjLUX2zVBiSM8V+reODn+uaNhXuuO44pwkv3GE3pytj2BrkadmQVcW3APiZWmv/lb3mRkVHbkL8ws4iwFoZVKTPKIopHm5Klj3i6mfEMCQMIv+ZjPSHfkUbIg4LgSQfrwFqYyYcSb3CFoFoi+g9PUl1vAY1xdQnBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH2PR11MB8777.namprd11.prod.outlook.com (2603:10b6:610:283::6)
 by BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Wed, 13 May
 2026 02:24:10 +0000
Received: from CH2PR11MB8777.namprd11.prod.outlook.com
 ([fe80::70b0:4dcf:b71:9a25]) by CH2PR11MB8777.namprd11.prod.outlook.com
 ([fe80::70b0:4dcf:b71:9a25%3]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 02:24:09 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.3.4 (whinlatter-5.3.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.3.4 (whinlatter-5.3.4) is
 Released
Thread-Index: AQHc4n1ugzF3jv8DMkCZ1tBzMhIYYg==
Date: Wed, 13 May 2026 02:24:09 +0000
Message-ID: <CH2PR11MB87775B42BEC75AC901977F50B9062@CH2PR11MB8777.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PR11MB8777:EE_|BL3PR11MB6409:EE_
x-ms-office365-filtering-correlation-id: a69fc80f-b4bc-43aa-7c7c-08deb096b736
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|18002099003|3023799003|13003099007|38070700021|56012099003|11063799003;
x-microsoft-antispam-message-info: vZ7ho8zbfmFvrFuOx6W5fs5kLBtshYNOyruvecVZFSQZPelr6NI96WqYEA8QgV5GHylI6BXhfGZH7jYWVNpkDsSQcHhH6TE10K1PG57hSVyX+/rxo5FTve++bGucSjBeSPmgqKybuJdrAqf84P4zjF3oXVjJ0UOxHwQjaOoVpDeY6OWyPlrzfj167lzSwF6NXNZW6QF34NV1w7vPDzBwfjVKBI2pjSqHlsUmRcz8ShG1ED0146kS06drZz+rD2w9eDbF7CH2DSyPr4e7VP6tom+AwPXILNengZodWT4zhCo8gXwfrKvR0+QDK+yYoSkAGnqVG5gMO1w6vbqjAuRv/jS6HZf/YkWRoSt3Ne15lwpY1Nuk63xSESW9VJOG81u0lLzbkmEmr+pBGw8VGQcoN+VcqSIecd3vmIMyq6J7xdDPHI7omD9PatC5XY9Wro6MOnH6xnQ3cDceuG1YJTe11CIOcO2R++XGomwqBERLKr77KowoCOzM5qd0XEfyBY4nbJvhQVA2XjgUOjDuXE18FZ/bBtLuASUs8lvAZouBIbeI8AtTHqbt3RBPNrhP/yJzm0UUIVPoM0wOF1t6zaKn1qC1YlWP2FYEXCof3I/KEdzSLY/6XESNOFZQfMHKOC5M5QRL6o3ajNmm6n8V0pzPF9tWD8qf6yuI9chGq5rDr1cZMjGTkWqbNXBUsu0GYWgOYCPgLV/MKJVOm3VvdjlFIg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR11MB8777.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(18002099003)(3023799003)(13003099007)(38070700021)(56012099003)(11063799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MsZAIS+yPkII6btEyZ3KC2eZysVnL9s7n41PBsGI+raokiMUUHMki6ARAY?=
 =?iso-8859-1?Q?lYStu6leOYe5NZzBTdblKfRDrKy76Z+WT4cCfQjVG6gWVqEhlE23/+4tyR?=
 =?iso-8859-1?Q?F4/6DognEJZgduFHZ23feFma4WwAojP14QAKWkBsR6SFJW5PCyM731JiUE?=
 =?iso-8859-1?Q?gPUDEU9RVmExbANHFyGw9lvyed1fFDux9zitB76aUDqR7xp8pEnUlVuVzw?=
 =?iso-8859-1?Q?I4vLDCrz/phM+8Qk3GL3xW2UhH4SV+9Rz/BcGDFX5z4RlDOYVfesowNKCV?=
 =?iso-8859-1?Q?2kAAQO7AumgFHG01JkWx3tTzP/kZKu7/H9idVXD2nUPHjRBV3WBvss7pnW?=
 =?iso-8859-1?Q?Zw9g3AZogbyVfrfY9ZepHXORhMpomiotcZKX1U1J9YNU9Vmb5yULKBCsKS?=
 =?iso-8859-1?Q?4mywYjmh/wv9fEmDn6pKPVZPLBDbBGC8fynz4EcnZh9bV9KD+At8zkb/YX?=
 =?iso-8859-1?Q?CXjAGTh5wlsdM8dq7JfTnug5aVVrPV3t2TK/XPQ/4mXBUe6f2KrUQpyH7J?=
 =?iso-8859-1?Q?7N03DWUyitjjtMrTIlJZAMlqTM1iB9BZlANSJb5UAYtCVLA1m/2u43/Jlq?=
 =?iso-8859-1?Q?fg0xE9lIZ1tY0SnAL9ajJozzPRir51mvogn4KVhDHLj+uLHQw3L5V1Dqjk?=
 =?iso-8859-1?Q?kVDDcRkIhPVjraleLQFJGvzm6KhniXcap/ht1M82n0Qw0wv+QIZDcCtVbV?=
 =?iso-8859-1?Q?dnTVq7goWlJ9l8W8LZz/NbyBWGWLydc6/iWGdV0zRYUyK1FCPK2Stj8ohC?=
 =?iso-8859-1?Q?zcTTIXLuzqH8VOlCFAK53vAJY8DBwMOcuf2C9DE6IwckMiHmkjfUVc2+ru?=
 =?iso-8859-1?Q?FpZPrtCxVXB8RaVaWsvdEgD5Xv2d6exTU7XHhJJAY4EDZ5kO5HtZX37P7m?=
 =?iso-8859-1?Q?QchreH8sLaVzDblqh3LXgi1DLeLA0z0u42KLkn0n6BoP8QoLVJehdGsYLO?=
 =?iso-8859-1?Q?ieurPTddXsot3lXScvN3y2zvjVWL19LhB8qLHVRZPMnf/D3pH25UX5JaOt?=
 =?iso-8859-1?Q?Mze/v5CsgnlOkm3ZC2oYn3ov4oDJO5XJ55TuC/mqiy+tIFmr2aIy6z4/0Z?=
 =?iso-8859-1?Q?oo0Rob5kIALWpSY/5WPdZhQw5aiSD+PLNGD0jW4WUzCZk46B8IMz31/hIL?=
 =?iso-8859-1?Q?b7ULxf4Q6rph34SxA455pN2FVMKYTDsPtpAUDIuVOnUusNpK5589G3BUXG?=
 =?iso-8859-1?Q?iWOg6UJhJLPCT9Pz+xsy0H2I1nlhx50apkP67IRAisPPjuVaAJYxmKJKe0?=
 =?iso-8859-1?Q?Ept2sjdBVCbdIv89uTbuZGA9gnLhqa7+MjeCRYR6l4gNZnOvNdOqRm/62V?=
 =?iso-8859-1?Q?B+IfysfxbNQ++Vc8gIytCnJp0JAELEIPgkBifd3Yeb7EW2hnl5P+Cl6Y42?=
 =?iso-8859-1?Q?7lmMsUlWeN/vvu3IAiYfJgxWMAc9PpgGKCHIzhIK6t1WixtA/1tV81zaIs?=
 =?iso-8859-1?Q?gOb3y6y22xipRjDbupgaI0NgAxLKtn65qH8oPa0CUQEk/hW6gd3vkxYy6C?=
 =?iso-8859-1?Q?zYwpIhxZBIMHN3ZqIGZ4dYojGeNurWWKjKyIDT2FyMEDljBQiX2ujTIuKB?=
 =?iso-8859-1?Q?ikOvqps+yQIz7gIHJ6KTeMmu2riEAGiTTBKgWsnEO4Le+Ga+UTiJlc9Bdi?=
 =?iso-8859-1?Q?6x5AOe+A71Doo/UZd9m1hsT0QGkT2+pRd2mTKTOfIVKQeSZj3nFIAzkh2h?=
 =?iso-8859-1?Q?DIkeLxtBnbtNy3OpQxGviyepMD1LpAomRuzVsvd7QR3egjj37P+JUfKW3h?=
 =?iso-8859-1?Q?d8bKABON3zPH6oG6PrALZoNIOexZJywqpBHRCYw+xcqWyW1URDMCSXdloa?=
 =?iso-8859-1?Q?7OZQg4x7KA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CH2PR11MB87775B42BEC75AC901977F50B9062CH2PR11MB8777namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CyWlVRuGcwDOQCJt4ppcrI8T0VOjyf4rCSkFJcqxipt2Tle/JCrM0/G1Dz+i9z6gfLjPCf5lIboIvv1Q3EhwO4E92zDH5oiY/QfExCdXHo0FBFK0nJv+3Q212Nq5RvNVbGJP1n/EFFvwaU+fMHPylAoJk1jh8iTYgEaJNs1ISOKiNfCoDBEzshvPrsC/Haa+b3Zhou9D/1Tozm9OEKhKF+BAKZZ2D4qdlAYsJ2LQYa2Wj6TV72njU4ZhqxwiPrOdC3NAjl4F78ZNV5p73j2TZN544Xfv6TJ2+vyW+kVLBpT3fIvYqoOVlMEcmjVNvJdtcedWCfGfWmgjOfFrV/lSMQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR11MB8777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69fc80f-b4bc-43aa-7c7c-08deb096b736
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 02:24:09.8269
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tk5QfHPgr+Fg+6AQ3n1VN8h/FO5y609jigAWCTThr8OlOgZ6yPN/QQ11aECLybd9dCWyO5vYwABdZbVL6Jv61A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6409
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 02:24:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66543

--_000_CH2PR11MB87775B42BEC75AC901977F50B9062CH2PR11MB8777namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.3.4 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-5.3.4 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: whinlatter
Tag: yocto-5.3.4
Git Revision: 10818445a22c524de0934901547cf676256c2b9d
Release Artefact: yocto-docs-10818445a22c524de0934901547cf676256c2b9d
sha: f9e0b155730ba23b83febd40b6e5d6e22c624d083cccb569cfff4a83ef3fde43
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/yocto-docs-10=
818445a22c524de0934901547cf676256c2b9d.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/yocto-docs-10818445=
a22c524de0934901547cf676256c2b9d.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: whinlatter
Tag: yocto-5.3.4
Git Revision: 8751ec83421192fc0f8495fb95798f9eb7be77a0
Release Artefact: oecore-8751ec83421192fc0f8495fb95798f9eb7be77a0
sha: d587dc39a046a1a48f4cd33f5e9dd79b7d0948d71a9151fcf5542641893be229
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/oecore-8751ec=
83421192fc0f8495fb95798f9eb7be77a0.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/oecore-8751ec834211=
92fc0f8495fb95798f9eb7be77a0.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: whinlatter
Tag: yocto-5.3.4
Git Revision: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
Release Artefact: meta-yocto-3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
sha: b942dc726a631b52284d4fe62dda4b97d880fea758a7090a8590cca964865e30
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/meta-yocto-3f=
2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/meta-yocto-3f2e6b6f=
adfa542f0fe3738375a2f9fcbd4c1f6e.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: whinlatter
Tag: yocto-5.3.4
Git Revision: 00323de97e397d4f6734ef2191806616989f5e10
Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616989f5e10
sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363127a1c77
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/meta-mingw-00=
323de97e397d4f6734ef2191806616989f5e10.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/meta-mingw-00323de9=
7e397d4f6734ef2191806616989f5e10.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.16
Tag: yocto-5.3.4
Git Revision: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135
Release Artefact: bitbake-713fbbdb9ecc195ceb2216a2345e0d79dbee2135
sha: 1d0f14e8bc71a39de4207aeeb329cb1d2541089c07e954131bf37a3d1b66b823
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/bitbake-713fb=
bdb9ecc195ceb2216a2345e0d79dbee2135.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/bitbake-713fbbdb9ec=
c195ceb2216a2345e0d79dbee2135.tar.bz2


---------------
 Contributors
---------------

Thanks to the following people who contributed to this release:

Adarsh Jagadish Kamini
Alexander Kanavin
Andrej Kozemcak
Anil Dongare
Ankur Tyagi
Antonin Godard
Changqing Li
Deepak Rathore
Hemanth Kumar M D
Hitendra Prajapati
Jinfeng Wang
Khem Raj
Krupal Ka Patel
Lee Chee Yang
Logan Gallois
Martin Jansa
Michael Halstead
Paul Barker
Peter Marko
Richard Purdie
Sunil Dora
Trevor Gamblin
Vijay Anusuri
Wang Mingyu
Yanis BINARD
Yoann Congal
Zolt=E1n B=F6sz=F6rm=E9nyi

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-69644 CVE-2025-69647 CVE-2025-69648 CVE-2025-69649 C=
VE-2025-69652
binutils: Ignore CVE-2025-69650 CVE-2025-69651
curl: Fix CVE-2026-1965 CVE-2026-3783 CVE-2026-3784 CVE-2026-3805
expat: Fix CVE-2026-32776 CVE-2026-32777 CVE-2026-32778
glibc: Fix CVE-2026-4437 CVE-2026-4438
go: Fix CVE-2026-27140 CVE-2026-27143 CVE-2026-27144 CVE-2026-32280 CVE-202=
6-32281 CVE-2026-32282 CVE-2026-32283 CVE-2026-32288 CVE-2026-32289
inetutils: Fix CVE-2026-32746
libpng: Fix CVE-2026-33416 CVE-2026-33636
libsoup: fix CVE-2025-32049 CVE-2026-1539
nfs-utils: Fix CVE-2025-12801
openssl: Fix CVE-2026-2673 CVE-2026-28387 CVE-2026-28388 CVE-2026-28389 CVE=
-2026-28390 CVE-2026-31789 CVE-2026-31790
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459
python3: Fix CVE-2025-15282
sqlite3: Fix CVE-2025-70873
vim: Fix CVE-2026-25749 CVE-2026-26269 CVE-2026-28418 CVE-2026-28419 CVE-20=
26-33412

---------------
Fixes
---------------

bitbake
-----------
runqueue.py: make sure we use bb multiprocessing
tests/fetch: Avoid using git protocol in tests

oecore
-----------
archiver: Don't try to preserve all attributes when copying files
barebox/barebox-tools: upgrade to 2025.09.3
binutils: Fix build with GLIBC 2.43 on the host
binutils: Upgrade to 2.45.1 release
build-appliance-image: switch SRC_URI to https protocol
build-appliance-image: Update to whinlatter head revisions
ca-certificates: upgrade to 20260223
ccache: upgrade to 4.12.3
dtc: backport fix for build with glibc-2.43
gcc: backport a fix for building with gcc-16
gettext: backport gnulib changes to fix build with glibc-2.43 on host
glibc: stable 2.42 branch updates (a56a2943d2c...)
go: upgrade to 1.25.9
libarchive: upgrade to 3.8.6
libpng: upgrade to 1.6.56
libsoup: upgrade to 3.6.6
libxcrypt: avoid discarded-qualifiers build failure with glibc 2.43
libxcrypt: Fix build wrt C23 support
libxcrypt: Use configure knob to disable warnings as errors
libxmlb: upgrade to 0.3.25
license.py: Drop visit_Str from SeenVisitor in selftest
m4: backport 3 gnulib changes to fix build with glibc-2.43 on host
meta/files/layers.example.json: switch to https clone URIs
oe-setup-build: TEMPLATECONF were not applied correctly
oeqa/sdk: Default to https git protocol for YP/OE repos
oeqa/selftest/devtool: add vulkan feature check for test needing it
oeqa/selftest/git-submodule-test: Default to https git protocol for YP/OE r=
epos
oeqa/selftest: add wayland feature check for tests needing it
openssl: upgrade to 3.5.6
ovmf: backport a fix for build with gcc-16
pseudo: Add fix for glibc 2.43
ptest-runner: Upgrade to 2.5.1
ptest-runner: Use git tag in SRC_URI
python3-pip: drop unused Windows distlib launcher templates
python3-setuptools: drop Windows launcher executables on non-mingw builds
python3: Fix test under ptest-runner 2.5.1
python3: upgrade to 3.13.12
recipetool: Recognise https://git. as git urls
report-error.bbclass: replace 'codecs.open()' with 'open()'
scripts/install-buildtools: Update to 5.3.3
scripts: Default to https git protocol for YP/OE repos
selftest/gdbserver: replace shutil.unpack_archive with tarfile extract
selftest/minidebuginfo: extract files from tar archive using tarfile module
selftest/scripts: Update old git protocol references
spirv-tools: backport a fix for building with gcc-16
systemd: backport fix to build with glibc-2.43 on host
tzdata/tzcode-native: upgrade to 2026a
util-linux: backport fix to build with glibc-2.43 on host
virglrenderer: Fix build with glibc 2.43+
yocto-uninative: Update to 5.1 for glibc 2.43

meta-yocto
-----------
poky.conf: Bump version for 5.3.4 release
poky: Fix CentOS Stream 9 distro name

yocto-docs
-----------
contributor-guide/submit-changes.rst: Added missing word
dev-manual/new-recipe.rst: rework Unpacking Code section
migration-guide: add release notes for 4.0.33 4.0.34 5.0.16 5.0.17 5.3.2 5.=
3.3
sphinx-static/theme_overrides.css: switch to a fixed width documentation



--_000_CH2PR11MB87775B42BEC75AC901977F50B9062CH2PR11MB8777namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
We are pleased to announce the Yocto Project 5.3.4 Release is now available=
 for download.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/" =
id=3D"anchor-7268f0ce-53f6-e5e0-c160-19afd796ace4" class=3D"OWAAutoLink">ht=
tps://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/</a>&nbsp;</div=
>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/" id=3D"=
OWAd2a9da90-6403-3615-053d-4e15f2522254" class=3D"OWAAutoLink">https://mirr=
ors.edge.kernel.org/yocto/yocto/yocto-5.3.4/</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
A gpg signed version of these release notes is available at:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/RE=
LEASENOTES" id=3D"anchor-29de829a-985c-ef93-b60a-3fb96044f92a" class=3D"OWA=
AutoLink">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/REL=
EASENOTES</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Full Test Report:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/te=
streport.txt" id=3D"anchor-73b85ea4-9695-90ce-5a90-ea8671c8e7f5" class=3D"O=
WAAutoLink">https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/t=
estreport.txt</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thank you for everyone's contributions to this release.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
chee.yang.lee@intel.com</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Yocto Project Build and Release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-5.3.4 Release Notes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Repositories/Downloads</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 10818445a22c524de0934901547cf676256c2b9d</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: yocto-docs-10818445a22c524de0934901547cf676256c2b9d</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: f9e0b155730ba23b83febd40b6e5d6e22c624d083cccb569cfff4a83ef3fde43</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/yocto-docs-10=
818445a22c524de0934901547cf676256c2b9d.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/yocto-docs-10818445=
a22c524de0934901547cf676256c2b9d.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 8751ec83421192fc0f8495fb95798f9eb7be77a0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: oecore-8751ec83421192fc0f8495fb95798f9eb7be77a0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: d587dc39a046a1a48f4cd33f5e9dd79b7d0948d71a9151fcf5542641893be229</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/oecore-8751ec=
83421192fc0f8495fb95798f9eb7be77a0.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/oecore-8751ec834211=
92fc0f8495fb95798f9eb7be77a0.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-yocto-3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: b942dc726a631b52284d4fe62dda4b97d880fea758a7090a8590cca964865e30</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/meta-yocto-3f=
2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/meta-yocto-3f2e6b6f=
adfa542f0fe3738375a2f9fcbd4c1f6e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 00323de97e397d4f6734ef2191806616989f5e10</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616989f5e10</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363127a1c77</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/meta-mingw-00=
323de97e397d4f6734ef2191806616989f5e10.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/meta-mingw-00323de9=
7e397d4f6734ef2191806616989f5e10.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: 2.16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: bitbake-713fbbdb9ecc195ceb2216a2345e0d79dbee2135</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: 1d0f14e8bc71a39de4207aeeb329cb1d2541089c07e954131bf37a3d1b66b823</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.4/bitbake-713fb=
bdb9ecc195ceb2216a2345e0d79dbee2135.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.4/bitbake-713fbbdb9ec=
c195ceb2216a2345e0d79dbee2135.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Contributors</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks to the following people who contributed to this release:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Adarsh Jagadish Kamini</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Alexander Kanavin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Andrej Kozemcak</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Anil Dongare</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ankur Tyagi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Antonin Godard</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Changqing Li</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Deepak Rathore</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hemanth Kumar M D</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hitendra Prajapati</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Jinfeng Wang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Khem Raj</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Krupal Ka Patel</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Lee Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Logan Gallois</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Martin Jansa</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Michael Halstead</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Paul Barker</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Peter Marko</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Richard Purdie</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Sunil Dora</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Trevor Gamblin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Vijay Anusuri</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Wang Mingyu</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Yanis BINARD</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Yoann Congal</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Zolt=E1n B=F6sz=F6rm=E9nyi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Known Issues</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
N/A</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Security Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
binutils: Fix CVE-2025-69644 CVE-2025-69647 CVE-2025-69648 CVE-2025-69649 C=
VE-2025-69652</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
binutils: Ignore CVE-2025-69650 CVE-2025-69651</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
curl: Fix CVE-2026-1965 CVE-2026-3783 CVE-2026-3784 CVE-2026-3805</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
expat: Fix CVE-2026-32776 CVE-2026-32777 CVE-2026-32778</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
glibc: Fix CVE-2026-4437 CVE-2026-4438</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go: Fix CVE-2026-27140 CVE-2026-27143 CVE-2026-27144 CVE-2026-32280 CVE-202=
6-32281 CVE-2026-32282 CVE-2026-32283 CVE-2026-32288 CVE-2026-32289</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
inetutils: Fix CVE-2026-32746</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpng: Fix CVE-2026-33416 CVE-2026-33636</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libsoup: fix CVE-2025-32049 CVE-2026-1539</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
nfs-utils: Fix CVE-2025-12801</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
openssl: Fix CVE-2026-2673 CVE-2026-28387 CVE-2026-28388 CVE-2026-28389 CVE=
-2026-28390 CVE-2026-31789 CVE-2026-31790</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3: Fix CVE-2025-15282</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sqlite3: Fix CVE-2025-70873</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
vim: Fix CVE-2026-25749 CVE-2026-26269 CVE-2026-28418 CVE-2026-28419 CVE-20=
26-33412</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
runqueue.py: make sure we use bb multiprocessing</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
tests/fetch: Avoid using git protocol in tests</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oecore</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
archiver: Don't try to preserve all attributes when copying files</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
barebox/barebox-tools: upgrade to 2025.09.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
binutils: Fix build with GLIBC 2.43 on the host</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
binutils: Upgrade to 2.45.1 release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
build-appliance-image: switch SRC_URI to https protocol</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
build-appliance-image: Update to whinlatter head revisions</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ca-certificates: upgrade to 20260223</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ccache: upgrade to 4.12.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
dtc: backport fix for build with glibc-2.43</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gcc: backport a fix for building with gcc-16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gettext: backport gnulib changes to fix build with glibc-2.43 on host</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
glibc: stable 2.42 branch updates (a56a2943d2c...)</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go: upgrade to 1.25.9</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libarchive: upgrade to 3.8.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpng: upgrade to 1.6.56</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libsoup: upgrade to 3.6.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libxcrypt: avoid discarded-qualifiers build failure with glibc 2.43</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libxcrypt: Fix build wrt C23 support</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libxcrypt: Use configure knob to disable warnings as errors</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libxmlb: upgrade to 0.3.25</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
license.py: Drop visit_Str from SeenVisitor in selftest</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
m4: backport 3 gnulib changes to fix build with glibc-2.43 on host</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
meta/files/layers.example.json: switch to https clone URIs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oe-setup-build: TEMPLATECONF were not applied correctly</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oeqa/sdk: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oeqa/selftest/devtool: add vulkan feature check for test needing it</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oeqa/selftest/git-submodule-test: Default to https git protocol for YP/OE r=
epos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oeqa/selftest: add wayland feature check for tests needing it</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
openssl: upgrade to 3.5.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ovmf: backport a fix for build with gcc-16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
pseudo: Add fix for glibc 2.43</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ptest-runner: Upgrade to 2.5.1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ptest-runner: Use git tag in SRC_URI</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pip: drop unused Windows distlib launcher templates</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-setuptools: drop Windows launcher executables on non-mingw builds</=
div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3: Fix test under ptest-runner 2.5.1</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3: upgrade to 3.13.12</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
recipetool: Recognise https://git. as git urls</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
report-error.bbclass: replace 'codecs.open()' with 'open()'</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
scripts/install-buildtools: Update to 5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
scripts: Default to https git protocol for YP/OE repos</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
selftest/gdbserver: replace shutil.unpack_archive with tarfile extract</div=
>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
selftest/minidebuginfo: extract files from tar archive using tarfile module=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
selftest/scripts: Update old git protocol references</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
spirv-tools: backport a fix for building with gcc-16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
systemd: backport fix to build with glibc-2.43 on host</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
tzdata/tzcode-native: upgrade to 2026a</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
util-linux: backport fix to build with glibc-2.43 on host</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
virglrenderer: Fix build with glibc 2.43+</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-uninative: Update to 5.1 for glibc 2.43</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
poky.conf: Bump version for 5.3.4 release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
poky: Fix CentOS Stream 9 distro name</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
contributor-guide/submit-changes.rst: Added missing word</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
dev-manual/new-recipe.rst: rework Unpacking Code section</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
migration-guide: add release notes for 4.0.33 4.0.34 5.0.16 5.0.17 5.3.2 5.=
3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sphinx-static/theme_overrides.css: switch to a fixed width documentation</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_CH2PR11MB87775B42BEC75AC901977F50B9062CH2PR11MB8777namp_--

