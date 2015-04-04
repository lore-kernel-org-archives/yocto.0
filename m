Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9115DE00956; Sat,  4 Apr 2015 11:10:25 -0700 (PDT)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D646E006E5
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2015 11:10:18 -0700 (PDT)
Received: by iebmp1 with SMTP id mp1so101807864ieb.0
	for <yocto@yoctoproject.org>; Sat, 04 Apr 2015 11:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BhkWFEzIk507OunflL0o/XObZo3JnM3OK59+OKTAQbM=;
	b=YRYr/Ty8KBU1VhgH3bqvty13qqr0c8Thq4mjNjioBoa0pom1OZ3DMfqHjTh1uZzEbY
	GH93FSwkF/V+RIL/MUg41FBP9rz3Dr+u8R/yqtx1ozprZOKGn95OkUEIZBGxQbMYgfqs
	qNBZUer+qkzB9xTnFJIzDdCbIyEgV74BB3pnGRZeipPQQJ0YzBe8WUyC1EUjgIihvKrl
	flrqGDb2/6mJzA82uDnUm0YE8YL6iKQE9ueOPNz0ml9zZpNxPVe/kLnDYRN83jJRfGde
	nPIkCHphm0jOBMevuHNmXs2LYItqoUrmtXdRxRTmwL5UR44/tAi9UYhSqrQOzQNNRwRg
	yHBw==
MIME-Version: 1.0
X-Received: by 10.42.188.19 with SMTP id cy19mr10022068icb.92.1428171016813;
	Sat, 04 Apr 2015 11:10:16 -0700 (PDT)
Received: by 10.107.158.20 with HTTP; Sat, 4 Apr 2015 11:10:16 -0700 (PDT)
In-Reply-To: <551EF93B.7080307@mail.com>
References: <551EF93B.7080307@mail.com>
Date: Sat, 4 Apr 2015 14:10:16 -0400
Message-ID: <CADkTA4OTkNRUQuiFK7k2qq2CXB+E+apWB3i92_K4rsYj0vZp-w@mail.gmail.com>
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
X-List-Received-Date: Sat, 04 Apr 2015 18:10:25 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 3, 2015 at 4:34 PM, Liam Maps <cca_liam_maps@mail.com> wrote:
> Hi,
>
> During the build of a core-image-base for BeagleBone using the master branch
> I was presented with the following warning:
>
> "WARNING: [kernel config]: specified values did not make it into the
> kernel's final configuration:"
>
> The full list of configuration values, which did not make it into kernel's
> configuration can be found here:
> http://pastebin.com/sAvXuNC8
>
> Most variables seem to have something to do with things which are not
> applicable for my particular build and device. There is no need for any
> graphics so values such as CONFIG_FB_CFB_REV_PIXELS_IN_BYTE and
> CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY seem like they are not needed
> anyway. But there are a few which look less innocent such as for example
> CONFIG_ARCH_NR_GPIO and CONFIG_LEDS_GPIO.
>
> I did a few builds with poky-dizzy-12.0.1 before moving to the master branch
> and the mentioned warning was not issued during those builds.
>
> The only information about the warning I was able to find on the web is
> this:
> http://patchwork.openembedded.org/patch/89289/
>
> So it seems that this is not that critical and somewhere during the build
> process some kernel configuration values are dropped. Since I do not have
> enough knowledge about the subject I would like to ask the more
> knowledgeable of you to reassure me that this warning is not critical. Also,
> if someone could give an example of why some values are dropped and by
> who/what, I would be most grateful.

They are just that .. warnings. We have a patch for the beaglebone to clean up
the input configs, it just didn't make it into master yet.

Old values, values missing dependencies, etc, all may be dropped by the
kernel configuration phase. The tools detect and warn if this happens, since
it may be critical (i.e. boot failure) or not .. and if not, it does
indicate that
the input configuration fragments need some cleaning.

Cheers,

Bruce


>
> I should probably mention that I can successfully deploy the build despite
> the warnings and everything works as expected. Well, there is one thing and
> that is that one of requested packages is not built (ntfs-3g) but that is an
> issue for another thread, if I am unable to find the solution myself.
>
> Thank you.
>
> FYI: I am new to Yocto and this mailing list
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

