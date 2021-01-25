Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.371.1611601043292919708
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 10:57:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tdR58GQO;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4F8BC38C1108
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2021 18:57:22 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id n6so16759971edt.10
        for <yocto@yoctoproject.org>; Mon, 25 Jan 2021 10:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7FpIuioD16kmJuzZKYfg282BXgZe577RCQaE9dCHoTc=;
        b=tdR58GQOkqMy1AFvCiOHkEAl6ZSEHwx20r2dG3F7mlx8zrAIs8Pd4ll6eYvsMbR2nP
         h4vxupyVCgje8VDCBSJoBrYi9BcWUMJm4lI+/uGsH7Ztyii7xVXD7RrPcZBM1dXgHYnB
         L9KId6nueAwX1mvpMCXIC1QHQ3OXsBMo3RXBPnk5ZErSbPCoSWkDde9keLMfhkIgCeh+
         UCC6OnlJZgi4uxXeVtx/taYPX+szn4JRMSOheqE05HqKGdLUxUtV6xPVoK/FJQcuX1Mx
         EDZBkw3x/lghJ7zI8AJo8amdiZBGmt5y/w3AG2fDjA2FI8dsRWWXERFYwRgQgKQkZcca
         gHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7FpIuioD16kmJuzZKYfg282BXgZe577RCQaE9dCHoTc=;
        b=i5Yc19AF3Q5r/QMELtbO3zeNwB0k9bAjPsUoKaVzhoVEWwDpUoBMI4RgKXykJjFVnG
         rAu3BR/DHT8wML7Kr1Htdct211IQrvT/wRTx4q9n806CplwOrJYgiSc7yYaT0M7CkCut
         LGIoKMhgB/xlVupCS2hSRAVAXBrjvAKES7uSymX909+uthm6MzpioV1Hro7Gte/w6oSM
         NS0XkcICLSikui+cNZhdB2NRySjQe0hCzFfTE81ttto1ArHuA3+7jcY2DcMg4tRoTEpP
         +Ga/ivfC3gT/qJysjaFoLSB84na2uHS4H7O8SnitgqvC+8mHLUaLWxK24MRlmOfe6/XX
         zmLg==
X-Gm-Message-State: AOAM532Ju+I6eGrhYlZZnNdvXcNBkT6dxuW4kB+yyCuU0Vh1Mj3YUll7
	QJ6+xr+F6i1Z6dDEDnTrFCawKxD4OmY3cq6QYEw=
X-Google-Smtp-Source: ABdhPJxfsKBZx2lMgd9/sLdZY24SZE1KuFNw8UmUNIU5abYVjpx4h8bCdTZbnxgLlP5No0yLv+2OHXrcWBRJLmX6hV4=
X-Received: by 2002:a05:6402:312e:: with SMTP id dd14mr1721794edb.366.1611601040850;
 Mon, 25 Jan 2021 10:57:20 -0800 (PST)
MIME-Version: 1.0
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
 <20201216130822.28476-9-hongxu.jia@windriver.com> <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
 <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com> <CAAfyv37VGjVtn=SUan+X==VP5kbkMhWz96YP18X=x6-WkpP8GA@mail.gmail.com>
 <3fe1b12f-b2f2-20be-2486-874bb3fa23ce@windriver.com>
In-Reply-To: <3fe1b12f-b2f2-20be-2486-874bb3fa23ce@windriver.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Mon, 25 Jan 2021 19:57:10 +0100
Message-ID: <CAAfyv35TmA86pp3jNWEwrsa6Nb0Fv+qMA_fkNm1LSDZde2-n2Q@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Hongxu Jia <hongxu.jia@windriver.com>, philip@balister.org, 
	akuster808 <akuster808@gmail.com>, yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Randy,

On Thu, Jan 7, 2021 at 9:47 PM Randy MacLeod
<randy.macleod@windriver.com> wrote:
>
> On 2021-01-07 1:47 p.m., Belisko Marek wrote:
> >> Marek,
> >> Does this happen if you use the master branch?
> > Yes this comes from master branch.
>
> Hi Marek,
>
> Is it:
> A) Comes from master and is a problem on dunfell or
> B) it is reproducible on the master branch?
>
> Given that you said:
>  > I'm getting issue when building tensorflow-estimator (I add small
>  > changes to be able to build this patches on top of dunfell) ...
>
> I suspect it's A only. Right?
>
> What are your small changes.
>
> Hongxu may take a quick look but we generally can't afford to
> investigate all combinations of recipe/branchs as I'm sure you
> can appreciate.
I have done some small changes and now have tensorflow from master
working on top of dunfell. Would you be interested in sharing changes
back and integrate to repo?
>
> If you can reproduce the error on master without or even with your
> changes then that's a different story.
>
> Good luck and Happy New Year!
>
> --
> # Randy MacLeod
> # Wind River Linux

Thanks and BR,

marek
