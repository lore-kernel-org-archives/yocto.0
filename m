Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CCEEDE9B4
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:10:38 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web10.10483.1694693431686623631
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:10:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=Gy0OYu9+;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38EBkvqA028549;
	Thu, 14 Sep 2023 12:10:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:cc:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version:subject; s=
	S-DKIM-20210427; bh=x24hwA2PW17Iju2MYj0IiKoSI7JaktqtF4WkV+hUzUg=; b=
	Gy0OYu9+8AmKevy3YP8HbvcAiEfbD36UehX7yl1neKY8a5VD/nBJUc5LL39Z80oJ
	yr1HF29XXfo2wxoEepsQzqO5/ltB/gCvbZoehf4YgwtGunJZ+OCxSj818S33B+mU
	mMaEXK4Tf3qj1szmz6gnL62TRW4KkvDJyKw6874Ceu1jNrgN1B6JD4pjDe5H814A
	8SPDqbVPok3vXQa4xkP6o74KSujM8Hz9FEL78Byk7jBOKKD1+pGD1yDSLF0sLcbZ
	pVmm8q7UP0wl2oEci3CkjcOZOxKpgeMycVILa4XgiigpV0WwC0HXZhYBIA4w4o7S
	6QifLsJA6jvSNxBGUdc7gw==
Received: from eur05-db8-obe.outbound.protection.outlook.com (mail-db8eur05lp2109.outbound.protection.outlook.com [104.47.17.109])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3t2y8vffja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Sep 2023 12:10:29 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ne4DU51NcvWkIJmU1cR/VyhuXl/3+6HrRk8PQUs9m9Ioh3+M4fmGU5SFlbJushR+9gyTJnGhgyQZ/hMgCzPoi+Y6coi6nIF7O6o23cXYvuut7GIv6o5MBoIkMGs9nNLI/jya/WNFCzc7qoJPkNG5xOVtUV26q9z0PPqWYFLvTXje2kX//R8zWxrtlDNE0P/LIBRfoGCkZ7wFbpUTijoHbLb4gSxpSCyoD4cUzqEKdmPt2T2IW17XbLnhyS9cw1JgK58Oz41k2sb0T6bWNNjiNIQVd5d4s0xmo4UswIq0CesWF0+mnOO++EBq5zT1eQ2+f+DjMJFfzQ/U+prufHY7+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x24hwA2PW17Iju2MYj0IiKoSI7JaktqtF4WkV+hUzUg=;
 b=dLLHvzURS2/+ytmRG52d9aNO1qFSjU6p289QulOm6MpZwLnAOEYECq084TkcxD18ylDI4/xIZLfmgu+k7RCXIS4dkoRUEZLae3awXov1PKlAp5qFUG1LmfVNZXM8EiQCNx+OZtl/8vi4xaZZa5kq4A+fZwu19MIjOHJLND/UcAVuBWiPynRMdsebTecob8571AaK5gKP6Bv4FWBaKyBs9v4mhQz+rScWu+2/VS2x9ms0NqeP1RsNVtO4gKsjwjdlOHwrEoEVcUxCN1mKq6TZE6we/nF4TbIhVzxj5efNHPIXHMJF0WSfrmTJD3eENQZyr38KPtwLzKXOeNFLFjIbEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:4b::33) by PA4PR01MB7533.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:ba::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Thu, 14 Sep
 2023 12:10:26 +0000
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc]) by DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc%4]) with mapi id 15.20.6792.019; Thu, 14 Sep 2023
 12:10:26 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Thread-Topic: [Ext] Re: [yocto] Poky/Mickledore bitbake menuconfig does not
 work
Thread-Index: AQHZ1DYOodfcLqTr5kCXbZ8j8HLS6a/3u9CAgCKjIMk=
Date: Thu, 14 Sep 2023 12:10:26 +0000
Message-ID: 
 <DB6PR01MB373690DA20F88E3A64ECAEBBA4F7A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
References: 
 <DB6PR01MB3736481355587A417D929794A41EA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAGAf8LwKRDmacsgnsKLqofneB85CetU_h3H7s12b8gY8_y6ZwA@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LwKRDmacsgnsKLqofneB85CetU_h3H7s12b8gY8_y6ZwA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR01MB3736:EE_|PA4PR01MB7533:EE_
