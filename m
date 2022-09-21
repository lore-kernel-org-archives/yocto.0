Return-Path: <jing.hui.tham@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584DEC6FA82
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 02:14:49 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.1900.1663726482875624588
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 19:14:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=mTpqreiZ;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: jing.hui.tham@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663726483; x=1695262483;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=WGuJkQaV/S8ejdcj6JXNGpYI/SdRwyoqRYEmkxcZpZQ=;
  b=mTpqreiZqsg2eV8ZqseI/+eDmNEK1zItHrWqIFi8WEc+UEy8wVlA0jzw
   f6MjchAe2kptChygJEA3XBfTMRFdCrjWpnFjIYeoMFN4p0lbbX24Gi0Y0
   /FCx7OJfbDHIeSNREhnc12RUYfMSVJU4CYf1XLZ7vgtG68sAWMNxTsaAI
   38xkxmLcfmunf1xQfqvQXBudQuiZJ0j0m00KG/FCE2ujRwEOe5plmR6Lz
   2VzqAJLgOi0NYG4zNlBNgi23LfLRNLGLFdMJ1VsFrtzvQh9a2MEm17xjz
   JHXJmzM6fSncGzzFu38f+jH4L37CTrlMCiuvtewKUJipjbAdxgKBRgmnc
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="326184873"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200";
   d="scan'208";a="326184873"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 19:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200";
   d="scan'208";a="649849610"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga008.jf.intel.com with ESMTP; 20 Sep 2022 19:14:41 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 19:14:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 19:14:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 19:14:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MM4au+hCTQJx6v3NRNMkuaUcDRY2wA9Ll9TD0IzcZ1ccS3/JXnFBIA/K/UTFJuN0Doz7S0LusABi6qgdnnLPtrykqHEFA2uN3+3k8LrqE362yvf2IuD+L+9UkYWtpK0SR/2BGyjKgirr4vsgAUs87oiAj3RETa1ccjkPwKhjrwvgiiP+BYf1zAIcXWSV8oEaXeITEKdpN3YXxw77lp81FrL28kk8p5xmyq8r+79jYvfcPQ+LBwan+STP0Q79IL2kMQKbeK5ClpapM58WNd2hlrnJw8N/igLHT4pztkjbNJlDPCMMbf+hK2imyhrI2TtYHCFOtdm5kkn6x3UoJVir3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ODVa2TFriVvr9UhcXyB+fcqzZjvf9KSyxVnPnaGuhCw=;
 b=MBdKBqe5snCUSAdqGC6Y8VNL5kaIDaBUarIQ7RhUEUYyI3JH3fdrYHSA6u23gFDtM5Eokn+MvZ5dFADHTeDsvtJfDqXgfyapCXIbfXuuxPpjCWRB2sO/kEsZW1vQt5gY/jyc+M3FxI32X0Y4bTpSQw1rYaY8BtzkU1hPFLgb9BWdQYoMEbRe2gIXZHL9EDWbKutCP5LFK+9y00iy/4ybQyC9GgETtCHeKIaQHdidzjd9ByzlrAVa5V6ZJUHVEOe/kL0+ETpfdbbLQVI3CT8pIJ/iH+6OSV+Y6aiwO0Taughcjb/5Llh00xG6aouYquS8IxvDaqFAJFrwtRyDsBK7qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11)
 by SA1PR11MB7131.namprd11.prod.outlook.com (2603:10b6:806:2b0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 02:14:39 +0000
Received: from BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::de8d:918d:3dee:3ec4]) by BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::de8d:918d:3dee:3ec4%7]) with mapi id 15.20.5654.014; Wed, 21 Sep 2022
 02:14:39 +0000
From: "Tham, Jing Hui" <jing.hui.tham@intel.com>
To: Pokybuild User <pokybuild@yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>
Subject: RE: [yocto] QA notification for completed autobuilder build
 (yocto-4.0.4.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-4.0.4.rc1)
Thread-Index: AQHYzUYCV7f4Hw8SQkW6GWjWmLng/63pJFGw
Date: Wed, 21 Sep 2022 02:14:39 +0000
Message-ID: 
 <BY5PR11MB415201EF35FEF85D1E9941E9A14F9@BY5PR11MB4152.namprd11.prod.outlook.com>
References: 
 <010101835d2969ae-38f29d77-d301-465f-a510-8ba455d8ff88-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <010101835d2969ae-38f29d77-d301-465f-a510-8ba455d8ff88-000000@us-west-2.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR11MB4152:EE_|SA1PR11MB7131:EE_
