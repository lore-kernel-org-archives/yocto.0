Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CAF3C54E58
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 06:44:43 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.37272.1710744275545989596
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 23:44:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=cPYPLKsv;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38074007b8=mingli.yu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42I5gnae031797;
	Mon, 18 Mar 2024 06:44:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=8QYysJT+uW5rMN+dCdkFMBTMbsQ6/XvzCwUsamv1eI8=; b=
	cPYPLKsvBRejXbbbgBzFfi/pkkoNuvbNxKPFZ45PbQJN7+hbr1Idt+iScGrrWPJk
	88qhFxB06ZxQECwokd2uVEdOrFDPsddw/9NdprUWXzm88ExDJbcr9hml/P9tt33h
	EYqnxt54rZxauYN37b3xQo/cdV/I+EmKkm1Xl29w6Z1sHoJd69jb17Zdv3vn868G
	7mUfnGOClpW9aaN8jcb+a1lovA34Rh3lVF2PVI7ojVKXKzeik01VDQgXdHFfyWlo
	AZwL5TwARrgeaL2ZzsoM4x5xERYHZ3LwSP1MCGq4GQpVj/PU4+qX9wbR4LO1YmlK
	M19xmuL/xBsBBNEGsHaA6g==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ww0mxhf5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Mar 2024 06:44:33 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqQPxDtvNbGOGR4wpOn0qN/lDQjqHrcWxrZkGtTanaKbvAXiCeA4jkAfoRR4a382730l1vF5ITph9wY2daqCJ/jmMkS6aLYdekdUfdEXmHRnx5V2WtSyrN3BbC6W9a0OM0z+EIczEyaVrZojZTguT1yS9epRoWECdHfvoEs/9ZXPugjPUiri+NSW58ee21PzlnUVehv/9r7E5KdDmWofK2XjnlqSKZSsKWnfoKylItCHstPNTwoUaxjyLT4RQROnMRzVghNQdNhYTWtXuLTACS6yPs2nOM+fnRH/uQEsUcRyPoznp5N6uGiXSUfnxU70VxQbxtptLhkzJJGtBXlkZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QYysJT+uW5rMN+dCdkFMBTMbsQ6/XvzCwUsamv1eI8=;
 b=epjYt/dQ69E3UjPei/FW2U8feHZYJPPC16bUAGjS91apXMUE6hGgoJ2OuprTc2Dl5gOmQucl7sItK4Gde9ZhEty/i2t4A1oUa/9X4LXRmyAd9/qL5iQddH9g5SC2izfEQO+1YXkJXnePt0+RGZVoWuLOzKqFRAqjG7KElBtP5vJInFtiBtue0JiT9Vs671K/zzCxMo4dSqTdRXbJ6wPocgL0rqs6yxFaK+WhoN6OfejkxEjzb5pOZ0aXwTTcV5LV0AGmCvEgDXdcu/7Y6skGa9LYygPiqoQG/l4hnyIzzRq1Et1KaCThym6gPcq6YS7cgQPatnesLDN6V9x5WzJX6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.10; Mon, 18 Mar
 2024 06:44:31 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1%4]) with mapi id 15.20.7409.010; Mon, 18 Mar 2024
 06:44:31 +0000
Message-ID: <24d1c01f-776b-416f-a1a9-7e9967ac4987@windriver.com>
Date: Mon, 18 Mar 2024 14:44:24 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-security][PATCH] python3-pyinotify: do not rely on
 smtpd module
Content-Language: en-US
To: yocto@lists.yoctoproject.org, mingli.yu@eng.windriver.com,
        akuster808@gmail.com
References: <20240123143851.2026645-1-akuster808@gmail.com>
 <17BDBAA62464441B.24786@lists.yoctoproject.org>
