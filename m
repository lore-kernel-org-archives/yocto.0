Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12992E004E9
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 16:38:06 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so3052502gyh.35
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 16:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WjOQxcm4IQMs9COOh1QsBWTQJyf37UOXNBUhZTcKYJo=;
	b=Xp6XszI46/o8VuryjLL+5aJFmIJxhCxT+rudX1w25Da4M0tMGg5cUywhAcua8Gr/1C
	Zi9X0oZl2X6igCKzK3CaxAWgxquO7cp1bbuAIlkGx4Xe4CxI5uo6SDPsQTpahcojtV1F
	EPT9lefC0ZlzBOLQpiqjMSaaZpHQs1nbziHyU=
Received: by 10.68.20.226 with SMTP id q2mr15409970pbe.115.1319067484064; Wed,
	19 Oct 2011 16:38:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Wed, 19 Oct 2011 16:37:34 -0700 (PDT)
In-Reply-To: <0FC92EF8-16EF-4E20-91A4-B7431A2DD411@keylevel.com>
References: <0FC92EF8-16EF-4E20-91A4-B7431A2DD411@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Oct 2011 16:37:34 -0700
Message-ID: <CAMKF1srH0JbdrD=FcyWwvFH+CT8Rc2vpM51yv0cPVGPYf1rJEg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: unionfs, initrd, switch_root ...
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
X-List-Received-Date: Wed, 19 Oct 2011 23:38:07 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 19, 2011 at 2:50 PM, Chris Tapp <opensource@keylevel.com> wrote:
> I'm booting using the rootfs produced by bitbake as in initrd. This works
> nicely and gives a read-only boot device and a system that runs from RAM.
>
> What I want to do now is allow changes to be made to some files (e.g.
> network configuration) and have these saved on the boot device so that they
> can be restored at startup. To do this I plan to use unionfs to join / and
> something like /var/tmp/ufs. e.g.
>
> mkdir /var/tmp/ufs

may be you need mkdir -p  /var/tmp/ufs/proc

> mount -t unionfs -o dirs=/var/tmp/ufs=rw:/=ro unionfs /media/union
>
> This all works as expected. However, I now need to make /media/union the
> system root so that the system sees the ufs union copies of files. I think I
> need to 'switch_root'. However,
>
> switch_root /media/union /sbin/init 3
>
> gives errors like:
>
> switch_root: failed to mount moving /proc to /media/union/proc: No such file
> or directory
>
> This is where I get lost and I can't seem to find anything on the web that
> helps. A 'grep' of meta hasn't thrown anything up that helps - does anyone
> have a good web reference I can go and read? Lots of learning to do...
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

