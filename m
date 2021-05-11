Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.3093.1620766633069658694
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 13:57:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XNgtqFos;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id k127so20218131qkc.6
        for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 13:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MnEfsxJ2kuBoM85ENMTC6DUIiLxrgS0yPPeIqxoKSKA=;
        b=XNgtqFos3tsnw26ADrZ6cNOE93KpGYj2f5ETrPejJ5NBcDI9nWGhiikDbb4Jc9VtaW
         Q08wHj1rFmBrXQQadgIHreTDSqDGeIRhBa6euvne8uHVLzVzOOKUH8rKuLWh3JO+psl6
         Iu9X0sd+iMqV8H1jfZoMW9XnswWwWQVi1WAUc0oyYSwWtv/z5cx2EzafJlmvv3ZEjM6Z
         r3zS/NHJuGMpj5gqFP4TQ7g03a2pBOv/lYMi6Os5JtO8WaWG8wW4Hezh8GayBgGFbOQh
         gekk1eqx9cpxqhn3vonllVVs+wqd8xPzkV9DrN6RM6I14IN44PvRu2Z/P7emPikqlluS
         p0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MnEfsxJ2kuBoM85ENMTC6DUIiLxrgS0yPPeIqxoKSKA=;
        b=kib5u1Femb6i4hymrm/25kP5BgF8x+5ys6Et8bnA/5VNO+LgoFlbZyGrN7C9x45sdC
         1dI7/hPn/o4T/R6k09R+CyMHZ6iIhVDN+w3T1CtZ6+Sz4A8dj7Oxm4Qo9nB84D3ceEa/
         WkKZML0/AWOysbcg6A8RVYqqWYQR/XBnRRXL1kaCXM2/QSpbZLnNksRIWNHmevKlUuFB
         /3AyzpYd6OAWRDBRKqn4vppiumK0Dz/eze49aeKBp39Ai6bE4/ORovpRJhVKT1/c0Uk5
         h2FmeVng1Vs8+/CnCKQLvbj4C22rvxRLX3GFao2wmiJnzIO360zBdqQFIjxXv95nOZOO
         Lkzg==
X-Gm-Message-State: AOAM5303XZImgroXwB42DeEt4pPsTxcY21yg4YrUwyekz0OUuyaUfUVT
	/KRIgLg0VeIiHnPb3EkylCIZ1rnJpSRZC+JVbLs=
X-Google-Smtp-Source: ABdhPJxysb9qt31hJFDKcW8vHRavPfnP1jkf0eozuxsWskNm4CGKQB+bR0zwpff9iKNnWGJw7aGAus582+CopvVorws=
X-Received: by 2002:a05:620a:9c8:: with SMTP id y8mr29865416qky.125.1620766632112;
 Tue, 11 May 2021 13:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <7b7B.1620763245413407958.ICzz@lists.yoctoproject.org>
In-Reply-To: <7b7B.1620763245413407958.ICzz@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 11 May 2021 13:56:46 -0700
Message-ID: <CAMKF1spPr3Jf1ypfbZ_XjF0kJkNjAG=UgX+BT7GdmxXAW-0f6Q@mail.gmail.com>
Subject: Re: [yocto] [zeus] python3-dlib #yocto #zeus #python
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, May 11, 2021 at 1:00 PM Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
>
> Hi All,
>
> Did anyone manage to create a recipe for python dlib from the official site https://github.com/davisking/dlib ?
> They provide C++ and Python API, (CMakeLists + setup.py). All recipes found for dlib are inheriting cmake for C++.
> But when inheriting setuptools3 error occurs.


did you look into http://layers.openembedded.org/layerindex/recipe/135534/

>
> Thanks,
> Talel
> 
>
