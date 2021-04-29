Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web12.176.1619718693309767514
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 10:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=YS/fePdK;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4FWNNM37kLz45h9
	for <yocto@lists.yoctoproject.org>; Thu, 29 Apr 2021 19:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1619718691;
	bh=w7IPcMsRwAPAsNAsVBx+B25ZdfZMwjoB0+IGz4JCa2Y=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=YS/fePdK5dH/bwSYu25GNiwOZbIGg7lAdiFmpv6F6yztq6hYhFW4lm95PHZdgUNOJ
	 ibAfN7OaYyXY5yvXhC/WkUP2Kb3JYP0tC1oKDWfkISM7JMA3mvC4Ei3lZHDg/IN/gr
	 9Q/IH4aqcpldPjYqf5LNC3qHgd/TzD/1QNsJ8183wN8SlCnwa6s5zowFTYpd7/FS05
	 kwgwc6KtnMkJNV/s+XoS6Zu+u4LnmyYzCLcXM1tvT2Ou/6jTLjzVEEH/TwYhPIBk+B
	 XIWlsfPFN6FjozUzMan08+P16VYz5T/y3oXWnt5pnOtS1w1EVHTYt3LkVxgl2JzwFK
	 7QEOctZfwduTQ==
X-MTA-CheckPoint: {608AF216-0-C52F090A-5C73}
Authentication-Results: thsbbfxss02p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=fipjXpjp;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9Mzc+zxElTvb1Fmm6IfT6gf7ltUheZNCJE0Hj2I2PfilHqImNVdmVORnf0OpGf7YRvbLKDwtCQuTMRWn7GMPJkDLVRRydvg1HIbpBvJSSpmXT65+t6+tmoetYeoUtU2nNlCNL7CL+re0Q0YXXhWlamDpE/Di+l1WPfCKthfzrqpvlKMowult8yORoxgPfY7UV2H8Z2fpxM9SQKV9snYiI8MyTnM/ScbYIGpYqQQcQolOIJf8rpimvTkE9OwkL5i+oMpo5sTrSeVHtNyoJr0b22LPHwkk+1t2iOWdkrKlHSSatMF7eIZZTsvmD7n9R6eLFE1Ic7gqnar9Pfve5jnRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w7IPcMsRwAPAsNAsVBx+B25ZdfZMwjoB0+IGz4JCa2Y=;
 b=jiax8pDFWZ4vN7zSiJh/rhnySJy74w7JnRjdi5yk6HfBE3G8mvu3xeEco3BZ+ECTHMpVs47XQltzrSs3VgX2eesiDPL/85WCpzbH1mL82Uk8FsEmk3PyXfkfkQRNmXtej6b2TiFkWqCMe/ZIy9GI9rAoY4TOTwdGv4tB22chKRH3inTPNTVyzdXL79oimS6QDTd82FIMc/kXqv6Ub/Za44AOufQf0GRSVVW2wANQIm4e1r+/u39U4LMhGXXhhTBAYk3SaVkUy/zVA8uEuo7Wp9fw91DDspguO110KEKYb1usRSmMLvPmrT+gJyyhYIvwRJ+d7c0YRG/CTC6CZJ9KWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w7IPcMsRwAPAsNAsVBx+B25ZdfZMwjoB0+IGz4JCa2Y=;
 b=fipjXpjpEHFWvJpmNTmtNRvpoE4t6T/wkt82XJh/+O+QUXRiUJHap+gu7qqCOJf7ms/uIZaF0qn1XQyRYiwqlLghyDajJA3AIWO4pvJ64nYWQ48DmHV1c8Al32WrH19RhvdG4CsvVMuAu0Feyo5uLWHaNewfBt4kss3lHm2u0Ag=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Variables qualifying for be placed in conf/local.conf
Thread-Topic: Variables qualifying for be placed in conf/local.conf
Thread-Index: Adc9H1v5pdY8aPR/QeCBS41Byld2sA==
Date: Thu, 29 Apr 2021 17:51:29 +0000
Message-ID: 
 <PR0P264MB0889FBF111DA252231C8C9ACE15F9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4154608a-1137-4f82-bac5-08d90b376b2e
