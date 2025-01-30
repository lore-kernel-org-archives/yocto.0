Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A5C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 18:30:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.1477.1738261824439143451
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 10:30:24 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4125aa7f95=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50UBNfXs030673;
	Thu, 30 Jan 2025 18:30:21 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2049.outbound.protection.outlook.com [104.47.55.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 44enwhb11v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Jan 2025 18:30:20 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o36D5MXQ4L00l/v+UsLKmEf92I/TGhINQ7zznjkIDWD1HAZhTFfPPZ3jjuot2c8l4Uc2BZ7ljlNLYYxDh9h8p+Ii0YGxgoaNm/2n/qzsrSBIcPdGtb/dFtRXBu1j/3b1FiTZaTJcZo8B5FWKq3/1mFB+l1PuX6It2jq0o9/KhIQHqaZDu/WN0ZjamMYxOeF7luCv5ZWkoJ57vI2uZ1XXopymrn/8OYjLFoyjVjqECQrFxkd7CWBmoqNLKUasB+ugTpMuCw96BDTqvMrq9YkiyM+LkvVXflRJL9ApSo9NHaNGhLXbm8ovvvg3e21uqvH9Fmwb6p55xBor+vCr6Lqqwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tM4Q0gSbxBFcp7pwrH9qPsZhyhd41o7ozYBmTVeaBcY=;
 b=b2l1VH8ZMH0lqI6uAKkxKvHjrhevwGZg6md+sKpemAbt5R2JZgNGSAdQPZTn1oMh32kcS0+msG8ARXv5gHML7U/Efg4Zdy+nDSyMILDO0V6wi5EykPZIMPjKcJXbjdpxw4NT6A4Qz4rDcX0EPb7qYf4uJxpeS7crV2h4CxQmYQRtuyejAbNS7ZNcrGzlpy7f5bD0gcOXAaThuNheyTNeEvgP7KvdhjwRwGz341PxaEbWHTyZxIMA3krpmc1InfZW2/1jw+4YpMAZS2QxMOoX8xpt1F3wGiQG6US9IX7ZFlwuDYJ/CJYnF5g5qYkC20aoG3Gizey48+pyXINSQmb81g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 18:30:13 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552%4]) with mapi id 15.20.8398.018; Thu, 30 Jan 2025
 18:30:13 +0000
Content-Type: multipart/alternative;
 boundary="------------8n01m0IYSfQUfmfZUjUZICuu"
