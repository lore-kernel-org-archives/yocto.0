Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6044CC4167B
	for <webhook@archiver.kernel.org>; Wed, 29 Nov 2023 09:46:02 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.28608.1701251153058311278
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Nov 2023 01:45:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j6fsX/3+;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40b4f6006d5so11334495e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 01:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701251151; x=1701855951; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kl3++P1jfVhA/FikDrDHvNd0BXo2LBwoDG5WXshjchU=;
        b=j6fsX/3++yliac/ziFQGdR76lTMn3+rOx4fj3QeSjb59g6qGN15KfL1YeMcp8Hy8uy
         4zoW827Oxj7iW289HSE+btLh0ITSoJEGHy5BVbC7SoVkTTE6rSZeYECthGjX5cOFXSrv
         Z/QhtAMJ5Fe5osJPluDhYJKjZ65vRpZ3/joxW04q+wsU8+xdxsBUAmNOG4JWzMqIfw60
         X+suotv+3WsK4SfocH0nCSQiREraptjOI9qZyU2sdh2qO6Og5o0ksEinf0hQBz4FIQaR
         l7M+e1BjebVq5IEACjFRjC07B0XoLtRosQDcY8CPELvqg3bX//Cyg7GlaDPozCxUmxBM
         LWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701251151; x=1701855951;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kl3++P1jfVhA/FikDrDHvNd0BXo2LBwoDG5WXshjchU=;
        b=nLmtH6nB8Sbvv2P4ZMhhsww6MX/Y7tznvT1UJvqdvKEkC+kS1Tr2NG69k8pd//9NOl
         RYX+NTfg7C40gqn3BYsng308Ry7PDQf7pnsx4uK9HYstcXKlpBVYBxGR3D458oYQJjLw
         ci+M5FHo2dsD1oHJCa1QbKHspOPLkgcXoZZM82Bh26FWRipz9KjvQpAKmeIjsdGrtZn1
         n1oxUzgD1w8O24w+b7PPBd6b3EOe2XXQeTtMe+obepkNCpxWwZsj8sbOiP8zdMtIyoE+
         g9u6YDeHXf82YgQkpR7eG0pvxDXzhmx2SXqUnuGhNljxBGGTV9Ep11NO41wEGJCRr71r
         ARoA==
X-Gm-Message-State: AOJu0YxUDHXAEm2NOPLLLt9gy2kNaLheYYMpOcctWJOf3pl37vFrUIje
	zsG3IXuPOVbmFUr5aP/V8Ij1W950ZeUksBAjieY=
X-Google-Smtp-Source: AGHT+IG/9GWYFuTtzoLnwZGoEvVxfenRiFsKOXMmpE4xXGH0XwQn+ovw3f75N+Fa7xuUaFqujAZAOkuuFAqdMYG9pAE=
X-Received: by 2002:a5d:4282:0:b0:333:aec:891d with SMTP id
 k2-20020a5d4282000000b003330aec891dmr3947590wrq.58.1701251150707; Wed, 29 Nov
 2023 01:45:50 -0800 (PST)
MIME-Version: 1.0
References: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
In-Reply-To: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 29 Nov 2023 10:45:38 +0100
Message-ID: <CA+chaQdgcDHAmUEeidWOYq_ENx6kj+FwRQ_yGzab7KgO7gCqzQ@mail.gmail.com>
Subject: Re: [yocto] how to intelligently avoid OOM build errors with BB_PRESSURE_MAX_MEMORY?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Steve Sakoman <steve@sakoman.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000830290060b47664c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 09:46:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61773

--000000000000830290060b47664c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was experimenting quite a bit with this in:
https://github.com/shr-project/test-oe-build-time/commits/results e.g.:
https://github.com/shr-project/test-oe-build-time/commit/d5111f4472ac397c0f=
1197eb6366ac7d2e56453f
https://github.com/shr-project/test-oe-build-time/commit/e97d8fe55fcf848416=
a8494a90da4ae6418b19fe

but be aware that reasonable BB_PRESSURE_MAX_ values are different for
kirkstone and master, see:
https://lists.openembedded.org/g/bitbake-devel/message/15499
which wasn't merged yet.

And for my system and typical builds BB_PRESSURE_MAX_* isn't able to
prevent OOMK, because pressure is still fine when bitbake is starting
chromium.do_compile and nodejs.do_compile tasks at the same time and OOMK
gets triggered later even when only these 2 tasks are running in parallel
with other tasks not started thanks to BB_PRESSURE_MAX_*.

So I'm setting a bit lower PARALLEL_MAKE for chromium instead as in:
BB_PRESSURE_MAX_CPU =3D "200000"
BB_NUMBER_THREADS =3D "8"
BB_NUMBER_PARSE_THREADS =3D "64"
PARALLEL_MAKE =3D "-j 70 -l 140"
PARALLEL_MAKE:pn-qtwebengine =3D "-j 40"
PARALLEL_MAKE:pn-webruntime =3D "-j 40"

