Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E089C47074
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 08:19:08 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.80])
 by mx.groups.io with SMTP id smtpd.web10.8650.1700036344438109581
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 00:19:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=Edv/qmc9;
 spf=pass (domain: siemens.com, ip: 40.107.13.80, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzWNI9cXd2IYGgZQOWY7yKF4k6mbKe0NoUZGJHTsIt/+TViq5IIprDeOY3AwMQCN8bbNQdiXp+z7tuG+43gB96Xkr/+Ku+EGwFy3meM0F+YDB/jdDCw1SOEe/NSFIr90D/XzH+TfeblPSpjAj9X4uuVQuYySxnnD8+N7YzAc6HIdUSjzbjtYaK3QmJP+P0MkdpXq2H+I6dtP7AT7QuWArZF31YyGwVUugmQm/0iAnjpXD6kJOdYVp+GYdXEuh6ojdKDdfRr2v29+qd0CHyNNBnrTZfRsIbgcdV1fCVSVkvlpHAYu/Ja9NQNhm6dSrCgL3TmGoYU4B5VqIJxDVem2Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K+PRzMMvKUKZoUJUMx5s4VPKk/K9ZRA7iTwheXyZF3Q=;
 b=Bg86etnygW6I0ZdTt16K3PWSSh1pbzQ9djd4zMnRFU7buWld0dLEkdctUiYQUNYmVNDf9jZR5H00fuY/UjbhX1BNbiPJlIMInlvfnWf9qE0EutVxwXK/4Dt3IfP5VWBVf2Y5LxverethJk3Ihq+VhfUZE7+n8au0JiuBxSLEcMtpkYGa4Ucl4MJpImbKhvw7ZYPxpRnf2H57lXYuf707uUPEU9F4AS9XHEO5Xz0qSAtw/MUT4rKD4+SFNw/EP3qv+d5rUyMFsrDVoZUfKJ1cSJWa63bdRhdKCTKkZ7WqX/+/sipeS5WYEWGaaQpXXzC56r0iU4KQHnUkxyiklrzuzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K+PRzMMvKUKZoUJUMx5s4VPKk/K9ZRA7iTwheXyZF3Q=;
 b=Edv/qmc9DUuvLqn+vdGp1ieVWV34jKU1ARSI+oqfL3Ohy4oe4fCNwJ8t9duncJeYLZHtBsJR6mxIFdGUZMMTaDXYP9YezBcVxqGrTCTEX1mSpF17YrFWXhUpn0mQPORm27/Cyd+beBBrrueRJNoGT4mNjN19jUV5mwIQLJy+j/mpJP6T0OoSFQl64pgeJQUPsWBsrBBBsHdXzHmCR3/RgSR2QvAD0/mjUxAIUirYG/RCUsA1cVY0PDaQRkEEKgvcXmhauGsvnRZ8NWqsuYR9qdy8JtTI6MeiyWtNHxRhXgtPjUf3iIdRPg/4V8VRdRZNpfrVJK3Iqli4QGSYenktXQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by GV2PR10MB6406.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:c0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 08:19:00 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::238a:d0f9:cdcb:d066]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::238a:d0f9:cdcb:d066%3]) with mapi id 15.20.6977.033; Wed, 15 Nov 2023
 08:18:59 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "hassanchattarki@gmail.com" <hassanchattarki@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Unable to run arm 64 binary on arm64 machine
Thread-Topic: [yocto] Unable to run arm 64 binary on arm64 machine
Thread-Index: AQHaF5QrAAeHieYljUmObeWIRzy66rB6/raAgAACIhCAAAEDAIAABnYA
Date: Wed, 15 Nov 2023 08:18:59 +0000
Message-ID: 
 <AS1PR10MB5697749C84DB6C88747A4DF1FDB1A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AS1PR10MB5697C6E14E296DBA7BA9D0BDFDB1A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
 <2967.1700034674457655770@lists.yoctoproject.org>
