Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web09.4157.1617109764378171377
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 06:09:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=uPAsg4Cv;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F8qXf5ljcz44px
	for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 15:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1617109762;
	bh=/PC0ACZXG28oZChCu/DS61Qcghm94fvMm6REhODCGaY=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=uPAsg4Cv6ax40eRsJWKKUVZa+RXblP+GTMPus72OMHkb6V/UFcre6qJ/sfNrzsbP8
	 iXIGrLmwuDD1KgGIJT2uDMHThuDz+pop4trEmccisJyyspFyRKV6cPo3jZ/msoyLSY
	 d0AV2JKCuhS1ruScL2+Z6e1+/+zCBcsXk5gSwcdawObD1JkR9snbvdp6yZefgNgKx5
	 lez56gqKXy0H7Z+9EEipn9WehkO5UuP8QwUR++nUut5Z/ahUFCrUuBDdLjnvBI2+F0
	 Jev2Ok9BC4m8r7gfT8CZOzdscwNbOAbaIFNzw6SlQXq/fWdfLRqEAeXfrDP3ERdKTK
	 g8vjo6TkEjGZA==
X-MTA-CheckPoint: {60632302-0-C22F090A-5CB8}
Authentication-Results: thsbbfxss01p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=ZIYeeLp8;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X1JAJVwi63izb8m1VdM5JSoDP2PsBkNoBgOMzKVAYit6cgx97x+Ic54+8VS8L6Y14gjsr0qfHTtrJf7TVJ3xj6WDMRyd+37NTkiA70HHFSXMnhw9JtXYtJgeRFEH6isqqDBp5cf8mHJW2JbHOcx4Zr7Gp6DyG+nsgToJak7FMz4igLiKXsy53JcUL2OK9Cy1a7GxKUACUyBoXuGMyZMXo8siyWWKbnHP5vB8huP1NINtyn4OWqXsqe3rmGf/ShDDFz62Qth1tX6xb+9ZdRyUO14OZWSmi/Xyejqz5+HcG7wb8K1Aop7prOIpKkJR/fqM/uCMAIRVxOT0IvnQVyvwPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PC0ACZXG28oZChCu/DS61Qcghm94fvMm6REhODCGaY=;
 b=E5CIFKUPnxzDTxID5hkqedinAnV7aNQMSIk44dCIfIoI/VGZTxZpVwyDdH42dHfzCsdl6btpXYRk2uxuSZpXiffLmjbvvmodc0ymNJxjgzzOy0J1fMTPILysd4VuZABvmUOx6TxkMhrMQvsdCsAgfLzbrQPb/Ds6Fq7dCtfhSEMik26G9GR/foumV7UBa1KyWJCrXxUGAmvTQvNHChGNN6Ep68e39uRBfZ+to/G59EwVVPENeG8uC/GGkH8WrFyEDVdpCAR2Fp3c0xVQ/JMbmcDLl5InLopV629dBJKs6Dvde34yc8qaU1y4eklmoLNlrjD+gIoVUHFEDdsUX1bwDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PC0ACZXG28oZChCu/DS61Qcghm94fvMm6REhODCGaY=;
 b=ZIYeeLp8Nh13Uf31E33UVRg9xxa/0sD5EEX4hf8qnoErOKpULSpbe7h3gjrVbD3IgrR3wHMqIu+BUwaUaaXKEVH9bT4VNPm+Ds0NnpK3ol5wM+6NOqxc4iFO0M93AEpJ75rLiYyDPEwAgoOgdYGSDn+bfgVp0h1Daeo+e3lmgTg=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: SDK build artifacts describing software composition
Thread-Topic: SDK build artifacts describing software composition
Thread-Index: AdclZIITMdzPU2/1S72GEi1IDljLaA==
Date: Tue, 30 Mar 2021 13:09:20 +0000
Message-ID: 
 <PR0P264MB0889687B4BC64D6DA7E21A16E17D9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d535994f-52b2-488d-24a1-08d8f37d0862
