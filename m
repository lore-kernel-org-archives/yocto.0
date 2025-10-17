Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F15CCD195
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 20:19:43 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.75])
 by mx.groups.io with SMTP id smtpd.web10.2757.1760732373565312537
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Oct 2025 13:19:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=EzK1QqOw;
 spf=pass (domain: navimatix.de, ip: 52.101.66.75, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rxz/4iIt0pDiJQwiLelpzqYMec15xz0CG1dhvWZZTMTv0LpkS+PvmXmA9j0BMiuBeovSWB9N00bk/B+eZV66pInqTYWhTARuyfqNsV6SvlJ30xWgI1YPuCp+4+8pu/7J5oyrezsJ2RXGwX0eFw0wPS9zwL4SjQKhPtaJIaXOi/UKPlHdpRUS8Fr6w6KgM0OFXFcSYABNR9RTVElqSKXBK55yXf3M5dQFkuH4+skuJFC3KWA92UpPD4zygSUnW9i46XEkKkVl/v1LDjSKpO/zQeqc5pQl9hUrDdvb4lAerWVXhlbnQNzHCidE1rzmqLN7T7i6zMy6a0/S98s1JaHH/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rsTwYleYlt8FdAzbob7zszyMgUuCEgNaxCCLo01B7nM=;
 b=fuIvhem0L4Phwh9TwQ1PBVGyGzH37adW5kwzT0AHiwC2Twr9vnAaWYcvENpHQxbfoARGxmURAXGFx4lJHtbttlnuwFgrOXw+HtJXumt0KoQ1Tk5i9gZ762j8KOR3qv38tEVGaAo0p1qIxk66NmUFoyWpIYsKXUjvdbs4qTnOWLBNZshFx0edn+cH3UmebpONhSPhpXVefiGmk1S94CgjfFht9rZMUCEnojBK+VYt0vvUEiITNnDCNSyrFHHJusqh2dzUikxapXHP8/pfkFVdH9XWDkDl191+tvURh+04cEDvnqAVGO04PtWQudHcdmcbNFIYKlbShiNWCTZfJWkJSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsTwYleYlt8FdAzbob7zszyMgUuCEgNaxCCLo01B7nM=;
 b=EzK1QqOwGP9uCBej4HAm/sgWF6pSBDSp0Gqoj9no2KnkMWBi6CLUqjN7mHuk2vzOBuzGR/xqCR5IHr7k0f86MlMcXb3FX8xcVwrP+6RJxNQqop8FS6eqkTTXdJ4hDgulR0PWeWblgh7dr78kvi3tXvF0BQja5iAYFbeBZ5vN0ew=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from PAXPR01MB8552.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:22f::12) by DB9PR01MB7289.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:21b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 20:19:30 +0000