In-Reply-To: <2967.1700034674457655770@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=745ae0b9-e117-4027-a696-3be0638eab33;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-11-15T08:14:21Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|GV2PR10MB6406:EE_
x-ms-office365-filtering-correlation-id: 0e25cee7-7b3d-4dc3-bad8-08dbe5b384d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9oHzbGMLeCz74jBchGHdvsarAV8CoKyjO1gqTFbJln8gif5nr4+N78JZxlafrCBn6Rp9zz7PSXKQUnm8fGuQUgLs6ftpILT56lY89AMRsjhmS7peGCiGWOjbqHo6FfDQ3xLoBileoV4ZG5V4EIelL1R+D6weJkfwqs5mFQB3Hmtrq0THUEedVoJgLWjCqKhdZ/Afnp+Ld45IBgiH86aghYIJJH86vnkOKzMQXzWmmEyS05P/AaOxuGg6VZ1L9oeEoguSHoBXRGJhcBjwp+BIYN3Ov5yaYaXgQFRQeCp9Y8s9jX6FBh53SRuRJoryrxMJ/Wq9y47EbgUge8Pr+3c/DnIKI3fRYzer66DxibONm/okW5IZUCFrIX7P4mfAn80zjmtAKZ5X8ckRiDL+uyJTMrOqvnWyR78duf358RnnCuOouve5oUiz64Ht/zpUzqw9BrG+tvNYMhGW6l7dWhJMRchV2wje1h8jacRoYFaWXfQ1Gw8ibfrZqeJV2V0txzNx/80YFOqU+uN/jk0WLtT8WWh+89SAy7VjNcnmAIlwKE4m6pT4jo0kdTV/9TJR2q+w+NTrhLV0dVmmBS3HfxSjDDR41APp1misGfkciQQ/zTA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(71200400001)(52536014)(478600001)(8936002)(8676002)(9686003)(7696005)(6506007)(66946007)(64756008)(66556008)(110136005)(76116006)(316002)(66476007)(53546011)(55236004)(66446008)(38100700002)(38070700009)(4744005)(2906002)(41300700001)(33656002)(26005)(55016003)(122000001)(83380400001)(82960400001)(86362001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RDRrc2hJNTlITUhHaHhiV2JZSjJ6TlRrcll2WUI5TE9GZkR6eGVETGxhZ2h4?=
 =?utf-8?B?T3dSNDlYZ3RSckZNbHlzM3h6NVNVVlVmKzA2bWR2VityaExCeUJRaVNZT3pM?=
 =?utf-8?B?T0FmZFFIYTAyRXkzK0RsWkJMamtaVGdkUnM4R2hwZnJTVmVVQlVQYkd2U2x4?=
 =?utf-8?B?OHJabUNVaHVwcmZiUUpMWkg0UGVMSmFaRk1DNVdaTEJ0aGVQNUVjb1NiY0gx?=
 =?utf-8?B?OTR2TVNtSnV1YWNlME9BNkFiTGw2TjRJVTVFL3FIVElrTHE2Qm1ZczZ6SHc5?=
 =?utf-8?B?a2FJY1JIeWJPUjRyZk13eXZWNUdHeTdkWE5jT2xxcGZBODNxdlFsekN4QzBH?=
 =?utf-8?B?SFNzRkJEM3BNQTFwaVV6Q0pKMzRoT2Vyb1duNXBxOXBNL2l3ZEQ4SlRQWE1R?=
 =?utf-8?B?dGs0dTRlWm1RczJlR2NoMEdwOGluRnFTWmhiSmVzaXlUTHJoaVpQWVR3OWYz?=
 =?utf-8?B?UlZJejVvVFFHTXhsaFY0eFNIWmJkbzFUV3dNcHJDUTgwUlJadE9PZ1RIUGpR?=
 =?utf-8?B?NXVvMklyMXcxeVQ1NzFKM2pzY2RqbXRMK0tTZkVsaXZwUnF6QldZUTRDN3Zp?=
 =?utf-8?B?QkZyYXYxQXZQTndXdUQwWVlQQjRwbUJJYjVXbHhhOStLSzRSK2wwYSttVVZn?=
 =?utf-8?B?TWpLc1l4aFlBbytqMGIwU3NtZzY1TGNkNG5jM3BQWUVaSmVnSnM3ZzM4TWpx?=
 =?utf-8?B?bzNNWW5lS25IeVB0ZTF5WDlaZUFaalg4YVRrV3BNQnRQbUEzbnpOa3hWOXBs?=
 =?utf-8?B?VTFZd29wRFRocngyS1gvM1ZUUENWdFZMTStjZWhSSUhTcGRjSW1hbEIvWnRG?=
 =?utf-8?B?QUVjbTdMOEFyYTdMbVUzbTJ4dk5HQTVoZlNuZklqTU1YRmhIcUQwSmZYWGd5?=
 =?utf-8?B?SHQ5T2ZwbXM5dUx0dlBNdmVPaG14bmZOL1RSOFZtRHhRNUxmUXhteElHOHVE?=
 =?utf-8?B?aW05SDhkcllhdXRtK25nbVJuTnp2V3oyNVFsYzlnSFlMUGJsaU1tSlY0M0NI?=
 =?utf-8?B?Wm1hWWs3UkUxYkhpRDdOUmdlN3dBd28zMGY4Z21XbHcxdVBmRGx0RE8wYU9J?=
 =?utf-8?B?b2ZMRGovSmFzWWpUYkxMV29WYVBzRFpOckdGOGk4bFBJeXNKU0NPR3ovLzl0?=
 =?utf-8?B?Tno0cldpYklNUmU4NUpYZHo5c1RLWDBQZ24reXAzQ2UwMWZuc0VMeUhZQkl5?=
 =?utf-8?B?Q0xYMENjeWlxb0QzVGUwU0ZXM0d6VlVoT1lyV3Erc0VjT1VnMVYzT3RXUm9U?=
 =?utf-8?B?bUF1WHVwREFjNG8wWG9NbVZ1ZkdTZWJOTGtxU0ZDeXJhOG51am5RMS9Ucmh3?=
 =?utf-8?B?dndYbEg0bzRjeFBkbzdjRVlyOGpQR1pGZ2hUVlhFbHhZb2t0eXI5a1hnangx?=
 =?utf-8?B?NHZnemFWdHBnTktheVc5c2wxb1Y1R3orZU5sdS8rdHhGMm1JRHpGdXVmRTNn?=
 =?utf-8?B?QVFBU0NGOG5RR2x3aDJDNmROMXhZWEp0emNYRzlJR25xbVRYbGVURXFJVVBs?=
 =?utf-8?B?S2ZjZW5Gdi9SYTB1U2lnZTN3VzJDQVI3RHdvL3l0cHp2OGN4bXBWbHVmb1dl?=
 =?utf-8?B?Zm1lZFp1aXpPbVVSbGllUlF6OVNrSm9hSWF3S21oZUZoOE9BVWlqRG9GZG43?=
 =?utf-8?B?UUZSb0RnTThsYnhCdnhTemlOcEROZWxOUlFLT3RqQVJYNEx5cWJ1REViQXNN?=
 =?utf-8?B?dUlSWmw5TnY4bEpDMXkyR1FrcTc4NGJ2amhEK2ZHZFBVYXhlNG9mU0xFRFdj?=
 =?utf-8?B?TGErNmdDWitkUFFmcXBFQXVFbTdVTlpKQ0NzdWhqUVdPOFZpaWFlYWVjNXgr?=
 =?utf-8?B?Zkg5QnNrZG9wWEdmZmJSMjJsR1J6ZXR1d0R5TmZKcFpPTUpQZEhrak9MaHVl?=
 =?utf-8?B?ZGs0akZxQVBqWlFyd0FWSzkwQ3FqeVF1THFiMTM0M0JnQmdXRlVjekJoWjk1?=
 =?utf-8?B?aGhud3Bpdkh3MUlQenFIYlhXU25Jb3ZqSG9uL2N5VkZQVk85eHArSjdGbzVo?=
 =?utf-8?B?MzkvRUdvK2FtY29ERW1PbkROakZxNHZIY09aUkx2ZmdIMmt1MDg3eTFEZGli?=
 =?utf-8?B?cVhoZDhpN1lEeHZFcG5iRTVVeTY0TStuUjFiWGNYdzd4Y3MydzlsSFdYcjc2?=
 =?utf-8?Q?4UKgFez0IHc6N8ppl95s4jYbw?=
Content-Type: multipart/alternative;
	boundary="_000_AS1PR10MB5697749C84DB6C88747A4DF1FDB1AAS1PR10MB5697EURP_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e25cee7-7b3d-4dc3-bad8-08dbe5b384d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 08:18:59.2930
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wZcI/98Mk8b96fo4O5MmI4zTMBNOIcp6tDPXx3bqQj+SOqxzeDtNfjYLNtqq2Tfautp5A2Pv2LFnbfKihhrhSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6406
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 08:19:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61693

--_000_AS1PR10MB5697749C84DB6C88747A4DF1FDB1AAS1PR10MB5697EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgL2xpYi9sZC1saW51eC1hYXJjaDY0LnNvLjEgKGludGVycHJldGVyIGxpc3RlZCBpbiB5b3Vy
IGZpbGUgY29tbWFuZCBvdXRwdXQpIGluc3RhbGxlZCBpbiB5b3VyIHN5c3RlbT8NCklmIG5vdCwg
dGhlbiB5b3UgaGF2ZSB0byBpbnN0YWxsIGl0LiBIb3cgdG8gZG8gdGhhdCBkZXBlbmRzIG9uIGhv
dyB5b3UgYnVpbHQgeW91ciBpbWFnZS4NCg0KUGV0ZXINCg0KRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9m
IE1PSEFNTUVEIEhBU1NBTiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU2VudDogV2VkbmVz
ZGF5LCBOb3ZlbWJlciAxNSwgMjAyMyA4OjUxDQpUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gVW5hYmxlIHRvIHJ1biBhcm0gNjQgYmluYXJ5IG9u
IGFybTY0IG1hY2hpbmUNCg0Kcm9vdEBzZS03MDRhMGVmZTg1YzQ6fiMgLi9oZWxsbw0KLXNoOiAu
L2hlbGxvOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQpyb290QHNlLTcwNGEwZWZlODVjNDp+
Iw0KDQpUaGlzIGlzIHRoZSByZXNwb25zZS4NCg0K

--_000_AS1PR10MB5697749C84DB6C88747A4DF1FDB1AAS1PR10MB5697EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBp
biAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1
NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5JcyAvbGliL2xkLWxpbnV4LWFhcmNoNjQuc28u
MSAoaW50ZXJwcmV0ZXIgbGlzdGVkIGluIHlvdXIgZmlsZSBjb21tYW5kIG91dHB1dCkgaW5zdGFs
bGVkIGluIHlvdXIgc3lzdGVtPzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
SWYgbm90LCB0aGVuIHlvdSBoYXZlIHRvIGluc3RhbGwgaXQuIEhvdyB0byBkbyB0aGF0IGRlcGVu
ZHMgb24gaG93IHlvdSBidWlsdCB5b3VyIGltYWdlLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Q
ZXRlcjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEg
MS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
Yj5Gcm9tOjwvYj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAmbHQ7eW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyZndDsNCjxiPk9uIEJlaGFsZiBPZiA8L2I+TU9IQU1NRUQgSEFTU0FO
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwg
Tm92ZW1iZXIgMTUsIDIwMjMgODo1MTxicj4NCjxiPlRvOjwvYj4geW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW3lvY3RvXSBVbmFibGUgdG8gcnVu
IGFybSA2NCBiaW5hcnkgb24gYXJtNjQgbWFjaGluZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5yb290QHNlLTcwNGEwZWZlODVjNDp+IyAuL2hlbGxvJm5ic3A7PG86cD48
L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4tc2g6IC4vaGVs
bG86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rvcnk8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnJvb3RAc2UtNzA0YTBlZmU4NWM0On4jJm5ic3A7PG86
cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0i
bWFyZ2luLWJvdHRvbToxMi4wcHQiPjxicj4NClRoaXMgaXMgdGhlIHJlc3BvbnNlLjxicj4NCjxi
cj4NCjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_AS1PR10MB5697749C84DB6C88747A4DF1FDB1AAS1PR10MB5697EURP_--

