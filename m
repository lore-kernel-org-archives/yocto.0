Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.313.1619109545712419474
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 09:39:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=nEfrOJkF;
 spf=pass (domain: burtonini.com, ip: 209.85.128.42, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f42.google.com with SMTP id w7-20020a1cdf070000b0290125f388fb34so3645623wmg.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 09:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sx7MYHzKWhKwwnHM9ih6mFXnoPfMNUSf7CbakWVeXoc=;
        b=nEfrOJkF6mHJtUtRNVrkaylFy6zHeSKeyEQs+kUoop38fcT/FXgSFkb7hcew18fIso
         HB/A06fONJuQW4mGlomMwUhhRHzlNY5ymNd/wFZ0Qag6/tqti0Eh7J6A6SUA7Avsahvi
         4eXL6sMbN6zharpV64blGjGLxAyB29aXicfCCjeH1IX8GG8jhhRhb9+8uf561ovgXtCM
         0HVJDKOLntv81ZZv9njQcD1jRw7MKrkGWMaqjH+rLiVYVV2+0loOdr/f5otTrSNaLWOK
         PlxVIJ1iemPRM887F56yebrT5zZhX8CyYAt3YO0EbcmqwtXqxJO2W4EZjTatXLru4Tc9
         106A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sx7MYHzKWhKwwnHM9ih6mFXnoPfMNUSf7CbakWVeXoc=;
        b=D+k9ZEy6TNemHYGk/WseI+j6WJeVOFWgnGK6lTNJVdzQH7+zbr2Fl1BGdVIxSI7jD/
         mNQvatXZdjvqa2rxvW67YvVqlEvRgRz2gwbXgaotQ6pHs8nuulwiITBo7A8cXnrNdS+3
         PjooBv3KpGaIZ/6u/2Es/o6uBofioqVG3sSfpqgJpVoluxif1vh6/ivNnkFt5miQsAx8
         fsVGpTKG3brnRDpv+L7hFvPuK+6CwQRkYaZxDxlXzXq0UiGaNQY9FR5zewNwjhW/lxKt
         58rAr8TGphUvNUPTL4P8Zt07yA/kRmVOUM+qEhg3HexujfGSVsAmV1otvw8owhsZ2Huz
         3NVg==
X-Gm-Message-State: AOAM530Pkx0zrCVf6ZGZazlylFEOU6ckG2wyqF5zBEj/nf2MSVApBZth
	uEkuF/GMOuH9dfGr4anAV2YnEiY+QIa7MigqX+7IPA==
X-Google-Smtp-Source: ABdhPJz7ULwhvbFEutAr52mF0Zfn/fiU5MOaXSsqe6+M2z8hzpxBi/0u0S12kVkJMnleKApzS+Tg25Tl8KU2f6CMXlI=
X-Received: by 2002:a05:600c:284:: with SMTP id 4mr4631097wmk.171.1619109544291;
 Thu, 22 Apr 2021 09:39:04 -0700 (PDT)
MIME-Version: 1.0
References: <lyWP.1618572463388507627.YhB7@lists.yoctoproject.org> <2704.1619107252165804754@lists.yoctoproject.org>
In-Reply-To: <2704.1619107252165804754@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 22 Apr 2021 17:38:53 +0100
Message-ID: <CAAnfSTvjwbX4BcVVfGPiDwLi1OFDQ4THECScJF99QE5AdYb1=g@mail.gmail.com>
Subject: Re: [yocto] #bitbake Can't use 'bitbake -g <image-name> -u taskdep
To: keydi <krzysztof.dudziak@thalesgroup.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Basically, taskdep needs gobject-introspection and gtk3 on the host.
You're most likely missing the GTK3 gir files.

Ross

On Thu, 22 Apr 2021 at 17:00, keydi <krzysztof.dudziak@thalesgroup.com> wrote:
>
> Myself wonders if the answer is just to enable a recipe building native package gtk of version 3.0.
> 
>
