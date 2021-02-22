Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web09.34650.1613998627389194644
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 04:57:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=gE1B+oLz;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.179, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f179.google.com with SMTP id a17so57640547ljq.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 04:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BkUdUDY9ah/+WdUkTBjAAIV/xbNTfJXS7E+37kuzlok=;
        b=gE1B+oLz24fPp9sJcSkJxTBIsgYrCcZNFVun1biGj99YPQt+ZqEibaC+Kbuniht5Ol
         7F5MR31oPQUzh9jUA+yzxQokjVOT99i3VGsyBt+GHLf2/4BDUD7MWxuSRbyH8/vr1rrc
         NV+wlgiVvj5JwrhU3mS2zQv3hdGKtOr+yXkJ4fJk1FFpB2GzpC0I+TLBy9tSJhZKxuqf
         1og8wdthhy6wlyVulusJMgXPwTkwbleY8A3hZDlMSQ60j5rMgQ0vdTneFDKsIBgYVu+G
         3EcWEA/3rOh7FIA5Gev7H4bMId1Gm51f3QZNTcYcNuLfbMVgYEha7fS+U/YFQ+MT1fY8
         WsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BkUdUDY9ah/+WdUkTBjAAIV/xbNTfJXS7E+37kuzlok=;
        b=U9uf9nV7LffdaoHqDZDgqtB7onn2gUCsJsxwyRZ6VsDgF4jpo2zuezS2SwsSurf5zE
         gynn5hXYKmuUJN24ie6AkPpwAa//O6c3eF7Kpm2ckoOdHppW54wyHzBGvumZRQkdPfdu
         Zi36x8YJAbv2H/LC+FsyO+iMOL3I63axNjDp0cWStLQC0gbcDkA7QAyrcf6oD/UEVKlN
         1+quAybmRR+CiBZ6FpR+UwYwXcOf6V37UL0gMr1E0PloFc/1XPTrJqOkD7aTyHMbq4lw
         DH1rkShhzPOGTc9dVdtyAliBSx+MRmMRoIo0LrNTYzIx9PptzmMiat8Vh8Nz8lXw5ffp
         ISWA==
X-Gm-Message-State: AOAM530uF88/Q8V9eTXF9BJCGKGbXALZoxiOAPomkDxSSjcLD3wtM8G1
	rHx3lAykkV8VeF1k/PhJZzF603ujrXhU9ltgmnJ/rw==
X-Google-Smtp-Source: ABdhPJwpNVxw26QNU6lnMceCiTA+ecVIgor9fzZeYNTl1/iDSnpAhYI163Uck/r6SbWiZaLQAYWjOrSrDc0OpSNtCyk=
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr13955036ljm.118.1613998625347;
 Mon, 22 Feb 2021 04:57:05 -0800 (PST)
MIME-Version: 1.0
References: <E7i8.1613996553823213120.RKgK@lists.yoctoproject.org>
In-Reply-To: <E7i8.1613996553823213120.RKgK@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Mon, 22 Feb 2021 13:56:39 +0100
Message-ID: <CAEt6Nwqm8w-Bc+kNueCbuZhbDWP_ueycTXDefOJxeA-fq+pb4g@mail.gmail.com>
Subject: Re: [yocto] Custom python location on target #python
To: felixn1996@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Mo., 22. Feb. 2021 um 13:22 Uhr schrieb <felixn1996@gmail.com>:
> I'm new to the Yocto Project. It is my first time posting a Yocto related question. If this is the wrong place, I apologize in advance.

No problem, welcome on board!

> I need to change the python installation location on my target from /usr/bin and /usr/lib to somewhere under /media.
> I have searched around online and tried looking in the recipe: http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-devtools/python/python3_3.9.1.bb

Whats the reasoning behind this? If its meant to be a work-around for
"my custom software totally wants it in that location", then you're
probably better off fixing your custom software to stick to canonical
paths. If its about partitioning schemes, other techniques might
apply. If its about being able to upgrade/modify python independently
from the system, then you probably want some root-in-root or container
build. But randomly picing a complex package that has system-wide
implications and saying "I want it here, screw the FHS" is not a good
idea usually.

Greetz
