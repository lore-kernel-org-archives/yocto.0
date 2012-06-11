Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB38E0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 15:25:41 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2256849eaa.35
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 15:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TbMLJM246FxU1OwypF8Bx1bj2uFGLev9ApNre1Paiws=;
	b=K9GlL5KatsWIjBAn+nnP5CqcqPe3MyQwLS9cJQHTdsddkxxqvk5hHPnXhciXRW/ixO
	OFRmhhzpOri6vwvNwr8uL27lSibUCG/eX/h5MUJIMtLfO+IAiAMKYoNVuP/epz5rQgRl
	79dWr3tdMNdgl4Y+QGpdmjK5m9ie+D77Zqt1IBYAUjHc0I89VsX48LsipFCImIGUA+mp
	YboQbo1KqwBmnwDKwrDfgO+Odw2q1sDC2Kgcwt+nhd4W9USkC25uLvf98psdnKLXhDqP
	ywJjyU1/81fd2gZgNhgy3P9h8LPxJtGLKAsZ7RhBNpeYwHTHkDtzrfXjq9yCB7t61DYX
	c0Lw==
Received: by 10.14.188.140 with SMTP id a12mr5860906een.25.1339453540695; Mon,
	11 Jun 2012 15:25:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 11 Jun 2012 15:25:10 -0700 (PDT)
In-Reply-To: <4FD66C13.8010603@linux.intel.com>
References: <cover.1339194124.git.nitin.a.kamble@intel.com>
	<01b0f43cacd0beed93aebd108730bfe420ab2397.1339194124.git.nitin.a.kamble@intel.com>
	<4FD28477.9020201@linux.intel.com> <4FD66C13.8010603@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Jun 2012 15:25:10 -0700
Message-ID: <CAMKF1sr-C5oot0TBpSJmNNGu409803qwYzK5Lw-1+R_DYoMs7Q@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 1/1] eglibc: remove runtime dependency of perl from eglibc-mtrace
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
X-List-Received-Date: Mon, 11 Jun 2012 22:25:42 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 11, 2012 at 3:07 PM, Saul Wold <sgw@linux.intel.com> wrote:
>> Would the correct solution be to break eglibc-mtrace out into a separate
>> recipe.
>>
> I am not sure if this would be more correct or have the PACKAGES contain
> something like ${EGLIBC_PACKAGE_MTRACE}, which could the be over-ridden by
> the yocto-tiny distro.
>
> EGLIBC_PACKAGE_MTRACE ?= "${PN}-mtrace"
>
> and then change ${PN}-mtrace in the PACKAGES list to
> ${EGLIBC_PACKAGE_MTRACE}.
>
> This exposes another "global", so I am not sure which is better.

there are other tools e.g. memusage etc. which could be built in a
second pass and IMO
we should separate the eglibc-bin into  a separate recipe since
everything depends on system libc
its desirable that it should have few dependencies to build it so
builds can be more parallel and
eglibc wont be a bottleneck.

-Khem

