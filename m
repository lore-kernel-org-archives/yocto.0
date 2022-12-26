Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 378E5C4167B
	for <webhook@archiver.kernel.org>; Mon, 26 Dec 2022 02:11:57 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.128720.1672020712036095254
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Dec 2022 18:11:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=GXmc/6t5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=93591f022c=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BQ26EUU029989;
	Sun, 25 Dec 2022 18:11:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=DAALghRNXmFzbScWPQRW9ior4wybjmWljVlPKwmXgLA=;
 b=GXmc/6t5O4CosgITApPY1Ra7Z5Bj3/hpPMRnQxg5oKv24nsR5oacX56+LqN4qZFDegUS
 L70S3w9kfKWumcNUsZC6egcY/NEX6OkP3KCxPgWqxQyblFTCZTdlVGMm9hpyNVRjWo8F
 i7wR7Ff2Z8l+oU2oKtPKBnlcxEwOH/dV2mifDWSK7JJe1hYSF2gGWWDd+N8Z23e0RGh8
 SXqml3UkQ/39Lj1BCBEm9JDjc8+ORzthtZ6q0LeNUeHwKbrCNba6yaeHIFyoSqTNywN/
 /oDIOeDgCjSZlSbrHE2pi88BiQp3yodMT28MWtWP8lHdtGDd8pEjqO+X0hKXzu7FW3iU 4A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2105.outbound.protection.outlook.com [104.47.70.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mnwk88th3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 25 Dec 2022 18:11:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYSEUiWEl1YaG0DzNn3cKI8BjFqAqvHtU4jzh6W7e17FADP4EMB2HV0ln+nkIC0vKB4v6bW5cye2Nj2Cq36pL2/hrSuhEOc9ibnmtE8TcfR1ZALkOXDGb53zzFuz7JX1Ufst722ebE9knKRBTul2iEeqQXidaey1qNUH+phBHyfUzoPmxpRHgct+GOEZRlfQaZ3YfGB+3PXXnFVwNhfsqaUeDrXSKJYmd3uyKTbqqNlBYDpZURYqUgNET7XHdqO9XkQiPRqOIsUp950rPZzlb0nkPycUDOZtl6Lut6m05SQnU4GvNkJf4/QlAW6mC0ZWtanx3dycZaQF3INUkEj+uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAALghRNXmFzbScWPQRW9ior4wybjmWljVlPKwmXgLA=;
 b=HrkKzWZnNHpRvPV8tGlULS8/mpU71mk4+jlK+NQ5oFVSVpoTMbTwDufh5jvi42YJonXobINtSn5q4bcR5J837Sib2YWN9Zl4s9bijdTola1L9LG8hKFpF6DKpkzV0aqvIPBG6d2v+zQVRnTCuQ2bCC9E02IlRB7QJ0WrhPtvVJqxesP19NYpGmL3UoAehVGEuFj0tAcaZwl8Kx5+VsaQQCI7KQMpo02z017iG553qHd00NE++jBNakYArJRpRZNvKfykTQW8630XtGq62LYkJLimmjPDwFcYXeyWb581KfT8ccdJIaUZ3qiUGAwvEEHHIX5WoXaXV9ANaiLJmcMEQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.15; Mon, 26 Dec
 2022 02:11:45 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36%6]) with mapi id 15.20.5944.016; Mon, 26 Dec 2022
 02:11:44 +0000
Message-ID: <2b6d999b-303a-569d-5d5f-d247adef59ad@windriver.com>
Date: Sun, 25 Dec 2022 21:11:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-CA
To: fntoth@gmail.com, yocto@lists.yoctoproject.org
Cc: contrib@zhengqiu.net,
        yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <34dccddb-c5c2-16e0-d571-f86f2c6f004b@gmail.com>
 <c26ff0ee8f9cc81d0c52cda17381226fc11166c8.camel@linuxfoundation.org>
 <16770AD5E94DEAE5.1089@lists.yoctoproject.org>
 <dc01104b-ac65-8a50-b876-b6dd13fcf238@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <dc01104b-ac65-8a50-b876-b6dd13fcf238@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: BYAPR11CA0049.namprd11.prod.outlook.com
 (2603:10b6:a03:80::26) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|PH7PR11MB7606:EE_
