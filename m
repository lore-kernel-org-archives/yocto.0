Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.1207.1623179327918772745
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 12:08:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mEyA6T87;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=179304e382=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 158J8kF6023957;
	Tue, 8 Jun 2021 12:08:46 -0700
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2109.outbound.protection.outlook.com [104.47.55.109])
	by mx0a-0064b401.pphosted.com with ESMTP id 391qkqgytr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 12:08:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dy3zONfdllkkZlAAPTjZhLmn9fC2xJck5VAheAx4jh8HP6c9vrreRP97uuuzrc5rZsVVobISRGUFk8BdvHVSavPR9WLKdQ6/FjXNjsXjhRHjsuQYK+dPbM9r966HscRlY6k1twQEJq2fO1Nq9RKTq841jsA2zFtF41Ykt8W5plb5mGV7HDRI4cCZfvfPThGOW+eyaEcf/drHf1Rs69rwjUv+dvCk4zQ4M8tPG+JvaysfjLPzWslhCahjayqJLKKgcVJ24x7vdIg2Iq0Yg2+u4uCfV4tL/t4eogx3saZDN0Lg8pDAE8KWP69XRFQSoji0/H2k4vxASYLComffpV4frA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uthF2MX0JzL3br3ORjPCowz/Nv1AqMoGasXUT+jZYq0=;
 b=hq9ndvMW4aJQD6rgjWiJCQfT1Ap0khrdNrWXt5wIGNQnrw6Qqt7aiLOD/HQDz0K13Eq9MANM2nle2w6UXYm+Og7CEH6AopiGxPeDa+JkV22jNftOAD6oWvBD1TI68QMUVrhuVKxa5IXlycw5myI5IspUId9y31OaMjo/8jpOyNprytLoQZVORDzKDsMsEgumPmTK3YtU18Pg2wdE+tl6/L33Wt2rfNUszIfcyxJS8rhkIgzfItP7+VdO+2usov+osSItb1O7rXyq27zG7bYW6BxRSSbQieGEymHdrEn11+/kRAVI/cjoFJfYU0pFgHSlww1SgxT//8VUCSaAoYfOQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uthF2MX0JzL3br3ORjPCowz/Nv1AqMoGasXUT+jZYq0=;
 b=mEyA6T87J2fhw6m8yHOqn6xoe3/er5ve2LXZrKfq0MlDuGrRsR6Kf3cmYIbrK+TMvvEhejF0u3sjLBVhyqhWAbCGHabSO3rqJIu4eHoGoR14M4F3HisPNliJKQiUzZ+a+sKASMXwkHRLpCF/WyBdr453nq3pzYnSaurv6qlnFfA=
