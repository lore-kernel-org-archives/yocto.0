Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0745BC25B76
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 09:09:26 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.78806.1717405759938687154
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 02:09:19 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=68843b1799=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4537lr4V030717;
	Mon, 3 Jun 2024 02:09:16 -0700
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2041.outbound.protection.outlook.com [104.47.56.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3yfxwysf3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Jun 2024 02:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCPBj0guUX4EQG3U++VSd6K/xit2MqszfS2y8s6T77tU5hBCke5NdUUc0aKe5ZviAgEOuLQc1xSps3c3T2At3T8DN+IetlwxSrFtQM1khry2rPL6YmptL+f5Ckqdz0HDSjEgIc0wPkBKy7al0YGtgswMOKtNktVeNIsjExPqRqB7VyVEmhsG/Ilsm4UUbA1Wlrwsuj5LQHVn89NbKygVCV7ORWy5yGWZvKthDg9du8bjkYAdgmU80OZWoV+QIPjybQTSRj324noTLlCJQMS0wpD29bD+U0qPvnD5OgcdBAQ7Zadt7wP+rR+kDVDI+jvtc/ZOpaF87Y/gddTELYkp3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwYcPNM//J24PdVoBwEcQCRaHtgeANrPzTPiunjUXjQ=;
 b=jjKJuqodrZlTV1gmlvV88oOASrOyeNrY2HWw4wUXNOLO85i3ruQO8HSKvucgrTco89q/xix6f28B/773k4jOIQ6TwZ8aA1K2zrK9+UGtkNFo1RQl1pkLGaHGXyGaLOsWlRWRJxQ5QZlSKp53EX7KRoVsSRCCbQDeyr5+ijj3J/qsm5ID0WZ4ZJ6c7TF4+1VPn2ocbKSijovGwCx0hrEeSN1K6EeDLVyIe44+d9M2NbBLKiyQImDg1wQyGnQq481zLO6cwoBD9TepkIPH8J9ly2e/w6MsOSGvoEY2rxrYg7PZH4BTix56e7JyfU0Ma7r8YxWRtg6ltauuXiNx2CsmFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Mon, 3 Jun
 2024 09:09:11 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%4]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 09:09:11 +0000
Message-ID: <09398778-0f0d-6bf3-91af-4e32a74b7034@windriver.com>
Date: Mon, 3 Jun 2024 17:09:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-security] [PATCH] recipes: Start WORKDIR ->
 UNPACKDIR transition
