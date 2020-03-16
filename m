Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.67631.1584365091211023868
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 06:24:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=PLbDx+MT;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: qc8+AVUGH4I931AKk7Yxm185v4dNHNRV/zqfk4Y4WcaoeQzaLLdvlIJELgOAin6DToYKISl3ed
 tF4h1IdIAxfw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 06:24:50 -0700
IronPort-SDR: HSoRncJmjwuf7UaWIBtFymTvvdp8WmnsSw/w25Gg2ws7lrqp0zQR5Di494yO0TZTbu8sp/VImp
 5L18eDMCStjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; 
   d="scan'208";a="247455385"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga006.jf.intel.com with ESMTP; 16 Mar 2020 06:24:49 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 06:24:49 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 06:24:48 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 16 Mar 2020 06:24:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 16 Mar 2020 06:24:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOmEN/tvhokUzccmBwUor6g61IOb7K2sv0b2360EjbqZP0M19ryo6nvlBkue/g6oorOVa4suinHF8cUnMsEFrawxpNo7mEUyG+WEq6WF9XI63tzb74ixE1uJPjhKzRQG7AowuDtHTqz7IOabpG3KFQ3BxS1uNaotL0VX8Asj39EU86MCvynH6Z1ryAntVlTPdTbN99Z28qWtzNuuqF9eaAjRVYhTqjG9Ev2BMfRHiO0w8W4Xul3uXcE35gMVNbdV6i0DlkptqGgjfopZiNL1YjoJ/6WPNZ0f+qWYdTvxh+vMPmtxxnRijRiawiv4ZSx6Ht24X3ZwLGvZ6yU5P7su5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WhUvqftZq2wL4NamAQtSMMKBqoSGuwRlucF33zhHgHs=;
 b=CqtoihkD3LaclWCi///Rdjd2iwGfHv0tqqR662cGRbmMViPH23wbuEDVp+yASPCw0mnxdkJTtv+qlerIIRDFpP95vvyn1VUxBxdyyWapaaQQ4tZNkXuehh/yyULiHbO4jJfHKuJNtyxbETTv3QGYUZAWO2Ef5Iyb31FEm3gBX9n0kGr2c+kLuI3b0DiNsq0UwU6gPx1hlMBEAQRNGzqyhQ0kz0L420PbWcqX2cU3cNKlm2aebWHqKHqJnq1074GeplAPXEilkfikFx/elJkZA+6oHe6MP4jmOF47gLQDzoPZ4X98FRIjDZKaop3/CINq52xFZOaymxhvwWyxlHyUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WhUvqftZq2wL4NamAQtSMMKBqoSGuwRlucF33zhHgHs=;
 b=PLbDx+MTE+7AIgo55ZgRwW62tjAhrwsArz/Ampm7crF5mBTx62nvxZsTUDuu6WUQB83/Ina3N3Kh3H90Gl+xTqS516ah8QUyW9hQrfKuOEA9mEreQmScmLHiiWvcbZYYzELzHDkxukDuv53jVVLxJBOwpejvQ9IP4zpn9ACxVp4=
Received: from MWHPR11MB1885.namprd11.prod.outlook.com (2603:10b6:300:111::8)
 by MWHPR11MB0030.namprd11.prod.outlook.com (2603:10b6:301:65::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Mon, 16 Mar
 2020 13:24:47 +0000
Received: from MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095]) by MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095%5]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 13:24:47 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Adrian Bunk <bunk@stusta.de>, "yi.zhao@windriver.com"
	<yi.zhao@windriver.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M3.rc1)
Thread-Index: AQHV+3btrZncKwmncECtaZHainEurahLGFdAgAABSMCAAALCAIAAGN4A
Date: Mon, 16 Mar 2020 13:24:46 +0000
Message-ID: <MWHPR11MB18852824448C79F95A30A62CE3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
 <MWHPR11MB1885A54E561C1063624148A1E3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
 <MWHPR11MB1885FAEF405DE4413032F91EE3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
 <20200316115432.GC14992@localhost>
