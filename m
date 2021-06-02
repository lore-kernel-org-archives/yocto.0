Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.157.1622669905717972955
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jun 2021 14:38:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=cmfQllyo;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: j7D2ZFKrDz9WfmMpsauR+z8fBx+thuHoEgw6LL/wDMe5myf0ukjqU37HaFhcNY7ry6utRg/Dma
 pns32S95abbA==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="191013791"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="scan'208,217";a="191013791"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2021 14:38:20 -0700
IronPort-SDR: nHowVRaHdUIWuzzmx1GoruHsPVTqq62StR0ARRSpHCz7vVuECnVs9iOAphLf1/5UxpsrNc5lcC
 tYfo7t6fmBiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="scan'208,217";a="447578704"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga008.fm.intel.com with ESMTP; 02 Jun 2021 14:38:19 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 14:38:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 2 Jun 2021 14:38:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 2 Jun 2021 14:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2ofn60gL4EtBYsVEb0jHDW/wQ+VxjOEikSs4e4XDO/uXnVOlt1a7gDJCencpWofZrUnuImMxuZBJ/KHlvOT0RqX984uRb1x2SSEp0OD09hpGeKrc8SPYbeYOeADF/FnsRUrYlS8g00wAtsH4YRkFAOQhE9Nd5+GD944TgngrL5/qQDASBs9wL+xA5oLWre5j/QsgtTa0bGSci/Z0le+fnnP0G19+1sAAAB6/LJJRl3PIa27dBEnY8LRAldgAo0BljtyRURtlAhSlOIHsnYIyx0cp7TSFiN77uAA+v2q3aaN2wtzDtMhRkV3VD/V++olY5pRVwq2z6sl2V+DYuDVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwXJpnJbBjwed+EAyXzbxoqrzfV0czHFGdBTfL/M+lY=;
 b=dzvG5ndynJqAca4rDlGnc28KrfVr81TQAKRu+aocc/NNHIaNk2eQ+vPG8Tsk96Ja+onFAH3IxbPLW7MUec8s44AuZ3zD1c8+vTT47JssKNCagqAXsdGJKB55kda1qd28kZLsCdu/8ZDXgSdOb7J9DDl1zpMZJDTBhdVuHWbQM71jKpENP+RccE/uX4UpYgv88iwNUShg3nIuYtMwamXva/cASCnvRZ0/PySyKTpqEndL3LTtUx7v3mGBmCf1sfTJEUz7c0g1arkMoRHXQ3MblVWquCtrabAVpGyKfv7A7M8WPnKTdqEjpJnLIw2deUctjKTOZdaL7WYnaKdzl8rmhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwXJpnJbBjwed+EAyXzbxoqrzfV0czHFGdBTfL/M+lY=;
 b=cmfQllyobz0qAfiWhM9EioXU5nd3kvsusjCxdQTThmMd5qSCFlf75wbjDeM/qLBNyr3xtvpatA/9TfduuL1IUMLrzEpyeiIpTwSniRVka6b6r9tGONzTsMxRK4XfwtF/5DWuF8yPJuKMOlR7SDR1pByHHW4Fh/P14gefnrcsJnA=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB4816.namprd11.prod.outlook.com (2603:10b6:a03:2ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Wed, 2 Jun
 2021 21:38:17 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9%4]) with mapi id 15.20.4173.030; Wed, 2 Jun 2021
 21:38:17 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.8 (dunfell-23.0.8) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.8 (dunfell-23.0.8) is Released
Thread-Index: AddX9z37UC9B51mySaiDH7goRiP0EQ==
Date: Wed, 2 Jun 2021 21:38:16 +0000
Message-ID: <BYAPR11MB330181D3AEC6A379B4314261883D9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.136.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88e118b8-abd6-4749-41bd-08d9260ebbbe
x-ms-traffictypediagnostic: SJ0PR11MB4816:
x-microsoft-antispam-prvs: <SJ0PR11MB4816B6215C876BD516121CAB883D9@SJ0PR11MB4816.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J7OZOpvfJCKRl013kAyo6pozHs7ca1GXGVke/ZsJPdeuGIUKoTodrramnhAe4aZnxdN3Fzw1c5s3L+wM1jXh7LuZL6Q7CECZlytg1nGoCuR59y4Bqha24lGqJOMGmWekz7qYWYApTTPI+iZv6B82Vv3VkvW7XZQEUWbnmkOKqQwTfwB2fobuzrrWT/k1Ze+0JcbqnZcIpQ2d7puW4oe/CSpSPhc+3qHeuv5mPOfzYk0jjpudGqGxlb2l3V2cepHlPWzduHTL0i2+2pDsxSHJJSs3pMW2zciSKgN0C+vsCtcplNvNRSjrltpf4eEJmUUZsl2kpXtSxpyo9pnxKvNIgzDMkmKUd5xtYL1v1go/jgImS3c+76kcbPB7bY648M3MOjYL28L8YKKTb5TebTx7UNpBDwzP3RjoSK/gbdhoeBzBltPX77Xaz222ZyWjVujHgONxzMXaC4Fv78kyPRJT/qNQGjxmPdSSGnQxJY2wYrsb6FlVj3nTmR91DCnXKe2a0VCtgpKKZt7i4lHJjjjUKpKEsQI90ynv3msCpBuNAj34R85EqaBsNd0WnDoVAgX7xV8QQA+btoQ1H24i12TFu1t0jB1IxN4k/JefyPk5Gk5Ji3qOC3YKHO4HcWeru16Of9e3zoGW8A51JsCm9ggEaRDJJISmf59elAjrTZnOwm7mDeOZVO2axSz/xvH5FxEwwD9VFolL/WY9g/GCkknLlknkE0hRle2+xzt/E1NM5dZVVyK0kQCHSgYI46sGc9tIP2fso25ab5RHRlMFAEdx4aqESWnB2s3JRInhTlNU7vU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39860400002)(376002)(346002)(136003)(366004)(86362001)(186003)(33656002)(6506007)(38100700002)(8676002)(110136005)(66946007)(7696005)(26005)(52536014)(83380400001)(9686003)(66476007)(5660300002)(966005)(478600001)(9326002)(122000001)(66446008)(76116006)(66556008)(2906002)(55016002)(8936002)(64756008)(71200400001)(316002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?8XxjN2IbDWHjfHKvQCle089ot4Adp5ZWyRSMcaXVbPls0Oxh2lT4k2SjXMHU?=
 =?us-ascii?Q?UKQqxunlZxyD23t7fkvsCTMjv7zdxKcuMmwOtEQ1Z3PHBOgMIQT1QaP2wfs2?=
 =?us-ascii?Q?t2iAm1UW7tzjBcohq8QyTV1Ptu6sH3IwqliBvaPW752awZ6R8HS3oceyTs6c?=
 =?us-ascii?Q?1ZFF6rib4AyUrTpLCgjNr/10al+7O1ayc0eAK5j4+r43ftDZoWcFdp/vZZyf?=
 =?us-ascii?Q?JWfW/daSgfU0XrpJDCn5BK/3n2bl9aj8YNX8h/XTrew7UxjIVc+Y0yPrfIT4?=
 =?us-ascii?Q?tQLAyZEWvgS6X7LZb+TYei9zM7JjFS2/lXgXfjCzKYHRr5ijAFQLo5//SS1y?=
 =?us-ascii?Q?jlBympH9I9ypVice2OmWozefEeswr8UcwuvWI7Nh/0yNZ7OHRdfrwlwR74Rw?=
 =?us-ascii?Q?X8MF17jFoFhOLkDLcDSoQzGZ3WmbcdWIsKv3hLqQjbFyj+xqErPIcsV89j3u?=
 =?us-ascii?Q?j2/vDvxUxTmxj2auQ9IsmaAdrPv9YhmBiQcGn4UGrdrTxcAQLd4heY2I5V3J?=
 =?us-ascii?Q?cTPLWtX2fcmUqSWFIWznQKyunn9ZZr6U5di4LNFcQk/xo9TCKyINXutYMnLQ?=
 =?us-ascii?Q?20x9eClgScjCT732cbCgrFzcYSYFw/eD2jGfrc9pzH4sNQfoJeSSPHqCheXI?=
 =?us-ascii?Q?KegEjsroCryhqV6wuUFak0rBJ3HF24/f+Ja9F4ajFAtN5BAlscWELpu6yfIQ?=
 =?us-ascii?Q?dXVHFjb9LEC/s2qpmu4IJzD3XL0UhhMrcNDamklOd6mESOs423bdIk5L8RAS?=
 =?us-ascii?Q?JfNb/6/rNUb+jXh5b3iMkOUg56YPc2uYvtS8VRXS4Cu27ROn1q+BKyWNKbuD?=
 =?us-ascii?Q?vktnOD+Xk5sqKr2iAcgRmuwtI60QcwqjnlTSVkwTR6Iz1AYnM2t1vxp1VvzQ?=
 =?us-ascii?Q?qhx4vn3hhAbmYGiXs3dajJubq9eVccK71L+avpV+VfLVWygqmi+R7SB/nqDC?=
 =?us-ascii?Q?AGEHh9FxVscvSeLVUR4CU7Epk8Qwc7UN/gbXF3helREjk9TrGw2D1jKizO3Q?=
 =?us-ascii?Q?JY1FrlluvMoKbLvAjlWjJFc7XsAtQlHzgrqrCEltjuGTgHpWpdTtTB9Klpz9?=
 =?us-ascii?Q?OK2FUA3WNTPQpyrNvhhCWllFe2u/HJhvrU8LbIfZ1s776bMiRbOCXFFjSFK1?=
 =?us-ascii?Q?ny6YAwNsQcM3sa4yRiwFoid99yqfpZVzwAnhuO/pewGdYgwqtDu6IObPY/X1?=
 =?us-ascii?Q?1jxIXsuU5M+yBJnSkcXcbus09+IvvLTS1KBKcQd5fPolUbylO4G6S8HLtozt?=
 =?us-ascii?Q?A1kaf5Wu0wJ4+8z87DYI8CgX66DPI+BWapSbvmzb16YOX3mxJnIXv4CGyEG4?=
 =?us-ascii?Q?3kDXi2LkRW9JVAm8K8paL+N4?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88e118b8-abd6-4749-41bd-08d9260ebbbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2021 21:38:16.9472
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BWYDYjL1WoOkLntdQopP1yQSCwMiK/keJ+4Cjtf37WfXsyyerk/d9002CoyxjGg1b6l8lcGRB90RqJJcAlFW6Z41UZakr2A5AZSC5TprogM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4816
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB330181D3AEC6A379B4314261883D9BYAPR11MB3301namp_"

--_000_BYAPR11MB330181D3AEC6A379B4314261883D9BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.8 (dunfell-23.0.8) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/poky-dunfell-2=
3.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/poky-dunfell-23.0.8.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/testreport.txt

Thank you for everyone's contributions to this release.



Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>

- --------------------------
yocto-3.1.8 Release Notes
- --------------------------

- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.8
Git Revision: 6ebb33bdaccaeadff0c85aab27acf35723df00d8
Release Artefact: poky-dunfell-23.0.8
sha: 3ca4775bec270eae7d30bf290db42d918378891ba1be6026f30f6bc245be60e4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/poky-dunfell-2=
3.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/poky-dunfell-23.0.8.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.8-dunfell
Git Revision: ecd636154e7cfc1349a7cfd8026a85eafa219535
Release Artefact: oecore-dunfell-23.0.8
sha: bf986f379fe1e038ccff49aee6f85e7006758738cddd916eb8dd3032a981c929
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/oecore-dunfell=
-23.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/oecore-dunfell-23.0.8.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.8
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.8
sha: 1c9f7ba3e9dba8ceb8155890c7365af6fc6486e54fba4aa3fb8032f6ea494bdb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/meta-mingw-dun=
fell-23.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/meta-mingw-dunfell-23.0.8=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.8
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.8
sha: 8106a9651a4d1a111f7922557d56898a00a6c1c88c80477997bf5a38a16fd208
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/meta-gplv2-dun=
fell-23.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/meta-gplv2-dunfell-23.0.8=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.46
Tag: 2020-04.8-dunfell
Git Revision: 078f3164dcb1de7a141bec3a8fd52631d0362631
Release Artefact: bitbake-dunfell-23.0.8
sha: 888ada8f64b94d03c430fcf309e994ed0bd96ff09d4909aacc0706e0cf8c8659
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.8/bitbake-dunfel=
l-23.0.8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/bitbake-dunfell-23.0.8.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.8
Git Revision:09b64a4d246bdcca62dddee152deef7b0dea69d7

- ------------
Contributors
- ------------
Alexander Kanavin
Anatol Belski
Anuj Mittal
Bruce Ashfield
Chen Qi
Christophe Chapuis
Diego Sueiro
Douglas Royds
Gavin Li
Guillaume Champagne
Jose Quaresma
Joshua Watt
Kai Uwe Broulik
Khem Raj
Konrad Weihmann
Lee Chee Yang
Marek Vasut
Mark Hatle
Michael Opdenacker
Mike Crowe
Mikko Rapeli
Mingli Yu
Niels Avonds
Peter Budny
Peter Morrow
Reto Schneider
Richard Purdie
Robert P. J. Day
Romain Naour
Ross Burton
Stefan Ghinea
Steve Sakoman
Vinay Kumar
Yanfei Xu
Yann Dirson
Yi Fan Yu
Zhang Qiang
zhengruoqin

- ---------------
Known Issues
- ---------------
Intermittent Failure in ptest : strace.printstrn-umoven.gen.test


- ---------------
Security Fixes
- ---------------
db: update CVE_PRODUCT
avahi: Exclude CVE-2021-26720 from cve-check
librsvg: Exclude CVE-2018-1000041 from cve-check
coreutils: Exclude CVE-2016-2781 from cve-check
tiff: Exclude CVE-2015-7313 from cve-check
bluez: Exclude CVE-2020-12352 CVE-2020-24490 from cve-check
ghostscript: Exclude CVE-2013-6629 from cve-check
cpio: Exclude CVE-2010-4226 from cve-check
unzip: Exclude CVE-2008-0888 from cve-check
openssh: Exclude CVE-2008-3844 from cve-check
openssh: Exclude CVE-2007-2768 from cve-check
logrotate: Exclude CVE-2011-1548,1549,1550 from cve-check
jquery: Exclude CVE-2007-2379 from cve-check
qemu: Exclude CVE-2018-18438 from cve-check
qemu: Exclude CVE-2007-0998 from cve-check
qemu: Exclude CVE-2017-5957 from cve-check
builder: whitelist CVE-2008-4178 (a different builder)
libnotify: whitelist CVE-2013-7381 (specific to the NodeJS bindings)
cairo: backport patch for CVE-2020-35492
glibc: Document and whitelist CVE-2019-1010022-25
tiff: fix CVE-2020-35523 CVE-2020-35524
qemu: fix CVE-2021-3392
subversion: fix CVE-2020-17525
binutils: fix CVE-2021-3487
tar: Fix CVE-2021-20193
Binutils: Fix CVE-2021-20197
wpa-supplicant: fix CVE-2021-30004
curl: Patch CVE-2021-22876 & CVE-2021-22890


- ---------------
Fixes
- ---------------
build-appliance-image: Update to dunfell head revision
poky.conf: Bump version for 3.1.8 release
poky.conf: Add fedora33 as a supported distro
documentation: prepare for 3.1.8 release
ref-system-requirements.rst: Add Fedora 33 to list of supported distros
sstate: Handle manifest 'corruption' issue
boost: fix do_fetch failure
Revert "cml1.bbclass: Return sorted list of cfg files"
bitbake: providers: selected version not available should be a warning
meta/lib/oe/rootfs.py: Fix typo "Restoreing" -> "Restoring"
image.bbclass: fix comment "pacackages" -> "packages"
dejagnu: needs expect at runtime
linux-yocto/5.4: qemuppc32: reduce serial shutdown issues
linux-firmware: include all relevant files in -bcm4356
linux-firmware: upgrade 20210208 -> 20210315
lsb-release: fix reproducibility failure
oeqa/qemurunner: Improve handling of run_serial for shutdown commands
oeqa/qemurunner: Fix binary vs str issue
oeqa/qemurunner: Improve logging thread exit handling for qemu shutdown tes=
t
python3-jinja2: 2.11.2 -> 2.11.3
poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4%
reproducible.py: add quilt-ptest and valgrind-ptest
ovmf: update edk2-stable202005 -> edk2-stable202008
ovmf: update to 202005
ovmf: update to 202002
lib/package_manager: Use shutil.copy instead of bb.utils.copyfile for inter=
cepts
libevent: Increase ptest timing tolerance 50 ms -> 100 ms
sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in network failure message
classes/image: Use xargs to set file timestamps
Revert "oeqa: Set LD_LIBRARY_PATH when executing native commands"
diffoscope: add native libraries to LD_LIBRARY_PATH
make-mod-scripts: add HOSTCXX definitions and gmp-native dependency
perf: fix python-audit RDEPENDS
cml1.bbclass: Return sorted list of cfg files
rootfs.py: find .ko.gz and .ko.xz kernel modules as well
pybootchart/draw: Avoid divide by zero error
gstreamer1.0-plugins-good: on wayland qt5 needs qtwayland
kernel.bbclass: Remove do_install[prefunc] no longer needed
ptest-runner: libgcc must be installed for pthread_cancel to work
linux-yocto/5.4: update to v5.4.116
linux-yocto/5.4: update to v5.4.114
wireless-regdb: upgrade 2020.11.20 -> 2021.04.21
yocto-uninative: Update to 3.1 which includes a patchelf fix
bitbake: fetch/gitsm: Fix crash when using git LFS and submodules
bitbake: runqueue: Fix deferred task issues
bitbake: bitbake: tests/fetch: remove write protected files too
bitbake: bitbake: tests/fetch: fix test execution without .gitconfig
license_image.bbclass: Fix symlink to generic license files
license_image.bbclass: Detect broken symlinks
linux-firmware: Package RSI 911x WiFi firmware
yocto-check-layer: Avoid bug when iterating and autoadding dependencies
kernel.bbclass: Configuration for environment with HOSTCXX
meta/lib/oeqa/core/tests/cases/timeout.py: add a testcase for the previous =
fix
oeqa: tear down oeqa decorators if one of them raises an exception in setup
oeqa/selftest/bblayers: Add test case for bitbake-layers layerindex-show-de=
pends
cve-update-db-native: skip on empty cpe23Uri
linux-yocto/5.4: fix arm defconfig warnings
linux-yocto/5.4: update to v5.4.112
linux-yocto/5.4: update to v5.4.111
linux-yocto/5.4: update to v5.4.109
ca-certificates: Fix openssl runtime cert dependencies
parselogs: ignore floppy error on qemu-system-x86 at boot stage
groff: not ship /usr/bin/grap2graph
libtool: make sure autoheader run before automake
kmod: do not symlink config.guess/config.sub during autoreconf
pseudo: Upgrade to add trailing slashes ignore path fix
lib/oe/terminal: Fix tmux new-session on older tmux versions (<1.9)
sanity: Further improve directory sanity tests
sanity: Add error check for '%' in build path
insane: clean up some more warning messages
oeqa/selftest: Ensure packages classes are set correctly for maintainers te=
st
oeqa/selftest: Hardcode test assumptions about heartbeat event timings
externalsrc: Detect code changes in submodules
Revert "externalsrc: Detect code changes in submodules"
go_1.14: don't set -buildmode=3Dpie when building for windows targets
goarch: map target os to windows for mingw* TARGET_OS
image-live.bbclass: optional depends when ROOTFS empty
diffoscope: Upgrade 168 -> 172
diffoscope: Upgrade 136 -> 168
selftest/reproducible: Sort the unused exclusion list
selftest/reproducible: track unusued entries in the exclusion list
selftest/reproducible: adjust exclusion list for dunfell
selftest/reproducible: add an exclusion list for items that are not yet rep=
roducible
selftest/reproducible: enable world reproducibility test

--_000_BYAPR11MB330181D3AEC6A379B4314261883D9BYAPR11MB3301namp_
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.8 (=
dunfell-23.0.8) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/poky-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/po=
ky-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.8 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.8<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 6ebb33bdaccaeadff0c85aab27acf35723df00=
d8<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.8<o:p></o:p></p>
<p class=3D"MsoNormal">sha: 3ca4775bec270eae7d30bf290db42d918378891ba1be602=
6f30f6bc245be60e4<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/poky-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/po=
ky-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.8-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: ecd636154e7cfc1349a7cfd8026a85eafa2195=
35<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.8<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: bf986f379fe1e038ccff49aee6f85e7006758738cddd916=
eb8dd3032a981c929<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/oecore-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/oe=
core-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.8<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.8<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: 1c9f7ba3e9dba8ceb8155890c7365af6fc6486e54fba4aa=
3fb8032f6ea494bdb<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/meta-mingw-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/me=
ta-mingw-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.8<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.8<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: 8106a9651a4d1a111f7922557d56898a00a6c1c88c80477=
997bf5a38a16fd208<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/meta-gplv2-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/me=
ta-gplv2-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.46<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.8-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 078f3164dcb1de7a141bec3a8fd52631d03626=
31<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.8<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 888ada8f64b94d03c430fcf309e994ed0bd96ff09d4909a=
acc0706e0cf8c8659<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.8/bitbake-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.8/bi=
tbake-dunfell-23.0.8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.8<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:09b64a4d246bdcca62dddee152deef7b0dea69d=
7<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- ------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Anatol Belski<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Christophe Chapuis<o:p></o:p></p>
<p class=3D"MsoNormal">Diego Sueiro<o:p></o:p></p>
<p class=3D"MsoNormal">Douglas Royds<o:p></o:p></p>
<p class=3D"MsoNormal">Gavin Li<o:p></o:p></p>
<p class=3D"MsoNormal">Guillaume Champagne<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Uwe Broulik<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Konrad Weihmann<o:p></o:p></p>
<p class=3D"MsoNormal">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Mark Hatle<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Mike Crowe<o:p></o:p></p>
<p class=3D"MsoNormal">Mikko Rapeli<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Niels Avonds<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Budny<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Morrow<o:p></o:p></p>
<p class=3D"MsoNormal">Reto Schneider<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Robert P. J. Day<o:p></o:p></p>
<p class=3D"MsoNormal">Romain Naour<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Stefan Ghinea<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Vinay Kumar<o:p></o:p></p>
<p class=3D"MsoNormal">Yanfei Xu<o:p></o:p></p>
<p class=3D"MsoNormal">Yann Dirson<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Fan Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Zhang Qiang<o:p></o:p></p>
<p class=3D"MsoNormal">zhengruoqin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Intermittent Failure in ptest : strace.printstrn-umo=
ven.gen.test<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">db: update CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">avahi: Exclude CVE-2021-26720 from cve-check<o:p></o=
:p></p>
<p class=3D"MsoNormal">librsvg: Exclude CVE-2018-1000041 from cve-check<o:p=
></o:p></p>
<p class=3D"MsoNormal">coreutils: Exclude CVE-2016-2781 from cve-check<o:p>=
</o:p></p>
<p class=3D"MsoNormal">tiff: Exclude CVE-2015-7313 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">bluez: Exclude CVE-2020-12352 CVE-2020-24490 from cv=
e-check<o:p></o:p></p>
<p class=3D"MsoNormal">ghostscript: Exclude CVE-2013-6629 from cve-check<o:=
p></o:p></p>
<p class=3D"MsoNormal">cpio: Exclude CVE-2010-4226 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">unzip: Exclude CVE-2008-0888 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">openssh: Exclude CVE-2008-3844 from cve-check<o:p></=
o:p></p>
<p class=3D"MsoNormal">openssh: Exclude CVE-2007-2768 from cve-check<o:p></=
o:p></p>
<p class=3D"MsoNormal">logrotate: Exclude CVE-2011-1548,1549,1550 from cve-=
check<o:p></o:p></p>
<p class=3D"MsoNormal">jquery: Exclude CVE-2007-2379 from cve-check<o:p></o=
:p></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2018-18438 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2007-0998 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2017-5957 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">builder: whitelist CVE-2008-4178 (a different builde=
r)<o:p></o:p></p>
<p class=3D"MsoNormal">libnotify: whitelist CVE-2013-7381 (specific to the =
NodeJS bindings)<o:p></o:p></p>
<p class=3D"MsoNormal">cairo: backport patch for CVE-2020-35492<o:p></o:p><=
/p>
<p class=3D"MsoNormal">glibc: Document and whitelist CVE-2019-1010022-25<o:=
p></o:p></p>
<p class=3D"MsoNormal">tiff: fix CVE-2020-35523 CVE-2020-35524<o:p></o:p></=
p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3392<o:p></o:p></p>
<p class=3D"MsoNormal">subversion: fix CVE-2020-17525<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: fix CVE-2021-3487<o:p></o:p></p>
<p class=3D"MsoNormal">tar: Fix CVE-2021-20193<o:p></o:p></p>
<p class=3D"MsoNormal">Binutils: Fix CVE-2021-20197<o:p></o:p></p>
<p class=3D"MsoNormal">wpa-supplicant: fix CVE-2021-30004<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Patch CVE-2021-22876 &amp; CVE-2021-22890<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to dunfell head revisi=
on<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.8 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">poky.conf: Add fedora33 as a supported distro<o:p></=
o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.1.8 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">ref-system-requirements.rst: Add Fedora 33 to list o=
f supported distros<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Handle manifest 'corruption' issue<o:p></o:p=
></p>
<p class=3D"MsoNormal">boost: fix do_fetch failure<o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;cml1.bbclass: Return sorted list of cfg=
 files&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: providers: selected version not available s=
