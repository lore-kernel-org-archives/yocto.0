Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web12.9323.1593779919979543222
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 05:38:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hIZG1I4i;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id b15so27569321edy.7;
        Fri, 03 Jul 2020 05:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nu2mytOFT2ovsVxOT5tOeQODePed43o2h2wTN6Y5QYg=;
        b=hIZG1I4ihhpIuS/FWw2w2nFDDpMiuhAnMBPSvY1S7NQBGEmLIi+27MewKyEslk7wcf
         EdPqEZorACkQgZcLFQEhXmLR7YPJQgHb1wcGRaPx+JuRcUTpWJWee4Ug5CE+oSt8MRqa
         9HuHDloovYB9SQli+pjmlCpEahlfrioVTlc7Y+7aUZeAv3ofHWglBLqo9WPD8VrsHDXk
         QeZdkdLfYcXmCF0Hgsh3LFvLeipK8jtzc7zQyPuydc/GuP9zyYciUsVCvMCpcfPoaGLE
         gEuKux8mLNRPQCExGDhYXUZKFVWSV+Ca6sjnBYy5NeMuv/MCJEU/vc2Mt9+S5vgnPwTj
         aoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nu2mytOFT2ovsVxOT5tOeQODePed43o2h2wTN6Y5QYg=;
        b=LzhGvLnENCyfsY1PXe8y7mtjdQ0o9ybxmz7pCj94ApgFMnF9YqSYO5K6ZjfVO8jg/Z
         TSGcszeuVHjxX3qxcP6518Qj+5JOVMz3aFKqAjYTchhH+3bFdiLjEjWLrnXLbaXc2jd7
         EWxeub5tRh063iLKfmYG4IB+ShpehPNQSxtADCaNd5fRNIzRiV5Hu5MbkF749Oq5qch8
         EI3bOeIgdFyOoPWn0Tahk9QX/cEEqHJ+/2tPnJwrl+rItC19/MyR4gF/YpcD/pajOYXe
         rK+Vq7neczfIcpasLXNIgsY35KATLcOAPL9cimX7nToWgZaSTMMZBfZAkyHYs7EevXRB
         RZsQ==
X-Gm-Message-State: AOAM532tOHTqrjpsPGU0rey0W7tZVuzFilMe3Ysiu2wTfCxTsXWXPHMT
	vEdG1neGp0qCGimy60Y9za2KTFu2a49PAHEAsDE=
X-Google-Smtp-Source: ABdhPJzkiER+oMlB1onEduijYhM0q/PDr1qaZA43vrGEJVDTIPalDmU+t2awcPYbzr3+r7bG3IhFbK4qgMnMIyHfSZc=
X-Received: by 2002:a05:6402:b72:: with SMTP id cb18mr3883860edb.352.1593779918422;
 Fri, 03 Jul 2020 05:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <1593746579-124878-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
In-Reply-To: <1593746579-124878-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 3 Jul 2020 08:38:27 -0400
Message-ID: <CADkTA4Mne=CGu+j_K5FAg_hQjxu_XXSrYQR0zgOnFdNvi6Pv2g@mail.gmail.com>
Subject: Re: [linux-yocto] [yocto] [meta-security][PATCH] ccs-tools:Fix build error when enable multilib.
To: zhengruoqin <zhengrq.fnst@cn.fujitsu.com>
Cc: Linux Yocto <linux-yocto@lists.yoctoproject.org>, 
	yocto <yocto@lists.yoctoproject.org>, akuster808 <akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Wrong mailing list for this one, adding the main yocto list and cc'ing armin.

Bruce

On Thu, Jul 2, 2020 at 11:23 PM zhengruoqin <zhengrq.fnst@cn.fujitsu.com> wrote:
>
> ERROR: lib32-ccs-tools-1.8.4-r0 do_install: oe_runmake failed
> ERROR: lib32-ccs-tools-1.8.4-r0 do_install: Execution of
> '/build-armv8/tmp/work/armv7ahf-neon-mllib32-linux-gnueabi/lib32-ccs-tools/1.8.4-r0/temp/run.do_install.22368'
> failed with exit code 1:
> make: *** No rule to make target 'install'.  Stop.
> WARNING: exit code 1 from a shell command.
>
> Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
> ---
>  recipes-mac/ccs-tools/ccs-tools_1.8.4.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> index 2e37c0b..79af6a5 100644
> --- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> +++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> @@ -13,7 +13,7 @@ SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
>  SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
>  SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
>
> -S = "${WORKDIR}/${PN}"
> +S = "${WORKDIR}/${BPN}"
>
>  inherit features_check
>
> --
> 2.17.1
>
>
>
> 



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
