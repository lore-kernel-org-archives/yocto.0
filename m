Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6047CC433EF
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 08:59:45 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.83])
 by mx.groups.io with SMTP id smtpd.web11.20977.1641977982512424177
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 00:59:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=HtuGNb1+;
 spf=pass (domain: optimeas.de, ip: 40.107.14.83,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XE6maqHVLhkwp822W3nqkabhPhvpzMyiPTWzzjkgb1i5VXImS7PkbEm/jCHvzyYoMpKPR+MSJYhMKFjUhFbAHRw0OYZVPDDP5mu/5dZuohhAVbmpYwSnbO/YHGK2fbmLJ/DxS8ZTYXCf3EBUWWyB8JfVlk0ufKwUS+EzMcArniB/uMR3CkmvAVq1PZV2CjGnDhkHKywcP0++/4TQTVCuczmZ7/Q/Hx1JlZN0BIm+nIuSrpQ3v4RtosVYutCSrqe6yosv82qEPYnllDbPzZmXxp4gaTrRtL6L66uQcBsireAxlutxXJ7qhAXOe36SbR31Vk+/1K959tnszH5CDHghjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Go0TjSeHWfltDtXgHQMz9z1bnfjvdC+oMbuBs5TtWMM=;
 b=dHwMJiLZnkeBjS9wbFmpv35CyxIO24zLj4EJGtYgZtUjiZmlzHAPHl2Dhy+D9OV3iYpWiqE19EW+JAr7+MMWPkfN1IbC9HiPaFlCuvbWS4U43HFogZBHLSjMQOnB1YpqgHnRCxwZdF+w9ZzQaBY/TVxqMgg1Kli35lNF4YVDOxLCAyaG0r9KVWXyn+fmKsZvyl/7IL/Bryl89Tl7OZBO31FPVpdkH26VKieOu1iiGWqZhUo0frrx6dVA0bvt1oX/wZEN2BI1ws+0RAtFwkG4TpH2YIL50c+npdIeGUEBkXwa8LS0Yyyboewf4V9AoHdPUQCrEQqmMeszCKYI+js/AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Go0TjSeHWfltDtXgHQMz9z1bnfjvdC+oMbuBs5TtWMM=;
 b=HtuGNb1+cfKZhYMx9vCY18ylvdxmftEJ3ThuuFi0IBM9ffg+6FFWMyQ4ycU9IW0EomyNtWyp0C75dVqeWBdRJSi0BeSqWrZRXkC5NEnbqKd9C2W7+HffY3ZOActg0Rsf5D680VQHmdq4pXSbDSGJYcPfeR+poZHhsrfxJHhsWg4=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR10MB3983.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:138::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Wed, 12 Jan
 2022 08:59:37 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b%2]) with mapi id 15.20.4888.010; Wed, 12 Jan 2022
 08:59:36 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "jp@lebel.pro" <jp@lebel.pro>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
