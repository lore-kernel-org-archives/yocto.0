Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5645E00C5B; Wed, 28 Nov 2018 10:37:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC161E00C58
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 10:37:08 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id a132so17467642qkg.1
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 10:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SNdHEc7uqo8w9CIPXwGz4TiwhArFBpsiBEFYDo9a5L4=;
	b=WQxOn9PFRs46ob0a1eIwBiOZf6i4sV1jwn2BQk8T5jBJvtg6PELLuPu8jRElszdJze
	tc/Xvy8pD4U6L6NjGuO9hD9xNJdvQBUA7FKZ6swMlDIOyrGFd+xB4I45Xfi6isRdRv4b
	WGGB8xYc0G0aaXBbOMYGmCuPq3IgUclXIiEXmYCyb+5nzjqpr2zEYixfUI7y182D9d2S
	nX9ih8kI6wy96SpL+6eLaXyHL70VAwCExqJsHwkauxDm/dRi9NcU0sX+QBlv9O646+aY
	eHFOXykE/xsOn6c0c7dnx1ucMS0b3OtmQ0wlOB46ZY6G/fPNj5j6Lx3z2i9hew0djMKl
	4JAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SNdHEc7uqo8w9CIPXwGz4TiwhArFBpsiBEFYDo9a5L4=;
	b=ogylpoICb+W+/hUM3cbxpsx4VLj2w+IoeB/WReWqihiQ2darsGemq2G9yY//dYyx0e
	NBn69hPBHIhnpXVuBKn75fqOEp8Xv4StkjsbqVdK/i9sG06sGOIk2sr+gTzuoNzx54tW
	aAmTaJjeuMyppYJ7GhNdSrcDEOk2ygPgpSiiGSMBFJAn7kir21DplVvQz5jUBz3nxLge
	XILrZp9FgSGZeC/HbOWGBabzC1OO/sGhrMEfd/bvpbr4shR8ZNkzai9kqXQoIwaiOryh
	779Rixg8x0WVU0W7S3GRXdqMy9JfAnG/CObdqnImC7+BpMeQqaDjLoxu1weK+H3ih7F2
	HiQQ==
X-Gm-Message-State: AA+aEWai6CNsQQVr02gc1ixcood5nuZTvYPV+25Wo8QNaZVBRT34HDaP
	Z4UP2QjwqKWC3GI6AQwt930mnQThsJ8ulxwNIsIDIw==
X-Google-Smtp-Source: AFSGD/VGPqNgBscbwI+7dxXca+a29n3qxl6SMAbsCgYgnCxPWzH7/Xr2rb0yDtyIr9uBQqomwqlslOgj0VFLDi1BdAE=
X-Received: by 2002:ae9:eb4c:: with SMTP id b73mr33805269qkg.88.1543430228094; 
	Wed, 28 Nov 2018 10:37:08 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
In-Reply-To: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
From: Beth Flanagan <pidge@toganlabs.com>
Date: Wed, 28 Nov 2018 18:36:56 +0000
Message-ID: <CANik3vH9-EP_JYQ5oapNgfC2F_HN0XErOkqs=LnDc9eA_Uinfg@mail.gmail.com>
To: zoran.stojsavljevic@gmail.com
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 18:37:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 28, 2018 at 9:18 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello YOCTO people,
>
> I would like to use standard git tool while using all the Yocto
> layers. NOT only Poky repository (which, I believe, works all the way
> with git tools), but as much as possible with other github proprietary
> repos and layers. Since I am not able to execute git commands using
> some number of proprietary repos over github.
>
> As example, I'll use meta-bbb repository.
> https://github.com/jumpnow/meta-bbb.git, after cloning the following
> happens (chosen, since it has at least dozen of branches):
>
> After cloning, I did not get anything from the following commands,
> being in the root of the meta-bbb repo, namely:
>
> [user@fedora28-ssd meta-bbb]$ pwd
> /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
> [user@fedora28-ssd meta-bbb]$ git describe
> fatal: No names found, cannot describe anything.
> [user@fedora28-ssd meta-bbb]$ git tag
> [user@fedora28-ssd meta-bbb]$ git checkout thud
> Branch 'thud' set up to track remote branch 'thud' from 'origin'.
> Switched to a new branch 'thud'
> [user@fedora28-ssd meta-bbb]$ git checkout sumo
> Switched to branch 'sumo'
> Your branch is up to date with 'origin/sumo'.
> [user@fedora28-ssd meta-bbb]$ git describe
> fatal: No names found, cannot describe anything.
> [user@fedora28-ssd meta-bbb]$
>
> The rationale behind this request: git is the powerful tool which
> should work and be solely used for YOCTO layers' synchronization. In
> other words, YOCTO should give some tools' (namely git) unification
> guidelines in some way. :-)
>

Zoran,

This is normal behaviour for git repositories with no tags. Git
describe just describes the latest annotated tag and if there is none,
then it of course, can't describe anything. Generally, this is up to
the repo maintainer to define tagging policy (I think all we do in
OE/YP is ask for named release branches).  So this isn't something
that is "broken" it's just not asked of layer maintainers. I'm not
sure why you need git describe in your workflow, but you could easily
write something that reverts to something like `git shortlog -1` or
something on repos that return fatal on a git describe.

I'm not sure what the request is here. To ask all the repository
maintainers to add tags so you don't return a fatal on git describe?

-b

