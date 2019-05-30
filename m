Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4253BE00D4C; Thu, 30 May 2019 05:37:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0B7BE00D47
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:37:11 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id n4so1061874wrs.3
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wxB8rV+gYEQUg3BzQgxjIZ4HwbwY6GU0xPp5QThcP6o=;
	b=XNoRx9ZE0Ra2siX5k/lwG1ZaqJL9I6KV0qtRQJd7xpBe5dMJznqZsfGajf+sgX48tB
	NDz2aKdXBeHH6vF0zzlyPPfqV8T8BYjWKkVNptCyXQUNPZUWD5FOeq76n8q0X1axr6XI
	uL+oKhbxiGo0TgEfZxvVeChyh+3/QudJdyJgHUA0xINzpH0jeHlHdxLWP0EdrxaLPvKa
	g2K7f4+Cl0QJm6vB8XaH2wbF0pFl4NuYDAqa9Hf5QzqmIRMqxMOnhyztxr1G6dYiqS+R
	mn4yt++jP3CKHJhIdQFjL1rJjjX+NWFr91NFV0lBJpbUi1z4XS7NiBPUt5bfBRb062Cf
	IVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wxB8rV+gYEQUg3BzQgxjIZ4HwbwY6GU0xPp5QThcP6o=;
	b=oBb/+TSUMywGulDhpAzekJ/1dN9jGpVmIz72IkqniUQO4M1RmzIeAKjKQA5IRZoUXb
	N+XfxoQZdvx5HnCwV62eir4SWpUagLqiK1Ye0IvK9m+PrdAQi9Sfxd5sO04Y2q9hcLPc
	D02YzmwIAVbEYpiS1fakIMLpiPULBn5uGwp1fOYR6EQoYfqCH5TTO3TbQRbmMNa47Wr7
	HZGT9TnqUG7nrkc+FT2EWlAN8454pdidKYRcLec6KYT05W/d4a61k4TKZlNkpSaUr5gl
	N8AGF4tS7uXrkw2w6/FTP7R2RLd7D85Gf6QN3ZHj8o9qwatxY5z7l+d4ZNG+1aCKg6bx
	vQhA==
X-Gm-Message-State: APjAAAVV4CldfBgStsHpj45/JMbzvPNbOFPZUFoeC1d1t+e9ukGczxyG
	AvYq4s73qyx1TxQuoOpxuLnfdNV/91a0UiOKKCY=
X-Google-Smtp-Source: APXvYqyfl2VtXn0N8fLaDKb3e6AOp6Hu/5X2wdTOAOVvNBrQnOScmL0sYI2LBqBxil5LGdMVbh5MX1Uy0KTOaMZ+TII=
X-Received: by 2002:adf:d851:: with SMTP id k17mr406147wrl.114.1559219830667; 
	Thu, 30 May 2019 05:37:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37gM8Vn_ynODSKTB8v9kRYxfv28pPtkGc=fx4bEXSK9ew@mail.gmail.com>
	<CADkTA4OwvYxZXNA=WnqZVNtYdUJQ1+v92-056Mn4Fcfw7e2KzA@mail.gmail.com>
In-Reply-To: <CADkTA4OwvYxZXNA=WnqZVNtYdUJQ1+v92-056Mn4Fcfw7e2KzA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 30 May 2019 14:36:59 +0200
Message-ID: <CAAfyv35JN7LkGBD33v-Pb51v1QuENJech0CvpyPXroGGTgPsug@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Thu, 30 May 2019 12:37:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 30, 2019 at 2:35 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> On Thu, May 30, 2019 at 4:14 AM Belisko Marek <marek.belisko@gmail.com> wrote:
> >
> > Hi,
> >
> > I'm trying to add support for latest possible released kernel in
> > meta-sunxi by using poky warrior and hit this QA issue:
> > ERROR: linux-mainline-5.2-rc2-r0 do_package: QA Issue: linux-mainline:
> > Files/directories were installed but not shipped in any package:
> >   /lib/modules/5.2.0-rc2/modules.builtin.modinfo
> > Please set FILES such that these items are packaged. Alternatively if
> > they are unneeded, avoid installing them or delete them within
> > do_install.
> > linux-mainline: 1 installed and not shipped files. [installed-vs-shipped]
> >
> > I can simply drop it but would like to see if anything was updated
> > from actual linux-yocto (which is 5.0.3). Ideas? Thanks.
>
> I have a change to kernel.bbclass that packages that new file, and
> explains where it comes from.
>
> Stay tuned, it'll arrive in about 5 minutes :D
Awesome, thanks!
>
> Bruce
>
> >
> > BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II

BR,

marek

