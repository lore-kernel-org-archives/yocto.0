Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37A84D10BFC
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 13:59:56 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.11022.1729951187556247970
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 06:59:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dM+Yj6Fz;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: haimbachar2008@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6e390d9ad1dso24864487b3.3
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729951187; x=1730555987; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CHofc17mcK/o0ixMeqrfPDGF0lMA3pUAK7ir+U83sz0=;
        b=dM+Yj6FzmY7Kv4+FUSmWA5rZubyNgzGnMRCvqhiJzCJaAThwDMBusblgoVK9/U8VzZ
         51PhH2QDZ7udtES7jQOvPdZY9NxBAs0Brebf27ZPkyIURSORWCM7b9LO65a8tkCZHyEL
         3KGa8ZoMq923dOfIp5WVsXg0HngWx8G9SLXot5YdJ4fygXqeN60fe5CGb4c1DR15Vc9X
         YHWhjxgg4e/ffw0YjBzC3aSMVSFAIKWQgvDul8fhVhe8ibwRqsOkhOUvE+o7MBeqOydc
         iTJIqjX32zA+qPFC5VnoBLiydQ182B/DVSQA6N51bjAOD7u2uFjsb0Hja/Dwhc7qGwOg
         DrwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729951187; x=1730555987;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHofc17mcK/o0ixMeqrfPDGF0lMA3pUAK7ir+U83sz0=;
        b=Ou4hBI6Xed/6cDR81+fQCrpKkcPpBeOy1uiXr/Shnyp3QbiWCAglbhW78a3P8uAsd8
         p2AV6YzlJuERzLhCnn3+WepXk/tsHb7PAtIOpz8tyl02t4tNgfaC2GStlIHXlY4eI1wf
         YoQwy4Bmt0yTje77j3qxqJSKyzT/+MxnJb7OxiZ4xp0v+7spEPJNQJur1t866mRBwOBT
         mzHZg4vrVsqq+IHsQFO3TBdFdYJo6l9G052RwDhzywCZfTkFI+Ze78DkDnaTRPB/jC2b
         KaKtMorH8hZqanLJ1SCYhyxu2Cgkvb3TRub8SiW7qU4W+OrqFWQpgOD4CLB0SgRdeCHo
         zg/Q==
X-Gm-Message-State: AOJu0YxKXdj6P62eEjUCTjv3o/a3fx1sQm/wjwLk2nrfCF3ZyaXhQKPz
	WAng3r2zxeP5o1yGChEDVc2J5lgaCL3mwW/IRHqZcykuKyVNwF99iVi2LWjY+e74acS45YBVwjS
	RN1nGznmUzkNqrjOnX9qpxkwWph0=
X-Google-Smtp-Source: AGHT+IH7cxPxqHPpNTsGO4E+D37laviccOMgyFa36FYRFJfO0eueVPm+Fjn/dfvqxZNn5k5xCaSkzBM+484+vxsLonw=
X-Received: by 2002:a05:690c:c18:b0:6d3:4c37:d652 with SMTP id
 00721157ae682-6e9d89b13demr29828237b3.24.1729951186641; Sat, 26 Oct 2024
 06:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <mi4v.1729941968245217599.qLzF@lists.yoctoproject.org> <f2383bbc-427f-48b0-95e0-dda647ba9241@gmail.com>
In-Reply-To: <f2383bbc-427f-48b0-95e0-dda647ba9241@gmail.com>
From: =?UTF-8?B?15fXmdeZ150g15HXm9eo?= <haimbachar2008@gmail.com>
Date: Sat, 26 Oct 2024 16:59:35 +0300
Message-ID: <CAOJpL53RCmNZY=dS+Wm14z=HqUbeNd9Qt0fJ6Oansy6mor8NXw@mail.gmail.com>
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f57240062561a53e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 13:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64140

--000000000000f57240062561a53e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi and what if the recipe is linux-xlnx then set
PREFFERED_PROVIDER_virtual/kernel =3D =E2=80=9Clinux-xlnx-rt=E2=80=9D?

By the way what the different between linux-yocto and linux-xlnx?


=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=A9=D7=91=D7=AA, 26 =D7=91=D7=90=D7=
=95=D7=A7=D7=B3 2024 =D7=91-16:55 =D7=9E=D7=90=D7=AA Gyorgy Sarvari <skandi=
graun@gmail.com
>:

> One painless way would be to set
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
> somewhere (e.g. distro.conf, machine.conf, local.conf... whatever fits
> best your case).
>
> Setting this will fetch the kernel source from a branch that has the
> patch applied already.
>

--000000000000f57240062561a53e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi and what if the recipe is linux-xlnx then set PREFFERE=
D_PROVIDER_virtual/kernel =3D =E2=80=9Clinux-xlnx-rt=E2=80=9D?</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">By the way what the different betwee=
n linux-yocto and linux-xlnx?</div><div dir=3D"auto"><br></div><div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D7=91=D7=AA=
=D7=90=D7=A8=D7=99=D7=9A =D7=A9=D7=91=D7=AA, 26 =D7=91=D7=90=D7=95=D7=A7=D7=
=B3 2024 =D7=91-16:55 =D7=9E=D7=90=D7=AA Gyorgy Sarvari &lt;<a href=3D"mail=
to:skandigraun@gmail.com">skandigraun@gmail.com</a>&gt;:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0.8ex;border-right-width:1=
px;border-right-style:solid;padding-right:1ex;border-right-color:rgb(204,20=
4,204)">One painless way would be to set<br>
PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-yocto-rt&quot;<br>
somewhere (e.g. distro.conf, machine.conf, local.conf... whatever fits <br>
best your case).<br>
<br>
Setting this will fetch the kernel source from a branch that has the <br>
patch applied already.<br>
</blockquote></div></div>

--000000000000f57240062561a53e--

