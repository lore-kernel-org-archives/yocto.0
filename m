Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58822C54791
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 10:55:01 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.13763.1710327296185421565
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 03:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=PakBvOfq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38026f99e1=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42D6qpMT001297;
	Wed, 13 Mar 2024 10:54:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=spGDcxAxPHyxf6PxPSHftz3YZyzAFZPW6rbOXg5H8jg=; b=
	PakBvOfq49iwCrJvv+t+YrOuCvu/dYl33wi4Bi+YMhaPlz37BldKnhlRz/+tXdeO
	uxgmRMtrL3oJj18bC4Se8uTOhigkRxhbphveMYep1nTHiMiNCHRnLU5FdsgcrVIv
	uil/3beGZ1W+7emUCHfMh9kSFoR4JJO9+8c6aFCI1fAmMqDCDwkbIXucYjDqbjI3
	Jqd0U3AwDDhJqCK8nNMhY6DHMjeOtpX/5uX9pLNXDkm8bZRUmotu1xhlLdlJNoZo
	UU6esjcyHZIb1x1sQsd3fYJL+8m/usZL1ZydShYLwuuCMo0IIbpCSofkOEgsRppD
	y5afDQi+6kB/7rcOWLZvvw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3wrcyxuxm2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Mar 2024 10:54:54 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q6KPQRrCN16LU6dS+lVIBAsgGjP8XW5e686bp3IawIkej7McTQCKrjDLVksb3iDlZAWRr/FHfiKdypf1CS5lGeG6OiVkcFOf49QJiuLaAb8tJvpGg2YC4XFfghruoRL0sKx5TKuZKlDOf6NhMJkQfvaS1hJ8ZFbMtioUjKgIpT6ge/FkqR8JVZaSA0Ak/kKt8vuamD25cVjxkThaK15GeoNLaKllM/2EFuLtEXyXdfLvargiqzbJFfyOJJqSDxujfa8lvw+6GmBETkW1gqNIOkqQDVOn5UDau5vc7LrqJR8t1gurtQfbQNMiBm42mTMCZ91R98PdzAG2U6sKfXBbzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spGDcxAxPHyxf6PxPSHftz3YZyzAFZPW6rbOXg5H8jg=;
 b=IXzLquXeV1Gx9vdPPQZvj0W5tIpw+JF2/nqgdMFPEpXwFChBOvWUthvkeXdOlPyxnfURzro/o+gpLI9aLvrHc3xFFcqhNl7+HwCm/RZzMjet3eoECdi3cqWeiM6HQgY+tlvvvCsLRWerc9UDdAtWonScyPSKLPubDZIA+G3tnSq4AQH3q7tPF3m2nOvGqLf8a7+P5HVYTn5h0hMD9duuqxLpL8jP67QRs7Xd2KgwX981xK3bUYlTuEsxRprobN8oHALOk2jjiqgXXlGdmmyH+3NY+OBmJpyMstKBOm++6q7kNogUVsc5Gm2VJQgmd0A0KlEz1VeJHF1R8LCDaajSqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.19; Wed, 13 Mar
 2024 10:54:53 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7bce:b7a0:1830:98d0]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7bce:b7a0:1830:98d0%5]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 10:54:53 +0000