which works well for my system and my typical builds, YMMV for yours.

Regards,

On Wed, Nov 29, 2023 at 10:21=E2=80=AFAM Robert P. J. Day <rpjday@crashcour=
se.ca>
wrote:

>
>   a colleague is using Wind River Linux and is getting occasional OOM
> errors when taking advantage of maximum parallelism, so he took the
> quick way out and dialed things back using BB_NUMBER_THREADS and
> PARALLEL_MAKE.
>
>   however, i am aware of the bitbake variables
> BB_PRESSURE_MAX_{IO,CPU,MEMORY} and was wondering if there is a decent
> writeup on how to use, perhaps, BB_PRESSURE_MAX_MEMORY, to dynamically
> detect imminent OOM and adjust things. that is, how to calculate a
> sane value for that as i haven't yet dug into the values under
> /proc/pressure and how to interpret them?
>
>   i've seen mentions of combining the above with the "memstat"
> command, and other approaches. thoughts?
>
> rday
>
> p.s. is there a docs page that expands on this stuff?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61771):
> https://lists.yoctoproject.org/g/yocto/message/61771
> Mute This Topic: https://lists.yoctoproject.org/mt/102868689/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000830290060b47664c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was experimenting quite a bit with this in:<div><a href=
=3D"https://github.com/shr-project/test-oe-build-time/commits/results">http=
s://github.com/shr-project/test-oe-build-time/commits/results</a> e.g.:<br>=
</div><div><a href=3D"https://github.com/shr-project/test-oe-build-time/com=
mit/d5111f4472ac397c0f1197eb6366ac7d2e56453f">https://github.com/shr-projec=
t/test-oe-build-time/commit/d5111f4472ac397c0f1197eb6366ac7d2e56453f</a><br=
></div><div><a href=3D"https://github.com/shr-project/test-oe-build-time/co=
mmit/e97d8fe55fcf848416a8494a90da4ae6418b19fe">https://github.com/shr-proje=
ct/test-oe-build-time/commit/e97d8fe55fcf848416a8494a90da4ae6418b19fe</a><b=
r></div><div><br></div><div>but be aware that reasonable BB_PRESSURE_MAX_ v=
alues are different for kirkstone and master, see:</div><div><a href=3D"htt=
ps://lists.openembedded.org/g/bitbake-devel/message/15499">https://lists.op=
enembedded.org/g/bitbake-devel/message/15499</a><br></div><div>which wasn&#=
39;t merged yet.</div><div><br></div><div>And for my system and typical bui=
lds BB_PRESSURE_MAX_* isn&#39;t able to prevent OOMK, because pressure is s=
till fine when bitbake is starting chromium.do_compile and nodejs.do_compil=
e tasks at the same time and OOMK gets triggered later even when only these=
 2 tasks are running in parallel with other tasks not started thanks to BB_=
PRESSURE_MAX_*.</div><div><br></div><div>So I&#39;m setting a bit lower PAR=
ALLEL_MAKE for chromium instead as in:</div><div>BB_PRESSURE_MAX_CPU =3D &q=
uot;200000&quot;<br>BB_NUMBER_THREADS =3D &quot;8&quot;<br>BB_NUMBER_PARSE_=
THREADS =3D &quot;64&quot;<br>PARALLEL_MAKE =3D &quot;-j 70 -l 140&quot;<br=
>PARALLEL_MAKE:pn-qtwebengine =3D &quot;-j 40&quot;<br>PARALLEL_MAKE:pn-web=
runtime =3D &quot;-j 40&quot;<br></div><div><br></div><div>which works well=
 for my system and my typical builds, YMMV for yours.</div><div><br></div><=
div>Regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Nov 29, 2023 at 10:21=E2=80=AFAM Robert P. J. Day=
 &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 a colleague is using Wind River Linux and is getting occasional OOM<=
br>
errors when taking advantage of maximum parallelism, so he took the<br>
quick way out and dialed things back using BB_NUMBER_THREADS and<br>
PARALLEL_MAKE.<br>
<br>
=C2=A0 however, i am aware of the bitbake variables<br>
BB_PRESSURE_MAX_{IO,CPU,MEMORY} and was wondering if there is a decent<br>
writeup on how to use, perhaps, BB_PRESSURE_MAX_MEMORY, to dynamically<br>
detect imminent OOM and adjust things. that is, how to calculate a<br>
sane value for that as i haven&#39;t yet dug into the values under<br>
/proc/pressure and how to interpret them?<br>
<br>
=C2=A0 i&#39;ve seen mentions of combining the above with the &quot;memstat=
&quot;<br>
command, and other approaches. thoughts?<br>
<br>
rday<br>
<br>
p.s. is there a docs page that expands on this stuff?<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61771): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61771" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61771</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102868689/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102868689/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000830290060b47664c--

