Return-Path: <vineela.tummalapalli@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2222FC433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 00:33:16 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web09.5651.1635208394651770657
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 17:33:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=lpfVte/p;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="228553041"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800";
   d="scan'208,217";a="228553041"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800";
   d="scan'208,217";a="578342893"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2021 17:33:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 25 Oct 2021 17:33:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 25 Oct 2021 17:33:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 25 Oct 2021 17:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NhSEM7pLve9W5RrdCoUAvM2EgjnvlDzzAYetxtaTB1JyxcYF2WmK+h2B6VZe1Q/TgVMDiuHhrOQHP3CRSWchPJPXpEZUSeVG0CN5AgRUjBHXBP1vCM3fjK7JQ3k1iB6yIzDY8yQq6MEiK00jH93dWaJkg0Q1jfSwV0q3YqkDjRNcspDe2vLcu2RXtPZ4zvq4LlyApp7MQJcKk0X5qmF0VNGiwWzL0G1jeT1ODR1e26yG63t24lqZxXn5aBYLey/qrtlGADflyJrseiKLBNyzOSeSMG6KI7+I4KVpBrMBQA2LqvfANyHT5eN0eWhhzpyGVcbkWs12sJrglLFsohjQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uWsm5C6CHOs78QL82EHA5yBfH3T+goya/SxYkE654gA=;
 b=Ks6/VML/oCT7IUz7RPlNzL0aPX1yG0/+atB8+eP0DGtL/wftjg2yn2m5l/JmPUX0/3t1kxKIlPpXituaHZTGjBWSy4QtZ6k7xqjn7Zy+Z702wDybozjtWMpMlUnWDFVipj1euq1KRKmWqDVOo8QtHABnDbN7R1jFuTgTE0cBSeeWXbVrD7/KRo2F5Z0gqpDQt0jk6Su8NYdEa5R7XnlKcFUVmDEfa2lh1vebaRnejI97nWNHLyQBufLu1S4Yn/s+5ma0EInTsEKEvKbo3gGD5EbjYH3jUxLb8wfaTsO3kSGatksAdDIJwbNRvA/qQNWfU/OueTweHB7yJBkgwCF0bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uWsm5C6CHOs78QL82EHA5yBfH3T+goya/SxYkE654gA=;
 b=lpfVte/p/LrVp753tU7H//NakwH9+Ov0S0sOQM5yPCNjuwQOOwhzfsD1bK3VPZZQXI6TzWkMgrj8zJ7mwqEJJTbYne8WLj4nPQ3WDpJtp4/5TZfFHItTYjxSHX3Z/eJzXkdL6Yvd+Rl8bb+JDA8MjfGW/zViYEuquMBV774ZGDY=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 00:33:07 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::99ab:a74f:4bdb:8783]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::99ab:a74f:4bdb:8783%7]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 00:33:07 +0000
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.4 (honister) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.4 (honister) is Released
Thread-Index: AdfJ+ZkcHdlmMC1uSvOU+ausuRZruQ==
Date: Tue, 26 Oct 2021 00:33:06 +0000
Message-ID: 
 <BYAPR11MB33016329CA99326D2BEB53FD88849@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 568581af-6bc0-4241-a107-08d998182e34
x-ms-traffictypediagnostic: BYAPR11MB3255:
x-microsoft-antispam-prvs: 
 <BYAPR11MB325537D4DD2534E25F9104D388849@BYAPR11MB3255.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cfQBHs1SFV10O41+l3Xme+3nu23/BRiDvATlOVybLPvG62ebEhbF0XstYQmpLE0CG7X6NLAH5e07gpR88jPa0DqoT2JNh+hVvBqjRzYYvrJKCqFEzf8gJFzs+AyAjJxLfOS/mV6gTDhxqbZxH5ROUD0+fAb5GEIO03yrwOhNzGNQ00PwqqfQYG7EjC8RZniJqJvzOtWt+/z/53LzSE+SIhsKViXfYu1NL8B8cLubxnR8pcs0Te1bPjnVB7QDT/noAzGV+NsDtXv2LOCdbDXkciinMLxxZgR9x/re38O249ovFR75gEbzD0WI5qpKj185uqLViQlEOKFDSG+ejZFS+2C3zbpkOda34H7mShcmUNyzjCYObX5+Y79Y9neqmBdoyZAsKPuO+86qW4Dt3pv0bO3XT1wdikHNOv5HWoqA6GPHW6U0AFNhbEDlq//d6RIVPii8K0PouFJgmr2o0AkFBuRm+JAU0wO4PWiojk9ogH0iPSRGvA7ErU9eDarRIazxVlglcbfabPq8lln/gMTym5g4ZT2+xKpJBeOSQ87LRL17jRqXHAIhE1BQ2f/yfWPTtW6OLo0v+z9smrsT5XBv7r2PlTmhf06ogmOi0IRl7pfzggljKqk2D7EfpcEpZVJ1lBvrjEZZp+HnGhbVuLLH0uJHG9QT9D6KIMye3mVF0P62mCE5XdvlpYjD6C0RO7p/ixKsZsxMEZH6pVOpkk78+kYlOGOs5Cs6ZQIkPKeSW0+nh3M/Z1S14b6FWd2xTxYvdCLH1EUHf/UofR6NmoE34grpaXFXMu64b4Rh6pdOwWZmN9W8UsJwhb8CMCYDHxJrQZhfQQQ4+63Gl6xXNSMneX0zEThaIqq7/OcZ2Cxlg3I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(33656002)(8676002)(966005)(71200400001)(6506007)(76116006)(66556008)(110136005)(122000001)(66446008)(30864003)(8936002)(66946007)(86362001)(186003)(66476007)(21615005)(64756008)(166002)(7696005)(316002)(38100700002)(5660300002)(82960400001)(52536014)(55016002)(9326002)(508600001)(450100002)(2906002)(9686003)(26005)(83380400001)(38070700005)(491001)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?uBt4iFDd515nA206X2x0c2DaocaKjMGvGLNAPbTn/8IXuLiIK9bkFNuA5A?=
 =?iso-8859-1?Q?DNUlDrzRDEjgCawYZh5m1UW7/P9bvIIlahjTdI2K6nkKNNcDqSUxELOg1W?=
 =?iso-8859-1?Q?1XhDsRFnA52yVVP7cwji9jlbXInAtJjUnFUS7pXafBDpP8Z9teRDdSQtFg?=
 =?iso-8859-1?Q?FZgFnkWm/g8uDcredawbkVFJD5YrCSNCH0lZ6XrJsMdKZDymo+rOvm2UmB?=
 =?iso-8859-1?Q?ZHQVXCIperlrPNZgk3o6jBkhJafg3zUCtQpd1D2JuqqYDdPjLHKFmJncBY?=
 =?iso-8859-1?Q?R0zZVE2/rzp1vbUVCcaEAp2AOSZTPV/cC6QzQTCdOs++6ELmkhjbLDtiQp?=
 =?iso-8859-1?Q?C1IjlweK1TSRDC7l/npjTxPL2+X//OBrMWFIqtotEbtQSArCjfqTDAFtCO?=
 =?iso-8859-1?Q?6mnMPBUsSEErUod7cldAofbmdz1KhU3eBeSYYT3kIQSqupmQyFaAEpYwpd?=
 =?iso-8859-1?Q?gdFShGiA1XuTfGudAAH6w1GRLPwF4Ab8kxcydLxFAJ6+ts5tVh51twnCrE?=
 =?iso-8859-1?Q?WFHjpm5WBWFteK74qTK689itabCrb0A8jbgMQucRSBk2PvmWM5NS57+jk5?=
 =?iso-8859-1?Q?/gPgW5cCXOgIvqHSc+FPoXS1SX3CtHf9SwDVV9aVICKCda/5Uvax+3Y6Ph?=
 =?iso-8859-1?Q?mQaUpoOWSO8NHaTCA7/a6UXv2fx9KKWChgRsubxDVbF+R2t92TVpzspeMb?=
 =?iso-8859-1?Q?MXDNUc6hONFx2ipWDeMCNr+MC/6RRWuUFRD8JckrQVqPMxwbBMIdtnPqbd?=
 =?iso-8859-1?Q?Q2qcU0qH9iu9N467bFICzNcQvwFoh7NwcBCVKl9EuWMdiyBlFlHlO0vBw7?=
 =?iso-8859-1?Q?+rbYKg61M8t0J/I9g4qInqTzUaGqQI+sJeaahHmDynF6v3TJqfs0ub1a3r?=
 =?iso-8859-1?Q?4CMa6HHsViE3xjhfRYx6VZ9z8Vkl0X1U5Vx6UN+FDOMAi0P0XMpkl1djpw?=
 =?iso-8859-1?Q?J8Diu/xDX1RaGjNVM1XDP1aTbb5iUjljPh2s40aFLhNIKv5b1lGU9AK8zA?=
 =?iso-8859-1?Q?++zQjbZENqkU4t2gF9e28b7Dm42+AWzqcE3wpx+4MM/+A+951u+4gj47RK?=
 =?iso-8859-1?Q?BGEfiqJeQTv6Tap2Xps6JG8b12TpOTkLEwNmT1OLYAihoXFcy78XhO+grk?=
 =?iso-8859-1?Q?XevawzazGukxxvsH5WhlY/UR6Ifhmts2lBeZvIJI/vNtvS6atHScxsycMk?=
 =?iso-8859-1?Q?Xe0V8B1VU3ogJ+zg1645p6rlRellJQ/Y/pl+36GGx+5gDhNE0JV8RXG4Kk?=
 =?iso-8859-1?Q?KQJ1RyfWt7TYB4eG0vQzKu8LJEVPNxeRszqP+YIVa5DeKI/XIQzxURFVmd?=
 =?iso-8859-1?Q?QjTdaLlh/OjT/1KRzMJK9TiB1ZifVBBF8soTSB9lR/ypFZN91uNVR/X1fP?=
 =?iso-8859-1?Q?ybBmzmqxaFlDrv7j8jN8LUdP+o0N1vDjYRbE5qqWwRMvmoiVIxEGBH9Eph?=
 =?iso-8859-1?Q?G/WuOuL1c1B/tRE9coXXWCx+ifqp0bYLrF2rzxknLIk4iZa4WPwU9rBHa0?=
 =?iso-8859-1?Q?XZi8yUPCULkysY0m9EbcH4nlxGDAnTZw6M1mByqDHzuwS121UW5ge1URzK?=
 =?iso-8859-1?Q?4GxxDIP0tzKzTEsCXsuRouK4daOiJPsMvgX1wH+fjnvmTiUXryIz4GelV3?=
 =?iso-8859-1?Q?SIc7UtpSGSFqaKuuZBINGktILASWzyfaWZHRsUYmv3VzYpeab12hxve04o?=
 =?iso-8859-1?Q?FrKft153I7t3JDZ7WoZYl1v9KR9N/jpQIfc7E4rjeObaYrlbne/fk9IolO?=
 =?iso-8859-1?Q?ojfw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB33016329CA99326D2BEB53FD88849BYAPR11MB3301namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 568581af-6bc0-4241-a107-08d998182e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 00:33:07.0044
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 QSvcsSfk7X3owhtBIirdCXTCPtyXrBG2zN75T8NsqSB7C9aNYTL0pPa0qj0vHdRB+6qnQ6o6vrfuCd8UHJyqw4HYAMpEl9UEdveFlTyFTLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 00:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55158

--_000_BYAPR11MB33016329CA99326D2BEB53FD88849BYAPR11MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.4 Release is now available f=
or download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/poky-f6d1126fff2=
13460dc6954a5d5fc168606d76b66.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/poky-f6d1126fff213460dc6954=
a5d5fc168606d76b66.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>
Yocto Project Build and Release

