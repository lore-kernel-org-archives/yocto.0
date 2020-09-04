Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.32237.1599197658507428507
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Sep 2020 22:34:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qVCb0O+F;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id u3so5344826qkd.9
        for <yocto@lists.yoctoproject.org>; Thu, 03 Sep 2020 22:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n4ytqiv1gPjgsDektleZl5P5lzwj2BrgoOjjYFX1xZ8=;
        b=qVCb0O+FuGHrWPbZXI5FX1zVnZJKzYZtTyLsJzBianLk+PwI8g+qMlt9dWQyPe/y1b
         vunj/zZn9EFIfxxyBprSwZScfL17JfMqDoWIak8qjLiYc1pqwn60Dr4DWH/mwPUSUhy8
         B7isJY3YnslUD/QoCkEtGSPDHPp2lyyu7GyIhJk/K+Zm3u5fAgZswAZ8v38lQ11tRU2n
         K8HJZQA8gZAJzd1N7iWbq2F0K9saZLMn8jBJ6wp4ZCCIfh47P03flx89KY7S2NoPnVXS
         wrZbgH5y6EBlOCiILhk9TdWV+mWzjQUNUqiaDL2Ahu6cQr/4LtBiX+Zm/vKWvukQq5qP
         XekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n4ytqiv1gPjgsDektleZl5P5lzwj2BrgoOjjYFX1xZ8=;
        b=jAPuam9Ck6TZzP6GfR9UzoC9Ql/ke0/LWvSAurEQgaBbw40Dwm456YU4iAywSwVItQ
         BNOaJDQiEmAtycUeUqDY8cYJH8MyykK7f8zANVknv/4EyukjE8MSHRypUVsOFeNJJsln
         sJmcnYHliUhXAgR/i1Bcpl2Oxm8iaqwq4H/Y7ltuFYgfe8weHkEjhz6aynfZgneyfn4X
         JggUvHzLQ19TOxXt5Rl8Q2V6BU1qnfHSwJ9Fcb2f4X6XNS5u6Xw7W8Q7QA099qXr33n0
         zubJ9JinEFUyhcc0LGrY9rU6R4Bv6wU98H8x1/Gfvp+EA1z4gHEtYvZ2Nfe5Ynrhl28v
         O+aQ==
X-Gm-Message-State: AOAM53331a5vRqE2zVPuj6FDCwfn/eyHeb2R9jqjA9NIy+GqXTPctpP5
	PS/iMRGkLwnXlb0euTsoaN5e91baJcz0oriM8P0=
X-Google-Smtp-Source: ABdhPJyFQO/OhN0iEQfn43nLtUkA57MBnLq4mcca74qjXbyoZ8sSCCMLrMkwQvTLa0E20VbA6ent/BiYOComvdoa9TU=
X-Received: by 2002:a05:620a:13f6:: with SMTP id h22mr6799686qkl.9.1599197657555;
 Thu, 03 Sep 2020 22:34:17 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1aNuRYNqpjsj+Z-SgtLx4N85a_BR_KCFajnD=cUUMtdAw@mail.gmail.com>
In-Reply-To: <CANVQz1aNuRYNqpjsj+Z-SgtLx4N85a_BR_KCFajnD=cUUMtdAw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 3 Sep 2020 22:33:51 -0700
Message-ID: <CAMKF1spGxArogsS0xwmpC2YrxaZdsx05Ryi5jRxgGr_m8UbOww@mail.gmail.com>
Subject: Re: [yocto] RootFS Size increase during Migration
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 3, 2020 at 10:18 PM Aashik Aswin <thisisaash9698@gmail.com> wrote:
>
> Hi Developers,
>
> I am migrating my code from Yocto Thud (4.19) Kernel to Yocto Zeus (5.4) Kernel.
>
> The recipes and conf files are essentially the same, but I am seeing a substantial increase in the RootFS Size and Subsequent final image size (Close to 40 MB).
>
> Any idea on how we can debug this or where we can start for inspecting why the image size increase.
>

Enable buildhistory in both builds
https://www.yoctoproject.org/docs/3.1/dev-manual/dev-manual.html#enabling-and-disabling-build-history
once you have it enabled build the images (assuming you are building
in two different workspaces ) you can diff installed-package-sizes.txt
from two builds
and it should give you some hints, if you are switching the build in
same workspace between two releases then you can do two builds and
inside buildhistory
folder run git show cmd which should show you delta between last two builds

> Thanks,
> Aashik
> 
