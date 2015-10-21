Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E76E00A9B; Wed, 21 Oct 2015 11:01:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,MISSING_HEADERS,
	SPF_HELO_SOFTFAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 SPF_HELO_SOFTFAIL SPF: HELO does not match SPF record
	(softfail) *  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC9A9E006F1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 11:00:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 64D0D27E3D0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 18:00:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Cq3-oxtV0yEj for <yocto@yoctoproject.org>;
	Wed, 21 Oct 2015 18:00:07 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B8A3D27E3BF
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 18:00:06 +0000 (UTC)
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
	<55D1A82F.9020506@gmail.com>
	<02548fc1921b30fcdb6a0791bd7a6361@technux.se>
	<55DC2086.5020008@gmail.com> <20151021121203.GB5610@resin>
Cc: yocto@yoctoproject.org
Message-ID: <5627D297.6020309@dynamicdevices.co.uk>
Date: Wed, 21 Oct 2015 18:59:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151021121203.GB5610@resin>
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Oct 2015 18:01:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 21/10/2015 13:12, Andrei Gherzan wrote:
> On Tue, Aug 25, 2015 at 09:00:06AM +0100, Alex J Lennon wrote:
>> On 25/08/2015 07:57, Petter Mabäcker wrote:
>>>
>>>
>>> 2015-08-17 11:23 skrev Alex J Lennon:
>>>
>>>> On 17/08/2015 09:11, Petter Mabäcker wrote:
>>>>> 2015-08-17 09:57 skrev Andrei Gherzan:
>>>>>> Hello, On Tuesday, August 11, 2015, Petter Mabäcker
>>>>>> <petter@technux.se <mailto:petter@technux.se>
>>>>>> <mailto:petter@technux.se <mailto:petter@technux.se>>> wrote:
>>>>>> 2015-08-11 19:04 skrev Alex J Lennon: Signed-off-by: Alex J Lennon
>>>>>> <ajlennon@dynamicdevices.co.uk
>>>>>> <mailto:ajlennon@dynamicdevices.co.uk>> ---
>>>>>> recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++ 1 file changed,
>>>>>> 4 insertions(+) diff --git
>>>>>> a/recipes-kernel/linux/linux-raspberrypi.inc
>>>>>> b/recipes-kernel/linux/linux-raspberrypi.inc index e38d905..8024412
>>>>>> 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>>>>>> b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,6 +6,10 @@
>>>>>> SECTION = "kernel" LICENSE = "GPLv2" LIC_FILES_CHKSUM =
>>>>>> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" +SRC_URI += "
>>>>>> \ + file://build-in-audio.cfg \ + " This one didn't make it. --
>>>>>> Andrei Gherzan -- -- Andrei Gherzan
>>>>> Think you got the wrong receiver =) I notified Alex about this some
>>>>> days ago, Alex can you send up a v2 for this?
>>>> The build-in-audio.cfg patch was just for testing of fragment support.
>>>> It's understood that we're not going to have this build into the kernel
>>>> by default, although I do still need to find some words to add to the
>>>> README on audio routing setup and so forth.
>>>>
>>>> I started testing a build with master over the weekend and it built OK.
>>>> Just need to find some time to run up a couple of kernels and will
>>>> resubmit the v2 patch with Petter's enhanced commit message.
>>>>
>>>> I don't have an RPiv1 around at the moment but I will probably double
>>>> check the kernel does still actually build for RPiv1 machine
>>>>
>>>> Cheers,
>>>>
>>>> Alex
>>>>> BR, Petter
>>>
>>> Hi Alex, Any news for the v2 changeset? Would be awesome to get the 4.x
>>> integrated soon.
>>>
>>
>> Hi, yeah I got a little sidetracked I'm afraid. Turns out
>> core-image-sato isn't building in master any more due to a new
>> dependency on libexpoxy which in turn requires EGL.
>>
>> Anyway, so I did successfully build 4.x and 3.x kernels for RPiv2 in an
>> rpi-xxx-image. I just didn't get around to running them up although I
>> see no reason to think they won't.
>>
>> I'll try to take a look at this, as I like you would like this signed off :)
>>
>> Cheers, Alex
>>
> 
> Any chances this is still coming soon?
> 
> --
> Andrei Gherzan
> 

Yes I'd like to wrap this up too. Can we take a step back first and
revisit the earlier patch-set to update to 3.8.16 and add support for
4.1.3 kernels first? If so I'll try to test with what seems to be the
latest long term kernels on kernel.org, 3.8.22 and 4.1.10.

With that in place I can then add the kernel fragment support on top.
(And then start looking into Dockerification which looks intriguing... ;)

How does that sound?

Best, Alex