- --------------------------
yocto-3.4 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: honister
Tag: yocto-3.4
Git Revision: f6d1126fff213460dc6954a5d5fc168606d76b66
Release Artefact:  poky-f6d1126fff213460dc6954a5d5fc168606d76b66
sha: 11e8f5760f704eed1ac37a5b09b1a831b5254d66459be75b06a72128c63e0411
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/ poky-f6d1126fff=
213460dc6954a5d5fc168606d76b66.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/ poky-f6d1126fff213460dc695=
4a5d5fc168606d76b66.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: honister
Tag: 2021-10-honister
Git Revision: bb1dea6806f084364b6017db2567f438e805aef0
Release Artefact: oecore-bb1dea6806f084364b6017db2567f438e805aef0
sha: 9a356c407c567b1c26e535cad235204b0462cb79321fefb0844324a6020b31f4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/oecore-bb1dea680=
6f084364b6017db2567f438e805aef0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/oecore-bb1dea6806f084364b60=
17db2567f438e805aef0.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: honister
Tag: yocto-3.4
Git Revision: f5d761cbd5c957e4405c5d40b0c236d263c916a8
Release Artefact: meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.b=
z2
sha: d4305d638ef80948584526c8ca386a8cf77933dffb8a3b8da98d26a5c40fcc11
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-mingw-f5d76=
1cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-mingw-f5d761cbd5c957e4=
405c5d40b0c236d263c916a8.tar.bz2

Repository Name: meta-intel
Repository Location: https://git.yoctoproject.org/git/meta-intel
Branch: honister
Tag: yocto-3.4
Git Revision: 90170cf85fe35b4e8dc00eee50053c0205276b63
Release Artefact: meta-intel-90170cf85fe35b4e8dc00eee50053c0205276b63
sha: 2b3b43386dfcaaa880d819c1ae88b1251b55fb12c622af3d0936c3dc338491fc
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-intel-90170=
cf85fe35b4e8dc00eee50053c0205276b63.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-intel-90170cf85fe35b4e=
8dc00eee50053c0205276b63.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: honister
Tag: yocto-3.4
Git Revision: f04e4369bf9dd3385165281b9fa2ed1043b0e400
Release Artefact: meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400
sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c8e79249e1d337558657d3fe
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-gplv2-f04e4=
369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-gplv2-f04e4369bf9dd338=
5165281b9fa2ed1043b0e400.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.52
Tag: 2021-10-honister
Git Revision: c78ebac71ec976fdf27ea24767057882870f5c60
Release Artefact: bitbake-c78ebac71ec976fdf27ea24767057882870f5c60
sha: 8077c7e7528cd73ef488ef74de3943ec66cae361459e5b630fb3cbe89c498d3d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/bitbake-c78ebac7=
1ec976fdf27ea24767057882870f5c60.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4/bitbake-c78ebac71ec976fdf27=
ea24767057882870f5c60.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: honister
Tag: yocto-3.4
Git Revision:d75c5450ecf56c8ac799a633ee9ac459e88f91fc

- --------------
Contributors
- --------------

Thanks to the following people who contributed to this release:

Adam Romanek
Alejandro Hernandez Samaniego
Alexander Kanavin
Alexandre Belloni
Alexey Brodkin
Alex Stewart
Alistair Francis
Anatol Belski
Anders Wallin
Andrea Adami
Andreas M=C3=BCller
Andrej Valek
Andres Beltran
Andrey Zhizhikin
Anibal Limon
Anthony Bagwell
Anton Blanchard
Anuj Mittal
Armin Kuster
Asfak Rahman
Bastian Krause
Bernhard Rosenkr=C3=A4nzer
Bruce Ashfield
Carlos Rafael Giani
Chandana kalluri
Changhyeok Bae
Changqing Li
Chanho Park
Chen Qi
Chris Laplante
Christophe Chapuis
Christoph Muellner
Claudius Heine
Damian Wrobel
Daniel Ammann
Daniel Gomez
Daniel McGregor
Daniel Wagenknecht
Denys Dmytriyenko
Devendra Tewari
Diego Sueiro
Dmitry Baryshkov
Douglas Royds
Dragos-Marian Panait
Drew Moseley
Enrico Scholz
Fabio Berton
Florian Amstutz
Gavin Li
Guillaume Champagne
Harald Brinkmann
Henning Schild
He Zhe
Hongxu Jia
Hsia-Jun (Randy) Li
Jean Bouchard
Joe Slater
Jonas H=C3=B6ppner
Jon Mason
Jose Quaresma
Joshua Watt
Justin Bronder
Kai Kang
Kenfe-Mickael Laventure
Kevin Hao
Khairul Rohaizzat Jamaluddin
Khem Raj
Kiran Surendran
Konrad Weihmann
Kristian Klausen
Kyle Russell
Lee Chee Yang
Lei Maohui
Luca Boccassi
Marco Felsch
Marcus Comstedt
Marek Vasut
Mark Hatle
Markus Volk
Marta Rybczynska
Martin Jansa
Matthias Klein
Matthias Schiffer
Matt Madison
Matt Spencer
Max Krummenacher
Michael Halstead
Michael Ho
Michael Opdenacker
Mike Crowe
Mikko Rapeli
Ming Liu
Mingli Yu
Minjae Kim
Nicolas Dechesne
Niels Avonds
Nikolay Papenkov
Nisha Parrakat
Olaf Mandel
Oleksandr Kravchuk
Oleksandr Popovych
Oliver Kranz
Otavio Salvador
Patrick Williams
Paul Barker
Paul Eggleton
Paul Gortmaker
Paulo Cesar Zaneti
Peter Bergin
Peter Budny
Peter Kjellerstedt
Petr Vorel
Przemyslaw Gorszkowski
Purushottam Choudhary
Qiang Zhang
Quentin Schulz
Ralph Siemsen
Randy MacLeod
Ranjitsinh Rathod
Rasmus Villemoes
Reto Schneider
Richard Purdie
Richard Weinberger
Robert Joslyn
Robert P. J. Day
Robert Yang
Romain Naour
Ross Burton
Sakib Sajal
Samuli Piippo
Saul Wold
Scott Murray
Scott Weaver
Stefan Ghinea
Stefan Herbrechtsmeier
Stefano Babic
Stefan Wiehler
Steve Sakoman
Teoh Jay Shen
Thomas Perrot
Tim Orling
Tom Pollard
Tom Rini
Tony Battersby
Tony Tascioglu
Trevor Gamblin
Trevor Woerner
Ulrich =C3-lmann
Valentin Danaila
Vinay Kumar
Vineela Tummalapalli
Vin=C3=ADcius Ossanes Aquino
Vivien Didelot
Vyacheslav Yurkov
Wang Mingyu
Wes Lindauer
William A. Kennington III
Yanfei Xu
Yann Dirson
Yi Fan Yu
Yi Zhao
Zang Ruochen
Zheng Ruoqin
Zolt=C3=A1n B=C3=B6sz=C3=B6rm=C3=A9nyi


- -----------------------------
New Features / Enhancements
- -----------------------------

* Linux kernel 5.14, glibc 2.34 and ~280 other recipe upgrades
* Switched override character to ':' (replacing '_') for more robust parsin=
g and improved performance - see migration guide for help on migrating
* Rust integrated into core, providing rust support for cross-compilation a=
nd SDK
* New create-spdx class for creating SPDX SBoM documents
* New recipes: cargo, core-image-ptest-all, core-image-ptest-fast, core-ima=
ge-weston-sdk, erofs-utils, gcompat, gi-docgen, libmicrohttpd, libseccomp, =
libstd-rs, perlcross, python3-markdown, python3-pyyaml, python3-smartypants=
, python3-typogrify, rust, rust-cross, rust-cross-canadian, rust-hello-worl=
d, rust-llvm, rust-tools-cross-canadian, rustfmt, xwayland
* Several optimisations to reduce unnecessary task dependencies for faster =
builds
* seccomp integrated into core, with additional enabling for gnutls, system=
d, qemu
* New overlayfs class to help generate overlayfs mount units
* debuginfod support now enabled by default
* Switched several recipes over to using OpenSSL instead of GnuTLS (wpa-sup=
plicant, curl, glib-networking) or disable GnuTLS (cups) by default
* Improvements to LTO plugin installation and reproducibility
* Architecture-specific enhancements:
  - glibc: Enable memory tagging for aarch64
  - testimage: remove aarch64 xorg exclusion
  - arch-arm*: add better support for gcc march extensions
  - tune-cortexm*: add support for all Arm Cortex-M processors
  - tune-cortexr*: add support for all Arm Cortex-R processors
  - arch-armv4: Allow -march=3Darmv4
  - qemuarm*: use virtio graphics
  - baremetal-helloworld: Enable RISC-V 64/32 port
  - ldconfig-native: Add RISC-V support
  - qemuriscv: Enable 4 core emulation
  - Add ARC support in gdb, dpkg, dhcpcd
  - conf/machine-sdk: Add ppc64 SDK machine
  - libjpeg-turbo: Handle powerpc64le without Altivec
  - pixman: Handle PowerPC without Altivec
  - mesa: enable gallium Intel drivers when building for x86
  - mesa: enable crocus driver for older Intel graphics
* Kernel-related enhancements:
  - Support zstd-compressed modules and initramfs images
  - Allow opt-out of split kernel modules
  - linux-yocto-dev: base AUTOREV on specified version
  - kernel-yocto: provide debug / summary information for metadata
  - kernel-uboot: Handle gzip and lzo compression options
  - linux-yocto/5.14: added devupstream support
  - linux-yocto: add vfat KERNEL_FEATURE when MACHINE_FEATURES include vfat
  - linux-yocto: enable TYPEC_TCPCI in usbc fragment
* Image-related enhancements:
  - New erofs, erofs-lz4 and erofs-lz4hc image types
  - New squashfs-zst and cpio.zst image types
  - New lic-pkgs IMAGE_FEATURES item to install all license packages
  - Added zsync metadata conversion support
  - Use xargs to set file timestamps for significant (>90%) do_image speedu=
p
  - Find .ko.gz and .ko.xz kernel modules as well when determining need to =
run depmod on an image
  - Show formatted error messages instead of tracebacks for systemctl error=
s
  - No longer ignore installation failures in complementary package install=
ation
  - Remove ldconfig auxiliary cache when not needed
* wic enhancements:
  - Added erofs filesystem support
  - Added --extra-space argument to leave extra space after last partition
  - Added --no-fstab-update part option to allow using the stock fstab
  - bootimg-efi: added Unified Kernel Image option
  - bootimg-pcbios: use label provided when formatting a DOS partition
* SDK-related enhancements:
  - Enable do_populate_sdk with multilibs
  - New SDKPATHINSTALL variable decouples default install path from built i=
n path to avoid rebuilding nativesdk components on e.g. DISTRO_VERSION chan=
ges
  - eSDK: Error if trying to generate an eSDK from a multiconfig
  - eSDK: introduce TOOLCHAIN_HOST_TASK_ESDK to be used in place of TOOLCHA=
IN_HOST_TASK to add components to the host part of the eSDK
* bitbake enhancements:
  - New bitbake-getvar helper command to query a variable value (with histo=
ry)
  - bitbake-layers: layerindex-fetch: add --fetchdir parameter to
  - bitbake-layers: show-recipes: add skip reason to output
  - bitbake-diffsigs: sort diff output for consistency
  - Allow setting upstream for local hash equivalence server
  - fetch2/s3: allow to use credentials and switch profile from environment=
 variables
  - fetch2/s3: Add progress handler for S3 cp command
  - fetch2/npm: Support npm archives with missing search directory mode
  - fetch2/npmsw: Add support for local tarball and link sources
  - fetch2/svn: Allow peg-revision functionality to be disabled
  - fetch2/wget: verify certificates for HTTPS/FTPS by default
  - fetch2/wget: Enable FTPS
  - prserv: added read-only mode
  - prserv: replaced XML RPC with modern asyncrpc implementation
  - Numerous warning/error message improvements
