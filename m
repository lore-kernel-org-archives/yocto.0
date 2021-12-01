Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78312C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 02:39:51 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.87186.1638326389544782003
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Nov 2021 18:39:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=w/XSsHk9;
 spf=pass (domain: intel.com, ip: 134.134.136.65,
 mailfrom: chee.yang.lee@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236312329"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800";
   d="scan'208,217";a="236312329"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 18:39:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800";
   d="scan'208,217";a="512478706"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga008.jf.intel.com with ESMTP; 30 Nov 2021 18:39:48 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 18:39:48 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 18:39:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 18:39:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 18:39:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CEbUKn4ibp+JPrsebi3+1X4xS0LzoVQwTDRVxesHMEA4whGjgMKYzd0RP6MMv5GniN15bYnsPTb4EyRtAspLnMMf2mpmZolpDU58CQlAMtFcGcW8Xix4xQ+5/6G9NZ4b01P39kb5e9e2SWV4J6N/fc+69378hvDnUZwsfjFmcp6jSrcs9bejowtj5LIhxi3fEM0WjZQ8LMwj03UVOULx14xlyE2D61AAbSIjRpYNlRLrPXj2H7lLjx6yTxMxH7DqoXf8KP4LC04mBj7VlWCzvrZkXSUbFcmGW6VZRopS6HkAL3LQZyBQ6S16Kw7BSrPZ6hNQ0MgFF45zL5bU4BYBtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06MX853cmrGPpoR15DfOPgSFgql5hjVK0KEBKn59Z7w=;
 b=LBdxyEt0k+J28r4NuIoe4RjQU/7Q6qSiZkVei5qLbqIEcaQt2IAmsXDfcEXQSpnCNMVgW5a1urm3mJ29XZxKe8H7tAeW9hNy4GtbgXrHPpH+Sf2Bc+V6njxLlq4sRM9pjPdWVLC+H+fymAzCfhWdsPbTuRYT4ZDDXeACSZTdd/lcSSCSj1/AUUAI5q/giCEFVBjD8pKa4nbPf9dEjSG8EVRy92XSY7sX67Ez3piFE+pyx/oStsiqzOmvhxJ3KfwOZkQkQO74fpkunZWDEVV/WJ1D8TUt0PnvfecVY3dt5qMiPAwMSXoWt+j0BR/mFm0y9waFVdNsA2Gk10j3kTMdFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=06MX853cmrGPpoR15DfOPgSFgql5hjVK0KEBKn59Z7w=;
 b=w/XSsHk9sE00JLnVBe0B9nJ14SGetIEpBBCchHuZNUIHTju98sP47r6D3dCbwaip2uUi+RnphfRUf5McJqZwLXdcqvhvNOdlC2fAZxe/X5puiuY9auvwvZRHSvUBdHd+WpDW7pa/+tr54Dt09C7cQvSV7tw3G3cXq5rQ2yv8gcg=
Received: from DM6PR11MB4105.namprd11.prod.outlook.com (2603:10b6:5:5::30) by
 DM5PR1101MB2170.namprd11.prod.outlook.com (2603:10b6:4:54::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.11; Wed, 1 Dec 2021 02:39:45 +0000
Received: from DM6PR11MB4105.namprd11.prod.outlook.com
 ([fe80::8591:1046:fa7c:82d2]) by DM6PR11MB4105.namprd11.prod.outlook.com
 ([fe80::8591:1046:fa7c:82d2%5]) with mapi id 15.20.4755.011; Wed, 1 Dec 2021
 02:39:45 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: Yocto Project 3.1.12 (hardknott-23.0.12) is Released
Thread-Topic: Yocto Project 3.1.12 (hardknott-23.0.12) is Released
Thread-Index: AdfmWfdV7uMUgE3JQk+81Qv1BrNG6A==
Date: Wed, 1 Dec 2021 02:39:44 +0000
Message-ID: 
 <DM6PR11MB410507C4DEA1D6E58CBDF05FB9689@DM6PR11MB4105.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a523ed98-660f-4e54-731a-08d9b473d5c2
x-ms-traffictypediagnostic: DM5PR1101MB2170:
x-microsoft-antispam-prvs: 
 <DM5PR1101MB21707D18FFDFF5AA779730AEB9689@DM5PR1101MB2170.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vgQ+N8JMlb/eHU07WYoca9CzXzNR3LI5n3Lq62nRoYpOgnS1VBFGmmbarl9jS/u7j72oB5K3wMUbO5C9UhAx0iyekqRQLn8vP8km6THU/CTuzgbfG978y1cI+WAYZml2HAYRvECD2brB9Ew+Hn812CalRb6LsSN9ZFaVcTA9/gdhFHb3y59zu76cSklTY+/hCkw/6cyKliO1lawRVR8n4O9kUBpyCkmAI6MbF7Z01jDAfcxXxWS4IGH7rhOKC7ULks8sPvDYbasRZDUM/kdIrgzGVf9VpqrmAAI4dE1PACO3CdOWAPPaHUauboFebTV9vRsEf046z9LZtPqREAFP24RGQcj6IHw0V1xo47+xRKIxeKs2dV2sn2UPrRmVV+pmAlVjEkDby8I5cobgF8ka/58hKtm5rhm3Ttwt2zqHO0dkMg7jbVdy/4n14E9SBo74Pt6l6cJdEgyvig740twhHGm0BQPKdqsDLqcgw4sFp6Qshyx07DhJZOazIX1+cdHbxG8eW/Z3YB5sYh0xAlHM491zWV63WtEF3z8YargKmDycHFYJGvhzYCWYUXwLvB3jDEuEcaRvwbB4SDPib0LsyhWUOM5uIGDor2/r9POnsN2D3QZmxh3fxGMl9Sex0+aU4d43h0kQ0rmKRe/kN71o9WEzQerH9/p948Duwwep5R3SwF9XvMj0uHuqfghN6zCLfirxTdTwCacZwG4iS14ph4yq5IyHsRRuJL/A558goHM7R8yn2ziyvzjQzzayjOIS0navkgIBgsudL1WNvcNm2pphDxTaA91dlwEVt/0AvFKGsE21K7JRYZEDjIPYmKXunK5ZYSPSMh0OBiQTO5QzUflJWQIE31HGLkscc1xcbezEFZy4YMGl8Oqmv4+RPFO+
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4105.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(55016003)(966005)(166002)(33656002)(26005)(83380400001)(7696005)(38100700002)(6506007)(316002)(110136005)(508600001)(71200400001)(9686003)(186003)(2906002)(450100002)(122000001)(8936002)(66446008)(9326002)(76116006)(66476007)(66556008)(64756008)(66946007)(30864003)(82960400001)(52536014)(38070700005)(86362001)(8676002)(5660300002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?xa+GjadLcXdzBNkZcVTAJTSwTB2S0rIwmt1NPclbNmiv8dFouYA59yBoCRvo?=
 =?us-ascii?Q?NrKf3sBc30FT8KUF0PI5dLkSIxIopMJ6ElHBmA0EkeSGRkoJtUmfIPbIVylo?=
 =?us-ascii?Q?nnA91JbXAFNlp7zMMxbsAgcg8IieJbdVux/UaPL7Ynj+bkALrfSv7RXqmLvC?=
 =?us-ascii?Q?y6fzyej+BArflT8mBjY7aZVqBBwfE50AALqPDSTf+L4dPH1Ijda19zPmkLew?=
 =?us-ascii?Q?kLkJpdiAsv0tUo9OT5/mLeX6ew/MK62EgzFD3RBVaDwLWPTh1t0rYa+obtCo?=
 =?us-ascii?Q?yMnLh+hik+u1mWAHg/zxMcLU8ThSN4fg5orHf2Jasts7Zjy1xdvkQOcbpoj8?=
 =?us-ascii?Q?i+IcWhF4Ygc+UmdMBePPJvlr9SizfRiXWk4iWmerVuzcsQsitMLPIC9rA2lj?=
 =?us-ascii?Q?bR5uLsfYFYf2hI/X5ZpcHt289kvM7nSELd48gWcwAxmcMytHkJKksFFmiWuE?=
 =?us-ascii?Q?PKom3e9t4ETb814QT9fNO6nc27iZjiqgfuZEYgB0xYW8i/HHx3h0/mfJhDrD?=
 =?us-ascii?Q?OtwG+VFsdfl7lwjisX0Uu0ulr2Iq5wMZQsYwOGwFGhX2+OtbalHF/G1yEmC6?=
 =?us-ascii?Q?tUEZgN6/gmBZ7pij5dz2NFiiDkFeK8A3O0vDR50wUh88F3DQSDaVVm3n9gOJ?=
 =?us-ascii?Q?G6aESFTNe4rOyxQcDqdISfVmbyazk7pUti9436JXxsV2x4n+WX8KBeWFPOa9?=
 =?us-ascii?Q?uT8Q81TCy8SMjKydNQWWlQQoBEmB4NT2OVgKc8yJraK089acQLNsA6jdVBYs?=
 =?us-ascii?Q?+NLDs7fNLGefHm4wOmQK6L9/cRltj7FT2BbmiFvWanX911STbiGybwH8k15z?=
 =?us-ascii?Q?SHndqaD112yCHTgiksRNz4CHS20lquukRrixJgNKTT0ksD/ts4QkhNCRFiI3?=
 =?us-ascii?Q?b656Z5GsLBWaeZg+Thjk+ozbpUQlOb5kSJILVz0xCTXQyXOqVtTrw8Bde00Y?=
 =?us-ascii?Q?y5od7q+1Ya0oOb6ic11sJ1m6cPVqlbmcSlllPDsyRkCYhaTdwF6VCZxqA8rL?=
 =?us-ascii?Q?+n7CVzcPErmlFwpJU0tHjKYC9x9kwiTBjeXJSWXXa/thRzLo4W9x+j/r4nVq?=
 =?us-ascii?Q?kjqGBfqC2GBxr3zNKXgappqyySiFzPMqtVwLTYVHRQ8gjGo1Bg/D/4AllNuZ?=
 =?us-ascii?Q?f4Q6W5p40hnqe/LjrZl+PP/URxovcy3MMoFmeRxd9t3cZrWQL51/mboIiDdK?=
 =?us-ascii?Q?rC4qj8Gs4RZObjztCe0Rhmd5ol2eiedmdnFnDwvPp0ZddDQGGSGQAerfecZJ?=
 =?us-ascii?Q?NcER21GYponOY+gQyR6xA0jEsZlElP9A1xZ4Zlt2YULXDDQsejsSxg8SWyhe?=
 =?us-ascii?Q?Z3sMMGpS1dO499jTiuLhhGKVqYQROtyRSS2GumwQbyh6wuogdWnYgwTZUtIj?=
 =?us-ascii?Q?Da+gTTProcdjAxpCKO+8z6pKCEIKlvTpL+dcboZnb2dgUzLHy822RP3dwY+O?=
 =?us-ascii?Q?SGuUWwRQ03OIeklV06VKynyOJeKbWuy7ypd1wSNkdRCpj/cmkA98w8q2tlu8?=
 =?us-ascii?Q?NBeoLqMqZ+5z8R3QJjntHG0gwYn3awyGjit/OCh+iXwH/rU/C03+jmuWaPop?=
 =?us-ascii?Q?pH5enMAzWPUW8Yv5ZQosr7bDiIUzIFIifTbMK1hA0CWqhCCd39KIp6hMjKG4?=
 =?us-ascii?Q?7g=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB410507C4DEA1D6E58CBDF05FB9689DM6PR11MB4105namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a523ed98-660f-4e54-731a-08d9b473d5c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 02:39:44.8036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 smkndTquXynRcaOtit7249u9rwUeFImTf4VXd1+mTkPt+cAkbXDQRXDTOkgwTFe+EORK0OUEk65ZSKRATGFDcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2170
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 02:39:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55453

--_000_DM6PR11MB410507C4DEA1D6E58CBDF05FB9689DM6PR11MB4105namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.12 (dunfell-23.0.12) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/poky-dunfell-=
23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/poky-dunfell-23.0.12.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang Lee chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



- --------------------------
yocto-3.1.12 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: 0839888394a6e42e96f9f0d201376eb38bc79b24
Release Artefact: poky-dunfell-23.0.12
sha: 6d8c70cb17100d6dd5056b8dcae7027833c8f9a53006fd5b651bf9a56494eb01
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/poky-dunfell-=
23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/poky-dunfell-23.0.12.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: 44b1970c40e9d73f6e63fb10cdc55837a26f5921
Release Artefact: oecore-dunfell-23.0.12
sha: 2ddef2bbcd156c971b6ce8a05eee64ddc51237d9ad2e17186d8afb840c31e7f9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/oecore-dunfel=
l-23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/oecore-dunfell-23.0.12.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.12
sha: 7a3e2f9922d9677c2357221d00f0e92a54feb7170f5df079527be9654d61b869
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/meta-mingw-du=
nfell-23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/meta-mingw-dunfell-23.0.=
12.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.12
sha: b6e4f8d9270849154f37db1c5b64febc5339f421caae877efbe6c32873307aa3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/meta-gplv2-du=
nfell-23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/meta-gplv2-dunfell-23.0.=
12.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: c0348de8121c3a842bf44906f7e2f79e93f7275b
Release Artefact: bitbake-dunfell-23.0.12
sha: d87dd125bb9715ccc259d1ecbc8278a1ed48c3f834eee9bcdb569e7c296e9d2d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.12/bitbake-dunfe=
ll-23.0.12.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/bitbake-dunfell-23.0.12.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.12
Git Revision: f1cd4d8ae58037609556de51b33a4dbeab7f45ff

- ----------------
Contributors
- ----------------

Alexander Kanavin
Alexandre Belloni
Andrej Valek
Armin Kuster
Bruce Ashfield
Chandana kalluri
Chris Laplante
Christian Eggers
Claudius Heine
Daniel McGregor
Hongxu Jia
Jon Mason
Jose Quaresma
Joshua Watt
Justin Bronder
Kai Kang
Khem Raj
Marco Felsch
Marek Vasut
Mark Hatle
Markus Volk
Michael Halstead
Mike Crowe
Mingli Yu
Minjae Kim
Oleksandr Kravchuk
Pavel Zhukov
Ralph Siemsen
Ranjitsinh Rathod
Richard Purdie
Robert P. J. Day
Ross Burton
Sakib Sajal
Saloni
Stefano Babic
Steve Sakoman
Teoh Jay Shen
Tom Pollard
Visa Hankala
Wang Mingyu
William A. Kennington III
sana kazi

- ---------------
Known Issues
- ---------------
Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control manual test ca=
se failure

- ---------------
Security Fixes
- ---------------
curl: Whitelist CVE-2021-22897
ffmpeg: Add fix for CVEs
openssh: Fix CVE-2021-28041
vim: fix CVE-2021-3778
vim: Backport fix for CVE-2021-3770
tar: ignore node-tar CVEs
squashfs-tools: fix CVE-2021-40153
nettle: Security fix for CVE-2021-20305
curl: Fix CVE-2021-22946 and CVE-2021-22947, whitelist CVE-2021-22945
nettle: Security fix for CVE-2021-3580
qemu: fix CVE-2021-3682
qemu: Security fix for CVE-2020-28916
qemu: Security fix for CVE-2020-27617
qemu: Security fix CVE-2020-12829
libsndfile: Security fix for CVE-2021-3246
apr: Security fix for CVE-2021-35940
libgcrypt: Security fix CVE-2021-33560


- ---------------
Fixes
- ---------------
connman: add CVE_PRODUCT
tar: filter CVEs using vendor name
build-appliance-image: Update to dunfell head revision
mirrors: Add kernel.org sources mirror for downloads.yoctoproject.org
selftest/reproducible: add webkitgtk back to exclusion list for dunfell
reproducible_build: Remove BUILD_REPRODUCIBLE_BINARIES checking
sstate: Avoid deploy_source_date_epoch sstate when unneeded
sstate: Ensure SDE is accounted for in package task timestamps
sstate: another fix for touching files inside pseudo
mirrors: Add uninative mirror on kernel.org
piglit: upgrade to latest revision
pseudo: Add fcntl64 wrapper
pseudo: Add in ability to flush database with shutdown request
linunistring: Add missing gperf-native dependency
python3-magic: add missing DEPENDS
python3-magic: add the missing rdepends
webkitgtk: Fix reproducibility in minibrowser
oeqa: reproducible: Fix test not producing diffs
documentation: prepare for 3.1.12 release
ref-system-requirements.rst: Add Fedora 34 to list of supported distros
ref-system-requirements.rst: Add Debian 11 to list of supported distros
poky.conf: Bump version for 3.1.12 release
bitbake: fetch/wget: Add timeout for checkstatus calls (30s)
meta/scripts: Manual git url branch additions
meta: Add explict branch to git SRC_URIs, handle github url changes
scripts/convert-srcuri: Backport SRC_URI conversion script from master bran=
ch
bitbake: tests/fetch: Update pcre.org address after github changes
bitbake: tests/fetch: Update github urls
bitbake: tests/fetch2: Fix quoting warning
bitbake: fetch/git: Handle github dropping git:// support
tzdata: update to 2021e
ca-certificates: update 20210119 -> 20211016
wireless-regdb: upgrade to 2021.08.28
linux-firmware: upgrade to 20210919
git: Fix determinism issue
stress-ng: improve reproducibility
stress-ng: convert to git, website is down
waffle: old website is down, update to new project URLs
mirrors.bbclass: remove dead infozip mirrors
oeqa/runtime/parselogs: modified drm error in common errors list
oeqa/runtime: search sys.path explicitly for modules
oeqa/runtime: load modules using importlib
testimage: fix unclosed testdata file
reproducible_build: Drop obsolete sstate workaround
oe/utils: log exceptions in ThreadedWorker functions
license.bbclass: implement ast.NodeVisitor.visit_Constant
oe/license: implement ast.NodeVisitor.visit_Constant
bitbake.conf: Add gpg-agent as a host tool
base: Use repr() for printing exceptions
base: Clean up unneeded len() calls
sstate: don't silently handle all exceptions in sstate_checkhashes
devtool: fix modify with patches in override directories
sstate: fix touching files inside pseudo
vim: fix 2021-3796
poky.yaml: fedora33: add missing pkgs
selftest/reproducible: adjust exclusion list for dunfell
classes/reproducible_build: Use atomic rename for SDE file
reproducible_build: Work around caching issues
rpm: Deterministically set vendor macro entry
poky.conf: Add debian 11 as a supported distro
poky.conf: Add fedora 34 as a supported distro
uninative: Upgrade to 3.4
target/ssh.py: add HostKeyAlgorithms option to test commands
python3: Add a fix for a make install race
libnewt: Use python3targetconfig to fix reproducibility issue
libxml2: Use python3targetconfig to fix reproducibility issue
externalsrc: Fix a source date epoch race in reproducible builds
externalsrc: Work with reproducible_build
gobject-introspection: Don't write $HOME into scripts
libtool: Allow libtool-cross to reproduce
libtool: Fix lto option passing for reproducible builds
util-linux: Fix reproducibility
gnupg: Be deterministic about sendmail
mesa: Ensure megadrivers runtime mappings are deterministic
package: Ensure pclist files are deterministic and don't use full paths
uninative: Upgrade to 3.3, support glibc 2.34
uninative: Improve glob to handle glibc 2.34
nativesdk-pseudo: Fix to work with glibc 2.34 systems
pseudo: Update with fcntl and glibc 2.34 fixes
pseudo: Fix to work with glibc 2.34 systems
util-linux: disable raw
gpgme: Use glibc provided closefrom API when available
m4: Do not use SIGSTKSZ
gcc: fix missing dependencies for selftests
libpsl: Add config knobs for runtime/builtin conversion choices
patch.bbclass: when the patch fails show more info on the fatal error
oeqa/selftest/sstatetests: fix typo ware -> were
rng-tools: add systemd-udev-settle wants to service
scriptutils.py: Add check before deleting path
binutils: Fix a missing break in case statement
oeqa/manual: Fix no longer valid URLs
multilib: Avoid sysroot race issues when multilib enabled
weston: Use systemd notify,
e2fsprogs: upgrade to 1.45.7
linux-yocto/5.4: update to v5.4.153
bitbake: fetch2/git: Use os.rename instead of mv
bitbake: fetch2/git: Avoid races over mirror tarball creation
bitbake: hashserv: let asyncio discover the running loop
bitbake: bitbake: correct deprecation warning in process.py
bitbake: bitbake: adjust parser error check for python 3.10 compatibility
bitbake: bitbake: do not import imp in layerindexlib
bitbake: bitbake: fix regexp deprecation warnings
bitbake: bitbake: correct the collections vs collections.abc deprecation
bitbake: compat.py: remove file since it no longer actually implements anyt=
hing
bitbake: test/fetch: Update urls to match upstream branch name changes
glew: Stop polluting /tmp during builds
oeqa/buildproject: Ensure temp directories are cleaned up
oeqa/selftest/gotoolchain: Fix temp file cleanup
rm_work.bbclass: Fix for files starting with -
libc_package/buildstats: Fix python regex quoting warnings
oeqa/qemurunner: Use oe._exit(), not sys.exit()
pybootchart: Avoid divide by zero
libsamplerate0: Set correct soname for 0.1.9
bzip2: Update soname for libbz2 1.0.8
common-licenses: add "Unlicense" license file
systemd: Add fix for systemd-networkd crash during free
mtd-utils: upgrade to 2.1.3
bitbake: build/msg: Cleanup verbose option handling
bitbake: cookerdata: Show a readable error for invalid multiconfig name
bitbake: bitbake-worker: Improve error handling
bitbake: cookerdata: Show error for no BBLAYERS in bblayers.conf
bitbake: cookerdata: Improve missing core layer error message
bitbake: data_smart: Improve error display for handled exceptions
bitbake: build: Catch and error upon circular task references
bitbake: build: Avoid duplicating logs in verbose mode
bitbake: process: Don't include logs in error message if piping them
bitbake: build: Handle SystemExit in python tasks correctly
bitbake: build: Match markup to real function name
bitbake: bitbake: bitbake-layers: add skip reason to output
bitbake: ui/taskexp: Fix to work with empty build directories
bitbake: ui/taskexp: Improve startup exception handling
bitbake: server: Fix early parsing errors preventing zombie bitbake
libsoup-2.4: remove obsolete intltool dependency
testimage: symlink the task log and qemu console log to tmp/log/oeqa
wic: keep rootfs_size as integer
core-image-sato: Fix runqemu error for qemuarmv5
Update mailing list address
bash: Ensure deterministic build
useradd: Ensure preinst data is expanded correctly in pkgdata
rpm: Handle proper return value to avoid major issues
iputils: Fix regression of arp table update
bitbake: tests/fetch2: Use our own git server for dtc test repo

--_000_DM6PR11MB410507C4DEA1D6E58CBDF05FB9689DM6PR11MB4105namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.12 =
(dunfell-23.0.12) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.12/poky-dunfell-23.0.12.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.12/poky-dunfell-23.0.12.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.12/poky-dunfell-23.0.12.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.1.12/poky-dunfell-23.0.12.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.12/RELEASENOTES">http://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.1.12/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.12/testreport.txt">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.12/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee <a href=3D"mailto:chee.yang.lee@intel.=
com">chee.yang.lee@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<br>
<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.12 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0839888394a6e42e96f9f0d201376eb38bc79b=
24<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.12<o:p></o:p></p=
>
<p class=3D"MsoNormal">sha: 6d8c70cb17100d6dd5056b8dcae7027833c8f9a53006fd5=
b651bf9a56494eb01<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.12/poky-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/p=
oky-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 44b1970c40e9d73f6e63fb10cdc55837a26f59=
21<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.12<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 2ddef2bbcd156c971b6ce8a05eee64ddc51237d9ad2e171=
86d8afb840c31e7f9<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.12/oecore-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/o=
ecore-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.12<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: 7a3e2f9922d9677c2357221d00f0e92a54feb7170f5df07=
9527be9654d61b869<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.12/meta-mingw-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/m=
eta-mingw-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.12<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: b6e4f8d9270849154f37db1c5b64febc5339f421caae877=
efbe6c32873307aa3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.12/meta-gplv2-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/m=
eta-gplv2-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: c0348de8121c3a842bf44906f7e2f79e93f727=
5b<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.12<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: d87dd125bb9715ccc259d1ecbc8278a1ed48c3f834eee9b=
cdb569e7c296e9d2d<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.12/bitbake-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.12/b=
itbake-dunfell-23.0.12.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.12<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f1cd4d8ae58037609556de51b33a4dbeab7f45=
ff<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ----------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- ----------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandre Belloni<o:p></o:p></p>
<p class=3D"MsoNormal">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoNormal">Armin Kuster<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Chandana kalluri<o:p></o:p></p>
<p class=3D"MsoNormal">Chris Laplante<o:p></o:p></p>
<p class=3D"MsoNormal">Christian Eggers<o:p></o:p></p>
<p class=3D"MsoNormal">Claudius Heine<o:p></o:p></p>
<p class=3D"MsoNormal">Daniel McGregor<o:p></o:p></p>
<p class=3D"MsoNormal">Hongxu Jia<o:p></o:p></p>
<p class=3D"MsoNormal">Jon Mason<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Justin Bronder<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Marco Felsch<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Mark Hatle<o:p></o:p></p>
<p class=3D"MsoNormal">Markus Volk<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Mike Crowe<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Minjae Kim<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksandr Kravchuk<o:p></o:p></p>
<p class=3D"MsoNormal">Pavel Zhukov<o:p></o:p></p>
<p class=3D"MsoNormal">Ralph Siemsen<o:p></o:p></p>
<p class=3D"MsoNormal">Ranjitsinh Rathod<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Robert P. J. Day<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Saloni<o:p></o:p></p>
<p class=3D"MsoNormal">Stefano Babic<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Teoh Jay Shen<o:p></o:p></p>
<p class=3D"MsoNormal">Tom Pollard<o:p></o:p></p>
<p class=3D"MsoNormal">Visa Hankala<o:p></o:p></p>
<p class=3D"MsoNormal">Wang Mingyu<o:p></o:p></p>
<p class=3D"MsoNormal">William A. Kennington III<o:p></o:p></p>
<p class=3D"MsoNormal">sana kazi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume=
_control manual test case failure<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Whitelist CVE-2021-22897<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: Add fix for CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Fix CVE-2021-28041<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3778<o:p></o:p></p>
<p class=3D"MsoNormal">vim: Backport fix for CVE-2021-3770<o:p></o:p></p>
<p class=3D"MsoNormal">tar: ignore node-tar CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">squashfs-tools: fix CVE-2021-40153<o:p></o:p></p>
<p class=3D"MsoNormal">nettle: Security fix for CVE-2021-20305<o:p></o:p></=
p>
<p class=3D"MsoNormal">curl: Fix CVE-2021-22946 and CVE-2021-22947, whiteli=
st CVE-2021-22945<o:p></o:p></p>
<p class=3D"MsoNormal">nettle: Security fix for CVE-2021-3580<o:p></o:p></p=
>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3682<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: Security fix for CVE-2020-28916<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: Security fix for CVE-2020-27617<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: Security fix CVE-2020-12829<o:p></o:p></p>
<p class=3D"MsoNormal">libsndfile: Security fix for CVE-2021-3246<o:p></o:p=
></p>
<p class=3D"MsoNormal">apr: Security fix for CVE-2021-35940<o:p></o:p></p>
<p class=3D"MsoNormal">libgcrypt: Security fix CVE-2021-33560<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">connman: add CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">tar: filter CVEs using vendor name<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to dunfell head revisi=
on<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add kernel.org sources mirror for downloads=
.yoctoproject.org<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: add webkitgtk back to exclusi=
on list for dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">reproducible_build: Remove BUILD_REPRODUCIBLE_BINARI=
ES checking<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Avoid deploy_source_date_epoch sstate when u=
nneeded<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Ensure SDE is accounted for in package task =
timestamps<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: another fix for touching files inside pseudo=
<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add uninative mirror on kernel.org<o:p></o:=
p></p>
<p class=3D"MsoNormal">piglit: upgrade to latest revision<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add fcntl64 wrapper<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add in ability to flush database with shutdo=
wn request<o:p></o:p></p>
<p class=3D"MsoNormal">linunistring: Add missing gperf-native dependency<o:=
p></o:p></p>
<p class=3D"MsoNormal">python3-magic: add missing DEPENDS<o:p></o:p></p>
<p class=3D"MsoNormal">python3-magic: add the missing rdepends<o:p></o:p></=
p>
<p class=3D"MsoNormal">webkitgtk: Fix reproducibility in minibrowser<o:p></=
o:p></p>
<p class=3D"MsoNormal">oeqa: reproducible: Fix test not producing diffs<o:p=
></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.1.12 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">ref-system-requirements.rst: Add Fedora 34 to list o=
f supported distros<o:p></o:p></p>
<p class=3D"MsoNormal">ref-system-requirements.rst: Add Debian 11 to list o=
f supported distros<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.12 release<o:p></o:p=
></p>
<p class=3D"MsoNormal">bitbake: fetch/wget: Add timeout for checkstatus cal=
ls (30s)<o:p></o:p></p>
<p class=3D"MsoNormal">meta/scripts: Manual git url branch additions<o:p></=
o:p></p>
<p class=3D"MsoNormal">meta: Add explict branch to git SRC_URIs, handle git=
hub url changes<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/convert-srcuri: Backport SRC_URI conversion =
script from master branch<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update pcre.org address after =
github changes<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update github urls<o:p></o:p><=
/p>
<p class=3D"MsoNormal">bitbake: tests/fetch2: Fix quoting warning<o:p></o:p=
></p>
<p class=3D"MsoNormal">bitbake: fetch/git: Handle github dropping git:// su=
pport<o:p></o:p></p>
<p class=3D"MsoNormal">tzdata: update to 2021e<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: update 20210119 -&gt; 20211016<o:p>=
</o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade to 2021.08.28<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade to 20210919<o:p></o:p></p>
<p class=3D"MsoNormal">git: Fix determinism issue<o:p></o:p></p>
<p class=3D"MsoNormal">stress-ng: improve reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">stress-ng: convert to git, website is down<o:p></o:p=
></p>
<p class=3D"MsoNormal">waffle: old website is down, update to new project U=
RLs<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors.bbclass: remove dead infozip mirrors<o:p></o=
:p></p>
<p class=3D"MsoNormal">oeqa/runtime/parselogs: modified drm error in common=
 errors list<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime: search sys.path explicitly for modules=
<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime: load modules using importlib<o:p></o:p=
></p>
<p class=3D"MsoNormal">testimage: fix unclosed testdata file<o:p></o:p></p>
<p class=3D"MsoNormal">reproducible_build: Drop obsolete sstate workaround<=
o:p></o:p></p>
<p class=3D"MsoNormal">oe/utils: log exceptions in ThreadedWorker functions=
<o:p></o:p></p>
<p class=3D"MsoNormal">license.bbclass: implement ast.NodeVisitor.visit_Con=
stant<o:p></o:p></p>
<p class=3D"MsoNormal">oe/license: implement ast.NodeVisitor.visit_Constant=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Add gpg-agent as a host tool<o:p></o:p=
></p>
<p class=3D"MsoNormal">base: Use repr() for printing exceptions<o:p></o:p><=
/p>
<p class=3D"MsoNormal">base: Clean up unneeded len() calls<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: don't silently handle all exceptions in ssta=
te_checkhashes<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: fix modify with patches in override directo=
ries<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: fix touching files inside pseudo<o:p></o:p><=
/p>
<p class=3D"MsoNormal">vim: fix 2021-3796<o:p></o:p></p>
<p class=3D"MsoNormal">poky.yaml: fedora33: add missing pkgs<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: adjust exclusion list for dun=
fell<o:p></o:p></p>
<p class=3D"MsoNormal">classes/reproducible_build: Use atomic rename for SD=
E file<o:p></o:p></p>
<p class=3D"MsoNormal">reproducible_build: Work around caching issues<o:p><=
/o:p></p>
<p class=3D"MsoNormal">rpm: Deterministically set vendor macro entry<o:p></=
o:p></p>
<p class=3D"MsoNormal">poky.conf: Add debian 11 as a supported distro<o:p><=
/o:p></p>
<p class=3D"MsoNormal">poky.conf: Add fedora 34 as a supported distro<o:p><=
/o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.4<o:p></o:p></p>
<p class=3D"MsoNormal">target/ssh.py: add HostKeyAlgorithms option to test =
commands<o:p></o:p></p>
<p class=3D"MsoNormal">python3: Add a fix for a make install race<o:p></o:p=
></p>
<p class=3D"MsoNormal">libnewt: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Fix a source date epoch race in reprodu=
cible builds<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Work with reproducible_build<o:p></o:p>=
</p>
<p class=3D"MsoNormal">gobject-introspection: Don't write $HOME into script=
s<o:p></o:p></p>
<p class=3D"MsoNormal">libtool: Allow libtool-cross to reproduce<o:p></o:p>=
</p>
<p class=3D"MsoNormal">libtool: Fix lto option passing for reproducible bui=
lds<o:p></o:p></p>
<p class=3D"MsoNormal">util-linux: Fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">gnupg: Be deterministic about sendmail<o:p></o:p></p=
>
<p class=3D"MsoNormal">mesa: Ensure megadrivers runtime mappings are determ=
inistic<o:p></o:p></p>
<p class=3D"MsoNormal">package: Ensure pclist files are deterministic and d=
on't use full paths<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.3, support glibc 2.34<o:p></=
o:p></p>
<p class=3D"MsoNormal">uninative: Improve glob to handle glibc 2.34<o:p></o=
:p></p>
<p class=3D"MsoNormal">nativesdk-pseudo: Fix to work with glibc 2.34 system=
s<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Update with fcntl and glibc 2.34 fixes<o:p><=
/o:p></p>
<p class=3D"MsoNormal">pseudo: Fix to work with glibc 2.34 systems<o:p></o:=
p></p>
<p class=3D"MsoNormal">util-linux: disable raw<o:p></o:p></p>
<p class=3D"MsoNormal">gpgme: Use glibc provided closefrom API when availab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">m4: Do not use SIGSTKSZ<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: fix missing dependencies for selftests<o:p></o:=
p></p>
<p class=3D"MsoNormal">libpsl: Add config knobs for runtime/builtin convers=
ion choices<o:p></o:p></p>
<p class=3D"MsoNormal">patch.bbclass: when the patch fails show more info o=
n the fatal error<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/sstatetests: fix typo ware -&gt; were<=
o:p></o:p></p>
<p class=3D"MsoNormal">rng-tools: add systemd-udev-settle wants to service<=
o:p></o:p></p>
<p class=3D"MsoNormal">scriptutils.py: Add check before deleting path<o:p><=
/o:p></p>
<p class=3D"MsoNormal">binutils: Fix a missing break in case statement<o:p>=
</o:p></p>
<p class=3D"MsoNormal">oeqa/manual: Fix no longer valid URLs<o:p></o:p></p>
<p class=3D"MsoNormal">multilib: Avoid sysroot race issues when multilib en=
abled<o:p></o:p></p>
<p class=3D"MsoNormal">weston: Use systemd notify,<o:p></o:p></p>
<p class=3D"MsoNormal">e2fsprogs: upgrade to 1.45.7<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.153<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/git: Use os.rename instead of mv<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/git: Avoid races over mirror tarball=
 creation<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: hashserv: let asyncio discover the running =
loop<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: correct deprecation warning in pro=
cess.py<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: adjust parser error check for pyth=
on 3.10 compatibility<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: do not import imp in layerindexlib=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: fix regexp deprecation warnings<o:=
p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: correct the collections vs collect=
ions.abc deprecation<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: compat.py: remove file since it no longer a=
ctually implements anything<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: test/fetch: Update urls to match upstream b=
ranch name changes<o:p></o:p></p>
<p class=3D"MsoNormal">glew: Stop polluting /tmp during builds<o:p></o:p></=
p>
<p class=3D"MsoNormal">oeqa/buildproject: Ensure temp directories are clean=
ed up<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/gotoolchain: Fix temp file cleanup<o:p=
></o:p></p>
<p class=3D"MsoNormal">rm_work.bbclass: Fix for files starting with -<o:p><=
/o:p></p>
<p class=3D"MsoNormal">libc_package/buildstats: Fix python regex quoting wa=
rnings<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/qemurunner: Use oe._exit(), not sys.exit()<o:p>=
</o:p></p>
<p class=3D"MsoNormal">pybootchart: Avoid divide by zero<o:p></o:p></p>
<p class=3D"MsoNormal">libsamplerate0: Set correct soname for 0.1.9<o:p></o=
:p></p>
<p class=3D"MsoNormal">bzip2: Update soname for libbz2 1.0.8<o:p></o:p></p>
<p class=3D"MsoNormal">common-licenses: add &quot;Unlicense&quot; license f=
ile<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: Add fix for systemd-networkd crash during f=
ree<o:p></o:p></p>
<p class=3D"MsoNormal">mtd-utils: upgrade to 2.1.3<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build/msg: Cleanup verbose option handling<=
o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Show a readable error for inval=
id multiconfig name<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-worker: Improve error handling<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Show error for no BBLAYERS in b=
blayers.conf<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cookerdata: Improve missing core layer erro=
r message<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Improve error display for handl=
ed exceptions<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Catch and error upon circular task r=
eferences<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Avoid duplicating logs in verbose mo=
de<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: process: Don't include logs in error messag=
e if piping them<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Handle SystemExit in python tasks co=
rrectly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: build: Match markup to real function name<o=
:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: bitbake-layers: add skip reason to=
 output<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: ui/taskexp: Fix to work with empty build di=
rectories<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: ui/taskexp: Improve startup exception handl=
ing<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: server: Fix early parsing errors preventing=
 zombie bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">libsoup-2.4: remove obsolete intltool dependency<o:p=
></o:p></p>
<p class=3D"MsoNormal">testimage: symlink the task log and qemu console log=
 to tmp/log/oeqa<o:p></o:p></p>
<p class=3D"MsoNormal">wic: keep rootfs_size as integer<o:p></o:p></p>
<p class=3D"MsoNormal">core-image-sato: Fix runqemu error for qemuarmv5<o:p=
></o:p></p>
<p class=3D"MsoNormal">Update mailing list address<o:p></o:p></p>
<p class=3D"MsoNormal">bash: Ensure deterministic build<o:p></o:p></p>
<p class=3D"MsoNormal">useradd: Ensure preinst data is expanded correctly i=
n pkgdata<o:p></o:p></p>
<p class=3D"MsoNormal">rpm: Handle proper return value to avoid major issue=
s<o:p></o:p></p>
<p class=3D"MsoNormal">iputils: Fix regression of arp table update<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch2: Use our own git server for dt=
c test repo<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB410507C4DEA1D6E58CBDF05FB9689DM6PR11MB4105namp_--

