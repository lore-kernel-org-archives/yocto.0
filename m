Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web11.12850.1592208663224218370
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jun 2020 01:11:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JQ7EtKFL;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: mabnhdev@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id g44so5347429uae.12
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jun 2020 01:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fSrQFEGKCMrUvkNdw8jNzIPFBIca1McQ0/Y8oZP9lzI=;
        b=JQ7EtKFLuRylaMO+NFaTG3VuIoigdLu1zP+peMyZuauJRXa80/SPB8UMTqQxC0IemT
         /8sv/PZsoF1cfloBhWGnikvveEVmKiOi31X+wnx8jTmVM93RGnsYtPKii0jmNuswrIRc
         HwNuhyHQqHqqigtPBthfHV7vDqb2xy/9IJU8LEI0VRGWImRCuAICjVJMSE/bSsQBiK/h
         DnGmEnOETnEXBHa7oD0+ztN5BMTX99W04PkSk2UZX0FKH/7ykMtqV/0HPgH4WGJy9A1r
         nWwR8yGx8ABtqW1AYSEVWUhbN7ljAX53aLjzeRaSCrhEOqcBaQ0Oh8t11aABmSBhRcxT
         WuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fSrQFEGKCMrUvkNdw8jNzIPFBIca1McQ0/Y8oZP9lzI=;
        b=jDsQCwL7XPyyzFM5jgpwPcbwwTvwt1T9kRRcYS+rZApYUG9mRtnu+JC4KuxzY0sO9m
         zayro1V6dk+PE8JKFJJWjLRxbjsz3bBorvtwPx55ITlo+ed9hmEenL3HD6SaveAEU0RD
         9sKzH/SyIT3BD5o4QUMeSWzgD3O5KIc1Uo5W4fOP5mzvLsNxj6f3n8JxTSPp4cCAgSC9
         qxg8SUf4R/0KD1uSc13U2mbkmrX9AqjDSq1rBnFJOvv2zZsmvCGCK7rlZgEzMgl1rC3w
         oqtV3LsZHGHxdCd94BxOi9O0Tx461p4oCncF2KSNDuVNzXN37QM6ivSs2JBiETBpJ1gB
         W5gw==
X-Gm-Message-State: AOAM532nw5N8CzUX2bVntjhk3kr7O/Q9fbj1oLwK4GjaXrj5dk94ktn6
	H5xHsha5ZoQygG2P9V/PXvb33PVfEslpJLRR4/g=
X-Google-Smtp-Source: ABdhPJxqRmG/CvjGge3oHp/iWEgM+l2Uw+ESHSnZmj0dgoi0in4+XkH7umjQqTr+ANDymStkkIqX1i4kf2ELn8Pub3Y=
X-Received: by 2002:ab0:7715:: with SMTP id z21mr18048295uaq.139.1592208662412;
 Mon, 15 Jun 2020 01:11:02 -0700 (PDT)
MIME-Version: 1.0
References: <p9vd.1592089619874670888.VyFF@lists.yoctoproject.org> <2846920.tVNd4TQEIe@tyche>
In-Reply-To: <2846920.tVNd4TQEIe@tyche>
From: "MikeB" <mabnhdev@gmail.com>
Date: Mon, 15 Jun 2020 04:10:58 -0400
Message-ID: <CAAuRgKDAGjvnioENabeQ3Ad8+F3OTCn-NqihLTYa=XGs0rTm4w@mail.gmail.com>
Subject: Re: [yocto] Dunfell busybox NFS mount fails to build
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bb44b405a81af7a5"

--000000000000bb44b405a81af7a5
Content-Type: text/plain; charset="UTF-8"

Removing the libnsl2 dependency worked for tcp-wrappers, but a similar
situation arose with python3.  In the case of python3, removing libnsl2
dependency caused other failures in the build.

However, reading some comments in util-linux/mount.c, the
CONFIG_FEATURE_MOUNT_NFS
seems to only apply to kernels < 2.6.23.  So, I'm going to leave it
undefined until I can do further testing.

Regards, Mike

