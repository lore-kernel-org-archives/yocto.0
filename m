Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDEAC433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 17:43:13 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.1765.1643391790667757899
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 09:43:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DBarR3cF;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=9027d8ef58=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20SEGtuR011573;
	Fri, 28 Jan 2022 17:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=kbwceH+NAcPj1nEArdtSxNUP2rIUH477zsXKfQRoytI=;
 b=DBarR3cF98ym+52HgFZyCs9TdmTzLK7ooOer5sKhoxATA2+O7xi/VXlQvq3tqEz+yxiQ
 czTKwpMDW4k+Nr38c6F7JuqB+5q2/evz9ojRuRPDwoE/9dcM8ejLVFq81JwqTjkQ9V/Z
 SbgYS7n/ZYqhE8ai+6W+lhwTTFQku8scLlrYUD3Zad0QXC5eGhbOpPvbF0tuDOSIssoY
 oC6DFgkdphHnGIw5hFidn16hT79sKPutGNElOj0eGsGMhg1JbCy9/LhqPa12PAn1+luT
 iCDxNKZ3zKQOFIPNoYJ6qYkd4+kXWmzT7RYeCDHLgKhgCRz9vFNK/8R4vnFWPO8MJzXN XA==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3du71d1w77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Jan 2022 17:43:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YvqbwaSU0LJKDVVacxDBblwmpPsNkS7gLX82eH3UDL+ptkUgb46w5Zvhu1kedp0UH5Btd2Q3BJcpmpQyBEfGaOqI7hL9t/q4a3zzcnUTLLEmiYBqr23XIbuds+Zr3LJWhElaj8xaxUPmC/6H+3bpZMMB0/j6Xq2h1r4qEP9aQJakK4TfOCpMcwyPV169JHi9mLmdbffKqMHYNnBWwZ7MgrewH44wlOpRNIkLLU5Qh6SKPqvdme3DIRn2RTDVQtmc85jqZBsLLdCEBrtPEyGdngngYfCr1nduBgmO4JD+OKmxmtsxCvC9XMMvsxRVa9eE4kDDkiYuDAskjZhHOkG1GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbwceH+NAcPj1nEArdtSxNUP2rIUH477zsXKfQRoytI=;
 b=JnzqJxWU8RVQCt5oY1T5tJtbfDtOQ47I+CwqOaScpU8Ub7poQLCkb7yrVcoGdlA9mamr74EXsixDiAa/00ph3/K6JaAhuraX5ylaeHbtB1UxibUKngSarLFVCNWHeSB4uSYGXA7k5qMBtw5U6UtaMxkIy0AlfXpRsQW92PT4TaxWQSaR+p6rSNliuM7VdngvRPi54I5hVXBGx/eDQ+cuG+SmhTTAMXm3+ZU9w3VGsoguVB/jJjIqTnpW5U568J5IS0uVW8Rdm8lJEJp0TnqEB1erSKe4p81+ABA2CGvyfgPt1Bo8YjglXWFnPB4BwNRKasWmx8thHVVIv7iorfWc8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by MWHPR11MB1952.namprd11.prod.outlook.com (2603:10b6:300:111::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Fri, 28 Jan
 2022 17:43:05 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%6]) with mapi id 15.20.4930.015; Fri, 28 Jan 2022
 17:43:05 +0000
Message-ID: <52a7b807-5c51-b89b-53f0-01a8d86fa31e@windriver.com>
Date: Fri, 28 Jan 2022 12:43:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] Preferred provide base-utils issue
Content-Language: en-CA
To: Paul van Berlo <pvanberlo@gmail.com>, yocto@lists.yoctoproject.org
References: 
 <CAJxFkmoN9caLE2QkWhniQf8pMWNGFEa=suHMWFqESUi=pvMCYQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: 
 <CAJxFkmoN9caLE2QkWhniQf8pMWNGFEa=suHMWFqESUi=pvMCYQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4dbcb6ff-aad6-4e50-fb9f-08d9e285a3b1
