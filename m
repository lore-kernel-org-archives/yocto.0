Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.5291.1590636891226148663
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 20:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ScB6z9cc;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: gbPYyrp1Z6yd3fF6BmfPcDntt9EGEXpEjZBw7Lh3wHWKXfKQLu8CN4iJGnCXDg8jA7K/c0CWQA
 ad8tm1es3bYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2020 20:34:50 -0700
IronPort-SDR: pxr881pZcOd6QzJqQ6+ctNxMaLW6tsRIq0k+ZQrvbOMUl85e3jW+ZMjr+LxkCtkKbYhQNJRveX
 8Mp3VAwkTivQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; 
   d="scan'208";a="267070955"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by orsmga003.jf.intel.com with ESMTP; 27 May 2020 20:34:50 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 20:34:49 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX125.amr.corp.intel.com (10.22.240.125) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 20:34:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 20:34:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYupLwFQIvUNc9Yz2ksyDGC/DBVRpWnEWgkW2CZLFVswhSC42kwcgb1bCYNNQnElfRU9+1hV6dEf6+OFwj7cMzJ00zxKlQUdy+kVdhWbHSqpAz9r7gPtB9/x37GTrw5q5yeHwywSDCpMbA1npUZjP6bsLuMKAI/9VsZm4Ha/Rbteus3+wHE3aF3jqePTVpDwy5Ptv4/XfXMzD0BGk/pvMJozGEI/W2wFcwdKcybAvqpNLI4xS6yT0pi36FLpBzJt5BkUkepxrJ+pvwGTZkIAuUvSuj1cf6SAFquik7XLbJLqxx1TEdHd1yw8SaajdA3S0S8K00dI43RPonh3OSGddg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14koB8cw7ULU4s4L6xnUtWScRPQGJ0xzcNbAr/f6ctk=;
 b=FaAHek20RIcE1SECaTIOgIUUkzrodYWjw+O/2EeQgoFeVbGnyyatIYbMUwEUQvrmITZQLu7cWebMurXluRjcdfokr5dhvTmIDcXsH2j3b24q35IDtR7VV+ZuVc5FrQ+PFbf8vJr8z0AyCp+b0j6bDKUiQKBegALI2m9es/1Fi0LScEVoGjgc3JsHFJ0Dffm3GrSOcP7gasQVQmxSnYSw0NrpclM4U8B92czF+uDw7xgarF7+0A7h+p46V0VKPEMO5naVJSg5fCijEuddLM26wB5sPiN7rNGu4hBHpmHN2HYszE0FCyKLJOPBq+2jO+LcG7VO4C49xWxIcDmYyd80Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14koB8cw7ULU4s4L6xnUtWScRPQGJ0xzcNbAr/f6ctk=;
 b=ScB6z9ccv9bE8+DqECBC3xY1RVaDj6pttmFgVWtggNG/7cTTXdC3LnWzsyq4vjQ5SzzU9BQZLUptfPFEAl9nYu6DLGbDmbbG1xZKr7rFOn4Kq09OwRA8pFaMy096j5zyUXKzqNquQPwLxK7H6R4QfU/lmGtaRFgpJlt+BZnUUKs=
Received: from BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 by BY5PR11MB4467.namprd11.prod.outlook.com (2603:10b6:a03:1b9::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Thu, 28 May
 2020 03:34:48 +0000
Received: from BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d]) by BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d%3]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 03:34:48 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-2.7.4.rc2)
Thread-Index: AQHWNB/JK78jnAHi60uAJlLN1pYls6i82QIw
Date: Thu, 28 May 2020 03:34:48 +0000
Message-ID: <BY5PR11MB4037EFD510C51AFE063EAA3FE38E0@BY5PR11MB4037.namprd11.prod.outlook.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
In-Reply-To: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [192.198.147.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4447f592-58cb-447f-8004-08d802b812e0
x-ms-traffictypediagnostic: BY5PR11MB4467:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44674B52C1EA29E80EF9E92CE38E0@BY5PR11MB4467.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1KzoEZ6CpfATG30INEEeNhgBgUTTyJR3T+kGqlj6sznc0YQ+dCoxZXUZmM1/WRgk5KoCLMw8OZgGKvs+8OweS38s9Z3+KVU+GyuZrQfCna9BbEHcX422wB4CZz0t7hrALlCoFBDtjsNZkdPYkqr58VQSLuXle8NYeBWDQAY29nLgngwpBWjUL+mWdCTuKqsfeu+rMgy0XOFb6HIBFX/FcikqJSwuA0UKUkItq4PkwQtbMtLcCuMFYS9pCb8KBo7tHfvVH8Osu/ClMDAi8Drxv9eZd7gVR+0Rp5mgOGxv3PNgTZWwwcgmdUQTfZgA7bHZ4hF811Q+Hmrq7n7c3zemOyk4q4QJ1rwWGephh226h2BO2NLv0h1xoBeqmDxdbucDzjU7Cpp8j4HKk01hFA47Hw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4037.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(346002)(376002)(39860400002)(136003)(396003)(33656002)(15650500001)(54906003)(4326008)(5660300002)(86362001)(8676002)(8936002)(316002)(966005)(52536014)(83380400001)(6506007)(186003)(66476007)(53546011)(55016002)(9686003)(26005)(71200400001)(66446008)(76116006)(478600001)(7696005)(66556008)(2906002)(64756008)(66946007)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 0tYUJrRuyZ7z4bqJf7jinSCdrQQ2REtiiis2OPZXO3D01VEk0/QPUw33DKWdBWMLZ7H7XuqVaJmX78zD7h32APREKo9u3D8niw/lk+Df+6U8UAjUtL6m4rQzVHsFYl2kbhMFeU0WTvV0Fd9x0/PvXxuWQRtrhMrMEdTC7i9TuaEPbYm9UaC24yqw+sLyjP5PaxFafs2M7lHAi91kSvnDgqTki9FBK1VF/k6qn7D8agm1B/rasuAuqNJOtqhcdzARmpWlzuInAtJDvr5kASOHQx8yRiSj3R3ODOtj3fDHPmL02v+OCh6lWwOnv1TZNzwk8PU2loRAtvyHM9B9OPdkcgkiIagitMsSnlxOfkLuzR7QXId2dK7/mL4T4c+nhgD2XijFzNEy4ePz7LqxNyJnLCgx52TAK67x4exCvILXS4PDtB60FbX6qjx9okf5MpjTtA/VR/QoyHHp+GUxT5xSlCMpwGCaipro1EJdhbMZzyM/QFPEKVuuIXGb4lgBimMr
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4447f592-58cb-447f-8004-08d802b812e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 03:34:48.5116
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIvudVO+onynBOXHi1fqTYVhcZm6cGLqCwAZ2Yv6t0ZZarXF1OKV/uG7xEGLWK5pfataCpbtmBgTOVrGxhu4tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4467
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.4.rc=
2. We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone

ETA for completion is Monday, June 01.

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of pokybuild@ubuntu1804-ty-1.yocto.io
> Sent: Wednesday, 27 May, 2020 8:09 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 2.7.4.rc2)
>=20
>=20
> A build flagged for QA (yocto-2.7.4.rc2) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: 7f7126211170439ac1d7d72e980786ce0edb7bb7
> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
> meta-intel: 29ee4852a05931dcf856670d9d8a3c3077a40fe8
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: db3ce703d03b18e8a4120969d32ff7f344f34fe9
> poky: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
