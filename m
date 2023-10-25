Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F768C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 03:14:05 +0000 (UTC)
Received: from mx0a-00622301.pphosted.com (mx0a-00622301.pphosted.com [205.220.163.205])
 by mx.groups.io with SMTP id smtpd.web11.36220.1698203641473523397
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 20:14:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ambarella.com header.s=com20210415pp header.b=Zi3JSLlg;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ambarella.com header.s=selector1 header.b=qtkGNJ7w;
 spf=pass (domain: ambarella.com, ip: 205.220.163.205, mailfrom: mwen@ambarella.com)
Received: from pps.filterd (m0241924.ppops.net [127.0.0.1])
	by mx0a-00622301.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39P1FUR6027456;
	Tue, 24 Oct 2023 20:14:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-transfer-encoding:mime-version:content-type; s=
	com20210415pp; bh=GfLwBH+inww/nlBCFTEh9TgoWfUHgTUeRO0h76uGGQ8=; b=
	Zi3JSLlg+B7WwEKeZ7hCtJ/qTe96QXVyOzF92nOWc7/DmBEjRTgHFle6PYLFv67a
	1lTGMg7ivSGzC06etHidm7Sxi6isjYBA5SPJMNvdHPoQ67l3sCnyFs8htGnjDFk1
	4VXf7nH/QP59vf2NPM2Y43LJ4i2PX7/1bXZPN5EzT4QnSTbgCAzmVgCaaQlnkU/N
	dLjLJKatHUadtbZhmMw8SkvJ1c73hQv5roXXZGQcJdXJR4dUSVxHBiZn5c3Be86K
	hET5zCDfajDN7+4PMF1BBpxMmHdaaYDcDcAuvi2kze/JaNK9z8H9CHmES3LuqToM
	kSvUSuiCJTeNRCt6bsGpqw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-00622301.pphosted.com (PPS) with ESMTPS id 3tvbmahwmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 20:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlYWg9y65zPaDahvibNKQNfEMznaZkbsyQbt/QaF9/qXpwK8B5HOAVzpSl5STRehKx5bNnta1KhOR13IP6P1IVQ0/VAIaO8OcZBKuQ3dcGpE+v5BF4ockDC+aFhUAJTrX+2cXJpq7upxa01QSUIXHrDL23rGd0LuSl6ym3oH+BK7R7wwCkD0kK9vZqUw4dHIncMTWjchDMycKyoKNTqbQWKT48WEFTwn9V6UtosimCH0UcI5KfZOfXrq/j1mE0SNoEkP/cui3M0vYzfZzTVcc9tpFYlThqCkC/rBO12KX4AqjtsMxKregCkcf3XTfJ2KIO2IusiHxyHpnp6ArOKwxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ufb3y8FnOExqArqOwOE1XTMZ6yv5FqlPilqTDM5c1Vg=;
 b=icpmdC5O5PDSci6va2EoljeMzc4qJt2L9BO/rn9DFmPhtYy7qcKsmkP28wgR5vjZ2LWzDzm0T7pXF6SO8fojQUVQGacrA/gKCvkTECRfL/E8dIqCQCGWVMKoAuYIJuDac1VbcCBhS+zfF6XLyx4ruSBhg+WWBRDXpnf+WwR3YzN5NFC+XrF11zwLBcSjDRtia5ntUyr3hk0H9mmFwxWB65fmHMC19H8IBKoMzt/Pfiu31nIkqG7+5ZvF82R8PszlkzA41dLTeyRxibuLx3FTwC2VKVue0SraLvc4N2AJV3uqwY0YJM6a/1/raT45vdiiFaxPMXRZ3sBE/3U6IO0LgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ambarella.com; dmarc=pass action=none
 header.from=ambarella.com; dkim=pass header.d=ambarella.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ufb3y8FnOExqArqOwOE1XTMZ6yv5FqlPilqTDM5c1Vg=;
 b=qtkGNJ7wLzELOLXSDGv5HhpykvaEteEa5qeGPWqT8mjl+Aq/+oM4h82U4lfISZt+DAwt0j2KoC+kpm9mSi1eANtBRJESLapOT3tWtSqFZbRjkgTpPreIwN/7HyQnCov+OyGaDDS55V5EgH01OX9X7AF2/uZnZnd25mXjMS6xGEtuaFZ5LooHUOGcR9+I+m3906whxU+IM/ONQ2CZfO/1cHIuKvK+lxKj3DWwh41u640srZUTkSsZ9+tfRHc/3d45uYvCUEafcsPHLNfJNUAi2koKxVUGRJTfG8arOD4XlHnpGxOFLOJaaL++jVMEpeuZo1H0Sy2xh7GWf7XQO0ZofQ==
