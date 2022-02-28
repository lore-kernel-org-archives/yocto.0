Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8303C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 13:03:22 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.55])
 by mx.groups.io with SMTP id smtpd.web12.19322.1646053401065123183
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 05:03:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=RsuC2gcN;
 spf=pass (domain: optimeas.de, ip: 40.107.13.55,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d4x/GJX7ervUshqSKbPRvKIS1QF+Ck2K5dqv48LLYdR6288KEspMoPwuYbuHnDAdCpn0Y1wbS4PkkQUGFNAFKWyLEf5zQO1RWP7HZJIDw538D9l/CVca1vxwwj6nZNLBkmiPn/1mV/he3bO+6VDSM2Gpacn1WjVDrRROsL1x0A2vFMiAYUx/MYiu5JCw74AjgWdwwQe6DCRKoXtsHHYx/pAECL4m0pQxV6YBz5ZMDUns15h2dlsya7DFjH9b4VXECWd/d/dV0xyVOJcAfE8LRXAl40gAxDiWn3ZeBTcYz/S3fXUppChNClTL+/sfvqhpnBPMTHx2ZbA1l7EC8wVC7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=maZBs7oWQEhQLV5JZyc2P9Bi8EJLe6mRmqp8Uo/ZqlY=;
 b=FTVtpnQ2FLqks0RAVJ6F9v6a16nU3Gk+9Gjd9Wzot1LMuJq9Fob6vt3sJ0vhQG86Ry5T6IVZlLZt8uThmL7+m384a7f6fZam4MDEZEKfvaWAV9sVAARGuD0BkWNh7QOkYrJmZvjyhc8z4NrflKsEk99rf2q7kfbsNbExnPoUZQZ1p1hzjoAwI3fBrEF/IqGq/dTs9o5n9l1lxLYPM1OhVAddFfLhadSywoHkF98vndkkXn642eX6JNGxP5B0V6l5Xx5gg1xLsadPVV2BseiRybli9KmLgWKOSN67IWGWNiU5owWmRBmqvN9/Ju6PPyoDNif0EcH4KPNF3vDUSJ0xMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=maZBs7oWQEhQLV5JZyc2P9Bi8EJLe6mRmqp8Uo/ZqlY=;
 b=RsuC2gcNYOvaulcijo0t8LjvWBr2FHc9KeLgAAWJfPGAvVPWLl9N9qQ70nXsIsRN9SImOQGN8M9CMvsvqdSzJAp71v77jLxlKJuh3ZQoOVnW/kh1DwtgExR+sGgy6h9ZX1Mdc9q8w598ZQ5mq+ioBD5BicdmIzcmVtRgzA+e8mI=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by HE1PR10MB1707.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:7:56::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Mon, 28 Feb
 2022 13:03:15 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 13:03:15 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Topic: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Index: AdgsoDxwz5nPM39dSs+Z5RVAclHBUQAAYmGAAAAVuDAAADPlgAAAJDFg
Date: Mon, 28 Feb 2022 13:03:15 +0000
Message-ID: 
 <AM0PR10MB3107F013146F6C5C3F9E0F7A99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4087319-2246-4ef7-5fcf-08d9fabaaee2
x-ms-traffictypediagnostic: HE1PR10MB1707:EE_
x-microsoft-antispam-prvs: 
 <HE1PR10MB17077323F473655CA5104F1099019@HE1PR10MB1707.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6ll0xxBIo69liqaE1X5Sdh5CL76JGv3EopkkCxMMTQfU2lmGgPsnMemP7CwzJH6XboWRfF6Rr1SvLVHn1V2VBiMGEktNnwtXAgL+Hyi8MeAmG4s9cffqZzUNZoI3lfOR0Pg6WFVmMRpOg6xM6A0vGJWVDY0YTcRoR7HY9Dt6uExQ5HrKyQiV+qEYNvPMkdplVA3i0MflxuLra+p0A9vABFtzE54Rnme9W7iSkhwAdGymVPZ6Gb0eNP/66H+G2dtd/qSfUFjLPXR2fGNT1VXqDFkpR5QP4oTEetM0tQ7lP3h7unz51H6m/m6nBSlYRFrEX4/8Tu/j8h4RG/UBzxHHgIPsK6A3T6ER2jaI4Z2EI3NtU+vRT7TG6gSwdbeAr3k7W2dci5FWW8+Co9U2/VUK7aereo3Dr9qjfRfiXV+RDeTDS0jYjokGffYLDcbj7lWb8apRvOjPlSufVAVKaZF4Ae0fBzvzpCKeE51naEBhZmN5ZqGdGXMTDOPn7pnxNLRQTEVRB4pX2qTv2PwiB2D0yIxtknDVMurVMntBuVOi+SZO1/QFVUNoJ98OlTxwY2S2as1m7otq+Ve7VLRSvK9V4YK24eI5Jr9R8mH4CaVZBUU4hrMMOuwJAvk9lDguSlg8PcRylstcYs0iX/vBiL18b+DoEQ23ro2OY3CBpmKkJOb+33H5dKF6BMe/jDrf8ao8ImSJGu4fYMj/M+tnlO4LTQAilY9CWfL0skA9X5Uk2pP3wSBFe99UOenqEwYJLO5OoLOvzwxEKdU3npPtcCwcyb1pioAq07aj6xJgaSrZhvg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(376002)(346002)(39830400003)(136003)(396003)(52536014)(5660300002)(44832011)(8936002)(122000001)(2906002)(8676002)(64756008)(76116006)(66946007)(66556008)(66476007)(66446008)(55016003)(86362001)(38070700005)(33656002)(38100700002)(316002)(186003)(66574015)(83380400001)(45080400002)(508600001)(110136005)(966005)(53546011)(9686003)(6506007)(7696005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?b0s0Tm9CNWVYcVcvZjRiaXJqMkd4YTdKVWlZdWRRemU0ZHVTNElsVWJaOWp3?=
 =?utf-8?B?MjRYYWdSR01BMmY0UXZpUWQyc044Qjk1SXRIUVVpSFpCNnpORVJQUmlJSU5B?=
 =?utf-8?B?WHdNTzZJbndqUmpNdEZmNWMwNzRPM3dUdHNOa2hlN2lWbkFKM2ZjYU1kQkVk?=
 =?utf-8?B?bXppcWY5VnhHSnlyc0Ixcyt3c0JrWDVwZHRxaTdCQlVNeGdFcndvTnFEMDk2?=
 =?utf-8?B?dWVnMEhNcTB4cWRwVFBuU3ZBRC9ncXJxTGhKNlpiM29lbk1odk5LNTgva2JC?=
 =?utf-8?B?ZTczTkZpMGo4aGxjQ1NGd1BzTFN4Q1pTeVJGUEJLeGFZTlVhRzJ5VnhOcWdW?=
 =?utf-8?B?UG9iTU9aOWxIVHROUEd6STBNb2cwenk3cm9TNk1iNVJVTCtrNVlHajZKb09l?=
 =?utf-8?B?dGVmL3VSQkVvSFYxSFpMNUFnZDBSVFQwaW1EL296bEZ4Y0Z5VXZUSExYRS94?=
 =?utf-8?B?TE1JY3B0VVAyK0MveXQrdG94YlNuT3g4Ymg0dkdtRi85TjJUNHY1M2pvalFR?=
 =?utf-8?B?M2F5ckVrZmF5ZXZEL0YvRGhlWUZxVVVpeUhhSTROblozNThMM0UvYlBLakx1?=
 =?utf-8?B?aWhIU1hUbUlxSTAwWXU1MTJOeDJVWldDQzdMR0ZKM3ZrWlR6dHFIKzNoVlZy?=
 =?utf-8?B?dDYwN2xpOVRzU0VXRlNYaXBlaXNDYUQxOE9kU0tNWXVIMndpRzRzcTJwNmZY?=
 =?utf-8?B?eXh0UXdsYXVxV25ORGNCaTNiLzlFdENPcGF2RldlZFFlck9VcnJFNk44SnVV?=
 =?utf-8?B?QmxhMS9vakdVQ01HRzZoeU5ZRHUzYzBpS0FRSHNpRmpqc01sYTAwNEhYRVkx?=
 =?utf-8?B?QjlySDRXeDdrcFVrV0ZyN2IzUzZRV3ZvSU5kbWNyWHdUcFdzUEwySWNCU3pp?=
 =?utf-8?B?UW1iZXk0M2loZHBURmNaZEN2bU5lQ1BJU3F5Q0tZYXdGVkRrbTJmUWpNeDRh?=
 =?utf-8?B?dnJiQzJwSk9MVWFBWHFIQVloUUlaK3pzejJxWWRGVSs1TmRTY1NyMitScVFw?=
 =?utf-8?B?RWEwVXRpdER4UEcvOGFPV3NueXg0bW9uaHcwVnA5eFBqZ2tlajFkOGdWN2dW?=
 =?utf-8?B?b3B0RGdKa0ZNZDd4MlZabEVNZEZPTlg4QmJ2NGhGaTBUK1IvWkJwL1FSd1h3?=
 =?utf-8?B?ZGZ0a1NUNlFqYUU3WVgya3B0U0VacXdHVnlINUxndE0ybzFBSklId1J0cytS?=
 =?utf-8?B?eTdGQ1BHZTlXTVlRdXROaHlXQW9EcnhlYUtFREIrVU1PZE5NUjNiVHdFTkhW?=
 =?utf-8?B?TTZaSmp5MGJqQ0VMNUpEUXlXbVJUa2xlM1BsZXA0a0F1RHc3TnZJeEFJTjdl?=
 =?utf-8?B?cFJDMG1qU3VqSWFIeUpGWndXby9Qa1hzMXdGZStPTHZwZFdtZDRKNE5RMC9S?=
 =?utf-8?B?UmpKSWNJWU0ySDRWU0pHMys5R3cvMi9DTWF1OXBFRjFicDd4WldlSkJJVnRJ?=
 =?utf-8?B?Q2RubGg1U04yZkN1YS9DeUlDYmJ2OXc3OTVPR1RQWklNQ2tmRnRRdmYva0Er?=
 =?utf-8?B?M3plb1hsUFV4dU1va1VVRVQ0Ym1qQkhwSVljbXpOQ2lValNWUGUvOEpwbEJp?=
 =?utf-8?B?YTlYR0V3dGEyMFhBdGU4MTlZbmFPZWpNT3J4S0NzZm9aa1JjZTJiK01tSjlW?=
 =?utf-8?B?ZFpWREFsNjNLTnRvNXJJRFVuSzNCUW1UeWVDWXpRc3RVenJuTUxZRzZVZy9T?=
 =?utf-8?B?aW9aNEl3VmNNNVI1VTUyeFJtdHF0WG9IRlhQNGtORVd3NUk1cHpKN2tmMkpi?=
 =?utf-8?B?ZXJNYi9hNjZIM3R2WVdCRE5BaFJ1RjV5T2haNzhuTit6UHRVbHZNcDRVb2h5?=
 =?utf-8?B?cFlLb3hENXRUWkRldEN2SkxNVU9iZTJnMkV5Z1dpUFVyTmU2WjZLWHplQ1dY?=
 =?utf-8?B?Sk1YdDZpYy9zcE9abmlLak5JZkFxc2ZVbmlGeDl2Q1ZyWS9SVmUzZDJISUln?=
 =?utf-8?B?UFhIS2M4WXlkOEx6UVpWNGxnRzN1REtpNU9ENm9MOS8vS0NoZDNnY3ZpUFlq?=
 =?utf-8?B?MFJ1QXluN0VRSjFnWmNyTzd5YjE4RWtXU0Z0YzlicmZ0VXFBNEk2ek02RHNO?=
 =?utf-8?B?MG5BRnNXREVyM0lMVDlBdnMxaHFQeVJGTGFodlpDeU5rd1dPT3h2NDVya3lU?=
 =?utf-8?B?N2ZCcWFQR2NIa2NzYzcwSUdpa0hLRFovdHJyRE9CeHFpbG5FMUttamU2UU5K?=
 =?utf-8?B?TXhDQmd5ak96a3BWSGF2MUZBSER4bXd2c0ZmQ1NrQ1Q5Y29OOWkwelJCb202?=
 =?utf-8?B?VG5tOEZzWFpmTE5vOHVTbmVFMmVDbnNkMk4zaXlWLy84TGFSOUpnSFFqWlV1?=
 =?utf-8?B?aVJVU3FPOXI4VGMyM2ZSNE5Ld21PUld6NVhHKzRMTkNQQTZpQ3FhUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a4087319-2246-4ef7-5fcf-08d9fabaaee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 13:03:15.4099
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 Av4+B54FMdK91XcIalvuJWlA4GXOIewqtegMdepokIWqXnCyb4sQOFSOg7kDxzqGPoQzz3CIIK/CCW/hAneAhxyJB0Yq2MDRhMVPsXM3V2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR10MB1707
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 13:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56314

DQpFUlJPUjogc21idXMtKi0qLndobCBpcyBub3QgYSB2YWxpZCB3aGVlbCBmaWxlbmFtZS4NCg0K
DQotLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQpWb246IEtvbnJhZCBXZWlobWFu
biA8a3dlaWhtYW5uQG91dGxvb2suY29tPiANCkdlc2VuZGV0OiBNb250YWcsIDI4LiBGZWJydWFy
IDIwMjIgMTM6NTkNCkFuOiBNYXR0aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xlaW5Ab3B0aW1lYXMu
ZGU+OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpCZXRyZWZmOiBSZTogQVc6IFt5b2N0
b10gcHl0aG9uMy1zbWJ1cyBubyBsb25nZXIgYnVpbGRzIC0gRG9lcyBhbnlvbmUgaGF2ZSBhbiBp
ZGVhPw0KDQpPbiAyOC4wMi4yMiAxMzo1NiwgTWF0dGhpYXMgS2xlaW4gd3JvdGU6DQo+IEhlbGxv
IEtvbnJhZCwNCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrLg0KPiANCj4gSGF2
ZSB5b3UgYmVlbiBhYmxlIHRvIGJ1aWxkIHRoZSBwYWNrYWdlIHdpdGggdGhlIGNoYW5nZT8NCj4g
SSBnZXQgYSBzaW1pbGFyIGVycm9yIHdpdGggaXQ6DQoNCkRhbmcgLSB0aGF0J3MgdGhlIHNlY29u
ZCBpc3N1ZSBiZWluZyBvcGVuIGluIHRoaXMgc2VyaWVzLi4uDQoNCj4gDQo+IEVSUk9SOiBzbWJ1
cy00LjMtKi53aGwgaXMgbm90IGEgdmFsaWQgd2hlZWwgZmlsZW5hbWUuDQoNClRyeQ0KDQpQWVBB
X1dIRUVMID0gIiR7UElQX0lOU1RBTExfRElTVF9QQVRIfS9zbWJ1cy0qLSoud2hsIg0KDQppbnN0
ZWFkIC0gYW5kIGl0IHNob3VsZCByZWFsbHkgd29yaw0KDQo+IA0KPiBCZXN0IHJlYWdyZHMsDQo+
IE1hdHRoaWFzDQo+IA0KPiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQo+IFZv
bjogS29ucmFkIFdlaWhtYW5uIDxrd2VpaG1hbm5Ab3V0bG9vay5jb20+DQo+IEdlc2VuZGV0OiBN
b250YWcsIDI4LiBGZWJydWFyIDIwMjIgMTM6NTENCj4gQW46IE1hdHRoaWFzIEtsZWluIDxtYXR0
aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4g
QmV0cmVmZjogUmU6IFt5b2N0b10gcHl0aG9uMy1zbWJ1cyBubyBsb25nZXIgYnVpbGRzIC0gRG9l
cyBhbnlvbmUgaGF2ZSBhbiBpZGVhPw0KPiANCj4gSGkgTWF0dGhpYXMsDQo+IA0KPiB0aGlzIGlz
IGNhdXNlIGJ5IG1lcmdlZCBQRVAtNTE3IGNoYW5nZXMuDQo+IFRvIG1ha2UgaXQgYnVpbGQgYWdh
aW4ganVzdCBpbmplY3QNCj4gDQo+IFBJUF9JTlNUQUxMX1BBQ0tBR0UgPSAic21idXMiDQo+IA0K
PiBpbnRvIHRoZSByZWNpcGUgb3IgYSBiYmFwcGVuZC4NCj4gTWFpbmx5IHRoZSBweXRob24zLXBy
ZWZpeCBvZiB0aGUgcmVjaXBlLCBtYWtlcyB0aGUgbmFtZSBndWVzc2luZyBmYWlsLCBJIHN1c3Bl
Y3QgcGF0Y2hlcyB0byBiZSBpbmNvbWluZyBzb29uDQo+IA0KPiBCUg0KPiBLb25yYWQNCj4gDQo+
IE9uIDI4LjAyLjIyIDEzOjQ1LCBNYXR0aGlhcyBLbGVpbiB3cm90ZToNCj4+IEhlbGxvLA0KPj4N
Cj4+IHRoZSBweXRob24zLXNtYnVzIHBhY2thZ2Ugbm8gbG9uZ2VyIGJ1aWxkcy4NCj4+DQo+PiBU
aGUgaW5zdGFsbCBzdGVwIGVuZHMgd2l0aCB0aGUgZm9sbG93aW5nIGVycm9yIG1lc3NhZ2U6DQo+
Pg0KPj4gRVJST1I6IHB5dGhvbjNfc21idXMtNC4zLSoud2hsIGlzIG5vdCBhIHZhbGlkIHdoZWVs
IGZpbGVuYW1lLg0KPj4NCj4+IERvZXMgYW55b25lIGhhdmUgYW4gaWRlYSB3aGF0IGlzIHRoZSBj
YXVzZT8NCj4+DQo+PiBNYW55IGdyZWV0aW5ncywNCj4+DQo+PiBNYXR0aGlhcw0KPj4NCj4+DQo+
Pg0KPj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwg
bWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPj4gVmlldy9SZXBseSBPbmxpbmUgKCM1NjMx
MCk6DQo+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU2
MzEwDQo+PiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9t
dC84OTQ0OTIyMC8zNjQ3NDc2DQo+PiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KPj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9nL3lvY3RvL3Vuc3ViDQo+PiBba3dlaWhtYW5uQG91dGxvb2suY29tXQ0KPj4gLT0tPS09
LT0tPS09LT0tPS09LT0tPS0NCj4+DQo=

