Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7562BC25B7E
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 16:25:07 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.17104.1717172704324267953
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 May 2024 09:25:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KyjecGh5;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2c1b94dab63so1207930a91.0
        for <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 09:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717172704; x=1717777504; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s1kg5xb9D/f7mT0zZo13cMJUXf+aGIeEOiXLCmwgJ68=;
        b=KyjecGh5rszc9QiI8HxXjeDvUBf3359LZyLQRHGEx/zKkP/RdEHuaFjKRWDC21tuI3
         ec5zTS5zFIripgwEt/slkE7u1IM9x3Ul6VjkipHae6dvq6hhi39pvOUoLcC6ZF0P/9qY
         s2JfKLxNQBfqShWkHsoC8tPYTFMMcstNzEbepJrw9xG62u8/X+v+3wBPQ9dKPYaXKF0k
         /NEhrFZKubbTtkv2BV4v2J5s/6cU9fqbIM8bsHi1tVWnAowYKGD05ZRfMtFM0mkeX5Ta
         EAtYkrHgmxtVVEJiwzTRp3eM1NAgO1ykKd1MRvkW6UJVQwiLNDuhR/rObf6eWuZ/8X2d
         2z1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717172704; x=1717777504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1kg5xb9D/f7mT0zZo13cMJUXf+aGIeEOiXLCmwgJ68=;
        b=WpJLq3fYKSw4uh16x1BW3NTsSdOqg90bWNqwt68Vd4vDRF3ESVFaateq+gzUTBmazX
         ItdyUxFSFJ6YsvAJ8TR/EBeQPoEG+1aKljlXTFk7eiSWH6sonAClSMAUXyACvXUERLhk
         +krJjSu67iobQPzzt5NguSybtY4L4qjq1RlV1usgbXtFrjBN78D5T/ssPpqC+1q10Yhy
         0fyFZ6RX0z112Q2TOTftbbH8jtc5E7Z0vzmNWGoVWGTHKnewPliq7dGaOqZuCkRGXk8f
         QdFr3rYkler44VSGhIcuqrAR6uHOPBj6LUUA4GO80q+pzVPGse0dQ4EyuOYtBtUlocG6
         PJpA==
X-Gm-Message-State: AOJu0Yxi9LsRzpqYVjPu5DOXoCEfaXfYA4bBYx/nyHDUS6PNn8/jO71Y
	3GXHre9+z6p9qht4h5iRilVAl4SHj1HhOyGtLCj4XqqxqvlHySkOSIyrWl6HT6wJPbot2n6MiDi
	AoF0Midmts0GZenpIZFfhUob2D18=
X-Google-Smtp-Source: AGHT+IEw8KXQgWMuky3raX/WvfxYz69PHTVoXWMd64kdqmhLPjJlZNNbBP5yb3iXaLMhqc8ut0TfKcr2Y6YRfTpZgOY=
X-Received: by 2002:a17:90a:fc87:b0:2c1:9eb9:a352 with SMTP id
 98e67ed59e1d1-2c1dc5dd511mr1942649a91.49.1717172703488; Fri, 31 May 2024
 09:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
 <CANNYZj-sf3j4yJeCvDWSjqBQbA_-iwEQyD4QLF6oin6Y-UMo5w@mail.gmail.com>
 <CAEFUPH0j1FXCMF4E1yVbD1hed264SWsYZ5MnPftL1NSVQg16aw@mail.gmail.com> <277bbb26-8723-4b66-882a-34543fb61a6e@cherry.de>
In-Reply-To: <277bbb26-8723-4b66-882a-34543fb61a6e@cherry.de>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Fri, 31 May 2024 09:24:52 -0700
Message-ID: <CAEFUPH3r7QrVXO-f_8DYab34GmQAP504SZHJQkRj77KO=CuKqw@mail.gmail.com>
Subject: Re: [yocto] query on building rabbitmq-c
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org, Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000274460619c26d84"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 16:25:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63249

--0000000000000274460619c26d84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Quentin.This helps

Regards
Simon

On Fri, May 31, 2024 at 3:16=E2=80=AFAM Quentin Schulz <quentin.schulz@cher=
ry.de>
wrote:

