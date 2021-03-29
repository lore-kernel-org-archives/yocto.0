Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web12.18710.1617005140971718770
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 01:05:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=fHZjsAOs;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F84rg22Xhz45Zg;
	Mon, 29 Mar 2021 10:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1617005139;
	bh=SFaf9GYTMTnoaEipYSqOgZdE9Sf1Y1aDfxkdC2TSbI4=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=fHZjsAOsLnP9rRGNydp5j0K0HgDC1zoVbXVYZ2MyjMxS0xOBAS1KYeegeUieD7V80
	 eQGc6FXtyim68H4ITz5psmdWmNknxvm37AvdFANKm26EmqggTpjYDjH1xP62tlh+Fi
	 sQZ3WjTZ3pKrOTrxaBx+aNbREvhz0w4pFl/7O5YT6VHwuVSn9IgKnddRrHWMY0iphx
	 Yc0XwygLYpubtrk2ybVP70dJ4GL9YtJ8IZmi451xYi7vB54t4gPwkQ0TkrIZK05vCV
	 gJDS9PgQ5yApMnKmurBEZbLTWc5pC/I/w40oXVqWHdJWR83ahxjoKPDS6FETx10ooj
	 NnSJNMlOs12Ow==
X-MTA-CheckPoint: {60618A52-2-C22F090A-5CB8}
Authentication-Results: thsbbfxss02p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=ELfUCE7L;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaPG9Y3vSe9jkZlqGF/D2jNbSXYipYFiLx9oD8MSa8wKrvndArjKfe8DArsSPadWb81a1yEZErKIKZoWmtAr1UzF8paSkmMT6wHs3GSdVaTzrycohod+syFOf/j0QKwlOH3F0YBIrhcLL8bTq2iIimjRKdVl0zYtS9OkkyxBzxPRdV1cs6pLVJ1JZuQzYM1xiygQQ++ddA+cud0EoipQ6h3N7/yfj/8GZfKk0UyzZr8LLWNqrplc2G/LB90JsF8HiIZwnR6p9iMyW0XyP8XPo7NsjJWkhMs0B40DP9cepWaXZFkwgkj6O8izAB+nz+QP3wxak4TdMKC63gEEorfUBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SFaf9GYTMTnoaEipYSqOgZdE9Sf1Y1aDfxkdC2TSbI4=;
 b=VOCVrW1DIJsleQHkDj+cB/fStbg7nWg5KUQZ0mg+CD4x/US1FlMu6jvD3bXYy3QJ16h7Ixbf8A+LTgWhtoYjaYpUZFoaIJrhNSI8laYA5azmld93SXEfB8tS1gPYNGkzVJsQJNy0Kr+Q+rhstfiYHQgFnX5AZLv7Up3zQ2pYy9YwkiZdVWUC7y6+CH5xFq9HHaJfhhIHJQUecPxTX0CfkqULojZMXECVAjrHux7f4nYKE1A/eUlqUFTpel/8Gk8M9x22PK5kvjZQcItQKtBoUvPO9cSaZlvY0CVPv7MvNDQTeS4Wid/i6fA2rOWU1Mh3wE/mGjtr/kDl+8q5nkLFpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SFaf9GYTMTnoaEipYSqOgZdE9Sf1Y1aDfxkdC2TSbI4=;
 b=ELfUCE7LhJKNVY5or1/jRAMzi9uMhrI4GS2FiMV57Gf18Iyd1HwO1qZBgfCm5wpXKJF8CcKeq/xfbGmJ6fscNQE33hIUb6WNV5e+54fOAa0uKT4gXmvYi23aJwTDpyLCTJjDLCedcj/8BVh9moywr6IU6HHacKmNRg/dvoPIsFU=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: Ross Burton <ross@burtonini.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] To burn 'bitbake package-index' into build process
Thread-Topic: [yocto] To burn 'bitbake package-index' into build process
Thread-Index: AdciXJWAOKITU42YRb+IWdfcgn5boQA8lY4AAEgvz6A=
Date: Mon, 29 Mar 2021 08:05:37 +0000
Message-ID: 
 <PR0P264MB0889B39295B2FDA107AF790AE17E9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PR0P264MB0889619029EC3D585324E10BE1619@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
 <CAAnfSTsD-5QfBYueQsUF6BLwxD6rXX9evxvn1NKX9q65b3mkig@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTsD-5QfBYueQsUF6BLwxD6rXX9evxvn1NKX9q65b3mkig@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: burtonini.com; dkim=none (message not signed)
 header.d=none;burtonini.com; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10796519-6651-4f65-b55b-08d8f2896fff
