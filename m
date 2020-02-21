Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.11820.1582306011819290719
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:26:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=iy0ttEkh;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2020 09:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,469,1574150400"; 
   d="scan'208";a="229256068"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
  by fmsmga007.fm.intel.com with ESMTP; 21 Feb 2020 09:26:51 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 09:26:50 -0800
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 09:26:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 09:26:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMa1zxpnmm2v7kSncqkuQbQrWnn1rT73wH8CcXL6XWEZ45i6p7N9ikzqyAKizSGK6U9Vz8+Hvb/pQKQ86Alkau01u2ISvs79vLjRqyXHIQnrFeB4jBU3UEJl25/7y9G1my9Dx6PJXEGRsLcOTZxZAmZYqvyhDZNlrDFXKda7qmeL5iDrDu0IKZOFJjlKsTlSvc+/Cmj1WESRprUxc1/j9eeVtVC+1rio0B3GCjvtyyz3i8dFNpgzRLxvqFsFNnrbNTQ+DLhfmiUGOSs1ykqrB6/jMDoDDNn1iA/YznchYYHbrk3wZMrM5QValRnD/QGAdE+MPevtmeyFPrniU6ZuFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6DAZAMFLDVPG3CnlYCzWtyXpH+LgzGjpfYXgPkz8s0=;
 b=VtT9JyBR3Tc+03RJwj1vfa2OMiGqNBR/OGpfnx3oeyEYrw0IDYzCeCo90PMWVy3xnmlgLlkxK+Twnzu0ouvmKqufk/D4yCDhVQTWGT9dx7VKU/nxhepkf9ff4IN1+iKZOXr3X3rB0orm/yW1lIy4ozRCjJbKUKtjm1ykIiadLvSyOCy36d6Xs/VsK0Wsi8yABYdQVsYfYVz0VvXKxSoA06sIPlUMQYIWhuwsyp91HxMrrmmVq5jd4x0K0cKL/YPtiuUKk9YsSN++VT5zuVILXd5D5NSZJZ1SvgpnXBGrboBxYhzrEKxO12VQXotb252/LD2hrKCAQ5U1c+8DxHVtGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6DAZAMFLDVPG3CnlYCzWtyXpH+LgzGjpfYXgPkz8s0=;
 b=iy0ttEkh3ViMQWHs75QfwiHDbHnAd+q+kDnC+r/41a62FpoayqMLh8dG7pmiLmANtQVNwMR+szkvaSrUlh+8KTdh0S122dNtREaTlLR+bB3yZSQYd6y/1Q3PdzvV4eveiSdGZNaDd4br4s4ATC6RvUuMVHYtGdLJZZlVd7kaiD8=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3463.namprd11.prod.outlook.com (2603:10b6:a03:1e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.34; Fri, 21 Feb
 2020 17:26:48 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0%5]) with mapi id 15.20.2750.021; Fri, 21 Feb 2020
 17:26:48 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, "Mittal, Anuj" <anuj.mittal@intel.com>, akuster808
	<akuster808@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Topic: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Index: AdXm9tQL7AlvpbmGSCSL3Ar4BNZE0QAfyyV3AAotngAABgwVgAAiGUAAACaVImA=
Date: Fri, 21 Feb 2020 17:26:48 +0000
Message-ID: <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
	 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
	 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
	 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
