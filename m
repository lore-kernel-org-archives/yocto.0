Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DD9B7E01522
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 00:59:05 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id kp6so1149426pab.8
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 00:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=xz1nijRCkGV9eQZ9jOMU7yH5vlafiIfYS/wUBsr0hRY=;
	b=q5S7BXN3jNKhoVeqD4Zg9w1PARrouca/icaxIolI4VLZGwom9LwueaAsbcXN9/krr3
	xlllTxLMfr2akiCqCPrCq6apjD5BI8B4usxtEw6+cKE1yJlLNIVNT+V9DDpateM8m8ed
	r+21WLlN+Pbkdd5BJ4yjpz2EQOWq5jNNwqx5q+6KaMQA42FOVshqj0nhNA0/NDxCNhlt
	7JHciKCSBM6NeWTyvP5LQDyLV6aLDZxoEzP6t/+a/LVzfRFgfzFF42HZMg4f2udBeRKr
	9EnsdSfR94QMOiR4VSdz1s6YqbLYG5A+QcYptW3hKTU1M4+RhkNOg71xZqy/vldtVgQv
	8QvQ==
X-Received: by 10.66.100.226 with SMTP id fb2mr2870587pab.138.1362733145684;
	Fri, 08 Mar 2013 00:59:05 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id tm1sm4899869pbc.11.2013.03.08.00.59.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 00:59:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAHUNapRb8W=qiwysYo+iuBB6mBZxn88XEhXg8sx_=3tEOXonqg@mail.gmail.com>
Date: Fri, 8 Mar 2013 00:59:03 -0800
Message-Id: <55CE8992-9DD2-4F6C-99A7-97CDE29B9A3F@gmail.com>
References: <CAHUNapRb8W=qiwysYo+iuBB6mBZxn88XEhXg8sx_=3tEOXonqg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK-only build
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
X-List-Received-Date: Fri, 08 Mar 2013 08:59:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Mar 2, 2013, at 8:47 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> I've been really blown away by the breadth of the Yocto Project; not
> only will it help you create a distribution for a device but it can
> also help you create things like a -dev image or a self-extracting
> SDK.
> 
> Sometimes I like to work with a "sub-Linux" device, something that is
> too small to run Linux, or a device on which, for whatever reason,
> I've decided I don't want to run Linux.

you could add  -ffreestanding  -nostdlib and -nodefaultlibs to compiler
and it would compile bare-metal apps but you may need to provide
libgcc if needed. You may not be able to use the one shipped with
toolchain in SDK since it is for Linux env. However adding a pure bare metal
SDK generation is a whole different story and may be out of scope here


> 
> I've been wondering lately if, theoretically, it would be possible to
> use yocto to create a development environment for such projects
> (specifically an SDK). Sometimes these devices need specialized
> software tools (e.g. flash programmers), or maybe you need to use the
> vendor's special, hacked-up version of binutils/gcc.
> 
> Often these projects have instructions pages on how to setup your
> environment, and for the most part these instructions work fine and
> will produce something which with you can work. But sometimes the
> development environments they create are... strange. For example,
> they'll leave you having to provide long argument lists to gcc so they
> can find all the relevant headers and libraries. Nothing tragic, but
> just cumbersome.
> 
> It would be nice, I think, to be able to create a yocto layer and
> provide recipes that would allow a user to very easily bitbake a
> development environment for, say, an ST Discovery board. These
> recipes, then, would follow the vendor's instructions, but using yocto
> all these instructions could be performed with one simple step (which
> would then make use of bitbake's powerful fetching, sstate, and
> cross-building tools).
> 
> Is the concept of "I'm going to build a distribution/root-filesystem
> for you" too deeply engrained in the logic of the Yocto Project that
> it couldn't be used to only build -native tools and assemble an SDK?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


