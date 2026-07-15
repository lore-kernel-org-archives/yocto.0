Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AEEEC44501
	for <webhook@archiver.kernel.org>; Wed, 15 Jul 2026 17:10:51 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.58])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.107.1784135443182245135
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2026 10:10:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=cl2xo4w9;
 spf=pass (domain: siemens.com, ip: 52.101.72.58, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p+N5zrOBrbDUjT9Zimz5eQ7I41jVUGRPDNhfEuLO8KgTstymg6HITnzJLr4IuKPH9Lt7ulP67ndF9J5bMtCFHf+lDqyX6RJ7qWyVg93UwZfCNuELIIUWkwzUzJzFO1CLO5my2szh+Z0zOGhuzIcD7tD0t37IiUPCCUBs3UZh/xoDrgWX3RqcgBhwW44suJauC3K2k68dtMpDUZtpihVb4YRgjAwm+xey7yxfIi0zqLQ/ak2LvX71uNhRkMk6+Zhrv+y0gghDn57hIIwCX249Z1LDUwxskZ/4JnDumSYNKcQNv4m9ODxrgTx5bZXcrrd9k1PLqkzFQprnAPyLbhAKiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1yUzjIlMWLtGPbB5+su/U23Ap7itiUa7H5phUPQ6nw=;
 b=XA8P1Mxa9vItyoDcHBeu7FCkeQbEjyL+EpqOoIJNXfKObk2uGroE7dNTCc19CQvU7Mmb3KeOPUMLcs+yzyYytdaSfr+TH8VPmySzUM3dNTaphZ4zIwukwGrnY/DsafXJMzftHh85jUCOxexjBmYWWi5W3KShyz4TthmX9obHMBpZbZT5boLKlXI1fN9DjA8EUmWy1Skt8knOiPG1w2s+GAlPrUMkaagM9rY5WwM/21spfso5qL1JOvZEWIu5s4xx0q8v00NN8r5GfldIeb7nUlYxJNOz+ZlYwIj7PMbgJSe5WOTTdGT/zujvgbXUbauly+eksb8m8Dgw5JWHgBtqUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1yUzjIlMWLtGPbB5+su/U23Ap7itiUa7H5phUPQ6nw=;
 b=cl2xo4w9i5p4wX8bvqHYZEbUyUnLhAnbPM6BcYkTaDpk7IxMSn3wpO8QiefhclmPHwL68hVBYH8IsetM4JxexJRj2UDMBY2+lcNb4IVfotA8WkmfiTlyoj3QkmNd+WUhTlPew3XGzND56ITW1hda90Ar3bwivQH0bJrCMSlDgdd7190ZPUIRtbzymH2ggi9Xo9SUY6wMf1Q+G1FWQkwWbZS8Y7cG8R6rr1garRGCb50w7PHl855PLod6A1OqkxoMLqR79KUqWM8pAe9LpTwh51Tzs+ZCzpsV55ep4PruP7DqeH21sueSiYC9PM1YUs2xCm9DGwBJ7zbNCcMNmL+qgw==
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:420::16)
 by AS8PR10MB8015.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:52a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Wed, 15 Jul
 2026 17:10:26 +0000
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008]) by AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008%4]) with mapi id 15.21.0181.019; Wed, 15 Jul 2026
 17:10:26 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "Kumar,
 Manu" <kumar.manu@siemens.com>
Subject: RE: [yocto] Build Issue in TISDK 9.1
Thread-Topic: [yocto] Build Issue in TISDK 9.1
Thread-Index: Ad0UbLak3RMXcc1vStONdSe2xGgw9AACzmWw
Date: Wed, 15 Jul 2026 17:10:26 +0000
Message-ID: 
 <AS8PR10MB507348193CFF50C8931CC60AFDF82@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <TYZPR06MB517869F21C2A4EB6A2D985A086F82@TYZPR06MB5178.apcprd06.prod.outlook.com>
In-Reply-To: 
 <TYZPR06MB517869F21C2A4EB6A2D985A086F82@TYZPR06MB5178.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d89096a1-11cc-4181-a277-0f445adbc86a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-07-15T15:14:42Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB5073:EE_|AS8PR10MB8015:EE_
