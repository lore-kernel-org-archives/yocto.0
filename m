Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.1043.1621294126781821731
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 16:28:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=fpFCS2LO;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: Ij9uRWz4Rx34CNfxhgL1nGdb5ZeOAM6hP076Gtun3xXwQ2zOXRVFhKA1rIhyb7xxqMk6dwKeKG
 xXgKZg8YNhHA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200279920"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="scan'208,217";a="200279920"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 16:28:45 -0700
IronPort-SDR: +/mZ4ItfvrMBaJ5Zx5Qj/C43IcgGECc+jOF60+5JHQv8c1wuG8gaSkrI99fmxTjrdruhmNRGtt
 n4G42340v5Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="scan'208,217";a="438393979"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP; 17 May 2021 16:28:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 16:28:45 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 16:28:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 17 May 2021 16:28:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 17 May 2021 16:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ja2b7d6cM1qRGbLXvbxxWhi0I/CHLmjQPF5bjNxueKEzRAZ5knfG7VUGmJX4g3CEJhxDtdi8xSjwpS1a+oaixLUATxOSxBis395SbKT+0XIep16Uc9wuTdXede2cMJAiKT8XKXBtki0ZGQi8trwOo2/9tuAmr3p6TsIuENqdR7JLgcqfy02xWEl8kay6UZyqd51q/YHjYr87ZuVt9weHPVsAUTAbhWkjQ23uzMq7yiw5S7F2sWOjbf9W5UaD4IAs2NAFOfJPd9ezAzX4WFKMYKml55mF2vG5JHTF/dCXGnDLBgEBhzhmAvNMKysRKunyr1ZydqIzF9eIXt5RXo8rUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lIQCAdAu5qRJsEMX5yPnMCFm8P0PZXojWUcIeDYziwg=;
 b=h+xRZSOY3jeQ2OYKlHKE04P/EeYImP2pWpWBYS4FEU2fQnD4Bt4Kh6SGWiudG/MD31gS/nNO/rBrF3pDCLYvmPNY7FmdwLeJAgbrTylJAVWNnrQmrzTVLlCHKdZP9AExj9cdP7pCAL5hGZoqIdVqA/jHEOPTpWzXC3uB49GqTFvNClUy3x5oICnYJwm9wVeIRvdurwwV3C3lL+kOK3eGx5suN/Fgiqr9nDmjvTuweKn9lGr8bWR2DveLWcSvTI33KVDaE2H/pnIGPwxq9Zjqy1PeFpv2sp5uX2ILJu7nrA+RGIuEeFz4F99Dx6SeXa3TJEOsgIvzOOfUTmaJsI74Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lIQCAdAu5qRJsEMX5yPnMCFm8P0PZXojWUcIeDYziwg=;
 b=fpFCS2LOgDsRqOlJ5FgpYSIGVEUjhmpcQ9NCWhSXW5sPL9NMqjrgd1tWCmvOEhIclOnb5LZ71g/vPQY9ePJfRp0MxntrpYTK8RrBTPV305QrqYOpiuD1eg/Ht1hOwpQ4k9zuHNQuCB3ShaERx6cA/YO4RLPStwI3OGqRAzktW7o=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Mon, 17 May
 2021 23:28:02 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9%5]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 23:28:02 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.2.4 (gatesgarth-24.0.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2.4 (gatesgarth-24.0.4) is
 Released
Thread-Index: AddLVeixNgIMC77RQgKX982AEr3YHQ==
Date: Mon, 17 May 2021 23:28:02 +0000
Message-ID: <BYAPR11MB33013828FF49A416371B1775882D9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.147.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb364447-264a-4b11-36b4-08d9198b6a46
x-ms-traffictypediagnostic: SJ0PR11MB5165:
x-microsoft-antispam-prvs: <SJ0PR11MB51656DC2BBAA3575910F327D882D9@SJ0PR11MB5165.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: suNCxXDXXiVkrGeZcbldjv9Iqlxqxd4dKtn0GIK6DwqVmOxYOgoKB38GFWTS0CQsSrCh8qsxz9mkpUrhA5kiCYBRnV3R/oqmFGWMLB+dsHBcoD430Jt1GGut0S8Kc5K5C7OZXQ4Pe8vF4GCVZ/CJBR52YLZS/3+ddjHa3PKBQX+2aceY10QVciv9ei7Rna+ZVt8m0C64WbfvBZ4cGVHB3L3y8p6l8kq4fD0FDDHd6YbG8bek25q/xjjQ3HHVwb7jz4sb2wOaDTlNopw6JgyMB/OP8iGUPRXvxtLkd7QIzHwRiDnGItKKnXRgxdKAlvL+QWM2krFivb7QfcFEzNGEWVkIbGyRtZNFXdWbBFaz7XDdAzf3XsvGlgs1PvzyEZGBD8QPGgmpXLaj92B1QrewCSm4tRwk5XavFQyD30XIYoP+OncjUZcfM7y8BEehYrTDvfmQnvLPlMPrRcZMxRVtUwgqI8g9obxt9ecQXwOb7zME5SqKicgBET3TQywqDkENlsFs5hCdBhtW4NMv3IlmWx+FJ2Ik93qItj7M+SbHpiYiRyzIcg+J/iUJNHshyOLQNarjFQed22Ln4dAuQ5HG5OfPCecymIGl4jJRUxCEc8INltPtJ1mvyjtSiok+OX1wFQVSlNSa7B5Evw4G7fD+wmlUkvejMSuCGG5BmGdUnQzA7rA+MIvIBW4UCIBkvTKhk6H9eusGOw7wocyMQozBn3C+4xBrutE+hBynNQVAHdv1qnIWKn/oV+p+M2udUUMRD45gh8OGdn7iV7NE9C9m1A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(346002)(376002)(396003)(39860400002)(136003)(8676002)(5660300002)(186003)(122000001)(86362001)(38100700002)(9686003)(76116006)(6506007)(52536014)(55016002)(2906002)(26005)(7696005)(33656002)(478600001)(71200400001)(9326002)(66946007)(966005)(8936002)(66476007)(66446008)(110136005)(83380400001)(316002)(66556008)(64756008)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?eDylxxBsOiGJJnJUnguJoIkKDQg3iViGBRDdYCZ4uEgOMGLEl+C0oJgIhzTn?=
 =?us-ascii?Q?D5iffysb0hUs2rej2eJ1k9Y03ogJnksdaqOZ4sTdnEl+DmXXJ4u9fTAUL30n?=
 =?us-ascii?Q?Q94gYKhn6H1J/zeAKKCqazua/HC4NhsRVKvRf3ysaBlRTotz4Pd+WW7Kl/O+?=
 =?us-ascii?Q?dWSJOGUXMmolTUtgxC9iw96AKaBfjZcN+fy8KjySxSRrjtXsr+eRc6OyMJYD?=
 =?us-ascii?Q?IEkpx8yZ0tvbPFYcYK9BnCWl6MCQ/G4gw+2U/U/QUrUr/nKvw0qAC+s7PzQJ?=
 =?us-ascii?Q?72eUILvbZk+dlwvC9/1T9srKDe91dTM895H+0d5IHGbYpspmkTi2fGa/EjtZ?=
 =?us-ascii?Q?Ejv9+G0flWOkcI2R5PwaQsj4S0ag0upPHBk1VTO2AoQ2LhAOD2AcCpVzdBqi?=
 =?us-ascii?Q?r+NyNJmuqQHUdHebH5n1HWapY7ZTELLeOx4eCPBSUmOrfJolaJmnsNeJDsF4?=
 =?us-ascii?Q?PlbAwfCKVGvJOUenNKbioaI1tvXgpOZX1xdWOO4nmWI0Kj6KyKDKvnyhYkf/?=
 =?us-ascii?Q?DHo47wWCiTdvqWQOwjTx8B7UyAejRvzz18qBE0D4y4cTrVFTbW2IE9pOFwl4?=
 =?us-ascii?Q?LSvtklYSRSt0pSUFko6mbfdhBmzweJH1zbdZCVBYo7+rp3zrxWazmAm62qR6?=
 =?us-ascii?Q?McHAj387IzG3j53+sCJEaj3TOvxEulfXxw/PMdsqxCsJEaCZdv3rCYS+AfEK?=
 =?us-ascii?Q?99QTnOlEyH7Dn5ynxqOZHEOGlasqwGL/HfCasUJn1IBybgjOh3mjp0T6fHyd?=
 =?us-ascii?Q?G42ltxZhFWPgtCvW4iWWd+R3eFyMvepdyKjZicFs3YboFhwg9LFYsAi5Zmxd?=
 =?us-ascii?Q?cgbHTaAZjQ/7gUU80K7lPN/X+SPo2zC0RTh6P9+1HRnpPhf/gcs5h//NzYJJ?=
 =?us-ascii?Q?ELfDT5HxWI/O7/8dJS/ChysLoGQtZT5k3cy8eSM+eIG/3+CLFhCCEcrVrk6k?=
 =?us-ascii?Q?JZjaY69eSNHZQQVFYgA0F1XQZtSAj99jVhRGWgJFUFQnAYE8dmB6ZozHDXkA?=
 =?us-ascii?Q?NfRLLDXBjbg2Xd7Eup4HOaC01RSOXqKZT/gQi4dPZyeBofWOuvc1lBXY4bnj?=
 =?us-ascii?Q?HrhIrzddOTk6p2xDg86x/FXr/hAh1hNVtU+tg8fnnuLFp/LOkxa+K7LvMv6b?=
 =?us-ascii?Q?JB0ll072DJjGMDmY4GuYz4MI+X8C9F65GOdfGdlLBVZiHP3PpojYExNJf3xZ?=
 =?us-ascii?Q?CzdweQ6RsB+jgeJBOor7MSyFi9HcMJiLIjxA6PphWLSFnALPMb6/ZhzE1AlY?=
 =?us-ascii?Q?1f6mJiWvWqV+G3DkvI9NJaE0Y8ENpvFzpNJRSpl/6L8U5sXgic1vy89hartR?=
 =?us-ascii?Q?2/ilyRPAtnm5XuOz2SOIp6FF?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb364447-264a-4b11-36b4-08d9198b6a46
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 23:28:02.2351
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kTt/2Ge212h9kgkO4jFaQx2OJnhhp5j0p8V4n3vxlB7F/DOeX+fHtbqgzZOYG3yCZdR1xu47KH/GwDJltfAiAz21EDLxNr97mCTMHMgLdc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB33013828FF49A416371B1775882D9BYAPR11MB3301namp_"

--_000_BYAPR11MB33013828FF49A416371B1775882D9BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.2.4 (gatesgarth-24.0.4) Rele=
ase is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/poky-gatesgart=
h-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/poky-gatesgarth-24.0.4.ta=
r.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/testreport.txt


Thank you for everyone's contributions to this release.



Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


--------------------------
yocto-3.2.4 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: gatesgarth
Tag: yocto-3.2.4
Git Revision: 60c8482769f38a4db6f38d525405c887794511a9
Release Artefact: poky-gatesgarth-24.0.4
sha: 4e16bf6b800f0891e6c932fecc0d17b771713d9a5f2d38f79a77096636891997
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/poky-gatesgart=
h-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/poky-gatesgarth-24.0.4.ta=
r.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: gatesgarth
Tag: 2020-10.4-gatesgarth
Git Revision: d47b7cdc3508343349f3bb3eacb2dc3227dd94d2
Release Artefact: oecore-gatesgarth-24.0.4
sha: e0cc7b43260477b83eec7724ae1d0bf6ffe073e80927897ba547073b29c8972d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/oecore-gatesga=
rth-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/oecore-gatesgarth-24.0.4.=
tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: gatesgarth
Tag: yocto-3.2.4
Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
Release Artefact: meta-mingw-gatesgarth-24.0.4
sha: b9b0be763656ec62202a4644976f64a1d58fe9db2113bc3ca0d68bb509336e68
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/meta-mingw-gat=
esgarth-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/meta-mingw-gatesgarth-24.=
0.4.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: gatesgarth
Tag: yocto-3.2.4
Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
Release Artefact: meta-gplv2-gatesgarth-24.0.4
sha: e4809d3b4c37acdc1f38211b0acf52a8d839a856c533e0b15485c11dec158350
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/meta-gplv2-gat=
esgarth-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/meta-gplv2-gatesgarth-24.=
0.4.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.48
Tag: 2020-10.4-gatesgarth
Git Revision: e05d79a6ed92c9ce17b90fd5fb6186898a7b3bf8
Release Artefact: bitbake-gatesgarth-24.0.4
sha: a6374818045135d710f557b2789699c12418adf9139287d863f8667c06b395d2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.4/bitbake-gatesg=
arth-24.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/bitbake-gatesgarth-24.0.4=
.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: gatesgarth
Tag: yocto-3.2.4
Git Revision:657ce3c16b7ffecd0246b7386b7cb5e0d50ee9fb

-------------
Contributors
-------------
Anatol Belski
Anton D. Kachalov
Anuj Mittal
Bruce Ashfield
Changqing Li
Chen Qi
Christopher Larson
Dorinda Bassey
Douglas Royds
Gavin Li
Guillaume Champagne
hongxu
Khem Raj
Konrad Weihmann
Lee Chee Yang
Marek Vasut
Mark Hatle
Martin Jansa
Michael Halstead
Michael Trensch
Mikko Rapeli
Mingli Yu
Minjae Kim
Niels Avonds
Peter Budny
Peter Kjellerstedt
Petr Vorel
Richard Purdie
Ross Burton
Sangeeta Jain
Stefan Ghinea
Stephen Jolley
Yi Zhao

---------------
Known Issues
---------------
failure in ptest : ptestresult.lttng-tools.tools: This is not a regression =
and has a fix to disable it.


---------------
Security Fixes
---------------
gdk-pixbuf: fix CVE-2021-20240
cairo: fix CVE-2020-35492
rsync: fix CVE-2020-14387
busybox: fix CVE-2021-28831
wpa-supplicant: fix CVE-2021-30004
cve-check: CVE_VERSION_SUFFIX to work with patched release
cve-update-db-native: consider version suffix when update CVE db
openssl: update to 1.1.1k to fix CVE-2021-3450 and CVE-2021-3449
git: fix CVE-2021-21300


---------------
Fixes
---------------
build-appliance-image: Update to gatesgarth head revision
poky.conf: bump version for 3.2.4 release
documentation: prepare for 3.2.4 release
populate_sdk_ext: Avoid copying and producing .pyc files
linux-firmware: Package RSI 911x WiFi firmware
yocto-check-layer: Avoid bug when iterating and autoadding dependencies
deb: apply postinstall on sdk
bitbake: fetch/gitsm: Fix crash when using git LFS and submodules
bitbake: runqueue: Fix deferred task issues
bitbake: bitbake-server: ensure server timeout is a float
sanity: Further improve directory sanity tests
kmod: do not symlink config.guess/config.sub during autoreconf
ca-certificates: Fix openssl runtime cert dependencies
linux-yocto/5.4: fix arm defconfig warnings
linux-yocto/5.4: update to v5.4.112
linux-yocto/5.4: update to v5.4.111
linux-yocto/5.4: update to v5.4.109
cve-update-db-native: skip on empty cpe23Uri
bitbake: cooker: Include all packages a recipe provides in SkippedPackage.r=
provides
bitbake: cache: Make CoreRecipeInfo include rprovides_pkg for skipped recip=
es
externalsrc: Detect code changes in submodules
insane: clean up some more warning messages
sanity: Add error check for '%' in build path
oeqa/selftest: Hardcode test assumptions about heartbeat event timings
lib/oe/terminal: Fix tmux new-session on older tmux versions (<1.9)
pseudo: Upgrade to add trailing slashes ignore path fix
image-live.bbclass: optional depends when ROOTFS empty
image,populate_sdk_base: move 'func' flag setting for sdk command vars
buildhistory: add missing vardepsexcludes
libtool: make sure autoheader run before autoconf
documentation-audit.sh: Fix typo in specifying LICENSE_FLAGS_WHITELIST
run-postinsts: do not remove postinsts directory.
linux-firmware: Fix packaging
selftest/wic: Fix dependency issue in rawcopy test
scripts/verify-bashisms: Update checkbashisms.pl URL
devshell.bbclass: Exceptions displayed within devpyshell
linux-yocto/5.4: update to v5.4.107
linux-yocto/5.4: update to v5.4.105
binutils: backport fix for gold with theads enabled from 2.36.0
glibc: Pull latest 2.32 HEAD

--_000_BYAPR11MB33013828FF49A416371B1775882D9BYAPR11MB3301namp_
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.2.4 (=
gatesgarth-24.0.4) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/poky-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/po=
ky-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thank you for everyone's contributions to this re=
lease.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.2.4 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60c8482769f38a4db6f38d525405c887794511=
a9<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-gatesgarth-24.0.4<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 4e16bf6b800f0891e6c932fecc0d17b771713d9a5f2d38f=
79a77096636891997<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/poky-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/po=
ky-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-10.4-gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: d47b7cdc3508343349f3bb3eacb2dc3227dd94=
d2<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-gatesgarth-24.0.4<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: e0cc7b43260477b83eec7724ae1d0bf6ffe073e80927897=
ba547073b29c8972d<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/oecore-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/oe=
core-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de48=
79<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-gatesgarth-24.0.4<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sha: b9b0be763656ec62202a4644976f64a1d58fe9db2113bc3=
ca0d68bb509336e68<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/meta-mingw-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/me=
ta-mingw-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d=
43<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-gatesgarth-24.0.4<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sha: e4809d3b4c37acdc1f38211b0acf52a8d839a856c533e0b=
15485c11dec158350<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/meta-gplv2-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/me=
ta-gplv2-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.48<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-10.4-gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: e05d79a6ed92c9ce17b90fd5fb6186898a7b3b=
f8<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-gatesgarth-24.0.4<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: a6374818045135d710f557b2789699c12418adf9139287d=
863f8667c06b395d2<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.4/bitbake-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.4/bi=
tbake-gatesgarth-24.0.4.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.4<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:657ce3c16b7ffecd0246b7386b7cb5e0d50ee9f=
b<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">-------------<o:p></o:p></p>
<p class=3D"MsoNormal">Anatol Belski<o:p></o:p></p>
<p class=3D"MsoNormal">Anton D. Kachalov<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Christopher Larson<o:p></o:p></p>
<p class=3D"MsoNormal">Dorinda Bassey<o:p></o:p></p>
<p class=3D"MsoNormal">Douglas Royds<o:p></o:p></p>
<p class=3D"MsoNormal">Gavin Li<o:p></o:p></p>
<p class=3D"MsoNormal">Guillaume Champagne<o:p></o:p></p>
<p class=3D"MsoNormal">hongxu<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Konrad Weihmann<o:p></o:p></p>
<p class=3D"MsoNormal">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Mark Hatle<o:p></o:p></p>
<p class=3D"MsoNormal">Martin Jansa<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Trensch<o:p></o:p></p>
<p class=3D"MsoNormal">Mikko Rapeli<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Minjae Kim<o:p></o:p></p>
<p class=3D"MsoNormal">Niels Avonds<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Budny<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Petr Vorel<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sangeeta Jain<o:p></o:p></p>
<p class=3D"MsoNormal">Stefan Ghinea<o:p></o:p></p>
<p class=3D"MsoNormal">Stephen Jolley<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">failure in ptest : ptestresult.lttng-tools.tools: Th=
is is not a regression and has a fix to disable it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">gdk-pixbuf: fix CVE-2021-20240<o:p></o:p></p>
<p class=3D"MsoNormal">cairo: fix CVE-2020-35492<o:p></o:p></p>
<p class=3D"MsoNormal">rsync: fix CVE-2020-14387<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: fix CVE-2021-28831<o:p></o:p></p>
<p class=3D"MsoNormal">wpa-supplicant: fix CVE-2021-30004<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: CVE_VERSION_SUFFIX to work with patched r=
elease<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: consider version suffix when u=
pdate CVE db<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: update to 1.1.1k to fix CVE-2021-3450 and C=
VE-2021-3449<o:p></o:p></p>
<p class=3D"MsoNormal">git: fix CVE-2021-21300<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to gatesgarth head rev=
ision<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.2.4 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">documentation: prepare for 3.2.4 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">populate_sdk_ext: Avoid copying and producing .pyc f=
iles<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: Package RSI 911x WiFi firmware<o:p><=
/o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: Avoid bug when iterating and auto=
adding dependencies<o:p></o:p></p>
<p class=3D"MsoNormal">deb: apply postinstall on sdk<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/gitsm: Fix crash when using git LFS a=
nd submodules<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix deferred task issues<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: bitbake-server: ensure server timeout is a =
float<o:p></o:p></p>
<p class=3D"MsoNormal">sanity: Further improve directory sanity tests<o:p><=
/o:p></p>
<p class=3D"MsoNormal">kmod: do not symlink config.guess/config.sub during =
autoreconf<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: Fix openssl runtime cert dependenci=
es<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: fix arm defconfig warnings<o:p></o:=
p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.112<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.111<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.109<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: skip on empty cpe23Uri<o:p></o=
:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Include all packages a recipe provi=
des in SkippedPackage.rprovides<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cache: Make CoreRecipeInfo include rprovide=
s_pkg for skipped recipes<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Detect code changes in submodules<o:p><=
/o:p></p>
<p class=3D"MsoNormal">insane: clean up some more warning messages<o:p></o:=
p></p>
<p class=3D"MsoNormal">sanity: Add error check for '%' in build path<o:p></=
o:p></p>
<p class=3D"MsoNormal">oeqa/selftest: Hardcode test assumptions about heart=
beat event timings<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/terminal: Fix tmux new-session on older tmux =
versions (&lt;1.9)<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Upgrade to add trailing slashes ignore path =
fix<o:p></o:p></p>
<p class=3D"MsoNormal">image-live.bbclass: optional depends when ROOTFS emp=
ty<o:p></o:p></p>
<p class=3D"MsoNormal">image,populate_sdk_base: move 'func' flag setting fo=
r sdk command vars<o:p></o:p></p>
<p class=3D"MsoNormal">buildhistory: add missing vardepsexcludes<o:p></o:p>=
</p>
<p class=3D"MsoNormal">libtool: make sure autoheader run before autoconf<o:=
p></o:p></p>
<p class=3D"MsoNormal">documentation-audit.sh: Fix typo in specifying LICEN=
SE_FLAGS_WHITELIST<o:p></o:p></p>
<p class=3D"MsoNormal">run-postinsts: do not remove postinsts directory.<o:=
p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: Fix packaging<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/wic: Fix dependency issue in rawcopy test<o=
:p></o:p></p>
<p class=3D"MsoNormal">scripts/verify-bashisms: Update checkbashisms.pl URL=
<o:p></o:p></p>
<p class=3D"MsoNormal">devshell.bbclass: Exceptions displayed within devpys=
hell<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.107<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.105<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: backport fix for gold with theads enabled =
from 2.36.0<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Pull latest 2.32 HEAD<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB33013828FF49A416371B1775882D9BYAPR11MB3301namp_--
