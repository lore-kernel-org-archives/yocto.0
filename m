Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67131E00C43; Thu,  4 Jul 2019 05:22:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B5A1E00BE9
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 05:22:52 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id m14so5365852qka.10
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LxHNHJqJtuPte99UD0WW74aySZu/F8Igu+QII5M1JN0=;
	b=KP1XkD1x6RhRqNAJj3CLKSYahFTAfgJy0DwPu+GFUNbdexjifl9pcpXbxo3OtvENkN
	YUfJUvcO0vraXakpMvZ5Wvu3640mrxL3EzoOuCth+coIBakdz1MXgeQrsvmP/78NJ2m9
	Gjsvo0jMyqy/O1kLMdUIYjXiHclHFdIr3ZJ2TbP4oVFc8/lYfKcqU+/1dImlQU77lkDc
	VkI/YOyBuHhL8I89wWOoNl1KZSH6pAtysZTZgp8RSw/suKMOJa9H+P9g4xPNnHa4GbFF
	E9908FIVmFMls7OImxBBTARX6F35xB963dUqhidqMS3kKAIZGANgJn0vmjTKG7PqyFX+
	To/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LxHNHJqJtuPte99UD0WW74aySZu/F8Igu+QII5M1JN0=;
	b=tTp9r5dzHRUwnKaldyPhp99znd2qu43wUEzt03N35T+jThTiisYhCf7SR4m4wBWm3q
	q2m75EzEaBktLORnKmJurAGwgXZpWmu4lRYDuj0+IcrQ48EtoskQ3kttJpPeVCAuVZ+Z
	I/7c8iP9tzFDa/PEs2EpfwYitPCA2gx/g7ApYxtreb40ia1d+TKacWsA1Yo0mhzXFBlV
	duSd2kbKQgrW2NRdHCCmnmILdqGymeHJ26CN9pRM6tZ1OOkHCGJNRr2Emgi1B6oqpBJi
	nYZyW9UXfsmAapAhV32gpgC+t8lDeeqf78wwtViYvHHCJrYN9OoQzJDumJluu8/cAbf9
	/hBw==
X-Gm-Message-State: APjAAAVO4fAuYMgkdHR4VKBrHQf6BRkHalMb++xuV8bSVmWtj3mLLKt7
	DWVCqrrWHFMW1JW/MJT5weS3U3mYWiIk243jdcg=
X-Google-Smtp-Source: APXvYqzdP0cZGUKe4pk6Q9eltGnua4Duh2APN1Lid1/ZGh/PItyRqfh95OiC+vPm6Q4MWtsXfmbQgbwEfE6H20ztlCE=
X-Received: by 2002:a37:795:: with SMTP id 143mr35423355qkh.140.1562242972358; 
	Thu, 04 Jul 2019 05:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
	<CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
In-Reply-To: <CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 14:22:41 +0200
Message-ID: <CAGAf8LymkVusvHg8x7f0eo_s_AnazjyHvFg9eio2Wdhq34_8Cw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 12:22:53 -0000
Content-Type: text/plain; charset="UTF-8"

> Weston is arguably superior to X11 in most respects, and for new
> platforms which are not tied to a classic X server I entirely
> recommend Weston over X.

Never opposed that. The idea was to (as first step) do the easier and
much better documented part (X11 build), and then do the next harder
and more challenging step, Weston protocol.

But this is only me and my thinking. ;-)

Zoran
_______

On Thu, Jul 4, 2019 at 12:16 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > Why Weston protocol? Why not classical X11 Client Server in user
> > space? Which DeskTop are U using in Ur YOCTO build?
>
> Weston is arguably superior to X11 in most respects, and for new
> platforms which are not tied to a classic X server I entirely
> recommend Weston over X.
>
> Ross