From: "Yu, Mingli" <mingli.yu@windriver.com>
In-Reply-To: <17BDBAA62464441B.24786@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SI2PR01CA0020.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::6) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|CO1PR11MB4883:EE_
X-MS-Office365-Filtering-Correlation-Id: c5ea62b0-2109-4d2a-4f99-08dc4716dd3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YTd3SkzP5Kc4Uw7rDSOMvtewzZQiArc6VZGSiXCs6noDhw+UuT675OAVIWmqxMSwt2ZhQRMonimoEc6bnssFest4Hske43NxQ7vAGkTYZzPh1SL4AkkFjoPrX3DqYEkTDqoJLjps44k+bP+WXhOUDAOZGxj7/SvGPgnP2UXr2WPyw4upadav93lgnk5GCasgAfpQSR+Ke6qPJ2nwoS6HuQ9f+obtBaEW8GaTzbHoS8rfolMaZxcNxuuiFZsH3rWVeHPuNlDwgw8TCHbJWhrdgi9yaau6AELoUYOUu9FSnB6j6cI4+BWcqy3nrjRnAUb9K2Lh37BMj9FG/+7d96tI9yt6nf6M5+Wv5kIzAeglAP52rLecyli76VTIkajQjtah9dSLsp4v0k/86BcThZYCK7V3WiQZGZM0yWI2zNBVqLYGdr68L0HS2I1hc8LhDMo9R8/QkcVx53PeizMeF6hbsM9YxgOsmN8fEctJbiPkeZ2uBUj7Xp6YlY/ypewknw65kEgQtIWV4I9x78pJl27WPGPWsEYpOqM839EAihDiDateWBLcmFT33m9cPSpdznfIJGu5gvBAUb7cw11imUUNGqXHXvuEzM3vHpJrkvDrqSU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Mnp0RGkrTVNuM3RiN09TRmI0MjdLNlhwaVFNbmtNMk1KVmIzZmo2MjRSTGhL?=
 =?utf-8?B?WWhwTnZYQk9nYXJZL2tDQSs1UGcxWGpsTEJLZmFIdHNTODdrT1hsU0d6aGhh?=
 =?utf-8?B?aTVRbzMyNEtBNlJuTytwZnNmSkJKZ3lTQ3g1ZW0vOU9FZzdtdTh1N2NZaXZr?=
 =?utf-8?B?bmswUlJkYU5CbEhwa3FsMU9hUWJWNFNUdlBRcTdqQ3NNV3hGZDVpdzBGUTB1?=
 =?utf-8?B?VjVWaE4wSDB1dFpDVXlCL2p1cER4Snh2SHkxVUpCQSswd2ZQYWFrR1kzN2ht?=
 =?utf-8?B?MVoybXdSamZPRFYzL3NDRXZqRy90cVNWNFk3L3MrdnNlYWhhYjRBYWpneWI1?=
 =?utf-8?B?VlFsYW9xaS9DRDF6bXl0WkV3b3BNZHJiU3dpVWoxOVdhL3JMcE1vZ3NpQlBv?=
 =?utf-8?B?dE1helpNVGUxcHZiRWNPUkJuWkIrV2RSWU1DOUtFT3NONkZIc01USjNlNXBV?=
 =?utf-8?B?TGExa0JLMzdjcXVJWU4rQzFZb2Uyb05xU2ZqOXE5b0VIbDZ4V0M4WmMvRzFQ?=
 =?utf-8?B?YW1VUXkvT0xOZ1QvT1FnSmUrRFVzQmtVYVZnNlZSSUc0ZDFLYW1pTkhtSlRP?=
 =?utf-8?B?dUF3VDcvTm5vNXhpQ1FmNG5iTnF4YytTM1VnaS8xMVJLSWR1bytHMXltYlgx?=
 =?utf-8?B?cStFcXpWU2N0dDBNQjJiVkJqL3FtSnhzWWFhOVhXVGhpOG8yU3N6ZEJja0Y2?=
 =?utf-8?B?aFBKRFJEeXFPK0RuNFhiSFIvUDdkVjRjL09kNi9xaWI1YXA1L01NYTJRT0Vh?=
 =?utf-8?B?VnVoMXRqaVM4VDBpUUg1c0h3VWdBMldOWFNJdGVtMHpKSUJPNFE5L1AvQmpZ?=
 =?utf-8?B?WCtPQW8zM0QwZmJhdDczRVJWVk9JUnFvVE02NW1TOWV4VWFZRUtXcXVIMW5R?=
 =?utf-8?B?WjVhRFdpOFg0RDk2a3laMVNGcTdBZ1ROM0dNVWJ6bXY3Y2RLczErQ0ZyUTdm?=
 =?utf-8?B?NUlZVWE1M1diMTh3T2VndDhPSFNUV2hoaklYZ3JYeHZ3ZGc1b3REMmp2Rnla?=
 =?utf-8?B?azFOa0l2V3NPYUVYcmVuemZ0R2FmRjlhTGZzbFh6bXFlZkIyNkQxZEhvTU5C?=
 =?utf-8?B?NVdLRGVLYVZlS0pYMklnR1ZZOXdQamtLM0VTUlc1dVRjWm9ncEtqc1Z1cUha?=
 =?utf-8?B?akpQMjhvcmhNcjRxSTFVQ25KNnRaaTlRN0pDb3M1VmlxSThhcUVldjY4dW1Y?=
 =?utf-8?B?UU5SZ3lFZWZSbWplZm1OdzV2ekNnbTN1YlJyWCtRc0F4OFRkNGxwcllxdXFD?=
 =?utf-8?B?N09KaVo4SldTZTI0VXQvUHZWaStGL1Z5Qmo5dnF3S3dIeXhzVUgrd1QyVFFU?=
 =?utf-8?B?blZRK0Qvajk3SGplTElhcVZsTFd3dXVFbWpNSWNPUjNmYllUYTd4V1hOVUlR?=
 =?utf-8?B?dGt3U2hrKzNvU244Q2dST1kxcEVlL0V4bmZndmdKVzB1MStrQk15VDRQalZK?=
 =?utf-8?B?aTFwM0lzckxuTHArT3YzdGFlcGdzR2lDQVZreVhhamFmalBRZjQ4N2ZGM0cy?=
 =?utf-8?B?NVJLRFc2aEhlcUwxNWtRN1ZMMXZLTVNnWWg4V2VQVU92Vjg1TXpZbEFDdlov?=
 =?utf-8?B?aERRRU9QRldyV3hLZHc5SkhTc0J2MG1rTXF5MXRBQmZybXdYdXJmQXhwTzFl?=
 =?utf-8?B?R1BSMDNlREE3bmM1d0ZYTDZNVTZydU9ZdHNRbGdNd2dpSWR6eHVDTGJJbHpq?=
 =?utf-8?B?ZjNoWlM3R0NrajhqQ25aVTZ3V2RBSGFZayswT2dSdFlCZFZGdjkxaDhoMGg3?=
 =?utf-8?B?VU5xZUVXOFFGRTk3VXUxbVdBN04xZ3o1K1VwVWs4SGdBR2o1ZzZVTjBwcCtv?=
 =?utf-8?B?clRPNERwY0ZxcnpkenlydW0wSms2V3hvNUEyVGx1Q3I2eWRxcHpDamhkd21B?=
 =?utf-8?B?VGZFNEFkc29Oa0pvWThvUVh5MUJpeThGaWVhQW11bzRNTDJURnVnbkdGWlpS?=
 =?utf-8?B?UFRGbUJiaFB4bkF2RnZKOW1iVDI4YnlqeG5saGZGRWk0WHZnTVByM2o4ZVhB?=
 =?utf-8?B?dU13aWE5TlRoYTNnQW5IdTRkUTRPVHpzQjUzczZWTHhVZm9zSWp4SXVQOXNm?=
 =?utf-8?B?SnVvMGQ0WHh2UVZhVTBCTlJCVGo0QWJwbkR2dUFGNW43ZlZXTjRCK29sK3Fv?=
 =?utf-8?Q?JdtXI14yiG7cN2JCj/LkNapUA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ea62b0-2109-4d2a-4f99-08dc4716dd3f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 06:44:30.9372
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BztAXu5PUTUX/BeH3CvXfEvNdBlsMIBjasqihspOWP7+USBIeGTT5I/wFAgb+d9qB3MThPfqRXsojRv9FMF4bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
X-Proofpoint-ORIG-GUID: nOR_HrWgWqIU9kp1ctO2pgVsEvPTi-Wx
X-Proofpoint-GUID: nOR_HrWgWqIU9kp1ctO2pgVsEvPTi-Wx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-17_12,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403140001 definitions=main-2403180049
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 42I5gnae031797
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 06:44:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62780

