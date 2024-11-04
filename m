Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 749B1D1BDF0
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 20:26:34 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.66])
 by mx.groups.io with SMTP id smtpd.web11.624.1730751991680028220
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 12:26:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=h7os9KFV;
 spf=pass (domain: siemens.com, ip: 40.107.22.66, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onWP9Dtrn6A78JTHdElOTO2XtvT2BX9/o1hFaqitOkGCUl6b3zMPk1O203Z6hToJxzZmN7b0tAdIuY5ZB2woSs6C3pmDWmn9vCvkTK8oJifrKtFTHqFotYpRlpeJsl3ig6uQHnJHuiAAUmIhHBWZwntK+t+qgDw9upyMeRIqzhumRZtFvnj+rYCWuvrCTMfHLaxZgstpdidYBB+ZrZurgpWccvjaBv29dqhqGmWgwE1qwnh6YT+81lDo+yNA5Ep/qJJ49lhSu3+dcAMlkv5FGE0bqJkGF60RVsHMyfZw7S+YDuesssMaOWZcb5jbh2uSvN89kOnehHG6ZFkJK/Bp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74laHMxhJVkTAYuGOfG/monuCg5AsstDLA0EH2iKIrM=;
 b=Zb0oa4h8ItIixIlxxUEj5Ie0TYGYOvFjY2jaUKCfEIJgswyvbYojVMTTcnElHslz0QnI3UfQ0aIb7ONf59RHBFaF2Pn/+hPB5AYFE/G5Yg6GWvvYGGODFA954QcX0CXvE7lXjLxeU7fiqTnSDo1QGmnl/lFbeeK6posAnG4wkPwYc2MFlxaYQ6TxeA5nob/gbiq8JKkE2UvPb+2OfyErZzqT2LMqPeIPxrJ26P9/0MoEdkFRt7UMzlnAdTdyvVXJwE0qMOch1pe9YYxH12Tz9w6pyNvPdKYI4RVya3GP/iiraJpDwtBRht6NK9V6QsbK9CoJX1pahQ6kUmF/BAvVqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=74laHMxhJVkTAYuGOfG/monuCg5AsstDLA0EH2iKIrM=;
 b=h7os9KFVK3rjDmh1cMlFY7Sk5mu8ZMsXGLg24CluWszQJiBaY3UT0fct/6moBjZ2tNtzLs49CK2EQR+I8UKj76usp69mPABFGIMKA9C2336+CIwt0PP5wj0nAZSyeMHSjVANjEjohqO6xwi7Ac1mZjYNS2h+wB/TN3lmjGmScC06gUiWuTIwy5ZUe//ErUVjt0wyE6DfZI6F0+aRIxmcYkV+rIZ1bF37Dt0xfifl6NBDPojDLaZg1EMrQwDqY51zZfvYkZ/t8fHeiomahOATcUfhm8agKqot7zPG3oi7SIi2aRzxhwLr6r0MHevuYyzqK9g0BR/SyT2iYmJOHE8hNQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by AS8PR10MB6079.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:570::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.17; Mon, 4 Nov
 2024 20:26:28 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%7]) with mapi id 15.20.8137.018; Mon, 4 Nov 2024
 20:26:28 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"sidali.teir@cysec.com" <sidali.teir@cysec.com>
Subject: RE: [yocto] Set global variable based on recipes versions
Thread-Topic: [yocto] Set global variable based on recipes versions
Thread-Index: AQHbLteV41v+NTJnw0uVov2QUiZlQbKnWYMAgAAREYCAAAkjgIAAFROAgAAIIVA=
Date: Mon, 4 Nov 2024 20:26:28 +0000
Message-ID: 
 <AS1PR10MB569763243A0FD731943B7D51FD512@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CANNYZj-81+zMMgT0cbjcP5OdR5rjBMaZeJKJMvcQwxdjBiE=hA@mail.gmail.com>
 <32414.1730750017778983201@lists.yoctoproject.org>
