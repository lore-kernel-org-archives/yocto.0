Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 469ACEE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 08:13:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.53879.1694419994521950313
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 01:13:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=XyQzSxdZ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=76185ee191=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38B6b8wP011420;
	Mon, 11 Sep 2023 01:13:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=YK6eFympiqEak2j0Dl2wSdP7v+ukDKE6SV0iDPI49iY=; b=
	XyQzSxdZ/eJ72j6S/hLlQT8scUVKBVw3RkGRkCJaMC1Z8/IzrhV16AAeO0tpSjpS
	kEPoQr5dYv1WVQQiwfZ1vvB4Z2ZEFL2pQucdq5BSfKII9pQsYSTb34G8Lylmp8Ld
	VX15u4VhO1P93T0jQWjFWQPA+bdweKl2nf/dIzSjyW1seLY/2WGqOfVvuyIjT8W3
	B+pMDVXDDC4cdQf6l2Rp2ZJCt4NVLU6CH8cmrDkdbep3FOImhG10MJ1f1pCmv+JM
	b/Jq7tcl1J/XeHW0/C5EMprH5GvR06dYl7MMSw8Rok1SfYkzdK9NZDNAXuvsq+Ao
	CCacMmXeNbwDE/E0+Pzt5Q==
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2042.outbound.protection.outlook.com [104.47.74.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t0m0099n5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Sep 2023 01:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AXKKjQW9x6NKzKJdMCVfjYiujrvQ4vYoLRift7zjKmEfCYwnmr158FRcaU9ORQvt+QHm1+tmW0HxubjT427++52KhWxM+1PowCEk4T8Ws+5ijD7RbQPqqGIFJT7/dtSb+THjoWXuD9koJdt8D/H0IJvA7hj+FUQ/ufTeP+WQlNWvhvTHzMpCoqkcQ5risk+rOBFSUeP7HZnyRO21lrAkIjTgF8ttfSZ9QFdIyp2YqdECB+IeGQc7jTjReLGbu/UUzZHFvGKbAL24MZNv+tACJ1CW71UzH7mLH/NIl4mtufJcouyKFHJqdzFs22PZ96UjngRhjg93JpsXeZz3hR2t7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YK6eFympiqEak2j0Dl2wSdP7v+ukDKE6SV0iDPI49iY=;
 b=MneLYbN6u4uz7lAMgmSvAFSyB4O9FVTt4PxlXP7V2pixrz7wl/1TCM/nj3VrZPZbHHGnYn3em1dC9y3XaFu79AkxBpbm4O9ICsg6wlX1oB15ABMyFBLrH6i80T5JuhYEAkJE51jgoRaFcG7Yt91sGrCnOvTqasufpVQeJYeW9SEsFHDCtGnjJp4zWaF7KD1cARMVjTOQF4Fbkabq+TPX85rPR8viXJ6iFq8D8zE6C1f/ZDFpZqfzm9ML2H0IMkDCD0rbNETmP4Q39HJ74xNNDSA2zWuvJZzmyuO/n68FaskBJAIZu0XjE7oy29q4wLbyq9EHFe6amA1nVozIMPjnsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Mon, 11 Sep
 2023 08:13:05 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::da88:58a3:bc6b:2e3d]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::da88:58a3:bc6b:2e3d%6]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 08:13:04 +0000
Message-ID: <a523b68c-1de6-e1bb-8f61-4879ac4a7453@windriver.com>
Date: Mon, 11 Sep 2023 16:12:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: me@linux.beauty, yocto <yocto@lists.yoctoproject.org>,
        yoctohelp <yocto+help@lists.yoctoproject.org>
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
 <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
 <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:4:197::22) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|DS0PR11MB7766:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aca3f17-fb17-4a89-528a-08dbb29eec89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b8xkN+FHHYg65YC8aaCMmjPnfDNu2X2cMHR+lH+H0SEr2s/h4uSwNBaKJ4PaCxlYKNg/puesN69GST9JRzSRx5ncp857+TuVo9rPLEiYThH7fUuHrqa4cBSgz8A50FCOmegFUJw6byRbwRhJbJyAS6zWCydG3rW4vcX8vYmzhyeChPA+/p+fMA+1UIw9w6DYJwcPMxAntqiiLmFcgB7jFgl/1OBn6orvQnhJeWV6gxFGzXE4vXb5Qf/W1YUkFvqS6Blzse4O+eo0dmkJjNXy7uJDcIZtOVcOSvIN9U/PYWjvavQpUeev+KZTAaZHwvj3zdaGXOwbm9Vz2A6byyNNOHctX3IGI1jDmCAgC8bW38Rx8sNXgymWIcsiOQtzQ9OJi1TUkLQyKyyEw+FWCeQYehwRnMICRmCIRwdEGu/72hvbKBKq65VmNtO/edbU82EjQOLbwooVm+eRIWtwV/bS1xkY2rjmJTQGwJJm9HxjoQ8JIeF0ywRIV+pqWFulKE69tLklM2qd3JF9igZcSMv4B5sSZEBftdbx5G2qoTIXDlmKWdynulpqQsClbDUMYIt/My8/zzFuqH4rB8gp+xTHjxW/yMbW7sYb6Ubl5XtcqMmRCp1xlg0jvIwNmWWCTE+Jsrs7WgezHxCqbwZvuapdBMQxvkZVzI07qeoQ0qitMso=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(39850400004)(376002)(451199024)(186009)(1800799009)(6916009)(2616005)(26005)(31686004)(36756003)(41300700001)(53546011)(86362001)(31696002)(2906002)(316002)(5660300002)(83380400001)(8676002)(4326008)(8936002)(38100700002)(478600001)(6486002)(6666004)(6506007)(6512007)(66476007)(54906003)(66946007)(66556008)(13693001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bHB3bTdrQzBZdElndFlONUF1SUhHS1FCOW1tMlNtN0hyZ253WmJYaU1nSG5o?=
 =?utf-8?B?UnJDVklWcVc1dHg4Z05ZYjdLTUZYeW4rdlF1cHhmS0NJaktWMk4wRjJ0aEZk?=
 =?utf-8?B?ZmxURjZJOEFBMU0wbTI4TDYzR0Q3VVpndlk4ekw1R0RPWmkzN1RYNHJlVk1T?=
 =?utf-8?B?cWJWWlYxMjUwdWgwWkpaSDU5WTgvZVZSd242UmlodEV5WUJuUmIwUjdSVXNN?=
 =?utf-8?B?MW5hejUxVUQyRFcyNk0wb1RBd2FiTWc0S2xGU2F0SHhBcVN1K0daQnBNcmRt?=
 =?utf-8?B?KzJCeG0vdzA3d3lnL1hEcVN0NlhlVTUySHIwTWlja3VNbEhldktOSU9VOWVJ?=
 =?utf-8?B?QktkSit6UkJpeFhDMHVzbWpLZ01sQTdxSzZ2K3FQZmkzaXZNQnBlTXZTMlR1?=
 =?utf-8?B?Z2JISkV0UjFQRVNHN1ZuWUJnMHJXRSttbEs4WG0zbitlbHBBeDBrWEJqSEFz?=
 =?utf-8?B?cmxTbk85VnFqMmh4MzhRdUJsWm96b2JDT3ZVbHNwU2FhZGFtb2JaWjZpNlhM?=
 =?utf-8?B?bHhFSWZucFdlN0FwYURCNUlURjB2QXhxcnFiVzZiaXk2NWFpR3hPUXlxNndx?=
 =?utf-8?B?ODVtR1RkSFE3enhGWW1vWVhBZURFaE12cStRM01BSHVkMmhhSEs3eEU2M3N4?=
 =?utf-8?B?MXZVdUNvUEovL2xEbVhHRDZyVE8reS9hdkxXWUF4TlUrZFdsSHV1L2FpWUhG?=
 =?utf-8?B?MW5PSGNYUllVbWhRV3ZTeFdHMU9NeVdXSmxycS9qK0ZQS3lJNlJuaFU3LytU?=
 =?utf-8?B?eC9GMUY2dEhDWkRzR0l4VDFmZDlTRTBrMndUa1NOTTZkODc2TThUVkZwZnlD?=
 =?utf-8?B?WXVuTXN5NklkMDRnTVRZL3FjR1VUY0Nnei9sdWVGdFVkRGpkYnViVkYyckRO?=
 =?utf-8?B?U1FiYVdvMEo4aFZqT3NEUUkyQ2ZDZ1RGQjlDZEhpcDBUc0JoOVd5QStlTVRO?=
 =?utf-8?B?ZVZBTUFqb2w0L1YzSUtBZDNYR096TUVFRHFUODRyN0dCV0hSOXlOdW9hVHpl?=
 =?utf-8?B?T0s2bGF5WlAyWVh6cFpZZEp6ZGI2Q1k0bUxHYjVUSjhXMjlDSmRrQ09MQ1Vk?=
 =?utf-8?B?TTEvb21XYzdjZTVaSTJLYlNjY3JXcEJBYVhzL09zNzJVTm4vQWpoQkdNZE0x?=
 =?utf-8?B?MGpDZW5BRzZibzhpY3ZyaWQ2a2cySmFSbTBZV0FLbGwyWVhhcnVyZ1REaUkz?=
 =?utf-8?B?K3hnVENnc2ZBWmJNcTZxY1RvUjg2NFJ0RlpuNjc2MUx3Vkg5c25jbzJLeXZE?=
 =?utf-8?B?SVEySEQ5eUtseW9DaThxNGhNdVZCZUFxM0ZmVXQ3djFjQng4NVNaRnhEbWRm?=
 =?utf-8?B?WHBzYTZDdkpjUENBUklObk5iSVpUMjNEdVNoMXZ2dmNjWDVFbUtLQnpONmFr?=
 =?utf-8?B?UksrcHcybHFMYkJqTXYvN2lFVlRnczZHYnQ1cnBFV3dJRFkxUC91Tnppbkt4?=
 =?utf-8?B?UFB4Z2h0dm5sMEpQaWxrNW13MTJKeFBHOStBQWk5WFNXQ0VnS2xuTnV4bGJW?=
 =?utf-8?B?TDVxMUpqdFVKaWp1RjhwNDY3OFBsWStmZ2xSOTdCQjRiWFFicXJCbjN2dW1s?=
 =?utf-8?B?a3NMNy90VVRNNmk2bTYvNnRkOXZmSlp4ZEVOR1MxOERjNTVlTzdZeUQ4NUo4?=
 =?utf-8?B?OFFvRWVxUVhTUzlnNTNITGpKZDl1TEJaNktYTDdrZUV6ZFl5c05mRmFKT21i?=
 =?utf-8?B?U1dpM0VWYU9aYTU3UW9sYitHVm1YYlY1bmJHMGd0QTg0czZZdmJYK01Vait5?=
 =?utf-8?B?emw0dWxEcWJka3YvOEk0YU8xUWxaNmh4cDRhbE5RUVJqYzJYZjRNTG9qU2Zj?=
 =?utf-8?B?OU1yZTJJb2JuZ1A5alNkMlMva0MreUxrbnA3SHJvYnNkVWJSa2FhbWpFSUxh?=
 =?utf-8?B?eC9XUERTR05nTE9qRC9HZUxsSmhLeVZUWlZKWUZNVlhlRVBNNnNNQlJmeExE?=
 =?utf-8?B?WWZzMzhySVlWWERxS1M4cWVVRENYK3kvWlJlWFBaVEdlallxNnJXSHIvb0Ri?=
 =?utf-8?B?U0VFK0FJK2thUjFRa3JQYjFOS2JaM2FFQnZiY3I3TjFpRGM5MEc1c0QxWWh6?=
 =?utf-8?B?bGgzVTYyd0RIZzBaNzFDQ2ZYeU80WFRLL2xiWEY0SUNRcnE1U1djNkIzaVBv?=
 =?utf-8?Q?j1qx7YP1GbInF2oIgM34cveqC?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aca3f17-fb17-4a89-528a-08dbb29eec89
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 08:13:04.9037
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZHlO3l/CByTzJQYJ2uT8laGngKbbuM8e6UH75TkZ5mcioYdwlc92Q95JXsPba/231GggY/VXpLLIpj+JOsUJJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
X-Proofpoint-GUID: L3MnkjXenCcdN3qzA9mciFYqGNk8sbTU
X-Proofpoint-ORIG-GUID: L3MnkjXenCcdN3qzA9mciFYqGNk8sbTU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-11_06,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 bulkscore=0 clxscore=1011 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=800
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309110074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 08:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60969

On 9/11/23 15:36, Alexander Kanavin wrote:
> On Mon, 11 Sept 2023 at 06:22, Chen Qi via lists.yoctoproject.org
> <Qi.Chen=windriver.com@lists.yoctoproject.org> wrote:
>
>> SSTATE_DIR and DL_DIR are writable. Sharing them among different builds
>> owned/controlled by the same user is OK, but sharing these writable
>> directories among different users does not seem to be a good idea.
>> You could consider using the PREMIRRORS and SSTATE_MIRRORS.
> This is not accurate. SSTATE_DIR is designed to be shared in a
> read-write fashion via NFS or other over the network filesystem
> (between users on the same machine is also ok), and is heavily used
> that way in Yocto CI.

This is the case I referred to as 'different builds owned/controlled by 
the same user'.

Say, you share the SSTATE_DIR used by Yocto CI to many people via NFS. 
Then, a 'rm -rf' might be typed by someone by accident, maybe just 
because of lack of coffee.

Regards,

Qi

>
> Sharing DL_DIR is less important as it is not that large, and
> downloading does not slow down the builds that much compared to the
> the actual build (and only needs to happen once).
>
> Li, your understanding is more or less completely correct. The
> difficulties are mostly in scaling up, where you might hit the limits
> of how many users can be served at the same time.
>
> Alex



