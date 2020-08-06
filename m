Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.3342.1596673646899236367
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 17:27:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=kQM/momX;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: hRpQARLzvvj5FbLE2KqByt+umYpn0jZ8oKHb89iHflF1p7KKvDJYxf0OjGoTRhrpSX5TYBy1Dc
 6rNIauZ3gR/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="140574860"
X-IronPort-AV: E=Sophos;i="5.75,439,1589266800"; 
   d="scan'208";a="140574860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2020 17:27:25 -0700
IronPort-SDR: bRWYiqFsn8WFaWdm3zJhKvB0BDMxRmXeFXmJ7/ngh01TQms2bMXCOdcnK09chUnVuWUd9m3FcO
 h+MnO52kYNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,439,1589266800"; 
   d="scan'208";a="467651213"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga005.jf.intel.com with ESMTP; 05 Aug 2020 17:27:24 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Aug 2020 17:27:24 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 5 Aug 2020 17:27:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 5 Aug 2020 17:27:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hVf0h46AlVKIEpSScrtHLQP1yewLWEUNZSiCSdJy7SkcWjykO5JSlwbciYS5T8pVCKlnINbg8L/tX9d39aCUmJXdmxxaA0PkJkgMTO6HhC2CLFWcLrwG/b834ca2KtTyCZ3ze9sK+70tCk+1tPYRR8sdpAjNTW5kV8tzWRd3924ibRBiaFfP8t3nLl6cFwsULZhpZL75PEPmQjTqdelaP289U6FBWFsyBwspWzg+slJQLsX7pn6EEmnzAidB8vOdXdV0X/ccYrglxytvjQHdiP7FB45WqJQUiB8tuusvYsF/Ob9rMOMdJ3F/AkxolojcryRUhRCt+BDX9gdKO3Micg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAUH9amZsfyv/ZkPiZkEK0Zn0wLqTlBtBodOI8k/U7Q=;
 b=JWozKooIcWTUzdme1OJU0Og/U91RL29gfHiKg+2Nz2THBRbsMda3uAwh1sa6TYjlnKrseVBN6zxCjKu+fCF6KpLi0SMwLMOTCguRy+Igy+ShfZdfVHZWy3v6zc7ytMvm89BrF/3pnFNwDDDp8eraDVfMxBMb9rRTUDpXDgyb/s9ZfVzLN5oKzOquF0jV17UPARqmOtthIUHEiOx+N7+6i2E+gPY/yIFWHJbAxl6R2BpW9e9xD37GZS/8B7uhOo/4qt8KyM4BMdRwY2suic+46nRQdr3RtYHezCHUWaXmo7wppExQymakJH9X/ejBd9FoPubrsYyTQUmtWpb4f2uMMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAUH9amZsfyv/ZkPiZkEK0Zn0wLqTlBtBodOI8k/U7Q=;
 b=kQM/momXyI0oJP9gWD4sgTYpEk0UDkOfVI13vYdy85uF+iUGxwvJF6M12z0mLLKcMxznqsrkuOJzOHZKzn2ERjAIbO5D7EFMFkCUdekE+EJBV79EWukCdrEg1u1HKG1YMmCtPSDky1MC10zI1BQjGcj3Tj60eBNHMQZwdW4JI80=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BY5PR11MB4102.namprd11.prod.outlook.com (2603:10b6:a03:181::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.19; Thu, 6 Aug
 2020 00:27:19 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614%7]) with mapi id 15.20.3239.022; Thu, 6 Aug 2020
 00:27:19 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	Stephen Jolley <sjolley.yp.pm@gmail.com>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2_M2.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.2_M2.rc1)
Thread-Index: AQHWawPbQu8iEZUmlkqgX0dG5Wf78KkqOU7A
Date: Thu, 6 Aug 2020 00:27:18 +0000
Message-ID: <BYAPR11MB3624645A2568089729CC1AC1E3480@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200729193401.B6E595AAD78@debian9-ty-2.yocto.io>
 <BYAPR11MB36240B14E6F914C2ABCC6935E34B0@BYAPR11MB3624.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36240B14E6F914C2ABCC6935E34B0@BYAPR11MB3624.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [60.48.233.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb6c8ad2-9733-4423-7386-08d8399f7a86
x-ms-traffictypediagnostic: BY5PR11MB4102:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4102BD9BB91C32E2DD5FF6A8E3480@BY5PR11MB4102.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0qTgy4+Njcj4rrN8Z2NDXqbweA5RlHshuY+aFqFX4gracQkqDNM4ASnbQWhxJboGB2Mq0OG0P6+MZQOVfM4UNAWCLa79jwoBFSu83DqtwhKhYxeZECmrRumalhqMFxT4SD5Tl/j5G5t+cxI5UO8rku1ldd4g+sMZ1bBf55cwyJkF4VNJ+RQwLjxnj0f3m7mZ76uM3IOCDplDzTe3uPKCLFx5dt3wU+hnTxiqfts4uJETqwhgZsI7uNae/J6qRP076GFanbmw0JheWEDxTw0J0g5+UC7eiisEq6MgbVpmwPn/R7u6OAwlYqQdxofr/vqsQsmGB0ZD1EcMYU6wD9PZ/AlaO01GAbybbKSIQ8FFSAnk7eZh87T+xScWdshaQxVMogFt2uaz0oZoIOcMcWst6w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(66556008)(64756008)(66446008)(2906002)(478600001)(110136005)(966005)(66476007)(6506007)(53546011)(15650500001)(8936002)(54906003)(7696005)(8676002)(83380400001)(5660300002)(55016002)(71200400001)(4326008)(33656002)(9686003)(316002)(76116006)(52536014)(107886003)(186003)(26005)(66946007)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: Wk5MHxIgW2SJOdQ+kIalNAbpXa8yVjcEKC7VxISo/NzanhGPhJZ2epgi6QbisTrfQprgbA/uiFvvaf4FXUDyEDxIb06i+/OcGCGyIV2rb+zxUO9IjcB7Wz7I6eHhr8AqOgFSqwLao+2n0PIBRNRqVxiXHuz1nV2iyrYnw2qbKR3RT5qkfCt3yMIQ3MVim14nTJvWqgzO8JfSMSqKKJE2icqtxhfxnRCJsi+S642vAK5qgw3ax9a5DK8It4VGD/nOCZ4VAa//CH0acrvPLwTu09raP+WKTINRFKzZ48oJR/W+N03orsIbqXIUAUpxp4PPwjoloJZysjARpLfn9vzM+O1Yd54/u7OxLJ9IPgNevbTmS2ajpwlYC7EB5Mr0kyPjx0vnh3P6/K8fNwyAJ6dQmroqf1YE3dvOW96oVN515hX/2CoxaVCcRG7ZesS7dXD9Kn7Twb9pp0uoWhKRcmxqI3stNzpyFUc52BL5Jf5nPYTr0nXLMX/oFNmyVZyD35OFCxFlFRwAiEILcR21QHKjZ0UrLYBUhrM0gfOU0QvpN6jfzNG0egNCH11CYpDw2XtM/8NgPejJu6mTu/pSbL2+yYAwqOIGzhQ1cKfZ+ngsf0M+jAeqp33V75cYvUKW5PUkWud/wK2ouwvRe0MpJBQRtA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb6c8ad2-9733-4423-7386-08d8399f7a86
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 00:27:18.9371
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +3belIM7SWOGgHNiWgzRR3nT+c2py4i+XGDsERJ7msCraQk6YV6pLCWSertPFqvdh9GnoYmBRD0TjX2IRPfZxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4102
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IHJ1bm5pbmcgUUEgZXhlY3V0aW9u
IGZvciBZUCBidWlsZCB5b2N0by0zLjJfTTIucmMxLg0KV2UgYXJlIHBsYW5uaW5nIHRvIGV4ZWN1
dGUgZm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLW1hbnVhbCB0ZXN0cyBm
b3IgZm9sbG93aW5nIG1vZHVsZToNCjEuIE9FLUNvcmUNCjIuIEJTUC1odw0KDQpSdW50aW1lIGF1
dG8gdGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCjEuIE1pbm5vd1R1cmJvdCAzMi1iaXQN
CjIuIENvZmZlZSBMYWtlDQozLiBOVUMgNw0KNC4gTlVDIDYNCjUuIEVkZ2Vyb3V0ZXINCjYuIEJl
YWdsZWJvbmUNCg0KRVRBIGZvciBjb21wbGV0aW9uIGlzIE1vbmRheSwgQXVndXN0IDEwLg0KDQpU
aGFua3MsDQpTYW5nZWV0YQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IFBva3kgQnVpbGQgVXNlciA8cG9reWJ1aWxkQGRlYmlhbi05LXR5Mi55b2N0by5pbz4NCj4gU2Vu
dDogVGh1cnNkYXksIDMwIEp1bHksIDIwMjAgMzozNCBBTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KPiBDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2lu
ZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4gPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsg
WWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sDQo+IEFhcm9uIENo
dW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47DQo+IHJpY2hhcmQucHVyZGll
QGxpbnV4Zm91bmRhdGlvbi5vcmc7IGFrdXN0ZXI4MDhAZ21haWwuY29tOw0KPiBzam9sbGV5Lnlw
LnBtQGdtYWlsLmNvbTsgSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWls
ZCAoeW9jdG8tMy4yX00yLnJjMSkNCj4gDQo+IA0KPiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5
b2N0by0zLjJfTTIucmMxKSB3YXMgY29tcGxldGVkIG9uIHRoZSBhdXRvYnVpbGRlcg0KPiBhbmQg
aXMgYXZhaWxhYmxlIGF0Og0KPiANCj4gDQo+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3Rv
LmlvL3B1Yi9yZWxlYXNlcy95b2N0by0zLjJfTTIucmMxDQo+IA0KPiANCj4gQnVpbGQgaGFzaCBp
bmZvcm1hdGlvbjoNCj4gDQo+IGJpdGJha2U6IDkxYjgwOWEwOTAyZmZkNDJiZTRlZGY3ZjBhN2Qy
NWU2ZDM1NGQ4MjINCj4gbWV0YS1hcm06IDVjZWIxNDBmMzcxOTVjMTgzN2IzNzc4MjhkMTNkZTNm
OWEzNTFmZmQNCj4gbWV0YS1ncGx2MjogYThkYThlYjEyN2E1NjU2MWJmNjMzYWI1M2JlYzU3ZmI1
ZGJiYTUzNw0KPiBtZXRhLWludGVsOiAzMTg0MGJjNmNmNmUxZDg2ZWY5MTFlYTIxNGRhMjE2OWEz
Yzg4NWNhDQo+IG1ldGEta2VybmVsOiA1OGE1ODljNWFhZDU0MTdhYmQwOTlhOTYxZTNjMWE1YjA4
M2NkYjkwDQo+IG1ldGEtbWluZ3c6IGM4YTBkMTNhNTUyNWZiNGFjYzZkYTk3OTNhZDEwMmI0ZmM1
YzE0MWINCj4gb2Vjb3JlOiBjZGJkNDdkZDdlMTY1N2I5MWI2NWEwOTQwYjdjYmYxMTk3NjQyNDBm
DQo+IHBva3k6IDIwZTlkZjU3MjE3YzVmMzc4MTc2NTNkMmMzZDQ5MmYyZDRkMzc2MjMNCj4gDQo+
IA0KPiANCj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2FnZSBmcm9tIHRoZSBZb2N0byBQcm9q
ZWN0IEF1dG9idWlsZGVyDQo+IEdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8t
YXV0b2J1aWxkZXIyDQo+IEVtYWlsOiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3Jn
DQo+IA0KPiANCj4gDQoNCg==
