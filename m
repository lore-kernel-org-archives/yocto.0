Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16DEBC00140
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 00:16:10 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.2879.1659485766132801083
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 17:16:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HKwBfUBT;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5214809a34=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 272Nc9Is032391;
	Wed, 3 Aug 2022 00:16:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=EfKNwEsUn7IH1IlsKSHWlVi7uZPZ3fHu8ikYlmJkIXQ=;
 b=HKwBfUBTuoWXoPMRBCQa4nhtFzHwcyY9QoLmidKM0nAm77gdFity4tdQZnUqBPO9Bp6d
 AVZWfAzNXsisjx7G1sJerZ4NOWQQPnAD5A3GWqu5fjw0OxVz0Qj1Plvp5JXeT/DhYFWF
 CgvB0/zhvyUDZDM3lBApZrwEQx/91XUHM21iKELqBSzYvEF906eXIGaSiUW0Pw2qGCKe
 piX7UHe9yZUYOzdkwlb7UnanP4F0i83L2RGrE9ipcBnt2IwVuy99IVTAB2WRr3k50vxa
 Gm52tUeZMFQd7Ut4cJvdR8lS33yqQ5l/IOuuK6INiD0BzKK1KQO12DO0TTZt0eGI2xsm WA==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hqdbvr13q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 Aug 2022 00:16:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IMCGQXuicJc+b9VD8xQRA+lvXH59bS4lvVhI21Xssnsy47li75vlbhziQrPv2jGAJLtVH/jDqr/KsCs2xJxH8NpIfIaYLO+J5J54KXBq6vXrtZCwj2SJGL9haTXDNbtKwAA9lgpEQ19K4vhpRSHGfEBbX/ai7HBl2dvh7uDZMPy/8wAD4oRS5zE4d8BEjRpvoqNC+SatOklojxZeEIzMti8fzCaynhqxKklLrhl15EXA88S5zdjfLINDrJTYUnBMCk0s9xtJQ3VF5EDN82++eZRr0LCjxZ4uHVm7Agg1cu91YE490nQcyGBnW+BDm263U0uUCF7e5Br+YTxTGoaNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfKNwEsUn7IH1IlsKSHWlVi7uZPZ3fHu8ikYlmJkIXQ=;
 b=RnV7p2k9kUomCzpNwuCamoKfNAkeT7iJw9FOsFHeAJOLlJLQJSm6WI8Ssxi5rE21Zk3jTjsl2/oBpm8DV81U5ncARKRczps1C1LwNKkyjzLAy9vjVKcLx8YKSI+YdAO4v1Gd+y+HFEy1aNts6W1x17J1+s+b0cxZpnT1DBkYLlAVzzqOvfeQKaDtMI/mMVsr4CNAxH9gmjdh+VCarNb5dv9io41vVXe87w4Rb5opS+Ih+YTXgEd9RhqMgapXh9U9SYMyQrMyihLSoe7TOXH6sopJ8JVj04J4LZtb1GTnOdlZXHkdwk/olrgOPZId7L7Z2UNl9tMhpJSTo1cQVIdvxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Wed, 3 Aug
 2022 00:15:59 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060%5]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 00:15:59 +0000
Message-ID: <2fd09774-8a8d-80b2-3c9e-8dda6ba015fe@windriver.com>
Date: Tue, 2 Aug 2022 20:15:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] nftables_0.7 not working
Content-Language: en-CA
To: yocto@lists.yoctoproject.org, maik.vermeulen@lightyear.one
References: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
 <8c7f4c6e-16c2-f8ff-ce5b-7906351ec615@theobroma-systems.com>
 <CAKO9uzp3t+G=QUypwOoBnN4yptvQ0o+QZwL8wmqgHiAJ3jHRrw@mail.gmail.com>
 <57821bfc-c40c-2b4c-252b-290f52d79d54@theobroma-systems.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <57821bfc-c40c-2b4c-252b-290f52d79d54@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0101.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::42) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eaf7fb06-789b-4732-a295-08da74e55791
