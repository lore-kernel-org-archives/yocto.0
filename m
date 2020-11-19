Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web08.8908.1605790825619795417
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 05:00:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VSYbqoaC;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id s123so2303417vsc.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 05:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JNhr+3yL3ywHvK2JbzXnSTZWCrUK/ATg9g+HWbM1aso=;
        b=VSYbqoaCYg6ej5/erSSxjfunSGSdS9Y0weGfxRCaqMlfaxdOC7rl+iUgoF1NrCe0OH
         q0ibI0sTK13d0XesIGL3Tf0Skrnbc1L2g+YmKrsoGS3/b6hHHPbKkQp7vVHwKky7+Ckx
         QLTsKN6NpZ1nLEpEcp1I0rFckii6Y4W89S4Kya2kkWYe5up6dknLVi+6zVRoXeQOdGgD
         65g3s0wdLJrDhizp8firAuGW46DdDjyvcsrhE99JHQGJ+z0ukG0IHWnzBv5ztXasPmmo
         TqMrLnxoedFvG+41LQu3bgzxEhvqic/KMy4CJJkD/NtO4KUWQVrYZK5bUCtBFvhAt0Y1
         29mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JNhr+3yL3ywHvK2JbzXnSTZWCrUK/ATg9g+HWbM1aso=;
        b=Wds80075Rg8GNRN7003srje9QPRjRMG73GxPbid9UTJ1WXCz6lBLvvHbLzPwotsMfn
         JQ3I2i9397w6wrXeoTeBJbQVInz9iPBjmhepWeJTgtHF+jC7nyEhJ1Rj2fic2vQ+e2GW
         eHU9Dhz9FXxoN8L2t0Qax/59JP5SOfUfHTrVerHHtIANghm20OnYK6MRSh22aWasQDdN
         JjZWQ+CK5iE2LYl4/mMUDve0osDQidRj6aQjapYk1NzIsYaWkLDxmpnSviVeIfJwu2yk
         7JCwScCr88wghBdIjreps8RqQQ04ImE5uxYKwJGGJXxSgznX1pHtm7wzAEtX/MpzHdYx
         6k7A==
X-Gm-Message-State: AOAM532TEgWUwYboKceB2G+VK9rLYnXouunyD4SFkrgEa36rynOz/zmc
	9nn6m0f0ux+rMFU4HnJEHBeuM+D+ADBAtvRaYiLjfgxMLaO3Kw==
X-Google-Smtp-Source: ABdhPJxmDIZ28szYIwuXGwTuhke5YMDxBtQSXhWmTrUmGbFuea7ma0dr+L7yG88btjww4oqwL/Br7OkDSsoXmRYE6Zo=
X-Received: by 2002:a67:f403:: with SMTP id p3mr8338911vsn.16.1605790824500;
 Thu, 19 Nov 2020 05:00:24 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
 <20201119091631.riqm2r2gtnou2cie@qschulz> <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
 <20201119111831.agmgsv577robrg5p@qschulz>
In-Reply-To: <20201119111831.agmgsv577robrg5p@qschulz>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 18:30:13 +0530
Message-ID: <CAJw=dJ8TYZ6NEg7n30=yfiXYOOusJd8_ULbWLF4kJmzi1Oi9nw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ad939d05b4754f27"

--000000000000ad939d05b4754f27
Content-Type: text/plain; charset="UTF-8"

Hi ,
   Thank You very much , we are able to copy obexpushd to /usr/bin using
.bb file.

  I have one more dout ;
1)  We created our own custom image (*bitbake core-image-xxxx*) , after
flashing image to board . when we run *obexpushd binary  *it shows as
follows :-

root@intel-corei7-64:~#
root@intel-corei7-64:~# obexpushd
-sh: /usr/bin/obexpushd: No such file or directory
root@intel-corei7-64:~# cd /usr/bin
root@intel-corei7-64:/usr/bin# ls | grep obexpush
obexpushd
root@intel-corei7-64:/usr/bin#

Even though binary is there it shows no such file or directory.

2) But when we are flashing a sato image (*bitbake* *core-image-sato-sdk *)
, that time *obexpushd* binary is working fine .

    Why it is happening like these ?
    Is there any permission related issue with custom image and sato image ?


On Thu, Nov 19, 2020 at 4:48 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi,
>
> On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:
> > Hi ,
> >      Yours correct only , but the thing is we are taking*
> binary(obexpushd)*
> > from other source and only need to copy that binary into* /usr/bin* of
> our
> > platform(*intel board*).
> >
> >      Hence how we can achieve these using .bb file ? is there any sample
> > example .
> >
>
> I gave you what you have to do in the previous mail. Remove the last two
> lines of your bb file.
>
> If it does not work, give the full error logs and what you're trying to
> achieve and what you have.
>
> Quentin
>

--000000000000ad939d05b4754f27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0Thank You very much , we are able to=
 copy obexpushd to /usr/bin using .bb file.=C2=A0=C2=A0</div><div><br></div=
><div>=C2=A0 I have one more dout=C2=A0;</div><div>1)=C2=A0 We created our =
own custom=C2=A0image (<b>bitbake core-image-xxxx</b>) , after flashing ima=
ge to board . when we run <b>obexpushd binary=C2=A0 </b>it shows as follows=
 :-</div><div>=C2=A0 =C2=A0=C2=A0</div>root@intel-corei7-64:~# <br>root@int=
el-corei7-64:~# obexpushd<br>-sh: /usr/bin/obexpushd: No such file or direc=
tory<br>root@intel-corei7-64:~# cd /usr/bin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 <br>root@intel-corei7-64:/usr/bin# ls | grep obexpush<br>obexpushd<br>r=
oot@intel-corei7-64:/usr/bin# <br><br><div>Even though binary is there it s=
hows no such file or directory.</div><div><br></div><div>2) But when we are=
 flashing a sato image (<b>bitbake</b>=C2=A0<b>core-image-sato-sdk </b>) , =
that time <b>obexpushd</b> binary is working fine .</div><div>=C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 =C2=A0 Why it is happening like these ?</div><div>=
=C2=A0 =C2=A0 Is there any permission related issue with custom=C2=A0image =
and sato image ?</div><div>=C2=A0</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020 at 4:48 PM Quen=
tin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quenti=
n.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi,<br>
<br>
On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:<br>
&gt; Hi ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Yours correct only , but the thing is we are takin=
g* binary(obexpushd)*<br>
&gt; from other source and only need to copy that binary into* /usr/bin* of=
 our<br>
&gt; platform(*intel board*).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Hence how we can achieve these using .bb file ? is=
 there any sample<br>
&gt; example .<br>
&gt; <br>
<br>
I gave you what you have to do in the previous mail. Remove the last two<br=
>
lines of your bb file.<br>
<br>
If it does not work, give the full error logs and what you&#39;re trying to=
<br>
achieve and what you have.<br>
<br>
Quentin<br>
</blockquote></div>

--000000000000ad939d05b4754f27--