x-ms-office365-filtering-correlation-id: f84acb45-2558-4145-e04d-08dbb51b94a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tQvSw0rm5F4U0EczOMxosR2+LZ0awj7+TtOloFdpGlk7UWurX8jSvKlxqoVWJ70vaAvRfKyFtdoS7CpDmq5oT5bVLf+N/JFRFQgDuXX7cx4uww20bqB5lao5S50nfXi3d3ne9TveltHEcJOlMozkBVVcl5qFupLcocaw2X6Co/xyD9I9O7VOjw5mX6pi/jFpZfqNHKE/RYqY6Mavlw+FicmquyHXPc7OaDYPGhxMtsQJ6ycyPhXwmUmaKAIADwh13sYI0LK+pUmJqWsKqh/BGWAgoAjcJQFGRybLo9SsUo1pQZ+tG9vt9XpAIN0l1ZwD9GguiNVDijupToARc6dAi/kKjeyBY8Q1GAvUlyAL4h3ajBjhtWWTCZG/N6+T0BE8ViEzbZqPUXx9z6BAf7/BKCgUe7kPpn+xiTco9TwTRBoe8VUz/Lk/dWSIQpLZmQFdqxqRJG81bVFAAuyO2V+XTDzVSiCsMxBUY6YSuNovn7oI7tFVqlGXnUP7ZyrKYZEGUHnWbwpMBJNg+aUVdRLn2J2vSG4Xg3gvYZN5TKaFqb983lAHFx3iEJL+DbpHu42ZzzBLrhHdaQdqQsO+zplIzrrWJdthziFAeDLWqG7vyKg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR01MB3736.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(186009)(1800799009)(451199024)(26005)(4326008)(8936002)(52536014)(8676002)(71200400001)(38100700002)(38070700005)(53546011)(83380400001)(478600001)(5660300002)(91956017)(66476007)(66556008)(66946007)(6916009)(76116006)(64756008)(6506007)(41300700001)(7696005)(122000001)(966005)(9686003)(316002)(66446008)(66574015)(2906002)(66899024)(33656002)(86362001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TjRoZGFNbStHaUVuK2ZWOFRLNTlWV2dGd29SbkYzQjNKRU8zdmlITytGQkNn?=
 =?utf-8?B?OGgzeUNBSTk1WTRERWNMR3JkcENoUWp3Tjd5cnh1enpuajk5YmdobWx2VkZM?=
 =?utf-8?B?b3FJWGdUWm96OUtSNytRb1pTWUVycjd2OWZ4dkFoU3prYW5zWERTUGxETThC?=
 =?utf-8?B?SDV1K0p0T3lDMjlrclNhZXUxaUt0eDA4YlcwN0syYTdrb3l5QURCZnpFK0Ri?=
 =?utf-8?B?OTVrM1BMY2hWdTB1NmhEbHVpZnRwTG5ESHNaUGwxK2V5Z3pHK1lxS3Mwa2Za?=
 =?utf-8?B?akg4OHR1cFpQWitMejZCMjMvSjJ0T2ZOaGZ2QU9lNTg3d3hkUUlaNXpybEM2?=
 =?utf-8?B?SWRtUVM2RzMwTDlZOXBxMEEzNzFJWUxtMGwyeSs5dWRKbngzb3hFK3FqcHM1?=
 =?utf-8?B?VDZJQ2VDZjVDTHRvNjhTTmdGeDRtQ2ZZODlhVkJkdXY2V20wUmo2YVVQR2Y4?=
 =?utf-8?B?MGl5M1N1MGRwaVJZaFU2c1JMWWpUMG9HbldQeEl0M09kbFhxbVpsbVg5ZVpL?=
 =?utf-8?B?dGtWWFBPQTl2bWtNNG1wMWpPNWkzcmk3M0gwa25pN1hza1RZYWU5ZW9WMm5C?=
 =?utf-8?B?anYwYjNJYk14aklORlpQdWRXdGJxQitCY1ZkZmhDY3hHejB1aE9sTURGN3gx?=
 =?utf-8?B?b2NCQlVpMHpFSGZLRkFBek5ETmpEN0hVclRhZVY5c3RvemNtYk85QmZtQkll?=
 =?utf-8?B?a3U4a2swNmtEMEdFWEJPZU0zdzlSdnlZaGhFbi9TQ1VZRnR0dVZsU1ozaWlk?=
 =?utf-8?B?YXhNRzFORE9sL1I5eVRiaGFlVm5nd3BnNjU3dUQ1ejhoNlJTZEliMDJ0ZHVG?=
 =?utf-8?B?bE8xeG01RzdneXVyVXk0cUpGcCtxZjZtdXlmSVNFY1lLRWFtc1lTL3BXRVYy?=
 =?utf-8?B?M2wwNUd3YVEvQm1KOHZXdlpneW12NGdMSTVwQWlMQUxZNGxwdDFZMlRXY1dh?=
 =?utf-8?B?ODVGUmFSSzVFTlhINkZxbWRuMGJYSzM4SXd1b0ZXUFZaSEs0M2ZOdWRKQ2Qw?=
 =?utf-8?B?TytGQUl6OHJ5OXhMNFp4ODBhTzZQYWlaYnBlYWozN2krR3NGTndlenYwZDR3?=
 =?utf-8?B?VU5oVGNtZW5lZURwMG8vM2czVTNabUVoNjNmN3BocHE1cWJ4MHV5OEw2Ui8x?=
 =?utf-8?B?cHlhZ0RCa2V6ODJsQlA2Z2cxTVFJWVJGbXR0VEVBemRxQVZwV3ZDdy91b1BZ?=
 =?utf-8?B?T3JlNUlpaXYzQW5rVUJ2VWlFbGtRM0dpV1dWWkRoejg0UXArSjVHMmJDejRy?=
 =?utf-8?B?aHphR1ZIcWJuMkxmZXV3UTJ0NElHQmlqOS9aMGhqMnJUNHFBZVdwcFk4L0Zr?=
 =?utf-8?B?U2lqWU1hWXZINXVYZGhQaGxLaFZrbDhtNC9vR0dPb3RJc2JUUXQwdDR5WStv?=
 =?utf-8?B?YkE4TVZpQzZRWjFuTkRDanBzeWhIMWQ4dC9qN3VtVERyY1VWYjBLZTNGQ1lF?=
 =?utf-8?B?R1k2a0ltV0lTbU1sNzAxQzBrdU1xeGd2UDRxZGVRampTaDNHUEVuTGJKR3c2?=
 =?utf-8?B?ajZDMjZmSmcrUGt4ZGw2bllOUjl6aktjUCtBQVhObHRBTTVtMWhRT3MxdEJM?=
 =?utf-8?B?RU9JMW12T05SS0I4cHlDNWlPVTF6SXlSa01PWS8rQ3UwbmZrWE8vRU1zRU9N?=
 =?utf-8?B?V2lZdHhDUE5nQnliTDV4c0FJS3dBb0RtZk1VQStuZVMzZ3o0cjdqMG5oQU9x?=
 =?utf-8?B?OWNKaU9UT0kvSjBobEwyRklSLzNlQ0Q2RmptaitYVkJSMEtWQXYrL0hleHVh?=
 =?utf-8?B?NVQxS0kwVnBuRk9KbTJCWHpCYWpSQzlSQWU4MVR2NnhWZ2F0REJNbU5kR21a?=
 =?utf-8?B?R1NxQnB0amhURjdJTDR4Sm50MTFnSzB3cHl6bjY1bmUrZ09xQmNjUXk4OCtN?=
 =?utf-8?B?MUdacm9oamZPbUNodU4rcWlvZnVOemJtRkNxaHJaUjBaYXhKeEMxV0ViL1N1?=
 =?utf-8?B?cGYwNWFxeWQ5V1VFNndTbmZqVEtCUGtjaGxKaGlLRmJWclNQMy95bUM5K09K?=
 =?utf-8?B?eVJ0V3dORDJUOVpwdUs4Rk5sbFdJNTNpMTRTb0xhcXJCQ1BURUthUS9ZREZU?=
 =?utf-8?B?YUpEdXFVUGM4YUFTVjhpSkdHbnlvTHVpQ2dFZG5lQ1Q4T3pnWk5iOTVTZm5G?=
 =?utf-8?B?Rk5ZTDNibGxXV2w3WDNSUWlOWHdTWVRycmNCMmpkcENMUEs2RzRlem1RWjht?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR01MB3736.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f84acb45-2558-4145-e04d-08dbb51b94a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 12:10:26.5315
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YqdjmEVqulpy2ovOMVSBBdvAShnp9uVmj8WrQmj4YhZ3mhXofhd3PyDWMLf/3TpP2OxBCa8YS/anOHDt3rpNv0uhFsbmENsL50MRQxaZyrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB7533
X-Proofpoint-GUID: kZG5k35X267qrPoSJa_LmUfeuLG3xDAi
X-Proofpoint-ORIG-GUID: kZG5k35X267qrPoSJa_LmUfeuLG3xDAi
Subject: AW:  Re: [yocto] Poky/Mickledore bitbake menuconfig does not work
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-14_09,2023-09-14_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:10:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60995

SGkgWm9yYW4sCgpJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgYmVoYXZpb3IgZGVzY3JpYmVk
IGluIG15IG9yaWdpbmFsIHBvc3QgYnkgZW5hYmxpbmcgQ0NhY2hlLiBIZXJlIGFyZSB0aGUgcHJl
Y2lzZSBzdGVwcyB0byByZXByb2R1Y2U6CgoxLiBDaGVja291dCBQb2t5L01pY2tsZWRvcmUKMi4g
QWRkIHRoZSBmb2xsb3dpbmcgdG8gYGJ1aWxkL2NvbmYvbG9jYWwuY29uZmA6CiAgICBJTkhFUklU
ICs9ICJjY2FjaGUiCjMuIFJ1biBgYml0YmFrZSAtYyBtZW51Y29uZmlnIHZpcnR1YWwva2VybmVs
YAoKVGhlIHJlYXNvbiBmb3IgdGhlIGZhaWx1cmUgaXMgdGhhdCBkdWUgdG8gQ0NhY2hlIHRoZSBj
b21waWxlciBpcyBubyBsb25nZXIgYGdjY2AgYnV0IGBjY2FjaGUgZ2NjYCwgaS5lLiB3ZSBoYXZl
IHRoZSBmb2xsb3dpbmcgdmFyaWFibGVzIGluIHRoZSBlbnZpcm9ubWVudDoKCiAgICBDQz0iY2Nh
Y2hlIHg4Nl82NC1wb2t5LWxpbnV4LWdjYyIKICAgIEhPU1RDQz0iY2NhY2hlIGdjYyIKICAgIC4u
LgogICAgZXRjLgoKVGhpcyBpcyB3aGVuIHRoZSB3cm9uZyBxdW90aW5nIGluIHRoZSBpbnZvY2F0
aW9uIG9mIGBtZW51Y29uZmlnYCBsZWFkcyB0byBlcnJvcnMuCgpDb3VsZCB5b3UgcGxlYXNlIHZl
cmlmeS9jaGVjaz8KCkJlc3QsCkhvbGdlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVm9uOiBab3JhbiBTdG9qc2F2bGpldmljIDx6b3Jhbi5zdG9qc2F2bGpldmlj
QGdtYWlsLmNvbT4KR2VzZW5kZXQ6IE1pdHR3b2NoLCAyMy4gQXVndXN0IDIwMjMgMTM6MDgKQW46
IFNlYmVydCwgSG9sZ2VyLmV4dApDYzogWW9jdG8tbWFpbGluZy1saXN0CkJldHJlZmY6IFtFeHRd
IFJlOiBbeW9jdG9dIFBva3kvTWlja2xlZG9yZSBiaXRiYWtlIG1lbnVjb25maWcgZG9lcyBub3Qg
d29yawoKR3V0ZW4gTW9yZ2VuLCBIb2xnZXIsCgpFcyBhcmJlaXRldCBmw7xyIG1pY2guIERpZXNl
IGNvbW1hbmQ6CmJpdGJha2UgLWMgbWVudWNvbmZpZyB2aXJ0dWFsL2tlcm5lbAoKSWNoIGdsYXVi
ZSwgc2llIGhhYmVuIGV0d2FzIEZlaGxlciBpbiBpaHJlciBVbWdlYnVuZy4KX19fX19fXwoKSSBo
YXZlIGF0dGFjaGVkIG15IG91dGNvbWUgb2YgYml0YmFrZSAtYyBtZW51Y29uZmlnIHZpcnR1YWwv
a2VybmVsIGZvciBCQkI6CgpWRywKWmVlCl9fX19fX18KCk9uIE1vbiwgQXVnIDIxLCAyMDIzIGF0
IDM6NDjigK9QTSBTZWJlcnQsIEhvbGdlci5leHQKPGhvbGdlci5zZWJlcnQuZXh0QGthcmxzdG9y
ei5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBJIGFtIHVzaW5nIGEgWW9jdG8tUG9reS1NaWNrbGVk
b3JlICh2ZXJzaW9uIDQuMi4xKSBiYXNlZCBzeXN0ZW0uCj4KPiBGb3IgY29uZmlndXJpbmcgdGhl
IGtlcm5lbCwgSSB3b3VsZCBsaWtlIHRvIHVzZSB0aGUgY29tbWFuZAo+Cj4gICAgIGJpdGJha2Ug
LWMgbWVudWNvbmZpZyB2aXJ0dWFsL2tlcm5lbAo+Cj4gSWYgSSBkbyB0aGF0LCBCaXRiYWtlIG9w
ZW5zIGFuIHh0ZXJtIHdpbmRvdyBhbmQgcnVucyB0aGUgYnVpbGQgc3RlcHMKPiBmb3IgS2NvbmZp
Zy4gSG93ZXZlciwgYWZ0ZXIgdGhlIGNvbXBpbGVyIGhhcyBmaW5pc2VkLCB0aGUgeHRlcm0gd2lu
ZG93Cj4gaW1tZWRpYXRlbHkgY2xvc2VzIGFuZCBCaXRiYWtlIGV4aXN0cyBhcyBpZiBub3RoaW5n
IGhhcHBlbmVkLCBpLmUuIGl0Cj4gZG9lcyBub3Qgc2hvdyBhbnkgZXJyb3IgbWVzc2FnZSBvciBz
aW1pbGFyLgo+Cj4gSSBpbnZlc3RpZ2F0ZWQgdGhlIHByb2JsZW0gYW5kIGZvdW5kIG91dCB0aGF0
LCBpbnRlcm5hbGx5LCBCaXRiYWtlCj4gY2FsbHMgdGhlIGZvbGxvd2luZyBjb21tYW5kIGZvciBz
dGFydGluZyBLY29uZmlnOgo+Cj4gICAgIG1ha2UgbWVudWNvbmZpZyBDQz0iY2NhY2hlIHg4Nl82
NC1zeXN0ZW0tbGludXgtZ2NjIC4uLiIgXAo+ICAgICAgICAgQ0ZMQUdTPSIuLi4iIEhPU1RDQz0i
Y2NhY2hlIGdjYyIgSE9TVENDRkxBR1M9Ii4uLiIKPgo+IFRoZSBxdW90ZXMsIGhvd2V2ZXIsIHNl
ZW0gdG8gZ2V0IGxvc3Qgd2hlbiBzdGFydGluZyB0aGUgYWN0dWFsIGNvbW1hbmQKPiBpbiB0aGUg
dGVybWluYWwuIFRoaXMgbGVhZHMgdG8gYSBjb21tYW5kIGxpbmUgbGlrZSBmb2xsb3dzOgo+Cj4g
ICAgIG1ha2UgbWVudWNvbmZpZyBDQz1jY2FjaGUgeDg2XzY0LXN5c3RlbS1saW51eC1nY2MgLi4u
IFwKPiAgICAgICAgIENGTEFHUz0uLi4gSE9TVENDPSJjY2FjaGUgZ2NjIiBIT1NUQ0NGTEFHUz0i
Li4uCj4KPiB3aGljaCBpcyBjbGVhcmx5IHdyb25nLgo+Cj4gVGhlIGZvbGxvd2luZyBwYXRjaCBm
aXhlcyB0aGUgcHJvYmxlbSBpbiBtZXRhL2NsYXNzZXMtcmVjaXBlL2NtbDEuYmJjbGFzczoKPgo+
IGRpZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMtcmVjaXBlL2NtbDEuYmJjbGFzcyBiL21ldGEvY2xh
c3Nlcy1yZWNpcGUvY21sMS5iYmNsYXNzCj4gaW5kZXggYTA5YTA0MmMzZi4uZDYwMDFkNmZkMCAx
MDA2NDQKPiAtLS0gYS9tZXRhL2NsYXNzZXMtcmVjaXBlL2NtbDEuYmJjbGFzcwo+ICsrKyBiL21l
dGEvY2xhc3Nlcy1yZWNpcGUvY21sMS5iYmNsYXNzCj4gQEAgLTUzLDcgKzUzLDggQEAgcHl0aG9u
IGRvX21lbnVjb25maWcoKSB7Cj4gICAgICAjIGVuc3VyZSB0aGF0IGVudmlyb25tZW50IHZhcmlh
YmxlcyBhcmUgb3ZlcndyaXR0ZW4gd2l0aCB0aGlzIHRhc2tzICdkJyB2YWx1ZXMKPiAgICAgIGQu
YXBwZW5kVmFyKCJPRV9URVJNSU5BTF9FWFBPUlRTIiwgIiBQS0dfQ09ORklHX0RJUiBQS0dfQ09O
RklHX1BBVEggUEtHX0NPTkZJR19MSUJESVIgUEtHX0NPTkZJR19TWVNST09UX0RJUiIpCj4KPiAt
ICAgIG9lX3Rlcm1pbmFsKCJzaCAtYyBcIm1ha2UgJXM7IGlmIFsgXFwkPyAtbmUgMCBdOyB0aGVu
IGVjaG8gJ0NvbW1hbmQgZmFpbGVkLic7IHByaW50ZiAnUHJlc3MgYW55IGtleSB0byBjb250aW51
ZS4uLiAnOyByZWFkIHI7IGZpXCIiICUgZC5nZXRWYXIoJ0tDT05GSUdfQ09ORklHX0NPTU1BTkQn
KSwKPiArICAgIG1ha2VfY21kID0gIm1ha2UgJXMiICUgZC5nZXRWYXIoJ0tDT05GSUdfQ09ORklH
X0NPTU1BTkQnKS5yZXBsYWNlKCciJywgJ1xcIicpCj4gKyAgICBvZV90ZXJtaW5hbCgic2ggLWMg
XCIlczsgaWYgWyBcXCQ/IC1uZSAwIF07IHRoZW4gZWNobyAnQ29tbWFuZCBmYWlsZWQuJzsgcHJp
bnRmICdQcmVzcyBhbnkga2V5IHRvIGNvbnRpbnVlLi4uICc7IHJlYWQgcjsgZmlcIiIgJSBtYWtl
X2NtZCwKPiAgICAgICAgICAgICAgICAgIGQuZ2V0VmFyKCdQTicpICsgJyBDb25maWd1cmF0aW9u
JywgZCkKPgo+IFdoYXQgZG8geW91IHRoaW5rPyBJcyBteSBvYnNlcnZlZCBiZWhhdmlvciBhIGNv
bmZpZ3VyYXRpb24gZXJyb3Igb2YgbXkKPiBzZXR1cCBvciBkb2VzIHRoZSBwYXRjaCBhYm92ZSBp
bmRlZWQgbWFrZSBzZW5zZT8KPgo+IEJlc3QgcmVnYXJkcywKPiBIb2xnZXIKPgo+IC09LT0tPS09
LT0tPS09LT0tPS09LT0tCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRv
IHRoaXMgZ3JvdXAuCj4gVmlldy9SZXBseSBPbmxpbmUgKCM2MDg0MCk6IGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNz
YWdlLzYwODQwX187ISFMdzF1R3F2SHZ0Sl9wc0dHMkV0LTF2b1N3Ym8hYkxtY2hGLXdzMFUwSjBv
V3FlNEFIME9GX1M0OG9fNUtfMFhZeEZqTXJVc3RTYnRIR0RlUkxfT1A4UzBvR2NvRFdBdkJnMS1p
OEMwM09iUkRCTWxwci12UDNjakFvTk1OV1hkdCQKPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8v
dXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTAw
ODcyOTkxLzM2MTg2ODFfXzshIUx3MXVHcXZIdnRKX3BzR0cyRXQtMXZvU3dibyFiTG1jaEYtd3Mw
VTBKMG9XcWU0QUgwT0ZfUzQ4b181S18wWFl4RmpNclVzdFNidEhHRGVSTF9PUDhTMG9HY29EV0F2
QmcxLWk4QzAzT2JSREJNbHByLXZQM2NqQW9BSEhLRlUyJAo+IEdyb3VwIE93bmVyOiB5b2N0bytv
d25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnCj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1
Yl9fOyEhTHcxdUdxdkh2dEpfcHNHRzJFdC0xdm9Td2JvIWJMbWNoRi13czBVMEowb1dxZTRBSDBP
Rl9TNDhvXzVLXzBYWXhGak1yVXN0U2J0SEdEZVJMX09QOFMwb0djb0RXQXZCZzEtaThDMDNPYlJE
Qk1scHItdlAzY2pBb0Y5Nm1iTkIkICBbem9yYW4uc3RvanNhdmxqZXZpY0BnbWFpbC5jb21dCj4g
LT0tPS09LT0tPS09LT0tPS09LT0tPS0KPgo=

