Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CE5E8B397
	for <webhook@archiver.kernel.org>; Wed,  4 Feb 2026 03:34:03 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11647.1770176039848912678
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 19:34:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=OFuoB8Y2;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=6495392723=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6141Z1Yj3186095;
	Tue, 3 Feb 2026 19:33:59 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=xh+79lHzfCM3aG8GXu4Pgu
	7IPUF0339cFjXcaVbHsXU=; b=OFuoB8Y2zGHwIqNJJ9ljYt7KbBaKW+lQgHFJUy
	m4mGTEsJspkSPjg0iKxBi1efYFnmpuco1NA4dnLWaPxkbVL02ckhvmhALN6VYk0v
	35hNG1ppxBGYpyBGvOzfikhc1PDnqa1hTJymhlQpdIQIrXkMJaykq7CqlRIjFvQ8
	yaC/Bcw0O7FDqIW2S+ymDqZMvr/zkCKEQxHLoZFmuOPH48I+T0ggrQLl98owNuqs
	M/aA6Te92X/CX+8BA+8fnvUow2cZT/qUTG+5dhb1JsoPXp9LzJRHrPALzg68JpbY
	voqF1aFLUo9pf33mvu0COpJrLZ1mDgPPNEnnn2NyUgH7dtRw==
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011020.outbound.protection.outlook.com [52.101.52.20])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4c3vj382vm-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 03 Feb 2026 19:33:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sGQC/SoWMvJakIFNdfDxjxBnrqkU+yUZxg36lWdqF8X4mHimW++NkwzMCcmUdwwDt50opxDrC8xEcFsmj4uvNbWD6BK8ZndljvzbkKXrAHVqB8mU+HY5haaA77RtdUKOCb0cauao4GHCMtb1nEy9782OkuUCqKX+iUpaT9cJx7WF1Q83id83I+rm3GM38A2Cisr8kG0wAws4f692enw4tWItCv78zHazt945ve6pBDB+j0La3VzC3ioC3irr+P6ef8ZYKxN/wQm5GOR5U1xGQfV0rOlbXxvzHG6otv6qKKSGBfAypTVmZvw+Vu2Fs7aNHhw9lQ8O4e5whtfDe+bvIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xh+79lHzfCM3aG8GXu4Pgu7IPUF0339cFjXcaVbHsXU=;
 b=U0DlTJQwObWFFK7JsuKGkX55jSDK1Msc3yrW/x5avbksVg0dyl1z5zlo5CghulUbV7bXJ/TXulzJ1WTBLIvBt4O3kTTXu02hl0JlhkxXaE+XRv4h61gZdsn3f9YcGCExRWziwbD9BRiB2Mg/UYiAupROtpP7n5/526rD7odvtUfMWvWfXrSooeANFaMtXMmETd6HyI8XALXmPF7gWyiJOhyCZlVlLf930OlcamcD64HMwFLCj4fFBHVSZxKhLPGNtN6TXQrgL2clNUnwd1qAasJgRcY3NYwxn7/EDMbykFwMBxxEPSIAx0oenc9EYH8DZUTc44f+tryrYEI3ICZF+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SJ0PR11MB5181.namprd11.prod.outlook.com (2603:10b6:a03:2de::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 03:33:55 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5ad6:8f90:b01d:2c62]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5ad6:8f90:b01d:2c62%4]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 03:33:55 +0000
Content-Type: multipart/alternative;
 boundary="------------NC40Xl2P1NpPk9RJwTCNnzH2"
Message-ID: <77717969-70b3-4f7e-bf24-486e895f9871@windriver.com>
Date: Wed, 4 Feb 2026 11:33:47 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Question about intended use cases for SDK install vs.
 sourcing build environment
