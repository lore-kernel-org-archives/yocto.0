Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68CFAE00961; Sat,  4 Mar 2017 11:04:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D58F9E00777
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 11:04:39 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id x75so18997993vke.2
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 11:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FAAzkN//7/ZIwSurrbU59h4EaFATGqccPS3rVr1jei0=;
	b=Y3RVugs08x+vrohydbzcoPjDGHK0G5da3jy7jkifJyPBMpnTV2H940FT21kNt+3A80
	2gS85DuDstj1UhUOQwo3BA3t16nKST784742s6Zn1dwmVhAIAAGFegDx1BFdk6ASI2Yw
	RxUFDKKRrqZ1z5h1k4KzRDxPJZvMHCKIyzfghPlJmZKNY3zWoDszD2Of2ogZBnNFYQw6
	FMq+6nFV/SWk8NDyoLk5DRxY6W8AmcWz7gwuwbcaPxBJ0+sZoP6mOOxbhGA4nvEMQ0v9
	VMthpfIUy4+yzzNRfL+vGLOZtBT9TmxoewFbqh52tjHqfmoQNHFyv7CDkxYtVYCs9fh9
	UhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FAAzkN//7/ZIwSurrbU59h4EaFATGqccPS3rVr1jei0=;
	b=uPsmz9SCgAV0cHdH+zj6bETYswgyx5Ps9RdRcSFIJHJJMDjxr8Se89n/DJ3C7ngmGU
	NmnD1lMMU0HNvAU7vToWrjrHrRt3yNJDIkk1v8gn5JAJZzyVi6ShwA0FTixwD75HMaEs
	PYyiW6eirOfM1RZfqCaSLlUk4YLyGVDDjOsIJBHdZE7qQzRg+DSn/ZbOupsygexSWXA9
	l7p20ZKsLTRU3H1CPIror/VRwcp2LcAI7GCmsWNwgTpxfPeQmuyxMjhGiZIuarGV7Oir
	XLADM5N6fV2+lunuOiuDi0K1+n+c/G1ooTP8WBQc6+cHCsL973oww4LP5AA/8+wvXfvs
	xcwA==
X-Gm-Message-State: AMke39kPIwIfmaSl2VgzqzXiir6j1oRQ/nOzO8wmEvDzw0HOpeP/GXxk6A9J7E0e2aDcnz9mSziLykp2ptCwUw==
X-Received: by 10.31.197.196 with SMTP id v187mr3504394vkf.84.1488654278686;
	Sat, 04 Mar 2017 11:04:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Sat, 4 Mar 2017 11:04:08 -0800 (PST)
In-Reply-To: <CABatt_whzMr-Sq+-v2BgfLvZ-QESTP=nboUOpw1VQkw33TM7fQ@mail.gmail.com>
References: <CABatt_whzMr-Sq+-v2BgfLvZ-QESTP=nboUOpw1VQkw33TM7fQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Mar 2017 11:04:08 -0800
Message-ID: <CAMKF1srxSTWxjaT-AZq8ju__ZSPeUJ0vcfbCS72rD6Bho2iVgA@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Systemd recipe breaks resolvconf
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
X-List-Received-Date: Sat, 04 Mar 2017 19:04:40 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 4, 2017 at 5:33 AM, Martin Townsend <mtownsend1973@gmail.com> wrote:
> Hi,
>
> I've just tracked down a problem with resolvconf not working on my
> board and it was due to the systemd recipe creating the resolv.conf
> link and patching etc.conf. Here's the snippet (I've taken it from
> krogoth but it is still there in morty).
>
> if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true',
> 'false', d)}; then
>     # if resolved is disabled, it won't handle the link of resolv.conf, so
>     # set it up ourselves
>     ln -s ../run/resolv.conf ${D}${sysconfdir}/resolv.conf
>     echo 'L! ${sysconfdir}/resolv.conf - - - - ../run/resolv.conf'
>>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
>     echo 'f /run/resolv.conf 0644 root root'
>>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
> fi
>
> As systemd's resolved is not enabled by default the above is
> happening.  The problem is that it breaks resolvconf which setsup
> /etc/resolv.conf to link to /etc/resolvconf/run/resolv.conf and
> doesn't seem to work when it's not.
>
> I've put an ugly hack in a systemd append that undoes the changes
> above and resolvconf works fine.
>
> Not sure what the best way to fix this, the if statement above should
> say is if ! resolved && image doesn't contain resolvconf but I don't
> think you can do this in do_install.  A DISTRO_FEATURE of resolvconf
> could be added to state that you are going to manage the DNS resolver
> configuration.  The other option is to remove the above if statement.
> Should systemd be setting up /etc/resolv.conf if resolved is not used?
> If you not going to use resolved then you are probably going to use
> something else. Or is this because systemd stops resolv.conf from
> being created? but wouldn't that only happen if you disable SysV Init
> altogether?

somehow the resolv.conf creation needs to get into tmpfiles.d when systemd
is enabled, thats what it tries to do here. If it conflicts with
resolveconf then
lets see if resolveconf can deal with new paths may be with symlinks or so.

>
> I can create a bug report if you think this is a genuine problem.
>
> Cheers,
> Martin.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

