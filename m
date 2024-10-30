Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA16D6B6C3
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 19:01:30 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.23579.1730314888082695725
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 12:01:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nxknh8BN;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: yishai1999@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4315baec69eso1235545e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 12:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730314886; x=1730919686; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PK1QaOBP3RSmpuupy7sd44c48/DW0SRkHBWjX2QAf0U=;
        b=Nxknh8BNW6NiZ15vKL0DH+KsWDUtEODvprIsJKzc+Xp9/lvZuFpyw/r5ZfKLt6g+M1
         J6lVjiXF+mtSGFlgPJUpkKQJ6/o2Tj3tUyknAWtbRzhNp9+gxiZgUbOGeUgJ08ZLw/7b
         Meaqt+v57045vmmXjXqgMHnb5q/WQN/RsrlJAP0/WHQYrdOGTgAfYA8PniKNT+JH0Egm
         WZKJrSv4CGjO8dhhs4YDX950QvM3BjwcAjWgmZRgR3tIBcSryRc0OEb3+8SLThZ7pu0o
         w+Vfj50CrhyJWLF7z0UlVcJPZO82Q4iUnxPxQlicq4aW3LKl/dSJYnLBPC/qZ2Pg//kU
         hpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730314886; x=1730919686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PK1QaOBP3RSmpuupy7sd44c48/DW0SRkHBWjX2QAf0U=;
        b=oBWVS/d5d0ZUEme/ykByhcefNQUuXe5Dj+swqFpEZYsXWz12WVzVFOwUwVMKWuER5p
         EFDv1KI5jkV/pk9brnm87sslqwA3g+GBgIOLyFhbFWIioao76XKPdEgQ9rtW9yFXFdE8
         C1uOC2qHGXHvzjA7I5sek8F38SqOTa07hga1PHf5XEc8LLKRBx0fi1trGKtVvnHpt32S
         gX+Ks0/7ANhAEPyAWlvkktumSmB6F+BKyOZ7Cd+kfKrE+WKkd+TTg242HTsmAdyihemc
         jrPeU0L35JBdL4HJ8fZFPDR2EP6aodvCGLVB2a9fXgWMSazrvX2Yxo+pnbZFcRkCydno
         omZg==
X-Gm-Message-State: AOJu0Yx86ocMEJkkHdT3HxMBjOC7h2NVZE4jLfL/Pjd6t1FoB2wex2A2
	XTTDOgYu+ngqkP8zmfeL8bOeN9K0X92KMokilpgFrE2zBu/nhoF+s/Ng1wft9M/AHTgnG4bYrY1
	j5PaKVo4avB9+3ao0rmdNMUSDAyQ=
X-Google-Smtp-Source: AGHT+IGegQipgkiJGzDyl8Ql+6jO1xS3tSdaoAVByn/16sUzs2Nxd3VA3TiZgQfreIzWID5ObudkyVEfOONfi171yJs=
X-Received: by 2002:adf:e34b:0:b0:37d:498a:a23f with SMTP id
 ffacd0b85a97d-380611f58e4mr12358322f8f.53.1730314886004; Wed, 30 Oct 2024
 12:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
 <21197.1730300069131332219@lists.yoctoproject.org> <b91237f1-539c-42cd-8223-5ac4ef471f9b@cherry.de>
In-Reply-To: <b91237f1-539c-42cd-8223-5ac4ef471f9b@cherry.de>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Wed, 30 Oct 2024 21:01:14 +0200
Message-ID: <CAJw49vpo++FVsfwMHe7c=A8-L7b_6NK7MuKmbj0WDK_b=J8Aaw@mail.gmail.com>
Subject: Re: [yocto] Out-of-tree Kernel Modules
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021493d0625b65442"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 19:01:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64189

--00000000000021493d0625b65442
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

On Wed, Oct 30, 2024 at 5:01=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de>
wrote:

> Hi Yishai,
>
> On 10/30/24 3:54 PM, Yishai Jaffe via Lists.Yoctoproject.Org wrote:
> > You don't often get email from yishai1999=3D
> gmail.com@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > Thanks Quentin,
> > Changing the include to uapi/linux/sched/types.h solved the issue.
> > But just so I'm clear on this - Can you explain when I should use uapi
> headers vs when to use the regular linux/xxx headers?
> >
>
> You should include the header where the structure is defined.
>
> The "issue" in Yocto is that the headers aren't coming from your kernel
> sources but from a generic linux kernel header recipe, and this is made
> on purpose. The generic linux kernel header recipe is at 6.6 in
> Scarthgap. Styhead has 6.10. The structure is defined in a different
> header in 6.6 and in 6.7+ (including 6.10), so your out-of-tree module
> needs the path from 6.6 in order to compile in Scarthgap, but will need
> another path from 6.7+ in order to compile in Styhead.
>
>
I think my question wasn't clear enough.
I meant to ask about the general usage of uapi header files.
When are definitions put in the uapi headers and when are they in the
regular linux headers?


> You can handle that via #if in your code, if you need the exact same
> source code to build on different Yocto/kernel versions. That is the
> cross to bear when one develops out of tree kernel modules sadly.
>
> Cheers,
> Quentin
>

--00000000000021493d0625b65442
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Quentin,</div><div dir=3D"ltr"><br></d=
iv><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Oct 30, 2024 at 5:01=E2=80=AFPM Quentin Schulz &lt;<a href=3D"mailto:quent=
in.schulz@cherry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi Yishai,<br>
<br>
On 10/30/24 3:54 PM, Yishai Jaffe via <a href=3D"http://Lists.Yoctoproject.=
Org" rel=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject.Org</a> wrote:=
<br>
&gt; You don&#39;t often get email from yishai1999=3D<a href=3D"mailto:gmai=
l.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoprojec=
t.org</a>. Learn why this is important&lt;<a href=3D"https://aka.ms/LearnAb=
outSenderIdentification" rel=3D"noreferrer" target=3D"_blank">https://aka.m=
s/LearnAboutSenderIdentification</a>&gt;<br>
&gt; Thanks Quentin,<br>
&gt; Changing the include to uapi/linux/sched/types.h solved the issue.<br>
&gt; But just so I&#39;m clear on this - Can you explain when I should use =
uapi headers vs when to use the regular linux/xxx headers?<br>
&gt; <br>
<br>
You should include the header where the structure is defined.<br>
<br>
The &quot;issue&quot; in Yocto is that the headers aren&#39;t coming from y=
our kernel <br>
sources but from a generic linux kernel header recipe, and this is made <br=
>
on purpose. The generic linux kernel header recipe is at 6.6 in <br>
Scarthgap. Styhead has 6.10. The structure is defined in a different <br>
header in 6.6 and in 6.7+ (including 6.10), so your out-of-tree module <br>
needs the path from 6.6 in order to compile in Scarthgap, but will need <br=
>
another path from 6.7+ in order to compile in Styhead.<br>
<br></blockquote><div><br class=3D"gmail-Apple-interchange-newline">I think=
 my question wasn&#39;t clear enough.</div><div>I meant to ask about the ge=
neral usage of uapi header files.</div><div>When are definitions put in the=
 uapi headers and when are they in the regular linux headers?</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
You can handle that via #if in your code, if you need the exact same <br>
source code to build on different Yocto/kernel versions. That is the <br>
cross to bear when one develops out of tree kernel modules sadly.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--00000000000021493d0625b65442--

