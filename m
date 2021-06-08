Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.1243.1623179535632305113
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 12:12:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=i43tQo7Y;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=179304e382=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 158J9ANe032436;
	Tue, 8 Jun 2021 19:12:15 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3929drga18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 19:12:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrIV40j2OqALe6+G18iqAyaG0RqdUhV8ITtyNXp/Rj0yNUqIjKhxRDR+hKO121s4vONIplRZkdzCphcubqxb9q3Rl97E+zY9IYQ3mdXlxCAvhHI312/jOeLbRJeoSGAPczi69flJm9qyFscFHVDHEbctiFzDbmg+Z4uoe0Jf5AVekf2RHJbHTe3VH8940p8RhC64OcOn0+kA6LZce9IOoNMU4D3wpZMwKNWBUOs3hZciV5TUYUkFFFt787Amt8KsEMkSw6NHttePu9Bj+Bc+NNEjbZB4GtnOSnSUfYrwz7K115/8DwpFdZQrI6NLtzSayNR04Hmr5LE9iOU2wp9CeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRliaTbea2kArUdLlSr/+ULP46o3VJetjot5xFw+1a0=;
 b=BDcrgOYROsq3cGbTYqnExcZZITrV7GJbwneTK2t32YfriL4kineDo+axhCqu+ogH3sg1XF/4Dv+wW+lg4joFJxYqSZ7rLMrB/nSxxi/25wVKhIXYjHKw+6mh0rCra2nY9dsb7FGMZcCv6jeX0aG9p6qzIK7zH12UQZTeAtvA8BQS7j8PUOcB3zZkvhMk5g7xRX01fyYW5zGC3iP/4vSIox/p48lZCfMLbRwYqPpGIE125Rd6QGxKnTc2+VLntFZ1Su1JS9RJcqNc3aNgN9rZVSm0i1W6usKAb18gS7tyrMvsjGSQa8kNcCZ2fKkE6RmhPn7bya2Ax1iBAloKpZeIVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRliaTbea2kArUdLlSr/+ULP46o3VJetjot5xFw+1a0=;
 b=i43tQo7YETb/1PYcOih7kY+w0pRP+uD4VmT0S0ari1j1oiu4OdQsuV0SC6RXsJAjGrAeJVBTuIoBPo6mQELMsMPrBzpzXqomwaFWyeg8kR0EOvCF18+lE35rJMa00HhPPGSpXbJtfm7lFlzbX4sPDG97amO75zjyWOhH4NYmIpY=
