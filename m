Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1531.1623180605542659575
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 12:30:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Ep/rNANq;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17932f0905=randy.macleod@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B0C4838C1115
	for <yocto@yoctoproject.org>; Tue,  8 Jun 2021 19:30:04 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 158JU3Ha024617;
	Tue, 8 Jun 2021 19:30:03 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com with ESMTP id 3927fn0dh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 19:30:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfv01usFjtXnbV/mrZLd41Bml5oVmbEj1Cr1iQPx1hwKDMlMESiPLTlA3shnsxO8c8ZARIcVzgbu/JtDeblv2qpnSB8YkHrRjnz7LS/zbXVGHgG0KZKNjZUAoKjymTxjEfXyBur36NDdF3SEgfzqucevhmfYQyfJLRW28PNMb7YcF75oUKPT9w0H/5V1rUMoLqOFM1T1gwc1U0AlBVUikTt7mNdk32hhUW2UhDf/8055If3grqxg0K0+ytEVIhJkgfomN760mY0eAyQMRRYU8GEoEfJo4SNukKIlYQHrur9dr2HgyyIdj38+YHCfnoIqX/vi0qqp1IqT6WzSkyMi5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcT5c4YT/+D1CZO2h05GwOV7ELrQUL5EJODRgrJt+sA=;
 b=odQV4ijb1iq90j2VdHwQR7x6SMHuL1WbJsAv0rrUCcHMD0k5AkJjQpAacXn33ToONkiPTa6VF3Tip3wUIA/sxojwqOKVeGdoVasvkBuOOzi2pTN8VUBRpGCsMq7AtVRq06tWzX2xNR3dTU2wFR+aNcWQSZn4fz0m37Apdps1ItqTI4AM8z+lJneMxsnDwbCYg0MsAYuA3F/FkQOkjjajmH6smUzdKnHn0hrpcd25cLYRt+OqhcxVrBN6+nz3zXVAq4bIQMq7KUN+xAH2P2us3NvK+LdkMmj3LW4hQsJjlt0+R6ZrrKDWzJypWwQUgNjYUS7Xav5P8VHVI9qLEdugqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcT5c4YT/+D1CZO2h05GwOV7ELrQUL5EJODRgrJt+sA=;
 b=Ep/rNANq3r6Ql9WuxrD7/bawWn6IvBzG4kgLsGeRAY3MdGlHCbjqaCZyTTGtM/0mYLaWu5ieL/Z6xery/mdOxp8MScfPUR/S56EegfYg4gW7fobKSAJUKImoINf6bGSzpKBpfhSqdQ++I/ayPQNm9f/6oK8LF03rx/s8rESpcaE=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3706.namprd11.prod.outlook.com (2603:10b6:5:13e::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Tue, 8 Jun
 2021 19:30:00 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 19:30:00 +0000
Subject: Re: [yocto] [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Kai <kai.kang@windriver.com>,
        Yocto Project Discussion <yocto@yoctoproject.org>
References: <20210604030619.35679-1-kai.kang@windriver.com>
 <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
 <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com>
 <CADkTA4NLc6OHOjPrhvEyCp=s15JHZK4yRkU1EoRD=W-Pg3ApbA@mail.gmail.com>
 <1685614D8890E95D.26755@lists.yoctoproject.org>
 <CADkTA4OWoe1MgFXZopS9kpFSJjT05Yc45xg91vSzQOGAJ-5vhg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <075d467f-6c57-f933-0170-d4833a3ab761@windriver.com>
Date: Tue, 8 Jun 2021 15:29:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CADkTA4OWoe1MgFXZopS9kpFSJjT05Yc45xg91vSzQOGAJ-5vhg@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR07CA0101.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::42) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0101.namprd07.prod.outlook.com (2603:10b6:a03:12b::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22 via Frontend Transport; Tue, 8 Jun 2021 19:29:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 432869e5-8e61-431a-c2aa-08d92ab3ce75
X-MS-TrafficTypeDiagnostic: DM6PR11MB3706:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB37064DF3E7077B89618CE09FF8379@DM6PR11MB3706.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:489;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SXEcp5wThg00Fei9VdCdTc6zc/2bQWfCpf9Jc0syl6sMVpTo9RIJ+nWO5cQr7EleI8ZL/pFqB1hnX8FYnqfuxYG9/2X3eeSFHwyS/8GzCgFZPj35vIGeQlvA2EYbcFdDEb+vi05lPLZX/hjssnjcI4ApCNjxpop9bM1C44llCemUofIsE2DMN5yjeOd6AGcqwOjxEhvSDlwhjOhpTfceUCpM2yDIg/7Ta+J2r98IjdaRMcwMe3S6Twj34lBrQGW+rzcugi7mYaeIWwL0YJfH+G9G8bNyYLjaBVRgQsa5oWcf1E4hzBPj/cNFVCqxA+4Tm66I39/FykMZnOZauFzoVtv494Iet+Kff9ygCOcaDBF3JC1WxvMawHvwZx1ee2DdudKOBUqe83EwzJzt3z+ozMEBhLdZOClITQpyy+HCJOEpAkq+byx+XyRgMv4GN6yK0HiGoMh9UpEjcTPZFjAtsvyfty1YFLnqCleLwGkESfNBkIyp/INc1htSvV4ixn8UDxjN/5jAxvg0zV1+myXZFBakJVHpDIYA9yLjeZjlml1eIXYx27uzA9vAx9tUaClKY4IvzaIa7nf/ir0b8A8kKltW9N8oOxjFSr4CA+MkZACp3MnMEYN+FEoO26MzHmif9GRLs8ReGv3EgMa+sMyW0BTRGyRoAbytsjBoOLGf6kI0yQcGmW+vkl2PCmz0m/+0+65uW0+DPbYNdM7PJwruYo6rH0M+56Q9yNi5Wyvovt4UtGmbTW1skP5ZG6iKKYz2uCWctjCNXKJw5M4a7FS/CEfceMw/HmT5KWTst2Lhrunpe+Z1EtqmtPvtP3Ta+GLw5Oo2TIjswaFYqHTi01+tpItfb9kyfbt5llta9OJkyPMoGZ9cIPhWYWIu2g+/6d1j
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(366004)(136003)(346002)(396003)(376002)(38100700002)(52116002)(53546011)(38350700002)(31686004)(16526019)(83380400001)(316002)(478600001)(186003)(86362001)(31696002)(966005)(6916009)(16576012)(36756003)(2616005)(26005)(956004)(2906002)(66476007)(66556008)(66946007)(5660300002)(6486002)(54906003)(8936002)(6666004)(8676002)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d0pTaGJqZkRoWmtzalNPaDZMajZqYWI4ZFphekpWNVN6S080blk0d3NYcVhk?=
 =?utf-8?B?a0FuYlNTQ0ZqZUh0NTlFRXhuNFJyNVdjOFhjZUxNdG9VMU5IK3g1czNzeTJB?=
 =?utf-8?B?VUhXY2FqYmZORituRHlZSkl2R2MwdGQ4dWdaMGIxcGlhVXBLL3hSbkFxczJL?=
 =?utf-8?B?eG41YzdKR05vVUIwTnRDZzBQNklkWWx5VDR4QWdldzVRZTJnOEJrR3ZpbzZh?=
 =?utf-8?B?V1VlUW0wV1J2eGdiVWg5dlhVMUVmdVpvS0NrdFkyOUJ2SEY5R1FHU081R25H?=
 =?utf-8?B?R1R2ejFXZXc1Mi96bTdpaXhWZlRFL1VKbUh4bThTVFJaaUxhYUpSNEtUNFlj?=
 =?utf-8?B?RGlMK3hpUTZ5cEZFZnJGbXIyb0Q5RjdRTUNpOU5DRWhaWWlxejY1TUtQNjNE?=
 =?utf-8?B?RDlnakJ3S295V1lvK3FEZ0s1c0JqdjIwdnFyVnRvdnNHS2tZdUFiNEIyNHlw?=
 =?utf-8?B?ZEoxV0UrVFhTaDRsTGtLSG5BOEVvanlGVi91a25LVmVQSWdIOGg5eExSc01M?=
 =?utf-8?B?UmNCL0lFVFIyUTg3UXRUcDAva2lZd0J6RDR0eFpDNHN3Y0NKQUpFb0pqNDRr?=
 =?utf-8?B?TXdWT1RkbFJBckZhdTZTTjUvSEtTL2tITTVucWszenZMeUVoZzlGNkhxQUs2?=
 =?utf-8?B?NG9EZEVtVmpHc3FmdDZVaUNQek1YRC9LTW1OQ3ZLcDN1UklFMWlkSXRmLzN6?=
 =?utf-8?B?NmJmSnJBRENaaTN5MlBhVDBwWXY4YjEzN0k5K1VydkQ3eWRrbXFGL1Y1MEVk?=
 =?utf-8?B?RytEdzg2VEp6U25xTUFIcU5RalV6bjdZU3JpaVRGUzlHZnBxVmk4U1d5LzlB?=
 =?utf-8?B?NDBKTEVtV0IzODRndEdJOXBqdzVyQ0xUWkJEMkhRZkI0L0F1MDdhYTlKYUlU?=
 =?utf-8?B?UTlVRzFQSXhUdXh4cFNuNnJPaTd2K01mYTljWm1CbWxqeTNWSTAzbS9jalox?=
 =?utf-8?B?aDFSbnRJOU5kTENpUGQ0dWxnK29Sd2VBVGNVOE1yY29tSTg1LytneG40RytT?=
 =?utf-8?B?LzhUc0hickVkQk5kRGFNTURYRjRqY1lVSEQ4UTZGSHZSdnl2cnlDdDlEdlBh?=
 =?utf-8?B?MmNOdU1XeG9CbVoxb2x0eVlWRzgwdGhlRTdkMVptZmdFbkFoRU9iZnpDYk5W?=
 =?utf-8?B?RktETjcrVjV6RE9XTnpLNXNpSncwNTdrS3BNaVI3ZmNXOU40ZjM3RTlqMFpH?=
 =?utf-8?B?ZHIzQ2wwRGIxeHhOOVh5T1IzQ2lOeGMranJZMXhPMFNTaTd6dDhLS2NvS2Vv?=
 =?utf-8?B?a1haaTQzYjFJQm5UcFFQdlJNZUJaWVc3YjViVzcxRUVidnpxUExpc2hrVEV0?=
 =?utf-8?B?Q3lGVFhMNGZhUENhOUhLck83dmlJWE5mdEpreTNpQ016OXg3aE1hMGxreDRB?=
 =?utf-8?B?MDhhZ1JWRElLeUhCYmFLS1U0OEpQRnF4STY1ZUhuSlFlc3hNVEVZV3N5UTNF?=
 =?utf-8?B?cG5KWjNuOGZ0cFZCY2NpVnAySUNJR2FpRzV1RVg1MUl1WkJ3STM5U3JuSVpT?=
 =?utf-8?B?bVE5WUNDKzFsQVZicVpBREpSNVg2RytoOWFXUFlVTnlQd09VQVB1VTNucHVL?=
 =?utf-8?B?RHRMeDdXUnpVYTc0WmVEL1BwVWg0cnUxaFVPN2ljUFVza3o4L3JmbkJxeng4?=
 =?utf-8?B?c2ZUUHdOY096dTZrOFoyWTVYOGFXblhBNU9kWjFvZFQ2V3ZWZXlRSXpVVjhZ?=
 =?utf-8?B?dTU3V0hpbXlnRXc4cmkrT3lPUFMzNldiTUlMNnRZUG1yeUgwdEErUHlicUM0?=
 =?utf-8?Q?5E9ACn0UabZhoEfYQyjRh0EoKlTHikOZlgghSE4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 432869e5-8e61-431a-c2aa-08d92ab3ce75
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 19:30:00.2781
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SB1+LAi63B1/9hQP2efpobm+B1HlhnolMjSnx59Ju71LNbc7FUQkt5TN+YAGtZvv3+5dRrwGc9n7p5EBVgZrVM0M6/JIK1wRmIY7D6SJ950=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3706
X-Proofpoint-GUID: ghuAzhxYiSRaSLncYTAgXmMfJvpEtbW-
X-Proofpoint-ORIG-GUID: ghuAzhxYiSRaSLncYTAgXmMfJvpEtbW-
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_14:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxlogscore=999 lowpriorityscore=0 mlxscore=0 clxscore=1015
 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106080125
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-06-04 8:40 a.m., Bruce Ashfield wrote:
> On Fri, Jun 4, 2021 at 8:37 AM Bruce Ashfield via
> lists.yoctoproject.org
> <bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>>
>> On Fri, Jun 4, 2021 at 8:27 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>>
>>> On Thu, Jun 3, 2021 at 11:35 PM Kai <kai.kang@windriver.com> wrote:
>>>>
>>>> On 6/4/21 11:22 AM, Bruce Ashfield wrote:
>>>>> On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
>>>>>> From: Kai Kang <kai.kang@windriver.com>
>>>>>>
>>>>>> Replace hardknott with honister in layer.conf which aligns with
>>>>>> oe-core.
>>>>>>
>>>>> I had added this back in April, but apparently didn't push the change.
>>>>>
>>>>> I also noticed that I've been updating the wrong branch with compatibility.
>>>>>
>>>>> That should all be fixed now.
>>>>
>>>> Hi Bruce,
>>>>
>>>> Thanks. I have seen your commits.
>>>>
>>>> But 3 items in LAYERSERIES_COMPAT_realtime will cause layer index show
>>>> warning:
>>>>
>>>>     WARNING: YPCompatibleVersion.name: dunfell gatesgarth hardknott:
>>>> length 28 exceeds maximum (25), truncating
>>>>
>>>> Could we only keep the latest LAYERSERIES_CORENAMES (honister) in branch
>>>> master, please?
>>>
>>> Nope. It is compatible with those releases, so they need to stay. I
>>> see no valid reason to be limited to a certain number of characters.
>>>
>>>>
>>>> Or it set in oe-core's layer.conf:
>>>>
>>>> LAYERSERIES_CORENAMES = "hardknott honister"
>>>>
>>>> we just align with it to keep the latest 2, please?
>>>
>>> That is just as arbitrary, I'll keep it as-is.
>>
>> I took a quick look, is this warning coming from the layer index ?
>> That would be important information to convey when sending changes
>> like this.
> 
> Apologies on this, I see in the follow up email you did mention the
> layerindex .. I read completely over that, and had to search up the
> warning myself. (my fault, not yours).
> 
>>
>> That being said, it is a longer fix to get that warning changed, and
>> I'd rather not break the index, so I dropped to only the last two
>> releases.
>>
>> But I do recommend that the layer index be changed (if that is the
>> cause of the warning), since we shouldn't be adapting to the index ..
>> it should be adapting to layers.
> 
> This point still stands though :D

Created:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14426

Layerindex should allow longer compatible version names


../Randy


> 
> Bruce
> 
>>
>> Bruce
>>
>>>
>>> Bruce
>>>
>>>>
>>>> Regards,
>>>> Kai
>>>>
>>>>>
>>>>> Bruce
>>>>>
>>>>>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>>>>>> ---
>>>>>>    conf/layer.conf | 2 +-
>>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/conf/layer.conf b/conf/layer.conf
>>>>>> index 007f578..8ae67ba 100644
>>>>>> --- a/conf/layer.conf
>>>>>> +++ b/conf/layer.conf
>>>>>> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
>>>>>>    # This should only be incremented on significant changes that will
>>>>>>    # cause compatibility issues with other layers
>>>>>>    LAYERVERSION_realtime = "1"
>>>>>> -LAYERSERIES_COMPAT_realtime = "hardknott"
>>>>>> +LAYERSERIES_COMPAT_realtime = "honister"
>>>>>>    LAYERDEPENDS_realtime = "core openembedded-layer"
>>>>>>    LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
>>>>>> --
>>>>>> 2.17.1
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Kai Kang
>>>> Wind River Linux
>>>>
>>>
>>>
>>> --
>>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>>> thee at its end
>>> - "Use the force Harry" - Gandalf, Star Trek II
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II
>>
>>
>>
> 
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
