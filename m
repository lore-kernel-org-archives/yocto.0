Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.1030.1608082977973599190
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 17:42:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=siJD9S+g;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 3M3/mOHEzQPBjiwZ0Zq0pIJYN7PfHp3C0hm5mbgUiHdqxtexTNMlNA2pN2/Xgh2gVrht7vfNGc
 naQnxu0Yo2hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="171474036"
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; 
   d="scan'208";a="171474036"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 17:42:56 -0800
IronPort-SDR: VDs6mL8AEGIXiRWm4CLg08PAzPYt0qermUh694AWQL9m/gCKq6OOdb5H+9JkeYH1ShnwP8rVNl
 ASwvkVD7+13Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; 
   d="scan'208";a="352198101"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga002.jf.intel.com with ESMTP; 15 Dec 2020 17:42:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 17:42:56 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 17:42:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 15 Dec 2020 17:42:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 15 Dec 2020 17:42:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KsJQXxIhnY85FhvK1RdekP8W+32N2wjF7Gt2zEnXTf6U3jPgKdc5LVfynMsQrg+mKARrDtXseO+etVZ4Qut2meEAo8txGWRGUT9uFXtf9Wn+opau/bZ3Ffh6rB2Ig1NGRCC7yEwPceQczKENsxwGFj1FpSNQ3LMnaBBRoMyieyvVCVXNTajcYrLYOc83DBHQAiZzCPasXKEo/b9epfM54bJ/wc787rL41v7mhB8Ni045lYGMTNqGaSnIwWn8PA8yH8+tYFYxYD3mnahf7BTSeoIpUGKTnWG09zUuBHetdNnmJJpjaZbM7KwGQJ9PMvakDVY//L0Ty6GRuBd8vKnScQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7JcXlEIjkPj7969uCGp8y34XN4i4WrLwqETf899EvA=;
 b=MOze6jJ1Gi4UsxVjiml5uixQj64z7bSyTz3LPKdUVVsQWRU1NNko0jRz3iU5cyZn8oCLpN0YdMxqZAMi613j3u45gGs6rC04RBuXuN6Pbs1noojRHgC1F8sP5olh4OuzoMqZ47WGjCsWlNLGqhHpCTO85PIshzFeME7rwhR/zOs02SYvAzi5keQ68+8hr2lTcKQfANLtfn2wSojaNJsPY7pa9zNxFexap2K2kq2DOXV7KhUyVX8kt5kRGknJUCv2Z4YocpvJFHeYzFK65WyKuo/YL2yJSNSPS6XRnE7z8x6xwq1sgDl/rH8M11mBWwWdmOx6Fst+5ztsNYv78DYrTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7JcXlEIjkPj7969uCGp8y34XN4i4WrLwqETf899EvA=;
 b=siJD9S+gEoAwJHTr+QSMR/ALQ8kQKzmVB0uUYB+FV6ay+LgdraD1zVgVlV2wRdFMdhCgTvsmZG68iw/3c7mWaLzO4OmIhsfeaVBGx/NIzo9XflRU9936kypMgwTjzprdFFWSyajc3J7C0XmYDiwU9TFh3yejU18DNMXGBuAv5Sg=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3046.namprd11.prod.outlook.com (2603:10b6:a03:86::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Wed, 16 Dec
 2020 01:42:54 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca%7]) with mapi id 15.20.3654.025; Wed, 16 Dec 2020
 01:42:54 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.3 (yocto-3.3_M1) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.3 (yocto-3.3_M1)
 now available
