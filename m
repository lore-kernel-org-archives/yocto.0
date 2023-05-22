Return-Path: <alex.stewart@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC5A8C7EE23
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 18:35:25 +0000 (UTC)
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web10.3067.1684780521401337530
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 11:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=OFV+FixC;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=450637220d=alex.stewart@ni.com)
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34MI2nlB024938;
	Mon, 22 May 2023 13:35:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=message-id : date :
 subject : to : references : cc : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS11062020;
 bh=8v1QS8NokRIXnVbRSpUSqTWct4H4NKdo18MCGDOHxpM=;
 b=OFV+FixCjo6Ws6BkmZIjZigjJg7MVJs0SXh1sSrFMG2xzf+rxbZG4r4JPWTey9OLPnRB
 5Ntf2oCMI9iT1lvnjsghrQCzzM5yG0pu8st5CPag0EadqgMBfgtSnAnToeb9/3yBLhUE
 m4UL8XkQMH45LgKfKjx4Wh0UT31KxsOt9tAguOfiukNxLBwfYCt6v9F+bg2Ixe9phl3z
 lHJ1QlHpeOHbkt2S30LUSMJ3o14Ub3ne/swUM23fgUPHNHOHaVPXYRqwdFWXQ32p/53j
 GxKI14MMt4q6ZBU7N1mh+0bkyq9t5UySX8adTR+Fl8d3bvtLANs0Vn8Lm6gstLEm6D00 tw== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3qpt9ckrh3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 May 2023 13:35:19 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=la+GninUE9/lAwePmB+CzdITW/IKMpxMKr7GYvfHQ3uGfVFpKWxAinWOytewZc6kEr771fPB3xBT6YAUiyCa9pBdw4L0SqJzwLlOG5+UqYFfHNuFTFk7YSg9QoRqLhyTQo6AaRqZiuq86cqOAubvyPqPpya91Z+qhn7cv1MF3oX6Ihux+kzJwyBuh5GsT0jT0dD4gMKFMb8iM2I6MbNMU/gEXifB60Nufq/wYZ5ptUeMX7mAPtKOdpteSze9aiB25h2a0lGjydg1OK2JV5/GC2MeZM8ebqCyDlIxhuD4ZJESndYx2DSeAuaGC6ddJnBbwtZJGwfYuJo+gQNTOAGrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8v1QS8NokRIXnVbRSpUSqTWct4H4NKdo18MCGDOHxpM=;
 b=eABFDOPHMFGTpx2Sv35tB6ALqG0XpnfYSdXVIAOrdo/rIKHx6xYFBzBey3kG1q0RA5JV3SiJLnOU0+IpNQOi1wmQuOBhHVnC7RiHOAjOZpvHD51g0M1HluayRM+EjpxXbXyVR+Ic6nHCr0E5zvH/Uk3kswtbQmVQmuPBVHbEYwGJ2Ls9cTFxFWa1rj5r4822fX/BrY/JtSKlaJr8VqKHFwOjcCoiBONB7FB50v6QE3t9NPB0itFEwWB0vfpUW1iZoCv+1mtp/pNpHeZ+GeP6nTqNdoXaseYopZURDBcHsJEo/3NIPj4tWnOdce1DgiS7i3VmgTFdB8aaLiO6wE81sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8v1QS8NokRIXnVbRSpUSqTWct4H4NKdo18MCGDOHxpM=;
 b=Lt10z+mdZDU0euXqyRFoSYMjdx/Tle8BQQ1+/GUaX1SK2NTNwKqKZNvVBUQQzDCzNAVgaPPs3Ve5QlyIll8NYQy2rUclng1pAqJp5s8o5X7ShG1sWtIp7mkUXPKFKTp50u1PVjC5gcDJjbfSVV42kfdud7Atx0sOrcq/miwsR+o=
Received: from SN6PR04MB5151.namprd04.prod.outlook.com (2603:10b6:805:90::25)
 by BY5PR04MB6423.namprd04.prod.outlook.com (2603:10b6:a03:1eb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 18:35:15 +0000
Received: from SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::13cf:3f61:9dd9:14c5]) by SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::13cf:3f61:9dd9:14c5%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 18:35:15 +0000
Message-ID: <003e7b9a-5633-1716-44cd-99353fb696e7@ni.com>
Date: Mon, 22 May 2023 13:35:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [opkg-utils PATCH V2] opkg-feed: Fix adding feeds with same name
 as architecture
