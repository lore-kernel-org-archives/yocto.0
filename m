Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5728AE00D31; Fri, 15 Apr 2016 11:57:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 062EEE00C58
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 11:56:57 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id n62so41924805vkb.0
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 11:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=o67QasKY9Zrf3UhzNlQdMyDEDTXZ9q3RXR/a04qLMjs=;
	b=UhKC3cu1UwBElSufvcp2f+fNOKsrbwaZu/KrJ5B47FYLGLaWiNv/u8oA/h28m5nbPr
	oWLd6HQl54NqgbvMgmADaezj8uqN9aPcdT5MJqb6AHAWtNTmgEfdumqJ03rCT737VSjf
	iAuleObKFZrjfQGINF2dP/glL2YrzagPbrShjwjphoKvfwOZh0UeU0VLjrpEG8v2HkvM
	Xltp5BDpszH0xuS32jGjhrZuT1S79NeO7LQsxxtUJyTlQQ+ZdxayAaxe5scg1tMBVII4
	KNwb5jqNcBzqvvxNp2e5467esWG7ALmcmovFTPn/m/IcspVyiNA38quDYqM8JVv460ti
	sjCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=o67QasKY9Zrf3UhzNlQdMyDEDTXZ9q3RXR/a04qLMjs=;
	b=PGYUTKG7yHKSIEYN5oMp/nizNOKyaoucmW9D1Sa5WskyV952YVX7nfF8spdK1RfkKc
	J//bmdM2A5x0NDuKrRunFpyizPyyyP8hIKTKiBsVOyfPuEWsckj97mEU1WrO/sHyUODd
	/rhAlwDOnc3amsXmwrXBn9KXb+n4AmRuUhxdpW7Oo5LVtlWq1j4gSu4A712rxVbkrNhm
	CqpRj7hp3bCOJi2EsJLrUeFEhbpptOB7yqPe/baSq3mh0Zn02oL/cflkBRIllUs/fzik
	MHcFxJnK1BaerprawsaeDTInfO02TBGrXxvEKhmarBn0uB3jhE9snBKGjB3gfk9qhUHS
	ovQA==
X-Gm-Message-State: AOPr4FVPwlihllm9Jp5BdmLWmcNnAJmPs3UqkELVVGdvDNPRq/yXfZHf64BY+n5bn5FqcgwmgiguHA8g7SdcUw==
MIME-Version: 1.0
X-Received: by 10.176.3.12 with SMTP id 12mr11452845uat.111.1460746616991;
	Fri, 15 Apr 2016 11:56:56 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Fri, 15 Apr 2016 11:56:56 -0700 (PDT)
In-Reply-To: <CAHHS9cGm9FsQ+d6_JJqFR5h3Nu-0O9cyTaoUZ0ewC9-4_ANJhA@mail.gmail.com>
References: <CAHHS9cGm9FsQ+d6_JJqFR5h3Nu-0O9cyTaoUZ0ewC9-4_ANJhA@mail.gmail.com>
Date: Fri, 15 Apr 2016 15:56:56 -0300
Message-ID: <CAF3SDA62uB2f8SQP=oTu4tRv=3JbowyzJ_NNx04XtM6=yEoPTA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Matthew Clark <linux.matthew@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add libraries to poky toolchain
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
X-List-Received-Date: Fri, 15 Apr 2016 18:57:03 -0000
Content-Type: text/plain; charset=UTF-8

I may suggest something, run `bitbake meta-ide-support' and then use
tmp/environment-*.sh to setup environment.
After that go to your software folder and run something like:
./configure ${CONFIGURE_FLAGS}

Here is a little text file that I saved to remember how to compile
libfprint with yocto's toolchain from tmp/ folder.
http://pastebin.com/hyzrd3up

Regards,

2016-04-15 15:38 GMT-03:00 Matthew Clark <linux.matthew@gmail.com>:
> I'm trying to cross build a package with a configure script and I'm
> running into a problem because it can't find a missing library
> dependency:
>
> arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=hard -mfpu=neon
> -mtune=cortex-a8
> --sysroot=/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi
> -o conftest
> -O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu
> -Wl,--as-needed myconftest.c -lgdbm
>
> /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld:
> cannot find -lgdbm
> collect2: error: ld returned 1 exit status
>
> A quick look shows there's no libgdbm in
> /opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi folder,
> though it is in
> /opt/poky/1.8/sysroots/x86_64-pokysdk-linux (which, of course, is for
> 86_64, not ARM)
>
> I'd bitbaked the meta-toolchain and installed the .sh file, but
> apparently I need to add more libraries.  What's the best way to do
> that?  Is there an additional package I need to bitbake?   I can
> kludge it myself, by manually copying stuff into
> /opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi but I'd
> much rather have something more elegant so I can replicate it to other
> development machines.
>
> Thanks.
>
> Matt
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

