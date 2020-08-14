Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web11.896.1597441367440111486
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Aug 2020 14:42:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=gtTIkt2B;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: WNpjaRKueDvajEC7NPC04E8lKS/RWlZFvOov56lhowgOTeJIM3T0LbwGGg9PuTaMeVM0krAEzg
 sVzu/Tr32XvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="153737761"
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; 
   d="scan'208";a="153737761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2020 14:42:45 -0700
IronPort-SDR: V/e5XWQCiQQxhL4KmCSXfsbD8bRY5SVaI7Eu84szRdYtoom/HdckyBDq7C2IHHbckDaylhWFne
 xDWf/NAUhWig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; 
   d="scan'208";a="295874039"
Received: from orsmsx605-2.jf.intel.com (HELO ORSMSX605.amr.corp.intel.com) ([10.22.229.85])
  by orsmga006.jf.intel.com with ESMTP; 14 Aug 2020 14:42:45 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Aug 2020 14:42:44 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 14 Aug 2020 14:42:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Aug 2020 14:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTFAoU2n2vNYNvmRFB5nn1NEWLMxRt/abOOIJ8LQNiU1Dx+y3cPB/dzGOS7yvwMaAmLKRjOTLnHjJDVFePqGNVu6UxraKFQ8v1miDVbC70TyKpRNGvGgEKPINZ/ZGzcKlAyuHKTWU65HYZkph0Uc0IY6J5WKHVguB6IMWvhkh3WhKHFyKYI4jGOxOoXNsn+obWl50Il28uUu8WloAgFcHyUhvJVUoypDfKIELkEX7Iu9OUJJ2nxDrTC3Gw3d5suWIOWvX/H7o2QTS3l7sOviuYLqqTR3REH5eq+v89xlLO2FLcSoYHrtDcLi7GfmdV/p6Bbx2EYwhCyhL7TCTBJHDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ne3ws3Kz0z6fBTwpFSMpAZdamuCZKwdOKBAFJq89S9Y=;
 b=HQGsMdIoT4bXAPb1P40m50/v2GlehBdMRYxKnJs/2YInHh8ew6GGxbkgJ/Y/DVu75/gn0WOfFPJKH+0cc6bZ1B01p/+xNXpDG8zESzlzHaX1shjuboWzofBla+jaRYYlMHKazXI7iB2SUz5LTxbdoADOlNqjmPrijHdvrc/Zdu1f9Hs20Iu4oRKFspKPqRsMlw4o/x8oTbQS/5Yv+Bwzs712v6E0Fls4e+MCKqpMk9DDOkWOaBl7laN3Eh+m8aRpyJ+LOdNtFYsgRTPM1DEt4PNSNBNkABaEBZp5q8YZ5J2j90+I8/5Gv/QtCoUbHBQLFg2ORauiQGmxuEvxoUuq1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ne3ws3Kz0z6fBTwpFSMpAZdamuCZKwdOKBAFJq89S9Y=;
 b=gtTIkt2BBXQtFFcciLoXMUzfjrRwZnndxvtlyv6FzO/mQWhB1NMRi2GRy9b0Nt9jd6YRAn2HKaWMdXLvh+ESLZW0M+aLPSFoJOxOiz55FG/2CcU+sXne2ztG73r4tK5PrhI9iX0LBee7ZfkoKR93Zky7A22TleFvhZmBgwgfBng=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3654.namprd11.prod.outlook.com (2603:10b6:a03:b2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.22; Fri, 14 Aug
 2020 21:42:42 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866%7]) with mapi id 15.20.3283.020; Fri, 14 Aug 2020
 21:42:41 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.2 (yocto-3.2_M2) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.2 (yocto-3.2_M2)
 now available
