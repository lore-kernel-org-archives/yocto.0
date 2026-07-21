Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32442C44532
	for <webhook@archiver.kernel.org>; Tue, 21 Jul 2026 15:22:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.25603.1784647357069108731
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2026 08:22:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=DFTwyiKr;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=16624639ec=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LDhps92891184;
	Tue, 21 Jul 2026 15:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=Q1M7GyesSpoRLOBM8Yngc3
	MM8Ul3sWfhl15LjKeXVAc=; b=DFTwyiKrzdog/YmCKIOpb6MSbJ7jB2zUuCXu5M
	asOdIH4koZN2NQdChmI3X+rpEfJboHcigBLJzeBtMdeU19EB89j5NtTSTJuzbYn7
	CtIK48Q/+RzY/7pmxiOiBkGwjS/8L1i3QHooBf+tX0NT9w4RnEN8wM/wRWALkjSY
	rJJny/00RO7zlVR9jv68Isy83novrau79GD3XBZE8wKu/QNK2p+pprfQ2TPX3Pvi
	b8OxQ4fgcKrsPuUqwuAC88OgxF+EAzMFfIObxyGvZHt9v3IyD/c0cz5ldXZrt08O
	JVKLadgCKLK1gkbzLNKM5n2Aw/kk8sgvL2NIAEu0Z7YBI/0A==
Received: from mw6pr02cu001.outbound.protection.outlook.com (mail-westus2azon11012032.outbound.protection.outlook.com [52.101.48.32])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4fga8x4t52-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 21 Jul 2026 15:22:35 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AbBXwBKbfzv2FZtIn+PosMmgiT6EB3JDcS757t1TJplaDIYhNZ+mGEFaihGt/Jvesg5T40y7gy+I3iwA3sU0Ac8qHvPCkK7e1pZAu8ixPOLAwB8CFKcwOZIGModPBoXNjizUlLwRoryzFmgP4//zrLL5dH0c4vKtIIuhPDrZ5QJG7KVf+2vT/zQmIRNiYQtvXdbvM84QcKCP+QSmdsjjFzdGRWu4GM+JDh04IvtEa1p3sG3NWIANy85bTLyE+3cMCcJl4/KyHUu/PBZOyWnXowSNJ+S4ym5OlP4aQRCWLQQFFqu5Rcm8No+tFAl/IV5cPl7l/IpM6v8ThZINlS34hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1M7GyesSpoRLOBM8Yngc3MM8Ul3sWfhl15LjKeXVAc=;
 b=sh+3zKFeW8lcbzWi6etL8FgPzK0ZUDLRDqFajT42yO5Km5pFEBqJ7b7M1cZzX/3NZVXeQAgXa40Uc8HcoGMFv3ADm4p/Uu4YHxf2Hj02O/+di2xXrb0+WCpV3et1EcJCBSxunBPcpeeUCU0HB/CTdazdv1xCHOWKHahMhM0PdRn7sJ0LWtcFF+tpwqeddVrpoE2j/dxImluynRcyETkrWsPc54Va9QichkXA8Kfyex3WsWA1V/SR7scegXzYbRJRfmMXtN5OGS/QIag4CzywRYDyPQAoSQkJZGNevNu74NAJuVE2kZgx9H6fNo3P42hG9/i0Plbft2OG3ux9z9E5dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by CH3PR11MB8701.namprd11.prod.outlook.com (2603:10b6:610:1c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.10; Tue, 21 Jul
 2026 15:22:33 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%4]) with mapi id 15.21.0245.009; Tue, 21 Jul 2026
 15:22:33 +0000
Content-Type: multipart/alternative;
 boundary="------------KNiIBS67Vi7Wph0en8umA13l"
Message-ID: <f7c74a04-f5dc-4e09-8bae-65626db09dde@windriver.com>
Date: Tue, 21 Jul 2026 11:22:31 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: yocto@lists.yoctoproject.org, u.oelmann@pengutronix.de,
        luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <6rpl0nny24.fsf@pengutronix.de>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <6rpl0nny24.fsf@pengutronix.de>
X-ClientProxiedBy: DM6PR05CA0064.namprd05.prod.outlook.com
 (2603:10b6:5:335::33) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|CH3PR11MB8701:EE_
