Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664F7E00524; Sun, 16 Apr 2017 16:23:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E5CE00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 16:23:26 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id j127so48089669vkh.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 16:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0TmixTl5zRH0dV9kPGWi0Oz+WvFdHNI6m9vvRBhoz0I=;
	b=rNkpd/VM3RVF3rtCxtsIfOW/0WCUffcNZUZ1jDtpKmNhAcuQrv09+wAO2AUFiwPrkm
	8kKIFVlu2OqbBWyDy9ysVDDrsxwBvAegKWFkIyK1Q3Qns1LfbG0VbdH2Hdt6DIF4LS5X
	ybSM09kdzQk7mp2TNifpj4XA9LdkYsGrAu86h1OVIUtWWJ7gK4qVis/eadHTQ3wraMif
	rJFQy/CTOtySe6P4laBCNXIeW4yPhRW9umfNSFpehi3dPv4vwcgBmxzaApUbxIbk5oAU
	QV+i1pafP7juUQqL+JyWgVzr+tmSjzFyQfRkfvTp9LXmbNmOH2E3rADyPM0SoeSnhuvH
	E78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0TmixTl5zRH0dV9kPGWi0Oz+WvFdHNI6m9vvRBhoz0I=;
	b=tngJp48ELvU0hWeNHyjiQ2PVlT7p0YrH3W55FiT42g0HptHEgZ4GRE/bcEaXz26ouR
	u3+gYCfBHa9SkHqFU6wBO6V2gDhUAvoMwhalHdu4uP/v5QY8+7ti9qI+sQ8Cq7MSp66u
	JnRkML6qpJN39NfHZShAQQfs45DBN91rGf1rTeD3ORo45Ymq5/nntjbgSM5L0LK1w+J4
	COYRDrCY5tbcId5zGnNd9rmHQVgomPQiUkaI0GVN8Am4g5xL9LUIilhxwvTgz7tnRJ9g
	IBNCgEtiPDUSgJdlZ3036OhCxl2s1O/YAfOUNygjY68jqTl6qtPFg9qViD4rkZFsIGNu
	U2eQ==
X-Gm-Message-State: AN3rC/66h2LZ+rbapUhUAnSxzfCJC4A/5vaNT0C7g/bi8eLxToRo9X3t
	hNeV1sAybL9bjNoYMX/tz2uhM0LwjQ==
X-Received: by 10.31.67.204 with SMTP id q195mr7324896vka.135.1492385005915;
	Sun, 16 Apr 2017 16:23:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sun, 16 Apr 2017 16:23:25 -0700 (PDT)
In-Reply-To: <20170415231603.GA20857@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Mon, 17 Apr 2017 01:23:25 +0200
Message-ID: <CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sun, 16 Apr 2017 23:23:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> w00T! \O/
>
> Swapping out meta-raspberrypi for your meta-raspi-light works!!! I now ha=
ve
> accelerated glmark2-es2 ~40FPS :-D
>
> Now I have to figure out why...
>
> Also, chromium wouldn't build with meta-raspi2-light, but that's probably=
 a
> quick fix, GL/glx.h was missing.
>
> Adding 'MACHINE_FEATURES_append =3D " vc4graphics"' to local.conf with
> meta-raspberrypi caused a kernel Oops. The system continues to run, but
> graphics/X doesn't work.
>
> One thing I've noticed about both meta-raspberrypi and meta-raspi-light a=
re
> that in both cases (using vc4) the boot colour square (firmware?), proces=
sor
> core count berries, and kernel splash screen are missing. But that's not =
too
> important.
Yes - but I think this is not a bug. For me the so called 'rainbow'
screen was the indication I have VC4 properly set up.
>
> Thank you very much for your explanations, they really cleared up a lot o=
f
> stuff in my head. Already I'm 10x smarter on this stuff (which doesn't sa=
y
> much about where I started!) ;-) It was probably a good thing I spent the=
 last
> couple days grinding away, your explanations were perfect for where I'm a=
t.
Some very good document explaining FOSS graphics stack is [1] - take
the time and some coffee :)
>
> Any idea how mesa and mesa-gl differ? That one's still an outlier for me;=
 they
> both come from the same source base!
* userland builds egl/gles2 libraries
* mesa-gl is a drop in for (Desktop) OpenGL to ensure we can build
applications which need it. AFAIK it is shipped with swrast - so not
really useful.
>
> On Sat 2017-04-15 @ 08:09:02 PM, Andreas M=C3=BCller wrote:
>> In the long run I would start a discussion:
>>
>> * Mesa/VC4 is not a machine feature only available on 64Bit Pi3 only:
>> It is common to all version of RaspberryPi. Using mesa should be a
>> decision easily selected by a setting somewhere. The only reason 64Bit
>> Pi3 gets VC4 by default is that userland is not working for 64Bit -
>> see commit 9d418db5ed2962821987ac90c07c3a61e40c0814)
>> * Why still use userland? Dropping it would make things MUCH easier:
>> All the decisions based vc4graphics in MACHINE_FEATURES could be
>> removed (that's what my fork does)
>
> Agreed! Maybe a new thread? I'd want to do more experiments wrt 32 vs 64 =
and
> vc4 vs userland before being able to contribute.
>
I cherry-pick from meta-raspberrypi what I can - also Pi3-64
configuration. But I have not run a test with 64Bit on Pi3 (I don't
expect any enhancements for my use cases).

Your next email:
> I got chromium building with it (it was a simple DEPENDS) and on the imag=
e I
> just built sound is already working!
* You have chromium building (and running?). This is on my endless
TODO-list (have firefox on my image but that crashes more or less
immediately - wonder what other people do with it)
* I have not tested that (I need low latency and plugs for playing music)

Have fun and keep me updated...

Andreas

