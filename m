Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32591C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 09:36:54 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.46316.1747042608645222974
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 02:36:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BSkXByBG;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ad21c5d9db2so491929966b.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 02:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747042607; x=1747647407; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8uQgcJ4EkSEb1W2VvAGlx0p6rnamTtptwfyVsLVT6fs=;
        b=BSkXByBGkB+vHhRQpIAkR4yqjUxfUICfA/Cif67rJlzH+s5+pTTwd1fIoZicwuY69x
         9q1VClzHhltdYKC0vfafVd4OJ1X3aF/qSLzL7kQ0mL1p9UQla+SZwwKrbamirH3e5oyp
         uJVaQqTro0G7n+YUtbd238bLEI+FL4NT5HDyV+aUYyC22o8yxhKD+KyWyDXf8HrQQxRd
         CqOj9wk9puE2fXsxRvj0F9ohAW0pH1UK7/r9fsl/uyVj3+6sopREb9oIqVt20OrNIFoD
         tT+z2oCZwLpxFaiEy80g8G2Rgh9PSpzDKhJMhOPfcM0Zpa27nZqViR3YCOoPO1jPiBgc
         H0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747042607; x=1747647407;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8uQgcJ4EkSEb1W2VvAGlx0p6rnamTtptwfyVsLVT6fs=;
        b=qZcS7Gxdou9YnkSFC21NxzW6IQgk8LM4DgQQyddK2bOJwjC4qiZ+ixonDpbVyfhGlD
         yvT6lEoS+mNo3nFyCn1yEtXAjMC87m3/dAY5GZyATguMefZaJSjSDkoYkWaANEoyq0ml
         8SVosE1dNaZvkYI3qV/9IOGMNYmRi6HAYQ3vV1XgjJ3X1d2iAw7OIaHs5dSc0dSzSSth
         2sLob79buTfFX6Gn6GpTVQfE72NOWzRniSfGcDwBowNxYPefwvK5l37vbR+PI4tFFywp
         F19nsrBjadphzeRYkhT8xWhU1MNIolCmk8LJT2foLfMIX/zgU4bF2zK5zPEiHkrNAEvR
         iktw==
X-Gm-Message-State: AOJu0Yyi6VHOBL+ZainSsjPNXCgVz3YxG/iKZe8HBLhTsH5f+P8evSGr
	cE16RpuLXWAAPNGXz+z3R5fnODOFx0fHRSTUg9xMjp5sJsA1ZUaz5BrO6TKJuddqDCTSrLaM/bS
	5hL01vF8+ofg+eAiTnxJ34DFNj8A=
X-Gm-Gg: ASbGncvh29HyL/HI1Qk4tYy8uQ6KwLnB1OaUB7Re+41wQ0pZix86gNMrfAw62/tOeIN
	SB2IR7fTNBa4oswhExhHqA7Qz92waIbtZnwSeLKsoQCym2bkI6OdI+/2j+3g78afz/a4AVdcxSE
	yVQwY5NdgEsRNgSU1cntnhlJCESgsubw==
X-Google-Smtp-Source: AGHT+IFQmNuYliR9aPF3oJFzokSMfVbgNxNbu47SDiJTfgusCn+XqrySX6w92+0d+I7Rag36wHdUwZpMKT4UIzWdK0s=
X-Received: by 2002:a17:906:c106:b0:ad2:5878:3e66 with SMTP id
 a640c23a62f3a-ad2587840d9mr194158266b.34.1747042606830; Mon, 12 May 2025
 02:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
 <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com>
 <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com> <CANNYZj8i4KVmbngNc8p6_hk8HZ6s=tSSpFc1_73pVME2mLuddA@mail.gmail.com>
In-Reply-To: <CANNYZj8i4KVmbngNc8p6_hk8HZ6s=tSSpFc1_73pVME2mLuddA@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 12 May 2025 15:06:34 +0530
X-Gm-Features: AX0GCFtUlgoYMHauPovr6YQZLFH0GIjkrVzFilkM2WYSz69ZoPcG2GthJRjJArU
Message-ID: <CAPJWBnjmcyVr_jsZQcETVRRxGPrd+YixEJNeNNdT_ekdgQmJ=g@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fcd7bd0634ed0d76"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 09:36:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65311

--000000000000fcd7bd0634ed0d76
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the update.
Btw, can you let me know what a production OS image size would be for yocto
based devices. Just an average number.