X-MS-Office365-Filtering-Correlation-Id: af03b584-28ed-41ee-f857-08dee73be2ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|23010399003|11063799006|56012099006|4143699003|5023799004|10067099003|22082099003|8096899003|18002099003|3023799007|13003099007;
X-Microsoft-Antispam-Message-Info: 
	nvZBqajRsVdalLxAIdy3poW39VdF/kAK+GWQfA9u4cL9m2ZGz2jOiSq7zIr6eWugHKgYf0uMgN9rnpqV+j8+T/ZhR7g39WMf7js7AXAOPSI0KZPqyJkq5wW4oChW2hHq1LtP1pqG1CllvmPZxRQ7S7w8Oo6oLskZXtJfPddQK44Ej384N7vHy9zWPX6SMWHTdZowCcrFeTEbsaAidNwYYRS3nhkRQ+ysGI1f4IO1oXQY2uTi7YVmLhNz2pIifewFLl05/Q8PEPM1Ak8mlMzjO7VGU6Uwa1iszfep8w5I0gyar1t/4N4oVU7KBntqQGiHFgmgWKuPSOSH5AaY3NKFnFG4MeSbGp05L4Yz2v/s8k4YebtbKndJ1FcZmeBBlbfzznClaKBfE7sEKNG8tpNb1iYksPjRJ1BarZf2QbBNw5Ghd7uv9RuzwyprL7JZ8gSTO349U8zVY4VIZ+1S2gqskI9RQJcD9hpVLo0aiPsMEoH1/cHisjGlqrK6ASx++CxeIY6zLHH8V3qi89XQVl6TZizH+dPceQmWfgsz5tenwifOxJP7vGojMXifg5iPSxYFre3hDNDK3yJ9UGnOI0cakYbeK3pYpaKsDyThdyts0oNqE/FTcoY6XgzjZDqUDU17hlDd3oSUgUM8DTMrf2x+nTMvWF4qo+Y047iVrwBgJL0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(23010399003)(11063799006)(56012099006)(4143699003)(5023799004)(10067099003)(22082099003)(8096899003)(18002099003)(3023799007)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QWp0MlJYejVBNXJLOTFKOXJPcXM2aE1halIraTA0dUpRNEJqeG9UdUFEcFht?=
 =?utf-8?B?clBHRmhsd1Z1bkFIby9zWG5qb2lnNGdqYUFYam12YUdIS0c2a3N4eGcwOTk2?=
 =?utf-8?B?cjhoYTZCTXEveURzekpRQVhMK2RuZjZhNFBxSldDQm5Pc291SkZFK2lpWFBu?=
 =?utf-8?B?SnF2VnRSM2N5VHFSQlZoenF6Z3VxQlFSZjc4Y0drWVArRWFMdFpTYitWQmVs?=
 =?utf-8?B?UnBFdFBkVU1oZlVwQVpkQWJxcHJkOURxbjBKWnBZL1kzcnFTejZzYTBTaG9q?=
 =?utf-8?B?Q1YzNEJQdGhyWHYxenh3cTN3dEJuS0FnTnVRNk9tMEhWMW1EcjR6YWw1d1VV?=
 =?utf-8?B?TWNIeWdJZ3lNL2txRkVsMmdsTkc5dTkwbGpRcEZjMzI2bmplYzlaeW1WMURo?=
 =?utf-8?B?cUJtOFJmWlFCQVhTbndGbW1jdXFML1o0MkFjeE9lS2EyVXRVR001NFQ5TEw1?=
 =?utf-8?B?MmI1OW11dHVwdDNTdW96dHg3Z0FTYUZPcmptbGhQaWp2WG1vNCtCaDA0T050?=
 =?utf-8?B?R2FFU2lncDZoYlhiSklYcTVBTnV6WnJ6dDVNSWxEYTlRNGZ1OHFMRlpLSmRK?=
 =?utf-8?B?VzE4VFo5THdBdzRyN2EvYkl0OHF4bTNUR2Ira21yVDhRcm8yc3J5L2pHelhV?=
 =?utf-8?B?bEovUEhTWWFsN2dUNXJDcUFScit5QUdGV3R4TFQ3YWUvaHVFL2VjZWF1ZDEy?=
 =?utf-8?B?K2JRY0hQMmZQNlBuSW9sc2RyY0g4MStYbm5VUWZlNk5hV0lVQWU1VmFOMW4z?=
 =?utf-8?B?cFRJd1NWOE92U1ZJcnZrd2J3VnBZVVZkWWxoWWNTQlkwZktZSTFwQTBBYnhj?=
 =?utf-8?B?cWh5Z2I5Ris5bFloanFRbDhHblB5cjBTMnhVaUc3WU1EdU9Ca0NHOEpzVnFM?=
 =?utf-8?B?Mit5NWpaTmpWUi8vSzVZRnZYaTM5cWJJOTVqMGpmTk9ZbjhKYXZPaTkzbVR4?=
 =?utf-8?B?TEh6VGNENjF2STkraEREMXB2Snlseit1V1MzY1d4OEd5anJOdG9VeWd5M0J4?=
 =?utf-8?B?aDJzQnQ2c25mdHhFbEYxanUyMmlCVGJTNFprRkFsblNERnNqRjBEWFUrZHJZ?=
 =?utf-8?B?T3NvdEhHNm9RY3pYSUxUM1dHcUhZRkJMaTZCblNuS1A0NjNDc1d5aE92L0J1?=
 =?utf-8?B?bjZLc3NJTlhrQTJGc0NLaEFYN2tXZGNrNWFUVFF6ZEs1Zm42WXE0MEEyNStp?=
 =?utf-8?B?V1BjbmllOTF2Vi94SC9WallyVzR1MG9Eek0rYnBkcWVDV2d4R0tRK3NFblVB?=
 =?utf-8?B?emtoSkZZQUIva0RBeVpyT2N0L1VuRlRQRUVVbWg5QjRneVBXSlJBZG16aUxj?=
 =?utf-8?B?Zmd6b1pITm05d2FaR1dWSm8wLzlxSkZ2RUorKzZVbUNMNWs4Wjc2Q0JHcldw?=
 =?utf-8?B?dXBlc0xQSmZCTnBIamZBYWpNMkhHQ0RhSUlkeUdZbHNtOVhtL3VxNWd5MHE4?=
 =?utf-8?B?ajJjZ050RDc2SzA1a3c1b3NWQVJ4cloxUDhEV2RoMnhvdXRXaXFTNEMyVzZy?=
 =?utf-8?B?VFc1aU1EM2dpR1RFM3FVNlFNSkpLSEd3RjI5S3haa2JxVXlObm9RMlJ0R3BE?=
 =?utf-8?B?eEtVRHgwc1YzWTVRN200MTE5ZUdkUlluUkNxVzVqUGZZcDhRUjU3RFFiNmFH?=
 =?utf-8?B?LzZ6bmRkcU0xZHlpUU83UU12eUdyR2tIdVBJWHRXOHVzTmpZZUpZN1l4RHFE?=
 =?utf-8?B?aEFmOERiazFZL3JyM2UzQ3VYVDd4RkJ4azI5L3lXdjZTKzVodDk0Qkk4REgr?=
 =?utf-8?B?VXpFcVdVSVp4VXF0R3ZlaHpaRzBwQkJDbHR4MExkT1orK3hweFkwOUpSZStq?=
 =?utf-8?B?eUIvVDdhLzlVMXFrekVoRkdMclp2akZtTklzQ00xa0p3RW85ZTRvS213THV1?=
 =?utf-8?B?cjREYzg1ejJ1RmtSd1pBbWFka3FTeWZWNUJ3b04zUXpzK1hVRENibjVsWEtJ?=
 =?utf-8?B?SkVEZCtUSWpZMy9FKzhjblFzaVdSby9GMmVRTXFyeFJtTFU5YlpMbmZmU3lQ?=
 =?utf-8?B?Mi9lTytzM2lGb0lJcWNkVVRRTzBUeExMNytDRTF0VVgxekdzUlEzQ2cxSjNE?=
 =?utf-8?B?c040a0VkR0lSQmYxRndUQ1VvRzhpdFg0SGFETU14UEczcHl3aEM2Q2xWMmZo?=
 =?utf-8?B?eTh6OVhjdkZNL0NWREw5UU5DS1hlQWp3S014UHNvMElEdktOUno0WmtzSUlH?=
 =?utf-8?B?ZzB3Y2dkS1g0My8rekh4azVaM08xSEpDc0IyaERVQ1VPMWtPSkw1cEU2UHFE?=
 =?utf-8?B?VTUrajJUQ0Q0ekh5OTdQYmJ0czI1YkhSVHg2ZkZqaVIxUCs0ZmU0UnZGR3Jn?=
 =?utf-8?B?ZnJhUkVDUjVOMVRMR00vcTAxRStWdk01WTBZakxvTk5lNXRXYkRXNHh3b2N5?=
 =?utf-8?Q?6cSF8cG7hOJrXMnY=3D?=
