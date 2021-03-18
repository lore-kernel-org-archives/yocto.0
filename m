Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
 by mx.groups.io with SMTP id smtpd.web12.6895.1616062103373704464
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 03:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=v7DWqz1M;
 spf=pass (domain: thalesgroup.com, ip: 192.93.158.29, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F1N5K0wQ6zJrkY
	for <yocto@lists.yoctoproject.org>; Thu, 18 Mar 2021 11:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1616062101;
	bh=A0PyMKvrhUgp6jDO9CIndlEaFcIL16fJQqUgYDdN4ls=;
	h=From:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=v7DWqz1M654pwH3IbUOCDVKwCSgtgZPXPKbC1fPxz4sfCqdZN3B9u8OpS3r/6m7/V
	 o9vjat2YQ2BD8svcXcUreATaApDX+Evx/H8JOCN1NnsCvbCDsgeA45kp3O/eL99nQJ
	 o3uQBt0WoHj/apUKCd3/WEuc/NGVpVtFVV+j5hnZd8W96D5+PsNHIP6Sf/NXgu71iL
	 fMtA77iZaeJup9GQmaITO7r5kW9rPfD9qed/FawowW9uec9+sW525rbBFaijwkm7NL
	 pxS3OjhAzpbsugi/4ehQBs2T/nL5p6kSZZcgnFyt8ERcGx+6R6dY1+JvP3Xoc2Z9yU
	 i9lE7a8AWxg4A==
X-MTA-CheckPoint: {6053267D-0-C72F090A-45BF}
Authentication-Results: thsbbfxss02p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=5dzM4UGy;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZf7TRFcPhnwlcsQS12RYx/hn2DNFefiqPiRAx+RacAJPwXdYtViTJCE//Je22diopS7cIkUen/iJNmFEvc0eeuRuSBCUBfFo9mmelfuzi9aZcaZO+9ykayqHewDo3aFNhY0sOBPZ3n0KgQyRVjzdFRSONNMFRsqpsoDkMOuesk67yqPleqjP8wHyDgjicIIo/Q/yj12J5PXfD7VMyFR/J/yaN770O3uhWcjEXs2ojjkBEHFbAO3PgjL5iNgp4ZwY+Jy9dzXrxL26zcUNzkhGfRzcIpcavpxB06TQbfCK6j1kWuRuItole+aW7n5wbz7H8atY/zpfvLUBlwbV5Tg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0PyMKvrhUgp6jDO9CIndlEaFcIL16fJQqUgYDdN4ls=;
 b=Z3ivluM34wvORL54dfgaAViKC/58uRYD1P/zPsrH+LiwgbCYiPEH+avo3PCCwHCxPEUBlxwspkD41JBQ5bPvNqT1ZJ/FPPofDNEcRHLFFVxN+fWL+DwK/ieX1lIQLkRTr1aej3orBCHmAUx6Tn9ddUZ3lGPkhZDV3iJyXMrw1kA4WVYCTd7G3N3pW/gbZfKFNKGs9Hf1dKm7Dp7JR4EB3WjJYgzi3ek8lOZj9AZQ6OO8vZ8U9GKZHE8lYbpjIqjrmiX7vqo3ypkwLrNcZCFLnKLbH9Htk3flc1phunS1pjUqRlQxE46lZr5CWlUu9jNBX0wcNd0I7MV0L7N26QTXxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0PyMKvrhUgp6jDO9CIndlEaFcIL16fJQqUgYDdN4ls=;
 b=5dzM4UGyJWJWuIE4xqySzw9QCN4XjEG3LUMrecfyf9OWN52eGkvxQdmjZeCb7/tNrYaEA7fGmCC2gQmPwPLHzi63lSBBH9bH1K6mPDij4AA9Elj6R2bNU7SOGEeI3S0CZ04NiGBqD57Qms5mCkJcoD+bDuZzeWMYCfTnP0ESv1Q=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: =?UTF-8?B?UmU6IFt5b2N0b10gc3VidHJlZSDigKYvdG1wL2RlcGxveS/igKYgLCBmaWxlcyBuYW1lZCBQYWNrYWdlcw==?=
Thread-Topic: 
 =?utf-8?B?W3lvY3RvXSBzdWJ0cmVlIOKApi90bXAvZGVwbG95L+KApiAsIGZpbGVzIG5h?=
 =?utf-8?Q?med_Packages?=
Thread-Index: AdcafD4bRpPIMNaYRS+mqeIwJLsNZwBCDdKAABVs9JA=
Date: Thu, 18 Mar 2021 10:08:19 +0000
Message-ID: 
 <PR0P264MB088927498A23236D8785AB19E1699@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PR0P264MB08893A9AFD28BBED215F58C5E16B9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
 <CAMKF1sp-YanX3aegWRfmde5VrgLBui0Ocwnfe5-mFD-cvenuhw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp-YanX3aegWRfmde5VrgLBui0Ocwnfe5-mFD-cvenuhw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 809ef5c2-bbfc-4d6d-a263-08d8e9f5c14e
x-ms-traffictypediagnostic: PR1P264MB1424:
x-microsoft-antispam-prvs: 
 <PR1P264MB142416757A48F081DE71962BE1699@PR1P264MB1424.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 n3gMl2u2j95HOMdYsWHPLhb2kcCrZu2Uhf7h8R6RwLhJmBlKRjZyz2k49mXvroLHmlieCVPww7g2D4dQmljfBbdQmwiy0in7/tut2mMDm0caNt1dTGFF9wUIakDe4fwTMfg22dpLNDO54EwD4zTaAU6mZ5MssL4G1fGaNZlyfWsH5JBTWYPw6Fg0UMmR5k6J6x9mytlY98ObkPdMIE4G+VbrwOS02WaJTZWI/Whi3jlbpNppTOHhJBOuBGPY8gbuyu23gNAfI5vqAYhnSkOHDs+8R5xnbP2DQR4WIOGDLjaqr3up75VNijZsqsUP40Sd70AA9F+hHs8jTD+wWdnKxeW4N3TGhdV8fbdgUFvHHDhjMent5DyLvrMGhMC8IgPRS60QfTL3y+64X42foXjgB+NnQvajMP5+82ZBMLtXxzaiFkWaPQn2pHr6+JS1vXLJ1RqQGmTb/uZNvpkRq2mzm0tQxbYH2Voqq/uA30V5lyIYaJ4AzSxT9spj93uCO4zI1BhKS1ZCWFptAx4CEj6D+uwxYtelgMtPw7bIVdyRRu0HcqeopFFsxJGx3VHquLayEaQ7Y3PAIbGe/MAp9z9hmF/WUNfa5o97eMwfI4Df2bMMicQQ4SvibP+kRlrjZl/1iZ/lzvIF2N5RBa+d+lwmrw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(33656002)(316002)(2906002)(83380400001)(5660300002)(8936002)(52536014)(38100700001)(4326008)(478600001)(76116006)(186003)(71200400001)(66556008)(66446008)(66946007)(9686003)(64756008)(6506007)(66476007)(55016002)(109986005)(26005)(86362001)(7696005)(105050200002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?R1M2a2UrQmJPZVZLNHhNUnZVdWRtemJ2OFB3Q3pQVmVTVE5PaUo4WUNGdnRR?=
 =?utf-8?B?ZDRxcTZpazV1WFFuc3ptNzNYNTU0Q3lSTDRKRkI4ZXNnV1BRQTQwKy9DR3Ri?=
 =?utf-8?B?b1pFRkM1ZStQZ1JRN1lOTFg2SVJ5RGhRcnpOVDBIa3k3YXJhaXl1NllHYmZY?=
 =?utf-8?B?U0ErQ0MrbGZnTVFkcmRxd1ROeXZ6S1dhSEthVW84TDV0QnpOem9OVVFiN0x4?=
 =?utf-8?B?UjJNUHhsWitPcmVENXdZUlppRENNK3J2WFQrMlpuVzZSdnZPUmtXM0RXNFBG?=
 =?utf-8?B?UWlLMHZUaHhBZlQ4M1NLZUxIS0s1SXZzYlhJQVJFVlc4ZEFWdHovTmV5RjV0?=
 =?utf-8?B?TExFMlBEaHRTY0hwanZTWnd3OEVBT2JXUlJ5TDNIdkEySUFNNlp1cHhSVlpn?=
 =?utf-8?B?cEE5b0hHVEJDQ0Fzcm0yekkvM3RSQ2FWLzZRZlBHdGNaSXoySytTeUgwUUNr?=
 =?utf-8?B?SFc4QlEvOWdjNGlVNGRyZnoxZUtMQXI1K0NIVHU2N2l6bW1EWTU3eXNDWHd5?=
 =?utf-8?B?SHo4V2FEOVdQaDFMazBTVlppSmRsY1JuRm5kWVAwaWdLZDh0dElXdE56YVk4?=
 =?utf-8?B?bmhEdURvM1pyT1k4TEE4Q204dmY5SnRNSVNkUDRRdlUvODJRdW1KRFpra0Q5?=
 =?utf-8?B?ZmQ4RGRQaUx5RlBxVTMvUFJJUUxjenR4bGRVRHJPQzMyRUlMdnk1TFJNKy9I?=
 =?utf-8?B?NWNXRWRQbDlZUjNGMzdKb1JSbC9nRlh5cHdtVXRPci9oZjVSLzRwSUNobTVp?=
 =?utf-8?B?N0l0Q2NhUTVDODlnVFZNN3NidVhsbU5IaW5JVmNQSHR0RVZ2eHRlMDZEb0Iz?=
 =?utf-8?B?UGNKQnhpanBOYXNsMkkvQXNUUUZpNmg0cTg4U3VHdVhmcDV6Q1hLNzhFalFR?=
 =?utf-8?B?ZmVjN3lSc2NXNFRnYlZJTEk4ZWNGTE1KenJrUjNVK254L1RKekpPT0hPWjdu?=
 =?utf-8?B?ajNMOGVsaG9na05nUllXSWQ0ZkV3WW1sbVVGcVRGdTQrZmdvc1VxdFJTSjc5?=
 =?utf-8?B?N1Y0UHpGdmovUmpvQ0VFOEFBZ2dOT2d5ZGlOZk5aVzJGdnJVVHRxakZRMDNN?=
 =?utf-8?B?eU5TMHgrTEorS0k1WUZ4b0VpMkVxaDJGYTZIeGM5OUk4ZUE4OHVDVlpHUVJT?=
 =?utf-8?B?UTBSWXBOUEQvWWNlTDRsa2s4OW8vZFRpR0t1ZjBVWm1FbHZCT2prT1d6Q05u?=
 =?utf-8?B?UW5pblh1ZlhoTTJRanVQMXJYZkdDVTBsaHdab3NVZ0RMazlGcC9iRmxTVDU2?=
 =?utf-8?B?elBsbTNzSDBON2VoRnEvOTFmYjNSVkxROUxaVFRuY2pzcHNKcExudkxXemw4?=
 =?utf-8?B?S2lLVG0rOGwvYTdMUS9tZzJxRGVhaStsYit3anRwdjYrblhPUzcvV0V1cHkv?=
 =?utf-8?B?ZnBSWWN1L25xNWVKTXFCVmxyRWdmTUxBcWE0aE5ZNUtjVERVK3psOWpPV05s?=
 =?utf-8?B?Qnd5aGpkUC9RSlg2Y2VMQkhLYkpGWkJZK21kMityU1VVMjlvK0xFbUdvQlBV?=
 =?utf-8?B?MGZyaWtxdnBjQmNtTjk1MjlNNXFGc0tGK3JyTU9rd1p6UTBYVS8wczEydzB2?=
 =?utf-8?B?V0llVGdyQzBGbVhzaDNib2I2TlhKL0hqRG5IZnN0RFd6NGJxQksrdGhBTlhC?=
 =?utf-8?B?R2dydzVQN0tZU080cFpzeitKamNYQ2orTkw0TW5pS2ZhR2plYVRGbnBPaSt4?=
 =?utf-8?B?UGtxcTg3QTgrRWFKSXZQamVVbGQxcXU1NWUrTWdCeFZCMnBuWmI4Y2FlUWJ6?=
 =?utf-8?Q?HKPIJ/15L2fGeNxjRrcGTuK5PI7l4W1LJix0cUz?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 809ef5c2-bbfc-4d6d-a263-08d8e9f5c14e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2021 10:08:19.1321
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y50BwkGWFackholrJy+gqcMN4m+TU1naDJxev/OWmylDFYV2B76aoCrScdrl7gzxeiE/cfrVuMa7U9Xu+org5OExBGbrJU91fNT4J4ECH+0NShC+kWC0Yi8/ApssnOko
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1424
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.18.100016, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.17.5820001
X-Sophos-SenderHistory: ip=104.47.25.103,fs=32820,da=64776631,mc=693,sc=1,hc=692,sp=0,fso=63993440,re=48,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1500_1599 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, IN_REP_TO 0, KNOWN_MTA_TFX 0, LEGITIMATE_SIGNS 0, MISSING_HEADERS 0, MSG_THREAD 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, REFERENCES 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, TO_MALFORMED 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __BOUNCE_CHALLENGE_SUBJ 0, __BOUNCE_NDR_SUBJ_EXEMPT 0, __CC_NAME 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_100K 0, __DQ_S_IP_1MO 0,
 __DQ_S_IP_2D 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_49_L 0, __DQ_S_IP_RE_99_L 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0, __FORWARDED_MSG 0, __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_CC_HDR 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_REFERENCES 0, __HAS_XOIP 0, __IN_REP_TO 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __PHISH_SPEAR_STRUCTURE_1 0, __PHISH_SPEAR_STRUCTURE_2 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_END2 0, __SUBJ_ALPHA_NEGATE 0, __SUBJ_HIGHBIT 0, __SUBJ_REPLY 0, __URI_NO_MAILTO 0, __UTF8_SUBJ 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiANCj4gd2hhdCB5b3UgYXJlIGxvb2tpbmcgYXQgaXMgZmVlZHMgYXJlYSwgd2hlcmUgdGhlIGZv
cm1hdCB3aWxsIHZhcnkNCj4gZGVwZW5kaW5nIHVwb24gd2hpY2ggb25saW5lIHBhY2thZ2UgbWFu
YWdlbWVudCBpcyBpbiB1c2UuIFNvIHlvdSB3aWxsDQo+IGhhdmUgdG8gbWFrZSB0aGF0IGRpZmZl
cmVudGlhdGlvbi4gUGFja2FnZXMgZmlsZSBpcyB1c2VkIHdoZW4gb3BrZyBpcw0KPiB1c2VkIGFu
ZCBub3QgYnkgcnBtL2RuZg0KPiBmb3IgU0NBIHBlcmhhcHMgeW91IHdhbnQgdG8gbG9vayBhdCBj
b250ZW50IG9mIHRoZSBwYWNrYWdlcy4gb3IgbWF5YmUNCj4gdXNlIHRoZSBtYW5pZmVzdHMgdGhh
dCB5b2N0byBnZW5lcmF0ZXMgZS5nLiBsaWNlbnNlIG1hbmlmZXN0IGluIGltYWdlcw0KPiBoYXZl
IGluZm8gb24gYWxsIHBhY2thZ2VzIHRoYXQgZ28gaW50byB0aGF0IGltYWdlLCBpdCBtYXkgbm90
IGJlDQo+IGZvcm1hdHRlZCBhcyBwZXIgeW91ciBleHBlY3RhdGlvbg0KPiBidXQgaXRzIHNvbWV3
aGVyZSB0byBzdGFydA0KPiANCj4gDQpUaGFua3MgZm9yIGhlbHBmdWwgaW5wdXQuIFRoaXMgbWF0
Y2hlcyBteSBvd24gb2JzZXJ2YXRpb24uDQpUb29sLWNoYWluIHVzZWQgaW4gcHJvamVjdCByZXF1
aXJlcyBhZGRpdGlvbmFsbHkgbGljZW5zZS5tYW5pZmVzdCBmaWxlIG9uIGl0cyBpbnB1dC4NCkZv
ciBzb21lIHJlYXNvbiBpdCBhbHNvIHRha2VzIGEgbG9vayBpbnRvIGZpbGVzIG5hbWVkIFBhY2th
Z2VzLg0KQWN0dWFsbHkgaXQgY2FuIGJlIGNsZWFyIHdoeSBpdCBkb2VzIHRoaXM6IFBhY2thZ2Vz
IGZpbGUgc3BlY2lmaWVzIGFtb25nIG90aGVycyBlYWNoIHBhY2thZ2Ugc291cmNlIGNvZGUgYWRk
cmVzcy9wYXRoLg0KDQpEZXNwaXRlIHRoZSBxdWVzdGlvbiBmaWxlcyBuYW1lZCBQYWNrYWdlcyBn
ZW5lcmF0ZWQgZm9yIC5pcGsgWUVTLCBmb3IgLnJwbSBOTywNCmlzIGl0IGxlZ2l0aW1hdGUgdG8g
dXNlIHRoZXNlIGZpbGVzIGluIGV4dGVybmFsIHRvb2wtY2hhaW4gZm9yIHNvZnR3YXJlIGNvbXBv
c2l0aW9uIGFuYWx5c2lzPw0KSSBtZWFuIHRoZXNlIGZpbGVzIG1pZ2h0IGJlIFlvY3RvIGludGVy
bmFsIGludGVyZmFjZSBub3QgaW50ZW5kZWQgZm9yIHB1cnBvc2UgcG9pbnRlZCBvdXQgaGVyZS4g
TWF5IHRoaXMgYmUgdHJ1ZT8gDQo=