x-ms-traffictypediagnostic: PR2P264MB0222:
x-microsoft-antispam-prvs: 
 <PR2P264MB02228BE3BC1C488222B4E375E15F9@PR2P264MB0222.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Gu0ZkXXUmBy4yipWtMqUhhZy1dKlTLaeFv1GGZKZlRHWmnkSmBvv0dJ90QMN+/Sn3j/q432ISnzEnBVfYk2VJ/uDo9ufnfv/djI+DjYDnePAQ+7AYjz8tX7DWK3hDBANWl8RNwMhIkziIkLNPI0YOA2YLLt79zN5x8ERkPflu0mmqb2v+6oErJfRWxZyWpwbj+8A2xX6YxVrKeBFBd3jti4mdbAbk5jRCmgU/kc2oDjqS0za+Tub8ZD4S6y7LZpxZ8pgJrE5+PQhBaKSwnHv+6zN6yobN4v5C26ddXgnj1rhnvrAr28VZ4Z4IukBbsxnRDanRHzk5Vq+G5zsvhlQ2Gpo7seQSdtXCNl5Jvuo5k1XD6erBbVWISjhRLPHDmw9KCUAMEJjxpMugXzh1JpbZBdlm07Ax0HwKyDrMIssueCOQiKGegLDccgi/xjHTiwX5uZ0fYOuwhlvcW0CgzaQv+w6Wt1Q25eXbhe/SaEqxdWLPw2aZaeBGbfkjNeMQL6nMVJ62AjXUXR0AcDaHX3GyqFrkQdwTH/Dj/kaWrS9aItQvhf8KRkw3+zPLNNNpeXJUKNje14e+ufQUvmcyBC7sPc4AM2eaTFxrUn1zRHFaCo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(376002)(366004)(346002)(136003)(4744005)(478600001)(186003)(7696005)(6506007)(86362001)(55016002)(5660300002)(9686003)(2906002)(33656002)(316002)(52536014)(38100700002)(71200400001)(76116006)(66556008)(64756008)(66946007)(6916009)(8676002)(8936002)(26005)(66476007)(66446008)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?NFliTHNHNUk5NXBWUmlweGp6K05DQTlZb3czd2FMZGlXdmxRUllpUjVRK1JD?=
 =?utf-8?B?ODlCQmJLNzBaQ2JqNWJITnpTVTArRUxnTEUrbTN0c1pTQnE2UXgvS0xFWDRh?=
 =?utf-8?B?aDlrUmxhUEg3RkNzRU0rMDh6eUNQM015L3dHVHhkaDluL2hBZEx1SG1BZmRK?=
 =?utf-8?B?NUZPVUdEaUNuV0tlT3VzUThPUFRkODloTWg1TTVIVWNXaUZmVlMrb0pWdGhh?=
 =?utf-8?B?eHNsd0xMY2hCZUx0ZWxpa1RkWEZmMjcrQ2RIZ2t3dkdYRUExVW9NUXhJUkhC?=
 =?utf-8?B?NTdBSjc1M3ZUYUtUdENFNkNXWXhRTUMrOC96NE5BOE85SDVtMUh3LzRyS1NU?=
 =?utf-8?B?cllwZzZLRzhtRXpLY29WKzI1NFIxMEEvaEZXL3puaTdCUmV6NjZJL1l0dVlZ?=
 =?utf-8?B?VWdhRkt0YjkyNFQ5UDFLdTZrbkJRNk13eUZvWmdnS1ZEUHdsamlncDBDY2g0?=
 =?utf-8?B?aFRSdjM2dUI3QiszVEJ3enc1U2xxN0ZzVmhIL2ErREJwTGZSVC80SVl6UklN?=
 =?utf-8?B?RGtScm0vRlBPSWZBdTBVN2lXLy8zQkZuZzN3K090ZnFyWlhINjlrVWRQY2or?=
 =?utf-8?B?R2cxZ2pEUFJ2VXNsa2NOdWpwNHdzQ091VEVWb0JLTDhJSEt2SWFObXkzREVl?=
 =?utf-8?B?cTBhRHpZSEx4L2IrTmc3dHJpdjJ2azVrZ3NJQlM4L1R4Y25HUE55SDEzbmtH?=
 =?utf-8?B?NHJOSFIweGppR0J3TTdhT1FyT3NrNzloMmw0N0dwNzB6aEltSFFaMWpGQWlT?=
 =?utf-8?B?bTZLNFA3ckc1TWJuWk14V1pSeXhlY1pXOEx6K01aaVpVa3c0MVljVGpzWnk2?=
 =?utf-8?B?blo5RjF2ZkRJVDNYVFU1NVdPZFM3MkVEZklFYUcrRnRJL1ZCTjF3Zzl6OTBP?=
 =?utf-8?B?WDVoU1ZxcmN5K3l0TzZ6UDZ2dWRRWVRjbDVKVVJtQmFUVWVTcitJYUYyd0or?=
 =?utf-8?B?K0YrTzMrTDRFRDhxbTBJVkFkV0FudHNxNG5RZFBoOTNxdUd6VkdtMnRFbitM?=
 =?utf-8?B?Y0xyaXQxWVJtQVR0aG5WY1BPU0hhU0ZZcTB3MDE4WkJsajBPSEt3eDladXBN?=
 =?utf-8?B?d2JnTWlZMyt6VTRxNXg5b2tydnRlNkVkZHU1UTFEN1g5VlI4ZHkxalR5M0NR?=
 =?utf-8?B?c3dHbWJYQUxPWEptOS9hRGxnWjNVejBhUWRNQnBnZjM1STNHRk9YQTZwd2sr?=
 =?utf-8?B?WWUraldDMWJZajdNNXdFQXVLVXlaRTNDZ0cwcXRpRlkrQnU0RmZveWE0dDNU?=
 =?utf-8?B?ZkpyY3BvQUhxd2pUUEtES1d2RVpEZTBoRG0zTjc5dHdtOEJnOUlSemNodVZ2?=
 =?utf-8?B?a1BkT0JHUXlpYUVOSmk4WmF3dW1DNTlJbm8wZ2dONTVTR2FKSitkUVZJa1BV?=
 =?utf-8?B?aVpRTGJZSUJSTTNRa1BSMHlFYWpsb2dmbVBXb2x3S2h4ZGsyNHd4WEZEb3lj?=
 =?utf-8?B?a0NmSlpGTDV0UjNuRyszT2cyNU1IT1hKWStQSk4zUE5Ed2s4QUtnZmdHQU5j?=
 =?utf-8?B?NDFsRURkVlltY2UrV0RmVy9wdkZsWWx0WWRVTmZkUWg2L0VvZVNjU1NxU2lK?=
 =?utf-8?B?dHVwUjMvaWFSWkV3TGI1aTNrVWtuREp6QVZwOE10MnJsQTdrdnRRMXI5OUY5?=
 =?utf-8?B?UmhEMVlDdlBHaTZvZTZibGtQejEySHg3V0NPUEVXbFRSYllhZlh1OHd2N0Q1?=
 =?utf-8?B?Sk5sdVVUN3U1aCtsbVhacmdSQWNRRWJsZ09qS2QzaVVaRW5pUnhDTVNjWHpP?=
 =?utf-8?Q?gz6K8DuMv/G8EOFFQKxmeV57IGc6zuXWhPH8u+x?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4154608a-1137-4f82-bac5-08d90b376b2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2021 17:51:29.7538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 54MNK2AueBR/PFiduUlu9Q8Q/lD2O1fIabA8/DGkdfhmdEsZZ2u+EBn0RwJYHCYAox5MqrcQ9y/WhXXg97T/X2gVvprrzXPq0PjyxLH8NOl+cWk3TKU9n/938jq0GZQQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2P264MB0222
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.4.29.174215, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.3.23.5820000
X-Sophos-SenderHistory: ip=104.47.25.100,fs=150287,da=68433221,mc=3873,sc=3,hc=3870,sp=0,fso=67338964,re=61,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_LESS 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_600_699 0, BODY_SIZE_7000_LESS 0, CTE_BASE64 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_2D 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_99_L 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0,
 __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpGcm9tIGFsbCB2YXJpYWJsZXMgd2hpY2ggcXVhbGlmeSB0byBiZSBzZXQvbW9kaWZpZWQg
