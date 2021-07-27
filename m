Received: from esa20.fujitsucc.c3s2.iphmx.com (esa20.fujitsucc.c3s2.iphmx.com [216.71.158.65])
 by mx.groups.io with SMTP id smtpd.web10.5580.1627348270351054516
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 18:11:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=Xlb4OaN2;
 spf=neutral (domain: fujitsu.com, ip: 216.71.158.65, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1627348270; x=1658884270;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=WeTbxnEhK44ho1yCMx7HRDRy0gIpKRZZf7l9dW8uC8Y=;
  b=Xlb4OaN2PfJafaIFEEEA/t7eFk8/RxHYpLJxME6W8YaLbMeDzA9ZPRa1
   cezbsiIRc1qORUAGwQv+jfQp83zJwTzPO12UylXGvX5sN8K0p0Pyphg4q
   oomlTFB6eJXIhxV28Xj3qZzCeyMkAB+EujBVEqIteJZZqJ8cjU1a+zcDZ
   tx2LebSVUqi9iiCnew2Vvn/ck8PsLFjAs8Dc+C4DBVjJCNVdB4qKOD0Fe
   Ng2i2YRNQtLlbE7aeown33AWFE/EdbDMJfnq+w4jPXQukriZzpopi2rjm
   Kf44v2R1887THVhgFYjNdBahJp1t9DlV9zojI8wVcFybTz1TKaBAfGE/l
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="35530452"
X-IronPort-AV: E=Sophos;i="5.84,272,1620658800"; 
   d="scan'208";a="35530452"
Received: from mail-os2jpn01lp2053.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.53])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 10:11:07 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4Bj3SLYg3mky7IuZVNp3FCIskE4hmt3TqBAcRdRMHeBPUp5yH+81kKcRqVW+hTtCResaBkHYS7l/3u6Tr5XXGGPwXt2SnxcdULeSwm0Sw1F9xjVz9SLdS2saDRvBRFxnHl92/Z/fFh5g0PIVXV3nJlWILPFAzhSNqe0e7c4d969j30nvjszyJcfUO96h3tbOoeQCMqXtacsRM2glhHu2A/7xyQ/gSWP4T07bwi1VS6btxcrdkMktc3MzAdJMoSx5xUEQ6N//wzQIFpBkxwCtKZyIMYTJvawds9YqOd/AQaaz7fG9FuQnb6gglkFtXpTR4VtHsch7V1z2g4BDJmXiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WeTbxnEhK44ho1yCMx7HRDRy0gIpKRZZf7l9dW8uC8Y=;
 b=YcamVqgtXxGyurlAfO6JAPlgRuJ3P/KM1YqV2Cj1a52H5vPNuNfWUqzCzpRST25/phnVFJG8e3a8ziKdHCK+yfIu0a2Da1CgG4RZVIuGCCTLw6gD4i4QJixWvzwR5xU4/4+3Uyk3h+zMVGvh01F8pyrZsryDuQcWjxKfVEAEgzjhpDraandEzHA63V5R+VNYNgG2uoDyZRPgmASgBRwP/VhfTNiQhhv3kJwZ+CqIr21t0sgEMbV2qyAfNcB6li0anPWJnEfH1ewx8UcyqFzhwrKSt3w6B2N50Yb797hd1+qjrQZAJaYWuBLr4Ac/TV/hxa0rJ9wm4sggdlaYPyaqBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WeTbxnEhK44ho1yCMx7HRDRy0gIpKRZZf7l9dW8uC8Y=;
 b=dpdn3HAWr9nmWWzuI0BiPNt+hXQSSGOm5aulKom1LB9X+6STO4pfKqIWBbOtHSlX79EzAujaEOoqbVVqgOY9Dc3RaBqD4qrXtD2ggLfbnubtsCKiElJBWH9B8u5KDpPQ7gENmIKXHsKZwgL++WfP3063JQY03vm6QJl8RZgXM6o=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OSBPR01MB4038.jpnprd01.prod.outlook.com (2603:1096:604:40::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Tue, 27 Jul
 2021 01:11:03 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 01:11:03 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: Marco Cavallini <koansoftware@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
Thread-Topic: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved
 check if spdx already exists out of the task
Thread-Index: AQHXfvpruumRrGdwV0ShrZDoOmtH46tWCe7Q
Date: Tue, 27 Jul 2021 01:11:03 +0000
Message-ID: 
 <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <20210722130623.30388-1-koansoftware@gmail.com>
In-Reply-To: <20210722130623.30388-1-koansoftware@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3cb2e03-e6e6-4f17-c864-08d9509b673f
x-ms-traffictypediagnostic: OSBPR01MB4038:
x-microsoft-antispam-prvs: 
 <OSBPR01MB40385448B918349395EC8758A0E99@OSBPR01MB4038.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 M3x6JRhtzrNVkTYasn+4cIr6N91zYbk35EerXkywRqnW34C1oOIOuDb4Fm2Jf9iHvl+VFojMYsSLEu38ixcfHSrP/k6fmVtY7CTq0XmI2WfGsIHRXiA6I6JZjvMB5rg7OsdQe+/rgCEbfd2ZMkEPoZlVTz9fNxWPyRoaHQzvmdOD5ESQ6WWYImI5wQbTZpQUQYV7JGr8w/vErXS6PXcHN4kcEZijsMekZO3h79lGa29D9/pGGSs/SaD4WkmEe2ZtEV5/64dTqzcTpN8aw7aQkoxNPXY3Wcg7HjbSGOem45InOp+LLWcXnxj877znGJCiTncMUbY2uuu+5oi+fLXOnVcZTsph43bdG2NdG5iw0PYLbGqh82DLB3+xnefF2Rv0M8qLA+z3niTG/Wp6ZUMuY5LqkfWB0EIaiL+w0vESyc6E1i0ICbhneTO0NHM/FIk6sExleZDUYsLp3I7eHY8p3ZUqceqXoJo6bASS4fD4SSdaiJOG50/nVIIF5S8eWffMoqZahfNvl8AgyUFhbgCnZ8gV24vZI649DgIOrrXAzy7wG3ia1UMzCu+KHQ3lJeqEbUCkilYNowxQ4SoApXpG1O87E5sjCN3CfUULCZt32Uni6RhuNlNjtnYU0iZlE0huQK1ZJusZZ+MMBPnmgPnuGP4SMy5iwKsy+POKx9oI/XVIVYvVjIfnZE44dMGZXqaZ4g3wBWUIB1KMfiN8TGfKoyI4HYUNCpDOfzaeIhoXBjPKviJNkagfSViPusWemxIYAD5+Vp4puttaDMv/NTveE1G4Zvc7MMBk68AH0zp8E7k=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(38100700002)(4326008)(66556008)(110136005)(6506007)(66446008)(8676002)(186003)(33656002)(66476007)(53546011)(64756008)(122000001)(7696005)(478600001)(8936002)(5660300002)(316002)(86362001)(9686003)(966005)(2906002)(83380400001)(76116006)(66946007)(55016002)(52536014)(71200400001)(26005)(85182001)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?Z2NkLzMxcGxFUnpDQTNlSm5wWGEyU0U5ZHBEMWFycEtXS2llOGNKZmhX?=
 =?shift_jis?B?ZE5QNUoyeWtkb3hZYjQ5anBLM2V2NkdoTTFUTG1wenlrcHpjK0ZMSTlh?=
 =?shift_jis?B?N0w4L21ZdkpGQWtHSERvejdBS0dtSHdHYVRUUC9GTFlmTGltby9zcHdq?=
 =?shift_jis?B?TFVqZUUzRU5tdUhlVWd1ajJmcDhsOTlxYXJhWk5KYkNVZ0VJNDJzSmg2?=
 =?shift_jis?B?SjhwR1o4bDR5NUkvVkZzVlQ2WExnY1gveW1GMVJORDlTMktWZ0pUdU4x?=
 =?shift_jis?B?OXg4NFN1R1hCTHhDdFVLUHJ6S2MxaXVCMmtZU2xFdjQwTnBocTIyUlh0?=
 =?shift_jis?B?dDBDWHBxa01yOVc2cmtZQ0F0RGxWaDNtUlJYbE02M21qOWVSL0hoa3Z4?=
 =?shift_jis?B?MHowK3NTZ3l1SWU2RnhsWEg5SFNETnF1YUMwSGRoMjY3WHQ4WFhoT0lY?=
 =?shift_jis?B?S0FhMG0ySk1sb01TejluRE41TjdzWjhJRHdtY2FjVm1OMXppMklOcktv?=
 =?shift_jis?B?TmVPbkF4cE9kQW5Ia3JJYzdMczUzV2xNR1Yrak1FV2hVaTh5Qld1WkRa?=
 =?shift_jis?B?Ymp6NDViRHoxUXhFSy9lcVF3YzZZWUFUOXU1d3o3bTE4UFhoSVhUakg0?=
 =?shift_jis?B?ekhlZWVsL05qU1EyajNXdDl5cFBmK2R3MGJ6NmJaTUVtd3NqNzhIMmM1?=
 =?shift_jis?B?M3JDaGNOenBuekpja0trT3NlTW5sNHhJdEF5b3FtTklrdUNqaldBQ1FT?=
 =?shift_jis?B?WCs4bElMNTJ4ajVKNVlBd1FoRlNicGRVc0NSelhSdmlqb0ZoYm5EMlAw?=
 =?shift_jis?B?M09sUVM5dzJnV1VVbkl1Qy9XWGwvOWt5SWFkbFVkWWlmeFpFakRnUUZR?=
 =?shift_jis?B?TEtqY29TZENMVjN2d0JYdHlNNVRueWQzdGU2Z0I1em5ZdnBELzY5RkI4?=
 =?shift_jis?B?Mm1DUHVDZ0JIUm0ybjlJQVkxVWpHRmJGbXFGbDZIcS9uSmhHUG9aK3Vy?=
 =?shift_jis?B?WVpnZkxlLzg1N1FncjJIUGg5cFdqb0JzRWlWMG1waEUyNlhScGQ4Vjcx?=
 =?shift_jis?B?ZFgwUFBGYjJGdXZhRHNyRDBocEtwUHByVmgxYlgraHJSd2pna2hXRUxF?=
 =?shift_jis?B?NzNDdndXSGRIMXU4dlkxb2ovM0c0WkM0TUUzcDlWUnVBMnFtbSs1UnBF?=
 =?shift_jis?B?bnJwSm84MFVRWkNqQnFpYmthUDRBVXEzaXRtN3RvbCtMalVrNmVSSFZw?=
 =?shift_jis?B?VzRhalVuZmM1eWViRFl5Z1BTa2FrTnUxZzhiVWtSa3lhbUtIclRvdzUy?=
 =?shift_jis?B?aG5NT3VNZmFaRnlhcUgya09OUVVXY0JXSE5NcDJ3S2dwRXFiU2MvRFJq?=
 =?shift_jis?B?MzZXcVlYZVFSakxQbDgxanpuQUM5NlorZjIrQ2s2alU5QXhUbWhZNnE1?=
 =?shift_jis?B?MFJNa0QxVG53MnBkUHc5cG9nQ3lmUVowZmU5S2RSZnFyRGR4NGUvR3Z2?=
 =?shift_jis?B?V0F4a08vTk5rRFQzUG92WUtUZlVIZ256Vlh1ZWduMjZJb2drU3FOOTBR?=
 =?shift_jis?B?YVI3TmF2RFRsbHh1N1BCenFLVjFxTjlDaFk0WUs5YUlHNjQvR2tzOHhE?=
 =?shift_jis?B?K2FZYWJyOVQzRWRDdjJKaXRwaHlnWTU5eWdKZnF6S0pXb09XSzBkTlQ0?=
 =?shift_jis?B?VmlpWXlLbGN0cG9Qb0wyTTN4aWpoVUJwSWxJSFRDT2NMTXA2Uys4K3dT?=
 =?shift_jis?B?VGZzSTkzSHg0VytRK0RYaVNqWFBpM2xsZ0xGRG5INHBPbVZaL0EyRmZ1?=
 =?shift_jis?B?SWtNOC9pWmk0R1lnLzVlS21ueU5MWUFwc1puRmNvRWU0MGdFamdUeDJI?=
 =?shift_jis?Q?LUMUx1Z5vyNYbcL08IaqwLB0LKZx7SjtMe65IS0Gr3?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3cb2e03-e6e6-4f17-c864-08d9509b673f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 01:11:03.1056
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFjpwLeFBtdMuVJKyZvvp30weJUHAigkIqJ0bXGufJxLwiZb2U+AWwwGbRoQOlGtQzo5OxObRFOjd8x1bwNqlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4038
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgTWFyY28NCg0KSSdtIHNvcnJ5LCBidXQgeW91ciBwYXRjaCBzZWVtcyBub3QgYmFzZSBvbiB0
aGUgbGF0ZXN0IHNvdXJjZSBjb2RlLg0KaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0
L2NnaXQuY2dpL21ldGEtc3BkeHNjYW5uZXIvdHJlZS9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJi
Y2xhc3MNCg0KQmVzdCByZWdhcmRzDQpMZWkNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZg0KPiBPZiBNYXJjbyBDYXZhbGxpbmkNCj4gU2VudDog
VGh1cnNkYXksIEp1bHkgMjIsIDIwMjEgOTowNiBQTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KPiBDYzogTWFyY28gQ2F2YWxsaW5pIDxtLmNhdmFsbGluaUBrb2Fuc29mdHdh
cmUuY29tPjsgTWFyY28gQ2F2YWxsaW5pDQo+IDxrb2Fuc29mdHdhcmVAZ21haWwuY29tPg0KPiBT
dWJqZWN0OiBbeW9jdG9dIFttZXRhLXNwZHhzY2FubmVyXVtQQVRDSF0gZm9zc29sb2d5LXJlc3Qu
YmJjbGFzczogTW92ZWQNCj4gY2hlY2sgaWYgc3BkeCBhbHJlYWR5IGV4aXN0cyBvdXQgb2YgdGhl
IHRhc2sNCj4gDQo+IEZyb206IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3
YXJlLmNvbT4NCj4gDQo+ICBXaXRoIHRoZSBwcmV2aW91cyBjb2RlIHdhcyBpbXBvc3NpYmxlIHRv
IHJ1biB0aGUgZG9fZ2V0X3JlcG9ydCAgdGFzaw0KPiB3aGVuZXZlciBhIGNvcnJlc3BvbmRlbnQg
LnNwZHggZmlsZSB3YXMgYWxyZWFkeSBwcmVzZW50ICBpbg0KPiB0bXAvZGVwbG95L3NwZHguDQo+
ICBOb3cgdGhlIGNoZWNrIGlmIHNwZHggYWxyZWFkeSBleGlzdHMgaXMgYXQgYSBoaWdoZXIgbGV2
ZWwgIHRoZXJlZm9yZSBpcyBwb3NzaWJsZQ0KPiB0byBydW4gOiBiaXRiYWtlIC1jIGdldF9yZXBv
cnQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIENhdmFsbGluaSA8a29hbnNvZnR3YXJlQGdt
YWlsLmNvbT4NCj4gLS0tDQo+ICBjbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MgfCAxOCAr
KysrKysrKystLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvY2xhc3Nlcy9mb3Nzb2xvZ3ktcmVzdC5i
YmNsYXNzIGIvY2xhc3Nlcy9mb3Nzb2xvZ3ktcmVzdC5iYmNsYXNzIGluZGV4DQo+IDM2OTQ0NDAu
LmU1NWU4NTkgMTAwNjQ0DQo+IC0tLSBhL2NsYXNzZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcw0K
PiArKysgYi9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCj4gQEAgLTg0LDYgKzg0LDE1
IEBAIHB5dGhvbiAoKSB7DQo+ICAgICAgICAgIGNyZWF0ZV9tYW5pZmVzdChpbmZvLHNzdGF0ZWZp
bGUpDQo+ICAgICAgICAgIHJldHVybg0KPiANCj4gKyAgICAjIGlmIHNwZHggYWxyZWFkeSBleGlz
dHMNCj4gKyAgICBpZiBvcy5wYXRoLmV4aXN0cyhpbmZvWydvdXRmaWxlJ10pOg0KPiArICAgICAg
ICBiYi5ub3RlKGluZm9bJ3BuJ10gKyAic3BkeCBmaWxlIGhhcyBiZWVuIGV4aXN0LCBkbyBub3Ro
aW5nIikNCj4gKyAgICAgICAgcmV0dXJuDQo+ICsgICAgaWYgb3MucGF0aC5leGlzdHMoIHNzdGF0
ZWZpbGUgKToNCj4gKyAgICAgICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMg
YmVlbiBleGlzdCwgZG8gbm90aGluZyIpDQo+ICsgICAgICAgIGNyZWF0ZV9tYW5pZmVzdChpbmZv
LHNzdGF0ZWZpbGUpDQo+ICsgICAgICAgIHJldHVybg0KPiArDQo+ICAgICAgZC5hcHBlbmRWYXJG
bGFnKCdkb19zcGR4JywgJ2RlcGVuZHMnLCAnICVzOmRvX2dldF9yZXBvcnQnICUgcG4pDQo+ICAg
ICAgYmIuYnVpbGQuYWRkdGFzaygnZG9fZ2V0X3JlcG9ydCcsICdkb19jb25maWd1cmUnLCAnZG9f
cGF0Y2gnICwgZCkNCj4gICAgICBiYi5idWlsZC5hZGR0YXNrKCdkb19zcGR4JywgJ2RvX2NvbmZp
Z3VyZScsICdkb19nZXRfcmVwb3J0JywgZCkgQEANCj4gLTE1NywxNSArMTY2LDYgQEAgcHl0aG9u
IGRvX2dldF9yZXBvcnQgKCkgew0KPiAgICAgIGluZm9bJ291dGZpbGUnXSA9IG9zLnBhdGguam9p
bihtYW5pZmVzdF9kaXIsIGluZm9bJ3BuJ10gKyAiLSIgKyBpbmZvWydwdiddICsNCj4gIi5zcGR4
IiApDQo+ICAgICAgc3N0YXRlZmlsZSA9IG9zLnBhdGguam9pbihzcGR4X291dGRpciwgaW5mb1sn
cG4nXSArICItIiArIGluZm9bJ3B2J10gKyAiLnNwZHgiICkNCj4gDQo+IC0gICAgIyBpZiBzcGR4
IGhhcyBiZWVuIGV4aXN0DQo+IC0gICAgaWYgb3MucGF0aC5leGlzdHMoaW5mb1snb3V0ZmlsZSdd
KToNCj4gLSAgICAgICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMgYmVlbiBl
eGlzdCwgZG8gbm90aGluZyIpDQo+IC0gICAgICAgIHJldHVybg0KPiAtICAgIGlmIG9zLnBhdGgu
ZXhpc3RzKCBzc3RhdGVmaWxlICk6DQo+IC0gICAgICAgIGJiLm5vdGUoaW5mb1sncG4nXSArICJz
cGR4IGZpbGUgaGFzIGJlZW4gZXhpc3QsIGRvIG5vdGhpbmciKQ0KPiAtICAgICAgICBjcmVhdGVf
bWFuaWZlc3QoaW5mbyxzc3RhdGVmaWxlKQ0KPiAtICAgICAgICByZXR1cm4NCj4gLQ0KPiAgICAg
IHNwZHhfZ2V0X3NyYyhkKQ0KPiANCj4gICAgICBiYi5ub3RlKCdTUERYOiBBcmNoaXZpbmcgdGhl
IHBhdGNoZWQgc291cmNlLi4uJykNCj4gLS0NCj4gMi4xNy4xDQoNCg==
