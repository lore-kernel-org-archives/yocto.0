Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.23169.1628780047492938545
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 07:54:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DvKaDbk8;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id l6so1662564vkr.8
        for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 07:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LqtT5I7zZE1xK1fSQw3E9dx6KJGajO636iLWRBHa3o8=;
        b=DvKaDbk8lP3OwYhAjzRkSfk961UPDiY7ikg/rlT3HL8u1r8XXdzdSQo27fgo39r1fi
         TsUVkmwlGOTQ86S9hWgV4FbKiYp+BDeF0kM9VTK1m0rTKSmLk3hD92HTkj04HMpHyqRZ
         2J3+Z8Ne/AbUzry35Z+5Pmj0iGNGvaPqnedsAEQsBTR/6L5HxYswNaVWanGwVW/z57dK
         guS2zM5qGHbXUM0MG1t5SIXzVKOc4QOOCklS8v+TH/U9+697cTw8ya3SNzhdNFc8fIn8
         7us1Dvgmap6AqfT/t/QCCBhz45GKJJUGUgigVCQcRfrruq26VNXFLRCQhcikNQXmEvIv
         Es8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LqtT5I7zZE1xK1fSQw3E9dx6KJGajO636iLWRBHa3o8=;
        b=AV+TDqQs8jH5UZyfea/EbiZngxJcrtgseFQmNqGZifhaXyAdLTKjgY+T6HYGkAhA3c
         jVvUbyCkEP1cW3sJHDWgIjnr1P6XLcqnK9TC1zft+oiAYaWGKARIQV4oOOuwHPzwpBQ/
         g78M8fSKTkEkWn5UYgTb6EK69N0IsIQrOrA0C+YjguYV+3Ej747ePZGhOdWe7u0lA2cv
         wJr+zsqHN+woT7e74YqGsuHtr+qYMXdTtlARcj6rf3ZsZJOz2Ss9xSqhmAJEg/LCzFT/
         t9lY6mglCJaqwY9TeWYO+nEySTIXIEFkkvWIdU5ylzGAjFxLd7FOoXlnrHBbCg2RGmY3
         CkUQ==
X-Gm-Message-State: AOAM532wxbXyy5XOiGClWFyiI8HVf1gB2CNp4CL9OaK0ZiohAjOz/psC
	13SBS14Y0FRWNG2urEbKm3Fd7tGi+9TTtrzjCng=
X-Google-Smtp-Source: ABdhPJxqksHwVuERybf/oHpuRnfYIOLr63SibnNP8uhwJ8ZDv42b6LrnxkHvj8+SJwt6Unx9KSlIlGBR15KxMg1RUg8=
X-Received: by 2002:ac5:cded:: with SMTP id v13mr3590466vkn.8.1628780046746;
 Thu, 12 Aug 2021 07:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
In-Reply-To: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 12 Aug 2021 16:53:55 +0200
Message-ID: <CANNYZj9ZwQoUhvm20TeArJATQSFUr_v96FzRDyczuViOPHFyLA@mail.gmail.com>
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: ashutosh.naik@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001a882405c95de83c"

--0000000000001a882405c95de83c
Content-Type: text/plain; charset="UTF-8"

What happens when you 'bitbake gdb'?

Alex

On Thu, 12 Aug 2021 at 16:28, <ashutosh.naik@gmail.com> wrote:

>
> I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,
>
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-debug"
> PACKAGECONFIG_remove_pn-gdb = "readline"
>
>
> I also tried to add the gdbserver package explicitly by adding this to
> conf/local.conf:
>
>
> IMAGE_INSTALL_append = " gdbserver"
>
>
> However, the build failed with the following error:
>
>
> Collected errors:
>  * Solver encountered 1 problem(s):
>  * Problem 1/1:
>  *   - nothing provides gdbserver needed by
> packagegroup-core-tools-debug-1.0-r3.all
>  *
>  * Solution 1:
>  *   - do not ask to install a package providing
> packagegroup-core-tools-debug
>
>
> Would appreciate any help, as I am struggling with this issue for over a
> day
>
> Thanks
> Ash
>
> 
>
>

--0000000000001a882405c95de83c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What happens when you &#39;bitbake gdb&#39;?</div><di=
v><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, 12 Aug 2021 at 16:28, &lt;<a href=3D=
"mailto:ashutosh.naik@gmail.com">ashutosh.naik@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0</div>
<div>I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,=C2=
=A0</div>
<div>=C2=A0</div>
<blockquote>
<div>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug&quot;</div>
<div>PACKAGECONFIG_remove_pn-gdb =3D &quot;readline&quot;</div>
</blockquote>
<div>=C2=A0</div>
<div>I also tried to add the gdbserver package explicitly by adding this to=
 conf/local.conf:</div>
<div>=C2=A0</div>
<blockquote>
<div>IMAGE_INSTALL_append =3D &quot; gdbserver&quot;</div>
</blockquote>
<div>=C2=A0</div>
<div>However, the build failed with the following error:</div>
<div>=C2=A0</div>
<blockquote>
<div>Collected errors:</div>
<div>=C2=A0* Solver encountered 1 problem(s):</div>
<div>=C2=A0* Problem 1/1:</div>
<div>=C2=A0*=C2=A0 =C2=A0- nothing provides gdbserver needed by packagegrou=
p-core-tools-debug-1.0-r3.all</div>
<div>=C2=A0*=C2=A0</div>
<div>=C2=A0* Solution 1:</div>
<div>=C2=A0*=C2=A0 =C2=A0- do not ask to install a package providing packag=
egroup-core-tools-debug</div>
</blockquote>
<div>=C2=A0</div>
<div>Would appreciate any help, as I am struggling with this issue for over=
 a day</div>
<div>=C2=A0</div>
<div>Thanks</div>
<div>Ash</div>
<br>
<br>
<br>
</blockquote></div>

--0000000000001a882405c95de83c--
