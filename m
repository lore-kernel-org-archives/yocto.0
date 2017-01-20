Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67571E003DB; Fri, 20 Jan 2017 10:07:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98C8EE0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 10:07:25 -0800 (PST)
Received: by mail-ot0-f181.google.com with SMTP id 73so61223324otj.0
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 10:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yuTm4cP9rjFTl/WoBoiearvtsZyEENUSGnvMxX/1VVk=;
	b=gdjY4vsaSnsktNjE6KHjXH6BlwbZ/LPvgFz6haJ7ZTW3wtmn9l9OrEFmCP3k1FJHzt
	Kgn9G9F8NwzzthDBbLblr1ZUT+YUWQ3EyFtHxVZiFbU+IwQDu+nq5cbOMkoNGEJmFhKr
	vWOppog8zcklZTCyUMz4OK86HeYNd6ZHHS2yJm5+u6nkducKswMhQ6Bp8Cu6u4BrwYzJ
	ngDsdKPzReyDQ1YbJfefVaKUZYoUQTKYhTSoCrjoWIvamSQXeWfPWOaVe53kLgNj27Yl
	zS1WFM+78Otio8FvaM60ynLVN5kwg4+oNTgdy4Nyy6lEwjCOEKhtiju/TujU6Ym0NJtI
	T8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yuTm4cP9rjFTl/WoBoiearvtsZyEENUSGnvMxX/1VVk=;
	b=VfqmwePXXUyPOx/s64Mzu72h91UGYXcrvMgfjyEcKE/vpu91wu9b4FnY7fYGeeOpRa
	9rAumPqXe0HsvvJlfURhjo7R2s3OyW1B7TDRUBl5ophMkbAHwXml0SfdvUX48Or1dniK
	v7fLLBBr+QxAtmK5k0lpuNT5ZPA/cexy2ieD8kTNqw1P0jquw8g3lnw0sDi+h2vMSaO8
	REv1JkkAuoE0RYbha8XJ40T8kiXIGrAlnWm7DyrL6rdezE/OCRBm8jViqAcEka4aIEsN
	TcKYm12Z0USx9KU0QOoXDA9VgV2Kaq0gMlCujDoxrRsDcEebAhmHNMbeq7MFUlitW1AM
	vYNQ==
X-Gm-Message-State: AIkVDXJpUwx3/DaS23WRkRlZMDOf+LPgoACUcC+JaJY/j/pMqmVPlZpxvpYxMLDyB2OngaL/McJYUUD78H5dKw==
X-Received: by 10.157.43.225 with SMTP id u88mr8545778ota.5.1484935645213;
	Fri, 20 Jan 2017 10:07:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.46.9 with HTTP; Fri, 20 Jan 2017 10:07:24 -0800 (PST)
In-Reply-To: <0ec84843-4240-11c6-0141-5a1365d338a5@windriver.com>
References: <CAFSKS=Mr_Q4xhCKT3YEpkyFBAom9OLw0tD+aAbiuti3fb2nxuA@mail.gmail.com>
	<5e9b5d05-63a0-81c2-f609-8227c5ef6d26@windriver.com>
	<CAFSKS=NWd-oEv__khX1cM74uHiivwnn8f9ATQAgODaXCoc+d5w@mail.gmail.com>
	<0ec84843-4240-11c6-0141-5a1365d338a5@windriver.com>
