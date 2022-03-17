Return-Path: <Nicolas.Goubaux@dolby.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34763C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 20:16:12 +0000 (UTC)
Received: from mx0a-000fd501.pphosted.com (mx0a-000fd501.pphosted.com
 [67.231.152.235])
 by mx.groups.io with SMTP id smtpd.web09.1165.1647548171380020676
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 13:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dolby.com header.s=dlb21-02-2018 header.b=DNZX9I5A;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: dolby.com, ip: 67.231.152.235,
 mailfrom: prvs=60752e1aa7=nicolas.goubaux@dolby.com)
Received: from pps.filterd (m0000695.ppops.net [127.0.0.1])
	by mx0b-000fd501.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22HHBCLC023114
	for <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 13:16:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolby.com;
 h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=DLB21-02-2018;
 bh=oPJlhp+oFgUqbgM/+ulirQ3S8bXQmqzKXTHY2wHu06w=;
 b=DNZX9I5AhlomGqa3Fn0+mv+hcIr3wqAsCvUI+0SVDd4twDcItDMl60gFG6Psj9SbKzhq
 tYRjUjNRPxqU+lm32Zf9XlCll6kFWK4iss/fmyWKnW2OHZqrHYnBz+4hD0BNeHt2nOi9
 L3p6kvbeI+im69UXkz+spyrahhe9kEM5HIk3E3tD8wgcvxknRcWF8gqej2023w5LmPq0
 zmZc6tUdK+/4HCEXFpTq3xNmuqka0Tb/NizpRHOS0mChccYNpngyNLWOME8qxZDf/2WX
 hB2OTq7tST1PJUpBcz2BuPp7DaQ3pZMEcRpT1hSeyEW/ODtmkCH0KO6q8X8b6CvONDVr 1Q==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0b-000fd501.pphosted.com (PPS) with ESMTPS id 3ert6c1vrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 13:16:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anr7sA4I1lwL1qlVRrs/fZ6Tgxp38hjcHtAA58fGxnXRphkEI796aHVnOzy5JS/N4i8qPH4HOtaS6a+sK/AWoER4AQa0pcKSJRaNYKNFMIfmRFxtQ5D7UnrHXSucrAUb1enhcc5IZQg0JhX0AmRdxvtMXIsBhHYe5InJDx30cu6FZJoWRUMytiSIkvU1MhSs5eiMGCBttjyhtk+r8xmsIekQbB/iPCTbwxzrL0LvQGdYbKitwCocoCCP+Lq5Gaw/mYGeeZJ23+nTsd5vMu16XtqqaF6rYhncz+edpy78tbOrs+zSeQPDGFP3EdacH4Bqy4DZr0FkNUdZnALK68H3ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oPJlhp+oFgUqbgM/+ulirQ3S8bXQmqzKXTHY2wHu06w=;
 b=WuMVSFgU7XiULJlCSIOEvihRp+GYCaqrJdD6OYTwacGryy5mwV92mfxtk3+6HqVw+W7tZek/0bthdGGrbYeGYXx4ox29Yq9nzbx1ZwIolphs3uAd0xemV8TjIRHJrLiiSlmDT7zbs0XmGAVAevLlaKxUwuA234LSnVwzcadt0eKOG6+jJul2UpdXGh41IulfWwQbD+TG3xDYiuYnrTiCnv8YKSIyY67++sTHFxCyxMZPgxusNn6bmKP6uCvASHYXwhSx7quxQ+eyTEbUC2nMgCLmfg2+L5JMmyl5ZwXi/N0Pw3l+Jo4lcUW/Bz3seRc+QnPx3asIc78p9oHRCH8lfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dolby.com; dmarc=pass action=none header.from=dolby.com;
 dkim=pass header.d=dolby.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolby.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPJlhp+oFgUqbgM/+ulirQ3S8bXQmqzKXTHY2wHu06w=;
 b=ZtyRgcnXPia/GntPsqBWQgNVogaJ0yRBPnxqtn0+0CjpBfNnZFwrspcnxDtf/7XC0amYXgp/WBYJI5yZiaQEDJtFfboKqN7j8ZUw8EIVdHbKczmgscp+T7Tt/ve4zL3A+9f9F+uJOnLo9iyr+w0MMEicWS3FXc3ju4L42SDWCbE=
