Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82BA5C7EE23
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 14:48:30 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.24960.1684853305582927650
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 07:48:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=JDIUqC1q;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=450754b2d1=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34NBMSnT028652;
	Tue, 23 May 2023 14:48:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=knheOe7ItL4ZQoqqfp0oAB5Xrwnynk5g0n63xcw+jnY=;
 b=JDIUqC1qHFuhmQ3kr84lfisM43n/0oYdwArIeDMN5v7rN/QUK8YT355f9yDW1ek6VOc+
 +0HzIHL3e/htBgcPvOxNLORoO0dr0gOXwvQJjIpJa7KEFdSpQGHy4CM3UuhU/llB4soM
 ecB15E/QODlspQPww/YQojiD5dtYuqUUk3W7CxRlpPMR2uex1rj+C2rYk2Dm48LBBi0R
 Z0J55e/2Gej1o0sMokA6rOjK22q9GtbP2dZ69ooqtoererJOT1GfCoF6od+XU/E+Mbea
 d9a4I+NAGr0ir9qObxEIBlaXuVnbOcuo+XETA6iqMht61DWnwjtZfOmHK+9P9pE1rqDH Eg== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qpn67jvp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 May 2023 14:48:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxEXk7qc43sujaUh3AvH/TD2ixULaYbBhcAJAC3PtvCujTUuwOAeGx45ugp0EFNBMiLOYDo+BeKvTrQN3XpiYASrslzPImJiD6/VIgq7Pg1fONdlvwa+u+SrrT3vP6jwMwqW19r8+87mnA3YOJGgwuR6XxTK3Go03hOIAdvUXSz9KtBSDygncFBb3QT1TXgznP93UGPWNVmiAsCe5GAbGkHrC1iHWVQdAQ+Xu1pwgFbtbbiKt9XhJEbOCZ/r8mFHh3jgUIDw9Yz48ZBd+fTfWLSIbIisI7RcFX3yz7B4qsjSt7/LTJqnhkJzgbPkGJJvxi2sR45HKkEsZHTIkptTeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knheOe7ItL4ZQoqqfp0oAB5Xrwnynk5g0n63xcw+jnY=;
 b=ZOeV6ZTsDKipzhgMV1V1bIiPKuass2yev9Df/dYdHwyO1hI7B5l0qdJBI5crRlf/Y/K/ErBZzvDwP75gOV8Cl/mn7bz4a9tepsrrqXT8DyMv7hGWQRjlviVlqDA1NjbtV3WgyKhMk9LKlUGCO5nMFx1q89fHXVcFNXSGaodYz7y8g5PFqveN97DYlI4xGnFkpldGgiEQsI+gxASGpacNMuZD0FpLVq8972bI8E8FlY5e4p8xdxbHp5EN5jDUW46RtBIvTJERaHZGU51iRaXoM+nvjZNDqhsqnOScj5Ai+Q49aP2a6qJhuaLePdmWhvUZhLlJZ0xh4y61cGCu2w0i2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 14:48:20 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a2e6:a5d4:b628:fa7f]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a2e6:a5d4:b628:fa7f%6]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 14:48:20 +0000
Content-Type: multipart/alternative;
 boundary="------------kWC4XfIjyAq8301pOPnfcaSK"
Message-ID: <f247a90c-8c65-3374-a8e8-f29869cb5d7f@windriver.com>
Date: Tue, 23 May 2023 10:48:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-xilinx][PATCH] Use new variable
 LICENSE_FLAGS_ACCEPTED
Content-Language: en-CA
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org,
        meta-xilinx@lists.yoctoproject.org
References: <16E8B6F637C41AF8.27774@lists.yoctoproject.org>
 <fe84c9db-5eac-87d2-dec5-cf03d3030923@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <fe84c9db-5eac-87d2-dec5-cf03d3030923@windriver.com>
X-ClientProxiedBy: PH8PR22CA0021.namprd22.prod.outlook.com
 (2603:10b6:510:2d1::7) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CO1PR11MB4786:EE_
X-MS-Office365-Filtering-Correlation-Id: fb294d43-7473-4811-8898-08db5b9cc054
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yzoi7hbqOV49gtlbx9Ff25ClCcIA6c2OiOS1gaUs8CkpPMZlDv2frdXMRkOybiWWJ6ypaSrD/nTFOzfAWKWSvjmZmOMPPa5euGtdZkxghk5ISfYuXYU6K5wNBGEE0wXA+a8PLl/AqnaD44It42Qe4Xa1ZLTFLK2/sETaYtxukwoxkY0CmSIQLD6G9DY0h8Vds83xuNUg8WMRGtIhjd7osjGcbR81BwmHlAOrQibE5320TwkDO4p8B0sHx5PY9b1790Owh6+5apyVfq3opMatuGXCfTNgLoYHimyRDFUCA3+zTLfeI+6nRYVcsgMELpiCEOvRTOkjhNeADLdDjFqZJNNPUkyl2JH/KX7iOOsys1KpusaPrVY0ZZLVU6LwPQwMv9QV87QPbIOvBbodNkAKrRAjok+09GTQMndfJN7wX88B4a3XxsD0ePqSv5Rn/81XTTIVna5z/N+mkA8PyxQ/p6sv7S6EH41NVWYkpQ2IL/UUjRjoKtLnUd7fk+IkwSIp+VDp7mMa2EEP4QKWREVDZ9gcj3hP65AhvJUMFQJSgzShXY6zWSURZP9NzQfSC+o0+3n17jx90n5Co9MnVrnJhpIqT4aC9GTG9pyB+F9aHi7KBZ9V6i46KiQgw9J5LHjeJJg6B4oHe5ajnZ+7qu4q4yfTsOqsWQonvi/xlda7rMw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(39850400004)(396003)(346002)(451199021)(966005)(41300700001)(6486002)(33964004)(478600001)(31686004)(31696002)(316002)(66556008)(450100002)(6666004)(66946007)(66476007)(86362001)(166002)(66899021)(5660300002)(8936002)(8676002)(38100700002)(6506007)(6512007)(26005)(186003)(53546011)(83380400001)(2906002)(2616005)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VTJpTW8xb3B5WU5HemM2ZTlpQitqRWFPMjZsVVFOVnIrZzYzNmcvZU9RUE1p?=
 =?utf-8?B?YjU4OERkM05PajAxRTkxbFpMd2tsRzlveVBQZFJQWWJ2MFZrNTVzM01pSXFJ?=
 =?utf-8?B?ckVRMzdQMm8vZTIrbmY2Y1haNXkrTTN6VXM2cE91MzZBQ2h0c2NvbDlFRVNT?=
 =?utf-8?B?UVlaS2pOV2lZRzBHdDZlZmxXTXc2VkZ4UXhZYjJPT1hOMSswWXd4QklRMVFv?=
 =?utf-8?B?dHBwREdBVFlTcFdIbmJNSVhQSHJleGxkOGNPcjRGMGFuNWhCWEYvWmN6OFZp?=
 =?utf-8?B?MWsxT0tXNXRzWkdzb2tBUFlpZGJ6RWpaSWRnb0VscWFkcXFVMVFBOW0wTVg0?=
 =?utf-8?B?OGUzVTc3dE9XUCtpQTRvNXpOWXJVK2I3eFFrRFk5dlhzUWh4WGxldk5QbjE5?=
 =?utf-8?B?VmhzNk1UTGRCdzFlQjU0QW1BSDZrUmhHTmtUd25CL0dPN1dmaWppU3hWWk5C?=
 =?utf-8?B?ZENDdHBsK2xSK1BtNW1ycENyRG9oWXhaOGxyZENFWEdOd0E4SUhKRTh6UlhR?=
 =?utf-8?B?RW1KTk9EbklKQ0s1M2NnY3Yzc1RaWlVnQXozOVp6TWpFdW9iL2pnUTFuZjlm?=
 =?utf-8?B?eStZL3pWRkRhYTZmQkRpTVFKb1V4eWxsMjJ1SmtialRjb2plaWowTnVNc1U4?=
 =?utf-8?B?cXJqZGtDVDJjMlNmbnRjQzRHSmdpcUJyNVZVU0NKZUd2bXN1anMxV0F5UFVy?=
 =?utf-8?B?RzhWdUc2bERCM3JGVU1QbXZIcndGSjJ3ekExL3pZQkNDSCtaYUl2cmRubDJj?=
 =?utf-8?B?bUgyU0ZacERiNmY2cHN6UElMVjc4SUJ0WUZSaUZDMVJudnZjQ3p5UnE5NlhQ?=
 =?utf-8?B?UXlFZTZoL29ud3pBVU9pVVNhbC96dG5lTHlOSXlHTlE1MUtHVE5GTm5MYlFs?=
 =?utf-8?B?UXJzQ0ttV1NqZjl4UzUwVS9MK1FuVmdEZ1YvSm1LVmtPWndQOVJIWDFJNk1X?=
 =?utf-8?B?SUFGd29hWnZsMmovU1Buc2VOZjdqWnhvbXNNYkdlR3RBSXNna1JUampqOVVG?=
 =?utf-8?B?OHdHVHNJWnVvY1ZZUVFaRXp1cWhVaFBod0IyVzlsSXY3WWhML05ULzZ2THNK?=
 =?utf-8?B?R1BFTmVtWjNOR0tvMlF3UzMzMGNML0lOYmQ4VmZBTllYM2VrQXF2T0Y0UlM5?=
 =?utf-8?B?TDR2cG41YnZ6VFN3cWF1TkRVbkNSTHV1M1dJVzgyN3I2UmdqZVRyU0hpbnkr?=
 =?utf-8?B?dk5ZYU9GUDRMZndYcGFVZHBxaHhPa2ltSWRLbkRpbitVdmZBdFdZVVZFUXNw?=
 =?utf-8?B?dlZodHk4b0ZicEY4MERoVWsyVXJFVU9DS0tlS3MrY0JNZmRweXNiS0l1NXBF?=
 =?utf-8?B?dzNuWmxqb0c0TTN5MHhseEtIOWRSVlpZV3dMSmVlMy9mVE1wMG0rRTF0R25Y?=
 =?utf-8?B?cm4rM20zMTh4ZmI4NGtJa0xLbm9LdUJIRURIUzZLenBIdEZna3N4bjJyaUs2?=
 =?utf-8?B?MW9sK0ZHN3ZWcmNqd3dPMmhWZ3ZxZTJpL0x2QklBcHJrVko1MURUZU0yQ1la?=
 =?utf-8?B?SGtTc3paVFNiY0owRzQ4SHNNUDB0ajA5dm5mWEw1UUpHV3J0TmlObFRKM2ds?=
 =?utf-8?B?cDh6T2hoeEV4dTJxNExNQW1NcE1rbENnQk5zb1hGV0xxUTBTY0hVNHZUWm55?=
 =?utf-8?B?S1l1cVZuOERVTThKdUE4VS9TaFlXWTB3eTZJQnZaNktKZXNndFdjYnhEUnhH?=
 =?utf-8?B?RFhTQzVLZUVqK3lMVVhQR0hBZXk2eEVpODh3bzhyT1htWXdQWEhlMzNXbWgy?=
 =?utf-8?B?R2dMQ1FqT2ZpV2FpYlZ1RURFQlZVc1dlNTZkRkFBcXl3QmRUWU5KQS93cWFj?=
 =?utf-8?B?czVkbHNlR0V2RUVjMkRtckZJZnk4dWFLckk3dkh5WkVVaDdhRllMT2xYUjZO?=
 =?utf-8?B?UFRvelVPOUpXbVZQZFRqUGJhRUJQWUVjS1N1ci95S24vYTUwbHpJWEZ4VUtp?=
 =?utf-8?B?ZUJWelptMGprTTJaN294d1phdVRsNUdyMkVKVkRjeVRWTm8rWnZiN3R1WHM5?=
 =?utf-8?B?RmhyczRoOHYyL3YvNjF5RUtKLzF2d2NFWFQxQnJ1VTUrVHMzVUtOaG8xcTFT?=
 =?utf-8?B?eVZFMmY5dWEwcWh3cnJxak1yTjFrM0E2eHNhdm1JS3ZoblF6dHc3Tis3bitH?=
 =?utf-8?B?dElpOSs3YXVweGdURnIrazEyQm8yOHZJOG5RVHVnZ2FDS1U3NWpPWUZpMXpH?=
 =?utf-8?B?T3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb294d43-7473-4811-8898-08db5b9cc054
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 14:48:20.5703
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QbJt9Pmptv0C9llM7AH0W3x1Ih/eLaCha0oOxDmQ992UpOA6L+zVHvCUw0BduAsKnjerbRfcRWn0O6vMkNN9LaanCACH/8Pm2ki5yQkK88k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-Proofpoint-GUID: 9zRybwIt-SWe41tXmtcWTw9CU7zHZa2_
X-Proofpoint-ORIG-GUID: 9zRybwIt-SWe41tXmtcWTw9CU7zHZa2_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-23_10,2023-05-23_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0 adultscore=0
 bulkscore=0 mlxlogscore=969 phishscore=0 clxscore=1011 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305230116
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 14:48:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60101