Message-ID: <97019ad4-f0b7-4b42-a1ce-3f525e24e8f2@windriver.com>
Date: Thu, 30 Jan 2025 13:30:11 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Building Chromium for Toradex Verdin Module (Kirkstone)
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
References: <1646221241.2878887.1738090865572@webmail.strato.de>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <1646221241.2878887.1738090865572@webmail.strato.de>
X-ClientProxiedBy: SJ0PR03CA0087.namprd03.prod.outlook.com
 (2603:10b6:a03:331::32) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c701df7-c12b-4dd3-46ab-08dd415c22e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|4022899009|1800799024|376014|366016|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZFgvZEFpSnpBaFFtVCt1VEk0ZkY4ck1zci9TZkFRR2JLemp6RXNrNnA3M25m?=
 =?utf-8?B?VGpEenFiM3hQRjNXdmFuU08veXBrNmpuSWMyYkg2Sjd1TlI2VEdNK3kxUG8x?=
 =?utf-8?B?K1RFR2pmMkJBRmIxQ1J1TFI3NFRscDR6ZVZnZWRRbkFDMVBpa003UmduNlZv?=
 =?utf-8?B?eEthOEhLZEJCVldWNHhDc0pYS2NQY2RzOXYyNk11UGRmTnBaMzFpWXBSNTgz?=
 =?utf-8?B?eTJuTE40VWRpSjlLYzdOWkttT0pTQnlhWjg2WS9PWUJ2RkJaTzhmdVRqRzVR?=
 =?utf-8?B?V1NhelNDZFZLb2ltZ2tVVWNPTytkUnRwMGROL1UwemRPb09jZnEzS3g4TVNG?=
 =?utf-8?B?ZmJRSjF6enlrM0NpTHdReVVBSGI1MlovQVYwL1AxbEE3VEVFVndtTGtjNDVM?=
 =?utf-8?B?VVdkbWRmMG03Qk1GSkJKWG40NU5KVkNzaGRVWEppTnM2TkdRYjV4S2pTZVpp?=
 =?utf-8?B?MnNnelNRRUdhNDVyamhGSW1na0FYVVk5OWkxMkEvSmJvM2pZb3JOZnJpc2xk?=
 =?utf-8?B?WEFpMm9ZRm02dDU2R0EzdXdocDU4cEhTMG55a2pLWExuTlZ4cWg2Z2N4UEd3?=
 =?utf-8?B?aGxXeC9mL2VLQ1VGTUs3Q2pob1hrRlN1blEvRmlsRE9DL1dhcDZmcUJuSWRX?=
 =?utf-8?B?SitmUW5zQzE0S3RxK3lKQkEwQTNtcDY3S0c2ZStkMlZhaXVLaDM5TmZ5WkE4?=
 =?utf-8?B?TWxRUGFSQUlMcWZNeEdjZFhyNlpSR2RlZXlWVW84VGFYSWc0TExXY1g5cUUy?=
 =?utf-8?B?N3ZCMWhoQUZvTnF1OUtLd0kxUWZRN0ExUUsraEpPK3NxZTZGdTRVS3NsTVdU?=
 =?utf-8?B?UFVSOWRqbEFCdjFSQW9RZlcyVG5xQm5YaXBkUFp5cTVjcWc5RXJEekFzNGFr?=
 =?utf-8?B?NWEyWGpkTHZ3Y0RVQkY4SEJYTnc3cG13UVhETktYem9aMzM3YWdJcGx3YXNG?=
 =?utf-8?B?eFdQUWZyYkZSRlVKaER2emRlWXBnd2FjbUxhYVczelJYQjNZN0F4UCtVa28z?=
 =?utf-8?B?ZWt2NFB3cS9jemV3L0pxQUp4ZXZLRXdzRzIwUVdaQnc0NWthN0dIV1Rudzgx?=
 =?utf-8?B?Z3I4MW9KM3o0Zi9XaXhXY3BoSll1dXdLV1B1T0ExR3M1Z3Y0QTFWeE9KRmtW?=
 =?utf-8?B?RG9XVmVqbXJJcEtONm02UVc5MjNmNnk3MklCN2M0MG83SFVTVExlblM2VzZn?=
 =?utf-8?B?Wk0vc2VQVEFhYWIxTTczNU00cGpvZ29ueDZxbHM3ZW1Ya1Q1TGl2TXE2QzBj?=
 =?utf-8?B?UzJTUm00TGVwK1BDM1hISlp2VWQxNi9BdWM0QUxEVWhiMjNVZ0E2QTlyaG92?=
 =?utf-8?B?RXFpTlVzTFV5bm9UMGNRQVo2VVVzWE4yeldzeUNkMTUySXBIVGg4Lzg0SVVF?=
 =?utf-8?B?QkFoVkJZV1NPN2lOWnlQZlR0NytOUWpWbXJIc2lmeEZmM1BpQkpUdXdGMHIr?=
 =?utf-8?B?NjlXUzlBQ1NzRzRlaTBUNW9KU1Q2QmZJK1hIL3pBTjFPeUtrVFUzSE9LNTlI?=
 =?utf-8?B?alVJVFJra2g5MHBFcUp1THkxL0x3L2xldmVNSnNNbi9pL1pjK0JwMTVWRldr?=
 =?utf-8?B?WVdOeTgvNVlFSnYwSk9xcDNzZkd6SmtOYUExUDlBM3pzblVxNWl5N1NzWFUx?=
 =?utf-8?B?ajEzbUkzTG40aWR6NzhFQnlPUitYS2RrbmIvQk5TeDVWdSthMXp4RXgzSDZo?=
 =?utf-8?B?MTBKdzZscmljTDllSGxlL01sTmVDM1FzQnBLS0gvbExHbU5TUlBrUUdpbkRE?=
 =?utf-8?B?TUtDZ0l3L25xVXlkTGJoMkMxdXdFMElqS09Cd1Z3eGIxRWpGMWcyWDZqeW83?=
 =?utf-8?B?Z3NhNjVYc1J2MGVwdDFGQT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(8096899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eFB3bUtRM0tTdk9jS25jclBZSFJTOHZyYzU0S1V4cWtqQjdNQng2d0c2UEdG?=
 =?utf-8?B?Y2NPVXRjdHlQTjhURmlrblU5cGFEa1ppbG1RUExrRmxoUm1SaXVrQ3IzaExi?=
 =?utf-8?B?SGRKSXNGT0o0Y3YvSGFKRnYybjRvY2VTMjRKbmdiSFVkaUJ5RTd0bk9VOGUx?=
 =?utf-8?B?M3dHN0lxOFdpSXA3Zkc3U0NiRklFSkplN0dmaElua2N2TkY0aFppdC9GWDdG?=
 =?utf-8?B?RzBQRW1JeWptWHYxeUNTbll6bXkrUGdkM01lQjZBUktGT3dWQ2lUeVpqSm1x?=
 =?utf-8?B?N0djNG4yaU9MbXNSdXlQZzRXVlo5TkF3eEZtdGMzMW9DOXVEUE5oeWozdXJx?=
 =?utf-8?B?eUk3ZStJWFA0RTVaUXhoRUNRRHU5NEhQRGJ6NFpVQmIxK21pMzdrTmNpTnk3?=
 =?utf-8?B?S2dmcW1uRjVtb0hueERHdWE0SVlyZURPSGhKMGh3VENTTlg2YWlLa0FJR1Yy?=
 =?utf-8?B?MDFia293RlhJdXJKYWpxYjdGNDRXYi9xd0djbWxsRG8yMnVka1A0ZFVUVXl2?=
 =?utf-8?B?c2d5QVdMeXppck90Q3U3bldtVFhPQnlUNXFBejl5eGpQL0RnU3daR1BJNnFz?=
 =?utf-8?B?Q2R3aHRaZE05amZXakJmVG1xaUp0aUdab0h5Z2dyTlVaSzlLYWxZWmcyYXc2?=
 =?utf-8?B?Q3FRaUVGbytwY2tHcDhURTk1UG1CM0d3V0Z4UWxlc2Q3VFc0b25GQzE4dE0z?=
 =?utf-8?B?OUtGYUpuOGFkZHVGcmxaWjdjQVZTTmdWcUxiNlJsVitHZlVYZUJ4UlVkQjcx?=
 =?utf-8?B?dGZvYjllZU04TkMwdmRaaTNveGdrOWFRZ1VZTHNOSHQyb2dwRmlraHNvMFlD?=
 =?utf-8?B?bUtieEdka0ZyY1dCTW9BYkFWTEZOcDZKNnJrVmhnMXlXakhTMkN4STZUeXBF?=
 =?utf-8?B?U1lOeXA2MmpLdlBkSElqN1hyZ1FlcGJhWVZhenJ0WDBTNThWRkpwc2NnaHho?=
 =?utf-8?B?VFcwVUpkNkNIREFtaHpWQyt1ZEVBYUxyMFBGYmNESEk2QzB5aC9ydVc4WWVO?=
 =?utf-8?B?czErZExpMW1CK09PcXJIRXlhTjdxSVE0Mkx6ZTI0b2JBTE1sc3dkblpBMDdC?=
 =?utf-8?B?dVRPQVpsZnZTb2UwdFhrTkdOTmNsWXhvT2J4QjROcTVyMElzOVU3ZmtjZWMr?=
 =?utf-8?B?U1BKQVVjVzRSZGtWbS9yNzQ2TVZFeSsrTlEzMnkyZHA3bWtxaWFJUmNvSElh?=
 =?utf-8?B?b2ViaWg0OWVMWXNLVUoza3lBZE1mSDhldmJUWWhNaVJVc3pUMlZ5bHJiRFgr?=
 =?utf-8?B?cmVyVDJyUm1XZVo2WHJ2TGhvdjFOekJCUUh5SXJYSkw5SDRIQVhaNE1NRVJi?=
 =?utf-8?B?UDY0TThPWSt2ZVh3RVRBME5wOU0xdG0rUnIzNEdvTjVnM2VmSzU0TjdyeDI3?=
 =?utf-8?B?WnNOdGd4VmpoMmsrbUJCOW5nOC9wa04xYmg2QzlSclNlS2hXb0J2c1VRSGtC?=
 =?utf-8?B?eHhDdFBoSXI1YnN1dmlBWjV4dHpQaXQyaTlEOHNUb29XYVdHRkJUMFd0V2lw?=
 =?utf-8?B?VjlseXVZTGRrSGU1SkFFdHM5a2EvTFRjdHBuUnBBUEo3RE9ENUZWUzVzM2JS?=
 =?utf-8?B?eWJzb0J0ZFlIUnF1MUxlZG5ZWmVoc0hrSlJxS1Z6VXNqQzR0cUZqSHRrOWo4?=
 =?utf-8?B?aUQ1dEdZVVV6eDdmZ1A3dGNhdmRNc1pRVnFHTmtaYU4wZkxJK0NSQkRsdVI5?=
 =?utf-8?B?eFdOOU5tZmdJNnFiY0RtRmVmVCtFZ0dJaXQyZHVMMWFXU0g3TWhEVTFJMlNY?=
 =?utf-8?B?N1cvcWMxNFFQSEFMek5VMi95cy81UVFSQmU0L3BBcjFieFU1eE9PcmVOSXJk?=
 =?utf-8?B?b2NpdVlnQVg3Z3c0ekUzaUU2RUdFbWdmdXZoMnIwckJ4amVsck0wZmVKbmJM?=
 =?utf-8?B?eHpya1NvelNNSUIyeUpKZzNZOWJjdlVvT1V6UU5CbEVvdDlQY0s0a3dUVk4r?=
 =?utf-8?B?b0VPN3BudG4wMVZNMGRZK3Bsc3VFWURqc3V5Ym5ZSXhkcVpxRkxoQy9LZmE5?=
 =?utf-8?B?SjJ1empFTmZ3eWVLNjBUckljS21lS3AvUUhKdHhKdjVKRG0xVzBoYWl2YlI4?=
 =?utf-8?B?T3JYTnBsYkNlMkdiM3dWSjRLVWt2dnJRVTRBc3JxTFlEODJpN2R0U0JHTG5V?=
 =?utf-8?B?aVFXWHRCVVVLdE1IQUlNK2ZJam9xNS8xZ1NVdW84N3JRK0ZEWFc1aTQ5S3dN?=
 =?utf-8?B?SVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c701df7-c12b-4dd3-46ab-08dd415c22e7
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 18:30:13.7001
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Qms89Ho8mi2daVF686wmg5YM2NKJtWYFuRRK2+TyySdx+v8MpQrbO0U+WifeRaX0u+h/Gj3bJ7C1sufXNlAon/aN0q1JDy/jOkH8mUM7OE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
X-Proofpoint-GUID: TSO0Ftt2p6IIYfi4_Bm55lGJk_d-WYv6
X-Authority-Analysis: v=2.4 cv=fMfD3Yae c=1 sm=1 tr=0 ts=679bc53c cx=c_pps a=OxY2RB2sa7x8oI2LU21LDQ==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=VdSt8ZQiCzkA:10 a=bRTqI5nwn0kA:10 a=m8ToADvmAAAA:8
 a=NEAV23lmAAAA:8 a=zudYHz-JAAAA:8 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8 a=fhPIACuI6gX99cWXpcwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PnBmGrBlAv2y910HKiQA:9 a=zB98KKNbf6MzE7nO:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=kCrBFHLFDAq2jDEeoMj9:22
 a=UuPxdY-eMJe2vhnS58mt:22 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-ORIG-GUID: TSO0Ftt2p6IIYfi4_Bm55lGJk_d-WYv6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_08,2025-01-30_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxlogscore=999
 adultscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2501300141
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 18:30:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64679

--------------8n01m0IYSfQUfmfZUjUZICuu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 50UBNfXs030673

On 2025-01-28 2:01 p.m., Daniel Kampert via lists.yoctoproject.org wrote:
> Hi,
> I try to build Chromium for a Toradex module and a custom Kirkstone=20
> BSP with the help of this guide from Toradex:=20
> https://developer.toradex.com/linux-bsp/6/application-development/gui/h=
ow-to-use-web-browser-linux.=20
> <https://developer.toradex.com/linux-bsp/6/application-development/gui/=
how-to-use-web-browser-linux>=20
>
> I had a few issues with applying these patches so I had to remove a=20
> few because Yocto was complaining that some patches were already=20
> applied. After fixing this I run into this issue:
> /| aarch64-tdx-linux-ld.lld: error: undefined symbol:=20
> createFrameBuffer(void*, void*, int, int)/
> /| >>> referenced by entry_points.cpp:1745=20
> (./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:=
1745)/=20
>
> /| >>>=20
> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGL=
ESv2exports::LibGLESv2exports())/=20
>
> /| >>> referenced by entry_points.cpp:1745=20
> (./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:=
1745)/=20
>
> /| >>>=20
> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGL=
ESv2exports::LibGLESv2exports())/=20
>
> /| clang-14: error: linker command failed with exit code 1 (use -v to=20
> see invocation)/

