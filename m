Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F0B0E00DE5; Sat, 26 Nov 2016 07:08:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF57E00DED
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2016 07:08:03 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id p9so54648365vkd.3
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2016 07:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HlMQmsjJ6uDjnGYDftFJ7Xs/UMPL/tLwU0B3iwRrHS0=;
	b=sc/NihY/Uu0JCb/HSd0x9m811JYShlKeKH8mPfYs8TNu9t35pcmskzPrR989c5RVho
	2LtyLvXSEDSBMtR2BsYg8g9YwoYxARyPZSSKrWnqYuxwU2KcTD9Nb34z4iP6BO3TMdtm
	fFhsxT/FSBbfofSoKPYDOIL/w8fbf/subFbXLukgAadHfWPUdnA9K6siZXOdQwsMJUKl
	pk8GDFsVgO+B6N/7/JrBLQfd/y7bXyosRvACLsFtVBcQ8mPLGwngAgOTgv/sHeo+lInI
	11556zQ/yRm1+TtJvHauw505B7sLrNIKfjNFyiQJXpDNDyuibH2ZZKjj5y1K4Qf5P7O+
	pG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HlMQmsjJ6uDjnGYDftFJ7Xs/UMPL/tLwU0B3iwRrHS0=;
	b=ERIfkSDonWMHYj+mWYBojx+p4C24pLNhplxCB0ySIVfp0NkoguKM7FEPXffWnCze+4
	XFcJG8KoitFU2maIlU4NIWWz3BE6kFX7EB1+M05kzBINYxTQE4IpDhAo+GE5duKXs87m
	qxD3Af7YTkX6CMLqxLDkOwPwWCd2nPBdk9C3yvjcrDoHuyIWU1GcDz23cF80Z6R2ZrrU
	tn9iFc8gk542X16zZ8/mLMNcQGPCvR/gvUikb93LFsnU+V9kSpzp0kJneFxJIp3f+5+h
	TmGjCWHI9q2t9ENi5v8u+3akggs3+9yitPjKMK3X61A89uGRJr6Q3/4b/n5mS9cSndRP
	f/vA==
X-Gm-Message-State: AKaTC00G88xnnaWvLHiMxHrMBQ2CDBT/BGIsK3JXX5uC6O7gEnKIAC1gWBXykJx8z31dnTGK5qyd3ncWW05xow==
X-Received: by 10.31.218.68 with SMTP id r65mr4136570vkg.28.1480172883403;
	Sat, 26 Nov 2016 07:08:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Sat, 26 Nov 2016 07:08:02 -0800 (PST)
In-Reply-To: <1DAAFDD0-4691-4EB5-B79A-948B0E9BE705@gmail.com>
References: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
	<CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3E7F626B@AZ-FFEXMB01.global.avaya.com>
	<CAF3SDA5ObWo1siH9-S65kLy85imC+ww6F4tTMih1d7iw5HrDkg@mail.gmail.com>
	<CAF3SDA6xsm6YaFYjb3UiEmTS8=uzk1kCrTQpwMFChRL0bHLi8g@mail.gmail.com>
	<1DAAFDD0-4691-4EB5-B79A-948B0E9BE705@gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Sat, 26 Nov 2016 13:08:02 -0200
Message-ID: <CAF3SDA5mXUVo-a6NjdLM8y8=LCFm=E8GSMj=7E4Sf8ygiP=ADQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Sat, 26 Nov 2016 15:08:12 -0000
Content-Type: text/plain; charset=UTF-8

Now I'm using %Y%m plus PR server.

2016-11-26 2:12 GMT-02:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Nov 24, 2016, at 11:06 AM, Daniel. <danielhilst@gmail.com> wrote:
>>
>> Instead of using SVN revision as version I'm trying to use a timestamp like:
>>
>> PV = "${@time.strftime("%Y%m%d", time.gmtime())}"
>>
>> Does anybody can tell me if this would taint the sstate at each day,
>> making yocto compile it again? Is this safe at all?
>
> I would recommend against it. Use PR server is better.
>
>>
>> Regards,
>>
>> 2016-11-24 13:48 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>>> 2016-11-23 12:01 GMT-02:00 Bipnesh, Abhinav (Abhinav)
>>> <abhinavbipnesh@avaya.com>:
>>>> One quick way would be to use environment variables in both places. So you
>>>> can export them before starting a build.
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
>>>> On Behalf Of Christopher Larson
>>>> Sent: Wednesday, November 23, 2016 19:13
>>>> To: Daniel.
>>>> Cc: yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Extracting PV & PR from Makefile at compilation time.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> On Wed, Nov 23, 2016 at 6:26 AM, Daniel. <danielhilst@gmail.com> wrote:
>>>>
>>>> I have a Makefile with this header
>>>>
>>>>
>>>>
>>>> major = 1
>>>>
>>>> minor = 0
>>>>
>>>> patch = 10
>>>>
>>>> release = -beta
>>>>
>>>> Which compilates someting like libmylib.so.1.0.10-beta shared object.
>>>>
>>>> On recipe I duplicate this information:
>>>>
>>>> PV="1.0.10"
>>>>
>>>> PR="-beta"
>>>>
>>>>
>>>>
>>>> Is there anyway to grab that information from Makefile and setting PV & PR
>>>> according to it? At compilation time? So that I only have to change at one
>>>> place?
>>>>
>>>>
>>>> bitbake wants to know pv/pr at parse time, long before the sources have been
>>>> fetched and unpacked.
>>>> --
>>>>
>>>> Christopher Larson
>>>> clarson at kergoth dot com
>>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>>> Maintainer - Tslib
>>>> Senior Software Engineer, Mentor Graphics
>>>
>>> Thanks guys for the reply.
>>>
>>> Christopher, now I understands. It's an egg/chicken problem. So what
>>> I'm asking is a bit non-sense.
>>>
>>> My case is something like this:
>>>
>>> We have custom board.
>>> At this board some peripherals reside.
>>> Some libraries sit over that peripherals.
>>> I want to be able to get version of that libraries from a running
>>> environment when needed. This wouldn't done by my self, but by other
>>> people that have no good linux knowledge, so that need to be simple
>>> like a "run this command".
>>> I want to be able to get the right source code from version number.
>>> I want to made package updates avaible from package feed, so that
>>> running images can be updated by package manager instead of burning
>>> every new image. This would make my development cycle more
>>> incremental.
>>>
>>> Before the first e-mail I was keeping version at makefile and
>>> generating libsomething.so.X.Y.Z-release. This make it easy to grasp
>>> version from library file name. But at each version the proper recipes
>>> had to be edited. This is boring and error prone. I'd already build
>>> packages like libsomething-1.2.3.rpm that ships libsomething-1.2.4.rpm
>>> because I forgot to update the recipe.
>>>
>>> So now I'm using no revision from SRC_URL (I'm using SVN). And setting
>>> things like below.
>>>
>>> SRCREV = "${AUTOREV}"
>>> PV = "${SRCPV}"
>>> PR = "r0"
>>>
>>> So that recipe editing can be avoided. Since I'm using SVN the
>>> revision number aways increase and I can get system update working
>>> properly.
>>>
>>> I'm about to read about PR service since using SVN revision as version
>>> seems not a good idea for me. The libraries are only used internally
>>> so I do not have to bother about versining API changes. Anyway, thanks
>>> for the feedback
>>>
>>> Best regards,
>>>
>>> --
>>> "Do or do not. There is no try"
>>>  Yoda Master
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>  Yoda Master
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

