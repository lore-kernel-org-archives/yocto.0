Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 417A6CD4F21
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 06:39:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1572.1778654356956535211
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 23:39:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=hRVIJsqy;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=959349fd7a=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64D5GRYC346329;
	Wed, 13 May 2026 06:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=Zt6ZcW+AvvI76Xck//4IJq
	UZ6REwU7+FGWsG3kGQsBI=; b=hRVIJsqyxVmxETyUA4iZOqlU5VDgX1THM4ko07
	/xmPuN6+27Dao1V+Rlf3ly+h3g7YWvWdbMr+w0h9gIXKpPH/m/f7CJYKyQfZ6ZUk
	aE8C0m4MDbI//BTlS0QR6eW8c2gTIFdBAjCrGGIra4iOw+nqw56DxwAGRd8TL+he
	vrhPcKKnIrnkgajLhueMINYThIqmcu92hOuFkQBC/Mo51fPFL5q630m9xgh5EmVj
	aGsuvhEw9I86C5in9VU266F+A0XIPPPA6fufVOwN8D5WJZv+z6smzwMB7Cre2dws
	AxjEUbAlCRqEDYmKK+YXiaSdY+wBlbXoc77k8GpIhKBtpBQQ==
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012037.outbound.protection.outlook.com [52.101.43.37])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4e4g7fg8st-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 13 May 2026 06:39:06 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NKApzcIfSdLrcubk4jaklIC/Yym7NQ4zz0aA5Yo5lPK/KYrCmOm9/X55b1c2sawRFE4EnBK8BEDQd6RacGnIMdI5TtGtZVoL8sgcqlEMGmE2142J0hVH5EGV0Ar7vXWxP9Sb4HzW7YNd/AoV4mPMfJLn5h7skPVUIlrH+epLFe2QJEfnyUjIjQK4+L9EcmUp0RPfJ2JHcUlR88y6p4VfzSSGdNGXLAeLFSBtKairX1hytpwQ/BDl/M21HW8Hd3ZfNl2H+CtyKq2oRnTjan7+4P9tIObotOFR7PWvS46nRTzC2gcTFRdbek12jLZls4VXjhibBwUWTwVqLO7QMBSrAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zt6ZcW+AvvI76Xck//4IJqUZ6REwU7+FGWsG3kGQsBI=;
 b=RPhisOxFwWz+/xV4b4DwtUEN7xG9KrPg1uUKXD3GAhtf7kmYauSMu8oBTtijmisjKETiFVPgWEayU1wvgq0vZMBBM4J1MFSI18wQhUPuTHX8P9D1uyJ01NMUG94bQHcDQFL+sDRoCvXVmmIc9heUxkzOa2FpadA43IuHnnC4FfDv77iZp9zL5bGfsC0hiB0IJ0r+iSo496PXIlq9zio8SLXs0epWYdXDo+q4VQcCXDdX4L0kwTGwdzMKYkT1IawsT5ALn6PvlzOBcwNqRVnS8FCgm1gIub0j6pM90TAWRf7RF/d6i1Vfoody/xdYcmEs+qSYLPvw9zLPgYGznzz+qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by MW4PR11MB6691.namprd11.prod.outlook.com (2603:10b6:303:20f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Wed, 13 May
 2026 06:39:02 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5ad6:8f90:b01d:2c62]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5ad6:8f90:b01d:2c62%3]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 06:39:02 +0000
Content-Type: multipart/alternative;
 boundary="------------ylMcFJz2H0FQJnNO0k5A5pxH"
Message-ID: <2809cf78-c2d1-49f2-81ab-b01b4594de96@windriver.com>
Date: Wed, 13 May 2026 14:38:57 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
X-ClientProxiedBy: SL2PR03CA0008.apcprd03.prod.outlook.com
 (2603:1096:100:55::20) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|MW4PR11MB6691:EE_
