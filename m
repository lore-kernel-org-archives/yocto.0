Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.272.1600365216703754507
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 10:53:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQotk3TN;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: raj.khem@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id y13so3183916iow.4
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=H99KBtWBO1d3cdYynXLlvEGdzLhwMa10/pXmiHlRl8Y=;
        b=IQotk3TNwWpvk3WUFLUrFcrOs0UdzhlXnZzn9bKda0+PuOVIsVsuvieaYOD8tThbpt
         JZi1T7qqruk6973/ukp87tGgpj9biysxISymzi98RhDf3rGsrlI7AnWMpKS2kXl6r4ou
         TqTIYiLCStrfllQ2izobH2rNVZTPkMzTiHbcZATeD183+Vz2j4iEX9+KdUPORwImF2Tj
         +yAzOmXewln4SiPlJiD5XnZTVFeVdBxryq0jW1N6nAs3DpIJnisDcOSU8ZqzoNy2BvBX
         7/qHuW5JUyKvkSIRBaKw5nw9OHMH63+iZAWzrmbuhmy2cDECNcYjNQDyyBgynxZfRZVL
         RMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=H99KBtWBO1d3cdYynXLlvEGdzLhwMa10/pXmiHlRl8Y=;
        b=frpSNmzPDUm7kW6grexLE86MOX3wTkZHtuCFGWrkVt6/fctjLT7Fx13jazYGcci/FW
         qVpoT/NmRxNn9RRxB3o4qAPSszDWkx+6B5ywyx5bxEz1TJtjd6k5DRH27rLOLgRnPcax
         EDgnKv9uvP0wCuTt1ncT13PFr0qeHtgaBMXKJOsU17OqSXDwxKC+JLmVegpbujugQUGd
         NMYVxWZZf9LZU/JBvFXZDXQbm+KYpNoFpwYxH31Cb9M/CexxDceAGANct8HDt5qiPY/P
         ZaXfUEwhmlQbijH5C7uUEM3XGEld2MpBUwRAlpLC4Qj3N5nFe/ay6AriJKKhyaPtIzZu
         SKjg==
X-Gm-Message-State: AOAM5310W0DNiaQf4fokasnQ7SuiyUUjim1zwrEAxBK69ubBMTlZIZT4
	yJm30AJlosL3rfB0H6HX+WwAFmWIcXSUJNrDVvk=
X-Google-Smtp-Source: ABdhPJzks3kt0K/lkdajlxv2cthRoI/jZlXzd7dI9LqIEdyybzyZzeA3QUDSb/AdovmLVggHbn2tX2+h0hmtHZ14FRA=
X-Received: by 2002:a6b:c9d3:: with SMTP id z202mr24995668iof.156.1600365215931;
 Thu, 17 Sep 2020 10:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <b6LN.1600350210852554203.zvkv@lists.yoctoproject.org>
In-Reply-To: <b6LN.1600350210852554203.zvkv@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 17 Sep 2020 10:53:10 -0700
Message-ID: <CAMKF1sr=1WsWWSUvJvBtNudfZcskiRh0QmjKmmkWiBpfTsnHkQ@mail.gmail.com>
Subject: Re: [yocto] Emulator tool for imx8m #linux #devtool #yocto
To: "Amrun Nisha.R" <amrunnishar@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 17, 2020 at 6:43 AM Amrun Nisha.R <amrunnishar@gmail.com> wrote=
:
>
> Hi,
>
> Actually I'm working on the DART-IMX8M board. I can able to build the im=
age in linux machine and run it on the board. But for every build, i have t=
o run the image on board. I have checked on the qemu but it is not supporte=
d for the machine imx8mq-var-dart.
> Is there any emulator can be used for imx8mq-var-dart?

closed you can get is qemuarm64, you can also use package management
in image and install/update/remove individual packages. something like
https://imxdev.gitlab.io/tutorial/How_to_apt-get_to_the_Yocto_Project_imag=
e/

>=20
>
