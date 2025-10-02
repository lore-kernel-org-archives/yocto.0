Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8037FCAC5B8
	for <webhook@archiver.kernel.org>; Thu,  2 Oct 2025 21:52:05 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.403.1759441918022902019
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Oct 2025 14:51:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=OxF/776h;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=23707649e7=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 592LeXwa235618;
	Thu, 2 Oct 2025 14:51:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=2jayA+ikL3gi6Sf5mIw569
	IQPYiCPLVadTdvipZo9Fg=; b=OxF/776hlX+nzFbWWxAJoEkN2fqbuwOKdzRa1i
	S4qdHzHRQ8X5no/OxRju1fpXE6O4bRtUmlDh+2icqt+YA6t5DA9iiI6Gj7FUbDff
	3/oWkyLv2QsYGGnsDhuni6R0rkmMGMgXVj0pbCG1LOWr/W91b6p4PJTAvidpgu+G
	S6dOc28wXXFGnIolSZQ9hD5pftcyA69RhHZxDAlfNZnBCFUQ1GaEi1TbgjWMGFWz
	RM+4aH5jnY1IrLswYFT4FTncuQXiZCj5F56LlVm+zrgNbRrQeMZHGCAdOAkwArlu
	F5KtMXjoU2jSYirbVWxJvVA+BaII3DUHpbA+k+TbS6IBQG6Q==
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010011.outbound.protection.outlook.com [52.101.46.11])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 49efeges32-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 02 Oct 2025 14:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+NH6NHSdCKj6TUkyqjUd6fyEZPXJl0Ly/SCSH7BSs+UJgyNQ8calROga/9/KVR8GDI0SNTrIlQdRQCKCfkaAlxssNqZAmeKe+F+fan9IXjVdg/5KUujEWDEAoPN3qa6ML4v52KKbdVoQkkOmNJ6w089wHm5Vj+fJXDPeECeRsNpHl1dah9T0K99ErJ1TiEz39eFtU0aAH5PBJmsU+6PnM/JrOTg0w5zIoXWwf4AEdj+F4FLgtuXDm9ZVxANeky3z+DCdgAUxqNEl/Q+V99KdPmN0VHnBtB4UJUBqZviTsOeKtXW2wjjH7EQTUfsRMz4VcRrGQ+gZg05341YbIocvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jayA+ikL3gi6Sf5mIw569IQPYiCPLVadTdvipZo9Fg=;
 b=jCQE96qlx1wX1qtUIdCll+uzyZQweHkgt6UQfCsFWRVsMM9wTr33fRsanWJs7C5Z5W1AOW75kx30HemwrPnY+ojC+4MeRgvI+yWmBmOVdy9wYtTGhQZEm/JHXaHqVKCjNSlrcjTWADEkEHInndFZ2FY9yEe5ZQqLWNS0fVj8GFMEqLu3gzy5xsV39An/yDzBN4l9fp+7IMT8j0heHQPoRWm2ze8aNegu5BY30DVwXL2X4V/TN38k1l7hBmdTusZk2TxBS/fv1XsQZZHJLUU4v4FM2IxiyOgnsdZWqU37snVyEqCLcM5IIndiBOnsSY8oylSEAbT+XaphzlmK4BZ3dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Thu, 2 Oct
 2025 21:51:35 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552%4]) with mapi id 15.20.9160.018; Thu, 2 Oct 2025
 21:51:35 +0000
Content-Type: multipart/alternative;
 boundary="------------YUP1IDmzrs7GTGqoDcPp2Oc0"
Message-ID: <8daca69a-82ae-45af-8a04-b15ffd4aa2c7@windriver.com>
Date: Thu, 2 Oct 2025 17:51:30 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: Yocto builds and job server?
To: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
Cc: "Li, Changqing" <changqing.li@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <b9b292dd-b366-4310-9f22-7ab015aba7e1@windriver.com>
 <3124209f7210c9e39608a9717fa6abc7f1c4bf8b.camel@geanix.com>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <3124209f7210c9e39608a9717fa6abc7f1c4bf8b.camel@geanix.com>
