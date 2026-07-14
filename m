Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4710C43458
	for <webhook@archiver.kernel.org>; Tue, 14 Jul 2026 21:33:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.609.1784064792532265968
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2026 14:33:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=LJhMcja5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=16552daf93=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66EIxmLp2631659;
	Tue, 14 Jul 2026 21:33:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=QUM3gpGDtOntyOp0SWaMhC
	3d1ilFqpX4ZYnG5H6SLRg=; b=LJhMcja5RSaUapNnSqWl71mmKqoDaI/ljNADUz
	3YQ685MRL+1g0LDSzDGujrNN3aX63A2Mwmg0s7JGJDuBf9X+uvL7fnKM6kSmgJia
	lT510P6RxQvzFFEGQQuKgfs84ROvScdGCynKz0PH8qh2LplQfHOVRyMmQD+cdFvH
	Jc4fqieoQ0Ldoeiqa90wreOh2s5Qwvf4ZP/yWqC4FXsrmUb8z/W7QfS/cKm9VXCS
	pJpTsAPcai1ZjR0PAxxvjVzR5UraqgZdMnwAJdm7W0US3lLYTAc9esMggSJReBKD
	7SVHgZQar4JsYX5G3tsRgtXo202u2L73S3dMfgVdLBQ2Ml0g==
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012010.outbound.protection.outlook.com [52.101.53.10])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4fbct4n46b-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 14 Jul 2026 21:33:10 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o4GoG/fn2zYxKlDcr3jYF6orkkRSjXDsVlg41h2Sd6y/+AfDL13BdYxKG9FLAUbMKOfuefMmnUPf48WASBoxh2HWBsQjGyfCsxZWQAHUnu8vQPq+Vl/l8x8IBdGS5FyT6L/aQ4AZ3JGuUGOU9KUxthjSI+Gif3dZdcGrfu3XOHJ5od86ie2zGUTXZgZY5zW2sibJp99oX7KHd3Q4EF993Uf3lict0XsMLNFmd6BGgQReYzrNwWGg4Qpsd5JNBUKG7SBLCx6teq6gwnm2025OEb8qGhre6AlT+Cn41kr0GNKSoLt4Z1XBwoWyUhbw1SMQ02pZL+1fgu0LhilPMA3i+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUM3gpGDtOntyOp0SWaMhC3d1ilFqpX4ZYnG5H6SLRg=;
 b=wzsGCsh5CWqfCl5+rwmaIQvk2pDD/uh250np+IeHKKF9VAs0OwLqymccJnwxYWCIJezyFnWHWebR125IuuOipe7Plt/kOmf/RodreiTsWpsK/YXkf/r1ADnBKy+BWskVZdNon8zE/KYrtD8FXltb9nOl4Hp4LxwVKvLc/0cSeLaDqbP5cauiE2Pr1qgHSDDRf4RJnJRA6mmoYQzT7aAl5sqBxhHit8V39pvm8qbxuT5Ju/vIggbR0w9kcp+IGiv6bpeEqpqaNqa4hXmRjbmaeNl47ts+eNfTxf33jr0ZbJgnHUlMaSyYBXQEIx4fothjyh71pKXGPXuMenuHbhyDSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Tue, 14 Jul
 2026 21:33:06 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%4]) with mapi id 15.21.0181.014; Tue, 14 Jul 2026
 21:33:06 +0000
Content-Type: multipart/alternative;
 boundary="------------zXbtEdKpYmWZuypEyXgR6OnQ"