/
/

/I don't know how to fix that off-hand./

/Can you or Toradex devs try the HEAD commit of:

https://github.com/OSSystems/meta-browser/tree/kirkstone/

/https://github.com/OSSystems/meta-browser/blob/kirkstone/meta-chromium/R=
EADME.md
/


      Note the kirkstone-specific requirements section.


/This came from:
https://github.com/OSSystems/meta-browser/pull/843
/

/
/

> With the following build configuration:
> /BB_VERSION =3D "2.0.0"/
> /BUILD_SYS =3D "x86_64-linux"/
> /NATIVELSBSTRING =3D "universal"/
> /TARGET_SYS =3D "aarch64-tdx-linux"/
> /MACHINE =3D "verdin-imx8mp"/
> /DISTRO =3D "tdx-wayland"/
> /DISTRO_VERSION =3D "6.8.1-devel-20250128181443+build.0"/
> /TUNE_FEATURES =3D "aarch64 armv8a crc cortexa53"/
> /TARGET_FPU =3D ""/
> /meta-filesystems /
> /meta-gnome /
> /meta-xfce /
> /meta-initramfs /
> /meta-networking /
> /meta-multimedia /
> /meta-python =3D "HEAD:66ec16850573a7ec69248b81f9904cdfba79b930"/
> /meta-clang =3D "kirkstone:d7f827890d0865c9862eeaee42fd367515d59557"/
> /meta =3D "HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946"/
> /meta-oe /
> /meta-webserver =3D "HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f"/
> /meta-virtualization =3D "HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012b=
"/
> /meta-cloud-services /
> /meta-openstack =3D "HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e"/
> /meta-toradex-nxp =3D "HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13"/
> /meta-toradex-bsp-common =3D=20
> "HEAD:ba654fce46cb76cf9b5141a219506f27db9d81bb"/
> /meta-toradex-demos =3D "HEAD:ad72d14becf6b54c1c76864eb691a369307672fa"=
/
> /meta-toradex-distro =3D "HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9f=
"/
> /meta-toradex-chromium =3D=20
> "kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410dbe72"/
> /meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce4042=
53"/
> /meta-freescale =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418"/
> /meta-freescale-3rdparty =3D=20
> "HEAD:48516272d97f9415e0ee3ab54a923e4c40143e69"/
> /meta-tpm =3D "HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35176"/
> /meta-qt5 =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"/
> /meta-poky =3D "HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f"/
> /meta-lts-mixins =3D=20
> "kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce4c9"/
> /meta-rust-bin =3D "<unknown>:<unknown>"/
> /meta-chromium =3D "HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6"/
> Has anybody an idea where the issue comes from?
> Thanks!
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de <https://www.daniel-kampert.de>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64667):https://lists.yoctoproject.org/g/yocto/messa=
ge/64667
> Mute This Topic:https://lists.yoctoproject.org/mt/110864825/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod=
@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------8n01m0IYSfQUfmfZUjUZICuu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 50UBNfXs030673

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-01-28 2:01 p.m., Daniel Kamper=
t
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1646221241.2878887.173809086557=
2@webmail.strato.de">
     =20
      <div class=3D"default-style"> Hi, </div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"default-style"> I try to build Chromium for a Toradex
        module and a custom Kirkstone BSP with the help of this guide
        from Toradex: <a href=3D"https://developer.toradex.com/linux-bsp/=
