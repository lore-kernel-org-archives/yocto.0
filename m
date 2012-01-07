Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C187E006B5
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2012 07:16:15 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so2493087vcb.35
	for <yocto@yoctoproject.org>; Sat, 07 Jan 2012 07:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Yco4vf+0i62XxRioAlR2v5rSs4Z7FpgrdgpUPAlHSSE=;
	b=wBszLv9baEdWneP/YWJeJQjEWoL9ItjpfKjrnr0banvRWVBHjlWPCkm9Ak2HuUa/3d
	4ZyrzJRrQ2pVZTnwU8Tn0YIBHmOfzzJzluZGCG4AWapcqpWPl6/+byUPJogoNU6KKVQ7
	XEJxBBMCjjwWdzRK0+jfX/DRWtS5vtYRqj+bM=
MIME-Version: 1.0
Received: by 10.220.149.135 with SMTP id t7mr5859561vcv.34.1325949374602; Sat,
	07 Jan 2012 07:16:14 -0800 (PST)
Received: by 10.52.159.9 with HTTP; Sat, 7 Jan 2012 07:16:14 -0800 (PST)
In-Reply-To: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
References: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
Date: Sat, 7 Jan 2012 10:16:14 -0500
Message-ID: <CADzUK1LC=XDuiC_kf_ScaZrb8A9VPq88OqxA0w1aVoW89F6amw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Does my build disk's filesystem make a difference?
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
X-List-Received-Date: Sat, 07 Jan 2012 15:16:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

You are better off with one of the dual boot OSes in a virtual machine
that a dual boot situation where you are trying to write to NTFS from
linux or trying to work with ext2fs tools from windows.

I do not even know if you can create equivalent of symlinks (used
extensively in yocto) on an NTFS

In theory, it might work, but NTFS was not built for linux, likewise,
ext4 was not meant to be used for windows. It is a bad idea.

You know - unless this happens to be your master's research thesis :-)

On Fri, Jan 6, 2012 at 6:53 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> I am creating a Yocto Project build system. For various reasons, it is a
> dual-boot system, win7 & linux (probably mint 12, haven't decided). I have a
> primary boot disk with both operating systems and a large secondary disk to
> use for build trees etc.
>
> Does the filesystem on the big secondary disk matter? Ideally I would like
> to be able to get to the large data disk from both operating systems. That
> would necessitate NTFS, as win7 does not speak ext4 reliably, but I don't
> want to slow my builds down.
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