Message-ID: <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
Date: Tue, 14 Jul 2026 17:33:04 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: yocto@lists.yoctoproject.org, luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
X-ClientProxiedBy: YT4P288CA0043.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d3::29) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: 32c247a6-39be-4d9b-1934-08dee1ef7dfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|4022899009|366016|69100299015|1800799024|1032899013|7149299003|376014|3109299003|23010399003|7049299003|18002099003|22082099003|11063799006|56012099006|4076899003|8096899003|2066899003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	RRm+xgQO/08vS+q6JCvFiYVo+bB0ilCZIMWzQy96Z1wczfI3/aNljj9zxrjrlzwoNij3xbjD+gpxkQ8wMzGalCbX93cJt8CkEhnC7A5kSvXI1rpqwQuQFjh134D0Iazu3KoqTVDbjhI4Y1ZigHN1fMInV2pZQndsGPZAuBdW+h55fnZKnczAJtcuYTRQzUffl4stYolE3w/S/ZWGDk60sftAaSE6nDsSwKWYJqlE8rFZ3AmmdM7oQbx98X3C5hhYttW0wpP0MWHafgKD12TtFIGJnJuBRKu+lIgqKU9zInSm9ywQ3ujBjzAaXCdzb/1V+parOMchr7KgWx1hq+IMVTbboOQSaDbPq7nqQ8mE/WV5Q+OkHHCuwl7oe05CkCZfdZWJt3HExJObP9QUxEonKLuEvo6mXksgcwaw6zCpkX4JjvrwliYjD2ZV9Rh4dEWgGg0AK3d7f380PWxHIjFL9SkdbT0hBdOXkrSeLMUbudeHwKWzg5ydQT1jxVOFvOOBkxOU7OMKwJflCVapPgaHH3taMYEq/P/LhJiQSTGiGLk/FRWUHwrG4D8V4q+VKupbPlWjMX1JatnZHuuQhqFXeA7rzjHtFliDZU378n3JnjU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(69100299015)(1800799024)(1032899013)(7149299003)(376014)(3109299003)(23010399003)(7049299003)(18002099003)(22082099003)(11063799006)(56012099006)(4076899003)(8096899003)(2066899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXlzZERzR3FSM2pZUFJ4R1ZBQ2g5WStZU2FUTWN3dnFsT2pZZTFFZnlMdjlI?=
 =?utf-8?B?NEhrK2VzNElDVDFSTkJVbW5xeFdVUGN0YXlmRDlGc2ttSnpOTTBHR2s3THpO?=
 =?utf-8?B?KzRaSWJaV3A4U1dlOXNPTWE4WlNoNkVFSFpDdVFSMjBROVVkMVlscWtheUhX?=
 =?utf-8?B?WW40NHhqWEFybDc5SWJ3V3N2c0VFU2EvVjZXQzF4K2lMdXNuYUc5MVFDRmRS?=
 =?utf-8?B?b0ZhcG1Ga0hjQklQMHhpN3F4bXpJc1F5NXZtNjRCeWhOTTQrakxDNGNrQ2FP?=
 =?utf-8?B?MGtlT1pRdmsvaVRPU1Jmd1pURWpzZ1kwQjI5UHp1dzJseWkyckdYanNvZXcr?=
 =?utf-8?B?RjhUZE94Ny9VUXJCVHJCNU90WVZQazZvSU56MGVpREpzMENrcGlxVnJnSUtr?=
 =?utf-8?B?d0MrT0h1dTQxc0s4L3NoRzJSeTdZcXYyOFRnbFhTbHgyMGRJRDBBcmN6YVlY?=
 =?utf-8?B?UUNNdVlRZUlTNHJQTGY1bzdFSS9Vc2VWdmZXcHRXaTIrcGxLWFQzd3htLzc4?=
 =?utf-8?B?TWFLOGNjZDAxMzZPZG5VWXNXOUZERHpOaXR3VjdIUWw1VzFEbzA3QTFjVmZ4?=
 =?utf-8?B?OWFyaTlKSW9xc2FSZ2F4T3lJeDZaMmRMdUtkbmpleXRCUS9wTmZWSncvREtj?=
 =?utf-8?B?V0RQeFhKbGgvZ3hEdHhIQnR2RTczZk11MFdWcFFWczFVU0QzUmtKVDlsd3BW?=
 =?utf-8?B?bHNTMStxb0dqSXBBeHM5WVNpOVZRaTErNU9xUVN2MFBBbmI5VU1vOTlHM0cw?=
 =?utf-8?B?QkZ3MHUwWVVLaGxONktjdWRIbGlMLzVTaTVtUDBzS2xNeE1sbGI0Vy9XZjFt?=
 =?utf-8?B?dUJTc2ZBV3hRMjRscmNveWN0NE82a21oOVd1S2hUbTRQdk5pVDVPbC9FSTVD?=
 =?utf-8?B?dHR2Uk5ZOXVlc2x5MjQ5dHI5Sk01dzNyZSsyTFo3QUtSOHpxY3dEZlFmb25i?=
 =?utf-8?B?N1lGYWZ6TzVsekhMb3Z2Mm9FNnVURElFMlBPb3BpeEJKVS90QUR4Z3dwWWFk?=
 =?utf-8?B?TzIzUkNPcWQ1aDg0ME5QVUtQOS9TK1BYUkJUYnpaYUEyY25yYkJ6SDlFbzRz?=
 =?utf-8?B?cW1EVzJ4TDNpZzJqOTM2UTRIYmVQdm5WNmU0b0pldzBtWmtHVDhld3dMSExk?=
 =?utf-8?B?VGJxeWUzUFdLWERjMk1OV2hCRHRTeDE0VVBlcCtFd01OL0IyaDRZV0dhZGNm?=
 =?utf-8?B?MlY5SUJDazFhWmcvRFNiSVg1bVVpeW5EQW9uOFBHVWxyV1ZVV05LQk10TVZW?=
 =?utf-8?B?a3dwOGY3N2paQ0ZJN3B2cWViaTZFb0hrSlVXUVh3K1dwTUJQNVhkTElCWEdz?=
 =?utf-8?B?V1FleDFLd0tTTGdJSVdMSUNRbmRZZjUxNnBNMFprMnRrVDY5SUVpNXNmTDcx?=
 =?utf-8?B?RythWUxOdU5HVGNFTFo1eEFCQ24wcU5tTFFLb3FDVFdjSkVwSVlIaU1aZDEw?=
 =?utf-8?B?YnkyQUlQZ3UvVjUxc1M1OVB4WjRpYVF5YWczSjVRaW05R1BBZzlJcnp6OS9O?=
 =?utf-8?B?bmFSTlBrWWNCbktsdmNuZWdvRWFHbjNIcTlweWFWc01kU1Fvei96TUhmbndT?=
 =?utf-8?B?VWZQQTJaVWNnclB6MDViK0Y0NWQ1emZKdjU0OWJ0cENpZFZaV2h2OTRyT2tz?=
 =?utf-8?B?QVZqZXgyVjJ3cmJOZGlsemJ3aC9qa05kK01iQTU3bnhPVEovR0pYUTZIbWFt?=
 =?utf-8?B?L3ZGbk9ac3pxcC9qSjV2TllKNVEyTTNEMFE4NzdWK201bUZydnlSYlJ0aFkx?=
 =?utf-8?B?UUtmTlFsTm9nWmtCYVI1Z0NoeTF1M21DckFBZjF3aXZDRTAxQlhPZTFBc3VY?=
 =?utf-8?B?dk04R0xYYmxMWWFXUlhSa0gybXRkKzE2c3ZHSHQ0RzN1NnJXNFZUcFRQaUxO?=
 =?utf-8?B?Ukk0UTRDbEkyK0tCSENpMmJDKzJYaHZMLzNzdzV6L1pXSlRmam9GbTRNYzNN?=
 =?utf-8?B?aU54aUpzOGVPb2NOSldLYU0vSnBFMzc5NllsMm03UXkwejVKVmFNRHFxTDJD?=
 =?utf-8?B?ZDVPSjUvZ05Ldkk2ZXlEaHJTUFNtd0t3Qi9oc213ajc5Z2IzWVNpaVhQRWVY?=
 =?utf-8?B?dk9MWDBobVNETS9iaEd0MUpnTGdEZ0laMzBLa2NzVU1aTGxVc1YwVktuT1Fa?=
 =?utf-8?B?dnZYa1hOWlZNeSttaTZ6RlZjSjByek9FQjArajdxUzVLUUdORGhnWmpPQjFZ?=
 =?utf-8?B?S1VaRHVIQk02a2czeE9VNjhxcFIvazNpaVJXZVorWGJFeFZIaXVWejFCWUE5?=
 =?utf-8?B?WitHNU9LSXVBbjMxeU5iYTFIbXpSSUFVa2N3RTlEdlVjd1V3ZHQ5SlQ2M1h2?=
 =?utf-8?B?blFKOGtmRlJ0WEJEUjJ2aWsxazE1S3p1Z1VsQk9NSFprZWlja0thYjdUK0s5?=
 =?utf-8?Q?bGQWu+fuB5JKLWV0=3D?=
X-Exchange-RoutingPolicyChecked: 
	Kx5xwQhhA7A8/dZwriBOhKcGrq4M65mwS9st+qFvu8HCCt1IPepZP5o/gJtwKyEVxRTzAnIEAPgHAK23/L/8snLaZikYvjGhjZ4zV/Hd+TLz0qn16WF30UwXMlZzBN7rq8uHtNB6dwKKox9hy1fcfz2ypgOlJUqIMQrX9oEEIHEl19PB9f0Ubq7Dikzt6MWQKzwXJQLNupKIdmGU20gAXg5aGrY0UdSfM4lmG+TCggBOZIZV7s8KxDbzTAcwFUXU71bt6lbcj1x82ueAps//ahoSTFIxtcsaS9/by80XYY6JerhFcXndQFcinN+wt35xgkuNfp2K9Oi3v6ekcNBnvg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32c247a6-39be-4d9b-1934-08dee1ef7dfe
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 21:33:06.2223
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: soTLdwMAMOFLZ7LjkRw/7j+vvd+cqvIrwPhuYwBSbpdHOOBEcYqrLBVpgAeU+A0EqnP8/jEMV31p246NhGVmF0GnU05kPnJmZm9ZFMy3aDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
X-Authority-Analysis: v=2.4 cv=J9CaKgnS c=1 sm=1 tr=0 ts=6a56ab17 cx=c_pps
 a=bwjaHK0hsJlcehRpTf+kTg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=fTW__CHxibyLmBMfj2wP:22 a=iGHA9ds3AAAA:8
 a=VwQbUJbxAAAA:8 a=NXMraRZsAAAA:8 a=t7CeM3EgAAAA:8 a=dCMNpBSBIo656foYpNYA:9
 a=PRpDppDLrCsA:10 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=CseZukmvAAAA:8
 a=pGLkceISAAAA:8 a=oJiLH12bO-IKXT8L11YA:9 a=WBsoFPw8Kub8UAMP:21
 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
 a=M5shc7ap4X_tZo1ZwZdW:22 a=FdTzh2GWekK77mhwV6Dw:22 a=5n-00HNy9xF87rFGjYgu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE0MDIyMiBTYWx0ZWRfX7IEA7UnlznxE
 Qzyyu9KhEKHIfgXyZ/iSDHLDR7ctPt4Z9gUk8RQYFlFHo6xiFnIjEvcqfV2gSq3cB0qnkJ82gb+
 sadEYESapcDzEGwiSxuJoXCqmkxdwlpHlKbx8P+RAXrsxdSapRek
X-Proofpoint-ORIG-GUID: uGnXFF1buZ47OVrxrfy2_RQ1_lvSeb-z
X-Proofpoint-GUID: uGnXFF1buZ47OVrxrfy2_RQ1_lvSeb-z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE0MDIyMiBTYWx0ZWRfX3o7aZXxS379W
 8xdXY19RVs+OYFnoEkRF90TAIslyYrqil6wc7/HyKxMfWqzCrukLRfYVPUfK15CaHHJdm8s5UHS
 99zUOS0xPFX6tgVrKbf62dvlLjkUT2WKE9fAYFpQYa/OAFSdF0ifl6TuJdIc7xze+WPeZ/BEsUm
 AVJ3nc+YblFYzSFP0dQsVeP/08ysWFQlBelIBEwz7ZPHRYKainc79FaeVoTUlNWshuKrYDInRwM
 y5i2pNSJtTbzrvzxp8zrfGMOhiY0gOcqBS936KUNSL7+MSbl3m1mNNTl05CLao1chgRPwNpSMEj
 VQiNccIp2quLBiK2p8uGDCGWVShoHKCWI/Yhx1U4V4UrwztaVJbGxI00D1q9ogjBxcb6+GkQdM3
 BBTOnjNEnjv6N7/nGdm21AaLMQExEPWQZ0SzZDT3pLphyjyhxz5Yq5pUjxaEVnjvSOqGZGXT/CK
 TS5nvHDumbC3UDovZMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-14_05,2026-07-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1011 malwarescore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607140222
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2026 21:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66640

--------------zXbtEdKpYmWZuypEyXgR6OnQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 66EIxmLp2631659

Hi Luis,

On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org wrote:
> Hi,
>
> I would like to know if there is a way to limit Bitbake's Memory usage=20
> to a specific percentage of the available RAM. For example, can the=20
> Yocto build be limited to use a maximum of 70% of RAM?
Not without using a container to do the build.
>
> Could these three variables achieve this?
>
> BB_PRESSURE_MAX_CPU=20
> <https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PR=
ESSURE_MAX_CPU>,=20
> BB_PRESSURE_MAX_IO=20
> <https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PR=
ESSURE_MAX_IO>=C2=A0,=20
> BB_PRESSURE_MAX_MEMORY=20
> <https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PR=
ESSURE_MAX_MEMORY>
>
> I see the range for these variables is from 1 to 1000000, so I would=20
> like to understand if there is a way to specify their values as a=20
> function of the available=C2=A0RAM.
No, there is only pressure when resources are over-commited so if you=20
have free memory, there's no over-commit.
https://docs.kernel.org/accounting/psi.html

That's the design intent of the bitbake PRESSURE regulation system.

There are plans to work on additional build system regulation.

The first idea is to use the jobserver design:
https://lore.kernel.org/openembedded-core/?q=3DGNU+AND+jobserver++AND+f%3=
Amacleod
and that would indirectly limit memory consumption since there would be=20
fewer instances of gcc / rustc / ... running
at once.

There's also an even less clear idea about being able to restrict the=20
build by specifying memory usage.
That shouldn't be too hard to implement in bitbake in the same point=20
where the pressure checks happen.
Are you interested in working on that ?

There are of course other levers to pull to reduce CPU/memory consumption=
:
https://docs.yoctoproject.org/dev-manual/limiting-resources.html

Have you tried them ?


>
> Regards,
>
> Luis
>
>
>
> File:RidgeRun.ai banner.png <https://ridgerun.ai/>
> This email and any attachments are intended for the sole use of the=20
> named recipient(s) and contain(s) confidential information that may be=20
> proprietary, privileged, or copyrighted under applicable law. If you=20
> are not the intended recipient, do not read, copy, or forward this=20
> email message or any attachments, delete this email message and any=20
> attachments immediately.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66637):https://lists.yoctoproject.org/g/yocto/messa=
ge/66637
> Mute This Topic:https://lists.yoctoproject.org/mt/120213825/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod=
@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------zXbtEdKpYmWZuypEyXgR6OnQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <head>

    
  </head>
  <body>
    <div class="moz-cite-prefix">Hi Luis,<br>
      <br>
    </div>
    <div class="moz-cite-prefix">On 2026-07-10 17:26, Luis Merayo via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com">
      
      <div dir="ltr">
        <div><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px">Hi,<br style="box-sizing:border-box">
            <br style="box-sizing:border-box">
            I would like to know if there is a way to limit Bitbake's
            Memory usage to a specific percentage of the available RAM.
            For example, can the Yocto build be limited to use a maximum
            of 70% of RAM?<br style="box-sizing:border-box">
          </font></div>
      </div>
    </blockquote>
    <font face="Work Sans, sans-serif" color="#232e3c">Not without using
      a container to do the build.</font>
    <blockquote type="cite" cite="mid:CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com">
      <div dir="ltr">
        <div><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px"><br style="box-sizing:border-box">
            Could these three variables achieve this?<br style="box-sizing:border-box">
            <br style="box-sizing:border-box">
          </font><span style="box-sizing:border-box;color:rgb(51,51,51);font-size:16px;font-family:Verdana,sans-serif;background-color:rgb(252,252,252)">&nbsp;</span><a class="gmail-reference gmail-internal" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_CPU" rel="nofollow noopener" target="_blank" style="box-sizing:border-box;color:rgb(68,68,68);text-decoration:none;font-size:16px;font-family:Verdana,sans-serif" moz-do-not-send="true"><span class="gmail-xref gmail-std gmail-std-term" style="box-sizing:border-box">BB_PRESSURE_MAX_CPU</span></a><span style="color:rgb(51,51,51);font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px">,&nbsp;</span><a class="gmail-reference gmail-internal" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_IO" rel="nofollow noopener" target="_blank" style="box-sizing:border-box;color:rgb(68,68,68);text-decoration:none;font-size:16px;font-family:Verdana,sans-serif" moz-do-not-send="true"><span class="gmail-xref gmail-std gmail-std-term" style="box-sizing:border-box">BB_PRESSURE_MAX_IO</span></a><span style="color:rgb(51,51,51);font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px">&nbsp;,&nbsp;</span><a class="gmail-reference gmail-internal" href="https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_MEMORY" rel="nofollow noopener" target="_blank" style="box-sizing:border-box;color:rgb(68,68,68);text-decoration:none;font-size:16px;font-family:Verdana,sans-serif" moz-do-not-send="true"><span class="gmail-xref gmail-std gmail-std-term" style="box-sizing:border-box">BB_PRESSURE_MAX_MEMORY</span></a><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px"><br style="box-sizing:border-box">
            <br style="box-sizing:border-box">
            I see the range for these variables is from 1 to&nbsp;</font><span style="box-sizing:border-box;color:rgb(51,51,51);font-size:16px;font-family:Verdana,sans-serif;background-color:rgb(252,252,252)">1000000,
            so I would like to understand if there is a way to specify
            their values as a function of the available&nbsp;RAM.</span><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px"><br style="box-sizing:border-box">
          </font></div>
      </div>
    </blockquote>
    <font face="Work Sans, sans-serif" color="#232e3c">No, there is only
      pressure when resources are over-commited so if you have free
      memory, there's no over-commit.<br>
      &nbsp; &nbsp;<a class="moz-txt-link-freetext" href="https://docs.kernel.org/accounting/psi.html">https://docs.kernel.org/accounting/psi.html</a><br>
      <br>
      That's the design intent of the bitbake PRESSURE regulation
      system.<br>
      <br>
      There are plans to work on additional build system regulation.<br>
      <br>
      The first idea is to use the jobserver design:<br>
      &nbsp;