Thread-Index: AdZygqQCdRjA6nTtR42/vB+LeVKIPg==
Date: Fri, 14 Aug 2020 21:42:41 +0000
Message-ID: <BYAPR11MB279021895937C6690CADC23588400@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.234.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 067586c7-446e-4946-11f4-08d8409af8ff
x-ms-traffictypediagnostic: BYAPR11MB3654:
x-microsoft-antispam-prvs: <BYAPR11MB3654853361F92AA92721E5FA88400@BYAPR11MB3654.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YuQRSuMZLIxNHzbHh7pfFoc5500nu1A+dRIA5cKyvbLWpwuuMZXnZnsIH4p/lFXU7uhlldOP/bANdpdEV22PqLMWk/yxgPWHydikytIFovea0hNUJr3aXRpWBb53voFBU+DLVncAHlzvN07Xz5QcYQxtIcwbBsPpHqqieQLPKRL6S37FJbWR+w4nJU3oY347JCKLAl87UtrUIJ91z93coeTPQd2BEETFfS4tFSLPM1VaGPGEIU8FpyDKLSeRLlGacmIDq32cwo+XVt9Lgg+gBXu+gmZVP7UcfWLaDdXBZFBbK74aU8lRArxvOMr3xe735ezuKJGeY4LTSnaOkcrqRCa4psTDygVLEE9Fr+RAgieb83weG4EIR7gXS411vmXE2sUIgjytpmgXvPgI/EpUdd/FwP5A40u2Io2D4+D1tD+xsuONSZ8kSncSqw5m1n9w
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(6506007)(71200400001)(26005)(7696005)(8936002)(478600001)(8676002)(966005)(316002)(110136005)(83380400001)(186003)(4744005)(55016002)(2906002)(9686003)(66946007)(66556008)(64756008)(66476007)(66446008)(76116006)(5660300002)(33656002)(86362001)(52536014)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: CDlk6AhTZJOskZi0UHLju9eBYRn2DPVgswWo0tKFNT8ukSecvhff9FAb597Onocl8JeXdeP7RXf8e/V8ot/BsLQXFbJk1VOjrkKJcY9hjRIR9d64ud5blPDf4Cs+bfkn+jCnQUT3QuIpIM1gK/y5DbQiJI9ey2HFxkKq8yqRPpEAee/qi38sWE4Eg3gdmjzBjY17C7iE+rAW/8x4o0o5o9Iv49n1HmjxXAW63hMO0m46M6SKpyCG/zzu9N6rCjD4KuK1jgbE6L27dlfY8WwKlgNh2eD9i7Dv8qsVV8oEXqrhOt+hONYCYF90wvjdU72dBRJQtBFP843IGPWI/ZJU6IcGIidyiFkMgs0MOYsWbVTatdCXy5ooU4Ck8JbmQHoSBb5B7hzSM6ZhCYKMrloAqxeQg12PAqwZEU4Ea9rR6urMHmxm7IGzHJXLk7+5WSeIjsB2e2Q+FXUvpkBAq/PQUVBdoju7SibLrfRbnorrriw1VtngJOSCcGkPvqwtOcs9y5hjdADQDFQmyFSK/2mPNVDLu8jvmZnuWbRbDbEDhQ5GYqWeoT8sqXjklTeoJnNd+P5luGYn6Dr/gLSZTq6c7DGVAYot+rlHTB6lC+3iWtZkRJAGp7Xd87CLoVHnTtUuJtccwygkjY30z5E4CXDQxQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 067586c7-446e-4946-11f4-08d8409af8ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 21:42:41.7833
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q+okcc1MVjjkzAGAWW3udsi0vVPxx9Q5RaahUubNQoGZOp+E3Btf3xRHV8O6ZP3W/JLZz6g2BSvr6pvHnKHpGRm6ZWekDFREpSFFL1n77UY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3654
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the second milestone release for Yocto Project 3=
.2 (yocto-3.2_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M2

bitbake: 91b809a0902ffd42be4edf7f0a7d25e6d354d822
meta-arm: 5ceb140f37195c1837b377828d13de3f9a351ffd
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: 31840bc6cf6e1d86ef911ea214da2169a3c885ca
meta-kernel: 58a589c5aad5417abd099a961e3c1a5b083cdb90
meta-mingw: c8a0d13a5525fb4acc6da9793ad102b4fc5c141b
oecore: cdbd47dd7e1657b91b65a0940b7cbf119764240f
poky: 20e9df57217c5f37817653d2c3d492f2d4d37623

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M2/te=
streport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