Received: from MN2PR19MB3440.namprd19.prod.outlook.com (2603:10b6:208:18c::18)
 by PH7PR19MB5872.namprd19.prod.outlook.com (2603:10b6:510:1d8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 03:13:55 +0000
Received: from MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b88f:1029:de3b:5077]) by MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b88f:1029:de3b:5077%4]) with mapi id 15.20.6907.028; Wed, 25 Oct 2023
 03:13:54 +0000
From: Ming Wen <mwen@ambarella.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [EXT] Re: [yocto] [Poky - Kirstone] About supporting kernel 6.1.
Thread-Topic: [EXT] Re: [yocto] [Poky - Kirstone] About supporting kernel 6.1.
Thread-Index: AQHaBaV5Yni0qzpaK0aVaZFRidMbuLBZ1w9A
Date: Wed, 25 Oct 2023 03:13:54 +0000
Message-ID: 
 <MN2PR19MB3440DB9021E97DC323263032DDDEA@MN2PR19MB3440.namprd19.prod.outlook.com>
References: <gtg1.1698056244656196435.xrq2@lists.yoctoproject.org>
 <CANNYZj__qiSb=BKZbW5ZNEXN65tJTG8S7jcEEza7uN6+xAirhQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj__qiSb=BKZbW5ZNEXN65tJTG8S7jcEEza7uN6+xAirhQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR19MB3440:EE_|PH7PR19MB5872:EE_
