Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E739DC02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 09:23:09 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.7293.1737624178693495595
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 01:22:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Fi0abdBL;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso137947866b.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 01:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737624177; x=1738228977; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4jIwvAQWV6V2GiB1zNpjNJDQvGnA26ZENoo1cwFP6WA=;
        b=Fi0abdBL9qcvAc7OpSPqKpLw+qH436JdM0AmVSK14LTC8J7BLYvpVm3RKp35rqNB+y
         VlPL18oVCgeAW/ROIVgobhsmnLUwn6gnIKTFTxgYirDaPB8HP2Ptdm+QMXZGzKtxjUc3
         FF4ONOZs20BfI4sExcM96uwqQ/fhYPjEFrtWCGJIeuHMRqxZTKfNVdoJTMcuJUcEP6Y6
         MtBGKwcV8kYXmeR6jS4T1OvevfshxCYXoJyzpKnAujElgDmRp3emdyuY/r+kmgpfUyc1
         zw82+FhH/GGS5q9g1ilJRxdtDJzNc78MUDkCQut05uDQdHq0TSzZFj+L61hCM1yc4OM/
         0Axg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737624177; x=1738228977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4jIwvAQWV6V2GiB1zNpjNJDQvGnA26ZENoo1cwFP6WA=;
        b=dIUvG1zHiaZqDbvf42LwydUcg6Lfk9QKkOC81WEF536ETVpyjGWHLzEFyRFxkOxok2
         xHUKJz5HqZySZwRUVEQxWfPtsfwXbwTBf1b/CSgTdzzYXmqMj/ZjQADb7LXG1ofzlFZi
         tUgOoQKYiGedIv2s+4VjZjtU7zmMXeUhlvofL20KcbONJYB2m4gpaWhZ9avuCUK64qiu
         0vSCjKyUXt5Ixmijcfc1mAeVF8ChVOxe03fYLlzKgmuNodKk7/+89zqgec53Pi3RX+tn
         DunWKoUcDUImoZ6+dLzrKpNiV7JTOiYC8wGVY3muqrtFUed5vFCYznfW0jES/3xZENse
         qmxA==
X-Gm-Message-State: AOJu0YzfZdBbWIbtLOBojtv6EVXHGuksPrjNeLpedSGJH97/NWPap+3J
	h/f0yQtghIfFyJzGG1Dsze5D2KEv/a1raWzDo9HgI4DF3vBr7YFBYdFxfu/myuqTrCqbKPdoEej
	QfKYK/iYeM/FXd1Gz3yAD0Fb4o2M=
X-Gm-Gg: ASbGnctfVeqLLRGKaQ9E3qfrwkJKfQljl+oU/RKc/HobNmcrwB6emvplmPpR+sVfgsC
	8DEDcBfkZIGuiUPmk0qrGywNQU8WcZTTMUJBCyNbspUCey1cHOOiQ+96Z+cM=
X-Google-Smtp-Source: AGHT+IHiEjPQhjRjjAYAR3lmdaCY0P7oJKtBFHMoMyRkunhUa2DEHXkAg9lPe7HYcgHQ3vYDw0oT97C5ZJtPb8oswEs=
X-Received: by 2002:a17:906:6a26:b0:aaf:73e4:e872 with SMTP id
 a640c23a62f3a-ab38b0b91b7mr2235925966b.3.1737624175195; Thu, 23 Jan 2025
 01:22:55 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org>
 <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
 <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com>
 <CAPJWBnj++FkR+qG5vUcWb88bO4oCK2fsMvg-3+HJ07VbpBix2g@mail.gmail.com> <CANNYZj-tiwdN9X8K=2+JiLtOgTONFy9oLHgAkcFeOyzDPdBgGA@mail.gmail.com>
In-Reply-To: <CANNYZj-tiwdN9X8K=2+JiLtOgTONFy9oLHgAkcFeOyzDPdBgGA@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 23 Jan 2025 14:52:42 +0530
X-Gm-Features: AbW1kvaVOZXm4hiHKqNow6jvUdeazXE1aZZHM6S3Bwx_ZIbQY8ju9rP2QCBuFsA
Message-ID: <CAPJWBnhZc4kXAHWXwwjiHOTGwxOM+DNAhRdvS7+ugbXJeic-DA@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b73c18062c5c27eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 09:23:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64615

--000000000000b73c18062c5c27eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does it mean I need to add the packageconfig variables or any more
changes will be needed?


On Thu, 23 Jan 2025 at 11:46=E2=80=AFAM, Alexander Kanavin <alex.kanavin@gm=
ail.com>
wrote:

> Generally, you need to modify your image recipe to declare what
> packages need to be in the target image.
>
> Note that ${WORKDIR}/image is a slightly confusing name: it shows what
> a particular recipe installs and packages, but it has no influence
> what goes into actual target images.
>
> Alex
>
> On Thu, 23 Jan 2025 at 06:01, MOHAMMED HASSAN <hassanchattarki@gmail.com>
> wrote:
> >
> > Well, I believe bluez5 should add it but it isn't happening for now. So
> I wanted to add it manually to my build.
> > So i needed suggestions on how to do it.
> >
> >
> >
> > On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> It helps to step back and consider what your actual goal is. A library
> >> without applications is not useful on the target image. And if you
> >> install applications into target images, you do not need to worry
> >> about libraries, they will be pulled into the target image through
> >> package dependencies.
> >>
> >> So what is the task you have?
> >>
> >> Alex
> >>
> >> On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via
> >> lists.yoctoproject.org
> >> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> >
> >> > An update,
> >> > I notice the files are not being added in my image recipe. I have
> called it correctly but can't see it. Do I need to set any packageconfig
> variables?
> >> >
> >> >
> >> >
> >> >
> >> > On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via
> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.or=
g>
> wrote:
> >> >>
> >> >> Hi guys,
> >> >> I am facing an issue with the glib-2.0 library. I have added the
> package to my image baserootfs as glib-2.0 . On manually verifying the
> image folder under work directory I can see the /usr/lib and other system
> library file present. But they are not getting added in my final image. i=
.e
> I can see them on my target device. What should I do?
> >> >>
> >> >> The build is successful and I don't see any errors so dont know wha=
t
> to share with you guys.
> >> >>
> >> >> Regards,
> >> >> Hassan
> >> >>
> >> >>
> >> >>
> >> >>
> >> >>
> >> >
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> > Links: You receive all messages sent to this group.
> >> > View/Reply Online (#64608):
> https://lists.yoctoproject.org/g/yocto/message/64608
> >> > Mute This Topic: https://lists.yoctoproject.org/mt/110748308/1686489
> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> >
>

--000000000000b73c18062c5c27eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does it mean I need to add the packageconfig variables=C2=
=A0or any more changes=C2=A0will be needed?</div><div dir=3D"auto"><br></di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, 23 Jan 2025 at 11:46=E2=80=AFAM, Alexander Kanavin &lt;<a href=3D"=
mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Gene=
rally, you need to modify your image recipe to declare what<br>
packages need to be in the target image.<br>
<br>
Note that ${WORKDIR}/image is a slightly confusing name: it shows what<br>
a particular recipe installs and packages, but it has no influence<br>
what goes into actual target images.<br>
<br>
Alex<br>
<br>
On Thu, 23 Jan 2025 at 06:01, MOHAMMED HASSAN &lt;<a href=3D"mailto:hassanc=
hattarki@gmail.com" target=3D"_blank">hassanchattarki@gmail.com</a>&gt; wro=
te:<br>
&gt;<br>
&gt; Well, I believe bluez5 should add it but it isn&#39;t happening for no=
w. So I wanted to add it manually to my build.<br>
&gt; So i needed suggestions on how to do it.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; It helps to step back and consider what your actual goal is. A lib=
rary<br>
&gt;&gt; without applications is not useful on the target image. And if you=
<br>
&gt;&gt; install applications into target images, you do not need to worry<=
br>
&gt;&gt; about libraries, they will be pulled into the target image through=
<br>
&gt;&gt; package dependencies.<br>
&gt;&gt;<br>
&gt;&gt; So what is the task you have?<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via<br>
&gt;&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" targe=
t=3D"_blank">lists.yoctoproject.org</a><br>
&gt;&gt; &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; An update,<br>
&gt;&gt; &gt; I notice the files are not being added in my image recipe. I =
have called it correctly but can&#39;t see it. Do I need to set any package=
config variables?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via =
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmai=
l.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoprojec=
t.org</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi guys,<br>
&gt;&gt; &gt;&gt; I am facing an issue with the glib-2.0 library. I have ad=
ded the package to my image baserootfs as glib-2.0 . On manually verifying =
the image folder under work directory I can see the /usr/lib and other syst=
em library file present. But they are not getting added in my final image. =
i.e I can see them on my target device. What should I do?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The build is successful and I don&#39;t see any errors so=
 dont know what to share with you guys.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Regards,<br>
&gt;&gt; &gt;&gt; Hassan<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; &gt; View/Reply Online (#64608): <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/64608" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/64608</a><br>
&gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/110748308/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mt/110748308/1686489</a><br>
&gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproje=
ct.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_b=
lank">alex.kanavin@gmail.com</a>]<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;<br>
</blockquote></div></div>

--000000000000b73c18062c5c27eb--

