Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C082BC4332F
	for <webhook@archiver.kernel.org>; Wed,  9 Nov 2022 03:48:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.2373.1667965693699764021
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Nov 2022 19:48:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=iRSvwi1F;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8312f68e34=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A92wR1m024241;
	Tue, 8 Nov 2022 19:48:11 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : from : to : cc : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=zLsphFPQcNsRZjo8YV5EUcbRNNdMIyocSQJr6522KX4=;
 b=iRSvwi1FNm/togIsheComh0LbjMw71iWMrkseeWwMhJXSubbbtFkNrhKPa38yVI1wjcp
 kcymYMhfusL4WEZwuE9g/bla5B4dUpXEe4kma1H9HigheH5Nz/ARuCRsTI2BcD4BOkhQ
 7gFmKP+dZZjBDm5eGdLZCPKAWxi29optpAFsN4Hy0Zvv59qmi/M4cJCIYX/NAAHCuY57
 x4xhew+kwegl0W0CQV89hMqLqkraqiUutj0DLtvlG1qxEvezYGuwLSTEyfhzBGqYsV5t
 JAVKVi+b4bwMYSjzMSd3g+yAWYIOqid//qTxp34feibdm52u1Tq1J/r1ayn61rEtU14Q 3Q== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3knk43b64c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Nov 2022 19:48:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6jeX9x/uqyo+quOp+/1jxzHje3WSV/QstuwW3E+pi7c0hr4vnlRagFdx0ysp6LMDP8GkMEi2bmwzTe/1JZ4Hb0QV6aiLwkn3IAQXe+V2yPXlp3k47yEIxgVNZWxxoQ7CMIxZKk0rBayIwDPOobz5ERTaR9ufRYp+hTXK7zaOTmsSZTUGaQgnD3iN0gRR8sk6qpMCGMXNM8pzs417LclM34ldDhs8cPmybIQ1Ced40a+9BWVB2T5q2jWTF4DHZh256ly9gRy1FKEoQ1UW63SUKxyY2+E2KGTZVcqWzFAUfKSxI2RjCBJpMvKH3hrwGso+vIF3HRWJQbzKbR6jqA5Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zLsphFPQcNsRZjo8YV5EUcbRNNdMIyocSQJr6522KX4=;
 b=DNAbfIdF0MJs/5QiogTfq6EyxU8Icoeacb+A4h3pBA2RQiexkV41nLYRNpxxA7TvqHGCR8tUs/7aPwySWcK/aeBxF8DbXccRf4hvq6o3oRgC5OPJlLSBBSBZVQXRj4/UAOo9nlS7bRTOgV9l62n+RDT/JH0rWRkx8QQhTo5zVebBewmDs+wx8Fh35T3nLfMaTcxDhFo9zMw2LfRWJLhp6r2IJZUYUHpxWfVNOurrpIcHobysdUoKmcdCj/oSO1EMzCqzSAMpLJRogR1kuPCsp1DfgJgvhZ1zR4Y41krXA8I/4OpqqOXu9BsFnTjlo9bT4ApZeQZQzOEgLQ8Ss0hNwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SN7PR11MB7537.namprd11.prod.outlook.com (2603:10b6:806:348::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Wed, 9 Nov
 2022 03:48:05 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae%9]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 03:48:05 +0000
Message-ID: <3ffa05ee-7cd9-1038-760b-e538693a22cd@windriver.com>
Date: Wed, 9 Nov 2022 11:47:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [yocto] [meta-selinux][PATCH 4/4] refpolicy: upgrade 20210908+git
 -> 20221101+git
Content-Language: en-US
From: Yi Zhao <yi.zhao@windriver.com>
To: Joe MacDonald <joe.macdonald@siemens.com>
Cc: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
References: <20221102073052.1567876-1-yi.zhao@windriver.com>
 <20221102073052.1567876-4-yi.zhao@windriver.com>
 <20221107193343.jrkm4tdey75dwev6@siemens.com>
 <17257B1B9EFC9AB1.28792@lists.yoctoproject.org>
In-Reply-To: <17257B1B9EFC9AB1.28792@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SG2P153CA0008.APCP153.PROD.OUTLOOK.COM (2603:1096::18) To
 CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SN7PR11MB7537:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fef00e4-83e2-4b77-db64-08dac205350f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5GHPraSqlYJxD5ZdtM66SvIvr33GIvw83urhTmZKZ9jk5sGIswje8igMPxmGdMxVB3g40m3DyOnkJOeGKhfJaMSwZBntEfd6A5Pz01BytDizZM0ngumISufsLHIn+hWQSoAbtFXB3AMRjKcElZGQXUlWcS/w4CNUDuXhPL/Cc9jyxC3grjEonk4s64Fjk59T7MblkFTiYJsSYhgfTyueARGiXy7q7Vmy72OWQQsuP3AqkiP0rHMscjag62E1Qq9lbbP+L6JaP7cgGF61MgffiQjl9tJt15lzAtkupqe/wZ75xDXx0ltlKYFT7ev8k/6XrMPlIrhMWm0w6R5no0OY+ijJgvph8ezXx9Begjej3gLOBm2ODMYFzfLKOeN4KtRL2TmyJ6nM28QZbjh1tYO3MrX1FlLwv7wT8BWhaxjEF465Q07SndDW5umkGASveaURhLey8TcdNhLQtHhaIpuJ7S9iqV4h89QHwGoJtVrPSFtdraLKPqOC2B0BpmSykzoSr1qcY1u4h8PtuIjkyC7WsXDUclErJ2Ih7EXSEHvb4zuTu0LUomjwEYZmaXZLzUYLG3YCyZfdWkPNsBcmVBezDjJFBor5Uq2jwMd2IWOV/KHIsA67BdWY2bGJs0aKNSECMCctcAAdO7yFkgbt0Yn10enrE+k9ik1lU2iOzVcOOpPTcvJQm5ZvOZ+NKEyCYwJoR6/tdsnOZQXULoSE9mk7FSVEPOn5ML33pBt04tHpz5lFzFhD8QXlePnumh16AF37pmyzdiqXD5rAdvNmlj3+jX6JiHk++S++Mr1sxrThzNeYiffHEYQuWG1Oy3OzpTMziosylFSuAmb0s1bugJRXSkudRCzUTJKt5Grog71bpLg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(39850400004)(366004)(451199015)(8676002)(66556008)(4326008)(966005)(2906002)(66476007)(6916009)(38100700002)(5660300002)(6486002)(44832011)(66946007)(6506007)(8936002)(41300700001)(30864003)(316002)(6666004)(186003)(6512007)(53546011)(2616005)(26005)(478600001)(83380400001)(86362001)(31686004)(31696002)(66899015)(36756003)(43740500002)(45980500001)(559001)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RmZVc3JJOHJjNExlUVNVK3RHUHN0bnNlZ2ZVamFRTXp5WUt4QUZHbDBRalVn?=
 =?utf-8?B?QzVGQkJwbnkxY2NOLytRelhPMU5IMndWZTd6VWwrQ0FrWmV0R21wZUxWRjRD?=
 =?utf-8?B?aFZtQ1JBQlBkZHgwL0FHRk9qRVNzbXhqNzV5Z200UUNhdUdITUxNa1lzUTRH?=
 =?utf-8?B?RXJsaXo1bmVDdTFKSk5MbmdnS1ZrRUpmeE0zRERtQnRwdDQ1d3h4UVArcGht?=
 =?utf-8?B?ZHMrc1hpSFVBTmd5TDlGbURDNXp3T0RHeE84bDNyMW9oUHIrUnJoTkE1SWVZ?=
 =?utf-8?B?eCtNUDB6aTdwSm9wZnZGd3cvKytNWEdJdzFvaCtBenZia0RrZmlsN1dsZjVr?=
 =?utf-8?B?ZlNlQXpMR3R0Mk9wR2IvYlA5aDBvdHRVR0o1c1FUSjQzUDVHRnZBRmFCeE5D?=
 =?utf-8?B?VlMxQTRwRnM1NHdGNDFtNEI3bnlNK1FEL1hSUE1PQ21RYlRxd1hCTUh0QnVr?=
 =?utf-8?B?Y1Znb2EydS8yakVBbHFDQjZQdWdmOGQ3b3F4NnhWQXdBQjRqb1kwbWs5UTRu?=
 =?utf-8?B?L01GNlpqSkVIUDlpaFVFOW5RZDRMclNFSUtFZk1kSnFXMG5ON2VJNVFsQml6?=
 =?utf-8?B?NHJEMHR0VGcyY1JoVnFoamRQQ3dIZm1EK1A2ZUExcHRFTWEvMzdGaURzeEFz?=
 =?utf-8?B?d29GakJDTlFVVTUrMVNKQnNibXcvSnBhMEI4aCtwcHRiL0U5TXcyRG1rYllv?=
 =?utf-8?B?R2RyNmdSRkU3QU1ubVFKendNa0xXcHNwMHRHMnhpNXNUUmNEZ3R0MGxIaUVM?=
 =?utf-8?B?OXZjbzlNR0pxZkVyNzBLYTh4bzRnVW5ZSjFsTmFSbFYrTk9EOFJnR3poeVlD?=
 =?utf-8?B?N0VuZzI4TiticnZncUdnQzZtWWVpT0xpYmJkRWlMRGloTTZwNWdodEx6R2Q5?=
 =?utf-8?B?Tk90VmJPdjMyRm5uYmQyaHlHeGxaT0h5RW5OUmJBNVFRaHFlaHYzTmVnM3Ar?=
 =?utf-8?B?ZEpnZzBCaGFHS2dsSTNUZk9nQ0NqK3FSRWMrdnVNdWVBN0pleGErZmVvTXN0?=
 =?utf-8?B?OXI0RE5Tb2kyVk5JZWRLUENLa1JBak9SOHp3dUdVblREMGxhajZOVlRVWVNr?=
 =?utf-8?B?blBJb2paTkFRTXVNRXdMUVFyaW1pcFZwU2ZFbGgxa0xXUFhlSm1KbnF4YjBz?=
 =?utf-8?B?MjFFcUlEcHZ3ZThQeVpydkphREZwdm1HVi93TjJIT3hFQXpicWFmT2R2bEM0?=
 =?utf-8?B?R2hjR25NMHUxZllZSURvRWtzaXErRVFIcFZSdUd0RUZFWXliOVhUR01NczBt?=
 =?utf-8?B?VHRvd2phbE13RXY5TWxTLzlPdzYwNC9iaEJGR3NFVTd0c2xRdUdFZFV5OThW?=
 =?utf-8?B?SDlWUTJja3NNVitxR0drRERKYzdvWUloczVZRTRjOXZhdm9IZE1vUnh0Z3Yv?=
 =?utf-8?B?NVBRd01zbWRYRmplMWFWVmVyU0lRbTNqS3h1TS9xbmV3Nms4eFAydkFxTlls?=
 =?utf-8?B?VzF3M0RQb0d3SjJzYWJRTVFTMkhTL0RuMDdOeDVTSnk4OXBPMDYxNG8rYVNR?=
 =?utf-8?B?aTFtUHIrZHhlUld5VksvQ3hybTBFcjc1MkN5SDdVQk9QVUJiMHo3UVl4V0Rj?=
 =?utf-8?B?S01SdDJqNU1QeVJnQllSYnpvL3dJTXZkSk5aZWNFWDZVb1k4NGd2TXZqbjFZ?=
 =?utf-8?B?RDM2UjhkMDhMTnpIVWpWNFY4SllQQkJIUjh3eFpPN2l5WW1wMkxqZUg5VHR4?=
 =?utf-8?B?NmQvcDVpbVlvUW51YVgrNERyOG0wTzN5cGR5K2NsSW5US3FiU290cWgzQUFi?=
 =?utf-8?B?QjRFOFBySWRQUENrMWlOOVRRdXh6WUZveHZWU1ZuckEyWmNmbHh5Z2JGQkFU?=
 =?utf-8?B?S0FHQ2dPOGIwMFpsT1hwR0lqdWVTcUUxYXB4ZnpHaDdIWWdJRWU3aGFkWUcz?=
 =?utf-8?B?bGFKRW9GS20zcmpPbW5wZ2ZtbWdONHpwaFRkaWxCemptbFVnZHpYZDRlV0Rq?=
 =?utf-8?B?VG9LaENmVmpzNHdzTHJGYjdLbFMxdXpxWjJPV1I4QTc3NFdDS3FQSjhubmFF?=
 =?utf-8?B?MWgyL25sNUt2L1VLYnQ2ZXY0cHljSzB1TXhwYVFyNzNLUGhkbmNVZTlubDRY?=
 =?utf-8?B?Y2lmMTdvZ0lySXZNQmlURWNsWHlQbTBWd0wzRWFIK2xjWVNZK1lqMVo5QnNz?=
 =?utf-8?Q?Lp8/ZxpWk3wOr7pjd8IF6IiGO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fef00e4-83e2-4b77-db64-08dac205350f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2022 03:48:05.4857
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L2zyhyVdPtEePZPNda9jzqfgdZE06Q5ch19M8jPLLg83yrMkRbz6qfC5kUkmafiPzh3khR/aQMvkoRH/8Poyfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7537
X-Proofpoint-ORIG-GUID: 5-B6Czj8iYccQLpfr-B8SAet1LPcmswq
X-Proofpoint-GUID: 5-B6Czj8iYccQLpfr-B8SAet1LPcmswq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-08_06,2022-11-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 phishscore=0 mlxscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211090026
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2A92wR1m024241
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Nov 2022 03:48:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58527


On 11/8/22 10:29, Yi Zhao wrote:
>
> On 11/8/22 03:33, Joe MacDonald wrote:
>> Hi Yi,
>>
>> Can you explain the reason for moving the dbus module to the list of
>> always-on modules and out of the systemd conditional for
>> refpolicy-minimum_git.bb?
>
>
> This is introduced by commit e1cdd5a94493db1da7d4a815760453a54c45f11c=20
> in refpolicy:
>
> commit e1cdd5a94493db1da7d4a815760453a54c45f11c
> Author: Kenton Groombridge <me@concord.sh>
> Date:=C2=A0=C2=A0 Sun Oct 2 19:07:08 2022 -0400
>
> =C2=A0=C2=A0=C2=A0 dbus, init, mount, rpc: minor fixes for mount.nfs
>
> =C2=A0=C2=A0=C2=A0 mount.nfs will attempt to start the rpc-statd.servic=
e unit but=20
> will fall
> =C2=A0=C2=A0=C2=A0 back to executing start-statd directly. Dontaudit at=
tempts to=20
> start the
> =C2=A0=C2=A0=C2=A0 unit and perform a domain transition to start-statd =
from mount.
>
> =C2=A0=C2=A0=C2=A0 Signed-off-by: Kenton Groombridge <me@concord.sh>
>
>
> diff --git a/policy/modules/system/mount.te=20
> b/policy/modules/system/mount.te
> index e75a9eeed..d028723ce 100644
> --- a/policy/modules/system/mount.te
> +++ b/policy/modules/system/mount.te
> [snip]
> @@ -141,6 +145,8 @@ selinux_getattr_fs(mount_t)
>
> =C2=A0userdom_use_all_users_fds(mount_t)
>
> +dbus_dontaudit_write_system_bus_runtime_named_sockets(mount_t)
> +
> =C2=A0ifdef(`distro_redhat',`
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 optional_policy(`
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 auth_read_pam_console_data(mount_t)
> @@ -210,6 +216,10 @@ optional_policy(`
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 puppet_rw_tmp(mount_t)
> =C2=A0')
> [snip]
>
>
> Now dbus module is required by mount module.


Hi Joe,


We could make this interface optional by optional_policy. I think it's=20
better than adding dbus to core module.

I will send V2.


//Yi


>
>
> //Yi
>
>
>>
>> Thanks,
>> -Joe.
>>
>> [[meta-selinux][PATCH 4/4] refpolicy: upgrade 20210908+git ->=20
>> 20221101+git] On 22.11.02 (Wed 15:30) Yi Zhao wrote:
>>
>>> * Update to latest git rev.
>>> * Drop obsolete and useless patches.
>>> * Rebase patches.
>>>
>>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ---
>>> =C2=A0 .../refpolicy/refpolicy-minimum_git.bb=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 93 +++----
>>> =C2=A0 .../refpolicy/refpolicy-targeted_git.bb=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0 1 -
>>> =C2=A0 ...tile-alias-common-var-volatile-paths.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...inimum-make-sysadmin-module-optional.patch |=C2=A0 12 +-
>>> =C2=A0 ...ed-make-unconfined_u-the-default-sel.patch |=C2=A0 12 +-
>>> =C2=A0 ...box-set-aliases-for-bin-sbin-and-usr.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...icy-minimum-make-xdg-module-optional.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ed-add-capability2-bpf-and-perfmon-f.patch |=C2=A0 52 ----
>>> =C2=A0 ...y-policy-to-common-yocto-hostname-al.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...efpolicy-minimum-enable-nscd_use_shm.patch |=C2=A0 35 ---
>>> =C2=A0 ...sr-bin-bash-context-to-bin-bash.bash.patch |=C2=A0=C2=A0 6 =
+-
>>> =C2=A0 ...abel-resolv.conf-in-var-run-properly.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...-apply-login-context-to-login.shadow.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...-fc-hwclock-add-hwclock-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...g-apply-policy-to-dmesg-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ssh-apply-policy-to-ssh-alternatives.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ply-policy-to-network-commands-alter.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...v-apply-policy-to-udevadm-in-libexec.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ply-rpm_exec-policy-to-cpio-binaries.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...c-su-apply-policy-to-su-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...fc-fstools-fix-real-path-for-fstools.patch |=C2=A0 17 +-
>>> =C2=A0 ...fix-update-alternatives-for-sysvinit.patch |=C2=A0 10 +-
>>> =C2=A0 ...l-apply-policy-to-brctl-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...apply-policy-to-nologin-alternatives.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...apply-policy-to-sulogin-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...tp-apply-policy-to-ntpd-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...pply-policy-to-kerberos-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ap-apply-policy-to-ldap-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ply-policy-to-postgresql-alternative.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...-apply-policy-to-screen-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ply-policy-to-usermanage-alternative.patch |=C2=A0 26 +-
>>> =C2=A0 ...etty-add-file-context-to-start_getty.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...k-apply-policy-to-vlock-alternatives.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...for-init-scripts-and-systemd-service.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...bs_dist-set-aliase-for-root-director.patch |=C2=A0=C2=A0 4 =
+-
>>> =C2=A0 ...ystem-logging-add-rules-for-the-syml.patch |=C2=A0=C2=A0 6 =
+-
>>> =C2=A0 ...ystem-logging-add-rules-for-syslogd-.patch |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ernel-files-add-rules-for-the-symlin.patch |=C2=A0 26 +-
>>> =C2=A0 ...ystem-logging-fix-auditd-startup-fai.patch |=C2=A0 10 +-
>>> =C2=A0 ...ernel-terminal-don-t-audit-tty_devic.patch |=C2=A0=C2=A0 6 =
+-
>>> =C2=A0 ...rvices-rpcbind-allow-rpcbind_t-to-c.patch} |=C2=A0 23 +-
>>> =C2=A0 ...ystem-modutils-allow-mod_t-to-access.patch |=C2=A0 67 -----
>>> =C2=A0 ...ystem-getty-allow-getty_t-to-search-.patch |=C2=A0 32 ---
>>> =C2=A0 ...stem-systemd-enable-support-for-sys.patch} |=C2=A0 10 +-
>>> =C2=A0 ...stem-systemd-allow-systemd_logind_t.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...dmin-usermanage-allow-useradd-to-rel.patch |=C2=A0 71 -----
>>> =C2=A0 ...oles-sysadm-allow-sysadm-to-use-init.patch |=C2=A0 36 +++
>>> =C2=A0 ...es-system-systemd-systemd-user-fixes.patch |=C2=A0 84 +++++=
+
>>> =C2=A0 ...stem-mount-make-mount_t-domain-MLS-.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ystem-systemd-fix-systemd-resolved-s.patch |=C2=A0 60 ----
>>> =C2=A0 ...les-sysadm-MLS-sysadm-rw-to-clearan.patch} |=C2=A0 10 +-
>>> =C2=A0 ...ystem-systemd-allow-systemd_-_t-to-g.patch | 156 ----------=
-
>>> =C2=A0 ...rvices-rpc-make-nfsd_t-domain-MLS-t.patch} |=C2=A0 12 +-
>>> =C2=A0 ...ystem-logging-fix-syslogd-failures-f.patch |=C2=A0 55 ----
>>> =C2=A0 ...min-dmesg-make-dmesg_t-MLS-trusted-.patch} |=C2=A0=C2=A0 6 =
+-
>>> =C2=A0 ...es-system-systemd-systemd-user-fixes.patch | 172 ----------=
--
>>> =C2=A0 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ystem-sysnetwork-support-priviledge-.patch | 132 ---------
>>> =C2=A0 ...stem-init-make-init_t-MLS-trusted-f.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...ystem-modutils-allow-kmod_t-to-write.patch |=C2=A0 34 ---
>>> =C2=A0 ...stem-systemd-make-systemd-tmpfiles_.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-systemd-systemd-make-systemd_-.patch} |=C2=A0 26 +-
>>> =C2=A0 ...stem-logging-add-the-syslogd_t-to-t.patch} |=C2=A0 15 +-
>>> =C2=A0 ...stem-init-make-init_t-MLS-trusted-f.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-init-all-init_t-to-read-any-le.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-logging-allow-auditd_t-to-writ.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-setrans-allow-setrans_t-use-fd.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-systemd-make-_systemd_t-MLS-tr.patch} |=C2=A0=C2=A0 8 =
+-
>>> =C2=A0 ...stem-logging-make-syslogd_runtime_t.patch} |=C2=A0 12 +-
>>> =C2=A0 ...emd-resolved-is-linked-to-libselinux.patch |=C2=A0 33 ---
>>> =C2=A0 ...md-allow-DNS-resolution-over-io.syst.patch |=C2=A0 63 -----
>>> =C2=A0 ...systemd-to-watch-and-watch-reads-on-.patch |=C2=A0 94 -----=
--
>>> =C2=A0 ...-transition-for-systemd-networkd-run.patch |=C2=A0 32 ---
>>> =C2=A0 ...ing-file-context-for-run-systemd-net.patch |=C2=A0 29 --
>>> =C2=A0 ...-contexts-for-systemd-network-genera.patch |=C2=A0 38 ---
>>> =C2=A0 ...ow-udev-to-read-systemd-networkd-run.patch |=C2=A0 34 ---
>>> =C2=A0 ...s-apply-policy-to-findfs-alternative.patch |=C2=A0 29 --
>>> =C2=A0 .../refpolicy/refpolicy_common.inc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 261=20
>>> +++++++++---------
>>> =C2=A0 recipes-security/refpolicy/refpolicy_git.inc=C2=A0 |=C2=A0=C2=A0=
 4 +-
