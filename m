Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1816E00E80; Fri,  1 Jul 2016 05:21:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2E6BE00E78
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 05:21:13 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id c2so150755803vkg.1
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 05:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ewq5wA7rXazkeOWNcHBnM9lF6Dx4XoM1uY7by3Czon8=;
	b=C62m71BgkQLJKKi+9Q47NV+MgamP9DwpF5nyd2Yin++9wR2W80PiMGt/mv7kd+YK7T
	BXgUcaDni2lqBYBvlBXJvHKVfCoIgVVbHfHqbLeA5MT1bFJESN4AleghmYYioR5FWCBS
	TY1UUdR07iD7aNKXE+aA/j3RLRBjc9v6sAQhxIjfBJIdQS8DMh3wLaSGe6v+lNPqKfhI
	ER1jS7MB1K/rOM3cqoZdnxPRtxC/bm4zfLU97zKqB3hxdvlVrDShwVDnnnmpejcRK/e4
	YQznAirZdxstv21c/Wz9rGASV6RZt1ddI7QyGHalK0MK506OuEdZ5yS8FOlFzezNQnp2
	gMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ewq5wA7rXazkeOWNcHBnM9lF6Dx4XoM1uY7by3Czon8=;
	b=eIbq0m1GRMoPa0d47B9Efzg/Jvr8p2S2FX/DZkhq2Dh2YDb9j/s1e251HbsQ5XLt3I
	eKQV5EIt4Gb+o35opW73wMtJVNeClwAOcBcn9Rv2tWQAPb/Gtgcz4I7CubYf830jjO2+
	zVXl/kIKME9NzwiRUB8foKl8am5dOmhqk8vasj8iSrKDKWgHwSnDzVcPDvZ3MYAhIrmo
	61Dg8M0SZMZSF+Jm2DgJBjeReHUJK67HqLcy2/mUFzfcRNLmu7LTbWWLS7ivZzre5PKR
	oTVu7QxnPASun04QwcxCMV/sI+MJ9i1eTvKZHbGtieMb50AHegWcOhfvPl1U3un2rBJj
	CPRw==
X-Gm-Message-State: ALyK8tKF0mh/+5t1LDpNX4EzEfK6N+L/A74z665CCFDTCvGolmUFXqHtyxUeMhPwkIY+wYADC8W0i2Lkc4Viow==
X-Received: by 10.31.177.139 with SMTP id a133mr3148256vkf.151.1467375672462; 
	Fri, 01 Jul 2016 05:21:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 05:21:11 -0700 (PDT)
In-Reply-To: <CAMKF1sp3=sahXPx1LsxbkFt+eyW-SQuYOYLS80VKcj0WX41oRA@mail.gmail.com>
References: <5773AC2F.6050306@mlbassoc.com>
	<CAMKF1spxmk5G1v60bQU5QiNphd8PVVWEzTkcFeDECfNEPSsdgQ@mail.gmail.com>
	<5774D301.3050801@mlbassoc.com>
	<CAMKF1sp3=sahXPx1LsxbkFt+eyW-SQuYOYLS80VKcj0WX41oRA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 09:21:11 -0300
Message-ID: <CAF3SDA6dNkV_=mPYHcymffN-CCDgS4KxdXohfZmyBdoeOyA-LA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: meta-toolchain build errors
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
X-List-Received-Date: Fri, 01 Jul 2016 12:21:17 -0000
Content-Type: text/plain; charset=UTF-8

Did you tried "bitbake -fc cleanall imx6-demo-image && bitbake
imx6-demo-image" !?

2016-06-30 12:05 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>
>
> On Thursday, June 30, 2016, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> On 2016-06-29 17:27, Khem Raj wrote:
>>>
>>> On Jun 29, 2016 4:10 AM, "Gary Thomas" <gary@mlbassoc.com
>>> <mailto:gary@mlbassoc.com>> wrote:
>>>  >
>>>  > I just [successfully] built a large image for my target (details):
>>>  > BB_VERSION        = "1.31.0"
>>>  > BUILD_SYS         = "x86_64-linux"
>>>  > NATIVELSBSTRING   = "Ubuntu-15.10"
>>>  > TARGET_SYS        = "arm-amltd-linux-gnueabi"
>>>  > MACHINE           = "teton-p0382"
>>>  > DISTRO            = "amltd"
>>>  > DISTRO_VERSION    = "2.1+snapshot-20160629"
>>>  > TUNE_FEATURES     = "arm armv7a vfp thumb neon
>>> callconvention-hard       cortexa9"
>>>  > TARGET_FPU        = "hard"
>>>  > meta              = "master:c6d50b272936b61b98a056ea2e1de5d0f4ef53ce"
>>>  >   ... platform specifics removed ...
>>>  >
>>>  > Then I tried 'bitbake meta-toolchain' immediately afterwards, only
>>>  > to be assaulted by a barrage of messages like this:
>>>  >
>>>  > ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash
>>> mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
>>> b05a369a00869fc70fe9ba2cc28e7259 for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>>>  > ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
>>> b05a369a00869fc70fe9ba2cc28e7259 for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mismatch
>>> 2e063c5bac7bf922fbff59be5120a62e verses
>>> 0223876e7a4bc1e57f93a44631b4e4aa for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>>>  > ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses
>>> 0223876e7a4bc1e57f93a44631b4e4aa for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mismatch
>>> a9932697b29f5fbd06feafedea44d7d4 verses
>>> 0b4e83ecda4ce5560e50891715d6a5d1 for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>>>  > ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses
>>> 0b4e83ecda4ce5560e50891715d6a5d1 for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mismatch
>>> 3cdba66cd643484bed95676b5a4cdc21 verses
>>> fe3108a63774b61b3910e75495fb4d5d for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>>>  > ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses
>>> fe3108a63774b61b3910e75495fb4d5d for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>>>  > ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch
>>> c8c576da0ae11886e518efa4bc406f18 verses
>>> ad6e2e5d7704e6002f3b4ec56bc2d92b for
>>>
>>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.6.0.bb.do_configure
>>>  >    ...
>>>  > NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn't need to
>>> be rerun and all succeeded.
>>>  > Summary: There were 1212 ERROR messages shown, returning a non-zero
>>> exit code.
>>>  >
>>>  > There were too many error lines to copy :-(
>>>  >
>>>  > What does this mean and how do I get my toolchain?
>>>
>>> Bitbake -cpopulate_sdk your-image
>>
>>
>> I tried that and it seems to have worked, but I still got similar error
>> messages:
>> ERROR: imx6-demo-image-1.0-r0 do_populate_sdk: Taskhash mismatch
>> 5313c03c1d0cdd396e6128d6400e41e7 verses 96756bc7f74f66f35df9cb2fe9a596d0 for
>> /local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk
>> ERROR: Taskhash mismatch 5313c03c1d0cdd396e6128d6400e41e7 verses
>> 96756bc7f74f66f35df9cb2fe9a596d0 for
>> /local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk
>>
>> What file(s) can I look at to see why the mismatch happened?
>>
>
> There could be some time related variable coming into checksum. I have seen
> such errors in other cases. You need to see why signature data contains
> these variables. One way is delete your tmp and rebuild
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

