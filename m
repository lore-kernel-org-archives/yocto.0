Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.26870.1630958401152228805
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Sep 2021 13:00:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GMrAUoNf;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id r21so6200168qtw.11
        for <yocto@lists.yoctoproject.org>; Mon, 06 Sep 2021 13:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J3NMrFuC8RN7UHXvFKRZZO2UloAkD7AK7j8qD6fupSI=;
        b=GMrAUoNfmqTR1QwpaisW03fFXu1x+KDg32HYqXnLN4IfNLrAyp1KeZ6y+FDfaaE5+Z
         qL1Q0ZIHKAGlvi/29i7kAKL06n/YiQxEQbO/lpuLQ8n5dNI4I7UKv+EI1mLXiMHyKewk
         8+nNbGQTZ+sr6UeDmYc7KskF8pG9RGfDeQGYBR4sJyv3KsJVrc17+LJIPgrFytPDTutu
         oaY6nKJwCT7A92ODkAG4+kSFpm3iIvkv6HtmsQzXtIoEqE8mKpXw3CHFav2xqOCn+Czo
         yLYuI3XDovGLEm5mhccC41N7x2d8izIW9OD6krzAFDM8GqSIzRBfeRiUprrBMv/PaLcQ
         CN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J3NMrFuC8RN7UHXvFKRZZO2UloAkD7AK7j8qD6fupSI=;
        b=gbN2DwmdvSeo0wiLoiQUiUICG2KRehzVUypQDoSL9uvYaHt2Sv2GrnnurTwmXmNHm5
         Nqdp9emy8Iwax/MRITwtK4Liorslaj4KCOe4K0PvhuNIuQJudtR4lyVJDgy8GQoMGtbL
         kdSyKK2KuBReOJ8sr1THpnPLZexOSsuo7sqiPrIyNrX7SGqCASBk2ARvUVaiRGNBLZmA
         h+RJefCsPznQOABIC6tXhc5p+77SHmc1PeJp4thLXXyKe0X7oUepHOfe91MajxVRNK4a
         Ls5JztwAvHwojQf4lX7vkwh4r9tomZqAHudTIYM/cm3wP/DLteywvZ0tEoLiAjI644ka
         Fm3A==
X-Gm-Message-State: AOAM532Fp3GP1nR4uOpN4dgrisaIYEnNVgH25iyPv4YEr+ePGQ2VkWMv
	DFUi3zXV6NqtN1Ct+Sp99pjEGRPpvQdOAE/fwIU=
X-Google-Smtp-Source: ABdhPJytlgvZn9+OimZvSqmB4YwS3w82SU1pWl+UpS0LrRS5LunDEjG8x3bJgetDBMh6kN19p4AqnvVMyq7VaCAerYg=
X-Received: by 2002:ac8:5d8a:: with SMTP id d10mr12225873qtx.225.1630958400190;
 Mon, 06 Sep 2021 13:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <RWQe.1630918009123953136.8Mp7@lists.yoctoproject.org>
In-Reply-To: <RWQe.1630918009123953136.8Mp7@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 6 Sep 2021 12:59:33 -0700
Message-ID: <CAMKF1sqaUHdLOfeiFL7+7CN92wwWMermhSgjK5YXmfzUuGYRWQ@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on AWS container getting ERROR: The postinstall intercept hook 'update_icon_cache' failed, #yocto
To: mail2uvijay@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 6, 2021 at 1:46 AM <mail2uvijay@gmail.com> wrote:
>
> Hi All,
>
> I am trying to build Yocto image on aws code buildfor SAMA5D27 from Microchip. Created container.
> Able to setup the environment successfully with the dependencies installed on container. At the final step while creating rootfs image i am getting below error.
>
> "ERROR: The postinstall intercept hook 'update_icon_cache' failed,...
> ERROR:
> DEBUG: Python function do_rootfs finished
> ERROR: Function failed: do_rootfs
> "
>

Usually these errors pop up when qemu usermode fails to run the needed
programs during cross build.
check the logs thoroughly and see if it leaves traces when executing
update_icon_cache of any such issues in executing qemu

> Tried couple of options by installing libgdk-pixbuf2.0-0 in container, for bb image script DEPENDS += "qemuwrapper-cross"
>
> However I was able to build Yocto in virtual box ubuntu 16.04.
>
> Please let me know what i have missed..
>
> Regards,
> Vijay
> 
>
