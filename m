Return-Path: <raj.khem@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B28EDE0044D
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 09:57:14 -0700 (PDT)
Received: by lbom11 with SMTP id m11so295333lbo.35
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 09:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WHBIK37j5p9uxePWVKeGxxMBX17evy4moA6FMLAPFm0=;
	b=e0Ufao59/gDXfI7/qxGD3i0p8a3w7kqA/hriH1Iw7INfxjWPjmLw6BYnFYu6dYdAOs
	PhCs3d9hisXrC+RDpz37RinV02ODZfzl6+eT/JFeu/CgB2c7WJr+kPts+nq+7NRjuues
	87Eu7cYrlVkEBf3ArqHSgTS1+SQGAioVjVn1BNw/76rEsauE8u+qevldYiU/v6CV+kgD
	07j7pGeJVGHtcgk7mCHDLg9Ft914czy6HSd7nBsX3iWQw8a/SFfjMY/gYoL+q+x4FZZA
	8WobGDmVDv+3/C3Q5DtS52KUZmwqc9SqI1uFjP9C8FVp+CMVV16NEXbWkJfolofLHe3b
	tsuw==
Received: by 10.152.102.228 with SMTP id fr4mr439354lab.23.1332262633372; Tue,
	20 Mar 2012 09:57:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.2.71 with HTTP; Tue, 20 Mar 2012 09:56:42 -0700 (PDT)
In-Reply-To: <1369360.rBu7e7v26n@helios>
References: <4F68A6F6.8080900@linux.intel.com> <1369360.rBu7e7v26n@helios>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 20 Mar 2012 09:56:42 -0700
Message-ID: <CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc.
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
X-List-Received-Date: Tue, 20 Mar 2012 16:57:15 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 20, 2012 at 9:23 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> IIRC the thread ended with Khem asking if UCLIBC_HAS_RESOLVER_SUPPORT='y' was
> in the uclibc configuration, the implication being that dn_comp is unavailable
> unless that is true. I'm not too familiar with how uclibc is configured and
> with only a brief glance at the recipe I can see the config seems to be
> automatically generated but I can't see exactly how additional options (beyond
> what gets added from DISTRO_FEATURES) would be added.
>
> Khem, could you help out here?

go into the uclibc build tree and like kernel or busybox it will have
a .config and grok that. If this is disabled then enable it in
uClibc.distro file under uclibc recipes dir and rebuild uclibc.
ideally these are distro knobs but for tests you can try it
file ( uclibc uses kconfig )