On Sun, Jun 14, 2020 at 1:08 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Saturday, June 13, 2020 4:06:59 PM PDT MikeB wrote:
> > I'm trying to build busybox on Dunfell with NFS mount configured
> > (CONFIG_FEATURE_MOUNT_NFS).  The build fails with the following.
> > | util-linux/mount.c:253:11: fatal error: rpc/rpc.h: No such file or
> > | directory|
> > |   253 | # include <rpc/rpc.h>
> >
> > Reading online, later versions of glibc no longer install rpc headers.
> Once
> > suggested solution is to configure glibc with --enable-obsolete-rpc.  I
> > tried that, but then the build fails as follows.
> >
> > ERROR: tcp-wrappers-7.6-r10 do_prepare_recipe_sysroot: The file
> > /usr/include/rpcsvc/yppasswd.x is installed by both glibc and libnsl2,
> > aborting
> >
> > I also tried adding libtirpc as a dependency to busybox; no luck there
> > either.
> >
> > Can someone give me a workaround for this problem?
> >
>
> Obsolete rpc is really not supported as you can see but if you are using
> it
> also ensure libnsl2 is not used either.
> remove libnsl2 from tcp-wrappers dependencies
>
> > Thanks.
>
>
>
>
>

--000000000000bb44b405a81af7a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">Removing the libnsl2 dependency worked for tcp-w=
rappers, but a similar situation arose with python3.=C2=A0 In the case of p=
ython3, removing libnsl2 dependency caused other failures in the build.</di=
v><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-=
size:small"><br></div><div class=3D"gmail_default" style=3D"font-family:tah=
oma,sans-serif;font-size:small">However, reading some comments in util-linu=
x/mount.c, the=C2=A0<span style=3D"font-family:Arial,Helvetica,sans-serif">=
CONFIG_FEATURE_MOUNT_NFS seems to only apply to kernels &lt; 2.6.23.=C2=A0 =
So, I&#39;m going to leave it undefined until I can do further=C2=A0testing=
.</span></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans=
-serif;font-size:small"><span style=3D"font-family:Arial,Helvetica,sans-ser=
if"><br></span></div><div class=3D"gmail_default" style=3D"font-family:taho=
ma,sans-serif;font-size:small"><span style=3D"font-family:Arial,Helvetica,s=
ans-serif">Regards, Mike</span></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 14, 2020 at 1:08 AM Khem R=
aj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Saturday, June 13, 2020 4:06:59 PM PDT MikeB wrote:<br>
&gt; I&#39;m trying to build busybox on Dunfell with NFS mount configured<b=
r>
&gt; (CONFIG_FEATURE_MOUNT_NFS).=C2=A0 The build fails with the following.<=
br>
&gt; | util-linux/mount.c:253:11: fatal error: rpc/rpc.h: No such file or<b=
r>
&gt; | directory|<br>
&gt; |=C2=A0 =C2=A0253 | # include &lt;rpc/rpc.h&gt;<br>
&gt; <br>
&gt; Reading online, later versions of glibc no longer install rpc headers.=
=C2=A0 Once<br>
&gt; suggested solution is to configure glibc with --enable-obsolete-rpc.=
=C2=A0 I<br>
&gt; tried that, but then the build fails as follows.<br>
&gt; <br>
&gt; ERROR: tcp-wrappers-7.6-r10 do_prepare_recipe_sysroot: The file<br>
&gt; /usr/include/rpcsvc/yppasswd.x is installed by both glibc and libnsl2,=
<br>
&gt; aborting<br>
&gt; <br>
&gt; I also tried adding libtirpc as a dependency to busybox; no luck there=
<br>
&gt; either.<br>
&gt; <br>
&gt; Can someone give me a workaround for this problem?<br>
&gt; <br>
<br>
Obsolete rpc is really not supported as you can see but if you are using it=
 <br>
also ensure libnsl2 is not used either.<br>
remove libnsl2 from tcp-wrappers dependencies<br>
<br>
&gt; Thanks.<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000bb44b405a81af7a5--