x-ms-office365-filtering-correlation-id: 8b10b8d3-8ce3-43bf-0eb4-08da9b7709d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9s8CrZzGojukBZdz6kH0jvHKmo1qH15uJACeIGVedwigYVH3FIL9Bll21bkunl1cd6WWenq/ILwr9Yp1ygOVD8ZdEGOgxD06LNuo1Kz2zwYJZLYbxH8Iq3By458i2CmDW7J60go/pA7mXHeuTX4xsPhleqhSYDT7YnsAXX2DcDSCcNr8yvGZrglLk6TnJVU9XjDyGR7DPpx560+lFyIRzI4G77B3rdgmThe8C9rnpw7AHas0FyWsaQUHwNl9zAgCvwEaci+njFc5R8DtWUcnzRXxWua/F9obWF6Sn2qPtqk6zvX26gPD/ojFw9aPobkQotnhjfGOsr+zV3+XZUsvv1hj7Z9yIfNrPJUK4Sp2i7/YgDun3M8uqbuuAby1+3H33olstSvqSvJ8YhqQWU8g4jIM85fRTTvBN7UXun3Lz/LBD5HDNLBXBV9lgcJstb+w2uG1kjkiez+Req4b9JavzAZIQgM9QkOW6Arjs5+2LA0rWQ5S6Z9CHYcjnjd9QYia0XF5epSVjY93vzMeX6beG9Jara7rDMV+E1BgQFQ9VEXHpSK0gwOQwiJKzKByDh24eHLAuuul9LrcifggZvOmX0wXk5PQdtBHhrZSz+bGnRl7QUh1FWzIsIl/lv5jb9JUA5fgHIaDDvuuDkqVEPFtnKxP4kNeZWVIoLMYZ8IbYq4ngD5w7X1IFS6HLt8G9zLx2TDXM6CUoiedAiszoGWl7G5d1IQEflEv/KP61GoDr8T5AL5SWdXYE5wK7ljX20MKrklSmkJsnhheiO0I2vdYtNezXw1c4VCFV+qSby4fxGk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4152.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199015)(52536014)(53546011)(5660300002)(83380400001)(2906002)(7696005)(38070700005)(316002)(110136005)(41300700001)(966005)(8936002)(186003)(64756008)(122000001)(38100700002)(66556008)(86362001)(15650500001)(82960400001)(66446008)(66476007)(66946007)(26005)(9686003)(8676002)(71200400001)(33656002)(478600001)(6506007)(76116006)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?sNgZpakwMaFN/vD0BH8TCpUPAQNVzwe87hZQ44Xv5vwXG6JzTsc18mujZdDq?=
 =?us-ascii?Q?ZWZ17/X89c/OpM5ipQpVIl2Zx7sRZgVSc1nJOeOnljSfhneYap7wGtaXNaKg?=
 =?us-ascii?Q?DGFpXJwYUvo2cRP/HO79CQH2vanDJmjjjO0rq4PRHtapvYmUer3ASF5rxrmO?=
 =?us-ascii?Q?W9alPZ8nYdNkMRDnUX3ENDiMrGYT4QrKQ0UnluTrV9Lyl+uski5mlT3PsRra?=
 =?us-ascii?Q?CYM6aEZx6SGzqabZx+j++4fbLMAO7wM8vKFCaswSOwkrVhU2VPWkDRdl2Y86?=
 =?us-ascii?Q?ZbyrriGGKYMmWiQUBGYZm/8gsNII97MakCkcuSKp+6qIXdN9Z2DTcVgitUrP?=
 =?us-ascii?Q?5iBgAkwizXIWY0J9aaarqz7JYzC5JeaLl2JFgluKih6VvZdtqZ3SgwR1YbWH?=
 =?us-ascii?Q?jf9J6T+cNM71ITm+OQjsJBzyGlJg0578fFixYmapjT3YnxXZ+rW6j8BU/Dkf?=
 =?us-ascii?Q?AqXFRLNPDUyAfVEt3WB23cjfDa/MZFyZTxuZuJqWKCEcwAggTpT5CaGEkf7Z?=
 =?us-ascii?Q?Krf9HfUsbuWkReMkOe8T8LTaT6rSyKuXfxM3Cfre/jNVRfkkd6DeGOFnGVaH?=
 =?us-ascii?Q?hB6Qt5giWhcAlJy1CoY2EkyZJYPltTI8Ssn8Lg5FfK3ACaqfo6qNDEp49OKh?=
 =?us-ascii?Q?trg7rHgsJ5UuB8xtbIgqGQYnXOPeYaNaxSEfPxUeMR3osLSZEv9DHauvR62h?=
 =?us-ascii?Q?+ebHK+nOwa4X9EUqVU4tWtqrbBFtYUNqhXKk9rl/apXp/NKDLwtxPMpe/ssM?=
 =?us-ascii?Q?UU9zHJJEiG+3F3QhXd1QOh3yrhQ9O5Hu0bg1plyT7lCKS4SoW9gQMChOIYtz?=
 =?us-ascii?Q?cjHr78UuZVDT5q9kWeBg+gAe/GsfbFlZCEyMquvg1ioy12Tq0kCmp15o7WQ0?=
 =?us-ascii?Q?HycWOFI1J2eau2hQ1t2dFCd8L+h+wRAtVuBbUszv2Jxp683hhJpjxRJTpnCr?=
 =?us-ascii?Q?1FPjwzr7yxPMPIzIECQZumABq+WqrmPh+cLox9/qAmiyVLy+5zMmd7m01+tz?=
 =?us-ascii?Q?y2uzZZSvhReR385eZeuXRWd/GZlMb/czfGJfIfecYrV0PK39anORlvnGcHSK?=
 =?us-ascii?Q?jkmFKuI6wY+pt0iBfVfYmBe+QOAz3ojLrH+UfL9pXlD4bhI/bRRxoDn2eVxN?=
 =?us-ascii?Q?PSNufM6hznc0ZWZNcYdJb8VeuFdY+fmpvQFCZyPRbO45YTe28kX4wJ2f+9uV?=
 =?us-ascii?Q?WXm4hVi6W1zDb9uqY09jyeGhvf7dJWAi4mbx43iJI30BO0+tPzYwydRmX7tJ?=
 =?us-ascii?Q?O5deAEQEQ/tJVUeg2q1uYnleqqr8gsWgWuMDqBXB7mFpnhHPPhsnCur1idm3?=
 =?us-ascii?Q?a5Nd9hzAmeYSeV4joXw8D/X1a/bBSzvwiTtAgf5oJO5Q+fwd/fP7J9UE5fJ1?=
 =?us-ascii?Q?vQChpJSkHDhns6L4/jvXO3EYMy+XISf8/FUwgu6wWIjmF4yqN30S5sO9HkRH?=
 =?us-ascii?Q?z/FuYq0Orgf4vxrYq36kvIEVUUXHTMOJdHExuct8JHjQqAqzAUG15gFSCvGI?=
 =?us-ascii?Q?uKEM4RRJurDdusZ0EDtz299hpKsoY49dYilDGm7LA4Gst6Zi+bh/TWxzpd3r?=
 =?us-ascii?Q?8c+Zki2YmI3edjNUGTBYH5BYMTv0fIN8Sa9guG8E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8b10b8d3-8ce3-43bf-0eb4-08da9b7709d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 02:14:39.4470
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 89To9zPwNWc/mY8fXwcJfj0rvdOGt7Knq7YXE7MTUthxgJ5Ad9vf8CkPVQWgu6cRLWFHB0SV1XJvR8jy9LnxqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7131
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 02:14:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58109

