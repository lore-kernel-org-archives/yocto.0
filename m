Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84B54C4828D
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 18:18:39 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5381.1707329915243934586
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 10:18:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=OncO5gkn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=276708c3d0=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 417CLSoG014988;
	Wed, 7 Feb 2024 18:18:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:cc:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=3sVOE7HFn0NNwBiexwO
	STJmlm0PAajrIxlF/3h/0lJA=; b=OncO5gknHU3UPorkhf2S/MLJc1BHp5g+IxI
	nS+jQOyeMeJHv8euMthc8XwGdaYR9LEVwobzlxTODGF4FqAcPH6IbZldjX/B4uGf
	3l6QF1LqlTAxGWmQaldnFCRSsTnRJfJ2mKYdzDBWv3B+YHDNu6cBP6UqaOSlt3/i
	wgZqhuh/hibeqNdqYBeGxSvtu8Ht8UX/6mdIS+ZxdtfVzTSWJ1NwX9GuxyTnyiGW
	hJihmglNDQJS1muKETGH8jGmShUbyGJGQDPhpUN2uZNeX8l1w6JjhoY22+Jt2RCj
	9Rt9t+FLFE55s3ap9FJFiipEGMIIkvbLGxmw7HLGpp6eXDU456w==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1cs7cb4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 Feb 2024 18:18:28 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKKZklyHxSahdv8qp9PYuw3Cv2x72ZVZikfGvVv23SOjsvOSy1lFx88P4hmVT9wY279vYKEqvqvBFJhuTy1Zftuke5InVLrjqQCJFZ0TsQDTfMxQk+FgMl8Oyl8VaPSe1LtV/4Llp8vPx4fUySKdGk4tPAssTAI2aFaEODgOTJidJs6pKFPnrDe2J2RxN7O2IJZ5B45tUyyoFkB5U2R8NkMhQ0NIOlLWxfjt2zmH4Ep54yAa5lY5MOf5yvMGmGsSSL7/KaEKgk7lzNztsjlclzqiLs9pezQBapZqDSsK6PKnL/viOdrV8uROTh8b2MVTC35UCGSbpLS9ylbGI7i70w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sVOE7HFn0NNwBiexwOSTJmlm0PAajrIxlF/3h/0lJA=;
 b=H8DyQWQyHENS4QnAuRDlvTbUWyS7Wac6Yo0cZxnLVh+oFU5eG2SSJyjnFMgw8Q4B4tXKRfTe0x9XEIP58RVU6bOEfq0FGqwb+lxmfdm6smkdx5lZLvYzryuvAH65Z9SPbZF2hD9v8IUlQJYn5K8Mdo1AR86Tq3PGkV83Cz6+YvS6oOd9tz2p0n9G/adG2N196el8keRKNxl6B9Cvr/p/g5ES6ISx3o9coRN4O1Vh/cAoTuDtF/P9EGgBjkqL5hX3oVbIENGFs7FRvIofil5e5GTm7jsfawdjWCADHwkoTFAR8p3BB/n4bueinFoe4oJUJh3N1C0Qr3nUPFyFzs8Hcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com (2603:10b6:a03:42e::9)
 by PH7PR11MB6794.namprd11.prod.outlook.com (2603:10b6:510:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Wed, 7 Feb
 2024 18:18:23 +0000
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::f3ba:ff33:12be:cff7]) by SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::f3ba:ff33:12be:cff7%7]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 18:18:23 +0000
Content-Type: multipart/alternative;
 boundary="------------60fQMH0TcqdkO2O84U7hzmBC"
Message-ID: <8e03a710-8ae4-410d-bc34-e53713a5f129@windriver.com>
Date: Wed, 7 Feb 2024 13:18:20 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-tensorflow] Layer should not contain a directory with
 another layer.
Content-Language: en-CA
To: Tim Orling <tim.orling@konsulko.com>,
        "Jia, Hongxu" <Hongxu.Jia@windriver.com>