aW4gY29uZi9sb2NhbC5jb25mLCBhbW9uZyBvdGhlcnMgdGhvc2UgZG9jdW1lbnRlZA0KaW4gY29u
Zi9sb2NhbC5jb25mIHRlbXBsYXRlLCBhcmUgYW55IHRvIGJlIHNldCAvbW9kaWZpZWQgb25seSBp
biBjb25mL2xvY2FsLmNvbmY/DQoNClRoZXJlIGlzIG9uZSBZUCBkb2N1bWVudCAobWF5YmUgUmVm
ZXJlbmNlIE1hbnVhbCwgbWF5YmUgc29tZSBvdGhlcikgd2l0aCBvbmUgY2hhcHRlciANCmxpc3Rp
bmcgdmFyaWFibGVzIGZvciBjb25mL2xvY2FsLmNvbmYuIEZvciBtZSBpdCdzIGhvd2V2ZXIgdW5j
bGVhciBpZiB0aGF0IGxpc3QgYWRkcmVzc2VzIHF1ZXN0aW9uIGFza2VkIGhlcmUgdG9vLg0KTWUg
d2FzIG5vdCBsdWNreSB0byBoYWQgZ290IGFuc3dlciBvdmVyIHRoZXJlLg0KDQpSZWdhcmRzDQpr
LmQuDQo=