* New PACKAGECONFIG options in btrfs-tools, ccache, coreutils, cups, dbus, =
elfutils, ffmpeg, findutils, glib-2.0, gstreamer1.0-plugins-bad, gstreamer1=
.0-plugins-base, libarchive, libnotify, libpsl, man-db, mesa, ovmf, parted,=
 prelink, qemu, rpm, shadow, systemd, tar, vim, weston
* u-boot enhancements:
  - Make SPL suffix configurable
  - Make UBOOT_BINARYNAME configurable
  - Package extlinux.conf separately
  - Allow deploying the u-boot DTB
* opensbi: Add support for specifying a device tree
* busybox enhancements:
  - Added tmpdir option into mktemp applet
  - Support mounting swap via labels
  - Enable long options for enabled applets
* Move tune files to architecture subdirectories
* buildstats: log host data on failure separately to task specific file
* buildstats: collect "at interval" and "on failure" logs in the same file
* Ptest enhancements:
  - ptest-runner: install script to collect system data on failure
  - Added ptest support to python3-hypothesis, python3-jinja2, python3-mark=
upsafe
  - Enhanced ptest support in lttng, util-linux, and others
  - New leaner ptest image recipes based upon core-image-minimal
* scripts/contrib/image-manifest: add new script
* Add beginnings of Android target support
* devtool upgrade: rebase override-only patches as well
* devtool: print a warning on upgrades if PREFERRED_VERSION is set
* systemd: set zstd as default compression option
* init-manager-systemd: add a weak VIRTUAL-RUNTIME_dev_manager assignment
* Add proper unpack dependency for .zst compressed archives
* util-linux: build chfn and chsh by default
* qemu: use 4 cores in qemu guests
* runqemu: decouple bios and kernel options
* qemu: add a hint on how to enable CPU render nodes when a suitable GPU is=
 absent
* devupstream: Allow support of native class extensions
* Prelinking now disabled in default configuration
* python3: statistics module moved to its own python3-statistics package
* pypi: allow override of PyPI archive name
* Allow global override of golang GO_DYNLINK
* buildhistory enhancements:
  - Add option to strip path prefix
  - Add output file listing package information
  - Label packages providing per-file dependencies in depends.dot
* New gi-docgen class for GNOME library documentation
* meson.bbclass: Make the default buildtype "debug" if DEBUG_BUILD is 1
* distro_features_check: expand with IMAGE_FEATURES
* Add extended packagedata in JSON format
* local.conf.sample: Update sstate mirror entry with new hash equivalence s=
etting
* poky: Use https in default PREMIRRORS
* reproducible_build.bbclass: Enable -Wdate-time
* yocto-check-layer: ensure that all layer dependencies are tested too
* core-image-multilib-example: base on weston, and not sato
* npm.bbclass: Allow nodedir to be overridden by NPM_NODEDIR
* cve-extra-exclusions.inc: add exclusion list for intractable CVE's
* license_image.bbclass: Detect broken symlinks
* sysstat: make the service start automatically
* sanity: Add error check for '%' in build path
* sanity: Further improve directory sanity tests
* sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in network failure messag=
e
* tzdata: Allow controlling zoneinfo binary format
* oe-time-dd-test.sh: add options and refactor
* vim: add option to disable NLS support
* zstd: Include pzstd in the build
* mirrors.bbclass: provide additional rule for git repo fallbacks
* own-mirrors: Add support for s3:// scheme in SOURCE_MIRROR_URL
* common-licenses: add missing SPDX licences
* Add MAINTAINERS.md file to record subsystem maintainers


- -------------
Known Issues
- -------------

* Build failures have been reported when running on host Linux systems with=
 FIPS enabled (such as RHEL 8.0 with the FIPS mode enabled). For more detai=
ls please see https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14609.


- -----------------
Recipe Licenses
- -----------------

The following corrections have been made to the LICENSE values set by recip=
es:

* acpica: correct LICENSE to "Intel | BSD-3-Clause | GPLv2"
* dtc: correct LICENSE to "GPLv2 | BSD-2-Clause"
* e2fsprogs: correct LICENSE to "GPLv2 & LGPLv2 & BSD-3-Clause & MIT"
* ffmpeg: correct LICENSE to "GPLv2+ & LGPLv2.1+ & ISC & MIT & BSD-2-Clause=
 & BSD-3-Clause & IJG"
* flac: correct LICENSE to "GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD-3-Clause"
* flex: correct LICENSE to "BSD-3-Clause & LGPL-2.0+"
* font-util: correct LICENSE to "MIT & MIT-style & BSD-4-Clause & BSD-2-Cla=
use"
* glib-2.0: correct LICENSE to "LGPLv2.1+ & BSD-3-Clause & PD"
* gobject-introspection: correct LICENSE to "LGPLv2+ & GPLv2+ & MIT" (add M=
IT license)
* hdparm: correct LICENSE to "BSD-2-Clause & GPLv2 & hdparm"
* iputils: correct LICENSE to "BSD-3-Clause & GPLv2+"
* libcap: correct LICENSE to "BSD-3-Clause | GPLv2"
* libevent: correct LICENSE to "BSD-3-Clause & MIT"
* libjitterentropy: correct LICENSE to "GPLv2+ | BSD-3-Clause"
* libpam: correct LICENSE to "GPLv2+ | BSD-3-Clause"
* libwpe: correct LICENSE to "BSD-2-Clause"
* libx11-compose-data: correct LICENSE to "MIT & MIT-style & BSD-4-Clause &=
 BSD-2-Clause"
* libx11: correct LICENSE to "MIT & MIT-style & BSD-4-Clause & BSD-2-Clause=
"
* libxfont2: correct LICENSE to "MIT & MIT-style & BSD-4-Clause & BSD-2-Cla=
use"
* libxfont: correct LICENSE to "MIT & MIT-style & BSD-3-Clause"
* lsof: correct LICENSE to reflect that it uses a BSD-like (but not exactly=
 BSD) license ("Spencer-94")
* nfs-utils: correct LICENSE to "MIT & GPLv2+ & BSD-3-Clause"
* ovmf: correct license to "BSD-2-Clause-Patent"
* ppp: correct LICENSE to "BSD-3-Clause & BSD-3-Clause-Attribution & GPLv2+=
 & LGPLv2+ & PD"
* python3-packaging: correct LICENSE to "Apache-2.0 | BSD-2-Clause"
* python-async-test: correct LICENSE to "BSD-3-Clause"
* quota: remove BSD license (only BSD licensed part of the code was removed=
 in 4.05)
* shadow: correct LICENSE to "BSD-3-Clause | Artistic-1.0"
* shadow-sysroot: set LICENSE the same as shadow
* sudo: correct LICENSE to "ISC & BSD-3-Clause & BSD-2-Clause & Zlib"
* swig: correct LICENSE to "BSD-3-Clause & GPLv3"
* valgrind: correct license to "GPLv2 & GPLv2+ & BSD-3-Clause"
* webkitgtk: correct LICENSE to "BSD-2-Clause & LGPLv2+"
* wpebackend-fdo: correct LICENSE to "BSD-2-Clause"
* xinetd: correct LICENSE to reflect that it uses a unique BSD-like (but no=
t exactly BSD) license

Other license-related notes:
* When creating recipes for Python software, recipetool will now treat "BSD=
" as "BSD-3-Clause" for the purposes of setting LICENSE, as that is the mos=
t common understanding.
* Please be aware that an initramfs bundled with the kernel using INITRAMFS=
_IMAGE_BUNDLE should only contain GPLv2-compatible software; this is now me=
ntioned in the documentation.


- ------------------------
Migration instructions
- ------------------------

For details on changes that you might need to make when migrating to the Yo=
cto Project 3.4 release from previous releases, please see the following ma=
nual:

https://docs.yoctoproject.org/migration-guides/migration-3.4.html


- ----------------
Security Fixes
- ----------------

* apr: CVE-2021-35940
* aspell: CVE-2019-25051
* avahi: CVE-2021-3468, CVE-2021-36217
* binutils: CVE-2021-20197
* bluez: CVE-2021-3658
* busybox: CVE-2021-28831
* cairo: CVE-2020-35492
* cpio: CVE-2021-38185
* expat: CVE-2013-0340
* ffmpeg: CVE-2020-20446, CVE-2020-22015, CVE-2020-22021, CVE-2020-22033, C=
VE-2020-22019, CVE-2021-33815, CVE-2021-38171, CVE-2020-20453
* glibc: CVE-2021-33574, CVE-2021-38604
* inetutils: CVE-2021-40491
* libgcrypt: CVE-2021-40528
* linux-yocto/5.10, 5.14: CVE-2021-3653, CVE-2021-3656
* lz4: CVE-2021-3520
* nettle: CVE-2021-20305
* openssl: CVE-2021-3711, CVE-2021-3712
* perl: CVE-2021-36770
* python3: CVE-2021-29921
* python3-pip: CVE-2021-3572
* qemu: CVE-2020-27821, CVE-2020-29443, CVE-2020-35517, CVE-2021-3392, CVE-=
2021-3409, CVE-2021-3416, CVE-2021-3527, CVE-2021-3544, CVE-2021-3545, CVE-=
2021-3546, CVE-2021-3682, CVE-2021-20181, CVE-2021-20221, CVE-2021-20257, C=
VE-2021-20263
* rpm: CVE-2021-3421, CVE-2021-20271
* rsync: CVE-2020-14387
* util-linux: CVE-2021-37600
* vim: CVE-2021-3770, CVE-2021-3778
* wpa-supplicant: CVE-2021-30004
* xdg-utils: CVE-2020-27748
* xserver-xorg: CVE-2021-3472


- -----------------
Recipe Upgrades
- -----------------