Authentication-Results: public.gmane.org; dkim=none (message not signed)
 header.d=none;public.gmane.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Tue, 8 Jun
 2021 19:08:40 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 19:08:40 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>, yocto@lists.yoctoproject.org
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <5d293285-7ee4-8ebe-8d63-78415b4de403@gmail.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <a6dde982-026e-27ca-f1d6-0208aa8230b7@windriver.com>
Date: Tue, 8 Jun 2021 15:08:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <5d293285-7ee4-8ebe-8d63-78415b4de403@gmail.com>
X-Originating-IP: [2607:fea8:c29d:d7c0::6e79]
X-ClientProxiedBy: YT1PR01CA0077.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::16) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::6e79] (2607:fea8:c29d:d7c0::6e79) by YT1PR01CA0077.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21 via Frontend Transport; Tue, 8 Jun 2021 19:08:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ede0f74b-39cb-4500-7c91-08d92ab0d385
X-MS-TrafficTypeDiagnostic: BYAPR11MB3255:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB325554640081A02D5D9BD5DD9F379@BYAPR11MB3255.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wMyaTYY4wX2H9ykGqtu9E3WHgT5Q3Fgz9kp8dhmu6jT+iWWR4jbfQA0OPWAG7iE9luRRB6hHGfWRqXLg9WrRWTPjc5NJ0A1jPPSd5um2+YBwTQHNaVdge/dzvW2yn65JuPGBzFqyjfqZJOM2vC0Mb/UalM4Us41/NAe0T7FsCSGQ5+i0XXzotyRdQKxOrAMbv3kZqL6I5w4IkxPlrt6UCHTJQUrKPsqom9S9XOEVv16FyHbgG6ZUjqXudSaFCZ6dCzVECVm54/Y9fmbPuK69M+mCnrwp7ltNtp188AP76yUmen9ERU9wLfTY8bL8udsXHmwVZoUhWLg02mzV3Nz/rVWT5Buz2V6ZQmfazBWTgjWZak2BXkAxIFOrdMVUojxTRBkSalAYMNer7sDkbS5MvgNWYDEwQUzyHM/mnmv7hkm6J+XMWYcTZYX4j1pf1rCIvSsy0IEbwBWRYZ2BSfO9WIaHxw6zwW+JPdzL7SX993o79vF/NMIRZX+/G3WwQpRXosasv7IE1NLG23nmLZfmIw9vfo3a8wP+dANL1XSN27c8ZqzWrXC36Wo1yyOtBN8c8Cbpn6hJbL8a/B7TOGt7eHnVszr2SiEoxGa/eWs05L3Cvx4G8TZmaij7K1wu34VTdb8841BkYfLz1t7nUyx5mqRLVSJFNHE4h1uNsXu9EnxVPhi+/l55yWmpSOR6uPsP7g0e3kzzBwyIp/aLvmSmx3rpNh6xUxJsom5suMAN+kprdbgd8u8jznUWgXPcxeXV3GfGNxSSP/vTW96HiXzQ6NExcXlkfO03qVuj2lcY2oSJzzuoGA6etrtJMsZADGzDxVwgiGRb/hbpEqkSnGuTFQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39840400004)(366004)(136003)(376002)(316002)(2906002)(86362001)(33964004)(31686004)(478600001)(966005)(38100700002)(5660300002)(44832011)(53546011)(36756003)(6486002)(186003)(16526019)(8676002)(4326008)(8936002)(66556008)(66476007)(2616005)(83380400001)(31696002)(166002)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eGNCSVZxUEJjdHlsUDNRbGNJKzFVTFdSODZnUk1XYTBCaFAxaU1uYTNlNTBa?=
 =?utf-8?B?OCtVMlFlZWxwOGtqdlkyM1Z6cWVYekVhWkdJdlJFVXBYUXNvb0V6OVd2aHBx?=
 =?utf-8?B?d3gzSTJlanF1OE1FcHJVdk9mQ0dXWWdXeWJkelNnVkhVQUl4QUIzQVJnSU9j?=
 =?utf-8?B?U2ZIT1ZGWTFwRFh5VDZKTThYcnJZc0U4TkdOUkQ3Z0w1ZG9rbWdibnlzT3VZ?=
 =?utf-8?B?WFI1TVIxQWFJRFppbGhyMzFvNHJsSm14RUhXbjVScElrUzUzdXBMcFZBRU9K?=
 =?utf-8?B?cVVkYlVYdDZnY1RhUTl1ZlVJRWpzTlZsbjBGUE9mWENBUDhzUlhFbjI2cWJW?=
 =?utf-8?B?b3gwSCs5cCtLT25NTUExVlNjSDIxSlR4eXkwaWEyRy8zbmVBem9uNlZHMm9Y?=
 =?utf-8?B?MnhnUGwzOTV1VjdOeDZING9ISkxWcHo1TjhTM1U3MC90Wk9ZaFN2OFdjVGJL?=
 =?utf-8?B?OXM5R3cyZlY1YlZMSTdZMkhKUHAzeUxtOWFaY1lydHNndUs0cHphcG1CZWpN?=
 =?utf-8?B?WmFMLzZaWUdpTkhtbzVxV1QyVCtMUi8zVitObVFkU09LRm5WUERoUjVuSisw?=
 =?utf-8?B?bXk4RnIvMHkveHo3T2IxMDIyVUFzcnhOZWg0dlJCblN2dGRXUjRtMUthWDYv?=
 =?utf-8?B?bXpzdUVKOWFmQTNtWmpnWWxrTzAzVGtBc3VrR2U3RGlrWnhRK29FdnpVeStC?=
 =?utf-8?B?akV2MFJRTHM2emhKbWpLNXgxSzA4NlFLYXNWU2cvb3JIUjFzRE1NdWhwdVJY?=
 =?utf-8?B?d3NCMFBhS2dOQ2J6WjdvNG1qeGxET2I4YmU0TTI3V21XWHZLbmlTaFliT0ho?=
 =?utf-8?B?R3dFaTc0SERuQzB5ck00VUhJNUl1NWtmdmZaMnVDV2FiTXRGelZGdWhscTQv?=
 =?utf-8?B?eTUwSTlrTTVJNDJsTWZQT3o4c0JrTWdYVG1jeVVJTUFVY1dQdXNzak5MWTJx?=
 =?utf-8?B?Z3NFRHRzQzlCSDk1UVk0WTd2NlJrZEpWN3RVcGY0blk4dHZMQ1huM1I4YTFM?=
 =?utf-8?B?UVhQNW56Szh1dW1jRjZKVUxXbVBHSE9jNkVmMW9wZmdrY2Z6b1VrK1pZN0p0?=
 =?utf-8?B?ZkNxQ3lsUFJ3UlZIa2Mraml3aHBxbEpLdnZlQi9qTU5kcElpcTZFT2xsYjgy?=
 =?utf-8?B?NlVyRXZVN3BVa0dpcEJCNmZDZnpJeHNFSEI2OFA5cTFpc2FSajJBR1hJNHNv?=
 =?utf-8?B?MzJBMjNyOURzSUJUTUI1TVFjTHJ3WE9EcE1FVmg4ODZsblZqYkIvVnpDbUox?=
 =?utf-8?B?amJTVjhPMkdIWWRNTlI2VmVqYmc1RlhrNjUzbC9xT2hhMzNaaTVpY0JYc0hS?=
 =?utf-8?B?azBhRXlFSzNPRERwTy9YYTF4S2o2RFlxUm9xODJFWXBzSmFmdG80MTRMT3hu?=
 =?utf-8?B?dWhETHBSa1MxVUJ3eXVyT0NJNnlhUzZXZmVIMm5jb1lIZXRVSzdMaHdnN3hh?=
 =?utf-8?B?bzg2TTU5ZVU5bUJkZkIxMGhINlhwQS9YUEYzU000Y0FKRi90eGVidHRXc0E4?=
 =?utf-8?B?VzBvcmhBR0E1L3BtcHY1K1RaMGhiaTJwQ1FZTXQ2RXNRVnp1cHlHaXVTR1pI?=
 =?utf-8?B?b0J5Y0JubTVwbFBOZ3NlNXNybHFxaGp3WEttd2VCL3l3MFV0MUlOUDZqamdO?=
 =?utf-8?B?RXJKM01HOUNpWW9hTzU3dE5PYjlOdjdvazBqci9YNm8zdHVXa0JWL29NSEdT?=
 =?utf-8?B?WEJiWWp2RmV2YnliSWtkUVgrUStiYW1WVU56MDFuNFRybzlDTEpZQVlLak5x?=
 =?utf-8?B?dUVEWXU0dWlIb2pPMkF6UjFwM1JrSkVrNU9mdUtiUHNFUm1teXZodkY3Vld1?=
 =?utf-8?B?RFpzQzlocldzbGJtUy81dz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ede0f74b-39cb-4500-7c91-08d92ab0d385
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 19:08:40.3186
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fS2F4dDNEgcJsdQzGB2fVeJC/0eNv0hjoH87/1VeuihSZjqNWEtX6c5iLHDlg3HjAhw2GxEcf0m7rTYp+YtnHlYAaCHXJLXcPGMbq3fLVT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
X-Proofpoint-GUID: 89W5uFpEDKmpGPeHFkPLKlPzSZ_T0xUA
X-Proofpoint-ORIG-GUID: 89W5uFpEDKmpGPeHFkPLKlPzSZ_T0xUA
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_14:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1011 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106080124
Content-Type: multipart/alternative;
 boundary="------------BBAE3B80E8CFC557EB65149A"