Received: from PAXPR01MB8552.eurprd01.prod.exchangelabs.com
 ([fe80::4e21:cdff:f882:4f32]) by PAXPR01MB8552.eurprd01.prod.exchangelabs.com
 ([fe80::4e21:cdff:f882:4f32%4]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 20:19:29 +0000
Date: Fri, 17 Oct 2025 22:19:27 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
Subject: Find the cause of a hash mismatch
Message-ID: <7utrehskj27ezeuntfbceonitdthhgpcefbavn5djcq26axbtu@d4t2npburtu7>
Content-Type: multipart/signed; micalg=sha256;
	protocol="application/pkcs7-signature"; boundary="fpufd266tcfzlqcy"
Content-Disposition: inline
X-ClientProxiedBy: BEXP281CA0005.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::15)
 To PAXPR01MB8552.eurprd01.prod.exchangelabs.com (2603:10a6:102:22f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR01MB8552:EE_|DB9PR01MB7289:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c9b45e0-0f48-4470-c990-08de0dba79ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UmpRckgrTmpxSDl0WG5iSlFlUHhVdDhJMHVRYk9YaFNvdS9TT2dpd1FZWDNM?=
 =?utf-8?B?Zks5bDJxczlMck5Oc0ZVYm84QWtFaS9mRkU3bkhYNGtIc0dhSC9HaFRJL01j?=
 =?utf-8?B?WThIL3gwRUdKWnlMYVNUc0p2elhKcEc2b2lPbDJFMWRwd3NFOEppY25yaU54?=
 =?utf-8?B?RTZnd0NKaXBmZnhBdENBRHFPNllpQzhqanhzckYwdjdmY2RYK0FzRU9wL2Rz?=
 =?utf-8?B?cWVYcE9BbGlnKzJDMFovMHhnNzNOMXJIdC9xQU0yY3pORzVUS1pwVWdydlBi?=
 =?utf-8?B?T2owU05ybkxjWkcwQ0lBTVAyMGVNSWM3VW55QVdqUVhCRjBFdmhwVHpRbGZT?=
 =?utf-8?B?cXJBS0EvVHJLcWFabENiTXJBNXBnM2dnR2g1Y3l3cGozQ1BXREdyVmw5Zk1B?=
 =?utf-8?B?RHpJOW5DNHFBSm5NYWs5VWY2djQrKzBTM3FlZkJYTEs1aDlvSkRIUUxCdEt4?=
 =?utf-8?B?elJ6RHB2ZjIxTU5VSm51elRlSW5hTXBweFNUeVlxTHk4dUJteGIwMVVxcjJx?=
 =?utf-8?B?RmFoOFVsZ045bHlyR0RaNmYxOXhMWXhOZEkvYzdWT0gxQlNuL2lOZUZTV1hK?=
 =?utf-8?B?U1VpdjAxeHlrSE1lQk1sdDZqbTB5cERHdkwxWXdNbUNGVWZhNGluSVRWZzBX?=
 =?utf-8?B?bGJZVkR6RFZJNGl5cE9NUGMxd0hXbzVPK2xRaGY3VTR2ZFNCWjFWUFp3endo?=
 =?utf-8?B?ZHlVTi94OGRvTzlmbVVuWmlhM1FoZzhua2tSS2xWa1dtYXRXMldGL1FHRzVq?=
 =?utf-8?B?N1FCZ1ZKRjZmNkptTGFkY3JZRjIyUCtWcjZJbkExcFlCbFYvUFpSOHRabzI5?=
 =?utf-8?B?RWVjZ3BnWDNEeDBWNTdqQ0VBWjM3Mlg3Y0dsZXJzRUo2RUFYSUltRHJCTGp6?=
 =?utf-8?B?eFU5YlR1MVdDdUhpaXZZR05EaE9wSlZERUJ4Q2pmeUZLL1RXeWNHQmRUMkVF?=
 =?utf-8?B?WFY3VHdIbzBOY1U0dWFId3FiNXJRM2FtTk9nYnI2aXg5Qkw2MmFWOWlVaEk3?=
 =?utf-8?B?cmtiWm9xL1p1YWwxcHE2eFlxNm9DU204RWtkSHdZamlqNEUzZGdaUGxoTTJv?=
 =?utf-8?B?K1B6dHhTa1BGdzg3Q2RZMWVMMjk0Y0srN2NXTERtTzVid2Flc1hZUlA0ck1V?=
 =?utf-8?B?Tm9QNTlPTFRmVU95NzgwelV5ZGtiNUV4NGZIYjZ3UktqdW1zMjR4TitrTUd6?=
 =?utf-8?B?aGt4ZEFETUtHSTlPMmU3VXVqbElIblA4ejBxeEE4SVlzc1BSbWQwZVhGRGVS?=
 =?utf-8?B?aFVURUV1Q3d6TFR2SlJsc0VsUXR0R1JEM3pwS1k0T21RMTEzQ3hMNFNsVisr?=
 =?utf-8?B?cXB6N1JLcDRPdjltbi9rT3BkZlp3dW42Tk5SWG8wcCtBeExTUjZQTFcyeHpx?=
 =?utf-8?B?QVZSdUxyLzYrMjBqeXpyRzl4KzR2RDB2TGV2RjVrcTdOM29OYk5oYmNIRUJ0?=
 =?utf-8?B?b2pla09sUzllSGpMVVdpemk0eFBHRzI0MjA3Ny9LcEVIV2tqQ3p2cVV3QU1t?=
 =?utf-8?B?cmFEcTlIV0RNYUJrdW04ank0STl5VWlXcElwYkFhaUUyVnBaVDhyZEpLT3Vo?=
 =?utf-8?B?MXRhK0dhVXh2QXhDZUF1cmZYOW5kTXJ0RCtWYm85RGtNenFCbWsyVTNsZHVG?=
 =?utf-8?B?SFBDSjNraWwzWjJFcndIWTJRUE5zbkdWajB0MjFxS1h0OE1wakZjd2NPQTFz?=
 =?utf-8?B?K1lkQ25iYVNHbFBaUTlCdHRzSUd1RENjZE8vblZ5YkFYNmQxaHJyWTY5Y0JU?=
 =?utf-8?B?UHJ0aWhEQmltS3E3aFB3S21ZR2M3Z3NuQTc3WkxIS2V3Qk1JcW9EMVNRZ3Nu?=
 =?utf-8?B?WFBGcVJVdzNzZ1UycVJOelhPQjFYMUw1WU11ekdYb1JIWFYxWldjcWNDdTVo?=
 =?utf-8?B?YVdZRkNDdjNwaE1ZVnBzWmdDL1hLZTFmQ0hjOWl3bGJVeWc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR01MB8552.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aWhiTlBWM1BwK1M2NWYrT0hGakMreVRBN0J1RU5JTFl1ZnhmWkNTbnJIZm9a?=
 =?utf-8?B?VzdwSHNrVkZHUmE1ekVsZWY0SFB3MDI3ckFDK3JtSnhwMlhmajRGNHFnWXov?=
 =?utf-8?B?dUJnbWVMNjRySTVZQkZyRlR4NVRWWnNMNkxxS2ExRWQ2R0hFQmU2cHhxb2dT?=
 =?utf-8?B?c3hHa2E1Uk5HM0NKb3p2S2dJK0VtTEI2ZHkyY3U4TzBzRWNyeGNNNmY5TzJS?=
 =?utf-8?B?ZFRTRFcvS3lrQmd1VHdVKzJrK0I3NTlFSWNRZDk0OFhGOFBWZ09FVHJYRWIr?=
 =?utf-8?B?dU1SOGRQYjN6cVIvRXlUclVoZk9BS3ZtSlp2Rkg3aVpVcFFuSGlLWTRTQ2Zt?=
 =?utf-8?B?U3RTNlpWeGJUU0Nvam42ancwdmhZNUdmN3E1ZlNLVVVXMTQwMWVRV0NQK1pV?=
 =?utf-8?B?eFRocVVwczEyb0FoZGIyUnJkNTRjNXFBK3hDVUFFT1FvRHZpY1N4MGVFM01R?=
 =?utf-8?B?T3ZtOE5hZ1VVY2J4alMzanBSMzNkUWFSbHJaT3V2Qk1xbWlGK2M2NUErWTQ5?=
 =?utf-8?B?WDBOMkVaNG9heFNHZXNiZVZqWm05QXpkdTAwUVlFa1kyd0ZCa2hWNjBGaXBH?=
 =?utf-8?B?QitvVWRlZGhtSWM4WWNFM0FIZ1c5NUxwVFkvTDNZREd6M015ZDQxY2RkbVc5?=
 =?utf-8?B?TlFKajJwZi9KdkpRK1Y0NUdxTlVxZDA0NUE4MlNZdUlGdGZjOG1qQk1NaXds?=
 =?utf-8?B?T29GRTFyeGVCKzNrRzkzMkVtbTVvVGhzU04wMldZNmYwRlRHd05PL2FUTVpD?=
 =?utf-8?B?alNmVlQ2WlM2TkFia2ZMUFgybzZRS2VSZ08xRGtnaFFPbjVyZ2t1UnROTmpB?=
 =?utf-8?B?Y2VFTTd1eE1ld3BZM0wxQkQzWlNrNTg4SlRId1VtT2xSd08xTTFFS2VYbnBK?=
 =?utf-8?B?eGVEUFRJMjlyUndHRnd2cWsrSGlIOXZWY2F3cCtqcTFTOUhPcjV1c0NUUjVF?=
 =?utf-8?B?K0JTSDFyaTV0V24yMnNDZXMwaWRJZFNaRGRwd2E2cG5GVTB0TU1hOHNBbEQ3?=
 =?utf-8?B?Z25iN0V3WFNLQjZOUXhmaXFGRTlzNWRzcGRBazBvZy9nVCtKYm1nSHgrZzNB?=
 =?utf-8?B?MENPRVYyZFNsZVB1YUtBc3FGVnRSUHVLWnh5QjQ1dnM0c0hGN0txT0Q5WXN3?=
 =?utf-8?B?WHBtSVRKdWFTdGR2UnlmODhOTmJsKzBrVFlxbFVKeGJIaWVnV0hOTHEyZEVq?=
 =?utf-8?B?NDd1MUlBeXd5MUc3THN6bDB0TWhmZ2kyRkVTSHoxT2YxVllPRHhrODFTNS9T?=
 =?utf-8?B?OXZmeG5Yb1prQnhjU3VDb2Y0Z0tJN3p6ZEc3elo2QnIyYUVJc3NyNjZQZnJK?=
 =?utf-8?B?RkREdWpOWkxXTmp1dmsrZi85V0luUDhrMVRGd0hZdldGOTkzUTA3eXlTQ2tN?=
 =?utf-8?B?SE5nRnhZVytRNTZ1SWlPU0p5Z1Q5bGtoNFRGZ2NpUTZ2K2J0VlRvaWhodmgw?=
 =?utf-8?B?RUw5WGE0ZEI5RHVnNit4Z25SRFRwQUxBYXE3VGk0M2pEVDliS0dWSkNVM2Rr?=
 =?utf-8?B?a0VIR2JmWmtGL0JQdnRaMHNyUlN0SnlkeEVVRlVRc3AzMlVVV29UbCtsa0pl?=
 =?utf-8?B?Vml6d0Y0WXp1elgxYmo1VWQ4alRkNXN1MkU2M3RlM2Nxa0R2TDA0VUNlQ3lv?=
 =?utf-8?B?T1F6Y0VUT0M0TnR6ekI1ZXREQmVQTE9YcStqTlc4VFJVZVZ6V3JzRkdjU2ZY?=
 =?utf-8?B?cmJvOUtac0U2cHA3RWJvWW5saDIrNUE5clNMT2JSdXNHYXk4OGc4R1ZlY0FU?=
 =?utf-8?B?OHdoRWRPY3ZiQmd4R3ozMU40QjRpamxvRzNQcllyVGViVzN5UG5oTC9NVnEr?=
 =?utf-8?B?NldjR2hUeWh1cjhoaG9UL0M2M2lkaW1MKytod29WSVNIbThaazN4VWwrREsx?=
 =?utf-8?B?UWE2bmFsSWRURlB0OFBla0tENVFPcUhhSmdIQ2tVYmFBbmE5QmpjZG5WU3Yr?=
 =?utf-8?B?MVl6MWI5dEpwWHFRenFxWVlhd29PNEJDWldxcXNxdDlBVlhCYjN6MFVDaExV?=
 =?utf-8?B?U2M4ek1VdXUrNVdZT1Bla29nVEY3TkhxUGFQUm5DVFBxOEhxWXBnOWw3RHBp?=
 =?utf-8?B?U2xCRDFCOUxDdndJaEVQYThrd3lZMVhra3d0MGk0U3J4VHl4aVdIU2hlN3px?=
 =?utf-8?B?OXMxZkZ5bEZPZ2JndVdybkNFNmZOZ2h2ME1LL0hxVjhRV2JjeFR2L09sVWVM?=
 =?utf-8?B?ZkE9PQ==?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c9b45e0-0f48-4470-c990-08de0dba79ce
X-MS-Exchange-CrossTenant-AuthSource: PAXPR01MB8552.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 20:19:29.5562
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fvfhPfGHGDdzGGN01ANwJ6Fehj/i4w4uMUAnzK8r15Nw1x/7rEN6453aA4ExL5yjEBCPSonGdfObcPeRq5Q55MywAtOdCJtoL98POFbEO08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR01MB7289
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 20:19:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65951

--fpufd266tcfzlqcy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Find the cause of a hash mismatch
MIME-Version: 1.0

Hello,

I have the problem that Bitbake tells me

ERROR: When reparsing /build/=E2=80=A6/hcpu-image.bb:do_rootfs, the basehas=
h value changed from fdd865f9c6dc6cafdb8bf9889cfe2299fc8aa4fd2de39156556ae5=
39fad55430 to 72b5f3ee3ec9d16cf4d1ac67cc445577778893044d0fa7de6072ccfd0cc3b=
11d. The metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake hcpu-image -cdo_rootfs -Snone
ERROR: Then:
ERROR: $ bitbake hcpu-image -cdo_rootfs -Sprintdiff

When I try this I get many messages like this

ERROR: Bitbake's cached basehash does not match the one we just generated (=
/build/=E2=80=A6/hcpu-image.bb:do_rootfs)!
ERROR: The mismatched hashes were fdd865f9c6dc6cafdb8bf9889cfe2299fc8aa4fd2=
de39156556ae539fad55430 and 72b5f3ee3ec9d16cf4d1ac67cc445577778893044d0fa7d=
e6072ccfd0cc3b11d
ERROR: Taskhash mismatch f30533c7b6414e9bce8ae48a1c4a1bc426f6731b67ff4e840d=
0ffa25c931039d versus a85ef1dc5e75a38df2c8474316532ca315be6e2ef0977c466d74b=
0e2a9190718 for /build/=E2=80=A6/hcpu-image.bb:do_rootfs
Writing locked sigs to /build/locked-sigs.inc