>>> =C2=A0 80 files changed, 521 insertions(+), 1637 deletions(-)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capa=
bility2-bpf-and-perfmon-f.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-ns=
cd_use_shm.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0036-policy-modules-services-rp=
cbind-allow-rpcbind_t-to-c.patch=20
>>> =3D> 0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch}=
=20
>>> (52%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modut=
ils-allow-mod_t-to-access.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty=
-allow-getty_t-to-search-.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0038-policy-modules-system-syst=
emd-enable-support-for-sys.patch=20
>>> =3D> 0035-policy-modules-system-systemd-enable-support-for-sys.patch}=
=20
>>> (91%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0045-policy-modules-system-syst=
emd-allow-systemd_logind_t.patch=20
>>> =3D> 0036-policy-modules-system-systemd-allow-systemd_logind_t.patch}=
=20
>>> (88%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-userma=
nage-allow-useradd-to-rel.patch
>>> =C2=A0 create mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm=
-allow-sysadm-to-use-init.patch
>>> =C2=A0 create mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0038-policy-modules-system-syste=
md-systemd-user-fixes.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0046-policy-modules-system-moun=
t-make-mount_t-domain-MLS-.patch=20
>>> =3D> 0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch}=
=20
>>> (84%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0039-policy-modules-system-syste=
md-fix-systemd-resolved-s.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0047-policy-modules-roles-sysad=
m-MLS-sysadm-rw-to-clearan.patch=20
>>> =3D> 0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch}=
=20
>>> (83%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0040-policy-modules-system-syste=
md-allow-systemd_-_t-to-g.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0048-policy-modules-services-rp=
c-make-nfsd_t-domain-MLS-t.patch=20
>>> =3D> 0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch}=
=20
>>> (84%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0041-policy-modules-system-loggi=
ng-fix-syslogd-failures-f.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0049-policy-modules-admin-dmesg=
-make-dmesg_t-MLS-trusted-.patch=20
>>> =3D> 0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch}=
=20
>>> (90%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0042-policy-modules-system-syste=
md-systemd-user-fixes.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0050-policy-modules-kernel-kern=
el-make-kernel_t-MLS-trust.patch=20
>>> =3D> 0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch}=
=20
>>> (94%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sysne=
twork-support-priviledge-.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0051-policy-modules-system-init=
-make-init_t-MLS-trusted-f.patch=20
>>> =3D> 0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch}=
=20
>>> (89%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0044-policy-modules-system-modut=
ils-allow-kmod_t-to-write.patch
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0052-policy-modules-system-syst=
emd-make-systemd-tmpfiles_.patch=20
>>> =3D> 0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch}=
=20
>>> (92%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0053-policy-modules-system-syst=
emd-systemd-make-systemd_-.patch=20
>>> =3D> 0046-policy-modules-system-systemd-systemd-make-systemd_-.patch}=
=20
>>> (82%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0054-policy-modules-system-logg=
ing-add-the-syslogd_t-to-t.patch=20
>>> =3D> 0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch}=
=20
>>> (78%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0055-policy-modules-system-init=
-make-init_t-MLS-trusted-f.patch=20
>>> =3D> 0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch}=
=20
>>> (85%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0056-policy-modules-system-init=
-all-init_t-to-read-any-le.patch=20
>>> =3D> 0049-policy-modules-system-init-all-init_t-to-read-any-le.patch}=
=20
>>> (88%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0057-policy-modules-system-logg=
ing-allow-auditd_t-to-writ.patch=20
>>> =3D> 0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch}=
=20
>>> (87%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0058-policy-modules-kernel-kern=
el-make-kernel_t-MLS-trust.patch=20
>>> =3D> 0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch}=
=20
>>> (83%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0059-policy-modules-system-setr=
ans-allow-setrans_t-use-fd.patch=20
>>> =3D> 0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch}=
=20
>>> (83%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0060-policy-modules-system-syst=
emd-make-_systemd_t-MLS-tr.patch=20
>>> =3D> 0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch}=
=20
>>> (88%)
>>> =C2=A0 rename=20
>>> recipes-security/refpolicy/refpolicy/{0061-policy-modules-system-logg=
ing-make-syslogd_runtime_t.patch=20
>>> =3D> 0054-policy-modules-system-logging-make-syslogd_runtime_t.patch}=
=20
>>> (84%)
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is=
-linked-to-libselinux.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DN=
S-resolution-over-io.syst.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-=
watch-and-watch-reads-on-.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition=
-for-systemd-networkd-run.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-co=
ntext-for-run-systemd-net.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-f=
or-systemd-network-genera.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-=
read-systemd-networkd-run.patch
>>> =C2=A0 delete mode 100644=20
>>> recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-=
findfs-alternative.patch
>>>
>>> diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb=20
>>> b/recipes-security/refpolicy/refpolicy-minimum_git.bb
>>> index 2e95b9f..5940ce2 100644
>>> --- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
>>> +++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
>>> @@ -14,29 +14,29 @@ domains are unconfined. \
>>> =C2=A0 SRC_URI +=3D " \
>>> file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch \
>>> file://0002-refpolicy-minimum-make-xdg-module-optional.patch \
>>> - file://0003-refpolicy-minimum-enable-nscd_use_shm.patch \
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 =C2=A0 POLICY_NAME =3D "minimum"
>>> =C2=A0 =C2=A0 CORE_POLICY_MODULES =3D "unconfined \
>>> -=C2=A0=C2=A0=C2=A0 selinuxutil \
>>> -=C2=A0=C2=A0=C2=A0 storage \
>>> -=C2=A0=C2=A0=C2=A0 sysnetwork \
>>> -=C2=A0=C2=A0=C2=A0 application \
>>> -=C2=A0=C2=A0=C2=A0 libraries \
>>> -=C2=A0=C2=A0=C2=A0 miscfiles \
>>> -=C2=A0=C2=A0=C2=A0 logging \
>>> -=C2=A0=C2=A0=C2=A0 userdomain \
>>> -=C2=A0=C2=A0=C2=A0 init \
>>> -=C2=A0=C2=A0=C2=A0 mount \
>>> -=C2=A0=C2=A0=C2=A0 modutils \
>>> -=C2=A0=C2=A0=C2=A0 getty \
>>> -=C2=A0=C2=A0=C2=A0 authlogin \
>>> -=C2=A0=C2=A0=C2=A0 locallogin \
>>> -=C2=A0=C2=A0=C2=A0 "
>>> -#systemd dependent policy modules
>>> -CORE_POLICY_MODULES +=3D "${@bb.utils.contains('DISTRO_FEATURES',=20
>>> 'systemd', 'clock systemd udev fstools dbus', '', d)}"
>>> +=C2=A0=C2=A0=C2=A0 selinuxutil \
>>> +=C2=A0=C2=A0=C2=A0 storage \
>>> +=C2=A0=C2=A0=C2=A0 sysnetwork \
>>> +=C2=A0=C2=A0=C2=A0 application \
>>> +=C2=A0=C2=A0=C2=A0 libraries \
>>> +=C2=A0=C2=A0=C2=A0 miscfiles \
>>> +=C2=A0=C2=A0=C2=A0 logging \
>>> +=C2=A0=C2=A0=C2=A0 userdomain \
>>> +=C2=A0=C2=A0=C2=A0 init \
>>> +=C2=A0=C2=A0=C2=A0 mount \
>>> +=C2=A0=C2=A0=C2=A0 modutils \
>>> +=C2=A0=C2=A0=C2=A0 getty \
>>> +=C2=A0=C2=A0=C2=A0 authlogin \
>>> +=C2=A0=C2=A0=C2=A0 locallogin \
>>> +=C2=A0=C2=A0=C2=A0 dbus \
>>> +=C2=A0=C2=A0=C2=A0 "
>>> +# systemd dependent policy modules
>>> +CORE_POLICY_MODULES +=3D "${@bb.utils.contains('DISTRO_FEATURES',=20
>>> 'systemd', 'clock systemd udev fstools', '', d)}"
>>> =C2=A0 =C2=A0 # nscd caches libc-issued requests to the name service.
>>> =C2=A0 # Without nscd.pp, commands want to use these caches will be b=
locked.
>>> @@ -60,39 +60,38 @@ EXTRA_POLICY_MODULES +=3D "modutils consoletype=20
>>> hostname netutils"
>>> =C2=A0 #
>>> =C2=A0 # PURGE_POLICY_MODULES +=3D "xdg xen"
>>> =C2=A0 -
>>> =C2=A0 POLICY_MODULES_MIN =3D "${CORE_POLICY_MODULES} ${EXTRA_POLICY_=
MODULES}"
>>> =C2=A0 -# re-write the same func from refpolicy_common.inc
>>> -prepare_policy_store () {
>>> -=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install
>>> -=C2=A0=C2=A0=C2=A0 POL_PRIORITY=3D100
>>> -=C2=A0=C2=A0=C2=A0 POL_SRC=3D${D}${datadir}/selinux/${POLICY_NAME}
>>> -=C2=A0=C2=A0=C2=A0 POL_STORE=3D${D}${localstatedir}/lib/selinux/${PO=
LICY_NAME}
>>> - POL_ACTIVE_MODS=3D${POL_STORE}/active/modules/${POL_PRIORITY}
>>> +# Re-write the same func from refpolicy_common.inc
>>> +prepare_policy_store() {
>>> +=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install
>>> +=C2=A0=C2=A0=C2=A0 POL_PRIORITY=3D100
>>> +=C2=A0=C2=A0=C2=A0 POL_SRC=3D${D}${datadir}/selinux/${POLICY_NAME}
>>> +=C2=A0=C2=A0=C2=A0 POL_STORE=3D${D}${localstatedir}/lib/selinux/${PO=
LICY_NAME}
>>> + POL_ACTIVE_MODS=3D${POL_STORE}/active/modules/${POL_PRIORITY}
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # Prepare to create policy store
>>> -=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_STORE}
>>> -=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_ACTIVE_MODS}
>>> +=C2=A0=C2=A0=C2=A0 # Prepare to create policy store
>>> +=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_STORE}
>>> +=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_ACTIVE_MODS}
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # get hll type from suffix on base policy =
module
>>> -=C2=A0=C2=A0=C2=A0 HLL_TYPE=3D$(echo ${POL_SRC}/base.* | awk -F . '{=
if (NF>1) {print=20
>>> $NF}}')
>>> -=20
>>> HLL_BIN=3D${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TY=
PE}
>>> +=C2=A0=C2=A0=C2=A0 # Get hll type from suffix on base policy module
>>> +=C2=A0=C2=A0=C2=A0 HLL_TYPE=3D$(echo ${POL_SRC}/base.* | awk -F . '{=
if (NF>1) {print=20
>>> $NF}}')
>>> +=20
>>> HLL_BIN=3D${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TY=
PE}
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 for i in base ${POLICY_MODULES_MIN}; do
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_FILE=3D${POL_SRC}/${i=
}.${HLL_TYPE}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_DIR=3D${POL_ACTIVE_MO=
DS}/${i}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${MOD_DIR}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo -n "${HLL_TYPE}" > $=
{MOD_DIR}/lang_ext
>>> +=C2=A0=C2=A0=C2=A0 for i in base ${POLICY_MODULES_MIN}; do
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_FILE=3D${POL_SRC}/${i=
}.${HLL_TYPE}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_DIR=3D${POL_ACTIVE_MO=
DS}/${i}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${MOD_DIR}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo -n "${HLL_TYPE}" > $=
{MOD_DIR}/lang_ext
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ! bzip2 -t ${MO=
D_FILE} >/dev/null 2>&1; then
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $=
{HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
zip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
unzip2 --stdout ${MOD_FILE} | \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ${HLL_BIN} | \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bzip2 --stdout > ${MOD_DIR}/cil
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp ${MOD_FILE} ${MOD_DIR}=
/hll
>>> -=C2=A0=C2=A0=C2=A0 done
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ! bzip2 -t ${MOD_FILE}=
 >/dev/null 2>&1; then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $=
{HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
zip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
unzip2 --stdout ${MOD_FILE} | \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ${HLL_BIN} | \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bzip2 --stdout > ${MOD_DIR}/cil
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp ${MOD_FILE} ${MOD_DIR}=
/hll
>>> +=C2=A0=C2=A0=C2=A0 done
>>> =C2=A0 }
>>> diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb=20
>>> b/recipes-security/refpolicy/refpolicy-targeted_git.bb
>>> index 15226db..de81d46 100644
>>> --- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
>>> +++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
>>> @@ -14,5 +14,4 @@ include refpolicy_${PV}.inc
>>> =C2=A0 =C2=A0 SRC_URI +=3D " \
>>> file://0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patc=
h=20
>>> \
>>> -=20
>>> file://0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patc=
h=20
>>> \
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-co=
mmon-var-volatile-paths.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-co=
mmon-var-volatile-paths.patch=20
>>>
>>> index c3a03f3..1605d90 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-co=
mmon-var-volatile-paths.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-co=
mmon-var-volatile-paths.patch
>>> @@ -1,4 +1,4 @@
>>> -From d39f2ddbfcfd6e224a50bf327a7bd0031d74d0c6 Mon Sep 17 00:00:00 20=
01
>>> +From ee66387c393af77b88c833f5d271efe48036112c Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 28 Mar 2019 16:14:09 -0400
>>> =C2=A0 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile =
paths
>>> @@ -29,5 +29,5 @@ index ba22ce7e7..23d4328f7 100644
>>> =C2=A0 +/var/volatile/log /var/log
>>> =C2=A0 +/var/volatile/tmp /var/tmp
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sy=
sadmin-module-optional.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sy=
sadmin-module-optional.patch=20
>>>
>>> index f607cbb..657c5cd 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sy=
sadmin-module-optional.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sy=
sadmin-module-optional.patch
>>> @@ -1,4 +1,4 @@
>>> -From 669293ddf351f231b34979a7d708601ccbd11930 Mon Sep 17 00:00:00 20=
01
>>> +From 0e3b79ae0ae468640d7092c9a91a91d258d07645 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 5 Apr 2019 11:53:28 -0400
>>> =C2=A0 Subject: [PATCH] refpolicy-minimum: make sysadmin module optio=
nal
>>> @@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 2 files changed, 11 insertions(+), 7 deletions(-)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/init.te=20
>>> b/policy/modules/system/init.te
>>> -index 5a19f0e43..1f4a671dc 100644
>>> +index 671b5aef3..8ce3d5956 100644
>>> =C2=A0 --- a/policy/modules/system/init.te
>>> =C2=A0 +++ b/policy/modules/system/init.te
>>> -@@ -556,13 +556,15 @@ ifdef(`init_systemd',`
>>> +@@ -615,13 +615,15 @@ ifdef(`init_systemd',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unconfin=
ed_write_keys(init_t)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 ',`
>>> @@ -48,10 +48,10 @@ index 5a19f0e43..1f4a671dc 100644
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 diff --git a/policy/modules/system/locallogin.te=20
>>> b/policy/modules/system/locallogin.te
>>> -index 109980e79..313112371 100644
>>> +index 7728de804..a8ff403dd 100644
>>> =C2=A0 --- a/policy/modules/system/locallogin.te
>>> =C2=A0 +++ b/policy/modules/system/locallogin.te
>>> -@@ -265,7 +265,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
>>> +@@ -274,7 +274,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
>>> =C2=A0=C2=A0 userdom_search_user_home_dirs(sulogin_t)
>>> =C2=A0=C2=A0 userdom_use_user_ptys(sulogin_t)
>>> =C2=A0=C2=A0 @@ -63,5 +63,5 @@ index 109980e79..313112371 100644
>>> =C2=A0=C2=A0 # by default, sulogin does not use pam...
>>> =C2=A0=C2=A0 # sulogin_pam might need to be defined otherwise
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-u=
nconfined_u-the-default-sel.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-u=
nconfined_u-the-default-sel.patch=20
>>>
>>> index 9939b59..64e658e 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-u=
nconfined_u-the-default-sel.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-u=
nconfined_u-the-default-sel.patch
>>> @@ -1,14 +1,14 @@
>>> -From bf7b74e7c38b546e162eb5a3bd4774e3d84d593d Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> +From 60b4e5ea5668a71b2a0660461daecea66fd11d51 Mon Sep 17 00:00:00 20=
01
>>> +From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Mon, 20 Apr 2020 11:50:03 +0800
>>> =C2=A0 Subject: [PATCH] refpolicy-targeted: make unconfined_u the def=
ault=20
>>> selinux
>>> =C2=A0=C2=A0 user
>>> =C2=A0 =C2=A0 For targeted policy type, we define unconfined_u as the=
 default=20
>>> selinux
>>> -user for root and normal users, so users could login in and run most
>>> +user for root and normal users, so users could login and run most
>>> =C2=A0 commands and services on unconfined domains.
>>> =C2=A0 -Upstream-Status: Inappropriate [configuration]
>>> +Upstream-Status: Inappropriate [embedded specific]
>>> =C2=A0 =C2=A0 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>> @@ -38,7 +38,7 @@ index ce614b41b..c0903d98b 100644
>>> =C2=A0 +root:unconfined_u:s0-mcs_systemhigh
>>> =C2=A0 +__default__:unconfined_u:s0
>>> =C2=A0 diff --git a/policy/modules/system/unconfined.te=20
>>> b/policy/modules/system/unconfined.te
>>> -index 4972094cb..b6d769412 100644
>>> +index d116a1b9b..32720f68f 100644
>>> =C2=A0 --- a/policy/modules/system/unconfined.te
>>> =C2=A0 +++ b/policy/modules/system/unconfined.te
>>> =C2=A0 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
>>> @@ -77,5 +77,5 @@ index ca203758c..e737cd9cc 100644
>>> =C2=A0 +=C2=A0=C2=A0=C2=A0 gen_user(root, sysadm, unconfined_r sysadm=
_r staff_r=20
>>> ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh,=20
>>> mcs_allcats)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-alias=
es-for-bin-sbin-and-usr.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-alias=
es-for-bin-sbin-and-usr.patch=20
>>>
>>> index d2b8139..ef00602 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-alias=
es-for-bin-sbin-and-usr.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-alias=
es-for-bin-sbin-and-usr.patch
>>> @@ -1,4 +1,4 @@
>>> -From 974befcafcee1377e122f19a4182f74eea757158 Mon Sep 17 00:00:00 20=
01
>>> +From 8fa6c5b7b99a50b09e9dffd142c066fa41319750 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 28 Mar 2019 20:48:10 -0400
>>> =C2=A0 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin an=
d usr
>>> @@ -29,5 +29,5 @@ index 23d4328f7..690007f22 100644
>>> =C2=A0 +/usr/lib/busybox/sbin /usr/sbin
>>> =C2=A0 +/usr/lib/busybox/usr /usr
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xd=
g-module-optional.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xd=
g-module-optional.patch=20
>>>
>>> index 84764e5..25afa3b 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xd=
g-module-optional.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xd=
g-module-optional.patch
>>> @@ -1,4 +1,4 @@
>>> -From 1ff0e212ce737bba59d90977a58a15250bc84ea9 Mon Sep 17 00:00:00 20=
01
>>> +From 9a8d6b634d4f714fc63125be5e23228c565d1aaf Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Wed, 29 Sep 2021 11:08:49 +0800
>>> =C2=A0 Subject: [PATCH] refpolicy-minimum: make xdg module optional
>>> @@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 6 insertions(+), 2 deletions(-)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 8cea6baa1..218834495 100644
>>> +index 7b717d3ba..3b07b368d 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.te
>>> =C2=A0 +++ b/policy/modules/system/systemd.te
>>> -@@ -276,10 +276,14 @@ files_type(systemd_update_run_t)
>>> +@@ -298,10 +298,14 @@ init_unit_file(systemd_user_manager_unit_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 type systemd_conf_home_t;
>>> =C2=A0=C2=A0 init_unit_file(systemd_conf_home_t)
>>> @@ -36,5 +36,5 @@ index 8cea6baa1..218834495 100644
>>> =C2=A0=C2=A0 type systemd_user_runtime_notify_t;
>>> =C2=A0=C2=A0 userdom_user_runtime_content(systemd_user_runtime_notify=
_t)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-ca=
pability2-bpf-and-perfmon-f.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-ca=
pability2-bpf-and-perfmon-f.patch=20
>>>
>>> deleted file mode 100644
>>> index e4c081d..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-ca=
pability2-bpf-and-perfmon-f.patch
>>> +++ /dev/null
>>> @@ -1,52 +0,0 @@
>>> -From b46903aaf7e52f9c4c51a2fa7fe7a85190da98b1 Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Wed, 29 Sep 2021 16:43:54 +0800
>>> -Subject: [PATCH] refpolicy-targeted: add capability2 bpf and=20
>>> perfmon for
>>> - unconfined_t
>>> -
>>> -Fixes:
>>> -avc: denied { bpf } for pid=3D433 comm=3D"systemd" capability=3D39
>>> -scontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tcontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tclass=3Dcapability2 permissive=3D0
>>> -
>>> -avc: denied { perfmon } for pid=3D433 comm=3D"systemd" capability=3D=
38
>>> -scontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tcontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tclass=3Dcapability2 permissive=3D0
>>> -
>>> -type=3DUSER_AVC msg=3Daudit(1632901631.693:86): pid=3D433 uid=3D0 au=
id=3D0 ses=3D3
>>> -subj=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg=3D'=
avc:
>>> -denied { reload } for auid=3Dn/a uid=3D0 gid=3D0 cmdline=3D""
>>> -scontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tcontext=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>> -tclass=3Dsystem permissive=3D0=C2=A0 exe=3D"/lib/systemd/systemd" sa=
uid=3D0
>>> -hostname=3D? addr=3D? terminal=3D?'UID=3D"root" AUID=3D"root" AUID=3D=
"root"
>>> -UID=3D"root" GID=3D"root" SAUID=3D"root"
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/unconfined.if | 5 +++++
>>> - 1 file changed, 5 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/unconfined.if=20
>>> b/policy/modules/system/unconfined.if
>>> -index a139cfe78..807e959c3 100644
>>> ---- a/policy/modules/system/unconfined.if
>>> -+++ b/policy/modules/system/unconfined.if
>>> -@@ -66,6 +66,11 @@ interface(`unconfined_domain_noaudit',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 files_start_etc_service($1)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 files_stop_etc_service($1)
>>> -
>>> -+=C2=A0=C2=A0=C2=A0 ifdef(`init_systemd',`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 self:capability=
2 { bpf perfmon };
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 self:system rel=
oad;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 tunable_policy(`allow_execheap',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Allow making the =
stack executable via mprotect.
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 self:proce=
ss execheap;
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-=
to-common-yocto-hostname-al.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-=
to-common-yocto-hostname-al.patch=20
>>>
>>> index 6596e76..94ac31b 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-=
to-common-yocto-hostname-al.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-=
to-common-yocto-hostname-al.patch
>>> @@ -1,4 +1,4 @@
>>> -From 9c6f3c5acc01607a67277f69faa67e34dc98232b Mon Sep 17 00:00:00 20=
01
>>> +From 5a0bbd1920205f488b6a4565f7217b9d0825067b Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] fc/hostname: apply policy to common yocto hos=
tname
>>> @@ -22,5 +22,5 @@ index 83ddeb573..cf523bc4c 100644
>>> =C2=A0 +/usr/bin/hostname\.net-tools=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:hostname_exec_t,s0)
>>> =C2=A0 +/usr/bin/hostname\.coreutils=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:hostname_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-=
nscd_use_shm.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-=
nscd_use_shm.patch=20
>>>
>>> deleted file mode 100644
>>> index edf9caa..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-=
nscd_use_shm.patch
>>> +++ /dev/null
>>> @@ -1,35 +0,0 @@
>>> -From 5f992b59a74cc6cde8fd20162a11065dc30fd7ab Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Fri, 26 Feb 2021 09:13:23 +0800
>>> -Subject: [PATCH] refpolicy-minimum: enable nscd_use_shm
>>> -
>>> -Fixes:
>>> -avc: denied { listen } for pid=3D199 comm=3D"systemd-resolve"
>>> -path=3D"/run/systemd/resolve/io.systemd.Resolve"
>>> -scontext=3Dsystem_u:system_r:systemd_resolved_t:s0
>>> -tcontext=3Dsystem_u:system_r:systemd_resolved_t:s0
>>> -tclass=3Dunix_stream_socket permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/services/nscd.te | 2 +-
>>> - 1 file changed, 1 insertion(+), 1 deletion(-)
>>> -
>>> -diff --git a/policy/modules/services/nscd.te=20
>>> b/policy/modules/services/nscd.te
>>> -index ada67edb1..9801fc228 100644
>>> ---- a/policy/modules/services/nscd.te
>>> -+++ b/policy/modules/services/nscd.te
>>> -@@ -15,7 +15,7 @@ gen_require(`
>>> - ##=C2=A0=C2=A0=C2=A0 can use nscd shared memory.
>>> - ##=C2=A0=C2=A0=C2=A0 </p>
>>> - ## </desc>
>>> --gen_tunable(nscd_use_shm, false)
>>> -+gen_tunable(nscd_use_shm, true)
>>> -
>>> - attribute_role nscd_roles;
>>> -
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bas=
h-context-to-bin-bash.bash.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bas=
h-context-to-bin-bash.bash.patch=20
>>>
>>> index cf333f1..eff0255 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bas=
h-context-to-bin-bash.bash.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bas=
h-context-to-bin-bash.bash.patch
>>> @@ -1,4 +1,4 @@
>>> -From bbc8b58fe5fe709dfadbffc86e17ebd2d76a257c Mon Sep 17 00:00:00 20=
01
>>> +From c9219d2f7be1e641b3866b770a9b570c12333b93 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 28 Mar 2019 21:37:32 -0400
>>> =C2=A0 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to=20
>>> /bin/bash.bash
>>> @@ -15,7 +15,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/corecommands.fc=20
>>> b/policy/modules/kernel/corecommands.fc
>>> -index 4c18154ce..9187e50af 100644
>>> +index 0c05c693d..b70940928 100644
>>> =C2=A0 --- a/policy/modules/kernel/corecommands.fc
>>> =C2=A0 +++ b/policy/modules/kernel/corecommands.fc
>>> =C2=A0 @@ -142,6 +142,7 @@ ifdef(`distro_gentoo',`
>>> @@ -27,5 +27,5 @@ index 4c18154ce..9187e50af 100644
>>> =C2=A0=C2=A0 /usr/bin/fish=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/git-shell=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-reso=
lv.conf-in-var-run-properly.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-reso=
lv.conf-in-var-run-properly.patch=20
>>>
>>> index 078c246..06c8087 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-reso=
lv.conf-in-var-run-properly.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-reso=
lv.conf-in-var-run-properly.patch
>>> @@ -1,4 +1,4 @@
>>> -From 3cccdec2aaa273ca09100ca957f4968a25f4f3a3 Mon Sep 17 00:00:00 20=
01
>>> +From 51631a7eaaea1fab4b36a2488497cf725317ce6e Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 4 Apr 2019 10:45:03 -0400
>>> =C2=A0 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/=
=20
>>> properly
>>> @@ -25,5 +25,5 @@ index 14505efe9..c9ec4e5ab 100644
>>> =C2=A0=C2=A0 ifdef(`distro_gentoo',`
>>> =C2=A0=C2=A0 /var/lib/dhcpc(/.*)? gen_context(system_u:object_r:dhcpc=
_state_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-cont=
ext-to-login.shadow.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-cont=
ext-to-login.shadow.patch=20
>>>
>>> index b4747f7..70c5566 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-cont=
ext-to-login.shadow.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-cont=
ext-to-login.shadow.patch
>>> @@ -1,4 +1,4 @@
>>> -From 9a1e1c7b65cb3f5ab97ce05463ca02a3eaa57d86 Mon Sep 17 00:00:00 20=
01
>>> +From 1c61b10d21a22d4110bc880b23477295f6cd9efb Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 28 Mar 2019 21:43:53 -0400
>>> =C2=A0 Subject: [PATCH] fc/login: apply login context to login.shadow
>>> @@ -24,5 +24,5 @@ index 50efcff7b..5cb48882c 100644
>>> =C2=A0=C2=A0 /usr/bin/pam_timestamp_check=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:pam_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/tcb_convert=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:updpwd_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-al=
ternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-al=
ternatives.patch=20
>>>
>>> index 33f6a10..2f9f703 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-al=
ternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-al=
ternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 73716015ab28a9474912902e9467f2d2a864ecd0 Mon Sep 17 00:00:00 20=
01
>>> +From e4d7d9fb1cb157bf205874e1a81d5719017866a1 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Thu, 28 Mar 2019 21:59:18 -0400
>>> =C2=A0 Subject: [PATCH] fc/hwclock: add hwclock alternatives
>>> @@ -21,5 +21,5 @@ index 301965892..139485835 100644
>>> =C2=A0=C2=A0 /usr/sbin/hwclock=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:hwclock_exec_t,s0)
>>> =C2=A0 +/usr/sbin/hwclock\.util-linux=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:hwclock_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-=
dmesg-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-=
dmesg-alternatives.patch=20
>>>
>>> index 5f2ffdf..6e576a8 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-=
dmesg-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-=
dmesg-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 504e8429500ab0984adfd52bb09a3e993b87f2f1 Mon Sep 17 00:00:00 20=
01
>>> +From ac6536f04674ccc051744e6eb3644e68fe38da33 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 29 Mar 2019 08:26:55 -0400
>>> =C2=A0 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
>>> @@ -19,5 +19,5 @@ index e52fdfcf8..526b92ed2 100644
>>> =C2=A0=C2=A0 /usr/bin/dmesg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:dmesg_exec_t,s0)
>>> =C2=A0 +/usr/bin/dmesg\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:dmesg_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ss=
h-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ss=
h-alternatives.patch=20
>>>
>>> index 585850b..611c0d3 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ss=
h-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ss=
h-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 8ad451ceff2ba4ea26290a7ba9918406a90bb10f Mon Sep 17 00:00:00 20=
01
>>> +From a56887ca448b60ad6715348b2cfe533e8109a040 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 29 Mar 2019 09:20:58 -0400
>>> =C2=A0 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
>>> @@ -12,11 +12,11 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/services/ssh.fc=20
>>> b/policy/modules/services/ssh.fc
>>> -index 60060c35c..518043a9b 100644
>>> +index 5c512e972..0448c1877 100644
>>> =C2=A0 --- a/policy/modules/services/ssh.fc
>>> =C2=A0 +++ b/policy/modules/services/ssh.fc
>>> =C2=A0 @@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?=20
>>> gen_context(system_u:object_r:ssh_home_t,s0)
>>> - /etc/ssh/ssh_host.*_key=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
-=20
>>> gen_context(system_u:object_r:sshd_key_t,s0)
>>> + /etc/ssh/ssh_host.*_key(\.pub)?=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:sshd_key_t,s0)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 /usr/bin/ssh=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:ssh_exec_t,s0)
>>> =C2=A0 +/usr/bin/ssh\.openssh=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:ssh_exec_t,s0)
>>> @@ -24,5 +24,5 @@ index 60060c35c..518043a9b 100644
>>> =C2=A0=C2=A0 /usr/bin/ssh-keygen=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/sshd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:sshd_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-polic=
y-to-network-commands-alter.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-polic=
y-to-network-commands-alter.patch=20
>>>
>>> index 0621923..7af147d 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-polic=
y-to-network-commands-alter.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-polic=
y-to-network-commands-alter.patch
>>> @@ -1,4 +1,4 @@
>>> -From c85fd7d9c45770b31de44bb35521e2251882df10 Mon Sep 17 00:00:00 20=
01
>>> +From 47a5e9a0bd4960534998798ab1a5ab62e77b2b61 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Tue, 9 Jun 2015 21:22:52 +0530
>>> =C2=A0 Subject: [PATCH] fc/sysnetwork: apply policy to network comman=
ds=20
>>> alternatives
>>> @@ -43,5 +43,5 @@ index c9ec4e5ab..4ca151524 100644
>>> =C2=A0=C2=A0 /usr/sbin/tc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:ifconfig_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-u=
devadm-in-libexec.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-u=
devadm-in-libexec.patch=20
>>>
>>> index cc3e529..434fc1d 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-u=
devadm-in-libexec.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-u=
devadm-in-libexec.patch
>>> @@ -1,4 +1,4 @@
>>> -From aa2635a54f9c36205ebc469f799a56ece01ac610 Mon Sep 17 00:00:00 20=
01
>>> +From bbc6eb20e9509a61236051df7a5fa552a8f2654d Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 29 Mar 2019 09:36:08 -0400
>>> =C2=A0 Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
>>> @@ -25,5 +25,5 @@ index 7898ff01c..bc717e60c 100644
>>> =C2=A0=C2=A0 /usr/sbin/start_udev --=20
>>> gen_context(system_u:object_r:udev_exec_t,s0)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-pol=
icy-to-cpio-binaries.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-pol=
icy-to-cpio-binaries.patch=20
>>>
>>> index b039f53..bf562d6 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-pol=
icy-to-cpio-binaries.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-pol=
icy-to-cpio-binaries.patch
>>> @@ -1,4 +1,4 @@
>>> -From faf757c732c9a022499b584cea64ce1fcc78e118 Mon Sep 17 00:00:00 20=
01
>>> +From 00533fded8e2264f8bdc68c8ed79644a10e4e2ad Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 29 Mar 2019 09:54:07 -0400
>>> =C2=A0 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binarie=
s
>>> @@ -12,10 +12,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/admin/rpm.fc=20
>>> b/policy/modules/admin/rpm.fc
>>> -index aaf530c2b..618b18cec 100644
>>> +index 3f842f942..12973ac8b 100644
>>> =C2=A0 --- a/policy/modules/admin/rpm.fc
>>> =C2=A0 +++ b/policy/modules/admin/rpm.fc
>>> -@@ -66,4 +66,6 @@ ifdef(`distro_redhat',`
>>> +@@ -71,4 +71,6 @@ ifdef(`distro_redhat',`
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ifdef(`enable_mls',`
>>> =C2=A0=C2=A0 /usr/sbin/cpio=C2=A0=C2=A0=C2=A0 -- gen_context(system_u=
:object_r:rpm_exec_t,s0)
>>> @@ -23,5 +23,5 @@ index aaf530c2b..618b18cec 100644
>>> =C2=A0 +/usr/bin/cpio\.cpio=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:rpm_exec_t,s0)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-=
alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-=
alternatives.patch=20
>>>
>>> index 14c7d5b..32d38f1 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-=
alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-=
alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 52853ae9ee13038c5ffae8616858c442d412a2b8 Mon Sep 17 00:00:00 20=
01
>>> +From 4b202554e646a60000c1acad7bbdfae1078bdc10 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Thu, 13 Feb 2014 00:33:07 -0500
>>> =C2=A0 Subject: [PATCH] fc/su: apply policy to su alternatives
>>> @@ -23,5 +23,5 @@ index 3375c9692..a9868cd58 100644
>>> =C2=A0 +/usr/bin/su\.shadow=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:su_exec_t,s0)
>>> =C2=A0 +/usr/bin/su\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:su_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-=
for-fstools.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-=
for-fstools.patch=20
>>>
>>> index c2e0ca8..de0aad7 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-=
for-fstools.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-=
for-fstools.patch
>>> @@ -1,4 +1,4 @@
>>> -From 4f3a637c0385204c0b87806d158e106fb9f88972 Mon Sep 17 00:00:00 20=
01
>>> +From f64a5d6a2f2e72ae6c5122220eb759117b6384c8 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Mon, 27 Jan 2014 03:54:01 -0500
>>> =C2=A0 Subject: [PATCH] fc/fstools: fix real path for fstools
>>> @@ -10,14 +10,14 @@ Signed-off-by: Shrikant Bobade=20
>>> <shrikant_bobade@mentor.com>
>>> =C2=A0 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 ---
>>> - policy/modules/system/fstools.fc | 10 ++++++++++
>>> - 1 file changed, 10 insertions(+)
>>> + policy/modules/system/fstools.fc | 11 +++++++++++
>>> + 1 file changed, 11 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/fstools.fc=20
>>> b/policy/modules/system/fstools.fc
>>> -index d871294e8..bef711850 100644
>>> +index 8fbd5ce44..2842afbcc 100644
>>> =C2=A0 --- a/policy/modules/system/fstools.fc
>>> =C2=A0 +++ b/policy/modules/system/fstools.fc
>>> -@@ -59,7 +59,9 @@
>>> +@@ -58,7 +58,9 @@
>>> =C2=A0=C2=A0 /usr/sbin/addpart=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/badblocks=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/blkid=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> @@ -27,12 +27,13 @@ index d871294e8..bef711850 100644
>>> =C2=A0=C2=A0 /usr/sbin/cfdisk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/clubufflush=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/delpart=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> -@@ -73,10 +75,12 @@
>>> +@@ -72,10 +74,13 @@
>>> =C2=A0=C2=A0 /usr/sbin/efibootmgr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/fatsort=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/fdisk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0 +/usr/sbin/fdisk\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/findfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> ++/usr/sbin/findfs\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/fsck.*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/gdisk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/hdparm=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> @@ -40,7 +41,7 @@ index d871294e8..bef711850 100644
>>> =C2=A0=C2=A0 /usr/sbin/install-mbr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/jfs_.*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/losetup.*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> -@@ -84,24 +88,30 @@
>>> +@@ -83,24 +88,30 @@
>>> =C2=A0=C2=A0 /usr/sbin/make_reiser4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/mkdosfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/mke2fs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> @@ -72,5 +73,5 @@ index d871294e8..bef711850 100644
>>> =C2=A0=C2=A0 /usr/sbin/zhack=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/zinject=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-altern=
atives-for-sysvinit.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-altern=
atives-for-sysvinit.patch=20
>>>
>>> index b3ab0cc..5e9c197 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-altern=
atives-for-sysvinit.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-altern=
atives-for-sysvinit.patch
>>> @@ -1,4 +1,4 @@
>>> -From e1439aa43af6ef15b35eac3cdbf0cea561768362 Mon Sep 17 00:00:00 20=
01
>>> +From 6d2a96abd1e292d0c34ff77501e618cfc193655f Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
>>> @@ -26,7 +26,7 @@ index bf51c103f..91ed72be0 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 /run/shutdown\.pid=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shutdown_runtime_t,s0)
>>> =C2=A0 diff --git a/policy/modules/kernel/corecommands.fc=20
>>> b/policy/modules/kernel/corecommands.fc
>>> -index 9187e50af..0ecabe34e 100644
>>> +index b70940928..e6077fd5b 100644
>>> =C2=A0 --- a/policy/modules/kernel/corecommands.fc
>>> =C2=A0 +++ b/policy/modules/kernel/corecommands.fc
>>> =C2=A0 @@ -151,6 +151,8 @@ ifdef(`distro_gentoo',`
>>> @@ -39,10 +39,10 @@ index 9187e50af..0ecabe34e 100644
>>> =C2=A0=C2=A0 /usr/bin/sash=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/sesh=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0 diff --git a/policy/modules/system/init.fc=20
>>> b/policy/modules/system/init.fc
>>> -index 63cf195e6..5268bddb2 100644
>>> +index 1a99e5824..7f0b7c699 100644
>>> =C2=A0 --- a/policy/modules/system/init.fc
>>> =C2=A0 +++ b/policy/modules/system/init.fc
>>> -@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
>>> +@@ -41,6 +41,7 @@ ifdef(`distro_gentoo',`
>>> =C2=A0=C2=A0 /usr/libexec/dcc/stop-.* --=20
>>> gen_context(system_u:object_r:initrc_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 /usr/sbin/init(ng)?=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:init_exec_t,s0)
>>> @@ -51,5 +51,5 @@ index 63cf195e6..5268bddb2 100644
>>> =C2=A0=C2=A0 /usr/sbin/upstart=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:init_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-=
brctl-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-=
brctl-alternatives.patch=20
>>>
>>> index b9812b7..b0ba609 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-=
brctl-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-=
brctl-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 274066b3397b53d63134aee94a0148d9c7d1886d Mon Sep 17 00:00:00 20=
01
>>> +From 2e9c22ee83b7d4fea7b177ca8111c06e69338db9 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 10:19:54 +0800
>>> =C2=A0 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
>>> @@ -20,5 +20,5 @@ index ed472f095..2a852b0fd 100644
>>> =C2=A0=C2=A0 /usr/sbin/brctl=C2=A0=C2=A0=C2=A0 -- gen_context(system_=
u:object_r:brctl_exec_t,s0)
>>> =C2=A0 +/usr/sbin/brctl\.bridge-utils=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:brctl_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-pol=
icy-to-nologin-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-pol=
icy-to-nologin-alternatives.patch=20
>>>
>>> index e0ddc5e..58ac463 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-pol=
icy-to-nologin-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-pol=
icy-to-nologin-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From ab0267f77e38bcda797cfe00ba6fa49ba89e334a Mon Sep 17 00:00:00 20=
01
>>> +From c43f2d7ddf1d0c2185796e0297dd9f85b9663aaf Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 10:21:51 +0800
>>> =C2=A0 Subject: [PATCH] fc/corecommands: apply policy to nologin=20
>>> alternatives
>>> @@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/corecommands.fc=20
>>> b/policy/modules/kernel/corecommands.fc
>>> -index 0ecabe34e..e27e701ef 100644
>>> +index e6077fd5b..0df59e837 100644
>>> =C2=A0 --- a/policy/modules/kernel/corecommands.fc
>>> =C2=A0 +++ b/policy/modules/kernel/corecommands.fc
>>> -@@ -304,6 +304,8 @@ ifdef(`distro_debian',`
>>> +@@ -306,6 +306,8 @@ ifdef(`distro_debian',`
>>> =C2=A0=C2=A0 /usr/sbin/insmod_ksymoops_clean=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:bin_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/mkfs\.cramfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:bin_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/nologin=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> @@ -24,5 +24,5 @@ index 0ecabe34e..e27e701ef 100644
>>> =C2=A0=C2=A0 /usr/sbin/sesh=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/smrsh=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:shell_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-polic=
y-to-sulogin-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-polic=
y-to-sulogin-alternatives.patch=20
>>>
>>> index 2fe3740..3c43254 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-polic=
y-to-sulogin-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-polic=
y-to-sulogin-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From cfb86acce9fe9da9b88c853c0b22d48d99602fbb Mon Sep 17 00:00:00 20=
01
>>> +From 11c95928e325aea7e4c41a9cdf969f9bdd306611 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 10:43:28 +0800
>>> =C2=A0 Subject: [PATCH] fc/locallogin: apply policy to sulogin altern=
atives
>>> @@ -21,5 +21,5 @@ index fc8d58507..59e6e9601 100644
>>> =C2=A0 +/usr/sbin/sulogin\.util-linux=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:sulogin_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/sushell=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:sulogin_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-nt=
pd-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-nt=
pd-alternatives.patch=20
>>>
>>> index 4b046ce..cbae4c5 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-nt=
pd-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-nt=
pd-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From e159e70b533b500390337ec666d678c7424afb90 Mon Sep 17 00:00:00 20=
01
>>> +From 5841a5bd25e6017b6ccff4f56628ad6e950eadad Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 10:45:23 +0800
>>> =C2=A0 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
>>> @@ -23,5 +23,5 @@ index cd69ea5d5..49ffe6f68 100644
>>> =C2=A0=C2=A0 /usr/sbin/sntp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:ntpdate_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-=
to-kerberos-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-=
to-kerberos-alternatives.patch=20
>>>
>>> index 9d2e6fa..76e7fe9 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-=
to-kerberos-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-=
to-kerberos-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 95797c20fb68558b9f37ded3f1cc9a4ef09717f9 Mon Sep 17 00:00:00 20=
01
>>> +From 8126ec521e5a0f72da098f5d90b5b5b392006b7c Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 10:55:05 +0800
>>> =C2=A0 Subject: [PATCH] fc/kerberos: apply policy to kerberos alterna=
tives
>>> @@ -46,5 +46,5 @@ index df21fcc78..ce0166edd 100644
>>> =C2=A0=C2=A0 /var/log/kadmin\.log.*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:kadmind_log_t,s0)
>>> =C2=A0=C2=A0 /var/log/kadmind\.log.*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:kadmind_log_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-l=
dap-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-l=
dap-alternatives.patch=20
>>>
>>> index e0b7b9e..a46c9c9 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-l=
dap-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-l=
dap-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 6b43af067ec45bce1b7059fc549e246f53311d3a Mon Sep 17 00:00:00 20=
01
>>> +From c71ea08245069001b56aadd7bb0af28e019f45e4 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 11:06:13 +0800
>>> =C2=A0 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
>>> @@ -36,5 +36,5 @@ index 0a1d08d0f..65b202962 100644
>>> =C2=A0=C2=A0 /run/openldap(/.*)?=20
>>> gen_context(system_u:object_r:slapd_runtime_t,s0)
>>> =C2=A0=C2=A0 /run/slapd.*=C2=A0=C2=A0=C2=A0 -s gen_context(system_u:o=
bject_r:slapd_runtime_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-polic=
y-to-postgresql-alternative.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-polic=
y-to-postgresql-alternative.patch=20
>>>
>>> index 4a1a2dc..0a0464f 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-polic=
y-to-postgresql-alternative.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-polic=
y-to-postgresql-alternative.patch
>>> @@ -1,4 +1,4 @@
>>> -From 5f664c3a38853129fa1703032822c203dbeaf0a6 Mon Sep 17 00:00:00 20=
01
>>> +From 72726c1bc51628e6eb56e758f1e334f9b9a0f17e Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 11:13:16 +0800
>>> =C2=A0 Subject: [PATCH] fc/postgresql: apply policy to postgresql=20
>>> alternatives
>>> @@ -33,5 +33,5 @@ index f31a52cf8..f9bf46870 100644
>>> =C2=A0=C2=A0 /usr/share/jonas/pgsql(/.*)?=20
>>> gen_context(system_u:object_r:postgresql_db_t,s0)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to=
-screen-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to=
-screen-alternatives.patch=20
>>>
>>> index 9ae9435..e95cb3c 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to=
-screen-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to=
-screen-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 2d1634127f8f5c9ec98f866711b8d15b7df815d1 Mon Sep 17 00:00:00 20=
01
>>> +From 003a22f73563ef7b8b4ab6a6a0cb4a920a43570f Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 11:15:33 +0800
>>> =C2=A0 Subject: [PATCH] fc/screen: apply policy to screen alternative=
s
>>> @@ -21,5 +21,5 @@ index e51e01d97..238dc263e 100644
>>> =C2=A0 +/usr/bin/screen-.*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
--=20
>>> gen_context(system_u:object_r:screen_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/tmux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
--=20
>>> gen_context(system_u:object_r:screen_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-polic=
y-to-usermanage-alternative.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-polic=
y-to-usermanage-alternative.patch=20
>>>
>>> index 2dbdcf4..a92b809 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-polic=
y-to-usermanage-alternative.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-polic=
y-to-usermanage-alternative.patch
>>> @@ -1,4 +1,4 @@
>>> -From 2323a6ab69c4a74ab127c16e38f14616a289b3d1 Mon Sep 17 00:00:00 20=
01
>>> +From fdf7c2d27b6ecf08c88bb98e52a7d8284ac828af Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 11:25:34 +0800
>>> =C2=A0 Subject: [PATCH] fc/usermanage: apply policy to usermanage=20
>>> alternatives
>>> @@ -7,26 +7,28 @@ Upstream-Status: Inappropriate [embedded specific]
>>> =C2=A0 =C2=A0 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 ---
>>> - policy/modules/admin/usermanage.fc | 6 ++++++
>>> - 1 file changed, 6 insertions(+)
>>> + policy/modules/admin/usermanage.fc | 8 ++++++++
>>> + 1 file changed, 8 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/admin/usermanage.fc=20
>>> b/policy/modules/admin/usermanage.fc
>>> -index 620eefc6f..bf1ff09ab 100644
>>> +index 7209a8dd0..c9dc1f000 100644
>>> =C2=A0 --- a/policy/modules/admin/usermanage.fc
>>> =C2=A0 +++ b/policy/modules/admin/usermanage.fc
>>> -@@ -4,7 +4,11 @@ ifdef(`distro_debian',`
>>> +@@ -4,8 +4,13 @@ ifdef(`distro_debian',`
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 /usr/bin/chage=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/chfn=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
--=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> =C2=A0 +/usr/bin/chfn\.shadow=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> =C2=A0 +/usr/bin/chfn\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> + /usr/bin/chpasswd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> ++/usr/bin/chpasswd\.shadow=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/chsh=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
--=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> =C2=A0 +/usr/bin/chsh\.shadow=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> =C2=A0 +/usr/bin/chsh\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:chfn_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/crack_[a-z]*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:crack_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/cracklib-[a-z]* --=20
>>> gen_context(system_u:object_r:crack_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/gpasswd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:groupadd_exec_t,s0)
>>> -@@ -14,6 +18,7 @@ ifdef(`distro_debian',`
>>> +@@ -15,6 +20,7 @@ ifdef(`distro_debian',`
>>> =C2=A0=C2=A0 /usr/bin/grpconv=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/grpunconv=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/passwd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> @@ -34,7 +36,15 @@ index 620eefc6f..bf1ff09ab 100644
>>> =C2=A0=C2=A0 /usr/bin/pwconv=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/pwunconv=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/bin/useradd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:useradd_exec_t,s0)
>>> -@@ -39,6 +44,7 @@ ifdef(`distro_debian',`
>>> +@@ -26,6 +32,7 @@ ifdef(`distro_debian',`
>>> + /usr/lib/cracklib_dict.* --=20
>>> gen_context(system_u:object_r:crack_db_t,s0)
>>> +
>>> + /usr/sbin/chpasswd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> ++/usr/sbin/chpasswd\.shadow=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:passwd_exec_t,s0)
>>> + /usr/sbin/crack_[a-z]*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:crack_exec_t,s0)
>>> + /usr/sbin/cracklib-[a-z]* --=20
>>> gen_context(system_u:object_r:crack_exec_t,s0)
>>> + /usr/sbin/gpasswd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:groupadd_exec_t,s0)
>>> +@@ -41,6 +48,7 @@ ifdef(`distro_debian',`
>>> =C2=A0=C2=A0 /usr/sbin/usermod=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:useradd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/vigr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> =C2=A0=C2=A0 /usr/sbin/vipw=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>>> @@ -43,5 +53,5 @@ index 620eefc6f..bf1ff09ab 100644
>>> =C2=A0=C2=A0 /usr/share/cracklib(/.*)?=20
>>> gen_context(system_u:object_r:crack_db_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context=
-to-start_getty.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context=
-to-start_getty.patch=20
>>>
>>> index c0d9cf4..f6fa8a0 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context=
-to-start_getty.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context=
-to-start_getty.patch
>>> @@ -1,4 +1,4 @@
>>> -From dbd399143d6fbda828cfc9f2546bc730e0da584c Mon Sep 17 00:00:00 20=
01
>>> +From 863ece4fd9815997486c04ce89180707435669e4 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Fri, 15 Nov 2019 16:07:30 +0800
>>> =C2=A0 Subject: [PATCH] fc/getty: add file context to start_getty
>>> @@ -23,5 +23,5 @@ index 116ea6421..53ff6137b 100644
>>> =C2=A0=C2=A0 /usr/sbin/.*getty=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:getty_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-=
vlock-alternatives.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-=
vlock-alternatives.patch=20
>>>
>>> index 71521e8..7f63b14 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-=
vlock-alternatives.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-=
vlock-alternatives.patch
>>> @@ -1,4 +1,4 @@
>>> -From 0280f05e2c9665f094d7098cd03e11d75908bcdb Mon Sep 17 00:00:00 20=
01
>>> +From 5bb33b7d9d7915399cca7d8c6fbdd9c0e27c1cd8 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Wed, 18 Dec 2019 15:04:41 +0800
>>> =C2=A0 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
>>> @@ -21,5 +21,5 @@ index f668cde9c..c4bc50984 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 /usr/sbin/vlock-main=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:vlock_exec_t,s0)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-=
scripts-and-systemd-service.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-=
scripts-and-systemd-service.patch=20
>>>
>>> index ca9b644..cfb2fd5 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-=
scripts-and-systemd-service.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-=
scripts-and-systemd-service.patch
>>> @@ -1,4 +1,4 @@
>>> -From 7f8b07b7af0c3cd8bbec49082b42011ac433df45 Mon Sep 17 00:00:00 20=
01
>>> +From 574df1810c8f32bbf24b223f72f6622b0df7e82c Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Tue, 30 Jun 2020 10:45:57 +0800
>>> =C2=A0 Subject: [PATCH] fc: add fcontext for init scripts and systemd=
=20
>>> service files
>>> @@ -34,7 +34,7 @@ index 382c067f9..0ecc5acc4 100644
>>> =C2=A0=C2=A0 /usr/bin/rngd=C2=A0=C2=A0=C2=A0 -- gen_context(system_u:=
object_r:rngd_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 diff --git a/policy/modules/services/rpc.fc=20
>>> b/policy/modules/services/rpc.fc
>>> -index 88d2acaf0..d9c0a4aa7 100644
>>> +index 75c2f0617..fa881ba2e 100644
>>> =C2=A0 --- a/policy/modules/services/rpc.fc
>>> =C2=A0 +++ b/policy/modules/services/rpc.fc
>>> =C2=A0 @@ -1,7 +1,9 @@
>>> @@ -46,7 +46,7 @@ index 88d2acaf0..d9c0a4aa7 100644
>>> =C2=A0 +/etc/rc\.d/init\.d/nfscommon=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
>>> =C2=A0=C2=A0 /etc/rc\.d/init\.d/rpcidmapd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
>>> =C2=A0=C2=A0 - /usr/bin/rpc\..*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:rpcd_exec_t,s0)
>>> + /usr/bin/nfsdcld=C2=A0=C2=A0=C2=A0 -- gen_context(system_u:object_r=
:rpcd_exec_t,s0)
>>> =C2=A0 diff --git a/policy/modules/system/logging.fc=20
>>> b/policy/modules/system/logging.fc
>>> =C2=A0 index 5681acb51..4ff5f990a 100644
>>> =C2=A0 --- a/policy/modules/system/logging.fc
>>> @@ -60,5 +60,5 @@ index 5681acb51..4ff5f990a 100644
>>> =C2=A0=C2=A0 /usr/lib/systemd/systemd-kmsg-syslogd=C2=A0=C2=A0=C2=A0 =
--=20
>>> gen_context(system_u:object_r:syslogd_exec_t,s0)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-s=
et-aliase-for-root-director.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-s=
et-aliase-for-root-director.patch=20
>>>
>>> index dc10350..82b4708 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-s=
et-aliase-for-root-director.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-s=
et-aliase-for-root-director.patch
>>> @@ -1,4 +1,4 @@
>>> -From 0bb081084a2d12f9041bfae195481d898b5a0ba1 Mon Sep 17 00:00:00 20=
01
>>> +From 01f57c996e09fb68daf3d97805c46c27a6d34304 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Sun, 5 Apr 2020 22:03:45 +0800
>>> =C2=A0 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root=
=20
>>> directory
>>> @@ -26,5 +26,5 @@ index 690007f22..f80499ebf 100644
>>> =C2=A0 +# Add an aliase for it
>>> =C2=A0 +/root /home/root
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-log=
ging-add-rules-for-the-syml.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-log=
ging-add-rules-for-the-syml.patch=20
>>>
>>> index f8a4cec..06b792a 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-log=
ging-add-rules-for-the-syml.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-log=
ging-add-rules-for-the-syml.patch
>>> @@ -1,4 +1,4 @@
>>> -From 9c676fe5ff2a14206f25bf8ed932c305f13dcfdc Mon Sep 17 00:00:00 20=
01
>>> +From 2e9b42143ccb92f04d8d57430b3ae1e9f55eb00e Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: add rules for =
the=20
>>> symlink of
>>> @@ -30,7 +30,7 @@ index 4ff5f990a..dee26a9f4 100644
>>> =C2=A0=C2=A0 /var/log/dmesg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 -- gen_context(system_u:object_r:var_log_t,s0)
>>> =C2=A0=C2=A0 /var/log/syslog=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --=20
>>> gen_context(system_u:object_r:var_log_t,s0)
>>> =C2=A0 diff --git a/policy/modules/system/logging.if=20
>>> b/policy/modules/system/logging.if
>>> -index 341763730..30d402c75 100644
>>> +index cf7ef1721..b627cacb8 100644
>>> =C2=A0 --- a/policy/modules/system/logging.if
>>> =C2=A0 +++ b/policy/modules/system/logging.if
>>> =C2=A0 @@ -1086,10 +1086,12 @@=20
>>> interface(`logging_append_all_inherited_logs',`
>>> @@ -100,5 +100,5 @@ index 341763730..30d402c75 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-log=
ging-add-rules-for-syslogd-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-log=
ging-add-rules-for-syslogd-.patch=20
>>>
>>> index a06b3f4..ecfc018 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-log=
ging-add-rules-for-syslogd-.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-log=
ging-add-rules-for-syslogd-.patch
>>> @@ -1,4 +1,4 @@
>>> -From c9759b1024873819cf594fe7ac3bf06bcf0d959d Mon Sep 17 00:00:00 20=
01
>>> +From 26dc5529db7664ae248eba4dbc5d17915c371137 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Date: Fri, 29 Mar 2019 10:33:18 -0400
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: add rules for=20
>>> syslogd symlink
>>> @@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index 21e3285a9..abee7df9c 100644
>>> +index abd61e6bd..90d8ccd31 100644
>>> =C2=A0 --- a/policy/modules/system/logging.te
>>> =C2=A0 +++ b/policy/modules/system/logging.te
>>> -@@ -411,6 +411,7 @@ files_search_spool(syslogd_t)
>>> +@@ -420,6 +420,7 @@ files_search_spool(syslogd_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 # Allow access for syslog-ng
>>> =C2=A0=C2=A0 allow syslogd_t var_log_t:dir { create setattr };
>>> @@ -30,5 +30,5 @@ index 21e3285a9..abee7df9c 100644
>>> =C2=A0=C2=A0 # for systemd but can not be conditional
>>> =C2=A0=C2=A0 files_runtime_filetrans(syslogd_t, syslogd_tmp_t, dir, "=
log")
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-fil=
es-add-rules-for-the-symlin.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-fil=
es-add-rules-for-the-symlin.patch=20
>>>
>>> index ffa78ac..48e8acf 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-fil=
es-add-rules-for-the-symlin.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-fil=
es-add-rules-for-the-symlin.patch
>>> @@ -1,4 +1,4 @@
>>> -From fd55f9f292617c7475c62c07ed6c478b4bd9eda5 Mon Sep 17 00:00:00 20=
01
>>> +From 9052089dfc4f7466fcf304ab282c2e32933a5881 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/kernel/files: add rules for th=
e=20
>>> symlink of
>>> @@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 2 files changed, 9 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/files.fc=20
>>> b/policy/modules/kernel/files.fc
>>> -index 826722f4e..677ae96c3 100644
>>> +index f6ff6b079..279df3d3c 100644
>>> =C2=A0 --- a/policy/modules/kernel/files.fc
>>> =C2=A0 +++ b/policy/modules/kernel/files.fc
>>> -@@ -172,6 +172,7 @@ HOME_ROOT/lost\+found/.* <<none>>
>>> +@@ -170,6 +170,7 @@ HOME_ROOT/lost\+found/.* <<none>>
>>> =C2=A0=C2=A0 # /tmp
>>> =C2=A0=C2=A0 #
>>> =C2=A0=C2=A0 /tmp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 -d=20
>>> gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
>>> @@ -30,10 +30,10 @@ index 826722f4e..677ae96c3 100644
>>> =C2=A0=C2=A0 /tmp/\.journal=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 <<none>>
>>> =C2=A0=C2=A0 =C2=A0 diff --git a/policy/modules/kernel/files.if=20
>>> b/policy/modules/kernel/files.if
>>> -index 495cbe2f4..b308eefd9 100644
>>> +index f7217b226..451f302af 100644
>>> =C2=A0 --- a/policy/modules/kernel/files.if
>>> =C2=A0 +++ b/policy/modules/kernel/files.if
>>> -@@ -4555,6 +4555,7 @@ interface(`files_search_tmp',`
>>> +@@ -4750,6 +4750,7 @@ interface(`files_search_tmp',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 tmp_t:dir =
search_dir_perms;
>>> @@ -41,7 +41,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4591,6 +4592,7 @@ interface(`files_list_tmp',`
>>> +@@ -4786,6 +4787,7 @@ interface(`files_list_tmp',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 tmp_t:dir =
list_dir_perms;
>>> @@ -49,7 +49,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4627,6 +4629,7 @@ interface(`files_delete_tmp_dir_entry',`
>>> +@@ -4822,6 +4824,7 @@ interface(`files_delete_tmp_dir_entry',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 tmp_t:dir =
del_entry_dir_perms;
>>> @@ -57,7 +57,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4645,6 +4648,7 @@ interface(`files_read_generic_tmp_files',`
>>> +@@ -4840,6 +4843,7 @@ interface(`files_read_generic_tmp_files',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 read_files_pattern(=
$1, tmp_t, tmp_t)
>>> @@ -65,7 +65,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4663,6 +4667,7 @@ interface(`files_manage_generic_tmp_dirs',`
>>> +@@ -4858,6 +4862,7 @@ interface(`files_manage_generic_tmp_dirs',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 manage_dirs_pattern=
($1, tmp_t, tmp_t)
>>> @@ -73,7 +73,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4699,6 +4704,7 @@ interface(`files_manage_generic_tmp_files',`
>>> +@@ -4894,6 +4899,7 @@ interface(`files_manage_generic_tmp_files',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 manage_files_patter=
n($1, tmp_t, tmp_t)
>>> @@ -81,7 +81,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4735,6 +4741,7 @@ interface(`files_rw_generic_tmp_sockets',`
>>> +@@ -4930,6 +4936,7 @@ interface(`files_rw_generic_tmp_sockets',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rw_sock_files_patte=
rn($1, tmp_t, tmp_t)
>>> @@ -89,7 +89,7 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> -@@ -4942,6 +4949,7 @@ interface(`files_tmp_filetrans',`
>>> +@@ -5137,6 +5144,7 @@ interface(`files_tmp_filetrans',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 filetrans_pattern($=
1, tmp_t, $2, $3, $4)
>>> @@ -98,5 +98,5 @@ index 495cbe2f4..b308eefd9 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-log=
ging-fix-auditd-startup-fai.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-log=
ging-fix-auditd-startup-fai.patch=20
>>>
>>> index 3f10d06..22ce8f2 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-log=
ging-fix-auditd-startup-fai.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-log=
ging-fix-auditd-startup-fai.patch
>>> @@ -1,4 +1,4 @@
>>> -From a196ae5e13b3f8e0d2e7ff27c8d481c9376b18e9 Mon Sep 17 00:00:00 20=
01
>>> +From eed095029b270bbc49dc67d6b7b6b2fe9c3bca07 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: fix auditd sta=
rtup=20
>>> failures
>>> @@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index abee7df9c..cc530a2be 100644
>>> +index 90d8ccd31..d3b06db7d 100644
>>> =C2=A0 --- a/policy/modules/system/logging.te
>>> =C2=A0 +++ b/policy/modules/system/logging.te
>>> -@@ -161,6 +161,7 @@ dontaudit auditd_t auditd_etc_t:file map;
>>> +@@ -169,6 +169,7 @@ dontaudit auditd_t auditd_etc_t:file map;
>>> =C2=A0=C2=A0 manage_files_pattern(auditd_t, auditd_log_t, auditd_log_=
t)
>>> =C2=A0=C2=A0 allow auditd_t auditd_log_t:dir setattr;
>>> =C2=A0=C2=A0 manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_=
log_t)
>>> @@ -28,7 +28,7 @@ index abee7df9c..cc530a2be 100644
>>> =C2=A0=C2=A0 allow auditd_t var_log_t:dir search_dir_perms;
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 manage_files_pattern(auditd_t, auditd_runti=
me_t,=20
>>> auditd_runtime_t)
>>> -@@ -290,6 +291,7 @@ optional_policy(`
>>> +@@ -298,6 +299,7 @@ optional_policy(`
>>> =C2=A0=C2=A0 allow audisp_remote_t self:capability { setpcap setuid }=
;
>>> =C2=A0=C2=A0 allow audisp_remote_t self:process { getcap setcap };
>>> =C2=A0=C2=A0 allow audisp_remote_t self:tcp_socket create_socket_perm=
s;
>>> @@ -37,5 +37,5 @@ index abee7df9c..cc530a2be 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 manage_dirs_pattern(audisp_remote_t, audit_=
spool_t,=20
>>> audit_spool_t)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-ter=
minal-don-t-audit-tty_devic.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-ter=
minal-don-t-audit-tty_devic.patch=20
>>>
>>> index 3421a43..f62db74 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-ter=
minal-don-t-audit-tty_devic.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-ter=
minal-don-t-audit-tty_devic.patch
>>> @@ -1,4 +1,4 @@
>>> -From bfcb86c9c9ad6a9f10a8556320443d8c96adedc9 Mon Sep 17 00:00:00 20=
01
>>> +From 3f24b88886fcd1a17248d8d674a02d01061d937a Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/kernel/terminal: don't audit=20
>>> tty_device_t in
>>> @@ -17,7 +17,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 3 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/terminal.if=20
>>> b/policy/modules/kernel/terminal.if
>>> -index 55c18dffb..e8c0735eb 100644
>>> +index e5645c7c5..6e9f654ac 100644
>>> =C2=A0 --- a/policy/modules/kernel/terminal.if
>>> =C2=A0 +++ b/policy/modules/kernel/terminal.if
>>> =C2=A0 @@ -335,9 +335,12 @@ interface(`term_use_console',`
>>> @@ -34,5 +34,5 @@ index 55c18dffb..e8c0735eb 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ########################################
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-r=
pcbind-allow-rpcbind_t-to-c.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-r=
pcbind-allow-rpcbind_t-to-c.patch=20
>>>
>>> similarity index 52%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0036-policy-modules-services-rpc=
bind-allow-rpcbind_t-to-c.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpc=
bind-allow-rpcbind_t-to-c.patch
>>> index f9aa158..0b00f5a 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-r=
pcbind-allow-rpcbind_t-to-c.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-r=
pcbind-allow-rpcbind_t-to-c.patch
>>> @@ -1,4 +1,4 @@
>>> -From d1352b688603b16eb6da7a30198d8b7abfc55d1e Mon Sep 17 00:00:00 20=
01
>>> +From 9c84425bbcaef5913fb6e309b8811639134714ed Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Wed, 1 Jul 2020 08:44:07 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbin=
d_t=20
>>> to create
>>> @@ -13,14 +13,14 @@ Upstream-Status: Inappropriate [embedded specific=
]
>>> =C2=A0 =C2=A0 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 ---
>>> - policy/modules/services/rpcbind.te | 5 +++--
>>> - 1 file changed, 3 insertions(+), 2 deletions(-)
>>> + policy/modules/services/rpcbind.te | 2 +-
>>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/services/rpcbind.te=20
>>> b/policy/modules/services/rpcbind.te
>>> -index 168c28ca3..e1eb7d5fc 100644
>>> +index 137c21ece..2a712192b 100644
>>> =C2=A0 --- a/policy/modules/services/rpcbind.te
>>> =C2=A0 +++ b/policy/modules/services/rpcbind.te
>>> -@@ -25,16 +25,17 @@ files_type(rpcbind_var_lib_t)
>>> +@@ -25,7 +25,7 @@ files_type(rpcbind_var_lib_t)
>>> =C2=A0=C2=A0 # Local policy
>>> =C2=A0=C2=A0 #
>>> =C2=A0=C2=A0 @@ -29,17 +29,6 @@ index 168c28ca3..e1eb7d5fc 100644
>>> =C2=A0=C2=A0 # net_admin is for SO_SNDBUFFORCE
>>> =C2=A0=C2=A0 dontaudit rpcbind_t self:capability net_admin;
>>> =C2=A0=C2=A0 allow rpcbind_t self:fifo_file rw_fifo_file_perms;
>>> - allow rpcbind_t self:unix_stream_socket { accept listen };
>>> - allow rpcbind_t self:tcp_socket { accept listen };
>>> -
>>> -+manage_dirs_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t=
)
>>> - manage_files_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_=
t)
>>> - manage_sock_files_pattern(rpcbind_t, rpcbind_runtime_t,=20
>>> rpcbind_runtime_t)
>>> --files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file=20
>>> sock_file })
>>> -+files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file=20
>>> sock_file dir })
>>> -
>>> - manage_dirs_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_t=
)
>>> - manage_files_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_=
t)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-mod=
utils-allow-mod_t-to-access.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-mod=
utils-allow-mod_t-to-access.patch=20
>>>
>>> deleted file mode 100644
>>> index e7ce388..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-mod=
utils-allow-mod_t-to-access.patch
>>> +++ /dev/null
>>> @@ -1,67 +0,0 @@
>>> -From b3ff2e8572cd929c419775e57b547f309ba9d8fb Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Mon, 24 Aug 2020 11:29:09 +0800
>>> -Subject: [PATCH] policy/modules/system/modutils: allow mod_t to acce=
ss
>>> - confidentiality of class lockdown
>>> -
>>> -The SELinux lockdown implementation was introduced since kernel 5.6 =
by
>>> -commit 59438b46471ae6cdfb761afc8c9beaf1e428a331. We need to allow=20
>>> mod_t
>>> -and udev_t to access confidentiality of class lockdown to mount=20
>>> tracefs.
>>> -
>>> -Fixes:
>>> -kernel: Could not create tracefs 'iwlwifi_data/filter' entry
>>> -kernel: Could not create tracefs 'enable' entry
>>> -kernel: Could not create tracefs 'id' entry
>>> -kernel: Could not create tracefs 'filter' entry
>>> -kernel: Could not create tracefs 'trigger' entry
>>> -kernel: Could not create tracefs 'format' entry
>>> -
>>> -audit[170]: AVC avc:=C2=A0 denied=C2=A0 { confidentiality } for pid=3D=
170
>>> -comm=3D"modprobe" lockdown_reason=3D"use of tracefs"
>>> -scontext=3Dsystem_u:system_r:kmod_t:s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:kmod_t:s15:c0.c1023 tclass=3Dlockdown
>>> -permissive=3D0
>>> -
>>> -audit[190]: AVC avc:=C2=A0 denied=C2=A0 { confidentiality } for pid=3D=
190
>>> -comm=3D"systemd-udevd" lockdown_reason=3D"use of tracefs"
>>> -scontext=3Dsystem_u:system_r:udev_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:udev_t:s0-s15:c0.c1023 tclass=3Dlockdow=
n
>>> -permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/modutils.te | 2 ++
>>> - policy/modules/system/udev.te=C2=A0=C2=A0=C2=A0=C2=A0 | 2 ++
>>> - 2 files changed, 4 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/modutils.te=20
>>> b/policy/modules/system/modutils.te
>>> -index b0a419dc1..5b4f0aca1 100644
>>> ---- a/policy/modules/system/modutils.te
>>> -+++ b/policy/modules/system/modutils.te
>>> -@@ -41,6 +41,8 @@ dontaudit kmod_t self:capability sys_admin;
>>> - allow kmod_t self:udp_socket create_socket_perms;
>>> - allow kmod_t self:rawip_socket create_socket_perms;
>>> -
>>> -+allow kmod_t self:lockdown confidentiality;
>>> -+
>>> - # Read module config and dependency information
>>> - list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
>>> - read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
>>> -diff --git a/policy/modules/system/udev.te=20
>>> b/policy/modules/system/udev.te
>>> -index c50ff68c1..4c5a690fb 100644
>>> ---- a/policy/modules/system/udev.te
>>> -+++ b/policy/modules/system/udev.te
>>> -@@ -67,6 +67,8 @@ ifdef(`init_systemd',`
>>> - # for systemd-udevd to rename interfaces
>>> - allow udev_t self:netlink_route_socket nlmsg_write;
>>> -
>>> -+allow udev_t self:lockdown confidentiality;
>>> -+
>>> - can_exec(udev_t, udev_exec_t)
>>> -
>>> - allow udev_t udev_helper_exec_t:dir list_dir_perms;
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-get=
ty-allow-getty_t-to-search-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-get=
ty-allow-getty_t-to-search-.patch=20
>>>
>>> deleted file mode 100644
>>> index 0dfe0ee..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-get=
ty-allow-getty_t-to-search-.patch
>>> +++ /dev/null
>>> @@ -1,32 +0,0 @@
>>> -From 175b493e7fe69de274388a7f251e74ec9cd56c41 Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Tue, 23 Jun 2020 08:39:44 +0800
>>> -Subject: [PATCH] policy/modules/system/getty: allow getty_t to=20
>>> search tmpfs
>>> -
>>> -Fixes:
>>> -avc:=C2=A0 denied=C2=A0 { search } for=C2=A0 pid=3D211 comm=3D"agett=
y" name=3D"/"=20
>>> dev=3D"tmpfs"
>>> -ino=3D1 scontext=3Dsystem_u:system_r:getty_t
>>> -tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Ddir permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/getty.te | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/getty.te=20
>>> b/policy/modules/system/getty.te
>>> -index e6e76a93b..c704ddb82 100644
>>> ---- a/policy/modules/system/getty.te
>>> -+++ b/policy/modules/system/getty.te
>>> -@@ -68,6 +68,7 @@ files_read_etc_runtime_files(getty_t)
>>> - files_read_etc_files(getty_t)
>>> - files_search_spool(getty_t)
>>> - files_dontaudit_search_var_lib(getty_t)
>>> -+fs_search_tmpfs(getty_t)
>>> -
>>> - fs_search_auto_mountpoints(getty_t)
>>> - # for error condition handling
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-sys=
temd-enable-support-for-sys.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-sys=
temd-enable-support-for-sys.patch=20
>>>
>>> similarity index 91%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0038-policy-modules-system-syste=
md-enable-support-for-sys.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0035-policy-modules-system-syste=
md-enable-support-for-sys.patch
>>> index cc29c7b..43b2f4d 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-sys=
temd-enable-support-for-sys.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-sys=
temd-enable-support-for-sys.patch
>>> @@ -1,4 +1,4 @@
>>> -From 93d4f198bd469a8728f5ce0cc51ff18f8a58b23b Mon Sep 17 00:00:00 20=
01
>>> +From 6465e39b6dfe8daa88cab321e3cf44ccc9f1441d Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Thu, 4 Feb 2016 06:03:19 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/systemd: enable support=
 for
>>> @@ -36,10 +36,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 5 insertions(+), 1 deletion(-)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 3d9198342..31d28a0e3 100644
>>> +index ef25974ac..362248d17 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.te
>>> =C2=A0 +++ b/policy/modules/system/systemd.te
>>> -@@ -10,7 +10,7 @@ policy_module(systemd, 1.12.6)
>>> +@@ -10,7 +10,7 @@ policy_module(systemd)
>>> =C2=A0=C2=A0 ## Enable support for systemd-tmpfiles to manage all non=
-security=20
>>> files.
>>> =C2=A0=C2=A0 ## </p>
>>> =C2=A0=C2=A0 ## </desc>
>>> @@ -48,7 +48,7 @@ index 3d9198342..31d28a0e3 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ## <desc>
>>> =C2=A0=C2=A0 ## <p>
>>> -@@ -1396,6 +1396,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
>>> +@@ -1640,6 +1640,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
>>> =C2=A0=C2=A0 files_relabelto_home(systemd_tmpfiles_t)
>>> =C2=A0=C2=A0 files_relabelto_etc_dirs(systemd_tmpfiles_t)
>>> =C2=A0=C2=A0 files_setattr_lock_dirs(systemd_tmpfiles_t)
>>> @@ -60,5 +60,5 @@ index 3d9198342..31d28a0e3 100644
>>> =C2=A0=C2=A0 files_manage_etc_symlinks(systemd_tmpfiles_t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-sys=
temd-allow-systemd_logind_t.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-sys=
temd-allow-systemd_logind_t.patch=20
>>>
>>> similarity index 88%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0045-policy-modules-system-syste=
md-allow-systemd_logind_t.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0036-policy-modules-system-syste=
md-allow-systemd_logind_t.patch
>>> index 49aa7a6..56b6119 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-sys=
temd-allow-systemd_logind_t.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-sys=
temd-allow-systemd_logind_t.patch
>>> @@ -1,4 +1,4 @@
>>> -From 4e2df7ca542b6c94e74345daaecb33efc82d749a Mon Sep 17 00:00:00 20=
01
>>> +From 2acb5ddbd04c578a420418e3bcb572bbd2dfbae6 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Sat, 18 Dec 2021 09:26:43 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/systemd: allow=20
>>> systemd_logind_t to read
>>> @@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 847895e63..1a83148c1 100644
>>> +index 362248d17..4a1e06640 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.te
>>> =C2=A0 +++ b/policy/modules/system/systemd.te
>>> -@@ -721,6 +721,7 @@=20
>>> userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
>>> +@@ -920,6 +920,7 @@=20
>>> userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
>>> =C2=A0=C2=A0 userdom_relabelto_user_runtime_dirs(systemd_logind_t)
>>> =C2=A0=C2=A0 userdom_setattr_user_ttys(systemd_logind_t)
>>> =C2=A0=C2=A0 userdom_use_user_ttys(systemd_logind_t)
>>> @@ -39,5 +39,5 @@ index 847895e63..1a83148c1 100644
>>> =C2=A0=C2=A0 # Needed to work around patch not yet merged into the=20
>>> systemd-logind supported on RHEL 7.x
>>> =C2=A0=C2=A0 # The change in systemd by Nicolas Iooss on 02-Feb-2016 =
with hash=20
>>> 4b51966cf6c06250036e428608da92f8640beb96
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-user=
manage-allow-useradd-to-rel.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-user=
manage-allow-useradd-to-rel.patch=20
>>>
>>> deleted file mode 100644
>>> index 9465a3e..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-user=
manage-allow-useradd-to-rel.patch
>>> +++ /dev/null
>>> @@ -1,71 +0,0 @@
>>> -From 07866ad826b299194c1bfd7978e5077dde72a68e Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Mon, 11 Oct 2021 10:10:10 +0800
>>> -Subject: [PATCH] policy/modules/admin/usermanage: allow useradd to=20
>>> relabel
>>> - user home files
>>> -
>>> -Fixes:
>>> -avc: denied { relabelfrom } for pid=3D491 comm=3D"useradd" name=3D".=
bashrc"
>>> -dev=3D"vda" ino=3D12641 scontext=3Droot:sysadm_r:useradd_t
>>> -tcontext=3Duser_u:object_r:user_home_t tclass=3Dfile permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/admin/usermanage.te=C2=A0 |=C2=A0 2 ++
>>> - policy/modules/system/userdomain.if | 18 ++++++++++++++++++
>>> - 2 files changed, 20 insertions(+)
>>> -
>>> -diff --git a/policy/modules/admin/usermanage.te=20
>>> b/policy/modules/admin/usermanage.te
>>> -index 98646b4b4..50c479498 100644
>>> ---- a/policy/modules/admin/usermanage.te
>>> -+++ b/policy/modules/admin/usermanage.te
>>> -@@ -496,6 +496,7 @@ files_read_etc_runtime_files(useradd_t)
>>> -
>>> - fs_search_auto_mountpoints(useradd_t)
>>> - fs_getattr_xattr_fs(useradd_t)
>>> -+fs_search_tmpfs(useradd_t)
>>> -
>>> - mls_file_upgrade(useradd_t)
>>> -
>>> -@@ -541,6 +542,7 @@ userdom_home_filetrans_user_home_dir(useradd_t)
>>> - userdom_manage_user_home_content_dirs(useradd_t)
>>> - userdom_manage_user_home_content_files(useradd_t)
>>> - userdom_user_home_dir_filetrans_user_home_content(useradd_t,=20
>>> notdevfile_class_set)
>>> -+userdom_relabel_user_home_content_files(useradd_t)
>>> -
>>> - optional_policy(`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 mta_manage_spool(useradd_t)
>>> -diff --git a/policy/modules/system/userdomain.if=20
>>> b/policy/modules/system/userdomain.if
>>> -index 22b3c1bf7..ec625170d 100644
>>> ---- a/policy/modules/system/userdomain.if
>>> -+++ b/policy/modules/system/userdomain.if
>>> -@@ -2362,6 +2362,24 @@=20
>>> interface(`userdom_dontaudit_relabel_user_home_content_files',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dontaudit $1 user_home_t:file relabel_file_=
perms;
>>> - ')
>>> -
>>> -+########################################
>>> -+## <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Relabel user home files.
>>> -+## </summary>
>>> -+## <param name=3D"domain">
>>> -+##=C2=A0=C2=A0=C2=A0 <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Domain allowed access.
>>> -+##=C2=A0=C2=A0=C2=A0 </summary>
>>> -+## </param>
>>> -+#
>>> -+interface(`userdom_relabel_user_home_content_files',`
>>> -+=C2=A0=C2=A0=C2=A0 gen_require(`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type user_home_t;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 user_home_t:file relabel_file_perms;
>>> -+')
>>> -+
>>> - ########################################
>>> - ## <summary>
>>> - ##=C2=A0=C2=A0=C2=A0 Read user home subdirectory symbolic links.
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysa=
dm-allow-sysadm-to-use-init.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysa=
dm-allow-sysadm-to-use-init.patch=20
>>>
>>> new file mode 100644
>>> index 0000000..78c4dc8
>>> --- /dev/null
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysa=
dm-allow-sysadm-to-use-init.patch
>>> @@ -0,0 +1,36 @@
>>> +From 51a7f8058fee569322c1a0597fccd36c318ad943 Mon Sep 17 00:00:00 20=
01
>>> +From: Yi Zhao <yi.zhao@windriver.com>
>>> +Date: Fri, 28 Oct 2022 11:56:09 +0800
>>> +Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to use=20
>>> init file
>>> + descriptors
>>> +
>>> +Root can not login via console without this.
>>> +
>>> +Fixes:
>>> +avc: denied { use } for pid=3D323 comm=3D"sh" path=3D"/dev/tty1"
>>> +dev=3D"devtmpfs" ino=3D21 scontext=3Droot:sysadm_r:sysadm_t
>>> +tcontext=3Dsystem_u:system_r:init_t tclass=3Dfd permissive=3D0
>>> +
>>> +Upstream-Status: Pending
>>> +
>>> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> +---
>>> + policy/modules/roles/sysadm.te | 2 ++
>>> + 1 file changed, 2 insertions(+)
>>> +
>>> +diff --git a/policy/modules/roles/sysadm.te=20
>>> b/policy/modules/roles/sysadm.te
>>> +index bb715a847..088c954f5 100644
>>> +--- a/policy/modules/roles/sysadm.te
>>> ++++ b/policy/modules/roles/sysadm.te
>>> +@@ -86,6 +86,8 @@ ifdef(`init_systemd',`
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 # LookupDynamicUserByUID on org.freedesktop=
.systemd1.
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 init_dbus_chat(sysadm_t)
>>> +
>>> ++=C2=A0=C2=A0=C2=A0 init_use_fds(sysadm_t)
>>> ++
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 # Allow sysadm to get the status of and set=
 properties of=20
>>> other users,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 # sessions, and seats on the system.
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 systemd_dbus_chat_logind(sysadm_t)
>>> +--
>>> +2.25.1
>>> +
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-sys=
temd-systemd-user-fixes.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-sys=
temd-systemd-user-fixes.patch=20
>>>
>>> new file mode 100644
>>> index 0000000..85bb82b
>>> --- /dev/null
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-sys=
temd-systemd-user-fixes.patch
>>> @@ -0,0 +1,84 @@
>>> +From 5b6f3fcb1ddabd0a66541959306e7b0adfe2b2b0 Mon Sep 17 00:00:00 20=
01
>>> +From: Yi Zhao <yi.zhao@windriver.com>
>>> +Date: Thu, 4 Feb 2021 10:48:54 +0800
>>> +Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
>>> +
>>> +Fixes:
>>> +systemctl[277]: Failed to connect to bus: No medium found
>>> +
>>> +avc: denied { mknod } for=C2=A0 pid=3D297 comm=3D"systemd" capabilit=
y=3D27
>>> +scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> +tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability permis=
sive=3D0
>>> +
>>> +avc: denied { bpf } for pid=3D297 comm=3D"systemd" capability=3D39
>>> +scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> +tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability2=20
>>> permissive=3D0
>>> +
>>> +avc: denied { sys_admin } for pid=3D297 comm=3D"systemd" capability=3D=
21
>>> +scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> +tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability permis=
sive=3D0
>>> +
>>> +avc: denied { perfmon } for pid=3D297 comm=3D"systemd" capability=3D=
38
>>> +scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> +tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability2=20
>>> permissive=3D0
>>> +
>>> +Upstream-Status: Inappropriate [embedded specific]
>>> +
>>> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> +---
>>> + policy/modules/roles/sysadm.te=C2=A0=C2=A0 |=C2=A0 2 ++
>>> + policy/modules/system/systemd.if | 21 ++++++++++++++++++++-
>>> + 2 files changed, 22 insertions(+), 1 deletion(-)
>>> +
>>> +diff --git a/policy/modules/roles/sysadm.te=20
>>> b/policy/modules/roles/sysadm.te
>>> +index 088c954f5..92f50fd5a 100644
>>> +--- a/policy/modules/roles/sysadm.te
>>> ++++ b/policy/modules/roles/sysadm.te
>>> +@@ -98,6 +98,8 @@ ifdef(`init_systemd',`
>>> +
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 # Allow sysadm to follow logs in the journa=
l, i.e. with podman=20
>>> logs -f
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 systemd_watch_journal_dirs(sysadm_t)
>>> ++
>>> ++=C2=A0=C2=A0=C2=A0 systemd_sysadm_user(sysadm_t)
>>> + ')
>>> +
>>> + tunable_policy(`allow_ptrace',`
>>> +diff --git a/policy/modules/system/systemd.if=20
>>> b/policy/modules/system/systemd.if
>>> +index 9dc91fbb7..325ca548b 100644
>>> +--- a/policy/modules/system/systemd.if
>>> ++++ b/policy/modules/system/systemd.if
>>> +@@ -58,7 +58,7 @@ template(`systemd_role_template',`
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:process { getsched =
signal };
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:netlink_kobject_uev=
ent_socket=20
>>> create_socket_perms;
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:unix_stream_socket=20
>>> create_stream_socket_perms;
>>> +-=C2=A0=C2=A0=C2=A0 allow $1_systemd_t $3:process { setsched rlimiti=
nh=20
>>> signal_perms };
>>> ++=C2=A0=C2=A0=C2=A0 allow $1_systemd_t $3:process { setsched rlimiti=
nh=20
>>> signal_perms noatsecure };
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 corecmd_shell_domtrans($1_systemd_t, $3)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 corecmd_bin_domtrans($1_systemd_t, $3)
>>> +
>>> +@@ -2613,3 +2613,22 @@=20
>>> interface(`systemd_use_inherited_machined_ptys', `
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_machined_t:fd use;
>>> +=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_machined_devpts_t:chr_file=
=20
>>> rw_inherited_term_perms;
>>> + ')
>>> ++
>>> ++#########################################
>>> ++## <summary>
>>> ++##=C2=A0=C2=A0=C2=A0 sysadm user for systemd --user
>>> ++## </summary>
>>> ++## <param name=3D"role">
>>> ++##=C2=A0=C2=A0=C2=A0 <summary>
>>> ++##=C2=A0 Role allowed access.
>>> ++##=C2=A0=C2=A0=C2=A0 </summary>
>>> ++## </param>
>>> ++#
>>> ++interface(`systemd_sysadm_user',`
>>> ++=C2=A0=C2=A0=C2=A0 gen_require(`
>>> ++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type sysadm_systemd_t;
>>> ++=C2=A0=C2=A0=C2=A0 ')
>>> ++
>>> ++=C2=A0=C2=A0=C2=A0 allow sysadm_systemd_t self:capability { mknod s=
ys_admin };
>>> ++=C2=A0=C2=A0=C2=A0 allow sysadm_systemd_t self:capability2 { bpf pe=
rfmon };
>>> ++')
>>> +--
>>> +2.25.1
>>> +
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mou=
nt-make-mount_t-domain-MLS-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mou=
nt-make-mount_t-domain-MLS-.patch=20
>>>
>>> similarity index 84%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mount=
-make-mount_t-domain-MLS-.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount=
-make-mount_t-domain-MLS-.patch
>>> index 4cae8c6..c3b4b55 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mou=
nt-make-mount_t-domain-MLS-.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mou=
nt-make-mount_t-domain-MLS-.patch
>>> @@ -1,4 +1,4 @@
>>> -From 705008ba8ef960cf2e4813b4b8c5a87b919d545f Mon Sep 17 00:00:00 20=
01
>>> +From ccdd22cc2776b695f96faffc88699aa2b182e085 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Sat, 15 Feb 2014 04:22:47 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/mount: make mount_t dom=
ain=20
>>> MLS trusted
>>> @@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/mount.te=20
>>> b/policy/modules/system/mount.te
>>> -index e39ab41a8..3481f9294 100644
>>> +index d028723ce..97f49e58e 100644
>>> =C2=A0 --- a/policy/modules/system/mount.te
>>> =C2=A0 +++ b/policy/modules/system/mount.te
>>> -@@ -116,6 +116,7 @@ fs_dontaudit_write_all_image_files(mount_t)
>>> +@@ -112,6 +112,7 @@ fs_dontaudit_write_all_image_files(mount_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 mls_file_read_all_levels(mount_t)
>>> =C2=A0=C2=A0 mls_file_write_all_levels(mount_t)
>>> @@ -31,5 +31,5 @@ index e39ab41a8..3481f9294 100644
>>> =C2=A0=C2=A0 selinux_get_enforce_mode(mount_t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-sys=
temd-fix-systemd-resolved-s.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-sys=
temd-fix-systemd-resolved-s.patch=20
>>>
>>> deleted file mode 100644
>>> index ea8af31..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-sys=
temd-fix-systemd-resolved-s.patch
>>> +++ /dev/null
>>> @@ -1,60 +0,0 @@
>>> -From 99139408a7919282e97e1b2fcd5da33248386d73 Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Mon, 25 Jan 2021 14:14:59 +0800
>>> -Subject: [PATCH] policy/modules/system/systemd: fix=20
>>> systemd-resolved startup
>>> - failures
>>> -
>>> -* Allow systemd_resolved_t to manage systemd_resolved_runtime_t link
>>> -=C2=A0 files
>>> -* Allow systemd_resolved_t to send and recevie messages from dhcpc=20
>>> over
>>> -=C2=A0 dbus
>>> -
>>> -Fixes:
>>> -avc:=C2=A0 denied=C2=A0 { create } for=C2=A0 pid=3D329 comm=3D"syste=
md-resolve"
>>> -name=3D".#stub-resolv.conf53cb7f9d1e3aa72b"
>>> -scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:object_r:systemd_resolved_runtime_t:s0=20
>>> tclass=3Dlnk_file
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { send_msg } for msgtype=3Dmethod_call
>>> -interface=3Dorg.freedesktop.resolve1.Manager member=3DRevertLink
>>> -dest=3Dorg.freedesktop.resolve1 spid=3D340 tpid=3D345
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
>>> -tclass=3Ddbus permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { send_msg } for msgtype=3Dmethod_return des=
t=3D:1.6=20
>>> spid=3D345
>>> -tpid=3D340 scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0=
.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Ddbus
>>> -permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.te | 2 ++
>>> - 1 file changed, 2 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 31d28a0e3..448905ff7 100644
>>> ---- a/policy/modules/system/systemd.te
>>> -+++ b/policy/modules/system/systemd.te
>>> -@@ -1199,6 +1199,7 @@ allow systemd_resolved_t=20
>>> systemd_networkd_runtime_t:dir watch;
>>> -
>>> - manage_dirs_pattern(systemd_resolved_t,=20
>>> systemd_resolved_runtime_t, systemd_resolved_runtime_t)
>>> - manage_files_pattern(systemd_resolved_t,=20
>>> systemd_resolved_runtime_t, systemd_resolved_runtime_t)
>>> -+manage_lnk_files_pattern(systemd_resolved_t,=20
>>> systemd_resolved_runtime_t, systemd_resolved_runtime_t)
>>> - manage_sock_files_pattern(systemd_resolved_t,=20
>>> systemd_resolved_runtime_t, systemd_resolved_runtime_t)
>>> - init_runtime_filetrans(systemd_resolved_t,=20
>>> systemd_resolved_runtime_t, dir)
>>> -
>>> -@@ -1236,6 +1237,7 @@ optional_policy(`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dbus_system_bus_client(systemd_resolved_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dbus_watch_system_bus_runtime_dirs(systemd_=
resolved_t)
>>> - dbus_watch_system_bus_runtime_named_sockets(systemd_resolved_t)
>>> -+=C2=A0=C2=A0=C2=A0 sysnet_dbus_chat_dhcpc(systemd_resolved_t)
>>> - ')
>>> -
>>> - #########################################
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysa=
dm-MLS-sysadm-rw-to-clearan.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysa=
dm-MLS-sysadm-rw-to-clearan.patch=20
>>>
>>> similarity index 83%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysadm=
-MLS-sysadm-rw-to-clearan.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm=
-MLS-sysadm-rw-to-clearan.patch
>>> index 86317b3..d711612 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysa=
dm-MLS-sysadm-rw-to-clearan.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysa=
dm-MLS-sysadm-rw-to-clearan.patch
>>> @@ -1,4 +1,4 @@
>>> -From ef2b9196f3a51745a3644489d316bda7cd67f72d Mon Sep 17 00:00:00 20=
01
>>> +From 64498d6cd30a0a65a24e3e7ab22cca5921c2db89 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Mon, 28 Jan 2019 14:05:18 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw =
to=20
>>> clearance
>>> @@ -7,7 +7,7 @@ The two new rules make sysadm_t domain MLS trusted fo=
r:
>>> =C2=A0=C2=A0 - reading from files at all levels.
>>> =C2=A0=C2=A0 - writing to processes up to its clearance(s0-s15).
>>> =C2=A0 -With default MLS policy, root user would login in as sysadm_t=
:s0 by
>>> +With default MLS policy, root user would login as sysadm_t:s0 by
>>> =C2=A0 default. Most processes will run in sysadm_t:s0 because no
>>> =C2=A0 domtrans/rangetrans rules, as a result, even root could not ac=
cess
>>> =C2=A0 high level files/processes.
>>> @@ -23,10 +23,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/roles/sysadm.te=20
>>> b/policy/modules/roles/sysadm.te
>>> -index e1933a5bd..0682ed31a 100644
>>> +index 92f50fd5a..8c154d474 100644
>>> =C2=A0 --- a/policy/modules/roles/sysadm.te
>>> =C2=A0 +++ b/policy/modules/roles/sysadm.te
>>> -@@ -44,6 +44,8 @@ logging_watch_all_logs(sysadm_t)
>>> +@@ -45,6 +45,8 @@ logging_watch_all_logs(sysadm_t)
>>> =C2=A0=C2=A0 logging_watch_audit_log(sysadm_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 mls_process_read_all_levels(sysadm_t)
>>> @@ -36,5 +36,5 @@ index e1933a5bd..0682ed31a 100644
>>> =C2=A0=C2=A0 selinux_read_policy(sysadm_t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-sys=
temd-allow-systemd_-_t-to-g.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-sys=
temd-allow-systemd_-_t-to-g.patch=20
>>>
>>> deleted file mode 100644
>>> index 91588f1..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-sys=
temd-allow-systemd_-_t-to-g.patch
>>> +++ /dev/null
>>> @@ -1,156 +0,0 @@
>>> -From 81e63f86d6d030eaf0204796e32011c08e7b5e52 Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Tue, 28 Sep 2021 10:03:04 +0800
>>> -Subject: [PATCH] policy/modules/system/systemd: allow systemd_*_t=20
>>> to get the
>>> - attributes of tmpfs and cgroups
>>> -
>>> -Fixes:
>>> -avc: denied { getattr } for pid=3D245 comm=3D"systemd-network" name=3D=
"/"
>>> -dev=3D"tmpfs" ino=3D1 scontext=3Dsystem_u:system_r:systemd_networkd_=
t
>>> -tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D=
0
>>> -
>>> -avc: denied { getattr } for pid=3D252 comm=3D"systemd-resolve" name=3D=
"/"
>>> -dev=3D"tmpfs" ino=3D1 scontext=3Dsystem_u:system_r:systemd_resolved_=
t
>>> -tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D=
0
>>> -
>>> -avc: denied { getattr } for pid=3D260 comm=3D"systemd-user-se" name=3D=
"/"
>>> -dev=3D"tmpfs" ino=3D1 scontext=3Dsystem_u:system_r:systemd_sessions_=
t
>>> -tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D=
0
>>> -
>>> -avc: denied { search } for pid=3D293 comm=3D"systemd-user-ru" name=3D=
"/"
>>> -dev=3D"tmpfs" ino=3D1=20
>>> scontext=3Dsystem_u:system_r:systemd_user_runtime_dir_t
>>> -tcontext=3Dsystem_u:object_r:cgroup_t tclass=3Ddir permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.te | 35=20
>>> ++++++++++++++++++++++++++++++++
>>> - 1 file changed, 35 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 448905ff7..847895e63 100644
>>> ---- a/policy/modules/system/systemd.te
>>> -+++ b/policy/modules/system/systemd.te
>>> -@@ -337,6 +337,10 @@ udev_read_runtime_files(systemd_backlight_t)
>>> -
>>> - files_search_var_lib(systemd_backlight_t)
>>> -
>>> -+fs_getattr_tmpfs(systemd_backlight_t)
>>> -+fs_search_cgroup_dirs(systemd_backlight_t)
>>> -+fs_getattr_cgroup(systemd_backlight_t)
>>> -+
>>> - #######################################
>>> - #
>>> - # Binfmt local policy
>>> -@@ -447,6 +451,7 @@ files_list_usr(systemd_generator_t)
>>> - fs_list_efivars(systemd_generator_t)
>>> - fs_getattr_cgroup(systemd_generator_t)
>>> - fs_getattr_xattr_fs(systemd_generator_t)
>>> -+fs_getattr_tmpfs(systemd_generator_t)
>>> -
>>> - init_create_runtime_files(systemd_generator_t)
>>> - init_manage_runtime_dirs(systemd_generator_t)
>>> -@@ -515,6 +520,10 @@=20
>>> systemd_log_parse_environment(systemd_hostnamed_t)
>>> - # Allow reading /run/udev/data/+dmi:id
>>> - udev_read_runtime_files(systemd_hostnamed_t)
>>> -
>>> -+fs_getattr_tmpfs(systemd_hostnamed_t)
>>> -+fs_search_cgroup_dirs(systemd_hostnamed_t)
>>> -+fs_getattr_cgroup(systemd_hostnamed_t)
>>> -+
>>> - optional_policy(`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dbus_connect_system_bus(systemd_hostnamed_t=
)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dbus_system_bus_client(systemd_hostnamed_t)
>>> -@@ -835,6 +844,10 @@ dev_read_sysfs(systemd_modules_load_t)
>>> - files_mmap_read_kernel_modules(systemd_modules_load_t)
>>> - files_read_etc_files(systemd_modules_load_t)
>>> -
>>> -+fs_getattr_tmpfs(systemd_modules_load_t)
>>> -+fs_search_cgroup_dirs(systemd_modules_load_t)
>>> -+fs_getattr_cgroup(systemd_modules_load_t)
>>> -+
>>> - modutils_read_module_config(systemd_modules_load_t)
>>> - modutils_read_module_deps(systemd_modules_load_t)
>>> -
>>> -@@ -885,6 +898,7 @@ files_watch_runtime_dirs(systemd_networkd_t)
>>> - files_watch_root_dirs(systemd_networkd_t)
>>> - files_list_runtime(systemd_networkd_t)
>>> - fs_getattr_xattr_fs(systemd_networkd_t)
>>> -+fs_getattr_tmpfs(systemd_networkd_t)
>>> - fs_getattr_cgroup(systemd_networkd_t)
>>> - fs_search_cgroup_dirs(systemd_networkd_t)
>>> - fs_read_nsfs_files(systemd_networkd_t)
>>> -@@ -1185,6 +1199,10 @@ udev_read_runtime_files(systemd_rfkill_t)
>>> -
>>> - systemd_log_parse_environment(systemd_rfkill_t)
>>> -
>>> -+fs_getattr_tmpfs(systemd_rfkill_t)
>>> -+fs_search_cgroup_dirs(systemd_rfkill_t)
>>> -+fs_getattr_cgroup(systemd_rfkill_t)
>>> -+
>>> - #########################################
>>> - #
>>> - # Resolved local policy
>>> -@@ -1224,6 +1242,9 @@ auth_use_nsswitch(systemd_resolved_t)
>>> - files_watch_root_dirs(systemd_resolved_t)
>>> - files_watch_runtime_dirs(systemd_resolved_t)
>>> - files_list_runtime(systemd_resolved_t)
>>> -+fs_getattr_tmpfs(systemd_resolved_t)
>>> -+fs_search_cgroup_dirs(systemd_resolved_t)
>>> -+fs_getattr_cgroup(systemd_resolved_t)
>>> -
>>> - init_dgram_send(systemd_resolved_t)
>>> -
>>> -@@ -1288,6 +1309,10 @@ seutil_read_file_contexts(systemd_sessions_t)
>>> -
>>> - systemd_log_parse_environment(systemd_sessions_t)
>>> -
>>> -+fs_getattr_tmpfs(systemd_sessions_t)
>>> -+fs_search_cgroup_dirs(systemd_sessions_t)
>>> -+fs_getattr_cgroup(systemd_sessions_t)
>>> -+
>>> - ########################################
>>> - #
>>> - # sysctl local policy
>>> -@@ -1304,6 +1329,9 @@ kernel_rw_all_sysctls(systemd_sysctl_t)
>>> - kernel_dontaudit_getattr_proc(systemd_sysctl_t)
>>> -
>>> - files_read_etc_files(systemd_sysctl_t)
>>> -+fs_getattr_tmpfs(systemd_sysctl_t)
>>> -+fs_search_cgroup_dirs(systemd_sysctl_t)
>>> -+fs_getattr_cgroup(systemd_sysctl_t)
>>> -
>>> - systemd_log_parse_environment(systemd_sysctl_t)
>>> -
>>> -@@ -1409,6 +1437,8 @@ fs_getattr_tmpfs(systemd_tmpfiles_t)
>>> - fs_getattr_xattr_fs(systemd_tmpfiles_t)
>>> - fs_list_tmpfs(systemd_tmpfiles_t)
>>> - fs_relabelfrom_tmpfs_dirs(systemd_tmpfiles_t)
>>> -+fs_search_cgroup_dirs(systemd_tmpfiles_t)
>>> -+fs_getattr_cgroup(systemd_tmpfiles_t)
>>> -
>>> - selinux_get_fs_mount(systemd_tmpfiles_t)
>>> - selinux_use_status_page(systemd_tmpfiles_t)
>>> -@@ -1497,6 +1527,10 @@ allow systemd_update_done_t=20
>>> systemd_update_run_t:file manage_file_perms;
>>> - files_etc_filetrans(systemd_update_done_t, systemd_update_run_t,=20
>>> file)
>>> - files_var_filetrans(systemd_update_done_t, systemd_update_run_t,=20
>>> file)
>>> -
>>> -+fs_getattr_tmpfs(systemd_update_done_t)
>>> -+fs_search_cgroup_dirs(systemd_update_done_t)
>>> -+fs_getattr_cgroup(systemd_update_done_t)
>>> -+
>>> - kernel_read_kernel_sysctls(systemd_update_done_t)
>>> -
>>> - selinux_use_status_page(systemd_update_done_t)
>>> -@@ -1601,6 +1635,7 @@ fs_unmount_tmpfs(systemd_user_runtime_dir_t)
>>> - fs_relabelfrom_tmpfs_dirs(systemd_user_runtime_dir_t)
>>> - fs_read_cgroup_files(systemd_user_runtime_dir_t)
>>> - fs_getattr_cgroup(systemd_user_runtime_dir_t)
>>> -+fs_search_cgroup_dirs(systemd_user_runtime_dir_t)
>>> -
>>> - kernel_read_kernel_sysctls(systemd_user_runtime_dir_t)
>>> - kernel_dontaudit_getattr_proc(systemd_user_runtime_dir_t)
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0048-policy-modules-services-r=
pc-make-nfsd_t-domain-MLS-t.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-r=
pc-make-nfsd_t-domain-MLS-t.patch=20
>>>
>>> similarity index 84%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0048-policy-modules-services-rpc=
-make-nfsd_t-domain-MLS-t.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc=
-make-nfsd_t-domain-MLS-t.patch
>>> index f659e7e..d22dacf 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0048-policy-modules-services-r=
pc-make-nfsd_t-domain-MLS-t.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-r=
pc-make-nfsd_t-domain-MLS-t.patch
>>> @@ -1,4 +1,4 @@
>>> -From 18ad027229a06fdcb833482dff0c2ae637d08e78 Mon Sep 17 00:00:00 20=
01
>>> +From e82c43e60ef52ba00e8f2af5b46b2a6d49331209 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Fri, 23 Aug 2013 12:01:53 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/services/rpc: make nfsd_t doma=
in=20
>>> MLS trusted
>>> @@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 2 files changed, 7 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/kernel.te=20
>>> b/policy/modules/kernel/kernel.te
>>> -index ca951cb44..a32c59eb1 100644
>>> +index 5124ae016..a40db8507 100644
>>> =C2=A0 --- a/policy/modules/kernel/kernel.te
>>> =C2=A0 +++ b/policy/modules/kernel/kernel.te
>>> -@@ -356,6 +356,8 @@ mls_process_read_all_levels(kernel_t)
>>> +@@ -368,6 +368,8 @@ mls_process_read_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_process_write_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_file_write_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_file_read_all_levels(kernel_t)
>>> @@ -28,7 +28,7 @@ index ca951cb44..a32c59eb1 100644
>>> =C2=A0=C2=A0 ifdef(`distro_redhat',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Bugzilla 222337
>>> =C2=A0 diff --git a/policy/modules/services/rpcbind.te=20
>>> b/policy/modules/services/rpcbind.te
>>> -index e1eb7d5fc..da0994749 100644
>>> +index 2a712192b..923e48db7 100644
>>> =C2=A0 --- a/policy/modules/services/rpcbind.te
>>> =C2=A0 +++ b/policy/modules/services/rpcbind.te
>>> =C2=A0 @@ -73,6 +73,11 @@ logging_send_syslog_msg(rpcbind_t)
>>> @@ -36,7 +36,7 @@ index e1eb7d5fc..da0994749 100644
>>> =C2=A0=C2=A0 miscfiles_read_localization(rpcbind_t)
>>> =C2=A0=C2=A0 =C2=A0 +# nfsd_t would not be allowed to send unix_strea=
m_socket to=20
>>> rpcbind_t,
>>> -+# because the are running in different level. So add rules to=20
>>> allow this.
>>> ++# because they are running in different level. So add rules to=20
>>> allow this.
>>> =C2=A0 +mls_socket_read_all_levels(rpcbind_t)
>>> =C2=A0 +mls_socket_write_all_levels(rpcbind_t)
>>> =C2=A0 +
>>> @@ -44,5 +44,5 @@ index e1eb7d5fc..da0994749 100644
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 term_dontaudit_use_unallocated_t=
tys(rpcbind_t)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-log=
ging-fix-syslogd-failures-f.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-log=
ging-fix-syslogd-failures-f.patch=20
>>>
>>> deleted file mode 100644
>>> index 2232d48..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-log=
ging-fix-syslogd-failures-f.patch
>>> +++ /dev/null
>>> @@ -1,55 +0,0 @@
>>> -From dc2c9c91219311f6c4d985169dff6c5931a465d7 Mon Sep 17 00:00:00 20=
01
>>> -From: Wenzong Fan <wenzong.fan@windriver.com>
>>> -Date: Thu, 4 Feb 2016 02:10:15 -0500
>>> -Subject: [PATCH] policy/modules/system/logging: fix syslogd=20
>>> failures for
>>> - systemd
>>> -
>>> -Fixes:
>>> -syslogd[243]: Error opening log file: /var/log/auth.log: Permission=20
>>> denied
>>> -syslogd[243]: Error opening log file: /var/log/syslog: Permission=20
>>> denied
>>> -syslogd[243]: Error opening log file: /var/log/kern.log: Permission=20
>>> denied
>>> -syslogd[243]: Error opening log file: /var/log/mail.log: Permission=20
>>> denied
>>> -syslogd[243]: Error opening log file: /var/log/mail.err: Permission=20
>>> denied
>>> -syslogd[243]: Error opening log file: /var/log/messages: Permission=20
>>> denied
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { search } for=C2=A0 pid=3D243 comm=3D"syslo=
gd" name=3D"/"
>>> -dev=3D"tmpfs" ino=3D1 scontext=3Dsystem_u:system_r:syslogd_t
>>> -tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Ddir permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { write } for=C2=A0 pid=3D162 comm=3D"system=
d-journal"
>>> -name=3D"syslog" dev=3D"tmpfs" ino=3D515 scontext=3Dsystem_u:system_r=
:syslogd_t
>>> -tcontext=3Dsystem_u:object_r:syslogd_runtime_t tclass=3Dsock_file
>>> -permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/logging.te | 3 ++-
>>> - 1 file changed, 2 insertions(+), 1 deletion(-)
>>> -
>>> -diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index cc530a2be..5b4b5ec5d 100644
>>> ---- a/policy/modules/system/logging.te
>>> -+++ b/policy/modules/system/logging.te
>>> -@@ -431,7 +431,7 @@ files_search_var_lib(syslogd_t)
>>> -
>>> - # manage runtime files
>>> - allow syslogd_t syslogd_runtime_t:dir create_dir_perms;
>>> --allow syslogd_t syslogd_runtime_t:sock_file { create setattr=20
>>> unlink };
>>> -+allow syslogd_t syslogd_runtime_t:sock_file { create setattr=20
>>> unlink write };
>>> - allow syslogd_t syslogd_runtime_t:file map;
>>> - manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_=
t)
>>> - files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
>>> -@@ -495,6 +495,7 @@ files_var_lib_filetrans(syslogd_t,=20
>>> syslogd_var_lib_t, { file dir })
>>> -
>>> - fs_getattr_all_fs(syslogd_t)
>>> - fs_search_auto_mountpoints(syslogd_t)
>>> -+fs_search_tmpfs(syslogd_t)
>>> -
>>> - mls_file_write_all_levels(syslogd_t) # Need to be able to write to=20
>>> /var/run/ and /var/log directories
>>> -
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmes=
g-make-dmesg_t-MLS-trusted-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmes=
g-make-dmesg_t-MLS-trusted-.patch=20
>>>
>>> similarity index 90%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmesg-=
make-dmesg_t-MLS-trusted-.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-=
make-dmesg_t-MLS-trusted-.patch
>>> index ace056a..30c84f6 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmes=
g-make-dmesg_t-MLS-trusted-.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmes=
g-make-dmesg_t-MLS-trusted-.patch
>>> @@ -1,4 +1,4 @@
>>> -From b41a910654f5c5fe198b1695df18b6f6a1af7904 Mon Sep 17 00:00:00 20=
01
>>> +From 9343914c0486b5aa6ff7cceeb8f6c399115e5fb3 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Tue, 30 Jun 2020 10:18:20 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS=20
>>> trusted reading
>>> @@ -19,7 +19,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/admin/dmesg.te=20
>>> b/policy/modules/admin/dmesg.te
>>> -index f3421fdbb..d87ee5583 100644
>>> +index f1da315a9..89478c38e 100644
>>> =C2=A0 --- a/policy/modules/admin/dmesg.te
>>> =C2=A0 +++ b/policy/modules/admin/dmesg.te
>>> =C2=A0 @@ -52,6 +52,8 @@ miscfiles_read_localization(dmesg_t)
>>> @@ -32,5 +32,5 @@ index f3421fdbb..d87ee5583 100644
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seutil_sigchld_newrole(dmesg_t)
>>> =C2=A0=C2=A0 ')
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-sys=
temd-systemd-user-fixes.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-sys=
temd-systemd-user-fixes.patch=20
>>>
>>> deleted file mode 100644
>>> index 108f62f..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-sys=
temd-systemd-user-fixes.patch
>>> +++ /dev/null
>>> @@ -1,172 +0,0 @@
>>> -From 20b2608718064a92f9255adb459a97d95fdbc22e Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Thu, 4 Feb 2021 10:48:54 +0800
>>> -Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
>>> -
>>> -Fixes:
>>> -systemctl[1598]: Failed to connect to bus:=20
>>> $DBUS_SESSION_BUS_ADDRESS and
>>> -$XDG_RUNTIME_DIR not defined (consider using --machine=3D<user>@.hos=
t
>>> ---user to connect to bus of other user)
>>> -
>>> -avc: denied { connectto } for=C2=A0 pid=3D293 comm=3D"login"
>>> -path=3D"/run/systemd/userdb/io.systemd.Multiplexer"
>>> -scontext=3Dsystem_u:system_r:local_login_t
>>> -tcontext=3Dsystem_u:system_r:initrc_t tclass=3Dunix_stream_socket
>>> -permissive=3D0
>>> -
>>> -avc: denied { read } for=C2=A0 pid=3D293 comm=3D"login"=20
>>> name=3D"io.systemd.DropIn"
>>> -dev=3D"tmpfs" ino=3D44 scontext=3Dsystem_u:system_r:local_login_t
>>> -tcontext=3Dsystem_u:object_r:systemd_userdb_runtime_t tclass=3Dlnk_f=
ile
>>> -permissive=3D0
>>> -
>>> -avc: denied { read } for=C2=A0 pid=3D293 comm=3D"login"
>>> -name=3D"io.systemd.NameServiceSwitch" dev=3D"tmpfs" ino=3D43
>>> -scontext=3Dsystem_u:system_r:local_login_t
>>> -tcontext=3Dsystem_u:object_r:systemd_userdb_runtime_t tclass=3Dlnk_f=
ile
>>> -permissive=3D0
>>> -
>>> -avc: denied { connectto } for=C2=A0 pid=3D244 comm=3D"systemd-logind=
"
>>> -path=3D"/run/systemd/userdb/io.systemd.Multiplexer"
>>> -scontext=3Dsystem_u:system_r:systemd_logind_t
>>> -tcontext=3Dsystem_u:system_r:initrc_t tclass=3Dunix_stream_socket
>>> -permissive=3D0
>>> -
>>> -avc: denied { read } for=C2=A0 pid=3D244 comm=3D"systemd-logind"
>>> -name=3D"io.systemd.DropIn" dev=3D"tmpfs" ino=3D44
>>> -scontext=3Dsystem_u:system_r:systemd_logind_t
>>> -tcontext=3Dsystem_u:object_r:systemd_userdb_runtime_t tclass=3Dlnk_f=
ile
>>> -permissive=3D0
>>> -
>>> -avc: denied { read } for=C2=A0 pid=3D244 comm=3D"systemd-logind"
>>> -name=3D"io.systemd.NameServiceSwitch" dev=3D"tmpfs" ino=3D43
>>> -scontext=3Dsystem_u:system_r:systemd_logind_t
>>> -tcontext=3Dsystem_u:object_r:systemd_userdb_runtime_t tclass=3Dlnk_f=
ile
>>> -permissive=3D0
>>> -
>>> -avc: denied { mknod } for=C2=A0 pid=3D297 comm=3D"systemd" capabilit=
y=3D27
>>> -scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability permis=
sive=3D0
>>> -
>>> -avc: denied { setrlimit } for pid=3D297 comm=3D"systemd"
>>> -scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dprocess permissiv=
e=3D0
>>> -
>>> -avc: denied { bpf } for pid=3D297 comm=3D"systemd" capability=3D39
>>> -scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability2=20
>>> permissive=3D0
>>> -
>>> -avc: denied { sys_admin } for pid=3D297 comm=3D"systemd" capability=3D=
21
>>> -scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability permis=
sive=3D0
>>> -
>>> -avc: denied { perfmon } for pid=3D297 comm=3D"systemd" capability=3D=
38
>>> -scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Droot:sysadm_r:sysadm_systemd_t tclass=3Dcapability2=20
>>> permissive=3D0
>>> -
>>> -avc: denied { watch } for pid=3D297 comm=3D"systemd" path=3D"/etc" d=
ev=3D"vda"
>>> -ino=3D173 scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Dsystem_u:object_r:etc_t tclass=3Ddir permissive=3D0
>>> -
>>> -avc: denied { getattr } for pid=3D297 comm=3D"systemd" name=3D"/" de=
v=3D"vda"
>>> -ino=3D2 scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Dsystem_u:object_r:fs_t tclass=3Dfilesystem permissive=3D0
>>> -
>>> -avc: denied { read } for pid=3D297 comm=3D"systemd" name=3D"unix" de=
v=3D"proc"
>>> -ino=3D4026532057 scontext=3Droot:sysadm_r:sysadm_systemd_t
>>> -tcontext=3Dsystem_u:object_r:proc_net_t tclass=3Dfile permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/roles/sysadm.te=C2=A0=C2=A0 |=C2=A0 2 ++
>>> - policy/modules/system/init.if=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> - policy/modules/system/systemd.if | 27 ++++++++++++++++++++++++++-
>>> - 3 files changed, 29 insertions(+), 1 deletion(-)
>>> -
>>> -diff --git a/policy/modules/roles/sysadm.te=20
>>> b/policy/modules/roles/sysadm.te
>>> -index 46d3e2f0b..e1933a5bd 100644
>>> ---- a/policy/modules/roles/sysadm.te
>>> -+++ b/policy/modules/roles/sysadm.te
>>> -@@ -92,6 +92,8 @@ ifdef(`init_systemd',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 # Allow sysadm to query and set networking =
settings on the=20
>>> system.
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 systemd_dbus_chat_networkd(sysadm_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 fs_read_nsfs_files(sysadm_t)
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 systemd_sysadm_user(sysadm_t)
>>> - ')
>>> -
>>> - tunable_policy(`allow_ptrace',`
>>> -diff --git a/policy/modules/system/init.if=20
>>> b/policy/modules/system/init.if
>>> -index 0171ee299..8ca29f654 100644
>>> ---- a/policy/modules/system/init.if
>>> -+++ b/policy/modules/system/init.if
>>> -@@ -959,6 +959,7 @@ interface(`init_unix_stream_socket_connectto',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 init_t:unix_stream_socket connectt=
o;
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 initrc_t:unix_stream_socket connectto;
>>> - ')
>>> -
>>> - ########################################
>>> -diff --git a/policy/modules/system/systemd.if=20
>>> b/policy/modules/system/systemd.if
>>> -index 38adf050c..5c44d8d8a 100644
>>> ---- a/policy/modules/system/systemd.if
>>> -+++ b/policy/modules/system/systemd.if
>>> -@@ -57,7 +57,7 @@ template(`systemd_role_template',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:process { getsched =
signal };
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:netlink_kobject_uev=
ent_socket=20
>>> create_socket_perms;
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1_systemd_t self:unix_stream_socket=20
>>> create_stream_socket_perms;
>>> --=C2=A0=C2=A0=C2=A0 allow $1_systemd_t $3:process { setsched rlimiti=
nh=20
>>> signal_perms };
>>> -+=C2=A0=C2=A0=C2=A0 allow $1_systemd_t $3:process { setsched rlimiti=
nh=20
>>> signal_perms noatsecure };
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 corecmd_shell_domtrans($1_systemd_t, $3)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 corecmd_bin_domtrans($1_systemd_t, $3)
>>> -
>>> -@@ -88,8 +88,11 @@ template(`systemd_role_template',`
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 fs_manage_cgroup_files($1_systemd_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 fs_watch_cgroup_files($1_systemd_t)
>>> -+=C2=A0=C2=A0=C2=A0 files_watch_etc_dirs($1_systemd_t)
>>> -+=C2=A0=C2=A0=C2=A0 fs_getattr_xattr_fs($1_systemd_t)
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 kernel_dontaudit_getattr_proc($1_systemd_t)
>>> -+=C2=A0=C2=A0=C2=A0 kernel_read_network_state($1_systemd_t)
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 selinux_use_status_page($1_systemd_t)
>>> -
>>> -@@ -1052,6 +1055,7 @@ interface(`systemd_stream_connect_userdb', `
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 init_search_runtime($1)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_userdb_runtime_t:dir list_=
dir_perms;
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_userdb_runtime_t:sock_file=
=20
>>> write_sock_file_perms;
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 systemd_userdb_runtime_t:lnk_file read_=
lnk_file_perms;
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 init_unix_stream_socket_connectto($1)
>>> - ')
>>> -
>>> -@@ -2003,3 +2007,24 @@=20
>>> interface(`systemd_use_inherited_machined_ptys', `
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_machined_t:fd use;
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 allow $1 systemd_machined_devpts_t:chr_file=
=20
>>> rw_inherited_term_perms;
>>> - ')
>>> -+
>>> -+#########################################
>>> -+## <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 sysadm user for systemd --user
>>> -+## </summary>
>>> -+## <param name=3D"role">
>>> -+##=C2=A0=C2=A0=C2=A0 <summary>
>>> -+##=C2=A0 Role allowed access.
>>> -+##=C2=A0=C2=A0=C2=A0 </summary>
>>> -+## </param>
>>> -+#
>>> -+interface(`systemd_sysadm_user',`
>>> -+=C2=A0=C2=A0=C2=A0 gen_require(`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type sysadm_systemd_t;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 allow sysadm_systemd_t self:capability { mknod s=
ys_admin };
>>> -+=C2=A0=C2=A0=C2=A0 allow sysadm_systemd_t self:capability2 { bpf pe=
rfmon };
>>> -+=C2=A0=C2=A0=C2=A0 allow sysadm_systemd_t self:process setrlimit;
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 sysadm_systemd_t:system reload;
>>> -+')
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch=20
>>>
>>> similarity index 94%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
>>> index 8b9f98c..932047a 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch
>>> @@ -1,4 +1,4 @@
>>> -From c2e99e27acc1454d792b3e8d6f24d3a2a3be29e3 Mon Sep 17 00:00:00 20=
01
>>> +From 057e4e6a6e2e87edcd6a93dd533620700b00b1c2 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Fri, 13 Oct 2017 07:20:40 +0000
>>> =C2=A0 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t M=
LS=20
>>> trusted for
>>> @@ -59,10 +59,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/kernel.te=20
>>> b/policy/modules/kernel/kernel.te
>>> -index a32c59eb1..1c53754ee 100644
>>> +index a40db8507..40cd52825 100644
>>> =C2=A0 --- a/policy/modules/kernel/kernel.te
>>> =C2=A0 +++ b/policy/modules/kernel/kernel.te
>>> -@@ -358,6 +358,8 @@ mls_file_write_all_levels(kernel_t)
>>> +@@ -370,6 +370,8 @@ mls_file_write_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_file_read_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_socket_write_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_fd_use_all_levels(kernel_t)
>>> @@ -72,5 +72,5 @@ index a32c59eb1..1c53754ee 100644
>>> =C2=A0=C2=A0 ifdef(`distro_redhat',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Bugzilla 222337
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sys=
network-support-priviledge-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sys=
network-support-priviledge-.patch=20
>>>
>>> deleted file mode 100644
>>> index 504e028..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sys=
network-support-priviledge-.patch
>>> +++ /dev/null
>>> @@ -1,132 +0,0 @@
>>> -From d1c159d4400722e783d12cc3684c1cf15004f7a9 Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Thu, 24 Sep 2020 14:05:52 +0800
>>> -Subject: [PATCH] policy/modules/system/sysnetwork: support priviledg=
e
>>> - separation for dhcpcd
>>> -
>>> -Fixes:
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { sys_chroot } for=C2=A0 pid=3D332 comm=3D"d=
hcpcd" capability=3D18
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapabi=
lity
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { setgid } for=C2=A0 pid=3D332 comm=3D"dhcpc=
d" capability=3D6
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapabi=
lity
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { setuid } for=C2=A0 pid=3D332 comm=3D"dhcpc=
d" capability=3D7
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapabi=
lity
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { setrlimit } for=C2=A0 pid=3D332 comm=3D"dh=
cpcd"
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dproces=
s
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { create } for=C2=A0 pid=3D330 comm=3D"dhcpc=
d"
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { setopt } for=C2=A0 pid=3D330 comm=3D"dhcpc=
d"
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { bind } for=C2=A0 pid=3D330 comm=3D"dhcpcd"
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { getattr } for=C2=A0 pid=3D330 comm=3D"dhcp=
cd"
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { read } for=C2=A0 pid=3D330 comm=3D"dhcpcd"=
 name=3D"n1"=20
>>> dev=3D"tmpfs"
>>> -ino=3D15616 scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permiss=
ive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { open } for=C2=A0 pid=3D330 comm=3D"dhcpcd"
>>> -path=3D"/run/udev/data/n1" dev=3D"tmpfs" ino=3D15616
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permiss=
ive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { getattr } for=C2=A0 pid=3D330 comm=3D"dhcp=
cd"
>>> -path=3D"/run/udev/data/n1" dev=3D"tmpfs" ino=3D15616
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permiss=
ive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { connectto } for=C2=A0 pid=3D1600 comm=3D"d=
hcpcd"
>>> -path=3D"/run/dhcpcd/unpriv.sock"
>>> -scontext=3Droot:sysadm_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tclass=3Dunix_stream_socket permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { kill } for=C2=A0 pid=3D314 comm=3D"dhcpcd"=
 capability=3D5
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapabi=
lity
>>> -permissive=3D0
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { getattr } for=C2=A0 pid=3D300 comm=3D"dhcp=
cd"
>>> -path=3D"net:[4026532008]" dev=3D"nsfs" ino=3D4026532008
>>> -scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
>>> -tcontext=3Dsystem_u:object_r:nsfs_t:s0 tclass=3Dfile permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/sysnetwork.te | 7 ++++++-
>>> - 1 file changed, 6 insertions(+), 1 deletion(-)
>>> -
>>> -diff --git a/policy/modules/system/sysnetwork.te=20
>>> b/policy/modules/system/sysnetwork.te
>>> -index 4c317cc4c..05a9a52b8 100644
>>> ---- a/policy/modules/system/sysnetwork.te
>>> -+++ b/policy/modules/system/sysnetwork.te
>>> -@@ -58,10 +58,11 @@ ifdef(`distro_debian',`
>>> - # DHCP client local policy
>>> - #
>>> - allow dhcpc_t self:capability { dac_override fsetid net_admin=20
>>> net_bind_service net_raw setpcap sys_nice sys_resource=20
>>> sys_tty_config };
>>> -+allow dhcpc_t self:capability { setgid setuid sys_chroot kill };
>>> - dontaudit dhcpc_t self:capability { sys_ptrace sys_tty_config };
>>> - # for access("/etc/bashrc", X_OK) on Red Hat
>>> - dontaudit dhcpc_t self:capability { dac_read_search sys_module };
>>> --allow dhcpc_t self:process { getsched getcap setcap setfscreate=20
>>> ptrace signal_perms };
>>> -+allow dhcpc_t self:process { getsched getcap setcap setfscreate=20
>>> ptrace signal_perms setrlimit };
>>> -
>>> - allow dhcpc_t self:fifo_file rw_fifo_file_perms;
>>> - allow dhcpc_t self:tcp_socket create_stream_socket_perms;
>>> -@@ -69,8 +70,10 @@ allow dhcpc_t self:udp_socket create_socket_perms=
;
>>> - allow dhcpc_t self:packet_socket create_socket_perms;
>>> - allow dhcpc_t self:netlink_generic_socket create_socket_perms;
>>> - allow dhcpc_t self:netlink_route_socket create_netlink_socket_perms=
;
>>> -+allow dhcpc_t self:netlink_kobject_uevent_socket create_socket_perm=
s;
>>> - allow dhcpc_t self:rawip_socket create_socket_perms;
>>> - allow dhcpc_t self:unix_dgram_socket { create_socket_perms sendto }=
;
>>> -+allow dhcpc_t self:unix_stream_socket connectto;
>>> -
>>> - allow dhcpc_t dhcp_etc_t:dir list_dir_perms;
>>> - read_lnk_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
>>> -@@ -146,6 +149,7 @@ files_manage_var_files(dhcpc_t)
>>> - fs_getattr_all_fs(dhcpc_t)
>>> - fs_search_auto_mountpoints(dhcpc_t)
>>> - fs_search_cgroup_dirs(dhcpc_t)
>>> -+fs_read_nsfs_files(dhcpc_t)
>>> -
>>> - term_dontaudit_use_all_ttys(dhcpc_t)
>>> - term_dontaudit_use_all_ptys(dhcpc_t)
>>> -@@ -181,6 +185,7 @@ ifdef(`init_systemd',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 init_stream_connect(dhcpc_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 init_get_all_units_status(dhcpc_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 init_search_units(dhcpc_t)
>>> -+=C2=A0=C2=A0=C2=A0 udev_read_runtime_files(dhcpc_t)
>>> - ')
>>> -
>>> - optional_policy(`
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch=20
>>>
>>> similarity index 89%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
>>> index b4da47d..9e52b7f 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch
>>> @@ -1,4 +1,4 @@
>>> -From 7bcc117ea39532427df297299c10ca1d2948a70c Mon Sep 17 00:00:00 20=
01
>>> +From c47e288e8950e7e92e3c90972ca7ef8ef9fc6a7f Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Fri, 15 Jan 2016 03:47:05 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/init: make init_t MLS=20
>>> trusted for
>>> @@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 4 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/init.te=20
>>> b/policy/modules/system/init.te
>>> -index 932d1f7b3..36becaa6e 100644
>>> +index 97a75cf86..fee846cb5 100644
>>> =C2=A0 --- a/policy/modules/system/init.te
>>> =C2=A0 +++ b/policy/modules/system/init.te
>>> -@@ -219,6 +219,10 @@ mls_process_write_all_levels(init_t)
>>> +@@ -229,6 +229,10 @@ mls_process_write_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_fd_use_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_process_set_level(init_t)
>>> =C2=A0=C2=A0 @@ -42,5 +42,5 @@ index 932d1f7b3..36becaa6e 100644
>>> =C2=A0=C2=A0 # otherwise the call fails and sysvinit tries to load th=
e policy
>>> =C2=A0=C2=A0 # again when using the initramfs
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-mod=
utils-allow-kmod_t-to-write.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-mod=
utils-allow-kmod_t-to-write.patch=20
>>>
>>> deleted file mode 100644
>>> index 2f94974..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-mod=
utils-allow-kmod_t-to-write.patch
>>> +++ /dev/null
>>> @@ -1,34 +0,0 @@
>>> -From 8343ff97a265836ba1e1e2f4159f888c21e5cabe Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Tue, 9 Feb 2021 17:31:55 +0800
>>> -Subject: [PATCH] policy/modules/system/modutils: allow kmod_t to=20
>>> write keys
>>> -
>>> -Fixes:
>>> -kernel: cfg80211: Problem loading in-kernel X.509 certificate (-13)
>>> -
>>> -avc:=C2=A0 denied=C2=A0 { write } for=C2=A0 pid=3D219 comm=3D"modpro=
be"
>>> -scontext=3Dsystem_u:system_r:kmod_t tcontext=3Dsystem_u:system_r:kmo=
d_t
>>> -tclass=3Dkey permissive=3D0
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/modutils.te | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/modutils.te=20
>>> b/policy/modules/system/modutils.te
>>> -index 5b4f0aca1..008f286a8 100644
>>> ---- a/policy/modules/system/modutils.te
>>> -+++ b/policy/modules/system/modutils.te
>>> -@@ -42,6 +42,7 @@ allow kmod_t self:udp_socket create_socket_perms;
>>> - allow kmod_t self:rawip_socket create_socket_perms;
>>> -
>>> - allow kmod_t self:lockdown confidentiality;
>>> -+allow kmod_t self:key write;
>>> -
>>> - # Read module config and dependency information
>>> - list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
>>> ---
>>> -2.17.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sys=
temd-make-systemd-tmpfiles_.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-sys=
temd-make-systemd-tmpfiles_.patch=20
>>>
>>> similarity index 92%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0052-policy-modules-system-syste=
md-make-systemd-tmpfiles_.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0045-policy-modules-system-syste=
md-make-systemd-tmpfiles_.patch
>>> index 4b768e0..1bfbb16 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sys=
temd-make-systemd-tmpfiles_.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-sys=
temd-make-systemd-tmpfiles_.patch
>>> @@ -1,4 +1,4 @@
>>> -From d965e6a02854a07c4783cf33e95bf3c7cf9f56f1 Mon Sep 17 00:00:00 20=
01
>>> +From afd35f6c73551c674e5bfe7cc1832b6a0ea717a6 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Thu, 4 Feb 2016 06:03:19 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/systemd: make=20
>>> systemd-tmpfiles_t domain
>>> @@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 5 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 1a83148c1..736107fad 100644
>>> +index 4a1e06640..b44b9b2d7 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.te
>>> =C2=A0 +++ b/policy/modules/system/systemd.te
>>> -@@ -1483,6 +1483,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
>>> +@@ -1694,6 +1694,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 systemd_log_parse_environment(systemd_tmpfi=
les_t)
>>> =C2=A0=C2=A0 @@ -59,5 +59,5 @@ index 1a83148c1..736107fad 100644
>>> =C2=A0=C2=A0 userdom_relabel_user_runtime_root_dirs(systemd_tmpfiles_=
t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-sys=
temd-systemd-make-systemd_-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-sys=
temd-systemd-make-systemd_-.patch=20
>>>
>>> similarity index 82%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0053-policy-modules-system-syste=
md-systemd-make-systemd_-.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0046-policy-modules-system-syste=
md-systemd-make-systemd_-.patch
>>> index 60f7dae..800439c 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-sys=
temd-systemd-make-systemd_-.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-sys=
temd-systemd-make-systemd_-.patch
>>> @@ -1,4 +1,4 @@
>>> -From 71986d0c6775408a1c89415dd5d4e7ea03302248 Mon Sep 17 00:00:00 20=
01
>>> +From 8aa70c13d63e093bff87ea938d35dcc76e5bdd56 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Thu, 18 Jun 2020 09:59:58 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/systemd: systemd-*: mak=
e=20
>>> systemd_*_t
>>> @@ -43,12 +43,12 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 12 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 736107fad..8cea6baa1 100644
>>> +index b44b9b2d7..7b717d3ba 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.te
>>> =C2=A0 +++ b/policy/modules/system/systemd.te
>>> -@@ -341,6 +341,9 @@ fs_getattr_tmpfs(systemd_backlight_t)
>>> +@@ -373,6 +373,9 @@ files_search_var_lib(systemd_backlight_t)
>>> + fs_getattr_all_fs(systemd_backlight_t)
>>> =C2=A0=C2=A0 fs_search_cgroup_dirs(systemd_backlight_t)
>>> - fs_getattr_cgroup(systemd_backlight_t)
>>> =C2=A0=C2=A0 =C2=A0 +mls_file_read_to_clearance(systemd_backlight_t)
>>> =C2=A0 +mls_file_write_to_clearance(systemd_backlight_t)
>>> @@ -56,9 +56,9 @@ index 736107fad..8cea6baa1 100644
>>> =C2=A0=C2=A0 #######################################
>>> =C2=A0=C2=A0 #
>>> =C2=A0=C2=A0 # Binfmt local policy
>>> -@@ -479,6 +482,9 @@ term_use_unallocated_ttys(systemd_generator_t)
>>> +@@ -528,6 +531,9 @@ term_use_unallocated_ttys(systemd_generator_t)
>>> =C2=A0=C2=A0 - udev_search_runtime(systemd_generator_t)
>>> + udev_read_runtime_files(systemd_generator_t)
>>> =C2=A0=C2=A0 =C2=A0 +mls_file_read_to_clearance(systemd_generator_t)
>>> =C2=A0 +mls_file_write_to_clearance(systemd_generator_t)
>>> @@ -66,19 +66,19 @@ index 736107fad..8cea6baa1 100644
>>> =C2=A0=C2=A0 ifdef(`distro_gentoo',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 corecmd_shell_entry_type(systemd=
_generator_t)
>>> =C2=A0=C2=A0 ')
>>> -@@ -723,6 +729,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
>>> +@@ -922,6 +928,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
>>> =C2=A0=C2=A0 userdom_use_user_ttys(systemd_logind_t)
>>> =C2=A0=C2=A0 domain_read_all_domains_state(systemd_logind_t)
>>> =C2=A0=C2=A0 -+mls_file_read_to_clearance(systemd_logind_t)
>>> -+mls_file_write_to_clearance(systemd_logind_t)
>>> ++mls_file_read_all_levels(systemd_logind_t)
>>> ++mls_file_write_all_levels(systemd_logind_t)
>>> =C2=A0 +
>>> =C2=A0=C2=A0 # Needed to work around patch not yet merged into the=20
>>> systemd-logind supported on RHEL 7.x
>>> =C2=A0=C2=A0 # The change in systemd by Nicolas Iooss on 02-Feb-2016 =
with hash=20
>>> 4b51966cf6c06250036e428608da92f8640beb96
>>> =C2=A0=C2=A0 # should fix the problem where user directories in=20
>>> /run/user/$UID/ are not getting the proper context
>>> -@@ -1204,6 +1213,9 @@ fs_getattr_tmpfs(systemd_rfkill_t)
>>> - fs_search_cgroup_dirs(systemd_rfkill_t)
>>> - fs_getattr_cgroup(systemd_rfkill_t)
>>> +@@ -1412,6 +1421,9 @@ udev_read_runtime_files(systemd_rfkill_t)
>>> +
>>> + systemd_log_parse_environment(systemd_rfkill_t)
>>> =C2=A0=C2=A0 =C2=A0 +mls_file_read_to_clearance(systemd_rfkill_t)
>>> =C2=A0 +mls_file_write_to_clearance(systemd_rfkill_t)
>>> @@ -87,5 +87,5 @@ index 736107fad..8cea6baa1 100644
>>> =C2=A0=C2=A0 #
>>> =C2=A0=C2=A0 # Resolved local policy
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-log=
ging-add-the-syslogd_t-to-t.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-log=
ging-add-the-syslogd_t-to-t.patch=20
>>>
>>> similarity index 78%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0054-policy-modules-system-loggi=
ng-add-the-syslogd_t-to-t.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0047-policy-modules-system-loggi=
ng-add-the-syslogd_t-to-t.patch
>>> index 75be11d..cb3894c 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-log=
ging-add-the-syslogd_t-to-t.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-log=
ging-add-the-syslogd_t-to-t.patch
>>> @@ -1,4 +1,4 @@
>>> -From 511f7fdad45a150f7ea3666eb51463573eabab0a Mon Sep 17 00:00:00 20=
01
>>> +From 2afa5753f2ef8c7cee5ad0511c521d252bedf3e5 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Xin Ouyang <Xin.Ouyang@windriver.com>
>>> =C2=A0 Date: Thu, 22 Aug 2013 13:37:23 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: add the syslog=
d_t=20
>>> to trusted
>>> @@ -14,18 +14,17 @@ Signed-off-by: Xin Ouyang=20
>>> <Xin.Ouyang@windriver.com>
>>> =C2=A0 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>> =C2=A0 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 ---
>>> - policy/modules/system/logging.te | 4 ++++
>>> - 1 file changed, 4 insertions(+)
>>> + policy/modules/system/logging.te | 3 +++
>>> + 1 file changed, 3 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index 5b4b5ec5d..e67c25a9e 100644
>>> +index d3b06db7d..f63965d4d 100644
>>> =C2=A0 --- a/policy/modules/system/logging.te
>>> =C2=A0 +++ b/policy/modules/system/logging.te
>>> -@@ -498,6 +498,10 @@ fs_search_auto_mountpoints(syslogd_t)
>>> - fs_search_tmpfs(syslogd_t)
>>> +@@ -505,6 +505,9 @@ fs_getattr_all_fs(syslogd_t)
>>> + fs_search_auto_mountpoints(syslogd_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 mls_file_write_all_levels(syslogd_t) # Need=
 to be able to=20
>>> write to /var/run/ and /var/log directories
>>> -+mls_file_read_all_levels(syslogd_t)
>>> =C2=A0 +mls_socket_write_all_levels(syslogd_t) # Need to be able to=20
>>> sendto dgram
>>> =C2=A0 +mls_trusted_object(syslogd_t) # Other process need to have th=
e=20
>>> right to connectto/sendto /dev/log
>>> =C2=A0 +mls_fd_use_all_levels(syslogd_t)
>>> @@ -33,5 +32,5 @@ index 5b4b5ec5d..e67c25a9e 100644
>>> =C2=A0=C2=A0 term_write_console(syslogd_t)
>>> =C2=A0=C2=A0 # Allow syslog to a terminal
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch=20
>>>
>>> similarity index 85%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
>>> index 5c01ef4..16f0e4e 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-ini=
t-make-init_t-MLS-trusted-f.patch
>>> @@ -1,4 +1,4 @@
>>> -From 3f875fae6d9a4538b3e7d33f30dd2a98fc9ea2bd Mon Sep 17 00:00:00 20=
01
>>> +From f87bb3cb0843af69f9aecaef0a4052e04b15a630 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Tue, 28 May 2019 16:41:37 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/init: make init_t MLS=20
>>> trusted for
>>> @@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/init.te=20
>>> b/policy/modules/system/init.te
>>> -index 36becaa6e..9c0a98eb7 100644
>>> +index fee846cb5..df7f87f17 100644
>>> =C2=A0 --- a/policy/modules/system/init.te
>>> =C2=A0 +++ b/policy/modules/system/init.te
>>> -@@ -218,6 +218,7 @@ mls_file_write_all_levels(init_t)
>>> +@@ -228,6 +228,7 @@ mls_file_write_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_process_write_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_fd_use_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_process_set_level(init_t)
>>> @@ -29,5 +29,5 @@ index 36becaa6e..9c0a98eb7 100644
>>> =C2=A0=C2=A0 # MLS trusted for lowering/raising the level of files
>>> =C2=A0=C2=A0 mls_file_downgrade(init_t)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-ini=
t-all-init_t-to-read-any-le.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-ini=
t-all-init_t-to-read-any-le.patch=20
>>>
>>> similarity index 88%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0056-policy-modules-system-init-=
all-init_t-to-read-any-le.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-=
all-init_t-to-read-any-le.patch
>>> index d3ddcd2..fb56eca 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-ini=
t-all-init_t-to-read-any-le.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-ini=
t-all-init_t-to-read-any-le.patch
>>> @@ -1,4 +1,4 @@
>>> -From a59dae035b7d5063e0f25c4cf40b5b180ad69022 Mon Sep 17 00:00:00 20=
01
>>> +From f3c0f18b647631fd2ffc1e86c9e3f51cbf74d60f Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Wed, 3 Feb 2016 04:16:06 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/init: all init_t to rea=
d=20
>>> any level
>>> @@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 3 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/init.te=20
>>> b/policy/modules/system/init.te
>>> -index 9c0a98eb7..5a19f0e43 100644
>>> +index df7f87f17..671b5aef3 100644
>>> =C2=A0 --- a/policy/modules/system/init.te
>>> =C2=A0 +++ b/policy/modules/system/init.te
>>> -@@ -224,6 +224,9 @@ mls_key_write_all_levels(init_t)
>>> +@@ -234,6 +234,9 @@ mls_key_write_all_levels(init_t)
>>> =C2=A0=C2=A0 mls_file_downgrade(init_t)
>>> =C2=A0=C2=A0 mls_file_upgrade(init_t)
>>> =C2=A0=C2=A0 @@ -36,5 +36,5 @@ index 9c0a98eb7..5a19f0e43 100644
>>> =C2=A0=C2=A0 # otherwise the call fails and sysvinit tries to load th=
e policy
>>> =C2=A0=C2=A0 # again when using the initramfs
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-log=
ging-allow-auditd_t-to-writ.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-log=
ging-allow-auditd_t-to-writ.patch=20
>>>
>>> similarity index 87%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0057-policy-modules-system-loggi=
ng-allow-auditd_t-to-writ.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0050-policy-modules-system-loggi=
ng-allow-auditd_t-to-writ.patch
>>> index 47328be..aa02eb1 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-log=
ging-allow-auditd_t-to-writ.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-log=
ging-allow-auditd_t-to-writ.patch
>>> @@ -1,4 +1,4 @@
>>> -From 96437ba860d352304246fbe3381030da0665f239 Mon Sep 17 00:00:00 20=
01
>>> +From cb7a4ff6081f19d05b109512275ec9a537f2f6d2 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Wenzong Fan <wenzong.fan@windriver.com>
>>> =C2=A0 Date: Thu, 25 Feb 2016 04:25:08 -0500
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: allow auditd_t=
 to=20
>>> write socket
>>> @@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index e67c25a9e..f8d8b73f0 100644
>>> +index f63965d4d..7e41596f4 100644
>>> =C2=A0 --- a/policy/modules/system/logging.te
>>> =C2=A0 +++ b/policy/modules/system/logging.te
>>> -@@ -215,6 +215,8 @@ miscfiles_read_localization(auditd_t)
>>> +@@ -223,6 +223,8 @@ miscfiles_read_localization(auditd_t)
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 mls_file_read_all_levels(auditd_t)
>>> =C2=A0=C2=A0 mls_file_write_all_levels(auditd_t) # Need to be able to=
 write to=20
>>> /var/run/ directory
>>> @@ -35,5 +35,5 @@ index e67c25a9e..f8d8b73f0 100644
>>> =C2=A0=C2=A0 seutil_dontaudit_read_config(auditd_t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch=20
>>>
>>> similarity index 83%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
>>> index ad92c7f..16bdf84 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-ker=
nel-make-kernel_t-MLS-trust.patch
>>> @@ -1,4 +1,4 @@
>>> -From 102255e89863c5a31d0d6c8df67b258d819b9a68 Mon Sep 17 00:00:00 20=
01
>>> +From 023e7b92a805103c54aec06bbd9465e4fbf7a6f2 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Thu, 31 Oct 2019 17:35:59 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t M=
LS=20
>>> trusted for
>>> @@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 1 insertion(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/kernel/kernel.te=20
>>> b/policy/modules/kernel/kernel.te
>>> -index 1c53754ee..2031576e0 100644
>>> +index 40cd52825..d08610543 100644
>>> =C2=A0 --- a/policy/modules/kernel/kernel.te
>>> =C2=A0 +++ b/policy/modules/kernel/kernel.te
>>> -@@ -360,6 +360,7 @@ mls_socket_write_all_levels(kernel_t)
>>> +@@ -372,6 +372,7 @@ mls_socket_write_all_levels(kernel_t)
>>> =C2=A0=C2=A0 mls_fd_use_all_levels(kernel_t)
>>> =C2=A0=C2=A0 # https://bugzilla.redhat.com/show_bug.cgi?id=3D667370
>>> =C2=A0=C2=A0 mls_file_downgrade(kernel_t)
>>> @@ -27,5 +27,5 @@ index 1c53754ee..2031576e0 100644
>>> =C2=A0=C2=A0 ifdef(`distro_redhat',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Bugzilla 222337
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-set=
rans-allow-setrans_t-use-fd.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-set=
rans-allow-setrans_t-use-fd.patch=20
>>>
>>> similarity index 83%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0059-policy-modules-system-setra=
ns-allow-setrans_t-use-fd.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setra=
ns-allow-setrans_t-use-fd.patch
>>> index 96d0588..b916084 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-set=
rans-allow-setrans_t-use-fd.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-set=
rans-allow-setrans_t-use-fd.patch
>>> @@ -1,4 +1,4 @@
>>> -From 5fa9e03a3b90f97e573a7724cd9d49b53730d083 Mon Sep 17 00:00:00 20=
01
>>> +From 55fe90eba640e6d52bb269176f45a3a5e2c3ed80 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Roy Li <rongqing.li@windriver.com>
>>> =C2=A0 Date: Sat, 22 Feb 2014 13:35:38 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/setrans: allow setrans_=
t=20
>>> use fd at any
>>> @@ -13,10 +13,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/setrans.te=20
>>> b/policy/modules/system/setrans.te
>>> -index 25aadfc5f..564e2d4d1 100644
>>> +index 12e66aad9..5510f7fac 100644
>>> =C2=A0 --- a/policy/modules/system/setrans.te
>>> =C2=A0 +++ b/policy/modules/system/setrans.te
>>> -@@ -73,6 +73,8 @@ mls_net_receive_all_levels(setrans_t)
>>> +@@ -69,6 +69,8 @@ mls_net_receive_all_levels(setrans_t)
>>> =C2=A0=C2=A0 mls_socket_write_all_levels(setrans_t)
>>> =C2=A0=C2=A0 mls_process_read_all_levels(setrans_t)
>>> =C2=A0=C2=A0 mls_socket_read_all_levels(setrans_t)
>>> @@ -26,5 +26,5 @@ index 25aadfc5f..564e2d4d1 100644
>>> =C2=A0=C2=A0 selinux_compute_access_vector(setrans_t)
>>> =C2=A0=C2=A0 =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sys=
temd-make-_systemd_t-MLS-tr.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-sys=
temd-make-_systemd_t-MLS-tr.patch=20
>>>
>>> similarity index 88%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0060-policy-modules-system-syste=
md-make-_systemd_t-MLS-tr.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0053-policy-modules-system-syste=
md-make-_systemd_t-MLS-tr.patch
>>> index 8bfe607..c4dc87b 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sys=
temd-make-_systemd_t-MLS-tr.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-sys=
temd-make-_systemd_t-MLS-tr.patch
>>> @@ -1,4 +1,4 @@
>>> -From fe70aaf9a104b4b0c3439d2767eccb0136951f08 Mon Sep 17 00:00:00 20=
01
>>> +From c9afe0dc30f51f7ad7b93b8878c88df1146272a0 Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Mon, 22 Feb 2021 11:28:12 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/systemd: make *_systemd=
_t=20
>>> MLS trusted
>>> @@ -24,10 +24,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 3 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/systemd.if=20
>>> b/policy/modules/system/systemd.if
>>> -index 5c44d8d8a..5f2038f22 100644
>>> +index 325ca548b..b23b9bb0a 100644
>>> =C2=A0 --- a/policy/modules/system/systemd.if
>>> =C2=A0 +++ b/policy/modules/system/systemd.if
>>> -@@ -171,6 +171,9 @@ template(`systemd_role_template',`
>>> +@@ -196,6 +196,9 @@ template(`systemd_role_template',`
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xdg_read=
_config_files($1_systemd_t)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xdg_read=
_data_files($1_systemd_t)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> @@ -38,5 +38,5 @@ index 5c44d8d8a..5f2038f22 100644
>>> =C2=A0=C2=A0 =C2=A0=C2=A0 ######################################
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-log=
ging-make-syslogd_runtime_t.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-log=
ging-make-syslogd_runtime_t.patch=20
>>>
>>> similarity index 84%
>>> rename from=20
>>> recipes-security/refpolicy/refpolicy/0061-policy-modules-system-loggi=
ng-make-syslogd_runtime_t.patch
>>> rename to=20
>>> recipes-security/refpolicy/refpolicy/0054-policy-modules-system-loggi=
ng-make-syslogd_runtime_t.patch
>>> index 7bdc9d6..ab87039 100644
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-log=
ging-make-syslogd_runtime_t.patch
>>> +++=20
>>> b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-log=
ging-make-syslogd_runtime_t.patch
>>> @@ -1,4 +1,4 @@
>>> -From f8a12b28b70689ab520e7ae94d306afe9dcbb556 Mon Sep 17 00:00:00 20=
01
>>> +From 7a65c9f3636b43f3a29349ea1c045d5281efa5aa Mon Sep 17 00:00:00 20=
01
>>> =C2=A0 From: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 Date: Sat, 18 Dec 2021 17:31:45 +0800
>>> =C2=A0 Subject: [PATCH] policy/modules/system/logging: make=20
>>> syslogd_runtime_t MLS
>>> @@ -23,7 +23,7 @@ dev=3D"tmpfs" ino=3D9854=20
>>> scontext=3Dsystem_u:system_r:rpcd_t:s0-s15:c0.c1023
>>> =C2=A0 tcontext=3Dsystem_u:object_r:syslogd_var_run_t:s15:c0.c1023 tc=
lass=3Ddir
>>> =C2=A0 permissive=3D0
>>> =C2=A0 -Upstream-Status: Pending
>>> +Upstream-Status: Inappropriate [embedded specific]
>>> =C2=A0 =C2=A0 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0 ---
>>> @@ -31,18 +31,18 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>> =C2=A0 =C2=A0 diff --git a/policy/modules/system/logging.te=20
>>> b/policy/modules/system/logging.te
>>> -index f8d8b73f0..badf56f16 100644
>>> +index 7e41596f4..0c25457d6 100644
>>> =C2=A0 --- a/policy/modules/system/logging.te
>>> =C2=A0 +++ b/policy/modules/system/logging.te
>>> -@@ -438,6 +438,8 @@ allow syslogd_t syslogd_runtime_t:file map;
>>> +@@ -447,6 +447,8 @@ allow syslogd_t syslogd_runtime_t:file map;
>>> =C2=A0=C2=A0 manage_files_pattern(syslogd_t, syslogd_runtime_t,=20
>>> syslogd_runtime_t)
>>> =C2=A0=C2=A0 files_runtime_filetrans(syslogd_t, syslogd_runtime_t, fi=
le)
>>> =C2=A0=C2=A0 =C2=A0 +mls_trusted_object(syslogd_runtime_t)
>>> =C2=A0 +
>>> - kernel_read_crypto_sysctls(syslogd_t)
>>> =C2=A0=C2=A0 kernel_read_system_state(syslogd_t)
>>> =C2=A0=C2=A0 kernel_read_network_state(syslogd_t)
>>> + kernel_read_kernel_sysctls(syslogd_t)
>>> =C2=A0 --
>>> -2.17.1
>>> +2.25.1
>>> =C2=A0 diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-=
is-linked-to-libselinux.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-=
is-linked-to-libselinux.patch=20
>>>
>>> deleted file mode 100644
>>> index e0db7d3..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-=
is-linked-to-libselinux.patch
>>> +++ /dev/null
>>> @@ -1,33 +0,0 @@
>>> -From 52a4222397f5d3b28ca15a45bb2ace209a4afc3e Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Thu, 31 Mar 2022 13:09:10 -0400
>>> -Subject: [PATCH] systemd: systemd-resolved is linked to libselinux
>>> -
>>> -systemd-resolved as of systemd 250 fails to start with this error:
>>> -
>>> -Failed to initialize SELinux labeling handle: No such file or=20
>>> directory
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/3a22db2410de479e=
5baa88f3f668a7a4ac198950]=20
>>>
>>> -
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.te | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index 8cea6baa1..beb301cc6 100644
>>> ---- a/policy/modules/system/systemd.te
>>> -+++ b/policy/modules/system/systemd.te
>>> -@@ -1261,6 +1261,7 @@ fs_getattr_cgroup(systemd_resolved_t)
>>> -
>>> - init_dgram_send(systemd_resolved_t)
>>> -
>>> -+seutil_libselinux_linked(systemd_resolved_t)
>>> - seutil_read_file_contexts(systemd_resolved_t)
>>> -
>>> - systemd_log_parse_environment(systemd_resolved_t)
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-=
DNS-resolution-over-io.syst.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-=
DNS-resolution-over-io.syst.patch=20
>>>
>>> deleted file mode 100644
>>> index 63da7cd..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-=
DNS-resolution-over-io.syst.patch
>>> +++ /dev/null
>>> @@ -1,63 +0,0 @@
>>> -From 1ba0911e157c64ea15636c5707f38f1bdc9a46c8 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Wed, 27 Apr 2022 01:09:52 -0400
>>> -Subject: [PATCH] sysnetwork, systemd: allow DNS resolution over
>>> - io.systemd.Resolve
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/1a0acc9c0d8c7c49=
ad4ca2cabd44bc66450f45e0]=20
>>>
>>> -
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/sysnetwork.if |=C2=A0 1 +
>>> - policy/modules/system/systemd.if=C2=A0=C2=A0=C2=A0 | 21 +++++++++++=
++++++++++
>>> - 2 files changed, 22 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/sysnetwork.if=20
>>> b/policy/modules/system/sysnetwork.if
>>> -index 8664a67c8..140d48508 100644
>>> ---- a/policy/modules/system/sysnetwork.if
>>> -+++ b/policy/modules/system/sysnetwork.if
>>> -@@ -844,6 +844,7 @@ interface(`sysnet_dns_name_resolve',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 ifdef(`init_systemd',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 optional_policy(`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 systemd_dbus_chat_resolved($1)
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
systemd_stream_connect_resolved($1)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # This seems needed=
 when the mymachines NSS module is used
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 optional_policy(`
>>> -diff --git a/policy/modules/system/systemd.if=20
>>> b/policy/modules/system/systemd.if
>>> -index 5f2038f22..9143fb4c0 100644
>>> ---- a/policy/modules/system/systemd.if
>>> -+++ b/policy/modules/system/systemd.if
>>> -@@ -1835,6 +1835,27 @@ interface(`systemd_tmpfilesd_managed',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 ')
>>> - ')
>>> -
>>> -+#######################################
>>> -+## <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Connect to systemd resolved over
>>> -+##=C2=A0=C2=A0=C2=A0 /run/systemd/resolve/io.systemd.Resolve .
>>> -+## </summary>
>>> -+## <param name=3D"domain">
>>> -+##=C2=A0=C2=A0=C2=A0 <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Domain allowed access.
>>> -+##=C2=A0=C2=A0=C2=A0 </summary>
>>> -+## </param>
>>> -+#
>>> -+interface(`systemd_stream_connect_resolved',`
>>> -+=C2=A0=C2=A0=C2=A0 gen_require(`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type systemd_resolved_t;
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type systemd_resolved_ru=
ntime_t;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 files_search_runtime($1)
>>> -+=C2=A0=C2=A0=C2=A0 stream_connect_pattern($1, systemd_resolved_runt=
ime_t,=20
>>> systemd_resolved_runtime_t, systemd_resolved_t)
>>> -+')
>>> -+
>>> - ########################################
>>> - ## <summary>
>>> - ##=C2=A0=C2=A0 Send and receive messages from
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-t=
o-watch-and-watch-reads-on-.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-t=
o-watch-and-watch-reads-on-.patch=20
>>>
>>> deleted file mode 100644
>>> index 88f070d..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-t=
o-watch-and-watch-reads-on-.patch
>>> +++ /dev/null
>>> @@ -1,94 +0,0 @@
>>> -From 50670946f04257cc2110facbc61884e2cf0d8327 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Fri, 6 May 2022 21:16:29 -0400
>>> -Subject: [PATCH] term, init: allow systemd to watch and watch reads =
on
>>> - unallocated ttys
>>> -
>>> -As of systemd 250, systemd needs to be able to add a watch on and=20
>>> watch
>>> -reads on unallocated ttys in order to start getty.
>>> -
>>> -systemd[55548]: getty@tty1.service: Failed to set up standard=20
>>> input: Permission denied
>>> -systemd[55548]: getty@tty1.service: Failed at step STDIN spawning=20
>>> /sbin/agetty: Permission denied
>>> -
>>> -time->Fri May=C2=A0 6 21:17:58 2022
>>> -type=3DPROCTITLE msg=3Daudit(1651886278.452:1770): proctitle=3D"(age=
tty)"
>>> -type=3DPATH msg=3Daudit(1651886278.452:1770): item=3D0 name=3D"/dev/=
tty1"=20
>>> inode=3D18 dev=3D00:05 mode=3D020620 ouid=3D0 ogid=3D5 rdev=3D04:01=20
>>> obj=3Dsystem_u:object_r:tty_device_t:s0 nametype=3DNORMAL cap_fp=3D0=20
>>> cap_fi=3D0 cap_fe=3D0 cap_fver=3D0 cap_frootid=3D0
>>> -type=3DCWD msg=3Daudit(1651886278.452:1770): cwd=3D"/"
>>> -type=3DSYSCALL msg=3Daudit(1651886278.452:1770): arch=3Dc000003e=20
>>> syscall=3D254 success=3Dno exit=3D-13 a0=3D3 a1=3D60ba5c21e020 a2=3D1=
8 a3=3D23=20
>>> items=3D1 ppid=3D1 pid=3D55551 auid=3D4294967295 uid=3D0 gid=3D0 euid=
=3D0 suid=3D0=20
>>> fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D4294967295=20
>>> comm=3D"(agetty)" exe=3D"/lib/systemd/systemd"=20
>>> subj=3Dsystem_u:system_r:init_t:s0 key=3D(null)
>>> -type=3DAVC msg=3Daudit(1651886278.452:1770): avc:=C2=A0 denied=C2=A0=
 { watch=20
>>> watch_reads } for=C2=A0 pid=3D55551 comm=3D"(agetty)" path=3D"/dev/tt=
y1"=20
>>> dev=3D"devtmpfs" ino=3D18 scontext=3Dsystem_u:system_r:init_t:s0=20
>>> tcontext=3Dsystem_u:object_r:tty_device_t:s0 tclass=3Dchr_file permis=
sive=3D0
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/308ab9f69a4623f5=
dace8da151e70c6316f055a8]=20
>>>
>>> -
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/kernel/terminal.if | 38=20
>>> +++++++++++++++++++++++++++++++
>>> - policy/modules/system/init.te=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 ++
>>> - 2 files changed, 40 insertions(+)
>>> -
>>> -diff --git a/policy/modules/kernel/terminal.if=20
>>> b/policy/modules/kernel/terminal.if
>>> -index e8c0735eb..6e9f654ac 100644
>>> ---- a/policy/modules/kernel/terminal.if
>>> -+++ b/policy/modules/kernel/terminal.if
>>> -@@ -1287,6 +1287,44 @@=20
>>> interface(`term_dontaudit_use_unallocated_ttys',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 dontaudit $1 tty_device_t:chr_file rw_chr_f=
ile_perms;
>>> - ')
>>> -
>>> -+########################################
>>> -+## <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Watch unallocated ttys.
>>> -+## </summary>
>>> -+## <param name=3D"domain">
>>> -+##=C2=A0=C2=A0=C2=A0 <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Domain allowed access.
>>> -+##=C2=A0=C2=A0=C2=A0 </summary>
>>> -+## </param>
>>> -+#
>>> -+interface(`term_watch_unallocated_ttys',`
>>> -+=C2=A0=C2=A0=C2=A0 gen_require(`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type tty_device_t;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 dev_list_all_dev_nodes($1)
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 tty_device_t:chr_file watch;
>>> -+')
>>> -+
>>> -+########################################
>>> -+## <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Watch reads on unallocated ttys.
>>> -+## </summary>
>>> -+## <param name=3D"domain">
>>> -+##=C2=A0=C2=A0=C2=A0 <summary>
>>> -+##=C2=A0=C2=A0=C2=A0 Domain allowed access.
>>> -+##=C2=A0=C2=A0=C2=A0 </summary>
>>> -+## </param>
>>> -+#
>>> -+interface(`term_watch_reads_unallocated_ttys',`
>>> -+=C2=A0=C2=A0=C2=A0 gen_require(`
>>> -+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 type tty_device_t;
>>> -+=C2=A0=C2=A0=C2=A0 ')
>>> -+
>>> -+=C2=A0=C2=A0=C2=A0 dev_list_all_dev_nodes($1)
>>> -+=C2=A0=C2=A0=C2=A0 allow $1 tty_device_t:chr_file watch_reads;
>>> -+')
>>> -+
>>> - ########################################
>>> - ## <summary>
>>> - ##=C2=A0=C2=A0=C2=A0 Get the attributes of all tty device nodes.
>>> -diff --git a/policy/modules/system/init.te=20
>>> b/policy/modules/system/init.te
>>> -index 5a19f0e43..24cef0924 100644
>>> ---- a/policy/modules/system/init.te
>>> -+++ b/policy/modules/system/init.te
>>> -@@ -518,6 +518,8 @@ ifdef(`init_systemd',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 term_create_devpts_dirs(init_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 term_create_ptmx(init_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 term_create_controlling_term(init_t)
>>> -+=C2=A0=C2=A0=C2=A0 term_watch_unallocated_ttys(init_t)
>>> -+=C2=A0=C2=A0=C2=A0 term_watch_reads_unallocated_ttys(init_t)
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 # udevd is a "systemd kobject uevent socket=
 activated daemon"
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 udev_create_kobject_uevent_sockets(init_t)
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transiti=
on-for-systemd-networkd-run.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transiti=
on-for-systemd-networkd-run.patch=20
>>>
>>> deleted file mode 100644
>>> index 1029490..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transiti=
on-for-systemd-networkd-run.patch
>>> +++ /dev/null
>>> @@ -1,32 +0,0 @@
>>> -From 6f8a8ecd8bafd6e8a3515b53db2a2982a02ff254 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Thu, 31 Mar 2022 13:22:37 -0400
>>> -Subject: [PATCH] systemd: add file transition for systemd-networkd=20
>>> runtime
>>> -
>>> -systemd-networkd creates the /run/systemd/network directory which=20
>>> should
>>> -be labeled appropriately.
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/663b62f27cb12c22=
f056eba9326cf3f7f78d8a9e]=20
>>>
>>> -
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.te | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.te=20
>>> b/policy/modules/system/systemd.te
>>> -index beb301cc6..654c6a42a 100644
>>> ---- a/policy/modules/system/systemd.te
>>> -+++ b/policy/modules/system/systemd.te
>>> -@@ -917,6 +917,7 @@ auth_use_nsswitch(systemd_networkd_t)
>>> -
>>> - init_dgram_send(systemd_networkd_t)
>>> - init_read_state(systemd_networkd_t)
>>> -+init_runtime_filetrans(systemd_networkd_t,=20
>>> systemd_networkd_runtime_t, dir)
>>> -
>>> - logging_send_syslog_msg(systemd_networkd_t)
>>> -
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-=
context-for-run-systemd-net.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-=
context-for-run-systemd-net.patch=20
>>>
>>> deleted file mode 100644
>>> index f84eb4a..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-=
context-for-run-systemd-net.patch
>>> +++ /dev/null
>>> @@ -1,29 +0,0 @@
>>> -From 2e3f371b59bee343c42e4c69495df0f3719b6e24 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Sat, 2 Apr 2022 15:44:01 -0400
>>> -Subject: [PATCH] systemd: add missing file context for=20
>>> /run/systemd/network
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/f2fe1ae15485da7b=
6269b7d0d7dbed9a834f1876]=20
>>>
>>> -
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.fc | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.fc=20
>>> b/policy/modules/system/systemd.fc
>>> -index 34db8c034..d21914227 100644
>>> ---- a/policy/modules/system/systemd.fc
>>> -+++ b/policy/modules/system/systemd.fc
>>> -@@ -85,6 +85,7 @@ HOME_DIR/\.local/share/systemd(/.*)?=20
>>> gen_context(system_u:object_r:systemd_data
>>> -
>>> - /run/systemd/ask-password(/.*)?=20
>>> gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
>>> - /run/systemd/ask-password-block(/.*)?=20
>>> gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
>>> -+/run/systemd/network(/.*)?=20
>>> gen_context(system_u:object_r:systemd_networkd_runtime_t,s0)
>>> - /run/systemd/resolve(/.*)?=20
>>> gen_context(system_u:object_r:systemd_resolved_runtime_t,s0)
>>> - /run/systemd/seats(/.*)?=20
>>> gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
>>> - /run/systemd/sessions(/.*)?=20
>>> gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts=
-for-systemd-network-genera.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts=
-for-systemd-network-genera.patch=20
>>>
>>> deleted file mode 100644
>>> index 0aaf096..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts=
-for-systemd-network-genera.patch
>>> +++ /dev/null
>>> @@ -1,38 +0,0 @@
>>> -From 143d339b2e6611c56cd0210279757ebee9632731 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Thu, 19 May 2022 11:42:51 -0400
>>> -Subject: [PATCH] systemd: add file contexts for=20
>>> systemd-network-generator
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/73adba0a39b7409b=
c4bbfa0e962108c2b1e5f2a5]=20
>>>
>>> -
>>> -Thanks-To: Zhao Yi
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/systemd.fc | 2 ++
>>> - 1 file changed, 2 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/systemd.fc=20
>>> b/policy/modules/system/systemd.fc
>>> -index d21914227..1a35bd65c 100644
>>> ---- a/policy/modules/system/systemd.fc
>>> -+++ b/policy/modules/system/systemd.fc
>>> -@@ -35,6 +35,7 @@
>>> - /usr/lib/systemd/systemd-machined=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_machined_exec_t,s0)
>>> - /usr/lib/systemd/systemd-modules-load=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_modules_load_exec_t,s0)
>>> - /usr/lib/systemd/systemd-networkd=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
>>> -+/usr/lib/systemd/systemd-network-generator=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
>>> - /usr/lib/systemd/systemd-pstore=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_pstore_exec_t,s0)
>>> - /usr/lib/systemd/systemd-resolved=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_resolved_exec_t,s0)
>>> - /usr/lib/systemd/systemd-rfkill=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_rfkill_exec_t,s0)
>>> -@@ -60,6 +61,7 @@ HOME_DIR/\.local/share/systemd(/.*)?=20
>>> gen_context(system_u:object_r:systemd_data
>>> - /usr/lib/systemd/system/systemd-backlight.*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_backlight_unit_t,s0)
>>> - /usr/lib/systemd/system/systemd-binfmt.*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_binfmt_unit_t,s0)
>>> - /usr/lib/systemd/system/systemd-networkd.*=20
>>> gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
>>> -+/usr/lib/systemd/system/systemd-network-generator.*=20
>>> gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
>>> - /usr/lib/systemd/system/systemd-rfkill.*=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:systemd_rfkill_unit_t,s0)
>>> - /usr/lib/systemd/system/systemd-socket-proxyd\.service --=20
>>> gen_context(system_u:object_r:systemd_socket_proxyd_unit_file_t,s0)
>>> -
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-t=
o-read-systemd-networkd-run.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-t=
o-read-systemd-networkd-run.patch=20
>>>
>>> deleted file mode 100644
>>> index 259863c..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-t=
o-read-systemd-networkd-run.patch
>>> +++ /dev/null
>>> @@ -1,34 +0,0 @@
>>> -From 6508bc8a3440525384fcfcd8ad55a4cd5c79b912 Mon Sep 17 00:00:00 20=
01
>>> -From: Kenton Groombridge <me@concord.sh>
>>> -Date: Thu, 19 May 2022 11:43:44 -0400
>>> -Subject: [PATCH] systemd, udev: allow udev to read systemd-networkd=20
>>> runtime
>>> -
>>> -udev searches for .link files and applies custom udev rules to devic=
es
>>> -as they come up.
>>> -
>>> -Upstream-Status: Backport
>>> -[https://github.com/SELinuxProject/refpolicy/commit/998ef975f38c70d5=
7e7220b88ae5e62c88ebb770]=20
>>>
>>> -
>>> -Thanks-To: Zhao Yi
>>> -Signed-off-by: Kenton Groombridge <me@concord.sh>
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/udev.te | 2 ++
>>> - 1 file changed, 2 insertions(+)
>>> -
>>> -diff --git a/policy/modules/system/udev.te=20
>>> b/policy/modules/system/udev.te
>>> -index 4c5a690fb..8e243c0f2 100644
>>> ---- a/policy/modules/system/udev.te
>>> -+++ b/policy/modules/system/udev.te
>>> -@@ -270,6 +270,8 @@ ifdef(`init_systemd',`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 systemd_read_hwdb(udev_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 systemd_read_logind_sessions_files(udev_t)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 systemd_read_logind_runtime_files(udev_t)
>>> -+=C2=A0=C2=A0=C2=A0 # udev searches for .link files and applies cust=
om udev rules
>>> -+=C2=A0=C2=A0=C2=A0 systemd_read_networkd_runtime(udev_t)
>>> -
>>> -=C2=A0=C2=A0=C2=A0=C2=A0 optional_policy(`
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 init_dbus_chat(udev=
_t)
>>> ---
>>> -2.25.1
>>> -
>>> diff --git=20
>>> a/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-t=
o-findfs-alternative.patch=20
>>> b/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-t=
o-findfs-alternative.patch=20
>>>
>>> deleted file mode 100644
>>> index 6535a4b..0000000
>>> ---=20
>>> a/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-t=
o-findfs-alternative.patch
>>> +++ /dev/null
>>> @@ -1,29 +0,0 @@
>>> -From 3e3ec39659ae068d20efbb5f13054d90960c3c3f Mon Sep 17 00:00:00 20=
01
>>> -From: Yi Zhao <yi.zhao@windriver.com>
>>> -Date: Thu, 19 May 2022 16:51:49 +0800
>>> -Subject: [PATCH] fc/fstools: apply policy to findfs alternative
>>> -
>>> -Add file context for findfs alternative which is provided by=20
>>> util-linux.
>>> -
>>> -Upstream-Status: Inappropriate [embedded specific]
>>> -
>>> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>>> ----
>>> - policy/modules/system/fstools.fc | 1 +
>>> - 1 file changed, 1 insertion(+)
>>> -
>>> -diff --git a/policy/modules/system/fstools.fc=20
>>> b/policy/modules/system/fstools.fc
>>> -index bef711850..91be0ef3d 100644
>>> ---- a/policy/modules/system/fstools.fc
>>> -+++ b/policy/modules/system/fstools.fc
>>> -@@ -77,6 +77,7 @@
>>> - /usr/sbin/fdisk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> - /usr/sbin/fdisk\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> - /usr/sbin/findfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> -+/usr/sbin/findfs\.util-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> - /usr/sbin/fsck.*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> - /usr/sbin/gdisk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> - /usr/sbin/hdparm=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=20
>>> gen_context(system_u:object_r:fsadm_exec_t,s0)
>>> ---
>>> -2.25.1
>>> -
>>> diff --git a/recipes-security/refpolicy/refpolicy_common.inc=20
>>> b/recipes-security/refpolicy/refpolicy_common.inc
>>> index bb0c0dd..a51312f 100644
>>> --- a/recipes-security/refpolicy/refpolicy_common.inc
>>> +++ b/recipes-security/refpolicy/refpolicy_common.inc
>>> @@ -7,10 +7,10 @@ PROVIDES =3D "virtual/refpolicy"
>>> =C2=A0 RPROVIDES:${PN} =3D "refpolicy"
>>> =C2=A0 =C2=A0 # Specific config files for Poky
>>> -SRC_URI +=3D "file://customizable_types=C2=A0 \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://setrans-mls.conf=C2=
=A0 \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://setrans-mcs.conf=C2=
=A0 \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>>> +SRC_URI +=3D "file://customizable_types \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f=
ile://setrans-mls.conf \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f=
ile://setrans-mcs.conf \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 =C2=A0 # Base patches applied to all Yocto-based platforms.=C2=
=A0 Your own=20
>>> version of
>>> =C2=A0 # refpolicy should provide a version of these and place them i=
n=20
>>> your own
>>> @@ -49,64 +49,49 @@ SRC_URI +=3D " \
>>> file://0031-policy-modules-kernel-files-add-rules-for-the-symlin.patc=
h=20
>>> \
>>> file://0032-policy-modules-system-logging-fix-auditd-startup-fai.patc=
h=20
>>> \
>>> file://0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patc=
h=20
>>> \
>>> -=20
>>> file://0034-policy-modules-system-modutils-allow-mod_t-to-access.patc=
h=20
>>> \
>>> -=20
>>> file://0035-policy-modules-system-getty-allow-getty_t-to-search-.patc=
h=20
>>> \
>>> -=20
>>> file://0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patc=
h=20
>>> \
>>> -=20
>>> file://0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patc=
h=20
>>> \
>>> -=20
>>> file://0038-policy-modules-system-systemd-enable-support-for-sys.patc=
h=20
>>> \
>>> -=20
>>> file://0039-policy-modules-system-systemd-fix-systemd-resolved-s.patc=
h=20
>>> \
>>> -=20
>>> file://0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patc=
h=20
>>> \
>>> -=20
>>> file://0041-policy-modules-system-logging-fix-syslogd-failures-f.patc=
h=20
>>> \
>>> - file://0042-policy-modules-system-systemd-systemd-user-fixes.patch =
\
>>> -=20
>>> file://0043-policy-modules-system-sysnetwork-support-priviledge-.patc=
h=20
>>> \
>>> -=20
>>> file://0044-policy-modules-system-modutils-allow-kmod_t-to-write.patc=
h=20
>>> \
>>> -=20
>>> file://0045-policy-modules-system-systemd-allow-systemd_logind_t.patc=
h=20
>>> \
>>> -=20
>>> file://0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patc=
h=20
>>> \
>>> -=20
>>> file://0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patc=
h=20
>>> \
>>> -=20
>>> file://0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patc=
h=20
>>> \
>>> -=20
>>> file://0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patc=
h=20
>>> \
>>> -=20
>>> file://0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patc=
h=20
>>> \
>>> -=20
>>> file://0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patc=
h=20
>>> \
>>> -=20
>>> file://0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patc=
h=20
>>> \
>>> -=20
>>> file://0053-policy-modules-system-systemd-systemd-make-systemd_-.patc=
h=20
>>> \
>>> -=20
>>> file://0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patc=
h=20
>>> \
>>> -=20
>>> file://0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patc=
h=20
>>> \
>>> -=20
>>> file://0056-policy-modules-system-init-all-init_t-to-read-any-le.patc=
h=20
>>> \
>>> -=20
>>> file://0057-policy-modules-system-logging-allow-auditd_t-to-writ.patc=
h=20
>>> \
>>> -=20
>>> file://0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patc=
h=20
>>> \
>>> -=20
>>> file://0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patc=
h=20
>>> \
>>> -=20
>>> file://0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patc=
h=20
>>> \
>>> -=20
>>> file://0061-policy-modules-system-logging-make-syslogd_runtime_t.patc=
h=20
>>> \
>>> - file://0062-systemd-systemd-resolved-is-linked-to-libselinux.patch =
\
>>> -=20
>>> file://0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patc=
h=20
>>> \
>>> -=20
>>> file://0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patc=
h=20
>>> \
>>> -=20
>>> file://0065-systemd-add-file-transition-for-systemd-networkd-run.patc=
h=20
>>> \
>>> -=20
>>> file://0066-systemd-add-missing-file-context-for-run-systemd-net.patc=
h=20
>>> \
>>> -=20
>>> file://0067-systemd-add-file-contexts-for-systemd-network-genera.patc=
h=20
>>> \
>>> -=20
>>> file://0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patc=
h=20
>>> \
>>> - file://0069-fc-fstools-apply-policy-to-findfs-alternative.patch \
>>> +=20
>>> file://0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patc=
h=20
>>> \
>>> +=20
>>> file://0035-policy-modules-system-systemd-enable-support-for-sys.patc=
h=20
>>> \
>>> +=20
>>> file://0036-policy-modules-system-systemd-allow-systemd_logind_t.patc=
h=20
>>> \
>>> +=20
>>> file://0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patc=
h=20
>>> \
>>> + file://0038-policy-modules-system-systemd-systemd-user-fixes.patch =
\
>>> +=20
>>> file://0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patc=
h=20
>>> \
>>> +=20
>>> file://0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patc=
h=20
>>> \
>>> +=20
>>> file://0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patc=
h=20
>>> \
>>> +=20
>>> file://0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patc=
h=20
>>> \
>>> +=20
>>> file://0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patc=
h=20
>>> \
>>> +=20
>>> file://0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patc=
h=20
>>> \
>>> +=20
>>> file://0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patc=
h=20
>>> \
>>> +=20
>>> file://0046-policy-modules-system-systemd-systemd-make-systemd_-.patc=
h=20
>>> \
>>> +=20
>>> file://0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patc=
h=20
>>> \
>>> +=20
>>> file://0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patc=
h=20
>>> \
>>> +=20
>>> file://0049-policy-modules-system-init-all-init_t-to-read-any-le.patc=
h=20
>>> \
>>> +=20
>>> file://0050-policy-modules-system-logging-allow-auditd_t-to-writ.patc=
h=20
>>> \
>>> +=20
>>> file://0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patc=
h=20
>>> \
>>> +=20
>>> file://0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patc=
h=20
>>> \
>>> +=20
>>> file://0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patc=
h=20
>>> \
>>> +=20
>>> file://0054-policy-modules-system-logging-make-syslogd_runtime_t.patc=
h=20
>>> \
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 =C2=A0 S =3D "${WORKDIR}/refpolicy"
>>> =C2=A0 -CONFFILES:${PN} +=3D "${sysconfdir}/selinux/config"
>>> +CONFFILES:${PN} =3D "${sysconfdir}/selinux/config"
>>> =C2=A0 FILES:${PN} +=3D " \
>>> -=C2=A0=C2=A0=C2=A0 ${sysconfdir}/selinux/${POLICY_NAME}/ \
>>> -=C2=A0=C2=A0=C2=A0 ${datadir}/selinux/${POLICY_NAME}/*.pp \
>>> -=C2=A0=C2=A0=C2=A0 ${localstatedir}/lib/selinux/${POLICY_NAME}/ \
>>> -=C2=A0=C2=A0=C2=A0 "
>>> +=C2=A0=C2=A0=C2=A0 ${sysconfdir}/selinux/${POLICY_NAME}/ \
>>> +=C2=A0=C2=A0=C2=A0 ${datadir}/selinux/${POLICY_NAME}/*.pp \
>>> +=C2=A0=C2=A0=C2=A0 ${localstatedir}/lib/selinux/${POLICY_NAME}/ \
>>> +=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 FILES:${PN}-dev =3D+ " \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${datadir}/selinux/${POLI=
CY_NAME}/include/ \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/selinux/sep=
olgen.conf \
>>> -"
>>> +=C2=A0=C2=A0=C2=A0 ${datadir}/selinux/${POLICY_NAME}/include/ \
>>> +=C2=A0=C2=A0=C2=A0 ${sysconfdir}/selinux/sepolgen.conf \
>>> +=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 =C2=A0 EXTRANATIVEPATH +=3D "bzip2-native"
>>> =C2=A0 -DEPENDS +=3D "bzip2-replacement-native checkpolicy-native=20
>>> policycoreutils-native semodule-utils-native m4-native"
>>> +DEPENDS =3D "bzip2-replacement-native checkpolicy-native=20
>>> policycoreutils-native semodule-utils-native m4-native"
>>> =C2=A0 -RDEPENDS:${PN}-dev =3D+ " \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 python3-core \
>>> -"
>>> +RDEPENDS:${PN}-dev =3D " \
>>> +=C2=A0=C2=A0=C2=A0 python3-core \
>>> +=C2=A0=C2=A0=C2=A0 "
>>> =C2=A0 =C2=A0 PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>>> =C2=A0 @@ -129,83 +114,83 @@ POLICY_MLS_SENS ?=3D "16"
>>> =C2=A0 POLICY_MLS_CATS ?=3D "1024"
>>> =C2=A0 POLICY_MCS_CATS ?=3D "1024"
>>> =C2=A0 -EXTRA_OEMAKE +=3D "NAME=3D${POLICY_NAME} \
>>> -=C2=A0=C2=A0=C2=A0 TYPE=3D${POLICY_TYPE} \
>>> -=C2=A0=C2=A0=C2=A0 DISTRO=3D${POLICY_DISTRO} \
>>> -=C2=A0=C2=A0=C2=A0 UBAC=3D${POLICY_UBAC} \
>>> -=C2=A0=C2=A0=C2=A0 UNK_PERMS=3D${POLICY_UNK_PERMS} \
>>> -=C2=A0=C2=A0=C2=A0 DIRECT_INITRC=3D${POLICY_DIRECT_INITRC} \
>>> -=C2=A0=C2=A0=C2=A0 SYSTEMD=3D${POLICY_SYSTEMD} \
>>> -=C2=A0=C2=A0=C2=A0 MONOLITHIC=3D${POLICY_MONOLITHIC} \
>>> -=C2=A0=C2=A0=C2=A0 CUSTOM_BUILDOPT=3D${POLICY_CUSTOM_BUILDOPT} \
>>> -=C2=A0=C2=A0=C2=A0 QUIET=3D${POLICY_QUIET} \
>>> -=C2=A0=C2=A0=C2=A0 MLS_SENS=3D${POLICY_MLS_SENS} \
>>> -=C2=A0=C2=A0=C2=A0 MLS_CATS=3D${POLICY_MLS_CATS} \
>>> -=C2=A0=C2=A0=C2=A0 MCS_CATS=3D${POLICY_MCS_CATS}"
>>> +EXTRA_OEMAKE =3D "NAME=3D${POLICY_NAME} \
>>> +=C2=A0=C2=A0=C2=A0 TYPE=3D${POLICY_TYPE} \
>>> +=C2=A0=C2=A0=C2=A0 DISTRO=3D${POLICY_DISTRO} \
>>> +=C2=A0=C2=A0=C2=A0 UBAC=3D${POLICY_UBAC} \
>>> +=C2=A0=C2=A0=C2=A0 UNK_PERMS=3D${POLICY_UNK_PERMS} \
>>> +=C2=A0=C2=A0=C2=A0 DIRECT_INITRC=3D${POLICY_DIRECT_INITRC} \
>>> +=C2=A0=C2=A0=C2=A0 SYSTEMD=3D${POLICY_SYSTEMD} \
>>> +=C2=A0=C2=A0=C2=A0 MONOLITHIC=3D${POLICY_MONOLITHIC} \
>>> +=C2=A0=C2=A0=C2=A0 CUSTOM_BUILDOPT=3D${POLICY_CUSTOM_BUILDOPT} \
>>> +=C2=A0=C2=A0=C2=A0 QUIET=3D${POLICY_QUIET} \
>>> +=C2=A0=C2=A0=C2=A0 MLS_SENS=3D${POLICY_MLS_SENS} \
>>> +=C2=A0=C2=A0=C2=A0 MLS_CATS=3D${POLICY_MLS_CATS} \
>>> +=C2=A0=C2=A0=C2=A0 MCS_CATS=3D${POLICY_MCS_CATS}"
>>> =C2=A0 =C2=A0 EXTRA_OEMAKE +=3D "tc_usrbindir=3D${STAGING_BINDIR_NATI=
VE}"
>>> =C2=A0 EXTRA_OEMAKE +=3D=20
>>> "OUTPUT_POLICY=3D`${STAGING_BINDIR_NATIVE}/checkpolicy -V | cut -d' '=
=20
>>> -f1`"
>>> =C2=A0 EXTRA_OEMAKE +=3D "CC=3D'${BUILD_CC}' CFLAGS=3D'${BUILD_CFLAGS=
}'=20
>>> PYTHON=3D'${PYTHON}'"
>>> =C2=A0 -python __anonymous () {
>>> +python __anonymous() {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 import re
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # make sure DEFAULT_ENFORCING is something=
 sane
>>> +=C2=A0=C2=A0=C2=A0 # Make sure DEFAULT_ENFORCING is something sane
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not re.match('^(enforcing|permissiv=
e|disabled)$',
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.getVar('DEFAU=
LT_ENFORCING'),
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 flags=3D0):
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar('DEFA=
ULT_ENFORCING', 'permissive')
>>> =C2=A0 }
>>> =C2=A0 -disable_policy_modules () {
>>> -=C2=A0=C2=A0=C2=A0 for module in ${PURGE_POLICY_MODULES} ; do
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i "s/^\(\<${module}\=
>\) *=3D *.*$/\1 =3D off/"=20
>>> ${S}/policy/modules.conf
>>> -=C2=A0=C2=A0=C2=A0 done
>>> +disable_policy_modules() {
>>> +=C2=A0=C2=A0=C2=A0 for module in ${PURGE_POLICY_MODULES} ; do
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i "s/^\(\<${module}\=
>\) *=3D *.*$/\1 =3D off/"=20
>>> ${S}/policy/modules.conf
>>> +=C2=A0=C2=A0=C2=A0 done
>>> =C2=A0 }
>>> =C2=A0 =C2=A0 do_compile() {
>>> -=C2=A0=C2=A0=C2=A0 if [ -f "${WORKDIR}/modules.conf" ] ; then
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -f ${WORKDIR}/modules.=
conf ${S}/policy/modules.conf
>>> -=C2=A0=C2=A0=C2=A0 fi
>>> -=C2=A0=C2=A0=C2=A0 oe_runmake conf
>>> -=C2=A0=C2=A0=C2=A0 disable_policy_modules
>>> -=C2=A0=C2=A0=C2=A0 oe_runmake policy
>>> +=C2=A0=C2=A0=C2=A0 if [ -f "${WORKDIR}/modules.conf" ] ; then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -f ${WORKDIR}/modules.=
conf ${S}/policy/modules.conf
>>> +=C2=A0=C2=A0=C2=A0 fi
>>> +=C2=A0=C2=A0=C2=A0 oe_runmake conf
>>> +=C2=A0=C2=A0=C2=A0 disable_policy_modules
>>> +=C2=A0=C2=A0=C2=A0 oe_runmake policy
>>> =C2=A0 }
>>> =C2=A0 -prepare_policy_store () {
>>> -=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install
>>> -=C2=A0=C2=A0=C2=A0 POL_PRIORITY=3D100
>>> -=C2=A0=C2=A0=C2=A0 POL_SRC=3D${D}${datadir}/selinux/${POLICY_NAME}
>>> -=C2=A0=C2=A0=C2=A0 POL_STORE=3D${D}${localstatedir}/lib/selinux/${PO=
LICY_NAME}
>>> - POL_ACTIVE_MODS=3D${POL_STORE}/active/modules/${POL_PRIORITY}
>>> -
>>> -=C2=A0=C2=A0=C2=A0 # Prepare to create policy store
>>> -=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_STORE}
>>> -=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_ACTIVE_MODS}
>>> -
>>> -=C2=A0=C2=A0=C2=A0 # get hll type from suffix on base policy module
>>> -=C2=A0=C2=A0=C2=A0 HLL_TYPE=3D$(echo ${POL_SRC}/base.* | awk -F . '{=
if (NF>1) {print=20
>>> $NF}}')
>>> -=20
>>> HLL_BIN=3D${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TY=
PE}
>>> -
>>> -=C2=A0=C2=A0=C2=A0 for i in ${POL_SRC}/*.${HLL_TYPE}; do
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_NAME=3D$(basename $i =
| sed "s/\.${HLL_TYPE}$//")
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_DIR=3D${POL_ACTIVE_MO=
DS}/${MOD_NAME}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${MOD_DIR}
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo -n "${HLL_TYPE}" > $=
{MOD_DIR}/lang_ext
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ! bzip2 -t $i >/dev/nu=
ll 2>&1; then
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $=
{HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
zip2 -f $i && mv -f $i.bz2 $i
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
unzip2 --stdout $i | \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ${HLL_BIN} | \
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bzip2 --stdout > ${MOD_DIR}/cil
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp $i ${MOD_DIR}/hll
>>> -=C2=A0=C2=A0=C2=A0 done
>>> +prepare_policy_store() {
>>> +=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install
>>> +=C2=A0=C2=A0=C2=A0 POL_PRIORITY=3D100
>>> +=C2=A0=C2=A0=C2=A0 POL_SRC=3D${D}${datadir}/selinux/${POLICY_NAME}
>>> +=C2=A0=C2=A0=C2=A0 POL_STORE=3D${D}${localstatedir}/lib/selinux/${PO=
LICY_NAME}
>>> + POL_ACTIVE_MODS=3D${POL_STORE}/active/modules/${POL_PRIORITY}
>>> +
>>> +=C2=A0=C2=A0=C2=A0 # Prepare to create policy store
>>> +=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_STORE}
>>> +=C2=A0=C2=A0=C2=A0 mkdir -p ${POL_ACTIVE_MODS}
>>> +
>>> +=C2=A0=C2=A0=C2=A0 # Get hll type from suffix on base policy module
>>> +=C2=A0=C2=A0=C2=A0 HLL_TYPE=3D$(echo ${POL_SRC}/base.* | awk -F . '{=
if (NF>1) {print=20
>>> $NF}}')
>>> +=20
>>> HLL_BIN=3D${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TY=
PE}
>>> +
>>> +=C2=A0=C2=A0=C2=A0 for i in ${POL_SRC}/*.${HLL_TYPE}; do
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_NAME=3D$(basename $i =
| sed "s/\.${HLL_TYPE}$//")
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MOD_DIR=3D${POL_ACTIVE_MO=
DS}/${MOD_NAME}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${MOD_DIR}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo -n "${HLL_TYPE}" > $=
{MOD_DIR}/lang_ext
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ! bzip2 -t $i >/dev/nu=
ll 2>&1; then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $=
{HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
zip2 -f $i && mv -f $i.bz2 $i
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
unzip2 --stdout $i | \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ${HLL_BIN} | \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bzip2 --stdout > ${MOD_DIR}/cil
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp $i ${MOD_DIR}/hll
>>> +=C2=A0=C2=A0=C2=A0 done
>>> =C2=A0 }
>>> =C2=A0 -rebuild_policy () {
>>> -=C2=A0=C2=A0=C2=A0 cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.c=
onf
>>> +rebuild_policy() {
>>> +=C2=A0=C2=A0=C2=A0 cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.c=
onf
>>> =C2=A0 module-store =3D direct
>>> =C2=A0 [setfiles]
>>> =C2=A0 path =3D ${STAGING_DIR_NATIVE}${base_sbindir_native}/setfiles
>>> @@ -219,29 +204,29 @@ args =3D \$@
>>> =C2=A0 policy-version =3D 33
>>> =C2=A0 EOF
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # Create policy store and build the policy
>>> -=C2=A0=C2=A0=C2=A0 semodule -p ${D} -s ${POLICY_NAME} -n -B
>>> -=C2=A0=C2=A0=C2=A0 rm -f ${D}${sysconfdir}/selinux/semanage.conf
>>> -=C2=A0=C2=A0=C2=A0 # no need to leave final dir created by semanage =
laying around
>>> -=C2=A0=C2=A0=C2=A0 rm -rf ${D}${localstatedir}/lib/selinux/final
>>> +=C2=A0=C2=A0=C2=A0 # Create policy store and build the policy
>>> +=C2=A0=C2=A0=C2=A0 semodule -p ${D} -s ${POLICY_NAME} -n -B
>>> +=C2=A0=C2=A0=C2=A0 rm -f ${D}${sysconfdir}/selinux/semanage.conf
>>> +=C2=A0=C2=A0=C2=A0 # No need to leave final dir created by semanage =
laying around
>>> +=C2=A0=C2=A0=C2=A0 rm -rf ${D}${localstatedir}/lib/selinux/final
>>> =C2=A0 }
>>> =C2=A0 -install_misc_files () {
>>> -=C2=A0=C2=A0=C2=A0 cat ${WORKDIR}/customizable_types >> \
>>> - ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_type=
s
>>> +install_misc_files() {
>>> +=C2=A0=C2=A0=C2=A0 cat ${WORKDIR}/customizable_types >> \
>>> + ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_type=
s
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # install setrans.conf for mls/mcs policy
>>> -=C2=A0=C2=A0=C2=A0 if [ -f ${WORKDIR}/setrans-${POLICY_TYPE}.conf ];=
 then
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR=
}/setrans-${POLICY_TYPE}.conf \
>>> - ${D}${sysconfdir}/selinux/${POLICY_NAME}/setrans.conf
>>> -=C2=A0=C2=A0=C2=A0 fi
>>> +=C2=A0=C2=A0=C2=A0 # Install setrans.conf for mls/mcs policy
>>> +=C2=A0=C2=A0=C2=A0 if [ -f ${WORKDIR}/setrans-${POLICY_TYPE}.conf ];=
 then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR=
}/setrans-${POLICY_TYPE}.conf \
>>> + ${D}${sysconfdir}/selinux/${POLICY_NAME}/setrans.conf
>>> +=C2=A0=C2=A0=C2=A0 fi
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 # install policy headers
>>> -=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install-headers
>>> +=C2=A0=C2=A0=C2=A0 # Install policy headers
>>> +=C2=A0=C2=A0=C2=A0 oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefi=
x}' install-headers
>>> =C2=A0 }
>>> =C2=A0 -install_config () {
>>> -=C2=A0=C2=A0=C2=A0 echo "\
>>> +install_config() {
>>> +=C2=A0=C2=A0=C2=A0 echo "\
>>> =C2=A0 # This file controls the state of SELinux on the system.
>>> =C2=A0 # SELINUX=3D can take one of these three values:
>>> =C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 enforcing - SELinux security policy =
is enforced.
>>> @@ -256,22 +241,22 @@ SELINUX=3D${DEFAULT_ENFORCING}
>>> =C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 mcs - Multi Category Security protec=
tion.
>>> =C2=A0 SELINUXTYPE=3D${POLICY_NAME}
>>> =C2=A0 " > ${WORKDIR}/config
>>> -=C2=A0=C2=A0=C2=A0 install -d ${D}/${sysconfdir}/selinux
>>> -=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}/config ${D}/${sysconfd=
ir}/selinux/
>>> +=C2=A0=C2=A0=C2=A0 install -d ${D}/${sysconfdir}/selinux
>>> +=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}/config ${D}/${sysconfd=
ir}/selinux/
>>> =C2=A0 }
>>> =C2=A0 -do_install () {
>>> -=C2=A0=C2=A0=C2=A0 prepare_policy_store
>>> -=C2=A0=C2=A0=C2=A0 rebuild_policy
>>> -=C2=A0=C2=A0=C2=A0 install_misc_files
>>> -=C2=A0=C2=A0=C2=A0 install_config
>>> +do_install() {
>>> +=C2=A0=C2=A0=C2=A0 prepare_policy_store
>>> +=C2=A0=C2=A0=C2=A0 rebuild_policy
>>> +=C2=A0=C2=A0=C2=A0 install_misc_files
>>> +=C2=A0=C2=A0=C2=A0 install_config
>>> =C2=A0 }
>>> =C2=A0 -do_install:append(){
>>> -=C2=A0=C2=A0=C2=A0 # While building policies on target, Makefile wil=
l be searched=20
>>> from SELINUX_DEVEL_PATH
>>> -=C2=A0=C2=A0=C2=A0 echo=20
>>> "SELINUX_DEVEL_PATH=3D${datadir}/selinux/${POLICY_NAME}/include" >=20
>>> ${D}${sysconfdir}/selinux/sepolgen.conf
>>> +do_install:append() {
>>> +=C2=A0=C2=A0=C2=A0 # While building policies on target, Makefile wil=
l be searched=20
>>> from SELINUX_DEVEL_PATH
>>> +=C2=A0=C2=A0=C2=A0 echo=20
>>> "SELINUX_DEVEL_PATH=3D${datadir}/selinux/${POLICY_NAME}/include" >=20
>>> ${D}${sysconfdir}/selinux/sepolgen.conf
>>> =C2=A0 }
>>> =C2=A0 -sysroot_stage_all:append () {
>>> -=C2=A0=C2=A0=C2=A0 sysroot_stage_dir ${D}${sysconfdir}=20
>>> ${SYSROOT_DESTDIR}${sysconfdir}
>>> +sysroot_stage_all:append() {
>>> +=C2=A0=C2=A0=C2=A0 sysroot_stage_dir ${D}${sysconfdir}=20
>>> ${SYSROOT_DESTDIR}${sysconfdir}
>>> =C2=A0 }
>>> diff --git a/recipes-security/refpolicy/refpolicy_git.inc=20
>>> b/recipes-security/refpolicy/refpolicy_git.inc
>>> index 9e78aed..54e0890 100644
>>> --- a/recipes-security/refpolicy/refpolicy_git.inc
>>> +++ b/recipes-security/refpolicy/refpolicy_git.inc
>>> @@ -1,8 +1,8 @@
>>> -PV =3D "2.20210908+git${SRCPV}"
>>> +PV =3D "2.20221101+git${SRCPV}"
>>> =C2=A0 =C2=A0 SRC_URI =3D=20
>>> "git://github.com/SELinuxProject/refpolicy.git;protocol=3Dhttps;branc=
h=3Dmaster;name=3Drefpolicy;destsuffix=3Drefpolicy"
>>> =C2=A0 -SRCREV_refpolicy ?=3D "23a8d103f379361cfe63a9ee064564624e1081=
96"
>>> +SRCREV_refpolicy ?=3D "03d486e306555da161b653c88e804ce23f3a0ea4"
>>> =C2=A0 =C2=A0 UPSTREAM_CHECK_GITTAGREGEX =3D "RELEASE_(?P<pver>\d+_\d=
+)"
>>> =C2=A0 --
>>> 2.25.1
>>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58521): https://lists.yoctoproject.org/g/yocto/mess=
age/58521
> Mute This Topic: https://lists.yoctoproject.org/mt/94729417/3616783
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yi.zhao@wind=
river.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

