Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web08.439.1617055338181249880
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 15:02:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=MmGwjcUg;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 3xhqkMzNTFYxP4t6oe0QTg2dpg+vCDBk0U+caGpD11OlUZfpekXKLiOZk8ihTmkk+1ogszhTSH
 lDKRhHqLWJYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="171650303"
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; 
   d="scan'208";a="171650303"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2021 15:02:16 -0700
IronPort-SDR: 08rBzPOdu3sMtcNpv+JocZGUk9eMpblnoRY/4C0EDn/ociN+2i6zeM5B3gcQ5GPSf/AV+E46OL
 FUEDECOyfpHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,289,1610438400"; 
   d="scan'208";a="516188286"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2021 15:02:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 15:02:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 29 Mar 2021 15:02:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 29 Mar 2021 15:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=el+VhqoGB3jSyZt1JqBA5BOs4v0n1t0L+4nw3b014AGUXZuEmoHIC5V3Wdt6WcY8wPGM9Y/K0Xn8UYBhwm4GBoQNCWeWg0jtwac2zqluYmtydNQ9QqwyUfYgQBcE0WA4TnG6Ay+SDRjGF+SYsrNYg3PmpmEu3HJGIlpajPmRPh3HZwfB9VWM7UFj17oz4u6hgn8/tyooSn0XwK4ma9uFiQLz/58VR/wIa17+HTKACxkJy6dWf96sLgYLYxCj47xkpYWHvPVeS+ttJ4DadWOh3yfZ/AuYEr0keTuEXGaN5JlipU59zc7/t97umhXYcxpcDr2GzQLMtLVYaBbeceL+ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0kuGphhw8HlGcWHBkcVNClHCKcXxas/0L6TDkNoiEz4=;
 b=Ql7uV3a6i7kCnki/kn7gKPjM/6GyFHsNBzS1NxHQ3BmUsv1FNNqkOB+EprN7hnTOHLec2TFvIDBw8+ydFSPbTiG58ItgDNLIgJJ4yUkifojEabDdCQ0qKrjUN3hxjU5XanS2jBqT5Xh73IbWf74lrX+jPj7+Epe8yhcCGVwEx5yYDmF29f502cwLgWI3Js1YAffQax9DRzrwHGUNyvxluvXrTqmu0OGe8FXpkxbNDOyzD6QYRg2uTmqa7S11ep4bJ3tOGLb4y4kz0XaSIznlODJ+OkDtedJJ3kEhUGlUR4DeXikGheJ9R3lk97z2NHuocrArWquKgVJTYQalPQaMtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0kuGphhw8HlGcWHBkcVNClHCKcXxas/0L6TDkNoiEz4=;
 b=MmGwjcUgq0jUmbOHhk63nphnxS3/E7uMJ//aP6xpRZ9nNiMYl+957tQzHEOPVODM3kAw3VkIZuuq3od/elEDJTS6WZm83M2OkupqT1M3KRcCczgUbAsimI6Z1Mo+QGjQ1Uxj+DZP7iuknR4CfDhS3CJEtInAYCbVCtlEEALkboE=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB2951.namprd11.prod.outlook.com (2603:10b6:a03:90::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.32; Mon, 29 Mar
 2021 22:02:12 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1%7]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 22:02:11 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org'>, "'yocto@lists.yoctoproject.org'"
	<'yocto@lists.yoctoproject.org'>, "'yocto-request@eclists.intel.com"
	<'yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.3 (yocto-3.3_M3) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.3 (yocto-3.3_M3)
 now available
