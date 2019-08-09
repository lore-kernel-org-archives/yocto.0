Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39CE3E00DED; Fri,  9 Aug 2019 09:51:02 -0700 (PDT)
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
	*      [209.85.222.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A99CAE00945
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 09:51:01 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id u190so8485591qkh.5
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2019 09:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MdjTwBUy1+26voN23+2PhDmY359u1iE99JTgUP4s0kI=;
	b=rrrGXyxgf2JIPn/Gjgtxn/K6OISrMeiovMrVuhs3v7gfl2J22137ctjjLR1H+k2V9g
	SxnY27tSxOJ4VcXYkRglfezTwOSy1kMuhZuVnHBAAe9KGQH2J3bL8sE+nEQkTbAA+QjW
	MUj/0ntVPMITGly2am6LMDJTcnUDFnlbP1dNRb14eFY6Ba7LPQ85+POhRmCNw6OJDGGB
	HS/Eh8WLqZZ4WqGum8ciHCXH9n++ao0Vz6qug1ROPdsDHR515/Tg+xOFjxhX0qbWT8G4
	zfYigoVvPwYyEWmIT0eIS8SWm5O8tM+uYPBtXdWEhQVCI3sm4WquUWozv1+5W7eVmIyo
	HlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MdjTwBUy1+26voN23+2PhDmY359u1iE99JTgUP4s0kI=;
	b=Sy0mBgsS3Ddss45zNxeybJoiAggOl1svoVrGh2uU9hBFTlvCoaH+TldnUMpZUcrm8o
	XhgzrRhvnq4l1JzDVM0FSVzBo+xUNUpLjaDiPBFekujPT/usTs24K0CT0qNN6Pp/UqzW
	96L6hGGQzHxxhCm5QZx+ABvpJS5EmeaHV7kv2hHkJvYfQVjd5ptvyeDvE7OpCXp3SzfL
	Qk7ddRuV4K/ZZsWk7r7L/IErbu2/CLMHxh2RNYD5efbz4N955zTRdbB4Lw5ECaCBehPe
	62iK6GFbkBK7kVnCSrUP1a5KEUYLYoMuYN20AMUqX1FuLefOCXGc4dRF27xbdL6GRSiy
	bKyQ==
X-Gm-Message-State: APjAAAUecBgB9BDCdaA5X0cKX71nybTZFl2SSZmgMlycXu1Cifjb/sRE
	/bVpMjZj3C1nC+1Pb31vUNZpxMZmjvrxBb6KSIM=
X-Google-Smtp-Source: APXvYqyZ3ywZKdYTjjUwsf5OL8TcrJMJQpYd03NTOIWhbwCM8E/U87gGSTg6rVfzvE0JmBxvvQVaHXofdRGKmLl91JA=
X-Received: by 2002:a37:ef1a:: with SMTP id j26mr9554945qkk.474.1565369460517; 
	Fri, 09 Aug 2019 09:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxnLncDewt_k1SUP-H6313ubeNRRW0cqp-gawJ_xsrgaw@mail.gmail.com>
In-Reply-To: <CAGAf8LxnLncDewt_k1SUP-H6313ubeNRRW0cqp-gawJ_xsrgaw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 9 Aug 2019 09:50:33 -0700
Message-ID: <CAMKF1spSYzqBKA-n+kRSZv+J08CmOGogsfR_D_o19b_Y8578Pw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto repos for NXP referent platform MCIMXABASEV1 also called SABRE platform?
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
X-List-Received-Date: Fri, 09 Aug 2019 16:51:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 8, 2019 at 11:20 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello to all,
>
> I am trying to find out some recent yocto repo, which contains YOCTO
> reference repo for the following NXP board:
> MCIMXABASEV1 also called SABRE platform.
>
> Here is one repo I found reading this document... But this is too outdated!
>
> http://events17.linuxfoundation.org/sites/events/files/slides/AGLAMM_How%20we%20Run%20AGL%20on%20i.MX%20processors_tkobayashi_25FEB16%20rev.D.pdf
>
> Does anybody have some other repos/suggestions in mind for such a
> board? Please, come forward if yes...
>

I would say look at

http://layers.openembedded.org/layerindex/branch/master/machines/?q=sabre&search=1

> Thank you,
> Zoran
> _______
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

