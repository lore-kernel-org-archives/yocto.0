Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7349.1623118532058971699
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jun 2021 19:15:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=D33R+s33;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17937b024b=zhantao.tang@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5911638C0326
	for <yocto@yoctoproject.org>; Tue,  8 Jun 2021 02:15:30 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1582FS1k000660;
	Tue, 8 Jun 2021 02:15:28 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
	by mx0a-0064b401.pphosted.com with ESMTP id 391f9vrn2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 02:15:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A7oi/RiFfn554eTh2nZ+dUzERCtL3TT4FlniL5s40xNNTd8/s8nINk62F545aUlUT21o2M2Vxz1gZ6mGpUwFIhZCjuNS5IUsuNRic5+UjK0iaayM3bZGGaBrAvOnY2v46Bo0NYNuS/h0Bcfc2Fn1D5ast3LBjP0ui3J65SVV5kU8y4rQuKo9UGxidtg3ivOVgDaFmUpulUc31dQySs9T1jQMIAxoTc6L6+DqYjwp6Y4F8Da47tamd1KMWbDiWbNOPzZPvM1qz3gIV53B1/PVclzEpPq1W7QE+6f1uAuTzg2Y7PH3tgl8WYdOuKnbYqX+wrYRsjN2mL747tRI99id2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCeajZDx3VvfV2kYYSUdWxh2q10EbpFM7ArwZJnCEUQ=;
 b=nlSMCeSkiSnYCpqNlh6SDF19Aj10Gmwaw9T6s31P+zgyLuCMC0HtehuC/xzigtqbPR5sb84HpDParjCP0oiWEsNMxxbb3eM+NJz8LGsmRV6I/e536jreynCaKqio20hOOdmiKp2Zw5zTqOIpwguP6d9fCi/7aLpOhxd2dFnpSzHoDyLfbdDj5fUWyNmz1L9N8MDkFVKWtCQ0cEuISMoPwmCTslvFeiKM4dcjREiK+sCt9SlHv9TT9UauTxbHjycFCLxozsi+sIeNxUVc51VW6ieaRJDIiT08PYr3rrr8W2gBSzuCeWZNba3aIQYuN0WADExyM0L8EOQC/vvLfacp6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCeajZDx3VvfV2kYYSUdWxh2q10EbpFM7ArwZJnCEUQ=;
 b=D33R+s33ZOxFevs84vTDmPL1Q+TDicnBIHgNIFxjpYbDkNk66Z23wX+CHHsLOWvAeDUKwGMs5xcDfsOkUbFANQSZ76NvNTZGI2aAFDUJrqd0z+4fSyOz7zE3tRKRlYnsY+v7E0uy6iZXgmPG6dNXF3OoxNFLWrHfNTwvIHH92CU=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 02:15:25 +0000
Received: from PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d]) by PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d%5]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 02:15:25 +0000
Subject: Re: [linux-yocto] [linux-yocto v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx]: drivers: dspi: fsl: fix dspi transfer hang issue
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@yoctoproject.org
References: <20210604054122.2732003-1-zhantao.tang@windriver.com>
 <20210607030651.GB25705@gmail.com>
From: "Zhantao Tang" <zhantao.tang@windriver.com>
Message-ID: <4098cdff-9d98-b078-460c-e1c60d0337db@windriver.com>
Date: Tue, 8 Jun 2021 10:20:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20210607030651.GB25705@gmail.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BLAPR03CA0073.namprd03.prod.outlook.com
 (2603:10b6:208:329::18) To PH0PR11MB5077.namprd11.prod.outlook.com
 (2603:10b6:510:3b::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.245] (60.247.85.82) by BLAPR03CA0073.namprd03.prod.outlook.com (2603:10b6:208:329::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20 via Frontend Transport; Tue, 8 Jun 2021 02:15:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7874a78d-a5a9-4a75-ce46-08d92a2346e3
X-MS-TrafficTypeDiagnostic: PH0PR11MB4773:
X-Microsoft-Antispam-PRVS: 
	<PH0PR11MB47733CBDB55D55BF66EC88338E379@PH0PR11MB4773.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yg1+xslfjp++s2uEqyk76isr3+T+q69cGWMHGVPgTZVSPLW/sufyGJidNU37kBbd8xPjHqJiKNc/3rW3fZua/w36ULpsHW2I6qp21mk2sHV72EgCeLZCHtt4yNnys0T9Eg9vvprcYq9mwxFt3djkm2B/c9Ukjmd+SB9FxD5bfDphu0t0IdrXtE7gKDFnYxuPYB54Ihl9VLjLB8U3cwhCc8/OZ1AHZBwnyprwu81D9a2ZbBhrE9oZ+i2M3l+1FokqEMknBWrumir4XNgnO5SsCKan0PRUo6sxq+ER9SKlNt3J1zi+2Cf5gTrimNrOVrecGaw4QDJP3bFIQryOcZx6r8HGfe80o5gb4Yrj024m+MaB7Mcb0HOwFi6MWtfVHtPk/N9D3Yye0EYey0Dz0IfgSB0bOqaQdZrEoa9NF9/GaMVwfH3yB3q2he5z41ImEnZ6COH5PA8KrYlXdI2R4xnRAvuKNM4sXFuPhUE+YfKzOWDcsd7i96lKGIcWyNxxhZGS3ON4WIyO2lEFkFOqrZc/PmZ7i1vg9hnAZ+a5XUp3IxZSxy48uCbue69ddkRpxVPq54KUTpXtHQP1tWoLIfm0hAquEIXdgfKF1JLxynZwF0uAGnLyhsp+E2WFaM7aOGJsCkkOi8Iey1riw40/SAxiW8vQcsKAruuQxIbii3ndYujYX5jw5wW5RhCHOYdHJV8wrTl2Zk56OMUZNL8Ir3lDCbWJxWE++g1iJxvPQbb1sfcF5E4ZkNCIgZHB7TzrxNOt
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5077.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(376002)(396003)(136003)(346002)(366004)(8676002)(956004)(2616005)(66556008)(52116002)(4744005)(66476007)(8936002)(86362001)(478600001)(6706004)(36756003)(2906002)(31696002)(316002)(31686004)(26005)(66946007)(5660300002)(16576012)(6666004)(6916009)(6486002)(186003)(16526019)(4326008)(83380400001)(38350700002)(38100700002)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M0dFTk9wM0RURnhvaTRUcDU4eXZOV20vKy93QjRCa2FVeWhnS3BiMGwwNkhN?=
 =?utf-8?B?bVMyYUxkSW4rbVI5ME5hdzFYemNmeE5zZUxUM08xaFBwMFNVUGwvb3ZUZUhG?=
 =?utf-8?B?aTlyVk1zRjRoVFd1L0plQ2RwVHJFWmRibVlNRVZ3OWRSS2E2NnRoLzA3MmNR?=
 =?utf-8?B?N2NoNWZsRGliMnRFTFlHd3NhcCsvb1RhamJGWEMwL2RNYUFpUFV4d3ZVTFBH?=
 =?utf-8?B?WVloTUdmSmlGVmgxVnczVWNONkZtWlEybENCemFRSmZqZkRLVTlveHNTWG50?=
 =?utf-8?B?YkFscE1PNzBiVGFjSTRTcnNHS1l3M3AzTGxqTGxtRFBhdUZHYlVpbTNXcWNy?=
 =?utf-8?B?UjBZRC9wQXJOZWJTWFNLa200b3NoTGtROTZjb0xJVWxMNVFoU0Z5eVZnSlVz?=
 =?utf-8?B?bitIZ2swMXk1eHJ4akRIbFRyRkNobmNrb3hhRFhyandQcG4vVFViZFNxQVhj?=
 =?utf-8?B?SEFLcnRTdjF2UU4vbm5JMExWQ3NNUGEvcFlOajZpZjZJZkxkaG1KU04xSXd4?=
 =?utf-8?B?UWtmUU9pNXBjcG9zSFNybzgrMjUvZ04yb2dPc1hueE5FQ3BSMTU4MTdZd1FW?=
 =?utf-8?B?S1dmQWpDYXpTMUNYaWlDS1l3S2diVUdCS0RPVHUraWxTLzVYT3lsNXB0U2o0?=
 =?utf-8?B?RjlZWVBFTVJycE5iZnVhZGJLd3NneWt1YVVUdFhyL2FSVUthM1haazNrK0JI?=
 =?utf-8?B?OGlOVWMrUmM1YjVKMTRZT1lNY2RCTU5ZUDU0bWxuZ200SnZaUVViUG95Zzli?=
 =?utf-8?B?VDk5YWswbmpRam90TkhkeUtDQUdYRXJKN1N2dms5SGRlZE9SUm4wK2daS1Nx?=
 =?utf-8?B?Ull3b2VIRHJIdmFwQkpCL3pNYjFrWi9iM2lwNDdpRjgwbkFNZUtTdGpBQVZn?=
 =?utf-8?B?Q3ZpT2VLeWJQVGw0MnBJR0NYY2t4OGt4UUtlbC9NRkxkcWtzQzZoeUl0aDVj?=
 =?utf-8?B?QWxBbmZLcjVzci9jNUw2RzRIRHJMU0xtaURkTVFsZkorcDJDZEI5bU43WWZC?=
 =?utf-8?B?dzN5bDdJNEE4RWYrZEc5MHo0dzZLVlhZb0p3NUtuRC91WUZWZGRQdFlyMy9B?=
 =?utf-8?B?dUtibEFnWDUwTG9hNWRKSUZEMW5GSUo4RkNROTBNZGxoNGJxUTlEanpWbHZy?=
 =?utf-8?B?c21IQTdaV0JlNnEwdW9FM3ErR2l2RjdSSmxRRGdrNWpWbHhoYi93TWg2VDRz?=
 =?utf-8?B?S05ZSDNsbktjWlo4WXIzQ054Yi9yQXRHWHJEaGJicWRpMzBCcVJMUFc1N09V?=
 =?utf-8?B?R3NiOU4rUndodDJrZjZ6TlE1QXlib09jaUYzcUhpa0F0ZmVUSWZSc0xRUjUr?=
 =?utf-8?B?eWJXTnJ1dXRtQjlWLzBCcjkwdHlKZTc4QWNZOXZzeEhNS2ltTzVZT0FaQVll?=
 =?utf-8?B?anh5ZTI4VEhEOUU4a0c1bUx5cVhwdWJFUDRCbXpvblZ0RUhCdjVDN2FBOWFv?=
 =?utf-8?B?MFNKWEIyaEgzazFEVEozT2E1TC9JemhQNFg1c0F3Rk5obDBKVzZIZlRUZGxo?=
 =?utf-8?B?NTg4VEZPQThBcXEyaVc5R1Y4Vjd2YzRGZ0FHeWorQzVzQmVUT2hZZnRJSThh?=
 =?utf-8?B?MzJPUStBbjFCaG1qRVM3RFgyOXQxcWVQTUJUV1FPOEgvM2lhMC9rVDAvUFlL?=
 =?utf-8?B?UkVScTdYa3BnVndLeWNrRmpqZEZlRnVGb2lRcGNsSWI3UVZIcEFtemdxc2V1?=
 =?utf-8?B?U00xV3F4elVVUisvUEpRMjJzRDdPSzl5L0dWUmsyUG8xMlVla3VBNnpCc29K?=
 =?utf-8?Q?ZAhNkZr1JzQVygqRNZSpvkFklpFfWPVjHwHUaS/?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7874a78d-a5a9-4a75-ce46-08d92a2346e3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5077.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 02:15:25.2476
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vKcvPGHi+NVV4uISxsyGxr+uL7HbZeqb2MlmSdH/Pd3pHAh3oWBhJDVAs4gQBCWCk3XdhMMG1nTUGU9IFsiVSGhT33xYE0Acct9AKYeHAP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
X-Proofpoint-GUID: Q8DFCii0WUQyZvHmmb4nQ2MvgNk4Cc3t
X-Proofpoint-ORIG-GUID: Q8DFCii0WUQyZvHmmb4nQ2MvgNk4Cc3t
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_01:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 mlxlogscore=967 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106080013
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 2021/6/7 =E4=B8=8A=E5=8D=8811:06, Bruce Ashfield wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> In message: [linux-yocto] [linux-yocto v5.10/standard/nxp-sdk-5.4/nxp-s=
32g2xx]: drivers: dspi: fsl: fix dspi transfer hang issue
> on 04/06/2021 Zhantao Tang wrote:
>
>> Hi Bruce,
>>
>>
>> There is an patch to fix dspi hang issue.
>>
>> Would you please help to merge this patch into linux-ycoto kernel, v5.=
10, branch is v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx?
> This went to the wrong mailing list, but I did pick it up!
>
> merged.

Sorry for the wrong mailing list, I will be careful next time.


Thanks,

Zhantao

>
> Bruce
>
>>
>> Thanks,
>> Zhantao
>>

