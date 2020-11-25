Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.8413.1606318950827344793
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 07:42:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0jiF4SI;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id m65so1855028qte.11
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 07:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=H9WZKzo5EXTarFrqN4Y2mAsgY23/xtK4Tnet3Av3afQ=;
        b=G0jiF4SIBdQ5m1r8Jt9E20UNgBf2DwYtSMyZNyJNZp2tTB+QEHETXybnfTwE3/Y+aP
         tyGgFH/nbc04Z2UNvaYBOJIBmZoH2bR8ZVdBV/NAcHVT7y9W7yAVmvDYPn5o9y4dedXD
         FToiaRYazBnNJ4jF+Y3GcM7p8DxjpDeL8Gf/xkCqduJFOow6TzT49yx2ffM1RwaOOIuf
         l9dDjFVCYj3K/NHjwtQTZmFAXHtgevbS1ig2yIbuaBsq7nkW6FeaHaoc3i5mOazlO0I9
         NMnufKLijp1V/9kYEmc4D65oGQWxhFnJSU1A4b44Jg6anuqqzAkQCfPYBIk1LueOFRzo
         mynQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=H9WZKzo5EXTarFrqN4Y2mAsgY23/xtK4Tnet3Av3afQ=;
        b=IkPZAL9Luvpe9WhsnKHnnTYlDiNHusLwPhI8QpaYSWrrkjKEHFtZJAjj7BnN4YdIbF
         gYAXbHHK612oMH+b16P+VhHYWeSBfGdDP4NErAyElNWRh2yJoNBNxgqh+AxsteBRse7P
         xuU3tJLQWhVVbL3ZdPpiwZWqfhNEQP6fDDiGC7p4xTuvdpg0XsN6BpbIremFBrfzG4Sy
         HXySfJVxlp7+OluSbNpPlS/Y/kV18O6kmmjEa4pjcgKMYYLNngQbPEO5eT9Gqbniy7Dz
         LQhaeF1JbMmzHLcycqhmaQdv/JgSmSNJF9RZ3VdP64WbT3VDYGwkgdgV+71aPtCNN1q0
         MLvw==
X-Gm-Message-State: AOAM532kstNBRe60QoMT+kZQ1CP9DqLeSMbWGY+vUWRHGRMxvzQ/K58d
	JcYo3Rh59osgJ7fxpTyqHgZkiw/X01KpqiCfVqY=
X-Google-Smtp-Source: ABdhPJzRQT/qLpXhPWzEBCA/bSeIqrEHHGvU5Px0APEWdLtbeNok5zCBiRiqNPHkTaKNNODJePiQdP95IMA/Kd+p2uc=
X-Received: by 2002:aed:2962:: with SMTP id s89mr3694732qtd.88.1606318949881;
 Wed, 25 Nov 2020 07:42:29 -0800 (PST)
MIME-Version: 1.0
References: <DB8PR10MB3977EC83BB4D654A05D7615E92FA0@DB8PR10MB3977.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <DB8PR10MB3977EC83BB4D654A05D7615E92FA0@DB8PR10MB3977.EURPRD10.PROD.OUTLOOK.COM>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 25 Nov 2020 07:42:03 -0800
Message-ID: <CAMKF1sqcyGMvvSGN0-iZ-pkgdFuZo-K_qVtqOYHXb3tFiM08-w@mail.gmail.com>
Subject: Re: Error when building eSDK for a "linux-dummy"
To: "Valek, Andrej" <andrej.valek@siemens.com>
Cc: "openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 25, 2020 at 2:17 AM Valek, Andrej <andrej.valek@siemens.com> wr=
ote:
>
> Hello Khem,
>
>
>
> I was, that you were trying to figure you, what=E2=80=99s going wrong wit=
h =E2=80=9Clinux-dummy=E2=80=9D kernel in eSDK case. Did you or somebody el=
se find something?
>
>
>
> I have the same problem as described here https://lists.yoctoproject.org/=
g/yocto/topic/78096462#51336.
>
>

i have not really spent time looking into this

>
>
>
> Regards,
>
> Andrej
