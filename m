Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 820CCC6FA8B
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 13:11:23 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.92.20.10])
 by mx.groups.io with SMTP id smtpd.web09.7200.1663938678330668055
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 06:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=dQeaS2mo;
 spf=pass (domain: hotmail.com, ip: 40.92.20.10,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqlS1A1O6Z8fKKll5fNQy9p/yqAg6iY87DxOvpW+2/2PII09e3D5slpaw/fXZ0++jhatkefxKfYBB982FXlgnmT0ymiXw9zGRQi71aTYUJJaIpNoi81NgLtksuPeWCHcB3mbMcXiTSztZ6bHRSshzOIQkS4KuNH7LVjYuV5y7oCnBauvCnQ4nwcSsrLqxVKdGryxDrK2cNTeWCr1jG4wYJJ+ka5F1Oy5/JjDxJIcumsLVOz/SMXcqew88oOT+3IOFifjPuenpTLJukt3O9A+G71yVL+y1XUmQUrfDqPF64N2YACTqT/bs0e4xNjkcXMSErFU+VGQRXOqcfrF+qa6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0MvZh7yPvERxy/0L3akWxrP5q+PWxA5h3Jos86JcO8k=;
 b=Wd2AtuAMrZcvh8El6cDpXbXMPckjHs1EbadPEPZo2+/BQxxKOgXZxRzCvWHM04Ey9zsF3ztD4+fGbFMX/eAc9zYysNIN2+FaT1SUHADx4yjSEOy8I2wgXwkC6MnwbX3xZdKj3rDW/yBb3OOnPoew2Lmcp885YIVaztznqh4buwXwKKlc3KaW+3KkengmuDI73ES2Fx8cuivi0tJ+g6GIRkLv0NsPefSAoumadRI3U+l81KCIWMm2cxSPdjbeRusjOEfUjfuvmID2zx9sT83c1CK5+IyYAYVL1lykSUXwUqU9LPZLPR9Q4NDgy5el3v7rhyrp5inkBMX+h7ZMDfDTNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0MvZh7yPvERxy/0L3akWxrP5q+PWxA5h3Jos86JcO8k=;
 b=dQeaS2motaaUZiF3ve5sv6LGeFdldCPj456qlkn2rZMVTGUYq1KO5kpCgJVGUCCSCfVQjrrVSZHdExZf/YDA3p8IN+2qHjfQ9FTc0XHKJKvYg6R4iVtHv1Fk7LTjP9UPp5AqzOZU/JzUCwV9Eo0FT35cL6fx4sHtDUa6aN2T32fnWv5SEjg9ROlMwuRbfHpV8HV5BdvBeHChqZddSf2/z4Ai85N9UOUtQZksmVCImgK0wBe1JJm47k8dtTgrNGKvO5UzIAkJ4wg5TbOtU6gGAVbdwLAjC6KPxA0AGjgXQGH1F1FoeX63On/skGJYQxvkarahI6BpX/IqbqS1gh9erg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1533.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:150::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 13:11:16 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Fri, 23 Sep 2022
 13:11:16 +0000
Date: Fri, 23 Sep 2022 15:11:11 +0200
From: PHIL <heideggm@hotmail.com>
To: yocto@lists.yoctoproject.org
Subject: Building vulkan-samples
User-Agent: K-9 Mail for Android
Message-ID: 
 <PH0PR84MB18354240D7ECB34DC1D1F61CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----LM6C60A3LBZYQ3BDSVJF4STMJMGYRB
Content-Transfer-Encoding: 7bit
X-TMN: [8GGbaIIFk06AEEKdDYBdOtq+wbp79HVd]
X-ClientProxiedBy: FR3P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::19) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <EE14F89B-A7EC-4233-AFB7-A98AB06961F3@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH7PR84MB1533:EE_
X-MS-Office365-Filtering-Correlation-Id: 22dc3ab5-19b2-4593-ec34-08da9d651906
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pzWqyR/a42QGcodRaPsDRq7I8D+QwN+A4mdoWac9v2PAInfdr6J6Zp4/POr/YkwLuCeQp8wb+fn1aLpUzsEoKedXJpt14mtdCB5UOxrjKT6mXWfgsf/iP590R0ghHB+jHtJ1lxbierx0ghH+gQKJ2SIuKOjG8171R33mptERWujTIsIeESk/PMFWbWwU7ZRJsMFZfoayyoxUZ97P3gOOFg6JNZj/pz7KJ42XMllh2/yi+nlUjGVCI0xbJto/v30+mxt0kW86ruL+tsFDcaL/p29UPspTVYPl3d3D8mgmPynsqIklxR5YbqfGulYRJ8ychBfT982Tld3XxcQJYxcBHtOQ2jbjAW59d5nQmcYGhzuoWzR10uNQdb908EMKewGzPfzURk6ju1kYmBNWU2s/VjuPKJaNRSXN5bxE+Y6F9/spemEcC/aAorJQQ3L6dBMMICf41z92k1y+tbWe9bsJMlif9VKFe/AcANHqlT14jUR5bCKa371/R8TVRnDnUC7Lo0VYWR3DpFrvHmvxENlb4RJ2cFhaBmXD5WwH3byjcwcFILARI/DMftrPkkpYAZIoTOuvqizVnMUh0dWTGbFGF9f66R5LjnR5EtYM230/r0/yXZ5+eboCfV9SjAW2cW+fY4sREPdUiVHcRyZMenjR4Q==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MzY1NGdHcTNDQW45NkQwb2ltWmdRUFFoMDR3aVFzdVdJSUt2NDRXNFZSaGtv?=
 =?utf-8?B?SGZvQVVLM1kzSjlScXlUSTdYRnBOSWowdDExcm5VWEQ3N0lSWFNuNlkzZFhC?=
 =?utf-8?B?TjNJU0dFaCt3ZWRXa2dHOTVCV0pHb3VIYkVxQjFGcE1GNXg5QTVqUEZmMEZL?=
 =?utf-8?B?TVMrZmZaUVVEaDNzcUtoY3J2WWthMkdoYnlxNVVBMGlRMks5YlRKOE9Gb1h6?=
 =?utf-8?B?KzZNVDBXWTB2NHN4Z1YwQlR2VHU4K1NOaGxBanZ1OWNVcmlaZDArZ2M3RnhM?=
 =?utf-8?B?MjdBM3g1UldmcllCSFlXUk1uMjhUOU90SjlyNWxPQUZ5eUlPRURsNHpYb1NY?=
 =?utf-8?B?bWtHMzVsMzNtbG82aVRrUzNZUmdCTTRVcklhdkpFOHJzWXhUR2tya3I1RXhl?=
 =?utf-8?B?azI2Y3BxU2l1dXNyaFp0MHFscVBZdUZFZ20zc0pidC9Ha3h4TSs5NVUzb3RD?=
 =?utf-8?B?bFhHOS8yM3hJeFV0dmYrZCt5QXVCK0hsbjRoS3ZraURWOVU5Yi9FaWM1NXM2?=
 =?utf-8?B?L0xIelp5bUdYZjMrblc0K253VDdYRXN1L2FRbGVnb2NOSEdiMWdOZVpIZnF1?=
 =?utf-8?B?ODFkUTNILy9jeGh6OVpqN3k1MWNRMU95cVFqM1ZHTFJiSmZFdDJTQUFXTTNQ?=
 =?utf-8?B?Y3lFSFZpdVg4M0dQU1JkaGRnaUtGUzQySGxKY3REVi9iNlV6amtMZWFBcFdn?=
 =?utf-8?B?VXdqOXU2cjZTUHFaZEJURktnTng3cTRNQ0ZPekp0bm81NkhtYVJSMlUwQTAv?=
 =?utf-8?B?RW1DdithMVZRbjZiM0FUMDA4UWY3aHQ2YjhORWRqREVneTEzL1JRSXVFRUdD?=
 =?utf-8?B?dHV6T0t3ekEyYjRJeUl2K2IzcGFRRmZrSUFXdUIvaUJ3ZXVwd3ZkalAvcEk4?=
 =?utf-8?B?MXIrbEZSSnhyRTd5WC9XWlo3dm91aHp5UFpqNVc2b203dlNHb0dHMU1vSzli?=
 =?utf-8?B?YjR6QW9oTE1UVC81NDFINGo4bE9WV25VQnRsOGlONkhxS3FIVTdRcUtjSE9z?=
 =?utf-8?B?RHJjY21md21BaXlpNkU3RzlISkpKb2w4WGkraExaN2ZiZWxyVm5yNFo1YkdJ?=
 =?utf-8?B?dHhzVyszR3l0SlpLaVF6dWV4NGtUbTFPSStNU1k3ZXJ0ZzhlRFl5ZGdkK0Fl?=
 =?utf-8?B?N0xwTWtVdlh6YmxRYzRGck1xR3NPZkk3MjdrYldWWDFFU3JzTnF0VTZuM0dR?=
 =?utf-8?B?cFRRdVhRZTU1bmFsSHVCREZwWGRXd0ducWFDSThMQW9wVXV3S1V1VGttcVdS?=
 =?utf-8?B?SURJNXZ0b05uNkkvNWpwZW5xbWdqV1UzOVpTUmNFTFU0NW05dTBaZEI1UUpj?=
 =?utf-8?B?eEtXSThEeXJBQ28ySWZNWWprUmY1aVRNa1dQZ1Y0cURZMG1DV0hJa2MzREtk?=
 =?utf-8?B?VXBaRGFRSHdPcUR5TlNJVkYzMm1xSHArcTVzcldRTkI1a2FqUURkMFUvL0VB?=
 =?utf-8?B?TmVUK0VSRVhoQllWcE9kOGx1MEVUMzQ1Z1o5WWN2d1BSeW92Q1ppbzY0VEIw?=
 =?utf-8?B?cllwc3FKbHdJK2NVS1BGZmNEblVUZjNXMVRmbHZzQkNZc09Gd3Z6Z2JvNGRv?=
 =?utf-8?B?ZVdoWEdBL0xzU1B2R0htU2VkRnJ3SjJCUmEvSzEvRHU1RGtpMUhpd2Q2a1lq?=
 =?utf-8?B?K1VKbzBSN2VSVVVZR1dJdmFyWTFRZlFFd3QvZjNaRXJST3ZCaGtsQzBQWStL?=
 =?utf-8?B?UzgwSUhEcXFNQWowWDFuaVVrSzNHUXlOZ3ZGQm9qaXJsY2VKa29sQnJnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 22dc3ab5-19b2-4593-ec34-08da9d651906
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 13:11:16.6143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1533
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 13:11:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58145

------LM6C60A3LBZYQ3BDSVJF4STMJMGYRB
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only installs spi=
rv-cross not any of the samples am I missing something? Regards
--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------LM6C60A3LBZYQ3BDSVJF4STMJMGYRB
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head>
<body>I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only instal=
ls spirv-cross not any of the samples am I missing something? Regards<div s=
tyle=3D"white-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>Diese=
 Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div>=
</div></body></html>=

------LM6C60A3LBZYQ3BDSVJF4STMJMGYRB--