In-Reply-To: <20200316115432.GC14992@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [42.189.136.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b437ee74-796a-471b-50dd-08d7c9ad65ca
x-ms-traffictypediagnostic: MWHPR11MB0030:
x-microsoft-antispam-prvs: <MWHPR11MB0030376EBF7E6AAACC6E0ADAE3F90@MWHPR11MB0030.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(33656002)(8676002)(81156014)(81166006)(8936002)(6506007)(53546011)(186003)(26005)(52536014)(64756008)(76116006)(66556008)(5660300002)(66446008)(66476007)(66946007)(7696005)(9686003)(4744005)(55016002)(4326008)(86362001)(316002)(110136005)(478600001)(2906002)(15650500001)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR11MB0030;H:MWHPR11MB1885.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cn/rhgUFpXgVfbAHdA68/9H6HGlbhtBaLbtSmQJiuwsB10JrcDelkodlbCOiYDUjFaYIA/R2wB7jmMjldLxZt48P6iiS6+3v0f/5+1QNHqfk40uAAw9ECQ4bsbCK1i2TkHSrTSlGPyEecNLdN4HEHMP7b8K2XvJPMJTFxSPnVBAr2KOrErYJBr/ickUftcqi4iGmD3EmMgUK4q/dndNu3vtHITFQyR3iQvwz9ihkrTDCjkoj0yVXRYu0T4lUQELdLpM3j0jgaW5xgrqp96E/drvlHz5RGInmBp0NYzzLJ/beTR+FDKEo8U2Ghaz9tnwa73tQWeiFlaYy0lYP9uM3McO/TdDs9boiFkAOM5GRVrb/WX4rnZ93fSBbisghUuWGCduf8Lj+vEHNCe08id8nPW2zGnpp+fD/pEMnXQmiZvLhUDZOJIuCRKSvC6hOi4sW
x-ms-exchange-antispam-messagedata: u/zr+5UbbzDW70Uk1srwJyun7oa00/vvJeydBXg+8nNy0hZnWyK/o6oRQiA2rCsVylCEHnEuuQyLFN3iFOBdXwh7RkHL/p6u3n+DyGtlrlAl+74fXFpg8CY6KoRyp4LRIpQ6AGVrLAAF/hDulpy1Mg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b437ee74-796a-471b-50dd-08d7c9ad65ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 13:24:47.0087
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: piblJax73PbRgc6XsSgFSw8t6/KhHQW7VWkfyaN+rSvy0StohqPd5Zcmvdi5I9hnOwA36BMkvAHLBkZpuL6XRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0030
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+
IE9mIEFkcmlhbiBCdW5rDQo+IFNlbnQ6IE1vbmRheSwgMTYgTWFyY2gsIDIwMjAgNzo1NSBQTQ0K
PiBUbzogSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPg0KPiBDYzogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBRQSBub3Rp
ZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tDQo+IDMuMV9N
My5yYzEpDQo+IA0KPiBPbiBNb24sIE1hciAxNiwgMjAyMCBhdCAxMTo0NTowOUFNICswMDAwLCBT
YW5nZWV0YSBKYWluIHdyb3RlOg0KPiA+Li4uDQo+ID4gUnVudGltZSBhdXRvIHRlc3QgZm9yIGZv
bGxvd2luZyBwbGF0Zm9ybXM6DQo+ID4uLi4NCj4gPiA2LiBNUEM4MzE1ZS1yZGINCj4gPi4uLg0K
PiANCj4gVGhpcyBwbGF0Zm9ybSBoYXMgYmVlbiByZW1vdmVkIGZyb20gbWFzdGVyLCBhbmQgaXMg
dGhlcmVmb3JlIG5vdCBpbiBNMy4NClRoYW5rcyBmb3IgcmVtaW5kaW5nIQ0KDQo+IA0KPiA+IFRo
YW5rcywNCj4gPiBTYW5nZWV0YQ0KPiANCj4gY3UNCj4gQWRyaWFuDQo=
