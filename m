Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B40E009CF; Mon, 23 Apr 2018 03:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E5E0E00843
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:27:06 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id t123-v6so17832738iof.7
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aVzuZUgdC6bKi0HsMLTddR4GdKgvbzWnzrylmFcR3FA=;
	b=pviX2Ohe0V5OV12SEmPqt0DSD4g7MhW0gMWzWFfHj6JJeznC7/Y7ij3Y+DLddLPDNX
	MLKG3qHQkE4xY59UkJ8yCfS8CX2grcMheRewGoVcOZOq7SktLkbbitxfBhlMNcRqnfbr
	ny8AlIvajGjpwR9NJuvrSXBuLAZp2W1ozahZZ2HaCccmj2gk5HX8RZVnENpxbxHkGAiz
	teOCisy6yYPjBB4oO6tyExFrRNP5CKRvcdyf0upHyyJ0W8xhYfxSaK+7BwITkbLP0xA9
	FPy5uTAZflIfJwu/HFf7QeWm6x966Xc5crEUMVVGrGU/iLkB4V5RfL/UbUeE0xtDu0Jd
	JK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aVzuZUgdC6bKi0HsMLTddR4GdKgvbzWnzrylmFcR3FA=;
	b=icFW884rhB4pD9Fpgv58tPzCGii4VDL6ikIMga7hPnMweHYXk1czq3w1MJs9pwzjMW
	e4i3ZIa1NvMmMChCCDONSK5owNFlI9yMhG0PoZubfGKBK1sMQxSwzabeH+acs89J/yyu
	amw41cVUiT+tzmm4PKsl/EuuM09Wo3u8IOLVdwOwzRvoXGZGqYz2YZCPx/X8uD+NC26V
	92oMaYNOFcyAVu5VGpOMndqES5oYn0bScbLh+rZX8n6SmjWmXdQOnWF1N6Qhy7esC8gv
	QlKQ1sNIx6Ymc/3wi1z/5CAuiV5moamwndffy7Qxa6meC88Vff5NCevpz9ilzniWaSNh
	DIUA==
X-Gm-Message-State: ALQs6tAkt2aGHItMIzUIrWGiVkNfmFUGzy8/mLJBbvjyrI/8RfuXQBDo
	I2yQf6ti9pVOEEVuCzbzHO4EiuzB2VfDhqbNrgBzZg==
X-Google-Smtp-Source: AIpwx4/cF2KZ1q/+MZ39Zj/z/wXuDAOEs4Q5z+uj1GAdemUtq/udjtqOCSMc6JekquWPPlYDR6bjSXyayOApqbBASdM=
X-Received: by 2002:a6b:248e:: with SMTP id
	k136-v6mr19701919iok.270.1524479225725; 
	Mon, 23 Apr 2018 03:27:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Mon, 23 Apr 2018 03:26:45 -0700 (PDT)
In-Reply-To: <20180423102328.18058-1-pkj@axis.com>
References: <20180423102328.18058-1-pkj@axis.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Apr 2018 11:26:45 +0100
Message-ID: <CAJTo0La0YE+F1aTOwUCGjaM=0aZCAPyQs5-U9jB3h7x4Qtr4YQ@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][sumo][rocko][pyro][PATCH] coreutils: Avoid warnings due to update-alternatives for man pages
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
X-List-Received-Date: Mon, 23 Apr 2018 10:27:08 -0000
Content-Type: text/plain; charset="UTF-8"

Pushed, thanks.

On 23 April 2018 at 11:23, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> The man pages for this package was disabled in 46349e1a with the result
> that the following warnings appeared:
>
>   WARNING: coreutils-6.9-r0 do_package: coreutils: alternative target
>   (/usr/share/man/man1/su.1 or /usr/share/man/man1/su.1.coreutils) does
>   not exist, skipping...
>   WARNING: coreutils-6.9-r0 do_package: coreutils: alternative target
>   (/usr/share/man/man1/hostname.1 or
>   /usr/share/man/man1/hostname.1.coreutils) does not exist, skipping...
>   WARNING: coreutils-6.9-r0 do_package: coreutils: NOT adding
>   alternative provide /usr/share/man/man1/su.1:
>   /usr/share/man/man1/su.1.coreutils does not exist
>   WARNING: coreutils-6.9-r0 do_package: coreutils: NOT adding
>   alternative provide /usr/share/man/man1/hostname.1:
>   /usr/share/man/man1/hostname.1.coreutils does not exist
>   WARNING: coreutils-6.9-r0 do_package: coreutils: alt_link ==
>   alt_target: /usr/share/man/man1/su.1 == /usr/share/man/man1/su.1
>   WARNING: coreutils-6.9-r0 do_package: coreutils: alt_link ==
>   alt_target: /usr/share/man/man1/hostname.1 ==
>   /usr/share/man/man1/hostname.1
>
> This change removes the update-alternatives for the man pages that no
> longer exists.
>
> Change-Id: If79bb634e05db48462265c6e65291db27169fa51
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  recipes-core/coreutils/coreutils_6.9.bb | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
> index 31e5c7e..0d236b2 100644
> --- a/recipes-core/coreutils/coreutils_6.9.bb
> +++ b/recipes-core/coreutils/coreutils_6.9.bb
> @@ -90,10 +90,6 @@ ALTERNATIVE_PRIORITY = "100"
>
>  ALTERNATIVE_${PN} = "lbracket ${bindir_progs} ${base_bindir_progs} ${sbindir_progs}"
>
> -ALTERNATIVE_${PN}-doc = "su.1 hostname.1"
> -ALTERNATIVE_LINK_NAME[su.1] = "${mandir}/man1/su.1"
> -ALTERNATIVE_LINK_NAME[hostname.1] = "${mandir}/man1/hostname.1"
> -
>  ALTERNATIVE_PRIORITY[uptime] = "10"
>  ALTERNATIVE_PRIORITY[hostname] = "10"
>
> --
> 2.12.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

