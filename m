Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
 by mx.groups.io with SMTP id smtpd.web08.4370.1614899158690382225
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 15:05:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hpe.com header.s=pps0720 header.b=RUmiDs6k;
 spf=pass (domain: hpe.com, ip: 148.163.147.86, mailfrom: prvs=0697bde9bf=javier.tia@hpe.com)
Received: from pps.filterd (m0134422.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 124MtDNF012756
	for <yocto@lists.yoctoproject.org>; Thu, 4 Mar 2021 23:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=pps0720;
 bh=xSWmBJy7RTiEbTPNIZVompIsuTdFQgc8WLNpegS/yCw=;
 b=RUmiDs6kKJocADEebrJOGI/TTfySFc5k44Ylgw3bb1TjRa+LeVX4RcXl//ry+RcwK0hG
 ywvHgcNilmyvQMLMj+64R0IJFMmSCnGb+WAi7/1pDSrcLUQ24b/Y69I4IVUZZRl22u7Q
 4X9yL0F4vJ8W1TJZ86pV4GwtCAt7wN9xyVq9VgX7vHM/RbqzEl8CX1iimferd2PTuWtK
 V+1Whil5s2LoRlcvE/hCFc4oaufEtunncA3zrldnPJDgZE5lh6xCGtx+bKo5lvixoGtU
 yFRvOJPD3CxGKm/nBcVDV0EaFaFnIn+al+xq4FUM161BVqCYicbeywP5OR31hgyKgbhi Ug== 
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	by mx0b-002e3701.pphosted.com with ESMTP id 3730sbcc49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 23:05:58 +0000
Received: from G2W6311.americas.hpqcorp.net (g2w6311.austin.hp.com [16.197.64.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id 4323AAC
	for <yocto@lists.yoctoproject.org>; Thu,  4 Mar 2021 23:05:57 +0000 (UTC)
Received: from G4W10205.americas.hpqcorp.net (16.207.82.15) by
 G2W6311.americas.hpqcorp.net (16.197.64.53) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 4 Mar 2021 23:05:56 +0000
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (15.241.52.11) by
 G4W10205.americas.hpqcorp.net (16.207.82.15) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Thu, 4 Mar 2021 23:05:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPvBD0jM2Jito2Sr3orPZKXRlyTVQPSz9W/fP2TVqhDuXj4sdA2JtD0aV/ZINp2+CJV5nZ2OtYMbUiq7SGN6Ewsvb9qo9x8NtOUnSOgs/ga1IsgIxrm4y1rDM7xPpz84YZrRZmAhslSmAq59mqaIVBd+l/FAsQ3BXc5TX9bd29QTseYvi8P5WXbnE8JeE/M1lij4kanBAZTvlF2buhu1KtJIpQSq5IdPSDJ2E6BYIcNWXAMjtlDjjQItot2vMaPhPs4bICWsDROt4QSvMU+92pm+1mfpIoB/9YoI4sHgo25ONcciMc4F9kQm7DLgHZinOoVpnMCP8XNV8WVpRGabkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qb6mU1MZV9Y3upejabmGh1vm5nDLdECt5ew0RghGPlg=;
 b=PipgY38BBX/BEXFITF0cYDeRe7BdJtOeBKZdr0PHIkETbxVwbYsKD6hWt1zg+0OUZ/kPsty/xOzZHLt+UfzL65tVj+WX0tgghzo/ROXSpUuZLlrGn+obbGTcBUbHLvY5jVnXF3VZgNFmwmsSdfx0gFFkHW3UIJOWeFcaLuxSTgk0O0KzuAm+4rETbYItYpP5hclliiA5BPO3vB4rYBh3ut0R45JfZiE2fEwI9hRe43DCTVYINkcVgnSUl8dxKCMNAgON2nE0LrtHvtKzT481WsceZvPFsiVcdd5Royh3mDxdCiVcPMIwpTLJ+FcRihRdW9QUmrG5/yIGnWLoM0fV2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7606::14) by DF4PR8401MB0508.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19; Thu, 4 Mar
 2021 23:05:55 +0000
Received: from DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a113:1856:6da7:8a41]) by DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a113:1856:6da7:8a41%11]) with mapi id 15.20.3912.022; Thu, 4 Mar 2021
 23:05:55 +0000
