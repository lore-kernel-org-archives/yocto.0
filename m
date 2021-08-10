Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.68])
 by mx.groups.io with SMTP id smtpd.web10.708.1628617874029345874
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 10:51:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=aNrOXZCx;
 spf=pass (domain: sierrawireless.com, ip: 40.107.94.68, mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DiGZKowXFLjXSTNioJRaat6C+gVqN0FtwMT2cXU/P1t74PHDRygx/VPN5Ndyh5xfQHcUP7HNf37t71YohXcSr4wGJuunLx2Uuny4yooxGARKgS99w3lF7p9ZUbKeUnyRPhjnr44Yul5Fef6NxTkzT5hKpLynHHtqC06QI3iqZgrbTeYJJ+nCR3BTifpOLlQ27HlaHfWKMq3HsgsYoNbhtjFDCy/mpPJxPqj+zK5HLL+8v4avHS0HkGUXexlNgmI8M+CFq7MpRJeJrDbfs8QBqvfMP1GnoW7jJc3oLZ3MO9hpwuGrgJ+TxGFFHOQu1GqW8jLkPZv6kpsGhrZFs3BVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX65StuxkcsArKPvZT+0a/XRmFl06adLeUEwMaoWKgw=;
 b=SZOBTrtuPFFva0hHRgPdL7oYYa/E1FM+B4La9ig6bAzHfEu7TT02H9ZdGhV+rgeReklQeF8wIAcoUkIvHj26Z2956nuX8zpwozuhfNoG6kLxmkx/oIpa4/+IiKMvn5hGYMtheYKJgd7MRYQGPoqUZiMDHP4v5UhaNqQcVQ1jjt8FP5j0ZU9mvadBTdwFCfL5DgPz1aVRcluFX1XCfbEWYlTQHcfvvJjbCe+oo34kXirQCnZKT9JZC66lRXnKXSsC2FE1UfunbTi3Fh9/dr8rtWe8tRT1hdGnYhK30EzjcLdnVG3gDIOyQjFPEmqlJ4GWguIh8VY6ltX7U2UyvrZzGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX65StuxkcsArKPvZT+0a/XRmFl06adLeUEwMaoWKgw=;
 b=aNrOXZCxNak8uXsvkH+cDeOD+udo02zWvHrEtH6GlI8i/mQMFMD8ibqH0Fa+Ex0lBqttrdYbqWzmngQmiV/tdsiOmdhfmYHw9RSeTkYwknB419gIl04cFYcgEz6f2HcjX19Ke0q2s+5Zr3qy5kMzE9Z3x5aypdpjjlqYt1NiX6I=
Received: from MWHPR02MB2429.namprd02.prod.outlook.com (2603:10b6:300:40::7)
 by MW2PR02MB3738.namprd02.prod.outlook.com (2603:10b6:907:f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Tue, 10 Aug
 2021 17:51:12 +0000
Received: from MWHPR02MB2429.namprd02.prod.outlook.com
 ([fe80::e92a:cd1f:3859:62dc]) by MWHPR02MB2429.namprd02.prod.outlook.com
 ([fe80::e92a:cd1f:3859:62dc%3]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 17:51:12 +0000
From: "Darcy Watkins" <dwatkins@sierrawireless.com>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] New Override Syntax
Thread-Topic: [yocto] New Override Syntax
Thread-Index: AQHXjgMP0Uyvi3r9pkiDaq5EE8q736ts+yDA//+UHYA=
Date: Tue, 10 Aug 2021 17:51:11 +0000
Message-ID: <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
 <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
In-Reply-To: <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.51.21071101
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none
 header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15ade8d0-30d8-4109-a660-08d95c277119
x-ms-traffictypediagnostic: MW2PR02MB3738:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MW2PR02MB3738D627D3200201CFDA6EE2B2F79@MW2PR02MB3738.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 m4Rmy3TqDZZIrxW63zv44LoNaZxY0C8CDdRtlPqbDPPM6+PdQwfepfO7/BmE2t9KV71R+3nYL8DpHlEOHg24pfjDLb4YCQ9j1Hm/iMfLaFkv6TPTFwCnoTAXNR85KaLmCpV/Ucx5wvMZ2xdLtPn2PXs3X5HYG8cOxpcg+LBkjeBXJTXIGzpiXcZvV6Wx7FXBdXSPKqzarPAQR2hwqfxBUKasyYkOzK+y7l4K/aRRY9RaF/fanICYBi3LHFogNSySLwpCJwe0wKi+IGl9TJ7TWCQ06kTTDqAW4ny6OQsC5aEyFfT8rhS2GYPNSvCUQ8Mlbw1cM+vYDuVKjsdjJmgmjfW04W+YZEpwNO95yorK8zGB+G37YK6RpEPOAyAEqw+vk2hxjiIhwl16tIIkDpFt0cZtTY8hbbE3UAQc0uwCO4amXSqZSnaEwZbzI0kq1i/G/kecs5q9m/Uq27dCam2XsH81m38rKPFRzG+p60jEFY2cE/D5FTS5suqEo83ztc9gQjSCP6l9V2wUYb8XhjKOWFkdnnOn3BBfcKnJu8RybL4W7vcY0qyETn+8q8GniRNApCN2RPh6LUFcq6v3qvS9FQMrxEmXRh6tVKlX0mVVpICXC7IlEOeGWHxrrcUw3VQ6IrcPsTLRv21rR9u8TYEGt5LRcdYfMoTzBR3D399wF2MngL2RsPa2rT5nPBhthmLP8I4Z2X8SpbId5ruI49LvEb77WuTyBug25twwvLQ6/Tyaywz17VzSv0LqlWlfhmQ6tXUoWW9sKsK38kMA2qQptEwrx7MZjwH8sWKy/AhyOyxZ1PxbsXmMngDj9DMb4Eiz
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR02MB2429.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(376002)(39850400004)(136003)(110136005)(15974865002)(53546011)(45080400002)(122000001)(186003)(6486002)(66946007)(2616005)(478600001)(71200400001)(6512007)(76116006)(66556008)(64756008)(38100700002)(38070700005)(966005)(66476007)(5660300002)(66446008)(8936002)(8676002)(33656002)(2906002)(316002)(83380400001)(6506007)(36756003)(86362001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aUhVUmdZZy8vWXdSbXZrNlI4SWRNTGMrL0h6dGNTY28xcUpuQWp4NEhHVHVS?=
 =?utf-8?B?clpLaW41UHY2OGlKZ1U5VVJtUXBzQitadk9SRVRoM0NvOHlpRExOUXBHbHJE?=
 =?utf-8?B?TDdXbFZNczlSM2FkcUM5eUJkSno2TG1zQUJQSklSUitrSGt6dTd6MVlsdjhC?=
 =?utf-8?B?ZS9zaFBUSEVLY09BZ2dJMzFzK1YyNmkrOXdmTExpM3VZSllhMFBWOUtNWFlH?=
 =?utf-8?B?cGFGYUhMR0REeVlmbXo1NWZRZ3kyMytBWFk1dHF3RUtRWUoxeHJkVHZPaTV1?=
 =?utf-8?B?Zm45SE9qRGxvbTFWbkVPbUg5Tjc5S1BGQjJ3VXJ4UEZCTnNOQmd4VExTOGdV?=
 =?utf-8?B?NU5LejlQSnJmTk9ZRkQ3RHUrRUpzN1B2aXhYRWp2bkc2TGUyTWRROG9sRG9q?=
 =?utf-8?B?a2lubXlaV0tLbW9YSkZKemdCMDQxc0c0QXkyWDNKZExSSkE5eG9XNEh4SzFt?=
 =?utf-8?B?dldBUmw3NXRxRVQ1eEFpSFRCQjRMV1RhZUNSdGQ1QmorbERPclBBQkZqajdC?=
 =?utf-8?B?bDREUkh4eUI2TzdpUm5jS21FdURRQm9hYm9LM1EvVURJNU1GZk5tdmYzSGhW?=
 =?utf-8?B?TkR2OG5mOTZyd1ludnMvYnQyb2dwenhZQVFUVTZGSEpZaFgvMzNNdjkzTllo?=
 =?utf-8?B?VU42Mi90S1lhNS9DakovV1VMSE9LNFQwV2VtTitZT1k5Ulc5Nll1MGNNTEY0?=
 =?utf-8?B?WlpVcGlkamVUNU1NY1FmWXhhMGlwQVhMVFFBdDVOM0hHS1MvU1UvOURXWmtk?=
 =?utf-8?B?aVdjV3lrbGpWQm9LRW5WQTlaZ040Z3JrNit1REY1N0NZaDdKZTYrOUlkbTJy?=
 =?utf-8?B?enpDQ252aS9WZncxMWZqQ0JoVUFZZUxFdnUzMTBuZ3BZTkpnbzZTa00vcFlj?=
 =?utf-8?B?eWdiVnpxM1pBSktxSnZ0dXByS2NVRmk4L2lwSlk3cWpVT1dNQmpIbmZDaFVK?=
 =?utf-8?B?M2c5TEFza0JTa0ZXVWxDUEFzS3Iycjc1OStlMDNQNi9MMmZHVCtCVlF3NU4r?=
 =?utf-8?B?T3ppbWNBei8rS1FWTUhyNmIrR1ZmWDRnbGtrNHJCaTBzUmt3R0JlN3loZEN4?=
 =?utf-8?B?NHVkcmJwOXh3TlVVZFREeWgzM1pYcHZFSGkwZ1BCdzlXb1RvMExuUnVCbUtk?=
 =?utf-8?B?clVDUXpubTZtcEp4UEVLckFTcjZkMUJab0g5RnViSkg3TmFaMGZtdGl3WFlT?=
 =?utf-8?B?ZDVUVnRFZVJlMWJOUHI4aFBTSUJqdjJHUFJyd3ZTWktad09XTk1DWEREcnM4?=
 =?utf-8?B?Y3gxYnJJVUlwcFFYOWZKVDFuVmVNUmh1T2kxeXRUV3BZdnBsaE1UakJXd05J?=
 =?utf-8?B?eXN1OHRrNW5EK2gwUnVVSVNGdm9oN1dUWUc2UXdJZ1NjYmxXOEVlNXoxL3Uv?=
 =?utf-8?B?SGdXWit1ei85WmgwYTBxU1hEbnF4YjE5djNhdHErNWx5Qmk1ckRVdkVROG5N?=
 =?utf-8?B?K3dYL1M5eDVTZE1tWWdPMHBzYTMxQ2MzSUlnalZaMGhSaE41NU41V0FTbnpH?=
 =?utf-8?B?TE85ZzFtY3RZNFF5L0pFV3NmVDAzK2JXalpPRU8rdG1XdjB0SWllbVlSdklM?=
 =?utf-8?B?TytFNFc4OUV4T1MxTXhkSUZyY1FiRHB4am9YOWhSUEhMN2tLY2RiT2VKUHVN?=
 =?utf-8?B?QXdIQnV4TEY2NHdLUCtmN1BISm5QN1p6UjdLQ0E2VjFuM29TR09oaFpUaVRF?=
 =?utf-8?B?R3VYNmkwbXJ6c1Q5dlRMUmhqWU9zTmFwVi8zWDdlUWJyQkg3VzBDQUpJTFBS?=
 =?utf-8?B?R0lDRzhTenREVWdjTHdlS2l1YjlRUGtKdDlzNitZaVhGTWkyRmtUTDVMT1Q1?=
 =?utf-8?B?WWlKUHNDdlhFTTB5aVZLQXl2d1BHYkVxSkRjYVpBd21Qb2ZSUnkwN1l1OUw2?=
 =?utf-8?Q?KSRhqSj6oNqCk?=
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR02MB2429.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ade8d0-30d8-4109-a660-08d95c277119
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 17:51:12.0032
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lr3htOYZ0qq69ZesxlNU+IzoPifrUUiGP+uFQq+5wcaSDvFQxDAPZ6X9Wfat4wLRv0ze63yofHPYQq8y60qFvcbUn7w+sZMeJWQT5TewldE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3738
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <300FACD87DB3A44298A455C5E5385DBF@namprd02.prod.outlook.com>
Content-Transfer-Encoding: base64

SGksDQoNCk15IGFwb2xvZ2llcy4gIEkgZG9uJ3QgdGhpbmsgSSBtYWRlIG15IHF1ZXN0aW9uIGNs
ZWFyLiAgSSBhbSBhc2tpbmcgYWJvdXQgdGhlIGNvbXBhdGliaWxpdHkgb2Ygb2xkIHN0eWxlIG92
ZXJyaWRlIHN5bnRheCBtb3ZpbmcgZm9yd2FyZCAoYW5kIG5ldyBzdHlsZSBzeW50YXggaW4gb2xk
IHZlcnNpb25zKS4NCg0KU28gaWYgSSBjb250aW51ZSB1c2luZyB0aGUgb2xkIHN0eWxlIG92ZXJy
aWRlIHN5bnRheCAodG8gZW5zdXJlIHN1cmUgY29tcGF0aWJpbGl0eSBmb3IgdXNlIHdpdGggb2xk
ZXIgWW9jdG8gdmVyc2lvbnMpLCBhdCB3aGF0IGZ1dHVyZSBZb2N0by9PRSByZWxlYXNlIGRvIHlv
dSBleHBlY3QgdGhhdCBvbGQgc3R5bGUgb3ZlcnJpZGUgc3ludGF4IHdpbGwgYmVjb21lIGVycm9u
ZW91cyAoYXMgb3Bwb3NlZCB0byBzYXkgdHJpZ2dlcmluZyBkZXByZWNhdGlvbiB3YXJuaW5ncywg
ZXRjKT8NCg0KSXMgc3VwcG9ydCBmb3IgdGhlIG5ldyBzdHlsZSBvdmVycmlkZSBzeW50YXggcHJl
c2VudCBpbiBhbnkgZXhpc3RpbmcgWW9jdG8vT3BlbkVtYmVkZGVkIHJlbGVhc2VzIChpbiBvdGhl
ciB3b3JkcywgaGFzIGl0IGJlZW4gdGhlcmUgZm9yIGEgd2hpbGUsIGJ1dCB3ZSBhcmUganVzdCBu
b3cgYWN0aXZlbHkgbWlncmF0aW5nIHRvIHVzZSBpdCk/ICBJZiBzbywgaG93IGZhciBiYWNrIGRv
ZXMgaXQgZ28/DQogDQogDQpSZWdhcmRzLA0KIA0KRGFyY3kNCiANCkRhcmN5IFdhdGtpbnMgOjog
IFNlbmlvciBTdGFmZiBFbmdpbmVlciwgRmlybXdhcmUNCiANClNJRVJSQSBXSVJFTEVTUw0KRGly
ZWN0ICArMSA2MDQgMjMzIDc5ODkgICA6OiAgRmF4ICArMSA2MDQgMjMxIDExMDkgIDo6ICBNYWlu
ICArMSA2MDQgMjMxIDExMDANCjEzODExIFdpcmVsZXNzIFdheSAgOjogUmljaG1vbmQsIEJDIENh
bmFkYSBWNlYgM0E0DQpbTTRdDQpkd2F0a2luc0BzaWVycmF3aXJlbGVzcy5jb20gOjogd3d3LnNp
ZXJyYXdpcmVsZXNzLmNvbSA8aHR0cDovL3d3dy5zaWVycmF3aXJlbGVzcy5jb20vPiANCg0K77u/
T24gMjAyMS0wOC0xMCwgMTA6MTcgQU0sICJNaWNoYWVsIE9wZGVuYWNrZXIiIDxtaWNoYWVsLm9w
ZGVuYWNrZXJAYm9vdGxpbi5jb20+IHdyb3RlOg0KDQogICAgSGkgYWdhaW4gRGFyY3ksDQoNCiAg
ICBPbiA4LzEwLzIxIDY6MzUgUE0sIE1pY2hhZWwgT3BkZW5hY2tlciB3cm90ZToNCiAgICA+IFdo
ZXJlIGNhbiB3ZSBmaW5kIHVudGlsIHdoZW4gdGhlIGN1cnJlbnQgcmVsZWFzZXMgYXJlIGdvaW5n
IHRvIGJlDQogICAgPiBzdXBwb3J0ZWQ/IFN1Y2ggaW5mb3JtYXRpb24gZG9lc24ndCBhcHBlYXIg
b24NCiAgICA+IGh0dHBzOi8vY2FuMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20v
P3VybD1odHRwcyUzQSUyRiUyRndpa2kueW9jdG9wcm9qZWN0Lm9yZyUyRndpa2klMkZSZWxlYXNl
cyZhbXA7ZGF0YT0wNCU3QzAxJTdDZHdhdGtpbnMlNDBzaWVycmF3aXJlbGVzcy5jb20lN0M2NzJi
MWIwZDc0ODA0MWYxYTVlMTA4ZDk1YzIyYjNkMCU3QzA4MDU5YTRjMjQ4NjQzZGQ4OWUzM2E3NDdl
MGRjYmU4JTdDMSU3QzAlN0M2Mzc2NDIxMjYzOTgxMDUzNDQlN0NVbmtub3duJTdDVFdGcGJHWnNi
M2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxD
SlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9eXF0SnRvdVpzbDdKQlJ0SWZ2WXJSTm1OQUlh
NDBkNXZ5azUlMkJabDBzeTdnJTNEJmFtcDtyZXNlcnZlZD0wDQoNCiAgICBJIGhhdmVuJ3QgbWFu
YWdlZCB0byBnZXQgc3VjaCBpbmZvcm1hdGlvbiB5ZXQsIHNvIEkgb3BlbmVkIGEgYnVnIHRvIG1h
a2UNCiAgICBzdXJlIEkgZ2V0IGFuIGFuc3dlciBieSBUaHVyc2RheSwgd2hlbiB3ZSBoYXZlIG91
ciBidWcgdHJpYWdlIG1lZXRpbmcuDQoNCiAgICBIZXJlJ3MgdGhlIGJ1ZzogaHR0cHM6Ly9jYW4w
MS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGYnVn
emlsbGEueW9jdG9wcm9qZWN0Lm9yZyUyRnNob3dfYnVnLmNnaSUzRmlkJTNEMTQ1MDMmYW1wO2Rh
dGE9MDQlN0MwMSU3Q2R3YXRraW5zJTQwc2llcnJhd2lyZWxlc3MuY29tJTdDNjcyYjFiMGQ3NDgw
NDFmMWE1ZTEwOGQ5NWMyMmIzZDAlN0MwODA1OWE0YzI0ODY0M2RkODllMzNhNzQ3ZTBkY2JlOCU3
QzElN0MwJTdDNjM3NjQyMTI2Mzk4MTA1MzQ0JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJ
am9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1u
MCUzRCU3QzEwMDAmYW1wO3NkYXRhPWN5SXpuSCUyRiUyQiUyQlB6Y2N4Y3VlNzEwTEJ5WmlKR0k5
dHg3JTJCNGZpeUxLNkJhOCUzRCZhbXA7cmVzZXJ2ZWQ9MA0KICAgIERvbid0IGhlc2l0YXRlIHRv
IHN1YnNjcmliZSB0byBpdC4NCg0KICAgIENoZWVycw0KICAgIE1pY2hhZWwuDQoNCiAgICAtLSAN
CiAgICBNaWNoYWVsIE9wZGVuYWNrZXIsIEJvb3RsaW4NCiAgICBFbWJlZGRlZCBMaW51eCBhbmQg
S2VybmVsIGVuZ2luZWVyaW5nDQogICAgaHR0cHM6Ly9jYW4wMS5zYWZlbGlua3MucHJvdGVjdGlv
bi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGYm9vdGxpbi5jb20lMkYmYW1wO2RhdGE9
MDQlN0MwMSU3Q2R3YXRraW5zJTQwc2llcnJhd2lyZWxlc3MuY29tJTdDNjcyYjFiMGQ3NDgwNDFm
MWE1ZTEwOGQ5NWMyMmIzZDAlN0MwODA1OWE0YzI0ODY0M2RkODllMzNhNzQ3ZTBkY2JlOCU3QzEl
N0MwJTdDNjM3NjQyMTI2Mzk4MTA1MzQ0JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9p
TUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUz
RCU3QzEwMDAmYW1wO3NkYXRhPU4ydVNyeTc4dlNjSTBtb0RXc0R2ekpDVDUzYXZWWHp2SUJvWTlQ
OVZuN1UlM0QmYW1wO3Jlc2VydmVkPTANCg0KDQo=
