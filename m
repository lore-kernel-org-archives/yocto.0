Return-Path: <vineela.tummalapalli@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB662C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 22:15:22 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web12.6191.1632780920869362465
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 15:15:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=b9GG0rTb;
 spf=pass (domain: intel.com, ip: 192.55.52.151,
 mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="204724324"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200";
   d="scan'208,217";a="204724324"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 15:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200";
   d="scan'208,217";a="456397705"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga002.jf.intel.com with ESMTP; 27 Sep 2021 15:15:19 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 15:15:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 15:15:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 15:15:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SihkZFb8vbw7zqly2DTUUr5DywEUaM4CIhsw93/rLYTj6NavK3o0NaEfQYM3b9J2IWhiJGb31mfzSBt3vJR525fZfl3Ujv8rP2sOvFrpZv1Jqb39bxo4JNZ50yBATZBg6/+Ez1TpkF6YUGEG+8BoeimD+WqBreVupW6giTX4xaKkk5U0Tkb+yoZU/wP+gI4bRiuS02QsXG2CtNj9tdi8MP8FnDxI2ZJq6Mr/nq3zhNv74ER/NqrYH+Mh8ur/qV991xDkiS0u0y/vrM2YMjncFeATqr2/vbiqiYzrB54ezb3lF4KeMXnRoeubyJTDixFI/RZIGET3XWu8Ocu1argdDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=HmVWKN6Mi+OAXZPDbrGpaEQzTFWI87caTQn2fqulCxM=;
 b=kq/PjsKEMdjsx4rkQSjB/UIzlYlhuq0/r4F//aybWbvpd3arDYDr3p14em3lsTYXCFoPvFk8Y0VD2o5jCIohnJQI3BXhwau0TJpQUbI7ZK6S0BYaJYZ9eEHq8LAJH4eDTNbQS2JCmCWdY+mZHBSY9VOC7znfPhJGqjeTlnkxvJtaYDKDrmx36pSgXcx360K1hkiMN5dQ6Q+PnEFQU4xSa4tQ2TX1v6y/AfTWUk2xnEAJPbwXpzRJ63kn6q35S3fnHSLegKjXAj9xI8WgkPRZbukDh8zNRCmNetA1xyrxjPCVkbg0qdSKYepovX+iMWh0PcVeQaVrgM4U7NXweP9AAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HmVWKN6Mi+OAXZPDbrGpaEQzTFWI87caTQn2fqulCxM=;
 b=b9GG0rTbdSABxyoeQ+sRFskMJ5Rb2l3+vcB68joxxHyiQTGUGr3nWf6WkcgRF38IR4ywgO2p/QfG1No+oOScIgjLG2SLNd85MfZGVE0vaDvK+0TEjWTT0buMH8Htv2D/MHJFixg9ZMcRbWbaO6olSNFy08T7a2jrXqZq/zRnz5c=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB5005.namprd11.prod.outlook.com (2603:10b6:a03:2d3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Mon, 27 Sep
 2021 22:14:37 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9%4]) with mapi id 15.20.4544.015; Mon, 27 Sep 2021
 22:14:37 +0000
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.11 (dunfell-23.0.11) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.11 (dunfell-23.0.11) is
 Released
Thread-Index: Adez67NgYvPsmJdGSR6rkT1Efrmg+Q==
Date: Mon, 27 Sep 2021 22:14:37 +0000
Message-ID: 
 <BYAPR11MB3301B2EE9EBAC9465888D0DF88A79@BYAPR11MB3301.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 299953ec-2dcc-47b3-1623-08d9820431d0