Authentication-Results: public.gmane.org; dkim=none (message not signed)
 header.d=none;public.gmane.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4864.namprd11.prod.outlook.com (2603:10b6:a03:2d4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 19:12:11 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 19:12:11 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>, yocto@lists.yoctoproject.org
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <1685B30F5819A655.13459@lists.yoctoproject.org>
 <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <7f1e482e-41e5-fa99-d554-b311f5265823@windriver.com>
Date: Tue, 8 Jun 2021 15:12:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
X-Originating-IP: [2607:fea8:c29d:d7c0::6e79]
X-ClientProxiedBy: MN2PR20CA0017.namprd20.prod.outlook.com
 (2603:10b6:208:e8::30) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::6e79] (2607:fea8:c29d:d7c0::6e79) by MN2PR20CA0017.namprd20.prod.outlook.com (2603:10b6:208:e8::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21 via Frontend Transport; Tue, 8 Jun 2021 19:12:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55b254a3-51d3-4927-b991-08d92ab1518a
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4864:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB4864C5EF711EA495AB81F3039F379@SJ0PR11MB4864.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	V5SXXvbrZj9QLrpyY2FL1DmhxKZfgObLLJTVDIcwiZfELxb1/GaVk27GMGcWbPmxhL8g1+u27FKKsv3YAKfVhQN7RYBtFVJuNCmW7SMiQhZwPVAoySL7pV5bchYioXHh5jyvYfFoUmGhM6C7w6MZtpJro9Bhrd5H2FgzyqizZsDyryEaZsSOmZCs2d9TBDkPnQE5OJBJQJeiZNtCzBBAOtP1ezHILa6O2dg8LATyrRj7Xu8esdJ638bWQ6DjulRNaIk7aA3Va2cMwXpWVQZ+kdf2La9VG26mPkvwpZ1qPJKkDxJoDhWYhJxK7uHzl8PImWJxeTfWR+tRp4IQvwIGg84vXKi2RLFkNCT+BdWKFnHFQ31HttRBNNq6Z6i3hnZMe4QpXzsd7Krb7APwUlGmqBkbFIpFE8aNx+prSXCwDHvtBCNlOiWVNGmcUErZXwzG1N665pSA7umgpfUOjwCj+XFw/6fv2ZQCMtrTorX0256ZUWi1GGqalapPYq8esYvuoSxtpKb1HywT1xmjyhiOQlTMc37EOnGPz58HQwbP5/rgMoqI9Rr4Cm/BfFGvkou4mwBbcW6p0fsYanAnAOzr/Zn6AC1Oxz9FDryuEG9bzhl/IaY/B+dfRc+AuBPxTCRO2U3uNWBFCe8tS8E/2FzO83rARP6lH9S6MyDf8Rf7sjboVWpVHaKiphJtGU+dPE1SpYVkON+jqyvL1PSMszEizk/U5jUhLJv5Ziylo5oVg656qJRhH+5yPl1g3KCREaW9EKgu/RjlobHtlD0eLmvaEtsox7sg34ej44TooRSL2e8rNlNIZ3+60t7B/xfANxy2CTd2YShsHRIL8ET7+JAmIA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(136003)(346002)(39850400004)(396003)(8936002)(478600001)(966005)(8676002)(83380400001)(33964004)(86362001)(2616005)(316002)(31696002)(53546011)(44832011)(66556008)(186003)(2906002)(16526019)(31686004)(36756003)(4326008)(6486002)(66476007)(66946007)(5660300002)(38100700002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R1lVbWF4QWp1ZGg4dGJFanV6b3BOT09yZGxNVDVOQWdXd0VqL0drVlNCUlNw?=
 =?utf-8?B?V0taS3pTM2wxb2tZQTVrekhYbkl5OWJES3Q2Y290NTNqc0NRcXNpVzVXTFFh?=
 =?utf-8?B?dmhmMmUxc3NGeGJ3c2laYmliMUVzWnd4SVQrRVRSTFczcUNSKzVhWnNDVmp2?=
 =?utf-8?B?UXl5SW0xa0FBT1pzOXd2TWxBcFJNc1oraENyR2tKanNDeHhHcC9QNm9IZ0l3?=
 =?utf-8?B?KzJzSkpJeU5xcm5qQVM3WmJRZWROYjlyQXR0WlRuRVFZdGlaRnNtMkxSL0Fu?=
 =?utf-8?B?c2ptaUxHWE1hV3JjTWsvL0Q2R3orRy9ZZTJJYVZlTGN2eURDMXJoWWlNTzZE?=
 =?utf-8?B?bkE5Wkp6cDlvMG4vNHc3YjZ0Vmp6UDgvV014cWJkbmFITFlZa2wvMUtTaE5F?=
 =?utf-8?B?YjQwM3pmSXRjOFF5cjh5SUdDVzh2TEVEZTNhdlNWckJOa0lRRVlvd3ppUHlh?=
 =?utf-8?B?dXdReTM3YkpPWlBQdC9nY24vVklLS0NJQUJDOCt2aElGZk80T2owTjhPWXU0?=
 =?utf-8?B?cXlsSHFpWTlOQjdYSkNQeWNiQWlKSEpOMVhPSXFRSlB0eXUvdmg3T0xwU3pV?=
 =?utf-8?B?V29UdW1MMjlNOHpmQ3dEK2ZMM3crb2ZBc2g1Q2tzRGtESk5WaWFtQUJydmhT?=
 =?utf-8?B?RnpsWGRKNCs5Z0xiOTU3WFZwTmlVT0hXbXBVSFArOXp6K2xCSG9hSVIyK3Ni?=
 =?utf-8?B?b0RzeVVBNTdHM2IzYzkyNjhiaG1MRkJqZ1QyQ3N0TEJDTkU2VWx3NWQ0ZEFh?=
 =?utf-8?B?d1R3bnlkaFFmbThOSWJPQUJKeFROOEpSRE92RHY0S3lmZk1MK24zVGpBVWlr?=
 =?utf-8?B?VStibUxLUVNkRjd6MDRLUm0wc0R5eE54YWF1YzhpaWFjbjhYUGN0emlpZy84?=
 =?utf-8?B?SUNxV2RydExOM3RFNng4OXNFenRYKzhETXIrRFp2bHN0d0g4ZzdkUjdSRmQ1?=
 =?utf-8?B?VEY5WHZiQm1QZTJkVG1IVld4dEtGOTZhazRLc2RrNS9CWjJBcWZHNm5yZHlC?=
 =?utf-8?B?WWVvRWZ1SHpEMTgvTktFS0k5MnlobXRNN0FuU2tGNmtwcWlGVFA5bjFBYUh2?=
 =?utf-8?B?Mno4U0tYRXdzY3VnWXFLaGJqdC9pWXkyTm1pRWFDZEpVSTVjS2FZdFVzV1pH?=
 =?utf-8?B?TDMyTjBkUEpYbUs2ckpQRUZMNFZCY0tET3owdGdvSWtYb0htdFNybHlUTjdI?=
 =?utf-8?B?TkNJOEsxV0d0MkdpV2c2UGhEU2V3OExIdytvRG5PR2tWVWtVZ0tuTm9zVFZO?=
 =?utf-8?B?RHRFZnNuUkprWjNpUmpBbUZhUWdJOUVweEcrNkRmSk95a1hOT3BVZmRWc3Ay?=
 =?utf-8?B?K3pmWFRFVkE5cFAzMWU1WnNRaTdZNHl2TjU4QlF1eFBHOFZxNmVhSlY1SSsz?=
 =?utf-8?B?N1BOOE9FdlZWMWhHVzNpejd3WWdkc0NnMjUvNHpBYUE1UGJIYjFqT1VWOEJn?=
 =?utf-8?B?cU0vVE5OVm9BZk02OEtyekJzNGlPMjFOSGE3TXpzSTVLb3ZQaVh4YWRmd0ZX?=
 =?utf-8?B?b0ZpTzdYdWc4WWlhZkNJTnpkYmJFcWpwYTU0K1FZaVNzRUlQSk5rK1ZUV3Bz?=
 =?utf-8?B?dytnbkpGdW1zajIzQ29vdjFOV0Y3emx6UGpjUksvNGxEZlVRSFZWT0dMSXQr?=
 =?utf-8?B?NG5UWFhjYk1RZWgydCttajdTamdPWFZCRkk1Z1A0eEZBajhjdHVYQm5VdE01?=
 =?utf-8?B?aXNuRGJXclVHcS8zMlg1UktqbGJWQTQ3d202elpxMGdBU3dTQm9zOE1qN0tV?=
 =?utf-8?B?WUsvZzVKbXN5WU1WcHJ2T3ZNRnBPaGRTRkNNM0x0WFNnV2ZNMUVnOFBGUGtR?=
 =?utf-8?Q?/GeCQQh0qVcmGXe1D9VG1kALoAtj2nDWV2oDI=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b254a3-51d3-4927-b991-08d92ab1518a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 19:12:11.6789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +FCnLl9Eektkh4NfTa1zUxevfclgfRTP4kW3jlM/jkyimv96UQwdPGGP8oFjoloX2cHAr1Q9xhqDPEjhj7mAhMoOpvWiVT3A7SxJxjzdYWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4864
X-Proofpoint-ORIG-GUID: -Ba4R2F-yqoxL0RN0Octyun7dbMpRck7
X-Proofpoint-GUID: -Ba4R2F-yqoxL0RN0Octyun7dbMpRck7
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_14:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0 clxscore=1011
 phishscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106080124
Content-Type: multipart/alternative;
 boundary="------------BA65667686CEC327AEAD18FE"
Content-Language: en-US

--------------BA65667686CEC327AEAD18FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 158J9ANe032436


On 2021-06-07 3:27 p.m., Gmane Admin wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> Op 05-06-2021 om 15:35 schreef Gmane Admin:
>> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>>> make already has -l option for limiting new instances if load
>>>>> average is
>>>>> too high, so it's only natural to add a RAM limiter too.
>>>>>
>>>>> =C2=A0=C2=A0=C2=A0 -l [N], --load-average[=3DN], --max-load[=3DN]
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Don't start multiple jobs=
 unless
>>>>> load is
>>>>> below N.
>>>>>
>>>>> In any case, patches welcome :)
>>>>
>>>> During today's Yocto technical call (1),
>>>> we talked about approaches to limiting the system load and avoiding
>>>> swap and/or OOM events. Here's what (little!) i recall from the
>>>> discussion, 9 busy hours later.
>>>>
>>>> In the short run, instead of independently maintaining changes to
>>>> configurations to limit parallelism or xz memory usage, etc, we
>>>> could develop an optional common include file where such limits
>>>> are shared across the community.
>>>>
>>>> In the longer run, changes to how bitbake schedules work may be=20
>>>> needed.
>>>>
>>>> Richard says that there was a make/build server idea and maybe even a
>>>> patch from a while ago. It may be in one of his poky-contrib branches=
.
>>>> I took a few minutes to look but nothing popped up. A set of=20
>>>> keywords to
>>>> search for might help me find it.
>>>
>>> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/=
wipqueue4&id=3Dd66a327fb6189db5de8bc489859235dcba306237=20
>>>
>
> This patch resolves a starvation of a particular resource (execution
> cores), which is good.
> However, the problem I am facing is starvation of another resource=20
> (memory).
>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>> I like the idea. Unfortunately the patch doesn't apply to Gatesgarth, s=
o
>> I couldn't test it. Any chance you would be doing a refresh?
>
> Ok so I refreshed this patch my self and it seems to be working nicely
> (3000 out of 4000 tasks complete), except for one thing: do_configure
> for cmake-native fails and I don't see why. From the log:
>
> loading initial cache file
> xxxxxx/out/linux64/build/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/bu=
ild/Bootstrap.cmk/InitialCacheFlags.cmake=20
>
> -- The C compiler identification is GNU 10.3.0
> -- The CXX compiler identification is GNU 10.3.0
> -- Detecting C compiler ABI info
> CMake Error: Generator: execution of make failed. Make command was:
> xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_68352/fast &&
> -- Detecting C compiler ABI info - failed
> -- Check for working C compiler:=20
> xxxxxx/out/linux64/build/tmp/hosttools/gcc
> CMake Error: Generator: execution of make failed. Make command was:
> xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_f23a0/fast &&
> -- Check for working C compiler:
> xxxxxx/out/linux64/build/tmp/hosttools/gcc - broken
> CMake Error at Modules/CMakeTestCCompiler.cmake:66 (message):
> =C2=A0 The C compiler
>
> =C2=A0=C2=A0=C2=A0 "xxxxxx/out/linux64/build/tmp/hosttools/gcc"
>
> =C2=A0 is not able to compile a simple test program.
>
> =C2=A0 It fails with the following output:
>
> =C2=A0=C2=A0=C2=A0 Change Dir:
> xxxxxx/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/build/CMakeFiles/CMa=
keTmp=20
>
>
> =C2=A0=C2=A0=C2=A0 Run Build
> Command(s):xxxxxx/out/linux64/poky/scripts/make-intercept/make
> cmTC_f23a0/fast && Permission denied
> =C2=A0=C2=A0=C2=A0 Generator: execution of make failed. Make command was=
:
> xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_f23a0/fast &&
>
> =C2=A0 CMake will not be able to correctly generate this project.
> Call Stack (most recent call first):
> =C2=A0 CMakeLists.txt:7 (project)
>
> Crazy. I don't see why making a complete recipe works fine, while making
> a test program during configure fails. Ideas?

When I encountered this failure with the patch, it was because the=20
scripts/make-intercept/make script was not marked as executable.=20
However, there was another failure even after that was changed, claiming=
=20
that an appropriate Makefile parser was not found on the system, which=20
(strangely) seems to be fixed by correcting the script's hashbang to use=
=20
python3 instead of python. Please see my other response in this thread=20
for further action.

- Trevor

>
>
>=20
>

--------------BA65667686CEC327AEAD18FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-06-07 3:27 p.m., Gmane Admin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com">[Please
      note: This e-mail is from an EXTERNAL e-mail address]
      <br>
      <br>
      Op 05-06-2021 om 15:35 schreef Gmane Admin:
      <br>
      <blockquote type="cite">Op 14-04-2021 om 06:59 schreef Richard
        Purdie:
        <br>
        <blockquote type="cite">On Tue, 2021-04-13 at 21:14 -0400, Randy
          MacLeod wrote:
          <br>
          <blockquote type="cite">On 2021-04-11 12:19 p.m., Alexander
            Kanavin wrote:
            <br>
            <blockquote type="cite">make already has -l option for
              limiting new instances if load
              <br>
              average is
              <br>
              too high, so it's only natural to add a RAM limiter too.
              <br>
              <br>
              &nbsp;&nbsp;&nbsp; -l [N], --load-average[=N], --max-load[=N]
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don't start multiple jobs
              unless
              <br>
              load is
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
            In the short run, instead of independently maintaining
            changes to
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
            Richard says that there was a make/build server idea and
            maybe even a
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
        </blockquote>
      </blockquote>
      <br>
      This patch resolves a starvation of a particular resource
      (execution
      <br>
      cores), which is good.
      <br>
      However, the problem I am facing is starvation of another resource
      (memory).
      <br>
      <br>
      <blockquote type="cite">
        <blockquote type="cite">Cheers,
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
      <br>
      Ok so I refreshed this patch my self and it seems to be working
      nicely
      <br>
      (3000 out of 4000 tasks complete), except for one thing:
      do_configure
      <br>
      for cmake-native fails and I don't see why. From the log:
      <br>
      <br>
      loading initial cache file
      <br>