To: yocto@lists.yoctoproject.org, mgarcia@qblox.com
References: <CACHbyn4zkukUWqxw_s+5w5YgJKXKfsdS3WHk=fOCgz0xn5mgGQ@mail.gmail.com>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <CACHbyn4zkukUWqxw_s+5w5YgJKXKfsdS3WHk=fOCgz0xn5mgGQ@mail.gmail.com>
X-ClientProxiedBy: SG2PR01CA0194.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::22) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|SJ0PR11MB5181:EE_
X-MS-Office365-Filtering-Correlation-Id: 9437111b-c3f1-4852-2d02-08de639e384f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|366016|4022899009|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VVh4a1g0RVpqbHFzM0d3K3oxTy9kRFNSalRmbjA1YUxEQnFYWGFOT2VaZ3o0?=
 =?utf-8?B?eDZqblJjZUZKcER2TExWcEErL0p1b1VJUzdyWFMydXBiZjlOczFQSnRSTDZL?=
 =?utf-8?B?MFovRm1WZEdyRFdUdE5ZWHFEYy9IL0V2ODNYcUJLMUlsUXlaZFBUZ05zNTcx?=
 =?utf-8?B?bnEvVzcxY0dlTENhMGNnT1k5Q0ZNQU5BSEkvWHRmYzhoZ0pTMHFYR0YrTHdN?=
 =?utf-8?B?dmoxK3hDTUlpaUJYdjNTUEtLWU16WW00aDB5ZXR1bm5vUGU1WFM4VEdIcGUw?=
 =?utf-8?B?NjRDS0dXSlF3bTlsSllUcUJDdStEN1hIYTZmSWkvamRoN0NSbFRjZmVFWTRW?=
 =?utf-8?B?QUlPMEdXV1NzMVJ6ZkY5R2VmTm1sU1JqNUFLeE5BSm9nSjM3R1MyNkRZOVJL?=
 =?utf-8?B?UktiN3cyZVRxbDVLZmVSdkgzckc2d3VmdnA0VEJKanFuaXhXMjNFTmNsSTZD?=
 =?utf-8?B?RytoZGtCb29CaDNmNC9FZnVFU0VmVm1rM2JEUVpmcTRQMnl4OWlmS1lTSnBq?=
 =?utf-8?B?VHZzQ0Fzbi9SSCtGV3l1QjVuaTlyNjlJU2FKKytnaFlVMHBtbjBHQ3lVQUl0?=
 =?utf-8?B?Z3R6Z21GZ0VPenh6aTFTVjd0VUpVSkxyWmJHcTRGY0hGMW5MRlllVWxURzBh?=
 =?utf-8?B?cmpyTjBTYU8zUUx5a3ZnU0RndnpXbGpjeVRmS1NVaHhPOTJJRzlyK3MyaTZj?=
 =?utf-8?B?b0dta1AvZFIxM0N5Yko0T2JBdzJiRnBqSzE2MlBwSTY0bHVNVGV1RHNzVkc4?=
 =?utf-8?B?NCtMT2Q5ZmZINWdUMHpPNmUzVWpvcU5qVFBsd1V3U29zZlVLUEVwclNkOFZw?=
 =?utf-8?B?MHZLbCsrb2xCckkvWGM0S0hCTkUxOXg4Y3dxWmc2MjE0YXNGa1ZMUUE1U2U1?=
 =?utf-8?B?TXp0VER6MC8rdEZlbWRUMHBDSXdNT2xQVGtMeU1DS3lhRTJnNEJ2L0NKaHFS?=
 =?utf-8?B?emtlUDV0QWdvMER6cTVmRkJxN1ljMDNpQTJ2SS9KU1dkcGJ3NVBLZlVjbVFz?=
 =?utf-8?B?bVExVUorU1d2U0tzTFNLS3Zwc000L0RDazhGM3ZQakRwZ2xkTGRrbkluK2Rq?=
 =?utf-8?B?dVRYWENPY3lBeERsU0FnRGlCM0RyUVUwWm9hRExUV1JmdVhuR2pORXNVN3Y5?=
 =?utf-8?B?dFRaYUE5M0k4WHNlRUVxN1VqQUhwR1haR0k3a1EyWDkyT2VITUVkYktNSitt?=
 =?utf-8?B?Q0ozcHNCalBlRGxSdDUrUDhmQnRIaSs5QlJtTkNDVWE5d05lSmhQS3ZZWXJD?=
 =?utf-8?B?T01KUW1aOHduTmgrS2JBNDJkOXZZbFNTSTFQTUd6KzBBOWh4VkNpT0FLdjQ3?=
 =?utf-8?B?eWNzaTFrRUNSanRVRWFYbEQyMENnajkyenpKdGFoYWNNOGo5dFBHM3J0cmpL?=
 =?utf-8?B?TTlIbkNsWVVCSjhvRi9qcFZoMEFBbDRjeFJqNXJGNkkvWjNRcnd0dXZzRU1H?=
 =?utf-8?B?OHNCN2hRZ1RrelVsRUZ2WTdsU3dzeEdxSTBvcHZzVUpMbVlSSWxvdWJqM0Ra?=
 =?utf-8?B?ODAzMm00QXdPOXdqVlVCaUNhZFkreitoWG5jT3BGNFFaR2w5SlVXZEJRZW9H?=
 =?utf-8?B?Qk9FQzR3bDJmNi9ZVzlGNW82SWxFcTcwOFp2UkpHUTJYL1cxbGJuMzRGNWwv?=
 =?utf-8?B?alQ4L2liaHlvYlhpci9Va1lBM1BnaWc4U1hVZEpTeWNaT1k4amlCYUUreWlP?=
 =?utf-8?B?OHBHZWoyeGhqWWo0aXFwNitFWmZrRmw2b2VxZDFuT3hZcWUwNVhxdW5GWmN0?=
 =?utf-8?B?TStrVHBDOFozQStuTUZaZTU3K1pJc0xzYktnaHVlbkQvSGptOHVOdld6NnZi?=
 =?utf-8?B?Y24xS2FJNnA2cE9DUnF6QUZwY0xZRjZqT0N4ejVQQ2wvK292S1JYOGVIc1pO?=
 =?utf-8?B?cUZaeExPTmpST0MrUy9lM2ZIZEVIcmR0eVZkU1lyVFU0ZkxoVjRWZ3RJbU1Y?=
 =?utf-8?B?YTIyNUhZTXp5OGFNYUpZRVltNDBPellKMzVBWStDZGdXN3BrbEh2QTBYZk1B?=
 =?utf-8?B?RzdqOTAyN0R0MklmZU9JUFpBOWhRaHA3N0JZRkZGMnRhcUR1eDNOU3p3cFFH?=
 =?utf-8?Q?AXI76G?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(4022899009)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THBZNGlQVXQ5L1E4M0FhWExNSC9VRU1KWnRFS3ZQSE1xa1lwazMvZmVmZXJE?=
 =?utf-8?B?QUowTTJOV3JiQXprbkNLYm91a1JZT20rSGtrMzN4WUJrVjZlNGN4SHo0NjFL?=
 =?utf-8?B?bEExcHRIZUdFajNqaXJDTkFvOEp6eGRTQ3JmMTN2TkhjcDFYVjdjTkFyZzZB?=
 =?utf-8?B?K0dmVkpGRkhFZ3dvd0pSU0YrdEwxQUdMRmpHY3ZhclZYMmlvSnFqTG1RUW5D?=
 =?utf-8?B?a3pScTZBYzNxaG9sUlpDTytDM1NaOVlxd01VSURsVkd5MmptWmpCeHdLVHp0?=
 =?utf-8?B?ZnlacGprdytaZktYQ2hZb1p2RU5IYWRxK1FhU05LOEVaQmtMRmR4UWZoVXFC?=
 =?utf-8?B?VGRJSi82YVNnOWtRUWp6UG1KR29QaVpzMnk2dEZhc25SWUZhbmw3NW56QlY0?=
 =?utf-8?B?c1pmMWFaYTU4bU1rTm91Qm9TTnUyTitVUTRvYStqYXdsMk9HeldZOWZTVDh3?=
 =?utf-8?B?amNoam90dENjc0hucEl4YWIwelpIeCt2YlRNbmJueFFDZTlWWStCR1ZkTlky?=
 =?utf-8?B?Y0NNK1VHVnVEVjR2OTRObEhCdjRVUGFZRUJCMVQ5VHBpMW1kaVp2OTZVQzB1?=
 =?utf-8?B?MXllT3hYTWNRUW52d2ZQTFc1My9YQkVLa1lPZjRKcktuYjFIcXVzcnlkcFBO?=
 =?utf-8?B?eHJPV0sxbGhnUXFLaHR1T2NQczFnMVJYVmQ2S0xLRUZGMi8vT2JmL0tNeFhO?=
 =?utf-8?B?dWk3YUs5UlNnQXJMZHJlbWIrNkQxRXl0UUExV3dDUk16ZUJPMHBzUTNmN2E5?=
 =?utf-8?B?SklOOGtPaUZRSTBjTzFGejl0RkIrN09PVHpCRnJWTzZtZVUwTWZTbHV1bXRs?=
 =?utf-8?B?dS93Q3ZmanFLTW9RdWlPM0s5TlkvWWtRQTF0ZWp3b0hzbnNSM2JhUlhrL3ZM?=
 =?utf-8?B?WjlDUmI1dVRUSS9Xc1lQTE1IMDllbnRkZlRjaFg5eXlCdGltdG5kTlpzZ3Bn?=
 =?utf-8?B?T1pNL0tWZS92TjVjMHFIYmlCVndNMDB6QlAyYVhSRXRUZzd4bTZXYjBiSjRQ?=
 =?utf-8?B?YWo3Tm1ielFaZTdweXFhbkJ0VWpDODNPNk5pQ1VuVUlxWHVjMDR5Z1MwUWlU?=
 =?utf-8?B?QzFEZWRpVndhWE5wdXI2akc4cVdyUUE5TE1oOEdqS09MdEpnNjhFT0Q2SlZY?=
 =?utf-8?B?bWlhKzdHaTgrRVFjNkhUNUN1NlFtVFlNQkxRaENhYzcwWXRhdG4xTFJYdWNQ?=
 =?utf-8?B?WFJmWVRaV0tWWXVudVJyQ0hqMDNOZzBkNmxvd2Q2dHMwWDNEQWJoYlA2TUFH?=
 =?utf-8?B?YlVPTldQaTJhSTI1R1NFQXRCMjZpNVl6aUNNYVFHM2pFeU9tdjJlNjluNnpm?=
 =?utf-8?B?YUZGbjdmeEF5bVdsRVJjbVFrNkNDbHpGQitkSloxc0FtcVdOY0xwc25YWENN?=
 =?utf-8?B?QXV3bnp6SHUyaGc0YnV5L0liNjlTYm1tQ3lmQ1ZkSFRzQzI0Rml2UDRkdEt4?=
 =?utf-8?B?SXk2SGNWd3dvWElnVUhKOUI4Sk1MTEZ3V0d0Ky9pcTNkS1RoZEV4NHNOZTNj?=
 =?utf-8?B?NlJKSGpIR2YyR2FmUGxZNHZMYVJjYWNJR0pGZFBzS1lCa0VGZURHVnFYYm1D?=
 =?utf-8?B?bHZ6Uk5hVG9Ja0dRUFpnUURLdU1OTm1CVnNseVV1N0NvYzI0VlpRd0JiMkNr?=
 =?utf-8?B?WGgwd2pJdFFZM0hxb1JhWWtMK0gzd2c4S3R1bnhLWHZuTlhnSDcvYWlOby9R?=
 =?utf-8?B?Q0xTU1hQdW1xRXFHTTZNK1JxTlMrd05pZzBQK2NFR0dnT0tjbmRMOXBkTUtN?=
 =?utf-8?B?a2U5NXRBaWZXYlJ3aFgwUHl2RjZnSDN3Sy9nRXh0WEhUR2dDUXdpdTJNVzQr?=
 =?utf-8?B?VDY2eFpNUlZHK29rZmp1MlJCYzR2SGNTR2diRGVZS0FpZ3d1dmsxc3FkakZ0?=
 =?utf-8?B?aloycVNWLzY1cmNlUUZKeTg2aW9mYU0zRzZ5M0pXbnJqU04zMkZINTlBa1Ft?=
 =?utf-8?B?Mm4wdWdKU0NkazhGemtuUHZTMlVBUXlVRDVXYTdjNnAybEh2V29oelpsWUti?=
 =?utf-8?B?YXA2WVQzUjh1Wk95VWxCRTRvY21JRXRZRktFMkJsS2cyOG9ESGdiVktOZWNU?=
 =?utf-8?B?Vm9oMzRwQWhqdVF4SjNRWkkrb1V4aG52RFFoeWhiOVdnSDFwd3Nra2M2cUNU?=
 =?utf-8?B?cS9HWWtacFJaSEo5akxUZW5WMlF5d2NrK1oxQVJUUmREZGxESEtyVEZyQkpr?=
 =?utf-8?B?aVJCRmlFdnZSMnd2K0lmL1ZwbUNJV0VFSXlqR2ZMUzRBQlVDZVJtaWZmTWcy?=
 =?utf-8?B?eDZobGJubHdoRDMxNVlMNkNZeVA3RWZqTWNZRktqT3lGTTd3bzRGMktrLzl4?=
 =?utf-8?B?N2Z4S0RJdGNsR0ZOSW9qZFg4bHRTS2VFdG5yclloY3p2cVBxL0ZvQT09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9437111b-c3f1-4852-2d02-08de639e384f
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 03:33:55.4498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ysf4l+NKz6Z9xhhk4zovlmmJ7kKpEXglHqG3X5q6rRRLlm/bTByPUd5eXz8zWPj5SSIGfVor13tAB9r614Hw+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5181
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAyMyBTYWx0ZWRfX58szf9/LF559
 iLzypLRJ/WqIkSxKE6tWXrSGTR8nXqCEYIt3tjfD4AIXF4Bhxj1aXF7cneHUPIKLD9z7EAGetAD
 RYvc/U5eIQt5vBtMQK0gYDPYxxVa1fGXwaejhbWIt7wuWTds/SM6rEIeDBwq1vf3h9wQntZDn8A
 37VjhzxfepnmY1Gk0FLC4Wwa3wcpWtjSfKyO/Jd/2ZFQo0T8rystuPD2kkLBMPRmYju0XF0IPJk
 ei/pQrWlG2LgZCqBCOT0RvZrYWCRAubNUrQMenGl/zIn7W2JJC4lON/91TYinjPxrBJyNxu92MD
 LEtdQ3qcugrNnZYfuWTsfg3fxRA0GYnF0+Z06lFVPCViRecTNNHn2UvrN6fr4oeBMhuiJG1BPvC
 kr7hHoyKqmHxCczuvXuHz4UMopgU3SoLjrl9N7Fc9+4c0ybCp44ey+oIRvIFAEFlPsAKwsF1bHN
 m9GUGkIpfSD/SQYRtHw==