6/application-development/gui/how-to-use-web-browser-linux" moz-do-not-se=
nd=3D"true">https://developer.toradex.com/linux-bsp/6/application-develop=
ment/gui/how-to-use-web-browser-linux.</a>
      </div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"default-style"> I had a few issues with applying thes=
e
        patches so I had to remove a few because Yocto was complaining
        that some patches were already applied. After fixing this I run
        into this issue: </div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"default-style"> <em>| aarch64-tdx-linux-ld.lld:
          error: undefined symbol: createFrameBuffer(void*, void*, int,
          int)</em> <br>
        <em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745
(./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:17=
45)</em>
        <br>
        <em>| &gt;&gt;&gt;
thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGLES=
v2exports::LibGLESv2exports())</em>
        <br>
        <em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745
(./../../third_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:17=
45)</em>
        <br>
        <em>| &gt;&gt;&gt;
thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(LibGLES=
v2exports::LibGLESv2exports())</em>
        <br>
        <em>| clang-14: error: linker command failed with exit code 1
          (use -v to see invocation)</em></div>
    </blockquote>
    <p><em><br>
      </em></p>
    <p><em>I don't know how to fix that off-hand.</em></p>
    <p><em>Can you or Toradex devs try the HEAD commit of:<br>
        <br>
        &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https://g=
