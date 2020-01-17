Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.2270.1579295345410627943
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 13:09:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 00HL8n8M016258
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 17 Jan 2020 13:08:49 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Fri, 17 Jan 2020
 13:08:48 -0800
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Andreas M?ller <schnitzeltony@gmail.com>,
        Denys Dmytriyenko
	<denis@denix.org>
CC: Khem Raj <raj.khem@gmail.com>, <yocto@lists.yoctoproject.org>,
        "Burton,
 Ross" <ross.burton@intel.com>,
        Tim Orling <ticotimo@gmail.com>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <2942ed18-9a06-72e7-9af3-91da47f89e12@windriver.com>
Date: Fri, 17 Jan 2020 16:08:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 1/17/20 3:55 PM, Andreas M?ller wrote:
> On Fri, Jan 17, 2020 at 9:21 PM Denys Dmytriyenko <denis@denix.org> wrote:
>>
>> On Fri, Jan 17, 2020 at 09:15:09PM +0100, Andreas M?ller wrote:
>>> On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> On 1/17/20 6:16 AM, Ross Burton wrote:
>>>>> Python 2 ceased being maintained on the 1st January 2020.  We've already
>>>>> removed all users of it from oe-core so the final step is to move the
>>>>> recipe and supporting classes to meta-python2.
>>>>>
>>>>> The following are removed in this commit:
>>>>> - python and python-native 2.7.17
>>>>> - python-setuptools
>>>>> - The classes pythonnative, pythondir, distutils, setuptools
>>>>>
>>>>
>>>> perhaps add them to meta-py2 first before this lands
>>> Just a question: What is the plan with all those recipes which are
>>> going to fail (most headaches I have with old waf): Will meta-oe /
>>> meta-networking..., depend on meta-py2 or kick them out or?
>>
>> What, not calling it the worst patch of the year? And the year's just
>> started... :)
> Denys
> 
> 1. Would you accept an apologize for that one?
> 2. I did not ask for stopping this - just asked how to continue and I
> did that for certain reasons: For example: Few minutes ago we saw a
> series for npm rework on oe-core. Unfortunately npm as is requires
> python2 and many modules. Or the waf stuff: That means somebody has go
> to all the projects and ask them for waf upgrade or prepare patches
> there (and that means not just upgrading waf). So again: How do we
> handle/get rid recipes requiring python2 to build?

Hi Andreas,

We move the oe-core bits that are being removed to
meta-python2, see:
 
https://www.mail-archive.com/openembedded-devel@lists.openembedded.org/msg67634.html

and then it's up to the layer maintainers to either
add that as a dependency or fix things to build with
python3.

Does that seem reasonable?
I expect this will happen over the coming days unless
someone asks for a longer delay or say a week or two.

../Randy


> 
> Andreas
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
