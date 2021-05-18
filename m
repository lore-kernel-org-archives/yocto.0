Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.5290.1621322381276959356
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 00:19:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=M9IKg9g+;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: W3jbjnNx+AS57v/eujA26Fo7sGsJfVj4GzIDKMeNdGc/7IxeGDXJvIOwBPUIL4ScQf6mRfi1Zn
 WR/wrmaWeZsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200699675"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; 
   d="scan'208";a="200699675"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2021 00:19:38 -0700
IronPort-SDR: 9OHJHOWuEFGugxIAhiFU7kVrgEOjfDuhQaKWYSYUAvpR7ep/sZlRGyGAh8E2n+qNy1sp2Lgx+m
 rrHnsGyqqgaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; 
   d="scan'208";a="626969436"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga006.fm.intel.com with ESMTP; 18 May 2021 00:19:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 18 May 2021 00:19:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 18 May 2021 00:19:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 18 May 2021 00:19:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiyqjVtayKclzc83Dbg8mfM7vAMt8EHzcHV396Z0+bjZqlk6Y6rtMA9glPKHZlkrOCsog0j9xcp1s7qbK2zhg3pWAwsmEBf7c6ItL80nHiahDuoULMEEvUI2K2BdJFAy7QW8tzCc9hr9NEJvBwYVWiht1ERfdPpp5GHTHU0xD/xGzLxYC6Jgvpz8QlLDXbHln4WD/tMktBqCg5BYSA4/m1kz+b8ZRQ2legcq119ap1ukS3nGqtWLxIXdpRdoFVlQ5eE2yv25RWkZgtr7j9PvLWEf/t03y5DWczVnhDW3FBV4NpoeOfL7HcXTMrhLbpr/Kcx6cZ2LO0GD9e5NIYiyZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWV7gpLi7v6glaQ6YHRXWepH7aHI3q5HeKaN47elHFs=;
 b=KeZdD8DFmxJMOLvXVUK6voCRxx/T9mJJBbCpPPnfXTPTVFSar08fDd6I40+Y+6yze3OGup/yCJxJxtNTffmL5SuijuQ9+1boBREH3KNLbr5n51VmHPkOk2JqViWurH3HqOdiqNB9C6AeUUjHi+wdiImdq1hn2niprz0q7yWZbdKpZpaqshb+P+o11iS5WqNg6Vzfymp1yM8k3LoLuFhZ0oGek1FBGOJOi47ZIiOcvfIxjYSHZqVWsHJuATgjZ6RKg9Nf64SnLi30/xqWnbSse9RB9izsackxupd3yWqgX02DWRVZ04Ve9Hmb7ilvMR7jjBsbmPJ8PUlvum0588Mztw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWV7gpLi7v6glaQ6YHRXWepH7aHI3q5HeKaN47elHFs=;
 b=M9IKg9g+i3gOz0putRspuJYL+prHMPaw64ToLOzACAS1fcM/r1h06otZKZTsbFpMmCbpGfPW7vSZGRJUih1h3/W7qHPllt6QdAyQ4KvssdGBqmVndiR9aIfNzQiDYsG0sg1AE7cC/ZDOdD+vEu37oVRQLjgD9BeFbVzYqWEkIag=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB2952.namprd11.prod.outlook.com (2603:10b6:a03:82::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.28; Tue, 18 May
 2021 07:19:34 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::ed3d:ed46:9fd1:3d10]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::ed3d:ed46:9fd1:3d10%5]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 07:19:34 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder build (yocto-3.3.1.rc1)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.3.1.rc1)
