Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75AC7E00D45; Thu, 30 May 2019 05:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C3CE00994
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:46:52 -0700 (PDT)
Received: by mail-lf1-f66.google.com with SMTP id y17so4933874lfe.0
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HlMOfy3L2KsjHByhqmFwRqDJqmNNQZKvv0MQrx+oJVo=;
	b=Ya57PdO8y5JgIYyyOyNCoGLg93acE5FDfnxlweoseVd3WLfuaB5MtxnQszsJ5RN/7/
	x1wQW20ILT5IrSQoKucpONO34eJ+5iR1L0CRVGBszTAi7GfuAuaqJHjGHunjJ7E9JP67
	uybo5n2BbsLDQvWQVQ+z3OZUAPL6Ck9b5jupxz0T3yj9IvRF3TNeuiKh4G1eBeSaHXoJ
	f34m1fzg1hqz1FyIOpXfiuh7pnAwMp1pPdeSsPJNCs9ZP73Ry5DyF0vLubrBb8Yq3n6j
	BrF1O6Rj4FNqb7xpzrgCENBhu8GUO13bEaoBLxQYR41nzlGXcWKwiLAHiq90e3v81NO5
	chsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HlMOfy3L2KsjHByhqmFwRqDJqmNNQZKvv0MQrx+oJVo=;
	b=f33yZ6AXmwYs0V5YBF6DLqiN7a9vspaBf0epp29jD0T6k5V16u6rh6nVSbpQWoIwhi
	Fo2+9r/LRRn1tJijaQewX7JjOdWTq4U5XPNRzljjn26CWzX0eLKdrlOQan+qqdFZ76vr
	dIvq4q/fKfwS6Ep7/iS41iCjrAdtaHtvxZgvnJAm6jiLUJVYyfO/yrkWgprth04k9YyN
	gaSXrLmrQ8FafOSDraq3ayX7vNGZd0kuiISiPBrLLFdLkGoERyLjo+x09t5x+5DpNaWs
	QYlY2IilseWum/RrHl0ESh/qpPP+LXv5rClb6mTVBDsFNj+Ugz3wK5Bb0fHD6hB4pdzj
	7j0w==
X-Gm-Message-State: APjAAAX1rOq0JyIJPySAeW5O1WzzZJMCr1Jm66XmSfhzrhQHHneRg6jK
	H6k3lx+Vc7PPEAcdtE+K859nVKodfcVCSHHeiMc=
X-Google-Smtp-Source: APXvYqxzYhBwd8OoUSjQXnptJOZCRkTDoWd82sGs/YTDAzlQoAs69e0gKOjk9E3AhQXcHOLCRUR2TIYawbOykZifHW8=
X-Received: by 2002:a19:ec12:: with SMTP id b18mr1969772lfa.149.1559220411566; 
	Thu, 30 May 2019 05:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37gM8Vn_ynODSKTB8v9kRYxfv28pPtkGc=fx4bEXSK9ew@mail.gmail.com>
	<CADkTA4OwvYxZXNA=WnqZVNtYdUJQ1+v92-056Mn4Fcfw7e2KzA@mail.gmail.com>
	<CAAfyv35JN7LkGBD33v-Pb51v1QuENJech0CvpyPXroGGTgPsug@mail.gmail.com>
In-Reply-To: <CAAfyv35JN7LkGBD33v-Pb51v1QuENJech0CvpyPXroGGTgPsug@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 30 May 2019 08:46:40 -0400
Message-ID: <CADkTA4NTj+k-n9U_4yQGVQJRNq0OCS+-m2mRaMPZmsRGNNz1MQ@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: warrior: QA issue when bump kernel to 5.2-rc2
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
X-List-Received-Date: Thu, 30 May 2019 12:46:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 30, 2019 at 8:37 AM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> On Thu, May 30, 2019 at 2:35 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> >
> > On Thu, May 30, 2019 at 4:14 AM Belisko Marek <marek.belisko@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > I'm trying to add support for latest possible released kernel in
> > > meta-sunxi by using poky warrior and hit this QA issue:
> > > ERROR: linux-mainline-5.2-rc2-r0 do_package: QA Issue: linux-mainline:
> > > Files/directories were installed but not shipped in any package:
> > >   /lib/modules/5.2.0-rc2/modules.builtin.modinfo
> > > Please set FILES such that these items are packaged. Alternatively if
> > > they are unneeded, avoid installing them or delete them within
> > > do_install.
> > > linux-mainline: 1 installed and not shipped files. [installed-vs-shipped]
> > >
> > > I can simply drop it but would like to see if anything was updated
> > > from actual linux-yocto (which is 5.0.3). Ideas? Thanks.
> >
> > I have a change to kernel.bbclass that packages that new file, and
> > explains where it comes from.
> >
> > Stay tuned, it'll arrive in about 5 minutes :D
> Awesome, thanks!

The patch is out on the oe-core mailing list, make sure to look for it there.

Bruce

> >
> > Bruce
> >
> > >
> > > BR,
> > >
> > > marek
> > >
> > > --
> > > as simple and primitive as possible
> > > -------------------------------------------------
> > > Marek Belisko - OPEN-NANDRA
> > > Freelance Developer
> > >
> > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > > Tel: +421 915 052 184
> > > skype: marekwhite
> > > twitter: #opennandra
> > > web: http://open-nandra.com
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>
> BR,
>
> marek



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

