Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.2930.1606904553824616522
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 02:22:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDgK5rba;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id cm17so3111927edb.4
        for <yocto@lists.yoctoproject.org>; Wed, 02 Dec 2020 02:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5HcYkWqpJfDfxrUPtBD59xTWhyjOv4cpxN7siaoI1j0=;
        b=bDgK5rbaLkyEbsLRyUDjhyf/MkVeFSp3ntsPfI7vRW9Pc8RJByOEqrxJM4G6WHVHKL
         uSXT35EscDAW61OjcJQTOQ4/9YP2ll5x4O7CowFbechy5T4wceRkNk5+hDjWzSl015ur
         p9p6yii4L/vjtaT2oEi/WnInWojL+mdeSgNzgL7uItgmaZ1ABKRS39NOnqo7P7I6rgeV
         UKSeY5/g7cEJPMgkH/bSnRuiuzfGguuyUTjdVc+IFMGDrGANTBGkObaK7VFHm6E/r6zb
         UmQWFr+OxVcMv1r72ReBUaJ2SQE0upC9dEUKYX3DQkT9qGG1SMqy6pm9SbVaIasD/0F0
         XscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5HcYkWqpJfDfxrUPtBD59xTWhyjOv4cpxN7siaoI1j0=;
        b=E974J3I09rFqH42pEJUI7OYa28JcG3o5IOGEUcY/OSXeUYBl4H8qgJZN625dCi0za4
         AyayxkQVEcDdshCRUoP18VM3FL8D/wWX7awEuT4MaFX0o+ZzOBIMOPiBo4Q6kEEMsvr+
         4whnw/gNF+vqFZdjcUal7Enx3JgNJAe6HNp/vHJt1fGov2a0kfGR8uA5qWkY/PKcpLHO
         y4xXSjyVxKp/CF1IDTfhNh5eQe8sAI6JnISqprQXQZaF+3dmnI6/2AstssHP7+ZEfmPF
         UjEQZZlsU94Zwr6Hk11rSggoG0jJRkfNIIgaExtL9EZoxEXqCeFHAdNigzOt49pJU1K8
         nbyw==
X-Gm-Message-State: AOAM532CfBrBwzA5jeoFKbvrkEFzm0pDmw+LiC9mMKKqtklR+10YxDW1
	GyL5W9xgYIjqkLMqPFkkvLV8TIUHpY856C6OXR4=
X-Google-Smtp-Source: ABdhPJyntlttz1OszjDFurzebEtkvgDJ34zFyRqyIHNUyTJUKxFJ42mqiAwyaZ/K461z71ChedfndfVs7ibb26O9ynw=
X-Received: by 2002:a50:e882:: with SMTP id f2mr1839401edn.76.1606904552251;
 Wed, 02 Dec 2020 02:22:32 -0800 (PST)
MIME-Version: 1.0
References: <Y4vX.1606881802943243582.z729@lists.yoctoproject.org>
In-Reply-To: <Y4vX.1606881802943243582.z729@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 2 Dec 2020 11:22:21 +0100
Message-ID: <CA+chaQdK+Uj9x+pmfCFNA4UaEzgCLYXsM6kt0F7hy3481vmnrw@mail.gmail.com>
Subject: Re: [yocto] qt5 directory not creating using qt5.15.0 master branch
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000006681a05b5789f39"

--00000000000006681a05b5789f39
Content-Type: text/plain; charset="UTF-8"

See QT_DIR_NAME variable in meta-qt5
and b716195f609de6547cfdfadfd4fd25292a6bbf09 commit which changed the
default value.

On Wed, Dec 2, 2020 at 5:03 AM sateesh m <sateesh0457@gmail.com> wrote:

> Hi Guys,
>
>               I am trying to build qt support image to  my yocto .I am
> using meta-qt5 master sources,after build its not creating qt5 directory
> path in the /usr/lib path as well as /usr/share/path but . but when i build
> x86 its created
> x86 i got :
>     $ /usr/share/qt5$ ls
>     $usr/lib/qt5/bin$ ls
>
>
> can you please help me if anyone knows this issue.
>
> thanks in advance.
>
> Regards,
> Sateesh
>
> 
>
>

--00000000000006681a05b5789f39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See=C2=A0QT_DIR_NAME variable in meta-qt5 and=C2=A0b716195=
f609de6547cfdfadfd4fd25292a6bbf09 commit which changed the default value.</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Dec 2, 2020 at 5:03 AM sateesh m &lt;<a href=3D"mailto:sateesh0457@gm=
ail.com">sateesh0457@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi Guys,<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 I am trying to build qt support image to=C2=A0 my yoc=
to .I am using meta-qt5 master sources,after build its not creating qt5 dir=
ectory path in the /usr/lib path as well as /usr/share/path but . but when =
i build x86 its created=C2=A0<br>x86 i got :<br>=C2=A0 =C2=A0 $=C2=A0/usr/s=
hare/qt5$ ls<br>=C2=A0 =C2=A0 $usr/lib/qt5/bin$ ls
<div><br><br>can you please help me if anyone knows this issue.<br><br>tha=
nks in advance.<br><br>Regards,<br>Sateesh</div>
<br>
<br>
<br>
</blockquote></div>

--00000000000006681a05b5789f39--
