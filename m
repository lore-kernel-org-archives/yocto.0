Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.3952.1585013800074817251
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 18:36:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=InC0+loS;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: IxR96Kv2eOrkDnEFze5D2vIG/+2VXPb0T8EkPp3+G0+t9P2KSOFCOAjGo6shiy9Dy0412gSYka
 /zFkXDn3v3vA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 18:36:39 -0700
IronPort-SDR: dbD4AAKWVlld5WfkblN+giEVBEUm5zvdPTo+uuToB4ju5apxOvkrG+XiP2CW+mzrg5+B1w+wV5
 cL1l0ipEUJLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; 
   d="scan'208,217";a="270168740"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2020 18:36:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 18:36:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Mar 2020 18:36:38 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 23 Mar 2020 18:36:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 23 Mar 2020 18:36:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7SJVogoSjSL0PjPPh6HTofd5mrLhUhYvUpU9IVX/JbwABv1qO4Jmrv6kymkNOx1m9j2cpgklsYQOIfus0QT6yirmdvKyY5ZTxkyBhmJo7CLZENsj5u9V86yxTlisg3A3R0WKzSt7IDOVEC9GT5H81lvge1vVayQxV51sm9sDhepjKUpqhy3HP0wOkGuic4WjA5DRkC1Bzz/ZV/9TLKMS/03owdVnoxeoUqLq+YUUZ70cynmv6TUI2IHx/DWlln7PFx69z8l1/5qMn2fu++7otA7dl2c3HljWNspw/JK3XpG3I7CH0qB25HtoFn1PZO/UVOgVSez/vZ0v0dBAwqpYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3tVlxmMPqu7AjgI4AmxEb+I0L+L5O4R6pgHGXrfVTjk=;
 b=GG6x6K4iR2YkDm4Cf2MvSwqVwZ8y7p4paz1TfYucgcDmmj0kmU2PjoZ7VQJ2BviYMdrD0UrnnUNHhV2m45SnkWIqv7BtYAMU1HJDhVqGcDVgY2Hsc1+xEArVdC0w5/eQL8fa9lvFWhUMwb2ZEKNzIRIc1R7n3+rY3CNluOuqWhDbTSGp9ca7RpniOrTmjtaTP+WBJUZTN7RUmqFyDVIqbmvpgUyGBsguFSBBAEiZ1Bi1YjwrtwTXIdCKLd/4Vo3vshPUbINXPCOV02pnjYREsezm2RSigzhTbBox0K4R5Ki0uTQkrvnNEHq/4gnPycCShusYFbRoGF5yJiAzCJ2WjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3tVlxmMPqu7AjgI4AmxEb+I0L+L5O4R6pgHGXrfVTjk=;
 b=InC0+loSKEsq4NpPbnfVEPDn5WVMERR+LutLKLIxUsP1tqsQKYeLMwJF46UXVBVQAOF562IcSN6hBk1vl/RPrX6ReenWo5euvbZRZttJ4c8LxCsCPg4+kLCf4KN0lrBr0Tcqr/MB+mxzMJzxu93nZfO/gF5wbkV+AcKVOL4Lgw8=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3285.namprd11.prod.outlook.com (2603:10b6:a03:7b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Tue, 24 Mar
 2020 01:36:35 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::e86f:2402:8bde:d6c]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::e86f:2402:8bde:d6c%7]) with mapi id 15.20.2835.017; Tue, 24 Mar 2020
 01:36:35 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Vasyl Vavrychuk
	<vvavrychuk@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] "Yocto Project Linux Kernel Development Manual" is gone
Thread-Topic: [yocto] "Yocto Project Linux Kernel Development Manual" is gone
Thread-Index: AQHWAJ1lJxga63iFckK63WpZIhoNVKhVyqCAgAEq0OA=
Date: Tue, 24 Mar 2020 01:36:34 +0000
Message-ID: <BYAPR11MB2790F49C53D49D5D1E33EB2988F10@BYAPR11MB2790.namprd11.prod.outlook.com>
References: <KDJv.1584916402885275339.1NaK@lists.yoctoproject.org>
 <CAP71Wjz8EeqLA4=RycNgxtfmZjtn1e9+t9XoaT7x+YhEynwK2Q@mail.gmail.com>