Task unzip:do_prepare_recipe_sysroot couldn't be used from the cache becaus=
e:
  We need hash b624e8fbd08eb13286d4a4b6d3da1529ab772e50823498163b6037a41bf8=
6474, closest matching task was 9840022247e52bb8daaafb46c8fbfb176a023a9190b=
8d82dc791a88180f8d414
  Hash for task dependency gcc/gcc-runtime_11.5.bb:do_populate_sysroot chan=
ged from 20c7cd6af9a3e21f873237ad23d59149daf757c9f39fbe1f94a40dd20a1cb9a4 t=
o 42346eedaa47222093541dbfb054769312d7e708a1d903a8c083e10fe9ca3d9a
      Hash for task dependency gcc/gcc-runtime_11.5.bb:do_install changed f=
rom 372e5d885edc9f27e3548571e431c1089916b306aa3f518bede8fe451f78867e to a12=
77e0e0ca187021809916bfafda4b0088a1a48eeccf8647b1b72536c26e00d
          Hash for task dependency gcc/gcc-runtime_11.5.bb:do_compile chang=
ed from 4d7dec38dccfe9ac9bfd7cd71b1e22cbe69314143b2e5febac84fa8d956a8c54 to=
 557b834d6d33bcb61b8922d2082796d1b619739e29473af85393575a1a81c406
              Hash for task dependency gcc/gcc-runtime_11.5.bb:do_configure=
 changed from 41349f7a8533b2977f9fad34dbd8b075c31c71354135d7ec71670322d4116=
