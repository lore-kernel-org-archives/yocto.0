Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6683E009CC; Thu,  9 Jul 2015 06:16:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85779E00978
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 06:16:22 -0700 (PDT)
Received: by iebmu5 with SMTP id mu5so175855595ieb.1
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 06:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hUtpyd6N2SJSaXWyWRgB5l2vjgRgOtwASTBiwopZjmA=;
	b=oudDS5HB9hELBOl/sJPY6SwjwxkHtrwhzKcKOr5r7IarHce3GRx7dnD4oR/S+wBvQJ
	vqUbshJtk2ADCMFXyzgskbev8wCLhR3001YeV9KXLk5VtC7HH8i73QHUHBW9Q4PBBvYE
	ZvG8gckSAzfZ9BoZUzUpuYyWDsEXYJvq60ZDbLg0ftE8CmYBtzZVaA9KcD+PAKAajizB
	P9MRi+6DbL3e0+/zTYUa34+bwBhfb3467gf39yjPoNMY/2b5MUaiinVo55i0KpfOaAPS
	nEWjY+wqlT3Y2fAXXfIuocd886f354/5YySR+qtRQJQklIRkVM/mDYuj2ORJu8B58ROV
	NG6A==
X-Received: by 10.107.47.26 with SMTP id j26mr27151530ioo.17.1436447782310;
	Thu, 09 Jul 2015 06:16:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.109.196 with HTTP; Thu, 9 Jul 2015 06:16:03 -0700 (PDT)
In-Reply-To: <559E2AC9.5050205@dynamicdevices.co.uk>
References: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
	<1436300222-15947-1-git-send-email-rich.tollerton@ni.com>
	<559D0035.6070803@dynamicdevices.co.uk>
	<CAAPegz2NX65g9bE6an3wg0X9qPnRGZsfgZs2r45HNvGtm9yUFw@mail.gmail.com>
	<559E2AC9.5050205@dynamicdevices.co.uk>
From: Chris Morgan <chmorgan@gmail.com>
Date: Thu, 9 Jul 2015 09:16:03 -0400
Message-ID: <CAAPegz19qufOcv-3FjDu5P64Rh=v_b8aBSydP7HfAO7ZA1kh+A@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] mono-4.xx.inc: disable parallel make
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
X-List-Received-Date: Thu, 09 Jul 2015 13:16:28 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 9, 2015 at 4:03 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
>
> On 08/07/2015 21:07, Chris Morgan wrote:
>> On Wed, Jul 8, 2015 at 6:49 AM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>>>
>>> On 07/07/2015 21:17, Richard Tollerton wrote:
>>>> A race was observed during `make install` of mono-native under
>>>> PARALLEL_MAKE=-j6:
>>> Thanks Richard - patch applied
>>>
>>> Chris - I wasn't able to replicate the failure you see under Fedora F22
>>> with PARALLEL_MAKE="-j 6". The build works for me here.
>>> Can you confirm Richard's patch fixes the issue you see on your system?
>>>
>>> Thanks,
>>>
>>> Alex
>>>
>> Hi Alex.
>>
>> I can confirm that it fixes the build for me here under F22 on an 8
>> core machine, although it takes a long time to fail.
>>
>> Seems like something that should be reported upstream to mono. I
>> copied them on Richard's email but haven't seen any response yet.
>>
>
> Hi Chris,
>
> Thanks for coming back to me, at least we have an interim workaround then.
>
> You might consider putting a bug report up on Xamarin's bugzilla?
>
> http://www.mono-project.com/community/bugs/
>
> Cheers, Alex
>

I submitted it under "compilers" with the content of Richard's email
and a note at the time. There doesn't appear to be a component for the
build portion of mono.

Chris

