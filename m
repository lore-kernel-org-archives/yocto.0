Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE93E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:12:25 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id f12so6429580vbg.11
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ginj1xjw7lILxirB+HqnObZokm6E4SPo9+nvNaY93po=;
	b=lbcbwaEday0ihK+ThWv+5dnhsjLDxcTKptbJCFLcp5F4nPdeNyQ9g5WVegSHkIZq3j
	eRIOJsf2ELyzzRLq68cZ7Dw/feHMlt7u/WfLOOJLdkhwXmIGEw5NGISMA3oyXdaix+0i
	NdyhS8AJTi4SF6fScJU43sbly2yKJPEL7YkA+j6yAg5bnexrgSGLwU69L2w3PL/kevVG
	5OipePA/qkjhFB2vDuYkL9kpNrXHv/uJBnymtogQXTHvODF7GrmaVh8WgnT+ajhNXN5g
	XrlMgZsypNrUTWTJ4+jCMQ3qIGS5ZfqvA1O9qdZOcvs3TV1vW0uhFW5hxhC3vysD6LR7
	kRXA==
X-Received: by 10.52.121.7 with SMTP id lg7mr11975669vdb.68.1374675145110;
	Wed, 24 Jul 2013 07:12:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Wed, 24 Jul 2013 07:12:05 -0700 (PDT)
In-Reply-To: <51EFDD09.3030909@mlbassoc.com>
References: <51EFDD09.3030909@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Jul 2013 15:12:05 +0100
Message-ID: <CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlf4S+v7ql5d1mHXKZCrm+v/IGMRT56gorSbO4fIrm2dYn/M/R6iQb/dFHlVAqtS+l0ictM
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging questions
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
X-List-Received-Date: Wed, 24 Jul 2013 14:12:27 -0000
Content-Type: text/plain; charset=UTF-8

On 24 July 2013 14:56, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm [still] trying to set up a package for Amanda.  I'd like
> the end result to match how it's done on other systems, e.g.
> my desktop Fedora box.  However, this layout is causing some
> QA errors which I don't know how to fix, e.g.
>
> ERROR: QA Issue: non debug package contains .debug directory: amanda path
> /work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/perl/5.14.2/auto/Amanda/MainLoop/.debug/libMainLoop.so

This is resolved by fiddling with your FILES lines, the problem being
that PN is packaging that entire tree when it should be split up.
$PN-dbg collects files before $PN so you can add something like
"$(libdir)/perl/*/auto/Amanda/*/.debug" to FILES_$PN-dbg and $PN will
continue to take the rest.

> ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
> amanda path
> '/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'

I'm curious, what does the symlink point to?  It's possible that we
can refine the check to reduce the number of false positives, because
this is a fairly common one that needs to be skipped.

You can skip this QA test by setting INSANE_SKIP.  In this case,
INSANE_SKIP_${PN} = "dev-so" (you can identify the tag to use by
looking through classes/insane.bbclass for the error message).

Ross