From: George McCollister <george.mccollister@gmail.com>
Date: Fri, 20 Jan 2017 12:07:24 -0600
Message-ID: <CAFSKS=MPD7eMAW_czMMyNsy2Pgfv4Uu3pG+_-cM9zwgGUu5weg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Correct way to use a custom bsp .scc file in morty
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
X-List-Received-Date: Fri, 20 Jan 2017 18:07:27 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 20, 2017 at 10:59 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 2017-01-20 09:19 AM, George McCollister wrote:
>>
>> On Thu, Jan 19, 2017 at 5:24 PM, Bruce Ashfield
>> <bruce.ashfield@windriver.com> wrote:
>>>
>>> On 2017-01-19 6:20 PM, George McCollister wrote:
>>>>
>>>>
>>>> What's the correct way to use a custom bsp .scc file located in my
>>>> custom bsp layer? For purposes of this email let's say it's name is
>>>> myplatform-preempt-rt.scc. If I specifically add it to the
>>>> yocto-linux-rt_4.4 SRC_URI it appears to get processed twice by scc
>>>> according to the meta-series output file. It then tries to apply
>>>> patches to standard/preempt-rt/base that don't apply. When building on
>>>> a intel-core2-32 platform, intel-core2-32-preempt-rt.scc only gets
>>>> processed once and no incorrect patches are applied.
>>>
>>>
>>>
>>> Something could have broken, I never rule out bugs!
>>>
>>> Morty had some different semantics than the newer branches (which
>>> are simplified compared to the auto-resume logic in old releases).
>>>
>>> That being said, the capability to have a BSP description in the
>>> SRC_URI is there, and did work during that release cycle. To have
>>> it work, you do need the right format in the BSP .scc file, in
>>> particular something with the KMACHINE and KTYPE descriptions will
>>> be seen as an entry point, and not trigger the re-application of
>>> the inherited patches.
>>>
>>> Is there any way that I can see the contents of that .scc file ?
>>> Otherwise, I can spin up a morty build and mock something up
>>> myself.
>>
>>
>> Bruce,
>>
>> I stripped down my bsp later and pushed it github. You can find the
>> BSP .scc (and the files it includes) here:
>>
>> https://github.com/gmccollister/meta-orion-minimal-bsp/tree/master/recipes-kernel/linux/linux-yocto/orion-io
>>
>> The linux-yocto-rt_4.4.bbappend that adds orion-io-preempt-rt.scc to
>> the SRC_URI is here:
>>
>> https://github.com/gmccollister/meta-orion-minimal-bsp/blob/master/recipes-kernel/linux/linux-yocto-rt_4.4.bbappend
>>
>
> Thanks, this helped .. and did show me the behaviour that you were
> mentioning.
>
> I had to scratch my head for minute, since I tested this scenario
> myself when doing the major re-work in morty for how the kernel
> meta data s processed.
>
> In morty I was able to delete about 40% of all the code and simplified
> the processing. There used to be logic that would process the patch
> series, resume processing, wrap .cfg/.scc files, detect BSP definitions
> and do special processing .. etc, etc. It was a rats nest of corner
> cases.
>
> In morty, if something is on the SRC_URI .. it is applied to the
> tree. No exceptions. Hence why when your BSP definition is on the
> SRC_URI .. it tries to reapply all the patches to the tree.
>
> The way that out of tree/recipe space meta data is handled is now
> the same as the way the core linux-yocto 'kernel-meta' is handled.
> You specify either a git repo or a directory on the SRC_URI and
> tag it as having meta-data. Those directories are searched for
> a BSP that matches the machine that is being built. Once found,
> it is processed like any other BSP .. no special cases.
>
> What looks to have been missed was documenting *how* this should
> be done with a directory in a layer, versus a separate git
> repository. If you'd like to open a bug against me, I'll make sure
> that it is documented in the upcoming release (and hopefully on
> morty as well).

Done:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10946

>
> The following change to your bbappend triggered the right processing
> in my case:
>
>  SRC_URI_append_orion-io = " \
> -       file://orion-io-preempt-rt.scc \
> +       file://orion-io;type=kmeta;destsuffix=orion-io \
>  "

Perfect, that works. Thanks for clearing this up!

>
> All that says, is that the directory orion-io (where you had the
> .scc/.cfg files) is kernel meta data, and that it can be found
> in the directory called 'orion-io' after the fetcher pulls it
> into WORKDIR.
>
> From there, it is found, and the configuration, etc, applied to
> the build.
>
> Bruce
>
>
>
>> -George
>>
>>>
>>> Bruce
>>>
>>>
>>>>
>>>> If I don't include it in the yocto-linux-rt_4.4 SRC_URI it's never
>>>> applied at all. I'm wondering if this a new problem with the last big
>>>> push to morty since I didn't notice this before.
>>>>
>>>> I also verified that I can make myplatform-preempt-rt.scc work by
>>>> doing the following (only shows as processed once in meta-series and
>>>> no incorrect patches applied):
>>>> bitbake -c cleanall linux-yocto-rt
>>>> bitbake -c unpack linux-yocto-rt
>>>> Manually copy myplatform-preempt-rt.scc and related .scc, .cfg files
>>>> to the following path:
>>>>
>>>>
>>>> work/myplatform-oe-linux-gnueabi/linux-yocto-rt/4.4.36+gitAUTOINC+b846fc6436_61d7bf47fe-r0/kernel-meta/bsp/myplatform/
>>>> bitbake -c compile linux-yocto-rt
>>>>
>>>> Regards,
>>>> George McCollister
>>>>
>>>
>