* acl 2.2.53 -> 2.3.1
* acpica 20210105 -> 20210730
* alsa-lib 1.2.4 -> 1.2.5.1
* alsa-plugins 1.2.2 -> 1.2.5
* alsa-tools 1.2.2 -> 1.2.5
* alsa-topology-conf 1.2.4 -> 1.2.5.1
* alsa-ucm-conf 1.2.4 -> 1.2.5.1
* alsa-utils 1.2.4 -> 1.2.5.1
* alsa-utils-scripts 1.2.4 -> 1.2.5.1
* apt 2.2.2 -> 2.2.4
* at 3.2.1 -> 3.2.2
* at-spi2-core 2.38.0 -> 2.40.3
* autoconf-archive 2019.01.06 -> 2021.02.19
* babeltrace2 2.0.3 -> 2.0.4
* bash 5.1 -> 5.1.8
* bind 9.16.16 -> 9.16.20
* binutils 2.36.1 -> 2.37
* binutils-cross 2.36.1 -> 2.37
* binutils-cross-canadian 2.36.1 -> 2.37
* binutils-cross-testsuite 2.36.1 -> 2.37
* binutils-crosssdk 2.36.1 -> 2.37
* bison 3.7.5 -> 3.7.6
* blktrace 1.2.0+gitX -> 1.3.0+gitX
* bluez5 5.56 -> 5.61
* boost 1.75.0 -> 1.77.0
* boost-build-native 4.3.0 -> 4.4.1
* btrfs-tools 5.10.1 -> 5.13.1
* busybox 1.33.1 -> 1.34.0
* busybox-inittab 1.33.0 -> 1.34.0
* ccache 4.2 -> 4.4
* cmake 3.19.5 -> 3.21.1
* cmake-native 3.19.5 -> 3.21.1
* connman 1.39 -> 1.40
* createrepo-c 0.17.0 -> 0.17.4
* cronie 1.5.5 -> 1.5.7
* cross-localedef-native 2.33 -> 2.34
* cups 2.3.3 -> 2.3.3op2
* curl 7.75.0 -> 7.78.0
* dbus-glib 0.110 -> 0.112
* dejagnu 1.6.2 -> 1.6.3
* diffoscope 172 -> 181
* diffutils 3.7 -> 3.8
* distcc 3.3.5 -> 3.4
* dnf 4.6.0 -> 4.8.0
* dpkg 1.20.7.1 -> 1.20.9
* dtc 1.6.0 -> 1.6.1
* e2fsprogs 1.46.1 -> 1.46.4
* elfutils 0.183 -> 0.185
* ell 0.38 -> 0.43
* enchant2 2.2.15 -> 2.3.1
* epiphany 3.38.2 -> 40.3
* ethtool 5.10 -> 5.13
* expat 2.2.10 -> 2.4.1
* ffmpeg 4.3.2 -> 4.4
* file 5.39 -> 5.40
* freetype 2.10.4 -> 2.11.0
* gcc 10.2.0 -> 11.2.0
* gcc-cross 10.2.0 -> 11.2.0
* gcc-cross-canadian 10.2.0 -> 11.2.0
* gcc-crosssdk 10.2.0 -> 11.2.0
* gcc-runtime 10.2.0 -> 11.2.0
* gcc-sanitizers 10.2.0 -> 11.2.0
* gcc-source 10.2.0 -> 11.2.0
* gcr 3.38.1 -> 3.40.0
* gdb 10.1 -> 10.2
* gdb-cross 10.1 -> 10.2
* gdb-cross-canadian 10.1 -> 10.2
* gdk-pixbuf 2.40.0 -> 2.42.6
* ghostscript 9.53.3 -> 9.54.0
* git 2.31.1 -> 2.33.0
* glib-2.0 2.66.7 -> 2.68.4
* glib-networking 2.66.0 -> 2.68.2
* glibc 2.33 -> 2.34
* glibc-locale 2.33 -> 2.34
* glibc-mtrace 2.33 -> 2.34
* glibc-scripts 2.33 -> 2.34
* glibc-testsuite 2.33 -> 2.34
* glslang 11.2.0 -> 11.5.0
* gnome-desktop-testing 2018.1 -> 2021.1
* gnu-config 20210125+gitX -> 20210722+gitX
* gnu-efi 3.0.12 -> 3.0.14
* gnupg 2.2.27 -> 2.3.1
* gobject-introspection 1.66.1 -> 1.68.0
* gpgme 1.15.1 -> 1.16.0
* gptfdisk 1.0.7 -> 1.0.8
* grep 3.6 -> 3.7
* grub 2.04+2.06~rc1 -> 2.06
* grub-efi 2.04+2.06~rc1 -> 2.06
* gsettings-desktop-schemas 3.38.0 -> 40.0
* gtk+3 3.24.25 -> 3.24.30
* harfbuzz 2.7.4 -> 2.9.0
* hdparm 9.60 -> 9.62
* help2man 1.48.2 -> 1.48.4
* hwlatdetect 1.10 -> 2.1
* i2c-tools 4.2 -> 4.3
* icu 68.2 -> 69.1
* igt-gpu-tools 1.25+gitX -> 1.26
* inetutils 2.0 -> 2.1
* iproute2 5.11.0 -> 5.13.0
* iputils s20200821 -> 20210722
* json-glib 1.6.2 -> 1.6.4
* kexec-tools 2.0.21 -> 2.0.22
* kmod 28 -> 29
* kmod-native 28 -> 29
* less 563 -> 590
* libassuan 2.5.4 -> 2.5.5
* libcap 2.48 -> 2.51
* libcgroup 0.41 -> 2.0
* libcomps 0.1.15 -> 0.1.17
* libconvert-asn1-perl 0.27 -> 0.31
* libdazzle 3.38.0 -> 3.40.0
* libdnf 0.58.0 -> 0.63.1
* libdrm 2.4.104 -> 2.4.107
* libedit 20210216-3.1 -> 20210714-3.1
* libepoxy 1.5.5 -> 1.5.9
* liberation-fonts 2.00.1 -> 2.1.4
* libffi 3.3 -> 3.4.2
* libfm 1.3.1 -> 1.3.2
* libgcc 10.2.0 -> 11.2.0
* libgcc-initial 10.2.0 -> 11.2.0
* libgcrypt 1.9.3 -> 1.9.4
* libgfortran 10.2.0 -> 11.2.0
* libgit2 1.1.0 -> 1.1.1
* libglu 9.0.1 -> 9.0.2
* libgpg-error 1.41 -> 1.42
* libgudev 234 -> 237
* libhandy 1.2.0 -> 1.2.3
* libical 3.0.9 -> 3.0.10
* libidn2 2.3.0 -> 2.3.2
* libinput 1.16.4 -> 1.18.1
* libjitterentropy 3.0.1 -> 3.1.0
* libjpeg-turbo 2.0.6 -> 2.1.1
* libksba 1.5.0 -> 1.6.0
* libmodulemd 2.12.0 -> 2.13.0
* libnsl2 1.3.0 -> 2.0.0
* libnss-mdns 0.14.1 -> 0.15.1
* libogg 1.3.4 -> 1.3.5
* libpcap 1.10.0 -> 1.10.1
* libpcre 8.44 -> 8.45
* libpcre2 10.36 -> 10.37
* libportal 0.3 -> 0.4
* librepo 1.13.0 -> 1.14.1
* libsdl2 2.0.14 -> 2.0.16
* libsolv 0.7.17 -> 0.7.19
* libtasn1 4.16.0 -> 4.17.0
* libtest-needs-perl 0.002006 -> 0.002009
* libtirpc 1.3.1 -> 1.3.2
* libubootenv 0.3.1 -> 0.3.2
* libucontext 0.10+X -> 1.1+X
* liburcu 0.12.2 -> 0.13.0
* libuv 1.41.0 -> 1.42.0
* libva 2.10.0 -> 2.12.0
* libva-initial 2.10.0 -> 2.12.0
* libva-utils 2.10.0 -> 2.12.0
* libwebp 1.2.0 -> 1.2.1
* libwpe 1.8.0 -> 1.10.1
* libx11 1.7.0 -> 1.7.2
* libxcrypt 4.4.18 -> 4.4.25
* libxcrypt-compat 4.4.18 -> 4.4.25
* libxfixes 5.0.3 -> 6.0.0
* libxfont2 2.0.4 -> 2.0.5
* libxft 2.3.3 -> 2.3.4
* libxi 1.7.10 -> 1.7.99.2
* libxkbcommon 1.0.3 -> 1.3.0
* libxml2 2.9.10 -> 2.9.12
* libxres 1.2.0 -> 1.2.1
* linux-libc-headers 5.10 -> 5.14
* linux-yocto 5.4.144+gitX, 5.10.63+gitX -> 5.10.70+gitX, 5.14.9+gitX
* linux-yocto-dev 5.12++gitX -> 5.15++gitX
* linux-yocto-rt 5.4.144+gitX, 5.10.63+gitX -> 5.10.70+gitX, 5.14.9+gitX
* linux-yocto-tiny 5.4.144+gitX, 5.10.63+gitX -> 5.10.70+gitX, 5.14.9+gitX
* llvm 11.1.0 -> 12.0.1
* log4cplus 2.0.6 -> 2.0.7
* logrotate 3.18.0 -> 3.18.1
* ltp 20210121 -> 20210524
* lttng-modules 2.12.6 -> 2.13.0
* lttng-tools 2.12.4 -> 2.13.0
* lttng-ust 2.12.1 -> 2.13.0
* m4 1.4.18 -> 1.4.19
* m4-native 1.4.18 -> 1.4.19
* man-pages 5.10 -> 5.12
* mc 4.8.26 -> 4.8.27
* mesa 21.0.3 -> 21.2.1
* mesa-gl 21.0.3 -> 21.2.1
* meson 0.57.1 -> 0.58.1
* mmc-utils 0.1+gitX (73d6c59af8d1...) -> 0.1+gitX (43282e80e174...)
* mobile-broadband-provider-info 20201225 -> 20210805
* mpg123 1.26.4 -> 1.28.2
* mtd-utils 2.1.2 -> 2.1.3
* mtools 4.0.26 -> 4.0.35
* musl 1.2.2+gitX (e5d2823631bb...) -> 1.2.2+gitX (3f701faace7a...)
* nativesdk-meson 0.57.1 -> 0.58.1
* netbase 6.2 -> 6.3
* nfs-utils 2.5.3 -> 2.5.4
* ofono 1.31 -> 1.32
* openssh 8.5p1 -> 8.7p1
* opkg 0.4.4 -> 0.4.5
* opkg-utils 0.4.3 -> 0.4.5
* ovmf edk2-stable202102 -> edk2-stable202105
* p11-kit 0.23.22 -> 0.24.0
* pango 1.48.2 -> 1.48.9
* patchelf 0.12 -> 0.13
* perl 5.32.1 -> 5.34.0
* piglit 1.0+gitrX (d4d9353b7290...) -> 1.0+gitrX (6a4be9e9946d...)
* pkgconf 1.7.3 -> 1.8.0
* powertop 2.13 -> 2.14
* pseudo 1.9.0+gitX (b988b0a6b8af...) -> 1.9.0+gitX (0cda3ba5f94a...)
* pulseaudio 14.2 -> 15.0
* puzzles 0.0+gitX (84cb4c6701e0...) -> 0.0+gitX (8f3413c31ffd...)
* python3 3.9.5 -> 3.9.6
* python3-attrs 20.3.0 -> 21.2.0
* python3-cython 0.29.22 -> 0.29.24
* python3-dbus 1.2.16 -> 1.2.18
* python3-dbusmock 0.22.0 -> 0.23.1
* python3-docutils 0.16 -> 0.17.1
* python3-git 3.1.14 -> 3.1.20
* python3-gitdb 4.0.5 -> 4.0.7
* python3-hypothesis 6.2.0 -> 6.15.0
* python3-importlib-metadata 3.4.0 -> 4.6.4
* python3-iniparse 0.4 -> 0.5
* python3-jinja2 2.11.3 -> 3.0.1
* python3-libarchive-c 2.9 -> 3.1
* python3-magic 0.4.22 -> 0.4.24
* python3-mako 1.1.4 -> 1.1.5
* python3-markupsafe 1.1.1 -> 2.0.1
* python3-more-itertools 8.7.0 -> 8.8.0
* python3-numpy 1.20.1 -> 1.21.2
* python3-packaging 20.9 -> 21.0
* python3-pathlib2 2.3.5 -> 2.3.6
* python3-pbr 5.4.4 -> 5.6.0
* python3-pip 20.0.2 -> 21.2.4
* python3-pluggy 0.13.1 -> 1.0.0
* python3-pycairo 1.20.0 -> 1.20.1
* python3-pygments 2.8.1 -> 2.10.0
* python3-pygobject 3.38.0 -> 3.40.1
* python3-pytest 6.2.2 -> 6.2.4
* python3-scons 3.1.2 -> 4.2.0
* python3-scons-native 3.1.2 -> 4.2.0
* python3-setuptools 54.1.1 -> 57.4.0
* python3-setuptools-scm 5.0.1 -> 6.0.1
* python3-six 1.15.0 -> 1.16.0
* python3-sortedcontainers 2.3.0 -> 2.4.0
* python3-testtools 2.4.0 -> 2.5.0
* python3-zipp 3.4.1 -> 3.5.0
* qemu 5.2.0 -> 6.0.0
* qemu-native 5.2.0 -> 6.0.0
* qemu-system-native 5.2.0 -> 6.0.0
* re2c 2.0.3 -> 2.2
* rng-tools 6.11 -> 6.14
* rpcbind 1.2.5 -> 1.2.6
* rt-tests 1.10 -> 2.1
* ruby 3.0.1 -> 3.0.2
* rxvt-unicode 9.22 -> 9.26
* shaderc 2020.5 -> 2021.1
* shadow 4.8.1 -> 4.9
* spirv-tools 2020.7 -> 2021.2
* sqlite3 3.35.0 -> 3.36.0
* squashfs-tools 4.4 -> 4.5
* strace 5.11 -> 5.14
* stress-ng 0.12.05 -> 0.13.00
* sudo 1.9.6p1 -> 1.9.7p2
* swig 3.0.12 -> 4.0.2
* sysklogd 2.2.2 -> 2.2.3
* systemd 247.6 -> 249.3
* systemd-boot 247.6 -> 249.3
* systemd-conf 247.6 -> 1.0
* systemtap 4.4 -> 4.5
* systemtap-native 4.4 -> 4.5
* systemtap-uprobes 4.4 -> 4.5
* tcf-agent 1.7.0+gitX (a022ef2f1acf...) -> 1.7.0+gitX (2735e3d6b7ec...)
* texinfo 6.7 -> 6.8
* tiff 4.2.0 -> 4.3.0
* u-boot 2021.01 -> 2021.07
* u-boot-tools 2021.01 -> 2021.07
* usbutils 013 -> 014
* util-linux 2.36.2 -> 2.37.2
* util-linux-libuuid 2.36.2 -> 2.37.2
* vala 0.50.4 -> 0.52.5
* valgrind 3.16.1 -> 3.17.0
* virglrenderer 0.8.2 -> 0.9.1
* vte 0.62.2 -> 0.64.2
* vulkan-headers 1.2.170.0 -> 1.2.182.0
* vulkan-loader 1.2.170.0 -> 1.2.182.0
* vulkan-samples git (55cebd9e7cc4...) -> git (d2187278cb66...)
* vulkan-tools 1.2.170.0 -> 1.2.182.0
* wayland-protocols 1.20 -> 1.21
* webkitgtk 2.30.5 -> 2.32.3
* wireless-regdb 2021.04.21 -> 2021.07.14
* wpebackend-fdo 1.8.0 -> 1.10.0
* x264 r3039+gitX (544c61f08219...) -> r3039+gitX (5db6aa6cab1b...)
* xeyes 1.1.2 -> 1.2.0
* xf86-input-libinput 0.30.0 -> 1.1.0
* xkbcomp 1.4.4 -> 1.4.5
* xkeyboard-config 2.32 -> 2.33
* xorgproto 2020.1 -> 2021.4.99.2
* xserver-xorg 1.20.10 -> 1.20.13
* zstd 1.4.9 -> 1.5.0