X-ClientProxiedBy: FR3P281CA0121.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::8) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|DS0PR11MB7262:EE_
X-MS-Office365-Filtering-Correlation-Id: 7929bc15-c426-4c67-b48e-08de01fddb6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cG42Z3pQeWlQVzV2SFU3b1N2Y09zaE1mc2hqME0wa2lGNjVwcVFhdlIzRkFF?=
 =?utf-8?B?YzFtck5SdDdJYVhSNnphRDNuTkltWjhXN1o5SGJPNXJZVFNoVVM2VU1SbXMr?=
 =?utf-8?B?OG9LUWlscVp4OS9uU0ZDYy9rdjF3VnlGYklrUWFhR2ZVMFdGTStCKzNkc29o?=
 =?utf-8?B?bzlROXlOVXcrSGlFQVNzaG8vSFI2UVR1M29ySjdJVG5iNGFGME0rSHo0dU5r?=
 =?utf-8?B?NWFzNmVPbVdxczFaeS8wUndZT1hwSHY0NWYwTnc2eU1uVitHL1Q4OW9NZWRU?=
 =?utf-8?B?Vm9LWkc5cDQvbXJ6enhHZEg4bjFFMmVxTW9JUjh1b0R0bFp0VnpJcndiWFFq?=
 =?utf-8?B?VDl1K1BYeDBhYUhPd2RpSWhtMTc3enlSVysvYm1PWnFnOFpuV3luaGxJbjNr?=
 =?utf-8?B?R0FZN0tNaVY2SkFzMEl1K3BkcGJWUmkxVlkwczVrNE1NZHJhWjUwdVdhL3FW?=
 =?utf-8?B?YzBLK3lDU3lrTWczdUxIUUVrK3FkWllIajhPdWdYZ0l4ZFpLc2l5bE1HUUJM?=
 =?utf-8?B?bDNjS3lTaGc2TmZVTndDYjI4cXBYb051dHlkWG45b04zR2VMeDFuUWJNNFl5?=
 =?utf-8?B?VE9ERGZzZWM5b3c3SjFhVzNQalREcnBCbHIxblJqUzFTRUM4ZXN0NGtOdm42?=
 =?utf-8?B?ZzVKdmhneElNZmw5b3hSTVhWcG5MTEllN25LdFFCTGdtUVdVeU81SDZ5emJE?=
 =?utf-8?B?TDhYcE44TUxQd0ZvNGF5bXFyRjZMMGpIZXNYVE5QSnlueDFrbEY2c2FCVlEv?=
 =?utf-8?B?SkJNY0dkZzl5ZytRWm03R29FcEVNYWxvSTJwcFhrMTFkM293N0J0Z0t4eHpu?=
 =?utf-8?B?Z2pyZkJwUm5zQnRhVTI5V0tTMSs4QTJROGRKLzZ5MUNVSXJHS1dCV29ISlk1?=
 =?utf-8?B?YStWZ3k4b3RlZWRjNGdUSTNxL2xYN3o1Qkk1K0lIazdiRENib2FvOHR6dy9C?=
 =?utf-8?B?cUl6SWIwb2d5UWExU3EvSldzM0ZmWWU0bk5oOUtNZzg2K3gra0xtNHovKzd3?=
 =?utf-8?B?WVVuZlJnNEJnUzlDZ3AvWCt2N2tBU09SRzZ4d05sRldNNk5NUlpEUWg4RnVQ?=
 =?utf-8?B?MVZqa00zVXYvZ2tKLzZQa3dNNTlMaUgraThJYTdOWThhby9ZKzhzb1lsS1VM?=
 =?utf-8?B?alhNR2N5U1E5cFh4MTdqQlk3Ky95MHZBeURxOUhpeDYvbVVvRk5BRWdVMnE3?=
 =?utf-8?B?WTNpUzBaNXN2YnR3cDU0SHhGajFiQmtrZHFqT3BHTTZEUjVxYWFKazFCSlVE?=
 =?utf-8?B?UHVoekJJempmWGFJS3NKNnN0LzdwQzJXTVhMMXI3RUJBbkR2WE9jdjhnWlJa?=
 =?utf-8?B?UEN4dE9lS1RNclZ3WjhwMDVhRnZEV2V6cTVLYk5XRzV6RW1ESERGb3pYZnRY?=
 =?utf-8?B?aW52YnVTejFjYXM0NUMrWVhPQjVFaUJoOXhnVFRmbStaRzR1UENPWXVGbGF1?=
 =?utf-8?B?bjduMGRFK2RwaS9MNzJjTmxDTjlERXVrSHJDM1ExRGV5a1B2OEx6dm9HU1A1?=
 =?utf-8?B?NFFLL0YvZzhHdzJxYWt5TzE0dUV6alg5bWthOHpTVTNrOUdqcHlPMjI0NW9m?=
 =?utf-8?B?L1ZBVmdraHNYNDBQcnNEMkMwTkU2QzdLY1FCYjlaYmtkek1ocC9kWVduVWJv?=
 =?utf-8?B?R1NkN25lamluMlg3dUVuQi9oU29GcFFnZUFhc2JSdkNva2hQVzJ6R05KK2VO?=
 =?utf-8?B?VEMvd3JkQ1YwMHdHanBuK3hFUGkzN3RnMzV0WlNtRjgyTyt0THZPQWw3bjB2?=
 =?utf-8?B?Tm5ORnpOVmFna1BQUnNiaWdHVlM5ckRtY1dYQzNFM2w2a2hrK01TMC9LZE0z?=
 =?utf-8?B?akxWaUh3dU5yTjNSam1mekdxWDhMVERrOGtPNGlhbmxxaU1kVzE2dWNPdDk4?=
 =?utf-8?B?QXVTbElvMjFaQXZSbnprZC9Qd0tIckZHY09lemRIMGVXZ3lsNDltSEY5T1p6?=
 =?utf-8?Q?omRTYYiiSAM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K0Y5MnZjMTUvWXlqQVZVdytaRXNTWjMzcmxkVjgvcjJud1UvN21Ea1N6amV3?=
 =?utf-8?B?MSt2SE9WK3A4bzVudVAwTnlEKzNPOTViR25XSlRvcTE5eitibDFmeUFCbExZ?=
 =?utf-8?B?aytJV3pJaFN6My8xS0FRemk3SGNkdUthbDNNMUNUM0ZHcTFFemhZTDVNNlhU?=
 =?utf-8?B?c2FIcHRzY2JLNzUyaitFeGJ1Tk83dnMwdVZmOTJTUmNpT1UyNU5iNlNURFRq?=
 =?utf-8?B?bUNuei9Dd1NML3R0VHRYNGt6MXBUTmh1Z2JKcXN3bFVuZG5EQVlVQVVRZmoz?=
 =?utf-8?B?eE93S1VhUFZ3S0ZXcEFINnhWUHpXYVhVYTByckRoc3EyTFFHZ3NDTzVZeTUw?=
 =?utf-8?B?eEp0cEo5eGgrNTd2Tm1qc0RWZkh2ZnB1ajBuVktiNk9reFM4eHMxSUhKOCtW?=
 =?utf-8?B?VDFJTVJ2dlF5TXNxTmFtSkQ2SnQ3RDhrWFhuU3VmVzhESG1GeCsvb0xGa2p2?=
 =?utf-8?B?WHZ0bGhVczRsQTNHYWh3SjhaaGZUTm5NZ0hKYStZRHMvc1lad2xNTFM3ejZq?=
 =?utf-8?B?NFArMy9xelpQeEFoZ3hpdGdpeExOSHVPUThBUHZTYjYvakc3bXpURlRtQmVa?=
 =?utf-8?B?YlN0VnU5RHI2VkEzYlc0S05CcGNTZXAwZVdiNDViOVNIYTZIaElva3FQcVlY?=
 =?utf-8?B?SHhWZU9jYU40YTVmVnBBMkRIQ0pnNytYNTJubHBUWjdwRVZJUVEzN1ZYNnpi?=
 =?utf-8?B?R1JZazNCZ0NGbG9oOGUvRFliYVoyUXU0N0hUV3RTTzNiZHIwR1dWMHJHMGxj?=
 =?utf-8?B?K0RVVGNMS1B6cDc0Sjl5NERKQjVkWENlK1NESThVd2xzQnMyeUMwQ2kyVmph?=
 =?utf-8?B?M1R1SHVqdlVEb1pFY1dpN1ZrdEp5K2x3UzA0N2EwbDZXV2FSWlcvTkdUQ2NR?=
 =?utf-8?B?Yk5rVGg2V243ZXA3VjdqY3AyRUprVEY2dGQ5bUpXOElaOTA0TjdmbVhBZGZK?=
 =?utf-8?B?cUNHZkJ1NHdmVGpNaXNtaThHNzNTMWhpck9rc2tMWW04YkdmbEc0N0MxUHJi?=
 =?utf-8?B?azdKNkczckVSU29sTy9zTVlmMS9lNG1yenM4UkEvUFhOKy9VaTE0YU1EYWV5?=
 =?utf-8?B?RVMwblAvemlXTGV4Z1A2RDZ5ckxwbXFidkpVSThlYmQ0b2RpRFpXVkFaN1lj?=
 =?utf-8?B?a3VNQWhpT2VqeVZTL0tBQ3Y3K2JIdDBWN1ZOZHNBTDhQbVlXUDl5WVUyYlh3?=
 =?utf-8?B?WTBXcXFmTHN5ZkdZdzY2SThOdVJVWGJxcnpiTlBhSHBYTTM4NW5TV01FQ3VG?=
 =?utf-8?B?UVA2ZVFYWG1UdUFXTUh0SlN0czUyZUp4S2lXMTVtemlJZjNrZHI4SXlMcnU1?=
 =?utf-8?B?aGJ2djZDcnp2L2pBdHBIYmZUUmN0a2cvMk1EVzlQenFlSG9zbmorTkJSUWxk?=
 =?utf-8?B?dXQyaDR3NDBnS2Z5Y3N6NVRrcFc3RnFHSU5IaWFGeDZJN2t5Z3d5RjRDMjVI?=
 =?utf-8?B?MWtrM3QxU25uNElNNnFLUHIxOXpHMG90QkMzR0hCT01nOEgxTTJVNkptUkEw?=
 =?utf-8?B?TXRkS3RQVlVDN21JZmFFdEd3R1h6dEhkNDNQeWExZUR4TFJyYkdEbWZjOEs3?=
 =?utf-8?B?OWw4REcxLzdWaVo2L1gzRkkxTXUzYkxwMmt5ZWpYQ3ZWV2NvMFR6MGY2UG1L?=
 =?utf-8?B?RWRMOUdkUXM1cnVPMk1zQ0RtN1dDWE8rSDYxRmVQNjlqajJwTEFHUUhIZFBh?=
 =?utf-8?B?TXpQSExJNDNwbXV1L3YwSENkZVpveGtrcDQ4WUo3dEVwTDhkREtJbGpVZE9l?=
 =?utf-8?B?UUlad2Nqb2pUcW00ckhuUlJBYXBNS28yS3hwZE9DNDUwVE1oS3prV3JWSGY3?=
 =?utf-8?B?THFwZlFFdmlkVklXc1VXZXAzMUtNS0VxWmpKakhnTjAxdVIvc3Z0L2M2THFu?=
 =?utf-8?B?VzdjakFnS1ErQzI5a3Q5RzZpNFlIL3RFUGVDUkF1SjBPalJTMnNWUEtGZHFz?=
 =?utf-8?B?ZDVERWdtSWJxOEdscXU1ZFRLTWRReUxnZEFtYmFvMllzbXRxOVBKYk1ZWEJ6?=
 =?utf-8?B?VW1iRnlxL29WQm5uR0gxNDFKNVF2Uy9NMHJkeWRyV2FkbExhcG8wUVZva09T?=
 =?utf-8?B?NHdEK01qRHE2TkUzNEJoNjlIelNNdlhteFdKNHJWMVZlSEZrWG56UHNienkr?=
 =?utf-8?B?QXMvcXQ0WnRPdUg0WXV1OW9EWjJ1K3JaVVJhaXprM05sWTQ2aisvZEZlbTI5?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7929bc15-c426-4c67-b48e-08de01fddb6c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 21:51:35.5288
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1olGsgFcSBDfsoXF7aNNnurgj11tcb3emsUPRlQwtCSkWB2Py+eTEzLxi5VTV2q/MTjj7A+khpvscjrFn8owElAZBvgnX3nkqOJA8hKZ6Uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-Proofpoint-ORIG-GUID: SlzKN_0lbTOAomU0PeLlp19hSTvkWTle
X-Authority-Analysis: v=2.4 cv=aKr9aL9m c=1 sm=1 tr=0 ts=68def3ea cx=c_pps
 a=kVQeibrV0jayZGAE3rze0w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=x6icFKpwvdMA:10 a=iGHA9ds3AAAA:8 a=VwQbUJbxAAAA:8
 a=t7CeM3EgAAAA:8 a=vp-HYRlzN0dhpGzUmBAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=WyihjAV0hJgA:10 a=ilKATfAMAAAA:8 a=byJbfh5EcApBub0DDfoA:9
 a=pr6PKJGHCQqCDjd_:21 a=_W_S_7VecoQA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
 a=FdTzh2GWekK77mhwV6Dw:22 a=73awMTU50e6eLoBjGbzZ:22
