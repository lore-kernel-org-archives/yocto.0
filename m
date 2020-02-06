Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web09.2988.1581021788288090587
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 12:43:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FQGKlCIw;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Feb 2020 12:43:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; 
   d="scan'208";a="430627385"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by fmsmga005.fm.intel.com with ESMTP; 06 Feb 2020 12:43:06 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 6 Feb 2020 12:43:06 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 6 Feb 2020 12:43:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 6 Feb 2020 12:42:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AoTvRNSNYWPICYGvgYdVYEld7gx3LfvaD6JPNOJ+t5kCsvfblgagPAV5EZGN9igi2CEjivXAvKzoG3+DfkDXgiQkHTUVYKkq9bNTnln0QGU1TMRma8S2oUsSsEqn70q9O+gmuAis/1gZTMjk+UQ9HnT7XQ8GYPvJe0Mr3oxMTcRBmaaDt3q9Lhm6ubXlwQ2mfiERowvsK0HpcFrNN8wk2xFH/DAaejT2hHwylyGyH17+LGXyzQRgb/Zw7Olh2/9x76n7g0bWz7iifX22OkHPhi2lLcXuFEL+PH8PFwjWTYW1CdC2iT34fYZgphlXiwFALaXKp/YH9Xwb+sG23r1hgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/BBcMgFmvkBuwnfbkFVlX0spkYsWLN7Jqnnu9nLFkhQ=;
 b=fIj67eG3Nlhfm3cqNNVoDpttH7UFtvCQ6RPZaCbgYAeWdgjGYFNg4GYdHb9oLJxkNwOAkcbEq/X9lvDywr1PoNRUVaaXXlCDMGSeVv7sTuGiiumt/lmdDvmowN9B3KxZSbN0vbWhz61vlM3VMFE+48o7lsxDkxugCEZFWitKlUSR9iBnd6YW/+j7iphBOaPsg99nLkSfBgQJv38tVM1yf0f1AN5V15FFaDMMHsd25K5XNhVveaHq0VHTtmgaGvwhdJASZ1X6SytvGBBTxoEwPsukt0bI7yNaCrZQgeQkpgAtT2EY1qy5HOzqZNF3iku4m1Ta2T5WfoDAjE4AqWMjlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/BBcMgFmvkBuwnfbkFVlX0spkYsWLN7Jqnnu9nLFkhQ=;
 b=FQGKlCIwJdntxwJRr2P5bEi+Kjz0kBdEDqLEyvSwRNHFrDUtIUJ+AKAPIQOK3WHwnIkTQ9umy3q5Di1qRryEt1pV1ybbDLICPFdnD4m10splg6qIs0/24DoR+DYdx08I+I3jLH6nx8n50xhJvvgqI7kMzGmo3PeYuLdI39js3mM=