> Hi Simon,
>
> On 5/30/24 7:21 PM, SIMON BABY via lists.yoctoproject.org wrote:
> > Hello Alexander,
> >
> > Thank you for helping this out.
> >
> > I can see packages-split with below files:
> >
> > sbaby@eadlng-build-machine
> :~/workspace/05162024_NIC/741819_NICOPS/build/tmp/work/cortexa7hf-neon-vf=
pv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/packages-split/rabbitmq-c-tools=
$
> > ls -ll usr/bin/
> > total 104
> > -rwxr-xr-x 2 sbaby sbaby 22284 Mar 31  2021 amqp-consume
> > -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-declare-queue
> > -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-delete-queue
> > -rwxr-xr-x 2 sbaby sbaby 18176 Mar 31  2021 amqp-get
> > -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-publish
> >
> > sbaby@eadlng-build-machine
> :~/workspace/05162024_NIC/741819_NICOPS/build/tmp/work/cortexa7hf-neon-vf=
pv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/packages-split$
> > ls -ll rabbitmq-c/usr/lib/
> > total 80
> > lrwxrwxrwx 1 sbaby sbaby    20 Mar 31  2021 librabbitmq.so.4 ->
> > librabbitmq.so.4.5.0
> > -rwxr-xr-x 2 sbaby sbaby 79204 Mar 31  2021 librabbitmq.so.4.5.0
> >
> >
> >
> > However, On the target I could not see the amqp-* binaries under
> /usr/bin.
> > But I see the library librabbitmq.so.4.5.0. Is this expected? Do we nee=
d
> > only the library to execute some client code with rabbitmq-c  api ?
> >
> > root@sama7g5ek-sd:~# ls -ll /usr/lib/librabbitmq.so.4.5.0
> > -rwxr-xr-x 1 root root 79204 Mar  9  2018 /usr/lib/librabbitmq.so.4.5.0
> >
> > root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-consume
> > ls: cannot access '/usr/bin/amqp-consume': No such file or directory
> > root@sama7g5ek-sd:~#
> > root@sama7g5ek-sd:~#
> > root@sama7g5ek-sd:~#
> > root@sama7g5ek-sd:~#
> > root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-*
> > ls: cannot access '/usr/bin/amqp-*': No such file or directory
> >
>
> The rabbitmq-c recipe generates multiple packages. One of those is
> rabbitmq-c (named identically to the recipe) and another,
> rabbitmq-c-tools. If you want the binaries, you need to install
> rabbitmq-c-tools in your image as well (via e.g. IMAGE_INSTALL variable).
>
> One can know which package to install by using
>
> oe-pkgdata-util find-path '/usr/bin/amqp-*'
>
> this will list the package(s) that contains files matching the regular
> expression.
>
> Cheers,
> Quentin
>

--0000000000000274460619c26d84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank=C2=A0you Quentin.This helps<div><br></div><div>Regar=
ds</div><div>Simon</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, May 31, 2024 at 3:16=E2=80=AFAM Quentin Sch=
ulz &lt;<a href=3D"mailto:quentin.schulz@cherry.de">quentin.schulz@cherry.d=
e</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Hi Simon,<br>
<br>
On 5/30/24 7:21 PM, SIMON BABY via <a href=3D"http://lists.yoctoproject.org=
" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br=
>
&gt; Hello Alexander,<br>
&gt; <br>
&gt; Thank you for helping this out.<br>
&gt; <br>
&gt; I can see packages-split with below files:<br>
&gt; <br>
&gt; sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/buil=
d/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/pa=
ckages-split/rabbitmq-c-tools$<br>
&gt; ls -ll usr/bin/<br>
&gt; total 104<br>
&gt; -rwxr-xr-x 2 sbaby sbaby 22284 Mar 31=C2=A0 2021 amqp-consume<br>
&gt; -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31=C2=A0 2021 amqp-declare-queue<br=
>
&gt; -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31=C2=A0 2021 amqp-delete-queue<br>
&gt; -rwxr-xr-x 2 sbaby sbaby 18176 Mar 31=C2=A0 2021 amqp-get<br>
&gt; -rwxr-xr-x 2 sbaby sbaby 18184 Mar 31=C2=A0 2021 amqp-publish<br>
&gt; <br>
&gt; sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/buil=
d/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/pa=
ckages-split$<br>
&gt; ls -ll rabbitmq-c/usr/lib/<br>
&gt; total 80<br>
&gt; lrwxrwxrwx 1 sbaby sbaby=C2=A0 =C2=A0 20 Mar 31=C2=A0 2021 librabbitmq=
.so.4 -&gt;<br>
&gt; librabbitmq.so.4.5.0<br>
&gt; -rwxr-xr-x 2 sbaby sbaby 79204 Mar 31=C2=A0 2021 librabbitmq.so.4.5.0<=
br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; However, On the target I could not see the amqp-* binaries under /usr/=
bin.<br>
&gt; But I see the library librabbitmq.so.4.5.0. Is this expected? Do we ne=
ed<br>
&gt; only the library to execute some client code with rabbitmq-c=C2=A0 api=
 ?<br>
&gt; <br>
&gt; root@sama7g5ek-sd:~# ls -ll /usr/lib/librabbitmq.so.4.5.0<br>
&gt; -rwxr-xr-x 1 root root 79204 Mar=C2=A0 9=C2=A0 2018 /usr/lib/librabbit=
mq.so.4.5.0<br>
&gt; <br>
&gt; root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-consume<br>
&gt; ls: cannot access &#39;/usr/bin/amqp-consume&#39;: No such file or dir=
ectory<br>
&gt; root@sama7g5ek-sd:~#<br>
&gt; root@sama7g5ek-sd:~#<br>
&gt; root@sama7g5ek-sd:~#<br>
&gt; root@sama7g5ek-sd:~#<br>
&gt; root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-*<br>
&gt; ls: cannot access &#39;/usr/bin/amqp-*&#39;: No such file or directory=
<br>
&gt; <br>
<br>
The rabbitmq-c recipe generates multiple packages. One of those is <br>
rabbitmq-c (named identically to the recipe) and another, <br>
rabbitmq-c-tools. If you want the binaries, you need to install <br>
rabbitmq-c-tools in your image as well (via e.g. IMAGE_INSTALL variable).<b=
r>
<br>
One can know which package to install by using<br>
<br>
oe-pkgdata-util find-path &#39;/usr/bin/amqp-*&#39;<br>
<br>
this will list the package(s) that contains files matching the regular <br>
expression.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--0000000000000274460619c26d84--

