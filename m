Return-Path: <alex.stewart@emerson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49FBCCD1BE
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 14:49:38 +0000 (UTC)
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
 by mx.groups.io with SMTP id smtpd.web10.17186.1726670974969477354
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Sep 2024 07:49:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emerson.com header.s=email header.b=IhdowY4G;
 dkim=fail reason="dkim: body hash did not verify" header.i=@Emerson.com header.s=selector1 header.b=BmPA0/Xz;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: emerson.com, ip: 148.163.142.35, mailfrom: prvs=6991a5c4f6=alex.stewart@emerson.com)
Received: from pps.filterd (m0144091.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48IELahC014269;
	Wed, 18 Sep 2024 14:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:mime-version; s=email; bh=PQskNGB9b16gCzJYI1tJeb+m
	Vh8lc99yXPX3sLqrSvs=; b=IhdowY4GPBRBD3TK2XUTvJpL/O5TXnlB3u+fJixA
	tJmnsRV3a/H1wDw7n+5F/T+iKnIM3b3qM50hbXQPik9LUg4XNu3hXFyA/W0rs9yv
	eDK52weeWxge0lQakxtcVlS6KFQ7kYNugfGac5RZgutvRAPZbTh3KtmOb/iV6heu
	U2akf+j+lqHvo50NyJZ9SwAZcIL/SKX6JvJPTj8b8wLGpB9UBSD6kBlkb4B48Pww
	qvTRbPyRKOp8YpWnzI+g0COf7NECfJXon8zk+zYWze9eJDZOkQtrgAdv9Z9Z0z/M
	nC4rnAP8iz9b5BG49jvysaVy4dutTBDMcu6h/jZpqvF5qg==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 41r0j9rmve-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Sep 2024 14:49:31 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NDZREL2dkxGWW+PdKYI+mpMtQYKlkoQtcO+3Rkv6mKhx46/5MI3l7ajV8siREx8t5X4iDpMi3oNQnSzh3cYvFvf8ZP3qCb93lcrqz4W7Dhwtl54+Um0A6ow095G8JkQRNF7YO5RO9sttxHCRfkQ5J6w67kSAP+pDZ4rB+hrqqL3DYY7xEKOpw3y2A0x2GVLLLN7eBbccSz7R5loDo9lFPGaikXboG7DUEY7j1tHW9IvLMR/PFrNvkX3KZwd+NMEVwwWgnfvOQqfU22VEZWjdipqTJ3dgJfQ0DwW2NCglIMNtb9RBcA62djS5DoEY03iv65m9+Im5OrLTOHgKqrLUkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9AIY41PN8EgoQ2MvQ8fCjsFbQILuryp0/7tlLe28vY=;
 b=R/by3vbi2LkLnnMlRrCIHrpYM9TVMpNEuMoKqh7DpL7KxrnNGqjD2kbeVYyax8yLS+ECRuwzWUrHfVjIjWSv6E529tg0cf+EXyK5SvfgMShyASNJZoLb34hZ/GTQpYiUpS5J8D4IgduDRkWXPvRUrQGv2XnzQzEj1hyYTq6tjrXmz37XKfeY+KNYr3PZtsT228sX4HYpc9JpvW4IhYKQL4i9XGC5+ObFwru0E9+gm6k+7M11jbn34xXm/l2G17W3GorIs16DwTSgWLn4SL1iTORkWatDfm80USZbq8VquEPwnFALakieHITwmuIls8T8WO5qMWDlnUDmlQvSl/uLYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P9AIY41PN8EgoQ2MvQ8fCjsFbQILuryp0/7tlLe28vY=;
 b=BmPA0/XzGGk+EH/NG9hYng+Fx1hSO/Kth5ixcotN+CGqDTaEZ3Ap3eDxpkrfpdPOex9/3W//BJVj74d/rfHR8UT+Aarhp4O8QV604nvtAnVmAnVJavJjsOeyotekewDgUxzYbC232Ch8P0pWWkf8aStCEeb6+sZmdcxdg7UIWwS8oHB0zkia9ieq4z59U01qqobBIFoGkWdjbD3TxHyTwOSYNlZoOhGGroulOH+/tHNXNMQrc+/fW5mGt0DF19RNsxx04UZh2DEzsQ2nB4tz3br+tqn+B1c3MpRO8ystyOHDreQALeNb63PNS1eLKSwUhDvd82lprH84NAlewzAwzw==
Received: from DM4PR10MB6134.namprd10.prod.outlook.com (2603:10b6:8:b5::13) by
 DS0PR10MB7204.namprd10.prod.outlook.com (2603:10b6:8:f3::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.16; Wed, 18 Sep 2024 14:49:29 +0000
Received: from DM4PR10MB6134.namprd10.prod.outlook.com
 ([fe80::4d5a:8205:38a6:8441]) by DM4PR10MB6134.namprd10.prod.outlook.com
 ([fe80::4d5a:8205:38a6:8441%5]) with mapi id 15.20.8005.006; Wed, 18 Sep 2024
 14:49:29 +0000
From: "Stewart, Alex" <alex.stewart@emerson.com>
To: "mns@gomspace.com" <mns@gomspace.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [EXTERNAL] Re: [yocto] read-only-rootfs and opkg
Thread-Topic: [EXTERNAL] Re: [yocto] read-only-rootfs and opkg
Thread-Index: AQHbCaZTaU88Hy73q0qfMWyXLN/A1rJdnpi0
Date: Wed, 18 Sep 2024 14:49:29 +0000
Message-ID: 
 <DM4PR10MB6134C9BCBAABA358F109B46294622@DM4PR10MB6134.namprd10.prod.outlook.com>
References: 
 <DM4PR10MB613491F6677B95E3959C93F794612@DM4PR10MB6134.namprd10.prod.outlook.com>
 <28131.1726648782868302764@lists.yoctoproject.org>
In-Reply-To: <28131.1726648782868302764@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=True;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2024-09-18T14:49:29.271Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR10MB6134:EE_|DS0PR10MB7204:EE_
x-ms-office365-filtering-correlation-id: 2adb7b49-8a98-4825-59f3-08dcd7f119bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?aTVvQVRyQ0dWblRSaWxPUDV1RjhwKzRCczhoZldRTVVOYWVodDFaaEVtRTJG?=
 =?utf-8?B?cWM0RElKTEJrSlFxellEYmYyNGFtR2lXbjN1TVBYamtVZTRscy9mQXR2aXRH?=
 =?utf-8?B?M1dqQms0OHpuWHNpK0dNazB5MXJpcXNCMmYzZWsvVzhsZHoxcnBCZ1BBZFg5?=
 =?utf-8?B?N2dNQzFJSnc4SkRvZGEvUHRKWE9oTzRwT3NyTnVIYnFBY0JYVzFFb0JOM1B0?=
 =?utf-8?B?VXUwWllQMlZlMWJNV2F1Z3RPbFd0c21heHN6ZC9YeWJ0c2NUeSs3Tmp0eURp?=
 =?utf-8?B?b0xzV2Y3MURLSUdIWDZFM285V09HY3k2TDd1NStRSXQ4YWNwY24zM3k3ODZs?=
 =?utf-8?B?em9jR21FMVFoVk9Pam9EbWZNZzh5Wk5PZGJOcmY3RGFobGl1U0FlTG9WbTY5?=
 =?utf-8?B?L25EbDMwN2JLUXpSNjlXWHdTK0Q4bEVaQkFlZ0hoTkRYTys4NVFRc1lib2tJ?=
 =?utf-8?B?c2pFWmhvQmdzSjJpdmZQL2ZubmdvbDdSWXh0K3JsSzhzNHNtaTE5L2M5emlj?=
 =?utf-8?B?ZWoxMUFUT05pdEdpWlBxem1QUXJyMndLVUxraVl0VWVVYm5UTUJ0NHJLTUFn?=
 =?utf-8?B?SlB5dEFmSHNmQ0dFQnVVdzRnMmxadTRKWU5oeDNDTmdOenQrUjF2dFZSOUJt?=
 =?utf-8?B?ekpSbG5yODk0VGh4ZEFZVDFzblR3M2RvTmwzV1R6dXJqbDJOWXovb2RZekRQ?=
 =?utf-8?B?citNbnhwNm43UDNFeE5JdGpzZkxFd3NLRjZudG1FS3Q4WjE1QlJ3QS9mMDFn?=
 =?utf-8?B?am9aRXdSMGtLd3NMMDZWVDR0UEEwb1Z4Tko3MnBSNjhSNGdncEhFNjZQSVI5?=
 =?utf-8?B?eCtoRzkrcVE0djZ4MFZWRGd6SnpZOVQ3Q2Vnc05XRFJ4SUhtd3FmdlNkWjU4?=
 =?utf-8?B?YUtQT0o5SEFBb2Z6bXp2dWM3MHpjOXpQMkdtOFV2bW5laEhQeFUxNUFmQ2w2?=
 =?utf-8?B?RWZpb2E0Rm1ablVla3FlMHQ0VDVldk9JM0h5TU1hT0pZSHlabmFjMi80Qzdn?=
 =?utf-8?B?V2NhNVNJZU5SUFo2M1FGMDNTcjk0eElPNFhMT1B5N1JsNnU2R1R1VUJFZVZ5?=
 =?utf-8?B?UnlzVm1RSGdpcXd0NTJUSDV4bXpobm9WUHh2ZGpnMXZNUHBlb1Jtd3pXNlQy?=
 =?utf-8?B?dUM1cU9PcmlYSlFoNTN1TVYvK005SEx2RVBOaUltVUJVRVNDKys0aEExUFU4?=
 =?utf-8?B?TXM1U2dqMlA3cytmZENlcWpraFN5Ylc1Wncrc2xFRkdlVUwwaEhFMDJEOGVp?=
 =?utf-8?B?Vnl0dzQ2SU01SXVFNFE1VGFTVkNOcUhSeHA5SklQMnBtN3lHdWhha1dwWDRF?=
 =?utf-8?B?TWhVZkdMS0tqLzZoUGNIeGcxUkU5dFd4dm0xM1BmZk1mWHM0SWJ6NkFteWJP?=
 =?utf-8?B?Y1FjaTBDZGlHNFVrVHlrZWZjdUdXRTFnNUxMVkh5VHRVWWFHOHUwenFxcWto?=
 =?utf-8?B?SkhUc21ZUi9RbzZtcUVCb3J6NnFjckxIS0ZJYkdCQVhaNDY3bzNnZHArd3M2?=
 =?utf-8?B?VVN4cTFneGNKZnVndkN5NG9oQ1prSmxUK3lHNDZpT29OUHlZUENYbUI5Y2FX?=
 =?utf-8?B?UTRLSUpyclBEYWcyLzRVL05LOS9yQXFURTlqb2RrVnVJbE4ralBhYWtZQnlQ?=
 =?utf-8?B?MXRORDFqRkFLWTdWK3BTbXd4UXk3VUF3VnRXVVd1Mzh6Q2hlelc4N2JkWmw0?=
 =?utf-8?B?RkYxcW5WKzYyaDBHVnVOaTY1TG1EZkNQTEVIRkV0bCtXOW1DaUc4ZnVPUWRt?=
 =?utf-8?B?NGRka2Q2ZHh5M0VtZU5mTTREWVNhaS8wN0lDaGRLcUZ2dmdCa3ZxMXNJeklM?=
 =?utf-8?Q?gRfBes6vmglOduYXiePHBT0Xut0mRZXlEP3+Q=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB6134.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UXNHR0NUaktmbnFaMTV5dzlSUGIybk5aUis1TlM5UmRZMkt2VFVRbWowQnVS?=
 =?utf-8?B?dm1kTVhoSGk4TkVGeWlVblhvaTZCZE9hVzJudlVlK1ZFcTRVOTN5VXVMVERJ?=
 =?utf-8?B?RTI2alZqeHZzY3U2V2hSckprS1pXc1gwOGxBMm9mUUNxTCttMjFJMHFya1JW?=
 =?utf-8?B?OHhnL09Xb0hmREsxakxodERONEExL0Q2NWN4K2ZGVDMxbUVVdXdGYytUWWVm?=
 =?utf-8?B?MG1SeU1DL3Y1MTlFaUV6NmhxQzMvbTNBanlEZ25vV0RKeGV6NHBoNXhLSlVN?=
 =?utf-8?B?OHdENWtoZTY1T05veWM1Vmx3bXB2SUJWeGVUSG9Edi9IdE1YcnZLN2hKd3hC?=
 =?utf-8?B?S1o4SjEzYmhMM3F2QklibmRXQXppR0lnVGxVMExiZVUrNVFFT3ptMUc0R1V5?=
 =?utf-8?B?VzRzdDdBNmVPZ21VY2JneU1MbFpuRDRTUXVReC9JeXkrOEFZUE11YzRodWw4?=
 =?utf-8?B?VU81clZ0SzdMcXhqajRSekpIUzVPRGJSaFBUU2NtUWo0QkJyb2JjeFMzV25u?=
 =?utf-8?B?NVNKckxsclhQTVRHbUk3NGxFWHlNT01WN1p4L2NKTEZUZ1NUSGkwNVoxeEFL?=
 =?utf-8?B?bUJwZlgydHJlNnRUTXhvWjJXRW9EZFRPYlVwYm1LRDdQTHlOaDRGZUY1enB4?=
 =?utf-8?B?TTlISzRBVlBwOWZYa3lzVWljK1B6VjRUTFA0RmNPQ2EyUzV4NXNoTW9obVdR?=
 =?utf-8?B?L21Bd2RIQVJtdGdiTWZFZXIzbExHdWZiT2NyMllXdHlHdmFZZjQvSUMzTW8v?=
 =?utf-8?B?ZUVtTENWYTZ5L2RvZGxLNSs5cWhwek5sSjFxSkIwZ0FhUDFJeGx5K1QxRmNp?=
 =?utf-8?B?YUtsNGJIcGJRZ2ZNTS8wWExBYTBsQ0o5eHV0bFVkblBZa1RPN1JBTEluTTdJ?=
 =?utf-8?B?c3NMNmIxcFNlMFkzS2pOWjJYZHBBZmJia25kOGc4RWcydjUxWi9sVm1Rcith?=
 =?utf-8?B?R3YzS3pDL0hFSG9EUlpEYTVia2JORHpzSDhSdzYrbW9CVmtDaXFpMjRidVBv?=
 =?utf-8?B?SnZia01DRU11M2s1cEYzOENkL1ViV0xicVYrU2E3S3Fhd2gvQ0JMbDJlTmFu?=
 =?utf-8?B?VU5mekJuMVBMUUZES2NmT3djOUw5RkY1Z0d1TVErVC9IRHlDdGZNV1RDQ294?=
 =?utf-8?B?VUViRThVeDJYUnZpMS9tRGRpUDFYTzBaZWYzNDNhcVRJazVvM29BMGZuNDRE?=
 =?utf-8?B?U2dvRmhMU2VLOWdDMGhkSDBrYjB6QUhuK0I5QklYbnM0YWtZQW9leWFJN1dn?=
 =?utf-8?B?cjRpVjNmSVBDQXNyU3ZqRVpOVjRmUXVBbm02a1VqSm1pKytwUVFNWFJMeTRX?=
 =?utf-8?B?QWlXMFAwV2RoTlQ3b2dMb0NxaHJQUU9VdHY3OU1HamdOcjJmSkcrdDQ0b2xk?=
 =?utf-8?B?ajBrM29SMG1xZ2xJOXN3bXA4WEtkekhBZXNzZWJxS2ZmMjQ3S2ppb2xhdndX?=
 =?utf-8?B?dWU4U2tHZzJqY0NRdlRoaU9Cb3AySXRpTXliRUdneE92bFRyZ0FISUVIeXV0?=
 =?utf-8?B?TDVXc3JIMFB6VGx3alVvZUVZZ0U2S0JTSkNSdjRVVXlVZGFoTEsxV1ByVWNl?=
 =?utf-8?B?dFhxT05SRDg5ME5OaU9BTVpQV3V3dDZTekljNXdMdXI2TW82dThEVTYvWklE?=
 =?utf-8?B?K1c5YkJnZi91ZHMzQTYwdk1wd3NTOWdrUWQra2s1VGVGU3ZQUEhUaGdUendQ?=
 =?utf-8?B?Q2xXaE1XbzB4bGN6amg5cjk4T1NyeUFhUjM0UGV6ZWFYRWpwRjVxN2I0aG9r?=
 =?utf-8?B?Z3FkOVpKZ3FGRklKQ0oxYjR4VWxFbXBqZjhOK0psa3dWOURRSVBVbXZwNW0v?=
 =?utf-8?B?SVhJYVdnM1NTYkhESnd6RGwwVngwYWlqN3pNekREblpPK2p4QnArY0pOcEs2?=
 =?utf-8?B?Z1RqbHowSmFFNVFtdTJGZU53YjFuL2Z6OUVEdHJwRjFBM3JBQUoyTlZjc2d2?=
 =?utf-8?B?Zm5RSEtrbU5iTU56Mm4yZ0RuMlFycXlZQ1NpbE1nT2NhUlZKSVVuWXpyUThq?=
 =?utf-8?B?WTVIL2pScVdRL1dWbTBXUlE4TTVFY2dieEpzWTFIeGJJeVZuNUVHMzhHWVlo?=
 =?utf-8?B?NzVnaDZtS0NpZHkrdml5bE9wRVovVlhmeC9zSFVtTUtvWno1U295bjFnL05y?=
 =?utf-8?Q?4Q2I9C0VS3TV2cbgZPXPfdek8?=
Content-Type: multipart/mixed;
	boundary="_002_DM4PR10MB6134C9BCBAABA358F109B46294622DM4PR10MB6134namp_"
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB6134.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2adb7b49-8a98-4825-59f3-08dcd7f119bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 14:49:29.8356
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SjVh8xKrctg9qqK+1jtCjg0LojEEBCz3Gg1gjgvjjxLjdej8BxvOIBr5yXoxgMpSzrrGAXpKG8z+bz3ak0EAICpGDPe22RCOpwL2wK9asGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7204
X-Proofpoint-GUID: -lafuoGyFWAi-YFK5SgqS60aHwtn6VFU
X-Proofpoint-ORIG-GUID: -lafuoGyFWAi-YFK5SgqS60aHwtn6VFU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-18_10,2024-09-18_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 clxscore=1015 mlxscore=0 spamscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=999 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409180096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 14:49:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63859

--_002_DM4PR10MB6134C9BCBAABA358F109B46294622DM4PR10MB6134namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

RE: variable expansion. Where are you assigning OPKGLIBDIR its new value? I=
f it is in an opkg bbappends in your own layer, I wonder if the bbappends i=
s not being parsed during rootfs creation.


RE: the partitions. Hmm, yeah. I agree that it probably isn't sensible to e=
xpect the opkg state information to be placed into /data-os during rootfs c=
reation.

Does your usecase support running opkg at runtime? If not, you might just a=
ccept that the state information stays on the read-only partition.

If runtime opkg operations are supported, you might make a one-time initscr=
ipt that runs on first-boot and moves the sstate information to /data-os.

Sorry if my emails are strangely formatted by the way. I'm in a weird tempo=
rary email setup.


---
Alex Stewart
Software Engineer. PR&D Security, RTOS.
T&M, Emerson Electric Corp. (NI)

________________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Martin Siegumfeldt <mns@gomspace.com>
Sent: Wednesday, September 18, 2024 04:39
To: Stewart, Alex; yocto@lists.yoctoproject.org
Subject: [EXTERNAL] Re: [yocto] read-only-rootfs and opkg

Hi Alex, Thanks for your input - highly appreciated. It appears you have a =
point regarding the variable assignment - 'bitbake-getvar OPKGLIBDIR' indee=
d indicates the intended assignment does not occur: $ bitbake-getvar --valu=
e OPKGLIBDIR NOTE:=E2=80=8A

Hi Alex,

Thanks for your input - highly appreciated.

It appears you have a point regarding the variable assignment - 'bitbake-ge=
tvar OPKGLIBDIR' indeed indicates the intended assignment does not occur:
$ bitbake-getvar --value OPKGLIBDIR
NOTE: Starting bitbake server...
/var/lib

Doing the strong assignment (OPKGLIBDIR =3D "/data-os/opkg") does not make =
a difference, which puzzles me as all assigments (I am able to grep) are we=
ak:

$ rg ^OPKGLIBDIR
meta/classes-recipe/rootfs_ipk.bbclass
30:OPKGLIBDIR ??=3D "${localstatedir}/lib"
meta/recipes-devtools/opkg/opkg_0.6.1.bb
32:OPKGLIBDIR ??=3D "${target_localstatedir}/lib"
meta/classes-global/package_ipk.bbclass
24:OPKGLIBDIR ??=3D "${localstatedir}/lib"

However, based on your reply, I am starting to wonder whether what I am try=
ing to achieve is at all possible. The mount '/data-os' is a dedicated part=
ition mounted R/W and used by overlayfs-etc, my assumption was to configure=
 opkg to use this for the meta-data. But if the meta-data is rendered build=
-time during rootfs creation, I do not see how this is achievable?

Thanks,
Martin


--_002_DM4PR10MB6134C9BCBAABA358F109B46294622DM4PR10MB6134namp_
Content-Type: text/plain; name="ATT00001.txt"
Content-Description: ATT00001.txt
Content-Disposition: attachment; filename="ATT00001.txt"; size=784;
	creation-date="Wed, 18 Sep 2024 08:39:51 GMT";
	modification-date="Wed, 18 Sep 2024 14:42:53 GMT"
Content-ID: <9FD7D3E02622B848B468004560BD5356@namprd10.prod.outlook.com>
Content-Transfer-Encoding: base64

DQotPS09LT0tPS09LT0tPS09LT0tPS09LQ0KTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdl
cyBzZW50IHRvIHRoaXMgZ3JvdXAuDQpWaWV3L1JlcGx5IE9ubGluZSAoIzYzODU4KTogaHR0cHM6
Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lv
Y3RvL21lc3NhZ2UvNjM4NThfXzshIU9reWpFcWtxcWU5VWhOUSF4YU4zMUJsa0lNWXRzVlB2S0lW
R1BIMGJJUzFYNDVWOFAzQVMzY3Z5a1BGbk5lQVBYalVKakdsUWJMakRtTW43RmtYbFF3c0pNSGxJ
ZFF3JCANCk11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBz
Oi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC8xMDg0NzgwMTIvMzYxNjc4OF9fOyEhT2t5akVx
a3FxZTlVaE5RIXhhTjMxQmxrSU1ZdHNWUHZLSVZHUEgwYklTMVg0NVY4UDNBUzNjdnlrUEZuTmVB
UFhqVUpqR2xRYkxqRG1NbjdGa1hsUXdzSmFORVE2SGckIA0KR3JvdXAgT3duZXI6IHlvY3RvK293
bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClVuc3Vic2NyaWJlOiBodHRwczovL3VybGRlZmVu
c2UuY29tL3YzL19faHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWJf
XzshIU9reWpFcWtxcWU5VWhOUSF4YU4zMUJsa0lNWXRzVlB2S0lWR1BIMGJJUzFYNDVWOFAzQVMz
Y3Z5a1BGbk5lQVBYalVKakdsUWJMakRtTW43RmtYbFF3c0pNTHNoZFBzJCAgW2FsZXguc3Rld2Fy
dEBlbWVyc29uLmNvbV0NCi09LT0tPS09LT0tPS09LT0tPS09LT0tDQoNCg==

--_002_DM4PR10MB6134C9BCBAABA358F109B46294622DM4PR10MB6134namp_--

