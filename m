Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A302C25B78
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 03:01:54 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.4919.1716951704080932551
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 May 2024 20:01:44 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6879a5a475=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44T1dOg4011048;
	Wed, 29 May 2024 03:01:42 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3yb6y5kph3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 May 2024 03:01:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T8/cFnIWdYtnaP/8B+Cn5Ulu9ucbGssxfzFdCL0PCns5Yh1YYnNcQ0228O96t2n6eLFwCrcZYJaYuevm/KlSuW21bzuFl71mpEYfz9WDHIE7layW860ANUP2Ayk7G+cKg88owe5Rde6Vc+XFfJd0Mm08++bLpG+XrfhEGsNeEP7x5vnv54TERgYCepGRK9OT6lmkfkjzCO5KCpu/tvsp7GbKe2yWkrndSBHfvrjOlJJXm+KDaa6MUBqC3Oh3Towoz07PGXMBztQ2h4bg3gvccIYV0+ZOAPx2ezSfFLtX9e7gOfL7g9U+y+e/FktaL39MdHVJkCRA8RlB1/ya0slYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XcG9UL+af7NjLZFDtujStA+htTU7winQUX6zIf8DsYM=;
 b=KoxUFXWe9r8DLVrCKzenAUOvx3a+Uv/dPSZcQIkp+1oaRM6jzz3pPQqK6Csd5MQODuRWeqkjcDAwQ8/rA8H1Lu6bTnCcrdNiSLybVaLFKrDRz9C4mvO3IO5qrAXp5gH1rG8v8pqBMFvO5/XTyxyrqKrqaszzlXvbmiYcX6yzexSJcq22kv9TnEqgHapCG9gRcGgXq+v8X6Kdysf8qKI9TK9Dj7H7FaLRAdLmYLWyhRVMJiicKjemjr9Qd67oJtixdk1PjWRxgwaVeAw6nshlrnUQUofuRzH5LyZnOZjZxkXhogTD21KOK/QEgAL8vgxf5eDzmnkGLq6XYY60ogAmMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by MW3PR11MB4730.namprd11.prod.outlook.com (2603:10b6:303:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Wed, 29 May
 2024 03:01:39 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%4]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 03:01:39 +0000
