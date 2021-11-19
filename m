Return-Path: <vineela.tummalapalli@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E0C0C433F5
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 04:04:47 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web09.4142.1637294685282608965
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 20:04:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=Ib+RBvus;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="233072532"
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800";
   d="scan'208,217";a="233072532"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 20:04:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800";
   d="scan'208,217";a="568775049"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2021 20:04:44 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 20:04:44 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 20:04:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 18 Nov 2021 20:04:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 18 Nov 2021 20:04:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxExDMVpAX9gfZrQhzvLsuY8VsJgWsTdGmNg9XeNT1zzOOUV3roZ4DveVUTbwCTPB08Y/SklnoTLrlUBLr/22V4xmtv2Ui5OKtEiFHmTurtChEQ9J/T4tpYJWy02kIdCkmYPAqgA1z5x6wH25C/Z4P5OQEX8yFVaXhGMQJQvcktRxb2AU9EOp3XqGqZqAbgj8OX1Ks0mdJoM9MFrmWGFsW4nrxZyp7Lc6uHSoP8W02MkVYxV2+QRntwjlt0Nzi89amFJWOJwVEPoyVUI8F+sOD4TWq5gE60HqzKWHc8Uld3WQhaManL6sNQPs6SAU1EDECdlMdH+1fxJ04IqlXCmEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWgPqa1VY2DEyPU09DBU5Yu1Ijom31bdkMDkSnYIQb4=;
 b=jvkT9joeT0HIQuKKBwTHQqlnDDbIF4+g+aq8yXX4+EkYoclAoKNSMSgyDez7UtuecLzWzoTvSSOajZSug/dlnBCDLVpSw5rWRSQfH+AzJzFriZdIv5Abv6Zmi3HYONCuB00gYmtzbCafxKQWd4XlJ5zX7sfA7BsASmKgislGS3jcJB52p+YviJ7V8AkaxqfUGk8+okSlRVwN+XguPrrISz9Tp/hbFzQp98W5yW9d4ZdIAcO1EuIyhZFP9Ot6msBAN44ELJA/nBfmybFUCPIiBYRyPro4tEtVdnVcGSV8XwUpV+ABx+XtM4aKDdyvWV5xnwvmuYpDrQJQqDj7pfh3Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gWgPqa1VY2DEyPU09DBU5Yu1Ijom31bdkMDkSnYIQb4=;
 b=Ib+RBvusiPzs1xXS7Qd2jKd/j4Jg3yggAlrdZiJoxdr0DIdFw3P+1bkHojbXfTRFvWppL3621NUpUl/TP6ujQAjwQyvWJFWlquXbG8o6rXNWaFQgTNbLTvpwKz86kEynqScMb/7Wq6vm78qhg+FhGB5JiEcAoZinSxzaTkhEhf0=