In-Reply-To: <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjE0ZDZlODYtZmNmZC00MzRlLWJlYTAtYjE1YjYwZGY3N2I1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVkdqQTZybFlzZHdjTm5SSHAwZ0RrTUJCNjVaVnZTeTI4XC9QcDhHQU5zcVwvZk9Kek96dWs1Y0ZhVUxBblBOZ1JuIn0=
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57594890-5c69-4d8c-7b8a-08d7b6f33b38
x-ms-traffictypediagnostic: BYAPR11MB3463:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB34635E662A22A5D0DD381B7588120@BYAPR11MB3463.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(346002)(396003)(366004)(39860400002)(136003)(199004)(189003)(76116006)(55016002)(54906003)(2906002)(316002)(9686003)(478600001)(26005)(110136005)(4326008)(6506007)(53546011)(86362001)(186003)(52536014)(81166006)(8936002)(33656002)(66556008)(66476007)(5660300002)(66446008)(66946007)(64756008)(8676002)(81156014)(7696005)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR11MB3463;H:BYAPR11MB2790.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mv5tAGX/QSepWnMWNRmwAS5XeLkjGhpJWbSw6bqJxZfqZiGUXs/jvzhLbB/4lfqiNYEv4SiiQrO7tgUlzejwMmNVNn64U4OyjF1v6nDagwTpT1cHRDkx+lFojevkfjYpCEjnT/+s3Gs+AYVjU6FPJOexghRonYaoO9q3fQOfR2Z6JH/xXmfOX14hoYV7uLPKlppod8GyHwVRDwWtdYEgyOHUtlNl1YGCXH1qkLv7JGrkD9/ASL64JBBF0wzppJBWVBJWRR0KPJIg4ZrlCKtUY4JJQtNl/Qwh0R/TyDaFvfqFp/W/CHDkPLyhrSWZkyX0VSIlA2gtooXZMn7LSobinh+fNIQ9qQOA0LclPZ1GsRDkzDekFirewn+s/Nz514nVFENgWJE+kuE0gPLuwVpuvYoNXOOb/sFUMQsluztq8LhEaJVMvyEXJ1/Fomp97/Mj
x-ms-exchange-antispam-messagedata: vwDnxcHQviPcUIcJGiw/lHoEVTH0EDL5VVbw9RxZEWF3+KI5urjW4azLAx93OAnvDnebwqM0pkMnNCMs5hdBcIstl8/OqIJujgWw5Jrgd21U8Ju81oUVihCQZ599yRFpKlD9yaPK2IPSV7HaCp1h2A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 57594890-5c69-4d8c-7b8a-08d7b6f33b38
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 17:26:48.0691
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k+f+Lq5gc2Sb3KLpg9AoP8hHFUNlB3B9JbDTpTL2WUpp342Pffhh9ZEXbcSIKxaxWb/ZabtWVGIfYxsC1j+5jEtB1QVg8LoP5tm0zxDshnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3463
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUmljaGFyZCwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9u
IEJlaGFsZiBPZiBSaWNoYXJkIFB1cmRpZQ0KU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDIwLCAy
MDIwIDM6NDQgUE0NClRvOiBKYWluLCBTYW5nZWV0YSA8c2FuZ2VldGEuamFpbkBpbnRlbC5jb20+
OyBNaXR0YWwsIEFudWogPEFudWouTWl0dGFsQGludGVsLmNvbT47IGFrdXN0ZXI4MDggPGFrdXN0
ZXI4MDhAZ21haWwuY29tPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KQ2M6IG90YXZp
b0Bvc3N5c3RlbXMuY29tLmJyOyB5aS56aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2
IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBp
bnRlbC5jb20+OyBDaGFuLCBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRl
bC5jb20+OyBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgVHVtbWFsYXBhbGxpLCBWaW5lZWxhIDx2
aW5lZWxhLnR1bW1hbGFwYWxsaUBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBRQSBD
eWNsZSByZXBvcnQgZm9yIGJ1aWxkICh5b2N0by0zLjAuMi5yYzIpDQoNCkkgZGlzY3Vzc2VkIHRo
aXMgcXVpY2tseSBpbiBidWcgdHJpYWdlIHRvZGF5IHdpdGggQXJtaW4uIFdlIGFncmVlZA0KdGhh
dDoNCg0KKiBUaGUgb3BlbnNzaCBidWcgaXMgbWlub3IgYW5kIGRvZXNuJ3QgYWZmZWN0IHJlbGVh
c2UNCiogQW51aiByZXNvbHZlZCBvbmUgb2YgdGhlIGJ1Z3MgYXMgYmVpbmcgZXhlY3V0aW9uIGVy
cm9yIHNvIGFnYWluIGl0IGRvZXNuJ3QgYWZmZWN0IHJlbGVhc2UNCiogVGhlIGJhc2ggaXNzdWUg
ZG9lcyBhZmZlY3QgcmVsZWFzZQ0KDQpXZSdyZSBwcm9wb3Npbmcgd2UgYnVpbGQgYW5kIHJlbGVh
c2UgYW4gcmMzIHdpdGggdGhlIGJhc2ggQ1ZFIHJldmVydGVkLg0KVGhpcyB3b3VsZCBhbHNvIGlu
Y2x1ZGUgdGhlIGJpdGJha2UgbWVtb3J5IG9wdGltaXNhdGlvbiBkdXJpbmcgcGFyc2luZyB3aGlj
aCBtZXJnZWQuDQoNCldlIHdvdWxkbid0IHJlcnVuIHRoZSBtYW51YWwgUUEgZm9yIHJjMywganVz
dCBjaGVjayB0aGUgYXV0b21hdGVkIHRlc3QgcmVzdWx0cy4NCg0KRG9lcyBhbnlvbmUgaGF2ZSBh
bnkgb2JqZWN0aW9uIHRvIHRoYXQ/IElmIG5vdCwgUUEgc2hvdWxkIHNlZSBhbiByYzMgZW1haWwg
YnV0IHdlJ3JlIGp1c3QgZXhwZWN0aW5nIHRvIGNoZWNrIHRoZSB0ZXN0IHJlc3VsdHMgaWYgdGhh
dCB3b3JrcyBmb3IgZXZlcnlvbmU/DQoNClZpbmVlbGE6IE5vdCBzdXJlIGhvdyB0aGlzIGFmZmVj
dHMgcmVsZWFzZSBwcm9jZXNzLCB3ZSdsbCBqdXN0IGhhdmUgdG8gZmlndXJlIHRoYXQgb3V0Lg0K
DQpbVmluZWVsYV06IFNvIHdlIHdpbGwgaGF2ZSAzLjAuMi5yYzMgYXMgdGhlIHJlbGVhc2UgY2Fu
ZGlkYXRlIGFuZCBub3QgMy4wLjIucmMyIGFzIHdlIHNlZSBpc3N1ZXMgd2l0aCB0aGF0LiBBbSBJ
IGNvcnJlY3Q/DQpJZiBzbywgaW4gdGVybXMgb2YgcmVsZWFzZSBwcm9jZXNzIEkganVzdCBoYXZl
IHRvIHJlZG8gdGhlIHRoaW5ncyBsaWtlIHN0YWdpbmcgMy4wLjIucmMzIGFuZCBkbyB0aGUgcmVs
ZWFzZSBub3RlcyBhbmQgdGVzdCByZXBvcnQgYW5kIGdldCBpdCByZXZpZXdlZCBvbmNlIEkgZ2V0
IHRoZSB0ZXN0IHJlc3VsdHMgZm9yIDMuMC4yLnJjMyBmcm9tIFFBIHRlYW0uDQoNClRoYW5rcywN
ClZpbmVlbGENCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg==