In-Reply-To: <CAP71Wjz8EeqLA4=RycNgxtfmZjtn1e9+t9XoaT7x+YhEynwK2Q@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: f0a61934-371c-4d5a-b55c-08d7cf93c9dd
x-ms-traffictypediagnostic: BYAPR11MB3285:
x-microsoft-antispam-prvs: <BYAPR11MB3285FCB896160BB609E629DB88F10@BYAPR11MB3285.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(346002)(366004)(136003)(39860400002)(376002)(81156014)(2906002)(110136005)(66946007)(33656002)(26005)(316002)(7696005)(5660300002)(66476007)(76116006)(52536014)(55016002)(186003)(64756008)(6506007)(66446008)(53546011)(66556008)(9326002)(8936002)(81166006)(8676002)(71200400001)(4326008)(9686003)(86362001)(966005)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR11MB3285;H:BYAPR11MB2790.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O1aWpy9mKhbtA6Vg5If3cFEeEDv5WnQ4J7JveLALy/q+0ED4FwegrqBzGdZNOlfUPuDXEiOegarA40qqeEfWF3U5MkKi23CiaDmeMwAFLPkT9IuQLZ6vJFYOQghOE+2GhrYnTSnLeeVnKhvgZss9IBQWQ/uBre0Z5HvQwjHsH6c5JPZTQnto72h3vCOctpZ7TZyp1SrVplywgpEI9IdtZg1zZqrvNp3vgBJ2bth9BI6gDFGxpo7rb90jPdXwFxOJc3uGcm7N9K5dWXkQjBr0oHPIqOZW3KckhbIDzlFvxHhFzm0PlAYTyIReX3B+zl4oi0c99awCH3nU/GNfT5Nlm7tZbKT5Wu47pR+h+1WNNhplViSCRXLp5wceeIahnHIbSeWhtoScjmqSWenpH61cSB/PmEOKhAjeMagf7PmsjSnEnpgA+0nVYVInmd9pbqVqwZ3FSNcVI4EuXeRw7utn/Pt3/HFsle4VAyNrIfMCROcRU5bKHNqTVIm1CWAPEhtmKm7DiQZv8+Ju79jEmx1wWw==
x-ms-exchange-antispam-messagedata: /AS6U0WBhlFTnYtU61zsyRL2RM8EdlOvHtgh60gJKItZDKHiu6Mjf+kfYNSMBeUFifIAuHn0uGzmJNU7gcF31W6M9MTfV42e9gVBplKNPx1RKTmy8BOB9HFDOg4V90lzn7kPGkEeYvkOX/HtwiLaQg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a61934-371c-4d5a-b55c-08d7cf93c9dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 01:36:34.8877
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +h7eG6qyxyLtoXNGSkLuvzTwlvUVnAra5AsCzp+GxC9QBYfWdvBy72e/hIYAFA/wwTgrPJ//+Af7vSsfMtosazh3u87B0XE505rQew0bbRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3285
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB2790F49C53D49D5D1E33EB2988F10BYAPR11MB2790namp_"

