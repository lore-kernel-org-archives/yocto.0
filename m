Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4464.1619566450229359533
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 16:34:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=AK5Q3JsK;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2079.outbound.protection.outlook.com [40.107.93.79])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C9EAF38C0717
	for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 23:34:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kIw+T4UYG8wjPUbcl8igSj2olVPRs9dBDgqi4vDGTQHrx80oxmiQegS13i78lthD/ozmask0UfL8/e+IVSEve65AJp8eolqVsKLR2HO3kWZn7i1G9mSJcp4GOHIQKhOO/NKa7S2Jm9DefSjjTBTme+alfd3iC/nZuayqb1rCJdGg/uU0JcOxiJh9vOsOj3iqXjSVbml6tYaGbEGIyMWDuFYTLhWe9ly5bYprEISy0SbzuviUbGUFJFCdW+MagyNZ1+CXnrpOFul6Ec76d0BtIlJ377qPC21bAGYjZjl5NrqRymSXuYVx+Z947tbJqHw0KIkfUh1nyUMWPBaFSCywhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kptQK9lLgzhtk8pMm8RF49RRXSTcZPYs9lWKxN2aIRo=;
 b=CRV3XsoSF5mn8JWxPpC4VThtV/58xNNpOvWrBI5jxHmOcDwJE2ce3JbpAnGurVeCxB6DdQOxauDyGH9IQKdtXdBlW+vQw33HfcrummW46HUGLaa6NenZl9aHHxcr/ndX53Bd4PTpmtOK+hXLXv1LMYMx8yalf9V4JVfYDLG3mLsOphmtNe6GAOZ8qEKsE+L1EuWLSeXyw6rd7vssFV+YGoYM+aiwLR/DvYh+2kouyLCqiE4agWi6Dv9eeMqmoPROZ2CnIaUoC1zf9tavZlPJrN+cM6tzDoqGUYHrcV+++7LmVdT4muVH9tw6Nc+r8/KJbI9ZOUfEuILAGtIL6S1AIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kptQK9lLgzhtk8pMm8RF49RRXSTcZPYs9lWKxN2aIRo=;
 b=AK5Q3JsKUG8mxewDBLYeSkjRB7GOGo9YI3kS7lW3fidSTggp56RLVc/1zufb+vPIuofLk9ZA+kljTSbarOui+66H6me9QlxYNLldGMSya7HAma6bYnazJ2/b405QDi7T+n8egzvGD5vQcl0x+B8zYJk+WKEZ4UozDn1ZE1Db7sw=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1675.namprd11.prod.outlook.com (2603:10b6:4:d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.21; Tue, 27 Apr 2021 23:34:08 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Tue, 27 Apr 2021
 23:34:08 +0000
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: akuster808 <akuster808@gmail.com>, yocto@yoctoproject.org
Cc: "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>, Khem Raj <raj.khem@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 derek@asterius.io, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>,
 "Yang, Liezhi" <Liezhi.Yang@windriver.com>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>, "Chen, Qi" <qi.chen@windriver.com>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <9a281e6e-b786-4777-205b-b689bf973f96@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <5a22b82b-b0f6-e263-b60e-4119c868e6e8@windriver.com>
Date: Tue, 27 Apr 2021 19:34:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <9a281e6e-b786-4777-205b-b689bf973f96@gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0248.namprd03.prod.outlook.com (2603:10b6:a03:3a0::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Tue, 27 Apr 2021 23:34:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28db43c9-5048-4ed6-4fa9-08d909d4f3ca
X-MS-TrafficTypeDiagnostic: DM5PR11MB1675:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB167556190AE59D9F2BF3747AF8419@DM5PR11MB1675.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	S6tDmwJnMRSA69L9xg4cFTgJRpcfhtGsSgnZnNy6h8IQqUrmsKxbuKt1tqW+VDyGmefUV4GRRVLjRsv7RniNUO51e6MwgzJfFtojZJe9wwDUwKJMeHvmWkawcej/V3ERkGyZiXR325ZKhR6doTzd1Z9D59IB8T6aD1ejViBGkRbsYf5SezjxvdXxee+NF2Pnsw5azyEjZxkVkTiJ5ADU2PzN7AbkIgyYG7FtnOzC2/TO3C8wta5I1yQbxU10XoAWTPSQTLH/sid10/3Y3Op0s6LT/h82FZD/KEcpinttfwSqdZVARXeqncx5a+E4Rr/1651H/kli+JJR68QkMaop6QRHNIhDX7qMwJeNfQbalX8+iB0NFqRkAjO1pLSGxkcbUMCci4cQIq0mPDAbArJzUAsUy5zUxt6V8jy5RxCgBBHniQIPLqhzj7WIM9P4Q7DcnguSpShB24Y5KhNjSsBDJJfsXm/U9tx+uBbx0JkRkwVrnQMa/WVzUZFDiEhFQTGMzlZHlgs7kaMX/CPgU5rPlBlDxoCbadiN2q/7mMbfrRullVCLR64n3Dg5UBYiuFKDJ0AK2O0D88E4vFelHrzgiDHz3qwBFOdRGhmDXVas0pk8QH/VmtSeCkeXJjleZh9Y8SyUcosif5SDohMIbHy+rGGXjt/0jGLI+Rl0uSO+vZ3IMVCUgNIOXf6bIkOJ8sVMJr+xis40LX3o1yEFmmeV8EbilZ1SlvFc1+l5aA749NE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(39850400004)(376002)(366004)(38350700002)(2906002)(38100700002)(6666004)(52116002)(31686004)(186003)(16576012)(66556008)(16526019)(66946007)(26005)(8676002)(8936002)(53546011)(36756003)(5660300002)(54906003)(316002)(86362001)(4326008)(107886003)(478600001)(31696002)(83380400001)(7416002)(6486002)(956004)(2616005)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?QjBRWWp1emwveTZtN1VUTHBXcGtQdjVJL1RBNGtCYlM0dDZnTWI3SDhqQWJ2?=
 =?utf-8?B?VmU1Y3pKY0t2K3FVZHJoNWFoZlVZdzZQVVZ0ak1NVGc5OVliR2p0Yk91Q0lI?=
 =?utf-8?B?aVBaWEJKb3JHem5oQ1FNWmdGaktxL1BBRTlqSUZzOHhnajBJalBySXdVRnhW?=
 =?utf-8?B?dXpzNC9lVUEwOFNldUNkd0VhblNiQWZ2TDhmZnZ1aDZpdWRaTzhqZ1p4WUlr?=
 =?utf-8?B?RVZYeElQT3ZFQmxDQXlmZDdVZ2RHd0F5Q01vNlNseURkK2wxcGJXUXNzeDlG?=
 =?utf-8?B?YnZpM2xvcmtNVHdNdG93WVNxVU1Bb1FGSi81aVgxR05SZDJPM0w0UmRzaXJF?=
 =?utf-8?B?bFIvMkdJNzVBODRjRFJPWGJRa3JkdFQ5ZnFQQ25lcE4rMmgvZDhIMVAyaUhH?=
 =?utf-8?B?ZFVZRVdNSnpZQmIzTnQ2bzRxMmNUWFZLenNDejdhZnhFaC9uN0s1V2x2M091?=
 =?utf-8?B?aEs5MVc0a25adnFKMUczVGQ0eElUdnIwNmc3SU9QcHZUVEc1cHdSTzdlK29E?=
 =?utf-8?B?UXU3d2g5WTRhejFvbElEUkYyd2hwZU92YnJHendGTUw0bFYrc2wwT21OaExM?=
 =?utf-8?B?UkRhR2pSOFFLTTh4ZC9sMzFncXVka3J2VHl5eXlpdHQ0VHN2V05qWS91WEhh?=
 =?utf-8?B?RkhSMmJEaDdJMFowczZ6T1JEd1QvYWdBWTdydHNhM05Kb2VMY295a3J1Uk0y?=
 =?utf-8?B?T2FmMDkrN3R3R25nc0pLTjROSU0yZ2QwUDhLWktSd2VBOERRRWcvQnRHZjJL?=
 =?utf-8?B?QUc0d045RE1rL2JqUjBaUmpKazVZSEhvRW1YR2N4REE4c3dyUE43eXcvTW9F?=
 =?utf-8?B?eVFmWFp3ZGlQNi9RbXNpa2o5SC9reGlpTUZlUUJtR0Q4OFJENzE5TGtoc0NZ?=
 =?utf-8?B?N0s2NVN3VGdLNU9Ja0lNL3lqdC8vV0F0dkNMQ2hZT01YcnFOZ3Y2VEpja3p6?=
 =?utf-8?B?VWdnTnlPTGdUa2J5NmpIYTYrWllmaEQ2bi9sb1oxSzE0ajU3SHB3SnZ1Q0lY?=
 =?utf-8?B?Y2E2ZDBnU2RvZHhaTUg1c3I1SE1MTUsyZDZNOHg5c1owVHZoa29HZmtCWG13?=
 =?utf-8?B?SlpUSlcrOTd4NU5scDE5cXpNcDJBUXltcXYzbW1jM3ZYT0djbDJRNHZlN2l0?=
 =?utf-8?B?ck5IV2NpWExsdGt6ZzUrblFheW53NXBSOXFYQXdleTcvcXFwT1g2QnQ5blVM?=
 =?utf-8?B?RXg2MlpVNG16d3M0WmJSZWx5N1hxQTBidnFiOGRBcWJjWlQ4Y2tkU041dUw5?=
 =?utf-8?B?SGhwZXppdzB4TUJON08vSTN3OG8rTy91dXFLWXBFRm5ZWUUrVnNJZ1FKUld2?=
 =?utf-8?B?bVR5Ym56MEdGa3k3bjFzcDZQaFNoM1FZeFlmWDB6aXJNQXJkb2gvYUowbjBQ?=
 =?utf-8?B?bzZDYVFHR2duQmsvM3ZZVkNGK25jNSt0VnNrV3lzRFdWbXBsZ1BTY2xtZjV5?=
 =?utf-8?B?WFpTLzN2ak1kQmFtU2FLOVRtODF6elRzdHAvTnV3TDJIKzdWaSs5ZDVqR0NT?=
 =?utf-8?B?UXJSU3YzV3UrSmNnbVpBQXhMeHF6OG9zdXlBZlJiNjJQVHB1S2YxaDk1MHdS?=
 =?utf-8?B?TjhCd3plMjh1VzhOcVl0QysxZVJCZTROVHdsc20yT2FTSk5RaE9WWXlNVW41?=
 =?utf-8?B?US9uR2VLa3hCNUc1WlZrMHZ1aFBkVnB1bHByK2NIMk1rUG1CcUdRRnI1VEc4?=
 =?utf-8?B?ZUVWZEJkQUFESEsySERUYU12d01iSEdyMlBSemN3Zzl5bit3RUN4MkxxekJC?=
 =?utf-8?Q?N5wmNGupN+SHcjcoR0s0ACQXOghSmzCS4Jj/T7p?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28db43c9-5048-4ed6-4fa9-08d909d4f3ca
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2021 23:34:07.9523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GdU2073dLOHrwdnCI1Rf80nyv0aG/qygSuqWtWcwd9VUe88GEZDKlH6/WggM3Azasw9Qxymu4teR8CO0xQDFbdm37sXBblY7ZRgG1xjym1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1675
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

Adding Robert, Hongxu and Qi who are likely interested in this topic
for future releases.

On 2021-04-27 3:03 p.m., akuster808 wrote:
>=20
>=20
> On 4/27/21 9:48 AM, Randy MacLeod wrote:
>> Hi,
>>
>>
>> I've CCed some of the maintainers of more widely used Yocto layers
>> to get comments on about tagging. Please add in people who I may
>> have missed.
>>
>>
>> For a while now, oe-core has had a yocto-X.Y tag in addition to the
>> release branch name. This helps users easily find the exact commit
>> that corresponds to the say 3.3 GA release. There have been some
>> omissions in tagging but Michael and Richard are adjusting the
>> release process so that tagging will happen more consistently.
>>
>> Most yocto layers have not adopted the tagging perhaps because they
>> weren't aware of it so that's why I'm writing this email. Tagging
>> will make it easy to find the first commit for a specific release
>> independent of what the branching policy of a layer is. Layer
>> maintainers sometimes create the release branch in advance of
>> when oe-core is released and by adding the tag, it would make it
>> clear when the layer considers content to be officially released.
>=20
> So the official starting point is what you are looking for?

Yes. It's always bothered me that the tag wasn't there and now
that oe-core/bitbake/... have been doing it, it would be nice to see
other layers add the start-of-release tag. Usually, it's clear
since you can find the first commit that is unique to the branch.
It's often an update to a README or a layer.conf file that you can find
using 'git merge-base' but the tag will make it simple to locate and
in the case of meta-oe, where the branch came well before the oe-core=20
release, the tag may not be the first commit on the 'hardknott' branch.



> Is there any
> expectation to tag for dot release alignment?

It would be really nice to have but it's less important to me at least.
What do you think of tagging dot upcoming releases for
meta-oe/dunfell Armin?

>=20
>> Of course it's up to users to decide if they are going to follow
>> the HEAD of a branch or, for some reason, stick with a tagged commit
>> or private branch off that commit.
>>
> What's more important, tag or branch? Many layers hosted on git.yp.org
> don't have the 'hardknott' branch.=C2=A0 If the discipline to create a =
new
> branch is not their, I have a hard time believing 'tagging' will be hig=
h
> on their list.

I don't expect 100%  of layers to do this but hopefully maintatiner will
listen users/submitters we'll get some traction. Also for those layers
that don't want to maintain a branch they *might* not mind adding
the tag to at least record where they were when Yocto branched.

>=20
>>
>> Are there any concerns about attempting to do this for yocto-3.3
>> and later?
>=20
> Tagging in Poky has a meaning of a fully QA set of sources at a given
> point of time.=C2=A0 It may be interpreted by users that if a tag showe=
d up
> in other layers, those layers are also fully tested.

I suppose but once people are around for a while, they'll come to
understand how other layers don't go through the same QA cycle.

>=20
>>
>> Should we make it a requirement for yocto compliance?
> I think you mean 'Yocto Compatible'. =20

Right.

> Branching is already a requirement
> IIRC as the program is against a specific branch.

Yes, this would be an additional requirement or request.
The benefits that I see I've mostly already explained but
I also like having a numerical uniform string that I can us
to remember the pseudo-random branch names! :)


Thanks for the comments Armin.

../Randy

>=20
> -armin
>=20
>> Should it be a feature tested by the yocto compliance script?
>=20
>>
>>
>>
>> Here's what's in oe-core and bitbake now:
>> $ cd .../oe-core.git
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.1.7
>> yocto-3.2
>> yocto-3.2.1
>> yocto-3.3
>>
>> $ cd bitbake/
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.2
>>
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
