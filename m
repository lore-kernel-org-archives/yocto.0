Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8487E0034A
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 05:18:30 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so5720670vcb.35
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 05:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=8OVnUANEzNcFZUnUm7rkp134zdNud6NbBxcYYnMMU10=;
	b=QAx7uI24eU4CtuJvy4xDrMIBivIRQuPeC3i5DHdSu4u1wEN6r4EIJCAvIKLjsUouyT
	x21XwaDyKK9inWTpOm77xuBrWk+m2IJGygpgbspLQXKKT71JR0Y394pT9RkL8aTLSFYZ
	aRtp9Nls+7THS+iGPfUzm2Ay9MJMP2mRFjUtTtqwInIB7TJQyhWKxOGGXv191P2o7qD2
	iS5JaIZl22ATKR6ggMZe1GLO4LmjtIAyEzhvEXkyS5E819qYXpf7rHb0VdpBZx7q09TU
	dSoLb2imDeRS/eulTUU3EUlltjMZGDxVc7w1WDdOJFNopU+6i+erDXxx24A65h0uX6pb
	x41g==
Received: by 10.52.28.71 with SMTP id z7mr10590267vdg.105.1343045909814;
	Mon, 23 Jul 2012 05:18:29 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id ek5sm10036484vdb.5.2012.07.23.05.18.28
	(version=SSLv3 cipher=OTHER); Mon, 23 Jul 2012 05:18:29 -0700 (PDT)
Message-ID: <500D4114.4060202@gmail.com>
Date: Mon, 23 Jul 2012 08:18:28 -0400
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
	<500AB599.4090003@gmail.com>
	<1342914426.6963.1.camel@trz-ThinkPad-T420>
In-Reply-To: <1342914426.6963.1.camel@trz-ThinkPad-T420>
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
X-List-Received-Date: Mon, 23 Jul 2012 12:18:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/21/2012 07:47 PM, Tom Zanussi wrote:
> On Sat, 2012-07-21 at 09:58 -0400, Jim Abernathy wrote:
>> On 07/21/2012 12:06 AM, Tom Zanussi wrote:
>>> On Fri, 2012-07-20 at 16:55 -0500, Tom Zanussi wrote:
>>>> On Fri, 2012-07-20 at 15:39 -0500, Tom Zanussi wrote:
>>>>> On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
>>>>>> On 07/20/2012 04:29 PM, Scott Garman wrote:
>>>>>>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
>>>>>>>> There must be some basic thing I'm missing.  Nothing that I used to
>>>>>>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
>>>>>>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
>>>>>>>> you can run?
>>>>>>>>
>>>>>>>> I'd thought I'd check before I post a bunch of log files.
>>>>>>>>
>>>>>>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
>>>>>>>> directory and untarred the 7.0 Intel BSPs.
>>>>>>>>
>>>>>>>> There must be a step I'm missing.  otherwise this would not have gotten
>>>>>>>> thru testing before deployment.
>>>>>>>>
>>>>>>>> Jim A
>>>>>>> Hi Jim,
>>>>>>>
>>>>>>> We need more specific information about the error(s) you're seeing.
>>>>>>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
>>>>>>> must be a step you've forgotten.
>>>>>>>
>>>>>>> For example, you are using the denzil branch of meta-intel, right?
>>>>>>>
>>>>>>> Scott
>>>>>>>
>>>>>> I think it maybe that old problem with the n450 SRCREC being blank in
>>>>>> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
>>>>>> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
>>>>>> see if it works.
>>>>>>
>>>>> I updated the n450 in both the denzil and master meta-intel branches,
>>>>> but the tarball still needs to be updated with that fix.
>>>>>
>>>>> Is this the problem you're seeing, or are there other problems you're
>>>>> seeing with this and/or the other meta-intel BSPs?
>>>>>
>>>> As a sanity check, I just now downloaded the denzil-7.0.1 tarball and
>>>> the denzil sugarbay tarball and built successfully without any problems.
>>>>
>>> Also did a fresh clone of meta-intel, checked out meta-intel/denzil and
>>> successfully built n450 with the denzil-7.0.1 tarball here with no
>>> problems.
>>>
>>> Tom
>>>
>> I can confirm I had no issues doing just what you did. tarball for
>> denzil-7.0.1 and denzil clone for meta-intel and default core-image-sato
>> for n450.
>>
>> Next, I cloned poky and checked out the tag denzil-7.0.1, which in
>> theory should match the tarball I ran with in the above test. I cloned
>> meta-intel and checked out the branch denzil, just as above.
>>
>> So this good news is that worked as expected. The denzil-7.0.1 tag
>> equals the tarball.
>>
>> So the only problem is the denzil branch of poky has some problem that's
>> seen in denzil-7.0.1 as it relates to n450.
>>
> I'm not sure what you mean by this - I just did a build of poky/denzil
> with meta-intel/denzil and again, didn't see any problems with that
> permutation either.
>
> Tom
>
What I meant by my statement was I could only build n450 while I use the 
tarball of  poky denzil-7.0.1 with the denzil tracking branch of 
meta-intel, or the equivalent git repository "tag" of poky 
denzil-7.0.1.  I couldn't build the n450 from the tracking branch of 
poky denzil and the tracking branch of meta-intel denzil.  To me that 
just meant that something changed in denzil since the tag denzil 7.0.1 
was established.  I retest again and can confirm that my retest was 
successful.  Here are the steps I used for both test. Not sure what 
changed, but at least it works now:

git clone git://git.yoctoproject.org/poky
cd poky
git clone git://git.yoctoproject.org/meta-intel.git
git checkout -b denzil origin/denzil
cd meta-intel
git checkout -b denzil origin/denzil
cd ..
. oe-init-build-env /build/n450-new
(edit local.conf for parallel options, machine= n450, and DL_DIR)
(edit bblayer.conf for meta-intel and meta-intel/meta-n450 layer)
bitbake core-image-sato

Jim A



>> Jim A
>>
>>
>>>> Tom
>>>>
>>>>
>>>>> Tom
>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>