--_000_BYAPR11MB2790F49C53D49D5D1E33EB2988F10BYAPR11MB2790namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkR1cmluZyB0aGUgcmVsZWFzZSBwcm9jZXNzLCBJIHVwZGF0ZSB0aGUgZG9jcyBm
b3IgdGhlIHJlbGVhc2UgaW4gb2xkLnlvY3RvcHJvamVjdC5vcmcgYW5kIHB1Ymxpc2ggdGhvc2Uu
DQpGb3IgMy4wLjIgbG9va3MgbGlrZSDigJx5b2N0byBwcm9qZWN0IGtlcm5lbCBkZXZlbG9wbWVu
dOKAnSBtYW51YWwgd2FzIG5vdCBhZGRlZCBhbmQg4oCceW9jdG8gcHJvamVjdCBkZXZlbG9wbWVu
dCB0YXNrc+KAnSBtYW51YWwgd2FzIGFkZGVkIHR3aWNlLiBTb3JyeS4gSSBjb3JyZWN0ZWQgaXQg
bm93Lg0KSW4gb2xkLnlvY3RvcHJvamVjdC5vcmcsIEkgZGlkIGFkZCDigJzigJ15b2N0byBwcm9q
ZWN0IGtlcm5lbCBkZXZlbG9wbWVudCDigJxNYW51YWwgYW5kIGRlbGV0ZWQgdGhlIGR1cGxpY2F0
ZSDigJxEZXZlbG9wbWVudCB0YXNrcyBNYW51YWzigJ0gZW50cnkuDQoNCkkgc2VlIGl0IGJlaW5n
IGFkZGVkIHByb3Blcmx5IGluIGh0dHBzOi8vb2xkLnlvY3RvcHJvamVjdC5vcmcvZG9jdW1lbnRh
dGlvbiBidXQgSSBzZWUgaXQgaXMgbm90IHlldCB1cGRhdGVkIGluIGh0dHBzOi8vd3d3LnlvY3Rv
cHJvamVjdC5vcmcvZG9jcy8NCkRvZXMgaXQgdGFrZSBzb21lIHRpbWUgdG8gdXBkYXRlIGh0dHBz
Oi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8NCg0KVGhhbmtzLA0KVmluZWVsYQ0KDQpGcm9t
OiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiBPbiBCZWhhbGYgT2YgTmljb2xhcyBEZWNoZXNuZQ0KU2VudDogTW9uZGF5LCBNYXJjaCAy
MywgMjAyMCAxMjozOCBBTQ0KVG86IFZhc3lsIFZhdnJ5Y2h1ayA8dnZhdnJ5Y2h1a0BnbWFpbC5j
b20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0
b10gIllvY3RvIFByb2plY3QgTGludXggS2VybmVsIERldmVsb3BtZW50IE1hbnVhbCIgaXMgZ29u
ZQ0KDQpoaSwNCg0KdGhhbmtzIGZvciByZXBvcnRpbmcsIHlvdSdyZSByaWdodC4uIGFuZCB0aGUg
RGV2ZWxvcG1lbnQgdGFza3MgbWFudWFsIGVudHJ5IGlzIGxpc3RlZCB0d2ljZS4uIFdlIHdpbGwg
aW52ZXN0aWdhdGUgYW5kIGZpeCB0aGF0IQ0KDQpjaGVlcnMNCg0KDQpPbiBTdW4sIE1hciAyMiwg
MjAyMCBhdCAxMTo1NyBQTSBWYXN5bCBWYXZyeWNodWsgPHZ2YXZyeWNodWtAZ21haWwuY29tPG1h
aWx0bzp2dmF2cnljaHVrQGdtYWlsLmNvbT4+IHdyb3RlOg0KDQpMYXRlc3QgIkRvY3MgT3ZlcnZp
ZXciIHdlYnBhZ2UgaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLyBoYXMgbm8gbGlu
ayB0byAiWW9jdG8gUHJvamVjdCBMaW51eCBLZXJuZWwgRGV2ZWxvcG1lbnQgTWFudWFsIi4NCg0K
SW5zdGVhZCBpdCBzaG93cyBsaW5rIHRvICJZb2N0byBQcm9qZWN0IERldmVsb3BtZW50IFRhc2tz
IE1hbnVhbCIgdHdvIHRpbWVzLg0KDQo=