X-MS-TrafficTypeDiagnostic: PH8PR11MB7070:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/gZj/yrMbPUowSolyUMUAHZcifveXIUVBVq2QKj8wyoGninSHHAye9Xlbc6cGapYml453TK8lOmL6iw3GmDcg0SNgfPwRDyNK/eTNIDNQ15MeRr4fovMAWenn8PGgr1sEvjpprFrvyxPe9YudzmnKJOFxSQHwtjdehcLp+LlclDcPNQmJXYth6nN1HqXhTWhIRmJHhL9amEVwVk091eyBUNEa7870zdGr90JZAuyd8u4I9ypoShKivPYnPmRRvarH2/R5vZex0vBtVW9dGyHuIjiqQkASOiLLjfPqSjb16r5db5+pRbU4Q58aMxpQ8h9uEQpgOEGImf7b1JcyXfP1saJ569axWA/zhRQVbxPKGc6w53G41PgJyjO8NQ+V7JJviOXLvpINkeblUxVT7JzWHm5JeuDpxmC7czTbrRvuui3HIaZJWv/fKTYbqCca9P72wL9vybycRzmYRaQjMBOMxec6+JFjL3lGqybZbsxS3zxX2jv5687J9khXKR6p6EVXR3OsASM0MxI7BC4j/HdwrjsAwGeet6lW64VP7S2TKKhNNrgXv7bC5UlA00bSeptMKLKnagxElVSo93UvCwBjk8pD2WVGZJSpMC8EeQ5Gm02LpW6al5vX7d8niJR1vczb128FT8nrGvuJnoPQXDeG7v5n4qNjiOOLjI06e/o6p8FjZ6tROVYAcBq9+qD5n1I/OF0qVZtIHb/GMKemqyH9OJur9XHgtD/uiQEweiKsABNChWoP3K+binxH+FSo5n7mYfvGohYHO7Ol40+gktgTA7u33Xx9GpWsNMuWsfRyq9mxY+jk5VBPgQizN6VbrGGnfEd+OkeLpWe9cHTBAs3FiN1wAje4LvGiX9xsSm4Bi/m5b2tICyTUkHkoJpPTOtNaZnDCwCZbwRY/rwi8918jKsK7JhHIfwj7FgodxeCmzFAY4+q5bZlkEeBdn0k3SHE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(136003)(366004)(376002)(39850400004)(6512007)(26005)(2616005)(966005)(478600001)(186003)(36756003)(31686004)(86362001)(6486002)(31696002)(316002)(38350700002)(53546011)(2906002)(66556008)(6506007)(66946007)(66476007)(8676002)(52116002)(6666004)(38100700002)(5660300002)(83380400001)(41300700001)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cGJRWHkyMWo3eFl3b2dzNzdLYzFxaGR2M2ZtWDdFRmRxT1JjbWtOT2lTaG9S?=
 =?utf-8?B?VFJwVjl3ZnlVK3AzZitWcy9HaXdML1hoY1ppeVRSakI2MmVYRkkvMXBUWi82?=
 =?utf-8?B?R0Y4dDE5MHd4LzhhNlltMS9UOS9ZUlBZbTA2YzNGRkpwT042K0JKQUpxNWZI?=
 =?utf-8?B?eTBHTVJIVC9lMFVJdGljdlFURkpiWnpXNU1DVnJEU1YvQ3IzaDZieXZHeW5G?=
 =?utf-8?B?a25zRytvTVVldkxGbWJjeXFZVDlLS2xsbDJoRFowSUJnblFYMFlVZVprNlVE?=
 =?utf-8?B?eUlra0dxUGt0RmljYmJ3amRaWFJIV0YraStuU0hydmtYcURmd1hFTjcwR3Yz?=
 =?utf-8?B?TlR1MjZrOHJTQ1AxMlRkY3ZvVVR1L21WVlJJYmRod0hXajkrSkU1bEtGZlpu?=
 =?utf-8?B?ck5lbFJ1ck5iR05RQUJKZG9qa2dlZnpISWQ1QUpSM1UvL2llWHlYV1JabUNz?=
 =?utf-8?B?MjUvNGdIUlQ5T0RrazNpekpnMHdkR09iVFhxSDBwZG1ldTlRRlAzUUlJbXg2?=
 =?utf-8?B?bHNMUnpZMzFwcklTZHUxWmNxa1pnSFFmMzFFS0pjeXBwdmpCQUxIRXNOcW9K?=
 =?utf-8?B?Nml5M21nL2ZYeitsWWRMbGJVSmhqdjIvN3BuRXp0Ym1jWFU3QURGejV5SDky?=
 =?utf-8?B?NmdCSWI3YU5SRlZsbzU5ZHdwMkV1azZPa2xZY29nZ1A5cU0xYjEwN0Jvd0d3?=
 =?utf-8?B?OWUzVzJnOXNrYUhIcVQvMWovMURGaERxR2RBY3lDQzdtWXk4dk5GNGo2TS9T?=
 =?utf-8?B?UUNnUzdFM1hHUnN0Q3BoamdjNldTU1FJNWFwWE9mSWtKQnhLQ2dvOGtMWWhN?=
 =?utf-8?B?TXhTOXgxQTZKZUxDbkxWNnFNVi9oUWNWUUZtbnNaYlp0WmNoZ0pMS3UwcUtm?=
 =?utf-8?B?MlFCbFU4OHNLNktybnlBQjg3amFxQ2V0dW81MHNsVVlOTHdPQXBiQlI0Wjc5?=
 =?utf-8?B?RGRBQnN1enVIbVo0U2ZMUys1SlBSOEhjZmFVcFJSZ25JVFBET0h6NlB1VEta?=
 =?utf-8?B?RDU1QjNqMjlyUHRUS0VQWHg1TUxXOWNYY01FUGtpMWlwWW9sRE5CL0V6NjNu?=
 =?utf-8?B?VittaE1VaE5ML2ZZbHdMS0tocDNwV0o1RHR6VzV0NzB2L1hLSXVJdkR1WSt6?=
 =?utf-8?B?K0lwcDdwb2hjRlEyNFZ5MU5OQ2hxUm9UN3RYdk1FV1hSUEU5NVkxa1JZYVRx?=
 =?utf-8?B?aXJDcHlXYWQrci81clFhN2lxZlB2MHV3NTFFZW1COVZzdEJjZCthUFJkbWFq?=
 =?utf-8?B?eHZuMXdNRFZWVFE5ZjMycVdVRUhDQml4OTJoUWlyay81Zlh3cEJtdEg4SXh3?=
 =?utf-8?B?NmlONkxiV1NQSnFVSE5Da2tnZ1lyZzBjMHRjeDE3QWxwWGw4eE41dGt1Zmt1?=
 =?utf-8?B?TGNRTXhqQ2VCL2tPZ0E4YnVWZkV0UHNtQVNvNVdaem85L1BmSGlZdm9hMTNw?=
 =?utf-8?B?ZFJHVElNZTBiZE5OV29VMi8vZ1RoSEsvZ09EMEZtSWlMN3R2MkkvbzE4MlRr?=
 =?utf-8?B?RGNZdzlIM1RPcWk1bkVZRDc4WXJTdmM0Ti9yek9MbVRVbVZobld6eTNKQWxh?=
 =?utf-8?B?N2o4aTloYzYvRXJYK2hlU3B3U2RaaTZHQ243bzJqRkZML29iZ2txdGZ4RzM5?=
 =?utf-8?B?RGMvYkRSOUt5U1o3OXRUZk4ySmJQcjN3L1dIbzdBK3FLbm9oYUQ0dGdtc1Jj?=
 =?utf-8?B?a0RuQlNNeFY1QVQvSFJRV0ozYkxzK3U3V2JuUGxEcGIycXVkTnJ2VWphL0U1?=
 =?utf-8?B?QWlDbjFrYlN2WjZXTlF2T1FHTkZaK0pjemYvUjJWU2pCSEdZQWM4bURYVk9K?=
 =?utf-8?B?enRRb3FlSDh3VnloeEFrK2toUWFpRXN2dU03TE1CUDRnN0Q3UUQycEdZVUNo?=
 =?utf-8?B?S0QrZW0reHBGMUhaQUsrVk5GTVFDUUFqU09JeGVLWkhadzlncXpoQnRIZFN0?=
 =?utf-8?B?Mlc0TXVza2ZENEcyUW1vbGFyNVhaeFBVeVpQR0JlMXpUZlNOdFNkT1JDT01E?=
 =?utf-8?B?Rm1iQUdWY0F1dzFrbVUvYldVT3ErS09OUmpwREo2WWN0cGFsS1Ntc2MwalBt?=
 =?utf-8?B?NTFldm1xMlNkZVc1UkUrY3dlZUpFWjNzQ3pmcURhRFh2RHpUR3B2Q3FubUEr?=
 =?utf-8?B?UHl5YUtpeFlGTmNMKzUzdjl1Z0xZQ0dyU2Jib2pHT3FqYnBna0JGTSthVExX?=
 =?utf-8?B?VFE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 eaf7fb06-789b-4732-a295-08da74e55791
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 00:15:59.3403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 dE91uhtljaQeejP2ML5W2DlmL6j8Izwv4l86nVWGQ8ylVg61WSrbxSCRJ+UbYMRgLVNyR/napJRqSYJbEOLQtSWvIExK9rsNEM4jc6o4QeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-Proofpoint-ORIG-GUID: faHeWqpE5LZL4pVh-_a3wvvJ_swtaAty
X-Proofpoint-GUID: faHeWqpE5LZL4pVh-_a3wvvJ_swtaAty
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-02_15,2022-08-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 bulkscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 mlxlogscore=821
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2208020115
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 00:16:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57753