X-Proofpoint-GUID: zTWrBvbfCxq2gIpctkzTkJJX7CpoKlro
X-Authority-Analysis: v=2.4 cv=R9UO2NRX c=1 sm=1 tr=0 ts=6982be27 cx=c_pps
 a=x0D8RYL8GqfJKF6oaN0fjw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=v1pnqRVWAAAA:8 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8 a=cIwLEM12MUeZ745pbzAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=nLtFVnbjvwpBy3Ib-mkA:9
 a=03NZ3BmQJ6WvsUlz:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10
 a=GZbpB1l5PPD95VWuVmA2:22 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-ORIG-GUID: zTWrBvbfCxq2gIpctkzTkJJX7CpoKlro
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1011 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040023
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 03:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66214

--------------NC40Xl2P1NpPk9RJwTCNnzH2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 6141Z1Yj3186095

Sourcing the env script installed by the SDK is a prerequisite of using=20
the installed SDK.
This is the standard and tested workflow of using SDK.

Regards,
Qi

On 2/3/26 21:13, Maria Garcia via lists.yoctoproject.org wrote:
>
> Hello Yocto maintainers,
>
> I have a question regarding the intended use cases for installing the=20
> SDK generated via |populate_sdk|=C2=A0versus sourcing the build environ=
ment=20
> (e.g. environment-setup-cortexa72-cortexa53-oe-linux).
>
> While investigating a toolchain issue, we noticed that the set of=20
> path-related environment variables added by installing the SDK differs=20
> from the ones that are set when sourcing the build environment=20
> directly (sourcing the build environment results in more path-related=20
> environment variables).
>
> In our case, our team never sources the build environment and relies=20
> entirely on the generated SDK. This difference in environment setup=20
> actually caused us some friction when writing a CMake wrapper around=20
> the libgpiod library. We found that the build would succeed when=20
> sourcing the environment, but not when using only the SDK, unless we=20
> provided additional hints via a custom |.cmake|=C2=A0file.
>
> This made us wonder what the intended division of responsibilities is=20
> between these two workflows:
>
>  *
>
>     What use cases are expected to rely on sourcing the build environme=
nt?
>
>  *
>
>     What use cases are expected to rely purely on the installed SDK?
>
>  *
>
>     Are we making a mistake by not sourcing the environment every time?
>
> I=E2=80=99d appreciate any clarification on the design intent here, and=
=20
> whether relying exclusively on the SDK is considered a fully supported=20
> workflow for native/CMake-based development.
>
> Thanks in advance for your time and insights!
>
> Best regards,
>
>
> Delftechpark 22
>
> 2628 XH, Delft
>
> The Netherlands
>
> www.qblox.com<http://www.qblox.com>
>
> CONFIDENTIALITY NOTICE:
> The contents of this email message and any attachments are intended=20
> solely for the addressee(s) and may contain confidential and/or=20
> privileged information and may be legally protected from disclosure.=20
> If you are not the intended recipient of this message or their agent,=20
> or if this message has been addressed to you in error, please=20
> immediately alert the sender by reply email and then delete this=20
> message and any attachments. If you are not the intended recipient,=20
> you are hereby notified that any use, dissemination, copying, or=20
> storage of this message or its attachments is strictly prohibited.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66210):https://lists.yoctoproject.org/g/yocto/messa=
ge/66210
> Mute This Topic:https://lists.yoctoproject.org/mt/117614929/7304865
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.w=
indriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--------------NC40Xl2P1NpPk9RJwTCNnzH2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 6141Z1Yj3186095

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Sourcing the env script installed by
      the SDK is a prerequisite of using the installed SDK.</div>
    <div class=3D"moz-cite-prefix">This is the standard and tested
      workflow of using SDK.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Regards,</div>
    <div class=3D"moz-cite-prefix">Qi</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 2/3/26 21:13, Maria Garcia via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACHbyn4zkukUWqxw_s+5w5YgJKXKfs=