ithub.com/OSSystems/meta-browser/tree/kirkstone">https://github.com/OSSys=
tems/meta-browser/tree/kirkstone</a></em></p>
    <p><em>&nbsp;&nbsp;
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/OSSystems/m=
eta-browser/blob/kirkstone/meta-chromium/README.md">https://github.com/OS=
Systems/meta-browser/blob/kirkstone/meta-chromium/README.md</a><br>
      </em></p>
    <h3 tabindex=3D"-1" class=3D"heading-element" dir=3D"auto"><span styl=
e=3D"font-weight: normal;">Note the kirkstone-specific
        requirements section.</span><br>
    </h3>
    <p><br>
      <em>This came from:<br>
        &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https://g=
ithub.com/OSSystems/meta-browser/pull/843">https://github.com/OSSystems/m=
eta-browser/pull/843</a><br>
      </em></p>
    <p><em><br>
      </em></p>
    <blockquote type=3D"cite" cite=3D"mid:1646221241.2878887.173809086557=
2@webmail.strato.de">
      <div class=3D"default-style"> </div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"default-style"> With the following build
        configuration: </div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"default-style"> <em>BB_VERSION =3D &quot;2.0.0&quot;<=
/em> <br>
        <em>BUILD_SYS =3D &quot;x86_64-linux&quot;</em> <br>
        <em>NATIVELSBSTRING =3D &quot;universal&quot;</em> <br>
        <em>TARGET_SYS =3D &quot;aarch64-tdx-linux&quot;</em> <br>
        <em>MACHINE =3D &quot;verdin-imx8mp&quot;</em> <br>
        <em>DISTRO =3D &quot;tdx-wayland&quot;</em> <br>
        <em>DISTRO_VERSION =3D &quot;6.8.1-devel-20250128181443+build.0&q=