--_000_BYAPR11MB33016329CA99326D2BEB53FD88849BYAPR11MB3301namp_
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.4 Rel=
ease is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4/poky-f6d1126fff213460dc6954a5d5fc168606d76b66.tar.bz2">ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-3.4/poky-f6d1126fff213=
460dc6954a5d5fc168606d76b66.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4/poky-f6d1126fff213460dc6954a5d5fc168606d76b66.tar.bz2">http://mirror=
s.kernel.org/yocto/yocto/yocto-3.4/poky-f6d1126fff213460dc6954a5d5fc168606d=
76b66.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4/RELEASENOTES">http://downloads.yoctoproject.org/releases/=
yocto/yocto-3.4/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4/testreport.txt">http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:vineela.tummalapalli@intel.com">vi=
neela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------------------<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">yocto-3.4 Release Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------------------<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------------------<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repositories/Downloads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------------------<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.yoctoproject.org/git/poky">https://git.yoctoproject.=
org/git/poky</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: yocto-3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: f6d1126fff213460dc6954a5d5fc1686=
06d76b66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact:&nbsp; poky-f6d1126fff213460d=
c6954a5d5fc168606d76b66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: 11e8f5760f704eed1ac37a5b09b1a831b5254d664=
59be75b06a72128c63e0411<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/">http://downloads.yoctoproject.org/releases/yocto/=
yocto-3.4/</a> poky-f6d1126fff213460dc6954a5d5fc168606d76b66.tar.bz2<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/">http://mirrors.kernel.org/yocto/yocto/yocto-3.4/</a> poky-f6=
d1126fff213460dc6954a5d5fc168606d76b66.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: openembedded-core<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.openembedded.org/openembedded-core">https://git.open=
embedded.org/openembedded-core</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: 2021-10-honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: bb1dea6806f084364b6017db2567f438=
e805aef0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact: oecore-bb1dea6806f084364b601=
7db2567f438e805aef0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: 9a356c407c567b1c26e535cad235204b0462cb793=
21fefb0844324a6020b31f4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/oecore-bb1dea6806f084364b6017db2567f438e805aef0.tar=
.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/oecore-bb1=
dea6806f084364b6017db2567f438e805aef0.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/oecore-bb1dea6806f084364b6017db2567f438e805aef0.tar.bz2">http:=
//mirrors.kernel.org/yocto/yocto/yocto-3.4/oecore-bb1dea6806f084364b6017db2=
567f438e805aef0.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: meta-mingw<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.yoctoproject.org/git/meta-mingw">https://git.yoctopr=
oject.org/git/meta-mingw</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: yocto-3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: f5d761cbd5c957e4405c5d40b0c236d2=
63c916a8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact: meta-mingw-f5d761cbd5c957e44=
05c5d40b0c236d263c916a8.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: d4305d638ef80948584526c8ca386a8cf77933dff=
b8a3b8da98d26a5c40fcc11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8=
.tar.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-m=
ingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2</a><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2">h=
ttp://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-mingw-f5d761cbd5c957e44=
05c5d40b0c236d263c916a8.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: meta-intel<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.yoctoproject.org/git/meta-intel">https://git.yoctopr=
oject.org/git/meta-intel</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: yocto-3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: 90170cf85fe35b4e8dc00eee50053c02=
05276b63<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact: meta-intel-90170cf85fe35b4e8=
dc00eee50053c0205276b63&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: 2b3b43386dfcaaa880d819c1ae88b1251b55fb12c=
622af3d0936c3dc338491fc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/meta-intel-90170cf85fe35b4e8dc00eee50053c0205276b63=
.tar.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-i=
ntel-90170cf85fe35b4e8dc00eee50053c0205276b63.tar.bz2</a><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/meta-intel-90170cf85fe35b4e8dc00eee50053c0205276b63.tar.bz2">h=
ttp://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-intel-90170cf85fe35b4e8=
dc00eee50053c0205276b63.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: meta-gplv2<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.yoctoproject.org/git/meta-gplv2">https://git.yoctopr=
oject.org/git/meta-gplv2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: yocto-3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: f04e4369bf9dd3385165281b9fa2ed10=
43b0e400<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact: meta-gplv2-f04e4369bf9dd3385=
165281b9fa2ed1043b0e400<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c=
8e79249e1d337558657d3fe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400=
.tar.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/meta-g=
plv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2">h=
ttp://mirrors.kernel.org/yocto/yocto/yocto-3.4/meta-gplv2-f04e4369bf9dd3385=
165281b9fa2ed1043b0e400.tar.bz2</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.openembedded.org/bitbake">https://git.openembedded.o=
rg/bitbake</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: 1.52<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: 2021-10-honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision: c78ebac71ec976fdf27ea24767057882=
870f5c60<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Release Artefact: bitbake-c78ebac71ec976fdf27e=
a24767057882870f5c60<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">sha: 8077c7e7528cd73ef488ef74de3943ec66cae3614=
59e5b630fb3cbe89c498d3d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Download Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-3.4/bitbake-c78ebac71ec976fdf27ea24767057882870f5c60.ta=
r.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4/bitbake-c=
78ebac71ec976fdf27ea24767057882870f5c60.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.4/bitbake-c78ebac71ec976fdf27ea24767057882870f5c60.tar.bz2">http=
://mirrors.kernel.org/yocto/yocto/yocto-3.4/bitbake-c78ebac71ec976fdf27ea24=
767057882870f5c60.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Name: yocto-docs<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Repository Location:
<a href=3D"https://git.yoctoproject.org/git/yocto-docs">https://git.yoctopr=
oject.org/git/yocto-docs</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Branch: honister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tag: yocto-3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Git Revision:d75c5450ecf56c8ac799a633ee9ac459e=
88f91fc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Contributors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- --------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Thanks to the following people who contributed=
 to this release:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Adam Romanek<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alejandro Hernandez Samaniego<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alexander Kanavin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alexandre Belloni<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alexey Brodkin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alex Stewart<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Alistair Francis<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anatol Belski<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anders Wallin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Andrea Adami<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Andreas M=C3=BCller<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Andrej Valek<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Andres Beltran<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Andrey Zhizhikin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anibal Limon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anthony Bagwell<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anton Blanchard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Anuj Mittal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Armin Kuster<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Asfak Rahman<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Bastian Krause<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Bernhard Rosenkr=C3=A4nzer<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Bruce Ashfield<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Carlos Rafael Giani<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Chandana kalluri<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Changhyeok Bae<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Changqing Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Chanho Park<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Chen Qi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Chris Laplante<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Christophe Chapuis<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Christoph Muellner<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Claudius Heine<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Damian Wrobel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Daniel Ammann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Daniel Gomez<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Daniel McGregor<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Daniel Wagenknecht<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Denys Dmytriyenko<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Devendra Tewari<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Diego Sueiro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Dmitry Baryshkov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Douglas Royds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Dragos-Marian Panait<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Drew Moseley<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Enrico Scholz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Fabio Berton<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Florian Amstutz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Gavin Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Guillaume Champagne<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Harald Brinkmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Henning Schild<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">He Zhe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Hongxu Jia<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Hsia-Jun (Randy) Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Jean Bouchard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Joe Slater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Jonas H=C3=B6ppner<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Jon Mason<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Jose Quaresma<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Joshua Watt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Justin Bronder<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kai Kang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kenfe-Mickael Laventure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kevin Hao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Khairul Rohaizzat Jamaluddin<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Khem Raj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kiran Surendran<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Konrad Weihmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kristian Klausen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Kyle Russell<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Lee Chee Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Lei Maohui<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Luca Boccassi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Marco Felsch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Marcus Comstedt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Marek Vasut<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Mark Hatle<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Markus Volk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Marta Rybczynska<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Martin Jansa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Matthias Klein<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Matthias Schiffer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Matt Madison<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Matt Spencer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Max Krummenacher<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Michael Halstead<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Michael Ho<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Michael Opdenacker<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Mike Crowe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Mikko Rapeli<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Ming Liu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Mingli Yu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Minjae Kim<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Nicolas Dechesne<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Niels Avonds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Nikolay Papenkov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Nisha Parrakat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Olaf Mandel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Oleksandr Kravchuk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Oleksandr Popovych<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Oliver Kranz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Otavio Salvador<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Patrick Williams<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Paul Barker<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Paul Eggleton<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Paul Gortmaker<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Paulo Cesar Zaneti<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Peter Bergin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Peter Budny<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Peter Kjellerstedt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Petr Vorel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Przemyslaw Gorszkowski<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Purushottam Choudhary<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Qiang Zhang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Quentin Schulz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Ralph Siemsen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Randy MacLeod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Ranjitsinh Rathod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Rasmus Villemoes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Reto Schneider<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Richard Purdie<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Richard Weinberger<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Robert Joslyn<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Robert P. J. Day<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Robert Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Romain Naour<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Ross Burton<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Sakib Sajal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Samuli Piippo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Saul Wold<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Scott Murray<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Scott Weaver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Stefan Ghinea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Stefan Herbrechtsmeier<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Stefano Babic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Stefan Wiehler<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Steve Sakoman<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Teoh Jay Shen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Thomas Perrot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tim Orling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tom Pollard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tom Rini<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tony Battersby<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Tony Tascioglu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Trevor Gamblin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Trevor Woerner<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Ulrich =C3&#8211;lmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Valentin Danaila<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Vinay Kumar<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Vineela Tummalapalli<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Vin=C3=ADcius Ossanes Aquino<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Vivien Didelot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Vyacheslav Yurkov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Wang Mingyu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Wes Lindauer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">William A. Kennington III<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Yanfei Xu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Yann Dirson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Yi Fan Yu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Yi Zhao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Zang Ruochen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Zheng Ruoqin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Zolt=C3=A1n B=C3=B6sz=C3=B6rm=C3=A9nyi<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------------------<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">New Features / Enhancements<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------------------<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Linux kernel 5.14, glibc 2.34 and ~280 other=
 recipe upgrades<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Switched override character to ':' (replacin=
g '_') for more robust parsing and improved performance - see migration gui=
de for help on migrating<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Rust integrated into core, providing rust su=
pport for cross-compilation and SDK<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* New create-spdx class for creating SPDX SBoM=
 documents<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* New recipes: cargo, core-image-ptest-all, co=
