Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F79E00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 13:08:42 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so3325920obb.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 13:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/PpH8brlsKTC9KvpJmVBGOwfRiJmXn41IVFQ2Qikvt4=;
	b=fEoK3IBJ+2dPEGNn2/gGKop4wQfrrVBswjwlnW6ZnkdIm0xZF+rKQkz4oUD7KStxcC
	Na848sHtpMzy+AoWIwwkSwj1FN/4eGjwshb06VT1PIfLzcwsMejb08PH7AETCpJqHbaS
	PdwZNOqeaKOhP9pwO5J1zD73oycADoTjzvgr7BV9ESeQVWFutPp3QEjIOO3hbcW08HOW
	VLXHnJbN9OTh4q47G0gaOumbaaUIW2sGHEp9EDcsWJn2XjN19Qn0hZl1PtH4Q4m4emXK
	uD+xumzWwjF9BXOuWTx5cnazIJRQnCxeGHgVt1qicOE1QwtHz7lQKtL/rnDMKoXpq/bG
	o7rg==
MIME-Version: 1.0
Received: by 10.60.22.104 with SMTP id c8mr2190708oef.2.1348171721449; Thu, 20
	Sep 2012 13:08:41 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Thu, 20 Sep 2012 13:08:41 -0700 (PDT)
In-Reply-To: <CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<505A5FB9.4010802@mlbassoc.com>
	<CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>
	<4100342.qsm4CZIotx@helios>
	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
Date: Thu, 20 Sep 2012 16:08:41 -0400
Message-ID: <CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 20:08:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

To bring this full circle... if you want to build behind a restrictive
firewall using pre-mirrored sources and BB_NO_NETWORK, be aware that
recipes which:

  1. Specify a git repo as the source, and,

  2. Specify the revision to be built using a tag name


will cause your build to abort when bitbake tries to run 'git ls-remote'
to resolve the tag name.  So don't specify SRC_URI like this:


  SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v${PV}"

Instead, use:

  SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=8885ced062131214448fae056ef453f094303805;branch=master"


I added a note about this to the Wiki:

  - http://wiki.yoctoproject.org/wiki/How_do_I#Non-networked_Builds_and_Cached_Git_Respositories

I'm still new to Yocto, so someone please chime in if any of this
information is incorrect...