X-MS-Office365-Filtering-Correlation-Id: 7da69617-6afa-4176-818c-08dae6e6890b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vJoXoo0GuZU/EalAaxdNDrqy+VUTLtZH7V9GcL9PeyWoWuil+GMkuh/ttYlM0GCLx9iDwABv9EzV0jVxej7bDyIb0hBEyfv8EnQCtKsNFhhOTFkbg8KG66UAS0zvhXE0n49QN1jyan1xeZgwfUsMWieMTenHPi0BeGwh37u+vmJzBxQa3Ge1KEan8r8QP+GlKB7P3yHC7a6TvLS8ZY3r8SRiAjdp5pPj1uzS5e8ktGEbrJX0Gc1wTAbVAs8lMWyz76N81iJbA4NkGJmYgIj8aDrHKC63zIy8tUKZUGZ9Au3vskN9eca6F2RojVK5bh41YTCdyguQ6xx4FaO91xsv5y1YVmQpmvR4FX9ajZFugxdZboUMli4lzmpK6Z/PvruOIu1+k3CQjAJJA+y1tB83pUyzcJNSULLlC5s5WCTDxG7Tw8tQopHzkfmOgCyZfRDb6Q93umeD1WZINO0tsLWWQeQRjDgQxU4MO0QnS6IhEvc6bkWTDTbtCmnf1DVg0jWoUTc76J4B7EAMQOIKpy1V8kcgV5gUdk/M4FFqCQdkQn0HqF9ejmajXLQvtA1XFCNavLWY3idSUepfnN4X6/ZQ7eYlKdrjcOh/mSm4Ti7aYGUE5XG6ALL4tlk2oImAaZDEVHlTDBl1eDlnBpWgiCDOXq9eobzv0lwhkNIAxcCM9udw971g2SHjq7ZyLACXZIWOyle16grgJ++D85M6/KLjve/Fkb4+2mchv95MjIyET0pTMQBOfg2gMHDFZfxzgfWckU+isCAfN0gvyiiQVCjCxL6unlf6tfjEar9ovkbYeXQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(346002)(376002)(136003)(39840400004)(451199015)(36756003)(83380400001)(4001150100001)(2906002)(6666004)(966005)(26005)(6512007)(6506007)(53546011)(6486002)(316002)(31696002)(86362001)(186003)(66899015)(66556008)(66946007)(38100700002)(66476007)(31686004)(41300700001)(8676002)(4326008)(478600001)(2616005)(5660300002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?amtaQ0ZKTzIwZlN1WHdkOHdDVlI5alJnZEdFMGg2c2ZreUE0OUw0cjRNSXJZ?=
 =?utf-8?B?YXVGNzc4VWFUMWRMRVU0eW1GVmZaN3VOcmVOYlJIZWZDU1M4cDVYejllZmhS?=
 =?utf-8?B?MXpPZzF2ZUV6V0d0M3JxWXVmMEJOYk81TWpBaGxIbWpDNXlURmk5dkU0MWs3?=
 =?utf-8?B?M09FZ0Ewb01Oc0pTTVF4ci80WWRJVHRXUFNVa054dEljUkpjaFhKbUF1SlpE?=
 =?utf-8?B?WEhXTWVCOGM3RnZDOWsyamVKWUZSRWpXb2tMcGpyZEQvY3dZUXQwODNBVWV4?=
 =?utf-8?B?RWtKTWp1d2s0Uy9VSWRzbnh1NzRFSUtMNnk4elk5dUh5L1E3ME45Sm8yNk1o?=
 =?utf-8?B?OGNSODkzVlFSNmZoQTVLSGZVeDczb3Q2OFAxbFE5eVJnT0YveTZWdFdSNjBy?=
 =?utf-8?B?U2dJQ0M3RTAxNTNEaTZFWldWeFowb0ZrMXRPZWY1SFJFaFFMMzN2UTFCMVRn?=
 =?utf-8?B?VXhUcXRyWjZYLzdBbFZ3ZEdxWUdJdXFvTmJMQTUxa2lrNnhReEVPZzVTcHph?=
 =?utf-8?B?Z2xBRG1yOGNVNzJ4aUFTcU8rWWtSd05CalZuV0ZibUY2VmRMeTQvNGF0Smdu?=
 =?utf-8?B?RVl6b2JJZDlOTk1IVTQzYlQyVXJYZU56Y244TG1yK1R1RzFTb2srTWRSMVBy?=
 =?utf-8?B?L21yY1d1L3NzZUE5WGZvQTJUSms1UjhGNWx4L1Y4eUhwWUdmOHpzLytCN25v?=
 =?utf-8?B?aURUYmV0TjRJRFRNaVlOMUZpQkJjQ0hhWXF1T0RUV1RSZzFQV2VDaEsvVkJi?=
 =?utf-8?B?TXhWUEw4OU9lNGMzdk9FbnBUd0NIOWxUbi8rWGFoNDQrTkMweFB6M1FpT0VG?=
 =?utf-8?B?R1ZrV0ZoMFZoVW5vd2JucEVCUmRjTTh1ZUgxWC9qcWF1S3B2NXdMRmlTaVds?=
 =?utf-8?B?eWlMZTFHbndtRnN6RWQ5TEczLzNiZU1OWHV6Zlc5TlAyU0pLd3k0MGpwQWhP?=
 =?utf-8?B?WHdDTVJqNnVBd3lDSmQ2U0VoWDlKWGRsNEJDOFFESUQzMURHVzNERk9rbExj?=
 =?utf-8?B?aUo4NEdTTU0rRFpVNk9JY1ZVRmtJZHVlTHNJR3NQVHVBRjRRZ0c1UTl0enVl?=
 =?utf-8?B?VHZVdW1YZEpCYWdudnBrclpVSklOVzZ3cGZSNCtTVVZrZDQzdVRSRThKVjFM?=
 =?utf-8?B?NGZreGFIaG9abUtOdnRQdjJaU3ZjWjZmQkRmaEtFTzB6RG5XM3Q5QzJoZWd4?=
 =?utf-8?B?eGZYZCtpWWpRNmFuVzRoc1BUSlErM0IvWnpOUjZWcGRjOHNFaGhCcktXcytQ?=
 =?utf-8?B?amFlckJhODlxVFgvWHUwb0VRY0JnWnhlSUhUbWVlN0hmbTNpYURYYWNOSEhN?=
 =?utf-8?B?RzlDVys1bGlQb2lsR1NwdCtrRjBENk1rc2tOK1pqZXNaYlYwd2Vwc0l0R01u?=
 =?utf-8?B?SVh1MU1EUnNTNE1vNzllKytacEMzdFZBcVRLNE85Y3Bhcjl3YWpPYmR1cFh3?=
 =?utf-8?B?TmxGU0FTRnkra0M5Yk5UTGJsekpPM0FaMjdIem51OGd4M3FWeDloWHVwVUpj?=
 =?utf-8?B?d0Q5UGJHVUdldnVZVDJZSGFEYjhQcGs3MWZHb0NLb2crUVJFUjVNOUIvbitl?=
 =?utf-8?B?OGRIWHFpUDFLcmhZczhtcnFyOWs0MTNNMGNJOC9vZ3IxUHBMZ3JodUhJUDhx?=
 =?utf-8?B?M3RSbmI5Z0xqVnZNcUVxKzVwRW0wVmlhWGcvTGNoellLNHQwUDlJRm1hOHpU?=
 =?utf-8?B?eHVKSnJwU25EQVE0c2REZjd2SlNlUTlNSCs3SkRMNTJ2aDE3QS9Vakg4VUJk?=
 =?utf-8?B?clhVTnRJK20vOVlkZ0hDbUhpcTVFRHA5MSswcll6U3JRQ1NHeElqaWlwNGdy?=
 =?utf-8?B?OEJaZDhIaGVjNGVpTVJUZUFWa2srMm1UM3pLcVlaZGluTWQxS1hVSXJWd2wy?=
 =?utf-8?B?QUZERDF0VW5XWFRTUTNmQXhHTFc3TCs4eXZ4NEI0QjZNSjZOV3EzUFNEWUYv?=
 =?utf-8?B?cFBQVzJ5R2JueTlWeXBqNkRvS1pSSlYyODYxUFJmZGg3Znc1TkxDZUZqSW1j?=
 =?utf-8?B?eEhRQ3NObnFlemo1UzdRVFhWcm1sa2dJT1NkZTFSdVJMeHlXUWszTnpvK3k5?=
 =?utf-8?B?TGFWWm51eU1OWW8xbjV5RTFMNnlUaWtvUzZ3NjQxd0FVNUljMGhoWmRwbHVP?=
 =?utf-8?B?dEpPcmpTZDNSeVMwUGt6Znl1ZGYwR1JEVjJqUnIwckxGTzdBcDdpYy8vSlN3?=
 =?utf-8?B?bEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7da69617-6afa-4176-818c-08dae6e6890b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2022 02:11:44.3851
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2VDoEc2FZjvxGs1uBcqW9HOOvuwcu+VNqTb39x8ylnYBHiu7vzDZYs/Ew6pEz0DGaaFA8/QH3x5/CyE67wyWQwBXvyi1AD7PfZ9RwBFuQSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-Proofpoint-GUID: sJi1M-TFJ9iNYvvtzG1WohM60UQS4Mbt
X-Proofpoint-ORIG-GUID: sJi1M-TFJ9iNYvvtzG1WohM60UQS4Mbt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-25_20,2022-12-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 suspectscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 impostorscore=0 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2212260016
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2BQ26EUU029989
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 02:11:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58863

On 2022-12-24 13:58, Ferry Toth via lists.yoctoproject.org wrote:
> Op 18-04-2021 om 21:34 schreef Gmane Admin:
>> Hi,
>> Op 18-04-2021 om 11:59 schreef Richard Purdie:
>>> On Sun, 2021-04-18 at 00:17 +0200, Gmane Admin wrote:
>>>> Hi,
>>>> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>>>>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>>>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>>>>> make already has -l option for limiting new instances if load=20
>>>>>>> average is
>>>>>>> too high, so it's only natural to add a RAM limiter too.
>>>>>>>
>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0 -l [N], --load-average[=3DN], --max-load=
[=3DN]
>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Don't start mult=
iple jobs=20
>>>>>>> unless load is
>>>>>>> below N.
>>>>>>>
>>>>>>> In any case, patches welcome :)
>>>>>>
>>>>>> During today's Yocto technical call (1),
>>>>>> we talked about approaches to limiting the system load and avoidin=
g
>>>>>> swap and/or OOM events. Here's what (little!) i recall from the
>>>>>> discussion, 9 busy hours later.
>>>>>>
>>>>>> In the short run, instead of independently maintaining changes to
>>>>>> configurations to limit parallelism or xz memory usage, etc, we
>>>>>> could develop an optional common include file where such limits
>>>>>> are shared across the community.
>>>>
>>>> I tried PARALLEL_MAKE_nodejs =3D "-j 1" from local.conf but that=20
>>>> didn't work.
>>>
>>> It would need to be:
>>>
>>> PARALLEL_MAKE_pn-nodejs =3D "-j 1"
>>>
>>>> So I watched it run for a while. It compiles with g++ and as at abou=
t
>>>> 0.5GB per thread, which is OK. In the end it does ld taking 4GB and =
it
>>>> tries to do 4 in parallel. And then swapping becomes so heavy the
>>>> desktop becomes unresponsive. Like I mentioned before ssh from anoth=
er
>>>> machine allows me to STOP one of them, allowing the remaining to
>>>> complete. And then CONT the last one.
>>>>
>>>> I worked around it now, by creating a bbappend for nodejs with only
>>>> PARALLEL_MAKE =3D "-j 2"
>>>>>
>>>
>>> If that works, the override above should also work. You do need the=20
>>> "pn-"
>>> prefix to the recipe name though.
>>
>> And indeed it does, thanks so much for the tip.
>
> This discussion is very old, but I just wanted to share an update.=20
> With my image (meta-intel-edison) building nodejs is the dominant time=20
> consumer. With "-j 2" the nodejs build takes multiple hours (I have 8=20
> core + HT), all the rest is then long completed. Without "-j 2"=20
> building =C2=A0nodejs_16.14.2 linking in the final stage 5 processes ar=
e=20
> started, each 4 - 5GB RAM. With my meager 16GB disk thrashing starts=20
> and it still would take hours to complete.
>
> While I still believe we need bitbake to SIGSTOP processes that=20
> trigger thrashing, for nodejs I found a solution at the recipe level:
>
> The yocto recipe already has:
>
> EXTRA_OEMAKE =3D "\
> =C2=A0=C2=A0=C2=A0 CC.host=3D'${CC}' \
> =C2=A0=C2=A0=C2=A0 CFLAGS.host=3D'${CPPFLAGS} ${CFLAGS}' \
> =C2=A0=C2=A0=C2=A0 CXX.host=3D'${CXX}' \
> =C2=A0=C2=A0=C2=A0 CXXFLAGS.host=3D'${CPPFLAGS} ${CXXFLAGS}' \
> =C2=A0=C2=A0=C2=A0 LDFLAGS.host=3D'${LDFLAGS}' \
> =C2=A0=C2=A0=C2=A0 AR.host=3D'${AR}' \
> =C2=A0=C2=A0=C2=A0 \
> =C2=A0=C2=A0=C2=A0 builddir_name=3D./ \
> "
>
> I inserted `=C2=A0=C2=A0=C2=A0 LINK.host=3D'flock /tmp ${CXX}' \` as th=
at seemed most=20
> logical, but that didn't help a bit (the 4 calls in my log to flock=20
> were never simultaneous). However after changing it to ` LINK=3D'flock=20
> /tmp ${CXX}' \` the linker is serialized.
>
> This makes an enormous difference in my Yocto image build time (nodejs=20
> was the dominant factor). Now compile stage ~25min + 5min for link.