X-MS-Office365-Filtering-Correlation-Id: 55086fba-ae95-4e85-7f38-08deb0ba526d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|4022899009|8096899003|18002099003|56012099003|22082099003|13003099007|11063799003;
X-Microsoft-Antispam-Message-Info: 
	1E6fp7mf37TWaQSTIX+aQtmKpQUdYXpSG2+wBkPKjM8eS34/BMZPJIL8f4s/QWVBMKwMPlY+XO+/ZUvVsjDqDTCHECbT8UtMnNkXn7ECVBGhDnm3df1aH8+zSOnGzB95jw0U+McW0e1RC0AEZgg2XDYsVC9x5Y5iZYlhyDfx4cGDTsgUFMTY6qMNgJBrZB8vOAyJ94bPdyApi0Mx97zL+sr6nHPYpX2feiO34UbMRDuVetdCtStyB2EGE/sSOci/XKXfgulbDZFRVmfaJ9zaf5+V7maGiZkkFW7RyLN/IvGfwdtLrWGDX8apR29Pu5HTyo+YQeP1pIBTJDd4um4BK8CQxgTG1XUO4b2FlZMv6hpB2yaWGMzmYD1oO9j/Vgm6P6XGHXCgLXaJ1L+QVlfEVjXLjT/t7OG3neEZXJrFzxymsf085KNfM5femeqT11JuEeeiZ4OmrEDycvttIkVcahDEbB+z3zGfKYuVA13FFtkr8+oAFZ1D3uLdOPUGjtP6NuLl5iubWNR+DUpgwxunBvOgMxwCwDB4JqmN3qJG9vLOuQeGX2r19y2qRXUfFkf36nq27qmTRrglV1TpfLXw+JcSgLYohe7VyqdCqMJUSd0WRs+d1nAHtRggEWbp7MpfXkqPIuu3GPUZH0S35oR9yw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(4022899009)(8096899003)(18002099003)(56012099003)(22082099003)(13003099007)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWVZa0s2cnZlbkhjVFFHRGNuY2QrRnZiU0swL2xBRG55QUJxV3NmQ0lZUmFF?=
 =?utf-8?B?ckdtbkFhc2pCeDZGOGY0SUwyU0VRSHZja3lsN3NwY0pOQjhUcEpLMGYxS0dK?=
 =?utf-8?B?RzlRd0t4L2dCbkFvZVNkRDZiNFQxUzdCaTBrZGYrSi9oNGsvcmRqMjMwVDdF?=
 =?utf-8?B?V1RtOUEvSVJvL1pXTFFUUWxPczMrd3ZNNkZLelZSMG4xZklLTGJ3bUpFVGhI?=
 =?utf-8?B?S3hHZDRhWlJMWTJjUVlHOGQvOFZBcXZDYW8zWmhtREdXbzV5cjBaRkxudDdk?=
 =?utf-8?B?cXBUMThXU05yRDVoZE9HSkxjSFJBTnkvVnRrVUVOMHFoVk1SWWp0d2N0YW5i?=
 =?utf-8?B?NzJmaENkWU5IUytoUFlnYUdVOHkxNnV2MDFIOW4veTF2MnNLeURnVFQ3ZEVs?=
 =?utf-8?B?STVSTWlKTmFuT01HbG11VFMvb2cvbzBKaTZSR0dtaStUeUkrU0FjSmFub2hK?=
 =?utf-8?B?WmhKWXhoaDRVazY3dVNhbGFsOW05MXRZdG5xT0xwdU5JVWdxeERZRHFWVFNw?=
 =?utf-8?B?akVFVXM2VmkrNExJcTZnalhPeDhQRjkxNG5FT1ZFY3BaamxtcE9waFJwWUUx?=
 =?utf-8?B?emcramVPRWJyS3FEU2JhK0ZXS1JPbUdkVWxmREErTnhPM1lHaThmcTdrZlR4?=
 =?utf-8?B?UEZ5RWx0SlQ3YVJDWDZjdjBwbDJCTXJQMWxxdEp4ejR3UzJkeldncUVwbFhr?=
 =?utf-8?B?aVM1Y3FEVnhxUnNualg5dUxvejl5TUxFM1ZOMGI3TmdQWHE2Nk5DOUh5SGZQ?=
 =?utf-8?B?YStoYVBvNzdGL2NBT3hwY1NoZ0x5ZDUwOVJHK2lMdUZBOVJ2M3ZIVmxTZHhX?=
 =?utf-8?B?WWc4cVlrdm1MVnIvbGtLMjNFcVJyRXNUYTA3THJ2a1U5MUFtNkJ5RGE4MlBi?=
 =?utf-8?B?TmV5SndUWkpPUWFNSkgrNm80Q1VBc1ZlT3FZeEg4bCtXMkhJSGFHSDhnY3Jq?=
 =?utf-8?B?YjEyUzc4RVhxbFlxRXZpU3RaOTVsbWdhSW9FRXE2Q0YrQnRTNnV4dnE1d01q?=
 =?utf-8?B?eTUxVmV1NkkxcXJ0UURZOW94V24wdWVDY1pCRjRsR0RZU044RDR2akhRYTFW?=
 =?utf-8?B?N3pwbm9vdXlUbXNFMTBnZDl1ZXd1eG5wRExkeU9qUWk4SC80NGhjTFBQMCtu?=
 =?utf-8?B?YUtqMkxFdVpKOXFsTnBtKzNiSzMwYWtMYmtqOGhGdGovZ05SVndLZmgrbDla?=
 =?utf-8?B?NUpaWmd0U1Rocnlzc1JpT2Uza3hVVElIaG5Hb3dtREUwQUtZNGxuQjhJbUNF?=
 =?utf-8?B?NHU5RnF0S3FlWmNyelNSUVo0N2lTK3QvWjVXV3pFbXB6VGxWUUJzaGFXL2dp?=
 =?utf-8?B?L1hhUmFyMXBhZWNsWUZSaEpSMTVzNlVvSGdhM3NxQkpJTTdpek5wT0NCWWdn?=
 =?utf-8?B?TThpeU1aMU5rd3ZFS1dORDhKblYyNldrR0tGMlNIYnh0M1dCc21YNWwrYXI0?=
 =?utf-8?B?bWFlWUZaYXJIZVJ0cG00KzkzQzlYZ1dOdThNbVBPdlZhMStpcnNZT1FFSVZF?=
 =?utf-8?B?eUY3VkRqZkF5eHdhYmtxblRycS96bllqK2UxTWRDUndzVVVDd2owQjI1cjh6?=
 =?utf-8?B?QS9ndjFDRm9yWlc0ZWxJWGNacFRONGw3NUtydUJrY050SWpmTm45dlFQK0po?=
 =?utf-8?B?RWdIS20ydnphRU9GT1ZYQmVGS3ZNeWVlai81VVFnQWh6ZkJoTFdHTDR6L3h2?=
 =?utf-8?B?WE9DWGc5b0xDWU5BalBYT2x4ZjJHY1BaRTZ6dHJVOGxVc0RtdUllT09tRy9r?=
 =?utf-8?B?RkNXTUVrWEpreDErWkJBRXRWTFVPTVRrdXlVN29vMks0cG85WUlHWHl6dlhJ?=
 =?utf-8?B?SmRBc1R2VXlYc3MrdnBsbVAvaXBnM3M4UE5Pcy93MVdxQkJxYmVQY0JEVVRs?=
 =?utf-8?B?WjY2Z0ZZUVFEUHFjSnJJMHNiQzVsMHVKTkg2eHpYWURNNVdnYUwxd2UwbGFK?=
 =?utf-8?B?UXQ1dmxvZGtJYXJtZjdLTVZJd2xBaGRmUGVBN0NXVFlWTk0xWWMwdlRqNFND?=
 =?utf-8?B?SXZ4clRPRU5yTDVoUE1DeDRiSUU0VHNlOFZpSmR3bXZObnJteFBqcUVGQnJw?=
 =?utf-8?B?UEc0RDNGUnNIYWY0dFZOVjNzdVdwRzhvdEZOS2ZJVnhvc21hRnE4NHUrWm1N?=
 =?utf-8?B?N0JQU094clhMQzgzSUtVZDkrNzBNNXcrUDNrYXB2dzN2Y0xZOUZlT2QvWGNG?=
 =?utf-8?B?Y1VxN28rYnlPb1IwNFlrVUYwMGVBVkgrdVFuanhXZ0RWUUFwa3V2c2lXMWxP?=
 =?utf-8?B?UnJLVTVwaEV3YnVsbk5UWktOeHlleUl5Z1hnTFhXVE5JUlNZazcvZ2Q0RTdD?=
 =?utf-8?B?eEJTdGFmTjFobkZ1RFoyblQrSUQrMGd0UmNsQTdWc0NObVBUaXZrUT09?=
