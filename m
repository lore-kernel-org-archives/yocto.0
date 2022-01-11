Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD00C433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 06:28:21 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.3692.1641882500177914084
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 22:28:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YMjiOcXB;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=80104e2dc6=qi.chen@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20B5rY4c030387;
	Mon, 10 Jan 2022 22:28:18 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=ZZyoPU8PwON+4dpypdCmkTAnLsoosSLpYNEd4VkqDNA=;
 b=YMjiOcXBIsmu4ZSW0htlo7KPFtCM+/JtnIFNjYb6DUnzB+RATN5n6ab6lE4CKrPk7MI2
 mvMSAjzF3LthXPtYAjUYiW6R34AwPgeAIxCCd3SXJcqlyRDjgMIRXHooivko2oqcZ5H+
 q9nl5ZLXUcFL793TPl7M1h0fbNV5cTVsKOr/2IWK7vCJYweW9Q5hIcbzdgDTahjQZ4Kp
 HFc/EpMf7j3UtUGfsWXGyhiQ1WyDZtMPMNzDs+aJzpRpGmGhBl+47unGJPCy0KzD3LLL
 XfY7aAB/fCtQADous6HLvyoVZ0GrDKuBcbrLFpPqKVO5WStozDLKvDSnVIv/wdXN2Xmh oA==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2044.outbound.protection.outlook.com [104.47.57.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dgmn6gkdn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Jan 2022 22:28:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZF5aP++RIeHIfwDCaAW1cp9J/aZ1nT8zyEBzsxO3av/ujSsx4S1XHV2ACTFuj10+3t9cCvWzbdPLMmZPoQSqW40Mp23rOpvJJtiAvvQwSHPDa2oXyiTZUn43xQXrszQqOoWKpN6dbLeNqC9Xi4xh7GGebkgV9DUDNXYXy0kupN1aGbjj9sWBkdLrKUYRHAq+QA4YvtnxUjkKQx6k3s87qPtIQG1EzVDD2SN9zzTo/5MV+yYm6mn7tEMB82FW7nBMdS1kTnpeKs2Vcub7GEPsQPR6HCnMEu40HkJrZ+WpyzFUEFIbXZmRb9Sw0gj8hdCXuZ3RswxclTF1pEXFVRqAsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZZyoPU8PwON+4dpypdCmkTAnLsoosSLpYNEd4VkqDNA=;
 b=j0rkk/7kPtBeP8+nHWmQY9l74Jy6h9a4337vqIoB5TgdNRQqxDkA/8QSKmXEtVZQpW4AQoBzmXBVE2nyCYSVy9EkNJJ47w4ZNPYF0M4HZQiyuM+f3Jj28OEKWcCkLTTMqs631ptpACuP7kvdR76daemZQMg0gIHMcCjRGWIg4UeOYFVj8J8+17lvXH8wxATrI5iJm9jeRI+LXOkCKoHjePcMCeFVe7jzr0BvrwwXubgcj0zICTmk77pH1ressgds8CZXEsMQpnmdF+HtqM8WbJwkzHLJisPTZCuLxdW6t+CwmYK2bQaf+34BYfD5zDDcEIjBUGkUpK8kNA23siYwtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CO6PR11MB5585.namprd11.prod.outlook.com (2603:10b6:5:356::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Tue, 11 Jan
 2022 06:28:17 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f1ef:f6f5:d3e4:27cc]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f1ef:f6f5:d3e4:27cc%5]) with mapi id 15.20.4867.011; Tue, 11 Jan 2022
 06:28:16 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: Tony He <huangya90@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to clean the cache for a package?
Thread-Topic: [yocto] How to clean the cache for a package?
Thread-Index: AQHYBrI5x+RIx1XZ+022Xh8Gkya6JKxdWvBw
Date: Tue, 11 Jan 2022 06:28:16 +0000
Message-ID: 
 <CO6PR11MB56029C53403DC63F0CDBC719ED519@CO6PR11MB5602.namprd11.prod.outlook.com>
References: 
 <CAAUX2SUKSsK=L+iPEj6UUFQznYW1SAcy8muPZ6hSC4+XUN0kHQ@mail.gmail.com>
