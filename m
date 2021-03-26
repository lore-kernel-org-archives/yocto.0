Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
 by mx.groups.io with SMTP id smtpd.web12.11449.1616760485811035080
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 05:08:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=VW9vlxxS;
 spf=pass (domain: thalesgroup.com, ip: 192.93.158.29, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F6LMm1FzgzJpn4
	for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 13:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1616760484;
	bh=1Fe20XfDLZKOKlVkEnCjUBESs21ZePiv8Z94rhMMds8=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=VW9vlxxS7V/eZ1gtDkMrPp+AiaHd8ehbAH1m7s+sQ0E+xxu9qtKs7FU7hGZfx5XFL
	 hq+7k4erCM+6tDAvySc84zSdv7hJoyAcmqp+/xQAUzbteVCDilwCYOCSabNeCzE/92
	 KXVvm+KaY5sA8JCvLEZor3IKqbhUSIeH2f7GRDtZzaxPIVCHZoSHtAR4ZfEvBT0cFh
	 iFfVoovUpj/suBkQF+OhPuAsOqNQHInLNFLflAaSPj/L46gp0QY/NslrpuBXEm4U17
	 71i9rkbjeMO8ZlVMkdquXd0TaRLoUm9OukDnYuNYg9LcLkUiehjZpzk2EhtwvgKyu1
	 0whU0NLmlwZHw==
X-MTA-CheckPoint: {605DCE2C-1-C32F090A-5C63}
Authentication-Results: thsbbfxss01p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=IazBxz7R;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3BbRsQGO1uHZpJvtki+O94PUGmwnxUjWHaXZx+vIhwIxJZt7LY5sheDDpu63cYpW65vvbd5qmPAbE/2oHFE2kYJMuEPC02+2/fWcPeHRQ2i1Vf4+c4yZ/aa3udYA+9XoxP+NZVBo+UAoxNE6UE/2kPd8IYuPs1y/b8KQao9GRIssX+ZXLo5DzdlnzdvfI8c/Dqn8GHuFk5vd8Wd5Ka3Bt8I71tCrVTYyEgkwjs8AH+9tPePBLo+C6ptRQZn7rCCLNmRlPqGKrP4GRb3tlmD+sRvj3JH0ZLLN94vffq9zYMiCb7fIvtGRWa8AL/uJEuKtnB0uB19KgXVn+Hew+pZJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Fe20XfDLZKOKlVkEnCjUBESs21ZePiv8Z94rhMMds8=;
 b=KsPvPncXoIVWSF4eQ9TSiTRHiXPVkwJgXDHOsQbu6BypQCeC5pqxdBdrIaNvEw2GrlxK+GxTu11Qjyou8MtAPiQ/zdHOgDZwPjydKNoSywyLfgIBAVOAmTJ5Bi3nmwKea0vSrfuxOpwj/b7jm/wjnvokm3QrMDSY1OKl+PezawgTGUulCmVe1HpFft5bQRW1+1TkXHUefryArxn4tEtTi0jHoSDEssegeuL9rVIqpc211tgUR8X6A59gztHk5Bm92yaYT5uC3s/4Jj3zbKxPUSTwKh3NGQE6FbWyKnIhNUKDFLQa+4tmEXjWe5Om6dr0y0lqhi7KSirUvnSF0RUCpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Fe20XfDLZKOKlVkEnCjUBESs21ZePiv8Z94rhMMds8=;
 b=IazBxz7RMpxr+PjTjc1tyhPgpOVBILI8Da77mP+Y4S8AnGu2UnWXw9P3kRAXGvzvJFQic8gPf6aPdVykhj/nMp6k0b/UiGhE12n5KuqxZ1Pm83X8Vp3CYz4W/SSRie46vTkyKvHvL0BcADrFcHFKH0tDjDCwTIYs+peG0wAH/PQ=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Use bitbake command line to override or modify variable
Thread-Topic: Use bitbake command line to override or modify variable
Thread-Index: AdciNU1NF9rkWx0QQEK72sndnYWymg==
Date: Fri, 26 Mar 2021 12:08:02 +0000
Message-ID: 
 <PR0P264MB0889535BEAB1AFE5D163E7ACE1619@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 171590de-1381-4f4f-2853-08d8f04fce43
x-ms-traffictypediagnostic: PR0P264MB0058:
x-microsoft-antispam-prvs: 
 <PR0P264MB0058C486FACE61D09872C495E1619@PR0P264MB0058.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vgzA77X74DokU1/z5sRZHa1xaglG+vVHeAuOV6bdR4afmnBIfreLzTwqxZ3mVaFuzSio9Ql2SVdVAr9Yc1udkqqZZa57mhk35HalvsQoZBvfKNXblFwChUE9Nwl+99lLdDjN6vsITFcOkW7/klCT/pr1WoOMiLF0F72V9sKohO7Z1C3P4gvtaiwwUh35YutQ/uYs4MFOwNq5vCq+v08GgPPRCzm7Ov78S/PwQLhWRIBoIsuuEEbqfYg7ZGY/2BuyH59gu620C/fm6AR4kD+2KDLIOp60QKNAMAIjHTD+mgAXBkxKJ+p58/XFszqm3HSQMkA5q5QNwF3tHwsTikGOQob52jH4nMaMmvdEq6P53wjPCVqRi1lB7tShF/hg2WKtlB/qDTiNrdY45au4cgf4OEMRhk7jLZzWtzR2tgp0m1Nk8kRLa3CVIW7BLgL/1FLvKHhI78YeQEiPxYiIkIFpW/xC8kamnc8TlDl6ROBoj3tAkgPQOPB2aAm14Go0CTjzkydY9+iV8jGdNPIYXmSKFgg+kJafy//hHo9LCqhaWJ0iRKhwHphN8gskBJcCWbftN15q3WkSne8BWEPchx5J8hnLU35VCdO1cp0S1sB74qsVMb4PrWSu2GM/ZbG4YOVRcUd9MlreCU+q8ZPbs41VVpnyKqkYcibCVG9PNOYCZvs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(26005)(4744005)(8936002)(2906002)(76116006)(186003)(5660300002)(38100700001)(71200400001)(66946007)(8676002)(64756008)(478600001)(66556008)(33656002)(55016002)(86362001)(6916009)(7696005)(6506007)(66446008)(52536014)(66476007)(316002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?ZjUrdUNCTWhnR0IzZ01GV3E5Vis1Wnc0SEFlbEFObGhSL2J0RW1IOXQxdEw3?=
 =?utf-8?B?S2FIT05NckdsQzhJU1pBekdvbjlTVU4zQW0wNTBiTi92NnhPZ0FDWlFxM0ly?=
 =?utf-8?B?QmowSDlvc0xwU0J2YVpISExOSXBCU08vZnlzakNxcUZpMGY2TVRSQjE4cTNv?=
 =?utf-8?B?dHRYVGtla3h3RHZ6dGNUdzM5b0tWYUw1ME9RL0RaWG1pODlQY3V5WnlaeWJT?=
 =?utf-8?B?NS9lU0xZOGlPYnNJdXdJUGRPVWhRTWZsdVIyTVVvK0JSNHgwbm5jMlFJRG4x?=
 =?utf-8?B?Q2JDTnExbHVDYlRKVkh6Y2ZQU3F0R3o0eXVCUzFmVXVCemszd2gzVStyRzBF?=
 =?utf-8?B?anhtTWZQQnpuME83RHJrVXJlS050bXIrMFI0SmV1ZXkyZkM0Y0JzRGJNejg1?=
 =?utf-8?B?U3BGR1FJenZEM1RHR3UxQ0RGTFJQb0pSRjhCVk5EcWxTM2h6bm0zbVVtNTJa?=
 =?utf-8?B?SnRySUFKdGNuRC80dy9RN0NpdjVsZUZnd0xvUTdMSHRZeWk5eUdZWXQvTGRK?=
 =?utf-8?B?bzhWN3I2Y1VFK3l1SmZpYnhKOUtQRnEyYkFwbGZkemEwMGZoS0txNDRPazZR?=
 =?utf-8?B?UWxYYk1pWWRPMGorRCsxRW1WTjM1dG5hcmYvVDBnUDA0Q2Vma2xkaFd1NCtG?=
 =?utf-8?B?cDdDZG1yVU9YQlBuNFBUR2V2TnVRN3IwcDl2UG44NXNUVTMvTWNCRnNrZENL?=
 =?utf-8?B?dnJNcHM2VFZkem9VUU1yMWpUcVpCdDNVODBnS1dLVi9IZGZwNGRtb2FxRnF2?=
 =?utf-8?B?dUhrWHZ2QjNRMVp0cUJ4R29LN1J6V1BOczNtdmpHa0NDVmxKemYxRnQ2bzN3?=
 =?utf-8?B?Rzg2bnVIL3FVWUtQbEUrTmhoK003M1J1QXpzSlVnMEVoTGlFZTlBeUh0L0V6?=
 =?utf-8?B?amFzczZHa3VpTFFmV2NLa3Y4MmIvZEhzU0dQZ2ppUXhYN2VTZzhSWGNCZzdD?=
 =?utf-8?B?ZjdaTVdmdG4wTVpYSkpTei9nelVNRDU0NXc2cmM5U3MvbTNQZTRjek1mRlQ3?=
 =?utf-8?B?MS9FVFhnN1UvdWRtNVgxSGIxMnRqY2FSR2Nma1drb0dXVW03aERvN0l2OXNr?=
 =?utf-8?B?cG1iZzhLYUxBVDlNVHEyWGNOSVRnZWhKUkFyaDVGa3dybkd0a0YwQVJuUmFt?=
 =?utf-8?B?M1RtdStWRXIvSnB4R2prUHRFdjRFM3FlTzZMQUtnbHdIV1VKMTFPYWhGNlph?=
 =?utf-8?B?cHJJZXE0eTlCdXB6cXRudTZnOC9kRTBhUmd1UmpHaXd4WmNKYkFGc1dVRUkr?=
 =?utf-8?B?MU5ZSGpZOEk3eVQ2SGdCMGgvRVQwZjhmREN5QkdFMDdhZVd5eXBxMG4vUEFp?=
 =?utf-8?B?Z2ZOdHg2dDRWYzhYTkgxR3YybGp2Ymp0cDB3dzZsQWltT0NhZ2x5SzJDYzFD?=
 =?utf-8?B?TkNUTjlHNlZoM3E3N0UzQitEaVlmV1NXa05CYVlSODlWWWZLL0JEODBkNDBQ?=
 =?utf-8?B?WjFNazhxT21SN0M1T21haS9jQ1ZBdHJLaEx2U3N5ZWxuL01uRHJTYVNZb0Zn?=
 =?utf-8?B?TTFPeXNDU0k2REEvb3J0RlFtZVZLaExiWkhIbGw5a3F5RFFudUxjTExkVTZa?=
 =?utf-8?B?bFJMMmxHTjJIUDZiSEc5RkxCZC9zM1Nxa2poNkVrOGpsakE5bkFCSHFHNkpq?=
 =?utf-8?B?U0pPTWV4K0wxTWdzTUxZMEgxcW15d3QvV0ZyT3phOU94NGpZeEpROVdZSlIr?=
 =?utf-8?B?Qi9CdEJscnBraklHL0d0NUpUODh1TUM1YUJmeDBrQ2dGdWdLYWVSbDY4czgy?=
 =?utf-8?Q?acOnvDdQVwgetvclPGW4LP6dpHSrWswsk1yNMKq?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 171590de-1381-4f4f-2853-08d8f04fce43
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2021 12:08:02.5785
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BTa6hPDvcjw2KXRGfd+q+NijLpuPC79YXzjFZChgQ6Oo8Ojyc5UtCtoeKsKfrdDW7eDu0BwD9UX3UaCmOvzF/ThRUVgK2OEEqAyRf+PGDnTL4T2u3b3uPSWdTlTHVnJ+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB0058
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.26.120016, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.26.5820001
X-Sophos-SenderHistory: ip=104.47.25.108,fs=644726,da=65475014,mc=12192,sc=1,hc=12191,sp=0,fso=65063663,re=166,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_LESS 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, BODY_SIZE_900_999 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_100_P 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0, __FROM_DOMAIN_NOT_IN_BODY 0,
 __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

MS4gV2hlcmUgdG8gbGVhcm4gbW9yZSBhYm91dCBhYm92ZSBjb21tYW5kIG9wdGlvbnMgKGZpbGUg
cGF0aCB0aGUgZmlsZSByZWZlcnJlZCB0byB0byBiZSBmb3VuZDsgZmlsZSBwYXRoIHVzYWdlIGlu
IGNvbW1hbmQgb3B0aW9uLC4uLi4pPw0KMi4gU2V0L21vZGlmeSB2YXJpYWJsZSBpbiBiaXRiYWtl
IGNvbW1hbmQgbGluZSwgZS5nLiBCQlBBVEg9Inh5eiIgYml0YmFrZSA8dGFyZ2V0PiAtIGRvZXMg
dGhpcyBzdXBwb3J0IGFsbCBzdXBwb3J0ZWQga2luZHMgb2YgdmFyaWFibGUgZXhwYW5zaW9uPw0K
My4gQW55IGJ1aWxkIHByb2Nlc3MgdmFyaWFibGUgY2xhc3NlcyBleGlzdCBvZiB3aGljaCB0aGUg
c2V0dGxlbWVudCBvciBtb2RpZmljYXRpb24gaW4gd2F5IGFzICgzKSBkb2VzIG5vdCB3b3JrPw0K
NC4gQW55IGJ1aWxkIHByb2Nlc3MgdmFyaWFibGUgY2xhc3Nlcy90eXBlcyBleGlzdCBmb3Igd2hp
Y2ggdG8gc2V0IG9yIG1vZGlmeSBpdCBpbiB3YXkgYXMgKDEpIGRvZXMgbm90IHdvcms/DQoNCjUu
IEFueSB1c2UtY2FzZXMgZXhpc3QgZm9yIHdoaWNoIC1SLCAtLXBvc3RyZWFkLCAtciwgLS1yZWFk
IHRvIGJlIHByZWZlcnJlZCBjaG9pY2UgY29tcGFyZWQgd2l0aCAoMyk/DQo2LiBBbnkgdXNlLWNh
c2VzIGV4aXN0IGZvciAoMykgYmUgYmV0dGVyIGNob2ljZSBjb21wYXJlZCB3aXRoIC1SLCAtLXBv
c3RyZWFkLCAtciwgLS1yZWFkPw0K