x-ms-office365-filtering-correlation-id: 9ade8561-f3c7-466d-c890-08dbd5086b96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lrvMYJjnhMM1dyeKHjp8IOrpmpF+LuSbU9lPh0lPolJhmqQeL6+tn70uH+ksxkLugKtVjmF/pf/GAgbxRonu2pg4xKrZBf994dH1Vlch6n5yl6q3vx0CRerEKPF3qd/gLp8UZlk02ImjJJG1r6nUqCykyc84uDGhzhob5z7BTzJbAUN3zNec8ixiaatKQ7nyoeS+Qe3SOdr528lpxcuSxs/DG4B7Uykb9kzi7w92WI6FTqZ/k6wFhyDTYGtEN4hUdm7/U5YI+jAmn769bgv7DbqyT+yXqdCYnMKJDf8l/UqDyh6Bnw2Dpv6M7BPNOTPzi+ZYrFkA3QxWHK295MBMn5NY7El6/XsZHxronNueBcGeW4a7vRYFHXcU35X5rTqGaYVmqbvaCYgtwQ4zxDXtlusF1KS7jH3W3lmwV41MropqT3Z27SNOJZI1Oix0v2RY5VSdsowdrTKWfoyct6OAS0KzCWic8Ky0ygDhuX0Wz81WOkFYA9URMYlaAVG+eC2+oCst559PQ6Kl3Rq698C0Gn5SPojG8F+hm6UmdWbbAkzYwMlsRZjBbxs/2SHGyDNVtxx9s5ElMwqZXMUvqEqozvybNtAgsAeGXtJ271CnC4I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR19MB3440.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39850400004)(366004)(396003)(346002)(376002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(316002)(55016003)(71200400001)(9686003)(26005)(7696005)(6506007)(83380400001)(2906002)(53546011)(5660300002)(4326008)(8676002)(52536014)(8936002)(41300700001)(966005)(478600001)(64756008)(6916009)(66556008)(66476007)(66946007)(122000001)(76116006)(86362001)(38100700002)(66446008)(38070700009)(33656002)(66899024);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?K2NBZDNjT3dVUGZtNjlsWkUzMVdJV21SellMT2VOY1dFUTZueVRKT0tEd3or?=
 =?utf-8?B?K0pHMENsdDJuL3pKa0FrQVJlYm5xZWRGNU81dkZSbFpuQWYzdEZDVTMrUnV3?=
 =?utf-8?B?UVUyZGthZXZ6VmM5QmJYd3BtUVBlOS9JeDJpOTdjbU9Gek1ybFZQTlpMRGxE?=
 =?utf-8?B?MEprajNYY1RKY3FCTkNOVktISHNsWWxTNmZJbFM3Zi9EMFBWaUdhdFlLL2hj?=
 =?utf-8?B?U0xiWHRVSUtIZFl5RzVXelJWdGdwVTVRVTJ6RGhJT3BlU1ViWWFid2tzYWNo?=
 =?utf-8?B?aG8zYkwxenRiRCs0YXYxQTIvNm5oS3lFM1Zmayt2NWdHOGlYSjN2YVNad1I2?=
 =?utf-8?B?bmpMcTJhVWVlWVFWTHdLRnczcUdIemYxcktZcS9maUl3cE02ejY2VnpMNVV6?=
 =?utf-8?B?WmFCRmlPOTJyenlhUGYvZ2VnQ3pENzNnT3IwdmYvVVFaNVUxOXU1c2ZuWWhQ?=
 =?utf-8?B?MDd1U2FBcEVjN3RBUWV0SmRIUW8rY1YwYTVXcFZsbVJzWHl2VEUzRlhlR2lv?=
 =?utf-8?B?UGNvUTg0c1ROU0RxdkJ0bExRWVJESVhjT3Y0K2h1eGNDRzVlM3ZPQ04rMzcx?=
 =?utf-8?B?OEJWOFh1UjlqQldlQytGWTZLWjhUNlkzRlZnY3ZiK1l2K0ZmcXkzZXpLMWds?=
 =?utf-8?B?NzIwd2JXTUFUejhicXh0b0tIdWlQRnBrRzRuejBsajF0VDRaOVhiNkRNZm0r?=
 =?utf-8?B?eWhUaHR3bUtYdWQrRzh4ajlnL3lCTmxNTGcvM1hacWFMcFpmUVBnUlZ6VFB3?=
 =?utf-8?B?cnV4dWxVK0lzNit3T29JMEkwQUplS0djcGx0L2N5eUZzN2ZYOWIrSzJTb2dY?=
 =?utf-8?B?NnozZmY4L2JZUjJaWDdqcnZPeVptYmlnNlVJTWR0WDVLZHBQUmhTamZEck1C?=
 =?utf-8?B?MVVlOGgxV2JIeU9xUUdYcXB5MHBDSGhtQ0h1djBxaHBpOTg2N1lRemQwbS83?=
 =?utf-8?B?NTE4YzJMYnZFaDlZOHpXMjllQmdudkQxaHJ4c3k3b3ZZOWVTVkk5Wk5LZDVD?=
 =?utf-8?B?RDc5b1I4ODdyU0plMWhGa1lCeWErRFUxRXIzRUJ3d085eXBYZWQvSzFyd2t0?=
 =?utf-8?B?Smw4OVgwZzByY2FPR2Z4RXhZM2JLQ05WcnFrYzViaVVRMXFhekVOQ0FaTnYv?=
 =?utf-8?B?UExXUnF5VCtJZ3hqVkJXN3V2TUFEc0ZEZzY1Z2w5dVlMa3JWWjZOSzZhRmI5?=
 =?utf-8?B?b3ZIZFMrZXovRTE0UU9ERTJvNVYvaWZxKzBaajk0VUpkcllSS2V3WmdjZU5p?=
 =?utf-8?B?dlYyTVBIcFltWEg4Y096SWlZb2hvbkRZcDdCYk1zS0R1RzBCaXh0S3J0b3Ro?=
 =?utf-8?B?VCtKTFJJZnlvQ240Z2lFRzlwQ1BDWm8vek41NW9Udk51bldHWTRHb0x0VkJw?=
 =?utf-8?B?WiszWlk0dWFHNE9xUU1IQUpnamozWUI0OWhJQy9LQ1FBT0E2eUVTRlBGVFpt?=
 =?utf-8?B?UWFXem9VN05McEFDV1V2YXZNRFNNRG9RUDdtMjlsb21iR2tpUVRDcTJVdmhn?=
 =?utf-8?B?c0tUSzVaUDVRLzlXUkxtdGJuNEhBRnlzbUVrd2tlNVRibmdsZVdkcjJFNXRT?=
 =?utf-8?B?YWlUSXBqckZVRzhYZlFmZGZjSnJVQXBPenNzbk1Ib2F4L1pWVkN1dC95N0No?=
 =?utf-8?B?Nm5XMjV0Q2xkWEcwdEt2b3Q0T0xzMld3czFxbTRUYTVISjZJRk1zbHJMejdB?=
 =?utf-8?B?eC91TzhHYVNNRkNIT1FkT0d0Wi9WYWhmUC9oZ1A2dEN5UlhvdklqTHg5bHJC?=
 =?utf-8?B?aWMzWWluemE2OTBINk1YeVZCbDY1OUNWai9sTmFFWWovbGlDZDRPYlljVlFL?=
 =?utf-8?B?RjZ1dXZjKzE4YkVmSFBCZ1p4aXpRMEE2Q2NHcUE3eW0rK2lPZzBvS3QvOVk5?=
 =?utf-8?B?UWdxd0F3M2RPQ0VxQ1lhTTh6TW9TTXdNZ25ibDU3Rk1yZVRsYWRPdVZRR0tM?=
 =?utf-8?B?aWN2cUxZZUZGQTZUNnNKMnBZTWZualcvWXBLd1c1S0IzK1lnaUFFVTJ3UUhl?=
 =?utf-8?B?cGJJQTV5NzEybUZOWEFFOUg3RzltQURJbHdGY1RKVUIySjNleTF0ZWFQMWNw?=
 =?utf-8?B?cGFrWloraklCYlNQMmRWQ3pyYm1oUUdBb1VhaWFNWkR2eWR3UzZtdXF3WkZM?=
 =?utf-8?Q?LQ1S+6Y0hTGUdFLznAR4SpuXf?=
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ambarella.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB3440.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ade8561-f3c7-466d-c890-08dbd5086b96
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 03:13:54.4073
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ccd3c8d-5f7c-4eb4-ae6f-32d8c106402c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UKng5UXrBpI0j18u7JGbNz2vtcb4iPbzoUiLxB4FgFb/aetYHQ6sGCoi6D0vUGU0BZQAKgkA2IyuZ4xQfGTLIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR19MB5872
X-Proofpoint-GUID: GJ0WuKoMpTjT__SVpCZ_OGL_mYNswgAO
X-Proofpoint-ORIG-GUID: GJ0WuKoMpTjT__SVpCZ_OGL_mYNswgAO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 mlxscore=0 clxscore=1011 phishscore=0 mlxlogscore=857 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2310170000 definitions=main-2310250026
Content-Type: text/plain; charset="utf-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 03:14:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61474

SGkgQWxleDoNCsKgDQpHb3QgaXQuIFRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4NCkhhdmUgYSBu
aWNlIGRheX5+DQrCoA0KQmVzdCBSZWdhcmRzIQ0KTWluZyBXZW4gKOmXu+aYjikNClNESyBUZWFt
IHwgQW1iYXJlbGxhIFNoYW5naGFpDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZy
b206IEFsZXhhbmRlciBLYW5hdmluIDxhbGV4LmthbmF2aW5AZ21haWwuY29tPiANClNlbnQ6IE1v
bmRheSwgT2N0b2JlciAyMywgMjAyMyA3OjM4IFBNDQpUbzogTWluZyBXZW4gPG13ZW5AYW1iYXJl
bGxhLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbRVhU
XSBSZTogW3lvY3RvXSBbUG9reSAtIEtpcnN0b25lXSBBYm91dCBzdXBwb3J0aW5nIGtlcm5lbCA2
LjEuDQoNCk5vdGUgdGhhdCB0aGUgU0xUUyBzdXBwb3J0IGlzIG5vdCBjb21pbmcgZnJvbSB0aGUg
YWN0dWFsIGtlcm5lbCB1cHN0cmVhbSwgYnV0IGZyb20gYSBzZXBhcmF0ZSBwcm9qZWN0IGNhbGxl
ZCAnQ2l2aWwgSW5mcmFzdHJ1Y3R1cmUNClBsYXRmb3JtJzoNCg0KaHR0cHM6Ly91cmxkZWZlbnNl
LmNvbS92My9fX2h0dHBzOi8vd3d3LmxpbnV4Zm91bmRhdGlvbi5vcmcvcHJlc3MvY2l2aWwtaW5m
cmFzdHJ1Y3R1cmUtcGxhdGZvcm0tZXhwYW5kcy1zbHQtc3RhYmxlLWtlcm5lbC1wcm9ncmFtX187
ISFQZUV5N25aTFZ2MCFsMkE3VXNrR0EtREFpdVNIcktjY001dUpKVXlaTFNQZnRHTUpSRFVfdVlI
NjFELVFqYkQwLXJPN3pENFRTVmdTTGVEV3k2cTRzUmM3ZF95SlJkRmYkIA0KDQpJIHRoaW5rIHRo
ZSByaWdodCBwbGFjZSBmb3IgdGhlaXIga2VybmVscyB3b3VsZCBiZSBpbiBhIG1ldGEtY2lwLWtl
cm5lbCBsYXllciBvciBzaW1pbGFyLCB3aGljaCB5b3UgYXJlIHdlbGNvbWUgdG8gY3JlYXRlIGFu
ZCBtYWludGFpbi4NCg0KS2lya3N0b25lIGhhcyA1LjEwIGFuZCA1LjE1LCBib3RoIHdpbGwgY29u
dGludWUgdG8gcmVjZWl2ZSB1cHN0cmVhbSBzdXBwb3J0IGZvciB0aGUgZHVyYXRpb24gb2Yga2ly
a3N0b25lIHN1cHBvcnQgd2luZG93Lg0KDQpQZXJzb25hbGx5IEkgdGhpbmsgdWx0cmEtbG9uZyBz
dXBwb3J0IHdpbmRvd3MgYXJlIGJhZC4gSXQncyBhbiBpbmRpY2F0b3Igb2Ygb25lJ3MgaW5hYmls
aXR5IHRvIGRvIHNvZnR3YXJlIHVwZGF0ZXMgcHJvcGVybHksIHdoaWNoIHVzdWFsbHkgY29tZXMg
ZnJvbSBwb29yIHRlc3RpbmcgYW5kIHFhIHByYWN0aWNlcy4NCg0KQWxleA0KDQpPbiBNb24sIDIz
IE9jdCAyMDIzIGF0IDEyOjE3LCBNaW5nIFdlbiA8bXdlbkBhbWJhcmVsbGEuY29tPiB3cm90ZToN
Cj4NCj4gSGkgWU9DVE9lcnM6DQo+DQo+IEFzIHlvdSBtYXkga25vdywgYWNjb3JkaW5nIHRvIHRo
ZSByZWNlbnQgbmV3cyB1cGRhdGUgZnJvbSBMaW51eCBjb21tdW5pdHksIExpbnV4IEtlcm5lbCBW
Ni4xIHdpbGwgYmUgdGhlIFNMVFMgYmVpbmcgc3VwcG9ydGVkIGFzIExUUyB0aWxsIDIwMzMuDQo+
IEknbSB3b25kZXJpbmcgd2hhdCB5b3VyIHBsYW4gaXMgdG8gc3VwcG9ydCBLZXJuZWwgNi4xIG9u
IFBva3kgLSBLaXJzdG9uZS4NCj4NCj4gVGhhbmtzfn4NCj4gLT0tPS09LT0tPS09LT0tPS09LT0t
PS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAu
DQo+IFZpZXcvUmVwbHkgT25saW5lICgjNjE0NDcpOiANCj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNv
bS92My9fX2h0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lcw0KPiBzYWdl
LzYxNDQ3X187ISFQZUV5N25aTFZ2MCFsMkE3VXNrR0EtREFpdVNIcktjY001dUpKVXlaTFNQZnRH
TUpSRFVfdVlIDQo+IDYxRC1RamJEMC1yTzd6RDRUU1ZnU0xlRFd5NnE0c1JjN2R4UjRTb2RiJA0K
PiBNdXRlIFRoaXMgVG9waWM6IA0KPiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzEwMjEzMjA3DQo+IDQvMTY4NjQ4OV9fOyEhUGVF
eTduWkxWdjAhbDJBN1Vza0dBLURBaXVTSHJLY2NNNXVKSlV5WkxTUGZ0R01KUkRVX3VZSDYNCj4g
MUQtUWpiRDAtck83ekQ0VFNWZ1NMZURXeTZxNHNSYzdkekRxNlV0bSQNCj4gR3JvdXAgT3duZXI6
IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IA0KPiBo
dHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2cveW9jdG8vdW5zDQo+IHViX187ISFQZUV5N25aTFZ2MCFsMkE3VXNrR0EtREFpdVNIcktjY001
dUpKVXlaTFNQZnRHTUpSRFVfdVlINjFELVFqYkQNCj4gMC1yTzd6RDRUU1ZnU0xlRFd5NnE0c1Jj
N2Q2bzJtbGZqJCAgW2FsZXgua2FuYXZpbkBnbWFpbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0t
PS09LT0tDQo+DQoNCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMNClRoaXMgRVhURVJOQUwgZW1haWwgaGFzIGJlZW4g
c2Nhbm5lZCBieSBQcm9vZnBvaW50IEVtYWlsIFByb3RlY3Qgc2VydmljZS4NCgoqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqClRoaXMgZW1haWwgYW5kIGF0dGFjaG1lbnRzIGNvbnRhaW4gQW1iYXJlbGxhIFByb3ByaWV0
YXJ5IGFuZC9vciBDb25maWRlbnRpYWwgSW5mb3JtYXRpb24gYW5kIGlzIGludGVuZGVkIHNvbGVs
eSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVhbChzKSB0byB3aG9tIGl0IGlzIGFkZHJlc3Nl
ZC4gQW55IHVuYXV0aG9yaXplZCByZXZpZXcsIHVzZSwgZGlzY2xvc3VyZSwgZGlzdHJpYnV0ZSwg
Y29weSwgb3IgcHJpbnQgaXMgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQg
cmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGJ5IHJlcGx5IGVtYWlsIGFuZCBk
ZXN0cm95IGFsbCBjb3BpZXMgb2YgdGhlIG9yaWdpbmFsIG1lc3NhZ2UuIFRoYW5rIHlvdS4K

