Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web12.6881.1589379218367945941
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 07:13:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=aokcb+ui;
 spf=pass (domain: burtonini.com, ip: 209.85.208.180, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f180.google.com with SMTP id u15so17986185ljd.3
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 07:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=adx6awUSJijNPfOH9aZw+q5UdPvEArvPyWwgM9V+Gjo=;
        b=aokcb+uiTey1/M1+6aKPm6sUdxZy7oImnb4MRc2L+wQlbjt/7ZJFl21Qn1Qq6wlGp6
         glFA4RnQEkQtJdjdPH/Q7TaJWZ4O2eazt1yMUBufKc8w1yz2/QHG/CMAQsYP9iHluhVs
         NQ+rh8OTZacOV3JRnk2sxzbYjWyBptUy4hKC6fsJtFiKk9ZyhJ9XUdXiKzUEyix37lOI
         nUflL+AQvx+kcUaYVING+FN/fLxW/GO999cNzj+gpWXqz58dNr21KQ97DpHpNkqPh/ly
         O4RdOtew7u9wzUvUnSBVtQEi66jr7TuhBPG5Ckxvtb3OYkowW2A6kLKOGyMfUufSnB9m
         v3kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=adx6awUSJijNPfOH9aZw+q5UdPvEArvPyWwgM9V+Gjo=;
        b=fUViAwl2c0ZEJR/hTrM9PewARIEQxplqAwOTzD2U8H5KPWeV2LEy8Zdl67hGkcQgSO
         MW7r8LOsg2HKPT6SFmYiTwFgZHKdF2vy0wtuAvrixtnm8t0VukjXkF4RHzOjnPZPq4k0
         FMyAGHx9Fa47fKz3iqyLbxgyqCcHfJ3yMLw+qDCIl/Gminid7ibTiC/MU0VvwtyFShpj
         bCW2rypqRXJ3nDK1g/7hfkNEeckd2JmKQU2ZsyA+a6jb41SXwsY/Aj9c+h8/V1IgKKSW
         HstJs8Cg14texM8+3EK9dyybYPzwNOPGk2w6d0qyfjGPNu1PwwcwpqQS+MypQVqsotWS
         sZFA==
X-Gm-Message-State: AOAM532wx3Z8idkfNlGtjCN5uprlrrpb4tqPaaZyt2zFsoOdK7jLRnjQ
	ZGlisIUKWWOZUxmasRCZP/ll0ezSG65qrPEXDALpWw==
X-Google-Smtp-Source: ABdhPJxY7reP+VJK7127jtdFSJ2ynwuNgG3UEgvg1TA5CpyGHLrIrXHnkCXTIocsZc/U1QXx0C0G4vZqEpa8OHYXbe8=
X-Received: by 2002:a2e:8658:: with SMTP id i24mr16268322ljj.287.1589379216509;
 Wed, 13 May 2020 07:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
In-Reply-To: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 13 May 2020 15:13:24 +0100
Message-ID: <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 May 2020 at 06:03, Joel Winarske <joel.winarske@gmail.com> wrote:
> I have a project that generates a native artifact during the target build.  Both the native and target artifacts are needed for other target recipes.
>
> What's the recommended pattern for handling this?

Either use BBCLASSEXTEND or write a -native recipe, build just the
native parts in a foo-native recipe and depend on that to build foo
and other recipes.

For example, glib-2.0 DEPENDS on glib-2.0-native.

Ross