X-MS-TrafficTypeDiagnostic: MWHPR11MB1952:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB19527D6F3BF029FC252EABD4F8229@MWHPR11MB1952.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2fNkSlh0ILmw6+4qIduTBNHpd2fIa50h/Jyhmslo1mkzzIMjV0p9cApBLUYN2gwfY0nJ0+FhzSB8RDTznf8e1e4FaVoif0L79etz+zXGKNROvaqxTIi+kp7qSwVfs+OPfwgWOg0jbm7fX7o8KFN/X66c2D79Jlcv/86mwix1jv606cPH0CIVQBNzNOyjkpOXdhTtM2DmkDR5rebL5AFto006OpxN8RXaPHQwoTPUbIe6Ecv9vkvih419Xk+f6T6oy/bz7GoX38sCs9mKlq3X/oDzR42N4i7Dv691Z348xPF9Uzf//jmmJpMGIWdhsJcwcQ5fYyR0xbOieRDkN+A21biuhMU6ooejH3+eqeWPbywVw8h+N1DJ69SWl/T80sJOiKyQ01k231QcR9ZklE21dWly6fKLbBV88vtMQjYoQND4rnBT+aecIV25HsLXyYZK2VlWchoLK42qRRbtJm1NRKW4ikg124F5rfeuFAHSbsv3J5FVA0KfD+qrhzg+pNoDolWUKhXiuhKBjKA3SYd9/+6yLcb0gnemykE1snh+6gG9iAHWBNYjqTel+u1uxF+7RNgk20DCg7PBUKAxeTE5C5v6vSmFuyOj+/46vn07eEYYftQ9EJWXGlseJWzoUh4fNsC2U7rRmRdcKq2Re8oq21ZWYwBc6KDsEAaKRspWQsUqrycw1A1q5WScYdB0RDNXhlaxSoK+/7gJji5872VcKfPVHlwKpMKPxIW/XVPOMeCoc6cB/3sSyNyp8RivcLJEJu7MY0rBoSkePlTlizFGo2KbyG3orNTI3XpkoDMgwmBJnnk1J+CY3sVaipfrFeF6xKtdxzWkbp0dOnaNepREFq01ZlSty8FAnmb983vvKGQ6hqvKISDIeEWSo7cJUYhZTaiABzk70gHXl+ou73FH6A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(83380400001)(2906002)(6512007)(2616005)(186003)(26005)(38350700002)(38100700002)(86362001)(31696002)(316002)(52116002)(66476007)(66556008)(66946007)(8936002)(6666004)(8676002)(53546011)(508600001)(5660300002)(966005)(31686004)(6486002)(6506007)(36756003)(43740500002)(45980500001)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WDA4ZUxZckg1ZnV6clcxUFdUTW50RzdnZjdINnFrL09TcUxPOWV0Y1R4NFNn?=
 =?utf-8?B?Mk1PQXJvbG1HcENXdzhHbGhVdlFpVDJSbjkwb2dXQStYM3hXcS9LZWNCRE1v?=
 =?utf-8?B?VDlqRUg0dmZXT1dha3BlN210UnlTNXVpRWUzMjlheXM1bFlwbWt4bXlOOTRY?=
 =?utf-8?B?dkdEdURlTmlmM2ViZzZheDhCR29aa1FzZ0V4dGNwOGF3RE81Q3dVL0RmZEQy?=
 =?utf-8?B?RkJNdlExdEsxODFIM0xXTHcvcGd3MTFHUUt1YVhCSFRvUWZjdlpUWWhCV1BD?=
 =?utf-8?B?VjNxNGF6Si9WeG41ZUx3ZmNGWjNjdXF3K0Fpam9mazZ1RUxsdHdoZzU1U0xv?=
 =?utf-8?B?YVgveUQxS0pzRWFCVTI4NGE5OTBMa0JkMkl4anBpUGhWSWZQR1JvakZYUTlE?=
 =?utf-8?B?Q0VwOUcvdlloRkN4SS92ZllLcFZwd2NDMHgyWXFRVUhkcjBCZ1lYT0tjWEd4?=
 =?utf-8?B?ZkJrL3MzUGRWQk9PR3V6bHFHdHZ0UjhKUHRvcTFnSWx6REdiZTNnMUpzNG16?=
 =?utf-8?B?bnNxWVNRaTVoZzBTYkUrWkdGcWZiYlVoNmZWekJCdzdDZ3Q2bDNUblVoTGN2?=
 =?utf-8?B?WURrWlFDb3VBOWxLTmpublJxTUQ0aFNrdGZhTGVyN3Y1d05KR0VjRUY0allv?=
 =?utf-8?B?ekl3RHNESkFxL3JVSEgzUHJINGk4TDdSLzRnUTdhUGJ2bWJNLzFBMlJlQUgy?=
 =?utf-8?B?OS96Vmx4YzVEYVhQWFp6Y05nYWM5Y0xJSk9WWDB1bkhnL2V5RkRSdFdnMW9W?=
 =?utf-8?B?U1F6NXZEelY5WXl6eXMrcEtNUlZsUUlhZWNCRkpCZExkNU5JQ2c2bTRmd2l4?=
 =?utf-8?B?Z3BHVHhNbmh6NGdnNHdPQUNiYk04bkVNRUV1Y05iZzBHUnowVXZ6STE1ZlpH?=
 =?utf-8?B?NUM2RGZDdzBvblAwVnNvbEp6aE1LZUdsQnpuQnFSRzdwZ21IRW15L080dE5M?=
 =?utf-8?B?R2lFSEliSk9rR2ZzZERJZUs0V0loYmpRaEZWQThEaXQzc05DYnRSRXVHUklT?=
 =?utf-8?B?L0ZCNC9YbzRBVm5HR3hFcklJd1dhWVUxblpYelYvdHMwOWhiUHYxbUFxSmJJ?=
 =?utf-8?B?MFd2SFB0c0JvN0owQ2taZk45Q1ZLMGZSWEZsbWlMVnl4cXdHK2NTUzQ4bTI2?=
 =?utf-8?B?dXZJQXhUY3c3VWp5RnZjOCtXc0RRSlA1Mytxc0F4MEZnTFA1M3pIeTFtL3Rr?=
 =?utf-8?B?VjIyRmJOekN6QVRVMC8wcXAreUs1NUk1UG5oMjJVMnQ4VDR3WFlRcmVqNUVZ?=
 =?utf-8?B?b3Z0dGJuMTFQcjA0YjNOemJ4a2UvZ0RzanpYVTRJeFhtcGZTQXZ6QUJJZWta?=
 =?utf-8?B?ZStYMTdIOGxXZUZXMWhUbFZwYnp2aU9zS0svc3hZa25uOFRkWm9YV2ZZRnZZ?=
 =?utf-8?B?M1FOWnRrR3dkakZYUTdNRTRqK09zR2YvMmpxYzNSSnRhbk41ZFBkUmZmVE03?=
 =?utf-8?B?QWlqVHJiWHR1QzhvS0liV1RQUzlXNUxaVk4yQWdVNmxnZDlqd2tvcVVEeDdk?=
 =?utf-8?B?T0tZU2hKUEdiQ3IwR1hqazJ4K2FLVzd5UUsrbzkzY1VZNlpXdm0xMEhHOEdO?=
 =?utf-8?B?Q0ZoN3NpUUkrdzl6L0FjN25QdXN4UmNxWklMb2VjZWMrWGM1aXB4VTIySS93?=
 =?utf-8?B?cUVibjVRblJZWGM3MlMxdVVUNmhKeW83cDNBRjJGbUh6STkzWjZvQUJYUFVB?=
 =?utf-8?B?VnhiM3RLemVVeEYxOUJvSEsxbnhpc1ZqWmlHNTBaK2I5MERqeHBqcitPU2Ru?=
 =?utf-8?B?ZVlReVNVT2NUVERENEZPZzdWa0lOVTFxRlhveWZ6ZEFGYVlOMWFMb3JWZTNR?=
 =?utf-8?B?ZEZsNzJqYmNsNzAydzEwK05pa0NxZm40SUpyWUhXMU1YQ2FQRy9XZEdvbE91?=
 =?utf-8?B?WGNGWVRQYnZydHZEQURXUlp3K3AwNmVvNGVYcVR6d3RCd0JyQit1eUJrREVE?=
 =?utf-8?B?TmI1MHQ2eEZjWldBajJ3d2RDY3pSVUEybFhYdzRMSmx3NVJVQ0hJYUhQd0V0?=
 =?utf-8?B?czUvN3RjbjJFRkwzbTlMbkRGa2RmUVR1R0tNMHNMb05ld3BFSUNaK2xSMFRj?=
 =?utf-8?B?K0F4RElvMnk0cjVwUzdDa2pkUFBaT3BmK0t5MFU5dGxSQTRRQ3BJVFVZenph?=
 =?utf-8?B?YXhtSUVLYTRrRFV2dEZLM3pCTHNwMTJicVduei9OTzU5WWJzNUFnUGYvSUNZ?=
 =?utf-8?B?NGNKeXBkN3N2NTRyWlhvVU5CSTRGSDBHQXhpdnVRelNHWlFNUWZaOWFTWnJl?=
 =?utf-8?Q?eInU7Y5hI/NxdI7j4Tyla56JRzdHEBHMXAMy8cOnHQ=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4dbcb6ff-aad6-4e50-fb9f-08d9e285a3b1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 17:43:05.5920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 56mXi/d4YymFIemQxMQ8KQiOMVYjT9W7++X/stQ093td+JvNidUQaXxokdrub9HVtgFyBXh8FtcTxYYWcdfbYsooqzCQ/5MSP0JzJ0SRq2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1952
