Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB1D2E014BF
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:53:18 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x17so3779345vbf.38
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Ycc5pVgH5+xqKbgy4UCZf5ZjLr3oIfvOKOPWI5qTf6M=;
	b=oLE3I3mtSHPzLy5v3AAogpIcujfXsVT8VO9CNGIJm+ew+PUhqFqyTkQEN+EKGkHj+t
	+dz8wSHCgFzAoIpZ4cNsGDVhhSY7xfSUm7RMx5Be7hxulAH9UvA3sGOQat2VFjWmsiIR
	iOIbIEs27GDtIteWaqQr6PjbN4h8B/62pCSxd90lTkz2Y6YbeAkvM1muEIZRoFN5dR0d
	V2ON5AE2+tGmw1LN4IFrS6lNDEvFv9pO1FnY6YjS6W7tFdnASyBk7dR51TZts+sRFsAa
	JEbcBEznQ7NVsAjd/Hvm/yod2alI1Khr7LAG9Auoc227WvZrtJt7TAJChgI82F626fAS
	YhUQ==
X-Received: by 10.58.171.4 with SMTP id aq4mr1059114vec.26.1371653597275; Wed,
	19 Jun 2013 07:53:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 19 Jun 2013 07:52:57 -0700 (PDT)
In-Reply-To: <51C1C2BA.9020505@mlbassoc.com>
References: <51C1BA25.6080200@mlbassoc.com>
	<CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
	<51C1C2BA.9020505@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Jun 2013 15:52:57 +0100
Message-ID: <CAJTo0LYBJaWeyqPdbwfouWES+MH3_MC_JqKdonm53N0m4fCOmA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnG37mpuxy1gMClLalTmLiwDpJLO1PHa8jcT0n9Pa6EOIPMXN722i0BcSda9vpRz2tJw9no
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 14:53:22 -0000
Content-Type: text/plain; charset=UTF-8

On 19 June 2013 15:39, Gary Thomas <gary@mlbassoc.com> wrote:
> In the mean time, I faked that one and moved on and got the whole thing
> to build :-)  Now I face this packaging issue:
>   ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
> amanda path
> '/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'
>
> Any clues how I fix this?

Is libamar actually a module, and not a library? (albeit done badly,
as it's a symlink)  If so, then INSANE_SKIP_${PN} += "dev-so" is the
right way to skip that test.  This may be a bug in amanda which
everyone else has been ignoring.

> Query: I've built this now using a cross build (normal Yocto style) and
> native using a Yocto created SDK.  These _should_ be the same tools, no?
> I ask because I had a few gotchas - things that were different between
> the two environments.  If I track them down, are they of any interest?

I've not actually used the SDK but they should be mostly the same,
yes.  Differences are bound to be of interest so please do report
them.

Ross