hould be a warning<o:p></o:p></p>
<p class=3D"MsoNormal">meta/lib/oe/rootfs.py: Fix typo &quot;Restoreing&quo=
t; -&gt; &quot;Restoring&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">image.bbclass: fix comment &quot;pacackages&quot; -&=
gt; &quot;packages&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">dejagnu: needs expect at runtime<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: qemuppc32: reduce serial shutdown i=
ssues<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: include all relevant files in -bcm43=
56<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210208 -&gt; 20210315<o:p>=
</o:p></p>
<p class=3D"MsoNormal">lsb-release: fix reproducibility failure<o:p></o:p><=
/p>
<p class=3D"MsoNormal">oeqa/qemurunner: Improve handling of run_serial for =
shutdown commands<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/qemurunner: Fix binary vs str issue<o:p></o:p><=
/p>
<p class=3D"MsoNormal">oeqa/qemurunner: Improve logging thread exit handlin=
g for qemu shutdown test<o:p></o:p></p>
<p class=3D"MsoNormal">python3-jinja2: 2.11.2 -&gt; 2.11.3<o:p></o:p></p>
<p class=3D"MsoNormal">poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-ti=
ny to 5.4%<o:p></o:p></p>
<p class=3D"MsoNormal">reproducible.py: add quilt-ptest and valgrind-ptest<=
o:p></o:p></p>
<p class=3D"MsoNormal">ovmf: update edk2-stable202005 -&gt; edk2-stable2020=
08<o:p></o:p></p>
<p class=3D"MsoNormal">ovmf: update to 202005<o:p></o:p></p>
<p class=3D"MsoNormal">ovmf: update to 202002<o:p></o:p></p>
<p class=3D"MsoNormal">lib/package_manager: Use shutil.copy instead of bb.u=
tils.copyfile for intercepts<o:p></o:p></p>
<p class=3D"MsoNormal">libevent: Increase ptest timing tolerance 50 ms -&gt=
; 100 ms<o:p></o:p></p>
<p class=3D"MsoNormal">sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in n=
etwork failure message<o:p></o:p></p>
<p class=3D"MsoNormal">classes/image: Use xargs to set file timestamps<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Revert &quot;oeqa: Set LD_LIBRARY_PATH when executin=
g native commands&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">diffoscope: add native libraries to LD_LIBRARY_PATH<=
o:p></o:p></p>
<p class=3D"MsoNormal">make-mod-scripts: add HOSTCXX definitions and gmp-na=
tive dependency<o:p></o:p></p>
<p class=3D"MsoNormal">perf: fix python-audit RDEPENDS<o:p></o:p></p>
<p class=3D"MsoNormal">cml1.bbclass: Return sorted list of cfg files<o:p></=
o:p></p>
<p class=3D"MsoNormal">rootfs.py: find .ko.gz and .ko.xz kernel modules as =
well<o:p></o:p></p>
<p class=3D"MsoNormal">pybootchart/draw: Avoid divide by zero error<o:p></o=
:p></p>
<p class=3D"MsoNormal">gstreamer1.0-plugins-good: on wayland qt5 needs qtwa=
yland<o:p></o:p></p>
<p class=3D"MsoNormal">kernel.bbclass: Remove do_install[prefunc] no longer=
 needed<o:p></o:p></p>