re-image-ptest-fast, core-image-weston-sdk, erofs-utils, gcompat, gi-docgen=
, libmicrohttpd, libseccomp, libstd-rs, perlcross,
 python3-markdown, python3-pyyaml, python3-smartypants, python3-typogrify, =
rust, rust-cross, rust-cross-canadian, rust-hello-world, rust-llvm, rust-to=
ols-cross-canadian, rustfmt, xwayland<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Several optimisations to reduce unnecessary =
task dependencies for faster builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* seccomp integrated into core, with additiona=
l enabling for gnutls, systemd, qemu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* New overlayfs class to help generate overlay=
fs mount units<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* debuginfod support now enabled by default<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Switched several recipes over to using OpenS=
SL instead of GnuTLS (wpa-supplicant, curl, glib-networking) or disable Gnu=
TLS (cups) by default<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Improvements to LTO plugin installation and =
reproducibility<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Architecture-specific enhancements:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - glibc: Enable memory tagging for aarc=
h64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - testimage: remove aarch64 xorg exclus=
ion<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - arch-arm*: add better support for gcc=
 march extensions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - tune-cortexm*: add support for all Ar=
m Cortex-M processors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - tune-cortexr*: add support for all Ar=
m Cortex-R processors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - arch-armv4: Allow -march=3Darmv4<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - qemuarm*: use virtio graphics<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - baremetal-helloworld: Enable RISC-V 6=
4/32 port<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - ldconfig-native: Add RISC-V support<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - qemuriscv: Enable 4 core emulation<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Add ARC support in gdb, dpkg, dhcpcd<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - conf/machine-sdk: Add ppc64 SDK machi=
ne<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - libjpeg-turbo: Handle powerpc64le wit=
hout Altivec<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - pixman: Handle PowerPC without Altive=
c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - mesa: enable gallium Intel drivers wh=
en building for x86<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - mesa: enable crocus driver for older =
Intel graphics<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Kernel-related enhancements:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Support zstd-compressed modules and i=
nitramfs images<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Allow opt-out of split kernel modules=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - linux-yocto-dev: base AUTOREV on spec=
ified version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - kernel-yocto: provide debug / summary=
 information for metadata<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - kernel-uboot: Handle gzip and lzo com=
pression options<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - linux-yocto/5.14: added devupstream s=
upport<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - linux-yocto: add vfat KERNEL_FEATURE =
when MACHINE_FEATURES include vfat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - linux-yocto: enable TYPEC_TCPCI in us=
bc fragment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Image-related enhancements:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New erofs, erofs-lz4 and erofs-lz4hc =
image types<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New squashfs-zst and cpio.zst image t=
ypes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New lic-pkgs IMAGE_FEATURES item to i=
nstall all license packages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added zsync metadata conversion suppo=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Use xargs to set file timestamps for =
significant (&gt;90%) do_image speedup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Find .ko.gz and .ko.xz kernel modules=
 as well when determining need to run depmod on an image<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Show formatted error messages instead=
 of tracebacks for systemctl errors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - No longer ignore installation failure=
s in complementary package installation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Remove ldconfig auxiliary cache when =
not needed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wic enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added erofs filesystem support<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added --extra-space argument to leave=
 extra space after last partition<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added --no-fstab-update part option t=
o allow using the stock fstab<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - bootimg-efi: added Unified Kernel Ima=
ge option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - bootimg-pcbios: use label provided wh=
en formatting a DOS partition<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* SDK-related enhancements:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Enable do_populate_sdk with multilibs=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New SDKPATHINSTALL variable decouples=
 default install path from built in path to avoid rebuilding nativesdk comp=
onents on e.g. DISTRO_VERSION changes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - eSDK: Error if trying to generate an =
eSDK from a multiconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - eSDK: introduce TOOLCHAIN_HOST_TASK_E=
SDK to be used in place of TOOLCHAIN_HOST_TASK to add components to the hos=
t part of the eSDK<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bitbake enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New bitbake-getvar helper command to =
query a variable value (with history)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - bitbake-layers: layerindex-fetch: add=
 --fetchdir parameter to
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp;&nbsp;- bitbake-layers: show-recipes: ad=
d skip reason to output<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - bitbake-diffsigs: sort diff output fo=
r consistency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Allow setting upstream for local hash=
 equivalence server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/s3: allow to use credentials a=
nd switch profile from environment variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/s3: Add progress handler for S=
3 cp command<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/npm: Support npm archives with=
 missing search directory mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/npmsw: Add support for local t=
arball and link sources<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/svn: Allow peg-revision functi=
onality to be disabled<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/wget: verify certificates for =
HTTPS/FTPS by default<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - fetch2/wget: Enable FTPS<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - prserv: added read-only mode<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - prserv: replaced XML RPC with modern =
asyncrpc implementation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Numerous warning/error message improv=
ements<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* New PACKAGECONFIG options in btrfs-tools, cc=
ache, coreutils, cups, dbus, elfutils, ffmpeg, findutils, glib-2.0, gstream=
er1.0-plugins-bad, gstreamer1.0-plugins-base,
 libarchive, libnotify, libpsl, man-db, mesa, ovmf, parted, prelink, qemu, =
rpm, shadow, systemd, tar, vim, weston<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* u-boot enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Make SPL suffix configurable<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Make UBOOT_BINARYNAME configurable<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Package extlinux.conf separately<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Allow deploying the u-boot DTB<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* opensbi: Add support for specifying a device=
 tree<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* busybox enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added tmpdir option into mktemp apple=
t<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Support mounting swap via labels<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Enable long options for enabled apple=
ts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Move tune files to architecture subdirectori=
es<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* buildstats: log host data on failure separat=
ely to task specific file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* buildstats: collect &quot;at interval&quot; =
and &quot;on failure&quot; logs in the same file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Ptest enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - ptest-runner: install script to colle=
ct system data on failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Added ptest support to python3-hypoth=
esis, python3-jinja2, python3-markupsafe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Enhanced ptest support in lttng, util=
-linux, and others<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - New leaner ptest image recipes based =
upon core-image-minimal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* scripts/contrib/image-manifest: add new scri=
pt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Add beginnings of Android target support<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* devtool upgrade: rebase override-only patche=
s as well<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* devtool: print a warning on upgrades if PREF=
ERRED_VERSION is set<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemd: set zstd as default compression opt=
ion<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* init-manager-systemd: add a weak VIRTUAL-RUN=
TIME_dev_manager assignment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Add proper unpack dependency for .zst compre=
ssed archives<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* util-linux: build chfn and chsh by default<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu: use 4 cores in qemu guests<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* runqemu: decouple bios and kernel options<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu: add a hint on how to enable CPU render=
 nodes when a suitable GPU is absent<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* devupstream: Allow support of native class e=
xtensions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Prelinking now disabled in default configura=
tion<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3: statistics module moved to its own =
python3-statistics package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* pypi: allow override of PyPI archive name<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Allow global override of golang GO_DYNLINK<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* buildhistory enhancements:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Add option to strip path prefix<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Add output file listing package infor=
mation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">&nbsp; - Label packages providing per-file dep=
endencies in depends.dot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* New gi-docgen class for GNOME library docume=
ntation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* meson.bbclass: Make the default buildtype &q=
uot;debug&quot; if DEBUG_BUILD is 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* distro_features_check: expand with IMAGE_FEA=
TURES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Add extended packagedata in JSON format<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* local.conf.sample: Update sstate mirror entr=
y with new hash equivalence setting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* poky: Use https in default PREMIRRORS<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* reproducible_build.bbclass: Enable -Wdate-ti=
me<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* yocto-check-layer: ensure that all layer dep=
endencies are tested too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* core-image-multilib-example: base on weston,=
 and not sato<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* npm.bbclass: Allow nodedir to be overridden =
by NPM_NODEDIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cve-extra-exclusions.inc: add exclusion list=
 for intractable CVE's<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* license_image.bbclass: Detect broken symlink=
s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sysstat: make the service start automaticall=
y<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sanity: Add error check for '%' in build pat=
h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sanity: Further improve directory sanity tes=
ts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sanity.bbclass: mention CONNECTIVITY_CHECK_U=
RIS in network failure message<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* tzdata: Allow controlling zoneinfo binary fo=
rmat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* oe-time-dd-test.sh: add options and refactor=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vim: add option to disable NLS support<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* zstd: Include pzstd in the build<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mirrors.bbclass: provide additional rule for=
 git repo fallbacks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* own-mirrors: Add support for s3:// scheme in=
 SOURCE_MIRROR_URL<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* common-licenses: add missing SPDX licences<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Add MAINTAINERS.md file to record subsystem =
maintainers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Known Issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Build failures have been reported when runni=
ng on host Linux systems with FIPS enabled (such as RHEL 8.0 with the FIPS =
mode enabled). For more details please see
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14609">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14609</a>.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Recipe Licenses<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">The following corrections have been made to th=
e LICENSE values set by recipes:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* acpica: correct LICENSE to &quot;Intel | BSD=
-3-Clause | GPLv2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dtc: correct LICENSE to &quot;GPLv2 | BSD-2-=
Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* e2fsprogs: correct LICENSE to &quot;GPLv2 &a=
mp; LGPLv2 &amp; BSD-3-Clause &amp; MIT&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ffmpeg: correct LICENSE to &quot;GPLv2+ &amp=
; LGPLv2.1+ &amp; ISC &amp; MIT &amp; BSD-2-Clause &amp; BSD-3-Clause &amp;=
 IJG&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* flac: correct LICENSE to &quot;GFDL-1.2 &amp=
; GPLv2+ &amp; LGPLv2.1+ &amp; BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* flex: correct LICENSE to &quot;BSD-3-Clause =
&amp; LGPL-2.0+&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* font-util: correct LICENSE to &quot;MIT &amp=
; MIT-style &amp; BSD-4-Clause &amp; BSD-2-Clause&quot;<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glib-2.0: correct LICENSE to &quot;LGPLv2.1+=
 &amp; BSD-3-Clause &amp; PD&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gobject-introspection: correct LICENSE to &q=
