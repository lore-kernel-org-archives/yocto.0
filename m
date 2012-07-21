Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E008BE00342
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 06:58:51 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so4607221vcb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 06:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=OzCyxveETebiMg4NtDPaPqYnKSXzIgP4bmBU3ECMtLg=;
	b=iHXAM3m8MkRd6WVRilfiZ91WxaNgA8LwkT2D8/peC8x2IyHsfJMkHXU9vOD6U8UG1r
	DUCVNklhvMdwU+CVmvKX6w1wBdlhD3IumCkrhmLpoyMr3sdnHnP+o/FkGDfsLIiZjDWs
	bI9LjtWYvdZUeBpuqiVnfpEMkNU/UcPmBPJUvBxwliCmZeAI4B4uF80/mq27tV2P+xae
	03DYTkPadnl+7QA0ypZEOgbSXf6cyWk0NlqDHOjoljANuqaUPHwtoZB77jeJEBX7NamV
	6tyjOaOJqVAx0RiuDAN2HqEO5fLq5Yw0pxJvip5ZibF8Ouu4rwydYKaXsvffeXZO4bR5
	vtow==
Received: by 10.52.95.203 with SMTP id dm11mr6458459vdb.70.1342879130996;
	Sat, 21 Jul 2012 06:58:50 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id n12sm5497535vdu.1.2012.07.21.06.58.49
	(version=SSLv3 cipher=OTHER); Sat, 21 Jul 2012 06:58:50 -0700 (PDT)
Message-ID: <500AB599.4090003@gmail.com>
Date: Sat, 21 Jul 2012 09:58:49 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
	<1342821334.2274.13.camel@trz-ThinkPad-T420>
	<1342843583.6230.3.camel@trz-ThinkPad-T420>
In-Reply-To: <1342843583.6230.3.camel@trz-ThinkPad-T420>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: nothing building under denzil-7.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jul 2012 13:58:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/21/2012 12:06 AM, Tom Zanussi wrote:
> On Fri, 2012-07-20 at 16:55 -0500, Tom Zanussi wrote:
>> On Fri, 2012-07-20 at 15:39 -0500, Tom Zanussi wrote:
>>> On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
>>>> On 07/20/2012 04:29 PM, Scott Garman wrote:
>>>>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
>>>>>> There must be some basic thing I'm missing.  Nothing that I used to
>>>>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
>>>>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
>>>>>> you can run?
>>>>>>
>>>>>> I'd thought I'd check before I post a bunch of log files.
>>>>>>
>>>>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
>>>>>> directory and untarred the 7.0 Intel BSPs.
>>>>>>
>>>>>> There must be a step I'm missing.  otherwise this would not have gotten
>>>>>> thru testing before deployment.
>>>>>>
>>>>>> Jim A
>>>>> Hi Jim,
>>>>>
>>>>> We need more specific information about the error(s) you're seeing.
>>>>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
>>>>> must be a step you've forgotten.
>>>>>
>>>>> For example, you are using the denzil branch of meta-intel, right?
>>>>>
>>>>> Scott
>>>>>
>>>> I think it maybe that old problem with the n450 SRCREC being blank in
>>>> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
>>>> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
>>>> see if it works.
>>>>
>>> I updated the n450 in both the denzil and master meta-intel branches,
>>> but the tarball still needs to be updated with that fix.
>>>
>>> Is this the problem you're seeing, or are there other problems you're
>>> seeing with this and/or the other meta-intel BSPs?
>>>
>> As a sanity check, I just now downloaded the denzil-7.0.1 tarball and
>> the denzil sugarbay tarball and built successfully without any problems.
>>
> Also did a fresh clone of meta-intel, checked out meta-intel/denzil and
> successfully built n450 with the denzil-7.0.1 tarball here with no
> problems.
>
> Tom
>
I can confirm I had no issues doing just what you did. tarball for 
denzil-7.0.1 and denzil clone for meta-intel and default core-image-sato 
for n450.

Next, I cloned poky and checked out the tag denzil-7.0.1, which in 
theory should match the tarball I ran with in the above test. I cloned 
meta-intel and checked out the branch denzil, just as above.

So this good news is that worked as expected. The denzil-7.0.1 tag 
equals the tarball.

So the only problem is the denzil branch of poky has some problem that's 
seen in denzil-7.0.1 as it relates to n450.

Jim A


>> Tom
>>
>>
>>> Tom
>>>
>>>> Jim A
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>


