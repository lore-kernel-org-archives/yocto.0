Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web09.5671.1617633748472197257
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Apr 2021 07:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LF+I+uEO;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id x189so12730366ybg.5
        for <yocto@lists.yoctoproject.org>; Mon, 05 Apr 2021 07:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0gja7lZ1dqJmhpjnj+mfThuuleEKbEfTCLsrnAXpq9I=;
        b=LF+I+uEOOh+BkIpluZc+k7OecU+01/c2Ft89eAztLlpOk+yhodopnadBIKvx7VnfpH
         d0HZLVbpoxDy3MgLObvu5V7194alz3T7M/G2RozMM4j6KcbbGUUxEXkE5RV3aQAhL5Ny
         nIUkEKXWIBP2FEtGhDfDeHFWu9mmFbZygpdofJ1lEP9UNYfYWQaTZfGBmY9Ul2DgnjfT
         tvHgrc95lz12WLdf+XgX4LGJ+FZFezgPsR/nG4z++DDZxx7vBdVzopVH0iBdbc4+ZO1t
         BdT+Y/0hZsJDZ1GWRX4DAIUpQgaIQbP0/CmbP65aYwxwZ9lph7+aGYGAeIhPA1SL7axg
         aMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0gja7lZ1dqJmhpjnj+mfThuuleEKbEfTCLsrnAXpq9I=;
        b=BF0w98yuXak/DYakfbSSSAM82X93aokxZ6+bNHxIN16TgcsLQgXOM932euWSWoYDje
         6Dca5q5TNUnSzQ0ihnnXl9lYs/8sf5LkzoYg35dQEGvWDYCgKt0y4Qnwm6blybnlv3Rp
         BcoHnqC5thbKJzYYHS8Wwwx1NjLwJ2nv0Tkeyw6PUCBOZIZ1u46SAaliQkczxH+LSLIp
         yBODIe/iSocuribM8IIKEpy9mBCTLYudszDq95ZuZ/UTc230g+9FQn1q2Zek/5a+eRsw
         AKX2quoPh6RDvnBPIxzyOljFo4oGUBL0ONKNFscYoY/CZWb0ZVC0AOgdqc4tZ41PjTos
         8fmg==
X-Gm-Message-State: AOAM5301onEAsfXhwYv+3D1KxVsZvUmSdbsa9UYsRSnXvyaEjfagwnnm
	iG8iyp2izk+GohCRQVLJegTWSuUIHLcWgxakF4L4//aSTH0=
X-Google-Smtp-Source: ABdhPJyEz4IbsxzCMy1I47gCu+No06aaGN2vGhp5mbAqdwAxUOA2XylcDfZSo7jgCHDGVC723xUgEIC2fOkQZWEvvHk=
X-Received: by 2002:a25:8143:: with SMTP id j3mr35830500ybm.237.1617633747365;
 Mon, 05 Apr 2021 07:42:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:5108:b029:36:f02c:a4b3 with HTTP; Mon, 5 Apr 2021
 07:42:27 -0700 (PDT)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Mon, 5 Apr 2021 10:42:27 -0400
Message-ID: <CAK4PFCXOJzbjnahWDVeZkT4EsReB03rt=ZssTCQ+ohH=RQSA7Q@mail.gmail.com>
Subject: BB_NO_NETWORK ignored, causing fetch failure
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

upstream vendors provided me with a git repo of ALL necessary layers
with the understanding that I'd clone the repo locally and disable
network access, using only our local cloned repo in dl_mirror/

The files in dl_mirror are either raw tarballs, gitshallow, or
gitsmshallow.  I've touched the .done file for all of them.

After removing all state cache and attempting a clean rebuild I'm
getting a do_fetch failure on a recipe for one of the vendor specific
fragments.

ERROR: XXX-pll-ctrl-git-r0 do_fetch: Network access disabled through
BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY)
but access requested with command \
LANG=C git -c core.fsyncobjectfiles=0 clone --bare --mirror \
    ssh://git@gitlab.XXXXXX.com/XXXXXX/internal/sw/XXXXXXXXX/XXX_pll_ctrl.git
/HD/home/XXdev/XX-yocto-git/build/../dl_mirror \
    /git2/gitlab.XXXXXX.com.XXXXXX.internal.sw.XXXXXXXXX.XXX_pll_ctrl.git \
    --progress (for url
git://gitlab.XXXXXX.com/XXXXXX/internal/sw/XXXXXXXXX/XXX_pll_ctrl.git;user=git;protocol=ssh;branch=master)

ERROR: XXX-pll-ctrl-git-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/HD/home/XXdev/XX-yocto-git/build/tmp-glibc/work/cortexa9hf-neon-XXXXXX-linux-gnueabi/XXX-pll-ctrl/git-r0/temp/log.do_fetch.7513


I need to force yocto to ONLY use or attempt to use dl_mirror/
content...regardless of what the SRC_URI is in the recipe.  Not clear
on why "git clone --mirror" still references upstream repo

How to accomplish bombproof local dl_mirror/ reference only?