x-ms-traffictypediagnostic: PR1P264MB2144:
x-microsoft-antispam-prvs: 
 <PR1P264MB21444A0E40260AFF5DEA08D4E17E9@PR1P264MB2144.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JL1/pmZaTbE3sPYZAdtMr/jiGo5VKhRw6oDtLh8AF7wT1LXyKBYRLDBC+D3lWYQyPTT4evoOii4DZG75rLOdaPif1vYIyhXzX9sL55+MJmh6WbVVL/bEypvboM3fPZ5GCnxvPmorr1m5EJuk8irqplMEN/olh1ybM9ea7wg4y8KrSinEufRwFD5m4XcXyd1XawEswXktF/ZRb0r816CKrcxjfOkRXjb2UE+5lU6zBYojWkfCqyDijCRAuQj0F4PmEy5M1L9ZpPlvd6aWlyBitkoVhwewDFRIFAPvlpbj4qQjnJj+4JkD4DCE6jChhfwhV4adMGE7LnfaGIs7DrU0mY/7jUSg9S09EwjWsF+g5mYgHIjlMHc7ASDApo4UYDIVUcvpJduwlxYIW+xtWhc9fayVZfvwwbPtaFOls5NWJaxAfy8p2w5ai24y+bRizuKfgVVwjwS4mSMbdNAJ/xq8HZXD93qoNe+s3aVmveeB3uZaJAn5SutRD3PSTGqt4PQfIRkD8VFqcRorAY7KnvDF2M59lj3lQ16TMAfpzXR1Kw1yUpxURQMadJDDoSuIv02GSM6dqr2AE9Ve7nALraJweaQlslVYstwZ4yGqXdvbW4vyA4PK87ryFCrKVYqhLZAD52D0hNgmkPpXz7zE4w8vGd/BnDloYeeyMIhzb6Wryilk7FX+72FxZhC6bE/+Q2WFrkPc2qfEUiwHLCI+0VmIQRxzPf8vuRcjBDA0FfDOnx0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(66574015)(83380400001)(186003)(26005)(66556008)(55016002)(8676002)(71200400001)(86362001)(2906002)(66476007)(33656002)(76116006)(66446008)(64756008)(66946007)(966005)(8936002)(52536014)(478600001)(53546011)(6506007)(316002)(4326008)(6916009)(5660300002)(9686003)(38100700001)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?dE1GeGZ4OG1CM3NrZHpmcHRuUFdxazA4WlpGMEppaW41VDczK0EwZG9TOFp5?=
 =?utf-8?B?TnRDZEszSEp2TjNuU3V0NHZSQTQrYWE3eEUrTTkzWG5hQlZQRVAzam9LVXZS?=
 =?utf-8?B?M0J4NlJ6cDllRm9YaUVUVlN1WnhDWUcySVg3emRTWkZNaURlNTlwRzRsMXRy?=
 =?utf-8?B?cmhycWJocVRBMGRDa3B5MDFQYW5QQ2RZTjB5M05CV2w5LzI1Q3djdDRlQzJI?=
 =?utf-8?B?TGZEZkdrRVhOODRMK1JUNDlINVNHa3k0WDRrTzVwd0FVRUpCaDRoamR4WjRq?=
 =?utf-8?B?bVIyMElvdDltU1d6aENXOEdGWUFNaWpCelJ3OXJNTE45V0QyUlZtYWtIUHNj?=
 =?utf-8?B?ZVE5elJHN3BJY3lmSlUxdTRLRGd5Um5qUUZ5bk9pdjM5ODZSdkkreWttSEVz?=
 =?utf-8?B?SVA2NjFleUw0NU9jVDNaaVBsWnVoNGRRQ2hadW1EQjdkV2ZsSHJrUlMzcWc1?=
 =?utf-8?B?VldNNjFWN0RPb1lvSThOUVRtd21HdlJZWmd0S1RtQ09FdnlXN09MbXNuVmFF?=
 =?utf-8?B?Zk5CSGpJTTRwdWU3bTJ0MHVqNnVzbUp0MWM3U1lPbmFzMi9ZbS94M3ZvM0Jq?=
 =?utf-8?B?cHNLMW5sSmtTRGZNQTdhRHJIbkhYWHhGaXliMHUzNS9CRmFLNXMxVmdGTVpZ?=
 =?utf-8?B?eXBQeFl1RlJsT1p2N0N0TzRENlJsbkxieUlIc2FuWDZoeHhmWHZ4THFnV0hS?=
 =?utf-8?B?cUZ5cFpOVXY5SUZhTWRzTGtmOE1kWnlwUVd3MVRWcG11WXo1K1pMV0g2aWor?=
 =?utf-8?B?V3JRZ09XR29RN3FWeFFERXRZUWVzMXAvVTUwT0kwMW9nQ3VReE90Yy8xUWxX?=
 =?utf-8?B?MGxMZ3dsYUtDcXZDVEthVVQydzUyRWFrOTNYWjBiaSt2ejQ2NndaREZ3SXJD?=
 =?utf-8?B?dEJqVklIUTFLZzhSRFMrY2dWL1pXVVJtRG9CVWF4dUVKdEI5QWJ1YTJLZ3Ft?=
 =?utf-8?B?MHpEdXU3b210ZXI5T3ZRZWZZTUt2UGs0MG0zWDI0SUtsVlB3YTNNYkRJTTR6?=
 =?utf-8?B?OVFsb1c3bVYxc08xVWEraThEYUJORnhMbElac3ZZY210Q0V0TmJ4MjVVYWt3?=
 =?utf-8?B?OUM3dGRQeUFaVm9TUU1oaHRxaU52Qkg2OVJyYUxUTm5rei9pTytFb0pyc3JD?=
 =?utf-8?B?TS9wYWRiVGNxeTc5ZTVZNGdBRmFBRGZrVFA5QlgxL1RVbHRpQnAyVElYcFJx?=
 =?utf-8?B?TGU1RVN0Z2dML3pZMW40MjNpWXg5NklhMVNYSnBlY09sejRYaW5XUVVjQUd5?=
 =?utf-8?B?bDhEQW9IdUJkc01JK0xpaFlvandOdUM2LzhZOVZxTFQwZUpzTUxxOVFJdGZ2?=
 =?utf-8?B?ZkN3dXJqbGl6a3IyVVpiOEJmR3NyQ1ltWHU1UGZ2RG9MRFkxK1VDRCtwYyta?=
 =?utf-8?B?SEdEd1U0UVk2bjdOc1hxdkdNeXIvQ1pqcERLYzJIbWtNc1U4eHZCVHpXRUlE?=
 =?utf-8?B?R0VjWVE3UDEzTkk0M2hkYkoyUGcvWWJSeEQyZHFnR0xCTHIxMTFjVDI1TnRN?=
 =?utf-8?B?Q21IbGIwZzNoQ3ZBWklMT1RmTUl4YlI1RDN6dnkrTG5ycU5zVHkvMVd6djRi?=
 =?utf-8?B?NXBjdVNJUlRiMDF4Y1BCMkdFWnlWK2FBOWorNFFHOWxLeVhnejd5Mjh6aWox?=
 =?utf-8?B?ZDRQMytnZ3AvTnZqRnhtT2VhREEzOFJnNTN5YnZMSkFwTWw5ZE8rMjF0S0tx?=
 =?utf-8?B?ZU9JZm03MFRQd2xJSWYxNmIxUjhqVWhZNDR1WG1veDIxSWU2V2NVYWs3MkYw?=
 =?utf-8?Q?q0dumAMhKfi2fI9cNZJEiqE/1Vnf+QpAmFAYtmD?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 10796519-6651-4f65-b55b-08d8f2896fff
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 08:05:37.5636
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SbycYHs21H1SpY0tM3vaCVmNQpSbYPN3H8Wz3oZFctgwwLGEtw6AT0piIO07GXjdtfmlpCa/Fp62AofmyjrBqle+OBs6YrF374+Ia9Wlnzf8v0QXm3tOPhv0geNONEl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB2144
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.29.75715, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.29.5820000
X-Sophos-SenderHistory: ip=104.47.24.100,fs=457513,da=65719669,mc=6772,sc=0,hc=6772,sp=0,fso=63389117,re=67,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_2000_2999 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, IN_REP_TO 0, KNOWN_MTA_TFX 0, LEGITIMATE_SIGNS 0, MSG_THREAD 0, REFERENCES 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, URI_WITH_PATH_ONLY 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ANY_URI 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BANNER_TRUSTED_SENDER 0, __BOUNCE_CHALLENGE_SUBJ 0, __BOUNCE_NDR_SUBJ_EXEMPT 0, __CC_NAME 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0, __CP_URI_IN_BODY 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0,
 __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_99_L 0, __DQ_S_IP_SP_0_P 0, __FORWARDED_MSG 0, __FUR_RDNS_OUTLOOK 0, __HAS_CC_HDR 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_REFERENCES 0, __HAS_XOIP 0, __HTTPS_URI 0, __IN_REP_TO 0, __MAIL_CHAIN 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __MULTIPLE_URI_TEXT 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_NEGATE 0, __SUBJ_REPLY 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NAME_DIFF_FROM_ACC 0, __TO_REAL_NAMES 0, __URI_HAS_HYPHEN_USC 0, __URI_IN_BODY 0, __URI_MAILTO 0, __URI_NOT_IMG 0, __URI_NO_WWW 0, __URI_NS , __URI_WITH_PATH 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBoaW50Lg0KV2hpY2ggcXVhbGl0aWVzIG1pZ2h0IGN1cnJlbnQgaW1wbGVtZW50