Hi all,
=20
Intel and WR YP QA is planning for QA execution for YP build yocto-4.0.4.rc=
1. We are planning to execute following tests for this cycle:
=20
OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw
=20
Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. NUC 7
3. NUC 6
4. Edgerouter
5. Beaglebone
=20
ETA for completion next Monday, September 26.
=20
Best regards,
Jing Hui


-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Pokybuild User
Sent: Wednesday, 21 September, 2022 7:09 AM
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: [yocto] QA notification for completed autobuilder build (yocto-4.0=
.4.rc1)


A build flagged for QA (yocto-4.0.4.rc1) was completed on the autobuilder a=
nd is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.4.rc1


Build hash information:=20

bitbake: ac576d6fad6bba0cfea931883f25264ea83747ca
meta-agl: 2e8dbab520652afa5e39e74793bdc917aa9ee86b
meta-arm: 0a5eba13d81f5c5722a13b816193ebf93c0fd198
meta-aws: 3b4ce1c62e3d6fb7d4695e9b0c04bf7f922f051e
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 01ad1a73aaab49d377d14bad8a7dec48f86cba83
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 8f96c05f6d82fde052f2cb1652c13922814accb0
meta-virtualization: 8c5f038cb92fa4b02246d2d1479a003eecf5fe93
oecore: f7766da462905ec67bf549d46b8017be36cd5b2a
poky: d64bef1c7d713b92a51228e5ade945835e5a94a4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


=20