On Mon, 12 May 2025 at 3:04=E2=80=AFPM, Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> log.do_rootfs installs a lot of -dbg and -src files, but if I'm
> reading it correctly, they all go to a separate 'debug' rootfs.
> Nothing in the actual rootfs looks particularly suspect.
>
> You probably need to ssh into the target image, and use opkg to get a
> list of installed packages with sizes, then sort them by size, look at
> the biggest items and figure out why are they there.
>
> Another approach is to use 'du' command with --max-depth option to
> find out what the largest directories are, and then see what is in
> them. You can also use 'find' to get the list of largest files on the
> target and again use opkg to find which package they belong to and why
> are they there.
>
> Alex
>
> On Mon, 12 May 2025 at 11:23, MOHAMMED HASSAN <hassanchattarki@gmail.com>
> wrote:
> >
> > Hi Alexander,
> > I have attached my os image log.do_rootfs. I have also attached a
> manifest file that looks like there are a lot of packages installed, thou=
gh
> I am yet to add java to my image that would increase the file size a lot
> more.
> >
> >
> > Regards,
> > Hassan
> >
> >
> > On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> You need to show what goes into your image (e.g. attach
> >> log.do_rootfs), otherwise the only help we can give is really generic
> >> and not likely to be useful.
> >>
> >> Alex
> >>
> >> On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via
> >> lists.yoctoproject.org
> >> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> >
> >> > Hi guys,
> >> > My os image size is generally around 1 gb. I am working on  IOT
> gateway product. The funny thing is my actual bodies application is aroun=
d
> 100MB including node modules. I know that yocto is mostly used for smalle=
r
> footprint images but seems like I am doing something wrong. I have tried
> removing other irrelevant packages related to hdmi, audio, video and so o=
n.
> >> > Can you guys attest to this?
> >> >
> >> > On a side note can you guys let me know the os image size for your
> devices.
> >> >
> >> > I use yocto dunfell and kirkstone.
> >> >
> >> > Thanks,
> >> > Hassan
> >> >
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> > Links: You receive all messages sent to this group.
> >> > View/Reply Online (#65306):
> https://lists.yoctoproject.org/g/yocto/message/65306
> >> > Mute This Topic: https://lists.yoctoproject.org/mt/113066816/1686489
> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> >
>

--000000000000fcd7bd0634ed0d76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the update.</div><div dir=3D"auto">Btw, can yo=
u let me know what a production OS image size would be for yocto based devi=
ces. Just an average number.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 May 2025 at 3:04=E2=80=AFPM,=
 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanav=
in@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)">log.do_rootfs install=
s a lot of -dbg and -src files, but if I&#39;m<br>
reading it correctly, they all go to a separate &#39;debug&#39; rootfs.<br>
Nothing in the actual rootfs looks particularly suspect.<br>
<br>
You probably need to ssh into the target image, and use opkg to get a<br>
list of installed packages with sizes, then sort them by size, look at<br>
the biggest items and figure out why are they there.<br>
<br>
Another approach is to use &#39;du&#39; command with --max-depth option to<=
br>
find out what the largest directories are, and then see what is in<br>
them. You can also use &#39;find&#39; to get the list of largest files on t=
he<br>
target and again use opkg to find which package they belong to and why<br>
are they there.<br>
<br>
Alex<br>
<br>
On Mon, 12 May 2025 at 11:23, MOHAMMED HASSAN &lt;<a href=3D"mailto:hassanc=
hattarki@gmail.com" target=3D"_blank">hassanchattarki@gmail.com</a>&gt; wro=
te:<br>
&gt;<br>
&gt; Hi Alexander,<br>
&gt; I have attached my os image log.do_rootfs. I have also attached a mani=
fest file that looks like there are a lot of packages installed, though I a=
m yet to add java to my image that would increase the file size a lot more.=
<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Hassan<br>
&gt;<br>
&gt;<br>
&gt; On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; You need to show what goes into your image (e.g. attach<br>
&gt;&gt; log.do_rootfs), otherwise the only help we can give is really gene=
ric<br>
&gt;&gt; and not likely to be useful.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via<br>
&gt;&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" targe=
t=3D"_blank">lists.yoctoproject.org</a><br>
&gt;&gt; &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi guys,<br>
&gt;&gt; &gt; My os image size is generally around 1 gb. I am working on=C2=
=A0 IOT gateway product. The funny thing is my actual bodies application is=
 around 100MB including node modules. I know that yocto is mostly used for =
smaller footprint images but seems like I am doing something wrong. I have =
tried removing other irrelevant packages related to hdmi, audio, video and =
so on.<br>
&gt;&gt; &gt; Can you guys attest to this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On a side note can you guys let me know the os image size for=
 your devices.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I use yocto dunfell and kirkstone.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt; Hassan<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; &gt; View/Reply Online (#65306): <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/65306" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/65306</a><br>
&gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/113066816/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mt/113066816/1686489</a><br>
&gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproje=
ct.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_b=
lank">alex.kanavin@gmail.com</a>]<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;<br>
</blockquote></div></div>

--000000000000fcd7bd0634ed0d76--