YXRpb24gb3V0cHV0IHN0aWxsIG1pc3M/DQoNCkkgdHJpZWQgdG8gYXNrIGluIG1lYW50aW1lIHRo
cmVlIFlvY3RvIGJvb2tzIGZvciBoZWxwIA0KYnV0IG5vIGNsZWFyIGhlbHAgZ290LiBNeSBzZWFy
Y2ggd2VudCB0b3dhcmQgZGlzdHJpYnV0aW9uLWxldmVsIG1ldGEtZGF0YSwNCnRoaXMgY2FuIGJl
IGhvd2V2ZXIgd3JvbmcgZGlyZWN0aW9uIGFzIHBhY2thZ2UgaW5kZXggaXMgbm90IGJ1aWx0IGZv
cg0KdGFyZ2V0IHN5c3RlbSBkaXN0cmlidXRpb24vaW1hZ2UuDQoNCkkgZ2V0IHRoZSBpbXByZXNz
aW9uIGFzIG9mIHRpbWUgYmVpbmcgdGhlIG9ubHkgc29sdXRpb24NCndpbGwgYmUgdG8gc3RhcnQg
b25lIHNtYWxsIHNjcmlwdCBhZGRpdGlvbmFsbHkgdG8gbWFpbiBzY3JpcHQNCnRvIHJlc3Bhd24g
Qml0YmFrZSBlbnZpcm9ubWVudCBvbmNlIGFnYWluIHRvIGRvIGJpdGJha2UgcGFja2FnZS1pbmRl
eC4NCg0KUmVnYXJkcw0Kay5kLg0KDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBSb3NzIEJ1cnRvbiBbbWFpbHRvOnJvc3NAYnVydG9uaW5pLmNvbV0NCj4gU2VudDog
U2Ftc3RhZywgMjcuIE3DpHJ6IDIwMjEgMjI6MjANCj4gVG86IERVRFpJQUsgS3J6eXN6dG9mIDxr
cnp5c3p0b2YuZHVkemlha0B0aGFsZXNncm91cC5jb20+DQo+IENjOiB5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFRvIGJ1cm4gJ2JpdGJha2UgcGFj
a2FnZS1pbmRleCcgaW50byBidWlsZCBwcm9jZXNzDQo+IA0KPiBodHRwOi8vZ2l0LnlvY3RvcHJv
amVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9wb2t5LWNvbnRyaWIvbG9nLz9oPXJvc3MvaW5kZXgNCj4g
aXMgY2xvc2UgdG8gd2hhdCB5b3Ugd2FudCwgYnV0IEkgZGlkbid0IHF1aXRlIGZpbmlzaCBpdCBv
ZmYhDQo+IA0KPiBSb3NzDQo+IA0KPiBPbiBGcmksIDI2IE1hciAyMDIxIGF0IDE2OjQ1LCBrZXlk
aSA8a3J6eXN6dG9mLmR1ZHppYWtAdGhhbGVzZ3JvdXAuY29tPg0KPiB3cm90ZToNCj4gPg0KPiA+
IFNob3VsZCBpdCBiZSBmZWFzaWJsZSB0byBidXJuIGV4ZWN1dGlvbiBvZiAnYml0YmFrZSBwYWNr
YWdlLWluZGV4Jw0KPiA+IGludG8gZGlzdHJpYnV0aW9uL2ltYWdlIGJ1aWxkIHByb2Nlc3MgYnkg
Y29uZHVjdGluZyBhbiBhZGFwdGlvbiBvZiBtZXRhLQ0KPiBkYXRhID8NCj4gPiBJIG1lYW4gaGln
aC1sZXZlbCBzY3JpcHQgaXMgdXNlZCB0byBzcGF3biBCaXRiYWtlIGVudmlyb25tZW50IHRoZW4g
c3RhcnQNCj4gQml0YmFrZSBpbWFnZSB0YXJnZXQuDQo+ID4gSSBhbSB1bmhhcHB5IHRvIG1lc3Mg
dXAgaGlnaC1sZXZlbCBzY3JpcHQgdG8gYWRkIHRoYXQgc3RlcCB0byBidWlsZCBwcm9jZXNzLg0K
PiA+IEkgYW0gdW5oYXBweSB0byBtYWtlIGRldGFpbCB0aGF0IGxldmVsIGJlIHZpc2libGUgaW4g
aGlnaC1sZXZlbCBzY3JpcHQuDQo+ID4gUmF0aGVyIEkgcHJlZmVyIHRvIG1vZGlmeSBtZXRhLWRh
dGEuDQo+ID4NCj4gPiANCj4gPg0K
