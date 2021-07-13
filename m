Received: from esa8.fujitsucc.c3s2.iphmx.com (esa8.fujitsucc.c3s2.iphmx.com [68.232.159.88])
 by mx.groups.io with SMTP id smtpd.web12.1843.1626166627369462101
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 01:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=kPHhi7Ne;
 spf=neutral (domain: fujitsu.com, ip: 68.232.159.88, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1626166627; x=1657702627;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=ZN/zp4yHtkVy/rk1CmpgAZsZAl7kQSYGmFmF3chhU1U=;
  b=kPHhi7Nea7tw/C7V8I8/y5ddTgTrr5AFUVfWS9UE2W6XuD5RVmfj63iu
   89tjdtK8oTgkpJxs8qFnozrowF8OmNARoZ1djNQU/F0NW2pNlBKTqvCCx
   TThlyTTY559lmDSKDdsZ/tVLcYwJLR+BlalE3zr9Y1h9m+3OIwlVOhIsG
   w2rbowYPpDvUE/9DfzKrCj/T9jUH30RdKKXFQsOQJB5R5w34Yck6E4abY
   aag7aEoZNcauZ6SOljHbhDtz9YZ3how/GDxfrMtpwhv64ytloftz4VLky
   ppJNmDiAbnV9SByzA9QpOcjFBfekmP+DKfKqFvWUerONxtEVt6zIyvaGu
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="34824003"
X-IronPort-AV: E=Sophos;i="5.84,236,1620658800"; 
   d="scan'208";a="34824003"
Received: from mail-os2jpn01lp2058.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.58])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2021 17:57:04 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YszsCfHPTfTcT24pTbHsHRpaiMloXkI/RlH0WLYWaXPCgtBZg9dVTeaf/dgLu1jpsQfNJMGVJ43Ji8cHuCWlzPwFFoGOB9QQugCkypRRsPbWrFBpgTTLvG+gWYnIlM4Eq+T0Czt2jASvZaPtclNvVRIiaLKPA4ESbgsp294iyirGsLvaPuSVmrtHaFEFubSQeGZ3ej32c8uQavtEyRsekAuIxx+EnFBHA/Bcu7iRYb23bwFeDlMbd3yWOjjT3YIVgp/1Qlg/tRMpMDmc7H3AHrcnLxOg1eBSBprMOwbVG5pAJLOKqPZvEn5kJXseh6GdyY5w8J/kDM2r3Z8GVgvkkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZN/zp4yHtkVy/rk1CmpgAZsZAl7kQSYGmFmF3chhU1U=;
 b=V0jB/M+sXJKSNlGV8rRRwyxwEuMSaeB7ajCQSGVxchXueKssmklTZKkkm5FMBLqICeAy2Z8sff05E7c+EdHxcMN4jmQBTbvfTezX8u5B6oVxSnyzX2hT6arioPMrmUPn1jki1WBku/RKQm/oJGAuBYDd4t6fqZRlwcHKTC0HAlx1OuAe9brefB4MCsG8sBFPaw7OBpjMmlgG/P1bxoHEwvsEBIfzzlNc+o+jVa1XjG5/ayKvkTxYyPfV7wz4LZtQn3RI2KlsW+VAGMZ2QZrtFws+PRDYmpeiq40rEqdLjP9A8Ed0GR3tKZ+VwpAglSNCrHFMIoDwOWNzY6JPrs7K6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZN/zp4yHtkVy/rk1CmpgAZsZAl7kQSYGmFmF3chhU1U=;
 b=lZ8zp+fmKejNL3GCibK+PeF1ULko4EZRuVxHjgZRSViWfQjg7RFYgqY6fmdvHmvjhybZJlLa5vG3lW+i+/1QixU1KBCoFieqAyeeqipLp5zvI6B8n6tf/syvRLTUfeX6NKF+BU5eUr0n6DEtc8AfVbjQjsKtcQk8OiVZ8B66+2w=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OSBPR01MB3750.jpnprd01.prod.outlook.com (2603:1096:604:4a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Tue, 13 Jul
 2021 08:57:01 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 08:57:01 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: "koansoftware@gmail.com" <koansoftware@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-spdxscanner] Question about meta-spdxscanner
