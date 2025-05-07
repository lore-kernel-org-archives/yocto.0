Return-Path: <alex.stewart@emerson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528A2C3ABC0
	for <webhook@archiver.kernel.org>; Wed,  7 May 2025 15:22:01 +0000 (UTC)
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
 by mx.groups.io with SMTP id smtpd.web10.1267.1746631315227113235
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 08:21:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emerson.com header.s=email header.b=MUEhlIs6;
 dkim=fail reason="dkim: body hash did not verify" header.i=@Emerson.com header.s=selector1 header.b=6UG4eVX5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: emerson.com, ip: 148.163.142.35, mailfrom: prvs=42224e0a80=alex.stewart@emerson.com)
Received: from pps.filterd (m0144092.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 547EbRxU019749;
	Wed, 7 May 2025 15:21:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=email; bh=AIV6
	0a4XLSskGMDQBxT2eL+G59zMCpGPdgn6wcN1DQc=; b=MUEhlIs6DEWO9oQHVJlr
	PLqmVsdKBTiN4kTmFTmSy+d4Xkwf9BOOfd3vUDEgxZntHj4bsIXxI/O+WtyD8PI5
	Ri8jb1aPZtYaVc3hR5LgCIsuCLeuG9YWqyFMa11IxFCNtPPzPPHCSV4JanL3yheI
	Ga+l2uNtRJbtmWO8FBnL4SdOwcuMXtaxHom8KcK8E1+i8uWqfxND6hh4dO91Mx5q
	SMf8FxPTtM+45UFShLXPdBOTaloVC6tcGgN1f1A41tTEr/TN5q0wbRDuqHF4HH70
	qkFrWAEdyr6OqkXvRGBxHSX9V4wlZjm/0GJ34aTujE2c5Af4oXFH0Yykx2ykOQba
	/g==
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azlp17011025.outbound.protection.outlook.com [40.93.12.25])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 46g9ehgxkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 15:21:53 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FaCs5fbfsXCg2KVpktOtkJBmpwOFrerskhYBbfNDoufVtpWg0tZRzhhaoUdVwcM3TLljGxqUBfIn2ympRmjluaqE7n5KVhBDiK2ZrDlvkg4UDE+rwTqCsdOdvtXTAgiLe82yf37nHYxuVMOzYc+lD6+Ey5R1cEphKihRCrF79syvQxROlf5wAHduX0aMr5jvmDOU5CuiSg4Qz/ft0+ZnrTIsRlexqY/MJLL2471HRkg14NnRpdVuKJ/FUJMqFV2hqEeIcbdmnmPCSUwmt33U7mVEkuxclnym1lChr1DnFl7erTlTSrofo3qCDkMkZ23GEwq9c7nUEbDWXrsIum1Gsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AsMC2XTLG18dXAlrVCxJzV8IlYdRuSWUX6T0sQEe6M=;
 b=CTyqSgNp21t5pd/+8SWu5+hg7msYUK9qji92Zbkn4TV/moQ1kY41P/UGcQQ81aEDZ/RCGY4LxD/TtlWR1xIO407Ncu5AMLm4bZeWVjLI+SuxJcvr77QHZ7wJxuCbm+osvO1b7Ox9NY+aO9tEfTSocG9k//QQkDkNFr7Gu01+wxBKQOQsC1xtltX8PXC6ZeojYqP9NkVQ8Q8YUprqhkTLEqWGJbzod/sWtkHOfwZoBtQ+PBYIgrjl5StqVeKnJ99ysQLm8quGCZJskg3ApRdpq0ZKAHl32iMVBTSAy0TzlNlkyMWIDR10i93b+19TuZXEzWqBE2Xn12ZvKzuKQS0p0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AsMC2XTLG18dXAlrVCxJzV8IlYdRuSWUX6T0sQEe6M=;
 b=6UG4eVX521DooLKrCdZo5a2HcbrUgDhYkEOZnCTf5Uj2s53UBJZyCwAbwW2gipXtI1Hy46l3waPSOvZJYG68ZjPJ3gnvUoBkoxg+kNkLzyeTQFSbYjNPUlyivDhF2BM/31XApydMeSCjz9/UFRr+VjwKuOcbIU/+Rynh6z9BG0exySXor4H8YzZrUtEsg51Ty+RMwozhfmGKZmWOnBu6z7T1Y3JkFe0WbBO3J9WNc6PvFkAaf3EgXFe8fNp23bRFIASJetQ00Xa2CbfBdk0CktjSmQLxzKLSn1hWwrHhorKFCA3SEe0NfCjHY+Hb/sK0zgto0IbJQPn859xPYHb6Hg==
Received: from SN7PR10MB6285.namprd10.prod.outlook.com (2603:10b6:806:26f::17)
 by CO6PR10MB5553.namprd10.prod.outlook.com (2603:10b6:303:140::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 7 May
 2025 15:21:47 +0000
Received: from SN7PR10MB6285.namprd10.prod.outlook.com
 ([fe80::ec4a:1217:7281:cc6b]) by SN7PR10MB6285.namprd10.prod.outlook.com
 ([fe80::ec4a:1217:7281:cc6b%3]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 15:21:46 +0000
Message-ID: <195686fa-701f-461f-8517-411a6266f894@emerson.com>
Date: Wed, 7 May 2025 11:21:44 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [EXTERNAL] [yocto] Install externally built .ipk packages during
 image generation
To: yocto@lists.yoctoproject.org
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
Content-Language: en-US
Cc: matthias.neubauer@sick.de
From: Alex Stewart <alex.stewart@emerson.com>
Organization: Emerson
In-Reply-To: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
X-ClientProxiedBy: BLAPR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:208:335::20) To SN7PR10MB6285.namprd10.prod.outlook.com
 (2603:10b6:806:26f::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR10MB6285:EE_|CO6PR10MB5553:EE_
X-MS-Office365-Filtering-Correlation-Id: 807702ae-e963-4985-7e15-08dd8d7ae189
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|10070799003|4022899009|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?b2Y4RmFZZ3FxRk10QzB1T3RqOW1rYzBWNWhTaXZRc01uMDczMVZMbHA3Nity?=
 =?utf-8?B?T3h0QzFmT1B6Tlg3ditxa0VJRDdtSzFLS1F4ZlN6cEswNUtxNURYQ2lTTjFG?=
 =?utf-8?B?dkhGckJzelcyRWxiSlNxaHhVQ2VnOUVUS05PK1NYVVJGOGpvMUIvOWpERnVm?=
 =?utf-8?B?bkVMWTE2dFFHRExEZ25mWVpYU0RUTWNrZ2RDbjdZNDRRcjREWUthbFV4WDNS?=
 =?utf-8?B?K01FL0FYeHcxeUk0SmhkSG4zejJKMkl5cnJtWjYxWjBYZ2hGb0l4aG9oTmox?=
 =?utf-8?B?RG1MSm9rKzQ0dEpNZG05Y29kWUduOFA1cWd1Q0p1SUtBeXJpcVBocjBCdEdV?=
 =?utf-8?B?MDZHWjhxMVc1eGQvNnVBTGZFMWVsUklxZ3J1Wk1Ubm9MMm9QdFRCYk5FOXA2?=
 =?utf-8?B?SGNuZkxMTUJiYkQ5U0VCQndod25Lbjc5VUtvbkxrQ1hwNEJheTZWZ2pENDhz?=
 =?utf-8?B?NWVTN2lGcG4zUGVYSm92TC9GMmRMc0l6KzVKUDdCVUYxL0RPSmdYcWJ4eUJ4?=
 =?utf-8?B?akpwOWsyR1JRVjZDQ2l2dWZOUWdROUl0cHhUV2VaN1g3VFBVa2huQ1M0Tnpy?=
 =?utf-8?B?SmJLY3VMbGlDUEZiSW16c1dxd1g4bHMvdys0eGVxMWlTbzVKT29XMkE1TVpX?=
 =?utf-8?B?ak5lQUZqSnllZHZONS9jYzQySDQ5QXNaRWdGRHZJZkZJclhTQXBkUmlCcTFz?=
 =?utf-8?B?RDRsc0E4T0s2VmZjTFI4RHFHU0JnVVRDMWhSWVdjcGZPYi9QdXE0OHlTV1c5?=
 =?utf-8?B?MG10UnVTQXc2QS9KUG9Tci9mQy85SUN3clozSjUva2lQVUlDeWczNmFZaVRW?=
 =?utf-8?B?dDFCSVZ4a2lFWkhhbnN4SUZrelp1ZUtTR255SVhFS2JsSi9oNWZQam4rSTc1?=
 =?utf-8?B?NWRraVI4eWhUTlpBZ1NDUmxQZmtjeEJuQUFsYzNlbHFhRzRQTldWTkpnbVdh?=
 =?utf-8?B?dkJubHcyT3l2UGpJNklIZ1VZK0V2Y3djMXVBM2Jncmt4VXBqMCtwQ29RaWJC?=
 =?utf-8?B?cUd0eDA0Z3kvMXIvY3Vya0ZXU05TUkd3V1IrSGtQVG44VzNuQjVncXh4aFRr?=
 =?utf-8?B?OXpLQ1FrRFgyVjVnV2ljQW9SbDZPUzc3Y3lmM0Q0QmZkMHdZV1RUeDhqeEZk?=
 =?utf-8?B?ajM1bDFxRGdzK29sckpKeHp1bmxacjl0Zy9yNEUrQmxuM240NDhBWXVPMzRI?=
 =?utf-8?B?Z3VybXVZZ2dINGNzN1hRZmY1Q1ZSRTVvWDBKQ083TzZzWnMyMzdoSFpHenU5?=
 =?utf-8?B?c1JaNENWdlRmTDNaM1ZkZWk2YU1ERnMyelBoZ3F5V3VKSUJWZWZJcWlXU3dh?=
 =?utf-8?B?RHdiTGpQWGlMNUNpUFM2Tnp5Nm9WWEdXem4xVjU2SUhTUHVoKy81U2VON29l?=
 =?utf-8?B?TW96TytybjFlcGdwK3dOVzdNejRTRHhtdk1RN2tNMzBQMEREa0xrcXR5Z1FX?=
 =?utf-8?B?SHY4K0VlN2RKTituSUl1UVdOdWMzUkIwckNoU2M2eGRtamY5QStTTmJETWhC?=
 =?utf-8?B?SVpCVzdGNVNiSkh2NTdVS3Y5WDhWM1ZmbFRYU2FEQXJock5TV0lUU3NwSlA1?=
 =?utf-8?B?emJWWktVU1BPVjU2cDh2RmJQNGJqVGlOTk9aM09WMDdqemR2U1B2ZXNYL0pS?=
 =?utf-8?B?b1hNS2JJWXJabnMrS1R1MW9Vc09Gb1U5S05pT3lzMDRxa1hSSGNxWC85VmJS?=
 =?utf-8?B?RWFpellUZDdhQlFxOEZrNUkrZlQyeTd1amVIR3JOZ0U4Uy9mcDcyc0ZVUHFC?=
 =?utf-8?B?ZFpwZGZLeEYxdWQ3M3dDQ1VwUlhuYmsvTFVFd0F0cHhvKzFDdUxvVFoxR2R2?=
 =?utf-8?B?Ym9HY2RTSTRqMDdDd0RZbGFMdVR0bUtXYStKdEJZZVZkdXNvRHdOREtxQURJ?=
 =?utf-8?Q?F751m3HkWcIHo?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR10MB6285.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(4022899009)(366016)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VGd4ZjNFcGlnN0JFOGt0WTNrdUplYUFJc1k3dUYvWFEwMGtHQk1ETTJnbGpQ?=
 =?utf-8?B?c1dmTHg2S2VZRE1HWS9VaGtaZ3RLVXZKUk44c2lRbGZoamJ1SUhQOVFheVdu?=
 =?utf-8?B?YS9PcVlqa2JOVmJSdWJ0M1g5NFkvOXBHQjcxaEN1UHFnd0t0UDVWWGZpMS96?=
 =?utf-8?B?b0FmU3pJclhhanZ4akt0N1A4TGlXK0dqMGpNekozMWh3cURZRU0vNHBCbFp4?=
 =?utf-8?B?cWhjR1FhOW9LUE5MOUMzbjNOSS9LYzI1Rml2U1FGTVNHM3R5dlFlLzF2QjJ6?=
 =?utf-8?B?ZkVkRGtkTng1TUVmc0VTYkp2RXpEY0c4N2dsRkJYb25ydUdvWS85OTB3SjJO?=
 =?utf-8?B?UEc0NkY3elJHQkwrNWhGREwyVDFIbXp1NC8yUjg5WGowYjVJSFhFK1lzMDJ5?=
 =?utf-8?B?bkV4Z0t1cFlNcFpmcGg1SmoyWnM3VlNkUE1ZZ3AyNHdIRVFaM2JESzdNSktT?=
 =?utf-8?B?dTdkalc5c2Y0bUpBODFWWS9oa3dES2MrbGNwejhCU2p3R2hLMGkrL0hyeU53?=
 =?utf-8?B?RVJoMVRZSThZVmZLTEdDK2NLdVRueHkwbDEyaENnVGZDbERFOTR3cG43Tzdt?=
 =?utf-8?B?MjFOR2hhQkFGdXZyMmMxYXhxSUZEa0d0bVNKWnNHZzhkd1RhOXBMY1pFbkRT?=
 =?utf-8?B?QVUrdG9udTFEajI1c3FvQjZxQXZod1l0UTB3Q2lEdFJUeTI0M2ZDb3FoODV5?=
 =?utf-8?B?dmlyU1g2V1E2cmE5V1VGaHZnWkZSWVdtajlRWW93ZW0wdVJ2b051WGNjNGl6?=
 =?utf-8?B?dEZMR3ZTM0JQeFBUUlh3dDZGZ2Y1YlNaRlh1RnM0TWVRY3Y1ZGNxVDRZWHQz?=
 =?utf-8?B?azBHTkNrMEpLdFM2cC8rWGVmRmNsZFBUODhQdDBBTjRhMDBwZk1yZU5zdVhI?=
 =?utf-8?B?RERiRmUvOTlOZlRIZk4ydHJ6R2NhRXVPcWVmaFVmRFVJQjMyMm1zZDliajZB?=
 =?utf-8?B?L09wL0VBcGFWWWhQOXR2Qzg1WmxSYkJjSkJIMkVvRmRjalhOY0s0anA5WC8z?=
 =?utf-8?B?aVlJRGJsNDdSQnNpTG04ZTZ2Z0ZJeTgvVWlTdWdLeVFZQm1CSzk0dXBVM1Fj?=
 =?utf-8?B?dG9LVXBGSHpYQ0pITnpOc0M0YUI1c0Y4QVNGRVpUMVBkQ1ZLVzZnVlhlazJM?=
 =?utf-8?B?elVSUmpVaGVVMmZiRnc3Z2oyTTBZWDdmTDlwamU1RFhGbE41anBteXh5Tjl5?=
 =?utf-8?B?QWs0WnVJL0xpeEhSVlpSVVF0bjlRMkZQTVpQdi9ReEhwSC9iemV2QUdVcUJV?=
 =?utf-8?B?VmR0bGtlUWJodFNDZGRUTEtwVHNzaUNYa1NFckxiRHpIK2liUTllL0RMMStq?=
 =?utf-8?B?bDRnYTM2dWRobHdaa0d5SXVLVnNxQzlFaXFxZ2Y5TG9JUUl1V3JkajZacnBC?=
 =?utf-8?B?UXQySGRsVVRsczQ2SjlaZjdvWlVMNHczQkxOZHI2VW05V1hBRkdWaUhPak5l?=
 =?utf-8?B?UjBZUGhLN2l6QWJIOXdIcHRHcTZZOWhvYXBCbU5Wamt4NCt1djY3RmJZMFZn?=
 =?utf-8?B?ZUcxUjFVMnlVRitOYUF1R2Fxai85dWQ4ak5qRENNSGJsRy9xRXlhUENrVWZQ?=
 =?utf-8?B?MXpkaGN3TVQweGQ3bksweWZnYVlOK1RzR2NCdWxrd1dvQ2FPSlB1U05UOURZ?=
 =?utf-8?B?ZVhCOEI3NFNwRnZKSWRiT0NDRk9EWkJ6cTJ6WEZMelM3bjRUTDBRU0dVWUUw?=
 =?utf-8?B?bUhyUmsxZDVJYzVyTnVGMTF0Qlk2Yi9GTWZhUG8zcHpvUVU5T2hUN1VORVA4?=
 =?utf-8?B?c0Eza3lqZlBTdEtPRWFENDMybE9zMUQxaUFweEFFQXAyK241aXVKeHB0WXYx?=
 =?utf-8?B?REtqT2RLRjhLR096clFwc2l4UGJUYyt3Q0xXVjZQajZSN3pqVEZPSHZnZjlv?=
 =?utf-8?B?TkZoR0xlbDBseWZPbzdhaTVxQkt2WkJlZHdTK2RwWUR5RDhVaDh1SzM3cDF3?=
 =?utf-8?B?clVwN3d5amVCeE1EdXIydlYyMjVXRGUxN055L1d6blE4cUJ3Nk9ZSVpFNzlS?=
 =?utf-8?B?SzV0THNOdFh4Qk8wUVFBbW0zTDBpdllWMlNXUng1QW8rWnZrbmsxOUlrZE16?=
 =?utf-8?B?Y1JOUi9KaVQ2N0ZwdVRsVjdrQ28yZkI5dEdOMk03MWU1cEtTcGVzOWlZaGFT?=
 =?utf-8?B?ZzBxQ1Y2RWdnMVhNcUk0RDc4ejhsVjVaYVh0TnVLZmdqdWNOTG8rb25CRTg0?=
 =?utf-8?Q?CXShBN/V9ZbOeyAh/HkopUo=3D?=
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 807702ae-e963-4985-7e15-08dd8d7ae189
X-MS-Exchange-CrossTenant-AuthSource: SN7PR10MB6285.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 15:21:46.7487
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GRXg7FbRIAmhKsZx54EVbqPSpyRtH1XLyLgPDefjO2qzCHiAu0UK9hTu/k+IHXKaUHLuzoaLCMBuY1REDjSC+LHe7+PstYjS8DD2OysHxKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5553
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: k-SlUa-RVHKY3SAnAcL2kP8H1pAMws_V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDE0NCBTYWx0ZWRfX6T/q2NhG6PwW ma/qm0O+2Xz0RpxrrcXjVsYr9B2B0C+mMkreJwJPwDPBmWCT1i7nj85VBlByek2+rcFaVbXuIal JBakhD6kZ+NFDLkOZbYTrvBkQGF33CLCXB3DdVMSqnMEuuSpUE7BOXtlOAa4vS3c3o+aF3CigG/
 aUjcGK1E+tM2P9hEYl8gbmVnLJIGaCTszHC7yOEZhL09mqHrx0ANNsCAnvjxfjN6SE2s3IKvfZy 3J7uBwqmVr6zk34JjpDBDOuhlCdkjahTiRp9bKFdoFJbdqB9AEgjFPofxVRLKw0JTpoSaIt9bIs Jb8XUCPzyf1b40CJpvvMQttT8dwBlqp76RNTrcf4SZImeFmqSq8PmhHf9r1uyAYrKNHHUQk09Mb
 Zpptzlp3mxkEusbo9w5Z7m3qmW3bQYF3pJ44o0B2nzOsDJlamBpHf8zWJyjCA5NoWtSToAk2
X-Authority-Analysis: v=2.4 cv=G60cE8k5 c=1 sm=1 tr=0 ts=681b7a91 cx=c_pps a=+Uvz/0742UIoYwQyQT1M/g==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=ZPWZ4rD8_x8A:10 a=NEAV23lmAAAA:8 a=RpNjiQI2AAAA:8 a=uherdBYGAAAA:8 a=iGHA9ds3AAAA:8 a=__reGKuPAAAA:8 a=geDs06hvAAAA:8 a=js2y62o8jUJccKwiAzwA:9 a=lqcHg5cX4UMA:10 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=XM2Ojvwjc1kA:10
 a=ImwWUX5h3JJ3gRE9moBe:22 a=z2U-W3hJrleVIN9YIjzO:22 a=nM-MV4yxpKKO9kiQg6Ot:22 a=ZWq3DkvqUpLo1-QMl0b1:22 a=7yvi0DHx91fDKfvzWsLo:22
X-Proofpoint-GUID: k-SlUa-RVHKY3SAnAcL2kP8H1pAMws_V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_05,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1011 phishscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070144
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 15:22:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65293

NI LinuxRT (NILRT) uses a build process like this.


The NILRT team builds the distro within OE, using the=20
BUILD_IMAGES_FROM_FEEDS codepath, which configures opkg to compose the=20
images based on a package feed URI that we set for it [1].

Before we build any of our distro image targets (or SDKs), we build all=20
the feed packages we want to use across the image recipes, and sign them.

Then during the image build stages, we configure opkg with both (a) feed=20
sources that just point at the OE packages you just built and (b) a=20
network feed location to an externally-built IPK feed of NI-proprietary=20
IPKs [1] that are contributed by other teams. The image builds pull a=20
selection of these packages [2] into the rootfses.

There are a lot of details to how the OE logic works when building this=20
way, and we have a set of patches that we carry out-of-stream in OE to=20
make it work. In fact, the entire BUILD_IMAGES_FROM_FEEDS structure=20
might have been deprecated out of OE upstream at some point. For all the=20
reasons that have been expressed in the other thread, upstream doesn't=20
really want it. But it does "work" for us and has for a long time.

Installation from feeds is a desirable workflow for us, because our=20
distro supports a relatively wide selection of product families and also=20
different *modes* of operation that require different images. And we=20
support users performing runtime package installation.

But the only reason we install those proprietary packages is because of=20
technical debt, and organizational reluctance to release their source=20
code. For the reasons expressed in the other thread and below, it is a=20
pain to support. And it is something I'm trying to burn away.


In addition to the complications that were listed in the other thread,=20
SBOM generation is complicated. If you want to make SBOMs (you should),=20
there is no technical or procedural way to ingest SBOM artifacts for the=20
external IPK feed. The current OE-core branch will error-out when it=20
discovers that there are packages without native artifacts. We have a=20
workaround in our branch for it [3].


So, while I would also recommend against designing your build this way,=20
I have precedent for it working for a decade or so. If you want, you can=20
base your OE-core ref from our fork and try to get it working. I don't=20
think we have any other major deviations from upstream apart from=20
BUILD_IMAGES_FROM_FEEDS.


[1]=20
https://github.com/ni/meta-nilrt/blob/ea947ebaa660b85fcba509d8c540c8c637a45=
2d0/conf/distro/nilrt.inc#L153

[2]=20
https://github.com/ni/meta-nilrt/blob/ea947ebaa660b85fcba509d8c540c8c637a45=
2d0/recipes-core/images/includes/nilrt-proprietary.inc

[3]=20
https://github.com/ni/openembedded-core/blob/79c813406e0a1887338c6e0427e121=
cc6f375c3b/meta/classes/create-spdx-2.2.bbclass#L1037



On 5/6/25 10:31, Matthias Neubauer via lists.yoctoproject.org wrote:
>=20
>=20
>=20
> Hello everyone,
>=20
> four our own Yocto-based Linux distribution, we are generating an SDK for=
 different project teams to use.
>  =20
> According to the diagram titled the "Open Embedded Architecture Workflow"=
 (seehttps://urldefense.com/v3/__https://docs.yoctoproject.org/what-i-wish-=
=20
> id-known.html*what-i-wish-i-d-known-about-yocto-project__;Iw!!=20
> OkyjEqkqqe9UhNQ!=20
> wh4QoGQI9NOpuvbGcyASVY9GZmXJubAaTXIwcjiNxQrGMkYcA4EHB4MwJxuJ0_YP3PizG5G9K=
6yMKKr-MwMBq2ApHB22pM8IrDPWldf3$ <https://urldefense.com/v3/__https://docs.=
yoctoproject.org/what-i-wish-id-known.html*what-i-wish-i-d-known-about-yoct=
o-project__;Iw!!OkyjEqkqqe9UhNQ!wh4QoGQI9NOpuvbGcyASVY9GZmXJubAaTXIwcjiNxQr=
GMkYcA4EHB4MwJxuJ0_YP3PizG5G9K6yMKKr-MwMBq2ApHB22pM8IrDPWldf3$>) it looks l=
ike only "source material" from other sources (such as different teams) is =
supposed to be integrated into image generation.
>=20
> Is there also workflow supported such that
>=20
> * team A uses the SDK to develop an application and package it as a binar=
y .ipk package
> * team B consumes the binary .ipk package to integrate it into an image d=
uring *build time*
>=20
> ?
>=20
> I read about working with packages but only found something about install=
ing packages during runtime (aka "runtime package management"). We would pr=
efer to install them during build time though.
>=20
> Best regards,
>=20
> Matthias Neubauer
>=20
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>=20
> Dr. Matthias Neubauer
> Software Platform Architect | Autonomous Perception
> _________________________________________________________________________=
________________________________
> SICK AG | Erwin-Sick-Str. 1 | 79183 Waldkirch | Germany
> Phone +49 7681 202-3949 | matthias.neubauer@sick.de |https://urldefense.c=
om/v3/__http://www.sick.de__;!!OkyjEqkqqe9UhNQ!=20
> wh4QoGQI9NOpuvbGcyASVY9GZmXJubAaTXIwcjiNxQrGMkYcA4EHB4MwJxuJ0_YP3PizG5G9K=
6yMKKr-MwMBq2ApHB22pM8IrJ_qHH7n$ <https://urldefense.com/v3/__http://www.si=
ck.de__;!!OkyjEqkqqe9UhNQ!wh4QoGQI9NOpuvbGcyASVY9GZmXJubAaTXIwcjiNxQrGMkYcA=
4EHB4MwJxuJ0_YP3PizG5G9K6yMKKr-MwMBq2ApHB22pM8IrJ_qHH7n$>
> _________________________________________________________________________=
_________________
>=20
> SICK AG  |   Sitz: Waldkirch i. Br.  |   Handelsregister: Freiburg i. Br.=
 HRB 280355  |   WEEE-Reg.-Nr. DE 14165396
> Vorstand:  Dr. Mats G&ouml;kstorp (Vorsitzender)  |  Jan-H. Eberhardt | F=
eng Jiao  |  Ulrike Kahle-Roth  |  Nicole Kurek  |  Dr. Niels Syassen
> Aufsichtsrat:  Dr. Robert Bauer (Vorsitzender)
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65285): https://urldefense.com/v3/__https://lists.yoc=
toproject.org/g/yocto/message/65285__;!!OkyjEqkqqe9UhNQ!wh4QoGQI9NOpuvbGcyA=
SVY9GZmXJubAaTXIwcjiNxQrGMkYcA4EHB4MwJxuJ0_YP3PizG5G9K6yMKKr-MwMBq2ApHB22pM=
8IrKS9kATf$
> Mute This Topic: https://urldefense.com/v3/__https://lists.yoctoproject.o=
rg/mt/112649954/3616788__;!!OkyjEqkqqe9UhNQ!wh4QoGQI9NOpuvbGcyASVY9GZmXJubA=
aTXIwcjiNxQrGMkYcA4EHB4MwJxuJ0_YP3PizG5G9K6yMKKr-MwMBq2ApHB22pM8IrE2lzqDn$
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.com/v3/__https://lists.yoctoproject.org/g=
/yocto/unsub__;!!OkyjEqkqqe9UhNQ!wh4QoGQI9NOpuvbGcyASVY9GZmXJubAaTXIwcjiNxQ=
rGMkYcA4EHB4MwJxuJ0_YP3PizG5G9K6yMKKr-MwMBq2ApHB22pM8IrAmtvj1k$  [alex.stew=
art@emerson.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Alex Stewart
Principal Software Engineer - NI Real-Time OS
Emerson, Test & Measurement. (Formerly NI)

alex.stewart@emerson.com