uot;</em> <br>
        <em>TUNE_FEATURES =3D &quot;aarch64 armv8a crc cortexa53&quot;</e=
m> <br>
        <em>TARGET_FPU =3D &quot;&quot;</em> <br>
        <em>meta-filesystems </em> <br>
        <em>meta-gnome </em> <br>
        <em>meta-xfce </em> <br>
        <em>meta-initramfs </em> <br>
        <em>meta-networking </em> <br>
        <em>meta-multimedia </em> <br>
        <em>meta-python =3D
          &quot;HEAD:66ec16850573a7ec69248b81f9904cdfba79b930&quot;</em> =
<br>
        <em>meta-clang =3D
          &quot;kirkstone:d7f827890d0865c9862eeaee42fd367515d59557&quot;<=
/em> <br>
        <em>meta =3D &quot;HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946&=
quot;</em>
        <br>
        <em>meta-oe </em> <br>
        <em>meta-webserver =3D
          &quot;HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f&quot;</em> =
<br>
        <em>meta-virtualization =3D
          &quot;HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012b&quot;</em> =
<br>
        <em>meta-cloud-services </em> <br>
        <em>meta-openstack =3D
          &quot;HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e&quot;</em> =
<br>
        <em>meta-toradex-nxp =3D
          &quot;HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13&quot;</em> =