Cc: yocto@lists.yoctoproject.org, jiahongxujia@163.com,
        "Yang, Liezhi" <Liezhi.Yang@windriver.com>
References: <0497d6dc-0b68-4c2f-a340-8792c3c1d347@windriver.com>
 <CAOyo-84uAMwNL1uGO5rHV9eBC73-W2enbksK6t2+J=7n1GaJiw@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <CAOyo-84uAMwNL1uGO5rHV9eBC73-W2enbksK6t2+J=7n1GaJiw@mail.gmail.com>
X-ClientProxiedBy: SJ0PR13CA0204.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::29) To SJ0PR11MB5920.namprd11.prod.outlook.com
 (2603:10b6:a03:42e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5920:EE_|PH7PR11MB6794:EE_
X-MS-Office365-Filtering-Correlation-Id: 45a404a9-8e34-4276-1889-08dc28092b73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iMVUvTiqqdXdPsgmM+D0FlW+8HFbCealbAEGxSjB0HxbH2WkdClLKgUFkyoDruX9WEJShjt9WGa3w6xrsL/TiYvipy68HBq5ZtEIodZbgjXxq8n4btefueYLAYE1wZyPPybdZQR3JrgTYX35J8c80WLUM5N8psxvNv8LhbiOlKjfofeJoHS3I0Z2ftZmwCohK4L+2r3w8px6GtJD5ofi7Zy0j3SayjKFKv30h+6vb5hfb/6jwri/JsDer0bL4otrwGafBSZ8PDnTRpLQbRsZG3nEWp+hZBnL8VLqLgGg+7AN9lge3sDBb651VrQZsW5LED0TDzANxQFLjqirY05TP6Jwg2NCqgeMRSwloqURPdBhjTkRUBWxAOZOOZ9aGrm5O8bhq5usMoAKGyE69Riy2vPXqM2bD5mLyDnhmZy4Mo44N1yGoJEEeP9lPXv5yeHtRiatDJ3oAtd42fFTLwNF7k7OuiO+3JOfSQfo1lqgCWgCtL/aCDTHCBR6QrQw1G5z+QE3EFRcT0cAg2KxaSdkCB7egaT3Ilgb6zmberJawBUhP/GAvy21SYCRFFknr4ahtoYxDZvgBnYAS0XbFtEaEJUaK+eRRQE++faijFqNg+b6jQ1q3nKS9Nads+aTfJJMa0vbArvZqx5sXtaCQkeicQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5920.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39850400004)(366004)(346002)(396003)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(36756003)(86362001)(41300700001)(31686004)(31696002)(83380400001)(166002)(38100700002)(2906002)(2616005)(107886003)(6512007)(6486002)(26005)(5660300002)(33964004)(6506007)(478600001)(53546011)(110136005)(66946007)(66476007)(66556008)(6636002)(4326008)(8676002)(316002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cGFTYTdFMjZOcm02b0ZrYUlHcGo5QVJuelFrQ3RzRm9OUlRMZFZMYUJmNDlL?=
 =?utf-8?B?QnpoSTFVa2FWV2dHZFpyOHdlRUZ4bnJ4QjNCaWU3T3hDaG1lcFFUNmJIcmRz?=
 =?utf-8?B?bC9DTkxsVVExbUN4Ynk3clZMY3JlM0RLcUhWREMvSGovcEwxSjFrdzVXanlY?=
 =?utf-8?B?UWthc05LczNoelVrODUvN2dlSVNrZHRBOVhiU2JYUDZMTmlDeTJmVFNWQnMz?=
 =?utf-8?B?bThxc2NEbUVVRi8vNkpIUVdHRmNqaUc5U1dVWUFlanh0UEtXS0ttS3pyK2ZY?=
 =?utf-8?B?eFNYZllOMmNKcGdZOG1wSjVkSXNLa1djQ09NaW04Mko2bElvZzREL2tVMDl1?=
 =?utf-8?B?VG1SNXRPVmJZaE9Zek5GZ09NaVdDclEwd3YwTHBjU1I0Q3VEQzZTdlRTN25W?=
 =?utf-8?B?UTNsY0NYa0pmejVERlozRmRhb2R0bzFIVlVXbEtHaE4wLzZDYzJjallyZVRz?=
 =?utf-8?B?ZC9oaDBUSjlEM2tyVFA2NVc4YldFZVZXci9ZMUVWdmg2TVhTY2d4Mm92ZE1W?=
 =?utf-8?B?cit4anViamxUK2NMOGFtVEoxZS9tWmFLV1hKV1pkY3ptREhzZVhtTzFoazk3?=
 =?utf-8?B?NnJRcVF3WDJwL2plenQ3Mk5ObWduTXUyMmh6clFXdnF2dEcwaVRPVHVXbVhM?=
 =?utf-8?B?TS8rcDV6aXlPL2oxcGZTRmdoRmkzZ01DM1BSd2RMK1RZMVl4WEtmLy9JWkxl?=
 =?utf-8?B?bnJTd3lYTWFOZlMvT3MrckpHY0R6TE9vVTIrVmp6NlU0cHBPOW5PSHZaeGZW?=
 =?utf-8?B?a1NibzdtMDhwdlQ4QzRaQnRnTWlmeXFuYUljM0dVcnM0bkh1VkZWSkd1Nzhs?=
 =?utf-8?B?VGNXL2NoSkxwNzBQMVpYbHBSVVloQWhRa3FGK1NvdGRLazFUdFc0VXNuOTFX?=
 =?utf-8?B?ZHpCTGlCdTZPYnUzbG1hL29VMitHeTdlNVpCZVQ0aVZnVXNRZWQ3QVcxbDhV?=
 =?utf-8?B?VHg2Ti9wUW54YVlMQy9pcHovaEcwZ3NGTUd0UjNNS216YlB0L2hKakNwUnJh?=
 =?utf-8?B?bjZxVWlVQnJLT1RXNGRnellJbUR6TVFrWFdzd2NvcFBtRzhCbkRSOHdlVjBD?=
 =?utf-8?B?aXUrMWFNSTdCbWRxYm9vRS9FUSt6S2YrMVJUZVEvYUFuN2NzTG9HUVJHOWpU?=
 =?utf-8?B?RTF2RytsWlVZaVVRNXd3ejUzZUdiTmZyUVdIUXgvamxWL3VMWmc5eVhCV3Jv?=
 =?utf-8?B?ZlpjVG5qVmw5b3RUY0ZvdlZhbVJvNGdZNERKUHkyc1dEY2FCNTJocDFrNnlR?=
 =?utf-8?B?ejJNYmFEcXFQY2F0dXZEWkgzVHM5eEZON1F2M29pVzV3S3Q3VnlPUXJBaXo3?=
 =?utf-8?B?NFd6TmIxelRQWkVMMmtIbU02VlFvcTF2VkxjeXZ0MXJ3UXRnQ1NsVFlIOUJV?=
 =?utf-8?B?aDlXTlZ2V0htcVdmVmlOWWFqNldrN0YvSklVTTFXN0MvMS9NcFh0Q3dUeVhX?=
 =?utf-8?B?TVVMdXF2VTBBWnFabHFGdW5vcVd5TDI4RWd6YVJOOVRIVWUxMlJvcVljd1BL?=
 =?utf-8?B?aTFNTmdVUm9uclI1WXVhMmZzSjhIbjg0V08wbFZQTEwwakRjNlJvaGwrUVNp?=
 =?utf-8?B?cmo5MmlLeVJ6RHZqZnN3QW1qOXRoWFpVc3NGQUhEMHdlVGFaTzlYNVVKQ2tE?=
 =?utf-8?B?NEQ0OVZpZUhFVyt2Y1NpNEYxdEpXMTg4WnVQUGc5VXdpdEpRc1lVUmFieTZF?=
 =?utf-8?B?b3dVRnpLTVhGMkdDeFA4alpLTEkzVXkwUlhTdkdXMWFCaE15T1k1M1k5WWk0?=
 =?utf-8?B?dUk2b3dvQVdzNElSNFc4TlZLZ0tWRzdmQW44THUwYldwRm92c1d6R1RTN3dM?=
 =?utf-8?B?N2hhMTJneHhyNm9xd0h5bUZ1NGRVTEpkNnFYZDlMalRpZVdwL1VKZHZRY29F?=
 =?utf-8?B?NTZoTE91L1RuMjFnM1NxNkJPTGtDYTNuNW5UU3NpRXBhQSt2cW9rTGFyWFNm?=
 =?utf-8?B?NmplQzJDUTEvYUZiUis2TGI3b1d5VndxY3JlS2lFQ2wyMnUrSHRTcGpzTjM0?=
 =?utf-8?B?ZUVVYjl5YTA1Q1l1NUxZU2hBNmErS3hoRVpVV1BOMFBzYjFZN01LUUFLTmR3?=
 =?utf-8?B?clYwS0xJTmF3TVhvQ05nM1N3alAvQllwSy81bVlpRGxBU3hLUnNhc1JlWUpm?=
 =?utf-8?B?SUsvZHMyRG42RWNvMkhmbU1KRGJ1bVY3NWVmckoxdWhBZkg4TjhHVjJQNlhz?=
 =?utf-8?B?UUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45a404a9-8e34-4276-1889-08dc28092b73
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5920.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 18:18:23.0369
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LTdtoi7bc0KPznrG0gqCceugAp8TmCKs7W3IDQFruRjrQOyB6aDGc53AVH+Hx9fiQnSqmfSIEg4uWMy+IwWoO0WrhKKNOUa+qSNZTJdkmc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6794
X-Proofpoint-ORIG-GUID: KxkuVf_riOnv_5neVM4hL88kKV6W1RAE
X-Proofpoint-GUID: KxkuVf_riOnv_5neVM4hL88kKV6W1RAE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-07_09,2024-02-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 phishscore=0
 bulkscore=0 mlxlogscore=842 impostorscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2401310000 definitions=main-2402070135
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 18:18:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62420

--------------60fQMH0TcqdkO2O84U7hzmBC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 417CLSoG014988

Add Hongxu's WR address since I'm not sure how much he checks the=20
163.com email.
Add Robert to nag Hongxu to respond after they return to work from the=20
Spring Festival break ! ;-)

