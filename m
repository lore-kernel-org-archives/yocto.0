Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.1308.1579465614283927649
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 12:26:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 00JKQnal014391
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 19 Jan 2020 12:26:49 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Sun, 19 Jan 2020
 12:26:48 -0800
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Andreas M?ller <schnitzeltony@gmail.com>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>
CC: Khem Raj <raj.khem@gmail.com>, <yocto@lists.yoctoproject.org>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <CAMKF1sodwwma8WVS92UBJ9AhtTL2pzqtFuDp=qvyc+VE_YD_9Q@mail.gmail.com>
 <5d25dc833a9d914ae319efd55930ba05088ad40b.camel@linuxfoundation.org>
 <CALbNGRQq60UVTOn75Gr5xVd0iou+-q78euyQv5A1b6TAa7Hwvw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <57aa911d-0d3a-0d46-a4e9-193117f0ade0@windriver.com>
Date: Sun, 19 Jan 2020 15:26:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRQq60UVTOn75Gr5xVd0iou+-q78euyQv5A1b6TAa7Hwvw@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 00JKQnal014391
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 1/19/20 12:05 PM, Andreas M?ller wrote:
> On Sun, Jan 19, 2020 at 2:59 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Fri, 2020-01-17 at 13:28 -0800, Khem Raj wrote:
>>> On Fri, Jan 17, 2020 at 12:15 PM Andreas M=C3=BCller <
>>> schnitzeltony@gmail.com> wrote:
>>>> On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com>
>>>> wrote:
>>>>> On 1/17/20 6:16 AM, Ross Burton wrote:
>>>>>> Python 2 ceased being maintained on the 1st January
>>>>>> 2020.  We've already
>>>>>> removed all users of it from oe-core so the final step is to
>>>>>> move the
>>>>>> recipe and supporting classes to meta-python2.
>>>>>>
>>>>>> The following are removed in this commit:
>>>>>> - python and python-native 2.7.17
>>>>>> - python-setuptools
>>>>>> - The classes pythonnative, pythondir, distutils, setuptools
>>>>>>
>>>>>
>>>>> perhaps add them to meta-py2 first before this lands
>>>> Just a question: What is the plan with all those recipes which are
>>>> going to fail (most headaches I have with old waf): Will meta-oe /
>>>> meta-networking..., depend on meta-py2 or kick them out or?
>>>
>>> I am a bit apprehensive about creating direct dependency, since
>>> that would prolong the support, so I would still like to use rest of
>>> this
>>> dev cycle to fix as many recipes as we can to not depend on py2
>>> and I will publish the failing recipes, so far we have had no failure
>>> run for all meta-openembedded layers on master. In the end perhaps
>>> we will be able to blacklist the recipes which still need py2 and are
>>> not
>>> migrarted to py3, or if we end up with  a lot of critical ones then
>>> we might want to create dep on meta-py2, hope that clarifies my
>>> thoughts
>>> on course of action.
>>>
>>> but I am sure, if you have needs for py2 then including meta-py2 will
>>> be the place to go and I hope that it will provide the existing
>>> functionality that's being pushed out from the core.
>>
>> I have to admit I don't know what the best solution for meta-oe is.
>>
>> If py2 pieces are left in meta-openembedded, it may be best to move
>> them to a separate sublayer to make the issue clearer?
>>
>> FWIW I did remove some python binding pieces in meta-gplv2 to work
>> around problems, a similar strategy may work for some things too?
>>
>> I have however merged the patch for OE-Core. The reasons:
>>
>> * We've known this was coming for some time
>> * OE-Core is due to build M2 this week
>> * The change has long been scheduled for M2
>> * Its a forcing function, we are going to have to deal with this
>> * This gives meta-oe time to resolve the issues before April
>>
>> Sorry Khem!
> To avoid double efforts: I will start with mozjs now. Did work on that
> already and tried to build it from firefox-esr V68.xx. That did not
> work because:
>=20
> * We nee meta-rust for that

I've been re-basing the merge of meta-rust to oe-core and
adding additional meta-rust commits so  while I could send it
to the list, Richard wants a reproducible build test so
I'm figuring that out.

../Randy

> * Python scripts were not upgraded to python3 (because the moved to carg=
o/rust)
>=20
> Hope to get it working soon...
>=20
> Andreas
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
>>
>>=20


--=20
# Randy MacLeod
# Wind River Linux
