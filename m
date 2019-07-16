Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 570F8E00D4F; Mon, 15 Jul 2019 21:32:41 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31AE1E00D4A
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 21:32:40 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id s145so13502387qke.7
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 21:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2ARPp7J1YQQf/nHuO1HQzMzMAMR7cy4w+1DZly1b1hw=;
	b=tTp9D/8+JATkEhcjMlTpDSgstotweAEz0jjnJrbHV2dKC6nTkyKHQFqW+VVm6q8T5s
	s0h0K6cP5GxI9hRz19lJgJKPsbSmZjHN6O0o0c7fBVEyQE9EDxjO4aZjdFG1PFWTEetD
	aSgSsy9VJ0jw/0cug48tzvrq6p8ZUJq3xAz0HnDWhrPa0CmLtJr5fgtg265IALiqyLrh
	CDF72Qpz4E72D97Kkkpq8onkZKazqPbVUlJsKH7LyLgdX39bFA7oTecsS3uHZygrcp3t
	7ANMBkOOEc1dAB5KFEQijs+7lcBTJr8nO/76tm9xkoItHQZ5crIOJxwklx0R8NkGN6uu
	Ag7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2ARPp7J1YQQf/nHuO1HQzMzMAMR7cy4w+1DZly1b1hw=;
	b=sw++Qv9w3MjAqJ2Na06B+HRiozQ2nYVJc/kWTGhEY65y8KoCvqy12hbgCJZiKpdiBd
	zT9gzH9tZb1Y7XUaZx/A5vkIiPBUKPq34Uwi4YONXojTmtHBiuecddJ/UIljL8Jz662/
	DBLPL1SgQqh82AEJVEk1wVxdss3+ekwQ1iTeMChnMYxG5EAZUZS0sSbZyzNRPrzH6tqh
	u7thj0zyAarRg4y0iflmlHAy0lMbcGWcbgaFbDHpphXQSH2wwQ9aVyaFqwAF1h5g8ydj
	xYGUIH39aBH4NHyvjWvg28emDWXZrif3KuFAQvKlAhR7C077a91j+0grIZlZS0hjCB5m
	vTBw==
X-Gm-Message-State: APjAAAXYvyK+cDSVyX0sGtKQ4zZCj3sWb2Kf19x7ntC3INMxleICGA+c
	8QmCeJGSFFPSN6ljnuSj/tjxvZmA3rQlBRZta8U=
X-Google-Smtp-Source: APXvYqwI4aNSleo6HhlsvBxGYdXvqGrIfuWbIerZnpDIneBR5W8a47VWrc5MLGnzGnoHodnx4B0PbSkQ4ZzEJ4Zr2+I=
X-Received: by 2002:a05:620a:16d6:: with SMTP id
	a22mr20025205qkn.414.1563251559500; 
	Mon, 15 Jul 2019 21:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<CAA=hcWSvSDx5sXRdiLFFE8cJa_wyLDhDO6OHmB+c0JcgfRLc6Q@mail.gmail.com>
In-Reply-To: <CAA=hcWSvSDx5sXRdiLFFE8cJa_wyLDhDO6OHmB+c0JcgfRLc6Q@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 16 Jul 2019 06:32:27 +0200
Message-ID: <CAGAf8LxtLJKvrJemB=1r5gRVoGRbyjk==UM7fvFOnczt_HV8=A@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Tue, 16 Jul 2019 04:32:41 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Jupiter,

I actually continued this topic initiated by Moritz, to find out how
you and me and somebody else also can build the yocto build system
with bundled rescue kernel into the rootfs.

My target architecture I am playing with is armv7 A8 (BBB), since I am
experimenting with it.

I actually built the armv7 A8 (BBB) with the unbundled initramfs,
where the BSP actually ends up for the testing purposes. All this how
I did it is described here:
https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html

Here is also latest local.conf for warrior (how I am buillding it):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/local.conf_full

I never built such a system with rescue initramfs, ending with/in
rootfs on mtd/flash, or SD card, YOCTO wise, so I actually continued
this topic to find out exactly the same what you asked me above.

You can go over this email thread, and try while building with what we
all put as collection of patchworks.

I have no time to do this, since I need very urgently to do some other
important for me stuff on BBB.

Zoran
_______




On Mon, Jul 15, 2019 at 2:10 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi Zoran,
>
> On 7/12/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> > Moritz,
> >
> > Thank you very much for this reply. It makes it very clear... What is
> > the current State of Affairs for the topic.
> >
> > Let us see if there will be the improvement to this topic. I'll
> > document this on one of my private GitHubs. And archive this email.
>
> Any chance to access your documents?
>
> Thank you.
>
> - jupiter

