Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
 by mx.groups.io with SMTP id smtpd.web10.18920.1617010590972220033
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 02:36:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=SLkdCC2N;
 spf=pass (domain: thalesgroup.com, ip: 192.93.158.29, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F86sS5ZDnzJpqB
	for <yocto@lists.yoctoproject.org>; Mon, 29 Mar 2021 11:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1617010588;
	bh=0QbnVqdCCQrpwv9CE/9dhLKDmrBB6tDNPyidEmQVKiQ=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=SLkdCC2Nc5BI42/YEhzgaeKzzsLZdD6QDj8NkQ4mA0PnjWNiXZ1fQ16hfPn2uB+NN
	 ltYy5dkiIazTC4PpJ6dzn8G4xe08N6P+twh3kO+YY5el+8Wt7Qb6rtW79184/9vMm6
	 ynwCA5glq1L9i0qs27FX5fpViUot0QXoevCKQjSAosnycNEOMc3z8M4CQBAd4V3eHv
	 8xQzIN+3CPXAJipSVSxG4JnTP2BQ9RlTLryVsq3ruvmCgqwKAKoExNU8A/jprU/kYO
	 elOSOTF5aPqQNVcIbuZjuyzo50cSy6FS8FWS17tbaY85KFWwFB5bgnR7iqSwgu2q+e
	 1spdQYXPUS3/A==
X-MTA-CheckPoint: {60619F6D-0-C72F090A-5EA8}
Authentication-Results: thsbbfxss02p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=M1d61Ldy;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D99u9nibX/tV3cFCYVxTf83yzLOJkmg2zIM6u6+7vzN5Baczg/C5HAYXIqnmsCfaqXwwjhvmGRvW8OYmycWLubkpauPCbiEskn1dnkMpm6Zt4D/FdcnW3J7Pb+FMXzU24+kMulAoLS4IS3O/XA1ovRiaN5q+vRhFnpKCfkFIBxbij3PiDri4uLJL6N7XdY3cDBVWnF0olIi6G4f68j2C1C2s/vz+Mq1CrrW6wDJGULVLRPlO9wO4nwv6XBirHEXRUF9/6k9FXk+T5GGxRm6GQK0GtjHMLnYVUF9/3zNA17xmAlHWTSaJqXPRZNQOha7R4H/Qwoa03OPP2Iai4nJF3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0QbnVqdCCQrpwv9CE/9dhLKDmrBB6tDNPyidEmQVKiQ=;
 b=cSWBNWy63hKg3op1OJ7Nb+SkZSevf+kxO2l6eBHiskzKm6XKl7cdyd6yYjOL7ZEYEhB+m1kIjsrjF3v2gztGpUj29isQb0OFh4oHaDFzeWgMZ8HxAiaXKxo4utjxnWDziOnYRjnzI4/2G9gbzBkaXKvyKXYv7JADNTw6VrhxOeN+KUH7G6sOjbUp+3rqpiqydfyyoClj3IQDi7tL3PqrXNH0SL9dLYiOtbxI/CgyvDbFnsp6NJXV0u05UloyHYyuGPG01tiVMD67rCj87TA1XvGc8JkkB5fiHPPClznMVMR0T6UYwqTW98IAhKNuswKEcM0P80lbwxMiNRVHJKyFhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0QbnVqdCCQrpwv9CE/9dhLKDmrBB6tDNPyidEmQVKiQ=;
 b=M1d61LdyO03mRvM+rEEL/yGfa6J4/6Lq1WzmmKynyz/PUCEwexiMM9rf39VjiKy2frf36BsiBppIzJYtHFgXqQ7u7rsPJt9AkaWYUXIlry6u9jdjKmRL/FEiFt5e8wb8sokIdGZSvbFFgOEgewiqSiBdWmxcD7v/yCbkq1TlsYc=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Package indexes for package feeds, ipk and rpm
Thread-Topic: Package indexes for package feeds, ipk and rpm
Thread-Index: AdckfS4hNo3eAeAvR+iL0Rv9LVnHvw==
Date: Mon, 29 Mar 2021 09:36:27 +0000
Message-ID: 
 <PR0P264MB08898494F1A6B32CA311BCCFE17E9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f2f057c-206e-44ac-d16d-08d8f2962050
x-ms-traffictypediagnostic: PR0P264MB1258:
x-microsoft-antispam-prvs: 
 <PR0P264MB1258ADA5E671BBEF4D9862EBE17E9@PR0P264MB1258.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 He3i3f6Okn0UvQJz/+JLC3s3QoSmRApEkxgOrZxh503yS+Y+foW2CXQaYe+D+9tWGhJ3JPIvI/A9eR/Enz345htsBfLpl0t15GZASEBqhJ1fdqJXymv3CvaNJh/KLqwSpjVxJzHvc1fAh3baKwuFNPQsDGjXL2l/ZMzKwyQtKmgLR+gixF/7SAa68FXwvTZDhageOkaRuWWpjIHvVuIGq5A9bCbnH/V6INKhqVbB/wAiWH1fFuKiSugwrGQyEsrPsZaFgkmnZGzdAg+VNSkTCIqYh0jhMcr0R98CgiaCnce8ralTcNGPb9ry1qSjt6Em42JfxuphNdn+TQqswfK3bZfh8bsuIu1Pz9JJcu4+Gz+LYKDvpfSA6nBQxUMEuB+U/rTETD4UG8AT0jk5U39fgPLC6wbAovi0Xi74L5RqTdtAqjYQUFjsPk5tKJTLS/kS3VVLFkerCApS6bSEbZLfFexpXt4ywnfuGMuIl1SuToCby3NT94NfekbEwbt9uBCtTPqwsUTboUNFzeBHTzIMD8DhAo2IEK8RQsz5m3SlMkqnjdeWABLrSFeb0Hu4T0R2oQ3fQSO6+mTEQNSzi7QuAYsYPuyXrO81w0p2EXTwb+Iiv1cIWPxSiN+auw6cNjtePKjPyYA2yjmzieT+4QxQGe0lF46gDOOTssJgSySYKV0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(4744005)(64756008)(316002)(5660300002)(66946007)(52536014)(66476007)(66446008)(38100700001)(66556008)(76116006)(9686003)(55016002)(8676002)(86362001)(7696005)(71200400001)(478600001)(2906002)(26005)(6916009)(186003)(33656002)(6506007)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?bzVkSnJKY1VmOEUrNDNlaFJxY3RCdnRDaGdXUU5PYVlmeXVzWGdNVHdDTWwv?=
 =?utf-8?B?N084Rlpid0Z6Ylh0SXZZT0JFRWZsT1RyVTB2M1VpMzJnOFcwTFZXdXIvRzlQ?=
 =?utf-8?B?cldjT0xvTW1mK2hqL3NOM2lqNkgzWi8wR3BNaGRwUVIvRlZHbE1hZVhYOXBs?=
 =?utf-8?B?VHNPbGdTNmV5a1A4a1g5T0hEdGo3YStnQ3hDc0lHMVZvU0JBVXFXRFkyZDJ1?=
 =?utf-8?B?STdDcHJDTkErdExROFhjT3B5Mk4xYUJkc1RTZDdCMkhjY214bGlNMm5TTGhz?=
 =?utf-8?B?dmh1eFR2bk8rMzVFaFY3YzN6bmpwVHlxVTZYM0ZYSVc4cVorTUlOWWwvTTUw?=
 =?utf-8?B?bElqelo2UWNQOUNSS1NEQk9kL3RtOFNDbDhscXRiWHRkOXVJWlNBQ3RoNW05?=
 =?utf-8?B?a2dJZjlGLzZLcys5YWVOQkg3MjlzaWl6VlovM0RkRjFlZUwyaHVxOVFybmg4?=
 =?utf-8?B?MmZ3RDhxRzdZd0dCS0JINXVzbmFUalN0VlJJcU5nNVY5T3RqcWtXTWRwV0lh?=
 =?utf-8?B?UHFIbWltVnovOTVlNE5VT1VTTWFZWERpWDN1TVVKREpzYzVDclJwdWVnVHNW?=
 =?utf-8?B?WGJHY3RxODJFME5JbjYxVGlHQUhBUGw2LzJJV2FjOU4yd1dXc0hjakwreDRG?=
 =?utf-8?B?SFk4TVBRSkhRbFFnU1lBczlpbEVGeGxZb3hVMUI5L0pQMStFMXZockU0QkFj?=
 =?utf-8?B?QVUrbUVzZ01kMmZVRGd3TUVmU2JMUzQzK3FSRENsdkpKajQ2di81L2pIK3VQ?=
 =?utf-8?B?eEkwM21qcU02Rksvb0hKNXZFZ05Jb3RHd0ZrZUtMVHRQNnV6L2ptRW5ZN3Rm?=
 =?utf-8?B?SVdPNld2ZWNMTENwTVU4SHhHeHpITFdGSzFwYnBZLzZxQ2tqbHQxTEQ5RDFE?=
 =?utf-8?B?WCsrc0p1UG5UaGpQYi9EdEdia25zRE1kK2tLdnM0cEJmQXlZSkFtVVhrMkNW?=
 =?utf-8?B?TC90M3cvUkJ6REQ1dmZRclkrRXM3Z29VakdtWVhVYldFWlhsNjF5N3M4TFJC?=
 =?utf-8?B?Y1hnSFBqdVJLZ0JxUktzVTFsWnBiTnVvd0JiNXBZb3N6YUtJaWFnUktiY25F?=
 =?utf-8?B?UXZzenJ5Q1NIekcxalZsa1lJeGJjOWc1bkxnbzZiNU5oem9Mci9PTzRtTEQr?=
 =?utf-8?B?WHppeFFyb0JUSWJTbmlEU1Q4ZWRRZWt2dGkzM016TXNrSkRJV005dGRnRDNh?=
 =?utf-8?B?WHBlMUZGdS96REoyRGRwQSs2S2RVeWRYbVdhRUpGRVcrWmhsODl2Ly9sRGdk?=
 =?utf-8?B?Z1hCUFpLWlVsT2VZbHcwSi96eGk4RVlGczVHajZ4V1QwNk1iZU03QXNjUmtB?=
 =?utf-8?B?S3o0c2RFa1M4RDZQZDRGYXV0Vjg1QlFSdXFndWZ6R0RQQXNTOWxtMmtnL2Jt?=
 =?utf-8?B?RG9tVG44M2lDTEg4QkhGT3dLSE1FMzdvSnR6bmN1eUoxSlJ6Yy92anlCbmwz?=
 =?utf-8?B?alNqNTJXY1M2OHRmZVV5UmVWNXBmSVFkZUl3cXYyc0h3OTlpa3djOHVCOU1n?=
 =?utf-8?B?OG1ZZE0xaXBjMnNLekdBamxRSUFRMkxHcHRBZkVDMVBYMFFmYTQ3cEFaOVJB?=
 =?utf-8?B?Q29BQ00yRTZDMEQrVjVtODV0MHk2Z3IvTTg4M20rTEZUbENZM0g4REI5NjdU?=
 =?utf-8?B?UG1GNW0zWVpNU1RXRDVlbmRUY0U3L1BLbkxVN2hkc1BGR2RtSVdJdTJ2WHZy?=
 =?utf-8?B?eUI5dXpqdTBDQkNOak92cmVzZEhEdDRLSWJOTE1IZXhMWFZ3MHdnYW9Fd0ZQ?=
 =?utf-8?Q?W8Ug84pI6vabgXPcmiNhw0A8QjzVFe0/5+lt5+c?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f2f057c-206e-44ac-d16d-08d8f2962050
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 09:36:27.2849
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KbeI0EUn0MHsg5klwNWBDS2jS5J01Cai6pnjhOUPCXbEZWRMI+bac/mUZfuMwnVxvb9mk3ste2YOLJ2qCoh0m7HR5jKi8MijoBx9ThoPYGqKJGjLbRu2PobUdi5FjHlp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB1258
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.29.92715, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.29.5820000
X-Sophos-SenderHistory: ip=104.47.25.102,fs=1154138,da=65725118,mc=20605,sc=4,hc=20601,sp=0,fso=65560027,re=160,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_LESS 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, BODY_SIZE_800_899 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_100_P 0, __DQ_S_IP_SC_1_P 0,
 __DQ_S_IP_SP_0_P 0, __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVnYXJkaW5nIHBhY2thZ2UgZmVlZCBwYWNrYWdlcyBpbmRleCBJIGxlYXJuZWQgb25lIGRpZmZl
cmVuY2UgYmV0d2VlbiBycG0gYW5kIGlway4NCkZvciBpcGsgcGxhaW4tdGV4dCBmaWxlcyBuYW1l
ZCBQYWNrYWdlcyBhcmUgZ2VuZXJhdGVkIGFuZCBwbGFjZWQgdG8gYXJjaGl0ZWN0dXJlLXN1YmRp
cmVjdG9yaWVzIGluIHRtcC9kZXBsb3kvaXBrIHRyZWUuDQpGb3IgcnBtIEkgc2VlIGp1c3Qgb25l
IGZpbGUgbmFtZWQgUGFja2FnZXMsIGl0IGlzIGEgYmluYXJ5IGZpbGUgeWV0IGxvY2F0ZWQgaW4g
b25lIGltYWdlIGFyY2gtc3ViZGlyIHdpdGhpbiB0bXAvZGVwbG95L3JwbSB0cmVlLg0KDQpJcyB0
aGlzIGRpZmZlcmVuY2UgdGhlIHJlc3VsdCBob3cgUG9reS9PRSBoYW5kbGVzIGJvdGgNCm9yIHJh
dGhlciBjb21pbmcgYWxyZWFkeSBmcm9tIHBhY2thZ2UgbWFuYWdlbWVudCBzeXN0ZW1zPw0KDQpJ
IHdvbmRlciBhbHNvIGhvdyBjb3VsZCB0aGUgY2hhbmNlcyBiZSB0byBoYXZlIFBhY2thZ2VzIGZp
bGVzIGluIFJQTSBpbiBzYW1lIGZvcm0NCmFzIGZvciBJUEsgLSBwbGFpbi10ZXh0IHlldCBwcm92
aWRlZCBmb3IgZWFjaCBhcmNoaXRlY3R1cmUgYnVpbGQgYXJ0aWZhY3RzIHN1Yi10cmVlPw0K
