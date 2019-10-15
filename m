Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DA68E00ADD; Tue, 15 Oct 2019 12:46:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE7F4E008D9
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 12:46:10 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id a1so49069207ioc.6
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 12:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=2XUUQdr3B5l/+zN+F8rw2hJePj0lyywHOgb/nyaAvuk=;
	b=YY64BgF940HqCqoUmfNpsMoMgNkf63gfvt8k6UVNGSad1ZiKBZxZV6VTv+92ewjdDv
	VKPnmtCA+JDKZ3/9i/GojwtXR84FjEkKZm9Ab7+Oa7ETeBCRcXX8DKopwBd2S95eKZEm
	zz8rxBcMDB4c/IbfpOSNM6qGw78O+DTI5JnPK+b6SMyUQIiV3/RumouBQcX3ocVGCnwT
	QMRxs7KuaygMaiQN9s95G0xhZtlYFdRUCFfeM3ULqin6cI6nJ1rgSlY+Dl+fki7KL7mf
	f/QJGgHOsHVWcWcwc0vQlQYaFixmSRsc9AjSVrjET9mHmuCaOmQW24OTpco72u2H/3SC
	G6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2XUUQdr3B5l/+zN+F8rw2hJePj0lyywHOgb/nyaAvuk=;
	b=Y8FiMFCrBdoZb8YZP6Kw0HAh0Bzk8gYjJBP7nI08YgtKmYG1AxuKh/h+8DRcGxlwOS
	NmsV+c1VqpDlY7+acf9obhng8E+sP1h10N3G7lMVvosvUIDUN+2EugplRW2l6xiqZ8M8
	RTqYiYNmLAM9HywGVv/NVOGf/HuO9VHOcvcFErk67Vj2gX7wdMTAxKBICsjjFy46Q+hV
	c79nv32+MvznFo14y557y3Due488OZs1WhqeTs6E96WpiBdrHAzqrPozJLE94FTRwiMF
	92k2jQOUNsjnIT5ESq2ZfAGyctRUC+Xnj+hp1+tD6WG7CRLXmGULVhkvraXblY4uMMYA
	Kuow==
X-Gm-Message-State: APjAAAXzQ+IcAcDqIJ4SDxSx0sx5Zq4FKY8yRihngreR27DU9Fds21v5
	LRAmPmFwhIGVymOVi3hOQ0++N8jQ
X-Google-Smtp-Source: APXvYqwG7IgBrRTMyyklWKdlq6+EbQlA5lpz10nTWN2j/fqUatxSxDefSAZKrFgFMMK7A4PWnXWPWA==
X-Received: by 2002:a02:a1c8:: with SMTP id o8mr14031358jah.82.1571168769701; 
	Tue, 15 Oct 2019 12:46:09 -0700 (PDT)
Received: from [10.30.197.57] ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id t4sm3087188iln.82.2019.10.15.12.46.08
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 15 Oct 2019 12:46:09 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
References: <CACfi_Z1EyksY4NrV8iRnRoyMS00qDfFgWdshOwhCd1ohqouL=A@mail.gmail.com>
	<CAJdd5GbogimYgsP4ce6KFgxv_WNqy03AeOR-h=zAM84bhXJgvA@mail.gmail.com>
	<CACfi_Z2r_0b84Vb+5GHyXJNM5nnUcydRqKbJVZo78jL5eaDmYQ@mail.gmail.com>
Message-ID: <999b6c65-9166-cd60-1de4-f532b091902c@gmail.com>
Date: Tue, 15 Oct 2019 14:46:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CACfi_Z2r_0b84Vb+5GHyXJNM5nnUcydRqKbJVZo78jL5eaDmYQ@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: using BBMULTICONFIG to create a 32-bit rootfs, kernel, u-boot that also includes a 64-bit kernel, u-boot for NXP i.mx6/i.mx8
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
X-List-Received-Date: Tue, 15 Oct 2019 19:46:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 10/15/19 2:03 PM, Davis Roman wrote:
> Hi Joshua,
>
> Thank you for replying.
>
> Since my last email, I enabled BBMULTICONFIG and was able to build 
> both 32bit and 64bit machine types successfully and so i have both 
> packages available in their corresponding build folders.
>
> build/tmp-imx6sxsabresd/deploy/rpm/imx6sxsabresd/kernel-4.14.98-r0.imx6sxsabresd.rpm
> build/tmp-imx8mmevk/deploy/rpm/imx8mmevk/kernel-4.14.98-r0.imx8mmevk.rpm
>
> I checked out mcdepends however I don't believe this helps me to do 
> the last piece which is to pull the 64-bit kernel package into my 
> 32-bit image.
> According to the yocto docs, mcdepends ensures that imageA is built 
> only after imageB has finished building (or at least that's how I 
> understand it).

The documentation might be a little misleading; mcdepends allows a 
*task* from one multiconfig to depend on a *task* from another. Using 
the image creation task (do_rootfs) is just an example.

I think one way to do what you want is write a recipe that mcdepends on 
the do_deploy task from the 64-bit kernel recipe, pulls the deployed 
kernel image, repackage it, and then install that recipe's package into 
the 32-bit rootfs. There might be other ways that someone knows about 
that would be better/cleaner, but that's what I would do.

>
> In parallel, I'm studying a patch that was upstreamed in 2017 for 
> adding support for multiple kernel packages 
> (http://lists.openembedded.org/pipermail/openembedded-core/2017-October/143674.html)
> This appears to be in line with what I'm looking to do however the 
> wrinkle is that I'm dealing with two kernels from two different 
> machine types whereas the patch dealt with two kernels of the same 
> machine type.
> I'm still trying to understand the implications of this. My feeling is 
> that I need a hybrid approach of bbmulticonfig and the above patch for 
> adding multiple kernel packages.

Ya, you might be able to do that if your new recipes looks like a kernel 
"flavor" described in that patch.... I'm not quite clear on what the 
advantage of doing that in this case would be; not that there isn't one 
to be had, I just can't see it with a cursory glance :).

>
> Please let me know if you have any thoughts.
>
> Thanks,
>
> Davis
>
> On Fri, Oct 4, 2019 at 10:59 PM Joshua Watt <jpewhacker@gmail.com 
> <mailto:jpewhacker@gmail.com>> wrote:
>
>
>
>     On Fri, Oct 4, 2019, 7:04 PM Davis Roman <davis.roman84@gmail.com
>     <mailto:davis.roman84@gmail.com>> wrote:
>
>         Hello,
>
>         We're working on a Linux distro for two systems where one is
>         based on
>         NXP i.mx6(32-bit,armv7) and the other i.mx8(64-bit,armv8).
>
>         I have two machine types defined in Yocto so individually I
>         can build
>         either one however our goal is to create a single distro that
>         can run on both processors.
>
>         So the idea is to use
>         BBMULTICONFIG(https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG)
>
>         to build two separate images,
>
>         1) a 32-bit distro for an i.mx6
>         2) a 64-bit distro for an i.mx8
>
>         and then finally, take the 32-bit distro and add the 64-bit
>         kernel+modules and u-boot.
>
>         ---------------------------------------
>         |--------------------------------------|
>         ||           32-bit rootfs            ||
>         |--------------------------------------|
>         |-----------------   ----------------- |
>         || 32-bit kernel |   |  64-bit kernel ||
>         |-----------------   ----------------- |
>         |-----------------   ----------------- |
>         || 32-bit u-boot |   |  64-bit u-boot ||
>         |-----------------   ----------------- |
>         ---------------------------------------
>            i.mx6solo             i.mx8m mini
>
>         We've already tried our existing 32-bit rootfs + 64-bit
>         kernel/u-boot on the i.mx8 and the system runs.
>         So in theory, it should just be a matter of getting yocto to
>         assemble all the pieces together.
>
>         I don't have much experience with BBMULTICONFIG so any ideas
>         or comments on how to proceed would be appreciated.
>
>
>     You are on the right track. Create two multiconfig files one for
>     each machine, then user mcdepends
>     (https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-multiple-configuration-build-dependencies)
>     to pull the 64 bit kernel, etc. into the 32 bit image.
>
>     BBMULTICONFIG is used in local.conf to select which multiconfigs
>     you want to enable. In your case it would have to list both of the
>     ones that you define.
>
>
>         Thank you,
>
>         Davis
>         -- 
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>