X-Proofpoint-GUID: SlzKN_0lbTOAomU0PeLlp19hSTvkWTle
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAyMDE5MCBTYWx0ZWRfXz0cE+MBv83rd
 U6aX25iWeVJgW8YXAe/cOhQQuNpYqUjd6JvBUk/xhVE5tHccBUwh/uA5eRVUoTsBv8w0cuR6ugI
 +E2HIf7DXPoULpw0IxOhRj8D4y5eATIKl1kMTCHhSDBMgpSlkIVe86m5dDkD/TXsodo+OkONky7
 iE5oNwtYpMhCPVedVi7FdafyRfKSqdk2XMbDh37QayUA/XWI6riPc9j3DrCBi4ZBT/Dg1Xl/bJy
 0TAwwu03b15vFq0mWUbGV7aATDemsktDxS6maMm12JZtm90756ieAewrorwDThHKG6qWgNVN3d4
 57OHFsD8DtjG/zQ3JggOpenjCAuCHiDBXz5vC4b4pyxYaWsp9NFO3OsC5SKNj3D//+hrEFvSwgG
 4SQhbtn31gtvRg6Lw7XIcd09maLgUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_08,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2509150000
 definitions=main-2510020190
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 21:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65903

--------------YUP1IDmzrs7GTGqoDcPp2Oc0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 592LeXwa235618