Content-Language: en-US

--------------BBAE3B80E8CFC557EB65149A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 158J8kF6023957


On 2021-06-05 9:35 a.m., Gmane Admin wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>> make already has -l option for limiting new instances if load=20
>>>> average is
>>>> too high, so it's only natural to add a RAM limiter too.
>>>>
>>>> =C2=A0=C2=A0=C2=A0 -l [N], --load-average[=3DN], --max-load[=3DN]
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Don't start multiple jobs un=
less=20
>>>> load is
>>>> below N.
>>>>
>>>> In any case, patches welcome :)
>>>
>>> During today's Yocto technical call (1),
>>> we talked about approaches to limiting the system load and avoiding
>>> swap and/or OOM events. Here's what (little!) i recall from the
>>> discussion, 9 busy hours later.
>>>
>>> In the short run, instead of independently maintaining changes to
>>> configurations to limit parallelism or xz memory usage, etc, we
>>> could develop an optional common include file where such limits
>>> are shared across the community.
>>>
>>> In the longer run, changes to how bitbake schedules work may be needed=
.
>>>
>>> Richard says that there was a make/build server idea and maybe even a
>>> patch from a while ago. It may be in one of his poky-contrib branches.
>>> I took a few minutes to look but nothing popped up. A set of=20
>>> keywords to
>>> search for might help me find it.
>>
>> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/w=
ipqueue4&id=3Dd66a327fb6189db5de8bc489859235dcba306237=20
>>
>>
>> Cheers,
>>
>> Richard
>>
>>
> I like the idea. Unfortunately the patch doesn't apply to Gatesgarth, so
> I couldn't test it. Any chance you would be doing a refresh?