Message-ID: <6e6cefdd-4b6e-81c9-e795-0b51e814ec05@windriver.com>
Date: Wed, 13 Mar 2024 18:54:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] How to use a single directory in multiple layers.
Content-Language: en-US
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
References: <CAKe-BNpj9=keyNj9SaHeHouFNzbFXW-De=mQ2qA4TOVURc32og@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <CAKe-BNpj9=keyNj9SaHeHouFNzbFXW-De=mQ2qA4TOVURc32og@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SI2P153CA0003.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::20) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: 98f7fa22-505e-42ac-8d8f-08dc434c0360
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rc9DKB4cknrxmVqHMgzqwo0oAQeXvZJMoNm7BHxrtz9Tdc04ogbTQ8omcTFXXs15iD8lj+aVkliu1snEDDBIQMJldpNty5BDXghkizHUMl0IKbQZVAm7Vv7+z5RVKj6OdKanRlcu1BzXCUI/1EKQ7AkqzRvsfW7GxNicNPtrCKGFEbXg6iR4bhYj7p2G58cbQJ3dBB8F7alFzhrv0S4vlB42j78kF4v/hEWkK7dubyOpZy7bgX8z0xDYcQurA7Z0eOo8SA2mvj8sALYAElw8I7a/SwO+ZDptY/yvkCD7Le9rKQChf1a7wOp91Wk+GaZqboyVIK3Ie90T2IbWiTKb/vJF8MZkz0oVdO60hIoK8R/rm/HrYmcgd8vbzGkWjSWoq2joQZVBPaG1FB9np662OYJwsTEmkCTnQEyr9WYjMNNFyPqfN/SuNAjheCVzUhYSMtmrTX4hf/P49C9r5xTI/uTuHnU63S5793gRPaODOXkaMjHW1c5lc0O/uPiOga2Rg9z4Psyu3lkdLptbNi5AipCwuwHzYm4VOSCAfzLSejP+7+6YpLOJdEk/rn1VaOzDroYNiLlH0CrUKtMu9wguTym1TbRcnkLxc7mfe2BGryw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L2ZRT0ltM3VhYTltUThoekJGQlUyeld6UjJpQThRMS9QS1gzZm9DaEdKYlRJ?=
 =?utf-8?B?Mk1NNkJNSnBPMW9IaUVhNWh3dkVidXIwODh5SkZSN0FWQTFmanJjR05rQVBy?=
 =?utf-8?B?TUxkM041MXJTQmdiZ29hK0s3WjBhcFhaT1J5SlBlUE12Q1JGVS9MTEdRVmEw?=
 =?utf-8?B?OE5LeXVkWlRyZkxRL01ZTTZxeC9ueDhWclAyZDF6UmxGcVZOeGJvRlVsTk11?=
 =?utf-8?B?bDQ3aEp1Um1nT3UxeCticEc4a2piUWszczdiQ3NKVndUZU1DNW5DcHBWVmpO?=
 =?utf-8?B?Z3NFd1RjNCtReVBPN3JpaEZaeTFiWUlPdHgvRStHS2E1U1oraEk5RVlicHJk?=
 =?utf-8?B?cnBRS3hseTlhNm5hb1pEdHQydmxFcVRvdStxNkF4d3o3V1cvOUlRamlibEZL?=
 =?utf-8?B?RmFzQmdyb3BHODN3cXRSNjlWeDBibGw1VFBEYWpNcmt2SzlEcWJnd3JzajRl?=
 =?utf-8?B?V0JDaFY4V0JHVnpHVC9PUXR3TUZ4WmxBbXBuV1BqM2ZTb01iR01IbVdEQWw0?=
 =?utf-8?B?UXo3alZudGxkTGxQYksvQ0plZnF1ZWd0NkZhTGZVNW5qYXEyaC9ZM1QyRHZr?=
 =?utf-8?B?WHRnOGRyMXRwaEtuMDU2NHlrL01oWnY3QVVaNXNNOXp6ZXRsR0JrM1pGRlNN?=
 =?utf-8?B?c1oydXh1WVNSY2RjNWpUOEdNdUQyOFBQeGNkcmJRbnpUNTlXUno0cmRWbWFB?=
 =?utf-8?B?M0htekFkZ1dCcXpXSEtEcy9MN1J4K0l1dzZqK1YveFRvSkhCQW55T0pYM3Ux?=
 =?utf-8?B?amt4NWVldjRMcDhCTzNma0NObFAvMWEzUjlOLzllaG9lamluYlpzYXJndUV3?=
 =?utf-8?B?YnQ2L29nR05Fb3lYdE9YN2MxeXRMb1dpaGsyQkhmZWVXNzRQRlFPOUwzd1FI?=
 =?utf-8?B?dHFLWE0xU2FUemh3cGhxUXNwUDRKbjdyb21iWTBPUW1HOWtsZU9GRGt0b01k?=
 =?utf-8?B?WFdFQ3EweG84UkhjNzRBeElBOWFaUk0zQkFyYXMwbXJZcnpCd292S3JqdFBP?=
 =?utf-8?B?SXg0dHgwVWc1azlOdFpEMmVwUDVCbHFOaVhxakxmU1ZXQllvL3ZWYWdGVmR2?=
 =?utf-8?B?WWIyM0xxZ1ErcXVNVWtyTWJTL3ZtN0pBdzdvREtkaFV3enEzQlNibGdMaHl3?=
 =?utf-8?B?THNKQUpOd1hXclNkVHBVaHZ6c29HWUx5YlM4SmdiK1ppNjIwZkN2VjQwbXZO?=
 =?utf-8?B?YkhCYjA2Z0VjOXN0NEJiMU1kNzF2a0d1eXlRSzQrNll6SWNIekZUNGZvLy8x?=
 =?utf-8?B?NTFqMjBPQlhobndHdUwvY3Z5WHZGc3FYVmtCT2NvUW94dkw2T1owWm9rSVpw?=
 =?utf-8?B?ZUhRbVlYTTAxSHM4WlRPc3EvM1lmNXdObEQ0TEMzYk9UVnY1cG1xQ2dZY2FH?=
 =?utf-8?B?TlBnOXROTGkzN0ZnZmN2dWhrQkIzREJUN1AzS1RKTGFoVDZZN0tndHFocU9x?=
 =?utf-8?B?UTgxR093YnJVbWdKU042TWVUeXBJMk1nNVl4UTMwTUxIMDV3ZGZTa0FwSzFE?=
 =?utf-8?B?TlV6bk94TlAvSGRsQWdRUk8rWGVHQUthZGwvUGsxb1BWMDYwQXB1bmUyNDA5?=
 =?utf-8?B?R2R0Y0ltY2dIYlZVRm5wMG9vcVRtWXpCOTkzT3dBQytoRVZDVGNYZ2lFelJG?=
 =?utf-8?B?L0VzYmp1QWtqdlpJenY2Qzk2bXpnRzlpbVRrK2g2MFowY0pPd0VxWHdPMlFw?=
 =?utf-8?B?bmdSV1VVY2FzcFZ5d0dRUkp0ekVLQlVXQ0YxTUhFbER6WFVqSWdpZGtwYlA2?=
 =?utf-8?B?TDVUTlpxM242azUxZS96QUkwVTgxRWpHSVJ5SDBZTmd0Z3NXSXlEWnlOMEt3?=
 =?utf-8?B?cVM0SWROQUdtZzVUdVZlZUhoSHRIOU9UZml3UVdSVlI3N3BiZHlTaUF5S1Jm?=
 =?utf-8?B?RE1DMEhQdmI1dEJldStVSGQxdTVneTJucysvZjJ3cjhGeDZlTS8xcTZ2SDhJ?=
 =?utf-8?B?Snhjb0ZwVjllQVdGRlNnbUhLS1NBRFEyelV6eUJXOTk5VXF4ODFETnZiNElQ?=
 =?utf-8?B?U29NTDE5em9UV1g0VjhYWEdQOVNpUjZMbVFaQm5iK1h4UnlKQWxMTklUcm1j?=
 =?utf-8?B?NDhrb0JuZi8xT0lPaVdVVXhxV1pNc05zVnpHY0tMYm5mbWlpYVNOZE1CRk91?=
 =?utf-8?Q?2ifdE5zuIH/H3bbqskjvSBr5+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f7fa22-505e-42ac-8d8f-08dc434c0360
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 10:54:53.3885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YSBu+ux5omjMo7p+uOJn+fncjQdVpHlXqeyG1kGllrlpsdbiS1rTw1LDu9QI5WPsinIKpxrR7zyswu70lJAdaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-Proofpoint-GUID: zJCe13v49Dr4zJZNLltgrIRelt-vYlSu
X-Proofpoint-ORIG-GUID: zJCe13v49Dr4zJZNLltgrIRelt-vYlSu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-13_07,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=591 adultscore=0 spamscore=0 clxscore=1011 suspectscore=0
 phishscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403130080
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 42D6qpMT001297
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 10:55:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62749

I haven't tested, but you can try:

In meta-x's layer.conf:
THIS_SPECIFIC_DIR =3D "${LAYERDIR}"

Then use the variable THIS_SPECIFIC_DIR in other places including meta-y.

Regards,
Qi

On 3/13/24 18:38, Saswati Nayak wrote:
> Hello All,
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I require guidance on utilizing a fil=
e directory present in=20
> the 'meta-x' layer while also needing access to the same directory=20
> within the 'meta-y' layer.
>
> How can I achieve this while keeping the directory centralized in one=20
> layer?
>
>
> Thanks & Regards
> Saswati
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62748): https://lists.yoctoproject.org/g/yocto/mess=
age/62748
> Mute This Topic: https://lists.yoctoproject.org/mt/104902553/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