--------------kWC4XfIjyAq8301pOPnfcaSK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 34NBMSnT028652

On 2023-04-22 22:49, Yu, Mingli wrote:
> Ping.
>
> Thanks,

Mingli,

Please re-send to:
meta-xilinx@lists.yoctoproject.org
unless someone picks up the change and merges it before your morning.

See:
https://lists.yoctoproject.org/g/meta-xilinx

../Randy


>
> On 4/24/22 11:20, Yu, Mingli wrote:
>> From: Mingli Yu <mingli.yu@windriver.com>
>>
>> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
>> ---
>> =C2=A0 meta-xilinx-bsp/README.md=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
 4 ++--
>> =C2=A0 meta-xilinx-core/README.md=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 ++=
--
>> =C2=A0 meta-xilinx-core/README.qemu.md | 4 ++--
>> =C2=A0 3 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/meta-xilinx-bsp/README.md b/meta-xilinx-bsp/README.md
>> index e4142861..85a5b38f 100644
>> --- a/meta-xilinx-bsp/README.md
>> +++ b/meta-xilinx-bsp/README.md
>> @@ -73,11 +73,11 @@ In order to use recipes that rely on restricted=20
>> content the `xilinx` license
>> =C2=A0 flag must be white-listed in the build configuration (e.g.=20
>> `local.conf`). This
>> =C2=A0 can be done on a per package basis:
>> =C2=A0 -=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_WHITELIST +=3D "xilinx_pmu-ro=
m"
>> +=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_ACCEPTED +=3D "xilinx_pmu-rom"
>> =C2=A0 =C2=A0 or generally:
>> =C2=A0 -=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_WHITELIST +=3D "xilinx"
>> +=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_ACCEPTED +=3D "xilinx"
>> =C2=A0 =C2=A0 Generally speaking Xilinx content that is provided as a=20
>> restricted download
>> =C2=A0 cannot be obtained without a Xilinx account, in order to use th=
is=20
>> content you
>> diff --git a/meta-xilinx-core/README.md b/meta-xilinx-core/README.md
>> index 8997760c..3fae999f 100644
>> --- a/meta-xilinx-core/README.md
>> +++ b/meta-xilinx-core/README.md
>> @@ -72,11 +72,11 @@ In order to use recipes that rely on restricted=20
>> content the `xilinx` license
>> =C2=A0 flag must be white-listed in the build configuration (e.g.=20
>> `local.conf`). This
>> =C2=A0 can be done on a per package basis:
>> =C2=A0 -=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_WHITELIST +=3D "xilinx_pmu-ro=
m-native"
>> +=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_ACCEPTED +=3D "xilinx_pmu-rom-native=
"
>> =C2=A0 =C2=A0 or generally:
>> =C2=A0 -=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_WHITELIST +=3D "xilinx"
>> +=C2=A0=C2=A0=C2=A0 LICENSE_FLAGS_ACCEPTED +=3D "xilinx"
>> =C2=A0 =C2=A0 Generally speaking Xilinx content that is provided as a=20
>> restricted download
>> =C2=A0 cannot be obtained without a Xilinx account, in order to use th=
is=20
>> content you
>> diff --git a/meta-xilinx-core/README.qemu.md=20
>> b/meta-xilinx-core/README.qemu.md
>> index d0040b09..5cc599a4 100644
>> --- a/meta-xilinx-core/README.qemu.md
>> +++ b/meta-xilinx-core/README.qemu.md
>> @@ -10,11 +10,11 @@ The PMU ROM is available for download, and a=20
>> specific recipe has been created
>> =C2=A0 to make this available: pmu-rom-native.
>> =C2=A0 =C2=A0 The license on the software is Xilinx proprietary, so yo=
u may be=20
>> required to
>> -enable the approprate LICENSE_FLAGS_WHITELIST to trigger the download.
>> +enable the approprate LICENSE_FLAGS_ACCEPTED to trigger the download.
>> =C2=A0 The license itself is available within the download at the URL=20
>> referred to in
>> meta-xilinx-core/recipes-bsp/pmu-firmware/pmu-rom-native_2022.1.bb.
>> =C2=A0 =C2=A0 Add the following to your local.conf to acknowledge you =
accept=20
>> the proprietary
>> =C2=A0 xilinx license.
>> =C2=A0 -=C2=A0=C2=A0 LICENSE_FLAGS_WHITELIST:append =3D " xilinx"
>> +=C2=A0=C2=A0 LICENSE_FLAGS_ACCEPTED:append =3D " xilinx"
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56854):=20
>> https://lists.yoctoproject.org/g/yocto/message/56854
>> Mute This Topic: https://lists.yoctoproject.org/mt/90659700/3618448
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=20
>> [mingli.yu@windriver.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

--=20
# Randy MacLeod
# Wind River Linux

--------------kWC4XfIjyAq8301pOPnfcaSK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-04-22 22:49, Yu, Mingli wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:fe84c9db-5eac-87d2-dec5-cf03d3030923@windriver.com">Ping.
      <br>
      <br>
      Thanks,
      <br>
    </blockquote>
    <p>Mingli, <br>
    </p>
    <p>Please re-send to: <br>
      &nbsp;&nbsp; <a class="moz-txt-link-abbreviated" href="mailto:meta-xilinx@lists.yoctoproject.org">meta-xilinx@lists.yoctoproject.org</a><br>
      unless someone picks up the change and merges it before your
      morning.</p>
    <p>See:<br>
      &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/meta-xilinx">https://lists.yoctoproject.org/g/meta-xilinx</a><br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:fe84c9db-5eac-87d2-dec5-cf03d3030923@windriver.com">
      <br>
      On 4/24/22 11:20, Yu, Mingli wrote:
      <br>
      <blockquote type="cite">From: Mingli Yu
        <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>
        <br>
        <br>
        Signed-off-by: Mingli Yu <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>
        <br>
        ---
        <br>
        &nbsp; meta-xilinx-bsp/README.md&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 4 ++--
        <br>
        &nbsp; meta-xilinx-core/README.md&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 4 ++--
        <br>
        &nbsp; meta-xilinx-core/README.qemu.md | 4 ++--
        <br>
        &nbsp; 3 files changed, 6 insertions(+), 6 deletions(-)
        <br>
        <br>
        diff --git a/meta-xilinx-bsp/README.md
        b/meta-xilinx-bsp/README.md
        <br>
        index e4142861..85a5b38f 100644
        <br>
        --- a/meta-xilinx-bsp/README.md
        <br>
        +++ b/meta-xilinx-bsp/README.md
        <br>
        @@ -73,11 +73,11 @@ In order to use recipes that rely on
        restricted content the `xilinx` license
        <br>
        &nbsp; flag must be white-listed in the build configuration (e.g.
        `local.conf`). This
        <br>
        &nbsp; can be done on a per package basis:
        <br>
        &nbsp; -&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_WHITELIST += &quot;xilinx_pmu-rom&quot;
        <br>
        +&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_ACCEPTED += &quot;xilinx_pmu-rom&quot;
        <br>
        &nbsp; &nbsp; or generally:
        <br>
        &nbsp; -&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_WHITELIST += &quot;xilinx&quot;
        <br>
        +&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_ACCEPTED += &quot;xilinx&quot;
        <br>
        &nbsp; &nbsp; Generally speaking Xilinx content that is provided as a
        restricted download
        <br>
        &nbsp; cannot be obtained without a Xilinx account, in order to use
        this content you
        <br>
        diff --git a/meta-xilinx-core/README.md
        b/meta-xilinx-core/README.md
        <br>
        index 8997760c..3fae999f 100644
        <br>
        --- a/meta-xilinx-core/README.md
        <br>
        +++ b/meta-xilinx-core/README.md
        <br>
        @@ -72,11 +72,11 @@ In order to use recipes that rely on
        restricted content the `xilinx` license
        <br>
        &nbsp; flag must be white-listed in the build configuration (e.g.
        `local.conf`). This
        <br>
        &nbsp; can be done on a per package basis:
        <br>
        &nbsp; -&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_WHITELIST += &quot;xilinx_pmu-rom-native&quot;
        <br>
        +&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_ACCEPTED += &quot;xilinx_pmu-rom-native&quot;
        <br>
        &nbsp; &nbsp; or generally:
        <br>
        &nbsp; -&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_WHITELIST += &quot;xilinx&quot;
        <br>
        +&nbsp;&nbsp;&nbsp; LICENSE_FLAGS_ACCEPTED += &quot;xilinx&quot;
        <br>
        &nbsp; &nbsp; Generally speaking Xilinx content that is provided as a
        restricted download
        <br>
        &nbsp; cannot be obtained without a Xilinx account, in order to use
        this content you
        <br>
        diff --git a/meta-xilinx-core/README.qemu.md
        b/meta-xilinx-core/README.qemu.md
        <br>
        index d0040b09..5cc599a4 100644
        <br>
        --- a/meta-xilinx-core/README.qemu.md
        <br>
        +++ b/meta-xilinx-core/README.qemu.md
        <br>
        @@ -10,11 +10,11 @@ The PMU ROM is available for download, and a
        specific recipe has been created
        <br>
        &nbsp; to make this available: pmu-rom-native.
        <br>
        &nbsp; &nbsp; The license on the software is Xilinx proprietary, so you
        may be required to
        <br>
        -enable the approprate LICENSE_FLAGS_WHITELIST to trigger the
        download.
        <br>
        +enable the approprate LICENSE_FLAGS_ACCEPTED to trigger the
        download.
        <br>
        &nbsp; The license itself is available within the download at the URL
        referred to in
        <br>
        &nbsp;
        meta-xilinx-core/recipes-bsp/pmu-firmware/pmu-rom-native_2022.1.bb.
        <br>
        &nbsp; &nbsp; Add the following to your local.conf to acknowledge you
        accept the proprietary
        <br>
        &nbsp; xilinx license.
        <br>
        &nbsp; -&nbsp;&nbsp; LICENSE_FLAGS_WHITELIST:append = &quot; xilinx&quot;
        <br>
        +&nbsp;&nbsp; LICENSE_FLAGS_ACCEPTED:append = &quot; xilinx&quot;
        <br>
        <br>
        <br>
        <br>
        -=-=-=-=-=-=-=-=-=-=-=-
        <br>
        Links: You receive all messages sent to this group.
        <br>
        View/Reply Online (#56854):
        <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/56854">https://lists.yoctoproject.org/g/yocto/message/56854</a>
        <br>
        Mute This Topic:
        <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/90659700/3618448">https://lists.yoctoproject.org/mt/90659700/3618448</a>
        <br>
        Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
        <br>
        Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>
        [<a class="moz-txt-link-abbreviated" href="mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a>]
        <br>
        -=-=-=-=-=-=-=-=-=-=-=-
        <br>
        <br>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------kWC4XfIjyAq8301pOPnfcaSK--

