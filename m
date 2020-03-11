Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web12.15768.1583955413722518021
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 12:36:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j3vkjTfu;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: wpdster@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id l21so2493041qtr.8
        for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2020 12:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IU7MOQmqpfQbuGEvsUn2/1zYG6kuG9yImpyS2HZXolE=;
        b=j3vkjTfubWbq9E07jgn1BtdmSf+2epAUBhqES6q7hYkdb6quUmcuTRWE6qDOX9Sl9X
         wxGiN15oMrPGR87STGdkS+YFok1YnCMmt+8tJBszOYUrZesP6SY08qrwacXzD/F/4F4t
         vKNWmjSzQdD6v+C+RSP4/uX5hIbgrjyKvG19g9u9jgR4EBOdmKEixfeJAUtJpeksZ+xz
         xvh1QFPMlZNPn/qZvniZZhjMWwD+m7TE40Sor7u5jqD2wBuZtJ3Zun9ydx21bNDcrLWd
         uR/9cumaNURRdbmODKkojm8+OKz9TKf1rzwR4G1m00CqIx6x1YdOmIUwq9GsVghVNgN7
         MYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IU7MOQmqpfQbuGEvsUn2/1zYG6kuG9yImpyS2HZXolE=;
        b=E9FKez+bnC+EpooYrbghqYVsSmglcdfnntWk3AdltnucyjsL/fNu7bzGr6CVz4+PTs
         Yoi9tAm8NLVma/QWTZyfebqzn+L3oXCEr6ytMlEZcLQIvybw8Bd0w1jMS17s3GAyR2EB
         5S8mfR3X44dlaztq+kI8OfK3uPn2ap5VMG03a0vEfRsQbIRmKm98a3K+krrT1XdsANMt
         0zpm+U/kpMKeQ4GrqSIS1UHcjY9Ck6sKo31wal7zTCreCnYkw8TUhlrh6mFvVfO5Hx9Y
         bVURE96WrXVc9jxiQE6V2J7Cw1ybekk5UzMmrODbDmNeKE8MAdk4eJ60dAAGmgczPNUP
         pWQg==
X-Gm-Message-State: ANhLgQ1iZSc9FgXuH67ssH++yEujiXU4lIBEXP882KOyC/YTpV7jRbAm
	dsGo7e6tMOOyS/mRIHsJMszip9pqUmR2DOEm8FY=
X-Google-Smtp-Source: ADFU+vvQpf3HeJpyRubhH5bK/+xef8s2AuNWPktyB157BQIvYPTKSmAzjuDv3PqVLftnaiULF5pSTI8fbqAty2zXWZw=
X-Received: by 2002:ac8:2fc1:: with SMTP id m1mr3680629qta.48.1583955412909;
 Wed, 11 Mar 2020 12:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <15FB4FF4056D067E.12500@lists.yoctoproject.org>
In-Reply-To: <15FB4FF4056D067E.12500@lists.yoctoproject.org>
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Wed, 11 Mar 2020 15:38:29 -0400
Message-ID: <CAF_dkJCWs+Nut5_i9nqHe0XSauf0-h4_OgZ5GdUTyRkyNMpdRQ@mail.gmail.com>
Subject: Re: [yocto] Splitting a recipe into multiple packages and inherit extrausers
To: Patrick Doyle <wpdster@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020 at 1:26 PM Patrick Doyle via
Lists.Yoctoproject.Org <wpdster=gmail.com@lists.yoctoproject.org>
wrote:
> I want the daemon to run as a non-root user, so I have "inherit
> extrausers" in my recipe.
>
> Suppose I only wanted to create that extra user iff the package
> containing the daemon was included in the image.  Is this possible?
> How?
Apparently, the answer is that I should use "inherit adduser" instead
of "inherit extrausers".  See
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-classes-useradd.

--wpd