uot;LGPLv2+ &amp; GPLv2+ &amp; MIT&quot; (add MIT license)<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* hdparm: correct LICENSE to &quot;BSD-2-Claus=
e &amp; GPLv2 &amp; hdparm&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* iputils: correct LICENSE to &quot;BSD-3-Clau=
se &amp; GPLv2+&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libcap: correct LICENSE to &quot;BSD-3-Claus=
e | GPLv2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libevent: correct LICENSE to &quot;BSD-3-Cla=
use &amp; MIT&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libjitterentropy: correct LICENSE to &quot;G=
PLv2+ | BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libpam: correct LICENSE to &quot;GPLv2+ | BS=
D-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libwpe: correct LICENSE to &quot;BSD-2-Claus=
e&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libx11-compose-data: correct LICENSE to &quo=
t;MIT &amp; MIT-style &amp; BSD-4-Clause &amp; BSD-2-Clause&quot;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libx11: correct LICENSE to &quot;MIT &amp; M=
IT-style &amp; BSD-4-Clause &amp; BSD-2-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxfont2: correct LICENSE to &quot;MIT &amp=
; MIT-style &amp; BSD-4-Clause &amp; BSD-2-Clause&quot;<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxfont: correct LICENSE to &quot;MIT &amp;=
 MIT-style &amp; BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* lsof: correct LICENSE to reflect that it use=
s a BSD-like (but not exactly BSD) license (&quot;Spencer-94&quot;)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* nfs-utils: correct LICENSE to &quot;MIT &amp=
; GPLv2+ &amp; BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ovmf: correct license to &quot;BSD-2-Clause-=
Patent&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ppp: correct LICENSE to &quot;BSD-3-Clause &=
amp; BSD-3-Clause-Attribution &amp; GPLv2+ &amp; LGPLv2+ &amp; PD&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-packaging: correct LICENSE to &quot;=
Apache-2.0 | BSD-2-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python-async-test: correct LICENSE to &quot;=
BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* quota: remove BSD license (only BSD licensed=
 part of the code was removed in 4.05)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* shadow: correct LICENSE to &quot;BSD-3-Claus=
e | Artistic-1.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* shadow-sysroot: set LICENSE the same as shad=
ow<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sudo: correct LICENSE to &quot;ISC &amp; BSD=
-3-Clause &amp; BSD-2-Clause &amp; Zlib&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* swig: correct LICENSE to &quot;BSD-3-Clause =
&amp; GPLv3&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* valgrind: correct license to &quot;GPLv2 &am=
p; GPLv2+ &amp; BSD-3-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* webkitgtk: correct LICENSE to &quot;BSD-2-Cl=
ause &amp; LGPLv2+&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wpebackend-fdo: correct LICENSE to &quot;BSD=
-2-Clause&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xinetd: correct LICENSE to reflect that it u=
ses a unique BSD-like (but not exactly BSD) license<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Other license-related notes:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* When creating recipes for Python software, r=
ecipetool will now treat &quot;BSD&quot; as &quot;BSD-3-Clause&quot; for th=
e purposes of setting LICENSE, as that is the most common understanding.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* Please be aware that an initramfs bundled wi=
th the kernel using INITRAMFS_IMAGE_BUNDLE should only contain GPLv2-compat=
ible software; this is now mentioned in the documentation.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- ------------------------<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Migration instructions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- ------------------------<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">For details on changes that you might need to =
make when migrating to the Yocto Project 3.4 release from previous releases=
, please see the following manual:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><a href=3D"https://docs.yoctoproject.org/migra=
tion-guides/migration-3.4.html">https://docs.yoctoproject.org/migration-gui=
des/migration-3.4.html</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- ----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Security Fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- ----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* apr: CVE-2021-35940<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* aspell: CVE-2019-25051<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* avahi: CVE-2021-3468, CVE-2021-36217<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils: CVE-2021-20197<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bluez: CVE-2021-3658<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* busybox: CVE-2021-28831<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cairo: CVE-2020-35492<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cpio: CVE-2021-38185<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* expat: CVE-2013-0340<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ffmpeg: CVE-2020-20446, CVE-2020-22015, CVE-=
2020-22021, CVE-2020-22033, CVE-2020-22019, CVE-2021-33815, CVE-2021-38171,=
 CVE-2020-20453<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc: CVE-2021-33574, CVE-2021-38604<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* inetutils: CVE-2021-40491<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgcrypt: CVE-2021-40528<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-yocto/5.10, 5.14: CVE-2021-3653, CVE-2=
021-3656<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* lz4: CVE-2021-3520<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* nettle: CVE-2021-20305<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* openssl: CVE-2021-3711, CVE-2021-3712<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* perl: CVE-2021-36770<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3: CVE-2021-29921<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pip: CVE-2021-3572<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu: CVE-2020-27821, CVE-2020-29443, CVE-20=
20-35517, CVE-2021-3392, CVE-2021-3409, CVE-2021-3416, CVE-2021-3527, CVE-2=
021-3544, CVE-2021-3545, CVE-2021-3546, CVE-2021-3682,
 CVE-2021-20181, CVE-2021-20221, CVE-2021-20257, CVE-2021-20263<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rpm: CVE-2021-3421, CVE-2021-20271<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rsync: CVE-2020-14387<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* util-linux: CVE-2021-37600<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vim: CVE-2021-3770, CVE-2021-3778<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wpa-supplicant: CVE-2021-30004<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xdg-utils: CVE-2020-27748<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xserver-xorg: CVE-2021-3472<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">Recipe Upgrades<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">- -----------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* acl 2.2.53 -&gt; 2.3.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* acpica 20210105 -&gt; 20210730<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-lib 1.2.4 -&gt; 1.2.5.1<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-plugins 1.2.2 -&gt; 1.2.5<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-tools 1.2.2 -&gt; 1.2.5<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-topology-conf 1.2.4 -&gt; 1.2.5.1<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-ucm-conf 1.2.4 -&gt; 1.2.5.1<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-utils 1.2.4 -&gt; 1.2.5.1<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* alsa-utils-scripts 1.2.4 -&gt; 1.2.5.1<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* apt 2.2.2 -&gt; 2.2.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* at 3.2.1 -&gt; 3.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* at-spi2-core 2.38.0 -&gt; 2.40.3<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* autoconf-archive 2019.01.06 -&gt; 2021.02.19=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* babeltrace2 2.0.3 -&gt; 2.0.4<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bash 5.1 -&gt; 5.1.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bind 9.16.16 -&gt; 9.16.20<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils 2.36.1 -&gt; 2.37<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils-cross 2.36.1 -&gt; 2.37<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils-cross-canadian 2.36.1 -&gt; 2.37<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils-cross-testsuite 2.36.1 -&gt; 2.37<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* binutils-crosssdk 2.36.1 -&gt; 2.37<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bison 3.7.5 -&gt; 3.7.6<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* blktrace 1.2.0+gitX -&gt; 1.3.0+gitX<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* bluez5 5.56 -&gt; 5.61<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* boost 1.75.0 -&gt; 1.77.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* boost-build-native 4.3.0 -&gt; 4.4.1<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* btrfs-tools 5.10.1 -&gt; 5.13.1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* busybox 1.33.1 -&gt; 1.34.0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* busybox-inittab 1.33.0 -&gt; 1.34.0<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ccache 4.2 -&gt; 4.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cmake 3.19.5 -&gt; 3.21.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cmake-native 3.19.5 -&gt; 3.21.1<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* connman 1.39 -&gt; 1.40<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* createrepo-c 0.17.0 -&gt; 0.17.4<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cronie 1.5.5 -&gt; 1.5.7<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cross-localedef-native 2.33 -&gt; 2.34<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* cups 2.3.3 -&gt; 2.3.3op2<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* curl 7.75.0 -&gt; 7.78.0<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dbus-glib 0.110 -&gt; 0.112<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dejagnu 1.6.2 -&gt; 1.6.3<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* diffoscope 172 -&gt; 181<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* diffutils 3.7 -&gt; 3.8<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* distcc 3.3.5 -&gt; 3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dnf 4.6.0 -&gt; 4.8.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dpkg 1.20.7.1 -&gt; 1.20.9<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* dtc 1.6.0 -&gt; 1.6.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* e2fsprogs 1.46.1 -&gt; 1.46.4<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* elfutils 0.183 -&gt; 0.185<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ell 0.38 -&gt; 0.43<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* enchant2 2.2.15 -&gt; 2.3.1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* epiphany 3.38.2 -&gt; 40.3<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ethtool 5.10 -&gt; 5.13<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* expat 2.2.10 -&gt; 2.4.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ffmpeg 4.3.2 -&gt; 4.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* file 5.39 -&gt; 5.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* freetype 2.10.4 -&gt; 2.11.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc 10.2.0 -&gt; 11.2.0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-cross 10.2.0 -&gt; 11.2.0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-cross-canadian 10.2.0 -&gt; 11.2.0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-crosssdk 10.2.0 -&gt; 11.2.0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-runtime 10.2.0 -&gt; 11.2.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-sanitizers 10.2.0 -&gt; 11.2.0<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcc-source 10.2.0 -&gt; 11.2.0<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gcr 3.38.1 -&gt; 3.40.0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gdb 10.1 -&gt; 10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gdb-cross 10.1 -&gt; 10.2<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gdb-cross-canadian 10.1 -&gt; 10.2<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gdk-pixbuf 2.40.0 -&gt; 2.42.6<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ghostscript 9.53.3 -&gt; 9.54.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* git 2.31.1 -&gt; 2.33.0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glib-2.0 2.66.7 -&gt; 2.68.4<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glib-networking 2.66.0 -&gt; 2.68.2<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc 2.33 -&gt; 2.34<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc-locale 2.33 -&gt; 2.34<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc-mtrace 2.33 -&gt; 2.34<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc-scripts 2.33 -&gt; 2.34<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glibc-testsuite 2.33 -&gt; 2.34<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* glslang 11.2.0 -&gt; 11.5.0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gnome-desktop-testing 2018.1 -&gt; 2021.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gnu-config 20210125+gitX -&gt; 20210722+gitX=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gnu-efi 3.0.12 -&gt; 3.0.14<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gnupg 2.2.27 -&gt; 2.3.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gobject-introspection 1.66.1 -&gt; 1.68.0<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gpgme 1.15.1 -&gt; 1.16.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gptfdisk 1.0.7 -&gt; 1.0.8<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* grep 3.6 -&gt; 3.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* grub 2.04+2.06~rc1 -&gt; 2.06<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* grub-efi 2.04+2.06~rc1 -&gt; 2.06<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gsettings-desktop-schemas 3.38.0 -&gt; 40.0<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* gtk+3 3.24.25 -&gt; 3.24.30<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* harfbuzz 2.7.4 -&gt; 2.9.0<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* hdparm 9.60 -&gt; 9.62<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* help2man 1.48.2 -&gt; 1.48.4<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* hwlatdetect 1.10 -&gt; 2.1<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* i2c-tools 4.2 -&gt; 4.3<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* icu 68.2 -&gt; 69.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* igt-gpu-tools 1.25+gitX -&gt; 1.26<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* inetutils 2.0 -&gt; 2.1<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* iproute2 5.11.0 -&gt; 5.13.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* iputils s20200821 -&gt; 20210722<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* json-glib 1.6.2 -&gt; 1.6.4<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* kexec-tools 2.0.21 -&gt; 2.0.22<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* kmod 28 -&gt; 29<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* kmod-native 28 -&gt; 29<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* less 563 -&gt; 590<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libassuan 2.5.4 -&gt; 2.5.5<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libcap 2.48 -&gt; 2.51<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libcgroup 0.41 -&gt; 2.0<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libcomps 0.1.15 -&gt; 0.1.17<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libconvert-asn1-perl 0.27 -&gt; 0.31<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libdazzle 3.38.0 -&gt; 3.40.0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libdnf 0.58.0 -&gt; 0.63.1<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libdrm 2.4.104 -&gt; 2.4.107<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libedit 20210216-3.1 -&gt; 20210714-3.1<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libepoxy 1.5.5 -&gt; 1.5.9<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* liberation-fonts 2.00.1 -&gt; 2.1.4<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libffi 3.3 -&gt; 3.4.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libfm 1.3.1 -&gt; 1.3.2<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgcc 10.2.0 -&gt; 11.2.0<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgcc-initial 10.2.0 -&gt; 11.2.0<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgcrypt 1.9.3 -&gt; 1.9.4<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgfortran 10.2.0 -&gt; 11.2.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgit2 1.1.0 -&gt; 1.1.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libglu 9.0.1 -&gt; 9.0.2<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgpg-error 1.41 -&gt; 1.42<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libgudev 234 -&gt; 237<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libhandy 1.2.0 -&gt; 1.2.3<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libical 3.0.9 -&gt; 3.0.10<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libidn2 2.3.0 -&gt; 2.3.2<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libinput 1.16.4 -&gt; 1.18.1<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libjitterentropy 3.0.1 -&gt; 3.1.0<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libjpeg-turbo 2.0.6 -&gt; 2.1.1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libksba 1.5.0 -&gt; 1.6.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libmodulemd 2.12.0 -&gt; 2.13.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libnsl2 1.3.0 -&gt; 2.0.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libnss-mdns 0.14.1 -&gt; 0.15.1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libogg 1.3.4 -&gt; 1.3.5<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libpcap 1.10.0 -&gt; 1.10.1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libpcre 8.44 -&gt; 8.45<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libpcre2 10.36 -&gt; 10.37<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libportal 0.3 -&gt; 0.4<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* librepo 1.13.0 -&gt; 1.14.1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libsdl2 2.0.14 -&gt; 2.0.16<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libsolv 0.7.17 -&gt; 0.7.19<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libtasn1 4.16.0 -&gt; 4.17.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libtest-needs-perl 0.002006 -&gt; 0.002009<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libtirpc 1.3.1 -&gt; 1.3.2<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libubootenv 0.3.1 -&gt; 0.3.2<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libucontext 0.10+X -&gt; 1.1+X<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* liburcu 0.12.2 -&gt; 0.13.0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libuv 1.41.0 -&gt; 1.42.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libva 2.10.0 -&gt; 2.12.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libva-initial 2.10.0 -&gt; 2.12.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libva-utils 2.10.0 -&gt; 2.12.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libwebp 1.2.0 -&gt; 1.2.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libwpe 1.8.0 -&gt; 1.10.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libx11 1.7.0 -&gt; 1.7.2<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxcrypt 4.4.18 -&gt; 4.4.25<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxcrypt-compat 4.4.18 -&gt; 4.4.25<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxfixes 5.0.3 -&gt; 6.0.0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxfont2 2.0.4 -&gt; 2.0.5<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxft 2.3.3 -&gt; 2.3.4<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxi 1.7.10 -&gt; 1.7.99.2<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxkbcommon 1.0.3 -&gt; 1.3.0<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxml2 2.9.10 -&gt; 2.9.12<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* libxres 1.2.0 -&gt; 1.2.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-libc-headers 5.10 -&gt; 5.14<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-yocto 5.4.144+gitX, 5.10.63+gitX -&gt;=
 5.10.70+gitX, 5.14.9+gitX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-yocto-dev 5.12++gitX -&gt; 5.15++gitX<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-yocto-rt 5.4.144+gitX, 5.10.63+gitX -&=