dS3WHk=3DfOCgz0xn5mgGQ@mail.gmail.com">
     =20
      <div dir=3D"ltr">
        <p class=3D"gmail-isSelectedEnd">Hello Yocto maintainers,</p>
        <p class=3D"gmail-isSelectedEnd">I have a question regarding the
          intended use cases for installing the SDK generated via <code>p=
opulate_sdk</code>&nbsp;versus
          sourcing the build environment (e.g. <font face=3D"monospace">e=
nvironment-setup-cortexa72-cortexa53-oe-linux</font>).</p>
        <p class=3D"gmail-isSelectedEnd">While investigating a toolchain
          issue, we noticed that the set of path-related environment
          variables added by installing the SDK differs from the ones
          that are set when sourcing the build environment directly
          (sourcing the build environment results in more path-related
          environment variables).&nbsp;</p>
        <p class=3D"gmail-isSelectedEnd">In our case, our team never
          sources the build environment and relies entirely on the
          generated SDK. This difference in environment setup actually
          caused us some friction when writing a CMake wrapper around
          the libgpiod library. We found that the build would succeed
          when sourcing the environment, but not when using only the
          SDK, unless we provided additional hints via a custom&nbsp;<cod=
e>.cmake</code>&nbsp;file.</p>
        <p class=3D"gmail-isSelectedEnd">This made us wonder what the
          intended division of responsibilities is between these two
          workflows:</p>
        <ul>
          <li>
            <p class=3D"gmail-isSelectedEnd">What use cases are expected
              to rely on sourcing the build environment?</p>
          </li>
          <li>
            <p class=3D"gmail-isSelectedEnd">What use cases are expected
              to rely purely on the installed SDK?</p>
          </li>
          <li>
            <p class=3D"gmail-isSelectedEnd">Are we making a mistake by
              not sourcing the environment every time?</p>
          </li>
        </ul>
        <p class=3D"gmail-isSelectedEnd">I=E2=80=99d appreciate any clari=
fication
          on the design intent here, and whether relying exclusively on
          the SDK is considered a fully supported workflow for
          native/CMake-based development.</p>
        <p class=3D"gmail-isSelectedEnd">Thanks in advance for your time
          and insights!</p>
        <p>Best regards,</p>
      </div>
      <br>
      <p dir=3D"ltr" style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:small;line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial;background-colo=
r:transparent;vertical-align:baseline">Delftechpark
          22&nbsp;</span></p>
      <p dir=3D"ltr" style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:small;line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial;background-colo=
r:transparent;vertical-align:baseline">2628
          XH, Delft</span></p>
      <p dir=3D"ltr" style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:small;line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial;background-colo=
r:transparent;vertical-align:baseline">The
          Netherlands</span></p>
      <div><a href=3D"http://www.qblox.com" target=3D"_blank" moz-do-not-=
send=3D"true"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(1=
2,129,156);background-color:transparent;vertical-align:baseline">www.qblo=
x.com</span><span style=3D"background-color:transparent;font-size:11pt;fo=
nt-family:Arial;color:rgb(12,129,156);vertical-align:baseline">
          </span></a></div>
      <div><br>
      </div>
      <div>CONFIDENTIALITY NOTICE:<br>
      </div>
      The contents of this email message and any attachments are
      intended solely for the addressee(s) and <font face=3D"Sans Serif">=
may
        contain confidential and/or privileged information and may be
        legally protected </font>from disclosure. If you are not the
      intended recipient of this message or their agent, or if this
      message has been addressed to you in error, please immediately
      alert the sender by reply email and then delete this message and
      any attachments. If you are not the intended recipient, you are
      hereby notified that any use, dissemination, copying, or storage
      of this message or its attachments is strictly prohibited.<br>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66210): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/66210">https://lists.yoctopr=
oject.org/g/yocto/message/66210</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/117614929/7304865">https://lists.yoctoproject.org/mt=
/117614929/7304865</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@eng.wi=
ndriver.com">Qi.Chen@eng.windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------NC40Xl2P1NpPk9RJwTCNnzH2--

