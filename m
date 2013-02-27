Return-Path: <autif.mlist@gmail.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 110E5E0070F
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 07:26:19 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id fs12so701599lab.11
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 07:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=++QrS1VOgZvNj1w6qrvoOc4CKEeDpP5SIER/3OrAK0o=;
	b=sVpY8UaQ6X0QEyAbTpvx6SPFDBbTtWzMh5AEiQ7CheasUE0tU1HwhAhZ3LSxsn5Xhi
	+GdRf4kZJnMN+D3qD2vJY1Fiynn9SvjgLgGsGXg1mP9L5oOdKXmAbfPK9Kukk62f9Nnb
	rMP8yyz1V5VnvmSgcq1u4JWMZwfDIiGGtPjhxVmG+F8/5sNzRZzcksoEmPnNBswHmE0M
	T55JeME3RM0J6ixw2qL517fSHlsD0+xKKzni6yQEq2f43q0toXkJwsSqanM1vs8XoUOs
	W0sm0Bha9UaCt6UtF4qJInjKQtfq3M/mv1JUUHWp1+SIV56sKV498ilwXX95QgYNqFdF
	CtAA==
MIME-Version: 1.0
X-Received: by 10.112.49.74 with SMTP id s10mr2297062lbn.92.1361978777402;
	Wed, 27 Feb 2013 07:26:17 -0800 (PST)
Received: by 10.112.8.37 with HTTP; Wed, 27 Feb 2013 07:26:16 -0800 (PST)
In-Reply-To: <loom.20130220T173024-685@post.gmane.org>
References: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
	<4F062177.3010706@windriver.com>
	<CADzUK1+xUNsNpUVy1kEPtLVMO7kecL9bxfnOeNYUyrsDUk2u3g@mail.gmail.com>
	<20120121235720.GD12691@sakrah.homelinux.org>
	<loom.20130220T173024-685@post.gmane.org>
Date: Wed, 27 Feb 2013 10:26:16 -0500
Message-ID: <CADzUK1J5-7u_K9j6=2F9wO04XQ2v0KABMGJN6UYHNgDh7pScRw@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Evgheni Antropov <aidjek@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Trying to compile mono on target for machine crownbay
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
X-List-Received-Date: Wed, 27 Feb 2013 15:26:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 20, 2013 at 11:30 AM, Evgheni Antropov <aidjek@gmail.com> wrote:
> In my case I have resolved it in another way:
>
> correct in Makefile for "eglib" folder SUBDIRS variables and excluded "test"
> from them values:
>
> -----------------------------------------
> egrep "SUBDIRS =" ./mono-2.10.2/build/eglib/Makefile
> DIST_SUBDIRS = src test
> SUBDIRS = src test
> #SUBDIRS = src
> #SUBDIRS = src
> #SUBDIRS = src
>
> +++++++++++++++++++++++++++++++++++++++++
> egrep "SUBDIRS =" ./mono-2.10.2/build/eglib/Makefile
> DIST_SUBDIRS = src
> SUBDIRS = src
> #SUBDIRS = src
> #SUBDIRS = src
> #SUBDIRS = src
>
> "build" is my own directory where I'm compiling mono.
>
>

Just FYI - meta-mono is available as a layer that can build mono on a
build machine (cross compilation) instead of natively compiling mono
in target device.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/