Received: from DM8PR11MB5605.namprd11.prod.outlook.com (2603:10b6:8:26::11) by
 DM8PR11MB5605.namprd11.prod.outlook.com (2603:10b6:8:26::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.25; Fri, 19 Nov 2021 04:04:42 +0000
Received: from DM8PR11MB5605.namprd11.prod.outlook.com
 ([fe80::6d19:bd17:7a9:17e1]) by DM8PR11MB5605.namprd11.prod.outlook.com
 ([fe80::6d19:bd17:7a9:17e1%7]) with mapi id 15.20.4690.027; Fri, 19 Nov 2021
 04:04:42 +0000
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.3.4 (hardknott-25.0.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3.4 (hardknott-25.0.4) is
 Released
Thread-Index: Adfc+YLp7gr5CtLySOWGA3d/6HvPiA==
Date: Fri, 19 Nov 2021 04:04:42 +0000
Message-ID: 
 <DM8PR11MB5605D87CA827DD59CB3B62E9889C9@DM8PR11MB5605.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0079687b-2eee-42c3-5b86-08d9ab11b740
x-ms-traffictypediagnostic: DM8PR11MB5605:
x-microsoft-antispam-prvs: 
 <DM8PR11MB56057AEE5652FC0412415CCB889C9@DM8PR11MB5605.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 i/JcMl9mdgKtjOdo9od69Bg/rkF1pxEwfhL7Pu6fvDoIccoH5mLOFcr3DiAzT4619wTBTqHIOiY3edA4KxQYUUCQCWcxugWjJFgDLhcR4lI24/2tyis/F9J/AH4rKBg4r8VBFWehCeHa3I9vKBJlo0eqwU3tYjUQCfgAAoPr6okcYf1fLc5wLT2+5wCRuuoQb6wq/o/Jh68BbnDWxFdD9BtCipJ6AyY0Hvr1d3etFgBbyLSSh2dgzsxWV3AaWWzH/VNbYCVcISE75HnUGZPSkj+u1WC7+iiB6KNqwLZYvFPpVTSKKfSE0h2BeeZmO26OwPcP99wqsfL4fq+bxufrU5E7Mz/S2TsAi1CV5T4atMaUxeuP8moSTFdOvIMZYwwcN5Rn3FN1xLGme3GAN38KCIm5YLJnB1BQzX8YjD+pD0EsFn6oRViRe9VL9+7Yw6YR56N0QjmZXTP14ea7/D3aqV8tM2ObsS7ymn/KQUzktq+o+vdTAefJ0Wbz8NIduCsMq/XqoPDJgTFjmSnYF43bPRNdVaE0UoJzWzBRIqRDon+YSZZA3FmdjaSyCEkfPlV8LtsyxtYxZkZVQ97H2W0LaSKxA1OFd0gLoQEF7DCcfZZy3V1NrDiTcv1PNBj31pabs0FsgTpJ/8sHHzq1jeh7KFHAj6y/3vKfNM2rxt07uPTU43c3O9qE+s+urMFBiiz28kuvRmGGlYi800ojmBOY8pPF6G4nTJ9LyVifyu7HJ1YbBgXNyrK87D5Whh8vQpMkVk3R8IQqdV061pPqfwioptkLQqLYubq605YDL5mcakUUwB0qrrhr0Eo31LNwMCJoT3KYu8ZKbqYclFyOF9dlxKFGwWD2c4Oa0w3YYx2lO45liOYvJCGK/38oG/wTSB7o
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5605.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66446008)(38070700005)(166002)(186003)(8936002)(5660300002)(76116006)(52536014)(450100002)(9686003)(55016002)(86362001)(66946007)(9326002)(316002)(8676002)(2906002)(66476007)(66556008)(83380400001)(26005)(64756008)(508600001)(6506007)(966005)(7696005)(122000001)(110136005)(82960400001)(38100700002)(33656002)(30864003)(71200400001)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?VumyVzJYsOAyJ9Y4kJg0IhriJ6pGmuo+sIzDP9c3yHPHlQPrrRSEZfkNmwoC?=
 =?us-ascii?Q?oCtm39uog/pR71P5bVLjP/qBEqn3GenYKR+DQQ1XgSu6giYPDmvZ5sd0Dz3q?=
 =?us-ascii?Q?VMXP4xehJBQOGytm4QivTs4IHl5x4vC+uR5ojZdfhPuBVXjlzpO3OGoOJ6A5?=
 =?us-ascii?Q?gGtkDST3XBuPf5tBXw4plazAg3WLMGH0wGpD60a6zdAX8t9/yFjZT35F1NHp?=
 =?us-ascii?Q?izTDx71OXNG4sCblU9V9gPqpnQJfSGHHQQ/lngdKfC9b7ykVz34TamPdjUzE?=
 =?us-ascii?Q?IK577jv3xrg71J+4aCg0/xV/edx0VzHNDtlc/skP/oV41Gm6rKEttlPVCBw8?=
 =?us-ascii?Q?U+kbVi9969obeuA6qMM0Bpzgfh6zfAuUGrIzHPBLHIDm+HspymyewSYn9m1R?=
 =?us-ascii?Q?4a02KKYi1EUA5uff9kOyNHqXDEkfomBI01xh6FH6SKkr8Qqrqx1cMm7fGzCD?=
 =?us-ascii?Q?DYC247jdeheF/PNAY4HaRzuvxJ8Us9hB2/Fkg5a7vZYlU2b8NxBF29Qq4T+9?=
 =?us-ascii?Q?QF8pQC0M3n8zq9COCN4NXDBM88OdlvlMnfGmVoFwI5lk4Xhyn2pAV+aN9jK1?=
 =?us-ascii?Q?6VLRoxA3oU2nO71Yk/V/iuqdK3ZZ1LcmcY42M+p5IBJkG7yyayoSPp3aOAN+?=
 =?us-ascii?Q?0QVYfQK94OFfQAGlZXS4b1Y+OrdnFPKurL+uO20tZ6vmMtt0boIJiQ2xiB6v?=
 =?us-ascii?Q?BsSoQMW0rOZfS4d9FLK2iEaW62uYSt3nRo2sZLAipH6J7/Iq1pvdCc8yO+zM?=
 =?us-ascii?Q?CKwxuxzNDadbTZvsKAw6OHmYURQ+aMp9JLf19NmhmG9EP3hSxjHcQ2+bGBH0?=
 =?us-ascii?Q?rlvpCivuNKUUUYmZ9x82YSj99+F3/WZSSqjkuZJ63HEaoPXGw+ZOCO1hsJa7?=
 =?us-ascii?Q?DP15TEnAUJID09JU7pFSpqPClSCptfRTHNMt5f7zzJ/TE7cVDK368xQOhtcy?=
 =?us-ascii?Q?yg6quvZcxkHYcQ+xoxA5T8KFk8dBPOgsG5S8+WGzM2UDnGdhEtsbuFgb+O3I?=
 =?us-ascii?Q?o/Xd0JGKPjtAemYEKB8L1kKokTIfUBOlwot55oi6dqFgP1xrQIzg+t1DJ3zI?=
 =?us-ascii?Q?hSeXU9Xp47jJZUGsewMkzMDNqFSHHYVEVhIIVdnpSw/DQrPA6B+B0guKctBB?=
 =?us-ascii?Q?+Bx3wDmHi+MiSEXIl+3xiMq4GDFiXiL7+FdKHVzf6HfLjdQbHI2OxTrtyyMC?=
 =?us-ascii?Q?p+U66shTgJs5tkzSm1VQt1G3VeNGhtdzVeeyIoYW8iAtC3hB+EOhI3+C8p5Y?=
 =?us-ascii?Q?Vk/hekLUchRxWm2or6iruRARnCZuYpn50Q6cLidw+veI+01yGOF5gyBX/SYL?=
 =?us-ascii?Q?DW/HwJUUQi57KFJXtXOnWAPqO6THk9JrCjoz3KouYHgfa8e9osKA7/xYL7K9?=
 =?us-ascii?Q?yozv4Sz6fiTSZheMOfv56CLstlZqHTXcQ7ea7+pAFPJMD6rS2wH4kYyKCpF5?=
 =?us-ascii?Q?I/oMo6MVdGndUmK+R5CL1qaGR11w6jYdT7fw1f3mYqbOmn3U8Io6y30Pqm+H?=
 =?us-ascii?Q?170iKj+2dafnJrKSKAXJusrrp0S8hoCHFsSZ17FrBZWBdLxO/ckteuFBZvla?=
 =?us-ascii?Q?zSZ6DG4Vmd6Jxq3yXbIki5h2X0B1UsFokTw+dgu3O8LpZUYGpC2AgLZKU59F?=
 =?us-ascii?Q?wRXvUj4XqA9D5aiJ3WXbz0F2+T1Vupl8mrMhKgL8oDbGUsUqCBdiOl27ZXHK?=
 =?us-ascii?Q?umBgNg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR11MB5605D87CA827DD59CB3B62E9889C9DM8PR11MB5605namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0079687b-2eee-42c3-5b86-08d9ab11b740
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 04:04:42.6370
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 NKBvF6wNBHp/Knxu0Ug0E+PR350U9ke5e5wYK4/hkmKQ3wdnZR+DdM/fVN58cflRhbHbZwAJsFJrZNV2iK9hj45wo/i2HrzHafhRxe/NFLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5605
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 04:04:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55368

--_000_DM8PR11MB5605D87CA827DD59CB3B62E9889C9DM8PR11MB5605namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.3.4 (hardknott-25.0.4) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/poky-hardknott=
-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>
Yocto Project Build and Release


--------------------------
yocto-3.3.4 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.4
Git Revision: c40ac16d79026169639f47be76a3f7b9d8b5178e
Release Artefact: poky-hardknott-25.0.4
sha: cbe13ef39105909ca13c6b6a84e4c66995e97a6c26e026b84046e5b8c5fd4a54
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/poky-hardknott=
-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04.4-hardknott
Git Revision: 0ca080a23c2770a15138f702d4c879bbd90ca360
Release Artefact: oecore-hardknott-25.0.4
sha: cc11201a8e4e80f4c776bc513d8442ffaf1dfd44fab7a72133da3aaabb967ff2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/oecore-hardkno=
tt-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/oecore-hardknott-25.0.4.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.4
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.4
sha: eff7ca53ad2360faa277fa7def3eb618e3a0e66e6008a560bcf6839c85042bca
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/meta-mingw-har=
dknott-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/meta-mingw-hardknott-25.0=
.4.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.4
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.4
sha: 9f273fc39082840baefb31de42efca6fe53f36679f665101b803df33d061c2a1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/meta-gplv2-har=
dknott-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/meta-gplv2-hardknott-25.0=
.4.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04.4-hardknott
Git Revision: 0fe1a9e2d2e33f80d807cefc7a23df4a5f760c74
Release Artefact: bitbake-hardknott-25.0.4
sha: d689dc6647de2c880b814c0d5955b7d46c910e82221b0480eb7bd5fd4f455067
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.4/bitbake-hardkn=
ott-25.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.4/bitbake-hardknott-25.0.4.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.4
Git Revision: e8e4539e1e812ea835192d1e35cc9992a43059ca

----------------
Contributors
----------------
Alexander Kanavin
Anibal Limon
Anuj Mittal
Armin Kuster
Bruce Ashfield
Caner Altinbasak
Chandana kalluri
Changqing Li
Chen Qi
Claudius Heine
Hongxu Jia
Jon Mason
Jose Quaresma
Joshua Watt
Kai Kang
Kenfe-Mickael Laventure
Kevin Hao
Khem Raj
Kiran Surendran
Konrad Weihmann
Mark Hatle
Markus Volk
Martin Jansa
Michael Halstead
Michael Opdenacker
Mingli Yu
Pablo Saavedra Rodi?o
Pgowda
Richard Purdie
Ross Burton
Sakib Sajal
Steve Sakoman
Thomas Perrot
Tom Pollard
Trevor Gamblin
William A. Kennington III
Yi Zhao

---------------
Known Issues
---------------
Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control manual test ca=
se failure


---------------
Security Fixes
---------------
openssh: fix CVE-2021-41617
binutils: Fix CVE-2021-3530
ghostscript: Fix CVE-2021-3781
ncurses: fix CVE-2021-39537
vim: Backport fix for CVE-2021-3770
bind: Exclude CVE-2019-6470 from cve-check
qemu: fix CVE-2021-3682
systemd: fix CVE-2021-33910
connman: add CVE_PRODUCT
vim: fix CVEs
ffmpeg: fix CVE-2021-38114
tar: ignore node-tar CVEs
ffmpeg: fix CVE-2021-38171
go: Exclude CVE-2021-29923 from report list
flex: Add CVE-2019-6293 to exclusions for checks
tcl: Exclude CVE-2021-35331 from checks
bluez5: fix CVE-2021-0129
ffmpeg: fix CVE-2021-38291
squashfs-tools: fix CVE-2021-40153
mc: fix CVE-2021-36370
apr: Security fix for CVE-2021-35940
sqlite3: fix CVE-2021-36690
ruby: fix CVE-2021-31799
ruby: Security fixes for CVE-2021-31810/CVE-2021-32066


---------------
Fixes
---------------
build-appliance-image: Update to hardknott head revision
poky.conf: bump version for 3.3.4 hardknott release
ref-manual: migration-3.0: fix ref to removed variable
documentation: prepare for 3.3.4 release
bitbake: fetch/git: Handle github dropping git:// support
meta: bump HASHEQUIV_HASH_VERSION after RPM fix
bootchart2: Don't compile python modules
tzdata: upgrade 2021a -> 2021d
ca-certificates: update 20210119 -> 20211016
wireless-regdb: upgrade 2021.07.14 -> 2021.08.28
wireless-regdb: upgrade 2021.04.21 -> 2021.07.14
linux-firmware: upgrade 20210818 -> 20210919
linux-yocto/5.10: update to v5.10.75
linux-yocto/5.10: update to v5.10.74
linux-yocto/5.10: update to v5.10.73
strace: show test suite log on failure
waffle: convert to git, website is down
sstate: fix touching files inside pseudo
oe/utils: log exceptions in ThreadedWorker functions
testimage: fix unclosed testdata file
uninative: Upgrade to 3.4
poky.yaml: fedora33: add missing pkgs
reproducible_build: Work around caching issues
rpm: Deterministically set vendor macro entry
go: upgrade 1.16.7 -> 1.16.8
ruby: fix the reproducibility issue
linux-yocto/5.10: update to v5.10.70
linux-yocto/5.10: update to v5.10.69
oeqa/selftest/glibc: Handle incorrect encoding issuesin glibc test results
uninative: Upgrade to 3.3, support glibc 2.34
uninative: Improve glob to handle glibc 2.34
pseudo: Update with fcntl and glibc 2.34 fixes
nativesdk-pseudo: Fix to work with glibc 2.34 systems
pseudo: Fix to work with glibc 2.34 systems
gpgme: Use glibc provided closefrom API when available
m4: Do not use SIGSTKSZ
util-linux: disable raw
patch.bbclass: when the patch fails show more info on the fatal error
rng-tools: add systemd-udev-settle wants to service
python3: Add a fix for a make install race
libnewt: Use python3targetconfig to fix reproducibility issue
libxml2: Use python3targetconfig to fix reproducibility issue
oeqa/manual: Fix no longer valid URLs
multilib: Avoid sysroot race issues when multilib enabled
externalsrc: Fix a source date epoch race in reproducible builds
externalsrc: Work with reproducible_build
oeqa/selftest/bbtests: Add uuid to force build test
gobject-introspection: Don't write $HOME into scripts
mesa: Ensure megadrivers runtime mappings are deterministic
gnupg: Be deterministic about sendmail
package: Ensure pclist files are deterministic and don't use full paths
rpm: Ensure compression parallelism isn't coded into rpms
linux-yocto/5.4: update to v5.4.153
linux-yocto/5.4: update to v5.4.150
linux-yocto/5.4: update to v5.4.149
mesa: gallium/dri Make YUV formats we're going to emulate external-only
glibc: upgrade glibc-2.33 to latest version
bitbake: fetch2: clarify the command-no-found error message
bitbake: build: Make exception printing clearer
bitbake: bitbake-worker: Handle pseudo shutdown in Ctrl+C case
bitbake: build: Ensure python stdout/stderr is logged correctly
bitbake: bitbake-worker: Allow shutdown/database flush of pseudo server at =
task exit
bitbake: npmsw: Avoid race condition with multiple npm fetchers
bitbake: tests/runqueue: Ensure hashserv exits before deleting files
bitbake: fetch2/git: Use os.rename instead of mv
bitbake: fetch2/git: Avoid races over mirror tarball creation
bitbake: test/fetch: Update urls to match upstream branch name changes
scriptutils.py: Add check before deleting path
recipes-support/ptest-runner: Bump to v2.4.2
rm_work.bbclass: Fix for files starting with -
package_ipk: Use localdata store when signing packages
glew: Stop polluting /tmp during builds
wic: keep rootfs_size as integer
Update mailing list address
bitbake: build: Handle SystemExit in python tasks correctly
bitbake: build: Avoid duplicating logs in verbose mode
bitbake: process: Don't include logs in error message if piping them
bash: Ensure deterministic build
oeqa/buildproject: Ensure temp directories are cleaned up
oeqa/selftest/gotoolchain: Fix temp file cleanup
oeqa/qemurunner: Use oe._exit(), not sys.exit()
libsamplerate0: Set correct soname for 0.1.9
bzip2: Update soname for libbz2 1.0.8
pybootchart: Avoid divide by zero
expat: pull from github releases
yocto-bsp/5.10: update to v5.10.63
meta-yocto-bsp: Bump to the v5.10.55
local.conf.sample: Update sstate mirror entry with new hash equivalence set=
ting
poky: Use SDKPATHINSTALL instead of SDKPATH
sstate: Avoid problems with recipes using SRCPV when fetching sstate
bitbake: runqueue/knotty: Improve UI handling of setscene task counting
bitbake: cookerdata: Show a readable error for invalid multiconfig name
bitbake: bitbake-worker: Improve error handling
bitbake: cooker/process: Fix typos in exiting message
bitbake: runqueue: Clean up task stats handling
bitbake: data_smart: Improve error display for handled exceptions
bitbake: cookerdata: Improve missing core layer error message
bitbake: cookerdata: Show error for no BBLAYERS in bblayers.conf
bitbake: tests/fetch2: Use our own git server for dtc test repo
linux-yocto/5.4: update to v5.4.144
linux-yocto/5.4: update to v5.4.143
systemtap: Fix headers issue with x86 and 5.13 headers
linux-yocto/5.10: update to v5.10.63
linux-yocto/5.10: update to v5.10.61
bitbake: build: Catch and error upon circular task references
bitbake: runqueue: Improve multiconfig deferred task issues
bitbake: cooker: Allow upstream for local hash equivalence server
bitbake: runqueue: Fix issues with multiconfig deferred task deadlock messa=
ges
bitbake: runqueue: Avoid deadlock avoidance task graph corruption

--_000_DM8PR11MB5605D87CA827DD59CB3B62E9889C9DM8PR11MB5605namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.3.4 (=
hardknott-25.0.4) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/poky-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/RELEASENOTES">http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/testreport.txt">http://downloads.yoctoproject.org/relea=
ses/yocto/yocto-3.3.4/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:vineela.tummalapalli@intel.com">vi=
neela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.3.4 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: c40ac16d79026169639f47be76a3f7b9d8b517=
8e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-hardknott-25.0.4<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: cbe13ef39105909ca13c6b6a84e4c66995e97a6c26e026b=
84046e5b8c5fd4a54<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/poky-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.4/poky-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.4-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0ca080a23c2770a15138f702d4c879bbd90ca3=
60<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-hardknott-25.0.4<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: cc11201a8e4e80f4c776bc513d8442ffaf1dfd44fab7a72=
133da3aaabb967ff2<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/oecore-hardknott-25.0.4.tar.bz2">http://downloads.yocto=
project.org/releases/yocto/yocto-3.3.4/oecore-hardknott-25.0.4.tar.bz2</a><=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/oecore-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yocto/y=
octo/yocto-3.3.4/oecore-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d121=
9e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-hardknott-25.0.4<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: eff7ca53ad2360faa277fa7def3eb618e3a0e66e6008a56=
0bcf6839c85042bca<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/meta-mingw-hardknott-25.0.4.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.4/meta-mingw-hardknott-25.0.4.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/meta-mingw-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.4/meta-mingw-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db=
0f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-hardknott-25.0.4<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 9f273fc39082840baefb31de42efca6fe53f36679f66510=
1b803df33d061c2a1<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/meta-gplv2-hardknott-25.0.4.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.4/meta-gplv2-hardknott-25.0.4.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/meta-gplv2-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.4/meta-gplv2-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.50<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.4-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0fe1a9e2d2e33f80d807cefc7a23df4a5f760c=
74<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-hardknott-25.0.4<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: d689dc6647de2c880b814c0d5955b7d46c910e82221b048=
0eb7bd5fd4f455067<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.4/bitbake-hardknott-25.0.4.tar.bz2">http://downloads.yoct=
oproject.org/releases/yocto/yocto-3.3.4/bitbake-hardknott-25.0.4.tar.bz2</a=
><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.4/bitbake-hardknott-25.0.4.tar.bz2">http://mirrors.kernel.org/yocto/=
yocto/yocto-3.3.4/bitbake-hardknott-25.0.4.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: e8e4539e1e812ea835192d1e35cc9992a43059=
ca<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">----------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Anibal Limon<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Armin Kuster<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Caner Altinbasak<o:p></o:p></p>
<p class=3D"MsoNormal">Chandana kalluri<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Claudius Heine<o:p></o:p></p>
<p class=3D"MsoNormal">Hongxu Jia<o:p></o:p></p>
<p class=3D"MsoNormal">Jon Mason<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Kenfe-Mickael Laventure<o:p></o:p></p>
<p class=3D"MsoNormal">Kevin Hao<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Kiran Surendran<o:p></o:p></p>
<p class=3D"MsoNormal">Konrad Weihmann<o:p></o:p></p>
<p class=3D"MsoNormal">Mark Hatle<o:p></o:p></p>
<p class=3D"MsoNormal">Markus Volk<o:p></o:p></p>
<p class=3D"MsoNormal">Martin Jansa<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Pablo Saavedra Rodi?o<o:p></o:p></p>
<p class=3D"MsoNormal">Pgowda<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Thomas Perrot<o:p></o:p></p>
<p class=3D"MsoNormal">Tom Pollard<o:p></o:p></p>
<p class=3D"MsoNormal">Trevor Gamblin<o:p></o:p></p>
<p class=3D"MsoNormal">William A. Kennington III<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume=
_control manual test case failure<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: fix CVE-2021-41617<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: Fix CVE-2021-3530<o:p></o:p></p>
<p class=3D"MsoNormal">ghostscript: Fix CVE-2021-3781<o:p></o:p></p>
<p class=3D"MsoNormal">ncurses: fix CVE-2021-39537<o:p></o:p></p>
<p class=3D"MsoNormal">vim: Backport fix for CVE-2021-3770<o:p></o:p></p>
<p class=3D"MsoNormal">bind: Exclude CVE-2019-6470 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3682<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: fix CVE-2021-33910<o:p></o:p></p>
<p class=3D"MsoNormal">connman: add CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2021-38114<o:p></o:p></p>
<p class=3D"MsoNormal">tar: ignore node-tar CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2021-38171<o:p></o:p></p>
<p class=3D"MsoNormal">go: Exclude CVE-2021-29923 from report list<o:p></o:=
p></p>
<p class=3D"MsoNormal">flex: Add CVE-2019-6293 to exclusions for checks<o:p=
></o:p></p>
<p class=3D"MsoNormal">tcl: Exclude CVE-2021-35331 from checks<o:p></o:p></=
p>
<p class=3D"MsoNormal">bluez5: fix CVE-2021-0129<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2021-38291<o:p></o:p></p>
<p class=3D"MsoNormal">squashfs-tools: fix CVE-2021-40153<o:p></o:p></p>
<p class=3D"MsoNormal">mc: fix CVE-2021-36370<o:p></o:p></p>
<p class=3D"MsoNormal">apr: Security fix for CVE-2021-35940<o:p></o:p></p>
<p class=3D"MsoNormal">sqlite3: fix CVE-2021-36690<o:p></o:p></p>
<p class=3D"MsoNormal">ruby: fix CVE-2021-31799<o:p></o:p></p>
<p class=3D"MsoNormal">ruby: Security fixes for CVE-2021-31810/CVE-2021-320=
66<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to hardknott head revi=
sion<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.3.4 hardknott release<=
o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: migration-3.0: fix ref to removed variab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.3.4 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">bitbake: fetch/git: Handle github dropping git:// su=
pport<o:p></o:p></p>
<p class=3D"MsoNormal">meta: bump HASHEQUIV_HASH_VERSION after RPM fix<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bootchart2: Don't compile python modules<o:p></o:p><=
/p>
<p class=3D"MsoNormal">tzdata: upgrade 2021a -&gt; 2021d<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: update 20210119 -&gt; 20211016<o:p>=
</o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2021.07.14 -&gt; 2021.08.28<=
o:p></o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2021.04.21 -&gt; 2021.07.14<=
o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210818 -&gt; 20210919<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.75<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.74<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.73<o:p></o:p></p>
<p class=3D"MsoNormal">strace: show test suite log on failure<o:p></o:p></p=
>
<p class=3D"MsoNormal">waffle: convert to git, website is down<o:p></o:p></=
p>
<p class=3D"MsoNormal">sstate: fix touching files inside pseudo<o:p></o:p><=
/p>
<p class=3D"MsoNormal">oe/utils: log exceptions in ThreadedWorker functions=
<o:p></o:p></p>
<p class=3D"MsoNormal">testimage: fix unclosed testdata file<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.4<o:p></o:p></p>
<p class=3D"MsoNormal">poky.yaml: fedora33: add missing pkgs<o:p></o:p></p>
<p class=3D"MsoNormal">reproducible_build: Work around caching issues<o:p><=
/o:p></p>
<p class=3D"MsoNormal">rpm: Deterministically set vendor macro entry<o:p></=
o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.7 -&gt; 1.16.8<o:p></o:p></p>
<p class=3D"MsoNormal">ruby: fix the reproducibility issue<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.70<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.69<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/glibc: Handle incorrect encoding issue=
sin glibc test results<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.3, support glibc 2.34<o:p></=
o:p></p>
<p class=3D"MsoNormal">uninative: Improve glob to handle glibc 2.34<o:p></o=
:p></p>
<p class=3D"MsoNormal">pseudo: Update with fcntl and glibc 2.34 fixes<o:p><=
/o:p></p>
<p class=3D"MsoNormal">nativesdk-pseudo: Fix to work with glibc 2.34 system=
s<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Fix to work with glibc 2.34 systems<o:p></o:=
p></p>
<p class=3D"MsoNormal">gpgme: Use glibc provided closefrom API when availab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">m4: Do not use SIGSTKSZ<o:p></o:p></p>
<p class=3D"MsoNormal">util-linux: disable raw<o:p></o:p></p>
<p class=3D"MsoNormal">patch.bbclass: when the patch fails show more info o=
n the fatal error<o:p></o:p></p>
<p class=3D"MsoNormal">rng-tools: add systemd-udev-settle wants to service<=
o:p></o:p></p>
<p class=3D"MsoNormal">python3: Add a fix for a make install race<o:p></o:p=
></p>
<p class=3D"MsoNormal">libnewt: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/manual: Fix no longer valid URLs<o:p></o:p></p>
<p class=3D"MsoNormal">multilib: Avoid sysroot race issues when multilib en=
abled<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Fix a source date epoch race in reprodu=
cible builds<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Work with reproducible_build<o:p></o:p>=
</p>
<p class=3D"MsoNormal">oeqa/selftest/bbtests: Add uuid to force build test<=
o:p></o:p></p>
<p class=3D"MsoNormal">gobject-introspection: Don't write $HOME into script=
s<o:p></o:p></p>
<p class=3D"MsoNormal">mesa: Ensure megadrivers runtime mappings are determ=
inistic<o:p></o:p></p>
<p class=3D"MsoNormal">gnupg: Be deterministic about sendmail<o:p></o:p></p=
>
<p class=3D"MsoNormal">package: Ensure pclist files are deterministic and d=
on't use full paths<o:p></o:p></p>
<p class=3D"MsoNormal">rpm: Ensure compression parallelism isn't coded into=
 rpms<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.153<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.150<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.149<o:p></o:p></p>
<p class=3D"MsoNormal">mesa: gallium/dri Make YUV formats we're going to em=
ulate external-only<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: upgrade glibc-2.33 to latest version<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: fetch2: clarify the command-no-found error =
message<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Make exception printing clearer<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-worker: Handle pseudo shutdown in C=
trl+C case<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Ensure python stdout/stderr is logge=
d correctly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-worker: Allow shutdown/database flu=
sh of pseudo server at task exit<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: npmsw: Avoid race condition with multiple n=
pm fetchers<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/runqueue: Ensure hashserv exits befor=
e deleting files<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/git: Use os.rename instead of mv<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/git: Avoid races over mirror tarball=
 creation<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: test/fetch: Update urls to match upstream b=
ranch name changes<o:p></o:p></p>
<p class=3D"MsoNormal">scriptutils.py: Add check before deleting path<o:p><=
/o:p></p>
<p class=3D"MsoNormal">recipes-support/ptest-runner: Bump to v2.4.2<o:p></o=
:p></p>
<p class=3D"MsoNormal">rm_work.bbclass: Fix for files starting with -<o:p><=
/o:p></p>
<p class=3D"MsoNormal">package_ipk: Use localdata store when signing packag=
es<o:p></o:p></p>
<p class=3D"MsoNormal">glew: Stop polluting /tmp during builds<o:p></o:p></=
p>
<p class=3D"MsoNormal">wic: keep rootfs_size as integer<o:p></o:p></p>
<p class=3D"MsoNormal">Update mailing list address<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Handle SystemExit in python tasks co=
rrectly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Avoid duplicating logs in verbose mo=
de<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: process: Don't include logs in error messag=
e if piping them<o:p></o:p></p>
<p class=3D"MsoNormal">bash: Ensure deterministic build<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/buildproject: Ensure temp directories are clean=
ed up<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/gotoolchain: Fix temp file cleanup<o:p=
></o:p></p>
<p class=3D"MsoNormal">oeqa/qemurunner: Use oe._exit(), not sys.exit()<o:p>=
</o:p></p>
<p class=3D"MsoNormal">libsamplerate0: Set correct soname for 0.1.9<o:p></o=
:p></p>
<p class=3D"MsoNormal">bzip2: Update soname for libbz2 1.0.8<o:p></o:p></p>
<p class=3D"MsoNormal">pybootchart: Avoid divide by zero<o:p></o:p></p>
<p class=3D"MsoNormal">expat: pull from github releases<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-bsp/5.10: update to v5.10.63<o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp: Bump to the v5.10.55<o:p></o:p></p>
<p class=3D"MsoNormal">local.conf.sample: Update sstate mirror entry with n=
ew hash equivalence setting<o:p></o:p></p>
<p class=3D"MsoNormal">poky: Use SDKPATHINSTALL instead of SDKPATH<o:p></o:=
p></p>
<p class=3D"MsoNormal">sstate: Avoid problems with recipes using SRCPV when=
 fetching sstate<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue/knotty: Improve UI handling of set=
scene task counting<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Show a readable error for inval=
id multiconfig name<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-worker: Improve error handling<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: cooker/process: Fix typos in exiting messag=
e<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Clean up task stats handling<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Improve error display for handl=
ed exceptions<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Improve missing core layer erro=
r message<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Show error for no BBLAYERS in b=
blayers.conf<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch2: Use our own git server for dt=
c test repo<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.144<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.143<o:p></o:p></p>
<p class=3D"MsoNormal">systemtap: Fix headers issue with x86 and 5.13 heade=
rs<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.63<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.61<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Catch and error upon circular task r=
eferences<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Improve multiconfig deferred task=
 issues<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Allow upstream for local hash equiv=
alence server<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix issues with multiconfig defer=
red task deadlock messages<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Avoid deadlock avoidance task gra=
ph corruption<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM8PR11MB5605D87CA827DD59CB3B62E9889C9DM8PR11MB5605namp_--

