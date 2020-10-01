Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.3934.1601584984729802400
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 13:43:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=lk7kmwW0;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: oz4z+sc5SiEQrS86By+8Rh/qTRGJMJZ3Xe3jsPFVKXNeJ8kv6Tm4flADNejhkKABDRF6E5pjeF
 wOQY3IeugzbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162909340"
X-IronPort-AV: E=Sophos;i="5.77,325,1596524400"; 
   d="scan'208";a="162909340"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 13:43:02 -0700
IronPort-SDR: k/f0i9qG4gpU/PsgQfSt0Xs9xA5ZmBBviW8QEgvnjrB2yfsXRdp0QFB39w82yTqE6Yuvsn7biZ
 I8Mf4iCO+qdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,325,1596524400"; 
   d="scan'208";a="295117873"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga008.fm.intel.com with ESMTP; 01 Oct 2020 13:43:02 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Oct 2020 13:43:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Oct 2020 13:43:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 1 Oct 2020 13:43:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 1 Oct 2020 13:43:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b1R4iPXAQKwJ80UgcftoQMMAC122sI1lMJs5DiDBEAHysIwcBsMmcWO0RnLo6EBbtw7V3Z3q/TActhYlcwmrq7k1ZDeqvGbLm9cFaL6DMinOLLxZUgmrAOR10xjSRSn1/8qPrdVoHzpAPviTOEpQj4wgblm3oBgTDuVtR5jMrATl1spwkU1jbj411B4DTh+w0enNBAdljGkRZVEXoDwSQcOq+zYuoSANwzLk0ygdjWnMaUGJn/1SpgPMj149kKMYS1bhZMyibk1MXi+JOorsDuHnI9+jhU+gMap1L4nCV3aZljHiq72Q2kpAtGBeIyuDBMTjPtPrpkc67JJ3lVluuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YD28YQPjjMqqLpy9jQPO01IIekPlp2CVCYeBzK7Gjlw=;
 b=azy0+5z/jiI1ZmTMbHs+Q+T0nejGIUlIydTGN5OeUegMiRM6+vGdMIQeqApAdaIpoagXHDtTv6CmWN6wTaW0p5YQKmb8gVsmRbd6+bUfhoDuRK5j9t+A2BZs6un7B6pIVF3FAosOoegobgilf1R1I39RYffow0Y7AuGfmMyL5SrjtYJeIzC6Ad6LPSZsIjcYP9jsc+fKtzMIiSOWt/pAbTlyMWqWoVusgYw0X7r3Rnvt3h88Tbr1xU4IBtaThBiCTiFghhdN1KtCD2gkqAuc8ck3+EBXPpiRpgh3KzrYCVvCda60U5WFXPcIbnzV9NH/JnimnzuaYSKxRMLzs3gRRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YD28YQPjjMqqLpy9jQPO01IIekPlp2CVCYeBzK7Gjlw=;
 b=lk7kmwW0lEBDorj3GqCk48O6eKLEaVnJDaXhG8/JInRFQNXLIAb/T/ii1nbnCxyk711kc4b9GquWbqDkaUmt9Jj4LR7I2xdsN56QtVXEjbc8jOyiXFarpAE76WsQc8Wc88MOAwW2Y9rwWU5UR0GbK6+DzxBw7BAWKDddI1/kA54=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB2582.namprd11.prod.outlook.com (2603:10b6:a02:cb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Thu, 1 Oct
 2020 20:42:59 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::dbf:adc2:f05a:168]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::dbf:adc2:f05a:168%3]) with mapi id 15.20.3433.032; Thu, 1 Oct 2020
 20:42:59 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.2 (yocto-3.2_M3)