In-Reply-To: <32414.1730750017778983201@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=1b8941a5-4b89-431b-9206-86775428d9de;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-11-04T20:22:42Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|AS8PR10MB6079:EE_
x-ms-office365-filtering-correlation-id: 6a02dfad-2f7a-499e-ec6f-08dcfd0ef65c
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?V2Y5bXgzS0tIRjYvQkNuMTg1Y1ZTOTVSajZHVDdrQXVSZFdwc2xKQjF4cDBx?=
 =?utf-8?B?OVVpeEo1ejdRTE1tR0tEYThGd252bkNLcEs0MmlGQkFGRDVWVXk0bTVrU3Fo?=
 =?utf-8?B?MUJXRVdOZzUwY1FzNjB4VDhrbGpwR0ZoSklJVXhkR2dKNy9aeTF6Ujk4bFdJ?=
 =?utf-8?B?eWxlaVl4WjdYSXBDdUwrVHU2Nm8wWXhjbXMrTkFvNU00eW8zTndWY0hjY2Qx?=
 =?utf-8?B?OUF1L3JISEdsek1DUUgwUmgxNkF0dDBJU2U0d3JuV0pvWElTWUdKS3RoSXRv?=
 =?utf-8?B?T3N5Q2RYdmNHVVdROUxESjVNVkFSRzBFOHg4cG5KbzNhcTVLeWNZRVZOTHht?=
 =?utf-8?B?dFI1ZzVaOG9yeWdndkhlWkZUMDl5NjhFdzFDOWhDOGZFN1lMMTk5Zy9jdlo2?=
 =?utf-8?B?U2xTd0ZYb25TR0YzdjR4UVkwRnZnYWlSb0pNM0NOSTRFS1BuMGlJeTFJMnBV?=
 =?utf-8?B?VFRTamxUczByUTVIRll4YlV2RGhaYVVLMUlPVVlaeVVDc1Z0aDMwQlNXSlp0?=
 =?utf-8?B?TkVHUE9iYndlMU9qazVoNnZZenNMbzhsVUo5U1lDaW5aVEY1TThXd3I3ZTZq?=
 =?utf-8?B?T2pFOHNyRU5lL0ZiNWx0VWNXcld0bHpYMGRrNnRwQ2d0S3VYblZoeFpZRjd6?=
 =?utf-8?B?eVNCaW5Ob1U4ZVpRc3hFZm5QU3duYjV0OUJMbzltVEpWNzNaaWNRMnBRUzRB?=
 =?utf-8?B?YTRrMXZSVG9ueEppWjBLZVhnRHlPZUhBME1OVk5ObGg1RFk5Vm1UU1dKTklm?=
 =?utf-8?B?a3d3R3hpTjNab2hjVkNNRkxCSmloYllWVlR3ZlBIVGNYaFpmeXhSRmM5OUxn?=
 =?utf-8?B?bVRrS3ZrM09SR3k2S203TWxMeU56Smc1OVFNM0JjTUVLT0E2U1BOUTFNTjhT?=
 =?utf-8?B?eGJRRklNdW1TME0zbmRNc1RSMWJiZXI1ZE56Yk4xTnFCdTBXUjAyanJSZWoz?=
 =?utf-8?B?MlhuNi8zZ1hydStjSVErWDcrWng0QVFJUU9XUXFoMVFVSFROOU5RekdxdWs0?=
 =?utf-8?B?WUhBS3l3V3hNbnZDK0FjYzZaem5rR2FudEhRNmgvQWJVVGx0eWc2U1RMY3Ez?=
 =?utf-8?B?SS92NnlueFpvdGVVcWNFc1owemRnU0Y2SkVCL2FJZytrS1c2K3ZRdTZzM2t3?=
 =?utf-8?B?Q1RSYlVuU1dvQ0dTNFAwZkx1STBDaWtQaU10c1hDMms1bEJvd1ZrQkdDbDF0?=
 =?utf-8?B?ci9NblBkcmFzdDU3bjBuU3YwL2Q4R01Vd1kvSlI3VUlBNG8rNEF2L3daVmtU?=
 =?utf-8?B?YlgrdUJCY3ZUcldhUjRiTGk4eG9KKzRyOW5mZWsrYU0wcTBYc01YaFRjSFBj?=
 =?utf-8?B?UGtvZkd2MHlUNjk1ZkdhM0F1MVVIY3VmQU1kMzUwZ3BQOWhjRVk4MmY4M09K?=
 =?utf-8?B?SFpiaVplQTZlTTgrb0JrRHVRS0xTb0dPQjJvN1lqNExERm9vN0JaTjR5Q244?=
 =?utf-8?B?Z05veVlVWVpOM3NGQmdJZm9VUnBSS25GVjdleFRMSGpQeFY4Y3pPSGdWbm5p?=
 =?utf-8?B?bWx5eHJ6a3lHc0lRMFl2bnBNSTNGTHBWTlpEb0NacjI5dHJ3K21MN3ZVNVNZ?=
 =?utf-8?B?dG1GUEMvK0I1MnJwdjhaKzVQWjZnNU1Fa09jbEdXaHN3a09TQ2tkZm83dU9K?=
 =?utf-8?B?TVlCZnZ0VExLRjlqei80S1UzelhkNEVTSmdlTmNkUStqalJsWndKMVk5SFla?=
 =?utf-8?B?dVRuYmFiZ25pa0NyVUJsdHNyWW9KTEo5UWhHQzJBOW5ES0lvUnZNVUtQT3RX?=
 =?utf-8?B?YkF1MWJ1Z0tvclpEUGJneVdOenhWdnREb1RmTlBscE9FVmJwaXYrdjh6RjlZ?=
 =?utf-8?Q?qq/m0D95kLFiCzFIo2EZoczxiV9yCqHHc84ZI=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?blRMaDF1bmFNVkZWWUNudlpLUmQ3WnE1ZW9TRk5KRkxrVXFiRnZLL2xSbVNL?=
 =?utf-8?B?dXYycmZXTi9iZkIyM0d4OXhieTZNb3Q4VGsxNU1WVFZUQ2hXWmt4VWJsUHR2?=
 =?utf-8?B?MFV2Z0hxR0t2eVJ6L2R2MjNDOU5rdWI3b2dkdC96VmdNOVR1RTdwV3Zkb0dI?=
 =?utf-8?B?a3lGOVVOQTJGZ3VhUExJTUwzcVJlNnRIMENnL2YwSGliRzFCNnIva3BsV2R5?=
 =?utf-8?B?TmFUMllLR1Y0dDR1WGh2RzZmdGlpbjhXZnhaemNOaWtoWjA3Sk16SlZNT0F2?=
 =?utf-8?B?RHdjdkExMWJWUmRZYlVwbS9ReUFQK1pTeFZzczZtWFZEMkxWWXJSSVRMajVE?=
 =?utf-8?B?OCtQbG02MXIwQVZpZWNZM04rV2JNRnhtZUg4YWJWMDJGN2lsQ1JrTFk2UVVq?=
 =?utf-8?B?R2ZLbnluak9TRzF0eExMUUpNWlI3NFpPOU9CbkxRczJVeEJQMmt1d21hQ0ov?=
 =?utf-8?B?ZFJpQmZZQzBJVEx6cXRTUWhTSUl4UHZtTWR3WWtKYUE3eDM0ODI1cUlyZnh2?=
 =?utf-8?B?bFBHb0hzRTJEVktwQnBudkE1b1JSeVZNdWFMS3VrajZtdHZRVi9meDNLRlJv?=
 =?utf-8?B?TlRIU3BNMzJHNTNKSE1JVkY0Q1lKWEd4bXdDMmEyUE5mdi9sbXNvUTZiZ0lM?=
 =?utf-8?B?eDM3OVNWS01KaGQ0S0NiQVRHeFlIZHdtb01PcGt0TDQ2Sm5LTStqWlRIbG85?=
 =?utf-8?B?YzFabStZWnJ0ejBmMUxrekszc2pRWDV5WHRSaTdKV1QwUVltRmNUZ0hIS2dY?=
 =?utf-8?B?Tm44TGhmb2VuaXd2UzZuK1ZFQUdXOEdhZmJWS3Vtb29TeHcxUGtVTDRGTnp5?=
 =?utf-8?B?aU5aNVdrL213aUFKbTFCZEJTcVJzRnhRcWQ1NGh1WW8vcFkyYmVXY251WjB1?=
 =?utf-8?B?WTA4M2kxK0J6V2RYSnp1WjM4ZVd4TWFMZ1pSNWV2Q0pVWHdEdjFGenMrZlNS?=
 =?utf-8?B?YUVVZG8xK1BPWmtPZVp4WDFaTXk5eC8xYXJMalAweHo5TnVXSEsyM1ViRkNP?=
 =?utf-8?B?WTZhMm9wTDBQaXduT1RaeWV3T1ZuL0Jyc2hNcVAyeUlzMzNnRXpFQVd1QUtN?=
 =?utf-8?B?YVhzNGR1aC9yMlkzRWllQVErNC9taWptd3RWTCtsWG5sVk1wZ0diRU4vbUZB?=
 =?utf-8?B?VTJuUXBReWdiamI3QStNaXIxWGI4ZVkzR2JSV2VjRXlrMlRic3FqdXFlVDhI?=
 =?utf-8?B?Vi9DYkEvV0Q1MzEzWTlxcnRRVGFRbDI3WnFiV3R6V2w4RWloakUzUTd2SThq?=
 =?utf-8?B?QVFERGFhbTg3OFRCbTJtTUJrUVlUL1ZEOHlnV0dLK1hiRURSakV1dWxPNGNl?=
 =?utf-8?B?TXpUTFZGNWMzYUdGZ1Rid2laaHY3dGRMcTBnQTBqdXJkdUlON3Juc2Z0enoz?=
 =?utf-8?B?NXd6YmRsMkhSdUJIWnpyWjFST3RTUk9yL2RQNzRQWjlYWnZNNWxOUGxvU1Ey?=
 =?utf-8?B?d3VBQ295YkppZWh3SVhUbXlNVzlyek1wbzNyZ3lwcGZkWVFPMlB3Ymg3elpN?=
 =?utf-8?B?T1NlcWtTd0RPcXpxMEYxdXZwT0pvNG1jWld5K25uVS94UHRSdWNHUmR5TDdQ?=
 =?utf-8?B?akd2RFFQUFpMWmRneDNCTEI2K2gzZ3VsZlErdXF3OFA0S25hYnFLR3BkWW9Z?=
 =?utf-8?B?UHVCL05FKzFJelBXWFZPeG5JQnlQdkI2TjQvZ0N2QjU5QkJPMlYrUTVOMjVN?=
 =?utf-8?B?b3J4Sm1xYmYyOHRvWGNhOUhsTXdjRnVJLzZRdFptZnNqVStsY0cwZE5FaGt4?=
 =?utf-8?B?MXpnT0lnRnc3SUszZ2s2T2ZPMHFKMkFFd3IxWmhCOTdFN1hHY21waVBYZmMy?=
 =?utf-8?B?cGtxNkJTYjlFbUpkVm55alg1Q1hsQitUYlhkZWo3MW5iY3N5dlVJb2VpTlNN?=
 =?utf-8?B?dk9CWDdLL2tNdGFqQmFUaFUrbndMaXB4SWZTc042SjUzTVNQS3g1ZmE4L0tG?=
 =?utf-8?B?T2pKVmVjeGpuMU9VMzhnbHMzckhybHgyMFhCSDRmS0lTK1FuOXFSaURCV0I0?=
 =?utf-8?B?UlBGQjFHVWYzdlhBNjlGdFFvNGpWWUU0bWhkWnhCL2trRFRsR3I3Ni9wd0lD?=
 =?utf-8?B?V3V5WTFBUi9KSld4OE9Yb3h1QUVVS1I5RFEreWUvUHZFL3VsZU5oSnBWdGtN?=
 =?utf-8?Q?FchR5w4ChUry3C6C60jC81KYk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a02dfad-2f7a-499e-ec6f-08dcfd0ef65c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 20:26:28.4150
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +/6a6eD5Ab7ioaWL/1a1aGR/zkX+S1Pdx8zrcClfBfTkxSTcMWtBynMnhI32+ebRHFP1xD5JI1MY4sO2DTV3xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6079
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 20:26:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64219