Thread-Index: AdbTTCIRmgrCBZHmSHiPq8GS4M5Miw==
Date: Wed, 16 Dec 2020 01:42:54 +0000
Message-ID: <BYAPR11MB2790C5E310643C63B166BAF688C50@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.101.253.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6010d9d2-1f25-4b55-9e6c-08d8a163e892
x-ms-traffictypediagnostic: BYAPR11MB3046:
x-microsoft-antispam-prvs: <BYAPR11MB304686074F4D33BE5F00711C88C50@BYAPR11MB3046.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /nVpFlApalMyX4WYZoNtshLkCtQFTDSo+F2E5isT+PhjsmYwhcS+VyyvxCqUTtXcs6V4i5eSRB4ZeYVa/p3Y3xjRK8yiobqrXIP18kyZEtr1U6vQKFztz4udXcKv5CxSJzP8d9coJn96dEUDsUIDiTNC+k9vG812Y7YNH0JDlXV/631iSs3bUGxdQVgP/XxoAauTx0K/xfG8vxvz+/7qRgPQUN056Wzv2NnHHqrfNBs+u0uA6UpcfWPK2atJYEl6W4GbEgZVCdRUcOGA0NEcITN1GUQhiyVGCXa0ryp+DHJzvO0fl2VvDwVfv1sEHCA9zBz+hP9pJCS077oPJy8sFsZ6B/CEM4jkXML2CMfDsiqSKC10fGXsr52PvXYK1l9YYT6swZf4/zw+gWOZJRh+DIWYPy8sZ3Tf+2DY0JeiddsVidnpjIU9WxwaDyVaIg1+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(66476007)(64756008)(8936002)(110136005)(9686003)(6506007)(66556008)(55016002)(71200400001)(8676002)(33656002)(316002)(186003)(52536014)(86362001)(26005)(83380400001)(7696005)(76116006)(66946007)(4744005)(2906002)(478600001)(66446008)(5660300002)(966005)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?cKzBBBDy0CAsIU+DKiW7KvTJ50exl9Mz1UPFepaKYJHLSOeIDSGtFIhboZbx?=
 =?us-ascii?Q?aC0NX5whHxmj1vfpyIZJWaRPuApXh/jKsm6Uaj5kplIKOEyoLWOuPxGbV+us?=
 =?us-ascii?Q?AeTQAhSphCIMlBci61KFdA0pNFlT/+KhHFPMhFby993+htnYcMq6dEqbr/Xc?=
 =?us-ascii?Q?CbopSYE8Thb3wOXWpScN7JynhMseDdPcq9Q4lAHczN6eCNimriKRou6lcuzu?=
 =?us-ascii?Q?/Q0pyLnut2BAXHh+5aFOTJNiKoQbyzChqlbVKDhycLUMaHNTxTP9+07Af0iP?=
 =?us-ascii?Q?xEuQs3u+hQm+YI7TYwXJc4zgWXuSK15RTbv7FXYPF/5o+qWcTww7FKFuHQGK?=
 =?us-ascii?Q?jafuSP2e1j5a2D5iCuabF2OqzxfHJ/wDJ33rtLnlvq1cV1HLwq3e80UnrPv/?=
 =?us-ascii?Q?QF8xAlD2PPS61GCUVhy/zCc5uZXM53kjFq/rixelTIV4ZkUAe6/oMUlG430o?=
 =?us-ascii?Q?uPsCYXziQvrU+fYdvqLUHpl+9ROZt93UphaGfQ3aWczvhzTwRSMcXiQyQkg1?=
 =?us-ascii?Q?yvkvoZQLHu4Kou+NkeJj+qhvImslCIAWU7ITfhriUlqcYeeY9f/URWXZYwbB?=
 =?us-ascii?Q?CPpPNwK3pTgWv4zUd5PUViOgSypsk0vBssnn4LeJ9WU8+RQqxvxtPKDBM7C+?=
 =?us-ascii?Q?lx7lztWyvkHoyC+/4pW8XoSyEt5rh0ABcog5tKTS0APVSkAsOUv7MzySDiNg?=
 =?us-ascii?Q?l3mq9GdG86OcNfpBrsmDJNCJkMqPalCUg6d3lpj6R9BbaR3iqXwHqkDkzx0G?=
 =?us-ascii?Q?g3g09nlwKvTqS0Sc1VsXZN/GREKASpIoP/pmA/ZXw+EwYHqxCcjlZpPh9sAt?=
 =?us-ascii?Q?cVUGw3YyFSUPDStpN5ym08lgV6RAQKe35kMl93y3lw60qnF43G9yHa5ZaB8C?=
 =?us-ascii?Q?lGrlDmrhqtUwkyoWMRMQpIkd/fwW6IXZwj8u58o2dnyYzml3O49vz9AybIBO?=
 =?us-ascii?Q?Sx2dz1ND0s0rNSRQHYGvRy7ZD1lySzpKKeckr7EvUB0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6010d9d2-1f25-4b55-9e6c-08d8a163e892
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2020 01:42:54.8042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zeyzxN7DjlzZAC/POxomoQJErEQXK/kBPUchKWq3kXIEPwNrW4Y/EjQ+HODZC0XUyypdKQQS069lm+1ZBZaRQQkAXPD6WBKZg+8JXq4jp5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3046
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the first milestone release for Yocto Project 3.=
3 (yocto-3.3_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M1

bitbake: 5775d9463ecedf8681cb6c919b240b80fe70f5a3
meta-arm: 2a530c34199e9aaff2bab1ac53d81f112f34647f
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
meta-intel: 7d79beb5093da8adf0f9b106a33d8e0904a50a48
meta-kernel: e5a0723a3f3dadd880893bccf9bff88a9b46843d
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
oecore: a55b01a3a1faf9a52d7edad074c76327f637aaa2
poky: f36484e88d21346357bd1fa1bef6fdcc42bed54a

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M1/te=
streport.txt

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