Received: from BYAPR06MB5766.namprd06.prod.outlook.com (2603:10b6:a03:154::29)
 by DM5PR0601MB3718.namprd06.prod.outlook.com (2603:10b6:4:77::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 17 Mar
 2022 20:16:07 +0000
Received: from BYAPR06MB5766.namprd06.prod.outlook.com
 ([fe80::d825:87ba:9309:6ae1]) by BYAPR06MB5766.namprd06.prod.outlook.com
 ([fe80::d825:87ba:9309:6ae1%6]) with mapi id 15.20.5061.028; Thu, 17 Mar 2022
 20:16:07 +0000
From: "Goubaux, Nicolas" <Nicolas.Goubaux@dolby.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: do_image_wic error with custom machine
Thread-Topic: do_image_wic error with custom machine
Thread-Index: AQHYOjvWvPS0YlKSVUapGaa/oeYHLA==
Date: Thu, 17 Mar 2022 20:16:07 +0000
Message-ID: <72A44A73-3648-45FE-BD66-8457619A4883@dolby.com>
Accept-Language: fr-FR, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.43.20110804
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5589f34-dc00-436a-5f0f-08da0852f88c
x-ms-traffictypediagnostic: DM5PR0601MB3718:EE_
x-microsoft-antispam-prvs: 
 <DM5PR0601MB3718DDB89A7D328DAA9E99A4E1129@DM5PR0601MB3718.namprd06.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 n3FSg08Qs0RjtwmZqL4xYW/LDsueyJjTYE49mnHZI0bg0mfPSBQEUF6QMgJqNLr7eL764gA6FopqbClwcVPMyJs7w/wFMX57Ja6a5J/H6u0ZmQt4Ocg7t3/PtW0GOPPYoBcXOt04Rser1InTiu+bgbKk/mXEyNrvQDyTK5Tq4BdvipTMKMvmUiiSnJJfpVj0xAMvbtrutRjB2zYxZ+ZWk5O7Q3AUSJ/lKq7WLsaKgvtK3DSQdC5x82s12yloOvP5Y1KTIWpOV+3Adb+QTzcaldPD4QDeGvj8gUFrB4jPa0DjBi3Zn0OnbgkF99JAE2ZPK3hMJDIZv/MiigQ09AokN/V21x0Sai4UCwpN8ex8LG/MaeOZTx5XoTOcGjBUiMw5n54zVYLnb1W5Qx35sVYYSoB6axkEtLzlSmSIhPsbM5qT4+Fw0IkWjHq9+WylTK4wI0PWsJ7tlYJOH/X5hl8OfiqWCr9UBvL0q/Qi8HWg/kMUYHM7Fl0zsEcAD0JEJ/PgaIrFlWeXWStQdNesUQRwL9XnCUbrIpN4RQlqFOaplYwnPoeqg372ixfLDKD86eeMsWmIhnHkbryJjKWi6RcM/J9ZLEmxo3o7LxLm2jxcprBksRBCKCPh521KAqx2fKpu7O7Te0mp68LFWWSWhCnv1HuizXU+5dkusGHXYQja5YmZHH1UtDx8EyGCSwC0+yE7QnjsavbYp5PWCy69k24GRS7n7cx7WZARQdRGcRGdDTJ2dedQzPR1lG0tblHur037
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR06MB5766.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(8676002)(186003)(26005)(38070700005)(66476007)(66446008)(64756008)(66556008)(2616005)(66946007)(76116006)(71200400001)(91956017)(6486002)(38100700002)(33656002)(36756003)(508600001)(5660300002)(86362001)(316002)(6916009)(83380400001)(8936002)(2906002)(122000001)(6512007)(6506007)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RVRqVDZkQnNiVGxraytaWUdteDNQNzdDMEsrWFhaQ2E3TXhNWjB4bEhwcTht?=
 =?utf-8?B?UWovd2xIenpvVW5ESUtQTkR0N2s0ZU9rbWxMWmRlU3RjS0JjeWZ3WFNWYlNt?=
 =?utf-8?B?ZS9wZUJLRG1vSHdNdmVqakdkQlp6Ukh1YVp2OU1mWTVsdGs4bkd4OUlzNHlW?=
 =?utf-8?B?amZkS2NiZ2JNVnEwZUZHMkRsRHlqMlhzM25yTmJKWjh2bkI5RGJEOUQ3MDZv?=
 =?utf-8?B?SUVKNkhWdnYyZis5L3licVJMakZLVTQ0Q2dtM2xhMFFDdlBFMUEzbEpTay9m?=
 =?utf-8?B?UDBkbHg5dnB5VU1jbWRUcWlIZ1NXSHhhaFBSTGtpa3lZYVprRXpaSGpyVUQ1?=
 =?utf-8?B?UkFZQ0d0N1Q5aitDNm8yZTBTellvd1NVLzlMUk1jR2FSQWdWZkM2L1NiR2NZ?=
 =?utf-8?B?c05yM3hkbjZIS0pTaVVZMDhmYUplN0cyalRaMHQ0YmgyNEdaVXprUnZYSWxH?=
 =?utf-8?B?M0lpeVZMNnNwdEZUZGVRejJzV0huZ2NTeXJQWHBrbncwM3drMmVNbzZ0WUJy?=
 =?utf-8?B?eWVSREtodnAzVHRVaXk4VzZLbWFkMWlhMW9xTzZpWEZkZGwyd2RZb0ZNdmRT?=
 =?utf-8?B?UzFaSnZieHl5WHNsbGZrQTVyT2Y5YXR1SEEwejh4cTFVazhuWU8vSlVKZUw3?=
 =?utf-8?B?WXpEdjJ1V3lZUU9nSk80dE95VXJXQzBWWmNuRlpxNHp2U1ljblgvZXRmVTFv?=
 =?utf-8?B?RkxqMUR1VDRJT2RkcklVZGNsOEpGN0htZUMxZFdWa1dWdkdhL29hNkxyZXhG?=
 =?utf-8?B?MURaaUNUcGt0NlUyTUszVHhtMWI0azhhc1hmdkdUZmVjVnY3czRRa0tXL25h?=
 =?utf-8?B?blc5OFYvejZSN29LbDd1SHYvMWZyeUxja0R1QnpldEp4dVREbUtONS9kcnpG?=
 =?utf-8?B?emlQV3Y2YkorYzZWV0VaTDVVNWZrTk9DMnpENEN5WkFncUNCQkZXYjBJOHpr?=
 =?utf-8?B?Z3RucWRCZkZaNy9BbEtLV3lsWmt0Zml2QWExbVlXdE9JMFhSTVIydEp6bi82?=
 =?utf-8?B?akx4TUZYUVh4bTBnWVF3Q2NkUEtEUUJWUUt2czFvbFNaUHBncmZHbTl4K1g0?=
 =?utf-8?B?cXI3QzdpV1d3em5jZkVDRXFxelBleUUwOGV6M1VTNTl0RERDeVFPeE5iTWRs?=
 =?utf-8?B?aWRLVTZwUEFVWWgxOWtoYXhVYklNZGRjNVZCaXJCbE1UQ09hcEh6dUtqeG9C?=
 =?utf-8?B?MUVoMEF6WnVDbXdNaEVUc1ZQYjN1Yi9ycHhWU2Jqb1dIak9rYnh2SlZOb1R3?=
 =?utf-8?B?QU9zZ0I3VlVSR1JJblZqa0REYzE4MTZFRHUxRjc4V2d4SUVFU1VYSFpLRFda?=
 =?utf-8?B?V09aTWcrTjhWaTBtMmk0ZEFKTGJZcFJoYzRvS05JZk5QUjZNQTFwOXJZZm9G?=
 =?utf-8?B?Lzl6RXBxUjRRZWVpOWVsclB4NFdpVExPamg2dld0SXUvNHp3emkzdjA3MWZK?=
 =?utf-8?B?cU8zb0YrVVMzcXVzV3BhQUY3SlNINTFqYWR0NjhZUENKTFNoZjVxYVVHYXcz?=
 =?utf-8?B?ZmE4NWZyb1hoNUIvcVR5RitSQTJvNUh6T1JiMVVGNXhsUGppcldob1VZMmtS?=
 =?utf-8?B?cXphTWlwV0kzZ3QrR1RvQUlIaUc3UDVFMkNRQXBjSFZwKzJ1dCsvVEZSUnBr?=
 =?utf-8?B?RE9JRy96VVA3YU9OZi9lbjRWSGl6anNGRkxPamNDVjQwaUo0M1ZuV0lVY2wx?=
 =?utf-8?B?MU53YkxtWlY0MWwyYk5ZOS80VFZKc240L0V2ejZBLy9JejV4N2JMSzdVUHZM?=
 =?utf-8?B?VmpPeHAzdzdvNitzaitwYUVMd1NqbDlSaUE0S3NnYTRUbzZNNTdjS3hNSEEr?=
 =?utf-8?B?OVRVU3RyUEt0dEZPNTJnSE8wNkZRNGpYNWZOcXZ1Y2srVDJ5U2ZIUXFSV09C?=
 =?utf-8?B?MGowL2lvR2RlOWFpa1Ftc1czVzROV2xJM0QwTDNJSVUwcnJ0am9ZcDlVckt1?=
 =?utf-8?Q?kXKOYZ07b/j4fi9j6RmlEvH/J175HGaa?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA581B72B18F5A44BB7F594C6582A15E@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: dolby.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR06MB5766.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a5589f34-dc00-436a-5f0f-08da0852f88c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 20:16:07.5854
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 05408d25-cd0d-40c8-8962-5462de64a318
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ujZ9ITNVKZUZfTsdMpCprm/56qoJjEIcZv8LPcLGIeCaqpusraISUKvCWB8iNNZA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0601MB3718
X-Proofpoint-ORIG-GUID: c_07fcZiP_ZQjgA1GJR-yp7PeEjZf_Z9
X-Proofpoint-GUID: c_07fcZiP_ZQjgA1GJR-yp7PeEjZf_Z9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-17_07,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 mlxlogscore=999 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203170113
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 20:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56484

SGVsbG8sDQoNCkkgd291bGQgbGlrZSB0byBpbXBsZW1lbnQgdHdvIGN1c3RvbSBtYWNoaW5lcyBi
YXNlZCBvbiBnZW5lcmljeDg2XzY0IGJ1dCBJIGhhdmUgaXNzdWUgd2l0aCB0aGUgZG9faW1hZ2Vf
d2ljDQoNCkNvdWxkbid0IGdldCBiaXRiYWtlIHZhcmlhYmxlIGZyb20gL2hvbWUvdmFncmFudC9w
b2t5L2J1aWxkL3RtcC93b3JrL21hY2hpbmUxLXBva3ktbGludXgvcHJvamVjdDEtaW1hZ2Utc21z
LzEuMC1yMC9yb290ZnMvdmFyL2RvbGJ5LmVudi4NCkZpbGUgL2hvbWUvdmFncmFudC9wb2t5L2J1
aWxkL3RtcC93b3JrL21hY2hpbmUxLXBva3ktbGludXgvcHJvamVjdDEtaW1hZ2Utc21zLzEuMC1y
MC9yb290ZnMvdmFyL2RvbGJ5LmVudiBkb2Vzbid0IGV4aXN0Lg0KDQpDYW4gaGVscCBtZSB0byBm
aXggaXQgPw0KDQotLS0tLS0tLS0tICBtZXRhLXByb2R1Y3QxL21hY2hpbmUvbWFjaGluZTEuY29u
ZiAtLS0tLS0tLS0tDQojQFRZUEU6IE1hY2hpbmUNCiNATkFNRTogUHJvZHVjdDEgQm9hcmQNCiNA
REVTQ1JJUFRJT046IE1hY2hpbmUgY29uZmlndXJhdGlvbiBmb3IgdGhlIFByb2R1Y3QxDQoNCkRF
RkFVTFRUVU5FID89ICJjb3JlMi02NCINClRVTkVfUEtHQVJDSF90dW5lLWNvcmUyLTY0ID0gImNv
cmUyLTY0Ig0KDQojUEFDS0FHRV9BUkNIID0gIng4Nl82NCINCiNQQUNLQUdFX0FSQ0hTX2FwcGVu
ZCA9ICIgZ2VuZXJpY3g4Nl82NCINCg0KcmVxdWlyZSBjb25mL21hY2hpbmUvaW5jbHVkZS90dW5l
LWNvcmUyLmluYw0KcmVxdWlyZSBjb25mL21hY2hpbmUvaW5jbHVkZS9nZW5lcmljeDg2LWNvbW1v
bi5pbmMNCg0KS01BQ0hJTkVfbWFjaGluZTEgPSAieDg2XzY0Ig0KUFJFRkVSUkVEX1BST1ZJREVS
X3ZpcnR1YWwva2VybmVsID0gImxpbnV4LXlvY3RvIg0KUFJFRkVSUkVEX1ZFUlNJT05fbGludXgt
eW9jdG8gPSAiNS4xMCUiDQoNClNFUklBTF9DT05TT0xFU19DSEVDSyA9ICJ0dHlTMCINCiNGb3Ig
cnVucWVtdQ0KUUJfU1lTVEVNX05BTUUgPSAicWVtdS1zeXN0ZW0teDg2XzY0Ig0KDQpXS1NfRklM
RSA/PSAiJHtNQUNISU5FfS53a3MiDQoNCklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiBwYWNrYWdl
Z3JvdXAtc21zLWFwcHMgcGFja2FnZWdyb3VwLXNtcy10b29scyBwYWNrYWdlZ3JvdXAtc21zLWxp
YiBwYWNrYWdlZ3JvdXAtc21zLWRldiINCg0KaG9zdG5hbWU6cG4tYmFzZS1maWxlcyA9ICJwcm9k
dWN0MS1zbXMiDQoNCi0tLS0tLS0tLS0gTG9nIC0tLS0tLS0tLS0NCg0KKyBCVUlMRERJUj0vaG9t
ZS92YWdyYW50L3Bva3kvYnVpbGQgUFNFVURPX1VOTE9BRD0xIHdpYyBjcmVhdGUgL2hvbWUvdmFn
cmFudC9wb2t5L2J1aWxkLy4uLy4uL2xheWVycy9tZXRhLXByb2plY3QxLXNtcy9zY3JpcHRzL2xp
Yi93aWMvY2FubmVkLXdrcy9wcm9qZWN0MS1zbXMteDg2XzY0LndrcyAtLXZhcnMgL2hvbWUvdmFn
cmFudC9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9wcm9qZWN0MS1zbXMteDg2XzY0L2ltZ2RhdGEv
IC1lIHByb2plY3QxLWltYWdlLXNtcyAtbyAvaG9tZS92YWdyYW50L3Bva3kvYnVpbGQvdG1wL3dv
cmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9qZWN0MS1pbWFnZS1zbXMvMS4wLXIwL2J1aWxkLXdp
Yy8gLXcgL2hvbWUvdmFncmFudC9wb2t5L2J1aWxkL3RtcC93b3JrL21hY2hpbmUxLXBva3ktbGlu
dXgvcHJvamVjdDEtaW1hZ2Utc21zLzEuMC1yMC90bXAtd2ljDQoNCklORk86IENyZWF0aW5nIGlt
YWdlKHMpLi4uDQoNCg0KQ291bGRuJ3QgZ2V0IGJpdGJha2UgdmFyaWFibGUgZnJvbSAvaG9tZS92
YWdyYW50L3Bva3kvYnVpbGQvdG1wL3dvcmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9qZWN0MS1p
bWFnZS1zbXMvMS4wLXIwL3Jvb3Rmcy92YXIvZG9sYnkuZW52Lg0KRmlsZSAvaG9tZS92YWdyYW50
L3Bva3kvYnVpbGQvdG1wL3dvcmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9qZWN0MS1pbWFnZS1z
bXMvMS4wLXIwL3Jvb3Rmcy92YXIvZG9sYnkuZW52IGRvZXNuJ3QgZXhpc3QuDQoNClRyYWNlYmFj
ayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToNCiAgRmlsZSAiL2hvbWUvdmFncmFudC9wb2t5L3Nj
cmlwdHMvd2ljIiwgbGluZSA1NDIsIGluIDxtb2R1bGU+DQogICAgc3lzLmV4aXQobWFpbihzeXMu
YXJndlsxOl0pKQ0KICBGaWxlICIvaG9tZS92YWdyYW50L3Bva3kvc2NyaXB0cy93aWMiLCBsaW5l
IDUzNywgaW4gbWFpbg0KICAgIHJldHVybiBobHAuaW52b2tlX3N1YmNvbW1hbmQoYXJncywgcGFy
c2VyLCBobHAud2ljX2hlbHBfdXNhZ2UsIHN1YmNvbW1hbmRzKQ0KICBGaWxlICIvaG9tZS92YWdy
YW50L3Bva3kvc2NyaXB0cy9saWIvd2ljL2hlbHAucHkiLCBsaW5lIDgzLCBpbiBpbnZva2Vfc3Vi
Y29tbWFuZA0KDQogICAgc3ViY21kWzBdKGFyZ3MsIHVzYWdlKQ0KDQogIEZpbGUgIi9ob21lL3Zh
Z3JhbnQvcG9reS9zY3JpcHRzL3dpYyIsIGxpbmUgMjE5LCBpbiB3aWNfY3JlYXRlX3N1YmNvbW1h
bmQNCg0KICAgIGVuZ2luZS53aWNfY3JlYXRlKHdrc19maWxlLCByb290ZnNfZGlyLCBib290aW1n
X2Rpciwga2VybmVsX2RpciwNCg0KICBGaWxlICIvaG9tZS92YWdyYW50L3Bva3kvc2NyaXB0cy9s
aWIvd2ljL2VuZ2luZS5weSIsIGxpbmUgMTkwLCBpbiB3aWNfY3JlYXRlDQoNCiAgICBwbHVnaW4u
ZG9fY3JlYXRlKCkNCg0KICBGaWxlICIvaG9tZS92YWdyYW50L3Bva3kvc2NyaXB0cy9saWIvd2lj
L3BsdWdpbnMvaW1hZ2VyL2RpcmVjdC5weSIsIGxpbmUgOTcsIGluIGRvX2NyZWF0ZQ0KDQogICAg
c2VsZi5jcmVhdGUoKQ0KDQogIEZpbGUgIi9ob21lL3ZhZ3JhbnQvcG9reS9zY3JpcHRzL2xpYi93
aWMvcGx1Z2lucy9pbWFnZXIvZGlyZWN0LnB5IiwgbGluZSAxODEsIGluIGNyZWF0ZQ0KDQogICAg
c2VsZi5faW1hZ2UucHJlcGFyZShzZWxmKQ0KDQogIEZpbGUgIi9ob21lL3ZhZ3JhbnQvcG9reS9z
Y3JpcHRzL2xpYi93aWMvcGx1Z2lucy9pbWFnZXIvZGlyZWN0LnB5IiwgbGluZSAzNTYsIGluIHBy
ZXBhcmUNCg0KICAgIHBhcnQucHJlcGFyZShpbWFnZXIsIGltYWdlci53b3JrZGlyLCBpbWFnZXIu
b2VfYnVpbGRkaXIsDQoNCiAgRmlsZSAiL2hvbWUvdmFncmFudC9wb2t5L3NjcmlwdHMvbGliL3dp
Yy9wYXJ0aXRpb24ucHkiLCBsaW5lIDE4MiwgaW4gcHJlcGFyZQ0KDQogICAgcGx1Z2luLmRvX3By
ZXBhcmVfcGFydGl0aW9uKHNlbGYsIHNyY3BhcmFtc19kaWN0LCBjcmVhdG9yLA0KDQogIEZpbGUg
Ii9ob21lL3ZhZ3JhbnQvcG9reS9zY3JpcHRzL2xpYi93aWMvcGx1Z2lucy9zb3VyY2Uvcm9vdGZz
LnB5IiwgbGluZSA5NiwgaW4gZG9fcHJlcGFyZV9wYXJ0aXRpb24NCg0KICAgIHBhcnQucm9vdGZz
X2RpciA9IGNscy5fX2dldF9yb290ZnNfZGlyKHJvb3Rmc19kaXIpDQoNCiAgRmlsZSAiL2hvbWUv
dmFncmFudC9wb2t5L3NjcmlwdHMvbGliL3dpYy9wbHVnaW5zL3NvdXJjZS9yb290ZnMucHkiLCBs
aW5lIDU3LCBpbiBfX2dldF9yb290ZnNfZGlyDQoNCiAgICBpZiBub3Qgb3MucGF0aC5pc2Rpcihp
bWFnZV9yb290ZnNfZGlyKToNCg0KICBGaWxlICIvaG9tZS92YWdyYW50L3Bva3kvYnVpbGQvdG1w
L3dvcmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9qZWN0MS1pbWFnZS1zbXMvMS4wLXIwL3JlY2lw
ZS1zeXNyb290LW5hdGl2ZS91c3IvbGliL3B5dGhvbjMuOS9nZW5lcmljcGF0aC5weSIsIGxpbmUg
NDIsIGluIGlzZGlyDQoNCiAgICBzdCA9IG9zLnN0YXQocykNCg0KVHlwZUVycm9yOiBzdGF0OiBw
YXRoIHNob3VsZCBiZSBzdHJpbmcsIGJ5dGVzLCBvcy5QYXRoTGlrZSBvciBpbnRlZ2VyLCBub3Qg
Tm9uZVR5cGUNCg0KKyBiYl9zaF9leGl0X2hhbmRsZXINCisgcmV0PTENCisgWyAxICE9IDAgXQ0K
KyBlY2hvIFdBUk5JTkc6IGV4aXQgY29kZSAxIGZyb20gYSBzaGVsbCBjb21tYW5kLg0KV0FSTklO
RzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNvbW1hbmQuDQorIGV4aXQgMQ0KDQpFUlJPUjog
cHJvamVjdDEtaW1hZ2Utc21zLTEuMC1yMCBkb19pbWFnZV93aWM6IEV4ZWN1dGlvbkVycm9yKCcv
aG9tZS92YWdyYW50L3Bva3kvYnVpbGQvdG1wL3dvcmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9q
ZWN0MS1pbWFnZS1zbXMvMS4wLXIwL3RlbXAvcnVuLmRvX2ltYWdlX3dpYy40MDI2OTQ1JywgMSwg
Tm9uZSwgTm9uZSkNCkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS92
YWdyYW50L3Bva3kvYnVpbGQvdG1wL3dvcmsvbWFjaGluZTEtcG9reS1saW51eC9wcm9qZWN0MS1p
bWFnZS1zbXMvMS4wLXIwL3RlbXAvbG9nLmRvX2ltYWdlX3dpYy40MDI2OTQ1DQpFUlJPUjogVGFz
ayAoL2hvbWUvdmFncmFudC9wb2t5L2J1aWxkLy4uLy4uL2xheWVycy9tZXRhLXByb2plY3QxLXNt
cy9yZWNpcGVzLWNvcmUvaW1hZ2VzL3Byb2plY3QxLWltYWdlLXNtcy5iYjpkb19pbWFnZV93aWMp
IGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCg0K4oCUDQpOaWNvbGFzIEcuDQoNCg0KDQoNCg0K
DQoNCg==

