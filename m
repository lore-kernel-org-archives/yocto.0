Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44778C433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 02:30:25 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web09.6405.1639362623121155873
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 18:30:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=intel header.b=EyQW/SbE;
 spf=pass (domain: intel.com, ip: 134.134.136.20,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639362623; x=1670898623;
  h=from:to:subject:date:message-id:mime-version;
  bh=/84XjUSMzV2emvtXiiBKlK4Ew7DSIN8eqHWbWZIHPbA=;
  b=EyQW/SbEBV+1jwB/rxfkRK2k0901I50I8J4qRBZy/JePtk3ba+800tJR
   rESH1GeHyxzEisbKxp7m8WfEdV0clny8CIQWf5hBTAf6NnY+0/OP4QB/T
   eTX6F0/gfF408KNfdNEaAwVUJDWRr8QvutEsVNVKRQ8Pcn8sN6ZSiW1sn
   Ibz+dtOMVSdgJ32h2thMFIRvwEdlXzN4A64NGF1h9TTGwSYGVvVvDwyeg
   +rVKUQTecZpKGXrgSrcgzhEvnGKluCRRsySNhMEcjqt1oRVgfJhKRY014
   Z0JIQ8Qgo7KDYb8pfk/ns92wPG1KqwLL3R3buPLebbP9FZn+ZuwIyemOf
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="225925902"
X-IronPort-AV: E=Sophos;i="5.88,201,1635231600";
   d="scan'208,217";a="225925902"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 18:30:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,201,1635231600";
   d="scan'208,217";a="681470385"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga005.jf.intel.com with ESMTP; 12 Dec 2021 18:30:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 18:30:20 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 18:30:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 12 Dec 2021 18:30:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 12 Dec 2021 18:30:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8/9xSQJ9ZFeEFndwFwG0aa1PQIntlYlxpY3SeUCybarH7msI04R9tgIKZR6NK0cMOhsILnSDetqPh2PKbikG6bNKLaMC5XEFpnIiGZwAofe4LFcoqQyRe3d/SXLBPE7pr3gy7zL8/RImfk+zW2p7X0+BmZQVUXErnkMnupVcHA7JXsmS8Xqvhlz+8Q/zNjHj3Rnl4tUSQd5SJdnheUPGohv+GdjRGZzMX4T09tCe4lXc1ViQll/vLR1AxRKN1GP+CITVRCoXTjU40dadjBMdXXVa9sVfL/HQwUhJYjbgzbyV6eLiJTVb8Dm3Wr18lacm1XQlIE4+rgYhYxwRmN/+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InEvslFkYLKaBcJwbLnjaGpfIyI4oxOwOn2Gdc/Kp8M=;
 b=at/IIxJlIRBakYgNUOEnJqtlSJv3CS76yYgL2wvq9sOPeCvr+xY316meoivgiO4nC/XsEdzq+gGrhK/YfIQh/Fi6lhx5qLfNeOn+L30cu8EFs6fPJ4WaoAHf4Tw0NzUAJIMxlDeqxxinFTZ6qsql2ujx2fSls5otB6otqSLnMd9/k1oVASsS2FCI2e3N8mnJXhCI28wLv6e4mVy5swps6JI5bF0TQbSop/Yh8+GcKNkBIlXumqL5mAlPB/J0D7v41Hu8gNh/OOlo2zULrkTHLevJ3wUbkc8JU9nIUnmOv9weNGe6YP9fi04R+2WFTZKJQwJ+rNK84vfWWtuTlKFqxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=InEvslFkYLKaBcJwbLnjaGpfIyI4oxOwOn2Gdc/Kp8M=;
 b=d3px1TUqcjXdWa5CmEsIE0UlOfJMnqc1dZvtYEOrEok1vwvXk5vuRAYDTkeLgmYWpuTxX5LXI7dHXfGTuzeV9RM2vhwiBhgQAEEJ2y9LK7OB9YGpObtgo8bd4Im+iQG6Efa2mzonF17wzGOZLrmOEyfivS5lhT5gH1KAjKiVHN8=
Received: from DM6PR11MB4105.namprd11.prod.outlook.com (2603:10b6:5:5::30) by
 DM6PR11MB4105.namprd11.prod.outlook.com (2603:10b6:5:5::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.15; Mon, 13 Dec 2021 02:30:18 +0000
Received: from DM6PR11MB4105.namprd11.prod.outlook.com
 ([fe80::84ad:c6b7:3701:44be]) by DM6PR11MB4105.namprd11.prod.outlook.com
 ([fe80::84ad:c6b7:3701:44be%4]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 02:30:18 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.4.1 (honister) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.4.1 (honister) is Released
Thread-Index: Adfvx1UmNK3j+hh9R2STkD50Cf825A==
Date: Mon, 13 Dec 2021 02:30:18 +0000
Message-ID: 
 <DM6PR11MB4105AE1D1B8FF37A71AD5196B9749@DM6PR11MB4105.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: fab6ef5d-4727-478c-1fff-08d9bde080e3
x-ms-traffictypediagnostic: DM6PR11MB4105:EE_
x-microsoft-antispam-prvs: 
 <DM6PR11MB4105C06EFE4010BF284EEABCB9749@DM6PR11MB4105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 i1+npLiewZP0WTE+R07b5S6U7aCuvb3PeCVspXW9zDVokyYzgfY+1YFsg95qLwuOhWCUWXRucvl8Z5M0phJZcOhnZzwBbnd/LQ/HYmK6zRpOv+2sJ7mH1wxIO3YyCXjkbaFJn0F+blWwP7TKBSg6mnpHX//Y/TOj3rT3foBJC+lMWrts9N7P3uBHx9aiU4GUc3ZtFTGO0v1a9A+XKJ1Ag7xKNl8yC79yc/Hu8JykeicLeT1792h9pPdPkZmKZdkdy/qoca23fPoDJ0dswDrXXKNgAD6Cw+souJUYnJG4kAbFTFa9rok7ek2u39F1RSRCfOZceKPT5nAn7yMctQsr1OXlKZvSDvKDttsrshpIuu4wqoOWqiBtlOM9pmSOMIXgIoN7BBnwasQfy3PSRMA/R1GQf0JKRwjtegT7WKTfJDHyzrjWyRlEskqfcw2TsLUtsSodwQWQYWUMe87JXrZimYBTWgQ9XwFspfrx3nKBd+Wqb0fawR0AAGkL3nyDPH5IOR2TeZq3wz18Q5Mv/vY8qvWyiGmOZyl0B8g/wSpbwH+8w5PpdWF4v2d23clFViKxXQ/GAZn1doOF52xOmSPTKA03oHBVTgyFWwxOyeCAbDaCKwlYa6jEqs1EWOW2uJIkJ43e+hhYeZR/mwZSXoz0Z53NWJWfMockSxiUf59w4eUZ4W/ZdwSGHbcw6UQMur6nAWPOadRCh5dr1Dx5gvc0Wq7dTZGZyiZQNbhVku/qiZ2BRuep9zO519PtuOTtjlIvF/zgQYWF/qeiElwqT5oMYiaMM/kBkh2xSXou6IOno02crXEAJT0c4mERqXBECSR4O+Lml++cBHD5C0iCgA98cw8MCeIqLtLagUls/h7zR8DycPraZUiSS74OYCidETCb
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4105.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(8936002)(508600001)(76116006)(86362001)(64756008)(82960400001)(186003)(6506007)(5660300002)(66574015)(38070700005)(2906002)(66476007)(66946007)(52536014)(66556008)(450100002)(26005)(83380400001)(38100700002)(316002)(122000001)(9326002)(166002)(110136005)(8676002)(33656002)(71200400001)(55016003)(66446008)(9686003)(7696005)(966005)(30864003)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?7Gfw/Xr5wo11dBMPq/RduG1HtFjrIpXeDFsLbzKtmg4tlcYvGNOBwRW0JhQy?=
 =?us-ascii?Q?/aXHlMOE25cec7+xjX87RctoSVqBSeyAVkJwKGXeOsx1lbFuFZbwI8esja72?=
 =?us-ascii?Q?2PuMh4EBwaVmuny6A+sOunY1FXqBBxogU1HlS0PPzawfIfOtoGgo3O0dLZlO?=
 =?us-ascii?Q?WWx5kxo/E9DahBzKlbXyL3rY/bh8xkJugpb5gDUVjlFd70h/Xb5oNtxBzv5t?=
 =?us-ascii?Q?hooKlZK/0C97zM/iH+/gAyuOKhRrHojbigvlvQYEw51a50fwoMZ44ll0rUFz?=
 =?us-ascii?Q?6O3jOlk/vCuVBRmmS7X51ZGYw+Qj+bSNl1x1cQTP40sEDiVvb4XkxQnBtSpI?=
 =?us-ascii?Q?MgO+U9MTolZbtAKOXnxPh10vNluETa3xirvjIjR0yn1eKJUHc5gsTC2uNd7Y?=
 =?us-ascii?Q?g75SfYdBqfE+jm4yE5TT0Kuc96EiaGV568muyYnvXOWPHqPkwT6clSmcB8tb?=
 =?us-ascii?Q?Fat660b8UAtgOZSZcA3SjPalzdwRYWQtkZVQHsYBnY4TYYnM23GfalMW5RKU?=
 =?us-ascii?Q?x+GuGWNtCGYK6TQ3q++Pb0h6o/ZHVf16N1p3WTwTOgyty84RYQLSwjNc0Zuj?=
 =?us-ascii?Q?OPdnNENDgPRSD9Z9ieq3MUXVrW8Jk58vYHWsI70NbDjZuHYclPFP/aKVMD5m?=
 =?us-ascii?Q?aUXUEPlFwL+ilga3mmloZM9T1jdVcd3w5vBKjGd+ErSutLZdDPmHnEE+SmoR?=
 =?us-ascii?Q?4CG1RD8HRJUyHFPjnF0LhirvwFFyC1JJPLhQMEGzfMZKRfK28r8SboJoxOz5?=
 =?us-ascii?Q?RPfvxYzF1MT8ak8JaIZ0caPbBD0JbUiVPQGEUnPVL1BAoiULA4sPKdoTjeA/?=
 =?us-ascii?Q?2blbC6OwUw0ojMNNX9oBqGcuYSWVMHIFHsiED5Ff8+BOXvjcl6BS7MIUUhpw?=
 =?us-ascii?Q?7GIQU9H7K+DjhxC7BChl7dZVPXkmRrFS1spGOZWRfgzWQiOzggwO3hxQlT/V?=
 =?us-ascii?Q?gIQ3EW0H8e/d9Xkl1iyTGELzZXuttkluNO9WGA8bbfjZFa7pl+wIA32sUFKQ?=
 =?us-ascii?Q?vRkzdmGYB/Xkb6Hp7QcHIxgZAGGhj4nM3irO9W8EPJrNxRhitTv1BXOpFHfK?=
 =?us-ascii?Q?lSYVfzHDU0N0EcPIdMVZDsU9G6Q7ljjXwxStYaGYYizVVSgjeouKo2KACCBM?=
 =?us-ascii?Q?oXS8Cn1FOPKDUAY/ZEuJ5FrBRwpTCn/KmKQCAUF8MdIRgeKb+0frCxpe8lqZ?=
 =?us-ascii?Q?3MBOw7jzTeq78Ijczqxgu6gH/xj5FiJEC2kgPlUV5yyzXYSwPkIT7XWYeZob?=
 =?us-ascii?Q?2vrl7ukEfm7S/zul7joKGwt9e+HuJfbeoz8pyi7IBSiHTuxfgunJ3RyTtPd8?=
 =?us-ascii?Q?FSbT/bqrrvLlfwQzKnW40RrZeS8O0GkjlGBRjikodXdO171xJABlaGGllLqb?=
 =?us-ascii?Q?6ffJiI39tgK8/+VAUYJgT5rXtz0sNg9WEc8RTo8SAW7Zaicd+CJmzYq70/nI?=
 =?us-ascii?Q?u8a4srb1RxCcu1I2aBMlGipCtZCrn6oXxPKRHZ+/OCL7TpLD/OLw/POoCEVT?=
 =?us-ascii?Q?pbhSgkt+i2mgPcsXWLxpWktMc1nxyOR5Z4KY1feF7x1mbK+KK1d90XTP6Bzr?=
 =?us-ascii?Q?GlIvTREcJTCz0wk5Pvu01BkbVvp5CH4jUuEemUM4JyYKuCtRF2Aq7gqqjeih?=
 =?us-ascii?Q?qA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB4105AE1D1B8FF37A71AD5196B9749DM6PR11MB4105namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fab6ef5d-4727-478c-1fff-08d9bde080e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 02:30:18.1703
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 0dP9x4+8IXLWpO9L97RjKNIgkJmePvbdOdpbepnvDPFPX6TByNjdhxb6Ldw9rN+A43pKjGkZtAOQBWl+wWFyHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4105
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 02:30:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55555

--_000_DM6PR11MB4105AE1D1B8FF37A71AD5196B9749DM6PR11MB4105namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.4.1 Release is now available=
 for download.
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/poky-b53230c08=
d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35=
b4f0b70512abbf10ae11.tar.bz2

A gpg signed version of these release notes is available at:
https://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/RELEASENOTES

Full Test Report:
https://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/testreport.tx=
t

Thank you for everyone's contributions to this release.


Chee Yang Lee
chee.yang.lee@intel.com
Yocto Project Build and Release


- --------------------------
yocto-3.4.1 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: honister
Tag: yocto-3.4.1
Git Revision: b53230c08d9f02ecaf35b4f0b70512abbf10ae11
Release Artefact: poky-b53230c08d9f02ecaf35b4f0b70512abbf10ae11
sha: 57d49e2afafb555baf65643acf752464f0eb7842b964713a5de7530c392de159
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/poky-b53230c08=
d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35=
b4f0b70512abbf10ae11.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: honister
Tag: yocto-3.4.1
Git Revision: 70384dd958c57d1da924a66cffa35f80eb60d4b0
Release Artefact: oecore-70384dd958c57d1da924a66cffa35f80eb60d4b0
sha: 7c90147cbd4b552fa7915066b41bbd3382b120ff19ded7551bf850e2d744ef12
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/oecore-70384dd=
958c57d1da924a66cffa35f80eb60d4b0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/oecore-70384dd958c57d1da9=
24a66cffa35f80eb60d4b0.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: honister
Tag: yocto-3.4.1
Git Revision: f5d761cbd5c957e4405c5d40b0c236d263c916a8
Release Artefact: meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8
sha: d4305d638ef80948584526c8ca386a8cf77933dffb8a3b8da98d26a5c40fcc11
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/meta-mingw-f5d=
761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/meta-mingw-f5d761cbd5c957=
e4405c5d40b0c236d263c916a8.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: honister
Tag: yocto-3.4.1
Git Revision: f04e4369bf9dd3385165281b9fa2ed1043b0e400
Release Artefact: meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400
sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c8e79249e1d337558657d3fe
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/meta-gplv2-f04=
e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/meta-gplv2-f04e4369bf9dd3=
385165281b9fa2ed1043b0e400.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: honister
Tag: yocto-3.4.1
Git Revision: 44a83b373e1fc34c93cd4a6c6cf8b73b230c1520
Release Artefact: bitbake-44a83b373e1fc34c93cd4a6c6cf8b73b230c1520
sha: 03d50c1318d88d62eb01d359412ea5a8014ef506266629a2bd43ab3a2ef19430
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/bitbake-44a83b=
373e1fc34c93cd4a6c6cf8b73b230c1520.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/bitbake-44a83b373e1fc34c9=
3cd4a6c6cf8b73b230c1520.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: honister
Tag: yocto-3.4.1
Git Revision: b250eda5a0beba8acc9641c55a5b0e30594b5178

- ---------------
Contributors
- ---------------
Ahmed Hossam
Alexander Kanavin
Alexandre Belloni
Andrej Valek
Andres Beltran
Anuj Mittal
Bruce Ashfield
Chen Qi
Claus Stovgaard
Daiane Angolini
Hsia-Jun(Randy) Li
Jon Mason
Jose Quaresma
Joshua Watt
Kai Kang
Khem Raj
Kiran Surendran
Manuel Leonhardt
Michael Opdenacker
Oleksandr Kravchuk
Pablo Saavedra Rodi?o
Paul Eggleton
Peter Kjellerstedt
Quentin Schulz
Ralph Siemsen
Randy Li
Richard Purdie
Ross Burton
Sakib Sajal
Saul Wold
Teoh Jay Shen
Tim Orling
Tom Hochstein
Yureka


- ---------------
Known Issues
- ---------------
Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control manual test ca=
se failure


- ---------------
Security Fixes
- ---------------
glibc: Backport fix for CVE-2021-43396
vim: add patch number to CVE-2021-3778 patch
vim: fix CVE-2021-3796, CVE-2021-3872, and CVE-2021-3875
squashfs-tools: follow-up fix for CVE-2021-41072
avahi: update CVE id fixed by local-ping.patch
squashfs-tools: fix CVE-2021-41072
ffmpeg: fix CVE-2021-38114
curl: fix CVE-2021-22945 through -22947



- ---------------
Fixes
- ---------------
bitbake.conf: Fix corruption of GNOME mirror url
bitbake.conf: Use wayland distro feature for native builds
bitbake: Revert "parse/ast: Show errors for append/prepend/remove operators=
 combined with +=3D/.=3D"
bitbake: bitbake-worker: Add debug when unpickle fails
bitbake: cooker: Fix task-depends.dot for multiconfig targets
bitbake: cooker: Handle parse threads disappearing to avoid hangs
bitbake: cooker: Handle parsing results queue race
bitbake: cooker: Remove debug code, oops :(
bitbake: cooker: check if upstream hash equivalence server is available
bitbake: fetch/git: Handle github dropping git:// support
bitbake: fetch/wget: Add timeout for checkstatus calls (30s)
bitbake: fetch2/perforce: Fix typo
bitbake: fetch2: Fix url remap issue and add testcase
bitbake: fetch2: fix downloadfilename issue with premirror
bitbake: fetch: Handle mirror user/password replacements correctly
bitbake: parse/ast: Show errors for append/prepend/remove operators combine=
d with +=3D/.=3D
bitbake: runqueue: Fix runall option handling
bitbake: runqueue: Fix runall option task deletion ordering issue
bitbake: test/fetch: Update urls to match upstream branch name changes
bitbake: tests/fetch.py: add test case to ensure downloadfilename is used f=
or premirror
bitbake: tests/fetch.py: fix premirror test cases
bitbake: tests/fetch: Update github urls
bitbake: tests/fetch: Update pcre.org address after github changes
bitbake: tests/runqueue: Ensure hashserv exits before deleting files
bitbake: utils: Handle lockfile filenames that are too long for filesystems
bootchart2: Don't compile python modules
build-appliance-image: Update to honister head revision
buildhistory: Fix package output files for SDKs
busybox: 1.34.0 -> 1.34.1
ca-certificates: update 20210119 -> 20211016
classes/populate_sdk_base: Add setscene tasks
conf: update for release 3.4
convert-srcuri.py: use regex to check space in SRC_URI
create-spdx: Fix key errors in do_create_runtime_spdx
create-spdx: Protect against None from LICENSE_PATH
create-spdx: Set the Organization field via a variable
create-spdx: add create_annotation function
create-spdx: cross recipes are native also
create_spdx: ensure is_work_shared() is unique
cups: Fix missing installation of cups sysv init scripts
docs: poky.yaml: updates for 3.4
dpkg: Install dkpg-perl scripts to versioned perl directory
glibc-version.inc: remove branch=3D from GLIBC_GIT_URI
go-helloworld/glide: Fix urls
go.bbclass: Allow adding parameters to go ldflags
go: upgrade 1.16.7 -> 1.16.8
gst-devtools: 1.18.4 -> 1.18.5
gst-examples: 1.18.4 -> 1.18.5
gstreamer1.0-libav: 1.18.4 -> 1.18.5
gstreamer1.0-omx: 1.18.4 -> 1.18.5
gstreamer1.0-plugins-bad: 1.18.4 -> 1.18.5
gstreamer1.0-plugins-base: 1.18.4 -> 1.18.5
gstreamer1.0-plugins-good: 1.18.4 -> 1.18.5
gstreamer1.0-plugins-ugly: 1.18.4 -> 1.18.5
gstreamer1.0-python: 1.18.4 -> 1.18.5
gstreamer1.0-rtsp-server: 1.18.4 -> 1.18.5
gstreamer1.0-vaapi: 1.18.4 -> 1.18.5
gstreamer1.0: 1.18.4 -> 1.18.5
insane.bbclass: Add a check for directories that are expected to be empty
kernel-devsrc: Add vdso.lds and other build files for riscv64 as well
libnewt: Use python3targetconfig to fix reproducibility issue
libpcre/libpcre2: correct SRC_URI
libx11-compose-data: Update LICENSE to better reflect reality
libx11: Update LICENSE to better reflect reality
libxml2: Use python3targetconfig to fix reproducibility issue
linunistring: Add missing gperf-native dependency
linux-firmware: upgrade to 20211027
linux-yocto-dev: Ensure DEPENDS matches recent 5.14 kernel changes
linux-yocto-rt/5.10: update to -rt54
linux-yocto/5.10: update to v5.10.78
linux-yocto/5.14: common-pc: enable CONFIG_ATA_PIIX as built-in
linux-yocto/5.14: update to v5.14.17
linux-yocto: add libmpc-native to DEPENDS
lttng-tools: replace ad hoc ptest fixup with upstream fixes
manuals: releases.rst: move gatesgarth to outdated releases section
mesa: Enable svga for x86 only
mesa: upgrade 21.2.1 -> 21.2.4
meson.bblcass: Remove empty egg-info directories before running meson
meson: install native file in sdk
meson: move lang args to the right section
meson: set objcopy in the cross and native toolchain files
meta/scripts: Manual git url branch additions
meta: Add explict branch to git SRC_URIs
migration-3.4: add additional migration info
migration-3.4: add some extra packaging notes
migration-3.4: tweak overrides change section
migration: tweak introduction section
mirrors: Add kernel.org sources mirror for downloads.yoctoproject.org
mirrors: Add uninative mirror on kernel.org
nativesdk-packagegroup-sdk-host.bb: Update host tools for wayland
oeqa/runtime/parselogs: modified drm error in common errors list
oeqa/selftest/sstatetests: fix typo ware -> were
oeqa: Update cleanup code to wait for hashserv exit
opkg: Fix poor operator combination choice
ovmf: update 202105 -> 202108
patch.bbclass: when the patch fails show more info on the fatal error
poky.conf: bump version for 3.4.1 honister release
poky.yaml: add lz4 and zstd to essential host packages
poky.yaml: fix lz4 package name for older Ubuntu versions
pseudo: Add fcntl64 wrapper
python3-setuptools: _distutils/sysconfig fix
python3: update to 3.9.7
qemu.inc: Remove empty egg-info directories before running meson
recipes: Update github.com urls to use https
ref-manual: Update how to set a useradd password
ref-manual: document "reproducible_build" class and SOURCE_DATE_EPOCH
ref-manual: document BUILD_REPRODUCIBLE_BINARIES
ref-manual: document TOOLCHAIN_HOST_TASK_ESDK
ref-manual: remove meta class
ref-manual: update system requirements
releases.rst: fix release number for 3.3.3
scripts/convert-srcuri: Update SRC_URI conversion script to handle github u=
rl changes
scripts/lib/wic/help.py: Update Fedora Kickstart URLs
scripts/oe-package-browser: Fix after overrides change
scripts/oe-package-browser: Handle no packages being built
spdx.py: Add annotation to relationship
sstate: Account for reserved characters when shortening sstate filenames
sstate: another fix for touching files inside pseudo
sstate: fix touching files inside pseudo
staging: Fix autoconf-native rebuild failure
strace: fix build against 5.15 kernel/kernel-headers
strace: show test suite log on failure
stress-ng: convert to git, website is down
systemd: add missing include for musl
tar: filter CVEs using vendor name
test-manual: how to enable reproducible builds
testimage: fix unclosed testdata file
tzdata: update 2021d to 2021d
uninative: Add version to uninative tarball name
waffle: convert to git, website is down
wayland: Fix wayland-tools packaging
wireless-regdb: upgrade 2021.07.14 -> 2021.08.28
wpa-supplicant: Match package override to PACKAGES for pkg_postinst

--_000_DM6PR11MB4105AE1D1B8FF37A71AD5196B9749DM6PR11MB4105namp_
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.4.1 R=
elease is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#E8E6E3"><a href=3D"http://down=
loads.yoctoproject.org/releases/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35=
b4f0b70512abbf10ae11.tar.bz2">http://downloads.yoctoproject.org/releases/yo=
cto/yocto-3.4.1/poky-b53230c08d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#E8E6E3"><a href=3D"http://mirr=
ors.kernel.org/yocto/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35b4f0b70512a=
bbf10ae11.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.1/poky-b=
53230c08d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.4.1/RELEASENOTES">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-3.4.1/RELEASENOTES</a><br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.4.1/testreport.txt">https://downloads.yoctoproject.org/rel=
eases/yocto/yocto-3.4.1/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee <br>
chee.yang.lee@intel.com<o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<br>
<br>
<br>
- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.4.1 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: b53230c08d9f02ecaf35b4f0b70512abbf10ae=
11<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-b53230c08d9f02ecaf35b4f0b7051=
2abbf10ae11<o:p></o:p></p>
<p class=3D"MsoNormal">sha: 57d49e2afafb555baf65643acf752464f0eb7842b964713=
a5de7530c392de159<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2">=
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/poky-b53230c08=
d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.1/poky-b53230c08d9f02ecaf35b4f0b70512abbf10ae11.tar.bz2">http://mirr=
ors.kernel.org/yocto/yocto/yocto-3.4.1/poky-b53230c08d9f02ecaf35b4f0b70512a=
bbf10ae11.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 70384dd958c57d1da924a66cffa35f80eb60d4=
b0<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-70384dd958c57d1da924a66cffa=
35f80eb60d4b0<o:p></o:p></p>
<p class=3D"MsoNormal">sha: 7c90147cbd4b552fa7915066b41bbd3382b120ff19ded75=
51bf850e2d744ef12<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.1/oecore-70384dd958c57d1da924a66cffa35f80eb60d4b0.tar.bz2=
">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/oecore-70384=
dd958c57d1da924a66cffa35f80eb60d4b0.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.1/oecore-70384dd958c57d1da924a66cffa35f80eb60d4b0.tar.bz2">http://mi=
rrors.kernel.org/yocto/yocto/yocto-3.4.1/oecore-70384dd958c57d1da924a66cffa=
35f80eb60d4b0.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f5d761cbd5c957e4405c5d40b0c236d263c916=
a8<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-f5d761cbd5c957e4405c5d4=
0b0c236d263c916a8<o:p></o:p></p>
<p class=3D"MsoNormal">sha: d4305d638ef80948584526c8ca386a8cf77933dffb8a3b8=
da98d26a5c40fcc11<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.1/meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar=
.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/meta-min=
gw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.1/meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2">http:=
//mirrors.kernel.org/yocto/yocto/yocto-3.4.1/meta-mingw-f5d761cbd5c957e4405=
c5d40b0c236d263c916a8.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f04e4369bf9dd3385165281b9fa2ed1043b0e4=
00<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-f04e4369bf9dd3385165281=
b9fa2ed1043b0e400<o:p></o:p></p>
<p class=3D"MsoNormal">sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c8e7924=
9e1d337558657d3fe<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.1/meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar=
.bz2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/meta-gpl=
v2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.1/meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2">http:=
//mirrors.kernel.org/yocto/yocto/yocto-3.4.1/meta-gplv2-f04e4369bf9dd338516=
5281b9fa2ed1043b0e400.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 44a83b373e1fc34c93cd4a6c6cf8b73b230c15=
20<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-44a83b373e1fc34c93cd4a6c6c=
f8b73b230c1520<o:p></o:p></p>
<p class=3D"MsoNormal">sha: 03d50c1318d88d62eb01d359412ea5a8014ef506266629a=
2bd43ab3a2ef19430<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.1/bitbake-44a83b373e1fc34c93cd4a6c6cf8b73b230c1520.tar.bz=
2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.1/bitbake-44a=
83b373e1fc34c93cd4a6c6cf8b73b230c1520.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.1/bitbake-44a83b373e1fc34c93cd4a6c6cf8b73b230c1520.tar.bz2">http://m=
irrors.kernel.org/yocto/yocto/yocto-3.4.1/bitbake-44a83b373e1fc34c93cd4a6c6=
cf8b73b230c1520.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: b250eda5a0beba8acc9641c55a5b0e30594b51=
78 <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Ahmed Hossam<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandre Belloni<o:p></o:p></p>
<p class=3D"MsoNormal">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoNormal">Andres Beltran<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Claus Stovgaard<o:p></o:p></p>
<p class=3D"MsoNormal">Daiane Angolini<o:p></o:p></p>
<p class=3D"MsoNormal">Hsia-Jun(Randy) Li<o:p></o:p></p>
<p class=3D"MsoNormal">Jon Mason<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Kiran Surendran<o:p></o:p></p>
<p class=3D"MsoNormal">Manuel Leonhardt<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksandr Kravchuk<o:p></o:p></p>
<p class=3D"MsoNormal">Pablo Saavedra Rodi?o<o:p></o:p></p>
<p class=3D"MsoNormal">Paul Eggleton<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Quentin Schulz<o:p></o:p></p>
<p class=3D"MsoNormal">Ralph Siemsen<o:p></o:p></p>
<p class=3D"MsoNormal">Randy Li<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Saul Wold<o:p></o:p></p>
<p class=3D"MsoNormal">Teoh Jay Shen<o:p></o:p></p>
<p class=3D"MsoNormal">Tim Orling<o:p></o:p></p>
<p class=3D"MsoNormal">Tom Hochstein<o:p></o:p></p>
<p class=3D"MsoNormal">Yureka<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume=
_control manual test case failure<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Backport fix for CVE-2021-43396<o:p></o:p></p=
>
<p class=3D"MsoNormal">vim: add patch number to CVE-2021-3778 patch<o:p></o=
:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3796, CVE-2021-3872, and CVE-2021-=
3875<o:p></o:p></p>
<p class=3D"MsoNormal">squashfs-tools: follow-up fix for CVE-2021-41072<o:p=
></o:p></p>
<p class=3D"MsoNormal">avahi: update CVE id fixed by local-ping.patch<o:p><=
/o:p></p>
<p class=3D"MsoNormal">squashfs-tools: fix CVE-2021-41072<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2021-38114<o:p></o:p></p>
<p class=3D"MsoNormal">curl: fix CVE-2021-22945 through -22947<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Fix corruption of GNOME mirror url<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Use wayland distro feature for native =
builds<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: Revert &quot;parse/ast: Show errors for app=
end/prepend/remove operators combined with +=3D/.=3D&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-worker: Add debug when unpickle fai=
ls<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Fix task-depends.dot for multiconfi=
g targets<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Handle parse threads disappearing t=
o avoid hangs<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Handle parsing results queue race<o=
:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Remove debug code, oops :(<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: cooker: check if upstream hash equivalence =
server is available<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/git: Handle github dropping git:// su=
pport<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/wget: Add timeout for checkstatus cal=
ls (30s)<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/perforce: Fix typo<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2: Fix url remap issue and add testcas=
e<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2: fix downloadfilename issue with pre=
mirror<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch: Handle mirror user/password replacem=
ents correctly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: parse/ast: Show errors for append/prepend/r=
emove operators combined with +=3D/.=3D<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix runall option handling<o:p></=
o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix runall option task deletion o=
rdering issue<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: test/fetch: Update urls to match upstream b=
ranch name changes<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch.py: add test case to ensure dow=
nloadfilename is used for premirror<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch.py: fix premirror test cases<o:=
p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update github urls<o:p></o:p><=
/p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update pcre.org address after =
github changes<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/runqueue: Ensure hashserv exits befor=
e deleting files<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: utils: Handle lockfile filenames that are t=
oo long for filesystems<o:p></o:p></p>
<p class=3D"MsoNormal">bootchart2: Don't compile python modules<o:p></o:p><=
/p>
<p class=3D"MsoNormal">build-appliance-image: Update to honister head revis=
ion<o:p></o:p></p>
<p class=3D"MsoNormal">buildhistory: Fix package output files for SDKs<o:p>=
</o:p></p>
<p class=3D"MsoNormal">busybox: 1.34.0 -&gt; 1.34.1<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: update 20210119 -&gt; 20211016<o:p>=
</o:p></p>
<p class=3D"MsoNormal">classes/populate_sdk_base: Add setscene tasks<o:p></=
o:p></p>
<p class=3D"MsoNormal">conf: update for release 3.4<o:p></o:p></p>
<p class=3D"MsoNormal">convert-srcuri.py: use regex to check space in SRC_U=
RI<o:p></o:p></p>
<p class=3D"MsoNormal">create-spdx: Fix key errors in do_create_runtime_spd=
x<o:p></o:p></p>
<p class=3D"MsoNormal">create-spdx: Protect against None from LICENSE_PATH<=
o:p></o:p></p>
<p class=3D"MsoNormal">create-spdx: Set the Organization field via a variab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">create-spdx: add create_annotation function<o:p></o:=
p></p>
<p class=3D"MsoNormal">create-spdx: cross recipes are native also<o:p></o:p=
></p>
<p class=3D"MsoNormal">create_spdx: ensure is_work_shared() is unique<o:p><=
/o:p></p>
<p class=3D"MsoNormal">cups: Fix missing installation of cups sysv init scr=
ipts<o:p></o:p></p>
<p class=3D"MsoNormal">docs: poky.yaml: updates for 3.4<o:p></o:p></p>
<p class=3D"MsoNormal">dpkg: Install dkpg-perl scripts to versioned perl di=
rectory<o:p></o:p></p>
<p class=3D"MsoNormal">glibc-version.inc: remove branch=3D from GLIBC_GIT_U=
RI<o:p></o:p></p>
<p class=3D"MsoNormal">go-helloworld/glide: Fix urls<o:p></o:p></p>
<p class=3D"MsoNormal">go.bbclass: Allow adding parameters to go ldflags<o:=
p></o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.7 -&gt; 1.16.8<o:p></o:p></p>
<p class=3D"MsoNormal">gst-devtools: 1.18.4 -&gt; 1.18.5<o:p></o:p></p>
<p class=3D"MsoNormal">gst-examples: 1.18.4 -&gt; 1.18.5<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-libav: 1.18.4 -&gt; 1.18.5<o:p></o:p></=
p>
<p class=3D"MsoNormal">gstreamer1.0-omx: 1.18.4 -&gt; 1.18.5<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-plugins-bad: 1.18.4 -&gt; 1.18.5<o:p></=
o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-plugins-base: 1.18.4 -&gt; 1.18.5<o:p><=
/o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-plugins-good: 1.18.4 -&gt; 1.18.5<o:p><=
/o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-plugins-ugly: 1.18.4 -&gt; 1.18.5<o:p><=
/o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-python: 1.18.4 -&gt; 1.18.5<o:p></o:p><=
/p>
<p class=3D"MsoNormal">gstreamer1.0-rtsp-server: 1.18.4 -&gt; 1.18.5<o:p></=
o:p></p>
<p class=3D"MsoNormal">gstreamer1.0-vaapi: 1.18.4 -&gt; 1.18.5<o:p></o:p></=
p>
<p class=3D"MsoNormal">gstreamer1.0: 1.18.4 -&gt; 1.18.5<o:p></o:p></p>
<p class=3D"MsoNormal">insane.bbclass: Add a check for directories that are=
 expected to be empty<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-devsrc: Add vdso.lds and other build files fo=
r riscv64 as well<o:p></o:p></p>
<p class=3D"MsoNormal">libnewt: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">libpcre/libpcre2: correct SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">libx11-compose-data: Update LICENSE to better reflec=
t reality<o:p></o:p></p>
<p class=3D"MsoNormal">libx11: Update LICENSE to better reflect reality<o:p=
></o:p></p>
<p class=3D"MsoNormal">libxml2: Use python3targetconfig to fix reproducibil=
ity issue<o:p></o:p></p>
<p class=3D"MsoNormal">linunistring: Add missing gperf-native dependency<o:=
p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade to 20211027<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-dev: Ensure DEPENDS matches recent 5.14 =
kernel changes<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.10: update to -rt54<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.78<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.14: common-pc: enable CONFIG_ATA_PIIX =
as built-in<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.14: update to v5.14.17<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto: add libmpc-native to DEPENDS<o:p></o:p>=
</p>
<p class=3D"MsoNormal">lttng-tools: replace ad hoc ptest fixup with upstrea=
m fixes<o:p></o:p></p>
<p class=3D"MsoNormal">manuals: releases.rst: move gatesgarth to outdated r=
eleases section<o:p></o:p></p>
<p class=3D"MsoNormal">mesa: Enable svga for x86 only<o:p></o:p></p>
<p class=3D"MsoNormal">mesa: upgrade 21.2.1 -&gt; 21.2.4<o:p></o:p></p>
<p class=3D"MsoNormal">meson.bblcass: Remove empty egg-info directories bef=
ore running meson<o:p></o:p></p>
<p class=3D"MsoNormal">meson: install native file in sdk<o:p></o:p></p>
<p class=3D"MsoNormal">meson: move lang args to the right section<o:p></o:p=
></p>
<p class=3D"MsoNormal">meson: set objcopy in the cross and native toolchain=
 files<o:p></o:p></p>
<p class=3D"MsoNormal">meta/scripts: Manual git url branch additions<o:p></=
o:p></p>
<p class=3D"MsoNormal">meta: Add explict branch to git SRC_URIs<o:p></o:p><=
/p>
<p class=3D"MsoNormal">migration-3.4: add additional migration info<o:p></o=
:p></p>
<p class=3D"MsoNormal">migration-3.4: add some extra packaging notes<o:p></=
o:p></p>
<p class=3D"MsoNormal">migration-3.4: tweak overrides change section<o:p></=
o:p></p>
<p class=3D"MsoNormal">migration: tweak introduction section<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add kernel.org sources mirror for downloads=
.yoctoproject.org<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add uninative mirror on kernel.org<o:p></o:=
p></p>
<p class=3D"MsoNormal">nativesdk-packagegroup-sdk-host.bb: Update host tool=
s for wayland<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/parselogs: modified drm error in common=
 errors list<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/sstatetests: fix typo ware -&gt; were<=
o:p></o:p></p>
<p class=3D"MsoNormal">oeqa: Update cleanup code to wait for hashserv exit<=
o:p></o:p></p>
<p class=3D"MsoNormal">opkg: Fix poor operator combination choice<o:p></o:p=
></p>
<p class=3D"MsoNormal">ovmf: update 202105 -&gt; 202108<o:p></o:p></p>
<p class=3D"MsoNormal">patch.bbclass: when the patch fails show more info o=
n the fatal error<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.4.1 honister release<o=
:p></o:p></p>
<p class=3D"MsoNormal">poky.yaml: add lz4 and zstd to essential host packag=
es<o:p></o:p></p>
<p class=3D"MsoNormal">poky.yaml: fix lz4 package name for older Ubuntu ver=
sions<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add fcntl64 wrapper<o:p></o:p></p>
<p class=3D"MsoNormal">python3-setuptools: _distutils/sysconfig fix<o:p></o=
:p></p>
<p class=3D"MsoNormal">python3: update to 3.9.7<o:p></o:p></p>
<p class=3D"MsoNormal">qemu.inc: Remove empty egg-info directories before r=
unning meson<o:p></o:p></p>
<p class=3D"MsoNormal">recipes: Update github.com urls to use https<o:p></o=
:p></p>
<p class=3D"MsoNormal">ref-manual: Update how to set a useradd password<o:p=
></o:p></p>
<p class=3D"MsoNormal">ref-manual: document &quot;reproducible_build&quot; =
class and SOURCE_DATE_EPOCH<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: document BUILD_REPRODUCIBLE_BINARIES<o:p=
></o:p></p>
<p class=3D"MsoNormal">ref-manual: document TOOLCHAIN_HOST_TASK_ESDK<o:p></=
o:p></p>
<p class=3D"MsoNormal">ref-manual: remove meta class<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: update system requirements<o:p></o:p></p=
>
<p class=3D"MsoNormal">releases.rst: fix release number for 3.3.3<o:p></o:p=
></p>
<p class=3D"MsoNormal">scripts/convert-srcuri: Update SRC_URI conversion sc=
ript to handle github url changes<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/lib/wic/help.py: Update Fedora Kickstart URL=
s<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/oe-package-browser: Fix after overrides chan=
ge<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/oe-package-browser: Handle no packages being=
 built<o:p></o:p></p>
<p class=3D"MsoNormal">spdx.py: Add annotation to relationship<o:p></o:p></=
p>
<p class=3D"MsoNormal">sstate: Account for reserved characters when shorten=
ing sstate filenames<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: another fix for touching files inside pseudo=
<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: fix touching files inside pseudo<o:p></o:p><=
/p>
<p class=3D"MsoNormal">staging: Fix autoconf-native rebuild failure<o:p></o=
:p></p>
<p class=3D"MsoNormal">strace: fix build against 5.15 kernel/kernel-headers=
<o:p></o:p></p>
<p class=3D"MsoNormal">strace: show test suite log on failure<o:p></o:p></p=
>
<p class=3D"MsoNormal">stress-ng: convert to git, website is down<o:p></o:p=
></p>
<p class=3D"MsoNormal">systemd: add missing include for musl<o:p></o:p></p>
<p class=3D"MsoNormal">tar: filter CVEs using vendor name<o:p></o:p></p>
<p class=3D"MsoNormal">test-manual: how to enable reproducible builds<o:p><=
/o:p></p>
<p class=3D"MsoNormal">testimage: fix unclosed testdata file<o:p></o:p></p>
<p class=3D"MsoNormal">tzdata: update 2021d to 2021d<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Add version to uninative tarball name<o:p=
></o:p></p>
<p class=3D"MsoNormal">waffle: convert to git, website is down<o:p></o:p></=
p>
<p class=3D"MsoNormal">wayland: Fix wayland-tools packaging<o:p></o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2021.07.14 -&gt; 2021.08.28<=
o:p></o:p></p>
<p class=3D"MsoNormal">wpa-supplicant: Match package override to PACKAGES f=
or pkg_postinst<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB4105AE1D1B8FF37A71AD5196B9749DM6PR11MB4105namp_--

