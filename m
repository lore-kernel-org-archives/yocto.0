Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web09.6926.1616062106886159864
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 03:08:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=pyljb4Q5;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F1N5P1ZfBz45bw;
	Thu, 18 Mar 2021 11:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1616062105;
	bh=qOAqiAQTFvs2SQqt0UgPLLZfj08P3rm7T1uNJYi8ujQ=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=pyljb4Q5di/uWXvD0DNE3SxLYoZYAdrhrVWl+kfAIcDz9jC7Ll0QOQflYWEgDCdVK
	 CptrwJggHkrDsfsMCurOmGiAE7O+zYx+RNGDcwYQybI1XVldGfi6ugURgO8cU2fTXu
	 +aLBvtmHbhJ5d8uvRobiCTrPf5MgM021UhqKViz3Wu+oBbhmmwOJxkf3CBO+0bg64H
	 nDk3oPpFlsU6Wsk1jxvJr0sPvriCIgodXeNGIZi1Pe94wK5YD5ZzMXedU1AR8evoEp
	 TZpYIpFxGOXzVYznKJlkPiakDzqXKW7anjuf6QPZRmJIXdWNJR4UntZVGzBKkMb75j
	 hEOS7gA1ObNWQ==
X-MTA-CheckPoint: {60532684-0-C52F090A-2468}
Authentication-Results: thsbbfxss01p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=KRP0ni/8;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJQ6JhSACvZC7RG7iAwjHTaFKnAk8ly1Rbp0H8Ia4lLeyE9J3PozZ2uXVv6/g5bP4ajeFveFxwihA938sUcLQOIb+h3TOqW5wcdtAnOThyKN0QYBoZtSlf4aKUuxWfYAW0W4tpWIAd5Iy5ooZ8B4RjLvMvlDbuaLqQwSCBAqs6yNk7IAuqt0+O/i1m2IQSvBROJ9hWl5LtxbGi9L6NahADeSin9Ee+BujMYAuNhdgah/1O7ia7v3BDNmKW8pFDvKswAN5AqmMO3M1+ne6a4/m4/K3RZMGywsyMi0LRcjrxs9UfFNGsBL3/djpAoeGxEaeFxgcBMXn2sXXJon7irAVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOAqiAQTFvs2SQqt0UgPLLZfj08P3rm7T1uNJYi8ujQ=;
 b=dbpkqfPVpRG6sfhH9wXIyRv0KcpwAWfJrhMi48O8RrXAHqy41uWUemg545UF7/vNqeXHHlcsYaYWr6rezzA1smrNzeQoi174IeqpSmxZXwfg2LryhWbKRNb2nEMSLn1WXN7gY3VnfjzkXWwukByDDYRYHqOXV/LJag6vO7s5qrO29akheM1CqrbtWLB9FbuioFqZog/RPiWeKxOeakBuuMiXXt0BWFG7Bgld5uB+HkmsW6+DZxbrlfEBJq4MaLUjjQZbirjJFS4OTUPukQHAbTuKAi7tkxnGbkQKGwtl+q7hADdCGOjbHHGVconLeZMsBluO+fgSpenTUsgAT0ToPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOAqiAQTFvs2SQqt0UgPLLZfj08P3rm7T1uNJYi8ujQ=;
 b=KRP0ni/8+MFFv9708MsUpTDjzkXFOuc0imG74UPPfgAzeqoVJkCbvwLPyPS/veNHwmvLDl3dlhdj6YCF4ylSnNNgOx9NO/Q6uwlMc8eKQd3UwQIaw63xZKUmMKOtz85n1RLFDVYzDG1Fkqu1cEExIRyeIhcBw2AXwjLXX1znBSA=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Recipes and meta-data directory tree
Thread-Topic: [yocto] Recipes and meta-data directory tree
Thread-Index: AQHXG5RL0TyNUU7FaUib3VnTuJ/j6aqJgzQw
Date: Thu, 18 Mar 2021 10:07:39 +0000
Message-ID: 
 <PR0P264MB0889B32B77579C411838F955E1699@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PR0P264MB08896A3DF38FEA8A2A85A18DE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
 <CAMKF1srin_dQMyDG+cNGPEruU+avSxX5rmS7S45jw1fwt29nUA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srin_dQMyDG+cNGPEruU+avSxX5rmS7S45jw1fwt29nUA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28bd8e52-287a-4427-5d4d-08d8e9f5a9e1
