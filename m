Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECEDC433FE
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 20:38:56 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.1954.1648586335231006077
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:38:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DrSnnPVJ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=1087e86483=joe.slater@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22TKMlJs031841;
	Tue, 29 Mar 2022 13:38:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=aiVHGdjoAID5nFiCWnii5RfRxhMTk2GmIk0vZcLfmhI=;
 b=DrSnnPVJxI7JpAzi3CjMSHrmI+yE1VWTnRt0PM/cLEK1ocQn83gUqR6RnTuFUp8HhldA
 Q6vH/prZasvE8grkwm/LNh6BXjas7bFuAX/Rsd9BDQGv6mgyU62yFA9t5aKVI5JKBaUL
 ymqhwadlhQCJ6CVKxnMdbkg3Uimuvo8jXj0pG02iMkVXA5SGvA95/gX7cITsc+7gZB5p
 yC5lvhnnDy2aO8KmcRlCgYEo1kLqsBrWkaEn/bkthqwKnc8Yiw9myoLV7KofY1em95bd
 Q5IQQeA26f49Zp2wflorWfYib26O8bDkGEDNFhx+VIkYQHxxvVHsS1l3cnoUsua95LUM YQ==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2048.outbound.protection.outlook.com [104.47.57.48])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f22bjam02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Mar 2022 13:38:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5l3q/GvpdOx/apPHrL4JR8P1JxTopOxpoRwRV71XqMpsZLBf6lwcH1H4j1DyWck7HoZfAEBQUNQ9kMm7Nq6HuGdBHqqz9fPu+7g5Gp+HcQ/OY6nAVhjR1/Fd4Gq1+k3bnJwfMwv5sqroBU3yT6914UDZmkh/LxwGksMykq8Wr5Cqad/c6ouNJGTQtNwxrAEeb0UKc2EiTpqqfmjfnfNGRAuMww04QKu+6AuIQvnFrL2hJAx7yYRsgzxN6oJkKMSCxceltG1uTA3engCruuo0bg0ngmAx86BWKkz0NfbzaWPN2bYZ+CGLZvQpknwvpt647rybVMA0mdQMA9Gl9PHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aiVHGdjoAID5nFiCWnii5RfRxhMTk2GmIk0vZcLfmhI=;
 b=fBi07pxVFLS3CcdkweQZQbJw5Ms9xCSChSd3rs2PBHBmW716vgG6jQn6T7IfDWqP372U84sTbjHneUby4/i+7fTRydcOzAr5GmQLKEr/UwCsdlcLGAoigo3iZKw/6CarTZ4vy4F1KS8WhYV8OCI/C+yLi3BCOHuQdbC6eE7jneEG2uZPJLcmC1QIF3NcZalhJR1jrvkscCEUF1VmxeYtjT6LpLe4tAzTpspwPRCvidhAQU03UVI54bVCkPKoj27IcHEdq1vu/tmBq7m5yB5UCBFclERkug+QyNLqFP/iBuGk2FOKgeZj3MBAMXtqgLESpsUa/JEDxSW6QGsj3ZdlrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10)
 by CH0PR11MB5348.namprd11.prod.outlook.com (2603:10b6:610:bb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.18; Tue, 29 Mar
 2022 20:38:50 +0000
Received: from BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4]) by BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 20:38:49 +0000
From: "Slater, Joseph" <joe.slater@windriver.com>
To: akuster808 <akuster808@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "MacLeod, Randy" <Randy.MacLeod@windriver.com>
Subject: RE: [yocto] [meta-security][PATCH 1/1] LICENSE: adopt standard SPDX
 names
Thread-Topic: [yocto] [meta-security][PATCH 1/1] LICENSE: adopt standard SPDX
 names
Thread-Index: AQHYQ4inqLBb5tjZbEehN1mbUhlR9qzWz7KAgAADF3A=
Date: Tue, 29 Mar 2022 20:38:49 +0000
Message-ID: 
 <BY5PR11MB3992A691DF80B333259326E9881E9@BY5PR11MB3992.namprd11.prod.outlook.com>