Thread-Topic: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.2 (yocto-3.2_M3)
Thread-Index: AdaYMydOQUj6SizHRJ2pkJk7oisjuw==
Date: Thu, 1 Oct 2020 20:42:59 +0000
Message-ID: <BYAPR11MB2790D3A7FC0B60991C9A5DB888300@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.184.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4cf989f5-6ba3-48d3-992a-08d8664a95ae
x-ms-traffictypediagnostic: BYAPR11MB2582:
x-microsoft-antispam-prvs: <BYAPR11MB25826FF7D07D27DE0E1F3ED488300@BYAPR11MB2582.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LImxWJDL2ryoPGa6u08ru7OTatI0rYQrktOnnd56E0mqTUdmrL3Y7KFTAR0bi1dxCY5cJseoUzMXIAMXtypLHwV4XbzhWHguYpQDmfgmjbLnB+QjKM8yeiyqrwgHEiqHDuicYeC9VkyxVBO73whcYb6WbSdJeNRoxweubevnbyqVUA8tTv5zdNEwSQ+JF4+XiPY88jhZo0ieYa3NWFgBfZdn/Ra4kN929N5y8MefgprEep77ywngO1AnuGhrNoWjz8cyogr9zM38nqLc27hce0vXfy7qLjvUzRqURhSsBaXy9caIfs4wYlh1X5vh8xJyr2fXH4Ge3k0Mp+8XSuONRxh/EwPkX8WOgyscV6ZY2h9Mch4d651BkgjWFMBB61Tp7hhiyVqcQj3RANTVmZRrPYRnNldOrvTjVskdiffGE2k5AJd4mQ/9zR8vZkke0zevVo2v3rzyH/Tp4mGVPfFCZQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(39860400002)(366004)(136003)(396003)(5660300002)(52536014)(83380400001)(9686003)(66446008)(33656002)(7696005)(2906002)(478600001)(8936002)(110136005)(4744005)(316002)(83080400001)(186003)(66476007)(66556008)(966005)(64756008)(66946007)(76116006)(71200400001)(26005)(55016002)(86362001)(6506007)(8676002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 1DA3yGqs669Bsf4V1+k6tDxUqoq0wRF6xKCdo4ZoNtO6yqbiI38QW09fUiI+/Cma0auhtSuRtKku5BtK+C/GS58cByzWyHHHYDOSclkQbmi5hEP3UT8p3nf1rdwMIwweEb0pey9hLCT4ZQselvjfxgGXj+ruw8KKkVgoVLviby5WcGc+JjFsr8fkeOlP01wMsPWKhER0yibpyOrKtmEz2JxOHGlOBh9cg6Yue6sTU8+4W9IolgZZKH4/EpoCEvNdmn/LyuyYdn3sp4/uFw+Z1knO5d9V78suyuZ1/Q0dK5AKqC83hwpMJu9HQX3lVdaNacCc7c39XHW9vzSi+l9CLWLr/FjScAW+lXPHy9iuYDUYyuDIHx+LGNsOPMagoxxVaH/ADM/d2S39fkvhzoY6jcq7kY7a46RQjrgwv6wjIK/WTe+6Wkd4Zwd49Ek73sjqlWktfTux6LmBpxVv9SQYZYxcVD4CxF677jutHSE3PRktYtFZNCE2Nz68E3ACbCcBqchQcuU4ergcb9630vYVrDzJSpwv6HdpbFpH+dTB17o5F6jg58Mp+Ltvi9bbeSM1A4cFoR+v8cn+8S2h7dZT2dbqEx33mcF7imzamV/37RM2hsOi/OD6r1Ab3orSZIIZTmLDL+o57HGgZHhH1AUFfQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf989f5-6ba3-48d3-992a-08d8664a95ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2020 20:42:59.6296
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fBwWULu9hgv3gUvV/M2dzhwAVGixp69CXCYbSY9/qTPSBxl1gOJT2Ww5gamYWbegO2neqwP73mNSGXW4LQSbed1ZXDE+vv0iWXX9Yzwnd9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2582
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the third milestone release for Yocto Project 3.=
2 (yocto-3.2_M3) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M3

bitbake: 27b53186fa67d281d29b2f8e15bcff8dc2557b8a
meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: 254e3a79b3a37045f829848e0a5e04801bec1439
meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
meta-mingw: f1e1d5a803a48ed70f2b0eaf0ef15ade70479fce
oecore: e68df923e1bf9e82662ee2619ac9e2f239e8f7be
poky: 0a243cd21263f498b6eca7c0b168e655dd823e22

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M3/te=
streport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