X-Exchange-RoutingPolicyChecked: 
	G85a0WuqfFkz2tXp8DK9p0wMK1d9+G3Go3KPaR1D9gXOes89Ci44bcEXZfrLEzZiWloUGJklNboRgp/fLkGWlreOIbC8lnnLszaExOBiI5BPfyLWSPycuZlxEf0rglyFc49SuPlvBBuCAJCa/KyjoO8fSYb8lU8MCovkxubqkMYkfA80Pf/rleAwp2oQYneiNFH/2KZ2JexCNsxwQXQn9j5lSw3b7cgscuU35dQ0qCwoA7VwTzA9poFFw4WvtWghwa5psRI/AcqaVwViM/V6M7DMfIubAnJ5QcZeLiDJ8kynKlrOXKCV+TGWy3Xl2s2RHhRRoGyWV25m4vr9YLrt9w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55086fba-ae95-4e85-7f38-08deb0ba526d
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 06:39:02.8016
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIEHzvRD08hP9f+glog93EzZJFtDxGykrpqxnSi8FMxDKhH609AkkdgWl+ieMS9nm8nzLbm1CwPSNNCTFcO8aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6691
X-Proofpoint-GUID: 7GURyJ1YZ_eI7wZEjHBRjbRRAbXWkboe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDA2NCBTYWx0ZWRfX8ABXvR5vtuyM
 elUq03WcL6o6r+OfTDI3ltp7QfONCnKYpi2ZggPMGXCVABS2ig9Vmt+As9oz70e5U1KqF77k+mv
 DhyJOoR8ufgEo9xBfi9emjXLv6ZNVHN4mtgJGSzRFqcZTFGz9/ND5LpEIBzn8RW3S06RRNJHfcV
 qsSF525xZngx3PtjJ2sHUznT9I6MnndekoUW4VPUiH/lIOMDEmp3pFI69ro7Vj50yQwmEDtkx5e
 arhz9GCEBsiK7CVJDaTI/2MPidCv8UXVj9vcMMqn8rH/voyl47igkeLlwWCF+Pddsmq3xvXVLwG
 tTzolPmDLs4fnR1ftoS+regl+t+mz27kIr840Ma456AngPmif17rwRSYmCtTy9U6a2DhbWLuKA/
 mCU13dl6DJCgEYH4r3dHAMNemqzXiaZ0T581jMpZ8qqMpIcb5otB9wsHw4KqYUR1F8OsNhonn5x
 whsPUC4Dlj6sspQI+0A==