Thread-Index: Adck09nKM76R4+RDT8uJFBdtXHhEfg==
Date: Mon, 29 Mar 2021 22:02:11 +0000
Message-ID: <BYAPR11MB3301EBF1429A0845FA3169AC887E9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.154.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4daad4e-8f24-494f-2e68-08d8f2fe4e1b
x-ms-traffictypediagnostic: BYAPR11MB2951:
x-microsoft-antispam-prvs: <BYAPR11MB295189DFD1F8C4788231758E887E9@BYAPR11MB2951.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LcfxPoKskKfJCTyFYZR1Wg8JT4vz3eEJZObkQ6XM51T+uVXhBpp+M2LI1e/mkxUFaoOlWvP3X2CAmuaydgdoDm5c4a7NKwKcqw/OfsLgjFL9Z07PV57fVLJjVLLl8IG21YVq/DydxSlUEdMT3wTAWrTjGiOCNQuS5UCPeDLo/lMYwOzJCHtmd1OgK44fbqIqCztVOAl8+8bziFzg4N7u1WGc7shQjMlScOfjBg63WEcEPyCcARh+RtCvZ3Z3/790sNk+5+hWueRIYhqRTX6x1aFAgJ3bTo+YYR/34Hn9ibSsYUPIVJLEFJZacgtbXJt+Egx3+dgrUbqJMuzo6FEQCBovz8tcaIfIxLiKyaOBesMW9AVIph7qEU1dwFvUZmREz4z0FrU9lzQeXJSUbdHGTXI+kyNPGy4cTehBq8e2vb2KqwOdcWhmqM+siQfdq1Q4lsDeyG8PofmGfV1Jy4Jz2JeXkVfgPzzLpV060VyTN9hj3pnPp6KfSZ8xncXilLQlJtK4chPTxMEe2iJM2keBVfUur6t2sozEtRjfXDdjY3dWpfuagyYku9iEpmBHxCvSfNkLEuQi5wE9ZR/Bz/W7ra+E+8p5QHIfh4bnitwR179II85inu+TWq5HmdZXIIauc8tdFkwEACoOZKSrzYo9GyY2FGS5eeZKjricypmuf0hbxoRQB00ZflGHppTHQZ9j+gnh5TLq9WUIdhbxNJ7xNiRJ7L1fluYNwwSLTdTCRLNxLWhWlBDtUzNvyIgTr/Aq
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39860400002)(366004)(376002)(346002)(136003)(8676002)(38100700001)(33656002)(316002)(66946007)(7696005)(83380400001)(86362001)(8936002)(4744005)(6506007)(66476007)(64756008)(66556008)(186003)(71200400001)(966005)(478600001)(2906002)(76116006)(55016002)(5660300002)(9686003)(26005)(66446008)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?iHk52326bXb/diK9PYc+mnrgMuRgl2WdDwFxLZNdIhaCFS2WowyNeiZqHnEh?=
 =?us-ascii?Q?lfSYX1ikXh+GU7G692/VRlc6AZ0BLC7oP3qNXIxJQhTXppS5v5Qh6ENl1LNE?=
 =?us-ascii?Q?Dowww59gQ/soVu1jvm5a5qKuQxkQYuop254K0OEUrgIA7cvPggwD5tcf2BAt?=
 =?us-ascii?Q?SspfldwH8fEn3Q4RA/MFrGvYNlW1ohGTNLyvZkaSQjp+dD2fGvFBEW+aWqKl?=
 =?us-ascii?Q?m2w153XOjh+KeUu9BoJsclFO2P1eooAeGqpXMNTmM+U7NXcIDmU3uNKNAzEK?=
 =?us-ascii?Q?ipChhgffqGOQ+vDmZdenoFzGO/BmPqzYoQWig522roc1yX/L1IPBSSm2qvDW?=
 =?us-ascii?Q?K7FxdMDP1s7Kvugo1JIC/Atfu1K22dX3fDd+B2d8DpIk87FVpXfbw/W/vUtd?=
 =?us-ascii?Q?UZhOE7hOvqSQBg372ewaS6PS6xQvGCGE7vrfdc7TQeh9wW7GF8prUZpFaUIQ?=
 =?us-ascii?Q?o6oa6hH6ISyxXU5u6umr0/33+2GgZyoJrd8HK/Y2EQwd2qPavWR0E5OoxK9U?=
 =?us-ascii?Q?epBziCWMc27OHXiaUr7JPHNHffG3YIGJRr+7fiq0yh7uM5eAwQHG9o5HksBE?=
 =?us-ascii?Q?608Nnh7SBWwPD7OyVlAXe7rOVNrealrmaGYpeRTC/RNRw7JPFr9717mjPSBL?=
 =?us-ascii?Q?i0DvBjXvtvYCL/g8Ziq/D9BwQvNs5dwus76CuDOs4Xcv1JsaIYJdTJeEdGqs?=
 =?us-ascii?Q?JWXnl+6iQjfbP2mkiA5NluX/2JN9ucA2emK29QtEk0oC7L4gyEPX7dnl1IG/?=
 =?us-ascii?Q?72Y9kI0j6SDfu4AFfMpnH9/Qfp1XPlcarOb8LzKPNSAXSlDBMmUNsozqvVtH?=
 =?us-ascii?Q?640P8AV/S62kdG750hnjJOTGD9qmhgoM64IQjUrvWcosrXwO1JVTs7HU9vhi?=
 =?us-ascii?Q?ceAmUN11lP1w3kTCmgrV88867e0GSvRU7ZGHDwnVP0kKH1rtwXX5AZww6kcp?=
 =?us-ascii?Q?o2QQ6FbWQ20HqSnnF26TJJuwOWWSW5Caj2qRjofPa78vdupz8Y7jW6vNRts0?=
 =?us-ascii?Q?CXeSDuVu93pFk7hiljYjH5RrDBnxxmWFdgKFTepPkOArL3wQyqmBeOVjwJJ2?=
 =?us-ascii?Q?AYVVhxmS7XL9wh6farpza6/Ee6geBEwQ2vaG0A3Q/rrfpgEzGEOAADlZEKXW?=
 =?us-ascii?Q?weqM5v+9PqbfjowK2d6OyPOwZgOt6GS4fTqf6hoLhKVqdeSYx4gn8eqPMdaj?=
 =?us-ascii?Q?+f2CQXllszS4/afqp2punrvE/lRzTmMun5Ns/zFcyzEDqZNVpfjkf1dmWuI5?=
 =?us-ascii?Q?R5aAnDVjvE9KFMFa5UnyC3vmhvPHOi7nWkkWCQmRHp+UtItNMaX0oloi0uV5?=
 =?us-ascii?Q?zBZuJgVz2v+hyikYI8eJFvh4?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4daad4e-8f24-494f-2e68-08d8f2fe4e1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 22:02:11.7894
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qoqvp7VM5T3i65yrE7qHFycYFl48gVNBG0mrgZO7Sg1j6jQhBrCSHQm3altw1Lp6+wT8q4yIeFqZof6JsbDnB2ER0iEB+mQmi0XYBnWEcc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2951
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the third milestone release for Yocto Project 3.=
3 (yocto-3.3_M3) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M3

bitbake: ed8e1fd4cf9d5ac8a8203638add99d686b4b3521
meta-arm: ac1dc0b894642101a80235a920bdc3bbe6d74558
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 6fea44c695730129df8bd744b0e22ccd62a725c2
meta-kernel: 29329d7cacc71595cecfdd05a455a0cfb164564d
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
oecore: 7ae12e4278e98c5b916a1067ae0b48c2da6e82cd
poky: ea455ca8671d3bc2a1097989bfaabe92f3ca37ab

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.3_M3/te=
streport.txt

Thank you.

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