X-Exchange-RoutingPolicyChecked: 
	XQB98rFyBqieTMHvX7vuGaFfY/KPulvde6Np+acwdcb2EurTQbWH2QQV05//63O5ls8WX/GqNAg1DXWmBjWE0yorta7JMjPVQZ/Cq44N/cy/O+oYJAV38ziUJwPR7u2EFDJWWa53NjZtMA8Gep56/s4bpFadn5qmUXW2WpQQ6fUAjKDU3UyVOo1YNrVVTX8j9duUPHy1jtdtZ5dGU/V/3RlU3LjX8tIp+Bxp0IvRfePvS+G1RS5DV6SzuSjFTUs4IZV5siUQTipUIDungwK1fcAefsxXB1BxH9BphkTNFkwqYr4sypNd4BaJ7tJ/8JWxDnVxv9DcSqHI2nw4v94DaQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af03b584-28ed-41ee-f857-08dee73be2ca
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2026 15:22:32.9981
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 40aXmrHCgC9RXBDINmG2zk/5Bay3RmE5XPoHRXFgjru9s7VHw37W2qAnJYTRfYwTVN1yTckryj4+Z3djOqtiJLjHfI+JxKsOEJKG4wGJAnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8701
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDE2MiBTYWx0ZWRfX/1XVA9tImg2g
 kZVfR8WHq4A1DRioZEd6kWFNN3eaJ4SNdi2a07ygl7Oo7FJMO4lQ/ORme5oFtC1PflyRGesBr/n
 QRdrbFJGc89+rwduh/ba9iM8JzqkYp7MM27TUdZSvpbqDsXbfSeh
