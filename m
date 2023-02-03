Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A20C05027
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 14:30:00 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11876.1675434599484124522
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 06:29:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=fAcmOXKn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1398862e34=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 313CIMCf002895
	for <yocto@lists.yoctoproject.org>; Fri, 3 Feb 2023 14:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=zZ+gjJ+SiW3V4vRghA4duGIuWJESJth1+3L0xmHXxts=;
 b=fAcmOXKnzb37TIHCLVAIDeCFjVSZP72w8RuXsTdX8kc+9cFl5MxTNshl0nCH89gZYrx+
 fFtVnMdFBNZJOpY5hrg6VNROxAUxskLY3Iw4RWb2NNsJKjtiaQNH5/tzBrmOtYicIXRV
 imYrMkG1CcCbs1915ZVNoSM5FVEgYHXJf2f0PAYaZcQW2s7z0aLPIMz1bfOdUQ5LwXJM
 Hk7vFxegxf4qvUSLyeSAqKXW+qamZhr3U1DznDrr7/vUsPqh2ZLSrNnyLsk2t6iBwgsh
 tVRle5T+K1SAo7PlTaW21U88IlY0GdjAC3g97Va6S73EAj79FVdCK658ePdVTt0clW01 4g== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ncrx3ehrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 14:29:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABd+25KL+dNeiUWMFcQZmQXyVw0dcTMW14ElHlAp6eSzh9ySmZldxD3ZHTRTm+2chbj86KYvcHWtlJBVXV95Cgvsg5hIOP2Z71VtKdCdHC48DQ7xXoELddkevK0AcM5chsm5PxgftWro0NGxsVx8NcJdowCak7NkPoMBSExmkOXoi5CdjFOmWDoklGS8nATZHCLSrfZ8ZtLuA2iAlnx6mrN3UXbTNj7kwzuQHVCDtGKlHBMdQteGuG3Pq96UzoJGnfSweqgy8BnyESyz3dhWjL7zWKNYzA8pXbn3h54LohqfMInNjUWtGLiRqy2R0mznEdqy9kmPuQ5ioXm9rpfsNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZ+gjJ+SiW3V4vRghA4duGIuWJESJth1+3L0xmHXxts=;
 b=jv1379i9qgP69SbnBy8UErrxonnryEe8GiZmEjwCV88H/byDCvRGlmyuDmjBKYwC/SLqrit7QaPFQDYbqJQuRtmGK/rn9cIejBOGFm5nkBu64JGq/9cLQZCdxKGAwzmPnkfaBN/isYL5KgoKLHQv630snmBCURiF4dcO9bm/KWwQPlcRTYJ8rdgxis5L7W1lWg/1dc3FVubXIEKHOYNDOn4tW5p3QgESTVNDG0WzKCcozIvW8HVf7AlU9XLIdKl5nFyUk9D83rIYgWxtr4icmw6WkxzYgiNAOliC4bWuORg5hXRVboQht+S5O6xb7nwezMoqie0LL9Qp6FiTXepKgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 14:29:55 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d%5]) with mapi id 15.20.6064.022; Fri, 3 Feb 2023
 14:29:54 +0000
Content-Type: multipart/alternative;
 boundary="------------4zR29oCJDz2WND5gaEgTY0VN"
Message-ID: <33547b30-5a03-8f47-67e6-947ddc9ccb38@windriver.com>
Date: Fri, 3 Feb 2023 09:29:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [] [PATCH yocto-autobuilder-helper] config.json: set
 oe-time-dd-test.sh timeout to 3 seconds
Content-Language: en-CA
To: yocto@lists.yoctoproject.org
References: <174020E3B994F1E1.26884@lists.yoctoproject.org>
 <17402176E54AC01C.26884@lists.yoctoproject.org>
 <174025EB409659B4.26884@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <174025EB409659B4.26884@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR01CA0044.prod.exchangelabs.com (2603:10b6:a03:94::21)
 To DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|PH7PR11MB6473:EE_