References: <20220329161826.7642-1-joe.slater@windriver.com>
 <97b1f01d-1d00-5fc8-572c-d28c88dd9536@gmail.com>
In-Reply-To: <97b1f01d-1d00-5fc8-572c-d28c88dd9536@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88c0eb7c-f133-4556-cabb-08da11c42164
x-ms-traffictypediagnostic: CH0PR11MB5348:EE_
x-microsoft-antispam-prvs: 
 <CH0PR11MB5348A29A2746224119999C1A881E9@CH0PR11MB5348.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IU8HwzuRbyZvfZ8gQNNW/Uo8axZwJVPrMQQJcNCniajmzqPNQdPTpctyBzXDCKGCfO0r5Cg/1OfAIxkRM3azEQXU/dOAVcjdL19mx/SrVl8x6XbVCOZFI5+gNfCheMvRa9a9bFy15gH0J5CzAllEUjzT2z0MxYYc5A4EnQa5IeZ66QhECSWTYcBhNkBSIQ5OliWVvcspT37N08+Jq/vv9TkNKd5zZgsKryZb//wvJxaE/shuL8Ac8++ho1FtIDUCn64FcN/HmhB2tk5ER1O18S+ZtjNBUDKFReYA/NNWKClYbrNUCs4boJKjEmBKYE97CH5RUvUzEaIevHaeDOqiVa7dDC+jkN+ZQJux/zt0/Yc4ph0vnRX9twBYfdPp4LMF7EGdifFe2Z8IS6HvrrGPIGktQTCJ639Hqzy6CfeXaxSmn8wLbv1hfimqp/lUZ12XAfOChc/0m6O6zBisdSqK4hlxRERFfBoe6uFEIWWVjw7eo2HyItNVmoqGecOuACZnxhOxSRNwTtnfUwEMLtN10//UZf9ftuJrvylzGodJdry8JpLE542fLEEal5RlHaqGm//FaXwCFw9fJDWu2XRONsaeNgMhpfK9fsPYh5YnqBR1dLgCmb0SJiE+055boAvZfvMiEO08S2xpDurXe8cC8GpZUX7o2RyeSK3pKopCmCMAAtmCxNudPUFjENR+QIdY2riUcRIFvgkpRC7Pq4Pc4ivZYxs8w1Vi+EFujTalRMdkKOe7X4MnkNwQnDx17QVdn8zY4Xfto8B6Koi5ffKegF4cdxXw/Q4LN5xBTD8cV8bdiYMeq8ngPtlnqHcDvUEWGwPNewUFOMaGDH9DEiKvng==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3992.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8676002)(64756008)(66446008)(4326008)(66556008)(76116006)(66476007)(66946007)(110136005)(2906002)(316002)(38100700002)(38070700005)(52536014)(86362001)(122000001)(5660300002)(15650500001)(8936002)(107886003)(966005)(33656002)(508600001)(26005)(186003)(6506007)(7696005)(53546011)(71200400001)(55016003)(9686003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZFNrQ1dvY3kzcThOY0MzMTJMS3VnQ0NWVENtTEVXc1Q0Z1duQTl5UnlCU1JC?=
 =?utf-8?B?VndrRmM2dkpyOHdtUmFYNGJTQTQxZ2cvOFBYRE8vb0kxU1NGMjg1QUVhL0V4?=
 =?utf-8?B?ZFljdUVEYzVsMjU3eUdiNDh4MWNsTXNtaUZrdlk2U3ZUaTlIU0YwbElzSnJm?=
 =?utf-8?B?YlRPc3Rlc0dSSmJkTkRMek9ENWRjcEhLV21DWXdjbUExclRoMFlERGozeWFi?=
 =?utf-8?B?Y0Ryckx4Z2VaZGc0M3l1M24vcnMrR3ptd3BWUERiQktBaHlQREJOYkNGYUps?=
 =?utf-8?B?TzZEbjJtaU02ZEdwb010enNXZ1c1ekZiNXk5S3VWZjlZWlYwS2kyZGJyUHJr?=
 =?utf-8?B?UVRqQlA3TU0wMlh4YitXSTk3cThuTFp5Snk2blNoaG5aNmk4TkRaZVlqeUky?=
 =?utf-8?B?TzhXOXNTMjd1d0pJT29QUWNVc2lkOC93MlhKWGpmSE5sdTdTdUpOT0ZkL2tT?=
 =?utf-8?B?clY4VUZ1Q2FROHNCTjRwL0VDb0VCZGJCMTF0d0ZDWXJDMVkrazJLM2FNSHM2?=
 =?utf-8?B?K0ltaVJLdDM1WkZBUXlWNXpCN0RVTDA0b2pQbFJKZ3d4N3lBdVM0WVk4MHhz?=
 =?utf-8?B?WDJPaC9oajkvbUJOdG1LNkdMUVplWmI5enc0dzRQb05OSlJscmpweUVRZHZm?=
 =?utf-8?B?OWIzRERrRGZJR1NuMmdPZmVndVFIRXQyWU9PSldXR0lBS3dqMVdCVFRoaTNG?=
 =?utf-8?B?czRnN3JGVTBLNFd3eUFBcHhRdkFkZVM1QVVZM2NPdytKMERleEhQQUxrSnBk?=
 =?utf-8?B?OG5YYldrL3J0VXpva0hPdndrOWpXWThWeUtNLyt1SnJRL1pnUFZSTGVhRFlu?=
 =?utf-8?B?aGc4eUxFbmdsU2p4KzRDZXFBM2JwRVRwbzhjR1FWaitJWGNOaDluNEJGbi94?=
 =?utf-8?B?NE5YZy9Nd1lQUmR5NzUwNjZWNGhNbVJpWnRzR2JzKzNkaUpJRjFxUVVUZHVm?=
 =?utf-8?B?UkQwQnd3SnN4bFJVMkZvb2hBUkFVZlhINzVXMTlQNUR6a2JmR25IU3lKdDFh?=
 =?utf-8?B?NmhpdTRCYVo5YXloMFpqUSt6cnFiSjNDK0VvRXNsY1pQOEVkeDcxdUdUZ00v?=
 =?utf-8?B?c0tKcVZjSUI1eVo2RUxTbUtTazBKNzRTUzE1TytseVk2aXFTTDE0dGZnZzJH?=
 =?utf-8?B?RnIvYUlsNzVyYkhHOFVtYTd0enNQN2ptQmM4bEFSMnY5cWlqdnBUVkJCYzM0?=
 =?utf-8?B?ajRhZUl4OGJIaXY3UTZ2WkJPNmRydVAyejlzaGJQTWlLbWk5bWtHMmRjWkps?=
 =?utf-8?B?Sjdta09nNW56YzVNeDdYT1piUXZjNHFmZ3lEMzZNS1Jka1k3QW5SamEwa2Qy?=
 =?utf-8?B?U25vazVIbzBuS05GRWMrZnZnVFZHWWovenVYT09TTFhoTzkxUWVpNzl5US9v?=
 =?utf-8?B?N3IrZWtEWWxiWStQcnpuSExrSFd4OUozZVU2M0MyVmFFYi9oVmVVS3pYU1hQ?=
 =?utf-8?B?bUd0R050eFZvbExYMnYzT1BrOFZ3Y1VJMnhJcTErWUJ1aEduSXo3NFpIYVl2?=
 =?utf-8?B?NUNNNkd6TkZKbllaRmpkU2l0OWYveXFLVmJMSUNaV1p0aUZFTzEreW1LZlNn?=
 =?utf-8?B?eXpoQWJCM0ovMDlCbzVqTUg0alBBMmkrUEdSWWpMcUNUNUJNUU9JMDd1TVBw?=
 =?utf-8?B?U3lLNmkzaFNYc2xFdlRVZmpmbitqeU5XeTQyWEM3eDZWb1lWVHNkb1hIeTFJ?=
 =?utf-8?B?TXpFVWt6cFRqc2thWTZTRVVKNWJ2cE5hdmRxM01oZFdCWTNha0VqaWNrdEpG?=
 =?utf-8?B?MkpLYTc1Ti9tVkNWekVINnQySTRNT2RjUVBuLzNrTXFTVzNFKzZtbllaZit1?=
 =?utf-8?B?TGF6ekR0VmxlMUZnYy9BU0ZMc2R0eHlIenh3R2pnMURNRFBzTU44dVNaL1Fs?=
 =?utf-8?B?RG9POTJIWVBpMWoxYUxsVGowQjh0N1ZCYWV1K0ErR1JFdDQ2WVZ1Wkpab1pr?=
 =?utf-8?B?ZzI1dEhFMENlUlNxUkpUK0pOMnpLbWFoU3FWVHkyM3BFb1QxWXFjdEF5bWtw?=
 =?utf-8?B?OUQxVlRjYmVaRm02SlNsbUw5NnRJV3ZxajdkMlJIZkJ6OWh5V1JKaW53TGpS?=
 =?utf-8?B?Y1o1Vzk5OXBRclVFYytJQmFicjRFdVBSYWxoZ1N1cWlWQS8xRFViWm0yYXNi?=
 =?utf-8?B?SlZqL2doYVZ6UEhTcEpmaHp3eU9SdkkzZGVDazgxZDZ6Z284WjBLM0NaUTha?=
 =?utf-8?B?NWdmRFR1Kysrb2o0aGVVWHpuYmRLNEhXNWZvbVdtbFVrYTk3aC9KWVVCRXF3?=
 =?utf-8?B?MUViY1ZLQjgxRXZaV3NVZWlGUXNxSDA1MktOeWhlMURPczhIZ2FqWjVLQlJq?=
 =?utf-8?B?aytaeWtCNU40VlhwNVRmcHkxVi9mcW4vRDh1Ui8wK3NKRXBDUGpwQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3992.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 88c0eb7c-f133-4556-cabb-08da11c42164
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2022 20:38:49.7393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 mNtwMKUGob6dJ8rnkN0Hf+viF50lk1yPgAx8qdxdRyL0Cf7ID1TVlEti+Y2OtuPrzHzVOVJQf6ZjmEMtjUbKkrkbNfQAcUqOtbQktsVdiIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5348
X-Proofpoint-ORIG-GUID: T8qVy6ucCZOfsmoUI3EZ-Kc4a4jQxdvN
X-Proofpoint-GUID: T8qVy6ucCZOfsmoUI3EZ-Kc4a4jQxdvN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-29_09,2022-03-29_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 mlxlogscore=634 bulkscore=0 malwarescore=0 mlxscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203290111
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 20:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56584