X-Proofpoint-GUID: NfrzhJIdnJZdXjM8BgF71yT_G9hu1sNv
X-Proofpoint-ORIG-GUID: NfrzhJIdnJZdXjM8BgF71yT_G9hu1sNv
X-Authority-Analysis: v=2.4 cv=XdO5Co55 c=1 sm=1 tr=0 ts=6a5f8ebb cx=c_pps
 a=NeHo0b9PnFRHZsaa1SN7PQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=klDOsUkWDRETUCZYPvoE:22 a=iGHA9ds3AAAA:8
 a=t7CeM3EgAAAA:8 a=kSurZD2mGEMHNbfFxLEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=tEilYtMbJ6voYUFGCIsA:9 a=ZdjlnfxTDuG9pqrk:21 a=_W_S_7VecoQA:10
 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDE2MiBTYWx0ZWRfX/okfXIW0JDaZ
 4fkDS53NoLqkNEPdtYFwGg1IbUdWg8uhvaq/R72Ud+/jZcZ7aw9GgSavi3l1AsLHBjnj4jLx6zw
 Y8EZ1wvYtBVQjby1q8WlgDdCaP5ugkCXH4VcJIpKbYBW1DoCqAgVycBaCrvJboKEAaHWSrUyx/K
 pjewwvoGU9I4OGHhi82rKvxECRO2Uz7cdPCIf9XCbvdw6Xy53C/ZwG3ezwTRByHKrgW2S4dkSn3
 eZ0kEelie6+zuBR/0m4HHjiLuIXMgJM8P0i6CRT8Hm7/cPDLSqFrpnhp98PbYvUGRGN/SblSl4o
 se9Fcvb6pgEiaCCeoeXFHiLerGEowLo2Tp5fiRSh7A3pxN2ytHQ4ZIOAd6scYV7/9WIjD1JuZ3r
 38mqOLbZqvk+sLpkEqdTnM2U+E7WMNY2zscMfHnJP5A5HiJej+OBA6wrP7iuI4e5ZooVt8yEqWl
 CoiFzFPQcP+OpIXtAFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_03,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1011 phishscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210162
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2026 15:22:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66650

--------------KNiIBS67Vi7Wph0en8umA13l
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 66LDhps92891184

On 2026-07-16 04:22, Ulrich =C3=96lmann via lists.yoctoproject.org wrote:
> Hey Luis,
>
> On Fri, Jul 10 2026 at 15:26 -0600, "Luis Merayo via lists.yoctoproject=
.org"<luis.merayo=3Dridgerun.com@lists.yoctoproject.org> wrote:
>> Hi,
>>
>> I would like to know if there is a way to limit Bitbake's Memory usage
>> to a specific percentage of the available RAM. For example, can the
>> Yocto build be limited to use a maximum of 70% of RAM?
> if you are doing your Bitbake work on a machine running a systemd based
> Linux distribution you could simply do something like
>
>    $ systemd-run \
>         --user \
>         --scope \
>         --property=3DCPUWeight=3D<YOUR_CPUWEIGHT> \
>         --property=3DIOWeight=3D<YOUR_IOWEIGHT> \
>         --property=3DMemoryHigh=3D<YOUR_MEMORYHIGH> \
>         --property=3DOOMPolicy=3Dkill \
>         --unit=3D"bitbake-run" \
>         bitbake [...]
>
> to somewhat limit the resources, see systemd.resource-control(5) and
> systemd.scope(5) for details regarding the used parameters.
>
> Best regards,
> Ulrich


