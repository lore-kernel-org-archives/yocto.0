Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D8D7C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 15:37:02 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.89])
 by mx.groups.io with SMTP id smtpd.web11.21232.1646062618963764117
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 07:37:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Khwr1vQK;
 spf=pass (domain: optimeas.de, ip: 40.107.13.89,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMLa0AGpt1JxScqJ8DLW9IlULaBVc/93NDOP+8DJWgOKYQIr31wZUsEPAd3PgQ5eyeeLtvBXYJtU3DNhEoJEbqB7aat6gAl2qV6akaoIBXpjAPC7NAMgdJ1XRv8ZSvBHRvYcRksHqGPoiyfuw4rmMbX1q6aQdLzJ2PSbnMFDiiIkLpM3K5pgTm+7279nbntM+k0oYAs/5vlcTW+EAP7jTcBHtTEWpPkMj5TWAjz5ZW+KogmDWaGypvOpTi8DxIX9grH2IERSVqJWmbLC2SFif0lzBzuzZRV+ISxqUIezKUfR33b2dirlGWRTSDuUr4Pa4M16CtV5aekl8BlFSg0ETw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk6CbueSTWMIq3x5M3M/lnVJvs0ojCfDkI0AGNlQjRc=;
 b=P+ypP0ysbYjd61K4Wd2M9amcFYaIqRqZAwBKIxG3MWiZCRubVEA1LCrChzUC+sGcCapZuh6XjHOG686b6H+gz5L9CyU8ypZqIIIRtr/LjsHEjCYLlZ6E2jjlLfJVGDOkBy5bZV7HnfNMLdP9MqTZvALRPZVOYA4UmKNN/eiHIIrl0xdGUUD2lTIosChp9nyswtmpfeXwadBvK4gWRljGJR/6XmZYUpb+IFoetvObJQ2ap3n8RDIwrtKcyOi3aV+S0aKXeVh3xkHjZAM3J7tN7GhfN+w6lATTwZKCuHRxNnJ8V0j4je8hzcRKPTA290Syo7dN9iZ1nzeVU3jq1XJrlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vk6CbueSTWMIq3x5M3M/lnVJvs0ojCfDkI0AGNlQjRc=;
 b=Khwr1vQKsjZKGCyl1GdthIXbN7i/8xmvCqnO6yeSE0LbLXYLHOUgOTxudkicq4fosAEV1CQ5e98dlWH4KQBhA1k9aDgDnYkxfY507m6lkmlr4NpWUUTWKkN1Z/pf/+x7530AczCy8GSQHyng5RqQYpDTQc6rv1mLQY4opgQpyJY=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by DB7PR10MB2412.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:4f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Mon, 28 Feb
 2022 15:36:53 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 15:36:53 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, Tim Orling <ticotimo@gmail.com>, Richard
 Purdie <richard.purdie@linuxfoundation.org>
Subject: AW: AW: AW: [yocto] python3-smbus no longer builds - Does anyone have
 an idea?
Thread-Topic: AW: AW: [yocto] python3-smbus no longer builds - Does anyone
 have an idea?
Thread-Index: 
 AdgsoDxwz5nPM39dSs+Z5RVAclHBUQAAYmGAAAAVuDAAADPlgAAAKkIQAABAIoAABRDkMA==
Date: Mon, 28 Feb 2022 15:36:53 +0000
Message-ID: 
 <AM0PR10MB31074F0537385801CB6F80D699019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e94e4985-26b0-4a39-477d-08d9fad02560
x-ms-traffictypediagnostic: DB7PR10MB2412:EE_
x-microsoft-antispam-prvs: 
 <DB7PR10MB2412E376531FCBD5617CA25899019@DB7PR10MB2412.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jR3Pz0OjCrtr4wj+YhXjkAp1NuaMZdoV1+bkk6sFiF3/ueKxpQ0wLYelIqHWjGOUOTTOr0kIDuxDiAqel6h+kAFuUmHAjjYm98+4a9HvffcQDiT5wfgGhCTbM3cEGrNVDWb+5erG6UiIk1pYqrAPSP5AmBj5Txwg9y72Xh4DQcil8qYIgCtytQxMoBiSJY+PJqUF0uWEnfxvhWSn2iMNpUcS4TptenxILaapgjOr5fh3s5aVqPJZ1eeool6nMnXt66WAILyRIUcJTkj5dKeYRXQaNM9Rt5dXpL5EZ4hsE9imWMpSanMn1b98rCdJzzykB8tKR8+aZJGELFsVEFjY1YMwv/y0nZL5M46BWu7FdvYVRh0ggvyBfDvsVMWYp/fYgMNFxSpTEAqf3YeGLk7kVwXX/xqHPvSW7OglRMvOzgnmYhSv+uv4aXhmfATJy2vN4ttLYpp6lERykydjadH3Ijygxw71jd/Gju69peYBfP/L+4UFjnHBuXM/3xXVdvUNTkfZqvQMJEb25NL78JnHvbpRDa5QE0gEKjAVZEpm0ZNecEgmaFQlPHw3irb6J7PtkIUza4BKLTWFBqiMixrVcGvLYArOOP6PJ+9yEnYJ1IudF6rS8Xe4Kpo/Lo8zCqtKtVamMUVpOqPez+OJjeyLErCA/mGPf2qSJJmNX6qBr40NaLyvZuQvD0SFiD7Nr6qxpfnH/WX757BMI7QvqWLQJQZ38iJmEKQQhIHugm48y0xKJySr5kZn6+axCG9TImMgUoMZt6AccJfWDN+r6EJefoEyepKVaPtt3HHBHd3wXcs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(136003)(376002)(366004)(396003)(346002)(5660300002)(44832011)(8936002)(52536014)(45080400002)(86362001)(83380400001)(186003)(66574015)(38070700005)(33656002)(66946007)(66446008)(64756008)(66476007)(8676002)(76116006)(66556008)(110136005)(55016003)(71200400001)(316002)(9686003)(966005)(6506007)(7696005)(38100700002)(508600001)(122000001)(2906002)(53546011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?akV1dGlLcWUyVTYxbE9LMEViazdUenVUaTZVd21GQUl1RWlKNytGYnlXVFlm?=
 =?utf-8?B?UG1pQUZMQWJVNUxyN1cwQ3hIQXRBM0FKV1daUklTMGw0cnIvaWQzSVBUKytU?=
 =?utf-8?B?c0tLM1BFQ3JiZjN4Yi9jVnREeWVtTWdKUFdyNlU2QmVnUDI4TWZDR1VQL3Ft?=
 =?utf-8?B?b1dIRFgzendCTDA0cnh0UWg0RGZqZXAxa05PamM4bFcwSlBSSXkwVGdzMUhD?=
 =?utf-8?B?YXZieDFjd0ZCRmJwWHl6bnphY1JxYmV4TXJSNlZWREF4MEhEQzJMQWNDenl6?=
 =?utf-8?B?OGJNY1BsZjI1K0hvS1VZU1NZdExJU0JXYTF5MHlsT0NVbVdBREVWVnkyb1Yx?=
 =?utf-8?B?cWdab0tIME5LZWtIcWJaRUtwdzhHdzlJOWtrTmQ2T0taMkpncThMTGQyb1Rn?=
 =?utf-8?B?MGV2dmh6NFpCWURLRVlLdFNqMzMwbUdQR3VuYWFlZVNhTXlXMitCU0hnb3hR?=
 =?utf-8?B?Tk5sZ3NBZzVXRXhORE5Gam85cktSWjZ5R0V1MUFDZnp2dGlIdHhmVHFFd3No?=
 =?utf-8?B?QklhclBidy9tUlZQOUVkcWQvRTJibVRKekJVSEVRMHcvSGcvRnVLZDVFbEcw?=
 =?utf-8?B?eFhUOTRNZ3BScTBLRERqQ0ZUUGwwQURqakpndkVhR01jTXdjT0xPRDhWdGhz?=
 =?utf-8?B?bHJnZXFTWkVPcUQ3ekdZOGtVc3RPczdWNDA1V2hDWStON3lEQU9UQzgzU2Vu?=
 =?utf-8?B?bHNhdDFhR2pKVWxoVk5FM3RraWlySkxqcDVJQlVrOEp3OHV0ODl3U0ZHLzB4?=
 =?utf-8?B?dURJWDNMVWR4Q05mTTNXcHlzNjhtNE1nazkvdnRGSWhXMkczQlpCRHNiQ21V?=
 =?utf-8?B?bGJ5R3lUZjY3NlN5MTlHZXpPZDdDWU4vcG5KQmhBTlY2Y3JWM0Z6RjQyME5C?=
 =?utf-8?B?enFXY29FdDdkZDBYTDVBSnBCZEp5cjh0c0ZLNU5IaFFjZ3FmK0pmbytjWXIw?=
 =?utf-8?B?dVE2WU53U2RNanBwWXljQnVDR21IL3lGSmx0RWVOZnVZQ0lwbXhvdDZpZEM3?=
 =?utf-8?B?ZWV2cHd6cCtxdVVld1dqMXluR2YvOGZlbG0yc2JsTnhnS0d2MWRSSEZtWHZv?=
 =?utf-8?B?RDVkVTRkRklRN3JFS0pJNjRpT1krQ2VrY2d1QzlGWEgvcUIyZzR2UkwvWVpy?=
 =?utf-8?B?WTFHVHlxejRwNDJOU0ZpV0JRSy81dkRQaHJBN1dnbTRCOTBsdGpTQ1BFMmQ2?=
 =?utf-8?B?TjQzbDV1RFpzNHF3MUtRSG1ZVXdsZHNIbEZXMEZZR0U4RGt1QzFMVmZzNnZP?=
 =?utf-8?B?ODFscjNobVFnbGdhcEZLT1dJZmxHaDBzY2M3WVpmYTRkaXFvc0RST0pHSTlz?=
 =?utf-8?B?S2p1cFd5ZG5UK1lyKzZYT2M0Y1pHWTdKenprWjVLT0VzRDlTZGlwZDhVNlNy?=
 =?utf-8?B?QUkvMC9TZEUzeUp0MXJnZWVwdERSR0pyeVJhdHZZQVZ4NldMWnIrSFVBVERa?=
 =?utf-8?B?S2dHZnBZbjBDMGhRWTgydnBNOWFjOTJpU2lTd0NnVWhVV2dxeEhYeVdTYkxQ?=
 =?utf-8?B?b1NrcUVTTWNlUHpJZmg2eVhJQk83enFKTklIL1ZQOTd0TTJDdVNZTlVWZ1Rp?=
 =?utf-8?B?eXF5dHozZzl3d2VsWkFJUytNQWoyelNpY1I2cnNBNENMeFpnZG5MYkVRZlRn?=
 =?utf-8?B?Mnh0R2g5NmcwUkgvTnY3ZW10Wk9YeHVHaGdxYThBWTE1Uk5oamduTzlMdDJ3?=
 =?utf-8?B?RDNSdDlOSGYyTjNwZjllUlY2VnRzS3Bqa3NmRUtNYmI0T3RsMjlGc0Y1WEp6?=
 =?utf-8?B?aENJZjVoajQvc2kxMkhqY3ZKRS9pMkxGZ1FPeEo3WVBncUNtWmhrakxUNnox?=
 =?utf-8?B?TDZWN25GU25IL1I3V21Md3VqWHgwL2l5alNXTngrN2I1QzM1OGdFVXFDYlRO?=
 =?utf-8?B?THJUYnJPdEI4ZEtxZWJKUmhmSEpUUVpTYkRJOXpvYVJBbjFSZ2E2Yk0rb0ZF?=
 =?utf-8?B?NlZ4UzVLQ1pVLzU5TFBaaGlicFpXaE5kdStxN29JbkhkekIvZ2VRMGZ0bHFh?=
 =?utf-8?B?V0d0TzV4Zi9PTDJ0QWkzbVp2U0pvMGg2MStKMlNhUU9YaTc5bmo4VnhSdmxR?=
 =?utf-8?B?NUdyalplRlprVDlSVmpXbmdHSnUwTE5KbndxVjFHa0wvS1Z3WjVlNGV1SUpU?=
 =?utf-8?B?bXhrNjlGZzRvZ1ZCOGtRRU52eUQ2Tnl3cXBuQW82NVJodFpYZXUzOUdsVjc4?=
 =?utf-8?B?YlB2WDl3b1hjUzNQcGdLM1RSQWR1K3hVNUFjZFNjcE5WUHV6VGNMdnVGaGdz?=
 =?utf-8?B?b0szTWg0T0IvNzc3SnFtN1B3VlpUNmY1QzR1ZGFnQXE5akNTSENYeTJIVDdG?=
 =?utf-8?B?MzFPMzFHRzcvdWJwZno0TjEvMzl5bUZwSW8rVGtKWUptU2NtbEVvZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e94e4985-26b0-4a39-477d-08d9fad02560
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 15:36:53.5437
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 H539vEMWgu74Eu2tJYEmCOum2EYT4lUF1fwlIjPjEo0O9XGusxiPT8p26CBRyYYyfv8ZMRYhcBOWsMe893Gs40u+cGalo9pWkAjF1o1IwV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR10MB2412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 15:37:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56320

SGVsbG8gS29ucmFkLA0KDQpUaGFuayB5b3UgdmVyeSBtdWNoIQ0KDQpUaGUgcGFja2FnZSBpcyBu
b3cgYnVpbGRpbmcuDQpJIGhhdmUgc2VudCBhIGNvcnJlc3BvbmRpbmcgcGF0Y2guDQoNCk1hbnkg
Z3JlZXRpbmdzLA0KTWF0dGhpYXMNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0t
LQ0KVm9uOiBLb25yYWQgV2VpaG1hbm4gPGt3ZWlobWFubkBvdXRsb29rLmNvbT4gDQpHZXNlbmRl
dDogTW9udGFnLCAyOC4gRmVicnVhciAyMDIyIDE0OjExDQpBbjogTWF0dGhpYXMgS2xlaW4gPG1h
dHRoaWFzLmtsZWluQG9wdGltZWFzLmRlPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzsg
VGltIE9ybGluZyA8dGljb3RpbW9AZ21haWwuY29tPjsgUmljaGFyZCBQdXJkaWUgPHJpY2hhcmQu
cHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQpCZXRyZWZmOiBSZTogQVc6IEFXOiBbeW9jdG9d
IHB5dGhvbjMtc21idXMgbm8gbG9uZ2VyIGJ1aWxkcyAtIERvZXMgYW55b25lIGhhdmUgYW4gaWRl
YT8NCg0KSGkgTWF0dGhpYXMsDQoNCnlvdSdyZSByaWdodCA6KA0KDQpQWVBBX1dIRUVMID0gIiR7
U30vcHktc21idXMvZGlzdC9zbWJ1cy0qLSoud2hsIg0KDQpmaW5hbGx5IGRvZXMgaXQNCg0KQFRp
bSBAUmljaGFyZA0KUFlQQV9XSEVFTCBkb2Vzbid0IHJlc3BlY3QgU0VUVVBUT09MU19TRVRVUF9Q
QVRILCB3aGljaCBtaWdodCBiZSBhbm90aGVyIGlzc3VlIHRvIGZpeA0KDQpCUg0KS29ucmFkDQoN
Ck9uIDI4LjAyLjIyIDE0OjA0LCBNYXR0aGlhcyBLbGVpbiB3cm90ZToNCj4gSGVsbG8gS29ucmFk
LA0KPiANCj4gdW5mb3J0dW5hdGVseSBpdCBzdGlsbCBkb2VzIG5vdCBidWlsZDoNCj4gDQo+IEVS
Uk9SOiBzbWJ1cy0qLSoud2hsIGlzIG5vdCBhIHZhbGlkIHdoZWVsIGZpbGVuYW1lLg0KPiANCj4g
QmVzdCByZWdhcmRzLA0KPiBNYXR0aGlhcw0KPiANCj4gLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNo
cmljaHQtLS0tLQ0KPiBWb246IEtvbnJhZCBXZWlobWFubiA8a3dlaWhtYW5uQG91dGxvb2suY29t
Pg0KPiBHZXNlbmRldDogTW9udGFnLCAyOC4gRmVicnVhciAyMDIyIDEzOjU5DQo+IEFuOiBNYXR0
aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xlaW5Ab3B0aW1lYXMuZGU+OyANCj4geW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBCZXRyZWZmOiBSZTogQVc6IFt5b2N0b10gcHl0aG9uMy1zbWJ1
cyBubyBsb25nZXIgYnVpbGRzIC0gRG9lcyBhbnlvbmUgaGF2ZSBhbiBpZGVhPw0KPiANCj4gT24g
MjguMDIuMjIgMTM6NTYsIE1hdHRoaWFzIEtsZWluIHdyb3RlOg0KPj4gSGVsbG8gS29ucmFkLA0K
Pj4NCj4+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrLg0KPj4NCj4+IEhhdmUgeW91IGJl
ZW4gYWJsZSB0byBidWlsZCB0aGUgcGFja2FnZSB3aXRoIHRoZSBjaGFuZ2U/DQo+PiBJIGdldCBh
IHNpbWlsYXIgZXJyb3Igd2l0aCBpdDoNCj4gDQo+IERhbmcgLSB0aGF0J3MgdGhlIHNlY29uZCBp
c3N1ZSBiZWluZyBvcGVuIGluIHRoaXMgc2VyaWVzLi4uDQo+IA0KPj4NCj4+IEVSUk9SOiBzbWJ1
cy00LjMtKi53aGwgaXMgbm90IGEgdmFsaWQgd2hlZWwgZmlsZW5hbWUuDQo+IA0KPiBUcnkNCj4g
DQo+IFBZUEFfV0hFRUwgPSAiJHtQSVBfSU5TVEFMTF9ESVNUX1BBVEh9L3NtYnVzLSotKi53aGwi
DQo+IA0KPiBpbnN0ZWFkIC0gYW5kIGl0IHNob3VsZCByZWFsbHkgd29yaw0KPiANCj4+DQo+PiBC
ZXN0IHJlYWdyZHMsDQo+PiBNYXR0aGlhcw0KPj4NCj4+IC0tLS0tVXJzcHLDvG5nbGljaGUgTmFj
aHJpY2h0LS0tLS0NCj4+IFZvbjogS29ucmFkIFdlaWhtYW5uIDxrd2VpaG1hbm5Ab3V0bG9vay5j
b20+DQo+PiBHZXNlbmRldDogTW9udGFnLCAyOC4gRmVicnVhciAyMDIyIDEzOjUxDQo+PiBBbjog
TWF0dGhpYXMgS2xlaW4gPG1hdHRoaWFzLmtsZWluQG9wdGltZWFzLmRlPjsgDQo+PiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQo+PiBCZXRyZWZmOiBSZTogW3lvY3RvXSBweXRob24zLXNt
YnVzIG5vIGxvbmdlciBidWlsZHMgLSBEb2VzIGFueW9uZSBoYXZlIGFuIGlkZWE/DQo+Pg0KPj4g
SGkgTWF0dGhpYXMsDQo+Pg0KPj4gdGhpcyBpcyBjYXVzZSBieSBtZXJnZWQgUEVQLTUxNyBjaGFu
Z2VzLg0KPj4gVG8gbWFrZSBpdCBidWlsZCBhZ2FpbiBqdXN0IGluamVjdA0KPj4NCj4+IFBJUF9J
TlNUQUxMX1BBQ0tBR0UgPSAic21idXMiDQo+Pg0KPj4gaW50byB0aGUgcmVjaXBlIG9yIGEgYmJh
cHBlbmQuDQo+PiBNYWlubHkgdGhlIHB5dGhvbjMtcHJlZml4IG9mIHRoZSByZWNpcGUsIG1ha2Vz
IHRoZSBuYW1lIGd1ZXNzaW5nIA0KPj4gZmFpbCwgSSBzdXNwZWN0IHBhdGNoZXMgdG8gYmUgaW5j
b21pbmcgc29vbg0KPj4NCj4+IEJSDQo+PiBLb25yYWQNCj4+DQo+PiBPbiAyOC4wMi4yMiAxMzo0
NSwgTWF0dGhpYXMgS2xlaW4gd3JvdGU6DQo+Pj4gSGVsbG8sDQo+Pj4NCj4+PiB0aGUgcHl0aG9u
My1zbWJ1cyBwYWNrYWdlIG5vIGxvbmdlciBidWlsZHMuDQo+Pj4NCj4+PiBUaGUgaW5zdGFsbCBz
dGVwIGVuZHMgd2l0aCB0aGUgZm9sbG93aW5nIGVycm9yIG1lc3NhZ2U6DQo+Pj4NCj4+PiBFUlJP
UjogcHl0aG9uM19zbWJ1cy00LjMtKi53aGwgaXMgbm90IGEgdmFsaWQgd2hlZWwgZmlsZW5hbWUu
DQo+Pj4NCj4+PiBEb2VzIGFueW9uZSBoYXZlIGFuIGlkZWEgd2hhdCBpcyB0aGUgY2F1c2U/DQo+
Pj4NCj4+PiBNYW55IGdyZWV0aW5ncywNCj4+Pg0KPj4+IE1hdHRoaWFzDQo+Pj4NCj4+Pg0KPj4+
DQo+Pj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4+PiBMaW5rczogWW91IHJlY2VpdmUgYWxs
IG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4+PiBWaWV3L1JlcGx5IE9ubGluZSAoIzU2
MzEwKToNCj4+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdl
LzU2MzEwDQo+Pj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvbXQvODk0NDkyMjAvMzY0NzQ3Ng0KPj4+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0
cy55b2N0b3Byb2plY3Qub3JnDQo+Pj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViDQo+Pj4gW2t3ZWlobWFubkBvdXRsb29rLmNvbV0NCj4+
PiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPj4+DQo=

