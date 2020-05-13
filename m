Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.2474.1589398109779816226
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 12:28:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WjgoquE8;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: joel.winarske@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id n18so191671pfa.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 12:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Azy2i9HVLAgt5DqVkTVOjCOwLSqG7OHeANNCOoeYwSo=;
        b=WjgoquE83uSX8L57H7tSMymQDgw3VbTzuXEgg3HBSkwSwQSZmG+lx8TomYXwrcDX47
         /I/Mvm+9PIgz1rRYSQEZmZ3l6Efy7//wk6LOaf+3CUyACHWswwGsT+Yn38Tacjlp/2q8
         PRM5e4MQGOLlAd+RuNkRKKaisyV5JtZen+mOpfuFbvcQw7ONctX18yNDmbxhDKXeWzzc
         eBIo8WpMLPSUMKIw6R0wYEiAVCvzhOSXVZHm6V79VkGrqshueKykrACu/OV1Nlo5AF/0
         TLWkb6o79Cx0hKxhemLkQ5bq6Y1B52WcktshfGz+A4nlZ1wok4LYhSLf341zyiUCB1zW
         dmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Azy2i9HVLAgt5DqVkTVOjCOwLSqG7OHeANNCOoeYwSo=;
        b=YYA+fX7LgRd8V5ZZ6GhV3Hrrj4NG7CGcK6v7fwBCRwVd7wP1aO7oOyOSNUqijlHmq1
         Zvz2lTojHk7DFAld/LkPtAYLlL01oxpwjAtnV6XO0VLbwqcnmbyw8a6ReqfU0T8GY/gJ
         wC0iWkPOH95QthpgwjcmkWAp9zZ47Qvsc/eoXqSO9SR1eAMb+XImh3WZ9yAiQDoHo+Qu
         JtrJH+UZ54dax3H16Uf4DgQsb+AVaQUWItytAvTjJ3WqIQQaciZgl3hNUFL/tCRMlSfN
         j4HDKe6ZcCkE42q909iraHoNkFQVtpFS1UHAoX8SS0nB9IdOoLnf4/y9aq3zIxirIM5D
         IyPg==
X-Gm-Message-State: AOAM530hiH9pZ3H1NW4oUfultdf+jhlyqOvjcOsihP4w9tFGE+z68FhI
	J2/cNsBnRGj5bgVRqtU28XkfVoWsn+yO6VPhrDs=
X-Google-Smtp-Source: ABdhPJyknSqDHLkv/gh2UMXjzJOXlsvib6ndcWhRgtdgFBXK0HMr+TiQ8W01Ku2o5D7pi5zgAPhKY51flBGjh/2qIWk=
X-Received: by 2002:a62:7846:: with SMTP id t67mr826323pfc.78.1589398109169;
 Wed, 13 May 2020 12:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
 <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
In-Reply-To: <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Wed, 13 May 2020 12:28:17 -0700
Message-ID: <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b42b4b05a58c95bc"

--000000000000b42b4b05a58c95bc
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Yes I've done what you mention before.

In this case I already have a Target and Native recipe.  The Project
generates a Native artifact when building the Target.  Not resolvable
without major surgery.  This artifact is then required in other Target
recipes.


Joel

On Wed, May 13, 2020, 7:13 AM Ross Burton <ross@burtonini.com> wrote:

> On Wed, 13 May 2020 at 06:03, Joel Winarske <joel.winarske@gmail.com>
> wrote:
> > I have a project that generates a native artifact during the target
> build.  Both the native and target artifacts are needed for other target
> recipes.
> >
> > What's the recommended pattern for handling this?
>
> Either use BBCLASSEXTEND or write a -native recipe, build just the
> native parts in a foo-native recipe and depend on that to build foo
> and other recipes.
>
> For example, glib-2.0 DEPENDS on glib-2.0-native.
>
> Ross
>

--000000000000b42b4b05a58c95bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Ross,<div dir=3D"auto"><br></div><div dir=3D"auto">Yes=
 I&#39;ve done what you mention before.=C2=A0=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">In this case I already have a Target and Native=
 recipe.=C2=A0 The Project generates a Native artifact when building the Ta=
rget.=C2=A0 Not resolvable without major surgery.=C2=A0 This artifact is th=
en required in other Target recipes.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Joel</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020, 7:=
13 AM Ross Burton &lt;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, 13 May 2=
020 at 06:03, Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">joel.winarske@gmail.com</a>&gt; wrote:=
<br>
&gt; I have a project that generates a native artifact during the target bu=
ild.=C2=A0 Both the native and target artifacts are needed for other target=
 recipes.<br>
&gt;<br>
&gt; What&#39;s the recommended pattern for handling this?<br>
<br>
Either use BBCLASSEXTEND or write a -native recipe, build just the<br>
native parts in a foo-native recipe and depend on that to build foo<br>
and other recipes.<br>
<br>
For example, glib-2.0 DEPENDS on glib-2.0-native.<br>
<br>
Ross<br>
</blockquote></div>

--000000000000b42b4b05a58c95bc--