Thread-Topic: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
Thread-Index: AQHYB1e5taWx2RpcBkuTc05ViV3eE6xfE1vQ
Date: Wed, 12 Jan 2022 08:59:36 +0000
Message-ID: 
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
In-Reply-To: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f09472a-c1de-4039-e3bc-08d9d5a9dbd5
x-ms-traffictypediagnostic: VI1PR10MB3983:EE_
x-microsoft-antispam-prvs: 
 <VI1PR10MB3983AE6BC5FAFB0DE57C3D7399529@VI1PR10MB3983.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vl3uD4xRpFPsCB1dvtn1tgoI1mQb2fK1hBHHh/M2SUh5bz5d5cVTYHr7JuWg1P3fSh00/K+Vhr6HkKod1MJk57h1d1zPcRO7Cu1jSsHh3DTEe5hL3F/OeBZWW7smzmQg4xU54/ijAWWCpckVVo5K8IVlD09X6/nUUJliMSeswCv3g06Bosufvmvng7C58TR8dcjt/A+J3H9f+clZ1VFx92OmxPzHo72ACwE7D+rxYYkZazDxq2SvKxyWweuTH0xdsGCMh6Gk4LNQXoneNCAJ5HoJ4kX9DvBrhJTjkGY81zTY4NxTNwooVwnElUnBKr1TgfXuUPjaIX+j2EEE226NSY5qjBoXOPkTWp5pOIOWzD4fG+HRo/jSGE8DtlLRiP81CPbR6tYl1Qw8soCVh7neZielN1fjuv86rxnJ296dJ5S0T+wlvPCUdGrRiVF2++XyTQ3Djst9clPZ/yMmzyJZgnL6Vx6YtXTuhk9Scm3J2kjI0Ol9BSm+BmmB6sYj0KqVTExGLfW4guVcZB38DsWw0Cu+uTir9189d90O0HSNPHUWiwm1r1Zqp6LgJDbWVhuS0I/PzsoqnyiRM5AFD5TJguIg+LV7xuiIwrH+SznhDzd2p+bXSokf1VQmA4FCRue80WVE5Riw+HbsqpHsAp1qaVtuPgIsYNjW6xUG+Ji3CzeeRqlznAly5dQxArc12homKx424AzrDGkis6vxfj78VWwUDiqdGomwZb9Vc27TyHTVovAc3KLccPldXqptJN46gJ8a9QtDk5xkeQduMOrq5hMFdqzNBMhQA20jymIiTRE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(396003)(39830400003)(346002)(366004)(376002)(2906002)(55016003)(110136005)(33656002)(19627235002)(508600001)(6506007)(76116006)(38100700002)(7696005)(83380400001)(86362001)(966005)(166002)(186003)(9686003)(316002)(44832011)(5660300002)(52536014)(66446008)(64756008)(66556008)(66946007)(38070700005)(8936002)(8676002)(122000001)(66476007)(71200400001)(4744005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?c1VSY2pYZTdzem0zdzkvKzVGR2lxYis4N05ydVh5UDMxcFJZY29iUnd6NXhY?=
 =?utf-8?B?ajF0cnJLa0FNeTFkNm02dStKaStiMzhHUXRLbFFicFpIUjBXYXVOQURzR3Fz?=
 =?utf-8?B?TmxDMjFTM3hvWWdrem4yU29vS3VrMUVkbnU3QWJCbUxoSWVUelZGZjRFczZu?=
 =?utf-8?B?UzYyL281U2ZjSWd3SVdNS1c2YzZXV1NzWDlwcDRnU3FlYUR3Tkl2bWZTbWFn?=
 =?utf-8?B?NzYyNGF4ampCQzZKdVRzZ3A0TUVGSjMyZ0JmWkFLVWowOUpnTStWNTFLSUNa?=
 =?utf-8?B?OGJ2R2xVZXE3OER6SklnQk1PR0lGUXFwOHVBeGRsZFFrdm1LM0lUdkpPY0li?=
 =?utf-8?B?MTZZY3MvaVB2Y0lHNngrd3NNVm9GTjZ4T0kwMlpHM0IwVGRzYzNMZmJ5ci9a?=
 =?utf-8?B?TDZTSTZZNzJJR0c2NkJVUmgvQk8yalFFb0VHNVdyUndmSzRrMitYTFgxb1c5?=
 =?utf-8?B?WER5TTZQNzlpSTM2bUZncDFwL3djVDNFZytSVk5HazJzMWtaWW50MnEra3h4?=
 =?utf-8?B?Q1Z2WTZwOGpWdm5HZC9XS3grNnVFWmNJODBqR1RRa0NjTVVaVzlVN0k2WldH?=
 =?utf-8?B?cmpjTTRtS2QrM0h1SjljS2ErR2pIa0VRbWRaaFNvdFpNN0Y3MysrcHlaenFB?=
 =?utf-8?B?VzlXcnBjTldheDlGUTNHM2lTWW5PVHFUa3U3dkdqK1dzYlNKWkN2SjR2cFRG?=
 =?utf-8?B?dkkxbHl5VWJjSlpPcHc3TC9tekxTQ0I0KzN6b0VHU20vaVFiYkcvbGU2ckxp?=
 =?utf-8?B?cUdpcUZ2eFgyUHMvdUxOVnZ3aWZzVXRkdFdjbTBQN20wQlVhM3V0UDh4Z2Vm?=
 =?utf-8?B?eFJJRURJbWJGVG45Y2dua3Y4ZWVvUGxsaTVsOWJWUFFiZ1ZMdGw5cDdPQ2Vk?=
 =?utf-8?B?UVRhQ1RlVUpocTBBVUFaaFNVQUJmQ0hlZFdLUms2WU5oOFZSSUZoVEJlVDZT?=
 =?utf-8?B?WFJSOEhJQUg1TFl4WkEzOWV3M29ZL0tYMWE1OWVyNVltWXdYVVhiT3l0endQ?=
 =?utf-8?B?MndGdWRyN1ZPNXNiZEFrRlNqNi9sOFhCeFlsZU0wVzZCRzFNV0o4QkhaL0dU?=
 =?utf-8?B?bkxiQkxORGN5S29FZ0tGQmFkWEkxbVQzeVhVWW1INCtLTjhSYjVoQ0FXN2NX?=
 =?utf-8?B?UHFCMllieWZWczFsWGphTE5hVCtFbnNVKzFSZU1ub3FlbjFudmtDZkhsZjVp?=
 =?utf-8?B?ZzF2MmIvbGdkN3RmRnRzTmVJRTF3Ykxzek5jbDdGZ0ZKdldQTjNXQjBqS3Zy?=
 =?utf-8?B?cmpabmdURWlKOEJuVWozTmpNQWIyM0g1V2RZZENqNldMdzVSWkQ4R3FMbUJ5?=
 =?utf-8?B?U290UHdYT09lUlczNE1QZDVSSEp3V284R0NsR296d0I2Q3NUbTMxd0NGcUUw?=
 =?utf-8?B?Qkg0K0tDU0dJckJmakE5eURZcXF2MkpqSGZqWE8rMlpCSlh2cHZyRTZNVXEx?=
 =?utf-8?B?R2lack9JVGlUYTZaaTlLdnFDd3NBOGtEcTYrK2FiQzIwam1oUWw4TUpVNGhQ?=
 =?utf-8?B?ZEFwVEIyRDhrcTZqUVM2RHUwbUViODRJRWx1WEVkRUFUWkJaN2hOYzFRQ1Ir?=
 =?utf-8?B?YmQ2R3ZzNkVZaFFiemdCcGkzTHFpM3pzL0ZwZ2E4L1FLdkpabWxaMEhHb0k1?=
 =?utf-8?B?V25jUytQVnhTS01kakt2T1Y4bVl1N2Yvb3JaR2xJUjFIb2E2amxkdGFiOXo4?=
 =?utf-8?B?RE13dWh4ZStsMmtleVRGaG8zL1Vqb3RZMTNYMzdkM1dwZjdveFhiZ25QaTJm?=
 =?utf-8?B?YSs2eFUrSDFrSjJlRng4YXFYNm5TV3cyUmp2bURyTEJFUmNKV2dwUzRUTFZV?=
 =?utf-8?B?eVM1dFFHWk4yREVQcDNSMmdJS0NLN0J2WStOMlFpdW1ONS9VaFpzaFVYaStX?=
 =?utf-8?B?czRhNUVzbGdFNXNhL2JzT2ZJdFQrNXh5aTV4ODk4ZDA5VlV5cTY0K1B2bGVL?=
 =?utf-8?B?SGhUSzl5TXB0eHh4dC93U3NKSEN3S0NPckNHeHZHWnhXb0pxMjgrYVhEeG14?=
 =?utf-8?B?Zkg1Z0JUOURNR2UrdW5rRGc4QnBqVTFyb0NYbW5kczFZSndmT2tBRmV0cG1s?=
 =?utf-8?B?WFk5Mk13eERjWU5CUVkyMWpqVWc5L0RvZ3hCKzh0THJGb2pyb2libFVhWktr?=
 =?utf-8?B?djFXT2lGOFlxZE1QTW43UExUZmtGYkRLS2JWUmQvNEtueW10THJ2cVV4MDJt?=
 =?utf-8?B?VUU3aDV6MiswOU9KQUpsVmxJam1zeW9YSnRLdUY0N1dwQk5SaEhiTTVxYVZ5?=
 =?utf-8?B?dXpxR2JEWmhNeWhJWnA2QmROdVpDbUN2cUdPSFpPRlJVMGtYUDdZMVBPSTZq?=
 =?utf-8?B?dkluL0FWVnVmMDBUZUNXcmZKZWFHNldXYWFDRXd3WlVWVWZ3L0lKQT09?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB3107C5D3A7A14031A52258E099529AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6f09472a-c1de-4039-e3bc-08d9d5a9dbd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 08:59:36.3427
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 rlXrVlcCA7AqsYLx83IJQ8Zgy1co2yvN4pwbFwCdRTu0INAXUSabOnhaUR7rO5BxlRBMw8a4YXClNNYFaoVcwuhaq9t+54fnZJQP3CvxOOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3983
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 08:59:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55811

--_000_AM0PR10MB3107C5D3A7A14031A52258E099529AM0PR10MB3107EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSmVhbi1QaGlsaXBwZSwNCg0KPkknbSB0cnlpbmcgdG8gY3JlYXRlIGEgc2ltcGxlIGlt
YWdlIHRoYXQgdXNlcyB0aGUgUlBJX1VTRV9VX0JPT1Qgb3B0aW9uIGJ1dCB0aGUgcGkgaGFuZ3Mg
d2l0aCB0aGUgcmFpbmJvdyBpbWFnZS4gSSdtIGFibGUgdG8gZ2VuZXJhdGUgYm9vdGFibGUgaW1h
Z2VzIHdoZW4gbm90IHVzaW5nIHRoZSBSUElfVVNFX1VfQk9PVCBvcHRpb24gKGJ1dCBJIG5lZWQg
dG8gdXNlIHN3dXBkYXRlKS4NCj5JIGhhdmUgdGhlIHNhbWUgcHJvYmxlbSB3aXRoIHVzaW5nIHRo
ZSBIYXJka25vdHQgYnJhbmNoLCBsZWFkaW5nIG1lIHRvIHRoaW5rIHRoZSBwcm9ibGVtIGlzIG5v
dCB0aGUgbGF5ZXIgYnV0IHRoZSB3YXkgSSB1c2UgaXQuDQoNCkZvciBtZSB0aGUgY29tYmluYXRp
b24gb2YgcmFzcGJlcnJ5cGk0LTY0IG1hY2hpbmUsIFUtQm9vdCBhbmQgUkFVQyAoaW5zdGVhZCBv
ZiBzd3VwZGF0ZSkgd29ya3MuDQpJIHRoaW5rIHRoZSByYXNwYmVycnlwaTQgc2hvdWxkIGFsc28g
d29yayAoYnV0IGhhdmVuJ3QgdGVzdGVkIGl0KS4NCg0KSSBidWlsdCBhbmQgdGVzdGVkIG15IChQ
b2t5IG1hc3RlciBicmFuY2ggYmFzZWQpIGltYWdlIHRoaXMgbW9ybmluZzogaHR0cHM6Ly9naXRo
dWIuY29tL21hdHRoaWFza2xlaW4vbWV0YS15b2N0by1jb2ZmZWUtcnBpDQoNCkkgZG9uJ3QgdXNl
IEhETUkgb3V0cHV0IHRob3VnaCwgYnV0IGEgc2VyaWFsIGNvbnNvbGUgKEVOQUJMRV9VQVJUID0g
IjEiKS4NCg0KQmVzdCByZWdhcmRzLA0KTWF0dGhpYXMNCg0K

--_000_AM0PR10MB3107C5D3A7A14031A52258E099529AM0PR10MB3107EURP_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpzcGFuLkUtTWFpbEZvcm1hdHZvcmxhZ2UxOA0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsN
Cgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCW1zby1mYXJl
YXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQg
NzkyLjBwdDsNCgltYXJnaW46NzAuODVwdCA3MC44NXB0IDIuMGNtIDcwLjg1cHQ7fQ0KZGl2Lldv
cmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAy
NiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+
DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5n
PSJERSIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJl
YWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5IZWxsbyA8L3NwYW4+
SmVhbi1QaGlsaXBwZSw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Jmd0O0knbSB0cnlpbmcgdG8g
Y3JlYXRlIGEgc2ltcGxlIGltYWdlIHRoYXQgdXNlcyB0aGUmbmJzcDtSUElfVVNFX1VfQk9PVCBv
cHRpb24gYnV0IHRoZSBwaSBoYW5ncyB3aXRoIHRoZSByYWluYm93IGltYWdlLiBJJ20gYWJsZSB0
byBnZW5lcmF0ZSBib290YWJsZSBpbWFnZXMgd2hlbiBub3QgdXNpbmcgdGhlIFJQSV9VU0VfVV9C
T09UIG9wdGlvbiAoYnV0IEkgbmVlZCB0byB1c2Ugc3d1cGRhdGUpLjxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+Jmd0O0kgaGF2ZSB0aGUgc2FtZSBwcm9ibGVtIHdpdGggdXNp
bmcgdGhlIEhhcmRrbm90dCBicmFuY2gsIGxlYWRpbmcgbWUgdG8gdGhpbmsgdGhlIHByb2JsZW0g
aXMgbm90IHRoZSBsYXllciBidXQgdGhlIHdheSBJIHVzZSBpdC48YnI+DQo8YnI+DQpGb3IgbWUg
dGhlIGNvbWJpbmF0aW9uIG9mIHJhc3BiZXJyeXBpNC02NCBtYWNoaW5lLCBVLUJvb3QgYW5kIFJB
VUMgKGluc3RlYWQgb2Ygc3d1cGRhdGUpIHdvcmtzLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+SSB0aGluayB0aGUgcmFzcGJlcnJ5cGk0IHNob3VsZCBhbHNvIHdvcmsgKGJ1
dCBoYXZlbid0IHRlc3RlZCBpdCkuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgYnVpbHQgYW5k
IHRlc3RlZCBteSAoUG9reSBtYXN0ZXIgYnJhbmNoIGJhc2VkKSBpbWFnZSB0aGlzIG1vcm5pbmc6
DQo8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vbWF0dGhpYXNrbGVpbi9tZXRhLXlvY3RvLWNv
ZmZlZS1ycGkiPmh0dHBzOi8vZ2l0aHViLmNvbS9tYXR0aGlhc2tsZWluL21ldGEteW9jdG8tY29m
ZmVlLXJwaTwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SSBkb24ndCB1c2UgSERNSSBvdXRw
dXQgdGhvdWdoLCBidXQgYSBzZXJpYWwgY29uc29sZSAoRU5BQkxFX1VBUlQgPSAmcXVvdDsxJnF1
b3Q7KS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QmVzdCByZWdhcmRzLDxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+TWF0dGhpYXM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_AM0PR10MB3107C5D3A7A14031A52258E099529AM0PR10MB3107EURP_--