<p class=3D"MsoNormal">ptest-runner: libgcc must be installed for pthread_c=
ancel to work<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.116<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.114<o:p></o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2020.11.20 -&gt; 2021.04.21<=
o:p></o:p></p>
<p class=3D"MsoNormal">yocto-uninative: Update to 3.1 which includes a patc=
helf fix<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/gitsm: Fix crash when using git LFS a=
nd submodules<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix deferred task issues<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: bitbake: tests/fetch: remove write protecte=
d files too<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: tests/fetch: fix test execution wi=
thout .gitconfig<o:p></o:p></p>
<p class=3D"MsoNormal">license_image.bbclass: Fix symlink to generic licens=
e files<o:p></o:p></p>
<p class=3D"MsoNormal">license_image.bbclass: Detect broken symlinks<o:p></=
o:p></p>
<p class=3D"MsoNormal">linux-firmware: Package RSI 911x WiFi firmware<o:p><=
/o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: Avoid bug when iterating and auto=
adding dependencies<o:p></o:p></p>
<p class=3D"MsoNormal">kernel.bbclass: Configuration for environment with H=
OSTCXX<o:p></o:p></p>
<p class=3D"MsoNormal">meta/lib/oeqa/core/tests/cases/timeout.py: add a tes=
tcase for the previous fix<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa: tear down oeqa decorators if one of them raise=
s an exception in setup<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/bblayers: Add test case for bitbake-la=
yers layerindex-show-depends<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: skip on empty cpe23Uri<o:p></o=
:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: fix arm defconfig warnings<o:p></o:=
p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.112<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.111<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.109<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: Fix openssl runtime cert dependenci=
es<o:p></o:p></p>
<p class=3D"MsoNormal">parselogs: ignore floppy error on qemu-system-x86 at=
 boot stage<o:p></o:p></p>
