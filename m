Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 884C9E00D42; Tue, 18 Jun 2019 09:16:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F68E00CB9
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 09:16:57 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id w17so9629697qto.10
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 09:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SA9UI0xxcY9le5LGlEBG7Q2kCHZqiknvo5qMrzVYWfg=;
	b=LDYG/apXz6yZDAazmpdEi1+gARpmg/QKfPYsWhpxKBhlK/VH0e0Z3ukiNcwF9eoga/
	0ubIQDqg0U0koMHwCn2g5lbGMn1P8hAYU+nhnlmaPU+s/w2Vj9pQGOFtnPhKrnryEfHZ
	pS99HCZLVOBbGIferCqAmKq9WqOvjS7XusMRrpYU0vAXaWTj+B/nGkvHHwESDPSbftP7
	xv6CDADz/58BuInQXPxrc6mnCkxDsz0A2bqRoULNpJBKEphmvhcVuLJnnCrVEUrDntNl
	ETF1VWirGQUH50pEWUFnok6+q8xA97MByA1xpLhssvVsJXE+fLhkwZxbqxSvS5kggu7f
	jMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SA9UI0xxcY9le5LGlEBG7Q2kCHZqiknvo5qMrzVYWfg=;
	b=C+rz7E7yJ1xmZdik6kCXtHXyfcxjuFct4lXfKzcWa6m6EPKQx1my/L3lQYeX4/bolI
	wIp1FSJr8AqH6bKq8AUflFK01YrcDeawyZHbNUDVh6j8UuaCu/kkMI3e0EOEZZvyWHTM
	SsmC30Cd4WINE08TFXnOLPHuzvdNP4ekmgHTKhJbleDLd/YxndgUXihR78pX8/fdITWR
	FFiPtIMDdU/wYeoxZYcdGUYlxi6P5t6aXtixSNF1VrBt8u77yz1gvHvmp1f8LL9j9PBW
	1PBoh/O7jDH+DOJ7NmquVh2yVzkJtzANYP5cq4ewqnBQdYTrmuN9BTdfB2GqdfEyiOMw
	YHMQ==
X-Gm-Message-State: APjAAAWJ3gZY1Wex8Fzfvx9LEHNLaJILNcrm1+ijMJWSm7GFpPyfwx03
	LznQX2pn679k8TMo9scUZk/MroYVIIJ2caJ+p30=
X-Google-Smtp-Source: APXvYqwxWc1X7RaPILCKHBbb9ll4DEyCMjUcVGRMW9s1G5Tv+wZcT4gX/ytkEcB4u3GWfFXA0QYQ4nBYclutUkyUn6o=
X-Received: by 2002:a0c:bd1d:: with SMTP id m29mr28330952qvg.181.1560874616347;
	Tue, 18 Jun 2019 09:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
	<trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
In-Reply-To: <trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Jun 2019 09:16:30 -0700
Message-ID: <CAMKF1sqq0vxQUrayZzG02T8ciRe19JJ90-TkNy1Exa16Wz7vng@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Tue, 18 Jun 2019 16:16:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 17, 2019 at 10:48 AM Arno Steffens <star@gmx.li> wrote:
>
> Thanks for explaining this.
> I take some time to read about thumb/thumb2. The feedback is mixed. It seems to generate more compact code, but some say it speeds up, others it slows down because of reduced function set - and it can cause strange effects.
> And mixing this causes time to switch processor mode. So, as I am not an expert in this and can't decide what ist best on per function base and speed is of highest priority, I think I better should use not thumb(2).
>
> So, do I get it right that with this cortexa9t2hf I just have the option to compile it for thumb2? But without using a dedicated compiler option it generates same "standard" arm code and the difference is just to adapt all the Makefiles for this suffix.
>
> According to Martin I can get the previous setting by just set ARM_INSTRUCTION_SET to "arm" instead of "armv7a". Mh - I just afraid that I lose other kinds of optimisation. (I am just a user not an expert in arm architecture).
> On the other hand for those like me it is better go the standard way. Once I am sure compiler results will not become worse (see above) I go for the pain and renaming my toolchain/makefiles/stuff.
>
> Thanks for you taking the time.

While the gains/losses from using thumb2 ISA depends upon type of
loads you have and nature of code, in general this is most commonly
used ISA in linux distros, so most of the apps would have
been used compiled with this and probably optimized for as well. I
would advise that you do some bench-marking for your loads and then
decide if using thumb2 ISA is right choice for you or not.

if you want to drop thumb2 you can set appropriate default tune in
your machine config and that will do it

DEFAULTTUNE = "cortexa9hf-neon"


> Arno
>
> > Hello Arno,
> >
> > Let me try to explain my point of view. Since here (my best guess) we
> > have some asynchronous bitbake code which went South upon introducing
> > T2 HW extension.
> >
> > Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> > superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
> > media coprocessor) exists in both of them. In other words:
> > cortexa9t2hf = cortexa9hf HW + T2 HW extension.
> >
> > Point [2]:
> > > bitbake gives me in 2.5:
> > > TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> > > TARGET_FPU           = "hard"
> > >
> > > and in 2.7:
> > > TUNE_FEATURES        = "arm vfp cortexa9 neon thumb callconvention-hard"
> > > TARGET_FPU           = "hard"
> >
> > These two lines are the same: you are able to use 32b arm mode, 16bit
> > thumb mode, using armv7 HW with neon HW extension, and using HW FP
> > extension as well. The Cortex in both cases is A9.
> >
> > I expect that somebody somewhere in bitbake version 1.42 - 100% sure
> > (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
> > and I have no idea if this is done intentionally or not.
> >
> > Because of that I copied Alex and Ross to CC: into email, so they
> > should unveil this mystery (I would prefer "armv7" to stay in bitbake
> > 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).
> >
> > Bottom line: nothing to be done by you, Arno, seems that bitbake 1.42
> > should return "armv7" as TUNE FEATURE.
> >
> > Best Regards,
> > Zoran
> > _______
> >
> >
> > On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
> > >
> > > Hello Zoran,
> > > thanks. As far as I understand is thumb2 another mode of coding, that might create more compact code.
> > > But I want to keep all compatible to my previous tool-chain and settings.
> > > The only file where I can found this "cortexa9t2hf" is
> > > ./meta/conf/machine/include/tune-cortexa9.inc
> > > but I can't see how I can control Yocto to generate "cortexa9hf-neon" as before.
> > > Or have I been wrong the time before?
> > >
> > > bitbake gives me in 2.5:
> > >
> > > TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> > > TARGET_FPU           = "hard"
> > >
> > > and in 2.7:
> > > TUNE_FEATURES        = "arm vfp cortexa9 neon thumb callconvention-hard"
> > > TARGET_FPU           = "hard"
> > >
> > > so armv7a seem to be missing. In terms of thumb both is same. But is that the reason? Where to set it?
> > > Arno
> > >
> > > >
> > > > Hello Arno,
> > > >
> > > > Your question, per say, has little to do with YOCTO forum. But I'll
> > > > try (as my best) to answer your question.
> > > >
> > > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit).
> > > >
> > > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > > > question is what is T2? T2 is addition to the previous architecture
> > > > Cortexa9hf, and addition is Thumb-2 mode.
> > > >
> > > > Hope this helps,
> > > >
> > > > Zoran
> > > > _______
> > > >
> > > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
> > > > >
> > > > > I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
> > > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something wrong or what exactly does this t2 mean?
> > > > > Target system is a Zynq7020 system.
> > > > > --
> > > > > _______________________________________________
> > > > > yocto mailing list
> > > > > yocto@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