SSdsbCBzZW5kIGFnYWluIGZvciBkaW5nLWxpYnMgYW5kIGxpYm1oYXNoLiAgICAgICBKb2UNCg0K
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBha3VzdGVyODA4IDxha3VzdGVy
ODA4QGdtYWlsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMjksIDIwMjIgMToyNyBQTQ0K
PiBUbzogU2xhdGVyLCBKb3NlcGggPGpvZS5zbGF0ZXJAd2luZHJpdmVyLmNvbT47IHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IE1hY0xlb2QsIFJhbmR5IDxSYW5keS5NYWNMZW9k
QHdpbmRyaXZlci5jb20+DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXNlY3VyaXR5XVtQ
QVRDSCAxLzFdIExJQ0VOU0U6IGFkb3B0IHN0YW5kYXJkIFNQRFgNCj4gbmFtZXMNCj4gDQo+IA0K
PiANCj4gT24gMy8yOS8yMiAwOToxOCwgSm9lIFNsYXRlciB3cm90ZToNCj4gPiBDb3JyZWN0IExJ
Q0VOU0UgZm9yIHNhbWhhaW4sIGVjcnlwdC11dGlscywgZGluZy1saWJzLCBsaWJtaGFzaCwgYW5k
DQo+ID4gc3NzZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvZSBTbGF0ZXIgPGpvZS5zbGF0
ZXJAd2luZHJpdmVyLmNvbT4NCj4gPiAtLS0NCj4gPiAgIHJlY2lwZXMtaWRzL3NhbWhhaW4vc2Ft
aGFpbi5pbmMgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQ0KPiA+ICAgcmVjaXBlcy1zZWN1
cml0eS9lY3J5cHRmcy11dGlscy9lY3J5cHRmcy11dGlsc18xMTEuYmIgfCAyICstDQo+ID4gICBy
ZWNpcGVzLXNlY3VyaXR5L2xpYmRoYXNoL2RpbmctbGlic18wLjYuMS5iYiAgICAgICAgICB8IDIg
Ky0NCj4gPiAgIHJlY2lwZXMtc2VjdXJpdHkvbGlibWhhc2gvbGlibWhhc2hfMC45LjkuOS5iYiAg
ICAgICAgIHwgMiArLQ0KPiA+ICAgcmVjaXBlcy1zZWN1cml0eS9zc3NkL3Nzc2RfMi41LjIuYmIg
ICAgICAgICAgICAgICAgICAgfCAyICstDQo+ID4gICA1IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IE1hdGVyLW5leHQgaGFzIHRoZXNlLg0KPiAN
Cj4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRhLXNlY3VyaXR5L2NvbW1pdC8/aD1t
YXN0ZXItDQo+IG5leHQmaWQ9ZWNlNDFmNzU0M2JiZDQyYzU3ZjQyMDhjNzMwOWY5MGNiZDAyZTg1
Mg0KPiANCj4gTG9va3MgbGlrZSBhIGZldyBtb3JlIG5lZWQgdG8gYmUgYWRkZWQgYmFzZWQgb24g
dGhlc2UgY2hhbmdlcy4NCj4gDQo+IC1hcm1pbg0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL3JlY2lw
ZXMtaWRzL3NhbWhhaW4vc2FtaGFpbi5pbmMNCj4gPiBiL3JlY2lwZXMtaWRzL3NhbWhhaW4vc2Ft
aGFpbi5pbmMgaW5kZXggMDc3ZTExOC4uZmUwNzE4ZCAxMDA2NDQNCj4gPiAtLS0gYS9yZWNpcGVz
LWlkcy9zYW1oYWluL3NhbWhhaW4uaW5jDQo+ID4gKysrIGIvcmVjaXBlcy1pZHMvc2FtaGFpbi9z
YW1oYWluLmluYw0KPiA+IEBAIC0xLDYgKzEsNiBAQA0KPiA+ICAgREVTQ1JJUFRJT04gPSAiUHJv
dmlkZXMgZmlsZSBpbnRlZ3JpdHkgY2hlY2tpbmcgYW5kIGxvZyBmaWxlDQo+IG1vbml0b3Jpbmcv
YW5hbHlzaXMiDQo+ID4gICBIT01FUEFHRSAgICA9ICJodHRwOi8vd3d3LmxhLXNhbWhuYS5kZS9z
YW1oYWluLyINCj4gPiAtTElDRU5TRSAgICAgPSAiR1BMdjIiDQo+ID4gK0xJQ0VOU0UgICAgID0g
IkdQTC0yLjAtb25seSINCj4gPiAgIExJQ19GSUxFU19DSEtTVU0gPQ0KPiAiZmlsZTovL0xJQ0VO
U0U7bWQ1PThjYTQzY2JjODQyYzIzMzZlODM1OTI2YzIxNjZjMjhiIg0KPiA+DQo+ID4gICBQViA9
ICI0LjQuNiINCj4gPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9lY3J5cHRmcy11dGls
cy9lY3J5cHRmcy11dGlsc18xMTEuYmINCj4gPiBiL3JlY2lwZXMtc2VjdXJpdHkvZWNyeXB0ZnMt
dXRpbHMvZWNyeXB0ZnMtdXRpbHNfMTExLmJiDQo+ID4gaW5kZXggOWFlZmMzMi4uNWY4Y2YzYyAx
MDA2NDQNCj4gPiAtLS0gYS9yZWNpcGVzLXNlY3VyaXR5L2VjcnlwdGZzLXV0aWxzL2VjcnlwdGZz
LXV0aWxzXzExMS5iYg0KPiA+ICsrKyBiL3JlY2lwZXMtc2VjdXJpdHkvZWNyeXB0ZnMtdXRpbHMv
ZWNyeXB0ZnMtdXRpbHNfMTExLmJiDQo+ID4gQEAgLTYsNyArNiw3IEBAIERFU0NSSVBUSU9OID0g
ImVDcnlwdGZzIGlzIGEgc3RhY2tlZCBjcnlwdG9ncmFwaGljDQo+IGZpbGVzeXN0ZW0gXA0KPiA+
ICAgSE9NRVBBR0UgPSAiaHR0cHM6Ly9sYXVuY2hwYWQubmV0L2VjcnlwdGZzIg0KPiA+ICAgU0VD
VElPTiA9ICJiYXNlIg0KPiA+DQo+ID4gLUxJQ0VOU0UgPSAiR1BMLTIuMCINCj4gPiArTElDRU5T
RSA9ICJHUEwtMi4wLW9ubHkiDQo+ID4gICBMSUNfRklMRVNfQ0hLU1VNID0NCj4gImZpbGU6Ly9D
T1BZSU5HO21kNT04Y2E0M2NiYzg0MmMyMzM2ZTgzNTkyNmMyMTY2YzI4YiINCj4gPg0KPiA+ICAg
REVQRU5EUyA9ICJrZXl1dGlscyBsaWJnY3J5cHQgaW50bHRvb2wtbmF0aXZlIGdsaWItMi4wLW5h
dGl2ZSINCj4gPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9saWJkaGFzaC9kaW5nLWxp
YnNfMC42LjEuYmINCj4gPiBiL3JlY2lwZXMtc2VjdXJpdHkvbGliZGhhc2gvZGluZy1saWJzXzAu
Ni4xLmJiDQo+ID4gaW5kZXggNjA0NmZhMC4uODQzODUwZiAxMDA2NDQNCj4gPiAtLS0gYS9yZWNp
cGVzLXNlY3VyaXR5L2xpYmRoYXNoL2RpbmctbGlic18wLjYuMS5iYg0KPiA+ICsrKyBiL3JlY2lw
ZXMtc2VjdXJpdHkvbGliZGhhc2gvZGluZy1saWJzXzAuNi4xLmJiDQo+ID4gQEAgLTIsNyArMiw3
IEBAIFNVTU1BUlkgPSAiRHluYW1pYyBoYXNoIHRhYmxlIGltcGxlbWVudGF0aW9uIg0KPiA+ICAg
REVTQ1JJUFRJT04gPSAiRHluYW1pYyBoYXNoIHRhYmxlIGltcGxlbWVudGF0aW9uIg0KPiA+ICAg
SE9NRVBBR0UgPSAiaHR0cHM6Ly9mZWRvcmFob3N0ZWQub3JnL3JlbGVhc2VkL2RpbmctbGlicyIN
Cj4gPiAgIFNFQ1RJT04gPSAiYmFzZSINCj4gPiAtTElDRU5TRSA9ICJHUEx2MysiDQo+ID4gK0xJ
Q0VOU0UgPSAiR1BMLTMuMC1vci1sYXRlciINCj4gPiAgIExJQ19GSUxFU19DSEtTVU0gPQ0KPiAi
ZmlsZTovL0NPUFlJTkc7bWQ1PWQzMjIzOWJjYjY3MzQ2M2FiODc0ZTgwZDQ3ZmFlNTA0Ig0KPiA+
DQo+ID4gICBTUkNfVVJJID0gImh0dHBzOi8vZmVkb3JhaG9zdGVkLm9yZy9yZWxlYXNlZC8ke0JQ
Tn0vJHtCUH0udGFyLmd6Ig0KPiA+IGRpZmYgLS1naXQgYS9yZWNpcGVzLXNlY3VyaXR5L2xpYm1o
YXNoL2xpYm1oYXNoXzAuOS45LjkuYmINCj4gPiBiL3JlY2lwZXMtc2VjdXJpdHkvbGlibWhhc2gv
bGlibWhhc2hfMC45LjkuOS5iYg0KPiA+IGluZGV4IDliMzRjYjEuLjM1YzVmZjggMTAwNjQ0DQo+
ID4gLS0tIGEvcmVjaXBlcy1zZWN1cml0eS9saWJtaGFzaC9saWJtaGFzaF8wLjkuOS45LmJiDQo+
ID4gKysrIGIvcmVjaXBlcy1zZWN1cml0eS9saWJtaGFzaC9saWJtaGFzaF8wLjkuOS45LmJiDQo+
ID4gQEAgLTcsNyArNyw3IEBAIERFU0NSSVBUSU9OID0gIlwNCj4gPiAgICAgIg0KPiA+ICAgSE9N
RVBBR0UgPSAiaHR0cDovL21oYXNoLnNvdXJjZWZvcmdlLm5ldC8iDQo+ID4NCj4gPiAtTElDRU5T
RSA9ICJMR1BMdjIuMCINCj4gPiArTElDRU5TRSA9ICJMR1BMLTIuMC1vbmx5Ig0KPiA+ICAgTElD
X0ZJTEVTX0NIS1NVTSA9DQo+ICJmaWxlOi8vQ09QWUlORzttZDU9M2JmNTAwMDJhZWZkMDAyZjQ5
ZTdiYjg1NDA2M2Y3ZTciDQo+ID4NCj4gPiAgIFMgPSAiJHtXT1JLRElSfS9taGFzaC0ke1BWfSIN
Cj4gPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9zc3NkL3Nzc2RfMi41LjIuYmINCj4g
PiBiL3JlY2lwZXMtc2VjdXJpdHkvc3NzZC9zc3NkXzIuNS4yLmJiDQo+ID4gaW5kZXggOGJjODc4
Ny4uOWYxZDYyNyAxMDA2NDQNCj4gPiAtLS0gYS9yZWNpcGVzLXNlY3VyaXR5L3Nzc2Qvc3NzZF8y
LjUuMi5iYg0KPiA+ICsrKyBiL3JlY2lwZXMtc2VjdXJpdHkvc3NzZC9zc3NkXzIuNS4yLmJiDQo+
ID4gQEAgLTIsNyArMiw3IEBAIFNVTU1BUlkgPSAic3lzdGVtIHNlY3VyaXR5IHNlcnZpY2VzIGRh
ZW1vbiINCj4gPiAgIERFU0NSSVBUSU9OID0gIlNTU0QgaXMgYSBzeXN0ZW0gc2VjdXJpdHkgc2Vy
dmljZXMgZGFlbW9uIg0KPiA+ICAgSE9NRVBBR0UgPSAiaHR0cHM6Ly9wYWd1cmUuaW8vU1NTRC9z
c3NkLyINCj4gPiAgIFNFQ1RJT04gPSAiYmFzZSINCj4gPiAtTElDRU5TRSA9ICJHUEx2MysiDQo+
ID4gK0xJQ0VOU0UgPSAiR1BMLTMuMC1vci1sYXRlciINCj4gPiAgIExJQ19GSUxFU19DSEtTVU0g
PQ0KPiAiZmlsZTovL0NPUFlJTkc7bWQ1PWQzMjIzOWJjYjY3MzQ2M2FiODc0ZTgwZDQ3ZmFlNTA0
Ig0KPiA+DQo+ID4gICBERVBFTkRTID0gImFjbCBhdHRyIG9wZW5sZGFwIGN5cnVzLXNhc2wgbGli
dGRiIGRpbmctbGlicyBsaWJwYW0gYy1hcmVzIGtyYjUNCj4gYXV0b2NvbmYtYXJjaGl2ZSINCj4g
Pg0KPiA+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+ID4gTGlua3M6IFlvdSByZWNlaXZlIGFs
bCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+ID4gVmlldy9SZXBseSBPbmxpbmUgKCM1
NjU4MCk6DQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2Fn
ZS81NjU4MA0KPiA+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL210LzkwMTEyMDM2LzM2MTY2OTgNCj4gPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvZy95b2N0by91bnN1Yg0KPiA+IFtha3VzdGVyODA4QGdtYWlsLmNvbV0NCj4g
PiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiA+DQoNCg==

