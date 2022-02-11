Return-Path: <Saul.Wold@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2010C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 21:26:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.1861.1644614798976574673
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 13:26:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ksHMh9z9;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=90410841bd=saul.wold@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21BLQH7a016242;
	Fri, 11 Feb 2022 13:26:17 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=iz6+AtT9greaGN8KGPcHtt54/pQo/XwdaKhRoWRuJwA=;
 b=ksHMh9z9nAuylsM35oOHkBwmvQv1kv9luQCVXv5sCLPwOQYJHHkQclHhOKQyws4nQJBG
 Vf7Zjge4VcO0gE3AANSNCtCur5GqhH3DrPFupfBGpHnyGXa4Yq36kR55GlSvzCi2bZb9
 IJOus8op6e3IFc0jzpu4XRWbZaPfSTty2XPkRJHUCw3vsEKc7mX98Jv7EmXOOi6P+vNz
 ql7DA9en08blx0vV+kXFLJp1SexM1wr4k7nG9S7xR6vSZvwuFZbt8bF6Nh0485U8+lXf
 hosYkvomHVNzZL6Ss40mwJj1G+HSmQ5fQ1+WQBF9PkZxebYTz3L9AjN04zUvdO4r1Ilc FQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e4h2uj1vg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Feb 2022 13:26:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa6EuyZGGVG2anHBACCIcAyA6Flmly0+/uYmw7Bi5fcorIR8T2RiXIBz8aNYz5dP3q7m4eLmjpqj6BaaX9z3LJFiZ/OP5Hoi4oK3StGNO6mKLgRQfid7rfDPy993+2KKms4Tfn5gyr43IGWHre861wnAPl2rrIE576u7cB4FJq3JDNf+H8XWTUrugDpn1eaAogv6MtCn/9OB+QpzMTck3q5hAdKX61msXiBVSYpn1HqdOAW9WyFludQIGaKHjTOSEI3JsiHeZ7V88WJBDUMDCJEufhmOnjhHGL68nIcHxtzXOB/Bnjl+tEo2TLdN1CT7f8OWmljp0/Uu72xXNPkciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iz6+AtT9greaGN8KGPcHtt54/pQo/XwdaKhRoWRuJwA=;
 b=kEn/8rTD78vOl08zKRSzCvqDEEmcg5dtBBOS2moyug6Swj4K2O8DpaGr631PEc8YcWJfGk4ZPyQSEMy/iBM6yAxBamcDHAME3YCfwa9dx0wJArmZnoikyFEhB8Q8LldRZhG0kJp2lRnpjCo7qW+d54vOBbZYg2ar7ug7Nk2pw2/WfyRA2ckZbErG43jYRBK3Oqb5IUJy1ZtsaufACJKS7KW2m+X6+Ojuoc3BcBT593UfVbi+eZlTYV0/WxCT2rq+vf4IKQUJtQmcOnAUlSCCI9e3M/G4bQJreWiFihtaDWACJqd4F8tz5KdGbHsdrU6jVSyvXg5MkmWXYtFn1FV0nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7)
 by DM6PR11MB2939.namprd11.prod.outlook.com (2603:10b6:5:70::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 11 Feb
 2022 21:26:06 +0000
Received: from CO1PR11MB5076.namprd11.prod.outlook.com
 ([fe80::2027:9b43:472b:13ac]) by CO1PR11MB5076.namprd11.prod.outlook.com
 ([fe80::2027:9b43:472b:13ac%6]) with mapi id 15.20.4975.011; Fri, 11 Feb 2022
 21:26:06 +0000
Message-ID: <e93c5e4c-08cb-5e78-17b1-d320a99fa361@windriver.com>
Date: Fri, 11 Feb 2022 13:26:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 2/10/2022
Content-Language: en-US
To: Randy MacLeod <randy.macleod@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        daiane.angolini@foundries.io, alexandre.belloni@bootlin.com,
        Steve Sakoman <steve@sakoman.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>, tim.orling@konsulko.com,
        pavel.zhukov@huawei.com, Andrei Gherzan <andrei@gherzan.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        pokylinux@reliableembeddedsystems.com
References: <b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com>
 <a71a229c-0811-9d7f-3478-849d9aa9875b@windriver.com>
From: Saul Wold <Saul.Wold@windriver.com>
In-Reply-To: <a71a229c-0811-9d7f-3478-849d9aa9875b@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0046.namprd04.prod.outlook.com
 (2603:10b6:303:6a::21) To CO1PR11MB5076.namprd11.prod.outlook.com
 (2603:10b6:303:90::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8571a4b-e43f-4744-4b8a-08d9eda51d24
X-MS-TrafficTypeDiagnostic: DM6PR11MB2939:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB29396C298AE290E9EB41C238EE309@DM6PR11MB2939.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7T6z+6ez9qU08dlRbpiFY949/dPumPTzGHdesmA1KvPrdGTTvFyDf8TzpCakhK4s/XNTvKSBZHN1ReRnqOA/IMtSYJ3HNue6EDVQL4CFu5iCPkhmqQNapCRxcrpOst8qhHobMaq1tpFA74DnVkoETlNIrJLyQThRgFWA0E0YrL9FGsyT8L16kbSvnNSxM+snavex6AHhCGnm9KWGL4UIhc0qF4tUjwB0rFRtUILOA/Pnq9TAGJ6igtZzv9JkHWO36dbEcABw6+a36rE4u7lYx4Agk+ZDPth7pts8pTJZbdeZuFeA7lFOmcmPEw67cEZL95daYJN3QmeaduT/JW6vSw3jCfxZsdYr5IY1OZlsr/oeJCGLQnwq6mROmpEGrhjpuHaxdgXOXCa1eKYitP5bxN5ROOZ9syHi+Fc/J7/2BXyp9gD2Anlx5WSx9dHIJQBTrunp9S+XRh+47nckDfwLb1iXhcF8q3qB3IzKS9f0sCiowEcrpvvDj++aY0wTUluQ/Xu1VrEXfS0TOb1TjCSagMsjLj4FQEm2wALKmqIb1GqENP4qsmoE2J7Jin4zfbtEEVuzJdw/ldlwnOqedBj1A7Vc6euG0nA1S/5hJ2DI7IESYcn0xvYjBpwTWuKy72mmdDZUFWqrxnawHlczcN4q3OTYV6HfFj02A2KqF5ObxGG8bk7gCr2DS37eB2uuxp81C79STATVAu+0mdYDDq8GSfrgWMPG2Q3/6GdSsAc7GT7B93JLMbAadJsMknW7NxxawqIk8CXU/8Qs8bo6Pp7eNQd+18X3zErGa4ffRGF7ttN8SoDEtLt6sICh5z87FxQBnDfqGNVZboWdVAKh/grvc3Z0Y8b28MBKEMkh5vvYGw2sUhNuStcgXORJu6MbTQgSHYEvfgg4gOQK1X5SjrfXyg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5076.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(52116002)(66556008)(316002)(110136005)(54906003)(36756003)(6666004)(66476007)(53546011)(8936002)(66946007)(4326008)(83380400001)(31686004)(86362001)(38350700002)(26005)(186003)(6506007)(2906002)(2616005)(38100700002)(5660300002)(8676002)(7416002)(508600001)(6486002)(6512007)(966005)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dGNiaGx1SVBDeUo5Vy9xNTYwR1JhS3BrdGxxQmdwL0F0TzE4aEF2aEZhbXVJ?=
 =?utf-8?B?bndzNnN6aFZoeWhocFZCbGprbDIzc3lDc2lRK3JvRkJwajMyYnU3eEZBem9Z?=
 =?utf-8?B?cXRvTHF4TkpYM0lyNE9tTkl3VG9HY3h1R2s2YnlISHgxUUdNT2dSWW1VandD?=
 =?utf-8?B?U1oraEhDT3lXYnUyd1lONUcyR3BCYlg3R3JEUlN3Y2VTZWRRdHV6c3pNRkhS?=
 =?utf-8?B?d1NxSmN4K1JqTXRmbGhiR0xXQ2V2ZVVMbEFFL1lNOWtXS1lFUHVjODJPKzA1?=
 =?utf-8?B?aGJ4aG1QYjZwdXFCdWJabHd1bXdjMWN2Nno4bDlWWmpqOS9DTXhlYU9pSmtk?=
 =?utf-8?B?TGNhc1l6VklXSDViQkVxaCs4VEh4NGIrZTY5Umpic2h5SlErdjBkNzMzVVVM?=
 =?utf-8?B?TTQxYWU3MFZsSUFid0tIaG1tNFhMT2Z2TWF6akt3ZWh5YzJneU5naWxqUkpO?=
 =?utf-8?B?QlZUZG1NN2owek4vdkZrbFNTVU5VT2szbmMzeEphU0pjME9uVU5rVzFkcEIw?=
 =?utf-8?B?SW1YbUMzbm9zOFYyNGU1MjFqUHJtaUlEay93VkJiMktWL0xsVkhaekRkSnVa?=
 =?utf-8?B?UnJjMm5QeEF2V0w5U1BsbGFvZGxON1oyZjJEM1A5SFoyNGN2eGhpZ2dDN2dS?=
 =?utf-8?B?a29hRWl5SjZWeHdVamhSR3V5b0lUc2IybDFpWWdXS1FsaTRPaGZaOEY5NXBu?=
 =?utf-8?B?eUEwZ3lHT2JYNHBrVHc4Y3pPRC9pSDVRSThGcVcxSjh0cG5PSllqbHg3bE1u?=
 =?utf-8?B?RUZkb1lzams3NlY4RHVyQUJUOVZCN3Q4VU14QjJ3ak5LVGFlU2o2Y3dEeXpN?=
 =?utf-8?B?dEdvRVFraWl0Z3pVeWp2aXJsZU9Gd2ZZcjZJN2RpWWFsNTJ1bGZ3NHRFVW1s?=
 =?utf-8?B?SXRqQWpUVThnd3NIaTdaRHNISi9zZURQeWJWbWhPVjhaV1hJNGZIMEpwS21Z?=
 =?utf-8?B?V25USkxJZUFoaTBPUm9FenJTcCtDaFVyajFIbXJjSlJ3V3Q3dkN4SUxycExv?=
 =?utf-8?B?WkF2dXVnUzdtNGM3cW5vb0lPV3N1MXBTYytrNFo2UzNBMHF0Y3ZOeS82N3I5?=
 =?utf-8?B?czhGZ3BVWEU0SW5GZVRwK3RHTFVvT1U3bXZBNUVqQ1cxT2RzSkpmeWpoZUdt?=
 =?utf-8?B?YzNoNmY5ZHlRRkVGdjA2djVZS2k2VXBmbGNuSVRrb05UTVl6M0dueHlSbW9D?=
 =?utf-8?B?VmozSmlXb2l6VllNNlp0emR3RTNQcXQxL1EyK3NPM1FuYlh4RURGWEM3RTBk?=
 =?utf-8?B?VGV1VGg3YkRUTk9WN0xxSGpoRlJQaU9qK3lDVHdlaXBZOU5saVBZR3ZJSlJY?=
 =?utf-8?B?ZWFsLzBSbHNreUhEK3lscDBIWk9rVGdqeHNYREgvbVM2YVBvL2V0VFdiTXRF?=
 =?utf-8?B?aEw2d3pFcTljMVlnZy96R3JTWlRNREgvaHU1cE9UVnZwUytqMEhNS3B3SHVx?=
 =?utf-8?B?NDJRaml3bFBqTTNUQW85UmtjUG9jZjlkK2w1NUE5bGM3Vm43NVlldjNwQjg1?=
 =?utf-8?B?QzgyU2N5V2JSa05FVGQzd3lNb2U1Nzd6YTBVYmlrRlZTRnNKNGpjbW9RWFdS?=
 =?utf-8?B?eGFDVlY4RWtVWldQTzNpQXFiMlBIMmNqNWdHSCt4ak5Ud0JBNUh2S2VBaWFW?=
 =?utf-8?B?NndSU3N4QTNmL28wOVliOUpubkQ2Z1lWbDFMbytzWVJaZGFrTTVockNGa3JU?=
 =?utf-8?B?MFRvQnZHZlhkMUQ2RWcrMmdRTXExT1Q3UzhqTjlDQndmOHZ3VmxVN2M3TTYw?=
 =?utf-8?B?ZHVvL1Y3dEkrNm8vZzBleXhkMUNHSUpaK0J4UkZKSHZuZlh5RUYxTmpGa0l2?=
 =?utf-8?B?M1QwRFFGV2xDSkVsbE9YamdaSXNDWEFxTGRiZVZibFRNRnhZMk9xa3h2Uk4y?=
 =?utf-8?B?akdzdld0blFMNzBzUFEzWlVvb0lPL29xbThDSnk5WXl3VkpXWkYxM3pqRmJo?=
 =?utf-8?B?Y09sVDdTZHhJbkpjeE4wWEFJbU04YWRnQkdSdlA3ajBIcXkxWjdhWGNRSHo3?=
 =?utf-8?B?MmduNVdFdG9yNmNiU3ZMSWt5TFNmeUpuTmVnMklwbVJiQThFNmN1VGtuSUZw?=
 =?utf-8?B?aXQwd0lhOWMrMXlHbHlDdkwzdHlVMHBIVmdLWEthcFUrVEtTdGhUdVp3Wmhr?=
 =?utf-8?B?TkFFSmdPS1p0bWJzZ1VUSDBHSVZHWTI1L0ViZ0VkRjc5dXFuTU5ZS1lpTVJj?=
 =?utf-8?Q?Qf41i2y9i1zds8KOldqbkPA=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b8571a4b-e43f-4744-4b8a-08d9eda51d24
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5076.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2022 21:26:06.5971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 3sgng+ITFAxNKcz4e/kmOS2xuT6CN5wGZCuiiqEKcnymw8lFtcwKmi32yzbZ+UW25LTO30mgwhrtznbKXAZjEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2939
X-Proofpoint-ORIG-GUID: 9lJFn01X0OT4UHZPqfiv2P_crfCKuTHc
X-Proofpoint-GUID: 9lJFn01X0OT4UHZPqfiv2P_crfCKuTHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-11_05,2022-02-11_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1011 bulkscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2201110000 definitions=main-2202110108
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 21:26:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56165



On 2/11/22 12:49, Randy MacLeod wrote:
> On 2022-02-10 13:50, Trevor Gamblin wrote:
>>
>> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>>
>> *Attendees: *Andrei, Alexandre, Armin, Bruce, Daiane, Joshua, Pavel, 
>> Randy, Richard, Saul, Stephen, Steve, Tim, Trevor
>>
>> *ARs:*
>>
>> - Saul to address NEEDINFO bugs from Robert Berger
>>
Re-Assigned 14626 - lttng back to myself.

both 14629 & 14709 needs input from Robert.

Sau!


>> - Randy to search Bugzilla for prelink bugs to close
>>
> Done.
> 
> I closed 3 prelink issues as obsolete:
> 
> 1.Prelink: doesn't work on ppc64
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331
> 
> 2. Investigate if -mtls-dialect=gnu2 support within the prelinker behavior
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=8664
> 
> 3. On-target binutils produces non-running code when linking with 
> "-Wl,-z,nocopyreloc" on ARM or PPC
> "The prelink test suite has two tests (reloc8 and reloc9) that attempt 
> to link an application with "-Wl,-z,nocopyreloc". This worked through 
> "krogoth" but no longer works on master. ..."
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10168
> 
> The remaining issues that mention prelink, do NOT appear to be
> ones that we can resolve as the prelink package/feature is only involved 
> tangentially.
> 
> https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=prelink&list_id=648622
> 
> 
> ../Randy
> 
> 
>> *Notes:*
>>
>> - (Correction) ~43% of AB workers have been switched to SSDs. Failure 
>> rate appears lower, but still TBD
>>
>> *Medium+ 3.5 Unassigned Enhancements/Bugs: *79 (Last week 76)
>>
>> *Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)
>>
>> *AB Bugs: *75 (Last week 73)
> 
> 
> -- 
> # Randy MacLeod
> # Wind River Linux
> 

-- 
Sau!