X-Proofpoint-ORIG-GUID: 7GURyJ1YZ_eI7wZEjHBRjbRRAbXWkboe
X-Authority-Analysis: v=2.4 cv=V81NF+ni c=1 sm=1 tr=0 ts=6a041c8a cx=c_pps
 a=ZegHLSctVnYqdC7w6owYpw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=fTW__CHxibyLmBMfj2wP:22 a=iGHA9ds3AAAA:8
 a=t7CeM3EgAAAA:8 a=6lCxm7l3Y_8ah8M2JKQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=O8hF6Hzn-FEA:10 a=UqCG9HQmAAAA:8 a=sYEaecTb7d0MxzJLnCwA:9
 a=IrfJKF3ooxnSZ203:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1011 phishscore=0 suspectscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130064
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 06:39:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66547

--------------ylMcFJz2H0FQJnNO0k5A5pxH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 64D5GRYC346329

On 5/13/26 14:26, EXT-Antti G=C3=A4rding via lists.yoctoproject.org wrote=
:
> =E3=80=8BWhich conditions?
>
> The tag is derived from PV and if there are multiple repositories in=20
> SRC_URI, only one is appended with a tag.
>
>
> BR,
> Antti G=C3=A4rding
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66546):https://lists.yoctoproject.org/g/yocto/messa=
ge/66546
> Mute This Topic:https://lists.yoctoproject.org/mt/119275823/3618072
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@windr=
iver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
You can use a bbclass + event handler to achieve this.

e.g.,
modify-src-uri.bbclass

In that bbclass, write a function (e.g., modify_src_uri) to modify SRC_UR=
Is.
Then:
addhandler modify_src_uri
modify_src_uri[eventmask] =3D "bb.event.XXX"

Regards,
Qi

--------------ylMcFJz2H0FQJnNO0k5A5pxH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 64D5GRYC346329

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 5/13/26 14:26, EXT-Antti G=C3=A4rdi=
ng via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:AS8PR08MB7251E97A7AC8E670837F70=
4CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com">
     =20
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        =E3=80=8BWhich conditions?<br>
        <br>
      </div>
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        The tag is derived from PV and if there are multiple
        repositories in SRC_URI, only one is appended with a tag.</div>
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        <br>
      </div>
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        <br>
      </div>
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        BR,</div>
      <div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService,=
 -apple-system, Roboto, Arial, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(33, 33, 33);">
        Antti G=C3=A4rding</div>
      <div dir=3D"auto" id=3D"mail-editor-reference-message-container"><b=
r>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66546): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/66546">https://lists.yoctopr=
oject.org/g/yocto/message/66546</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/119275823/3618072">https://lists.yoctoproject.org/mt=
/119275823/3618072</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windri=
ver.com">Qi.Chen@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p>You can use a bbclass + event handler to achieve this.</p>
    <p>e.g.,<br>
      modify-src-uri.bbclass</p>
    <p>In that bbclass, write a function (e.g., modify_src_uri) to
      modify SRC_URIs.<br>
      Then:<br>
      addhandler modify_src_uri<br>
      modify_src_uri[eventmask] =3D &quot;bb.event.XXX&quot;</p>
    <p>Regards,<br>
      Qi</p>
  </body>
</html>

--------------ylMcFJz2H0FQJnNO0k5A5pxH--