c4f to e8dd7df3c9c655eeacb11a1db9d5baca8f83038d39805a50e9a9c41f5ebf8aa9
                  Hash for task dependency gcc/gcc-runtime_11.5.bb:do_prepa=
re_recipe_sysroot changed from e6d3ad59651ef7baffddbb520a9683f2c945ebf5dcb6=
6ef770ea3d836c1667fb to 46f2d5bbcfcb1ee8c68f0b5cc43d3ea45d60f84c1f008c9a8c9=
d92c80a2b151e
                      Hash for task dependency gcc/libgcc_11.5.bb:do_popula=
te_sysroot changed from 48b497761d200528b68f04ada12845b0bbb02f5ef64bd18efba=
0c40c79711a7c to e27e5b2209789ab7cc3c381d22d71c820a6378aa38574ea3dea9ca95ab=
731b7a
                          Hash for task dependency gcc/libgcc_11.5.bb:do_ex=
tra_symlinks changed from e3004a0d28d9673cbc6e1e9985dfd6f87f4fa6e4df9e031da=
3a327ff8dd0750d to 4b3c6febbeae433714bc757e31bcd04b92f23e030175ccb676fccb9f=
d0b296b3
                              Hash for task dependency gcc/libgcc_11.5.bb:d=
o_multilib_install changed from 43e6408f1c205cd4563cc25e760da956b94921938cc=
35b2fe38d1ef721bb2829 to 345d7046500268489739f5c923d6f263d126c65ffe3cc1d9d1=
d5e77154ee92a1
                                  Hash for task dependency gcc/libgcc_11.5.=
bb:do_install changed from 158e627066d3ad74c1956489cf28fce06f7de1d279a4534d=
73b6bab45885f75c to 58737ed711084e53eba36342a5a3e49575bbef3f1709c55b4f1d253=
b9d9e1382
                                      Hash for task dependency gcc/libgcc_1=
1.5.bb:do_compile changed from c20d06b78d813366f21101b573ab0640a84c2372f6df=
4332dcd35ffe80e09644 to 1d93d45e7c0d8af8288bd2a440f6c0e0e2b4efe3e6f5a4d8931=
96581caf801ae
                                          Hash for task dependency gcc/libg=
cc_11.5.bb:do_configure changed from 21014c1940feee29738ebb1c1d3d7f6fc17e61=
c730202d1a9499162e1cc7ebeb to 6872c6fb9f07021be81069bf13bfb9b73142eb0f2b16f=
688459c58634876ebda
                                              Hash for task dependency gcc/=
