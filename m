Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B72FE006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 18:12:48 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaac13 with SMTP id c13so16757705eaa.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 18:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oeSjJvwflsDiSKDOWroD4sZdckv3vpOfZiBiz+kifiU=;
	b=mgE6xGVWofGRhHDomqZtf1nNmXztyCrERlNs07uLbVPuS2wiCx2UwNvndPTeYNbviT
	42zcrlPbNq78pjkrZ2SbMycbrli20k0RuWPpOZeOwhu3JMgrLyyqOBuQyL5a3wgB+GzR
	LCurtdUF9ahbe+1Pxdi99vneVsbNi5YNsoyPs=
MIME-Version: 1.0
Received: by 10.204.131.74 with SMTP id w10mr8659753bks.36.1325124767135; Wed,
	28 Dec 2011 18:12:47 -0800 (PST)
Received: by 10.205.121.142 with HTTP; Wed, 28 Dec 2011 18:12:47 -0800 (PST)
In-Reply-To: <CABcZAN=6mf4dZkXDrXDyL9UW+HWWEo6wzdLrYfRWr5MOc17WTA@mail.gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
	<CABcZAN=6mf4dZkXDrXDyL9UW+HWWEo6wzdLrYfRWr5MOc17WTA@mail.gmail.com>
Date: Thu, 29 Dec 2011 03:12:47 +0100
Message-ID: <CAMvUbCzUuNw8DyUxA=tqFJqq_=8uF79j9AcOxnQ9RQrKoAHiqQ@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Chris Larson <kergoth@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Thu, 29 Dec 2011 02:12:48 -0000
Content-Type: multipart/alternative; boundary=00151747bd0c07387404b531a765

--00151747bd0c07387404b531a765
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

On Thu, Dec 29, 2011 at 2:51 AM, Chris Larson <kergoth@gmail.com> wrote:

> On Wed, Dec 28, 2011 at 6:07 PM, Leon Woestenberg
> <sidebranch.openembedded@gmail.com> wrote:
> > On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com>
> > wrote:
> >>
> >> Poky-tiny defines a new distro policy for building tiny Linux images.
> >
> > Does this current image require write access at first boot?
> >
>
> That's a good question. I wonder how well we support ro rootfs today.
> It'd be nice to have a declarative mechanism to control use of a
> unioning filesystem and/or symlinking or bind mounts. poky-tiny does
> say that one of its high level policy guidelines is to have a ro
> rootfs, so if it doesn't do it today, presumably it's just a matter of
> time :)
>

Ah, I missed this line:
o Read-only or RAMFS root filesystem

However, our recipes in many ways depend on write behaviour on first boot.

When under classic OE, I always had to verify each recipe for correct
operation for ro fs's, and did so manually.

Would be nice to cover this use case better.

Regards,

Leon.

--00151747bd0c07387404b531a765
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello all,<br><br><div class=3D"gmail_quote">On Thu, Dec 29, 2011 at 2:51 A=
M, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:kergoth@gmail.com">=
kergoth@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div><div></div><div class=3D"h5">On Wed, Dec 28, 2011 at 6:07 PM, Leon Woe=
stenberg<br>
&lt;<a href=3D"mailto:sidebranch.openembedded@gmail.com">sidebranch.openemb=
edded@gmail.com</a>&gt; wrote:<br>
&gt; On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart &lt;<a href=3D"mailto:dv=
hart@linux.intel.com">dvhart@linux.intel.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Poky-tiny defines a new distro policy for building tiny Linux imag=
es.<br>
&gt;<br>
&gt; Does this current image require write access at first boot?<br>
&gt;<br>
<br>
</div></div>That&#39;s a good question. I wonder how well we support ro roo=
tfs today.<br>
It&#39;d be nice to have a declarative mechanism to control use of a<br>
unioning filesystem and/or symlinking or bind mounts. poky-tiny does<br>
say that one of its high level policy guidelines is to have a ro<br>
rootfs, so if it doesn&#39;t do it today, presumably it&#39;s just a matter=
 of<br>
time :)<br></blockquote><div><br>Ah, I missed this line:<br>o Read-only or =
RAMFS root filesystem <br></div></div><br>However, our recipes in many ways=
 depend on write behaviour on first boot. <br><br>When under classic OE, I =
always had to verify each recipe for correct operation for ro fs&#39;s, and=
 did so manually.<br>
<br>Would be nice to cover this use case better.<br><br>Regards,<br><br>Leo=
n.<br>

--00151747bd0c07387404b531a765--