--_000_BYAPR11MB2790F49C53D49D5D1E33EB2988F10BYAPR11MB2790namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1z
b0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJw
bGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25v
cm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28t
bWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4tYm90
dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxl
LXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
QHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAx
LjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24x
O30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRz
IHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtp
ZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1h
cCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRp
Zl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVy
cGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5I
ZWxsbyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RHVyaW5nIHRoZSByZWxlYXNlIHByb2Nlc3Ms
IEkgdXBkYXRlIHRoZSBkb2NzIGZvciB0aGUgcmVsZWFzZSBpbiBvbGQueW9jdG9wcm9qZWN0Lm9y
ZyBhbmQgcHVibGlzaCB0aG9zZS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PkZvciAzLjAuMiBsb29rcyBsaWtlIOKAnHlvY3RvIHByb2plY3Qga2VybmVsIGRldmVsb3BtZW50
4oCdIG1hbnVhbCB3YXMgbm90IGFkZGVkIGFuZCDigJx5b2N0byBwcm9qZWN0IGRldmVsb3BtZW50
IHRhc2tz4oCdIG1hbnVhbCB3YXMgYWRkZWQgdHdpY2UuIFNvcnJ5LiBJIGNvcnJlY3RlZCBpdCBu
b3cuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5JbiBvbGQueW9jdG9wcm9q
ZWN0Lm9yZywgSSBkaWQgYWRkIOKAnOKAnXlvY3RvIHByb2plY3Qga2VybmVsIGRldmVsb3BtZW50
IOKAnE1hbnVhbCBhbmQgZGVsZXRlZCB0aGUgZHVwbGljYXRlIOKAnERldmVsb3BtZW50IHRhc2tz
IE1hbnVhbOKAnSBlbnRyeS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SSBzZWUgaXQgYmVpbmcg
YWRkZWQgcHJvcGVybHkgaW4gPGEgaHJlZj0iaHR0cHM6Ly9vbGQueW9jdG9wcm9qZWN0Lm9yZy9k
b2N1bWVudGF0aW9uIj4NCmh0dHBzOi8vb2xkLnlvY3RvcHJvamVjdC5vcmcvZG9jdW1lbnRhdGlv
bjwvYT4gYnV0IEkgc2VlIGl0IGlzIG5vdCB5ZXQgdXBkYXRlZCBpbg0KPGEgaHJlZj0iaHR0cHM6
Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLyI+aHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9y
Zy9kb2NzLzwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRvZXMgaXQg
dGFrZSBzb21lIHRpbWUgdG8gdXBkYXRlIDxhIGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVj
dC5vcmcvZG9jcy8iPg0KaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzwvYT48bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+VGhhbmtzLDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+VmluZWVsYTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86
cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5Gcm9tOjwvYj4geW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAmbHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyZndDsNCjxiPk9uIEJlaGFsZiBPZiA8L2I+Tmljb2xhcyBEZWNoZXNuZTxicj4NCjxiPlNlbnQ6
PC9iPiBNb25kYXksIE1hcmNoIDIzLCAyMDIwIDEyOjM4IEFNPGJyPg0KPGI+VG86PC9iPiBWYXN5
bCBWYXZyeWNodWsgJmx0O3Z2YXZyeWNodWtAZ21haWwuY29tJmd0Ozxicj4NCjxiPkNjOjwvYj4g
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW3lv
Y3RvXSAmcXVvdDtZb2N0byBQcm9qZWN0IExpbnV4IEtlcm5lbCBEZXZlbG9wbWVudCBNYW51YWwm
cXVvdDsgaXMgZ29uZTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmhpLDxv
OnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj50aGFu
a3MgZm9yIHJlcG9ydGluZywgeW91J3JlIHJpZ2h0Li4gYW5kIHRoZSBEZXZlbG9wbWVudCB0YXNr
cyBtYW51YWwgZW50cnkgaXMgbGlzdGVkIHR3aWNlLi4gV2Ugd2lsbCBpbnZlc3RpZ2F0ZSBhbmQg
Zml4IHRoYXQhPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPmNoZWVyczxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPk9uIFN1biwgTWFyIDIyLCAyMDIwIGF0IDExOjU3IFBNIFZhc3lsIFZhdnJ5
Y2h1ayAmbHQ7PGEgaHJlZj0ibWFpbHRvOnZ2YXZyeWNodWtAZ21haWwuY29tIj52dmF2cnljaHVr
QGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2tx
dW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtw
YWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDow
aW4iPg0KPHA+TGF0ZXN0ICZxdW90O0RvY3MgT3ZlcnZpZXcmcXVvdDsgd2VicGFnZSA8YSBocmVm
PSJodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvIiB0YXJnZXQ9Il9ibGFuayI+DQpo
dHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvPC9hPiZuYnNwO2hhcyBubyBsaW5rIHRv
Jm5ic3A7JnF1b3Q7WW9jdG8gUHJvamVjdCBMaW51eCBLZXJuZWwgRGV2ZWxvcG1lbnQgTWFudWFs
JnF1b3Q7Ljxicj4NCjxicj4NCkluc3RlYWQgaXQgc2hvd3MgbGluayB0byAmcXVvdDtZb2N0byBQ
cm9qZWN0IERldmVsb3BtZW50IFRhc2tzIE1hbnVhbCZxdW90OyB0d28gdGltZXMuPG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvYmxv
Y2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_BYAPR11MB2790F49C53D49D5D1E33EB2988F10BYAPR11MB2790namp_--