x-ms-office365-filtering-correlation-id: 0a4e0dc4-913b-4f35-b798-08dee293f6f9
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|23010399003|56012099006|6133799003|11063799006|10067099003|18002099003|22082099003|3023799007|55112099003|38070700021;
x-microsoft-antispam-message-info: 
 49TYLMdqCYHBxDCVGlmGEoSF1i400XwKcYcgr9T/KZSk+RTthkfecCY1p6e3ThIQc1uMYqiLrme/rwyIs3dW3PKYkhgPmoC1UFGR/A6kcnlu6z+q6PLuR61y2EUfqLkZj19lXPpX/YJCVwasq4dPjppizR5w7ELLissng1hNYhdV9JMWq0He0e5rynreftHpPOHkGU0gSNOjMG15PaqGO+H9uyyMhppem8TH7i6hQNU83/pbrjXhWboCpcq8slxD01Nm1EJ2JC8/4mgiY6ZEkI4kFljMzYihnscjHcsanr2bpuLdwjG8J8lz5UW9QaU1oQYICoCoQu33RS1BzkpnB90HM6WgWblJyESBnX/sjqt2/AAlwYjSq0rCr3Bv6O2bDICymQxc2hkxmlI5SXtn8ygp8CSi7A8bR4IUSHAAKzchroHq9seIPhV0KlXRW23wr2zm94iXGWDqfBHNnpkK3+zWQm+rjXRG/DUFaV1UAfBwe/j5wPwSbmxoNlRl1C/4TtXvZBf3yi+WTcgLI3AbjUUQQZjCqbJx4B5XkYm/fBY4q3/9472bCJBpk1ARcoQJCXmA+RO160jM+pzRelRAZGfBlBkDljDMZOLbBhCSAckasaT4lYsZ99+G7iZuoIHqCz/dXsKai+zMlypx+p48DeXp+w3elGrd8C00R1MdmgM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(56012099006)(6133799003)(11063799006)(10067099003)(18002099003)(22082099003)(3023799007)(55112099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?amhOeDErakZJQVpPWnc0Qng5MGZ1QlhkRUxjZUNKYlZrM01yWmM3UzVPVlNM?=
 =?utf-8?B?RHRsaHF2THJUdFo3ZG41anJEZWF5anhUYkREQkpqOXVIYkRQZW52NGtJbjFq?=
 =?utf-8?B?aWdybDB2REF0TnlUTmk5Uy9HYVcxVGoyYjVJVlNVM2M3SWRGYXo3K1FyK3pz?=
 =?utf-8?B?Um5TclBZeFZVaUNKeUh2emZsNUYrNHVnbWFLNlpsSk41bUM5a3VTc3hKQzN5?=
 =?utf-8?B?S0hreGVzdFVnM2NSZzBRR0JSb3dsZHEvLzZiVGhCTFp5eFFiemhkRTZDZ2Np?=
 =?utf-8?B?NmtqM3lmaHIrVmlsY1JmdUFadjFJc2FwV2NZaDJDN3JjbTl4eVRLY0F3R0t4?=
 =?utf-8?B?T05uRUVHcTkzOCt1cUxCemQvanBQb3UvNGRqVmtqaHFiTWljZ1JwU3YrQVA0?=
 =?utf-8?B?MGRmdDJPclFPYmV3TVJjMXlDRkgveHRGV1dCck81bXJuNkpwREx2RjJNNHVW?=
 =?utf-8?B?WXozMDNnVjJPajdwTDVVeWlra21zZ2Y5N3BtYll5ZjlUbkxNZDhha3AyaU55?=
 =?utf-8?B?OGhsbHR4b3E0RnpMVXJacUN2bi9aL0VsVVQ0RGpCRGZUdmxvc0I1RSsrWXhn?=
 =?utf-8?B?UktiR0xlT1ZmbnRocTROZU94a3dVR1JlZ3QzOUl6Vmh1ejl3aFNwTUdNQTBN?=
 =?utf-8?B?TGFpS3VrbHdLbVdjdmtuUm1jVmFXL0Rmb3dCSXJEQVpOaFpuWWsyTkM0blVJ?=
 =?utf-8?B?Ryt0T0ZtV3pyWlFoZmV2ZGt3ZHpTNWZJSm05RlhBamkxODZPMWZMWjIwckNG?=
 =?utf-8?B?cExhd1d6WEk2MFBmSEVpZ1hpakd4eHdsY2I0b0Z5Y1dJem5McUVNQmhkdmNh?=
 =?utf-8?B?SCtKTFQ5ME8wSnNoRW05S3YvMStpeVI4MVd4TEZ3dEZVRk9ibDZaVWNZYUJB?=
 =?utf-8?B?VkU4SGRVQldmYnJjR1c5aS9sVzcyajUwYzgxb3ZrU2J3WWhzVmdrZy9XV245?=
 =?utf-8?B?UDdFN0Fza2VWVEJFN2Jsc3pxUnpxYjhSRHg3YUM2dEFjMldQcFRVYnFqTFJM?=
 =?utf-8?B?OGowZ2ZVV0hYZmM2dmE0WFZlVFQxbkZyTmZlUlV0ZE94SG1BSlZtMTJHUGRw?=
 =?utf-8?B?ckl6bVpPRGZWb3dLSEc2bUFSaE05VnNybVFmNFJNbmVIY2ZOamJuWjZ4MG1s?=
 =?utf-8?B?eU1xQ2FOR1pkOUFCdU1VbnpoSGZOdVowdFA1aEg4OVhuVzBsZkZFaEJKM3lo?=
 =?utf-8?B?SFBoaEdaUkwrNlQrM2tpVjlHS2NRNnVjWG5nMlNQRWEyQkRUR09NZWhGYlI5?=
 =?utf-8?B?Rkg1eTZDNTBEM0pQeUxHSzJ4MDZaWDFXYk9yZmI1NjZ0NFF5VVRlS2U0cVVo?=
 =?utf-8?B?ZmVZcFpING5iYkRUNW5aZGNRdy9WbGdyUjhNZlJiQzFCS21DcnpFN2FkVVU0?=
 =?utf-8?B?YzhZUVVPZnY3V3RMdnNmd010dng3R0ZtbTJENmZ6c0YyemxiQUZnL2J1RUtx?=
 =?utf-8?B?RGhwNVFYOVVnR09aTytVNE16QWh2OGpzOERKMVRLN2VLK1pxT3lQbklhb21F?=
 =?utf-8?B?Umx1S0VacjNNOHFoL25xT1hqeWNtWnRhcTNBY09CVFpPNlJ6eWJxandoZCtZ?=
 =?utf-8?B?bnRjNitUbmo4alY0M3NxZGZDZDFrWVpXZFYzRWhmdldMcjBPL3BCTEV5SFEr?=
 =?utf-8?B?d2JDZFVTVjZGMXZKUXRoa2VkcllFeHlVRWw4MmJOeFNRUFJDWUtrRVE4NnBj?=
 =?utf-8?B?UDdTU3VzR2NWYm9VZHliWmNWdUk2UGZQbXVwdDZlRmZGdmVTMGdxOU5DeWZx?=
 =?utf-8?B?NElBaTVJZllBTDllTkg1U0lLK0xyOHBKUUVJMjJwWnJBdnlKSTVVVnJ4Wkk3?=
 =?utf-8?B?LzZIUEFiM3Y3bHdRQm5OeEFySUhwcUd5R250RWU5Y25sWUZyVFJoZjJmbGJt?=
 =?utf-8?B?LzRRblpENlM3LzhVbUJiTDBiNE9NbGJzUHVoWjNqMjkwSS9xS2RYMkNkUElo?=
 =?utf-8?B?RDJ5dWpLMXN3M3phUHJYNlBnMlBMTCtlNURNN3JnNlZscDArT1ZnYStMcWNz?=
 =?utf-8?B?Q0doQktJSnZtYUliNGRSVTdPbEs2cjVsWkZRQ3dzbjM4c0hEWFBIMS9nMEx0?=
 =?utf-8?B?R1phRGdUWUxYeWl1U3VqTi84TjFacldQTjZ6V3VmKzMvY3lMOG5adEdIMnZi?=
 =?utf-8?B?bkRxNkpLU256NUlhZTJveGozWWlCajZjeUtCNjB2MnVRMGpoYThZT0dFaVo0?=
 =?utf-8?B?RUltVFp1eGkyc3RCNVZiNFB1M05nY01NdXMybGxHK0prRHd1ZUJuNXV5T1NT?=
 =?utf-8?B?bHZ3TndrTldDU1FaVFh0Q2l5d3lyNUkxcUxoL0QxSUZZTm55blBxRmRTbUxK?=
 =?utf-8?B?YU1YeTlNTjZoeDV1S2IyL1VzWFBlSXZyK2ZzVU53aDdCenZuTmkvUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a4e0dc4-913b-4f35-b798-08dee293f6f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 17:10:26.4568
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWxRaWB9ztjXi4RTJEHV0ZfHbKsnz99Lpmy5vR+8QDInXgOwaeIT2n6KERqoDd0oqVFLJIPSMIazCYQs6u+mcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB8015
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jul 2026 17:10:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66642

SGVsbG8sDQoNCkZpcnN0IG9mIGFsbCwga2lya3N0b25lIGlzIGFscmVhZHkgRU9MIGFuZCB0aHVz
IHVuc3VwcG9ydGVkIGFuZCBpdCBkb2VzIG5vdCByZWNlaXZlIGFueSB1cGRhdGVzIGFueW1vcmUu
DQpBbHNvIGNvbnRhaW5zIG1hbnkgY3JpdGljYWwgdnVsbmVyYWJpbGl0aWVzLCBzbyB3aXRoIEFJ
IGRyaXZlbiBhdHRhY2tlcnMgYW5kIHJlZ3VsYXRpb25zIGxpa2UgQ1JBIGl0J3MgdW53aXNlIHRv
IHVzZSBpdC4NCllvdSBzaG91bGQgdXBkYXRlIHRvIGEgc3VwcG9ydGVkIHJlbGVhc2Ugd2hpY2gg
aXMgcmVjZWl2aW5nIGJ1Z2ZpeGVzIChzZWN1cml0eSwgYnVpbGQsIGZ1bmN0aW9uYWwpLg0KDQpU
aGF0IHNhaWQsIHlvdXIgcHJvYmxlbSBpcyB0aGlzIG9uZSAtIGh0dHBzOi8vYnVnemlsbGEueW9j
dG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTYxNDMNCkknZCBzYXkgdHJ5IHRvIHVwZ3Jh
ZGUgcHNldWRvIHRvIGxhdGVzdCB2ZXJzaW9uLg0KQWx0ZXJuYXRpdmVseSB1c2UgWW9jdG8gYnVp
bGR0b29scyBvciB1cGdyYWRlL2Rvd25ncmFkZSB0YXIgb24gdGhlIGJ1aWxkIGhvc3QuDQoNCkJl
c3QgUmVnYXJkcywNCiAgUGV0ZXIuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZz4gT24gQmVoYWxmIE9mDQo+IEt1bWFyLCBNYW51IHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAxNSwgMjAyNiA1OjI3IFBNDQo+IFRvOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10gQnVpbGQgSXNz
dWUgaW4gVElTREsgOS4xDQo+IA0KPiBIaSBBbGwsDQo+IA0KPiANCj4gDQo+IFdlIGFyZSB1c2lu
ZyBrcmlrc3RvbmUgeW9jdG8gZnJhbWV3b3JrLi5mb3Igb3VyIG1pZ3JhdGlvbiBwcm9qZWN0IGZy
b20NCj4gdGlzZGs4LjIoZHVuZmVsbCkgdG8gdGlzZGs5LjEgd2UgaGF2ZSBjcmVhdGVkIG91ciBv
d24gY3VzdG9tLWltYWdlLmJiLg0KPiANCj4gSW4gdGhpcyBjYXNlLA0KPiANCj4gV2UgYXJlIGFi
bGUgdG8gYnVpbGQgZWFybGllciB3aXRoIGJpdGJha2UgdS1ib290IGFuZCBpdCB3YXMgc3VjY2Vz
cy4gQnV0LCBmcm9tIGxhc3QNCj4gd2VlayB3ZSBvYnNlcnZlZCB0aGF0IGl0cyBub3QgYnVpbGRp
bmcgZXZlbiB3aXRoIHNhbWUgY29tbWFuZCB1LWJvb3Qgb3Iga2VybmVsLg0KPiANCj4gDQo+IA0K
PiBFeGNlcHRpb246IHN1YnByb2Nlc3MuQ2FsbGVkUHJvY2Vzc0Vycm9yOiBDb21tYW5kICd0YXIg
LS1leGNsdWRlPS4vc3lzcm9vdC1vbmx5IC0NCj4gY2YgLSAtQyAvaG9tZS9zZW0zdXNlci8yMjIy
Ni9TRU0zVF9DT00vYnVpbGQvYXJhZ28tdG1wLWRlZmF1bHQtDQo+IGdsaWJjL3dvcmsvYXJtdjdh
dDJoZi1uZW9uLW9lLWxpbnV4LWdudWVhYmkvY29yZS1hcHAvMS4wLXIwL2ltYWdlIC1wIC1TIC4g
fCB0YXIgLXhmIC0gLQ0KPiBDIC9ob21lL3NlbTN1c2VyLzIyMjI2L1NFTTNUX0NPTS9idWlsZC9h
cmFnby10bXAtZGVmYXVsdC0NCj4gZ2xpYmMvd29yay9hcm12N2F0MmhmLW5lb24tb2UtbGludXgt
Z251ZWFiaS9jb3JlLWFwcC8xLjAtcjAvcGFja2FnZScgcmV0dXJuZWQgbm9uLQ0KPiB6ZXJvIGV4
aXQgc3RhdHVzIDIuDQo+IA0KPiANCj4gDQo+IG5vbi16ZXJvIGV4aXQgc3RhdHVzIDIuDQo+IA0K
PiANCj4gDQo+IFN1YnByb2Nlc3Mgb3V0cHV0Og0KPiANCj4gZ290ICphdCgpIHN5c2NhbGwgZm9y
IHVua25vd24gZGlyZWN0b3J5LCBmZCA0DQo+IA0KPiB1bmtub3duIGJhc2UgcGF0aCBmb3IgZmQg
NCwgcGF0aCBpbml0LmQNCj4gDQo+IGNvdWxkbid0IGFsbG9jYXRlIGFic29sdXRlIHBhdGggZm9y
ICdpbml0LmQnLg0KPiANCj4gdGFyOiAuL2V0Yy9pbml0LmQ6IENhbm5vdCBta2RpcjogQmFkIGFk
ZHJlc3MNCj4gDQo+IGdvdCAqYXQoKSBzeXNjYWxsIGZvciB1bmtub3duIGRpcmVjdG9yeSwgZmQg
NA0KPiANCj4gdW5rbm93biBiYXNlIHBhdGggZm9yIGZkIDQsIHBhdGggbW9kcHJvYmUuZA0KPiAN
Cj4gY291bGRuJ3QgYWxsb2NhdGUgYWJzb2x1dGUgcGF0aCBmb3IgJ21vZHByb2JlLmQnLg0KPiAN
Cj4gdGFyOiAuL2V0Yy9tb2Rwcm9iZS5kOiBDYW5ub3QgbWtkaXI6IEJhZCBhZGRyZXNzDQo+IA0K
PiBnb3QgKmF0KCkgc3lzY2FsbCBmb3IgdW5rbm93biBkaXJlY3RvcnksIGZkIDQNCj4gDQo+IHVu
a25vd24gYmFzZSBwYXRoIGZvciBmZCA0LCBwYXRoIG1vZHByb2JlLmQNCj4gDQo+IGNvdWxkbid0
IGFsbG9jYXRlIGFic29sdXRlIHBhdGggZm9yICdtb2Rwcm9iZS5kJy4NCj4gDQo+IGdvdCAqYXQo
KSBzeXNjYWxsIGZvciB1bmtub3duIGRpcmVjdG9yeSwgZmQgNA0KPiANCj4gdW5rbm93biBiYXNl
IHBhdGggZm9yIGZkIDQsIHBhdGggbW9kcHJvYmUuZA0KPiANCj4gY291bGRuJ3QgYWxsb2NhdGUg
YWJzb2x1dGUgcGF0aCBmb3IgJ21vZHByb2JlLmQnLg0KPiANCj4gdGFyOiAuL2V0Yy9tb2Rwcm9i
ZS5kOiBDYW5ub3QgbWtkaXI6IEJhZCBhZGRyZXNzDQo+IA0KPiB0YXI6IC4vZXRjL21vZHByb2Jl
LmQvYmxhY2tsaXN0LmNvbmY6IENhbm5vdCBvcGVuOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
DQo+IA0KPiBnb3QgKmF0KCkgc3lzY2FsbCBmb3IgdW5rbm93biBkaXJlY3RvcnksIGZkIDQNCj4g
DQo+IHVua25vd24gYmFzZSBwYXRoIGZvciBmZCA0LCBwYXRoIHVkaGNwYy5kDQo+IA0KPiBjb3Vs
ZG4ndCBhbGxvY2F0ZSBhYnNvbHV0ZSBwYXRoIGZvciAndWRoY3BjLmQnLg0KPiANCj4gdGFyOiAu
L2V0Yy91ZGhjcGMuZDogQ2Fubm90IG1rZGlyOiBCYWQgYWRkcmVzcw0KPiANCj4gDQo+IA0KPiBX
aGVuIHdlIGdvbmUgdGhvdWdoIHRoZSBnb29nbGUgd2Ugb2JzZXJ2ZWQgdGhlIHNpbWlsYXIga2lu
ZCBvZiBpc3N1ZSB3aGljaCBpcw0KPiBleGFjdGx5IHdoYXQgaWFtIGZhY2luZyB0aGUgbGluayBp
cyBiZWxvdywNCj4gDQo+IA0KPiANCj4gaHR0cHM6Ly9lMmUudGkuY29tL3N1cHBvcnQvcHJvY2Vz
c29ycy1ncm91cC9wcm9jZXNzb3JzL2YvcHJvY2Vzc29ycy0NCj4gZm9ydW0vMTY2MTk2Ny9hbTYy
MC1xMS1mcmVzaC10aS1zZGstY2xvbmUtZmFpbHMtdG8tYnVpbGQtd2l0aC1iYWQtYWRkcmVzcy0N
Cj4gY29tcGlsYXRpb24tZXJyb3INCj4gDQo+IA0KPiANCj4gTm90ZTogTXkgaG9zdCBtYWNoaW5l
IHdoaWNoIEkgYW0gYnVpbGRpbmcgaXMgdWJ1bnR1IDIyLjA0Lg0KPiANCj4gDQo+IA0KPiBBbHNv
IEkgd2FzIGp1c3QgZ29vZ2xpbmcgaXQgdGhlcmUgaXMgMSB2dWxuZXJhYmlsdHkgdGhhdCByZXBv
cnRlZCBDVkUtMjAyNS00NTU4MiBJIGFtDQo+IG5vdCBzdXJlIGl04oCZcyB0aGUgY2F1c2UNCj4g
DQo+IA0KPiANCj4gSG93IHRvIG92ZXJjb21lIHRoaXMgcGxlYXNlIGxldCB1cyBrbm93IGFzIGl0
cyBpbXBvcnRhbnQgZm9yIG91ciBjdXN0b21lciB0byBwcm92aWRlDQo+IHRoZSBidWlsZCBpbWFn
ZSBpdHMgYml0IHVyZ2VuY3kg8J+Yig0KPiANCj4gDQo+IA0KPiBZb3VyIGhlbHAgaXMgYXBwcmVj
aWF0ZWQgISEhIPCfmIoNCj4gDQo+IA0KPiANCj4gSSBhbSBoZXJlIGF0dGFjaGVkIHdpdGggbG9n
DQo+IA0KPiANCj4gDQo+IFJlZ2FyZHMNCj4gDQo+IE1hbnUNCj4gDQo+IA0KDQo=