From: "Javier Tia" <javier.tia@hpe.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to run the recipe Go tests on Yocto
Thread-Topic: [yocto] How to run the recipe Go tests on Yocto
Thread-Index: AQHXD7k8h+LO0/IJ4k6n3ilnraOdoqp0dmgA
Date: Thu, 4 Mar 2021 23:05:55 +0000
Message-ID: <53584384-2835-2472-b8cf-fdf94f27063b@hpe.com>
References: <1668A951B76738ED.31223@lists.yoctoproject.org>
In-Reply-To: <1668A951B76738ED.31223@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=hpe.com;
x-originating-ip: [190.171.113.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 370a2d4f-2d33-4894-4fd7-08d8df62110d
x-ms-traffictypediagnostic: DF4PR8401MB0508:
x-microsoft-antispam-prvs: <DF4PR8401MB0508C06C0A26D1CBC09C588199979@DF4PR8401MB0508.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:121;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fKhtiYBcRUTK4UYmECfIsih23UoQeMk0P9sIQ20HkjDGhATsvuz5qK9GSoKeZLuFefaRcbJqeesBFkk2ZguAF5k+XgH5YsVZtdrawHz8pUE3GY2MO3sk0SNoV9JpoR3590AFxyMdhaM/QDSOJmKmbTuZ5tZmnz4LeMr5g/oMhiWrC13vpIXVk9dz/rJzpElI3Z1rFkoxO71OT19lyF7NPPE32Po5yb6blqCTPZ+xNJpcYQDh8N5ifvx3xR6r2clA36xaKT0bvvo/cHFwsyhHFHOmPktaYfXh2xNNEuQjZibroA058JnWOQ0iF6j66JRllmsC7jPgtpt1fr7hKc11bP866jcX1Tegs+hTPv01XRlan1vl1cD6MjT4jgdO0H5SLe80Nb8tBBVqwOOcb9u42D10qsPiLZErmFT0CCHDr1Zq/PdrtCxbZNab1D9EvI845v3oftNHg1qKF+Uyjg+nkAM1ujSqd/beMt4/FaJzhApIVHb2UEWk2VN7ij2wVVS6x51aGV/yAN+xmHAofkCpVHZTDnXYIYJJEVG8RhDg16TImowvogxMM+a3LIiYxO+HDQjbdCFurrCQ4JsMY8bL1m1Pt+LG5+Imytc+tscxSPNnDVUfRtfXQ9El8nLD35BGAllxwaqUeh/l7Bs87Tc3D1cmlvVin+mrEEpLV5qJTJqmw8xR29QO9V/4C1Jg4xxR
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(2906002)(5660300002)(76116006)(66946007)(64756008)(8936002)(2616005)(66556008)(31686004)(66446008)(6512007)(6916009)(6506007)(8676002)(71200400001)(478600001)(966005)(316002)(186003)(66476007)(86362001)(6486002)(36756003)(26005)(31696002)(83380400001)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?alRJTC95M2ZwZUN2QWppOUp4TnZ5dXczSkhlV0E2MXJUdWc4cG9FbWszY3A5?=
 =?utf-8?B?cEpXR1lqek1SOVUzdzBrL2xVOERyRVppd1EydHpITGxkcDZmb3Fjb0w3VVgy?=
 =?utf-8?B?RktrN0lKRnlFY1grZDUweFBNNU1RVm5udXZSY1FIR1pCV2dNZlY2YVF5S0FQ?=
 =?utf-8?B?ZzkyTGJjcnExbW9GQ1VhOHFUcVVxbHh6aDk5TXJkL1pjWjlvRnV6bmZVOWk1?=
 =?utf-8?B?RGkwcFoxZ0xwUXVqMjlFMWNIdVhwdXkwT3djVm4raTZkZTV1dGVzd3dpZnlV?=
 =?utf-8?B?eGprQzhMQ2lndnM4bm1kMkt4QUhzc3FIQWJUNHB4bWlVZ0pQc2lRZ1pHZXVD?=
 =?utf-8?B?a3FOSnJGN1JQOXRBMUZ6TzNUcUZ4MlREZStaTTZOazM1Unl2SkZjbEVPUnc0?=
 =?utf-8?B?SVZpRVJBeE1UNEFoQW96OXFETzZaSTdUK3ZZb013ZEdEdm1uOTMrZnFZNFFn?=
 =?utf-8?B?cUdtN25WdzI4Rnd3TmxkRThYRldMeG5hQ0d4UDgweE5XdDd0SlAxTzArQTlF?=
 =?utf-8?B?YlA5Q24xTDBKendSaEdtelhWaWRBWjZBM0RBUUg0R2VDZU43aTJiTjBOUTRk?=
 =?utf-8?B?azJtZWhEVTd3dFFsR0pCdEVtcHIwcVJhMG9VczIrWjQyM0ZzS0pqVVVKTHZ5?=
 =?utf-8?B?NXdKZjQzc1BnVHpUd2dNVEVFaDE0bmp3N0ZpRjErQ2oyMkFWeExZUCtnb1J0?=
 =?utf-8?B?ZWJYd2NpZmlJYmp6Q3BGT0RST3MrYTdzVm1vR0V1cnA4QjBOWjdzbDZYa3Bq?=
 =?utf-8?B?K1BHWVc4UEVZVFltV2dUWnFZc3hKQlZtSUdTaTdwL2gxQStCaXZhOTlqRDh1?=
 =?utf-8?B?NWQ1TmlYQkVOSkpkZlB3OXZnVFVHNEdZaVJranRkcHpNcDEzUDJJWk9BZU5r?=
 =?utf-8?B?K1JTV25FbTIzVDN1elVVVG5jcUN1aHVLckVsaXJkaGZpN3VxSnlnd205MFJp?=
 =?utf-8?B?eVBFSjIybTNwZXcvaEppTXk2TXR6MW1kUS9ZRk4vZXREQU5JaU9wQW1pQUl0?=
 =?utf-8?B?K0NlSEd2SjgvLzdNcTRHQWwwZUxDS0tyZG0yQVZOenlKRHZUcXFManRrOWVQ?=
 =?utf-8?B?clBDQlBmdkxuenVTWHVUWFZWd01NbUxSZUZvZTF6SG5RZjF2WHRyenFhKzhp?=
 =?utf-8?B?NEFzSXR5Zng2Nzc2Y21raERaeFdmMEVZUS81S1NkTE1KYWxVUEd1VUp4UUJu?=
 =?utf-8?B?UTlYUjRNNEdPaXBQOFQrZTVjV3AwejlSZHFHa1U3bm9QYzU5UTlwTzJYakdr?=
 =?utf-8?B?eHk3MjBpdG5YaFE2Z0xZQ0IyOTlER0FSVy9GN0dKb2pLUlRMQmo4WkJFb3RT?=
 =?utf-8?B?MnZZeUFid0JidzQzWTBaakFLMHFvamJhWTkxSDBVUXVzVmRRL0I3d051dWUv?=
 =?utf-8?B?cDhjSit1d211djEvSVFoVVBqZ2t5U1ZIOFMyejQvdWJOYitISkkwbnNhc0RO?=
 =?utf-8?B?TUw3YWE2QW9VUG1zM1RjZjVIYnVIZHlrS0VKTDdHSWVnVmRUeXMrS1BkSVk3?=
 =?utf-8?B?OW94cHlSYWFUemIyV005aU5lend3RVZtODV1L0RuMzd1c1RlWk5ZbWVXMy93?=
 =?utf-8?B?UFRnejJLUExRSFB3bDZLdzMwTVZvZDgvNVphZGJuWDZya015MkdGTjV3ZzZk?=
 =?utf-8?B?WFZBRjNVWGx4cWxDeUx4TE5oeEQzOHU3N2xhc2ltYkhWRURwUFYyeER6a1JC?=
 =?utf-8?B?ZHJmK2hkWlo5SG9uRmNET1crUEFDMzgyRmxSSXJHU2s4bnNwUHlSNlBrVG8v?=
 =?utf-8?Q?j5tL3kPVSiHjcCd08CthLDA28dYt/6t7mEuM+2T?=
x-ms-exchange-transport-forked: True
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 370a2d4f-2d33-4894-4fd7-08d8df62110d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 23:05:55.7949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WqVFsUWs7blGjefw7/eYhB6DCs3whT6Xo+S3Z3SEuxj80+KSGU9yOP9NhKD816PquSleVKwyaVEe5MzBpUHc+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB0508
X-OriginatorOrg: hpe.com
X-Proofpoint-UnRewURL: 3 URL's were un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-04_09:2021-03-03,2021-03-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 spamscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103040113
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B09D51136DE49649B3926A9DE263F15B@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

Rm91bmQgdGhlIHJvb3QgY2F1c2UuIFRoZSBHbyBVVCBiaW5hcmllcyBmaWxlcyBnZW5lcmF0ZWQg
YnkgdGhlIHJlY2lwZXMgDQp3aXRoIHB0ZXN0IG9yIGdlbmVyYXRlZCBtYW51YWxseSBuZWVkIHRv
IGJlIGV4ZWN1dGVkIHdpdGggdGhlIHNhbWUgbGQgDQpjb21tYW5kIGZyb20gdGhlIHRvb2xjaGFp
biB1c2VkIHRvIGJ1aWxkIHRoZW0uIEluIHRoaXMgY2FzZSwgaXQgaXMgdGhlIA0KZGVmYXVsdCBH
TlUgdG9vbGNoYWluIG5hdGl2ZSBwcm92aWRlZCBieSBwb2t5Lg0KDQpUaGFua3MsDQoNCuKWtyBK
YXZpZXIncyDwn5aKDQoNCk9uIDMvMi8yMSA1OjEwIFBNLCBKYXZpZXIgVGlhIHdyb3RlOg0KPiBI
aSwNCj4gDQo+IElzIHRoZXJlIGEgd2F5IHRvIHJ1biB0aGUgcmVjaXBlIEdvIHRlc3RzIGluIFlv
Y3RvPw0KPiANCj4gSSBoYXZlIHRyaWVkIHNldmVyYWwgd2F5cyAoMS4gTWFudWFsbHkgYW5kIDIu
IHB0ZXN0KSB3aXRoIHVuc3VjY2Vzcy4NCj4gDQo+IDEuIE1hbnVhbGx5IGV4cG9ydGluZyBhbGwg
dGhlIHRvb2xjaGFpbiB2YXJpYWJsZXM6DQo+IA0KPiAgICAgR09BUkNIPSIke0JVSUxEX0dPQVJD
SH0iDQo+ICAgICBDR09fRU5BQkxFRD0iMSINCj4gICAgIENGTEFHUz0iJHtCVUlMRF9DRkxBR1N9
Ig0KPiAgICAgTERGTEFHUz0iJHtCVUlMRF9MREZMQUdTfSINCj4gICAgIENHT19DRkxBR1M9IiR7
QlVJTERfQ0ZMQUdTfSINCj4gICAgIENHT19MREZMQUdTPSIke0JVSUxEX0xERkxBR1N9Ig0KPiAg
ICAgQ0M9IiR7QlVJTERfQ0N9Ig0KPiAgICAgTEQ9IiR7QlVJTERfTER9Ig0KPiANCj4gYW5kIHJ1
biBpdCB3aXRoIHRoZSBHbyB0ZXN0IG5hdGl2ZSB2ZXJzaW9uLg0KPiANCj4gDQo+IDIuIFVzaW5n
IHB0ZXN0LCBhbmQgYWRkaW5nIHRvIHRoZSBHbyByZWNpcGU6DQo+IA0KPiAgICAgZG9fY29tcGls
ZV9wdGVzdCgpIHsNCj4gICAgICAgJHtHT30gdGVzdCAtdmV0IG9mZiAkKGdvX2xpc3RfcGFja2Fn
ZV90ZXN0cykNCj4gICAgIH0NCj4gDQo+IEluIGJvdGggY2FzZXMgdGhlIGVycm9yIG1lc3NhZ2Vz
IGFyZSBsaWtlIHRoaXM6DQo+IA0KPiBmb3JrL2V4ZWMgLi4uL3JlY2lwZV9uYW1lLzEuMC1yMC9n
by10bXAvZ28tYnVpbGQ3MTEzL2IzMzgvdXRpbC50ZXN0OiBubw0KPiBzdWNoIGZpbGUgb3IgZGly
ZWN0b3J5DQo+IEZBSUwgICAgdXRpbCAgICAgIDAuMDAwcw0KPiANCj4gSXQncyBoYXBwZW5pbmcg
d2l0aCBZb2N0byBaZXVzICh2My4wLjQpIGFuZCBHbyB2MS40LjE3DQo+IA0KPiANCj4gUmVnYXJk
cywNCj4gDQo+IOKWtyBKYXZpZXIncyDwn5aKDQo+IA0KPiANCj4gDQo+IA0KPiANCg==
