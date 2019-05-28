Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65BF1E00D39; Tue, 28 May 2019 02:53:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A21E00D35
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:53:55 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id t5so2104634wmh.3
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s/ZRGHifNUL799vsM+1QugZzQho+alqcflQ7xynlkLo=;
	b=Mkq1JJrtoi57DQuCNtcOsBoz/lYWxrw4RSBVLenxIhTebdXaVEun0vG6LxVyIyTzEc
	qjqUp3BWgFch0o63ugvnPb6Vwv+ko7Nr0eyM/ME2hpJ/Qej1prlYYxTo6htTV/3j3Znz
	kDa4uGHAY9IAmcnJgQt9MMBryd7rzQgm7i105tehfg57+d7mB+7jv+5p45kRkmTO4ztU
	i+lcJbsXJNkOt2P6dYqSx3jhf3o5fmWpilSFAX+YxnvXe0xnYOTJhv/F1L0WpFLcwMrI
	5HNC/AbE9g6I+SSme2T2rcyJDLBkmijxGXaX5XljTuQNNCEl/Vq6JwcChqGVMcsUlCzZ
	D+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s/ZRGHifNUL799vsM+1QugZzQho+alqcflQ7xynlkLo=;
	b=q2MgmFirUNMsY4r/0a6F0Wr8eISIMIbwkscfcJlNqRbBFGEgJhLunivXZH0qveZLAz
	Ptex/JopGG5hPRG8C6fQrCUBopI7cFRLfYQKqTXzAk3cJTikNeEBps+I1dg6BYpHhY+u
	JPk3QTsYYD/K6vqWbsbRLRMbwQfKS9Od+FeUCoxN+q84BfQqbrvZVnQvHDRoe0lvKgrF
	VAnc0eqFdPXARy3rp05USVeMAb1j7wPCPxznU3BxERuJYIa8TWqHw7Ly6XBPF8mTJo19
	886b3lX95FosloOa1+75yr+En4GnXA/BLfBQnGmq/r7Wd8ElzA5DbGal8NFgEtAzp4Hv
	7wQA==
X-Gm-Message-State: APjAAAWXhr3F75+Rm6RmITHaxzZmgxBSzLa3SyPmkpoRHyyBWxIeery9
	Xc9ZAFy80bKVoRWBJ+nDZqKxi9luLS8lzXOOGghaEghPd58=
X-Google-Smtp-Source: APXvYqx29oSCNjbMObh8CG79SNc2xsMxBdGTwmwrCvDL4IIWoffIhyBM1GNXEvIMTud/CTiqd4oaUrv2VV6WLES1BL4=
X-Received: by 2002:a1c:2082:: with SMTP id g124mr2411236wmg.71.1559037234358; 
	Tue, 28 May 2019 02:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<e6f8207c-755b-7e47-5398-117736bdd4c5@3mdeb.com>
In-Reply-To: <e6f8207c-755b-7e47-5398-117736bdd4c5@3mdeb.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 28 May 2019 11:53:43 +0200
Message-ID: <CAAfyv34MEDEZHuQdZAnB+hosHi+SrJ9mOW=3Cixg8EMZPw+V6A@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto <yocto@yoctoproject.org>,
	=?UTF-8?Q?Piotr_Kr=C3=B3l?= <piotr.krol@3mdeb.com>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Tue, 28 May 2019 09:53:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Maciej,


On Tue, May 28, 2019 at 11:48 AM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
>
> On 27.05.2019 19:32, Belisko Marek wrote:
> > Hi Enrico,
> Hi,
> >
> > On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net> wrote:
> >> Hi,
> >>
> >> i try to keep it maintained, but now i just have a lime2 for testing
> >> on real hardware, and i don't have the resources to do test builds for
> >> all the supported boards.
> >> Your help would be welcome, i can't check right now if i have the
> >> rights to add you as co-maintainer, anyway i will add you.
> > Thanks I have few sunxi based boards so can do tests also on my setup.
> > Pls ping me when you will add me. Thanks.
> >> Thanks for the help!
> >>
> >> Enrico
> > Marek
> >> On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com> wrote:
> >>> Hello,
> >>>
> >>> I'm just curious if meta-sunxi is still maintained? I was contributed
> >>> to layer back while and when look now thud branch is un-compilable
> >>> (dri2proto not replaced) and warrior branch not created yet. There is
> >>> 14 issues + 6 pending pull requests. Added maintainers also in CC. I
> >>> think it would be good to have sunxi properly maintained as boards
> >>> with sunxi processors are popular. I can give a hand as co-maintainer
> >>> if necessary. Thanks a lot.
> I think I have some of the dirty code for integration of the recent Mali
> blobs
> with the mainline kernel as described here:
> https://bootlin.com/blog/more-opengl-binaries-for-the-mali-support-on-allwinner-platforms-with-mainline-linux/
> We were testing Qt + Wayland on mainline Linux IIRC.
> Let me know if you think this could be beneficial to the community.
> We are not actively using at the moment, though. meta-sunxi was not that
> active when we worked on
> that so maybe we were not motivated enough to polish things up and
> submit a PR.
Sure. Pls submit PR. Have you seen recent discussion:
https://github.com/linux-sunxi/meta-sunxi/issues/144#issuecomment-496408159
?
Does your work use the same components or? Thanks.
>
> We use orange-pi-zero as a base for our product we use for on-hardware
> validation:
> https://3mdeb.com/products/open-source-hardware/rte/ so I believe we can
> help
> with maintenance of this platform / SoC (we use meta-sunxi for building
> images for it:
> https://github.com/3mdeb/meta-rte).
> We have quite a number of other Allwinner platforms as well (H3 and A20
> mostly).
That would be cool. I plan to spend some time on co-maintaining
meta-sunxi so I hope feedback and merging will be much smoother ;)
>
> >>>
> >>> BR,
> >>>
> >>> marek
> >>>
> >>> --
> >>> as simple and primitive as possible
> >>> -------------------------------------------------
> >>> Marek Belisko - OPEN-NANDRA
> >>> Freelance Developer
> >>>
> >>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >>> Tel: +421 915 052 184
> >>> skype: marekwhite
> >>> twitter: #opennandra
> >>> web: http://open-nandra.com
>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

