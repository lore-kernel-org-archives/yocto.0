Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.215.1612548722022936093
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 10:12:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=SkHN92jS;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.169, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f169.google.com with SMTP id r77so7765470qka.12
        for <yocto@lists.yoctoproject.org>; Fri, 05 Feb 2021 10:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xW9ZadE+jBEvGK07ysLVUbErjI9z/2YgMGl6X1Jz+lE=;
        b=SkHN92jS/YMBx7nnJ/XheFw1bghS8nF8VZM9YCRm5q0BQOUtvDodPT2bVyqoYh+RmJ
         C17F+BCud0VvoHsbouQuIkyJ8BJnPsxW9n7OLgFaVHJd9ODXXKwd2m/GxAHqqGGAwgUy
         G7o/FEaEZPhPZTZ/upbUaWYK2dRdQYxNCXLpOmxGHEl5TIKFeMtzoYEXVL+JWi7F2MNz
         fvXsjDhuQzPOp8+U+6IlCLazt4C4opE/5UwBs7DZO0UgUuaW/jQFaRQqGSWd/oRSTRqH
         TalkArTVRDulFqVacP7xlM1WyvwRTPII7ATbqm+akpzM3Oz25Y/BkBZhNT3kEY21Xkfs
         fcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xW9ZadE+jBEvGK07ysLVUbErjI9z/2YgMGl6X1Jz+lE=;
        b=DGk95lA3hd289yqxjOCYsyg+da/qoHjK5j5fejTNjLt8BF6gUcE9KAXoWHHxR9poCw
         kIgsaxV0IPKq8Ko5NuAWWiDldAGgyv1jh7LEvS1evN6bhSWmRNroY5TaYAgfoFF4xDaR
         QJTD/tc67dDejnzxAiY87T1KF2uQrfmgbXy2uioFiLA+uhI6ojL5PWf1aJN2qBUaneMy
         9bFzF0z2Tk5aVbHrD5qj4TBsx8gOjwnQ/xMoGCo66kHOF7qGoImftAKH/25L37J+Dcsi
         AKevPsZhzRoYC37WSvbx8DPfCAK94wKRKdZ9WUq2LZ1dhdXrl8unFCswTBKgdWA6cRw1
         a0FQ==
X-Gm-Message-State: AOAM533QOUbc6ZF9cp3dX43szdMf7SBCHimOdcurj3kSpwmz2nPGexiR
	L9DrtYclKKo+F3kSwhUP0r7C7XwpSf8vn6JMAEhL8g==
X-Google-Smtp-Source: ABdhPJwVctqnaE9gWUmOv/oTZQj7PQ6Te4gjxVj7T2wMseovyoM9bfcz9iycT0ovqEpAV46jk82EIpEb2xIWhBWAKG4=
X-Received: by 2002:a37:c42:: with SMTP id 63mr5313296qkm.61.1612548721035;
 Fri, 05 Feb 2021 10:12:01 -0800 (PST)
MIME-Version: 1.0
References: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
 <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
 <CAK1D6_7ZDcFp2MrmQ1kAXd2nnuep9TbVFauuaO5-3aAkHkHN5w@mail.gmail.com>
 <20210204093611.jt44z5xsrdfja4dn@qschulz> <41e5181e-21c5-b2a0-8c52-841c3d9afbe6@windriver.com>
In-Reply-To: <41e5181e-21c5-b2a0-8c52-841c3d9afbe6@windriver.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 5 Feb 2021 18:11:49 +0100
Message-ID: <CAMjhiJj5QEzm8JJqrrn6A=E3p2HZ-dxjVz937p0e4HYe7sR3zQ@mail.gmail.com>
Subject: Re: [yocto] #yocto CORE_IMAGE_EXTRA_INSTALL Where can I find a list of valid package names?
To: Yi Fan Yu <yifan.yu@windriver.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	David Babich <ddbabich@bootseeds.com>, Josef Holzmayr <jester@theyoctojester.info>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

On Fri, Feb 5, 2021 at 5:27 PM Yi Fan Yu <yifan.yu@windriver.com> wrote:
>
> new here, pointing out of the obvious? website
>
> https://layers.openembedded.org/
>
What's obvious? There are no package names there, only recipe names
that I am aware of.

So for the non-obvious packages it still is a bit of guesswork, or the
responses in this thread.

Regards,

Leon.