Hi Ulrich,

Using systemd-run is something that I've been meaning to try so it's=20
good to hear that you're doing it.

Do you have any experiences to share about this approach ?
Do you do world builds?
Do you run more than one systemd-run build on a given machine?


Of course it doesn't prevent bitbake from pushing the cgroup contained=20
system
harder that it can handle and bitbake doesn't have any feedback so=20
that's something
to consider when doing the jobserver or free memory build regulation work.

../Randy


>
>
>> Could these three variables achieve this?
>>
>>   BB_PRESSURE_MAX_CPU, BB_PRESSURE_MAX_IO , BB_PRESSURE_MAX_MEMORY
>>
>> I see the range for these variables is from 1 to 1000000, so I would
>> like to understand if there is a way to specify their values as a
>> function of the available RAM.
>>
>> Regards,
>>
>> Luis
>>
>>
>> This email and any attachments are intended for the sole use of the na=
med recipient(s) and contain(s) confidential
>> information that may be proprietary, privileged, or copyrighted under =
applicable law. If you are not the intended
>> recipient, do not read, copy, or forward this email message or any att=
achments, delete this email message and any
>> attachments immediately.
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#66645):https://lists.yoctoproject.org/g/yocto/mess=
age/66645
>> Mute This Topic:https://lists.yoctoproject.org/mt/120272854/3616765
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

--=20
# Randy MacLeod
# Wind River Linux

--------------KNiIBS67Vi7Wph0en8umA13l
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 66LDhps92891184

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <head>

   =20
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2026-07-16 04:22, Ulrich =C3=96lman=
n via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:6rpl0nny24.fsf@pengutronix.de">
      <pre wrap=3D"" class=3D"moz-quote-pre">Hey Luis,

On Fri, Jul 10 2026 at 15:26 -0600, &quot;Luis Merayo via lists.yoctoproj=
ect.org&quot; <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:luis.mera=
yo=3Dridgerun.com@lists.yoctoproject.org">&lt;luis.merayo=3Dridgerun.com@=
lists.yoctoproject.org&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">Hi,

I would like to know if there is a way to limit Bitbake's Memory usage
to a specific percentage of the available RAM. For example, can the
Yocto build be limited to use a maximum of 70% of RAM?
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">if you are doing your Bitbak=
e work on a machine running a systemd based
Linux distribution you could simply do something like

  $ systemd-run \
       --user \
       --scope \
       --property=3DCPUWeight=3D&lt;YOUR_CPUWEIGHT&gt; \
       --property=3DIOWeight=3D&lt;YOUR_IOWEIGHT&gt; \
       --property=3DMemoryHigh=3D&lt;YOUR_MEMORYHIGH&gt; \
       --property=3DOOMPolicy=3Dkill \
       --unit=3D&quot;bitbake-run&quot; \
       bitbake [...]

to somewhat limit the resources, see systemd.resource-control(5) and
systemd.scope(5) for details regarding the used parameters.

Best regards,
Ulrich</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Ulrich,<br>
      <br>
      Using systemd-run is something that I've been meaning to try so
      it's good to hear that you're doing it.</p>
    <p>Do you have any experiences to share about this approach ?<br>
      Do you do world builds?<br>
      Do you run more than one systemd-run build on a given machine?<br>
      <br>
      <br>
      Of course it doesn't prevent bitbake from pushing the cgroup
      contained system&nbsp;<br>
      harder that it can handle and bitbake doesn't have any feedback so
      that's something<br>
      to consider when doing the jobserver or free memory build
      regulation work.</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:6rpl0nny24.fsf@pengutronix.de">
      <pre wrap=3D"" class=3D"moz-quote-pre">


</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">Could these three variable=
s achieve this?

 BB_PRESSURE_MAX_CPU, BB_PRESSURE_MAX_IO , BB_PRESSURE_MAX_MEMORY

I see the range for these variables is from 1 to 1000000, so I would
like to understand if there is a way to specify their values as a
function of the available RAM.

Regards,

Luis


This email and any attachments are intended for the sole use of the named=
 recipient(s) and contain(s) confidential
information that may be proprietary, privileged, or copyrighted under app=
licable law. If you are not the intended
recipient, do not read, copy, or forward this email message or any attach=
ments, delete this email message and any
attachments immediately.


</pre>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre wrap=3D"" class=3D"moz-quote-pre">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66645): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/66645">https://lists.yoctopr=
oject.org/g/yocto/message/66645</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/120272854/3616765">https://lists.yoctoproject.org/mt=
/120272854/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

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

--------------KNiIBS67Vi7Wph0en8umA13l--