Received: from MWHPR11MB0045.namprd11.prod.outlook.com (10.164.133.164) by
 MWHPR11MB1341.namprd11.prod.outlook.com (10.169.237.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Thu, 6 Feb 2020 20:42:56 +0000
Received: from MWHPR11MB0045.namprd11.prod.outlook.com
 ([fe80::854d:d58:9554:eaf7]) by MWHPR11MB0045.namprd11.prod.outlook.com
 ([fe80::854d:d58:9554:eaf7%4]) with mapi id 15.20.2686.036; Thu, 6 Feb 2020
 20:42:56 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.1 (yocto-3.1_M2) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 2 for Yocto Project 3.1 (yocto-3.1_M2)
 now available
Thread-Index: AdXdLZt97znpRjxGTPyaSg0Lbahoxw==
Date: Thu, 6 Feb 2020 20:42:56 +0000
Message-ID: <MWHPR11MB0045AACF69CEBF5B040348B7881D0@MWHPR11MB0045.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjUyNjgzYTMtNGRmOC00NmQ3LWIwNTItYTE5MDFjYjY2YTUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVTRcLzB0M04wUm9VWkY1R3ZzK3h5Z1BiYXVNQVYraFlxdVJUWDhXTktpNVFMbHk5cDl3M1wva2dMZjRKZTVZbllYIn0=
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f8f5209-ff0f-4187-ac6f-08d7ab452567
x-ms-traffictypediagnostic: MWHPR11MB1341:
x-microsoft-antispam-prvs: <MWHPR11MB13418D099741ED186AB650EF881D0@MWHPR11MB1341.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(366004)(376002)(136003)(39860400002)(396003)(199004)(189003)(8676002)(33656002)(66476007)(186003)(316002)(66446008)(66556008)(64756008)(66946007)(4744005)(26005)(76116006)(81156014)(110136005)(81166006)(8936002)(55016002)(9686003)(478600001)(7696005)(52536014)(5660300002)(86362001)(2906002)(6506007)(966005)(71200400001)(491001);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR11MB1341;H:MWHPR11MB0045.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C9HZ7spS3si4Kv6NilnCWIGkUY6KidicjSFFrG2E0AoEqKUJ8yPl4Ck+mPGi9+Qsnc7ZlM0nPA6hYIIzhUzJ7uNM3ex9tDIGYRDi1EJQYopijPq/nHFco7qso3hRRhXJT5MULLBp9G1iZ0Ufk/6q73XmA+hSLPRpaU390683MpAApGI/S5hud4B9Bcp2bhelB5guci1cd6F9ySER7spQlo3sz6X0tym8QTbPPTqgS/+pZPLz3a3jFxV/OjN1w8Tc4dqG2pUBPOLpWVieKUDAzuIOCiVD1om3oKUOE4pVFuLmTMKDTVbMJltJo4FKNsO0/4p/4L13EW9pTkZ9pomTxBLCQy7UykISUEfWxtP/CDNu6hN/TbaAUALIAl0KhLeD8MsdQwLnlHUoWFl/5nEblHF0yI+EW+vfIhQXK7aG4Rkf9GJHvBqawa0L1qw4mDsSnovdu8uP0Js9AvAtS+vX6P3ViuiCziTsmsJV3vkY6sB+FiszKNdp2K85Wr7f7ZVPsNbGif8z/K+PPBKc89oNV+nqJrqLIS4GQJurat8i/S0iH5g1OtNhsd7DxWN62wR7
x-ms-exchange-antispam-messagedata: QO3ob8BPzD02IwBq4IlaE3ojWR6Vo6MMYtufcQLEMOGWQ8OJZMUFeC9WOFsYk5bZI2sHZNBGoFa7ibH3I2XVTxUrTc8jSACwRmh84QEPfFHF+8AEBW9jVzHdFcZu6Z/7fUHV3i1coCzWqS1TKwz7zg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f8f5209-ff0f-4187-ac6f-08d7ab452567
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 20:42:56.2360
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9rt9mHNmBT+orrqdcMexR+RV2SlMwcVxdnNx1K22Hq7xkEwkJLReZgPSaOTQxAy+ylnYIptgNVFeYMg55zMZ58MMLyQmcluKpO11uzfqJPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1341
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the second milestone release for Yocto Project 3=
.1 (yocto-3.1_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2

bitbake: d5a4a352723258b4d499d3a51f340109c4f36f60
meta-gplv2: 6107be140fdec204586850ea1f7e4b968be7670b
meta-intel: 0c092dde58bb688dca787c653ee7a3282d58aeab
meta-mingw: e3dadc9f28c24a8d182121d0246b3d9ec048846a
oecore: 15049c610bcfd0a3e161379651b5ea117ea02715
poky: ca3993cc4b13d4e661228cee6fb9448adfd0a4ba

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2/te=
streport.txt

Thank you.

Vineela Tummalapalli
vineela.tummalapalli@intel.com
Yocto Project Build and Release

