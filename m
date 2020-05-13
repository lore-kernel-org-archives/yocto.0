Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.3028.1589399509932279015
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 12:51:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=suwOMZBU;
 spf=pass (domain: burtonini.com, ip: 209.85.167.42, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f42.google.com with SMTP id h26so566929lfg.6
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 12:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1wBpAhZBbylBkAQ3tzJB+WBJRp/TUvo/W3b4Tipcsio=;
        b=suwOMZBUEldVZIuU47TJkjvFvIHWSG2XnX3g/FBnfryevA7HVcrnE1QeiKowazQLo+
         2CP07RDeRX3A0MW8GZjLAX37VGOj/DlOmUDtlj4bX41xagHf8rxpn6lwPtrwQlUlrfjl
         89stWULnGbHxJu2AZSwDs5Q720q2kpyNsjmbWZJExZow1stPq7VA9aYaC2qGrjygdDn1
         rd7t8GYG7ofbIgEopPHmB5gFDU9AFJhzUd372tMhN7T/X4bLcKFYocDrEI2Pi9jm2wki
         BQbS1vGhKwkCzUx2C82AXNsUCrNyBcQ0kjg/xKmIfIzDxDDFQRoi4jwLDDGpHVwCHIm/
         BY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1wBpAhZBbylBkAQ3tzJB+WBJRp/TUvo/W3b4Tipcsio=;
        b=QKGeDSzgPTb7qlqYLLHadAjRQBbiEoi4xkYvDc2erMGGF7faIIG6wkO1rDnaAa8iGl
         h0XV6KUFdXwev60AWk4epFXU/pS7lgmxiRXxx4eJGyU2610HJ7XoGSny7yX6UT9BTL9x
         CN5y5P4U/VUF5FTetvEIshQoNZY1XVco9tzLH4Hqxqxpt3+T3q+X/EMoPm2g95+WTRFk
         btaioiMZncpf/kWu1IScMBzp1hEnnLJfKMiGdy3406hiXjah8iAP6ZPgmdHe99P35a0U
         lR07QvoXqOKBA46iyzon/9PL/WN6i10MJwnNjDqtaWvYj2pveaaUh/bHjELR6+dHaUf9
         Xw0w==
X-Gm-Message-State: AOAM532CqWHtD6r5BmIFpL198bBgHii2Nah0RPwEuPkaVQgb4/7IS1mf
	a7W/Zb4RnTcWoyQCnz9HUDl/PPFvkKFZfKBuvRDxgg==
X-Google-Smtp-Source: ABdhPJzyEkR3REUiiSo70W8DOfWyl0pvVfuMVV81lnE3IVxRtN4e5z5rpX1m2Caf8pLPtDqgDj2dGveuDMLyTlPnVHg=
X-Received: by 2002:a05:6512:108f:: with SMTP id j15mr725312lfg.19.1589399508075;
 Wed, 13 May 2020 12:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
 <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com> <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com>
In-Reply-To: <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 13 May 2020 20:51:37 +0100
Message-ID: <CAAnfSTs5S3+f1CJsbW5eiPj-Rr4ZawhnOXsbC3617CGNMm9kCw@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 May 2020 at 20:28, Joel Winarske <joel.winarske@gmail.com> wrote:
> In this case I already have a Target and Native recipe.  The Project generates a Native artifact when building the Target.  Not resolvable without major surgery.  This artifact is then required in other Target recipes.

A target recipe can't drop files into the native sysroot, so it's
either nasty hacks or major surgery.

Ross