gt; 5.10.70+gitX, 5.14.9+gitX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* linux-yocto-tiny 5.4.144+gitX, 5.10.63+gitX =
-&gt; 5.10.70+gitX, 5.14.9+gitX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* llvm 11.1.0 -&gt; 12.0.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* log4cplus 2.0.6 -&gt; 2.0.7<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* logrotate 3.18.0 -&gt; 3.18.1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ltp 20210121 -&gt; 20210524<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* lttng-modules 2.12.6 -&gt; 2.13.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* lttng-tools 2.12.4 -&gt; 2.13.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* lttng-ust 2.12.1 -&gt; 2.13.0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* m4 1.4.18 -&gt; 1.4.19<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* m4-native 1.4.18 -&gt; 1.4.19<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* man-pages 5.10 -&gt; 5.12<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mc 4.8.26 -&gt; 4.8.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mesa 21.0.3 -&gt; 21.2.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mesa-gl 21.0.3 -&gt; 21.2.1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* meson 0.57.1 -&gt; 0.58.1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mmc-utils 0.1+gitX (73d6c59af8d1...) -&gt; 0=
.1+gitX (43282e80e174...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mobile-broadband-provider-info 20201225 -&gt=
; 20210805<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mpg123 1.26.4 -&gt; 1.28.2<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mtd-utils 2.1.2 -&gt; 2.1.3<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* mtools 4.0.26 -&gt; 4.0.35<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* musl 1.2.2+gitX (e5d2823631bb...) -&gt; 1.2.=
2+gitX (3f701faace7a...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* nativesdk-meson 0.57.1 -&gt; 0.58.1<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* netbase 6.2 -&gt; 6.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* nfs-utils 2.5.3 -&gt; 2.5.4<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ofono 1.31 -&gt; 1.32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* openssh 8.5p1 -&gt; 8.7p1<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* opkg 0.4.4 -&gt; 0.4.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* opkg-utils 0.4.3 -&gt; 0.4.5<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ovmf edk2-stable202102 -&gt; edk2-stable2021=
05<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* p11-kit 0.23.22 -&gt; 0.24.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* pango 1.48.2 -&gt; 1.48.9<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* patchelf 0.12 -&gt; 0.13<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* perl 5.32.1 -&gt; 5.34.0<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* piglit 1.0+gitrX (d4d9353b7290...) -&gt; 1.0=
+gitrX (6a4be9e9946d...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* pkgconf 1.7.3 -&gt; 1.8.0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* powertop 2.13 -&gt; 2.14<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* pseudo 1.9.0+gitX (b988b0a6b8af...) -&gt; 1.=
9.0+gitX (0cda3ba5f94a...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* pulseaudio 14.2 -&gt; 15.0<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* puzzles 0.0+gitX (84cb4c6701e0...) -&gt; 0.0=
+gitX (8f3413c31ffd...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3 3.9.5 -&gt; 3.9.6<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-attrs 20.3.0 -&gt; 21.2.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-cython 0.29.22 -&gt; 0.29.24<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-dbus 1.2.16 -&gt; 1.2.18<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-dbusmock 0.22.0 -&gt; 0.23.1<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-docutils 0.16 -&gt; 0.17.1<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-git 3.1.14 -&gt; 3.1.20<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-gitdb 4.0.5 -&gt; 4.0.7<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-hypothesis 6.2.0 -&gt; 6.15.0<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-importlib-metadata 3.4.0 -&gt; 4.6.4=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-iniparse 0.4 -&gt; 0.5<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-jinja2 2.11.3 -&gt; 3.0.1<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-libarchive-c 2.9 -&gt; 3.1<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-magic 0.4.22 -&gt; 0.4.24<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-mako 1.1.4 -&gt; 1.1.5<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-markupsafe 1.1.1 -&gt; 2.0.1<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-more-itertools 8.7.0 -&gt; 8.8.0<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-numpy 1.20.1 -&gt; 1.21.2<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-packaging 20.9 -&gt; 21.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pathlib2 2.3.5 -&gt; 2.3.6<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pbr 5.4.4 -&gt; 5.6.0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pip 20.0.2 -&gt; 21.2.4<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pluggy 0.13.1 -&gt; 1.0.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pycairo 1.20.0 -&gt; 1.20.1<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pygments 2.8.1 -&gt; 2.10.0<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pygobject 3.38.0 -&gt; 3.40.1<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-pytest 6.2.2 -&gt; 6.2.4<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-scons 3.1.2 -&gt; 4.2.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-scons-native 3.1.2 -&gt; 4.2.0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-setuptools 54.1.1 -&gt; 57.4.0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-setuptools-scm 5.0.1 -&gt; 6.0.1<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-six 1.15.0 -&gt; 1.16.0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-sortedcontainers 2.3.0 -&gt; 2.4.0<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-testtools 2.4.0 -&gt; 2.5.0<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* python3-zipp 3.4.1 -&gt; 3.5.0<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu 5.2.0 -&gt; 6.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu-native 5.2.0 -&gt; 6.0.0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* qemu-system-native 5.2.0 -&gt; 6.0.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* re2c 2.0.3 -&gt; 2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rng-tools 6.11 -&gt; 6.14<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rpcbind 1.2.5 -&gt; 1.2.6<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rt-tests 1.10 -&gt; 2.1<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* ruby 3.0.1 -&gt; 3.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* rxvt-unicode 9.22 -&gt; 9.26<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* shaderc 2020.5 -&gt; 2021.1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* shadow 4.8.1 -&gt; 4.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* spirv-tools 2020.7 -&gt; 2021.2<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sqlite3 3.35.0 -&gt; 3.36.0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* squashfs-tools 4.4 -&gt; 4.5<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* strace 5.11 -&gt; 5.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* stress-ng 0.12.05 -&gt; 0.13.00<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sudo 1.9.6p1 -&gt; 1.9.7p2<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* swig 3.0.12 -&gt; 4.0.2<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* sysklogd 2.2.2 -&gt; 2.2.3<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemd 247.6 -&gt; 249.3<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemd-boot 247.6 -&gt; 249.3<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemd-conf 247.6 -&gt; 1.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemtap 4.4 -&gt; 4.5<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemtap-native 4.4 -&gt; 4.5<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* systemtap-uprobes 4.4 -&gt; 4.5<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* tcf-agent 1.7.0+gitX (a022ef2f1acf...) -&gt;=
 1.7.0+gitX (2735e3d6b7ec...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* texinfo 6.7 -&gt; 6.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* tiff 4.2.0 -&gt; 4.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* u-boot 2021.01 -&gt; 2021.07<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* u-boot-tools 2021.01 -&gt; 2021.07<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* usbutils 013 -&gt; 014<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* util-linux 2.36.2 -&gt; 2.37.2<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* util-linux-libuuid 2.36.2 -&gt; 2.37.2<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vala 0.50.4 -&gt; 0.52.5<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* valgrind 3.16.1 -&gt; 3.17.0<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* virglrenderer 0.8.2 -&gt; 0.9.1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vte 0.62.2 -&gt; 0.64.2<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vulkan-headers 1.2.170.0 -&gt; 1.2.182.0<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vulkan-loader 1.2.170.0 -&gt; 1.2.182.0<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vulkan-samples git (55cebd9e7cc4...) -&gt; g=
it (d2187278cb66...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* vulkan-tools 1.2.170.0 -&gt; 1.2.182.0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wayland-protocols 1.20 -&gt; 1.21<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* webkitgtk 2.30.5 -&gt; 2.32.3<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wireless-regdb 2021.04.21 -&gt; 2021.07.14<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* wpebackend-fdo 1.8.0 -&gt; 1.10.0<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* x264 r3039+gitX (544c61f08219...) -&gt; r303=
9+gitX (5db6aa6cab1b...)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xeyes 1.1.2 -&gt; 1.2.0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xf86-input-libinput 0.30.0 -&gt; 1.1.0<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xkbcomp 1.4.4 -&gt; 1.4.5<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xkeyboard-config 2.32 -&gt; 2.33<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xorgproto 2020.1 -&gt; 2021.4.99.2<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* xserver-xorg 1.20.10 -&gt; 1.20.13<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black">* zstd 1.4.9 -&gt; 1.5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB33016329CA99326D2BEB53FD88849BYAPR11MB3301namp_--

