Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11546C433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 10:57:56 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.60])
 by mx.groups.io with SMTP id smtpd.web12.20910.1644231474040558122
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 02:57:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=WMGlMoI1;
 spf=pass (domain: optimeas.de, ip: 40.107.21.60,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K11zJbc6oG53fvLDnjRDGCuawgX6AcmXxSP9TSkIZqBtt51qCR7zsB2jsVRMip4oXfuiraaYaiTmXZcpW/zxlDtnR5cy9vVddKWq7HVfhB2HeYug+G4y0S8GcRFXjfwom7s3XjT86p/n8DbrYiBjA0Xvylop9etk/9mh7BwFAnHnDLild6f9o0ypgjQfVeUv1qjeYrBG5pddqSDbeV8yByGpvejp74ZDx4pkdaY4LuN2KkYbBl+MrbBKFf2LhX4qlyNzpw/SOPIDtkRNzWK27J1ixOcoP32zmupbs/eZ4ilHP1JFVDkksiuLcpOTqGhKf61hU/W3ebXqjdq03lmh1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QIY0qQ2dQoWbTvLpiWVK/OMPGZS1mBkoUrQz9e3D4S8=;
 b=ONj0e28XMmb09ji+lZLWGf/+vaYtMSEIvoKnK1BPyHsAuDG5lg12LHzZ3DrbednOApIWflv1vcfe2IysVjVlNa4kQRROaVG4xn3wd0fzOdAXve0hdVQLjTN6EszcLf8CkPY/ZkzWIxjqFO+TGKDzvmCoon1wpJikNBt5jK8qtfzBL9TLtbHLMMu+xh22aKxuIihjttK0TJ/uT3VlEyceVmCHqNRxvyIR4hghGuk9GG7JJa1dhGuYoCu5oyzoZZ95MOb6S9kE06dhlgtJ7B2EYAs2seb4MudETPDeW1PsGsL8cqK0WxiUdfg/32tZuzYq+O+xH1tNotGORdRddUW70Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QIY0qQ2dQoWbTvLpiWVK/OMPGZS1mBkoUrQz9e3D4S8=;
 b=WMGlMoI1aav3jrcOp1rPdoPFvfeLz+xIoNTciOhaOl2jjihVd4KhHJi/kwdFLyaQSPZJ5HO7rO2jJNbs/QmsweGhbNF5Ed7ilP/isP81pO6H584UvMsdPoXUa3DBIJSznBmSCYv5b06ugCwI3Wjfidli1CAqepF2QSlANSDvo+s=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR10MB2575.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:e7::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Mon, 7 Feb
 2022 10:57:49 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.018; Mon, 7 Feb 2022
 10:57:49 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Jose Quaresma <quaresma.jose@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] gpsd autostart with systemd?
Thread-Topic: [yocto] gpsd autostart with systemd?
Thread-Index: Adgb+woY6Je/MtpVSBKK8R1AbewNfAAFPIuAAABXgnA=
Date: Mon, 7 Feb 2022 10:57:49 +0000
Message-ID: 
 <AM0PR10MB3107C37D2B119DA564BDC12B992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107C0B665A754CEEF1D9C82992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CANPvuRm9rP3SCKSSGeP+NyYYViWm6f6gH_gwavzV7_LacRd0dw@mail.gmail.com>
In-Reply-To: 
 <CANPvuRm9rP3SCKSSGeP+NyYYViWm6f6gH_gwavzV7_LacRd0dw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c72e11fd-90dd-41c0-ff8b-08d9ea28ae62