Thanks Tim.

Hongxu, (Robert),

Any concerns?


../Randy

On 2024-02-05 6:43 p.m., Tim Orling wrote:
> I have changed the metadata in the LayerIndex database to point the=20
> "meta-tensorflow" layer at the actual root of meta-tensorflow.
> I have added meta-tensorflow-demo to the LayerIndex which points at=20
> the meta-demo subdirectory.
>
> On Fri, Dec 15, 2023 at 10:37=E2=80=AFAM Randy MacLeod=20
> <randy.macleod@windriver.com> wrote:
>
>     Hongxu,
>
>     Tim Orling was pointing out that we had the -dl line that I just
>     sent a fix for in meta-tensorflow.
>
>     He was also asking about the meta-demo layer without the
>     meta-tensorflow layer.
>     I suspect that the layer index code can't and should be asked to
>     handle that arrangement.
>
>     Nested layers are not allow.
>
>     Can you:
>
>     1. move all but the meta-demo dir into a new meta-tf directory
>     =C2=A0=C2=A0=C2=A0 to parallel meta-openembedded containing meta-oe
>
>     or
>     =C2=A0=C2=A0=C2=A0 just remove meta-demo?
>
>     2. update the README appropriately
>
>     3. Notify people that this change has happened.
>
>     4. Fix up released branches as needed.
>
>     5. Fix the yp list address: yocto@yoctoproject.org ->
>     yocto@lists.yoctoproject.org
>
>     =E2=9D=AF rg "yocto@yocto"
>     MAINTAINERS.md
>     <https://urldefense.com/v3/__http://MAINTAINERS.md__;!!AjveYdw8EvQ!=
fMS8PAAtBOWiiQRUe0aLmktnU-z8uZWxR5Wo0kwOo5eFknsqUQhed7yUF3mjZL_dpwXbStBbn=
8HaoI7IM_A8E9oNCWU$>
>     17:list: yocto@yoctoproject.org"
>     23:git send-email -1 -M --to yocto@yoctoproject.org
>     --subject-prefix=3Dmeta-tensorflow][PATCH
>
>     Thanks,
>
>     --=20
>
>     # Randy MacLeod
>     # Wind River Linux
>

--=20
# Randy MacLeod
# Wind River Linux

--------------60fQMH0TcqdkO2O84U7hzmBC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 417CLSoG014988

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Add Hongxu's WR address since I'm not
      sure how much he checks the 163.com email.<br>
      Add Robert to nag Hongxu to respond after they return to work from
      the Spring Festival break ! ;-)<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Thanks Tim.<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Hongxu, (Robert), <br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"> Any concerns?<br>
      <br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">../Randy</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 2024-02-05 6:43 p.m., Tim Orling
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAOyo-84uAMwNL1uGO5rHV9eBC73-W2=
enbksK6t2+J=3D7n1GaJiw@mail.gmail.com">
     =20
      <div dir=3D"ltr">I have changed the metadata in the LayerIndex
        database to point the &quot;meta-tensorflow&quot; layer at the ac=