Thread-Topic: [yocto] [meta-spdxscanner] Question about meta-spdxscanner
Thread-Index: AQHXdx8b/Ul/RYFJuU670RGgUQPicatAjSsg
Date: Tue, 13 Jul 2021 08:57:01 +0000
Message-ID: 
 <OS0PR01MB61787445FE37FB683A45754BA0149@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <bcef287b-9214-aa03-3274-2a84f6d7ede4@gmail.com>
In-Reply-To: <bcef287b-9214-aa03-3274-2a84f6d7ede4@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 506c5eda-ece4-453d-b8a7-08d945dc2e05
x-ms-traffictypediagnostic: OSBPR01MB3750:
x-microsoft-antispam-prvs: 
 <OSBPR01MB37500C46CF4EBB61F006EC22A0149@OSBPR01MB3750.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Xeu2wnQV2XIlUj9zCsv4g4bNcLG6wGxWti+ZR1xaRw5zuZ4SmZlQvOFqG/bu+hW14fw7M79Z6nnXBXIcxU2KgSaNH8puIgLX11ec0gtRnCO0X48ttZ1gBeNoLrXd41l/ABDm6qQWpzMZJEBhgiHfQ+vAooz1fwaissmj3VA0YO7EV5U9qCKV3qjrxoNeHVqD8vsve81EZppBz7kBF+7tOkNHXwinXAWL9ZDiG4R/guc9yFdusuzjR7UR00M3zAKm8l6sra1mh2FDVWQTH7nHKr7jyDPlQcKqlqWY/OsnkrznJxKEZNVTQZ0MK08F6aqDR/iSSt5lKAdCZD9jOX4tXW4TtKiSlani1HoDxIfXpzYlgG39+XUw86Nv4208xilFtLfoX8SpQAWTMO8td4bOEqrg9VB5TpZrvlA+8N2WKaM0fYNjr/DgK/FJs3oNHrnSLA7DMa4uZPdo7Qpp6ALSdwFkroujFtxH+aQKvewJtf1/vxeqr0a7+2W7QAp6zPOQsLHu0mf0l6YnEIKJ2dCiCbm79p1y9mMHV0fMQ7XdviMKsdK/0ZiIr4QE41rTwOI+q/hJ7r/xeiRDBr4Bi1o63kIUcOnmTuIAS7mqZJ6bQ4T7MtCaKwjn9pywwoyWxH25aNUAJTZvvx+YIeHY2iRu/SxBkZmNMfWSf/uJCc+B1xcAxn1b8/htVfchXz13i50OZDFswe+CAGRacVTgJm3HQIePqtWNO8va+yXqHng/1VA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(396003)(366004)(346002)(55016002)(66946007)(5660300002)(38100700002)(8676002)(8936002)(9686003)(64756008)(76116006)(66476007)(66446008)(66556008)(33656002)(86362001)(53546011)(83380400001)(6506007)(7696005)(26005)(966005)(71200400001)(478600001)(52536014)(2906002)(85182001)(122000001)(110136005)(316002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cmUwYmxsYmhpR1Nwa2s3ajJSTGhjYUk3RzNHT2V3NDdleEN6VDNVMDE3VFd5?=
 =?utf-8?B?OHd3WTE5Nmx2YmlkRklnMlczS1lWZ284clJtTnN5TCtuYTVFUGoxNndhdnE2?=
 =?utf-8?B?NmlyeGFFeWpwS0tUclZyN2dobVdDeXZFWCtTWFVkTlVxY0dFbVdTQ0ZJcTZ1?=
 =?utf-8?B?dlJGazB1MytIOFhLVmpidkxXVkFKVk1tRmpCZFZFWnVMN0MvekpwbWxOMlE5?=
 =?utf-8?B?SWZvSEI1Ym82L29PMk45N3VUbUtxdnpkeGZyRlFnMG14b2pHNk9qdVFPaDJo?=
 =?utf-8?B?SmVXMTl2Vy9GV2ZqU2pqRmxmOGZIelMzTlc0R2RQUGdqSmU5amZsWGwrbTNq?=
 =?utf-8?B?cThGNlRjd3hQaHZPUzdnMFFTSUl2SS8yQUxZYjRvT2RDL2RGdDYwVklmRmFQ?=
 =?utf-8?B?SmNyVzJFSnFYaDVIRU1qenE5dWU2amNVMUNZUVkycSsvREpiU0tUYkljc1Ez?=
 =?utf-8?B?ZXo1bk5qNU1hc1BOaG5BdUc5QXdkdVhKM1FZWnVNeEtCWVk0S2pMOHFmaUZz?=
 =?utf-8?B?ZmN5a1gwbFpwb3pyT1BCQkVMdjJBZ3BXZ1UxNEw1dGlLR001SWFGS0NJV0Js?=
 =?utf-8?B?S1V1WHJZUkNMY3lKQlFuVC9FOUt4UURVYU1HMUkyZ29RbEVEN2VXN3VMREpL?=
 =?utf-8?B?STM2a0NHVFNGVThFTWhkNklKczhqSlVWT0tMbDN3eUN2cnpobzRVd3dlK1hM?=
 =?utf-8?B?eS9yRHZxaDB3NHpJM3h5bTZNNVprL3c0MDEvWndGeGZ2enNESGJKRVhvaWZD?=
 =?utf-8?B?c3NMcGhiUThONWxZeXVCZ1E0aTNzbjI0S2FOZUxDeDNIVmdqcnMxU1JZOVZG?=
 =?utf-8?B?REw3a3RhWDUyMmRPZWd3bTh3K2VWNmM2Y1RJaTllMEtwMGRDMWkrMWJpSE1Z?=
 =?utf-8?B?S1I4OTVPUVZibEtyeWJ6ZWh0bXlkUXdLRTRGYmpOemJ1WUtRMXNBMzMrN1kr?=
 =?utf-8?B?b01PNVh6dnd6WDJEeGVyL2lXYVJndEdWa1Bib1A0N2Y5YWx0YTFXYkFIM2ZB?=
 =?utf-8?B?RlpnamwxNjBTTEI3eUsyZEdVNjRyR0t6UUtjb0dmTDJ2SUVtd0FOa2NzZXU5?=
 =?utf-8?B?WjVYLzNZc0c2OTVZdkgxVXZGWDJDbEJrWnI4LytkenNPZDEvNldRcm41Q2t5?=
 =?utf-8?B?NFpRWmJxTEk2R2pjbmNKMnBhdmFTV0RWQTNacVJrRzhIMUNLV2pNU0NoTGZ6?=
 =?utf-8?B?Y2JnRE5Zd3UwQU5aelBLU3BmNzBuUCtyYkdxYlFvaUx1bERpUHNIQkN5dGV2?=
 =?utf-8?B?NHFDZkxpcVUzOE9uNkg1blY0VUYvdU8xa08zaktGbTNCVmdYQWk3YzRFcUpU?=
 =?utf-8?B?QWR0ZG9GVW1hR0lkR0Z4a3lsdWY0YjBZdFpCTDJnUmc4eURCTU5sWkRlUXh1?=
 =?utf-8?B?WWxzckovRVd5ai9qRk55MHN2UU1OeC9Yc3RNN1FnSEx5MW1tdURqcjRLNzJw?=
 =?utf-8?B?eFlxYWJZV09qckxseTFRQmx1WEtzeW4zUWxqZTVxdVc1QmFCa0RzSDZOeGdP?=
 =?utf-8?B?ZUtHMHdOK0JkMTArWW1JakcvMHFFTlFMSWJmZEdGTi9ZLzB4RVFQbW5TdDds?=
 =?utf-8?B?Q3BWdzVINVNWV0dKeExLOHVKUTdmd0tHWjNoWHRJOTVSVXVuN3NvYTdISVhC?=
 =?utf-8?B?RkhpTHZTQ25CZk5BdVEwZHhWQkJMOEttbXVBRnVwakhJUUZjWjB5UTQ2Mldv?=
 =?utf-8?B?SWdMQ1ZRN3IveUFFR3I3NGlhdmdTRlN3Ri84Ulp5MkhXbFNVMDNSbFlKNXhB?=
 =?utf-8?Q?IGA27yPm/QhGx1ZyrJK9jJssnErFdkgDwPPk9e1?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 506c5eda-ece4-453d-b8a7-08d945dc2e05
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2021 08:57:01.5809
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C7/kDRhZ3Px+MW6bOfPgoRn/xth+gNj+OSV7VTqKhkIvoOVIJjI+wdGEVOpFOu7DHn8q5PLeA0GyCFSWG13P+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3750
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyY28NCg0KPiBJIHNlZSB0aGF0IG1ldGEtc3BkeHNjYW5uZXIgaGFzIGJlZW4gbW92ZWQg
dG8gaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnLA0KPiBhbmQgZG9lc24ndCBtYWludGFpbmVk
IG9uIGdpdGh1Yg0KWWVzLCB5b3UgY2FuIGNvbnRhY3QgbWUgb3IgY29udHJpYnV0ZSB0byBtZXRh
LXNwZHhzY2FubmVyIHRvIHRoaXMgTUwuDQoNCj4gSSdkIGxpa2UgdG8gaGF2ZSBhZHZpY2UgZnJv
bSB5b3UgdG8gdW5kZXJzdGFuZCBpZiBpcyBpdCBwb3NzaWJsZSB0byB0ZXN0IGl0IHdpdGhvdXQN
Cj4gYW55IGV4dGVybmFsIHNlcnZpY2UgYW5kIGRpc2NvdmVyIHdoYXQga2luZCBvZiBhcnRlZmFj
dHMgYXJlIGdlbmVyYXRlZCBpbnRvDQo+IGRlcGxveS9zcGR4Lg0KDQpJIGhhdmUgbm90IG1haW50
YWluZWQgc2NhbmNvZGUtdGsgZm9yIGxvbmcgdGltZS4gQW5kIHJlY2VudGx5IHRoZXJlIGFyZSBz
b21lYm9keSBlbHNlIGFza2VkIG1lIGFib3V0IHNjYW5jb2RlLXRrLg0KWWVzLCBJIHBsYW5uZWQg
dG8gbWFrZSBzY2FuY29kZS10ay5iYmNsYXNzIHdvcmsgd2l0aG91dCBleHRlcm5hbCBzZXJ2aWNl
LiBCdXQgdGhlcmUgYXJlIGFsd2F5cyBpc3N1ZXMgYmVjYXVzZSBlbnZpcm9ubWVudC4NClRoZSBw
cm9ibGVtIG9mIHNjYW5jb2RlLXRrLmJiY2xhc3MgdGhhdCBzY2FuY29kZSBtdXN0IHdvcmsgd2l0
aCBzcGVjaWZ5IGEgdmVyc2lvbiBvZiBweXRob24obGF0ZXN0IHJlcXVpcmVzIDMuNiksIGJ1dCB5
b3Uga25vdyB0aGF0IGZvciBZUCBvciB5b3VyIGhvc3QsIGl0IGlzIGhhcmQgdG8gbWVldCB0aGUg
cmVxdWlyZW1lbnQuDQpJIGZvdW5kIHRoZSBuZXdlc3QgdmVyc2lvbiBvZiBzY2FuY29kZS10ayBz
dXBwb3J0IHJ1bm5pbmcgaW4gZG9ja2VyLiBTbyBJIHBsYW4gdG8gbWFrZSBzY2FuY29kZS10ay5i
YmNsYXNzIHdvcmsgd2l0aCBzY2FuY29kZSBjb21tYW5kIGJ5IGRvY2tlciBuZXh0Lg0KT2YgY291
cnNlLCBpZiB5b3UgaGF2ZSBnb29kIGlkZWFzLCBwbGVhc2UgdGVsbCBtZSwgb3IgY29udHJpYnV0
ZSB0byBtZXRhLXNwZHhzY2FubmVyIGRpcmVjdGxseS4NCg0KQnkgdGhlIHdheSwgd2h5IG5vdCB0
cnkgZm9zc29sb2d5PyBJdCBpcyByZWFsbHkgZ29vZCB0aGF0IHlvdSBjYW4gYnJvd3NlIHRoZSBj
b21wbGlhbmNlIGluZm9ybWF0aW9uIG9uIGZvc3NvbG9neSBzZXJ2ZXIgYWZ0ZXIgeW91IGdldCBz
cGR4IGZpbGVzIGJ5IGJpdGJha2Ugb2YgWVAuDQoNCkJlc3QgcmVnYXJkcw0KTGVpDQoNCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWFy
Y28gQ2F2YWxsaW5pDQo+IFNlbnQ6IE1vbmRheSwgSnVseSAxMiwgMjAyMSA5OjA5IFBNDQo+IFRv
OiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBMZWksIE1hb2h1aSA8bGVpbWFv
aHVpQGZ1aml0c3UuY29tPg0KPiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNwZHhzY2FubmVyXSBR
dWVzdGlvbiBhYm91dCBtZXRhLXNwZHhzY2FubmVyDQo+IA0KPiBIZWxsbywNCj4gSSBzZWUgdGhh
dCBtZXRhLXNwZHhzY2FubmVyIGhhcyBiZWVuIG1vdmVkIHRvIGh0dHA6Ly9naXQueW9jdG9wcm9q
ZWN0Lm9yZywNCj4gYW5kIGRvZXNuJ3QgbWFpbnRhaW5lZCBvbiBnaXRodWINCj4gYW55bW9yZS5o
dHRwczovL2dpdGh1Yi5jb20vZGw5cGYvbWV0YS1zcGR4c2Nhbm5lci9pc3N1ZXMvMjENCj4gDQo+
IFRoZXJlZm9yZSB0aGUgb25seSB3YXkgdG8gZ2V0IGluIGNvbnRhY3QgdG8gZGV2ZWxvcGVycyBp
cyB3cml0aW5nIHRvIHRoaXMgTUwNCj4gDQo+IEkgYW0gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgaG93
IG1ldGEtc3BkeHNjYW5uZXIgd29ya3MuDQo+IEknZCBsaWtlIHRvIHRlc3QgaXQgd2l0aG91dCBh
bnkgZXh0ZXJuYWwgc2VydmljZSAobm8gRm9zc29sb2d5KSB0aGVyZWZvcmUgSSBhbQ0KPiB0cnlp
bmcgdGhlIElOSEVSSVQgKz0gInNjYW5jb2RlLXRrIiBhcHByb2FjaC4NCj4gDQo+IEkgYW0gdGVz
dGluZyBpdCB3aXRoIGEgZHVuZmVsbCB2ZXJzaW9uIGFuZCBJIG5vdGljZWQgYSBsb3Qgb2YgZXJy
b3JzIHNvIEkgc3dpdGNoZWQgdG8NCj4gbWFzdGVyIGFuZCB0aGUgYml0YmFrZSBidWlsZCBzdGFy
dGVkIGJ1dCBhZ2FpbiBJIGFtIGZhY2luZyB0byBhIHByb2JsZW0NCj4gDQo+IEVSUk9SOiBiYXNo
LWNvbXBsZXRpb24tMi4xMC1yMCBkb19nZXRfcmVwb3J0OiBDb3VsZCBub3QgaW52b2tlIHNjYW5j
b2RlDQo+IENvbW1hbmQNCj4gDQo+IEknZCBsaWtlIHRvIGhhdmUgYWR2aWNlIGZyb20geW91IHRv
IHVuZGVyc3RhbmQgaWYgaXMgaXQgcG9zc2libGUgdG8gdGVzdCBpdCB3aXRob3V0DQo+IGFueSBl
eHRlcm5hbCBzZXJ2aWNlIGFuZCBkaXNjb3ZlciB3aGF0IGtpbmQgb2YgYXJ0ZWZhY3RzIGFyZSBn
ZW5lcmF0ZWQgaW50bw0KPiBkZXBsb3kvc3BkeC4NCj4gDQo+IFRoYW5rIHlvdQ0KPiANCj4gLS0N
Cj4gTWFyY28NCg==
