Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98222E00956; Sat,  4 Apr 2015 16:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5308CE006E5
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2015 16:43:11 -0700 (PDT)
Received: by ignm3 with SMTP id m3so1084492ign.0
	for <yocto@yoctoproject.org>; Sat, 04 Apr 2015 16:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vj1MuyND3sdA6EtZBIoD44pyZ14SGU4784uFGUc/4Po=;
	b=fG5MoqHIwFcXZ31F3vuYh0Oh7Q6HWn6t0++oMaIQjEDaHEOTVmrtlUanrnoTHSncfK
	M9iFgF8zGa+YCS4bPPTtfJsNNJ5bI1gQqPMLY/OMH0NDYsq9kfiTuphUBekBdtQqcrfL
	V74KTiHrysJ4KNc7v/vTxxnYnQhKm+38c7Too7KEXj+gD7lENXR+W2tcl9UmFKXQ6ux1
	rGnYtvvLOlP4ZVbouJanBxKcny5YanUXbh0tdDvTcNVHDhQ21V41YBZll2Uq5Nm4y95D
	ipSiBlkSxPz57XwY6Uni/k7bvdoDb8MRNXQVsnAh27q9WuXu9Pjt0MkQRXMkg3jCVVuZ
	6RaQ==
MIME-Version: 1.0
X-Received: by 10.50.49.43 with SMTP id r11mr37624916ign.18.1428190990591;
	Sat, 04 Apr 2015 16:43:10 -0700 (PDT)
Received: by 10.107.158.20 with HTTP; Sat, 4 Apr 2015 16:43:10 -0700 (PDT)
In-Reply-To: <5520419B.4070100@mail.com>
References: <551EF93B.7080307@mail.com>
	<CADkTA4OTkNRUQuiFK7k2qq2CXB+E+apWB3i92_K4rsYj0vZp-w@mail.gmail.com>
	<5520419B.4070100@mail.com>
Date: Sat, 4 Apr 2015 19:43:10 -0400
Message-ID: <CADkTA4O4iBzNaKzFQGgi+f3uVuhF0F_PS6MP8hcVKOdc1bVEkQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Liam Maps <cca_liam_maps@mail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [kernel config]: specified values did not make it into the kernel's final configuration
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
X-List-Received-Date: Sat, 04 Apr 2015 23:43:19 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Apr 4, 2015 at 3:55 PM, Liam Maps <cca_liam_maps@mail.com> wrote:
> Thank you for the info. But who sets the .config "Requested value" of a
> configuration variable and who then overrides it and sets the "Actual value
> set"? (The quoted text is from the [kernel config] warning.)

The kernel development manual covers the details, but the linux-yocto
tree carries
meta-data that describes the baseline BSP (patches and configuration), and then
configuration fragments and more patches are applied on top based on what is
specified via recipes.

Either those fragments, or the baseline configuration can have kernel config
values that are missing dependencies or aren't valid for a given kernel (i.e.
right after a new version has been introduced, there is some initial skew to
adapt to new options).

I only just re-exposed the configuration audit details to the build
output, so what you
see now, was happening before .. it was just hidden. Now that it is visible, the
motivation to keep things up to date and clean is there.

>
> After a bit of research this is what I think I know:
> For my example when working with the master branch and building for
> BeagleBone, the CONFIG_ARCH_NR_GPIO config value gets set to 512 in the
> meta/cfg/kernel-cache/bsp/beaglebone/beaglebone.cfg. So the beaglebone bsp
> for the kernel.

Correct, that's the baseline BSP configuration I mentioned above.

> Somewhere that value then gets set to 0. But I can't find out where and by
> who. Shouldn't the bsp values be the final ones? It's the bsp who knows most
> about the target device after all. Or am I mistaken?

That's the actual kernel Kconfig* values. They have a range restriction that
is changing what is specified in that fragment to a value that is valid for the
kernel in question. So no matter what we set it to, the kernel configuration
system (i.e. korg, not yocto) has the final say. That's more than often what you
are seeing when those values change.

Bruce

>
> Thank you.
>
>
>
> On 04/04/2015 08:10 PM, Bruce Ashfield wrote:
>>
>> On Fri, Apr 3, 2015 at 4:34 PM, Liam Maps <cca_liam_maps@mail.com> wrote:
>>>
>>> Hi,
>>>
>>> During the build of a core-image-base for BeagleBone using the master
>>> branch
>>> I was presented with the following warning:
>>>
>>> "WARNING: [kernel config]: specified values did not make it into the
>>> kernel's final configuration:"
>>>
>>> The full list of configuration values, which did not make it into
>>> kernel's
>>> configuration can be found here:
>>> http://pastebin.com/sAvXuNC8
>>>
>>> Most variables seem to have something to do with things which are not
>>> applicable for my particular build and device. There is no need for any
>>> graphics so values such as CONFIG_FB_CFB_REV_PIXELS_IN_BYTE and
>>> CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY seem like they are not needed
>>> anyway. But there are a few which look less innocent such as for example
>>> CONFIG_ARCH_NR_GPIO and CONFIG_LEDS_GPIO.
>>>
>>> I did a few builds with poky-dizzy-12.0.1 before moving to the master
>>> branch
>>> and the mentioned warning was not issued during those builds.
>>>
>>> The only information about the warning I was able to find on the web is
>>> this:
>>> http://patchwork.openembedded.org/patch/89289/
>>>
>>> So it seems that this is not that critical and somewhere during the build
>>> process some kernel configuration values are dropped. Since I do not have
>>> enough knowledge about the subject I would like to ask the more
>>> knowledgeable of you to reassure me that this warning is not critical.
>>> Also,
>>> if someone could give an example of why some values are dropped and by
>>> who/what, I would be most grateful.
>>
>> They are just that .. warnings. We have a patch for the beaglebone to
>> clean up
>> the input configs, it just didn't make it into master yet.
>>
>> Old values, values missing dependencies, etc, all may be dropped by the
>> kernel configuration phase. The tools detect and warn if this happens,
>> since
>> it may be critical (i.e. boot failure) or not .. and if not, it does
>> indicate that
>> the input configuration fragments need some cleaning.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>> I should probably mention that I can successfully deploy the build
>>> despite
>>> the warnings and everything works as expected. Well, there is one thing
>>> and
>>> that is that one of requested packages is not built (ntfs-3g) but that is
>>> an
>>> issue for another thread, if I am unable to find the solution myself.
>>>
>>> Thank you.
>>>
>>> FYI: I am new to Yocto and this mailing list
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