libgcc_11.5.bb:do_prepare_recipe_sysroot changed from 9624309d899ead2b5213b=
143c9b898268827c9edc806458f97a6e4333363acf4 to f118c3562db9a128a93e60c3de9c=
54f1e00eeca44cf62ac76e71e7812511a33a
                                                  Hash for task dependency =
glibc/glibc_2.35.bb:do_populate_sysroot changed from c52256c34effccd7840c42=
22ac5a0ad22b50371c8138775b8327df326fd1f22c to 95cb4e2f236f66942b70666d82b6d=
7cc6eb2bfab4d662d4afe6d1654a2fadb36
                                                      Hash for task depende=
ncy glibc/glibc_2.35.bb:do_install changed from 2b9aa8a465d6f4b8891fa2de60a=
5016f32e8ebcb4d1a5985957549f65f2b200b to 858cde59e636dd08bccf8aee7ed2dfe063=
536b746e82be688a3b9768e3c9b3cb
                                                          Hash for task dep=
endency glibc/glibc_2.35.bb:do_compile changed from f594098419aad4b7c52060c=
51896971935f7ca417b8cd00a72c8a0e0a3cb178f to d4a2869a371cbc39d6dc809e1a5360=
22a5e1c8ba9aca771c62d1b9a767d0a108
                                                              Hash for task=
 dependency glibc/glibc_2.35.bb:do_configure changed from 445c7e402410496c5=
1c110f7cf65612a7fac562bca17d7717bdcf277f0f3f718 to f1379e556b1093f783e0d18b=
ff860edcfeaf183eeb56d8ac56ae16bb9086ec42
                                                                  Hash for =
task dependency glibc/glibc_2.35.bb:do_prepare_recipe_sysroot changed from =
ba6fb79f362d21ca00cde0353736c152dbe24cb2e5c4891a7ad44579d76e4187 to ef83893=
44a41646964058c4f3919e6d0eeb6aeece26b6bd1428689cf7d0347d7
                                                                      Hash =
for task dependency gcc/libgcc-initial_11.5.bb:do_populate_sysroot changed =
=66rom e4d864e3479628ed0328ba8fd446e12577b17db83d683cd6f0b4f2373ac82c7b to =
8e5ffbd7682e80b255b9d2db9ecde894377884f32a35c7703e29372406d806b0
                                                                          H=
ash for task dependency gcc/libgcc-initial_11.5.bb:do_extra_symlinks change=
d from 17f8ad2d227b4d78763926578c1436a813797452b2d3c1268187a028b252df65 to =
b77aab42b53fffa7fd0ddced8ceb28ccd7a74fa1ff61f1945f9e717edff5a32d
                                                                           =
   Hash for task dependency gcc/libgcc-initial_11.5.bb:do_multilib_install =
changed from a65b0788f91c866ce5797c8df29519e6e5f48d9db850d6ac8420d41a517450=
67 to 11d9d658ec97b99193aa44d4df485558c5c40f34e5b1816e2abed5a59ef2943e
                                                                           =
       Hash for task dependency gcc/libgcc-initial_11.5.bb:do_install chang=
ed from 99411c1247d69cc5ee4c5d130fec832cf8dce1ef251a70fc6a33b3c7a761b6d5 to=
 7580804ef7b9913789ad081a18f3c184138c3cdeeddcd99af0e337454e6e04cb
                                                                           =
           Hash for task dependency gcc/libgcc-initial_11.5.bb:do_compile c=
hanged from 9ab41cd84b84e6b8f7c31c9ffd0dc54e3caad759921c1c8f91f5e335ab9645b=
9 to 8892cb54bfe187f18ed3200d32d7801a4374a033fa445e73267a7a455674154d
                                                                           =
               Hash for task dependency gcc/libgcc-initial_11.5.bb:do_confi=
gure changed from dd3516e7fab44d9893eedac43e9d0c1389db94a1f7209221b3905d7ee=
32cf628 to fa1ee6ec514e11349e5ac83049956c674c5236b50863c40875dda2b904a0adfe
                                                                           =
                   Hash for task dependency gcc/libgcc-initial_11.5.bb:do_p=
repare_recipe_sysroot changed from 7471bdf4a7998b314332ef5a53cd020b9cbd611d=
cc89747bb596283d0c3069ea to a0ee5a718df1331df60a6cca6e30f12f2786a66326746a4=
bba1e65c44d77e9c2
                                                                           =
                       Hash for task dependency pseudo/pseudo_git.bb:do_pop=
ulate_sysroot:virtual:native changed from f6aab8910c7c8c0ab7b4e3ce8cd37280e=
2ba17bb43899cba137d0d82a16b8dd1 to 9e3aa528d1736c6f23ce8ceb6cf181af447cec7d=
a91859f15e216517516c5271
                                                                           =
                       Unable to find matching sigdata for pseudo/pseudo_gi=
t.bb:do_populate_sysroot:virtual:native with hashes f6aab8910c7c8c0ab7b4e3c=
e8cd37280e2ba17bb43899cba137d0d82a16b8dd1 or 9e3aa528d1736c6f23ce8ceb6cf181=
af447cec7da91859f15e216517516c5271

They all end with

    Hash for task dependency pseudo/pseudo_git.bb:do_populate_sysroot:virtu=
