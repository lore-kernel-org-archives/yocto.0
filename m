Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03000E0129D
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 15:29:36 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id fq11so545787vbb.26
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 15:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=IqGIU+B0pHJsx1er/DCaRB1ERJpcKQuh/Ns18uoFHlE=;
	b=LuuSDIyBwZwv9K5UAqpG5QUzTdw2I/uZj3M5hTCYY0IbK+JTk1v9vFTi7WAv0If5h3
	y2NW3DOs+hvSZ02zJ9Hj6FK5PRlJgibDWkbr2I4Ui9Gez+xnI3pfYUUBfSwIvUxkNttv
	oBGFYt0HQQgBm6qbyxYF4YaFv5sbkdu3ZFeSCL/Gj4n4ke0wBOShlamz4qmXhMtT04x8
	cVwOJkq+e0n+1R+0xcFe9FGqvgANozI6CQe7+kR0CxbWPdsm1UYvD82IWqCDCfutQB4a
	I6cACOZ7m0YEtE3PEjbZEyueZ92cbd4vwxQyXe8WbViwontSsGiHTyQZvQ06U6zM7HoD
	WM4w==
MIME-Version: 1.0
X-Received: by 10.52.65.73 with SMTP id v9mr15241747vds.30.1364250576210; Mon,
	25 Mar 2013 15:29:36 -0700 (PDT)
Received: by 10.52.174.165 with HTTP; Mon, 25 Mar 2013 15:29:36 -0700 (PDT)
In-Reply-To: <CAHUNapQ=i4yO7NgY+VVp+8wqf+gHp6X3BDM2qvNQ4_aeShNHpw@mail.gmail.com>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
	<CAHUNapR+bMqr36jwEzeZk4BEqxZ4+JaPrGJ-4Uo14OHe753s2w@mail.gmail.com>
	<CAPhnLPAbnxUWAQ2APO6qeDouzP=gFvOeZh3kv7=WAYHLFQrsaw@mail.gmail.com>
	<CAHUNapQ=i4yO7NgY+VVp+8wqf+gHp6X3BDM2qvNQ4_aeShNHpw@mail.gmail.com>
Date: Mon, 25 Mar 2013 15:29:36 -0700
Message-ID: <CAPhnLPAQysMRuGBZWo=hUV05-uNpyC5c4y=k-13ZB0m5OxWfCg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQnIRw7Qn0mSrIyvolFwKid70ZJkJTld7wCUnkbndDoFeuN6JYyfI36l8q1lGKBpZeE3rTFr
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Mon, 25 Mar 2013 22:29:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 25, 2013 at 3:18 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Thanks for all those answers.
>
> On Mon, Mar 25, 2013 at 5:45 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> On Thu, Mar 21, 2013 at 8:31 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>>> Not all builds, but these three seem to follow similar steps:
>>> 1. prepare
>>> 2. configure+build core-image-sato core-image-sato-dev
>>> core-image-sato-sdk core-image-minimal core-image-minimal-dev
>>> 3. configure+build core-image-sato core-image-sato-dev
>>> core-image-sato-sdk core-image-minimal core-image-minimal-dev
>>> 4. configure+build meta-toolchain-gmae
>>> 5. configure+build meta-toolchain-gmae
>>> 6. finish up
>
> ...
>
>>> Also, for me I think it would be better if #2 and #3 split
>>> out each of those build targets individually.
>>
>> Building them together provides a slight performance increase.
>
> Would there be even more of a performance increase if you just simply
> did a "bitbake world" instead of doing all of those targets
> sequentially? (I assume "world" builds all recipes and doesn't create
> images?)
>
>
> It appears that all build configurations (on a given slave) use the
> same location for DL_DIR and SSTATE_DIR, but the TMPDIR location is
> not provided in the configuration file. This would imply each build
> uses a fresh TMPDIR directory (since by default it would be set to
> ${TOPDIR}/tmp which comes from the local.conf)?

That is kind of correct. All build slaves on all machines utilize the
same DL_DIR and STATE_DIR exported via NFS. We've found putting the
DL_DIR and SSTATE_DIR on our nas (RAID 10 iirc) sped things up quite a
bit (as well as prefetching universe, splitting poky-lsb from poky,
symlinking when we could, etc).

> I'm still trying to
> figure out the best/optimal way to be using Yocto at home. When I
> first started, I would use a separate directory for each "project"
> (i.e. machine, board, architecture, etc). But lately I've realized
> that most people just do all their projects in one build location.
> However, when switching between different "projects", interspersed
> with various "git pulls" in between, I seem to get in a state when I'm
> forced to delete my entire TMPDIR location in order for anything to
> build cleanly again.
> Is this the general consensus?

I've not seen that but my workflow is different (one arch/distro
combination per directory with a shared DL_DIR and SSTATE_DIR, similar
to the AB). I'd be interested in others experiences.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

