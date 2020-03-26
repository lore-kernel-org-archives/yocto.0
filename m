Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.2067.1585260497488409916
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 15:08:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Bw559MA5;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: uLD9ZM0UPzRiKSvt5s0WWjPvP3cHNzp012E7Iv8nf9AUAUIz0KvUSUiLomuQuFuqCpjr//sobE
 lICXY7ZJ42YQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 15:08:16 -0700
IronPort-SDR: KZB1Hv/IoA5ic6ic/tXM7gxtlwYHthoaKXBP8J/wZclEuqOK666Ld29KBXXz+14P0hpqcVlHb5
 1UebSgaqYI5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; 
   d="scan'208";a="238930609"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga007.fm.intel.com with ESMTP; 26 Mar 2020 15:08:16 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 15:08:16 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 15:08:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 15:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hv0HaeBzvrEFwIbZDjPlhN2CycH3lzQQZc7o+LzzfVEHsrc6QFHupV0MkOnnm2cxfGiQkTHl95i5h81M2U02qs8uIHLUZPu7DS8vs7EWpnbfomzH+owNg6Czz0j4Sd9+mz2WmyazrvqWU05llD5festy8u+js72/L34L2Jr2EewRhChtYf7OxXwyUOE1gnWw/orFKseV8bXZl1Rs8aRcYerczImBpxdr02J4H/SqBuu0CnnDTiW75dwLCyzE4n4/DoHEU0ylIFFb0U1gOpZRE0M6wvhNs2Cp0ixe1rfTSw8sMOnQn4T3oucV6Me5gnGs8IpOAFReoQj08m3MW7AMnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7jgu8beIwYZ7Y3NZt6XNIXFC77Rw5lPZTubZ916+Gs=;
 b=gSewmnPJGu6MXxMxmQGie94+WVfD8/rAugJlF4vm6lh5cVxw7NEvXcFgEhLKXy95Ot+sVCJuhYm5GOgCWeLDKx3OUF/Ax5LblF6IcDEgFceWUILJfic3OHvn5O02hOxtXUXzIlzS1Zhmy7/H2SrmU7EdUE3LllHvCENFItqbao0VrHEy2TcDOPXcal+LfNj8i3tJgCNpPCEq39MvU+YgQCv3FtxXldyEfvbiJ3b3536tJ+s8dXFdZ266quLMKHmoBk1Rk3UiN+L8ZEitTcicWVGhiKxCwI+B80lD5N0xXPqFvkqJAduV3RNW6WecaFR5oCZ0TIEq/EGieHRgOavSUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7jgu8beIwYZ7Y3NZt6XNIXFC77Rw5lPZTubZ916+Gs=;
 b=Bw559MA5bSRivedx3IIP4bnnCaknWTymLH/TFmiOglLo65sUN0A/mr/1Ji8hmnhU96Ea7Cm2g7HAo2k/Lfkvd9PvRQsizQG78d8lLpcb0Pgqg2DLDB8gy7hMPmbpz977MjPi+NMQJXixButa64KJ5/pS5HxpMDrC//zT5Li6TvQ=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3416.namprd11.prod.outlook.com (2603:10b6:a03:90::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.23; Thu, 26 Mar
 2020 22:08:14 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::e86f:2402:8bde:d6c]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::e86f:2402:8bde:d6c%7]) with mapi id 15.20.2835.025; Thu, 26 Mar 2020
 22:08:14 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.1 (yocto-3.1_M3) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.1 (yocto-3.1_M3)
 now available
Thread-Index: AdYDq/R9YQCoG4CySWmsez59BYcb7Q==
Date: Thu, 26 Mar 2020 22:08:13 +0000
Message-ID: <BYAPR11MB2790A87C90CA2C306668F10088CF0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [134.134.136.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 147f666e-8499-43f8-4eed-08d7d1d22df6
x-ms-traffictypediagnostic: BYAPR11MB3416:
x-microsoft-antispam-prvs: <BYAPR11MB341631D60077637C6EE46F0588CF0@BYAPR11MB3416.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(396003)(366004)(136003)(39860400002)(376002)(316002)(64756008)(81156014)(966005)(8676002)(81166006)(52536014)(86362001)(66946007)(33656002)(76116006)(186003)(26005)(66476007)(478600001)(8936002)(66446008)(66556008)(6506007)(5660300002)(110136005)(2906002)(7696005)(55016002)(71200400001)(9686003)(4744005)(491001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR11MB3416;H:BYAPR11MB2790.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VC9Edj0lOEUtc8fji1RDME8KKwcz5o+2I3UwkVTuskUM/0k2V3KZ/FWWErEjGcp08S0ftKtnNkzf1NhyUH5cET98BRAhU23kMzPSiVyVKhpD+UiKesQ3xVsgBiHdDpv2HY98ttYhScrSvC3tEC/4Rs5w96tBWiz19GPIItVWhSY88McsSElYydDgiHsZ3sktNvVtLW0MjnTjwFinPIDBy4HWgW1wIWRlN+f9d6QaxlrSSulZc2JIS9W9n+JB0d2Q5BIxsfRTrD+j8HJHV8sJUtg+1dU2u9Yn+eX6ojWgxB5aO1PqyEkeP6QqqoWXabtCFluBb7pzuHtZnloHfxeJy2GCwcG0wBYZLTdUzdj7F7ffXqZhHgo+0HWKKORLDSYFW6p1a2WVxNXQELkTXI04Hh7MZUGBZEYh6xRqnVd2dkW5MdOdY4h7GQnd00L+1mJACw90TqZsNCvH13WZeP8cD36jaPJHAZpHI3toq71OoUujj7J0BGb3nBAkrLiXldsDDBWRzqEPzDysDZYi3ruS98XgPzYUHLptsFIcengEvBJ+1QGqfzcOoDnxgqIRbpWW
x-ms-exchange-antispam-messagedata: H3NxlKkuJBw03RzKja9LCPcElyCQ+VS5gVuD5IyHZXEkvSF6dPestbnQAMMIi1iwzGb2mqJ+fbNoc32Me2XixqpwhXK9bB2cdFd7AUvqYNepOxhQRH/WzZA4fb1ZmjG6J4SK3BZ1cvu5er1KmSmpcA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 147f666e-8499-43f8-4eed-08d7d1d22df6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 22:08:13.9009
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u3mClBR0JWBHnlQdjF/D4xsiidKw+2Qc2u6PfkvABTh+stwMzKtngn9kLNU6c1jKLUh+n36F+a0DE5pReWN0b+0/zT0ADipyw4XhxYoMAao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3416
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the third milestone release for Yocto Project 3.=
1 (yocto-3.1_M3) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3

bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 60773e8496370d821309e00f2c312128a130c22b
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/te=
streport.txt

From 3.1_M3, the checksum used is moved from md5sum to sha256.

Thank you.

Vineela Tummalapalli
vineela.tummalapalli@intel.com
Yocto Project Build and Release