<br>
        <em>meta-toradex-bsp-common =3D
          &quot;HEAD:ba654fce46cb76cf9b5141a219506f27db9d81bb&quot;</em> =
<br>
        <em>meta-toradex-demos =3D
          &quot;HEAD:ad72d14becf6b54c1c76864eb691a369307672fa&quot;</em> =
<br>
        <em>meta-toradex-distro =3D
          &quot;HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9f&quot;</em> =
<br>
        <em>meta-toradex-chromium =3D
          &quot;kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410dbe72&quot;<=
/em> <br>
        <em>meta-freescale-distro =3D
          &quot;HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253&quot;</em> =
<br>
        <em>meta-freescale =3D
          &quot;HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418&quot;</em> =
<br>
        <em>meta-freescale-3rdparty =3D
          &quot;HEAD:48516272d97f9415e0ee3ab54a923e4c40143e69&quot;</em> =
<br>
        <em>meta-tpm =3D &quot;HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35=
176&quot;</em>
        <br>
        <em>meta-qt5 =3D &quot;HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2=
566&quot;</em>
        <br>
        <em>meta-poky =3D &quot;HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519=
ea8f&quot;</em>
        <br>
        <em>meta-lts-mixins =3D
          &quot;kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce4c9&q=
uot;</em>
        <br>
        <em>meta-rust-bin =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;=
</em> <br>
        <em>meta-chromium =3D
          &quot;HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6&quot;</em> =
</div>
      <div class=3D"default-style"> &nbsp; </div>
      <div class=3D"io-ox-signature">
        <div class=3D"default-style"> Has anybody an idea where the issue
          comes from? </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> Thanks! </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> Mit freundlichen Gr=C3=BC=C3=9Fen /=
 With kind
          regards </div>
        <div class=3D"default-style"> &nbsp; </div>
        <div class=3D"default-style"> Ing. Daniel Kampert, M. Sc. <br>
          Embedded Systems Solutions </div>
        <div class=3D"default-style">
          <div> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutsch=
land
            <br>
            Phone: +49 (0)174 6932561 <br>
            E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" moz-do-n=
ot-send=3D"true" class=3D"moz-txt-link-freetext">kontakt@daniel-kampert.d=
e</a>
            <br>
            Web:&nbsp;<a href=3D"https://www.daniel-kampert.de" moz-do-no=
t-send=3D"true">www.daniel-kampert.de</a> </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#64667): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/64667">https://lists.yoctopr=
oject.org/g/yocto/message/64667</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/110864825/3616765">https://lists.yoctoproject.org/mt=
/110864825/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------8n01m0IYSfQUfmfZUjUZICuu--