x-ms-traffictypediagnostic: PR0P264MB1498:
x-microsoft-antispam-prvs: 
 <PR0P264MB1498F75E44E55C726AC5529CE17D9@PR0P264MB1498.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0zUteDlUAOGTr3I2/bh5JlZsVQzkKnTQ4ED+Ldi7Zg6UaW07E5KdW4S9uOqE+OQtKMEAYPspKehi19zy56LOKcKcfm8R3yqkkzZx865YNbtBfHwg/ZUFm2SapaTWqIOdwlCsIKSThfKgyWwvoA6/JDnnSssroByv5v6wkCxhrkwsZoAFYn/5iupwHrXOY+wCNvSMzRs8D5rBDaViXngWtIg/1qDwrDcJ3yNXXQpEdRFiDhbICYC0ULadRuhfV014UhyPppzTloTPRgREkp6w8J8N4DV4y2nu46QU7nba6UeYBMfV5NS2xeck8+Wq4UJQqVG4Q/3au2siaVpfq6XYpRDNOg/cyb2JifFvWyRwMd9Nbxkkm3vtP5YWvuv77iJNlx3/680sDXjZtvqna2n2svIbayzd0Qsf2K50jD4CGg/MHPuPOjlvKIuzzbuA66F9dqAj62Q7UUB2cwqTzN440nyLTpP0EU7JjnBD3ElJwIId25CSLAW/SP9lx3RL77xtmNf4+JiwK3VL8wqZrPIeb/LwltK5dm1HlIOrLDmSsVmrPkMuM8BVSIWUhlriq3J/y/sP35J+/qrSAUOAMe/oiAs5UyPz76XOyD6RVajz+aqEz6mdXd1viKNls3Nm3U6WVqfUqLIhHWeYTt2P8zf3VWUllQ7f6UUjKrQqk3QGZvw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(52536014)(6916009)(6506007)(64756008)(66556008)(8936002)(26005)(66446008)(33656002)(71200400001)(86362001)(66476007)(4744005)(7696005)(66946007)(316002)(9686003)(55016002)(2906002)(76116006)(38100700001)(5660300002)(478600001)(8676002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?eGV6K3ZLbW9PVFUxdmREd3RGOE9iVWVBbGNSNzJ3QWYxWi9SSWxlV3YzMXpD?=
 =?utf-8?B?anV2SFFqYlBWMzcydWJaOGp2MUVCcDI2R2s4akYvZWVTeDJlNWtLRHNWaGRl?=
 =?utf-8?B?bGtPbWhhaFJFRVA4cHd0OUpGUWI5Q29aSHpMOURxcjUxckVGODcwNXRjUjY2?=
 =?utf-8?B?ZG05bWNuaDN3M3RueEUzQjRjWENIY2VkcGkyVFVKMmxjajFJR3VEQk8yL0ZB?=
 =?utf-8?B?RGhTc2VFYXR5UXppdXFuTFAvcjRUMnBCNFFsVnExbTRVWVpRaDJZeTI0UnhF?=
 =?utf-8?B?QzJuSzd2WGpKcHd4Nmw5WDdxaWpYR2RFR0pRbEhaYTBuNEx6eExidVpDK2tp?=
 =?utf-8?B?aDNCSXFtdFJOMzdOSnZQcjVvSWtmOFptdXczZ2tCWXR4OUlKak1ZNTVWWVRQ?=
 =?utf-8?B?eE1ZZjZ2bnhjUUJMSHZtSEdna081a1NTaDgrMGh0bjBwUjlxNE9Pa2FDR2h5?=
 =?utf-8?B?Z3F6VUpqTU9sZGRMOHFCVGt0K05mRlNQbXcyazYxb2pXQlNRUlo2RFUzSVdU?=
 =?utf-8?B?eEdnSzBKSStTelcydFpsVEVlck94YXlOOVVYUHRrMFRnSXBXd05keGlXMWJz?=
 =?utf-8?B?TGI4bDZHWXBiaUhWSUVkaDJSWUJOWjFQRy9DN1MwWERVSDN2OVBySmxmOGtS?=
 =?utf-8?B?Vi9SajVGdTVIb1ovTy90Z2I2SU9rbkhtWlpZT1V2dG52VURFK3I1SEovWUZD?=
 =?utf-8?B?SnIyYnozWThJdFRBL3pBZzVnTHRBMGRZNXhtZklpZ3d4TVdkeERoRlR4bDY2?=
 =?utf-8?B?S0VxaXJPcEswL25JVjJsdk1JOHl6NVdXQ216SXpRMWJDSXBXWFNWeGZDZ0JD?=
 =?utf-8?B?eWM3cXdnQ0VTaEVDd2NDc0szdFFjQldjN1BMN3FXdlUzQUZXTVY2QXczUEM3?=
 =?utf-8?B?NlZLd0FhOFJPZEZZNUdwcjBNYnFVMFhiby92QmpnbW40ZkRqUEwwKzE1UGlQ?=
 =?utf-8?B?M1ppOWRSOUdBTEJ3M3lKd3phTXBGMEduM1Y1bjlORlI3UGpUSWhnRVplOTlz?=
 =?utf-8?B?VEVXR1JCa0s2QS94UWdDTVI2Y1pUbTJKdGsxaTFFQURRV1BqSnFXa3ZsUDFH?=
 =?utf-8?B?VXFBZ2NnSG1kZEJnVGR5UmpyM0VQam9MWlloaUM2Vi9ENG5tK2F4dWdXMTNZ?=
 =?utf-8?B?c3pHV0hkbDBnR0JUQkk2ckVhRUt6cjlIVGJrTlFQanp1ZWdrVDhUVFpSM294?=
 =?utf-8?B?ZFBsWlBYRk12N0FPMnFTRGRxdnd0eHRlV3pldzk1b1dhb2FTY1oybmdvRVg3?=
 =?utf-8?B?RmVERm1Jd0xxaGYvNXB5b1NoTEtxdHE1OUZtc0pWeGNXVEV6S3lkVVR5cjdx?=
 =?utf-8?B?eVdqcEhaNXZPaFY4dHp1NjFNa2NvZmc4eVEzVmpHeHAxa3NnOGJLUGNKNElr?=
 =?utf-8?B?UU5idTlIUklMeUtycTQwSzFNTEJzc1hKT1dFZGNJSXEwd0x0TTYyZVZoa2Vp?=
 =?utf-8?B?MnJPWDJHMjdqSk5QNUdPSkEzZUpXZll4SE5nRE9xeGk5Q2ZsYlk4cUMyNW5r?=
 =?utf-8?B?MG1NU0R4WUdSMDdyKzRHWHJNRlpoVmZlblJsUXR0dGs5Kzh2MEZRZnNJdGNL?=
 =?utf-8?B?MmtRY0lIV1hMQW1NOXNFUHI3MTY0ZDZiU2dPalJzSUx0ekpGbGVydEVnMElG?=
 =?utf-8?B?dDNIWkc2bHZqdzk5QTIzcDBWNllKZ0p5cUo1ak1mYXpvNmNFQkc1cFpBR0M4?=
 =?utf-8?B?T0lMTlNxSU5jVVFoamdIbkVpVmNFcHgzdXFnbGpoWHo3WGQ1QnhqeGZsdGY4?=
 =?utf-8?Q?UQb9yZUrr4Vi+/bkTrhvWuEOybJmNhu63DdjcWQ?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d535994f-52b2-488d-24a1-08d8f37d0862
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2021 13:09:20.8917
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rC+MMHGhod3xQF1/Zkl+KS903MNs4Lo5sqlbPtUpSs0bghAeLY5bfZT2x7pv7IyM6n9GYZGrQmzOD9iTjxpukCTRVOiaT4FNf5gecbvwzF5DwrJhglChdAHe4Eb5sFDY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB1498
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.30.130315, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.30.5820000
X-Sophos-SenderHistory: ip=104.47.25.102,fs=1253313,da=65824293,mc=23173,sc=4,hc=23169,sp=0,fso=65659202,re=160,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_LESS 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_600_699 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_100_P 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0,
 __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b25kZXIgaWYgYWxsIHRoZSBhcnRpZmFjdHMgZGVzY3JpYmVkIGluIFlQIERldmVsb3BtZW50
IE1hbnVhbCwgY3VycmVudCByZWxlYXNlLCBjaC4gMy4zMioNCnlldCBvbmx5IHRob3NlIGRlc2Ny
aWJpbmcgc29mdHdhcmUgY29tcG9zaXRpb24gKGZvciBwdXJwb3NlcyBvZiBjb21wbGlhbmNlIHdp
dGggY29weWxlZnQgc29mdHdhcmUpDQp3aWxsIGNoYW5nZSBpZiBvbmUgYnVpbGRzIFNESyBhZGRp
dGlvbmFsbHkgdG8gdGFyZ2V0IHN5c3RlbSBpbWFnZS4NCg0KSXMgaXQgcmVjb21tZW5kZWQgdG8g
c3RhcnQgYW5hbHlzaXMgb2YgbWVudGlvbmVkIGFydGlmYWN0cyBub3QgdW50aWwgU0RLIGlzIGJ1
aWx0DQppZiBhbmFseXNpcyByZXN1bHRzIGhhdmUgdG8gZGVzY3JpYmUgYWxzbyBzb2Z0d2FyZSBj
b21wb3NpdGlvbiBpbiBTREs7IHJhdGhlciBkb2Vzbid0IG1hdHRlcj8NCg0KKikgQ2hhcHRlciB0
aXRsZSAiV29ya2luZyBXaXRoIExpY2Vuc2VzIg0K