x-ms-traffictypediagnostic: PR1P264MB1984:
x-microsoft-antispam-prvs: 
 <PR1P264MB198405D131D6CFCBDD7E2FADE1699@PR1P264MB1984.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UlBNLhgsTm9pi/D3/YR4OBQGxDAgzJPSG1D69YFJbsdpLIHZT+BnGTlwvG+YRtbSJ7NdE5TFGFMc7vFltW03GE3FKikQ4KWp19eaCffb9bbMXipU2h66Tm2iKjsUvYw+c/YlC3fXGZqxmDctHc2WqP2CpBLNYrhfQ2IDK8/fhEmTQGvEtMoDxkZD5sJ0rlEB2fMemWWePr5Zm6gOrP2VJOe0mnoTkvGyDo/1xiawOBoAyFRF41oUYYX8L4NjKz49N2z3vK/HXZ2dO+rOEGYsiVtm3gXq5NNTdXkhVGGn3QkP/P8RwrQoBw72t+0glONxhyhqVH7on5vHz98667JEBF9n40PQAYD6bVIrHWZw2+kQIXBGO+2Mg15dScGusuD69Y6ebu920O3Eh67aTBAytze7UOuVtO/J5sRVTDCxZEmxZR7MhzqmKyi4OtDhzdoeXUTln4jtGgN7JEGXnzcjfo1GJ2Eals5Dfw2XGj3lCFD0G2zCzJugj7hKvhNV4Wp41bJrQY2TzS4OezN9+v54+xYRoDfiziuKGhmiOQJgMYgqHVnMuh03lqNzKXxsR1Cr5uDG7NLPA0V7RsfklWMtA4C3D+ucWgwAI47wPm5AH/zBvhwVFCerLhHRX9GQT5wj
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(52536014)(9686003)(6916009)(4744005)(8936002)(83380400001)(8676002)(38100700001)(33656002)(478600001)(66446008)(4326008)(26005)(7696005)(186003)(86362001)(66556008)(64756008)(66946007)(76116006)(66476007)(6506007)(5660300002)(55016002)(316002)(71200400001)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?NnlXNXltS1ZHZk1WVVhBNHA3UzhVSXo0ZHpCZGNGUjJDL0RTbU81VDB3cVd4?=
 =?utf-8?B?NlgwaVlzb2F6MHYvbkcrL3FQWmVOTHBsQWJTbk5rekU1RHh5RVBUVkJkWHdZ?=
 =?utf-8?B?dno4TWpFcHVPemp4TENJZTBDT05tTXhwT3g0Y2JWbDVnbDRjeURnNWk0MXNy?=
 =?utf-8?B?MkpCeFF6Zk1URFl0OHVObUJRanc2aXV3akhoN2xKaloyK2pBZW5jVW9LS0d1?=
 =?utf-8?B?MlpOZHNBa0hleXk2Ykx3azJ0NGUyaElGZXZmcElUZldwUkhOYXNzTkFkS2Vr?=
 =?utf-8?B?QmJnY3loL3hEZUdjVC9aZDdqUndYRjlrbm1rbngzOHRvODBQOEphd244N2FW?=
 =?utf-8?B?K0p1Rlc2QTZ5WWx4M2ZtOXZOMDNsWVkrMlpFWHRLMTg2MTVHZFlLbmlad2pB?=
 =?utf-8?B?cCtmbjUxS1VVZjhtTVFmTTZhdnUrdHl4Q2J2eVlhdjlqSzg0YnRvS1BlNndH?=
 =?utf-8?B?UFVuN09lOEliQTluNkNxeVNTeDBLWDM1bCtMWXhSVlFienN2cVQzUExYZk5Y?=
 =?utf-8?B?eEI1M0lXOTVEYVBoaERiYlhjdy9ERmExWWYyZklLOWt4T1ZReFdFK0pJL0Va?=
 =?utf-8?B?U2VKNUhRRFRVcHJZcXZLSjZwOUR6elV4NFN1M1J5RlBzQXZQMmJZTkpRQXNa?=
 =?utf-8?B?ajNzMXBRbVdXVnpNNSs5ZERROE1OcGVOK0o1SzBhM0t5ZGRJLzQ2ZWs0MEp4?=
 =?utf-8?B?bUdLV1VSeENHLzhUUk12alk0dStacHJLMkw3Z2RIMWkyWGRMN0JOVVdTWllX?=
 =?utf-8?B?TENCLzNrVG9ZaU5uTDJ6RkFaSHJUQUlWazFzdnBVTmc3ZklRQVZkSmNvcGhG?=
 =?utf-8?B?K1dYaVA0bUt3NmY3TWIraFg5ckVNMlVNK3VsYWQybEZYd1doQXEvVWNsYmFM?=
 =?utf-8?B?MlJQRVdCRjhWWWdpSGc4VkdjeWl6OVU4S1RIVnpUM3lBTTdZL0JuK3kxMXVY?=
 =?utf-8?B?cnMrcVhUK0ozNDF6QXliamZuZlBjdis3bW1sejhnVEtQb2pXRU1Ec29CZjhR?=
 =?utf-8?B?SmNpejNISUtSeWRkQjFjcGlSSTNSRXk1TkhSQmhUbTl0Qlh1ZDJvTW1hMk9j?=
 =?utf-8?B?Q2swVmp2T2Q2dEJldU8vVVFjV2owMkxtZDZkWWFqN2NaU3JUTWNUOVlCNksy?=
 =?utf-8?B?ZFVkbUlDUk9ZSk9Bc05xVHJJNnpxdG5KWGxTTFZ4aXJ6cndqazcyL0YzcG11?=
 =?utf-8?B?dmtBTE1yWkhYWWN6RFpIbjlIVWJlUHl4N1dEVVdZaFlnOVRDeWx0ZFp4SVJN?=
 =?utf-8?B?VjhNQS9TUytKN2xlMDVXbUJFUUhMRzRPb2RjUWVjSDJrZUxyTVJiaW9mOUR3?=
 =?utf-8?B?a2pYWmRLcVY1MGFLMXkyeThhVzZTYSt3MTdySllvMm8zQXhrMitQQTV1Vzlk?=
 =?utf-8?B?WktoUmFYQTZVbWZNaHdTZG8zVWFWaUVKaU5xei84elorRnZrcjc4ZkpDbTM1?=
 =?utf-8?B?clRtRGk1SU01QWlhYUFHb3BkblhvZ3ZvRVZ4bWdJSlFIYVdjZ01jbmovS1ND?=
 =?utf-8?B?aWUvU001Z1RJUWZOQ29UNy9JT3NFUmYrQVZpZFhtelB6TjZ0ZWc2KzhwM0Ir?=
 =?utf-8?B?RGg1MzhEemNWY05aU0wvdFlpM3BZYU9xbVFxbWVObURRdUhQem0xNTRBR1Ux?=
 =?utf-8?B?K2l5TEJhOVZOQ2IySGZOeCtGdVJlSW9XRElOZm5tZGRxT2VPWlN3aHZnUUFl?=
 =?utf-8?B?Smt4ck1kK0p1S3N4SVYrdDlLWjV2ZlRPaXZNbmJIZHVTcVJlSkhtVWt5V3R2?=
 =?utf-8?Q?8hrywZiHvHUq3aNL2GMLFHyWKrJR8HIvIdg79gU?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 28bd8e52-287a-4427-5d4d-08d8e9f5a9e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2021 10:07:39.7924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UcjVC5/mLBIhMOWW6Eh/vLXxjP5LcTqk439ld3sqOLODAuw79akEUiglWPNqhF2U1m/yz9UVKbdsG2d3ZyW9qeYuB1UglJEDdUs3A0wpdIe9y7/vKgWxPYQEsP1dIbuF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1984
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.18.100016, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.18.5820000
X-Sophos-SenderHistory: ip=104.47.25.107,fs=1328696,da=64776615,mc=24938,sc=6,hc=24932,sp=0,fso=64625976,re=69,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1200_1299 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, IN_REP_TO 0, KNOWN_MTA_TFX 0, LEGITIMATE_SIGNS 0, MSG_THREAD 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, REFERENCES 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __BOUNCE_CHALLENGE_SUBJ 0, __BOUNCE_NDR_SUBJ_EXEMPT 0, __CC_NAME 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0,
 __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_99_L 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SC_5_P 0, __DQ_S_IP_SP_0_P 0, __FORWARDED_MSG 0, __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_CC_HDR 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_REFERENCES 0, __HAS_XOIP 0, __IN_REP_TO 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_NEGATE 0, __SUBJ_REPLY 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NAME_DIFF_FROM_ACC 0, __TO_REAL_NAMES 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPRSBhbGxvd3MgeW91IHRvIGJ1aWxkIG93biBkaXN0cmlidXRpb25zLCBzbyB3aGF0IHlvdSBh
