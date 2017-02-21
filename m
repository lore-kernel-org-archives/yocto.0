Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F190CE0094C; Tue, 21 Feb 2017 14:18:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A565CE008D0
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:18:13 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so19397603qth.3
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fJvQyAcZFBm2RRT2JLSui9VV+uo67SFuwTPhYW6SUDc=;
	b=RBZt+CGFlXIIM5+LDBFEWDVAJ7QPoI5IsV/xLo8zY4wq9BlcCbhnVE2t6jXVX1vjJF
	FAY7qDBblAL9zW24L+Uu6/AfVojurZooZLEPuH9QVYFLeHK8FbQyG0jAnTfN19KfaH8u
	oJMiVwu4xJj+cajaN3ZwwuVY7LaSYjHs+XOx8zXcG/xXwvmv+BkvNas4vISuczuyACwP
	jgLQ++fh+CYkscWZ2s9NaX530gwvvQ7ZUyb3uuKB1toiepwCnp+IBc6ZlVumSCH6IQMf
	TWUVlZMG65OvymD9SPD/qZqZ5VrPf1Q37K91R1W8HMyd+3zaaWv9CjOXzfs7yFZhjDTE
	sRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fJvQyAcZFBm2RRT2JLSui9VV+uo67SFuwTPhYW6SUDc=;
	b=ml/w7i/GtceWXsXiGEm2xKOJtF2nlxwEQkiYMrnv6We1uOjxEMqXopcHOUHzQAzf5h
	Lponcxbs8bFp71/IhAyBmaASj0DmxktC992NOkhL6onGSfV5aurjbhoAjv3CtMZq4B3B
	UrQAETLgL38E1mEQDymyrW8gCAsdDVwuOpqHojQUpYxuqc9B3wflLpMTSqmtWTvlVMnf
	DvaC60/yCOlFCtgfp1GG0Lh0no1h0WN+qZQ0QBc4nCp8jHbbMqFNT1z1kHoqWuOJM4B6
	y8ZJ4/5mDGRpe2p8V83ilz6LlY8v2bUVuZkuK6SxKeb+uR76kN4bYuwjhxkkw6kQGGFT
	as8g==
X-Gm-Message-State: AMke39nps8r+MrLvHeILp+WSV8JzZnhDYmWJPqPRNcGryexOkLimUc7bXle2nwCTk3a+CTTjz5gvaK6YbHXN4Q==
X-Received: by 10.200.38.50 with SMTP id u47mr29199501qtu.293.1487715492575;
	Tue, 21 Feb 2017 14:18:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 21 Feb 2017 14:18:12 -0800 (PST)
In-Reply-To: <CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 17:18:12 -0500
Message-ID: <CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Tue, 21 Feb 2017 22:18:15 -0000
Content-Type: text/plain; charset=UTF-8

I can't reproduce the problem you're seeing and I'm interested in
knowing more about how you're building to see if I can reproduce it.

I've done 4 builds: 2 on master, 2 on morty; one of which (for each
master and morty) is poky and one on OE's nodistro. All of them are
able to build this recipe (as I've contributed it) whether or not it's
the first time, or it's in sstate, after a clean, on a fresh build...
That's why I "fixed" this line, because with the previous line it
always failed once and then work the second time the build was run.

Maybe you could post the build configuration from your build? That way
I could see what layers you're enabling and at what revisions? Mine
is:

meta-rockchip     =
devs/twoerner/feb-updates-2:c252843cf2bf8326ccf2b552b59209f7a2ac3f16
meta              = master:def3800c7e58d9d1b54ea1df27b190a0f6d1d544

On Tue, Feb 21, 2017 at 11:01 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> I'll have to investigate this further. From a completely clean build
> do_install_prepend always fails the first time, but simply restarting
> the build again causes it to succeed. With do_deploy_prepend it always
> succeeds without issue whether its the first or subsequent tries.
>
> On Mon, Feb 20, 2017 at 6:14 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
>>
>>
>> 2017-02-19 22:33 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>>>
>>>
>>>
>>> 2017-02-19 22:22 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:
>>>>
>>>> Hi,
>>>>
>>>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>>> > This recipe was taken from the Rockchip team's recipe at
>>>> >
>>>> > https://github.com/rockchip-linux/meta-rockchip/commit/6a139d5b7510c7ba36aace82c239b894d5741cac
>>>> >
>>>> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've
>>>> > made a
>>>> > couple small modifications.
>>>> >
>>>> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>>> > ---
>>>> >  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
>>>> >  1 file changed, 19 insertions(+)
>>>> >  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> >
>>>> > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> > b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> > new file mode 100644
>>>> > index 0000000..3b4f109
>>>> > --- /dev/null
>>>> > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> > @@ -0,0 +1,19 @@
>>>> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>>>> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
>>>> > +# Released under the MIT license (see COPYING.MIT for the terms)
>>>> > +
>>>> > +require recipes-bsp/u-boot/u-boot.inc
>>>> > +
>>>> > +DESCRIPTION = "Rockchip next-dev U-Boot"
>>>> > +LICENSE = "GPLv2+"
>>>> > +LIC_FILES_CHKSUM =
>>>> > "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
>>>> > +COMPATIBLE_MACHINE = "(firefly-rk3288)"
>>>> > +
>>>> > +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
>>>> > +SRCREV = "${AUTOREV}"
>>>> > +S = "${WORKDIR}/git"
>>>> > +
>>>> > +do_deploy_prepend () {
>>>> > +       # copy to default search path
>>>> > +       cp ${B}/spl/${SPL_BINARY} ${B}/
>>>> > +}
>>>>
>>>> I can't pass build if use do_deploy_prepend instead of
>>>> do_install_prepend.
>>>
>>> It works for me. Did you delete build/tmp?
>>
>> I failed when i did a clean build(delete build dir). I modify
>> do_deploy_prepend to do_install_prepend. Everything is fine.   I guess i can
>> build before because sstate-cache cache the previous build data.
>>>>
>>>>
>>>> > --
>>>> > 2.12.0.rc1.48.g076c053
>>>> >
>>>> > --
>>>> > _______________________________________________
>>>> > yocto mailing list
>>>> > yocto@yoctoproject.org
>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>