Terry,

It's nice to hear that you have an approach to make building nodejs=20
feasible for you on your hardware.

I have been wondering if we should be trying to serialize linking across=20
recipes (nodejs, webkitgtk, llvm, and other larger packages)
but I hadn't noticed that nodejs itself was in need of umm, *guidance*.=C2=
=A0 ;-)

Are you aware of the recently added: BB_PRESSURE_MAX_[CPU|IO|MEMORY]=20
variables?

https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-ref-variables.html#term-BB_PRESSURE_MAX_CPU

That might help you a bit as well.

Zheng and I also have a brand new, unpolished patch, to 'make' to limit=20
builds based on PSI (the *some* line from /proc/pressure/cpu ).
If you're interested, you could give that a try by either applying a=20
patch to the make recipe and having nodejs depend on make-native
or if you just want to try it out on a private system, build make from:

 =C2=A0=C2=A0 https://github.com/ZhengQ2/make/tree/cpu-pressure-to-commit

save your old version of make and install the new one in in /usr/bin

and set:

PARALLEL_MAKE =3D " -j -z 5"

This will prevent make from starting new tasks when the CPU pressure,
based on our very simple calculation, is > 5%

We've seen that it can speed up the openssl build on a 24 core system fro=
m:

89.030 s =C2=B1=C2=A0 0.485 s <-- -j 24

