Return-Path: <alex.stewart@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40A06C77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 16:01:53 +0000 (UTC)
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web10.1011.1684944111216858496
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 09:01:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=MObameP0;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=45089424c6=alex.stewart@ni.com)
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34O9sdLM008305;
	Wed, 24 May 2023 11:01:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=message-id : date :
 subject : to : references : cc : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS11062020;
 bh=LGgNoKujX2+mWFvw7PWElFfw3u/rRc8JghKDBF/5ikM=;
 b=MObameP0C1dGdmtUPZDyFrIDLXd4nDse+lCHyF0QRtnWRnTT65nuUgWcTi2Tl6lTP5R5
 0q+ZuamKnceN/IDFXs4hUXNYPMt8YmJ/tQDTSf9+mhS9hSdLllUtq80atoqk1FxqUqYh
 A8fKXskkUqi+BBGPzSv2hJrb6aDws6eeTg44YSK3budmytrfI/HQwbmsdQhl+PQJ2+1t
 Sftsg0r8IKiUrKFewPGyLErM9mG3OB/3CdcmwIerYX0xbR+zElzu1tg9l7IoI5g/7t7r
 s7r1qc/paBUZEbF5joj7ojqV9sHWU9VzH9hH6AdNVzkshBPWU0G5vsxNGBYfDcPSKDu7 ZQ== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3qpt9cr900-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 May 2023 11:01:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTddjIa2Y6kqNS2lLFuOg3KyT5ANTdude0UEZvSFrEqrnDw4ma2SfHEn8K1TLslasLwmzednO4n3CGtva6lnKir7oHo8CLC41lXWAgxWmcnk76Haf+LNhbIlV4MD5pF2IV7wE1JZ1EvhRKqUrJYBJyOg0eHJJHk+Pk8nQihM+rkmNcrsnX1rFL76chEKN0ec/oA/Q1M63kU21jTLLGElKB9MlOfjmC+AOPvnwXMR2yVbdxxdRl0EZkO/L2+O9VkKBOYDJrdJZRfxFYTKHUOPxzMS41X/4kue0O7h0LC2l4XtCblboGHLfJob65wsod5fcKfoALpgqREJjBv5Hr7m5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGgNoKujX2+mWFvw7PWElFfw3u/rRc8JghKDBF/5ikM=;
 b=E50IYiXR3eCfAZVY1sjrewZerIjFFzV3qGG+o8AujzdxSgo4v+hWF2BPzrJfy29r3/cUr8NzEMO0cg5KQ0cdSBjqbVfjM2u9eUCeK0L2Sg/HWyYYzXrwfFLTlBJspdd7wSihA+a4BljO9OEnYG7Pq4usWtFDYPfHiwqzYKEVwT1F87J+I7BDn3B4TPTgkHQ2CMA7oQ6uIWnMegtEYp+ypdsjSmQV0OcWtj/28R3QNdf6iVF/p9iL5pl1IcDcsdeqZPxgc4vTYi03CcBNzID9SjSCyOOZ+8P94GTJq06j0KPzu5qnbGYPEKjqDZN44G29qNYPvig9BRIVMKae7nyk6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGgNoKujX2+mWFvw7PWElFfw3u/rRc8JghKDBF/5ikM=;
 b=B4GjtHPTu9Q3Jp3wyzOMntwohHnMh10vrr+t6ql4wV3l8IGwlp/sR3087YgWJowVBE34VZJEQGFJF216prkGTZlfvQHWFOhcMJ/CoR/X0g1dS4wyWs2ReHuiwXZTZ2ukC3I00DEGpQautdAL2qMSBZMpoAs9Ow0q1jX3PGr64Xw=