xxxxxx/out/linux64/build/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/build/Bootstrap.cmk/InitialCacheFlags.cmake
      <br>
      -- The C compiler identification is GNU 10.3.0
      <br>
      -- The CXX compiler identification is GNU 10.3.0
      <br>
      -- Detecting C compiler ABI info
      <br>
      CMake Error: Generator: execution of make failed. Make command
      was:
      <br>
      xxxxxx/out/linux64/poky/scripts/make-intercept/make
      cmTC_68352/fast &amp;&amp;
      <br>
      -- Detecting C compiler ABI info - failed
      <br>
      -- Check for working C compiler:
      xxxxxx/out/linux64/build/tmp/hosttools/gcc
      <br>
      CMake Error: Generator: execution of make failed. Make command
      was:
      <br>
      xxxxxx/out/linux64/poky/scripts/make-intercept/make
      cmTC_f23a0/fast &amp;&amp;
      <br>
      -- Check for working C compiler:
      <br>
      xxxxxx/out/linux64/build/tmp/hosttools/gcc - broken
      <br>
      CMake Error at Modules/CMakeTestCCompiler.cmake:66 (message):
      <br>
      &nbsp; The C compiler
      <br>
      <br>
      &nbsp;&nbsp;&nbsp; &quot;xxxxxx/out/linux64/build/tmp/hosttools/gcc&quot;
      <br>
      <br>
      &nbsp; is not able to compile a simple test program.
      <br>
      <br>
      &nbsp; It fails with the following output:
      <br>
      <br>
      &nbsp;&nbsp;&nbsp; Change Dir:
      <br>
