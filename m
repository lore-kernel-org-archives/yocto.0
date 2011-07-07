Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C25E24C8047B
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 16:51:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jul 2011 14:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,495,1304319600"; d="scan'208";a="27615548"
Received: from unknown (HELO [10.255.13.190]) ([10.255.13.190])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jul 2011 14:51:41 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
Date: Thu, 07 Jul 2011 16:51:42 -0500
Message-ID: <1310075502.2320.73.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Details on Bug #963 kernel tarball corruption.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jul 2011 21:51:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
> I wanted to ping the list on this bug as I've drilled down into it and
> I see what's going on. These are the steps to reproduce it and I have
> some questions at the end....
> 
> The issue: The autobuilder has been serving up bad kernel source
> tarballs. This is not an autobuilder issue. I've narrowed this down to
> being an issue with do_fetch and do_unpack....
> 
> First, I created a local linux-yocto repo and modified
> meta/recipes-kernel/linux/linux-yocto_2.6.37.bb to point to it:
> 
> SRCREV_machine = ${AUTOREV}
> SRCREV_meta = ${AUTOREV}
> 
> SRC_URI = "git:///srv/build/build/repo/git.pokylinux.org.linux-yocto-2.6.37;protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> 
> I do bitbake virtual/kernel -c kernel_checkout -f and the repo is
> fetched into my DL_DIR, unpacked into
> tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/git and then
> do_kernel_checkout runs. At this point, everything is correct.
> 
> At this point my local SRC_URI repo is:
> 
> * master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
> ....
> 
> My clone in DL_DIR is the same.
> 

Shouldn't this always be the state of DL_DIR i.e. any change made to the
contents of SRC_URI be exactly reflected in the same thing in DL_DIR?
If that were the case, I think it would solve the problems below as well
as the original problem in the bug report where downstream is apparently
being served the resulting badness in DL_DIR...

Tom

> My clone in  tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/linux
> looks like this:
> 
>   master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
>   ....
>   remotes/origin/master
>   remotes/origin/meta
>   remotes/origin/yocto/base
>   remotes/origin/yocto/eg20t
>   remotes/origin/yocto/emgd
>   remotes/origin/yocto/gma500
> 
> With the local head branches and the remotes being the same.
> 
> Now, on to where this gets ugly.
> 
> I commit a new branch to my SRC_URI repo:
> 
> My SRC_URI:
> 
> BAD_BRANCH
> master
> meta
> yocto/base
> yocto/eg20t
> yocto/emgd
> yocto/gma500
> ....
> 
> I re-run fetch and my DL_DIR looks like this:
> 
> * master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
> ....
>   remotes/origin/BAD_BRANCH
>   remotes/origin/master
>   remotes/origin/meta
>   remotes/origin/yocto/base
>   remotes/origin/yocto/eg20t
>   remotes/origin/yocto/emgd
>   remotes/origin/yocto/gma500
> 
> Notice, the new BAD_BRANCH is now only in remotes. This *should* be
> ok, since after we do_unpack we run do_kernel_checkout which should
> copy the refs in remotes to heads. However....
> 
> I clean out my workdir and run unpack. A git branch -a of the git dir
> it unpacks to shows that BAD_BRANCH does not exist:
> 
> ~/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git3+94bca94ff11276b4cfffc1818c1defa3051854b2_1+ea7bcd9e408ddfaf5ecd0bcc37956998add58e2d-r20/git>
> git branch -a
> * master
>   remotes/origin/HEAD -> origin/master
>   remotes/origin/master
>   remotes/origin/meta
>   remotes/origin/yocto/base
>   remotes/origin/yocto/eg20t
>   remotes/origin/yocto/emgd
>   remotes/origin/yocto/gma500
> 
> So, do_kernel_checkout never even gets the chance to fix up the git repo.
> 
> My questions:
> 
> 1. This appears to only be occurring with the kernel tarball, however,
> I'm concerned that it may also be happening elsewhere though. Without
> diving into the bb fetch code, should this be working like this?
> 2. This could easily be fixed by ripping out:
> 
> cp -r ${S}/.git/refs/remotes/origin/* ${S}/.git/refs/heads
> rmdir ${S}/.git/refs/remotes/origin
> 
> from do_kernel_checkout into a post_fetch target in
> kernel-yocto.bbclass, but if 1. is true, this obviously isn't the
> correct way to fix this.
> 
> Ideas? Comments?
> 
> -b