al:native changed from f6aab8910c7c8c0ab7b4e3ce8cd37280e2ba17bb43899cba137d=
0d82a16b8dd1 to 9e3aa528d1736c6f23ce8ceb6cf181af447cec7da91859f15e216517516=
c5271
    Unable to find matching sigdata for pseudo/pseudo_git.bb:do_populate_sy=
sroot:virtual:native with hashes f6aab8910c7c8c0ab7b4e3ce8cd37280e2ba17bb43=
899cba137d0d82a16b8dd1 or 9e3aa528d1736c6f23ce8ceb6cf181af447cec7da91859f15=
e216517516c5271

When I run bitbake-diffsigs I get the same:

+ bitbake-diffsigs -t hcpu-image do_rootfs
NOTE: Starting bitbake server...
Hash for task dependency attr/acl_2.3.1.bb:do_package_qa changed from d4307=
ab870402b5b8d90bd20d2b6c5bbb4252accdb34b0e5e1096d31c34c8b58 to dabedfcdd186=
4a04175f7dadbede8e88c1d9fe958f4becc73469f77e30b7189f
    Hash for task dependency attr/acl_2.3.1.bb:do_package changed from 8a20=
50c16691d914e637f40f76066202e0198dfd4893f05656e3eded11cb0321 to f9bf5a3b08a=
50015c97308b57756ba419db122fef1d99b475bf6ec4174221711
        Hash for task dependency attr/acl_2.3.1.bb:do_install changed from =
2190b8cc59d1d9c75ea306b37a5bb0f1bf531ca23766c6ac812da9b96fcf0e90 to b558f3a=
f1c1d2b69d917edcab2d946ff88f1c7b4f9684928747f51d96754bc35
            Hash for task dependency attr/acl_2.3.1.bb:do_compile changed f=
rom 6ef15cb47b96055a93f10a4d5a60c8d929e17ee124aabb7fb7c7158fd2660153 to 24d=
4dc78508fc2501537bc4a2e57b2303cf661986827c0ad921bfa8a665563c9
                Hash for task dependency attr/acl_2.3.1.bb:do_configure cha=
nged from e84268543c6beeed4fb417589bb7fd26f725ac22f425d608ca0dc9a53934e108 =
to 6fcc0ea45b65a3e7298dbd1204f3799f8b94536c8aa6acaf73f6c236162b6b62
                    Hash for task dependency attr/acl_2.3.1.bb:do_prepare_r=
ecipe_sysroot changed from aa33c8a3c907672fc39982b0d18c8fccf03e8fd02c6a596a=
c36d9db74c0eb3b8 to beb53a91ae4f97fb8d817ae1a1bb254ab9393752f3bfd69a7b6c4e8=
62eaa8f4f
                        Hash for task dependency attr/attr_2.5.1.bb:do_popu=
late_sysroot changed from ab137d25bf333c428cfdc7a85dc2652feb8e06779cba400ff=
537ab6908e7a2e2 to afa2acef6fd86a74e887fa9b7e13320a4c7ab69efa48da9959332258=
34c17456
                            Hash for task dependency attr/attr_2.5.1.bb:do_=
install changed from 2f315d6cb4677ad64856ef5c3f38f21ae50e2ed77f26251617499e=
96d73c9677 to 518cc2975bac1a0c1f1a224137d0da2429c8d8547a132a8676fd2681fa688=
828
                                Hash for task dependency attr/attr_2.5.1.bb=
:do_compile changed from c1ee040a9a874b5aeba475be61f9e815b79abc47f9057f65c1=
664f05896e2e4f to 9f135eac242452d08d753c4e3ce6df02857c79a7dfcd6691ae8e1a01d=
f1e2f73
                                    Hash for task dependency attr/attr_2.5.=
1.bb:do_configure changed from b12f4e1653454876556968b02dc5c390ec39181b7bb9=
20c16066957a0f00e9dd to dec6cca3ef135d24f5bf9780047731e95bf43e94245def5ddc5=
c287b25de5986
                                        Hash for task dependency attr/attr_=
2.5.1.bb:do_prepare_recipe_sysroot changed from adb3ff528fd99cf7f19969771fb=
a36885def732b3c4fcdca4961cb20757d5423 to 11420897c9aea71a061eb58bf51c80a529=
a53585d568e93e9bcd1e926a489f2c
                                            Hash for task dependency pseudo=
/pseudo_git.bb:do_populate_sysroot:virtual:native changed from 9e3aa528d173=
6c6f23ce8ceb6cf181af447cec7da91859f15e216517516c5271 to 135dd6a6144e7fa7adc=
0993b1cd6ebe5122f1f4afbed5ba67f542e8ff3bb371b
                                            Unable to find matching sigdata=
 for pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hashes 9e=
3aa528d1736c6f23ce8ceb6cf181af447cec7da91859f15e216517516c5271 or 135dd6a61=
44e7fa7adc0993b1cd6ebe5122f1f4afbed5ba67f542e8ff3bb371b

How can I track down the cause of the hash mismatch? Any help is
appreciated, because this problem persists and it drives my crazy.


Thanks in advance, J=C3=B6rg


--=20
Navimatix GmbH           T: 03641 - 327 99 0
Tatzendpromenade 2       F: 03641 - 526 306
07745 Jena               www.navimatix.de

Gesch=C3=A4ftsf=C3=BChrer: Steffen Sp=C3=A4the, Jan Rommeley
Registergericht: Amtsgericht Jena, HRB 501480