xxxxxx/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/build/CMakeFiles/CMakeTmp
      <br>
      <br>
      &nbsp;&nbsp;&nbsp; Run Build
      <br>
      Command(s):xxxxxx/out/linux64/poky/scripts/make-intercept/make
      <br>
      cmTC_f23a0/fast &amp;&amp; Permission denied
      <br>
      &nbsp;&nbsp;&nbsp; Generator: execution of make failed. Make command was:
      <br>
      xxxxxx/out/linux64/poky/scripts/make-intercept/make
      cmTC_f23a0/fast &amp;&amp;
      <br>
      <br>
      &nbsp; CMake will not be able to correctly generate this project.
      <br>
      Call Stack (most recent call first):
      <br>
      &nbsp; CMakeLists.txt:7 (project)
      <br>
      <br>
      Crazy. I don't see why making a complete recipe works fine, while
      making
      <br>
      a test program during configure fails. Ideas?
      <br>
    </blockquote>
    <p>When I encountered this failure with the patch, it was because
      the scripts/make-intercept/make script was not marked as
      executable. However, there was another failure even after that was
      changed, claiming that an appropriate Makefile parser was not
      found on the system, which (strangely) seems to be fixed by
      correcting the script's hashbang to use python3 instead of python.
      Please see my other response in this thread for further action.</p>
    <p>- Trevor<br>
    </p>
    <blockquote type="cite" cite="mid:5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com">
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------BA65667686CEC327AEAD18FE--