Sent the patch=20
https://patchwork.yoctoproject.org/project/yocto/patch/20240318064035.105=
3444-1-mingli.yu@windriver.com/=20
to fix the issue.

Thanks,

On 3/18/24 10:24, Yu, Mingli wrote:
> Below error issues once the RDEPENDS removed.
>=20
> # python3
> Python 3.12.1 (main, Dec=C2=A0 7 2023, 20:45:44) [GCC 13.2.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
>  >>> import pyinotify
> Traceback (most recent call last):
>  =C2=A0 File "<stdin>", line 1, in <module>
>  =C2=A0 File "/usr/lib64/python3.12/site-packages/pyinotify.py", line 7=
1, in=20
> <module>
>  =C2=A0=C2=A0=C2=A0 import asyncore
> ModuleNotFoundError: No module named 'asyncore'
>  >>>
>=20
> Thanks,
>=20
>=20
> On 1/23/24 22:38, Armin Kuster wrote:
>> CAUTION: This email comes from a non Wind River email account!
>> Do not click links or open attachments unless you recognize the sender=
=20
>> and know the content is safe.
>>
>> It's not mentioned anywhere in source code, and python 3.12
>> has removed it.
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> =C2=A0 .../recipes-devtools/python/python3-pyinotify_0.9.6.bb=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
>> =C2=A0 1 file changed, 1 deletion(-)
>>
>> diff --git=20
>> a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify=
_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-py=
inotify_0.9.6.bb
>> index 8dd5e15..963fcfe 100644
>> ---=20
>> a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify=
_0.9.6.bb
>> +++=20
>> b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify=
_0.9.6.bb
>> @@ -9,7 +9,6 @@ RDEPENDS:${PN} +=3D "\
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-logging \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-misc \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-shell \
>> -=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-smtpd \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-threading \
>> =C2=A0 "
>>
>> --=20
>> 2.34.1
>>
>>
>>
>>
>>
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62775): https://lists.yoctoproject.org/g/yocto/mess=
age/62775
> Mute This Topic: https://lists.yoctoproject.org/mt/103910351/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@en=
g.windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