Received: from SN6PR04MB5151.namprd04.prod.outlook.com (2603:10b6:805:90::25)
 by SJ0PR04MB7661.namprd04.prod.outlook.com (2603:10b6:a03:31a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 24 May
 2023 16:01:36 +0000
Received: from SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::13cf:3f61:9dd9:14c5]) by SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::13cf:3f61:9dd9:14c5%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 16:01:36 +0000
Message-ID: <3f782720-a5cb-6799-9731-2df413b587ab@ni.com>
Date: Wed, 24 May 2023 11:01:32 -0500
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
X-ClientProxiedBy: SA1PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:806:2ce::9) To SN6PR04MB5151.namprd04.prod.outlook.com
 (2603:10b6:805:90::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR04MB5151:EE_|SJ0PR04MB7661:EE_
X-MS-Office365-Filtering-Correlation-Id: f04c2213-cb0a-48c0-92e0-08db5c702713
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D3djjdl/SVdKiR72IX8+3LqEG+FMwrWaDkOEOBzQvVR2FxupuwqpgIDwL3p6dgv8nmGiJTxpKb8y2YPQpVG/3+swuehwsDguNX8oL9yz95vUYIAM0IeOG5xK5WEpW5eUlvD0xuW5IEUIlRTH8yci7cRqcJsPZt4Wv3Ml5lhdyF/13Rw4YgBCAH8rAuwj4gKfXgxzF9WtS3QFrh9ktiu5KC7S+bPkfuL0hNu14/ZRYwkrG3uINCkhz5498uIDQ7sl2f4CQ1uxU96+ey1sjUeDZWBIp98JSMjKelshLRBskitIOi3qbbl1MQcsS9zYWtJrFJ0OnMxndbefK+s52YqoNhUqlfUPfAqcD8I3vyrhFbPKzqBOUdXErHiQkZpzdyLAkRvs3tpuI5+9dVZ0IhYSYwb9Ry5KlL25LYPgSAkNUdEFtgMbniF2FFRQUGSs3+BOGzqPUeILucScxpzssWfeqsF5j0+G9z0x9Ets2F0e0yQfc3+0/Yl0WL06Ud74k/hcT1M45THEvDc3s4KW+NNOe6JQXWg19v4yXMzvcOJ8nK4zqZnD352VNa37+TyzuLfz1ii80ISywqCsEqOXWWsmd/9FZueMfD6ivmZwi7dZminROx9WeZRxSz7FqYBlkMwamOAbSRtZuR1COwFchpILFQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5151.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199021)(31686004)(83380400001)(2616005)(44832011)(6862004)(5660300002)(41300700001)(8936002)(8676002)(66556008)(2906002)(36756003)(31696002)(26005)(478600001)(86362001)(37006003)(53546011)(38100700002)(6512007)(6506007)(186003)(36916002)(966005)(6666004)(6636002)(316002)(66476007)(4326008)(66946007)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cHdKcTVScm9Vcng5N2xndjhDZE92N3dhMGtYQWJXbEwyaXovUjBpclJwTk9S?=
 =?utf-8?B?NWVGZWllUjVDWmd5YW04Tk9DVEpiU0xCSUV4d0ZJMG84VWQ4blVsN29mckZO?=
 =?utf-8?B?V1B6YldMOFZvKytDVHo2dm9OYUlEOWtaWk5oZ2ltRzYyc205aUNOVUZJY1Bo?=
 =?utf-8?B?WU5hUE91MWxONnRKN3hpYjA3QVZLRXIxcG9odXZqOU1XT3FhcCtTYTBlbmFX?=
 =?utf-8?B?Nk5KOElTUXEvQ3B4ZHVtcVpReFlwZVhxeHhjVTR4ZjJONXBUY001eHRYQ2lu?=
 =?utf-8?B?STd4V3JxS0VRK3dFV2JsTWhlNmNUWlJibTZ0LzgvazdpNWNwcnoyQ3JjWFR2?=
 =?utf-8?B?bDB0eEZDaGY1VkdhRnUxWDFka1ZTSFE0aUFJckt1NW5OUEp6VXhoaElzTFNK?=
 =?utf-8?B?dTZkbUo5MzN5Q01YRVFlVzRoUEZkU2Jlek90ZktWbnBEd1BoQmMvQSs2eFlt?=
 =?utf-8?B?a0RYQ2NpNkI5bGV6OHJxcjhST1lvTDV1MkQvaG5Nb20rY3RML2pBdjFmRE4v?=
 =?utf-8?B?QkJ3UU9jQlBNZm1aZXVyUElSZCthUFZaK1ZBbG5kNENGRDFqSDVpYWJJS3lP?=
 =?utf-8?B?WVBtdmtZODEzSjlJSFJKd1haSnhkdUdUbW4zNDdjRGQ5MVplMy9TU0hNMVd3?=
 =?utf-8?B?Wk4wc1czT2p0Q1FYR0ZkTU83YlRZSURMTU05eGozMkY1a2ZaNDYyWUlYMzAr?=
 =?utf-8?B?NG1tdDNYNHBQSS8rQkYzZlhKeWoyWUxNQlcrY2dpSWNLUE44WDlTbVJyUlZv?=
 =?utf-8?B?UjJBZkVvREp3Z1JhMHRUUTdvQUhXRUNpOUdobXM3TFJPZ0tnMTY5VlhkSFVh?=
 =?utf-8?B?WnI2UmZzem9JeEZJenJoaHE1dlJreGtrRThVSEk2YkhTbzhTTXFpdThiMkJP?=
 =?utf-8?B?clRVKzBHMWsxY1UzYWxPNW5UNnJWSHpiWklsMVcxSWF6emdEQ2FOMm1oOEdR?=
 =?utf-8?B?RmdXbVF1TGI3amNqVk0rQ1NMZmtJZHRialNWZW9yd2FnWW5FL0dERVo5TVh0?=
 =?utf-8?B?MXZaaVQxYTRKdFc4a3YxaUliaGNlVEpJTnJYVU9CcnZCV1QwME0vYUNLQU11?=
 =?utf-8?B?c2FRU0VxMUJBbTJidWJ6VGVRS0NvOVBGeGJMWjN1SDI0eitXalVHSUlFbWFp?=
 =?utf-8?B?MGtOMnFaVEdSaDR4b3dnOXhhVVptVUlMV3UzVW1oK2J1WkszNU5KcXpNcGJG?=
 =?utf-8?B?N04zTXNtOU5pUWhTcG9MQ3YzUWJHbXh3MGNtckQ5cnQwcHl5RlBORjNKbjkz?=
 =?utf-8?B?S2Rkcm5iUFo1ZTk4NDhWMEtCU2ZldHVRalFZV3pYcDVycTFaQ21FS2JJbVFB?=
 =?utf-8?B?Q2gvYnQrL216dkFwVFVjeVBGWE9JZ2NHcTBtL0ZPUlV3L3FKLzVWSlVGYnJN?=
 =?utf-8?B?RHNxQXZFRFFqeTlNMEdsRlBYcjlWeWdodU1wdklmWHV1ejVMWXAwZ2hHaHVt?=
 =?utf-8?B?S1M1NWRhTW1sQTdBV0VKMWtiU2tPVjArNE80NE5CcndTV09wQUdQQktZVjFN?=
 =?utf-8?B?NGJDR2NadEloOU9mMThVZkpydDNnMWdDem0ySTVyY21FQk5JaDl6SVBIdGJR?=
 =?utf-8?B?TkF5aWF6aDZNWmpwbGk2dEVsaStRMU01anF0bDJzVDJIdEVPVUw3MnhNNHhl?=
 =?utf-8?B?N3BRZkxBTEx1Q3F5YkRMdnVaUW03WFNOY2dZYVNJbWxkNi9CbjZZM1Ura1ln?=
 =?utf-8?B?dUp5R1hOTk94WUppSWIrc3N5T2RrR2pmaUNvTmtqcUZJZGRvUS9nblZEazhN?=
 =?utf-8?B?M1JzS2hSd0M2RlQrTG5wVXR3dzBDNXpjQUdZZUNrQUkxYlp2SVVwR09lQ2Nk?=
 =?utf-8?B?bWJ1RTRpeEFyN1doYmxxb0JMRlkzNlltYmV3bS9mNG94YmNIQTdlR0FIV0NE?=
 =?utf-8?B?YjNZN0tMYm85MjdMeC9ybytNWnoxaXNXdVB4YXdZbmRZWmc1azRIbHRYUkxs?=
 =?utf-8?B?OFZnZzFYS01CV2MydHJDb0FUWEthV1BBblp3YjV3dVB5WXJWdk05d01YRUtZ?=
 =?utf-8?B?L1cvQkFXVDhnaUZjbWYxWExvSEtBVWpvTUJIZHFJbGpxWDhidkNUcG53MFVB?=
 =?utf-8?B?aWUyQXA4R01ZM2hlYUoxYm1EWlpSS0NlOEwzUmNVVjB4Rmk5amp4TDhDRkJi?=
 =?utf-8?Q?Ghm/XL9LRqePKeavm3ee/OPUb?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f04c2213-cb0a-48c0-92e0-08db5c702713
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5151.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 16:01:36.6828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fk3OoABSAk9+GD1TqEPvbDBDs4pcJ2QuGBrKi622PuCcsXK8/u9psDUZUr8/cqX1HIeLEJFkmyM8YR1SfhpKGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB7661
X-Proofpoint-GUID: JwdnRkV_FIJiZVpIM8eyzmaOStXJ5T3O
X-Proofpoint-ORIG-GUID: JwdnRkV_FIJiZVpIM8eyzmaOStXJ5T3O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-24_11,2023-05-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 spamscore=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305240133
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 16:01:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60110

Pulled to opkg-utils as 67994e62dc598282830385da75ba9b1abbbda941 [1].

[1] 
https://git.yoctoproject.org/opkg-utils/commit/?id=67994e62dc598282830385da75ba9b1abbbda941

Thanks!

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