x-ms-traffictypediagnostic: SJ0PR11MB5005:
x-microsoft-antispam-prvs: 
 <SJ0PR11MB500501CF390F0080A0E01BAD88A79@SJ0PR11MB5005.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tBpbW9ACOsm+/5ax/4K4ziAaVFSs+IDkLcJsuhm2z4kqyj7oJwq5FgpMVuYCB58DI3PKHvBIqJfP5APazF64srd2nN3ImlDAIM/ODn/hoIn7Pgvqh1YBaUV9lC9EYPiXLuOnW1Ky6vbyl/kQJeAAMsEAfEGk7IkwJM6LRc0qkWrEhrqshsdeDKbOIkVe+g1UWynRvBdQA86uCz7RR7/rMTU1zn0hF+FN655PzOLgIT2MKlfgx89qR9R0VMV6gG0/4dgGakmpUNjZaI+oYcS5V484UGyCjYjYxgCkfbipxAQfUa97Oqm/SRdlx7z81eL2BorkrOTRSdt/gO7045DslTRsaUQo6W9b6VgSXgW1TO0if4SUBp5Zb46Fce2ZVm58L1JxHebwHC2agFQz78ZZr4El4MdmEjQmCoQ0FCQ6+9aZ6dITE8gswat3L73GiXMcd5N3bbVuA4iFJv8wXi8/zw1QHVhVC6tjY0pi3xNDsnaPbJhEiE6ycuCovpRqdOPU2xr9smE2PLwJo5SRx31r++hx1DIPanlU3Ful9y+lcsX0B0xMj/zzVHNCeIq0YRQZj9iYzIMuKLkCLpjzbyQmZqNZUpCFaqyhShCCc2Al2LmDTRHdeRCAqSE8qu3CWlutDiixgrTLHXO4tCVpshvvZab7ZmBcOf4026ADiTLf/BlqyEukWTjrO1SfSqu9WFOCxkVPJRTJSsPaWdOcsT3we2zeyhGsGOfe6vIMira74YXqfcnWx/Dd2qNcAdE9yq3MYVtgoisTedbTD0Z1bzJsgfVFayhd8ddzSSvl4gNw8t7NmGhw4cV959AHWJ1mcRqtivaQoBPHiwI8YPWLskDSa6x9rQDVA7iEZu1mWa2LecY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(9686003)(7696005)(450100002)(38100700002)(76116006)(8676002)(26005)(508600001)(38070700005)(55016002)(86362001)(166002)(6506007)(5660300002)(9326002)(8936002)(122000001)(110136005)(66574015)(66446008)(966005)(66946007)(66476007)(66556008)(64756008)(2906002)(71200400001)(30864003)(186003)(83380400001)(52536014)(33656002)(316002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?tC1UW836QM8m0P148Ts0w/LUp25w5H6RffE2k2ikqGwqX+0PjRK7y/nKil?=
 =?iso-8859-1?Q?5EniHpye5OBnyMPSIJjLh0J/oeOSy73ApihgMzbhSUs8hSgdu0uuX+HB5M?=
 =?iso-8859-1?Q?h93z36kzUxEHdOx7Dv+YKtf8Tt+y+H6KlHulEz9r3UAOOcCZ/h7SKWNF1u?=
 =?iso-8859-1?Q?/3LRnHQPPS+dceVbZw2tgATk+Hn8LHBp8DvkcwhtaNK0WesbWgciWTNSRi?=
 =?iso-8859-1?Q?ij9F2YlZVVR6FPxKFOs6sCDmYkO4xY7xskSLNl93pu7PT++EkewhsSLG9z?=
 =?iso-8859-1?Q?FLlpNCYJxs8qXH2rJoCkwE+eM8KFG99RjMyhqK6hYtNUpBK4tyHXegdRCo?=
 =?iso-8859-1?Q?N0LxLgKF/nr9UfHVESfl4RKKeFbBNOz6ylHxsFcsn7hr9dnmEcmyVCkIrY?=
 =?iso-8859-1?Q?XjBHB1fgTman283yCSUC/pvIgQYVb6OtPQZ2Rx9cdcTxXLekg9O4N4v8D2?=
 =?iso-8859-1?Q?kHzp4Joj0RsALwNUlCjtV15e7L3SeAkPnEAnqTUo2GtWG13Brm834HTORz?=
 =?iso-8859-1?Q?Fs6/fxuc6kPErhDLp0wt1xvJyov/5+IZIoNmPsY8SuChrbHAnC4uF4vRRX?=
 =?iso-8859-1?Q?+90LZAakIyImn+saXn037BHHr12eH27OKbaMz8PB80BXO8Yv5KUn7pnAIr?=
 =?iso-8859-1?Q?vAV8oHmnU0GIdhQHChtNkP3vM8aiv8iCnbbLNWmayH+1BL8SX7A4Jjrqy9?=
 =?iso-8859-1?Q?r0L5sUeyMLEJyLB5JebM/cjTykw2WrLbWayy0bicw64jKaCYvl5O8Dc+lE?=
 =?iso-8859-1?Q?ta/3MOeNtjf3iM7pLbIyeJcW+kxnDJ42KyeeUCTPdCVQOsP/X9Ks46JxVi?=
 =?iso-8859-1?Q?TEwK5kFDychBQDaYY5x791FYs3O7qXtwKR7ZAu3Aqh2SAgWnSKIxSYpsck?=
 =?iso-8859-1?Q?VRThOApDqgQbXOToYgmJpy3DbgehjPktd1ut1IqX0eRmjPNqOnG+ehVyri?=
 =?iso-8859-1?Q?aiDqvGr7aNAAAokpjMsgvRJVhKyj5S9Y+DellbT454iCb2BdisLoeUMHoi?=
 =?iso-8859-1?Q?bwgjzDKJn2+gaFIpYZ7PbWOQY4J2nOL0k04GsOrpsN4mfC8ot5oJ9FWuXT?=
 =?iso-8859-1?Q?RrBNZ142ruJcc65FT7pT6QScmjeHJ0L++WHt7Oln3K/WiFyxZKn1C+iChB?=
 =?iso-8859-1?Q?rPqwyVoBXfiij2MD8qVgKG6pp0IeStpNZOaQvoP9BY/X60nsM+vtNE/htb?=
 =?iso-8859-1?Q?DOKH4WoPpm10ZSpfluzd+BaLJdbYJhN7md01dsFe9pHLSwlU0tnKr/HmL+?=
 =?iso-8859-1?Q?yeRjPzllyzF5bIKRHqrth0UAov81YSkgySC95Ves4boKbt9QMzwOj4d/Ay?=
 =?iso-8859-1?Q?9ZuF+a/a/tkK8FReIow3Bg1JWlM84vkSu2XMyRDtXzRnc5swpnOVU0q/ph?=
 =?iso-8859-1?Q?GgeW/1Lc3s?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3301B2EE9EBAC9465888D0DF88A79BYAPR11MB3301namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 299953ec-2dcc-47b3-1623-08d9820431d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 22:14:37.5309
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 JeAuWsmxYl2w0nmSXWU95sbAcXRZpPEZucFREx0LPOEqQctEmZKQEVbJMLbBiy39/27i3va0i9qfreL+xqFOwsG3iizN5mLxwEMjcSx2HfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5005
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 22:15:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54886

--_000_BYAPR11MB3301B2EE9EBAC9465888D0DF88A79BYAPR11MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.11 (dunfell-23.0.11) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/poky-dunfell-=
23.0.11.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/testreport.tx=
t

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>





--------------------------

yocto-3.1.11 Release Notes

--------------------------





--------------------------

Repositories/Downloads

--------------------------



Repository Name: poky

Repository Location: https://git.yoctoproject.org/git/poky

Branch: dunfell

Tag: yocto-3.1.11

Git Revision: 74b22db6879b388d700f61e08cb3f239cf940d18

Release Artefact: poky-dunfell-23.0.11

sha: 79d68832b990090b8d61ebf79be1ecbb757b404417adcbbea48aca52f4863b2c

Download Locations:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/poky-dunfell-=
23.0.11.tar.bz2

http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar=
.bz2



Repository Name: openembedded-core

Repository Location: https://git.openembedded.org/openembedded-core

Branch: dunfell

Tag: 2020-04.11-dunfell

Git Revision: c7d2281eb6cda9c1637c20b3540b142073bca235

Release Artefact: oecore-dunfell-23.0.11

sha: 641835d35d37b977a47ee9b7433aaa5cf8644bee7f44cc8c8e915d55bbb89c72

Download Locations:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/oecore-dunfel=
l-23.0.11.tar.bz2

http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/oecore-dunfell-23.0.11.t=
ar.bz2



Repository Name: meta-mingw

Repository Location: https://git.yoctoproject.org/git/meta-mingw

Branch: dunfell

Tag: yocto-3.1.11

Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7

Release Artefact: meta-mingw-dunfell-23.0.11

sha: 34a183fa03d8c9a37732f3b35ebe9b5b5cc832a826308458536925ef6818b21a

Download Locations:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/meta-mingw-du=
nfell-23.0.11.tar.bz2

http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/meta-mingw-dunfell-23.0.=
11.tar.bz2



Repository Name: meta-gplv2

Repository Location: https://git.yoctoproject.org/git/meta-gplv2

Branch: dunfell

Tag: yocto-3.1.11

Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac

Release Artefact: meta-gplv2-dunfell-23.0.11

sha: 9ea1d569486ef65e5a3eeb90fb55322bf2de1a7c489bf90994e0c153478fb3e0

Download Locations:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/meta-gplv2-du=
nfell-23.0.11.tar.bz2

http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/meta-gplv2-dunfell-23.0.=
11.tar.bz2



Repository Name: bitbake

Repository Location: https://git.openembedded.org/bitbake

Branch: 1.46

Tag: 2020-04.11-dunfell

Git Revision: c2a3bda3a29e12472ef7862e424ea1552fab2959

Release Artefact: bitbake-dunfell-23.0.11

sha: cee9aa302124f18d28478b51fc507bac0810bd2ddbc70c31bf22219891ef2482

Download Locations:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.11/bitbake-dunfe=
ll-23.0.11.tar.bz2

http://mirrors.kernel.org/yocto/yocto/yocto-3.1.11/bitbake-dunfell-23.0.11.=
tar.bz2



Repository Name: yocto-docs

Repository Location: https://git.yoctoproject.org/git/yocto-docs

Branch: dunfell

Tag: yocto-3.1.11

Git Revision:cc226593701bd5a93c0bcefc0c41da1a32849912



-------------

Contributors

-------------

akuster

Alexander Kanavin

Alexandre Belloni

Andrej Valek

Armin Kuster

Bruce Ashfield

Changqing Li

Denys Dmytriyenko

Dmitry Baryshkov

Dragos-Marian Panait

hongxu

jbouchard

Jose Quaresma

Khem Raj

Lee Chee Yang

leimaohui

Marek Vasut

Marta Rybczynska

Matthias Klein

Matt Madison

Michael Opdenacker

Mike Crowe

Mikko Rapeli

Minjae Kim

Nathan Rossi

Neetika Singh

Nicolas Dechesne

Oleksandr Kravchuk

Oleksandr Popovych

Ovidiu Panait

Paul Barker

Purushottam Choudhary

Ralph Siemsen

Ranjitsinh Rathod

Richard Purdie

Ross Burton

Sakib Sajal

Saul Wold

Steve Sakoman

Teoh Jay Shen

TeohJayShen

Tomasz Dziendzielski

Ulrich =D6lmann

Wang Mingyu

Wes Lindauer

Yi Zhao



---------------

Known Issues

---------------

oe_syslog.SyslogTestConfig.test_syslog_startup_config failure:

This seems like an intermittent issue.



---------------

Security Fixes

---------------

xserver-xorg: Security fix for CVE-2020-14360/-25712

go: Exclude CVE-2021-29923 from report list

flex: Add CVE-2019-6293 to exclusions for checks

xdg-utils: Add fix for CVE-2020-27748

gdk-pixbuf: fix CVE-2021-20240

lz4: Security Fix for CVE-2021-3520

cpio: backport fix for CVE-2021-38185

lzo: add CVE_PRODUCT

binutils: Security fix for CVE-2020-16593

binutils: Security fix for CVE-2021-3549

rpm: Add fix for CVE-2021-20266

qemu: fix CVE-2021-3608

qemu: fix CVE-2021-3607

qemu: fix CVE-2021-3582

qemu: fix CVE-2021-3527

qemu: Security fixes CVE-2021-3545/6

qemu: Security fix CVE-2021-3544

qemu: fix CVE-2021-20257

qemu: fix CVE-2021-3416

qemu: fix CVE-2021-20181

qemu: Security fix CVE-2021-20221

qemu: Security fix for CVE-2020-29443

Qemu: Security fix for CVE-2020-25625/2021-3409/2020-17380

qemu: Security fix CVE-2020-25624

qemu: Security fix CVE-2020-25085

glibc: Security fix for CVE-2021-38604

glibc: Security fix CVE-2021-33574

tar: ignore node-tar CVEs

util-linux: fix CVE-2021-37600

cve-check: remove deprecated CVE_CHECK_CVE_WHITELIST

cve-check: improve comment about CVE patch file names

cve-check: update link to NVD website for CVE details

libsolv: fix CVE-2021-3200

glibc: Document and whitelist CVE-2021-35942

systemd: Add fix for CVE-2020-13529 and CVE-2021-33910

aspell: fix CVE-2019-25051

curl: Fix CVE-2021-22924 and CVE-2021-22925

curl: Fix for CVE-2021-22898

avahi: fix CVE-2021-3468

libxml2: fix CVE-2021-3541

gstreamer: ignore CVE-2021-3497, CVE-2021-3498, and CVE-2021-3522

Revert "gstreamer-plugins-base: ignore CVE-2021-3522 since it is fixed"

Revert "gstreamer-plugins-good: ignore CVE-2021-3497/8 since they are fixed=
"





---------------

Fixes

---------------

NOTE: While using a custom distro which sets default SDK installation path =
by defining SDKPATH,

will need to change SDKPATH to SDKPATHINSTALL.

The poky distro provides an example of this change:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunfell&id=3D67=
dbe8a1c2b485d0cec174d28107b0ac8ea77d5f



build-appliance-image: Update to dunfell head revision

poky: Use SDKPATHINSTALL instead of SDKPATH

build-appliance-image: Update to dunfell head revision

go: Several Security fixes

dbus: upgrade 1.12.18 -> 1.12.20

dbus,dbus-test: Move common parts to dbus.inc

dbus-test: Remove EXTRA_OECONF_X configs

dbus-test: upgrade 1.12.16 -> 1.12.18

dbus: upgrade 1.12.16 -> 1.12.18

rt-tests: set branch name in SRC_URI

oeqa/runtime/parselogs: Make DVD ata error apply to all qemux86 machines

lighttpd: Add patch for reuse large memory chunks

layer.conf: fix syntax error in PATH setting

vim: add option to disable NLS support

sdk: Decouple default install path from built in path

poky.conf: Bump version for 3.1.11 release

documentation: prepare for 3.1.11 release

selftest: disable virgl headless test

parselogs.py: ignore intermittent CD/DVDROM identification failure

qemurunner.py: handle getOutput() having nothing to read

qemurunner.py: print output from runqemu/qemu-system in stop()

linux-yocto/5.4: update to v5.4.142

image_types: Restore pre-btrfs-tools 4.14.1 mkfs.btrfs shrink behavior

mklibs-native: drop deprecated cpp17 exceptions

tcf-agent: fetching over git:// no longer works

utils: Reduce the number of calls to the "dirname" command

Use the label provided when formating a dos partition

openssl: update from 1.1.1k to 1.1.1l

gnupg: upgrade 2.2.26 -> 2.2.27

gnupg: update 2.2.23 -> 2.2.26

gnupg: uprev 2.2.22 -> 2.2.23

gnupg: update 2.2.21 -> 2.2.22

gnupg: upgrade 2.2.20 -> 2.2.21

sdk: Enable do_populate_sdk with multilibs

linux-firmware: add more Qualcomm firmware packages

python3: Remove unused python3 recipe

linux-yocto/5.4: update to v5.4.141

linux-yocto/5.4: update to v5.4.139

linux-yocto/5.4: update to v5.4.137

ovmf: build natively everywhere

oeqa/selftest/glibc: Handle incorrect encoding issuesin glibc test results

oeqa/runtime/cases: make date.DateTest.test_date more reliable

sdk: fix relocate symlink failed

sstate.bbclass: fix error handling when sstate mirrors is ro

wic: don't forcibly pass -T default

e2fsprogs: ensure small images have 256-byte inodes

cve-check: fix comments

cve-check: add include/exclude layers

runqemu: Fix typo in error message

kernel-yocto: Simplify no git repo case in do_kernel_checkout

license: Exclude COPYING.MIT from pseudo

ruby: 2.7.3 -> 2.7.4

sstate: Fix rebuilds when changing layer config

linux-yocto/5.4: update to v5.4.135

archiver.bbclass: fix do_ar_configured failure for kernel

yocto-check-layer: ensure that all layer dependencies are tested too

checklayer: rename _find_layer_depends

checklayer: new function get_layer_dependencies()

yocto-check-layer: improve missed dependencies

oeqa/usb_hid.py : add test to check the usb/human interface device status a=
fter suspend state

oeqa/terminal : improve the test case

oeqa/runtime: add test for matchbox-terminal

oeqa/suspend : add test for suspend state

oeqa/runtime/cases: Only disable/enable for current boot

oeqa/runtime : add test for RTC(Real Time Clock)

oeqa/ethernet_ip_connman : add test for network connections

ifupdown: added -1 option to dhclient for dhcpv6

qemu: Enable seccomp if FEATURE is set

qemu.inc: Add seccomp PACKAGECONFIG option

oe-setup-builddir: update YP docs and OE URLs

glew: fix Makefile race

yocto-check-layer: Remove duplicated code

initramfs-framework/setup-live: fix shebang

bitbake.conf: change GNOME_MIRROR to new one

archiver.bbclass: Fix patch error for recipes that inherit dos2unix.

ovmf: Fix VLA warnings with GCC 11

oeqa/manual/toaster: fix small typo

linux-yocto/5.4: update to v5.4.134

bitbake: providers: replace newly added logger.warn() with logger.warning()

bitbake: data_smart: Allow colon in variable expansion regex

bitbake: data_smart/parse: Allow ':' characters in variable/function names

bitbake: BBHandler: Don't classify shell functions that names start with "p=
ython*" as python function




--_000_BYAPR11MB3301B2EE9EBAC9465888D0DF88A79BYAPR11MB3301namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.11 =
(dunfell-23.0.11) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.11/poky-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.11/RELEASENOTES">http://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.1.11/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.11/testreport.txt">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">--------------------------<o:p></o:p></p>
<p class=3D"MsoPlainText">yocto-3.1.11 Release Notes<o:p></o:p></p>
<p class=3D"MsoPlainText">--------------------------<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">--------------------------<o:p></o:p></p>
<p class=3D"MsoPlainText">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoPlainText">--------------------------<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.yocto=
project.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: yocto-3.1.11<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision: 74b22db6879b388d700f61e08cb3f239cf9=
40d18<o:p></o:p></p>
<p class=3D"MsoPlainText">Release Artefact: poky-dunfell-23.0.11<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">sha: 79d68832b990090b8d61ebf79be1ecbb757b404417ad=
cbbea48aca52f4863b2c<o:p></o:p></p>
<p class=3D"MsoPlainText">Download Locations:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2">http://downloads.yoct=
oproject.org/releases/yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2</a><o=
:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://mirrors.kernel.org/yocto/yocto/=
yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/yocto/=
yocto/yocto-3.1.11/poky-dunfell-23.0.11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.opene=
mbedded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: 2020-04.11-dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision: c7d2281eb6cda9c1637c20b3540b142073b=
ca235<o:p></o:p></p>
<p class=3D"MsoPlainText">Release Artefact: oecore-dunfell-23.0.11<o:p></o:=
p></p>
<p class=3D"MsoPlainText">sha: 641835d35d37b977a47ee9b7433aaa5cf8644bee7f44=
cc8c8e915d55bbb89c72<o:p></o:p></p>
<p class=3D"MsoPlainText">Download Locations:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/oecore-dunfell-23.0.11.tar.bz2">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-3.1.11/oecore-dunfell-23.0.11.tar.bz2</=
a><o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://mirrors.kernel.org/yocto/yocto/=
yocto-3.1.11/oecore-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/yoct=
o/yocto/yocto-3.1.11/oecore-dunfell-23.0.11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.yocto=
project.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: yocto-3.1.11<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision: 524de686205b5d6736661d4532f5f98fee8=
589b7<o:p></o:p></p>
<p class=3D"MsoPlainText">Release Artefact: meta-mingw-dunfell-23.0.11<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">sha: 34a183fa03d8c9a37732f3b35ebe9b5b5cc832a82630=
8458536925ef6818b21a<o:p></o:p></p>
<p class=3D"MsoPlainText">Download Locations:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/meta-mingw-dunfell-23.0.11.tar.bz2">http://download=
s.yoctoproject.org/releases/yocto/yocto-3.1.11/meta-mingw-dunfell-23.0.11.t=
ar.bz2</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://mirrors.kernel.org/yocto/yocto/=
yocto-3.1.11/meta-mingw-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/=
yocto/yocto/yocto-3.1.11/meta-mingw-dunfell-23.0.11.tar.bz2</a><o:p></o:p><=
/p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.yocto=
project.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: yocto-3.1.11<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09=
292ac<o:p></o:p></p>
<p class=3D"MsoPlainText">Release Artefact: meta-gplv2-dunfell-23.0.11<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">sha: 9ea1d569486ef65e5a3eeb90fb55322bf2de1a7c489b=
f90994e0c153478fb3e0<o:p></o:p></p>
<p class=3D"MsoPlainText">Download Locations:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/meta-gplv2-dunfell-23.0.11.tar.bz2">http://download=
s.yoctoproject.org/releases/yocto/yocto-3.1.11/meta-gplv2-dunfell-23.0.11.t=
ar.bz2</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://mirrors.kernel.org/yocto/yocto/=
yocto-3.1.11/meta-gplv2-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/=
yocto/yocto/yocto-3.1.11/meta-gplv2-dunfell-23.0.11.tar.bz2</a><o:p></o:p><=
/p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.opene=
mbedded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: 1.46<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: 2020-04.11-dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision: c2a3bda3a29e12472ef7862e424ea1552fa=
b2959<o:p></o:p></p>
<p class=3D"MsoPlainText">Release Artefact: bitbake-dunfell-23.0.11<o:p></o=
:p></p>
<p class=3D"MsoPlainText">sha: cee9aa302124f18d28478b51fc507bac0810bd2ddbc7=
0c31bf22219891ef2482<o:p></o:p></p>
<p class=3D"MsoPlainText">Download Locations:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.11/bitbake-dunfell-23.0.11.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.1.11/bitbake-dunfell-23.0.11.tar.bz2=
</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://mirrors.kernel.org/yocto/yocto/=
yocto-3.1.11/bitbake-dunfell-23.0.11.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.1.11/bitbake-dunfell-23.0.11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoPlainText">Repository Location: <a href=3D"https://git.yocto=
project.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoPlainText">Tag: yocto-3.1.11<o:p></o:p></p>
<p class=3D"MsoPlainText">Git Revision:cc226593701bd5a93c0bcefc0c41da1a3284=
9912<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-------------<o:p></o:p></p>
<p class=3D"MsoPlainText">Contributors<o:p></o:p></p>
<p class=3D"MsoPlainText">-------------<o:p></o:p></p>
<p class=3D"MsoPlainText">akuster<o:p></o:p></p>
<p class=3D"MsoPlainText">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoPlainText">Alexandre Belloni<o:p></o:p></p>
<p class=3D"MsoPlainText">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoPlainText">Armin Kuster<o:p></o:p></p>
<p class=3D"MsoPlainText">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoPlainText">Changqing Li<o:p></o:p></p>
<p class=3D"MsoPlainText">Denys Dmytriyenko<o:p></o:p></p>
<p class=3D"MsoPlainText">Dmitry Baryshkov<o:p></o:p></p>
<p class=3D"MsoPlainText">Dragos-Marian Panait<o:p></o:p></p>
<p class=3D"MsoPlainText">hongxu<o:p></o:p></p>
<p class=3D"MsoPlainText">jbouchard<o:p></o:p></p>
<p class=3D"MsoPlainText">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoPlainText">Khem Raj<o:p></o:p></p>
<p class=3D"MsoPlainText">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoPlainText">leimaohui<o:p></o:p></p>
<p class=3D"MsoPlainText">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoPlainText">Marta Rybczynska<o:p></o:p></p>
<p class=3D"MsoPlainText">Matthias Klein<o:p></o:p></p>
<p class=3D"MsoPlainText">Matt Madison<o:p></o:p></p>
<p class=3D"MsoPlainText">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoPlainText">Mike Crowe<o:p></o:p></p>
<p class=3D"MsoPlainText">Mikko Rapeli<o:p></o:p></p>
<p class=3D"MsoPlainText">Minjae Kim<o:p></o:p></p>
<p class=3D"MsoPlainText">Nathan Rossi<o:p></o:p></p>
<p class=3D"MsoPlainText">Neetika Singh<o:p></o:p></p>
<p class=3D"MsoPlainText">Nicolas Dechesne<o:p></o:p></p>
<p class=3D"MsoPlainText">Oleksandr Kravchuk<o:p></o:p></p>
<p class=3D"MsoPlainText">Oleksandr Popovych<o:p></o:p></p>
<p class=3D"MsoPlainText">Ovidiu Panait<o:p></o:p></p>
<p class=3D"MsoPlainText">Paul Barker<o:p></o:p></p>
<p class=3D"MsoPlainText">Purushottam Choudhary<o:p></o:p></p>
<p class=3D"MsoPlainText">Ralph Siemsen<o:p></o:p></p>
<p class=3D"MsoPlainText">Ranjitsinh Rathod<o:p></o:p></p>
<p class=3D"MsoPlainText">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoPlainText">Ross Burton<o:p></o:p></p>
<p class=3D"MsoPlainText">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoPlainText">Saul Wold<o:p></o:p></p>
<p class=3D"MsoPlainText">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoPlainText">Teoh Jay Shen<o:p></o:p></p>
<p class=3D"MsoPlainText">TeohJayShen<o:p></o:p></p>
<p class=3D"MsoPlainText">Tomasz Dziendzielski<o:p></o:p></p>
<p class=3D"MsoPlainText">Ulrich =D6lmann<o:p></o:p></p>
<p class=3D"MsoPlainText">Wang Mingyu<o:p></o:p></p>
<p class=3D"MsoPlainText">Wes Lindauer<o:p></o:p></p>
<p class=3D"MsoPlainText">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">Known Issues<o:p></o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">oe_syslog.SyslogTestConfig.test_syslog_startup_co=
nfig failure:<o:p></o:p></p>
<p class=3D"MsoPlainText">This seems like an intermittent issue.<o:p></o:p>=
</p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">Security Fixes<o:p></o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">xserver-xorg: Security fix for CVE-2020-14360/-25=
712<o:p></o:p></p>
<p class=3D"MsoPlainText">go: Exclude CVE-2021-29923 from report list<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">flex: Add CVE-2019-6293 to exclusions for checks<=
o:p></o:p></p>
<p class=3D"MsoPlainText">xdg-utils: Add fix for CVE-2020-27748<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">gdk-pixbuf: fix CVE-2021-20240<o:p></o:p></p>
<p class=3D"MsoPlainText">lz4: Security Fix for CVE-2021-3520<o:p></o:p></p=
>
<p class=3D"MsoPlainText">cpio: backport fix for CVE-2021-38185<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">lzo: add CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoPlainText">binutils: Security fix for CVE-2020-16593<o:p></o=
:p></p>
<p class=3D"MsoPlainText">binutils: Security fix for CVE-2021-3549<o:p></o:=
p></p>
<p class=3D"MsoPlainText">rpm: Add fix for CVE-2021-20266<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-3608<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-3607<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-3582<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-3527<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Security fixes CVE-2021-3545/6<o:p></o:p></=
p>
<p class=3D"MsoPlainText">qemu: Security fix CVE-2021-3544<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-20257<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-3416<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: fix CVE-2021-20181<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Security fix CVE-2021-20221<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Security fix for CVE-2020-29443<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">Qemu: Security fix for CVE-2020-25625/2021-3409/2=
020-17380<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Security fix CVE-2020-25624<o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Security fix CVE-2020-25085<o:p></o:p></p>
<p class=3D"MsoPlainText">glibc: Security fix for CVE-2021-38604<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">glibc: Security fix CVE-2021-33574<o:p></o:p></p>
<p class=3D"MsoPlainText">tar: ignore node-tar CVEs<o:p></o:p></p>
<p class=3D"MsoPlainText">util-linux: fix CVE-2021-37600<o:p></o:p></p>
<p class=3D"MsoPlainText">cve-check: remove deprecated CVE_CHECK_CVE_WHITEL=
IST<o:p></o:p></p>
<p class=3D"MsoPlainText">cve-check: improve comment about CVE patch file n=
ames<o:p></o:p></p>
<p class=3D"MsoPlainText">cve-check: update link to NVD website for CVE det=
ails<o:p></o:p></p>
<p class=3D"MsoPlainText">libsolv: fix CVE-2021-3200<o:p></o:p></p>
<p class=3D"MsoPlainText">glibc: Document and whitelist CVE-2021-35942<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">systemd: Add fix for CVE-2020-13529 and CVE-2021-=
33910<o:p></o:p></p>
<p class=3D"MsoPlainText">aspell: fix CVE-2019-25051<o:p></o:p></p>
<p class=3D"MsoPlainText">curl: Fix CVE-2021-22924 and CVE-2021-22925<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">curl: Fix for CVE-2021-22898<o:p></o:p></p>
<p class=3D"MsoPlainText">avahi: fix CVE-2021-3468<o:p></o:p></p>
<p class=3D"MsoPlainText">libxml2: fix CVE-2021-3541<o:p></o:p></p>
<p class=3D"MsoPlainText">gstreamer: ignore CVE-2021-3497, CVE-2021-3498, a=
nd CVE-2021-3522<o:p></o:p></p>
<p class=3D"MsoPlainText">Revert &quot;gstreamer-plugins-base: ignore CVE-2=
021-3522 since it is fixed&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">Revert &quot;gstreamer-plugins-good: ignore CVE-2=
021-3497/8 since they are fixed&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">Fixes<o:p></o:p></p>
<p class=3D"MsoPlainText">---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">NOTE: While using a custom distro which sets defa=
ult SDK installation path by defining SDKPATH,<o:p></o:p></p>
<p class=3D"MsoPlainText">will need to change SDKPATH to SDKPATHINSTALL.<o:=
p></o:p></p>
<p class=3D"MsoPlainText">The poky distro provides an example of this chang=
e:<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"https://git.yoctoproject.org/cgit/cgit=
.cgi/poky/commit/?h=3Ddunfell&amp;id=3D67dbe8a1c2b485d0cec174d28107b0ac8ea7=
7d5f">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunfell&a=
mp;id=3D67dbe8a1c2b485d0cec174d28107b0ac8ea77d5f</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">build-appliance-image: Update to dunfell head rev=
ision<o:p></o:p></p>
<p class=3D"MsoPlainText">poky: Use SDKPATHINSTALL instead of SDKPATH<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">build-appliance-image: Update to dunfell head rev=
ision<o:p></o:p></p>
<p class=3D"MsoPlainText">go: Several Security fixes<o:p></o:p></p>
<p class=3D"MsoPlainText">dbus: upgrade 1.12.18 -&gt; 1.12.20<o:p></o:p></p=
>
<p class=3D"MsoPlainText">dbus,dbus-test: Move common parts to dbus.inc<o:p=
></o:p></p>
<p class=3D"MsoPlainText">dbus-test: Remove EXTRA_OECONF_X configs<o:p></o:=
p></p>
<p class=3D"MsoPlainText">dbus-test: upgrade 1.12.16 -&gt; 1.12.18<o:p></o:=
p></p>
<p class=3D"MsoPlainText">dbus: upgrade 1.12.16 -&gt; 1.12.18<o:p></o:p></p=
>
<p class=3D"MsoPlainText">rt-tests: set branch name in SRC_URI<o:p></o:p></=
p>
<p class=3D"MsoPlainText">oeqa/runtime/parselogs: Make DVD ata error apply =
to all qemux86 machines<o:p></o:p></p>
<p class=3D"MsoPlainText">lighttpd: Add patch for reuse large memory chunks=
<o:p></o:p></p>
<p class=3D"MsoPlainText">layer.conf: fix syntax error in PATH setting<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">vim: add option to disable NLS support<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">sdk: Decouple default install path from built in =
path<o:p></o:p></p>
<p class=3D"MsoPlainText">poky.conf: Bump version for 3.1.11 release<o:p></=
o:p></p>
<p class=3D"MsoPlainText">documentation: prepare for 3.1.11 release<o:p></o=
:p></p>
<p class=3D"MsoPlainText">selftest: disable virgl headless test<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">parselogs.py: ignore intermittent CD/DVDROM ident=
ification failure<o:p></o:p></p>
<p class=3D"MsoPlainText">qemurunner.py: handle getOutput() having nothing =
to read<o:p></o:p></p>
<p class=3D"MsoPlainText">qemurunner.py: print output from runqemu/qemu-sys=
tem in stop()<o:p></o:p></p>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.142<o:p></o:p></p=
>
<p class=3D"MsoPlainText">image_types: Restore pre-btrfs-tools 4.14.1 mkfs.=
btrfs shrink behavior<o:p></o:p></p>
<p class=3D"MsoPlainText">mklibs-native: drop deprecated cpp17 exceptions<o=
:p></o:p></p>
<p class=3D"MsoPlainText">tcf-agent: fetching over git:// no longer works<o=
:p></o:p></p>
<p class=3D"MsoPlainText">utils: Reduce the number of calls to the &quot;di=
rname&quot; command<o:p></o:p></p>
<p class=3D"MsoPlainText">Use the label provided when formating a dos parti=
tion<o:p></o:p></p>
<p class=3D"MsoPlainText">openssl: update from 1.1.1k to 1.1.1l<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">gnupg: upgrade 2.2.26 -&gt; 2.2.27<o:p></o:p></p>
<p class=3D"MsoPlainText">gnupg: update 2.2.23 -&gt; 2.2.26<o:p></o:p></p>
<p class=3D"MsoPlainText">gnupg: uprev 2.2.22 -&gt; 2.2.23<o:p></o:p></p>
<p class=3D"MsoPlainText">gnupg: update 2.2.21 -&gt; 2.2.22<o:p></o:p></p>
<p class=3D"MsoPlainText">gnupg: upgrade 2.2.20 -&gt; 2.2.21<o:p></o:p></p>
<p class=3D"MsoPlainText">sdk: Enable do_populate_sdk with multilibs<o:p></=
o:p></p>
<p class=3D"MsoPlainText">linux-firmware: add more Qualcomm firmware packag=
es<o:p></o:p></p>
<p class=3D"MsoPlainText">python3: Remove unused python3 recipe<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.141<o:p></o:p></p=
>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.139<o:p></o:p></p=
>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.137<o:p></o:p></p=
>
<p class=3D"MsoPlainText">ovmf: build natively everywhere<o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/selftest/glibc: Handle incorrect encoding is=
suesin glibc test results<o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/runtime/cases: make date.DateTest.test_date =
more reliable<o:p></o:p></p>
<p class=3D"MsoPlainText">sdk: fix relocate symlink failed<o:p></o:p></p>
<p class=3D"MsoPlainText">sstate.bbclass: fix error handling when sstate mi=
rrors is ro<o:p></o:p></p>
<p class=3D"MsoPlainText">wic: don't forcibly pass -T default<o:p></o:p></p=
>
<p class=3D"MsoPlainText">e2fsprogs: ensure small images have 256-byte inod=
es<o:p></o:p></p>
<p class=3D"MsoPlainText">cve-check: fix comments<o:p></o:p></p>
<p class=3D"MsoPlainText">cve-check: add include/exclude layers<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">runqemu: Fix typo in error message<o:p></o:p></p>
<p class=3D"MsoPlainText">kernel-yocto: Simplify no git repo case in do_ker=
nel_checkout<o:p></o:p></p>
<p class=3D"MsoPlainText">license: Exclude COPYING.MIT from pseudo<o:p></o:=
p></p>
<p class=3D"MsoPlainText">ruby: 2.7.3 -&gt; 2.7.4<o:p></o:p></p>
<p class=3D"MsoPlainText">sstate: Fix rebuilds when changing layer config<o=
:p></o:p></p>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.135<o:p></o:p></p=
>
<p class=3D"MsoPlainText">archiver.bbclass: fix do_ar_configured failure fo=
r kernel<o:p></o:p></p>
<p class=3D"MsoPlainText">yocto-check-layer: ensure that all layer dependen=
cies are tested too<o:p></o:p></p>
<p class=3D"MsoPlainText">checklayer: rename _find_layer_depends<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">checklayer: new function get_layer_dependencies()=
<o:p></o:p></p>
<p class=3D"MsoPlainText">yocto-check-layer: improve missed dependencies<o:=
p></o:p></p>
<p class=3D"MsoPlainText">oeqa/usb_hid.py : add test to check the usb/human=
 interface device status after suspend state<o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/terminal : improve the test case<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">oeqa/runtime: add test for matchbox-terminal<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">oeqa/suspend : add test for suspend state<o:p></o=
:p></p>
<p class=3D"MsoPlainText">oeqa/runtime/cases: Only disable/enable for curre=
nt boot<o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/runtime : add test for RTC(Real Time Clock)<=
o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/ethernet_ip_connman : add test for network c=
onnections<o:p></o:p></p>
<p class=3D"MsoPlainText">ifupdown: added -1 option to dhclient for dhcpv6<=
o:p></o:p></p>
<p class=3D"MsoPlainText">qemu: Enable seccomp if FEATURE is set<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">qemu.inc: Add seccomp PACKAGECONFIG option<o:p></=
o:p></p>
<p class=3D"MsoPlainText">oe-setup-builddir: update YP docs and OE URLs<o:p=
></o:p></p>
<p class=3D"MsoPlainText">glew: fix Makefile race<o:p></o:p></p>
<p class=3D"MsoPlainText">yocto-check-layer: Remove duplicated code<o:p></o=
:p></p>
<p class=3D"MsoPlainText">initramfs-framework/setup-live: fix shebang<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">bitbake.conf: change GNOME_MIRROR to new one<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">archiver.bbclass: Fix patch error for recipes tha=
t inherit dos2unix.<o:p></o:p></p>
<p class=3D"MsoPlainText">ovmf: Fix VLA warnings with GCC 11<o:p></o:p></p>
<p class=3D"MsoPlainText">oeqa/manual/toaster: fix small typo<o:p></o:p></p=
>
<p class=3D"MsoPlainText">linux-yocto/5.4: update to v5.4.134<o:p></o:p></p=
>
<p class=3D"MsoPlainText">bitbake: providers: replace newly added logger.wa=
rn() with logger.warning()<o:p></o:p></p>
<p class=3D"MsoPlainText">bitbake: data_smart: Allow colon in variable expa=
nsion regex<o:p></o:p></p>
<p class=3D"MsoPlainText">bitbake: data_smart/parse: Allow ':' characters i=
n variable/function names<o:p></o:p></p>
<p class=3D"MsoPlainText">bitbake: BBHandler: Don't classify shell function=
s that names start with &quot;python*&quot; as python function<o:p></o:p></=
p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB3301B2EE9EBAC9465888D0DF88A79BYAPR11MB3301namp_--