&nbsp;<a class="moz-txt-link-freetext" href="https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver++AND+f%3Amacleod">https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver++AND+f%3Amacleod</a><br>
      and that would indirectly limit memory consumption since there
      would be fewer instances of gcc / rustc / ... running<br>
      at once.<br>
      <br>
      There's also an even less clear idea about being able to restrict
      the build by specifying memory usage.<br>
      That shouldn't be too hard to implement in bitbake in the same
      point where the pressure checks happen.<br>
      Are you interested in working on that ?<br>
      <br>
      There are of course other levers to pull to reduce CPU/memory
      consumption:<br>
      &nbsp; <a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/dev-manual/limiting-resources.html">https://docs.yoctoproject.org/dev-manual/limiting-resources.html</a><br>
      <br>
      Have you tried them ?<br>
      <br>
      <br>
    </font>
    <blockquote type="cite" cite="mid:CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com">
      <div dir="ltr">
        <div><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px"><br style="box-sizing:border-box">
            Regards,</font></div>
        <div><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px"><br>
          </font></div>
        <div><font color="#232e3c" face="Work Sans, sans-serif" style="box-sizing:border-box;font-size:16px">Luis</font></div>
        <div>
          <div dir="ltr" class="gmail_signature" data-smartmail="gmail_signature">
            <div dir="ltr"><span>
                <div dir="ltr" style="margin-left:0pt" align="left"><span><br>
                    <br>
                  </span></div>
              </span></div>
          </div>
        </div>
      </div>
      <br>
      <div><a href="https://ridgerun.ai/" target="_blank" moz-do-not-send="true"><img src="https://developer.ridgerun.com/wiki/images/thumb/5/57/RidgeRun.ai_banner.png/800px-RidgeRun.ai_banner.png?20260326200537" alt="File:RidgeRun.ai banner.png" moz-do-not-send="true"></a><span style="color:rgb(0,0,0);font-family:&quot;Work Sans&quot;,sans-serif;font-size:9.33333px;text-align:justify"></span></div>
      <font size="1">This email and any attachments are intended for the
        sole use of the named recipient(s) and contain(s) confidential
        information that may be proprietary, privileged, or copyrighted
        under applicable law. If you are not the intended recipient, do
        not read, copy, or forward this email message or any
        attachments, delete this email message and any attachments
        immediately.</font>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#66637): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/66637">https://lists.yoctoproject.org/g/yocto/message/66637</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/120213825/3616765">https://lists.yoctoproject.org/mt/120213825/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------zXbtEdKpYmWZuypEyXgR6OnQ--