cmUgbG9va2luZyBhdCBpcyB0d28NCj4gZGlmZmVyZW50IGRpc3RyaWJ1dGlvbnMgYmFzZWQgb24g
ZGlmZmVyZW50IGRpZmZlcmVudCByZWxlYXNlcyBidXQgdXNpbmcgc2FtZQ0KPiBidWlsZCBzeXN0
ZW0gKCBPcGVuRW1iZWRkZWQgKSBvdmVyIG1ham9yIHJlbGVhc2VzIHRoZSBidWlsZCBzeXN0ZW0g
Z2V0cw0KPiBjaGFuZ2VkIHRvbyBpbiB0ZXJtcyBvZiBpdHMgbWV0YWRhdGEgYXMgd2VsbCBuZXcg
ZmVhdHVyZXMgYW5kIHNvbWUgb2xkIGNydWZ0DQo+IHJlbW92ZWQgbGlrZSB1c3VhbCBwcm9qZWN0
cy4gc28geW91IGhhdmUgZGlmZmVyZW50IHJlbGVhc2VzLCBhbmQgZGlmZmVyZW50DQo+IG1hY2hp
bmVzIGFuZCBkaWZmZXJlbnQgZGlzdHJvIGFsbCBjb250cmlidXRpbmcgdG8gdGhlIGRpZmZlcmVu
Y2VzLg0KPiANClRoYW5rcyBmb3IgaW5wdXQgZnJvbSB5b3UuDQpEb2VzIHRoaXMgbWVhbiBzaG93
biBkaWZmZXJlbmNlcyBpbiBkaXJlY3RvcnkgdHJlZSBpcyByZXN1bHQsIGEgbWl4IG9mDQp0aGVz
ZSBhbGwgbGlzdGVkIHBhcmFtZXRlcnM/DQpJIGFtIGF3YXJlIG9mIHRoZXNlIGFyZSB0d28gZGlm
ZmVyZW50IGRpc3RyaWJ1dGlvbnMuDQpJIGFtIGF3YXJlIG9mIHRoZXNlIGFyZSBiYXNlZCBvbiBk
aWZmZXJlbnQgcmVsZWFzZXMuDQpJIGFtIGF3YXJlIG9mIHRoZXNlIGFyZSB0d28gZGlmZmVyZW50
IG1hY2hpbmVzLg0KSSBhbSBhd2FyZSBvZiByZWxlYXNlIHRvIHJlbGVhc2UgdG8gZ2V0IHNldmVy
YWwgY2xhc3NlcyBvZiBtb2RpZmljYXRpb25zLg0KQWN0dWFsbHkgYXNrZWQgcXVlc3Rpb24gbWVh
bnMgaG93IG11Y2ggc2hvdyBkaWZmZXJlbmNlcyByZXN1bHQgZnJvbSANCnVzYWdlIG9mIGRpZmZl
cmVudCBZUCByZWxlYXNlcy4NCg==