On 2022-08-01 11:45, Quentin Schulz wrote:
> Hi Maik,
>
> On 8/1/22 17:34, Maik Vermeulen wrote:
>> Hi Quentin,
>>
>> Thank you for your response!
>>
>> I added kernel-modules to the IMAGE_INSTALL_append, but it seems that 
>> the
>> modules are still not being loaded.
>> Is that the correct way?
>>
>> Also I see that CONFIG_NF_TABLES is not set (with ~# zcat 
>> /proc/config.gz |
>> grep CONFIG_NF_ | grep TABLE)
>> Is that expected?
>>
>
> No, you would indeed need to enable those in your kernel config.

0.7 - that's pre-dunfell!

For master or kirkstone, see:
https://lists.yoctoproject.org/g/linux-yocto/message/11523?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cmacleod%2C20%2C1%2C0%2C92659340

and the follow-up that I'll send soon to get the pass-rate to 100%.

You won't be able to use the WR Linux features directly but take a look 
at the image.inc
and template.conf files in:

https://github.com/WindRiver-Labs/wrlinux/tree/WRLINUX_10_21_BASE/templates/feature/nftables

for the syntax to use the kernel scc files for nftables. It may not be 
there if you're using an older kernel.

../Randy

>
> Cheers,
> Quentin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57717): https://lists.yoctoproject.org/g/yocto/message/57717
> Mute This Topic: https://lists.yoctoproject.org/mt/92746852/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux


