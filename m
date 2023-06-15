Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85604EB64DA
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 14:08:21 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.19464.1686838095845946910
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 07:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=RI/maErb;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5530be8656=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35FBhUww015507;
	Thu, 15 Jun 2023 14:07:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=pBMCVytt1wrdGY6zev4ieYcnxr6/Q3l3+NwA4fVC6AM=;
 b=RI/maErbSMf65WggoTfC9MuGPCosJEMcAEHUiFg5w1AeNxmRNdeF+pg6/gIVugc9IIs+
 Ed6tINuHiawIdCI+8HuGpfpAbAl1gSn6hHA8h1KjzEfSLBtWfQewh7BJLDFQMB+6a9m3
 i5kFjrHFehpOa/F92puVgbl5xh1gHvnCPMaDc4ydPoneDls8Z4XS6qpeylsKAQGkFs1c
 Y1z+tk9IzTL5hdsnKrnA58M8qlv0LmXnIC/JWKSVKODgLt46dCTFXyRcrlTV/JPH5FEO
 Su1C29JVjCS9O6N11KjCBcBrGe/kx3SoVUYpApneqsuz/Vg9aW1kGX7YcYGhGUdgdHLo iA== 
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2049.outbound.protection.outlook.com [104.47.57.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r4g584yb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 14:07:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EoLu8uNKqSpxvomqcLcFXImZPsCk9aRgRIF9s39GwcLLhkaU6nVcXMXujNWKy2+Jj1XU8H2MZcBVFL2gdk79J+s8Xv58wv+Al2ZEAoWXuww/dD0BpkCkHOqXf7bLAkUUBTHq9B5FJp4hXvMxp+cY9tAD8NdsqosE5wlxZjTO3ad3KZMdw9T2BdFfMIaM3abHUPT248gqI3H2ZstRVHpF0BysRLMK5m/bgDQqbjT3rKUoyFb4q3U93HEMgnLSVn7XAQNLLwaWWF96FmqxKvVjFcvzOdOtNB7uRdj+Gl22A3NwWAIR5oSJVsYOskyjiIMxpvxnhnO/Drm3w6oJgAPR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pBMCVytt1wrdGY6zev4ieYcnxr6/Q3l3+NwA4fVC6AM=;
 b=BBSqytkCXc0n0Ls44Ln6ac1DJIkLwWcU/shJEfwu48WzpRYcsSHiMzbZS2YFxCVBRtdE95F+38mQ17QBzG4jfx29ygQCVkmD4PfvzjWiy7jMtiPePoblo/fgAekTtg1LLfLMf1ZX8ss8rHra2092T+28sNyTRy3vDoNrzBqWB8JCGvqR9TeBMp+r4ADgisnECL4J9PpXbL7ppOpEsOPwHNw42yGuOB5KGcRtU2ZurP3dzC2ot7PgS4+FSgS3kVc80wuLikftQbEB3/ehyHa/p6wBDsPcyAliVadkqiJFk1NqVmDbWHuimfHycXGO4PYOmuxScUYbyfAmCu1zkDcdjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 14:07:51 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5a4c:c35b:8704:34d5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5a4c:c35b:8704:34d5%3]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 14:07:51 +0000
Content-Type: multipart/alternative;
 boundary="------------lJV8J8g0XWXXUe1Z2phbHyum"
Message-ID: <cf2a91af-3f83-da25-01e8-ed34cbb2c9f1@windriver.com>
Date: Thu, 15 Jun 2023 10:07:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 08/06/2023
Content-Language: en-CA
To: Sakib Sajal <sakib.sajal@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        akuster808 <akuster808@gmail.com>, valery.chernous@gmail.com,
        Zheng Qiu <zheng.qiu@windriver.com>, tgamblin@baylibre.com
References: <3d52edd1-78d6-da69-1bb3-c65b5273a3a0@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <3d52edd1-78d6-da69-1bb3-c65b5273a3a0@windriver.com>
X-ClientProxiedBy: BYAPR07CA0089.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::30) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|SJ1PR11MB6204:EE_
X-MS-Office365-Filtering-Correlation-Id: 16de1abf-e4ae-4a77-8722-08db6da9e800
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2cARkDcnFeOD09OeYaFIU55DDl8uZiFqcE1HNEpRzttMsj1ncVu3VVAzTWlcj2lYkgEqtC2e51TWbb2FyYO84xzAP4iQo9tIrv4IKkVukBdRNYfacun8/xvnh8dgdJg2NDPahQnb6mKK6eeLd1gS3yfus77VfjLO1H0p3ukfQVULE7hgiNn0uNWb/GGIAdY1IzwgaABJfHxkPCet1XNXePjQIbVljy6rQIIuR9awynUP9EUvqt3Q7IZ+TKy0i1iduzS8BXSJfoYU9rNykkCC+N+Tlt5H9Y0pPpy/+HqqU2tu/etswr4RwxmnweJ8vSexX4R1cXKpaLajDWP7gDCNtz5TVpzqsBASkPmxaQlxWjSDwmEKnaAV1S3tKa7xnbGl/T1bZTBf8MXipfJb0jtNuRhkHxi9b93watArpKLJvnW3DzPxJOMPKlO+FB71c9WbK51O9FKab/vBFDm6eBaaE9X8j9W78MyBBYbKS8lz2G1rifcSXxdYQcXkaoDl9w2NLELd8+ISKINqScHvU5SVim6H4VDidki5IYPOoPnBtOe0ghZaBV8rZx9SBMAYUK3due4kNzywTcRUGO59NjUjgzC81SryZN5ulW1YhlFT/RFvPQOdYkGyG01d78DKrV1kg4HkmSrDaPieyTgukAaKhg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(451199021)(41300700001)(8936002)(8676002)(38100700002)(478600001)(2616005)(6512007)(26005)(6666004)(6506007)(186003)(53546011)(966005)(33964004)(6486002)(86362001)(31696002)(110136005)(54906003)(166002)(36756003)(316002)(66556008)(4326008)(66946007)(66476007)(31686004)(7416002)(5660300002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V1F6aVZkL0lhT2RobUxKVml3NS9yaGZod0NONFBSbWViUU1TVEd2MTFVVElV?=
 =?utf-8?B?VUppNE9ob1NneXZIR1Z3MXpEWEhCSFY0bDZ4bGJPNnpPN3lRZk5PL0dvNUZj?=
 =?utf-8?B?cmdzNU83cENGVUpuVXRDWXdzMm9xY3BEeWhvampzV1VSWUNZT1pSZWlFaGJM?=
 =?utf-8?B?aHFiQk51QzlNNVc2VVBQYVVETmZsVHQwUWFock5FZ0lTcktaKzh6ZWJCTWNJ?=
 =?utf-8?B?aEZNbnNCamcwZzRyVXFTQkNhbTJ6WFMxbUtOamt2K2d2SnFJR3NTazdMclR2?=
 =?utf-8?B?aDdMUlBoYlZQYlhmdDJLSlE1L1hTNldqRlFvZmJOaDhob2lIMzVYdUp3OFo4?=
 =?utf-8?B?eXZPazVTZ2lRZ2ljYUpWNzUzT1JuUDBDK1p0YkJvNEpuOVRIVmVzQlFNbjZT?=
 =?utf-8?B?RXByRGxUdzlnSjJ0NXB5SHpEL3FMdURpU3h0c1FKV0JlSnR2UmtCUEkxTnlv?=
 =?utf-8?B?OG8xcWtrQXFPZ0VwREd1VHpIZmc1dnFQeFR6cVp5K3hpdVFGNTRWYkJTRnc5?=
 =?utf-8?B?M2tQUktNYnQrZWdid3FrOWY0SStIZHAwMjZBd0V4SFZyVURUa09wTFZFOThj?=
 =?utf-8?B?SGVDUEg5VUJiZExpRk81ZGJxazBHQ2greGtmcTdoM0k5ZVBoR0JhR2laSnlh?=
 =?utf-8?B?S0w1K2pWNjEzSkQ2M2F3RUU2SVI0QUFpOUdlWjBmUTlPT2pJUkRZYkhnTXBJ?=
 =?utf-8?B?SFdHTU8xWjRQZWJxNnI1NTdrYVJKNklTRTdYRHUvSzFkYk9YelliVm5TK1BW?=
 =?utf-8?B?UTlaUFQ0b0ZVSFlzOXdDVnF3a1V0S0NDc2pVUDltMkNPd0h2THFZZFJaeThC?=
 =?utf-8?B?UkJBYUNtZHpxOG1aZ1hKVUxTOEdYSEQ0TVZRWWd0SmRlOHBIaXZuOXdDVVJC?=
 =?utf-8?B?OUdkYkswNnJIWWhVWStLNUpTVVFWejJZdkV6dHBnZkZ1OGJiRDRYb3VqWGhZ?=
 =?utf-8?B?b2JzMDFXZUNRZUIyejNFbWlTajVRV0lyUE5KZFB5THFXNjU0aTQ3cStkdUlV?=
 =?utf-8?B?bG9nY3VlNXAzL2RVYjh4STlYdHVHaU5USkNCRTNNZldyVVE5cmI2VUdWSXVu?=
 =?utf-8?B?a2xyb0hHSDh1MmZpbllXbEdDdW0rUlRlU1picHJOekRVZzBwN2JmcVpGWmpC?=
 =?utf-8?B?ZnJlK2t3Z0NCcVJKTkZpZlc4MzAvOWErVDArNUx1bDNyczBxTk4rVE16SnNN?=
 =?utf-8?B?SCtLa0RybC9jTWc1RDJJRzNKalM2WWdkL25ic1FXNTVSdXppUlcveHZBRUpN?=
 =?utf-8?B?bVdjNGdLWHI4RWptZjR0R2JVZ1BlMUdxUEVDVVFyZ0E1QlRubXJ6RVpXcVlI?=
 =?utf-8?B?eUJtcHFyK2ZOY3l2WjRvdXR5ZTJ4V3BPRmMrY0J3QXJvREdScE1yL3Y1ZmtR?=
 =?utf-8?B?d1A2Z1YzZ1o2Zk00ZXFuc0luZVV3bzlpM2syRWdXbVFZS2h1RVRuSWorZFFX?=
 =?utf-8?B?Q0hOQW1mbWtmaU4xaG1TdlZZYUZmdlRHSHhqVFcwL2pYdGNCaWxSLzVTWGdY?=
 =?utf-8?B?MjZKVGpCRzJoTVFpL1JvZVpiMmtiZys2UHMzWHl4eXVHRFE5MGw0MFRzK3NB?=
 =?utf-8?B?b1licnI3Vi9DcDIyMlNHRHA0T3hvay9CUjhUZFhncU5RV1NoL1RVREdNMHIw?=
 =?utf-8?B?a3VmSVp1VGFqbEJUNWJQNG41V2NMRWgxaXA0bU44MVl3c0V6T290aWM0R2lP?=
 =?utf-8?B?LzhubU9XQ1hXRzcya1luVkd1NnNnY2J0cE0wcUFHSW1LYjE0SnBMc3graEN3?=
 =?utf-8?B?aEg1MFBtWXpIZ1NkeFdnNEVzOXphRkZ0U2NtdnpCb0hMa1JWeUhOOUtNcm5T?=
 =?utf-8?B?Y1VmQ1VEc0NYbUxMWE1lYTRDMWZGYzlSNGNwb2NTMk9WZkJraGMzT0g4SWkw?=
 =?utf-8?B?cndtaDZwTHplamNIY0tpUS9IWE5rU0I0NERVakxLL1ZDVEsvUW8wVUtLMmg2?=
 =?utf-8?B?b0ZKN0x4ZWZ6cHpSYStlR2hFR0Ivc24xRlRidWR2d0p0T0hLTTBxRC9LNjBk?=
 =?utf-8?B?aC9xWmk0Q3EyaFpKZWQwNTJJT0dQeVpKeHo3QnRLSDkzNWdySXg3U1MwOXIx?=
 =?utf-8?B?TlVKczNiTXBKQm1SV0xmanVYMVlNT25OUDRhV3dEWG00bHNYbjlJVXE3Zmwz?=
 =?utf-8?B?Tk9zUzBjaFJ2WmFaOFpZOVNUYzJmMDFnUHZMMmF3N3k1WUdCUWxzcnBrVG9l?=
 =?utf-8?B?WUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16de1abf-e4ae-4a77-8722-08db6da9e800
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 14:07:51.4233
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /R7v/rG7i0c/j0j9GhnoatrZIk2IIjDdEqXjWmAvG5SfoySh9yMxffKDdoeciOuZUlVueQzOQaY1Mk8PG3U+Wdvx3pPMr1A3X0AwTMHKwtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-Proofpoint-GUID: N6yprjU5w_mCYB5vITrEpLpkuzXh-6R5
X-Proofpoint-ORIG-GUID: N6yprjU5w_mCYB5vITrEpLpkuzXh-6R5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-15_10,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1011 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150123
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 14:08:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60310

--------------lJV8J8g0XWXXUe1Z2phbHyum
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-06-08 11:29, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
> Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
> Alexandre Belloni, Tim Orling, Thomas Roos, Yoann Congal, Michael 
> Opdenacker, Ryan Eatmon
>
> *ARs:**
> *
>
> - Randy: Move bugs from M1 to M2 for autobuilder intermittent issues.
>
Actually: Move *unassigned* bugs from M1 to M2 for autobuilder 
intermittent issues.

Done.

../Randy

> *Notes:
> *
> *
> *
>
> *Medium+ 4.3 Unassigned Enhancements/Bugs: *73 (Last week 72)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)
>
> *AB Bugs: *74 (Last week 70) 


-- 
# Randy MacLeod
# Wind River Linux

--------------lJV8J8g0XWXXUe1Z2phbHyum
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-06-08 11:29, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:3d52edd1-78d6-da69-1bb3-c65b5273a3a0@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
          Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
          Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Thomas
          Roos, Yoann Congal, Michael Opdenacker, Ryan Eatmon<br>
        </p>
        <p><b>ARs:</b><b><br>
          </b></p>
        <p>- Randy: Move bugs from M1 to M2 for autobuilder intermittent
          issues.<br>
        </p>
      </div>
    </blockquote>
    <p>Actually: Move *unassigned* bugs from M1 to M2 for autobuilder
      intermittent issues.</p>
    <p>Done.</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:3d52edd1-78d6-da69-1bb3-c65b5273a3a0@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p> </p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode"><b><br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>73 (Last
          week 72) </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
        week 44)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <b>AB Bugs: </b>74 (Last week 70) </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------lJV8J8g0XWXXUe1Z2phbHyum--