x-ms-traffictypediagnostic: VI1PR10MB2575:EE_
x-microsoft-antispam-prvs: 
 <VI1PR10MB2575BD3ACAE4F01F6C92170B992C9@VI1PR10MB2575.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 roCmpgBE5pxyAnhSuQbsXeRNFAaGuidfklgLgyYQg/Wb77Q8GGPcdtcziYETWMPlXPRZQm/BLTZDZuzXz/MgrYwTQGwFR3UQ8ZxVxeLLhCDu8YJ1MDow6tlX9YrtR3jPQ4fcOGIirGxHVRS47AVhMfCnJFhgzSWmLmflscYx1KFrQb7uGYpAzbNiY2dI+13iUCEQb39D6sgqG1lfB7dx+jKtrHfkrFnFWr0g8mOeGryCM53iu6Nk+uNUKvyNwUqNrRk7Bj0EiqYgoIMZXgpV0lIi5X7sJ0oLX3tIFFrMYsyEGwCg6Y0PVQNBY78MA8GBh8kZ1+UvP3Q0cfq6ke+kXGUjn1KK7BL/XQiZVBOiZNEeN3/xPCA4n/P0r3AachQnqB3hr4LcPW5bcmCQIGPKaU16fvfjVn0sUAEyTinLPUwCL1elY/s0hV8Rtljx3yRI1yTrYzV8BoPaigUDowhzlHRCM3Reo9gSJKgDZwUcY/BmyS+ndP1lEtcspRv1Ew3Bz/tTNakiShE2jAVVMcRWULwc9SckjHzqYfRva+sV0TxAl4SDeWEC7eqAwGG6PmgkZ8PV6T1b7lIXVIJY71tUgN0zmVoUWd2cUQLL/ZO5GsVVv7clrs3/sTRGG+iRW6iQR05mD8rRidqgO0gEwSkuQxYqvLU2AKdmYm8eDVNe9S/lMCJIZuI6iRPjrhYZg7knSBsJPGAWJDPqHpl5kqVnXw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(39830400003)(376002)(396003)(136003)(346002)(71200400001)(64756008)(4326008)(186003)(9686003)(7696005)(8936002)(8676002)(316002)(6916009)(6506007)(66556008)(76116006)(66446008)(66946007)(66476007)(558084003)(38070700005)(508600001)(38100700002)(2906002)(86362001)(5660300002)(44832011)(52536014)(55016003)(33656002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZStyQktxSy8zdXVaNlI0Tnp6WGVPSVNyMmhONDdTVVd4QU9BWGxHSEtXZXhG?=
 =?utf-8?B?aEZaWE4rZHJ0c2NzbFdxVFpqdmJlWEdBY0dIOUVEU3pVOWtTaERJNUtoMFFD?=
 =?utf-8?B?dXdXT0E1QlVqL2Z4WHhIVitmMWtpR3VZRUpXbXUvcTJaN0p1YTJ2UXNQVDVi?=
 =?utf-8?B?Y1oxUDRQUVBQbnVqV3RVK0ZZdmtxVHRwVTFNdUQxaWx0akR0QStDdFZTWWla?=
 =?utf-8?B?RWJHYkd1VVl1Ym1PSnZhMkcyeGZCUjNRS2NpNTVBRTJnK0ZKZkplY0RublJW?=
 =?utf-8?B?QlhrY09xQXdJUFo1VzNvQWV6K0ErVU1BbTB0Q3pCL0N6UnRPWG9kTjdXQnVV?=
 =?utf-8?B?UUZDSXpWMVZ6bERoS1FTTGg4TjRtclFhbTdoZG1FekpLbWZkUDdlazdkL1ZO?=
 =?utf-8?B?YThRNWF1SVhpS3pjdTFUeTdaY21xcnBsYUhjMnljS29ZMFFTOEFsbnJFRnBT?=
 =?utf-8?B?QzdoWkdNR3Q4MlVJUU1SWmRsc0prSlJCVDhZdDNGdmU4QldKbjEvbEZZSDBK?=
 =?utf-8?B?bkNKd3ZoUk1rRUpsNk9kMmc5Y2pMUUhzOEkyRm9UOTZHQk16TC9NOU1QOUxE?=
 =?utf-8?B?ZEFkME9wdFh6aTVJQXNCUmJaWUJ0Y3dmYjBNVWltSkV3MW5kNmQ0RENTRnRR?=
 =?utf-8?B?Z3dTZXhnSGROMXE2YUEzYldMejZUd3lWNDdyeXllNzdyaVlvd1AveGZiemN4?=
 =?utf-8?B?ckQzZVkwRklTVmpoR1ZXQjJoLzRocGhCZ1BxemVCM094SmQyZmM1aXlCQ0Rx?=
 =?utf-8?B?VWFMNTdnYnl1bVd3Z1ozTG5JbzlFZGQyRmFFbmtGREZoS2ZqWjMrc0w0d1M0?=
 =?utf-8?B?YW1jRkx4NFRyR2pVSFc5em9DbjdCWDhKR2g1cGRTV21QbG1nTTJPNkpMUm9G?=
 =?utf-8?B?T25WMGdDbHZURjRaVWZJMnROV2ZWM3dEalJwZHRwU0Z1bEtDOTN2bjZDZ0p2?=
 =?utf-8?B?UCsxNXBxeEp6ak5vZmxBcWlYNEF3Y0Z2Rm0zbVZCbEpnRFpNU1hjVlJGTnJ4?=
 =?utf-8?B?NDIyUWQvZy9OaWExdXdxcmUyVXhKdWh0UFhrTWc0cllQd3Vuc1BiT052S25h?=
 =?utf-8?B?SmE0QVlHSEhGWWJ0TU1sUEVJM1kxUmpJUnFRbDdCSUphOUY1aXU0eUtackF4?=
 =?utf-8?B?RGp6NzBFalpFRDlTdFlIdDNIeVVtWDArVEFXM3A2MmlON2RNN0U2WWdaTjM3?=
 =?utf-8?B?TngyMmNuS0c3Z2hJbWZRZHJJTnF6eStEem41UGlDZ3NhdGRxdG9RaDFtdVJK?=
 =?utf-8?B?dWFtRm45T3E0L3dIcUxsWlVXY3grZlcrdldiWnE5TzhNSkE0Rm1qaVNGSTJ0?=
 =?utf-8?B?RS9kUlpFUUxXazhkTktGU1ZMTWZ4M3ltT0M5Z3FoTFVDQWg1VTBBQVcwZ3ZL?=
 =?utf-8?B?QWM2U0c4TnlkdUJzRk5CMEZkTFBDY2hwWUNFRm1ySUxsemZkdENJcXl4QVNY?=
 =?utf-8?B?ZFJ3d3grUEI2OWhzaDZZN1Zzc09lMDgwNENOUDZGSTJUMjZ1QkxvdzdBV2tO?=
 =?utf-8?B?a3A4Y3p1bDZwQkNYWkl5d0tXazVFdlFIUTJXOENrcjZZd25BcW0wcFUzSGNn?=
 =?utf-8?B?K09DcmxFbloyZm9XbzNlSXJXL0E1am1UdCtGRzFVRkZMak9QbStUN21RUlFK?=
 =?utf-8?B?bWZzWjlOMEVyK2hqcGVKRlVSMGtNT1JXT3JMSWE2eGUxUThWcnMwbmZaSjFS?=
 =?utf-8?B?djF5MHl5L2VyWWhvU0FydzJybzA3Z3FucC9DaTF6NlphS2VnZjhXZVE0UTZz?=
 =?utf-8?B?VEl1L2F2VExTRG9nemd6M1p2cE40STUrQmxVZHllSkJ0cXV3WTNvU2tnSnlj?=
 =?utf-8?B?cmgySjFzd0dsWHErVWV3TFU3dU9LOWZPVnRubndGeVBIZHBiYTJ2Yi96SDJm?=
 =?utf-8?B?VUZ1bjErQk5PYUV2OVYyMEMzSk9NNCtjNzhKOU93bnBSWXIvWXRrNjRINVlu?=
 =?utf-8?B?QXRjV1hFM3JKNzhFUUlaMjRrQ3JnalpIOGo3T1IwNXUrREEyMUlLQ3lIdmRn?=
 =?utf-8?B?aU9UejFyMnVpZTJNdVFzay9nYStJQXVWbDcyY3U3SERDUHJzNllwMVJOWFRk?=
 =?utf-8?B?ZHV2cWQrdk9aZnRodm9JZVZlNHg5ek1vbHRFWlovSXNRYVRJY0N5S3ZiamM2?=
 =?utf-8?B?RjRyZXlHNjhodEM2YU9SV1ZGSG9QWTkvQlgrVjJxVkpFZnB2U1JxYlR2c2lt?=
 =?utf-8?B?VWQrQlhrdm1tbmVlbTRQUUNRT3NxaWxoekdNZzEwUXcyWkdXZlNmaWd5LzJz?=
 =?utf-8?B?UjdXTkFLZ3crNEtHYmNyWWdjUENPU3pNdU5hbUdsSFZOanhOeEZXaHY2aWxi?=
 =?utf-8?B?TmV1ejQ3M21yME95YzhlVHlSZWo2QzF5Y2oreWErKzJMKzVNK0JQQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c72e11fd-90dd-41c0-ff8b-08d9ea28ae62
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 10:57:49.4013
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 +2UZQ1cgZQ5XNBJzrN8gsthonE+w1MVDEmyMZEdTNdWg9kOCpfqjSnxAH0u5Un0zCGatpI1bpnoeqgYyCayvtCcXNsFoBy+dx0z/+msZJ4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2575
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 10:57:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56094

SGVsbG8gSm9zZSwNCg0KPiBZb3UgbmVlZCB0byBhZGQgdGhlIHN5c3RlbWQgc2VydmljZSwgdGhl
IHNvY2tldCBzZXJ2aWNlIGlzIGFscmVhZHkgdGhlcmUuDQo+ICBTWVNURU1EX1NFUlZJQ0U6JHtQ
Tn0gKz0gIiR7QlBOfS5zZXJ2aWNlIg0KDQpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGhl
bHAhDQoNCkJlc3QgcmVnYXJkcywNCk1hdHRoaWFzDQoNCg==