<p class=3D"MsoNormal">groff: not ship /usr/bin/grap2graph<o:p></o:p></p>
<p class=3D"MsoNormal">libtool: make sure autoheader run before automake<o:=
p></o:p></p>
<p class=3D"MsoNormal">kmod: do not symlink config.guess/config.sub during =
autoreconf<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Upgrade to add trailing slashes ignore path =
fix<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/terminal: Fix tmux new-session on older tmux =
versions (&lt;1.9)<o:p></o:p></p>
<p class=3D"MsoNormal">sanity: Further improve directory sanity tests<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sanity: Add error check for '%' in build path<o:p></=
o:p></p>
<p class=3D"MsoNormal">insane: clean up some more warning messages<o:p></o:=
p></p>
<p class=3D"MsoNormal">oeqa/selftest: Ensure packages classes are set corre=
ctly for maintainers test<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest: Hardcode test assumptions about heart=
beat event timings<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Detect code changes in submodules<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Revert &quot;externalsrc: Detect code changes in sub=
modules&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">go_1.14: don't set -buildmode=3Dpie when building fo=
r windows targets<o:p></o:p></p>
<p class=3D"MsoNormal">goarch: map target os to windows for mingw* TARGET_O=
S<o:p></o:p></p>
<p class=3D"MsoNormal">image-live.bbclass: optional depends when ROOTFS emp=
ty<o:p></o:p></p>
<p class=3D"MsoNormal">diffoscope: Upgrade 168 -&gt; 172<o:p></o:p></p>
<p class=3D"MsoNormal">diffoscope: Upgrade 136 -&gt; 168<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: Sort the unused exclusion lis=
t<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: track unusued entries in the =
exclusion list<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: adjust exclusion list for dun=
fell<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: add an exclusion list for ite=
ms that are not yet reproducible<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/reproducible: enable world reproducibility =
test<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB330181D3AEC6A379B4314261883D9BYAPR11MB3301namp_--
