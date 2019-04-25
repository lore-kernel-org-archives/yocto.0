Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8603E00CD5; Thu, 25 Apr 2019 06:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C13E00CB9
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:01:10 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id t17so18497604wrr.4
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=IjBsvdHsfQPDfVmSliXLvY7qNX6hVVP5v2Wbz/28iFM=;
	b=eo7eXkdBgdZRIWs1tUKLHBnbs9h+u4HhwmxCe9zbqbHJxlhlr3FE1I2QOGu3wvrFDN
	6TojLl4GbFtYgdfi7SMfMch133ent2N+JB/r7K7isfbVj7r4pdRQX/1lxZZmgXTffUNY
	pwGBGKftFdorSgDKjSGGRzd0qeE+lmel0O6Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=IjBsvdHsfQPDfVmSliXLvY7qNX6hVVP5v2Wbz/28iFM=;
	b=r0YxI1NvUzCsR/0Ela4vUsjL6FQH5NOig0pKJOcny05fxVzYS+vg7YFrirrWJu5nl4
	ltUefW5JvgbnlaWlvC2xl3oyBzF0lDz3dMv6krbxEfUYIQmYLCbxyN2r2LfdtoRUEnc7
	UpSipHrfgvMTiI9/1YJ2pdWpdgDZ3dip+K35ZKPG0NXRnHSNt+/JHOs2JGANPk45TRPE
	VKiojeMZ5E1HTrUwOtOp9a7rmArH1UENfaZTKfrkgf4LKxVT2fi7B2+S8MHw6Q1PNJk7
	3IdT1MHYRxno6+akV8S50xq6bj3EMTFrKvCQxYpvvHjYxMhUQlo9M8eXQYswSCAeBcZj
	ZBHQ==
X-Gm-Message-State: APjAAAWb7dMieHVna86KU8aIPqdKaVceJoZIVJfMY7oqR+SoRaGqKadJ
	HUFxo/ANaYLedxOJ4VKbXffwa8gcXlE=
X-Google-Smtp-Source: APXvYqyj0BFgUHDf8d5Gak/AK6xked033KXm1cMoHfpzVxAB5YkbVTayC71agZrybWOTmn7eOuQiVQ==
X-Received: by 2002:a5d:4c8d:: with SMTP id z13mr5262453wrs.296.1556197269269; 
	Thu, 25 Apr 2019 06:01:09 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o20sm17075382wmh.21.2019.04.25.06.01.07
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 25 Apr 2019 06:01:08 -0700 (PDT)
Message-ID: <6caac371fa9de14a173320c36dc5405f68aae199.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Thu, 25 Apr 2019 14:01:07 +0100
In-Reply-To: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: ASSUME_PROVIDED, cmake-native and why cmake is subsequently not found?
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
X-List-Received-Date: Thu, 25 Apr 2019 13:01:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-25 at 08:05 -0400, Robert P. J. Day wrote:
>   (warning: i've been away from YP for well over a year and am now
> studiously trying to catch up, so i have some work to do.)
> 
>   currently trying to build a "core-image-minimal" for a zedboard on
> my wholly unsupported fedora 30 (branched) system, so i'm well aware
> there will almost certainly be breakage as i try to resolve version
> numbers and so on, but working off the "thud" branch, the first issue
> i had was trying to configure cmake-native -- the error message is
> exactly what you can read someone asking about here:
> 
> https://stackoverflow.com/questions/52663287/glibcxx-3-4-26-not-found
> 
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> native/3.12.2-r0/build/Bootstrap.cmk/cmake:
> /home/rpjday/oe/builds/zedboard/tmp/sysroots-uninative/x86_64-
> linux/usr/lib/libstdc++.so.6:
> version `GLIBCXX_3.4.26' not found (required by
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> native/3.12.2-r0/build/Bootstrap.cmk/cmake)
> > ---------------------------------------------
> > Error when bootstrapping CMake:
> > Problem while running initial CMake
> > ---------------------------------------------

This probably means that your system c library is newer than the one in
uninative and things aren't working because of that. Either try:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5f6156b32c9d17bdb06d67199373433b0e470cc7

or turning off uninative.

>   i'm unsure how to resolve that easily, but my first reaction was,
> "if i already have cmake installed on the host, why not just take
> advantage of ASSUME_PROVIDED"? i recall from some time back asking
> why
> more host utils were not, by default, included in ASSUME_PROVIDED,
> and
> the answer (quite reasonably) was that one wants to have as few
> variables as possible for reliably replicated builds.

That is one reason, there is a second. We patch some of the utilities
to do what we need. We rely on our patches being present.

>   fair enough, but in my case, until i figure out how to fix that, i
> thought, why not just:
> 
>   ASSUME_PROVIDED += "cmake-native"

This is a bad idea as we patch cmake iirc.

> 
> so i did, and that got me past the cmake-native build issue, until i
> hit this trying to build libsolv-native:
> 
> DEBUG: Executing shell function do_configure
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/libsolv-
> native/0.6.35-r0/temp/run.do_configure.16705:
> line 130: cmake: command not found
> 
>   hang on ... why would a subsequent recipe not be able to locate
> /usr/bin/cmake on my host after i explicitly identified cmake-native
> as assumed to be provided? is there something about the libsolv-
> native
> recipe that does not take that possibility into account? i'm just
> about to check, but if someone has an explanation for that, i'm
> all ears.

You would also have to do:

HOSTTOOLS += "cmake"

to allow cmake to be visible from the host system. Its a host
contamination protection mechanisn that has been there since pyro.

>   finally, regarding ASSUME_PROVIDED, given that i'm already living
> life dangerously with an unsupported distro, is there any harm in
> just loading up on ASSUME_PROVIDED packages, as long as they work? in
> many cases, i can see that the version that would be built by YP is
> close to, if not identical to, my host version. so other than risking
> breakage down the line as versions change, as long as the host
> packages work, is there any harm in just taking advantage of them?

I think it will be a world of pain ;-)

Cheers,

Richard


