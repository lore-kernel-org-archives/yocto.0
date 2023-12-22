Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4FC4706C
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 12:29:35 +0000 (UTC)
Received: from mx0a-00622301.pphosted.com (mx0a-00622301.pphosted.com [205.220.163.205])
 by mx.groups.io with SMTP id smtpd.web10.22206.1703248170672527602
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 04:29:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ambarella.com header.s=com20210415pp header.b=lPufvIYP;
 dkim=pass header.i=@ambarella.com header.s=selector1 header.b=SLCy7w1t;
 spf=pass (domain: ambarella.com, ip: 205.220.163.205, mailfrom: mwen@ambarella.com)
Received: from pps.filterd (m0241924.ppops.net [127.0.0.1])
	by mx0a-00622301.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BMCP28B019691;
	Fri, 22 Dec 2023 04:29:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	com20210415pp; bh=i5gcEijYun3lhTarZyEN6ZCLSofJSGf7laC30wqnK2o=; b=
	lPufvIYPxqrCYQ6mPBulG5eLDVqvqsSUAmhi73+cBBenMDsrKGq/iG1xKRgbuP5c
	22WXYR4LAvY5npXK22ML7Qk2K4dvc02bd5J3k3DaGLphCqyH5qSgMMd4tNMKDKRu
	xxMKkjI1I2AeagBTjuFek0w8wJrNxv3ApkfHYGZ49vw1k12Gg/WCe3LHeYbNZ+tf
	Ndd1cvWXmVSgFiSBpECpYT6/GDVS5r8+67zjmSBwgqIPZZTjqbbjxIH4KbLc+vtZ
	VeTyoImw2osSZEgk2Jbe60KduFC44rk1g90otPaW1G5km+y0qQ6kqHqwcrQMDOBk
	abf5k/izgqXrLG1ubeGmWw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-00622301.pphosted.com (PPS) with ESMTPS id 3v19rfkp85-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Dec 2023 04:29:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GMnUxF/EJvwUiQWw7aMWfxkRmIjkSbq5wUUSr82T8CZ1BkXOpe8IA8g+/kJcgyiphosK6bM8TcbpR2KbdoIwyni8EszBA8ykny0+xDzflkkU/HtgEjCKMNw3VL80xvfXWHVFgBnSmKh9qFH433FWOpIeic6mmVGWclzI5+X9Tm5cLAEvkLMJrjOHBNlOwJ85Mx9Pt2mKSMHbM+ieijnmteR+xXNB4+tBYrpSq3ZJqb20WuEd3ad4bIIU/awLZzAlQQeLHBXltdwnrOge4EEdCSO291iKEHQgZetyakt3hTP2j2D9q2mIVWUICHgM2mB2gIaRc+ZCA5FLbz69z1qaZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5gcEijYun3lhTarZyEN6ZCLSofJSGf7laC30wqnK2o=;
 b=Fjab9HfR4lu6AbgcKesOcns7BH30XrJlAydwMk/nlejYXS/UH7nkDlriHzsYOfgUbiJ1P2U/Fmz/+Aikyo0k4NwT+3zhQg3OnMF4sgv8XeG0GP20ThrXoQ1QQGGa/rJbbMR/ZnZXX8YlPIHhqJsxkUrU0bkjjbCGv5A99hw3M1cnq3pTejSmh4NlpHmI1VSzNFNChTLcBojRgwnZD31f4WVmn10fueSYux16Gmiu/Fl+YvccpYrB3voB08gm7BBLqNKgjQOyGKIzF6WjnavI8uPd5xFXkqz1vQQ8yYZ4rk6ocTv62iZfxsNQyrcqkaAd5ynYTZpXhMpzPcAyxTZiXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ambarella.com; dmarc=pass action=none
 header.from=ambarella.com; dkim=pass header.d=ambarella.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5gcEijYun3lhTarZyEN6ZCLSofJSGf7laC30wqnK2o=;
 b=SLCy7w1texweDtYBq3aTKKu+fPvL8bYkiOSrqC9Dp2WM6PjFE44C7rT4rafM2K6FPwU0EL1S/1dnia6REMFwMxhjBSiAduamI+BOofnfINUruE5v9D2uCThSIMXT2KrtFKH4bnbOyUclgYCekdQsjSHJ1pcuY/kRdARF0aQ63CG5Iq2kNW4ZqE7xwepfa/2Z9WI3xXK8RilUzjJASGu0nh4xkmy/QrbA6GJ6ni4dxiWHKHO8MpU7l/jaGIDjznB90tJa/Kvs+VcKkDGuvj195h9imMb3gxFAW7XQTOg/ZGDtPUdScDWr5E1kCUGslSSf1kWhvvfuNJrqtDiSkNFFNw==