Thread-Index: AQHXSyMmcg8sXMWGWkaf2BYw6r8xl6ro1YnQ
Date: Tue, 18 May 2021 07:19:34 +0000
Message-ID: <BYAPR11MB3624F7E6C44131D4F559A0C9E32C9@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20210517134703.A30BE280D00@debian10-ty-1.yocto.io>
In-Reply-To: <20210517134703.A30BE280D00@debian10-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [60.53.116.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 654732e4-7ac4-406f-6788-08d919cd49d2
x-ms-traffictypediagnostic: BYAPR11MB2952:
x-microsoft-antispam-prvs: <BYAPR11MB2952A2722187F3EB27701A29E32C9@BYAPR11MB2952.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4zh8LPKFE1cvG1n9mwOlwxUYGwhGqqZLvqZAGRfCx+aQaUSKIUR+pZ/EfKpeiYMAUnQZQ2B2hI7/uKz2Od1fdZVtyxFnkr+jfm75+DnvFLh59eeyAsXbnsOdOdTnyp/gUedLAoxnBUZz0OAfVTAIleEcPAfHVRoycW7GGnm0NErYHbmgnMvE/tgb6qLIbN7aJ+0ZVv4dB2/i3XXABaFpwNQdjFyCWrGSzLapNRkKb9pQy4MsYohcM8DAqzHqyoSKE420Qp5H97kj5pvD5jAN/PBcaGZqQcR/At2u7H9m/He3oXpnflBeB0tpUHXFsIkmb4XiVAgn3wFEDy8ajVedrfsOml7QEauT3/NLNAWL7lGkI1KZPl+nGuYZ8k8NbAWMVF0qeFYcwDkYw3aCm+5ZRh3IQK+PXn5yxeZX+PXJuWKfJa9AGrf2Ofy0qjVGSTtXtY0effsEvf3HsC4bmLgyu7FlAG9aqbfLoxFJGzBAMxLSKip7UFm9GJGXwxjMWTtR8mYZIm685/95kFJh+VvcHLCJLtvc2LswCem61gQuWfIoNHWC2eTMGiv/9a2zxotHCR1Qey8WYcK7DK0oT3hnBHeD0wb49tJnan3IV2nvAqVUGYXqDWQBIYLYE/b1FinHd8CcW/aaebETbxkSnDP8j84NFCek1Yqn5XqHgUMFKk9CACj0dRpF+f6YERBwG9xO2IjfLD4AssRh2alEIH5wLBxEPsFHh1eIVrUGK12/j88=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(346002)(39860400002)(366004)(136003)(376002)(2906002)(33656002)(5660300002)(316002)(76116006)(66446008)(66476007)(110136005)(66946007)(966005)(8676002)(38100700002)(86362001)(450100002)(8936002)(64756008)(55016002)(52536014)(66556008)(53546011)(122000001)(71200400001)(26005)(6506007)(7696005)(15650500001)(186003)(83380400001)(478600001)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?iASXztukGUNXsnkAAc1IRXXzT42H0CT2ah/sGvVc9jagVjLi1pJau4/qHqkw?=
 =?us-ascii?Q?y9xTvxc57/aQKw3Ae/dZ6KRD9018ysJquJbJlp641285zsZBoIo35uxnIpnl?=
 =?us-ascii?Q?cdmVx8D+xdA4afsPbeCGjqidIB3MZ5G8Cj60PSaZsNvtONbDRpgNZkRnhwYG?=
 =?us-ascii?Q?6XeyJYgq2N6s7FmWNPnQTvZFJxAylejweScniONTOq1s7t2JJT/IaHMXSGHU?=
 =?us-ascii?Q?KaigjFWm5sdIUTFmXKRP6lh3/RKfn27qBEbLENc2rCn8hPuVCCPQrNGPEeA+?=
 =?us-ascii?Q?BhIuJrnqehgiWc5+DoujNIcRMHamEGxEL+1OuIRcU9cvD4E1+ExZwPAYlUvh?=
 =?us-ascii?Q?fy0jQ1fGuV7LKF46k3BtHAc6FEl78XEWYFgGLzAqr6KQegxz9QxinqKAYr+x?=
 =?us-ascii?Q?Z+QicAPdUkAXxP6Y3Md80+PIWMwRcGwBa0B4TCFkwqf4i1wApvKmT52X+n9X?=
 =?us-ascii?Q?mAd0vce3LXslUXfprwECVNPu/Diwl7AmBwEwqVJjdPwqvrEUs/xnDUfT5pfO?=
 =?us-ascii?Q?534ipTNPmDyJ6399zN2jutlmvAXnuRbyuiUqYFbHVLkL9bBSJu/bbBeka6P0?=
 =?us-ascii?Q?hjpEnCEyLVuqXlNr6p4Bw5xURtRn5KglI2Ba5V/Tm5gjArpSOVo1P5JPCTgz?=
 =?us-ascii?Q?GsRnOvubvS+PDHNgYdmKYyHKmn0pqBWJyQK9bRGm9ni32EfAg7jqFMuof6Kq?=
 =?us-ascii?Q?sh3/JNgaSQBLOoRTUvyFrumE1mmUfh9b+6JT43pyE+KfWeYG50OKYKW1ITqO?=
 =?us-ascii?Q?KO9Awhu5vg07sHiew5mAcxy8bDXCkjIIGMVvkQWyViPrcqO1YZNCkzZwh2WL?=
 =?us-ascii?Q?ts9mGJ/9kvBmQE+7u5cH3ijcxq6UftqxuPY/iYRjrbOZucY4LydWTOQNbfAH?=
 =?us-ascii?Q?qXuJmCXoMfMA2NX96+dpVKB2hDKd1AB9VaGvLgzdUzErrc6TjTpNTz34VcPG?=
 =?us-ascii?Q?vVkZDZ25ziP8Wac8qpv7FWbLcZ3rrsrgHPLz7Xuq2l4hxhQ/rls7Qj0/MdJx?=
 =?us-ascii?Q?4OEyhdoMqZd+Bgu2kSwCLqs513LcQb6kE4LKNsLTE7W04C3+jJk0kEBFbkW3?=
 =?us-ascii?Q?dco2u8GKZSr57kNNSimhump/spxhKxp53bk0hva8x79o0EHt+a+4gfta4efJ?=
 =?us-ascii?Q?FzcPhugeHrsd/y4H+bvktrbQUFl7GsgiDhUMgT1ZzeutZw1anu/PWcoJt4NC?=
 =?us-ascii?Q?s/E8NaCaXjdPQsUz5jFgQb+0gTRwsO1V9ZZwAu5GC+SYIQvBozMY86lzaBpH?=
 =?us-ascii?Q?FjJSdpqZ7wZEtiIQEgvOZIeTxWY3Rlp4cVetGodvBiSehPvLOqpl8aQbL+Lw?=
 =?us-ascii?Q?VPnAczEKqODBpd6Nblq2vJbm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 654732e4-7ac4-406f-6788-08d919cd49d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 07:19:34.5862
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iStgW7Vax4bkwQ0JSyIKyHiFitQ6tfjzpWlPHy+/oxAh91sowaIQIz+OvhPM+iNO7dc1m2PLr6FkXZ5erKyHig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2952
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.3.1.r=
c1. We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. Beaglebone

ETA for completion is next Thursday, May 20.


Thanks,
Sangeeta

> -----Original Message-----
> From: qa-build-notification@lists.yoctoproject.org <qa-build-
> notification@lists.yoctoproject.org> On Behalf Of Pokybuild User
> Sent: Monday, 17 May, 2021 9:47 PM
> To: yocto@lists.yoctoproject.org
> Cc: qa-build-notification@lists.yoctoproject.org
> Subject: [qa-build-notification] QA notification for completed autobuild=
er
> build (yocto-3.3.1.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.3.1.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.3.1.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: b67476d4758915db7a5d9f58bc903ae7501a1774
> meta-arm: 7ca13b4f15cc8f51d6c99b40b7ffafeb47dce28e
> meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
> meta-intel: 4d5791d9ff515ba1660234b1987eae4d4e90eeca
> meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
> oecore: efce6334bf122a64f63d46c1c04e3dbffe298c51
> poky: 05a8aad57ce250b124db16705acec557819905ae
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
>=20
>=20
>=20
>=20

