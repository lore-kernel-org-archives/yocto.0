Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 978DCE003C1; Thu, 12 Jan 2017 12:40:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A915E0033D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 12:39:59 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id f2so2573095uaf.3
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 12:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4gNcKiy9pT82/Jf9zH40+lLjkcku/d9XDFonrzkuYjo=;
	b=vbHD6XsbsfMTHya4aUqBh/Zzql+mA9sfoUNbvGs58Jp8cfxCdt/lSOKLn0tzvqa+7N
	09W752XpN1nQ6eHOsOVOJ8CWrrN2AfGXaWnaEjP5unm+1NmHpfC+ERM2BBmlKBllv77b
	BfXVoIV8loo8kitNx2a3FO6/RT327tmDnKC8P3LExDmia50Nt2S+aM+uPXhM3f2BgX+f
	U4Qa3r8LNf4wfLiCKMxK7edmtgohxa7scB090nA7TwssNF9p/eCy7ySIKump6y94LcqT
	DLSSVDEM70avAOKuTiYoOxj/Gwki23rDaxVMc2aGlYBljd4KfW2RRyTCmD9Joh1R3HqM
	UWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4gNcKiy9pT82/Jf9zH40+lLjkcku/d9XDFonrzkuYjo=;
	b=SKnqfBw7JCbC1sf665VDGUy7ueNBJ3XECU6PoSinYe5s3yRVrgcqupHJArZQk4aOvx
	W90KKVE81M1d6k/4LDZ1EauMjHbtvpObetFbGcmwJTjaGJqfGalOfG6V1PYb79COCFEU
	UG5nAcTITw6mX9siaW6W0BVbxEdxc3PBs45WB6eyz47mQoIPJUJm7qsq1ibxTEaTKg4O
	hW0VfEozGrO+UeWqaUXsq7z8TmOx1Cql3l7q5BRY94s4QIHk4EirU6K3RByuC46iDtku
	55PgqJ8fUPFHO1xRJ/HnoAoa07W4dn5xi2Mm6Fm+W69G8WtMJ4792zvz+IDY/nl4Qwe/
	CmAw==
X-Gm-Message-State: AIkVDXK+k/jPR6I9cwetyOUlgUxqXxZa15wX3s8mtBmIKZhF5W/Icw22vkQ0VJ1Ukr6HSiVpiVhOZQulqcnQJA==
X-Received: by 10.159.41.3 with SMTP id t3mr2079687uat.32.1484253599299; Thu,
	12 Jan 2017 12:39:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 12 Jan 2017 12:39:28 -0800 (PST)
In-Reply-To: <CA+-BmJabGkyK91Uw47pevvvXNKg+Uf8hiCC8xf1gz87mYWAkQg@mail.gmail.com>
References: <CA+-BmJabGkyK91Uw47pevvvXNKg+Uf8hiCC8xf1gz87mYWAkQg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jan 2017 12:39:28 -0800
Message-ID: <CAMKF1sovnNFPC_2tytR6jvxwwQsWfVjO3Cu4+uTqoBADFMq+8Q@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Override machine conf settings
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
X-List-Received-Date: Thu, 12 Jan 2017 20:40:02 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 12, 2017 at 10:37 AM, Ayoub Zaki <ayoub.zaki@googlemail.com> wrote:
> Hello,
>
> I'm trying to figure out how can I override machine settings, for example in
> raspberrypi  I want to change default kernel version from 4.4.x to 4.1.x for
> that I created in my layer meta-somelayer/conf/machine/raspberrypi.conf :

there is a machine config with same name in meta-raspberrypi layer and
thats taking
precedence over your layer see conf/layer.conf where it sets the
PRIORITY and also ensure
the BBPATHs are prefixed for your layer to be in front of
meta-raspberrypi layer. So that
it uses your layer and falls back to meta-raspberrypi to do the filler work.


>
> require conf/machine/raspberrypi.conf
> PREFERRED_VERSION_linux-raspberrypi = "4.1.%"
>
>
> when I ran bitbake it gives:
>
> $ MACHINE=raspberrypi bitbake virtual/kernel
>
> NOTE: Tainting hash to force rebuild of task
> /home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/linux-raspberrypi_4.4.bb,
> do_compile
>
> so it seems that bitbake ignored my override settings !
>
> I'm using morty branch and my layer meta-somelayer has higher priority than
> meta-rapberrypi :
>
> $ bitbake-layers show-layers
> layer                 path                                      priority
> ==========================================================================
> meta                  /home/zak/Projects/yocto/meta        5
> meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
> meta-poky             /home/zak/Projects/yocto/meta-poky   5
> meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
> meta-raspberrypi      /home/zak/Projects/yocto/meta-raspberrypi  9
> meta-somelayer        /home/zak/Projects/yocto/meta-somelayer  5
>
>
> when I tried to override the setting in rpi.conf instead of raspberrypi.conf
> in meta-somelayer/conf/machine/rpi.conf:
>
> MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
> require conf/machine/raspberrypi.conf
>
> PREFERRED_VERSION_linux-raspberrypi = "4.1.%"
>
> and running bitbake with :
>
>
> $ MACHINE=rpi bitbake virtual/kernel
> NOTE: Tainting hash to force rebuild of task
> /home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/linux-raspberrypi_4.1.bb,
> do_compile
>
> it worked !
>
> My objective however is to override the machine settings and keep the same
> MACHINE name.
>
> Any Ideas?
>
>
> Regards,
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