Content-Language: en-US
To: yocto@lists.yoctoproject.org, wangmy@fujitsu.com
References: <1717405427-21118-1-git-send-email-wangmy@fujitsu.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <1717405427-21118-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYWPR01CA0011.jpnprd01.prod.outlook.com
 (2603:1096:400:a9::16) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: af5f1aa4-38ae-4f9a-c39c-08dc83acd4da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Y3NsT2FTeFJqeGVLczJvMDV3ZndqUjBYdjJ6YTR1MkVkNnNnMDJWWkNMTTdJ?=
 =?utf-8?B?Y0o3VTJsVVE5cjBkbTJSK0N4UVZvZ0pCMFp4VFU0ZWRrZ25vVTljVWlIaS8r?=
 =?utf-8?B?OWVBVFdBcWJtTGJ0V3pvRVhIUHRTWjM0d3VJQ3VBQjh3dGp4ZDd2aG5paG1K?=
 =?utf-8?B?bkFJVWVhZDRtalR2MjlBV3F1L1cwN3NXTXBQYmdOOTFTSlk0UHYzZCsyamtE?=
 =?utf-8?B?ajZTejg5d1Z1U0dqbFhlTExoVzZHalN6bm5pbXZTeHFPMFpuN0tIOW9QWWp1?=
 =?utf-8?B?d2ZGbThUN0pvZGJpWkZmbmI2aW9Jb3J6Y3FLMEkvQkdnRGhrU0RJWXdoQ3c4?=
 =?utf-8?B?aGlta0owUS9MeWxTRXNKd1hIM2owdmppNXloaEdjYnZPQnpnZ2l4TDRTaG92?=
 =?utf-8?B?U0hXTTQxNG1xME5pZlZ4OUhzWG1xQ1dNQjZoamFtaEU4NGJ0Z1haZlZSZHUr?=
 =?utf-8?B?OERZZ0RZcXkwaEdZNXI0NEJDZ2RWSjEwdDZVUU1NdTNXOHR4ZGtraU1VU1Nv?=
 =?utf-8?B?WlNiZWk1NnU2cWNTVWpRZEEwb05RQ0NsSDFnV3Q5NzBHRFV4NENneGl3aktn?=
 =?utf-8?B?OWp6eHh6L3lTeU9vQmxFbW81dkRoaUFKQnNZS2FFM2dRTzN4dmU3TXF5dGQv?=
 =?utf-8?B?SXI1V3dBTUFxZkpiNnc2YmtBUzN0NGw1YmtldFBVai81WVdyc2dtNlFJUTk2?=
 =?utf-8?B?MmY4VTl2OXdkL01TaG9ad2VmTFVydEFUY0JEbTIwcHN1dDhVRUN2STZqanZL?=
 =?utf-8?B?TFVJUnMvRmxQeXAzalo5eitUNjdQM1hNeW5NV1ZyVGtBZ09mRHE1VDM1elN5?=
 =?utf-8?B?NE9jWVBqM2FvaXplQUM4amJ0Y1Bia3NpYzdBUDFiWmk3c204aGJZaU13Mlcw?=
 =?utf-8?B?MlVna0IvZVZFY09xOVdwcVQ3TTk1V3dYTVNabVBtN1RjblNVY2taRUFOWTYz?=
 =?utf-8?B?OCt6NHNDTVJISE95cDJaTDVRYklPZFk0Y1dCOWZoaEFFQ3FDTlBSSkJQbkU2?=
 =?utf-8?B?YWJNMVp2MkxGa29OYnRGMW54NU1nUWljWGRPay9NMTdib2ZCT2prVGtmQzdk?=
 =?utf-8?B?ejdJMTQxM3BsZGkwbnhmOUVjT0x4RUF6bHB3NzJPWjlnWERaQVRsaC9QeEFt?=
 =?utf-8?B?dFIxU2ZBYisyQ0dRN0E1bFc4WWtuUmZmRDNXcWpTRXluYlIxS1plMW13ZFFj?=
 =?utf-8?B?VnZXTTVIaEFxWUJmQ3JCRWgyRWl4K0NLWVVBNDh1eWhsemF2VEJoaThqemwv?=
 =?utf-8?B?RWMxV042amtDS3IwdHhETWUrbVpPbkhNTlp0eElSY2NGQlpURzdET3hkRDhH?=
 =?utf-8?B?WkxFd1UraXYvQyttOXZHVEFRWXVSSzZjWkMyRVZ1Qlg1WFVTVW1DVE5tTFdQ?=
 =?utf-8?B?RWRFdFZGYTl6VDlRQkpEaWFVc3hRWEp5TnloR1BwSHJvS3BFa3Jsajh1MkdW?=
 =?utf-8?B?R3V2MndibWE5NGFwUDJGbEExQnJzVXEwOW95cVFEYzk0YTFBM2lJS3ZhdjNn?=
 =?utf-8?B?ckl2bllmOTI4RHRQMDJXSnlnK2NTa0pHN2dRYVBGVlZKeTFrd2lVdUxQTW5w?=
 =?utf-8?B?anRsc01kUE1jY3JORVdqRncxdjlKaTlPL08rZXAvQ1RHVGVrOVJFNDJhbEJ1?=
 =?utf-8?Q?l33sANcJaTUP6cxxnBABEHhEgezEFaSphnOiF/h1ud5I=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VXV4bHM2N2t4RFN4clUvcmNIaUNOTXM4TlF2RjRHWkEyQ1plN2Rqb0t2NEE5?=
 =?utf-8?B?dUdScXJJUmp6eGtEdnhzSzh3U0s3ejNpb2k3b2NqaFVNMHMrMmErem9QNUdw?=
 =?utf-8?B?RVl6WmpEcjNnY29EMUYvNUdQeDhmd09DTTVaM3l3bUIrQjBVa2JGT0hEVGVk?=
 =?utf-8?B?eHdJYU9jSFhMTTBsVzVveDlFSzhraXFjY2QxenY5bjZxMGh4YTNpL3VPT0Fr?=
 =?utf-8?B?OExxTnQzZm9TajNPbjFzbDVCc2JiQlRkZXNFMjIySHp0N1BmN2dNbGUyS2Nn?=
 =?utf-8?B?MStsRWxmZ3hnRHNjdURZL1ZBMGxxT1MvRmFmWjZ1OFRINUY4clVoWUptYUNp?=
 =?utf-8?B?Y0hRcVZYb080RVlqZWpseldhUDJTN3BmMCs1dkJ1UEZ0RFdzRWk2OWhBRDB1?=
 =?utf-8?B?WG9JSnZ5bk8wUld1K3hYTFh2Ylp2by9yZXBocXd5TGY1VTJSd3VGYW1WTWNL?=
 =?utf-8?B?TGRxOGZLN0kxdUZPY3E4YWszYzlIZFc4ejBRSFlzeXRBZUxDWHBsZTIxSW5J?=
 =?utf-8?B?MTFldUJZYXBnYnFzN0JSVlk5eXIydUtOcUIrNXRKVW43bUYzY2tNNUlKNlEx?=
 =?utf-8?B?L2dnVVB3L2ZKNFFOY1NscmxzdGlhNHpHUnY2MTBkV085RmQ1VGxLNDB1Y3g3?=
 =?utf-8?B?L3k3WjhsQ1hzaVQ3Nnk2NXRncUVLQ0swSkhvZHRwWWZXL053NjNBcUFzQmt2?=
 =?utf-8?B?eTZWOW1PeGlHUlUrZE1ONjVsYXd1UFpkNDVxQ2IxRzU4NnRkTWw5U0tjd0RM?=
 =?utf-8?B?RllyVDZNd3VPcDQ5MjFoeWtneHVkTWd2ZCtqRDdFYkxURTcwWUlEd2JnRi8x?=
 =?utf-8?B?UWE1WmNsZ01MUjdmcysyczdNenhkWVV6L0hpRy9Dc1RCaWxsZmptTEE1LzFn?=
 =?utf-8?B?djliaU5nNHRoVWlsS2JZYmxEQ1ZXVlZ2TE1xZ0ViZitvTk5zQkhqUlU3V2M4?=
 =?utf-8?B?RlpFYnpnajRBVDZCdEI5c29UK1IwV0hWYzJuelhibWhvMVkyMU1vRDJMWDg1?=
 =?utf-8?B?MlEvUDdnOGpNTThSakNpYzB0b0JQUllmbC9JYmhQdXFNUGRvSmZnbnRCdUhS?=
 =?utf-8?B?eXQ5c2l1aDNwZWFwNXl3aVZhdU5EWkhrV3JRNVZqTHlmeWNQb2JJcTd0Q3hz?=
 =?utf-8?B?OU5FOXAvY3JGLytBUUJ4SmtHK0Z3UVJmclI1MGplRmtNSnZOSXZoeGJDOGtK?=
 =?utf-8?B?S3h3a0tiZmloU3R6RWlnbUVoWEY0UHVvZTFjQ0VZOVpxVXhCUEV2RXZoSG5k?=
 =?utf-8?B?WUZOUlVESmE4REx4SDU2Mnh2ak1zL0Yyais4ZnFtTnJSVzJhSTNOb0Q1dUts?=
 =?utf-8?B?SVN4S2hsdGZneUxVTjdDU0NWeVBSMnFPdTFKdVZnUlZUMkhmYklDRU5ZNWtY?=
 =?utf-8?B?TkdlUEhGOW0zMmFtcE5Hb2hiZTRDdGZtbFp5TU9rZlBtYUhEc3pVNmdyY3ha?=
 =?utf-8?B?OWxoRFRyQ0lKaHlOaStlangvbXYvTmFQaEU3aXF5ZHJYNmVRWUVBU0JJRVpa?=
 =?utf-8?B?cmZlRTVma0Nha0RwOHVLYmUwdEo4cUNQUUJWampZMVpQNWNDdk9yYzBLRGRj?=
 =?utf-8?B?NFJzWCtzYkt3OTBsYkhrUEwybm1wQjl0cEhxV3hGTzd3dlBQSklNaVcwaWhK?=
 =?utf-8?B?QkltVCs0Y28wQ2M1L2x2RW0rTnBaVlFMOS9Pck5ibmIvSUJSaGsyT2o3WjF0?=
 =?utf-8?B?UUgzMnpBeC8yZU14eEFjTnFxVk82V3B5MDZTMjVxckMzakhScldBd1NSakE0?=
 =?utf-8?B?czhhc0Y4cjE1Vnh1aWVxNXdKNm5FVzhIYlVhKzBlb3hncERrQjg3UDhPckgr?=
 =?utf-8?B?VmR5VzkyQ3JwcDhiWmNyTmxxdHh1SzRocEsrSElHQTV0ZUtxTjFFNW0vdFZW?=
 =?utf-8?B?Z2FVWUxhdkUxR3NSODBpbFhXL0NSR21sSmVUSG1RY3ZBNXN3d3FtcjZtNjUw?=
 =?utf-8?B?TjFZSVlUQUtUSlJ2U3RQaTQ5SVNCWExCbURNZy9rMzJyYWFnNEVqUVVWbUho?=
 =?utf-8?B?NElweWtSNDdHdEJlNTE3dVgyaTRHVEFEUlZJS3lKdEpKM1J4QURQQVpaN2NO?=
 =?utf-8?B?MVQ5QXZjeW03UWs0SjB2eDBYblQ3aGJFSEI1RFdXUDJDTEhwcWZoTjBaWDRY?=
 =?utf-8?Q?DKxr4ERvwrHlnTFzXtII/0bB8?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af5f1aa4-38ae-4f9a-c39c-08dc83acd4da
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2024 09:09:11.0917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iWwPiQqSQ48yNFumfvE6Qx9cRmz9gPoRntA406LsRTPyWorfz3gGtBJekXQ0gPZgHmGof/gUzyClG1scGYZ4rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
X-Proofpoint-GUID: VKBTYbE366jompch9l1krigUfPafjmhs
X-Proofpoint-ORIG-GUID: VKBTYbE366jompch9l1krigUfPafjmhs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-06-03_05,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 priorityscore=1501 spamscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 clxscore=1011 adultscore=0
 suspectscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.21.0-2405170001 definitions=main-2406030076
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 09:09:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63259

