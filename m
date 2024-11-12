Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3887D42BAB
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 16:29:38 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.91107.1731428978297668524
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 08:29:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a2+MXkiH;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: sateesh0457@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e35e0ad7be5so883440276.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 08:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731428977; x=1732033777; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mIQjBfqDxiFI/1KXWuFGqpgv+8B5nZ6QdXAj8s9tXZ8=;
        b=a2+MXkiHxLZP9oM2Bigx8/oMnSaBZhN70YsgUdX49k7qP3OgDROtfvx3dtH9AXxQ69
         JGBPJ52lABqEEB3qfwH1lPO0QuwlvXm+7T5zO/Z1iFqqIZmJ+uxSYLv/c3jTCucv3q3B
         PNAgQfOZ7DKy++22KrJ5Vsoeud4fI44QhNPjkCugi7+Dc+P/s42TMn12ivL6migcafjm
         cj8wq5ji1NAMpYmu9esDg5O7gASVyOpmXSiDIS/0wQvTD3deVcDoxKRRx5Rm0RG7WfjG
         l7skEJUgh8vbZgroXWUItpLrV2E0fQU2tftm93W3V1N2MCGzv0JCsf5/c9WO5sDjzNR9
         wctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731428977; x=1732033777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mIQjBfqDxiFI/1KXWuFGqpgv+8B5nZ6QdXAj8s9tXZ8=;
        b=NksGfqcMuu/HJnWZso7KxoxRbJDlqLsQx0eKbHilXLxIWwABRCJYxfPBut/lOQnJka
         QjlMCEzMI79wpE0PLwzEjGrcI+o73BXuufuV6VV6oFRxwqTbXQNUYWAFzAN+ajj+ou71
         OTs6tvZDC9dEkMSXR4lhZv3QfOIpC9nc1ai6Xnk2h7Hob5o/TQ6U5H5lffaXEST2svtB
         GX8O8FdWzQ/dCMX1V4JoR3Z7pGr4tT/qMbMM66WcMv813NrqDmXjqofmmWkMiyTRrvbq
         LaqdWTvqbkyUyWyV/hznFnq/RlvTRvA8cKjV4RIHsVCIW5gSKDkiA59BvRQaXR1xevQK
         vZZw==
X-Gm-Message-State: AOJu0YwpHq5YrF75G25wEJcmMGOJnqPsUswHjD0sp6PEHj4vtli9m5wj
	p2ZAjzVD4rts8tcyc1CHsgPV9VSfYq8ieD7mmZt1H/IdoD+549O33FnBVMPet2Qr3541gZRmNNu
	C/BVWf5IluAcXo2rJBq8eVxJ4FD0=
X-Google-Smtp-Source: AGHT+IEdXoTzHcnITBzMd8IptUwpQWoRP7zeMKax25LZXdSwuvzepEAGSOE4dY1jjyLGVlkG19KeZjCFeVNkm1+4tGs=
X-Received: by 2002:a05:690c:6885:b0:6ea:90b6:ab48 with SMTP id
 00721157ae682-6eaddd98875mr171026597b3.18.1731428977407; Tue, 12 Nov 2024
 08:29:37 -0800 (PST)
MIME-Version: 1.0
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
 <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com> <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
 <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com> <CACsETSsO6OOVxZ=MgYMGv_Jepmn9OmgUBfDuiaEO3vFaAMbtWg@mail.gmail.com>
 <40d01dc1-7894-4163-ac1f-3807bcc92048@gmail.com>
In-Reply-To: <40d01dc1-7894-4163-ac1f-3807bcc92048@gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 12 Nov 2024 21:59:23 +0530
Message-ID: <CACsETSt+z2LxaQsUCh1K88S0APT88q+AgDKpGOcPMPDi=ntz5g@mail.gmail.com>
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000027011d0626b9b907"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 16:29:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64269

--00000000000027011d0626b9b907
Content-Type: text/plain; charset="UTF-8"

Hi Sarvari,

My intention if we disable weston we won't see this error.becuase I don't
need display.

Could you please help me with this. Actually I am not clear about my end.

Thanks & Regards,
Sateesh

On Tue, 12 Nov, 2024, 9:55 pm Gyorgy Sarvari, <skandigraun@gmail.com> wrote:

> On 11/12/24 17:11, sateesh m wrote:
> > IMAGE_INSTALL:remove = "weston weston-init"
> > PACKAGECONFIG:remove:weston = "init"
> >
> > I did it even though I see same id: weston no such user"
> >
>
> What's the name/path of the script that's emitting these errors? Are you
> sure that it is provided by weston/weston-init packages?
>

--00000000000027011d0626b9b907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Sarvari,<br></p>
<p dir=3D"ltr">My intention if we disable weston we won&#39;t see this erro=
r.becuase I don&#39;t need display. </p>
<p dir=3D"ltr">Could you please help me with this. Actually I am not clear =
about my end.</p>
<p dir=3D"ltr">Thanks &amp; Regards,<br>
Sateesh</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, 12 Nov, 2024, 9:55 pm Gyorgy Sarvari, &lt;<a href=3D"mailto:skandigraun@g=
mail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 11/12/24 17:11, sateesh m wrote:<br>
&gt; IMAGE_INSTALL:remove =3D &quot;weston weston-init&quot;<br>
&gt; PACKAGECONFIG:remove:weston =3D &quot;init&quot;<br>
&gt; <br>
&gt; I did it even though I see same id: weston no such user&quot;<br>
&gt; <br>
<br>
What&#39;s the name/path of the script that&#39;s emitting these errors? Ar=
e you <br>
sure that it is provided by weston/weston-init packages?<br>
</blockquote></div>

--00000000000027011d0626b9b907--