In-Reply-To: 
 <CAAUX2SUKSsK=L+iPEj6UUFQznYW1SAcy8muPZ6hSC4+XUN0kHQ@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60525daf-0939-45a5-c806-08d9d4cb8dad
x-ms-traffictypediagnostic: CO6PR11MB5585:EE_
x-microsoft-antispam-prvs: 
 <CO6PR11MB5585AA036766B1040F661A21ED519@CO6PR11MB5585.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0k630ESVvTuQXE8cNTYLCWEOt8T2OL/vGcRgmlcpoZp9LdvhYs/RIIXfi8bDwSYIugNq7iqjUnrWCi7jwu2zwNqZulL6bnXa5Ue+LdPfBN7ypdR4YcNdA047DrxrKNuSr10sIyXsEzXbYNdzJSO3q2B4f/3DNPb5CwMQe8YoayJgmeUB7Ttdi49EY9zI8Qt6FGhbN+dHnD4W5ZkH668ORE0HmWgVokwuwo9bDesf2uyHQSTZUzAG/yXEYbG3nI2CHfKcPBvvXdvYOc9D2n5N/1RdnqbdA7RHzlMNgkN9x3zgsJlneIrvV/KYmHoSwv+Na3xhLfxWu/aMud5QgXjLjxu5ahRJi/ybav/syV0CmFytpyNUNgM3ggSRUp6mc9lOmDQPLq4ao/6GSmJM1Qtr+hGm3j4RkHADDTpDQ3TgH4JBcwBrhBaDP/zm68H+1X0dvQYXdlXDaprL1mgNOeKv7LO5mZpNSDfE8CQPRE/+nX/L4TH0TxtB/plw2W+rSTIgzhtuBlS/xs0vfJpt52acfwHjQw4c8phWEgWPzUlqHtsWSI3d4aQ6grKpFgxJCavCXD3sgrCn/v8ecvtt40AQ+tIJhIyGFmkzzWutG3ha2ixvb6tnP+EGHqQSMAS+wPf7Ji5bN8yOpAYHGdGQwX/7XJhrbPJCl2yC/JJ7t3n2jLXWPZK1vIf2MvVONNa6VMCYfrGJC0Pz6J6PVFKiq2fXpbg6xaWy/6Oz6zogfJMQjdI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(186003)(26005)(38100700002)(122000001)(66556008)(33656002)(83380400001)(55016003)(76116006)(66476007)(66446008)(66946007)(71200400001)(316002)(64756008)(110136005)(38070700005)(8936002)(9686003)(53546011)(86362001)(2906002)(52536014)(5660300002)(7696005)(8676002)(508600001)(6506007)(9126006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?WlpRZVJVUkpXRDFrSUpyN2tSUW9WNlZWM2FBT25ROXV2TTBOQXNmT3hFUGFI?=
 =?utf-8?B?TnM4bzRUd3JtdlAyZytLZmZhNEpOc1MxdEllTE9vQjVOMG14WmE4L1JOSFBq?=
 =?utf-8?B?ZXhuTU5xekJ3TVM1ckxxWG42WjhpUTNCdkE5MEhOSmNTY2VqQTZFcUoyaUM3?=
 =?utf-8?B?RUs0NkZ3R3RBOS9iU2s0aSthM2RxZjJFb0Rnc09GWXhkV0xYZHpBdFI3WTNR?=
 =?utf-8?B?eG0waksySE1pS3JTbGExUWpLM3UwUzBSdGEyQkZVQkx3akpzZmNiVnZJR0Ew?=
 =?utf-8?B?V1FJbnh1M2UrQXVCeVB1emVMN2VEK3ZCZGt5MW1WY3ozQU1YRWs0eU1jNXVG?=
 =?utf-8?B?a25NOTljcWtadHphWkpyOGc3VnpwYzNrc2cyR01McVZDTzhtZmdSdU9CZFNL?=
 =?utf-8?B?WEcrZll4WDF1MkdsVzM4RGZ4SE9TN2ZEVEQ4QzdOZDNTN3dSQ1NheGZCRmQ3?=
 =?utf-8?B?N1VXWjY2WkhoeDJFYzBLYy9qeXpTb2NmTUVWaVNsZUlIL2lzUU9jQlV1cXk1?=
 =?utf-8?B?QWU1NWpXNENBKzF6d1dMQmZNKzJJQmY3YXRCTEIvSlFUdXlIbURhbllsR3lB?=
 =?utf-8?B?c3RqTzQ0U0tadzFQbTZsOG9pUytqM2JrZGZoNGRVZHdmdjlBUlAwM2hEL1BU?=
 =?utf-8?B?THJ0Q0d1NVJMa09nc2lha2o0dWsyTDJ4blJhZm5sK2s0dGZmU1ZKcGQ4dWdr?=
 =?utf-8?B?aFRrcEsyOFc0b2ZOY2xITlI1NTdPbmFqT1J0bm54VHA2V2hyTnlUNnQrNGRn?=
 =?utf-8?B?bmlKM0pJZStGM0RHSXlBRTJwVmV5WHBCK0NWMDNZS3VqSFQwb25MU1dKN2Fx?=
 =?utf-8?B?enBMbVUxZVg4RUpHc3FIME5UVXB5ZFlGTDNaaFZrN3RtRUF4cmlDQVl3TWZo?=
 =?utf-8?B?VmdINm8vVzIxV3NsQzRuNjg5dVlIek9XY2hDeDVmWm5PUWl6L2dYMlE3bnht?=
 =?utf-8?B?RTVOYmdRN1BWRW1YY0pTeWhBK29OOHRuZlZPSGZUdk80eXNURTd0a1NtaTFp?=
 =?utf-8?B?MnFtSUdBSGN0Sk5seEVvbVhwQVMzRUxoR1pDSWk3THp5ZFBremU4c2VSTHBY?=
 =?utf-8?B?TmhBT1dWT0I1UTF1N3FzbVl5WHBuVnM5T01Mc295N2NwZ0l2RWJocHZ5L2xI?=
 =?utf-8?B?ajJsNTljQS9wRFFkRzl1Q0VVZUw2aHd5VEJybTNBbGw3d3ZqdEhuREFvZVhF?=
 =?utf-8?B?WEgwTlhFVXdtVDZjU3pBRGZNOUd3T3czOVZjVkNmckw3VTBDcFl2dHM2TTBF?=
 =?utf-8?B?SUpmaGtkVDBXZ0tnQzc2dmlORGdjSGRsU1dmWDRlNGZUY1d6RFp6S3VSZ1lK?=
 =?utf-8?B?ODh5eUVsVVBTa2FGWFlWNnlZRnJHMldBUmNSTDdDN0Jsb2NPZ2oyWC8wYVdE?=
 =?utf-8?B?MzBvbVhHZWxkYWxZRjV6Nlh1MkV2WlVsR1VGalNBaFJuMzY1VE1veDJEVXJW?=
 =?utf-8?B?RGN3RllWamZleWhjRDlQWFo1aXV2NjBZWXJ3N29GcFZaQTVxK2V1UG1PK0Jx?=
 =?utf-8?B?OGhON3JaVmxHQmxrVC8rWnBBRVV4YlNaUU1xa3VnSUhuSXJHNnowdWhIUi9h?=
 =?utf-8?B?UGlzNHdSTjhLZTQ3ZGc4SUk2RGxoaFNLcm1uVzFCRnB6SXAzSkdMNU5SdGFI?=
 =?utf-8?B?YlRsU3FUMHN3NmpRWTQxTnJrMWU1d0xRbHVuQStGTkwzZHpRRFpPV2g3YVhP?=
 =?utf-8?B?bU82emU1Z1I3ajlkQldBYTV3VWVyYVNEbW9lMHNWN2M2ZGp3UVFIa2lBbFZJ?=
 =?utf-8?B?bGxMbkZIQ2UwVnl1QU1XUFFzUEJ3U1pjMHMvODJaT0Y4M3JBbG1JQm1wWmk0?=
 =?utf-8?B?Y3FTaHlxWm56M2FHQnVkMm5LS09KWHlpYjdrdWM5eWhRNTRWZ2VFSnJUWTRC?=
 =?utf-8?B?d0tCcnRLZ1hKazRUdTAwa1prQkhFYTJJMlBHV09WMWF5Zm1RVUFteVY1N1BC?=
 =?utf-8?B?MEJvK3RFQ1hobXhsYlMyR0ozZlpFSmcrQVZZSWp4TWxFSTRkT01IbThVZXlr?=
 =?utf-8?B?Q2ZVUFE3MVZTR2s4cER3enNPTHdCbXdlSW56N201OU43RGdzTzJNTDJISEwy?=
 =?utf-8?B?bUxEZkpucXA5YmJnUytrZDcraEFicDI1aTZMOWY3bjc0Vk14T05zaytiZEFn?=
 =?utf-8?B?VlFmT090NTV2SzREUW50bFdEMWMyQmpWRGM4VHV4QmxFOTlUaUx1SXZ0NlNB?=
 =?utf-8?B?dlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 60525daf-0939-45a5-c806-08d9d4cb8dad
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 06:28:16.8330
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 QEpFxN5TQGfT9TNbz4ZV34F/sAq/rTts8HfwNCv+x0Vf3MOutnwiapKFPvu4fDOeqQCsIwYBOLY9lqXKrYuYNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5585
X-Proofpoint-ORIG-GUID: rAitI0SroZdq2GfmC_l2ds5a1QeoAHxu
X-Proofpoint-GUID: rAitI0SroZdq2GfmC_l2ds5a1QeoAHxu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-11_02,2022-01-10_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0
 adultscore=0 mlxscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201110032
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 06:28:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55794

SW4gdGhlb3J5LCB0aGVyZSdzIG5vIG5lZWQgdG8gcnVuICdiaXRiYWtlIC1jIGNsZWFuJy4gRGlk
IHlvdSB1cGRhdGUgdGhlIFNSQ1JFVj8gSXQgd291bGQgYmUgZWFzaWVyIGlmIHlvdSBjb3VsZCBz
aGFyZSBzb21lIGluZm8gb2YgeW91ciByZWNpcGUuDQoNClJlZ2FyZHMsDQpRaQ0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIFRvbnkgSGUNClNlbnQ6
IFR1ZXNkYXksIEphbnVhcnkgMTEsIDIwMjIgMjoxMiBQTQ0KVG86IHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0b10gSG93IHRvIGNsZWFuIHRoZSBjYWNoZSBmb3Ig
YSBwYWNrYWdlPw0KDQpIaSwNCg0KSSdtIG5ldyB0byB5b2N0by4gSSB3cml0ZSBhIHJlY2lwbGUg
Zm9yIG15IG93biBwYWNrYWdlLiBUaGUgc291cmNlIGNvZGUgb2YgcGFja2FnZSBpcyBpbiBteSBQ
QyBhbmQgbWFpbnRhaW5lZCBieSBHSVQuIFdoZW4gSSBjaGFuZ2UgdGhlIHNvdXJjZSBjb2RlIG9m
IHRoZSBwYWNrYWdlLCBJIG5lZWQgdG8gY29tcGlsZSB0aGlzIHBhY2thZ2UgYWdhaW4gd2l0aCAi
Yml0YmFrZSAtYyBjbGVhbiBwYWNrYWdlIiBhbmQgImJpdGJha2UgLWMgY29tcGlsZSBwYWNrYWdl
Ii4NCkhvd2V2ZXIsIGV2ZW4gdGhvdWdoIEkgY2FuIHNlZSB0aGUgY29kZSBpbiB0aGUgZm9sZGVy
IGRvd25sb2Fkcy9naXQyL3BhY2thZ2UuZ2l0IGlzIHVwZGF0ZWQsIGJ1dCBiaXRiYWtlIHN0aWxs
IHVzZSB0aGUgbGFzdCBjb21taXQgb2YgdGhlIGdpdCByZXBvIHRvIGNvbXBpbGUuIEFmdGVyIGRl
YnVnZ2luZywgSSBmb3VuZCB0aGUgb2xkIGNvbW1pdCBJRCBpcyBzdG9yZWQgaW4gYnVpbGQtcHJv
amVjdC9jYWNoZS9iYl9wZXJzaXN0X2RhdGEuc3FsaXRlMy4gSXMgdGhpcyBub3JtYWw/DQpJcyBp
dCBjYXVzZWQgYnkgbXkgb3duIHdyb25nIHJlY2lwbGUgb3IgaXMgdGhlcmUgYW55IGNvbW1hbmQg
dG8gY2xlYW4gdGhlIGNhY2hlIGZvciBhIHBhY2thZ2U/IFRoYW5rIHlvdSENCg0KVG9ueQ0K