81.727 s =C2=B1=C2=A0 1.139 s <-- -j -z 11

for native builds of openssl outside of bitbake.
Early times but it's an interesting data point.

Builds of the kernel didn't show any speed-up and were in fact a bit slow=
er:

$ hyperfine --runs 10 --prepare 'make clean; make defconfig' 'make -j=20
24' --export-json make-j-24--linux-kernel.json
Benchmark 1: make -j 24
 =C2=A0 Time (mean =C2=B1 =CF=83):=C2=A0=C2=A0=C2=A0=C2=A0 181.770 s =C2=B1=
=C2=A0 0.290 s=C2=A0=C2=A0=C2=A0 [User: 3416.715 s,=20
System: 354.282 s]
 =C2=A0 Range (min =E2=80=A6 max):=C2=A0=C2=A0 181.266 s =E2=80=A6 182.23=
1 s=C2=A0=C2=A0=C2=A0 10 runs


# Try -j -z 11

 =C2=A0hyperfine --runs 10 --prepare 'make clean; make defconfig' 'make -=
j -z=20
11 ' --export-json make-j-z-11--linux-kernel.json
Benchmark 1: make -j -z 11
 =C2=A0 Time (mean =C2=B1 =CF=83):=C2=A0=C2=A0=C2=A0=C2=A0 185.915 s =C2=B1=
=C2=A0 1.988 s=C2=A0=C2=A0=C2=A0 [User: 3447.606 s,=20
System: 343.528 s]
 =C2=A0 Range (min =E2=80=A6 max):=C2=A0=C2=A0 184.046 s =E2=80=A6 189.90=
1 s=C2=A0=C2=A0=C2=A0 10 runs

but presumably not needing to specify the number of cores to use, could=20
be a benefit.

PSI also has /proc/pressure/memory but we've found that for bitbake at=20
least,
if you limit CPU usage, you can limit overall memory usage. Package=20
builds and linking
may be a different kettle of fish and your explicit serialization would=20
always be better
at preventing the system from swapping than PSI memory, which only=20
provides a signal
when things have gotten out of hand already.

../Randy


>
>> Ferry
>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>>
>>
>>
>>
>>
>>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58861): https://lists.yoctoproject.org/g/yocto/mess=
age/58861
> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux


