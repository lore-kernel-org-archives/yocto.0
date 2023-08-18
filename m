Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11C5BC001DE
	for <webhook@archiver.kernel.org>; Fri, 18 Aug 2023 11:22:12 +0000 (UTC)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com (CHE01-GV0-obe.outbound.protection.outlook.com [40.107.23.135])
 by mx.groups.io with SMTP id smtpd.web11.9022.1692357725857239864
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 04:22:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=YaTg+rVG;
 spf=pass (domain: vrag.ch, ip: 40.107.23.135, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ns1aWycoffxvQHSPm5UgLu2dQiwDvTvisG4mD8BTFlMqhJzB5DaQJtirc7tfUs45x5qGShS3kZuUFPrUqPEVsTC/j0CGxvvmBu/VAKTEjn+zfoh3WnUm88b3KEzplqc3cFHUCp5hMe7GR4YwNgiX7Qar9gqFTNYfkmmCNxKi1k1KAo5jHQiZpkPjUHgA8YnHFu2xX8kMw5g9TIv6pGuYTX2Q4G7E3aoIXwmwF7GZBHAca4veSj46UbZxn8yI3KL8HuRThfHEQBIBNKPWKYQuXj74uNSX6ugZcP9wmdduNEtwRkvMIoI/qvlg0zuLpPRjIm5tTawXYpYLooYT19gaKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFUfkoLAlWDP3LyMG7vFbzjDrf0TY20vHYhPO6eYvKI=;
 b=Bvk7LIlS51TwGuv07PgNjFjdTJKLG4ZFA3vb6r8qOxMm2myKOxa7Hs2DxXozDz/1cpXD0JEQtPDOQ+KkMDNq+Y4DNvGcblUCSBI9N8DJ2Xcyu0KshzUqo5ychxSM0P8rUPbM/D/ZSMtsMJMIDtA/B4WrSTxSXKFBYIO3ipQSZR3JBwba03GuTrKA3p7C8YN4kooNzCxIkdqekA+CXRFRhVbfqM5SZUvhTRKUmEAacvEiA4d7QfKynnxgz4UhGi7D2efx8M8xFSb7QZii3a0joNBnXQphhgu9RyiOGEwI3BHOrqfkLsocodVFkBsHwh6GNaXqa3WOGhsqr501GY2l9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFUfkoLAlWDP3LyMG7vFbzjDrf0TY20vHYhPO6eYvKI=;
 b=YaTg+rVGVdrar6ekC6pMl3EjM3c+jJp3Ufp0R6/2PeB8NBLpl5iPUo6YtOKKYiB76GnQoM7Gy6cetqCdiyg08zSQzQ4orKrZMbC4ScggOaqFykD4kIcA6pehShIWsPf0myb740NykAXZ6E3/2MgLold0eaTBU9YYPXMdUMfWjZ8=
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:49::5) by
 GV0P278MB0784.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:53::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.20; Fri, 18 Aug 2023 11:22:02 +0000
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b]) by GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b%4]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 11:22:02 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target is
 intended for a different architecture
Thread-Topic: package
 target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target is intended for a
 different architecture
Thread-Index: AQHZ0cY1Mxt8QZQF/0+0D+C+iqzfrQ==
Date: Fri, 18 Aug 2023 11:22:01 +0000
Message-ID: <af85713b75307bfc267c85978964523b327fa964.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0550:EE_|GV0P278MB0784:EE_
x-ms-office365-filtering-correlation-id: abb1694c-0ddd-44e2-eb08-08db9fdd5835
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DRoug+NEUKrDv2r66IEMLgatr1KtIX33c2YV6qMFLMzu9na2n2sV02QMC7ACfDXunN6NMs+NagpNKWzrcze8VWBne8gKftNGwMkzCt9jY4CRFNjcI62EknBgK1JMjok0qJui2z+1yDA9r+xqyNSOpciqD92VnzeMFSGfiJv7qRgcZPm+5xcu7l68B4bt1zstEJGvfQFdasjPmwja5lOZRBMRLvcHI9nm0siqEMAtB0vko9boUt9h+BqocHuZCLgNf3CkK4R7EqO/xrgqC+qoFvtCIj3Qg8GxDy3h69qdnqj1yqlIjXmZ0mJfpQ7NdpBNCa51qLep1yQv/cX2PTRzZfOyyATL8u/iANhTZhphggeK0rG8qhK1N62Ewpx/Lcne9AFbDAWS629PAO6PN4IWXSj5+xVpVABl6AXuMzEzECFfEOUiN+9rwHGMa7rPXcWJhSp38SR7CzdhReO3XgHTLrzq9KvqBSshez1sRS5M9d6dtFXPRDb4rvJNPBv51ACfWqRbEOat+TmnYO2shQk7WB84oQlO+Zl7KxHgb8MX/tP6RvyZ3kvBisn5O9/Yv+Q3OiByAdlsLANAssVYq8u89ecti5O9AXXczi97uBFq/cos9ceQ4Bg8tnGOpXAEk2Oi
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(346002)(396003)(366004)(376002)(136003)(186009)(1800799009)(451199024)(478600001)(36756003)(2616005)(6916009)(41300700001)(64756008)(86362001)(316002)(2906002)(6512007)(91956017)(66946007)(83380400001)(66476007)(66556008)(66446008)(76116006)(5660300002)(44832011)(8676002)(8936002)(26005)(71200400001)(38100700002)(38070700005)(6486002)(6506007)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bjU1aEVqdGFZVzJhQlhDbDRBUlkyV3dLWE9Xb29mUmx5aEVudnVBSi8ra3FK?=
 =?utf-8?B?Z2FhS2pPUldPT0xCeTlNZ3N0VjFSdDBvcmNkMTEzTWdZR2wwaVdRRWZId0lp?=
 =?utf-8?B?NHFQTTgwTXFKVktsKzgxUFpQamdjMzZENmc4ZEc3Z0NhRUpMeTFFZkhZVjFB?=
 =?utf-8?B?WmZSUFozc3ovSittSTFEdlBkQU9MM04yeHIzbGl4amljWk90RldhUEd6ZVkz?=
 =?utf-8?B?Mk4rb09Kc0x5WnlPeU9CdzM3cHZnVzlveGdyWTZ0TWpMcmFONitzeTlYR1BH?=
 =?utf-8?B?RnMwV2FwSlB4VU1vOU1BV1k2UzQ3UU9sZVk2YXVybDdkYzVzYTNkOXRFa1ho?=
 =?utf-8?B?S2ZuZ3YrRHJreDFTSTd4NXFWMTRvRElURmZrVnIyWkFlZkFlM3hVVWxqam1L?=
 =?utf-8?B?Ti9NY2FucTVSSFVMQXVGOEFFaldTUnpFNURUWStXUUdyUVBSaXlvK1Z4NHU4?=
 =?utf-8?B?WjdkWnNTMjlPU3dMOWlUY3M4Q0o5Zmk5UFN5ZlduUTAyaGJPb0orbmhHcmor?=
 =?utf-8?B?OURuTE53UWE0NVM5ZWNwbFJlYUJNaW1FK1duYVBCRGVHTGliRXRaaTFxNEk2?=
 =?utf-8?B?VUtIWTVpUEsxZmpNekc4T0ptRmhjSVRvMW16bmdRbE5xUzcvQXNoWUJBckpX?=
 =?utf-8?B?eWVVeEJvQmwxd2pCcWRMUmZKcWhJT3pkTjhTSFBNLzJJZEdaWDFqT2FDUXQw?=
 =?utf-8?B?NEhTVHY1NC8wSThrKzBDUVRZUjRJR1V1R0lWMWttQWQ3V0NpL1F5Mk9ZVy9i?=
 =?utf-8?B?akUvbkFEQ3FqSkJQTkwvRWg0Y3ZNMzNLaHNDNVIzUW9IMElKdzFFOXBBODdT?=
 =?utf-8?B?cU02NDEyL3BMNHJwUk9JMG4wUGRpVHpUVFNORTNzUndnSjN2SjdDYWRGVnNn?=
 =?utf-8?B?T28wT2JrdlNPZzhkakpMVWFMdHN3UWp6Ui82aVUvdGJYVFdiNUFHMkRiR1M1?=
 =?utf-8?B?QVJ5SkkrczZNSHdaS3ZDRFlkU2srTlE1aFNmU1YxOWF4ZGNKVkdzY1VtTElm?=
 =?utf-8?B?OEs5d3VjZ3Nmb1pvbzRmdnNVSU1KMVBQKzNKODY0MVBUZ2tyNWNFM2N6MkRV?=
 =?utf-8?B?ZnpBcE5saGdhNzBneFpReDF1WDF5TWd6Y1lxYjRRZUFWcDhIbmhXMURxMGEx?=
 =?utf-8?B?VkVyTW9wZmtsdFZPcGZoOTV3bE04cE13YWdsd3JWdG5ycEFndVR5bTQzcmd3?=
 =?utf-8?B?MWZQVUxGQ0hQV3ViVUhtVnRwdGF4Q0JJZ2hsaG03T0tveEtVSHdYZFRBZXY5?=
 =?utf-8?B?OTBxRDdWNVlEdVc3eGNWTktmeHV6UnF4YVJ2K1dyRXJnYk15b0h6OG5kS0ty?=
 =?utf-8?B?Y0M5Ty9nOEpEazVhbGZhZFZrUnJKR3REV09hR01ySHRnUjcvdEQzMzNRNklU?=
 =?utf-8?B?OTZ1dG0yaHdtK3owUzk1ZXlUNm8vUFZRbW9lMjFqeWVvY1ZvbG5nSFhxaHVz?=
 =?utf-8?B?NUJtblVGOG9hQnU0c1JwK1dtUVRtL3EwMkhjZTdsZE9mRWJ4NUcrMnArQ2lu?=
 =?utf-8?B?NUs1K0Q3L1oyOTVkSjhVUEpGRmpYOUpvaTdJeDdVaHoyR3RJZGVhK1NLYTFC?=
 =?utf-8?B?Z25PLzhaSEd3emR2L3N2VzJ4MGlzaUJLT3FrZFd0cEtqWXplL1BMMFh3dHNN?=
 =?utf-8?B?d2drMkF1NVpUNmtzQ3N6TWh5aERTNS9FaHlHTi9LRmxRY25XbFprUGx3YjBY?=
 =?utf-8?B?eCtDN1BKQ09Ob1lxOEwxSnZpRHdXZDFmVFNFcjBRR2taWkN2SXVRZGI5NGxn?=
 =?utf-8?B?Wm9RdzVKMXI0bXJXR3VZNEsxY3Zlc1VyUkNWN1dqb1R0dzZ5Sk92NC9jQmNr?=
 =?utf-8?B?SmJnZ1JGUG5VY2VTZ3lmSWVvY1RRbWRIZFNRU0pJSWMwYll0L0FmemdXNXp0?=
 =?utf-8?B?WXd1aVZtOGFuczhtYzdVVGY0WGU0N3htM1lVTHhlMHhFMVpkUE5sc1krdytZ?=
 =?utf-8?B?eHJtS2d0dlhKQXZ1blZmOTUvYUtUUC91TGo1L3ZUdzJPS1hKMzZXQlY1RXpS?=
 =?utf-8?B?WFVJMFZUVlFxL1FNdVkrUmVVakFDQVVsQ1A1N01Da3EzamtNaDY0TFNKYzhL?=
 =?utf-8?B?L2hZT0JveFNUdWU3T1lTa3RHZUtoRjZlVDM3UnMzWm8vVmsxTjNrMVZUdEZr?=
 =?utf-8?Q?4elkTz2NjL6JitMG6tX385+0h?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <65633356BE2ACF4EB2C7084836163224@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: abb1694c-0ddd-44e2-eb08-08db9fdd5835
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 11:22:01.9131
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S1vms74QMAgu8VijXSuZivsjDdrzoBsn6uFAnje1RXoeb5AWcmbNoiEAA3HC7FePhbV5zQB5iuKYK/cdl1PsFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB0784
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 11:22:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60822

SGkgdGhlcmUNCg0KSSBhbSBuZXcgdG8gWW9jdG8gYW5kIEkgYW0gc3RpbGwgc3RydWdnbGluZyB0
byBidWlsZCB0aGUgU0RLIC0gSSBhbSBvbg0KdGhlIG1hc3RlciBicmFuY2gsIGFmdGVyIEkgaGFk
IGRpZmZlcmVudCBwcm9ibGVtcyB3aXRoIG1pc3NpbmcNCmRlcGVuZGVuY2llcyBhbmQgY29uZmln
dXJlIGZhaWx1cmVzIGluIG1pY2tsZWRvcmUgSSB3ZW50IHRvIG1hc3Rlci4NCkhlcmUgSSBjYW4g
c3VjY2Vzc2Z1bGx5IGJ1aWxkIGNvcmUtaW1hZ2UtZnVsbC1jbWRsaW5lIHdpdGhvdXQgcHJvYmxl
bXMuDQpFdmVyeXRoaW5nIGlzIGZpbmUuIE5vdyB3aGVuIGl0IGNvbWVzIHRoZSBwb3B1bGF0ZV9z
ZGsgSSBhbHdheXMgZ2V0IHRoZQ0KZm9sbG93aW5nIGVycm9yOg0KDQoNCnBhY2thZ2UgdGFyZ2V0
LXNkay1wcm92aWRlcy1kdW1teS0xLjAtcjAuc2RrX3Byb3ZpZGVzX2R1bW15X3RhcmdldCBpcyBp
bnRlbmRlZCBmb3IgYSBkaWZmZXJlbnQgYXJjaGl0ZWN0dXJlDQoNCkl0IHNheXMgdGhhdCB0aGUg
YXJjaGl0ZWN0dXJlIGZvciB0aGUgdGFyZ2V0LXNkay1wcm92aWRlcy1kdW1teSBpcyDCq3Nka19w
cm92aWRlc19kdW1teV90YXJnZXTCuzoNCg0KIFBhY2thZ2UgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEFyY2hpdGVjdHVyZSAgICAgICAgICAgICAgIFZlcnNpb24gICAgIFJlcG8gICAg
ICBTaXplICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFsyMC84Njg2XQ0KPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09DQpJbnN0YWxsaW5nOg0KIG5hdGl2ZXNkay1jbWFrZSAgICAgICAgICAgICAgICAg
ICAgICAgIHg4Nl82NF9uYXRpdmVzZGsgICAgICAgICAgIDMuMjYuNC1yMCAgIG9lLXJlcG8gICAx
MCBNDQpJbnN0YWxsaW5nIGRlcGVuZGVuY2llczoNCiBuYXRpdmVzZGstbGliYXJjaGl2ZSAgICAg
ICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICAzLjYuMi1yMCAgICBvZS1y
ZXBvICAzMTIgaw0KIG5hdGl2ZXNkay1saWJjNiAgICAgICAgICAgICAgICAgICAgICAgIHg4Nl82
NF9uYXRpdmVzZGsgICAgICAgICAgIDIuMzgtcjAgICAgIG9lLXJlcG8gIDEuNCBNDQogbmF0aXZl
c2RrLWxpYmNyeXB0bzMgICAgICAgICAgICAgICAgICAgeDg2XzY0X25hdGl2ZXNkayAgICAgICAg
ICAgMy4xLjItcjAgICAgb2UtcmVwbyAgMS41IE0NCiBuYXRpdmVzZGstbGliY3VybDQgICAgICAg
ICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICA4LjIuMS1yMCAgICBvZS1y
ZXBvICAyMjEgaw0KIG5hdGl2ZXNkay1saWJleHBhdDEgICAgICAgICAgICAgICAgICAgIHg4Nl82
NF9uYXRpdmVzZGsgICAgICAgICAgIDIuNS4wLXIwICAgIG9lLXJlcG8gICA2NyBrDQogbmF0aXZl
c2RrLWxpYmdjYzEgICAgICAgICAgICAgICAgICAgICAgeDg2XzY0X25hdGl2ZXNkayAgICAgICAg
ICAgMTMuMi4wLXIwICAgb2UtcmVwbyAgIDY2IGsNCiBuYXRpdmVzZGstbGlibHptYTUgICAgICAg
ICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICA1LjQuMy1yMCAgICBvZS1y
ZXBvICAgOTYgaw0KIG5hdGl2ZXNkay1saWJzc2wzICAgICAgICAgICAgICAgICAgICAgIHg4Nl82
NF9uYXRpdmVzZGsgICAgICAgICAgIDMuMS4yLXIwICAgIG9lLXJlcG8gIDIzNyBrDQogbmF0aXZl
c2RrLWxpYnN0ZGMrKzYgICAgICAgICAgICAgICAgICAgeDg2XzY0X25hdGl2ZXNkayAgICAgICAg
ICAgMTMuMi4wLXIwICAgb2UtcmVwbyAgNjg3IGsNCiBuYXRpdmVzZGstbGliejEgICAgICAgICAg
ICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICAxLjIuMTMtcjAgICBvZS1y
ZXBvICAgNTUgaw0KIG5hdGl2ZXNkay1saWJ6c3RkMSAgICAgICAgICAgICAgICAgICAgIHg4Nl82
NF9uYXRpdmVzZGsgICAgICAgICAgIDEuNS41LXIwICAgIG9lLXJlcG8gIDI5NiBrDQogbmF0aXZl
c2RrLW9wZW5zc2wgICAgICAgICAgICAgICAgICAgICAgeDg2XzY0X25hdGl2ZXNkayAgICAgICAg
ICAgMy4xLjItcjAgICAgb2UtcmVwbyAgOC43IGsNCiBuYXRpdmVzZGstb3BlbnNzbC1iaW4gICAg
ICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICAzLjEuMi1yMCAgICBvZS1y
ZXBvICAzMzAgaw0KIG5hdGl2ZXNkay1vcGVuc3NsLWNvbmYgICAgICAgICAgICAgICAgIHg4Nl82
NF9uYXRpdmVzZGsgICAgICAgICAgIDMuMS4yLXIwICAgIG9lLXJlcG8gICAxMiBrDQogdGFyZ2V0
LXNkay1wcm92aWRlcy1kdW1teSAgICAgICAgICAgICAgc2RrX3Byb3ZpZGVzX2R1bW15X3Rhcmdl
dCAgMS4wLXIwICAgICAgb2UtcmVwbyAgOS4wIGsNCkluc3RhbGxpbmcgd2VhayBkZXBlbmRlbmNp
ZXM6DQogbmF0aXZlc2RrLWNhLWNlcnRpZmljYXRlcyAgICAgICAgICAgICAgeDg2XzY0X25hdGl2
ZXNkayAgICAgICAgICAgMjAyMTEwMTYtcjAgb2UtcmVwbyAgMTc1IGsNCiBuYXRpdmVzZGstbGRj
b25maWcgICAgICAgICAgICAgICAgICAgICB4ODZfNjRfbmF0aXZlc2RrICAgICAgICAgICAyLjM4
LXIwICAgICBvZS1yZXBvICAzNzkgaw0KIG5hdGl2ZXNkay1vcGVuc3NsLW9zc2wtbW9kdWxlLWxl
Z2FjeSAgIHg4Nl82NF9uYXRpdmVzZGsgICAgICAgICAgIDMuMS4yLXIwICAgIG9lLXJlcG8gICA0
MiBrDQoNCg0KV2hhdCBhbSBJIGRvaW5nIHdyb25nLCB3aGF0IGFtIEkgbWlzc2luZyBoZXJlPyBJ
cyB0aGlzIGEgYnVnPw0KDQoNClNpbmNlcmVseQ0KRGF2aWQNCg==