X-MS-Office365-Filtering-Correlation-Id: c2225d17-9a9e-4284-86de-08db05f31e3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0Rj/cowzNVhujF/Yix1EPEzYTMB/FFpITP85/1K3E1viqrV2U456dM3EIpKnwZ9cKhMESue8OS0dKD/OgCYMmJ13gskFfq8AGg/9uxGSMbyayyG6U8OTxI/Xr1GMbB4rzww2R3Orp45UKz4GKQkak8TuPNd9gvMbzm5IgD/d8+3cbCja3igu5yOr5eQTa7JtXeHbfgCNbXHDdOyQ9e8Kll6bqWk591Kg5LF9SDPT0OmSAAVnw9s34JyVqSNKA7trD+K25a4JUEYZrH80kSblsQoGYpWu7bkWv3c2R6ZqhjK0xNmUfP++o7s4w+IkwmaN8QEAwugmju4U0kFKB8CNeIIA8VbMhuJIVac/w/dphaxc2fgKW+p89VQwC8iIGEOlLMpSBM5GOx9ZEKrawaFq80NLWy0sHGot70PIqyfn8MX9mcUbjE1RGghcaqfFw5tqJ2p2IBCkNsd836Kcaiak5PLtBvrJGHhZOLrkDo4rIQUX78f9SAnM2/rAU7L7VFmvimmwPVKWPP4FCaqoitDPKakicEMh7pChl/OebIlU6jRgoMyWvdyt1OgHduzOWkAVCJ+5UeXdHarTUPqjfdYeTmWLLVC6C347CcxRXRX5Nb171rDN79JrSeWm6mkehRbBz9lRtb0YaTQou5c4VBgcIeRk7fiT8mvAZncyVNn0dZVtrodhmVIXIkgXcRjrcZrtHvDczbr9u865SiIfDByX+K3M7mWjh051mNiFywmlExY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(366004)(376002)(346002)(39850400004)(451199018)(36756003)(2906002)(38100700002)(316002)(2616005)(6666004)(6486002)(186003)(33964004)(6512007)(66476007)(66946007)(26005)(478600001)(66556008)(8676002)(8936002)(86362001)(5660300002)(53546011)(41300700001)(31696002)(6916009)(6506007)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VW1abllzTEU5VmZTQkZlK3ZhOTE2b0YrWFRqY29Scm8zUnBTeUxaaXhoeWNL?=
 =?utf-8?B?NUpGMVVVR2srMGM0VGZNb3pPYThkRzRzMEx0ZWcwSjEvQk5pcE14Y241MVAz?=
 =?utf-8?B?VldWVjQ4a3hVdHNXREJmZEI1WkthVmk4ZkdlbFE0Ulp5Y1Rhb3NYQW45cXl3?=
 =?utf-8?B?a3RaSGdwMm1ZWlBoMmtodGVZZ2xQaGYvYXJDRjIrc2lmVVlCbFV3SGZZU1gv?=
 =?utf-8?B?a0EycXZmSUJzdm9GdjE1SnY5cEtPMmtHTzZjNS9yZGJnTlVQeSsyRWVjZ0ti?=
 =?utf-8?B?SFd3akJyREdtMlRaT1pFdVZjQ0hHVkNyMXVVQ2VLQnhWYnBodVpVbitKZGRq?=
 =?utf-8?B?Y0Fxc1FPQVlQTkoyZ2lzc2U4QzIrZlZtMUVqRkptbzFLSjl0RDRlV2ZsbmJl?=
 =?utf-8?B?UjloUVUydm55Rjc2cXhkUzhsdm9IdFlXaXlWY21TbmpJUjczNVlHNGY4MC8y?=
 =?utf-8?B?U2J4aTlRcmExM1E2OU9ESjVMQnJlMFc5VjV1VCtvYWdUSzVlblBwK1A2Mkta?=
 =?utf-8?B?STcxTlkwbHlwL2p1NEdIQVZKa3FCaS9ldUZaTHRTY05HcTY3RVJ4RTArVEZy?=
 =?utf-8?B?QnVVVlBWMDJ4Vm9nSHVtbUo2TTVkNUZaTXZFMWNCNTk2M0xxV2hpWVUxNks0?=
 =?utf-8?B?Z1JneTdXcTR0cmJJbkUwQ3lMRlJBd2h3cVErYkRxb1IvMm8rbzBxODJiazB0?=
 =?utf-8?B?aUp3dE94ZWpHYTRrUnB4VlhNWVZNQkRuMHNnOS9rZU52eGdncG1KN0hkSkpV?=
 =?utf-8?B?NHVJVjFSQ0Z4ZTY3WnplVTZ2ZzhkNVhNM1ZOMEprOXhaQ0tJY3EwWmkyT295?=
 =?utf-8?B?dmFVbkxIM0txaTYwcllIb01ZS1JIVFV5WkJOWjV3Q1ZycDRCZDd0aStvRXpj?=
 =?utf-8?B?OG4wSS9ITHl1bzhkN05zaHp5WmRaUm9YY0tKYjd6TzhPVytVOWsvOUxSaVpy?=
 =?utf-8?B?a3pVK2tma0lqbnBySktNMEs5NUlZNnRDa1NpalhJamdGMGdRbUlCYjE1KzNH?=
 =?utf-8?B?RDRoTG1nQzIyaW8rOTVqYTE4NmEvT2wrcHNzMXdvOG1oZVlpVVFhaGJCZk1B?=
 =?utf-8?B?bXdDWFk1Wnh5NmR3ZmptWGRBczBkOWRSODFqTU01akhIQndrTXVjRmlvcHVm?=
 =?utf-8?B?VVVRdlFhRlJVTTI3OHV2d0o5SFd0eGxjWS9QQ3FWNzBDWEdJckI2UzVqUHNs?=
 =?utf-8?B?K0w1MTA3Smh3Yk91NkxQZU5TcmZ0dFNKa2xWTHdzTXNkd3MvSlM4eXlENmN2?=
 =?utf-8?B?cGl2VjZYUThRZUZsb1ZydnZIVzdpUUpsaE4wV1JQRklydGJYb2JXSnRoNE90?=
 =?utf-8?B?VzR1SkQxRHRsSFlEdWVUUHBYN0t3WnptNzlxeGRodzZHRUtCaFJ2QnN2T2VQ?=
 =?utf-8?B?cSt3Z2dRcitvYnhHUEhBdWlYVndld3ZvUlBUNmJtRWVZbXdpVUlKSkkxbWdD?=
 =?utf-8?B?cm1ZMktyR0FOY2lMVmorRXEyc2dtaEM1OUJNb25aaG9JNXJDb2IvbUZJdXVw?=
 =?utf-8?B?K3dnQnEyQWtmdDZQNEZwbUcvMkJtVHA5VkpITUpKc2N5d3pURmY3V2F5V3JY?=
 =?utf-8?B?cFdPd0daMDdoKzI4bkw3bXNMdHN1ZnlrR2EvblNLOVBFM29UOS9yQVNZQzky?=
 =?utf-8?B?YlZPbnFLdzRGOXlZZ003NnBMaklKdmhScFptOEozK0Y5bjN1Zmk3TzNOenJa?=
 =?utf-8?B?bTdhTnJkbXA1MXg3RU54MmIwOFdIZUpQVmFTRGY5V0FVUFZqeEV5RURPYmp0?=
 =?utf-8?B?NEtaMzRrSXBzU1JlWUNXZExCWWhKdlI1SXlzdkRHejdqT2phck43cWNIcXRB?=
 =?utf-8?B?dE0yaGFpSGc1OGxWZ21TK2NpRGVaM0lOdVUzajV2cjVzWnpGSDlyS1pWeTZk?=
 =?utf-8?B?dEw1WEVlTTBvZi8wcXZkZ2hMdmVLT3lhWmFmR0c1UTZWbzc1RTd5MjBOTkYz?=
 =?utf-8?B?emhXN2RVRmtqYmh0SE9vMjVyS2NuTDQxQ2FqczhIcDlKSG03WGx2aDNKNHdV?=
 =?utf-8?B?Y1JEcngxWUdCbDZTcUd0Zi9ONTRzWnZDTzJ2cWU3VG9lL3lCT3VZNWtNcVps?=
 =?utf-8?B?VkN0ZC96S2VrdW5ZOTQwR0E0RDZZdi9ia0V1LzNDRVJlZ2UwM3I4UWlZcGQ4?=
 =?utf-8?B?NUpZcnhSZHdFaGZoWEwxUkFTYmUzZ0dJSXBiQXJFclJuUlYzdk44WWZrQTJi?=
 =?utf-8?Q?g1VuS5uKX4Yd7ESL969INBg=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2225d17-9a9e-4284-86de-08db05f31e3d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 14:29:54.8409
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pqiaVNTXpSBbUZoiwUV1bbCL8MoLm9a9ClB0J6ebKQHF+Tsul6U523/QfSfXXTfdcVi6vCblUF86EPTISJkcfQhEd1PRjoZ5RBtzhGPvNFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
X-Proofpoint-GUID: 61-6Y2FIUBPiqBpmNXeMlCoGkxbHrL_p
X-Proofpoint-ORIG-GUID: 61-6Y2FIUBPiqBpmNXeMlCoGkxbHrL_p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-03_13,2023-02-03_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 mlxlogscore=861 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302030133
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 14:30:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59158

--------------4zR29oCJDz2WND5gaEgTY0VN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 313CIMCf002895

On 2023-02-02 18:32, Randy MacLeod via lists.yoctoproject.org wrote:
> On 2023-02-02 17:10, Randy MacLeod via lists.yoctoproject.org wrote:
>> I don't know why there are two peaks that you can easily see on the=20
>> linear scale distribution
>> but the 3 graphs show why I picked the 3 second cutoff.
>
> I'm guessing but I suspect that the lower latency distribution is just=20
> from when
>
> the Yocto AB workers are idle. The builders in the cluster at WR are=20
> always
> busy, sometimes needlessly,=C2=A0 so I didn't consider that initially.
>

Sigh, that's obviously wrong since this data is only collected when=20
running bitbake!

Maybe it's the arm vs the intel workers?

I'll stop speculating until I look at the data a bit more...


--=20

# Randy MacLeod
# Wind River Linux

--------------4zR29oCJDz2WND5gaEgTY0VN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-02-02 18:32, Randy MacLeod via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:174025EB409659B4.26884@lists.yoctoproject.org">
      
      <div class="moz-cite-prefix">On 2023-02-02 17:10, Randy MacLeod
        via lists.yoctoproject.org wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:17402176E54AC01C.26884@lists.yoctoproject.org">I don't
        know why there are two peaks that you can easily see on the
        linear scale distribution<br>
        but the 3 graphs show why I picked the 3 second cutoff.</blockquote>
      <p>I'm guessing but I suspect that the lower latency distribution
        is just from when</p>
      <p>the Yocto AB workers are idle. The builders in the cluster at
        WR are always<br>
        busy, sometimes needlessly,&nbsp; so I didn't consider that
        initially.<br>
      </p>
    </blockquote>
    <p><br>
    </p>
    <p>Sigh, that's obviously wrong since this data is only collected
      when running bitbake!</p>
    <p>Maybe it's the arm vs the intel workers? <br>
    </p>
    <p>I'll stop speculating until I look at the data a bit more...</p>
    <p><br>
    </p>
    --
    <pre class="moz-signature" cols="72"># Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------4zR29oCJDz2WND5gaEgTY0VN--