On 2025-09-29 8:54 a.m., Martin Hundeb=C3=B8ll wrote:
> Hi Randy,
>
> On Tue, 2025-09-23 at 15:43 -0400, Randy MacLeod wrote:
>> Hi Martin,
>>
>> Do you keep your job server patch up to date?
>> If so, can you push it to poky-contrib or share it some other way?
>>
>> Now that we're closer to stabilizing the fall release, I'd like to
>> work on and help get that merged=C2=A0early in the next development cy=
cle.
>>
> Yeah, just today, one of our internal shared builders with 16 cores /
> 32 threads ran with a load of "204,19, 170,18, 106,53", so it
Yikes, are you using BB_PRESSURE_* or limiting builds using
the threads/jobs variables at all?
https://docs.yoctoproject.org/dev-manual/speeding-up-build.html

> definitely makes sense to dig out the jobserver patches.
>
> I will give it a spin in one of the coming weeks. Thanks for reminding
> me!

I'll be waiting with bells on!

../Randy


>
> // Martin
>
>
>>  =20
>>  =C2=A0Context for those interested:
>>    =20
>> https://lore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaa=
ca1e7d57@windriver.com
>> /
>>  =20
>>  =20
>> ../Randy
>>  =20
>>  =20
>> --
>> # Randy MacLeod
>> # Wind River Linux
>>  =20