tual root
        of meta-tensorflow.
        <div>I have added meta-tensorflow-demo to the LayerIndex which
          points at the meta-demo subdirectory.</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at
          10:37=E2=80=AFAM Randy MacLeod &lt;<a href=3D"mailto:randy.macl=
eod@windriver.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">randy.macleod@windriver.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Hongxu,</p>
            <p>Tim Orling was pointing out that we had the -dl line that
              I just sent a fix for in meta-tensorflow.</p>
            <p>He was also asking about the meta-demo layer without the
              meta-tensorflow layer.<br>
              I suspect that the layer index code can't and should be
              asked to handle that arrangement.</p>
            <p>Nested layers are not allow.</p>
            <p>Can you:</p>
            <p>1. move all but the meta-demo dir into a new meta-tf
              directory <br>
              &nbsp;&nbsp;&nbsp; to parallel meta-openembedded containing=
 meta-oe </p>
            <p>or <br>
              &nbsp;&nbsp;&nbsp; just remove meta-demo?<br>
              <br>
              2. update the README appropriately<br>
              <br>
              3. Notify people that this change has happened.<br>
            </p>
            <p>4. Fix up released branches as needed.</p>
            <p>5. Fix the yp list address: <a href=3D"mailto:yocto@yoctop=
roject.org" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-freetext">yocto@yoctoproject.org</a>&nbsp;
              -&gt; <a href=3D"mailto:yocto@lists.yoctoproject.org" targe=
t=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">yoc=
to@lists.yoctoproject.org</a></p>
            <p>=E2=9D=AF rg &quot;yocto@yocto&quot;<br>
              <a href=3D"https://urldefense.com/v3/__http://MAINTAINERS.m=
d__;!!AjveYdw8EvQ!fMS8PAAtBOWiiQRUe0aLmktnU-z8uZWxR5Wo0kwOo5eFknsqUQhed7y=
UF3mjZL_dpwXbStBbn8HaoI7IM_A8E9oNCWU$" moz-do-not-send=3D"true">MAINTAINE=
RS.md</a><br>
              17:list: <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">yocto@y=
octoproject.org</a>&quot;<br>
              23:git send-email -1 -M --to <a href=3D"mailto:yocto@yoctop=
roject.org" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-freetext">yocto@yoctoproject.org</a>&nbsp;
              --subject-prefix=3Dmeta-tensorflow][PATCH<br>
              <br>
            </p>
            <p>Thanks,<br>
            </p>
            <p>-- </p>
            <pre cols=3D"72"># Randy MacLeod
# Wind River Linux</pre>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------60fQMH0TcqdkO2O84U7hzmBC--

