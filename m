Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C1A0E00B01; Wed,  7 Jun 2017 10:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B301E00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 10:12:45 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id n195so15653864wmg.1
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 10:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8mub2AsLO5cYwVa64J//OJF8M4YgwhCYAxwiwjPZMeU=;
	b=ikauqJt1mn8sy5ViLG1Ener3IB0dFh7NEBo9beNtLARuhobPebzZ0YezJYDXjTxdz7
	3Gu0tFHbKYBjxVm9dL7t28slgjKkRxO+Yx7Dm4CBWvs20+Xm58o7knzqSRLlHzFDtlkw
	yehdd4Us90/VY+EuDL8CSPGSoxqVCErc7CST+/3+9ZKz9Wu3Bjx9uIukO4L1B9NnEIwa
	JXqXhtiUzuWQs+i3+kP5TQ189v4xsZqdQBWlDDk5T+rPgnhGTh8LmC7XhORud7mI38ke
	oY6B/d983aE8k2t8auaxpMnhAIzXAr6CDhv5vhYyE5xrvlD7xO3IOYncAPyyN8aRZXcL
	POOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8mub2AsLO5cYwVa64J//OJF8M4YgwhCYAxwiwjPZMeU=;
	b=O0j+bOFSDQAGKf1kNOxkTIspZZk983lmEmNbx6ivctlC4nj7GljnQP7dEQ4F34YlrL
	MCnXPyVn/7qQOjSs95PlQbOF0Cw1/F2UavwX5zspKgc09MWgLbc1jHqdwSH0t23MoyT+
	RZDDJ2qEvrx3ZMYodc8DgWpLuaNXl0nIPsqS/4ntVcyxZBKd+Bh/6Ek8h6m9DB3/5Vxx
	QK6zqjIjM1+a49j8t0QYeiwrUD/8E7xc++tDqAsgSXDjze4Ro7YPikV6+YYdnYURgQt9
	RJQe0nHQFYa9vxNDKNUL1W9ohyAYljGBYU1DN6kGSE4YvVubqBibAMZB3EG7Njhiez0w
	YlJQ==
X-Gm-Message-State: AODbwcAnK5701yYI+azoEVVgpyoCLiObbFz7aupEOXYv3z/MJ1uQyZH2
	TKqInzpptMRvZDd0QpsNrBDImI3fvQ==
X-Received: by 10.80.137.36 with SMTP id e33mr11916680ede.67.1496855564810;
	Wed, 07 Jun 2017 10:12:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Wed, 7 Jun 2017 10:12:14 -0700 (PDT)
In-Reply-To: <165f01d2dfac$6b374940$41a5dbc0$@ln-systems.com>
References: <165f01d2dfac$6b374940$41a5dbc0$@ln-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 7 Jun 2017 10:12:14 -0700
Message-ID: <CAMKF1srvA65ghO9g2dVW-xqfCVO=KtONaEQiEyVqgKCJ8zMLbg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting linker -l into a bbappend
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
X-List-Received-Date: Wed, 07 Jun 2017 17:12:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 7, 2017 at 9:37 AM,  <colin.helliwell@ln-systems.com> wrote:
> I have an autotools (C++) app which builds fine with my default recipe. But
> for a particular platform an additional (C) library is needed, so I have a
> bbappend.
> I can add in the additional compiler flag here, but I'm struggling to
> specify the additional library linkage - I think it's because the ordering
> on the linker command line is wrong.
>
> If I add '-lfoo' to the base Makefile.am then it builds fine (though
> strangely, "-lfoo" isn't anywhere in the linker command line?).
> But I'm trying to put this into just the 'append' rather than altering the
> base [non-platform-specific] Makefile.
>
> I've tried
>     EXTRA_OEMAKE += " LDFLAGS+="-lfoo" "
> and
>     LDFLAGS+="-lrfctrl"
> but these don't seem to construct the correct linkage order (functions from
> the library are undefined references)
>
> Is there a way to append this in the right way?

it depends on components build systems some are more accommodating of
the env passed to them some are not. So in many
cases you have to patch the make system of the component to
allow it to accept changes to variables passed from bitbake env
from what you explain it seems you might have to look into
component's build system to accommodate it.

> Thanks
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

