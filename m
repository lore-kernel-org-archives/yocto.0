Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.33881.1613993926004995969
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 03:38:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=u0F7IR9O;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 198.145.29.25, mailfrom: jester@theyoctojester.info)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 57AF638C0481
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 11:38:45 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id a17so57000794ljq.2
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 03:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yRF4AORShPsJJIX5DYyfAsop7GIWybBm8jLtMftyU1k=;
        b=u0F7IR9OVLOB7Xq7L660Fber2AKcXN3TfpkIkktRJoKOUxdApPxJ5mxJ8i2oou7d8A
         cZvilY/7qsqWXBBhhTu7OSl3RQ0VX95BBvw7EJtoAVOVKZqF6G1yZPVgMoHleO1PHVFf
         N97feS5cqUQLzTQNVMN0jApISHZAg7XcHq8cE4dqS5CuEoyrzzWkfnkz+3Ao8m42txh/
         fmu5DA81DAMBxjmh2jRvVqUoVYNvx+1+qTHdCuiyghVJPn/wYKx9Vei5ElKAjHu/cAni
         Ol0hB2wDYFQqsl35nTxGVNeJwGmre6vbOEjCUCnXvqcxWjTP9Gold62NJ92E4gcr5UyF
         lJGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yRF4AORShPsJJIX5DYyfAsop7GIWybBm8jLtMftyU1k=;
        b=SN4TQDsntMbWXMSiEWQozYRNHG81JIspijHt5Gqu15FbrM7lRDQD5pVpykEZ5LmIWE
         DfbBE0OerneM8g2tC1WvRCYDJ6JFzbvZZUXvLgP6eXHTrLTCFL3Dg6sf8jzE1pnIEa9/
         Kni+jvUgiK48Bju1N0yFdrITZsuXXad5OHewN284MNDjOF+NjL9+DVsXLtoA6C/no3UI
         wBzDE7LrlxT2+ER2I0ZeKSGB3hgEdcldaMIQT5jlIc+wnWq3VFnvA0p8hgQuZJke3ZrD
         FD+7upwMjkIx1ODL5UBi6nGFxvYPMyysyuOo9jeTpv1sI+wBCPSpNKNpL33syfeHVXtW
         MrhQ==
X-Gm-Message-State: AOAM533VjEdPubkpdd8b6AmdVi9sOtIR0QuT2AMI3s6q8eQa0r1FYzsX
	5KVH6btQroI465/ztgznAo15vr012TlZn1cMTwI/jB5IHCae5A==
X-Google-Smtp-Source: ABdhPJyfKeOArVk0H+3RrpeF4UTc9RPlFBUHa3AzeUhp/amJ6FHgpseZ8zicJ2vqjWxb+sA5SB/s9W3BeVr+4yeclxE=
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr13791124ljm.118.1613993923504;
 Mon, 22 Feb 2021 03:38:43 -0800 (PST)
MIME-Version: 1.0
References: <5e1b2666-7c1b-755f-546a-f08b987ee817@crashcourse.ca>
In-Reply-To: <5e1b2666-7c1b-755f-546a-f08b987ee817@crashcourse.ca>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Mon, 22 Feb 2021 12:38:17 +0100
Message-ID: <CAEt6NwqpDas47oENvmBHz6+S5LhF48WqmCvpAVo8QoM5TQbw0A@mail.gmail.com>
Subject: Re: [yocto] anyone bundled libbpf into a recipe?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

https://twitter.com/TheYoctoJester/status/1358865946790797324

Am Mo., 22. Feb. 2021 um 12:24 Uhr schrieb Robert P. J. Day
<rpjday@crashcourse.ca>:
>
>
>   colleague wants a recipe for libbpf:
>
> https://github.com/libbpf/libbpf
>
> would anyone have done that already and is willing to let me steal it?
>
> rday
>
> 
>