Received: from MN2PR19MB3440.namprd19.prod.outlook.com (2603:10b6:208:18c::18)
 by DM4PR19MB6269.namprd19.prod.outlook.com (2603:10b6:8:a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 12:29:13 +0000
Received: from MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b5f4:acc5:587:59fd]) by MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b5f4:acc5:587:59fd%5]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 12:29:13 +0000
From: Ming Wen <mwen@ambarella.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "ross.burton@arm.com" <ross.burton@arm.com>,
        Song-Jun Han
	<sjhan@ambarella.com>, Jian Tang <jtang@ambarella.com>
Subject: RE: [EXT] Re: [yocto] do_populate_sdk_ext failed
Thread-Topic: [EXT] Re: [yocto] do_populate_sdk_ext failed
Thread-Index: 
 AQHaLnmJAax5T/WxLE+YEJyb8sSI4rColyyAgAAIeICAAAHgAIAIvQCAgAFN7oCAAHtQoIAAXz0AgAHAokA=
Date: Fri, 22 Dec 2023 12:29:13 +0000
Message-ID: 
 <MN2PR19MB344075BF867BBA5CA1F898C7DD94A@MN2PR19MB3440.namprd19.prod.outlook.com>
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com>
 <24207.1702552293492620689@lists.yoctoproject.org>
 <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com>
 <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
 <CANNYZj_apJTWSZAEASHSxGaXfs2oFQBb66gwsFpR9EesCPJ0=Q@mail.gmail.com>
 <MN2PR19MB3440B873BD88093542C6358ADD95A@MN2PR19MB3440.namprd19.prod.outlook.com>
 <CANNYZj96YwYbDh+bym5-Ud0oXV6GEwbiHepn7P+LQSuvviQjDg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj96YwYbDh+bym5-Ud0oXV6GEwbiHepn7P+LQSuvviQjDg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR19MB3440:EE_|DM4PR19MB6269:EE_
x-ms-office365-filtering-correlation-id: faea2356-2ac8-49d9-fec4-08dc02e99b2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZRnbE0uCqeeSEac5bzm6lQCqQqkHXTguapg+hSuNFR0OX5FFgGMRbd/Pkc2CquLxv2WIKDRlbf5SKfoFx1PgyEx/Mgvkw+jzycFTMZC9aBXP+7K6BSuRozBYHyRfeihxmJhjFGZfmaqjXig5X4ombiV2pmt07zN05xRuLWWlnM3rIiX3z4MEs6OwbccX9IQ8oxjdQLN//ScvpFHfm8FH5rL4kmLO3r9py8NTytAvIjC4xaKFNSaMVE75JrnqqJuNnDQsJVEo/Dy4ROdVC6d0vv+wfDxy22JyIfrBUcKe0qWLqK7/Qz64X7dJ4Znb5ydFYLzNs9VcJHvb8OWtW9zBSsSlmgqO6pIK0ng8E3fSv7FKDUKtQqmu8fIueTBnLz2DlVDaLEBT4xUoc1bTPzukhZkY7KizSK2mtnpDYV0em6osukxZLUL3A/W9C7IzYNEiu2O6clVewsUf3/9GXhCkW+8Eu9uE4KruMQSR2ssx5P+jDCWPDLxYbiwxaVQMOhacbXnwb+SnVbQ2OIYaxG2+pczz8cbrAnRNTXjceXYPZS/X8oQ1blWhzC9QoEgBznltlScvxlXtnkqjM2esuf65mGpwS3aTDIrv1ktpunGSu8+fxjoyXGpqt2FgKJp+Pjt7bqycOKusz8LxfMYd2EhzCFuHTTY/DDvMY+FdeuYiajc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR19MB3440.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(39850400004)(366004)(376002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(64100799003)(451199024)(186009)(6916009)(316002)(55016003)(107886003)(2906002)(26005)(478600001)(66446008)(83380400001)(54906003)(64756008)(66946007)(66556008)(66476007)(76116006)(9686003)(53546011)(5660300002)(8936002)(71200400001)(6506007)(7696005)(8676002)(4326008)(52536014)(122000001)(38100700002)(41300700001)(33656002)(86362001)(38070700009)(66899024);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y01HbXQ3YTdXQkl3bzVoWWNSSE55cmNUY3ZXQlh4cjNGU2xTYzVQa1JNL3Z1?=
 =?utf-8?B?N3dYR0JvQ3FFS2dReG1EMGJEa0RTRTk4S0RESzdrVHRPTE5IUVpqc0hXUkp3?=
 =?utf-8?B?M2FpUzFveHhTaGlydUtCdjdodWhIMitlL3JpZkxoeWxjSXpoR3VLU243UDBl?=
 =?utf-8?B?TlJtOGt4bllJQUtPS01DbGNzR3lYL1paNE8zTlJJWlJDY2hmcWhCdjNzVnM1?=
 =?utf-8?B?dGU5L1Q3OVVKU1lJWi9hSEwwZ2hVNWxPSmJYM3d2MkE1R2JlcG1TTHMwT2RG?=
 =?utf-8?B?Q29hU05CbUQwU0QyQyt4QkRJWlErL1VNenQ1REVYb0wrNkNFUXY2dUp0eXN3?=
 =?utf-8?B?ZU1Nc1JjVjhCU2ZMU2VIVXlaYTBpSW9wK3JkRVI0TEVZeXpOcmIwTnpjV3ht?=
 =?utf-8?B?TWxLU2tMYnBYRlFMYkNXRkxRV1pYeXBxcjA2d0YwOU5qMVlOMFppV25kRkF6?=
 =?utf-8?B?VHJ1QS9weHNVeXJuakdwaC9mWWkrbXpRb20vQjEwRXpNL2k0eEMxOERYUmxR?=
 =?utf-8?B?RGdrUVFHRDE3N0FMZ0MzUXBQc1JTSG53dTlkdVM2ZHl6TmNVMmRPZ2tjUllG?=
 =?utf-8?B?WkJYUjhpR1dsaGRtSFh5WlpNZ1NPai9tMjQycm5EcXNvaDJ2QnhFWXdVSTFo?=
 =?utf-8?B?MmV4UTQxQ0Q0V3RRL0tDZiszUmI0VXhqYUM3Q0U2RFVGdFdkRW83aG5RTVp4?=
 =?utf-8?B?d1p1d3hYaDErU2dkMDNMVHZyVURiNTN1bTF1cmhWRVZJYU1VRnJQRnhRbHlQ?=
 =?utf-8?B?Z1NlMjNsRDB4M1ZDTGRBYTdYSWZlcEo2b2xodUlQUnYweDJEN2RsZDg3QmdC?=
 =?utf-8?B?UE9tRFJONzN5RURkMm9tU0dwMTFmSkxVQWE0K0wrWjFQaWNvUzBwVlFNL3kz?=
 =?utf-8?B?aVRKeURKMTI0SWFVNDBRdVJMSFNjc0UxOERNaDh6ZHUxQ0F0RS9FNC9uRzdU?=
 =?utf-8?B?VDAycEViV29nN1BiVURwS2E1N2dzNENUWkNGc2xNbkxJWXN2Wnh3SE1qeFNx?=
 =?utf-8?B?all5OEcxM3FVWDYvTkhCdllweFpMS0JuT0swQ2xVT0R6aDRxSnZMVjlNL25v?=
 =?utf-8?B?UUo1ZlEzckZLQkZBT1hXVCt2NFBsT2ZGdW9XOHBZQnI1YWtzeEs5VGx2RzYy?=
 =?utf-8?B?T202YXBVQVBGSkhOMG5HeGthMi9JcnBMc1U2VDMzcG1RendHYk04NzY1MTll?=
 =?utf-8?B?a3B0aEp6VzgrVHp0VlZCU24rRGE5eVJLdWFqTDdvQ1pIem12cHVkVUtlR2s3?=
 =?utf-8?B?a3g0SXQxY1NJRzZCZ25LaE9wbk5VQVdaamxFM0JjZVg5UWJJWlRjTWhJaS9T?=
 =?utf-8?B?dXBub1JMdE9iWlRzWEhLL1BLVmVNQWFYRlFHV2lXWnViT3l3NkY5RzdvdFpK?=
 =?utf-8?B?UGZqVldDMG03RjNuRGVXek5nV3NSN2ttMlJ1azNQanl3RE9DdEU3Qy93MTVq?=
 =?utf-8?B?MWRjQTdrNy9aZ29LVzhyWS91bFFQZTRsVitFcU9mYW5UbUxxd05lVWJ3cEww?=
 =?utf-8?B?TENlTDdnbmt1L2puNDVKbHNkRHdaY1QzRDByaEJpbVVuV01pU0h5QVY2NS8v?=
 =?utf-8?B?Y09sWGZCaTlydTV2RldFSC9CZ3o0RFE1dmM5dU1jTDNHQ0xtcEhYL1FaY2Jm?=
 =?utf-8?B?Y2RaUENYMEdGanVnSlYyTEZDM2I4a2ljRkpwTlE5d2ZNeGo2TFp0THF4ZVVa?=
 =?utf-8?B?Y0ZFdVB3NkRxSE41WVRGQzd0cmtTN1NZN0s2RW5YY0JXbllGVUc0SmFCK09w?=
 =?utf-8?B?OFJ4Z2l1T3pKbEVrbVVqM2ZqVHhTOXFWY2V3ZnYwTDdJb0dmanlrSWd4UUlr?=
 =?utf-8?B?Um5Tb0pnOHZHMEFOelE4eXptRHA2N3RnM1c5a3ZUQXpvdzhkc1J6T2tIa3BC?=
 =?utf-8?B?ZXZSdTJmWmVJNnVqbXF5ZUxLbko0SVZRcEJ1dEhDUDBDSmFIeElJVFhJQ2pl?=
 =?utf-8?B?WnhvWDZCbU5hK3BHUXF2bFhEbmtSVzBqYmx2ekVUZUNvYzF6UVlPZWdTbnNB?=
 =?utf-8?B?bHNvVjZTUTJoR0VLS3hZcnlmSnFFYUF1QmRCSlBVbXBxM0dsMHNlOFpQcWRa?=
 =?utf-8?B?ZFdnNTE0R0NBVHRqR3A4M21rZWt5OXF1RWwwTWZqNFFhWXpaSGp5ZVFoUHls?=
 =?utf-8?Q?l46cKDdYu+duKvUJJPDZTzuiE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ambarella.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB3440.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faea2356-2ac8-49d9-fec4-08dc02e99b2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 12:29:13.3467
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ccd3c8d-5f7c-4eb4-ae6f-32d8c106402c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6+jVc4OaVqguzUizpLEW3mEB//yuIrmVxC2Ox992R4mnlN/R9psSbv3nEBPwUFbHreaudOHSgyRz6qABKZWdFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR19MB6269
X-Proofpoint-GUID: EtHaa6MZVGlnYGuyfsVq032VlWKS8xeD
X-Proofpoint-ORIG-GUID: EtHaa6MZVGlnYGuyfsVq032VlWKS8xeD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312220091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 12:29:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62023

SGkgQWxleDoNCsKgDQpUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9ucy4gWWVhaCwgd2UgY2FuIHdv
cmsgb24gdGhpcyBkaXJlY3Rpb24gYnkgdHJ5aW5nIGFnYWluIHdpdGggdGhlIGxhdGVzdCBQb2t5
IG1hc3RlciBicmFuY2guDQpXaWxsIGZpbmQgeW91ciBoZWxwIGxhdGVyIGlmIHdlIGhhdmUgbmV3
IGZpbmRpbmdzIHRoZXJlLg0KwqANCkJlc3QgUmVnYXJkcyENCk1pbmcgV2VuICjpl7vmmI4pDQpT
REsgVGVhbSB8IEFtYmFyZWxsYSBTaGFuZ2hhaQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5jb20+IA0KU2Vu
dDogVGh1cnNkYXksIERlY2VtYmVyIDIxLCAyMDIzIDU6NDIgUE0NClRvOiBNaW5nIFdlbiA8bXdl
bkBhbWJhcmVsbGEuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IHJvc3Mu
YnVydG9uQGFybS5jb207IFNvbmctSnVuIEhhbiA8c2poYW5AYW1iYXJlbGxhLmNvbT47IEppYW4g
VGFuZyA8anRhbmdAYW1iYXJlbGxhLmNvbT4NClN1YmplY3Q6IFJlOiBbRVhUXSBSZTogW3lvY3Rv
XSBkb19wb3B1bGF0ZV9zZGtfZXh0IGZhaWxlZA0KDQpIZWxsbyBNaW5nLA0KDQpJJ20gaGFwcHkg
dG8gaGVhciB0aGF0IHlvdSdyZSBvdmVyYWxsIHNhdGlzZmllZCB3aXRoIHRoZSBwcm9qZWN0LCBi
dXQgSSBuZWVkIHRvIGNsYXJpZnkgdGhlICd0ZXJtcyBhbmQgY29uZGl0aW9ucycgb2Ygb3BlbiBz
b3VyY2UgZnVydGhlcjoNCm5vdCBvbmx5IG5vIG9uZSBvd2VzIHlvdSBhIGZpeCwgbm8gb25lIG93
ZXMgeW91IGFuIGludmVzdGlnYXRpb24gb2YgYSBwb3NzaWJsZSBpc3N1ZSBlaXRoZXIsIGVzcGVj
aWFsbHkgaWYgdGhlIGlzc3VlIGxvb2tzIGRpZmZpY3VsdCBvciB0aW1lLWNvbnN1bWluZyB0byBy
ZXBsaWNhdGUgKGFuZCBpbiB0aGlzIGNhc2UgaXQgaXMpLiBTbyBpdCdzIG5vdCBsaWtlbHkgdGhl
cmUgd2lsbCBiZSBhIGRlZmluaXRpdmUgYW5zd2VyIHRvIHRoZSBxdWVzdGlvbiBvZiB3aGV0aGVy
IGl0J3MgYmVlbiBmaXhlZCAob3IgZXZlbiB3aGV0aGVyIGl0J3MgYSByZWFsIGlzc3VlIGluIHBv
a3ksIG9yIHNpbXBseSBzb21ldGhpbmcgc3BlY2lmaWMgdG8geW91ciBjb25maWd1cmF0aW9uKS4N
Cg0KT24gdGhlIG90aGVyIGhhbmQsIFlvY3RvIGlzIG9wZW4gc291cmNlLiBBbGwgZGV2ZWxvcG1l
bnQgaGFwcGVucyBpbiB0aGUgb3BlbiwgYW5kIG9idGFpbmluZyB0aGUgbGF0ZXN0IHNvdXJjZSB0
cmVlIGlzIGEgc2luZ2xlICdnaXQgY2xvbmUnDQpjb21tYW5kLiBZb3UncmUgd2VsY29tZSB0byBq
b2luIHRoZSBvbmdvaW5nIGRldmVsb3BtZW50IHJhdGhlciB0aGFuIGp1c3QgdXNlIHRoZSByZWxl
YXNlIGRlbGl2ZXJpZXMsIGFuZCBvYnRhaW4gdGhlIGFuc3dlcnMgdGhhdCB3YXkuDQoNCldoYXQg
SSdtIHNwZWNpZmljYWxseSBzdWdnZXN0aW5nIGlzOiBnZXQgdGhlIGxhdGVzdCBwb2t5IG1hc3Rl
ciByZXZpc2lvbiwgc2V0IHVwIGEgbWluaW1hbCBjb25maWd1cmF0aW9uIHdoZXJlIHRoZSBpc3N1
ZSBjYW4gYmUgb2JzZXJ2ZWQsIGFuZCB0aGVuIHNlZSBpZiB5b3UsIHRoZSB0ZWFtIG1vc3QgYWZm
ZWN0ZWQgYnkgaXQsIGNhbiBmaXJzdCBmaW5kIG91dCB3aGVyZSB0aGluZ3MgZ28gd3JvbmcsIGFu
ZCBzZWNvbmQgaG93IHRoZXkgY291bGQgYmUgZml4ZWQuIEl0IG1heSBhbHNvIHdlbGwgYmUgdGhh
dCB0aGUgaXNzdWUgaXMgaW5kZWVkIGZpeGVkIGluIGxhdGVzdCBtYXN0ZXIuIFRoZSBjb21tdW5p
dHkgY2FuIGFzc2lzdCBpbiB0aGF0IGludmVzdGlnYXRpb24gaWYgeW91IHJ1biBpbnRvIHByb2Js
ZW1zIG9yIGFyZSB1bnN1cmUgaG93IHRvIHByb2NlZWQsIGJ1dCBkb2luZyB0aGUgaW52ZXN0aWdh
dGlvbiBpcyBvbiB5b3UuDQoNCk9uY2UgeW91IGVzdGFibGlzaCB0aG9zZSBmYWN0cywgd2UgY2Fu
IGhlbHAgdG93YXJkcyBtYWtpbmcgZml4ZXMgYW5kIGJhY2twb3J0aW5nIHRoZW0gdG8gTFRTLg0K
DQpBbGV4DQoNCk9uIFRodSwgMjEgRGVjIDIwMjMgYXQgMDU6MTUsIE1pbmcgV2VuIDxtd2VuQGFt
YmFyZWxsYS5jb20+IHdyb3RlOg0KPg0KPiBIaSBBbGV4Og0KPg0KPiBOaWNlIHRvIG1lZXQgeW91
IGFuZCB0aGFua3MgZm9yIHRoZSBjb21tZW50cy4gRnVsbHkgdW5kZXJzdGFuZCENCj4NCj4gV2Un
cmUgbm90IHRyeWluZyB0byBwdXNoIHlvdSBmb3IgdGhlIGZpeChkZWZpbml0ZWx5IG5vdCkuIElu
c3RlYWQsIHdlIGFsd2F5cyBhcHByZWNpYXRlIHlvdXIgZWZmb3J0cyBvbiBicmluZ2luZyBZb2N0
byB0byB1cy4gUmVhbGx5IHNvIG1hbnkgUiZEcyBsb3ZlIGl0LiBJdCBpcyBldmVuIG11Y2ggbW9y
ZSB0aGFuIG91ciBleHBlY3RhdGlvbiB3aGVuIHdlIHRyaWVkIHRvIHdlbGNvbWUgWW9jdG8gdG8g
b3VyIFNESyB5ZWFycyBhZ28uDQo+IEhlcmUsIHdlIGp1c3Qgc2VlayBmb3IgeW91ciBoZWxwIHRv
IHNlZSBpZiB0aGlzIGlzc3VlIGhhcyBiZWVuIGZpeGVkIGluIHlvdXIgbGF0ZXIgTFRTIHBva3ku
IElmIG5vdCwgdGhlbiB0byBzZWUgaWYgaXQgY2FuIGhhdmUgYSBjaGFuY2UgdG8gYmUgZml4ZWQg
aW4gZnV0dXJlIHdoZW4geW91IGhhdmUgZW5vdWdoIHJlc291cmNlLg0KPg0KPiBUaGFua3MgYWdh
aW4gZm9yIHlvdSBhbmQgWW9jdG8hDQo+DQo+IEJlc3QgUmVnYXJkcyENCj4gTWluZyBXZW4gKOmX
u+aYjikNCj4gU0RLIFRlYW0gfCBBbWJhcmVsbGEgU2hhbmdoYWkNCj4NCj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBn
bWFpbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBEZWNlbWJlciAyMSwgMjAyMyA0OjQwIEFNDQo+
IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnOyBNaW5nIFdlbiA8bXdlbkBhbWJhcmVs
bGEuY29tPg0KPiBDYzogcm9zcy5idXJ0b25AYXJtLmNvbTsgU29uZy1KdW4gSGFuIDxzamhhbkBh
bWJhcmVsbGEuY29tPjsgSmlhbiBUYW5nIA0KPiA8anRhbmdAYW1iYXJlbGxhLmNvbT4NCj4gU3Vi
amVjdDogW0VYVF0gUmU6IFt5b2N0b10gZG9fcG9wdWxhdGVfc2RrX2V4dCBmYWlsZWQNCj4NCj4g
T24gV2VkLCAyMCBEZWMgMjAyMyBhdCAwMTo1MSwgTWluZyBXZW4gPG13ZW5AYW1iYXJlbGxhLmNv
bT4gd3JvdGU6DQo+ID4gU29uZy1KdW4gYW5kIG15c2VsZiBhcmUgaW4gdGhlIHNhbWUgdGVhbS4g
V2Ugc3BlbnQgc29tZSBlZmZvcnRzIHRvIA0KPiA+IG1ha2UgaXQgaGFwcGVuIGZvciAiIGRvX3Bv
cHVsYXRlX3Nka19leHQiIGZpbmFsbHkgYnkgZml4aW5nIHNvbWUgaXNzdWUgaW4gUG9reSh3ZSdy
ZSB1c2luZyBsYXRlc3QgS2lya3N0b25lIDQuMCkuIEJ1dCBhcyB5b3UgbWVudGlvbmVkLCB3aGVu
IHdlIHRyaWVkIHRoZSBnZW5lcmF0ZWQgZVNESywgd2UgZm91bmQgdGhhdCBpdCBzdGlsbCBjYW4n
dCBnbyB3aXRoIGV4dGVybmFsc3JjIGVuYWJsZWQuIDooIFdlJ3JlIHdvbmRlcmluZyB3aGV0aGVy
IHRoaXMgbGltaXRhdGlvbi9pc3N1ZSB3aWxsIGJlIHJlc29sdmVkIGluIHlvdXIgbmV4dCBMVFMg
U2NhcnRoZ2FwICg1LjApLiBPciBpdCBpcyBzdGlsbCB3YWl0aW5nIHRvIGJlIGZpeGVkIGluIGZ1
dHVyZS4gSWYgaXQgaXMgdGhlIGxhdGVyLCB3ZSB3aWxsIGZpbGUgYSBidWcgZm9yIGVTREsuDQo+
DQo+IEhlbGxvIE1pbmcsDQo+DQo+IEkgaGF2ZSB0byBzdHJlc3MgdGhhdCBZb2N0byBpcyBhIGNv
bW11bml0eSBvcGVuIHNvdXJjZSBwcm9qZWN0LCBhbmQgbm90IHlvdXIgY29tbWVyY2lhbCBzdXBw
bGllci4gTm9ib2R5IG93ZXMgeW91IGEgZml4LiBJZiB0aGluZ3MgZG8gbm90IHdvcmsgZm9yIHlv
dSwgaXQgaXMgeW91ciByZXNwb25zaWJpbGl0eSB0byBmaW5kIG91dCB3aGF0IHNvbHV0aW9ucyBj
YW4gYmUsIGFuZCBpbXBsZW1lbnQgdGhlbSB3aXRoIGNvZGUuIFlvdSBjYW4gb2YgY291cnNlIGZp
bGUgYSBidWcgYXMgYSB3YXkgdG8gZG9jdW1lbnQgdGhlIHByb2JsZW0sIGJ1dCBpdCBkb2Vzbid0
IG1lYW4gdGhlIGJ1ZyBpcyBnb2luZyB0byBiZSB3b3JrZWQgb24gYnkgc29tZW9uZSB3aXRoaW4g
cmVhc29uYWJsZSB0aW1lLiBUaGF0IG9ubHkgaGFwcGVucyBmb3IgaGlnaCBwcmlvcml0eSBpc3N1
ZXMgdGhhdCBhZmZlY3QgbWFueSBwZW9wbGUsIGFuZCB0aGlzIG9uZSBpc24ndCBzdWNoLg0KPg0K
PiBUaGFua3MsDQo+IEFsZXgNCj4NCj4gIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIw0KPiBUaGlzIEVYVEVSTkFMIGVt
YWlsIGhhcyBiZWVuIHNjYW5uZWQgYnkgUHJvb2Zwb2ludCBFbWFpbCBQcm90ZWN0IHNlcnZpY2Uu
DQo+DQo+ICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioNCj4gVGhpcyBlbWFpbCBhbmQgYXR0YWNobWVudHMgY29udGFp
biBBbWJhcmVsbGEgUHJvcHJpZXRhcnkgYW5kL29yIENvbmZpZGVudGlhbCBJbmZvcm1hdGlvbiBh
bmQgaXMgaW50ZW5kZWQgc29sZWx5IGZvciB0aGUgdXNlIG9mIHRoZSBpbmRpdmlkdWFsKHMpIHRv
IHdob20gaXQgaXMgYWRkcmVzc2VkLiBBbnkgdW5hdXRob3JpemVkIHJldmlldywgdXNlLCBkaXNj
bG9zdXJlLCBkaXN0cmlidXRlLCBjb3B5LCBvciBwcmludCBpcyBwcm9oaWJpdGVkLiBJZiB5b3Ug
YXJlIG5vdCBhbiBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIg
YnkgcmVwbHkgZW1haWwgYW5kIGRlc3Ryb3kgYWxsIGNvcGllcyBvZiB0aGUgb3JpZ2luYWwgbWVz
c2FnZS4gVGhhbmsgeW91Lg0K