--fpufd266tcfzlqcy
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIIThAYJKoZIhvcNAQcCoIITdTCCE3ECAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0B
BwGgghDNMIIFgTCCBGmgAwIBAgIQOXJEOvkit1HX02wQ3TE1lTANBgkqhkiG9w0BAQwFADB7
MQswCQYDVQQGEwJHQjEbMBkGA1UECAwSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHDAdT
YWxmb3JkMRowGAYDVQQKDBFDb21vZG8gQ0EgTGltaXRlZDEhMB8GA1UEAwwYQUFBIENlcnRp
ZmljYXRlIFNlcnZpY2VzMB4XDTE5MDMxMjAwMDAwMFoXDTI4MTIzMTIzNTk1OVowgYgxCzAJ
BgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtKZXJzZXkgQ2l0eTEe
MBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYDVQQDEyVVU0VSVHJ1c3QgUlNB
IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKC
AgEAgBJlFzYOw9sIs9CsVw127c0n00ytUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezco
EStH2jnGvDoZtF+mvX2do2NCtnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQ
Ijy8/hPwhxR79uQfjtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4
A8BQOujM8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm
AUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiVZ4vuPVb+
DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9N6frXTpsNVzbQdcS
2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sFqV4Wg8y4Z+LoE53MW4LTTLPt
W//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9HE0XvMnsQybQv0FfQKlERPSZ51eHnlAf
V1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrW
X1Uu6lzGKAgEJTm4Diup8kyXHAc/DVL17e8vgg8CAwEAAaOB8jCB7zAfBgNVHSMEGDAWgBSg
EQojPpbxB+zirynvgqV/0DCktDAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYD
VR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEMGA1Ud
HwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2Vy
dmljZXMuY3JsMDQGCCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29t
b2RvY2EuY29tMA0GCSqGSIb3DQEBDAUAA4IBAQAYh1HcdCE9nIrgJ7cz0C7M7PDmy14R3iJv
m3WOnnL+5Nb+qh+cli3vA0p+rvSNb3I8QzvAP+u431yqqcau8vzY7qN7Q/aGNnwU4M309z/+
3ri0ivCRlv79Q2R+/czSAaF9ffgZGclCKxO/WIu6pKJmBHaIkU4MiRTOok3JMrO66BQavHHx
W/BBC5gACiIDEOUMsfnNkjcZ7Tvx5Dq2+UUTJnWvu6rvP3t3O9LEApE9GQDTF1w52z97GA1F
zZOFli9d31kWTz9RvdVFGD/tSo7oBmF0Ixa1DVBzJ0RHfxBdiSprhTEUxOipakyAvGp4z7h/
jnZymQyd/teRCBaho1+VMIIGEDCCA/igAwIBAgIQTZQsENQ74JQJxYEtOisGTzANBgkqhkiG
9w0BAQwFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcT
C0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMT
JVVTRVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTgxMTAyMDAwMDAw
WhcNMzAxMjMxMjM1OTU5WjCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFu
Y2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4w
PAYDVQQDEzVTZWN0aWdvIFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBF
bWFpbCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMo87ZQKQf/e+Ua56NY7
5tqSvysQTqoavIK9viYcKSoq0s2cUIE/bZQu85eoZ9X140qOTKl1HyLTJbazGl6nBEibivHb
SuejQkq6uIgymiqvTcTlxZql19szfBxxo0Nm9l79L9S+TZNTEDygNfcXlkHKRhBhVFHdJDfq
B6Mfi/Wlda43zYgo92yZOpCWjj2mz4tudN55/yE1+XvFnz5xsOFbme/SoY9WAa39uJORHtbC
0x7C7aYivToxuIkEQXaumf05Vcf4RgHs+Yd+mwSTManRy6XcCFJE6k/LHt3ndD3sA3If/JBz
6OX2ZebtQdHnKav7Azf+bAhudg7PkFOTuRMCAwEAAaOCAWQwggFgMB8GA1UdIwQYMBaAFFN5
v1qqK0rPVIDh2JvAnfKyA2bLMB0GA1UdDgQWBBQJwPL8C9qU21/+K9+omULPyeCtADAOBgNV
HQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
KwYBBQUHAwQwEQYDVR0gBAowCDAGBgRVHSAAMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9j
cmwudXNlcnRydXN0LmNvbS9VU0VSVHJ1c3RSU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNy
bDB2BggrBgEFBQcBAQRqMGgwPwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNv
bS9VU0VSVHJ1c3RSU0FBZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3Au
dXNlcnRydXN0LmNvbTANBgkqhkiG9w0BAQwFAAOCAgEAQUR1AKs5whX13o6VbTJxaIwA3RfX
ehwQOJDI47G9FzGR87bjgrShfsbMIYdhqpFuSUKzPM1ZVPgNlT+9istp5UQNRsJiD4KLu+E2
f102qxxvM3TEoGg65FWM89YN5yFTvSB5PelcLGnCLwRfCX6iLPvGlh9j30lKzcT+mLO1NLGW
MeK1w+vnKhav2VuQVHwpTf64ZNnXUF8p+5JJpGtkUG/XfdJ5jR3YCq8H0OPZkNoVkDQ5CSSF
8Co2AOlVEf32VBXglIrHQ3v9AAS0yPo4Xl1FdXqGFe5TcDQSqXh3TbjugGnG+d9yZX3lB8bw
c/Tn2FlIl7tPbDAL4jNdUNA7jGee+tAnTtlZ6bFz+CsWmCIb6j6lDFqkXVsp+3KyLTZGXq6F
2nnBtN4t5jO3ZIj2gpIKHAYNBAWLG2Q2fG7Bt2tPC8BLC9WIM90gbMhAmtMGquITn/2fORds
NmaV3z/sPKuIn8DvdEhmWVfh0fyYeqxGlTw0RfwhBlakdYYrkDmdWC+XszE19GUi8K8plBNK
cIvyg2omAdebrMIHiAHAOiczxX/aS5ABRVrNUDcjfvp4hYbDOO6qHcfzy/uY0fO5ssebmHQR
EJJA3PpSgdVnLernF6pthJrGkNDPeUI05svqw1o5A2HcNzLOpklhNwZ+4uWYLcAi14ACHuVv
JsmzNicwggUwMIIEGKADAgECAhEA/OH3TxzsxiYnBai43hD2fjANBgkqhkiG9w0BAQsFADCB
ljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMH
U2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJT
QSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0yNDA2MDQw
MDAwMDBaFw0yNjA3MDMyMzU5NTlaMCoxKDAmBgkqhkiG9w0BCQEWGWpvZXJnLnNvbW1lckBu
YXZpbWF0aXguZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDNxFyhl/UuZdUp
uQiuqZBMSU/pN5SMIj4lkvTlrtp2jl4Q77wbv4vXdXIFWqKd3qtut55G0ptK4nXs1ARrh3AH
QAYwB0vW+PHVNPLs9yombnTeMgnEv/RQDFkH+DxoKdY5+DRUmcVO/tYl6ExMEBj6oh6b/63w
hIkC61WRETH3FpRCRbyNBD73OWt0KzxoKzW9xmdqfhNtylLcIFMzuv9C1WAqJ3mLbFHYaW4N
EMMckPZJWWYzvA2nwCCryerE3J9z4ZbSK0OK6DDRN9gW/H7+/4pHSIhdooGfQEdgLj+Z4ZPh
vLMF5DncBD8k5DOK8mlDxCKp4GsrLLuBfLQdxilvAgMBAAGjggHiMIIB3jAfBgNVHSMEGDAW
gBQJwPL8C9qU21/+K9+omULPyeCtADAdBgNVHQ4EFgQU3lTOaS6cJRsIzzEjdtC4j6GPtWIw
DgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsG
AQUFBwMCMFAGA1UdIARJMEcwOgYMKwYBBAGyMQECAQoBMCowKAYIKwYBBQUHAgEWHGh0dHBz
Oi8vc2VjdGlnby5jb20vU01JTUVDUFMwCQYHZ4EMAQUBAjBaBgNVHR8EUzBRME+gTaBLhklo
dHRwOi8vY3JsLnNlY3RpZ28uY29tL1NlY3RpZ29SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFu
ZFNlY3VyZUVtYWlsQ0EuY3JsMIGKBggrBgEFBQcBAQR+MHwwVQYIKwYBBQUHMAKGSWh0dHA6
Ly9jcnQuc2VjdGlnby5jb20vU2VjdGlnb1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2Vj
dXJlRW1haWxDQS5jcnQwIwYIKwYBBQUHMAGGF2h0dHA6Ly9vY3NwLnNlY3RpZ28uY29tMCQG
A1UdEQQdMBuBGWpvZXJnLnNvbW1lckBuYXZpbWF0aXguZGUwDQYJKoZIhvcNAQELBQADggEB
AANadCCx1OE0/PYv8CMHn1qrbn3u9yIQuut1yAVv1daof2ULxyGOm/M+XnSW1h+xcUukaNTB
qwJx6KTauuWjVL1LRXz9+sNvQfS1KdJF9yfgcCTiIMNjfKap+t/dD275tpVeLbRSWyJaQRhb
GVjarr8yry1mnaaiJqv1TERaHqjDNpEwU/Ex8XetmkdJK01qCP+ZOEHwRr/pEB/oEKYB08+P
CfWWWT0YVlwW3FdYpMi70zyynhyE0ZkxBuwh20CulXlafk9nzu1ly9HDU2MG6fnKLirJLOj1
+9s6RvytgsBtk1dB4lJEMe32RnTa4ABWg2VpdqmG7wjr2BlUCzLzuxUxggJ7MIICdwIBATCB
rDCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UE
BxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdv
IFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAPzh908c
7MYmJwWouN4Q9n4wDQYJYIZIAWUDBAIBBQCggaAwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjUxMDE3MjAxOTI2WjAvBgkqhkiG9w0BCQQxIgQgKi9vV2ZJ
Zfa7WPi2uLrFn/0A4sX8j6aJyN8tjIsgx6IwNQYJKoZIhvcNAQkPMSgwJjALBglghkgBZQME
ASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA0GCSqGSIb3DQEBAQUABIIBABp6WIFid5en
U/zgKyT54/TywzZOat5XMxHvjOXwKFZGFRo78KnijSb6SiN+zme5zigjVVXghjLRERf8Lf8T
MDqcfxvNNkigtvUmXIPl0/63rB5Qv8e4kkgkOkXDkiM55yQlwzitNdEM/TzAQedz2ZJzKw6r
0hc4fuPCEoib4xcL1MOYd7ujD3e1KxXMsB6RPQLvcL0zp0ISWv0SLlf7rxrrMQ9BnB1WEjjy
rakjVSrD6OLkePHxESAMHDAkSMLjJZHsWLPvXVXQMLEh0+OGaccDpshkywmI5/KijtWd96GN
b7hEen4cjI5PevaUQklU5X/IPt8rntgP5zT2TA3X0bQ=

--fpufd266tcfzlqcy--