PiBJIGFtIGluc3RhbGxpbmcgbXVsdGlwbGUgdmVyc2lvbiBvZiB0aGUgcGFja2FnZSBhbmQgSSBo
YXZlIGFuIHVwZGF0ZSByZWNpcGUgYmFzZWQgb24gc3d1cGRhdGUgdGhhdCB3aWxsIGhhdmUgdGhl
c2UgdmVyc2lvbnMgbGlzdGVkIGluIGEgZmlsZSBzbyB0aGF0IEkgY2FuIE9OTFkgdHJpZ2dlciB1
cGRhdGVzIGJhc2VkIG9uIHNvbWUgbG9naWNzIHRoYXQgYXJlIGxpbmtlZCB0byB0aGVzZSB2ZXJz
aW9ucy4NCg0KWW91IGNhbiBjcmVhdGUgdGhpcyBmaWxlIHdpdGggcGFja2FnZSB2ZXJzaW9uIGlu
IHlvdXIgcm9vdGZzIGFmdGVyIHJvb3RmcyBpcyBjcmVhdGVkLg0KU2VlIGUuZy4gd3JpdGVfaW1h
Z2VfbWFuaWZlc3Qgd2hpY2ggaXMgZXhlY3V0ZWQgYXMgUk9PVEZTX1BPU1RVTklOU1RBTExfQ09N
TUFORCB3aGljaCB1c2VzIHRoZSBzYW1lIGRhdGEgeW91J3JlIGFza2luZyBmb3IuDQoNClBldGVy
DQo=