I have reworked the patch and I'm doing some testing with it right now.=20
Once I have collected some data (and possibly reworked it further,=20
depending on results), perhaps I can have you test it out as well? That=20
should be in the next day or two.

- Trevor

>
>
>=20
>

--------------BBAE3B80E8CFC557EB65149A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-06-05 9:35 a.m., Gmane Admin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5d293285-7ee4-8ebe-8d63-78415b4de403@gmail.com">[Please
      note: This e-mail is from an EXTERNAL e-mail address]
      <br>
      <br>
      Op 14-04-2021 om 06:59 schreef Richard Purdie:
      <br>
      <blockquote type="cite">On Tue, 2021-04-13 at 21:14 -0400, Randy
        MacLeod wrote:
        <br>
        <blockquote type="cite">On 2021-04-11 12:19 p.m., Alexander
          Kanavin wrote:
          <br>
          <blockquote type="cite">make already has -l option for
            limiting new instances if load average is
            <br>
            too high, so it's only natural to add a RAM limiter too.
            <br>
            <br>
            &nbsp;&nbsp;&nbsp; -l [N], --load-average[=N], --max-load[=N]
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don't start multiple jobs
            unless load is
            <br>
            below N.
            <br>
            <br>
            In any case, patches welcome :)
            <br>
          </blockquote>
          <br>
          During today's Yocto technical call (1),
          <br>
          we talked about approaches to limiting the system load and
          avoiding
          <br>
          swap and/or OOM events. Here's what (little!) i recall from
          the
          <br>
          discussion, 9 busy hours later.
          <br>
          <br>
          In the short run, instead of independently maintaining changes
          to
          <br>
          configurations to limit parallelism or xz memory usage, etc,
          we
          <br>
          could develop an optional common include file where such
          limits
          <br>
          are shared across the community.
          <br>
          <br>
          In the longer run, changes to how bitbake schedules work may
          be needed.
          <br>
          <br>
          Richard says that there was a make/build server idea and maybe
          even a
          <br>
          patch from a while ago. It may be in one of his poky-contrib
          branches.
          <br>
          I took a few minutes to look but nothing popped up. A set of
          keywords to
          <br>
          search for might help me find it.
          <br>
        </blockquote>
        <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&amp;id=d66a327fb6189db5de8bc489859235dcba306237">http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&amp;id=d66a327fb6189db5de8bc489859235dcba306237</a>
        <br>
        <br>
        Cheers,
        <br>
        <br>
        Richard
        <br>
        <br>
        <br>
      </blockquote>
      I like the idea. Unfortunately the patch doesn't apply to
      Gatesgarth, so
      <br>
      I couldn't test it. Any chance you would be doing a refresh?
      <br>
    </blockquote>
    <p>I have reworked the patch and I'm doing some testing with it
      right now. Once I have collected some data (and possibly reworked
      it further, depending on results), perhaps I can have you test it
      out as well? That should be in the next day or two.<br>
    </p>
    <p>- Trevor<br>
    </p>
    <blockquote type="cite" cite="mid:5d293285-7ee4-8ebe-8d63-78415b4de403@gmail.com">
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------BBAE3B80E8CFC557EB65149A--