--=20
# Randy MacLeod
# Wind River Linux

--------------YUP1IDmzrs7GTGqoDcPp2Oc0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 592LeXwa235618

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-09-29 8:54 a.m., Martin
      Hundeb=C3=B8ll wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:3124209f7210c9e39608a9717fa6abc=
7f1c4bf8b.camel@geanix.com">
      <pre wrap=3D"" class=3D"moz-quote-pre">Hi Randy,

On Tue, 2025-09-23 at 15:43 -0400, Randy MacLeod wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">Hi Martin,

Do you keep your job server patch up to date?=20
If so, can you push it to poky-contrib or share it some other way?

Now that we're closer to stabilizing the fall release, I'd like to
work on and help get that merged&nbsp;early in the next development cycle.

</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">Yeah, just today, one of our=
 internal shared builders with 16 cores /
32 threads ran with a load of &quot;204,19, 170,18, 106,53&quot;, so it</=
pre>
    </blockquote>
    Yikes, are you using BB_PRESSURE_* or limiting builds using<br>
    the threads/jobs variables at all?<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://docs.yoctoproject.=
org/dev-manual/speeding-up-build.html">https://docs.yoctoproject.org/dev-=
manual/speeding-up-build.html</a><br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:3124209f7210c9e39608a9717fa6abc=
7f1c4bf8b.camel@geanix.com">
      <pre wrap=3D"" class=3D"moz-quote-pre">
definitely makes sense to dig out the jobserver patches.

I will give it a spin in one of the coming weeks. Thanks for reminding
me!</pre>
    </blockquote>
    <p>I'll be waiting with bells on! <br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:3124209f7210c9e39608a9717fa6abc=
7f1c4bf8b.camel@geanix.com">
      <pre wrap=3D"" class=3D"moz-quote-pre">

// Martin


</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">&nbsp;
&nbsp;Context for those interested:
&nbsp;&nbsp;&nbsp;
<a class=3D"moz-txt-link-freetext" href=3D"https://lore.kernel.org/openem=
bedded-core/9844556f-5016-47fa-a3ac-ceaaca1e7d57@windriver.com">https://l=
ore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaaca1e7d57@win=
driver.com</a>
/
&nbsp;
&nbsp;
../Randy
&nbsp;
&nbsp;
--
# Randy MacLeod
# Wind River Linux
&nbsp;
</pre>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------YUP1IDmzrs7GTGqoDcPp2Oc0--

