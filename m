Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54A3AE00A54; Wed, 27 Feb 2019 13:40:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC1C8E009EB
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:40:41 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 448pyH69xBz4R;
	Wed, 27 Feb 2019 22:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1551303640;
	bh=akMCNbaLspcPd0Hyhz3bUmt+zDcxzN0k9UONdIPBDdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=racuO5mEKs7iVCf4eTUMAZ4GNyVG6T/32AFucLktp9wfl+FmJY+k4NUE4H4wURS+x
	x7yI+KS+75tBV3dS1lNs2nE8lfVSFBFWTCfXDXK1F2zE9y43GEfrVyDDpmOHr8Z3Og
	Rf5oD+9ob8bZx+bYdz3HXv71BoPz92/CALrn+roQhOGRuZ5b1RN3ACvJtHuUur3WTI
	QMwKdxy8+b7HTZ9OoXR/Jdz6OTGlJXn540noLUMGINyDY46akNZmUNkLb0ajFehJqZ
	mDvl2QRxMLx4AmoBYp7Ho5Dzkbg3YyGEJq5zibu+JwIxTKkdKj1irhHinsZvedM5cx
	TaeUhqTk16dFfrg5udvG9FQ8wXzjRgJBUbtfrdHJ3CVkqsbxjJL0YYp4LCRuPGXG26
	0B+cPsscjDMNPRfGhNKji7iS9Yevp7D2AldVz1PbWDeYEZl5Wcb65FaXAtBqAtaDz1
	bnv14T8aO69/uKXuVTCRJ2YSw5MaevQfBwdzlcbu411ZdjpxsNmxZAFeY9R8HB+4hN
	Mad3Arsx/3c6GUdsjTUPz2pP2UP8JSsSPsFk0FYgeFsgEm/kbDsi30CHfEyYzJKzM8
	H+jbpBMw/A4LTrsFhzsCX+GrO7RzDHwxxAj0qrNU7tF9Vo1pP/pQJ1qf600yu1bJEg
	qibJyddTshRYfqmWJBpJvRP8=
Date: Wed, 27 Feb 2019 23:40:37 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20190227214037.GA11051@localhost>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20190227200902.GG12046@bill-the-cat>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 21:40:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Feb 27, 2019 at 03:09:02PM -0500, Tom Rini wrote:
> On Wed, Feb 27, 2019 at 09:06:38PM +0100, Jean-Christian de Rivaz wrote:
>...
> > So as expected systemd is there and busybox is not. But there is a lot of
> > useful commands missing on the resulting QEMU image:
> > 
> > root@qemux86:~# ps
> > ~sh: ps: command not found
> > root@qemux86:~# w
> > ~sh: w: command not found
> > root@qemux86:~# find
> > ~sh: find: command not found
> > root@qemux86:~# grep
> > ~sh: grep: command not found
> > root@qemux86:~# ip addr
> > ~sh: ip: command not found
> > 
> > I expected that all the limited busybox commands would be replaced by
> > the full
> > featured commands. How to fix that ?
> 
> Correct, you're missing a lot of stuff.  Somewhere on my (and other
> folks too) TODO list is a packagegroup that includes procps and psmisc
> and grep and tar and various network packages and less and more and...

"all the limited busybox commands would be replaced" would be a huge 
list from dc through gawk, minicom and wget to vim.

And would vim-tiny qualify as "the full featured command" of busybox vi,
or should this include vim with full features?

The nice thing about busybox is that it is so small,
in many cases one full featured command alone
is bigger than busybox.

It is not obvious to me what usecases people have in mind for
getting rid of busybox, and whether everyone is aware that
something like "all busybox commands replaced" is *very*
expensive regarding filesystem size.

> Tom

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