Message-ID: <527528a1-c84c-f68c-71af-64de1ae801df@windriver.com>
Date: Wed, 29 May 2024 11:01:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Disable bitbake command ANSI color output
Content-Language: en-US
To: yocto@lists.yoctoproject.org, bibibobibo@gmail.com
References: <ybnS.1716931866846451135.tppV@lists.yoctoproject.org>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <ybnS.1716931866846451135.tppV@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|MW3PR11MB4730:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b720d8a-094a-4028-4295-08dc7f8ba901
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Ukw1clk4QUVILy9FUTNldldpRGRpaDVQMWJnRkYwSmNjVy8rN2lza1REMzFl?=
 =?utf-8?B?cU9RbXZpSHdMK0ZzYUFRbXc2c2todVh5K2hVMlZ3VTBNY0ZDNVVIQ3FXVlRj?=
 =?utf-8?B?NkhSY3I0REpzdE5zS09ob0ZhZ29HaTlJbm5XVmpKVTM0bnVtTUJXeWhJK2NM?=
 =?utf-8?B?T0pkS2prckNUMk1mNWN0S05FNFJJVjV6bkt4b0ZNb21LRUY3clllOVUzenRX?=
 =?utf-8?B?eG9ZbzljblNLdkNsSkI3MStVZnl6bForaEc0YXhRWVlEdy8vZVlHT3dRdU1C?=
 =?utf-8?B?aTNPR0pwYWo0MGFveG5QSkFSRHFPRGJJMXRNaEdRWnNlWGhvQlZNNWFudG83?=
 =?utf-8?B?ZjUrMUJoTVFud29uMGIvcU1jYmx2d1IyYmpuQTVCNTQybllpYmxQOURwV2gr?=
 =?utf-8?B?MzhrUndNZFM2elE3dEZQRDJIYnJyRERBOUlZUm4xa3IrVUxiNXdkclNXMUlS?=
 =?utf-8?B?V1ZEKzlETHYwU1A0TkJhWU9pWkE1WTgyTzNHL1NKYTY0MUVuQ1dQQ0loNldv?=
 =?utf-8?B?dUNRUFNBVUJJektBVkZJTUlmTHRPM21maC8xb2htU0RkUWFNSnhqaWpOL0ZR?=
 =?utf-8?B?d3g2NEF5TTl0RE1VNGtSQTVUaFIxMTlYa20yclNuNnFaVms2YjZjdElZY1I5?=
 =?utf-8?B?aFdpL2pPais1Z21EWXBuTUNtTmlURjQ5SWZqS04vSEdUczJJOE9uemtGNzR5?=
 =?utf-8?B?RnBCZFoyRDJDUmJ4YlJ5M1FCRjdPdFg3c3FWb1JCWGR0OUlPRENzUEdRZFlT?=
 =?utf-8?B?dHRGNmcxTitUZGZzZzZ4VUwvQkM4eVo0N1J5cFVnc3dOaG5DS2hGbjVhU3Zr?=
 =?utf-8?B?di84cjdGczBQazhYWUh1eDJRVFg1NUtWSDB1YWxZc2l0MmNZVTVGaUFhUkRx?=
 =?utf-8?B?YVI5NHUxdFBjOEo1S0J1cU1VUEphWXhiQVhnWXdjWDk3ZWw5NDlQTWliNGRl?=
 =?utf-8?B?Y2Rtd25Fb1F4bXI3cUhnT2MrZDFtTk8yc0dmaGVRZVljM3V6SVV2V0l6ODUr?=
 =?utf-8?B?bTFqeDM4MnVkUS9VaE1qWGRtNm5YK2s1MG54cDFFcXoyNFRkSnFjQ1M2aUxC?=
 =?utf-8?B?R2dqbXVaeWd2N1Z1cjU4L21LMmpwODI4eTVVOWpaY1RWSVhjbTlJSnNHYm1C?=
 =?utf-8?B?RmRtVEFMR2J5UlRtN082L04xdGpmQXdtSkQ5MmRZS0xTQ3BZcS95Yzdwdk1q?=
 =?utf-8?B?LzdublQraWNJbHJVT25qUnk4eG5hZWhNRjh2UUZCM3RxYjhqL2FlQ05WN3FI?=
 =?utf-8?B?R3VFaGcrZHQzckdzczRub2dLb00rQW9ZdG9SS1VUMjBwNytJMURlNkVnemJp?=
 =?utf-8?B?eHFoZmthcEZ4bFMwSUNBczF1S3V1aklpdnMvaGZQTk5XeE50cXZEa0tMS3hw?=
 =?utf-8?B?czRlWXJkZi81UXRaODViM3JncElQM1hEOXYxeGJsZEdYVTRzTXE5SklWaUtW?=
 =?utf-8?B?MmU5OXNqYjJoa2t4VG5jSEliNnZvdUFoZGFXSzFpbitCK0k4S0x6WjU3Qndq?=
 =?utf-8?B?SHRNNVMraDd0Q3Y5RmIyY01KbFYxeThkMkFvcDB3ZzJQa0Jib1BYb1VibVYw?=
 =?utf-8?B?MlMzUlV0YmZacUZuanYvazZ2MXRLTVNqUHp5ZzFzSUkyTTFYQkZqYnFkSUpT?=
 =?utf-8?Q?pOxXWxXxwe9wFYjiab35xuqgVa/gy9VkXUvXj7vk4+I8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z0R0ZzhCN05naE5CY2IzdlU3NE5iLzJ0aXdMaWVCakdEaGpKRVFhU0JrS2tr?=
 =?utf-8?B?eWZ0cUpZWlZEb3lQSVA2b2owTVZLY1RJSWhCbjlhSHFJSVAyOUVsalhTQTY0?=
 =?utf-8?B?dkxDVFIyNHl5dGZxZWJxc2hSMFpPei9ncXA0WE1POHBQUWhmVEcrZWVnQ2Ez?=
 =?utf-8?B?SURmRkVibDFtckwzckEva2ZzSTl0R200ME5JbDNUaU4yRDV2ZkJISndMRmV2?=
 =?utf-8?B?TkNQR1o2VjFxeW9qMWRzb2NGR1NnRFdQTUVvalJ1YmhoK3dXNHM0M25JNFRL?=
 =?utf-8?B?QlNTUWVvb3YvOW1LS0lXMmJWdzU3M2ZzR1pORThybForUVlxUjRFdXdiNDI5?=
 =?utf-8?B?OE1WbmYzbmpWQmVZNjl0b1ZGL3R3UU5KZ1d0cWtXUkx1VzNZUzNQbDBhdXZV?=
 =?utf-8?B?Vys4elVUZGJDamliTGt5b2xERU8xcmlyeFVXVXo2bmRpSXhzN2gzWklvYlVE?=
 =?utf-8?B?cWJCY0FLbDZrenc0WFEvUnJVdlFGVzNzcmVrV0xjdy9JOXFmeXJJdy9TcHgx?=
 =?utf-8?B?SjczdllQOXdTZHFjLzc4ZjZWbk5EU3JuWTl5dVFESWt3VXR2ODZJUTEybjJ3?=
 =?utf-8?B?REE1OVhJckRjd3JSdXhLcU1nQzlXWFNPSnJvSjkwUkFqSlpSTDVJQmFvVkQ5?=
 =?utf-8?B?UnNEaVJqYU1CVVJpT0lPRTF5dWsvSUJtMGJPaTN4WERYREExMHcxWk9OL0lO?=
 =?utf-8?B?NFQ2bmhod0FxeHhpVFZPa0NranBjUmVqNWFTOTdQTkNpcDQ2UjRMa09Yc0oz?=
 =?utf-8?B?UUc3ZnRBQ2JOREhROW51VFUwOG9nWjlPZnNTUjkxbmM0dFdIclNTZDV2WG9W?=
 =?utf-8?B?M1pzTFpUeU1JS0xvMTc2MGRWT2R4dzZ4VjkrUk9sNXhPNUxjb012YlVpRDNi?=
 =?utf-8?B?NkNoWW9kakdKYUhoMUN3WkR3dXNDMjVrcWlwL3BkNTF4SFVXWjVBNExsdnZU?=
 =?utf-8?B?cFUxb3plOUFDOTNCZURSS1VvdDJTcUtwK2d4VW1xdWRZdUhzTWRkZWJJMllY?=
 =?utf-8?B?RFBXbWJsb2lvOXMvVFpUallHdTEzOHJzSnB1YUJ1ckhLcU9YS29QcFdaUjha?=
 =?utf-8?B?MHo3VmpEcStjRE92cFh1dGFBQ2M5cUlBZWRzRWdSSzJzYXFJcVJyemdoMVRU?=
 =?utf-8?B?dEVVd1BJR2pZQVM2L0hUTkFRSDVWRHgyeUd1YldJS3BmNzRDTUpnRDZiNENZ?=
 =?utf-8?B?V0cvTmRsV2cwdVlTTlN4eURmRkFhMWtrYUhiWXRxUmNXNURKcDZ6K0V2WStR?=
 =?utf-8?B?ZUc2bXdWei9tVm54Tk5SanR1NUY3emlVUmFMMGcvcnJNSkFZRWQ2Q3pRZzl2?=
 =?utf-8?B?TDlyQzhBNTd2T3lNMW1ia3NNU244RXlocDNCVzFKVWpCMGZuNVBRcDA1aFF4?=
 =?utf-8?B?d1hrRERFYzRRdlMyV294UEhUQXh0R0ZFeW5PRDk2clVpSDBUcGx1Sk9kNFpo?=
 =?utf-8?B?ZmpJdHE2NjJDemZwVXpneXpUN3k3NEE3US93WXJVV1N0K2JRem9oT0tTT2FD?=
 =?utf-8?B?Tkx5NUtpbG1JYWREOGwrYm91RVRDNUhKMWdqOFY2TUZuZTdCdEU2UzRNeEFo?=
 =?utf-8?B?UERxaDcvb3FKREVDNnlMVDNhdndOTmdOcEF4QkpPUEVZai9SZHRDSDZpYzJm?=
 =?utf-8?B?cys0VzljYlA5V3JIcUdBR0ZVQ3BZd1pBTHVtNU9CSGJZcENBR29pQ0h2NEZl?=
 =?utf-8?B?aXRySnZUMTU2dU80YzhiQzN1T3B0MSs1dUQ3ZnNhQkF0WTVZazYyUE14cmV0?=
 =?utf-8?B?MkdVdU5PdlNzc09lK3V4MVBvWitYRkEzcjhIMUxJTW8yRm9LaG42N3NQdEJM?=
 =?utf-8?B?M0FhRzRxQkRqdnkya2RNME1YaU5vdDI0SHFsWWQwamE4ang2eWJ6OEh1VTB5?=
 =?utf-8?B?eUI4by9WWFpJZkhzNWp4LzhJM1ZnNjR1V1hWcUJ1WlA3U0Y0T01wS25aTG83?=
 =?utf-8?B?RVZLY0VCVCtaZWRuemt1dXBzY1NFL0R5ZU1IZkxNdlQxQ2lHdUdLOVQxRVg4?=
 =?utf-8?B?ajN2M1cvMmNidTJiaXZtYzRYRDJLTytpTGs4MlcwdXAvbXdRRE1lQ0lRN0py?=
 =?utf-8?B?S1VBTm5TQUZhM25sZml2dTF1RjhnbjhSR2VOeHUrYmM0TVN3V083YVVWUmRr?=
 =?utf-8?Q?DudIQ6V7g13Gpdxh+bboRODlw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b720d8a-094a-4028-4295-08dc7f8ba901
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 03:01:39.2940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 77oAsbCdHzCKYp4+bmm6ADXb27TZMCMyX8nl6ORsLuKy7zyY5ae4UcBQC0+GE1jSG3Vgd32vH4xxH93fD7aX2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4730
X-Proofpoint-ORIG-GUID: cYHn62IEiDhnci7iCCtU1CgfeMCygsC4
X-Proofpoint-GUID: cYHn62IEiDhnci7iCCtU1CgfeMCygsC4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-28_14,2024-05-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 phishscore=0
 priorityscore=1501 clxscore=1011 mlxlogscore=815 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2405170001 definitions=main-2405290018
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 44T1dOg4011048
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 03:01:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63221

On 5/29/24 05:31, bibibobibo@gmail.com wrote:
> Greetings everyone,
>
> Dummy question, is there a quick way to disable bitbake output color?=20
> When we do container build, there is a lot of ANSI color code.
>
> =C2=A0=1B[36m=1B[39m NOTE: recipe python3-gcovr-native-5.1-r0: task=20
> do_autorev_check: Succeeded=1B[0m=1B[0m
> ...
>
> I was wondering if there is some quick TERM=3D setting or NO_COLOR env=20
> var that can suppress these things.

Just checked the codes:

 =C2=A0=C2=A0=C2=A0 if color =3D=3D 'always' or (color =3D=3D 'auto' and =
output.isatty() and=20
os.environ.get('NO_COLOR', '') =3D=3D ''):
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 format.enable_color()

I think you set NO_COLOR in env and the color should not be enabled.

e.g.,

NO_COLOR=3D1 bitbake xxx

Regards,

Qi

>
> Thanks,
> m.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63219): https://lists.yoctoproject.org/g/yocto/mess=
age/63219
> Mute This Topic: https://lists.yoctoproject.org/mt/106358067/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