To: Petar Koynov <petar.koynov@ni.com>
References: <20230522174815.1110222-1-petar.koynov@ni.com>
Content-Language: en-US
Cc: opkg-devel@googlegroups.com, yocto@lists.yoctoproject.org
From: Alex Stewart <alex.stewart@ni.com>
Organization: National Instruments Corp.
In-Reply-To: <20230522174815.1110222-1-petar.koynov@ni.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM5PR07CA0064.namprd07.prod.outlook.com
 (2603:10b6:4:ad::29) To SN6PR04MB5151.namprd04.prod.outlook.com
 (2603:10b6:805:90::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR04MB5151:EE_|BY5PR04MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: d4734273-386f-4d42-c51c-08db5af3493f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FB/ZCVLceCE+qB+Eb8BqSXQy2dqJncK458+eF1Ka/HWicFKtQmhxClDlvgOml4oCSX7IdJMwGlhaglL5oImPckktCfuc9S/9IDDBwf/s4cSz7l+SY4SkF4zNBWahVLb9pfh8ckH9ipXuQ2KO4/Vad/jJGjBw8K1fsBsLLhY8dUP4qxnU/1km3WbjgqsNPRUoEwHz/jVw19ViIZMv/xYxllq1tKuwtYAX0o+lwZAPCk33h8NHwr2iJPcAv7n2uNWMAJ6Gl2TT10imgZrEmGMQ5lbfk95w++/3QVVVYFpSfTDkgIzC8aoA7Yeo4Dnw0DC4kQFMmN0MEyXM96Aplglzai2f6zA2+gNQkNePClf0uRet0Lb1VMo5I4mGOv+9Rc2fz95I2KEWjICJ13CPzTlCIS0eHSVm7vSh2hDB8KlhjxUkSzHJ5ouepmsHwBElMWeStBwpVJfOY2tMacmAIAm1yolvU7vxFcKElCf/nc8hIXMZMImZ5u5Ahbt/+mnpXeSY3dlTZ2TnZ+aAZBquER/iTiudi1Lmu8Fl+f5SSB1zV/WIfpEnrDx1EXIUMFNB0xx0csWHpvoOWLJ0k5xaLHg35l84tT9Z36q92D3Vmlz7EtLMD0+9poZKDCUMpH0Uv/LKCKCFIvzJ4lw1q5L41v6k8Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5151.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(136003)(366004)(376002)(39850400004)(451199021)(186003)(53546011)(316002)(86362001)(26005)(6506007)(31696002)(6512007)(2906002)(8676002)(8936002)(6862004)(36756003)(44832011)(5660300002)(36916002)(41300700001)(6486002)(478600001)(37006003)(31686004)(38100700002)(2616005)(66476007)(66556008)(4326008)(6636002)(66946007)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RTRJd2xRaHdYZVN4Y2tGb0h4enZlaXpNNEs3ZGtnUGxoTU1VMWl4QjMyaGR5?=
 =?utf-8?B?TVVzV2x6R3lIRDBLVzdiV3JhYUZJQ1A1QnJXblNITU9TQzFDbHprZkFjeXZM?=
 =?utf-8?B?UHJKOTllNkh1VmVrWXl3QkgrdkxWN0w3NmcwdFYrVWZHeDJhNnNGZG50QzV2?=
 =?utf-8?B?b29uK0UxTE44VWUySEhHeVR5bG5mNUJsNVZhc0k4eHJYRkFEMmxJOWNSeGRw?=
 =?utf-8?B?T3NiMmwzcXZIQWpMMmlTaENLVmlmTEJxMnJlM01nUGhUS2RJcUVGQ1hDRDRo?=
 =?utf-8?B?L1hTRHhVMXhJbUdBNG5aNzNKd0NaL05MUnJtQXVaVnYwSldzcnR6THVjMVZS?=
 =?utf-8?B?VWl1ZWRpc0syY3dCRmlnY1FaaFNnTExIV1dXbmhoMHhyV3VuREg5QWo1VGZY?=
 =?utf-8?B?NHRESGNwWGFURGQybms3aTRSb3YyMTJyOVM4eDRFOXJYcjd2YnVaNzhqRito?=
 =?utf-8?B?OHhtWDk0UkIzUFdReEo0alVsMEJ4NVlOMkVqOU8zamk3NkdBVlJlMTVKbDF1?=
 =?utf-8?B?amtjcTM4TjlSblJHOG8rNVJqT2pjNzA5MzNWdDlRN1IvYjFuRVFpa084TzUv?=
 =?utf-8?B?UXFPazhQSUc3ZkdZY3RuS1RsRHd2aXR6dFJXYjUwUkMyWWlDZmNWeXlwRHRy?=
 =?utf-8?B?QTVybXFpYVh2WFduVFRSUFkvTnVHTCtiR2lvd3BZUS9sUzZyTUV5SDVYK1hF?=
 =?utf-8?B?bW0xVVpxUmsxM2xBR2tMYXExb1k4S01sdVVwQjNKdnBicUFHbHZjenMvVEc2?=
 =?utf-8?B?UlJaeHpIRXI0ZzRTdkplVjdkNGhUUTNHSVptenE4Y0VBbktTQVJVTVR3RU53?=
 =?utf-8?B?UEh0bFRic200UEZQZ1ZYNWlWaDRQejgrMmJrUFJwMVNTcUxrTXM2WEl2OHA1?=
 =?utf-8?B?c1JaRFU4SW5zdnNMQjcxNDlka1I1TGZ3Y1dtTkhxZkNuVEkzQXRrbDJ4bWlj?=
 =?utf-8?B?dENYMVgySFFwRE1VSDhFRmp4d0tsb3B1cFdrTFFHYnovdjB5UUlqdFpBYkJw?=
 =?utf-8?B?b0YwSzRNYjJWQ3dWT3Zoc2EwalFCSzBMYnJyNDZlL2F0WFhES1UxeC9rNEhs?=
 =?utf-8?B?WjR2K21sL2ExdFBxNEtkVVgvc2t2ZEJ4ak0yVHdmWVUxRXM1SDRVU0YyTmRY?=
 =?utf-8?B?NlpSK0U1ZlNYR3cyODlyWWxDL0t6TEtLS1hBcS91VmRpZTlMRk9wUjJBSXJj?=
 =?utf-8?B?dTE4b0xCNjJUS2lmeGM0cTllMWJMNS9nanpHc1ovYmpPSENXb3ZqejFVMnlE?=
 =?utf-8?B?ZkpwQ3h5anZLdlE2N0FybWRMbHEwWTVrV1ByN3VsNDBQOHhTNnA3OW1MMG1o?=
 =?utf-8?B?ejNkZ3hRTFo5QnZJaG5oSmxoek1mVGtXYjh2NVc5K3Q3bFYxV1dlaExkR1NZ?=
 =?utf-8?B?TmMxeWlvKzdmYjk2RWhIVHo2SnRCWm0yMVBxMWtxMFU5L3NvU0FlZWh6cldP?=
 =?utf-8?B?QUM2RHUxbFY4b0Rhbkx6NHhXYTdXdVhHdFVSc2ttcGVUWS9tS01tZ1ByTGNJ?=
 =?utf-8?B?TFVOQkI5d1JSY1NhKzlUS3gyS3lqQTBudDJMVmJGOGRZMmpucENsV29FQXJF?=
 =?utf-8?B?cEVzVEExejlHSlFyUUFIRVBOR0NiTWZzQ250ZmQzVkZRVXRaKytHZlBVMjhW?=
 =?utf-8?B?QlhIMnZDMmw4T3pDQzhjWFo0THJZNllVTjBGZ1ZJSld4ZnFuMkpWVmZBeE51?=
 =?utf-8?B?T1RpM25nSlJLYlo3WFhxd3VlRXZWS1dHdGthekFPcVA5UCtxaGV1SnBsd0Ru?=
 =?utf-8?B?bWg2NUIwRmxnOWtvY1BKNXl3ajZUcVNsanN4UGQ4L2cwWEc1T0hLVEoza1h6?=
 =?utf-8?B?N0lLdEFXOHZMdzFkS3NwQVdDT01TdDNodllYVFN3aW1GNTRjelBORlh1SlZ0?=
 =?utf-8?B?QUZaV3JZRkFrYlU0NlBraXRxeVA4S0dzamVrNklyNjBEKzlzdDMrOEZpcmZB?=
 =?utf-8?B?Vythc0RkL003TTJiMitmb0owT3Mrb2FPbjNPTlRQNk84Q2R3ZGJ6aTVBNEtO?=
 =?utf-8?B?Z25JVk1FQ2t5TUI4NXkzUXE4WEtBc0IrUXNaTFp2ZExFdVZVUXFzNXRSWjFr?=
 =?utf-8?B?WVNUcVk1Q1U2cFg1MWs5UnU2OUtEdmdCYTREM2RaY2MzYkVUMlFTT0I1VnJ2?=
 =?utf-8?Q?SrSZelVdFiJaMb85xZs+C4ruB?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4734273-386f-4d42-c51c-08db5af3493f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5151.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 18:35:15.7935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jutAVzKpNVZ0GplmUqEW1RVgCU5kaZ1XYypWrTNN7HJwIZid+DOYOaQZxvXBq6vKUEKvSI+HDAShFTlJ4FftXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6423
X-Proofpoint-GUID: o0BteVCodKijBS09akZxAn5Xd8vBw3oR
X-Proofpoint-ORIG-GUID: o0BteVCodKijBS09akZxAn5Xd8vBw3oR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-22_12,2023-05-22_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 spamscore=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1011 lowpriorityscore=0
 phishscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305220157
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 18:35:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60086

ACK; looks good to me.

I'll pull this tomorrow, if there are no objections.

On 5/22/23 12:48, Petar Koynov wrote:
>          Attempting to add feeds with some special names that match
>          architecture names was returning an error:
>          "5   The named feed already exists"
>          Make sourceTypePattern in createFeedLineRegex only match
>          feed configuration lines src or dist
>
> Signed-off-by: Petar Koynov <petar.koynov@ni.com>
> ---
>   opkg-feed | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/opkg-feed b/opkg-feed
> index 25ef879..36d4463 100755
> --- a/opkg-feed
> +++ b/opkg-feed
> @@ -171,7 +171,7 @@ createFeedLineRegex()
>   	#	1 = full source type with any quotes
>   	#	2 = source type without quotes if quoted
>   	#	3 = source type if unquoted
> -	sourceTypePattern='("([^"]*)"|(\S+))\s+';
> +	sourceTypePattern='("([^"](src|dist)(/gz)?)"|(src|dist)(/gz)?)\s+';
>   
>   	# Feed name capture groups (4, 5, 6)
>   	#	4 = full feed name with any quotes

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com