I think this is a wrong fix. Most settings are just fine.
Please double check.

Regards,
Qi

On 6/3/24 17:03, wangmy via lists.yoctoproject.org wrote:
> Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../recipes-scanners/checksecurity/checksecurity_2.0.16.bb    | 2 +-
>   .../meta-perl/recipes-security/bastille/bastille_3.2.1.bb     | 2 +-
>   .../meta-perl/recipes-security/nikto/nikto_2.1.6.bb           | 2 +-
>   .../recipes-security/fail2ban/python3-fail2ban_1.0.2.bb       | 2 +-
>   meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb                   | 2 +-
>   meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb                     | 2 +-
>   meta-tpm/recipes-tpm1/hoth/libhoth_git.bb                     | 2 +-
>   .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb            | 2 +-
>   meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb            | 2 +-
>   .../recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb     | 2 +-
>   meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb          | 2 +-
>   meta-tpm/recipes-tpm1/trousers/trousers_git.bb                | 2 +-
>   meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb   | 2 +-
>   meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb          | 2 +-
>   meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb  | 2 +-
>   meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb            | 2 +-
>   recipes-compliance/lynis/lynis_3.1.1.bb                       | 2 +-
>   recipes-compliance/openscap/openscap_1.3.9.bb                 | 2 +-
>   .../scap-security-guide/scap-security-guide_0.1.71.bb         | 2 +-
>   recipes-ids/crowdsec/crowdsec_1.1.1.bb                        | 2 +-
>   recipes-ids/ossec/ossec-hids_3.7.0.bb                         | 2 +-
>   recipes-ids/samhain/samhain.inc                               | 2 +-
>   recipes-ids/suricata/libhtp_0.5.45.bb                         | 4 ++--
>   recipes-ids/tripwire/tripwire_2.4.3.7.bb                      | 2 +-
>   recipes-kernel/lkrg/lkrg-module_0.9.7.bb                      | 2 +-
>   recipes-mac/AppArmor/apparmor_3.1.3.bb                        | 2 +-
>   recipes-mac/ccs-tools/ccs-tools_1.8.9.bb                      | 2 +-
>   recipes-mac/smack/mmap-smack-test_1.0.bb                      | 2 +-
>   recipes-mac/smack/smack-test_1.0.bb                           | 2 +-
>   recipes-mac/smack/smack_1.3.1.bb                              | 2 +-
>   recipes-mac/smack/tcp-smack-test_1.0.bb                       | 2 +-
>   recipes-mac/smack/udp-smack-test_1.0.bb                       | 2 +-
>   recipes-perl/perl/lib-perl_0.63.bb                            | 2 +-
>   recipes-perl/perl/libwhisker2-perl_2.5.bb                     | 2 +-
>   recipes-scanners/buck-security/buck-security_0.7.bb           | 2 +-
>   recipes-scanners/checksec/checksec_2.6.0.bb                   | 2 +-
>   recipes-scanners/clamav/clamav_0.104.4.bb                     | 2 +-
>   recipes-security/Firejail/firejail_0.9.72.bb                  | 2 +-
>   recipes-security/chipsec/chipsec_1.9.1.bb                     | 2 +-
>   recipes-security/fscrypt/fscrypt_1.1.0.bb                     | 2 +-
>   recipes-security/fscryptctl/fscryptctl_1.1.0.bb               | 2 +-
>   recipes-security/glome/glome_git.bb                           | 2 +-
>   .../google-authenticator-libpam_1.09.bb                       | 2 +-
>   recipes-security/krill/krill_0.12.3.bb                        | 2 +-
>   recipes-security/libest/libest_3.2.0.bb                       | 2 +-
>   recipes-security/libmhash/libmhash_0.9.9.9.bb                 | 2 +-
>   recipes-security/libmspack/libmspack_1.11.bb                  | 2 +-
>   recipes-security/ncrack/ncrack_0.7.bb                         | 2 +-
>   recipes-security/redhat-security/redhat-security_1.0.bb       | 2 +-
>   49 files changed, 50 insertions(+), 50 deletions(-)
>
> diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
> index 8006c9f..7bd796f 100644
> --- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
> +++ b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
> @@ -10,7 +10,7 @@ SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecuri
>   
>   SRC_URI[sha256sum] = "9803b3760e9ec48e06ebaf48cec081db48c6fe72254a476224e4c5c55ed97fb0"
>   
> -S = "${WORKDIR}/checksecurity-${PV}+nmu1"
> +S = "${UNPACKDIR}/checksecurity-${PV}+nmu1"
>   
>   
>   # allow for anylocal, no need to patch
> diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
> index f2ef335..1c3610c 100644
> --- a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
> +++ b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
> @@ -35,7 +35,7 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
>   SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
>   SRC_URI[sha256sum] = "0ea25191b1dc1c8f91e1b6f8cb5436a3aa1e57418809ef902293448efed5021a"
>   
> -S = "${WORKDIR}/Bastille"
> +S = "${UNPACKDIR}/Bastille"
>   
>   do_install () {
>   	install -d ${D}${sbindir}
> diff --git a/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb b/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
> index 8c21b30..4e882fa 100644
> --- a/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
> +++ b/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
> @@ -10,7 +10,7 @@ SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
>   SRC_URI = "git://github.com/sullo/nikto.git;branch=master;protocol=https \
>              file://location.patch"
>   
> -S = "${WORKDIR}/git/program"
> +S = "${UNPACKDIR}/git/program"
>   
>   do_install() {
>       install -d ${D}${bindir}
> diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
> index bf5f87d..0ee3206 100644
> --- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
> +++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
> @@ -24,7 +24,7 @@ inherit systemd
>   
>   SYSTEMD_SERVICE:${PN} = "fail2ban.service"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_compile () {
>       cd ${S}
> diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
> index a860319..e409529 100644
> --- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
> +++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
> @@ -7,7 +7,7 @@ SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.9;protocol=
>   
>   PE = "1"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   inherit autotools-brokensep pkgconfig perlnative
>   
>   PACKAGECONFIG ?= "openssl"
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
> index 7a538da..967009c 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
> @@ -10,7 +10,7 @@ SRCREV = "d2849a9f5ced70438d67036693438344b47b4161"
>   SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.8;protocol=https"
>   PE = "1"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   PARALLEL_MAKE = ""
>   inherit autotools pkgconfig perlnative
> diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> index df1dc04..434bec7 100644
> --- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> +++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> @@ -11,7 +11,7 @@ SRCREV = "e4827163741e0804f12ac96c81b8e97649be6795"
>   
>   DEPENDS += "libusb1"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit pkgconfig meson
>   
> diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> index e3e643e..79a7402 100644
> --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> @@ -17,7 +17,7 @@ SRC_URI = "\
>   "
>   SRCREV = "b28de5065e6eb9aa5d5afe2276904f7624c2cbaf"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools-brokensep pkgconfig
>   
> diff --git a/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb b/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
> index 45da416..2e38d5c 100644
> --- a/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
> +++ b/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
> @@ -14,7 +14,7 @@ SRC_URI = "git://github.com/flihp/pcr-extend.git;branch=master;protocol=https \
>   
>   inherit autotools
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_compile() {
>       oe_runmake -C ${S}/src
> diff --git a/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb b/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
> index 4672bba..383dec1 100644
> --- a/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
> +++ b/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
> @@ -18,5 +18,5 @@ DEPENDS = "libtspi tpm-tools"
>   SRC_URI = "git://git.code.sf.net/p/tpmquotetools/tpm-quote-tools;branch=master"
>   SRCREV = "4511874d5c9b4504bb96e94f8a14bd6c39a36295"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   inherit autotools
> diff --git a/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb b/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
> index b47d53a..39851f3 100644
> --- a/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
> +++ b/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
> @@ -22,7 +22,7 @@ SRC_URI = " \
>   
>   inherit autotools-brokensep gettext
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_configure:prepend () {
>   	mkdir -p po
> diff --git a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
> index 192c66c..ba20d74 100644
> --- a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
> +++ b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
> @@ -18,7 +18,7 @@ SRC_URI = " \
>           file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
>       	"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
>   
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
> index 7ed9569..c15fad3 100644
> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
> @@ -23,7 +23,7 @@ SRCREV = "c37c74438429e1d5fe465232e7bf894b239a2cd4"
>   
>   UPSTREAM_CHECK_GITTAGREGEX = "rev(?P<pver>\d+(\-\d+)+)"
>   
> -S = "${WORKDIR}/git/src"
> +S = "${UNPACKDIR}/git/src"
>   
>   CFLAGS += "-Wno-error=maybe-uninitialized"
>   
> diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
> index 8e941d1..c86a889 100644
> --- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
> +++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
> @@ -26,4 +26,4 @@ UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
>   
>   EXTRA_OECONF = "--disable-tpm-1.2"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
> index 9c60e2b..c5bbca0 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
> @@ -14,7 +14,7 @@ SRCREV = "0241b08f069f0fdb3612f5c1b938144dbe9be811"
>   
>   UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools pkgconfig
>   
> diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
> index d324e33..a8a7b20 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
> @@ -14,4 +14,4 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=master;protocol=h
>   
>   inherit autotools-brokensep pkgconfig
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
> diff --git a/recipes-compliance/lynis/lynis_3.1.1.bb b/recipes-compliance/lynis/lynis_3.1.1.bb
> index b69f4df..f6fddd0 100644
> --- a/recipes-compliance/lynis/lynis_3.1.1.bb
> +++ b/recipes-compliance/lynis/lynis_3.1.1.bb
> @@ -12,7 +12,7 @@ SRC_URI[sha256sum] = "d72f4ee7325816bb8dbfcf31eb104207b9fe58a2493c2a875373746a71
>   
>   #UPSTREAM_CHECK = "https://downloads.cisofy.com/lynis"
>   
> -S = "${WORKDIR}/${BPN}"
> +S = "${UNPACKDIR}/${BPN}"
>   
>   inherit autotools-brokensep
>   
> diff --git a/recipes-compliance/openscap/openscap_1.3.9.bb b/recipes-compliance/openscap/openscap_1.3.9.bb
> index b35ce9f..e000779 100644
> --- a/recipes-compliance/openscap/openscap_1.3.9.bb
> +++ b/recipes-compliance/openscap/openscap_1.3.9.bb
> @@ -13,7 +13,7 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
>   SRCREV = "0e7f654570971c1acee6dd3f34b17121372d6152"
>   SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https "
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit cmake pkgconfig python3native python3targetconfig perlnative systemd
>   
> diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
> index 5e45332..100ee85 100644
> --- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
> +++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
> @@ -15,7 +15,7 @@ SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=stable;protocol=
>   
>   DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-native expat-native coreutils-native"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   B = "${S}/build"
>   
>   inherit cmake pkgconfig python3native python3targetconfig ptest
> diff --git a/recipes-ids/crowdsec/crowdsec_1.1.1.bb b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
> index 81f2b8f..deccecf 100644
> --- a/recipes-ids/crowdsec/crowdsec_1.1.1.bb
> +++ b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
> @@ -12,7 +12,7 @@ GO_IMPORT = "import"
>   
>   inherit go
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_compile() {
>       export GOARCH="${TARGET_GOARCH}"
> diff --git a/recipes-ids/ossec/ossec-hids_3.7.0.bb b/recipes-ids/ossec/ossec-hids_3.7.0.bb
> index 829715b..fbd1294 100644
> --- a/recipes-ids/ossec/ossec-hids_3.7.0.bb
> +++ b/recipes-ids/ossec/ossec-hids_3.7.0.bb
> @@ -15,7 +15,7 @@ UPSTREAM_CHECK_COMMITS = "1"
>   
>   inherit autotools-brokensep  useradd
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   
>   OSSEC_DIR="/var/ossec"
> diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
> index f5bea1d..1bbe7f4 100644
> --- a/recipes-ids/samhain/samhain.inc
> +++ b/recipes-ids/samhain/samhain.inc
> @@ -26,7 +26,7 @@ SRC_URI[sha256sum] = "ae6ee8eff3cb111b7fc14a57bcc258443dd0bcf1bfacfdf229935ed053
>   UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
>   UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
>   
> -S = "${WORKDIR}/samhain-${PV}"
> +S = "${UNPACKDIR}/samhain-${PV}"
>   
>   inherit autotools-brokensep update-rc.d pkgconfig systemd
>   
> diff --git a/recipes-ids/suricata/libhtp_0.5.45.bb b/recipes-ids/suricata/libhtp_0.5.45.bb
> index cc8285c..4273e78 100644
> --- a/recipes-ids/suricata/libhtp_0.5.45.bb
> +++ b/recipes-ids/suricata/libhtp_0.5.45.bb
> @@ -13,9 +13,9 @@ inherit autotools-brokensep pkgconfig
>   
>   CFLAGS += "-D_DEFAULT_SOURCE"
>   
> -#S = "${WORKDIR}/suricata-${VER}/${BPN}"
> +#S = "${UNPACKDIR}/suricata-${VER}/${BPN}"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_configure () {
>       cd ${S}
> diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> index 9149e89..fcb65f6 100644
> --- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> +++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> @@ -19,7 +19,7 @@ SRC_URI = "\
>   	file://run-ptest \
>          "
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools-brokensep update-rc.d ptest
>   
> diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.7.bb b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
> index 020c3a1..751c045 100644
> --- a/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
> +++ b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
> @@ -13,7 +13,7 @@ SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main"
>   
>   SRCREV = "5dc5cfea1f4dc8febdd5274d99e277c17df06acc"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit module kernel-module-split
>   
> diff --git a/recipes-mac/AppArmor/apparmor_3.1.3.bb b/recipes-mac/AppArmor/apparmor_3.1.3.bb
> index fd649e4..27c518c 100644
> --- a/recipes-mac/AppArmor/apparmor_3.1.3.bb
> +++ b/recipes-mac/AppArmor/apparmor_3.1.3.bb
> @@ -22,7 +22,7 @@ SRC_URI = " \
>       "
>   
>   SRCREV = "e69cb5047946818e6a9df326851483bb075a5cfe"
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   PARALLEL_MAKE = ""
>   
> diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
> index 8185e51..a746c56 100644
> --- a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
> +++ b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
> @@ -12,7 +12,7 @@ SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
>   
>   SRC_URI[sha256sum] = "7900126cf2dd8706c42c2c1ef7a37fd8b50f1505abd7d9c3d653dc390fb4d620"
>   
> -S = "${WORKDIR}/${BPN}"
> +S = "${UNPACKDIR}/${BPN}"
>   
>   inherit features_check
>   
> diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack/mmap-smack-test_1.0.bb
> index 9d11509..da96032 100644
> --- a/recipes-mac/smack/mmap-smack-test_1.0.bb
> +++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
> @@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
>   
>   SRC_URI = "file://mmap.c"
>   
> -S = "${WORKDIR}"
> +S = "${UNPACKDIR}"
>   do_compile() {
>       ${CC} mmap.c ${LDFLAGS} -o mmap_test
>   }
> diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
> index 3ab57c6..68155ec 100644
> --- a/recipes-mac/smack/smack-test_1.0.bb
> +++ b/recipes-mac/smack/smack-test_1.0.bb
> @@ -10,7 +10,7 @@ SRC_URI = " \
>              file://test_smack_onlycap.sh \
>   "
>   
> -S = "${WORKDIR}"
> +S = "${UNPACKDIR}"
>   
>   inherit features_check
>   
> diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
> index 6c52392..4333477 100644
> --- a/recipes-mac/smack/smack_1.3.1.bb
> +++ b/recipes-mac/smack/smack_1.3.1.bb
> @@ -25,7 +25,7 @@ inherit features_check
>   REQUIRED_DISTRO_FEATURES = "smack"
>   
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   PACKAGECONFIG ??= ""
>   PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
> diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/tcp-smack-test_1.0.bb
> index d2b3f6b..4d65b23 100644
> --- a/recipes-mac/smack/tcp-smack-test_1.0.bb
> +++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
> @@ -8,7 +8,7 @@ SRC_URI = "file://tcp_server.c \
>              file://test_smack_tcp_sockets.sh \
>   "
>   
> -S = "${WORKDIR}"
> +S = "${UNPACKDIR}"
>   
>   do_compile() {
>       ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
> diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/udp-smack-test_1.0.bb
> index 9193f89..b277b27 100644
> --- a/recipes-mac/smack/udp-smack-test_1.0.bb
> +++ b/recipes-mac/smack/udp-smack-test_1.0.bb
> @@ -8,7 +8,7 @@ SRC_URI = "file://udp_server.c \
>              file://test_smack_udp_sockets.sh \
>   "
>   
> -S = "${WORKDIR}"
> +S = "${UNPACKDIR}"
>   do_compile() {
>       ${CC} udp_client.c ${LDFLAGS} -o udp_client
>       ${CC} udp_server.c ${LDFLAGS} -o udp_server
> diff --git a/recipes-perl/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-perl_0.63.bb
> index 25d0890..6fc44e4 100644
> --- a/recipes-perl/perl/lib-perl_0.63.bb
> +++ b/recipes-perl/perl/lib-perl_0.63.bb
> @@ -16,7 +16,7 @@ SRC_URI = "http://www.cpan.org/authors/id/S/SM/SMUELLER/lib-${PV}.tar.gz"
>   SRC_URI[md5sum] = "8607ac4e0d9d43585ec28312f52df67c"
>   SRC_URI[sha256sum] = "72f63db9220098e834d7a38231626bd0c9b802c1ec54a628e2df35f3818e5a00"
>   
> -S = "${WORKDIR}/lib-${PV}"
> +S = "${UNPACKDIR}/lib-${PV}"
>   
>   EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
>   
> diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
> index c58d883..2c32bfc 100644
> --- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
> +++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
> @@ -11,7 +11,7 @@ SRC_URI = "http://sourceforge.net/projects/whisker/files/libwhisker/${PV}/libwhi
>   SRC_URI[md5sum] = "7cc1718dddde8f9a439d5622ae2f37eb"
>   SRC_URI[sha256sum] = "f45a1cf2ad2637b29dd1b13d7221ea12e3923ea09d107ced446400f19070a42f"
>   
> -S = "${WORKDIR}/libwhisker2-2.5"
> +S = "${UNPACKDIR}/libwhisker2-2.5"
>   
>   inherit cpan-base
>   
> diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
> index 85884a7..5d4de10 100644
> --- a/recipes-scanners/buck-security/buck-security_0.7.bb
> +++ b/recipes-scanners/buck-security/buck-security_0.7.bb
> @@ -10,7 +10,7 @@ SRC_URI = "http://sourceforge.net/projects/buck-security/files/buck-security/buc
>   SRC_URI[md5sum] = "611a3e9bb7ed8a8270aa15216c321c53"
>   SRC_URI[sha256sum] = "c533c6631ec3554dd8d39d2d1c3ed44badbbf50810ebb75469c74639fa294b01"
>   
> -S = "${WORKDIR}/${BPN}_${PV}"
> +S = "${UNPACKDIR}/${BPN}_${PV}"
>   
>   do_configure[noexec] = "1"
>   do_compile[noexec] = "1"
> diff --git a/recipes-scanners/checksec/checksec_2.6.0.bb b/recipes-scanners/checksec/checksec_2.6.0.bb
> index 1ba3721..3712e68 100644
> --- a/recipes-scanners/checksec/checksec_2.6.0.bb
> +++ b/recipes-scanners/checksec/checksec_2.6.0.bb
> @@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=879b2147c754bc040c29e9c3b84da836"
>   SRCREV = "2753ebb89fcdc96433ae8a4c4e5a49214a845be2"
>   SRC_URI = "git://github.com/slimm609/checksec.sh;branch=main;protocol=https"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_install() {
>       install -d ${D}${bindir}
> diff --git a/recipes-scanners/clamav/clamav_0.104.4.bb b/recipes-scanners/clamav/clamav_0.104.4.bb
> index 102f267..86412ad 100644
> --- a/recipes-scanners/clamav/clamav_0.104.4.bb
> +++ b/recipes-scanners/clamav/clamav_0.104.4.bb
> @@ -21,7 +21,7 @@ SRC_URI = "git://github.com/Cisco-Talos/clamav;branch=rel/0.104;protocol=https \
>       file://headers_fixup.patch \
>       file://oe_cmake_fixup.patch \
>   "
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   LEAD_SONAME = "libclamav.so"
>   SO_VER = "9.6.0"
> diff --git a/recipes-security/Firejail/firejail_0.9.72.bb b/recipes-security/Firejail/firejail_0.9.72.bb
> index 5713f46..10023c1 100644
> --- a/recipes-security/Firejail/firejail_0.9.72.bb
> +++ b/recipes-security/Firejail/firejail_0.9.72.bb
> @@ -16,7 +16,7 @@ SRC_URI = "git://github.com/netblue30/firejail.git;protocol=https;branch=master
>   
>   DEPENDS = "libseccomp"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools-brokensep pkgconfig bash-completion features_check
>   
> diff --git a/recipes-security/chipsec/chipsec_1.9.1.bb b/recipes-security/chipsec/chipsec_1.9.1.bb
> index 9fbdaa7..24451f8 100644
> --- a/recipes-security/chipsec/chipsec_1.9.1.bb
> +++ b/recipes-security/chipsec/chipsec_1.9.1.bb
> @@ -12,7 +12,7 @@ DEPENDS = "virtual/kernel nasm-native"
>   SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
>   SRCREV = "d8c2a606bf440c32196c6289a7a458f3ae3107cc"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit module setuptools3
>   
> diff --git a/recipes-security/fscrypt/fscrypt_1.1.0.bb b/recipes-security/fscrypt/fscrypt_1.1.0.bb
> index ea9593b..b50c119 100644
> --- a/recipes-security/fscrypt/fscrypt_1.1.0.bb
> +++ b/recipes-security/fscrypt/fscrypt_1.1.0.bb
> @@ -20,7 +20,7 @@ inherit go goarch features_check
>   
>   REQUIRED_DISTRO_FEATURES = "pam"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_compile() {
>   	export GOARCH=${TARGET_GOARCH}
> diff --git a/recipes-security/fscryptctl/fscryptctl_1.1.0.bb b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
> index 3de2bfa..cf03a18 100644
> --- a/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
> +++ b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
> @@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
>   SRCREV = "7c80c73c084ce9ea49a03b814dac7a82fd7b4c23"
>   SRC_URI = "git://github.com/google/fscryptctl.git;branch=master;protocol=https"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   do_compile:prepend() {
>       sed -i 's/fscryptctl\.1//g' ${S}/Makefile
> diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
> index 8787ddc..b99239e 100644
> --- a/recipes-security/glome/glome_git.bb
> +++ b/recipes-security/glome/glome_git.bb
> @@ -10,7 +10,7 @@ inherit meson pkgconfig
>   
>   DEPENDS += "openssl"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   SRC_URI = "git://github.com/google/glome.git;branch=master;protocol=https"
>   SRCREV = "48d28f82bd51ae4bccc84fbbee93c375b026596b"
>   
> diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
> index 8a0b1ee..ba0531c 100644
> --- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
> +++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
> @@ -8,7 +8,7 @@ SRCREV = "962f353aac6cfc7b804547319db40f8b804f0b6c"
>   
>   DEPENDS = "libpam"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   inherit autotools features_check
>   
> diff --git a/recipes-security/krill/krill_0.12.3.bb b/recipes-security/krill/krill_0.12.3.bb
> index ee959c2..2e200dd 100644
> --- a/recipes-security/krill/krill_0.12.3.bb
> +++ b/recipes-security/krill/krill_0.12.3.bb
> @@ -15,7 +15,7 @@ include krill-crates.inc
>   UPSTREAM_CHECK_URI = "https://github.com/NLnetLabs/${BPN}/releases"
>   UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   CARGO_SRC_DIR = ""
>   
>   inherit pkgconfig useradd systemd cargo cargo-update-recipe-crates
> diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
> index b4c6165..04bfcee 100644
> --- a/recipes-security/libest/libest_3.2.0.bb
> +++ b/recipes-security/libest/libest_3.2.0.bb
> @@ -20,7 +20,7 @@ EXTRA_OECONF = "--disable-pthreads --with-ssl-dir=${STAGING_LIBDIR}"
>   CFLAGS += "-fcommon"
>   LDFLAGS:append:libc-musl = " -lexecinfo"
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
>   
> diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> index 49139d2..2f50e2d 100644
> --- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
> +++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> @@ -10,7 +10,7 @@ HOMEPAGE = "http://mhash.sourceforge.net/"
>   LICENSE = "LGPL-2.0-only"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
>   
> -S = "${WORKDIR}/mhash-${PV}"
> +S = "${UNPACKDIR}/mhash-${PV}"
>   
>   SECTION = "libs"
>   
> diff --git a/recipes-security/libmspack/libmspack_1.11.bb b/recipes-security/libmspack/libmspack_1.11.bb
> index 59df84b..338701e 100644
> --- a/recipes-security/libmspack/libmspack_1.11.bb
> +++ b/recipes-security/libmspack/libmspack_1.11.bb
> @@ -11,6 +11,6 @@ SRC_URI = "git://github.com/kyz/libmspack.git;branch=master;protocol=https"
>   
>   inherit autotools
>   
> -S = "${WORKDIR}/git/${BPN}"
> +S = "${UNPACKDIR}/git/${BPN}"
>   
>   inherit autotools
> diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
> index 8e6b444..881ee38 100644
> --- a/recipes-security/ncrack/ncrack_0.7.bb
> +++ b/recipes-security/ncrack/ncrack_0.7.bb
> @@ -13,6 +13,6 @@ DEPENDS = "openssl zlib"
>   
>   inherit autotools-brokensep
>   
> -S = "${WORKDIR}/git"
> +S = "${UNPACKDIR}/git"
>   
>   INSANE_SKIP:${PN} = "already-stripped"
> diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
> index c47688f..b4f1970 100644
> --- a/recipes-security/redhat-security/redhat-security_1.0.bb
> +++ b/recipes-security/redhat-security/redhat-security_1.0.bb
> @@ -18,7 +18,7 @@ SRC_URI = "file://find-chroot-py.sh \
>              file://selinux-check-devices.sh \
>              file://selinux-ls-unconfined.sh"
>   
> -S = "${WORKDIR}"
> +S = "${UNPACKDIR}"
>   
>   do_install() {
>   	install -d ${D}${bindir}
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63258): https://lists.yoctoproject.org/g/yocto/message/63258
> Mute This Topic: https://lists.yoctoproject.org/mt/106458363/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