X-Proofpoint-ORIG-GUID: 86bjIkt3BLm83THnJhIeHPNlpGFmg4wS
X-Proofpoint-GUID: 86bjIkt3BLm83THnJhIeHPNlpGFmg4wS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-28_05,2022-01-28_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 lowpriorityscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201280106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 17:43:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56014

On 2022-01-26 11:17, Paul van Berlo wrote:
> Hello,
>
> so I'm a bit at a loss. I admit, I've not yet been using Yocto for a 
> long time. I'm trying to use base-utils as provided by 
> packagegroup-core-base-utils to have a more full featured set of base 
> utils instead of busybox. It all builds just fine, however, whatever I 
> do (using dunfell), it ends up with a kernel panic during boot.
>
> I added the following to local.conf on a clean clone of poky:
>
> INIT_MANAGER="systemd"
>
> IMAGE_FSTYPES="live"
>
> PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
> VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
> VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
> VIRTUAL-RUNTIME_base-utils-syslog = ""

Hi Paul,

Try adding:

VIRTUAL-RUNTIME_base-utils-syslog = "syslog"

as shown on:

https://git.yoctoproject.org/poky/tree/meta-poky/conf/local.conf.sample.extended#n371

I would expect that since you have systemd, you'd have the systemd 
journal as well so
you wouldn't need syslog but it would be good to do a sanity check.


If that doesn't help, show us what the kernel panic is saying.
Is this with a custom BSP and if so can you reproduce with qemux86-64?

Try the same things using poky on the master branch if you can.

../Randy


>
> Does anyone have any idea how to get this to work?
>
> Regards,
>
> Paul van Berlo
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55979): https://lists.yoctoproject.org/g/yocto/message/55979
> Mute This Topic: https://lists.yoctoproject.org/mt/88700100/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux


