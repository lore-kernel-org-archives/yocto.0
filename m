Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B263C02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 09:39:10 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.7412.1737625147520838678
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 01:39:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H+spkYbV;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7b7041273ddso58794585a.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 01:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737625146; x=1738229946; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RiGiqpbfUOQpnaCPOhII9BpXhvfMHfSchsUTb+rY85Q=;
        b=H+spkYbVw/Svr2UztSU3+QSSwuvX5bufhG0kM7GA/h8yUN4KRpY776meAHG53os9Nd
         hmmEDBfEsgHplj0Jx/1FMcYDs2p4UaqY8LSfeb7/ahQbOitR/n4lT/Y0UiB+NFVJMToN
         Cojm/ek8QHpDIfeV+n5RPS6IROIBJYBxufsiLmvZ9UD73Lznx2LlJxuFa+m+04PSuQR4
         sTw08QbjokX3fLxZTNtLvXUUGimkfL6LiF6pOPLYQbRCNXVestg6/7yvyPlEHHNMGM95
         Vd/cWDxSm/x1zHI0P4cSEgTqjh3Be4zjdkNoIT6vA9aZeHWdPbwQS5iP4uCg409/tKAL
         YO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737625146; x=1738229946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RiGiqpbfUOQpnaCPOhII9BpXhvfMHfSchsUTb+rY85Q=;
        b=KzcXjLJvsjMTTnaBuRIiMF4IB/fuFInMYORjciDfiXob/WS/adLq4ew/1QWv1dzSyN
         dchurp16TX1wR/NxFfKUsGXf10ivD8QuVmPclOC1XCZeLBHYDsPCSlzc8o8IwY6KNa3N
         f63V90UydHc5Xt/5oDb+pHz6XgE+Izf2Zi7UmC2R8ZQu3xICA4e44gx853jYOujfcrys
         ztQ+GsMUKkLYT+pGLrTUb5pKZHcv3O9pXQy+NVRNA1Yh0YDtmKavjLU9QQ2Gfs5zIC03
         f7X4yxTR2gaKAxvMfU4py2aPluRSJIdRSdDN4sOzUG2Y32UgurMG5rUwJxllxl1k9XiI
         +gXQ==
X-Gm-Message-State: AOJu0Yyl/p7pHMLGvAm+TxvsE5TGLwcdLCDwzWxRscT7ct82RQviUxSb
	58A0amFA01KON3eDvxpNWBvLBtLNgG+x+/k/uEjTahAtMOJA0a/po1chNZDQ+m+QP0wQhb/CiOB
	DXp4AvGdggif1Q43Pf01y3o1nbCg=
X-Gm-Gg: ASbGncsWAFsqjry7rQZ1IjLQ3FtF/PBDdijfrnomgUgrEeoccw2pVHQcQ1rvEdef4L5
	RQ5QBWSoo9ipZ27NUYlgzRfIkPqoJfvcP7NN2ZJRsYOdTv5bwhJTbtEficyYOGsVLvTJp/z4S0D
	w7PhQt33Xys1vmdy+ts9QY
X-Google-Smtp-Source: AGHT+IErOH5YVi6jZrU/G8TmPz6EiiFmyQo66R4l88VAxGYOMxeTKep2KVy8JOj0XQhfWvei7Fsd2IX7PI2cJt1TWqo=
X-Received: by 2002:a05:6214:3197:b0:6d8:ab7e:e554 with SMTP id
 6a1803df08f44-6e1b222f1f3mr381908046d6.34.1737625146439; Thu, 23 Jan 2025
 01:39:06 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org>
 <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
 <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com>
 <CAPJWBnj++FkR+qG5vUcWb88bO4oCK2fsMvg-3+HJ07VbpBix2g@mail.gmail.com>
 <CANNYZj-tiwdN9X8K=2+JiLtOgTONFy9oLHgAkcFeOyzDPdBgGA@mail.gmail.com> <CAPJWBnhZc4kXAHWXwwjiHOTGwxOM+DNAhRdvS7+ugbXJeic-DA@mail.gmail.com>
In-Reply-To: <CAPJWBnhZc4kXAHWXwwjiHOTGwxOM+DNAhRdvS7+ugbXJeic-DA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Jan 2025 10:38:55 +0100
X-Gm-Features: AWEUYZnEem7EorOzEfeRISL4rpAt6hfc0iYCbc_rJr0k2J0AQaNssE9Km3zrbIQ
Message-ID: <CANNYZj8n9pDBXTWD8Hh0AAPJLgjH1Ht2xpmoZ8D-S8pf43L0nQ@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b3f79062c5c61a8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 09:39:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64616

--0000000000009b3f79062c5c61a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t know. The problem description is not clear enough for me to=
 give
suggestions, and I do not have time to figure out what you need to do in a
long exchange of messages.

It helps to provide three clear descriptions like is typically asked when
writing bug reports:

1. What you did. Which settings did you change and what commands you
issued. Also, what is your goal.

2. What happened. What was the command output and what are any relevant
logs or files.

3. What was the expectation, and how does it mismatch point two.

Alex

On Thu 23. Jan 2025 at 10.22, MOHAMMED HASSAN <hassanchattarki@gmail.com>
wrote:

> Does it mean I need to add the packageconfig variables or any more
> changes will be needed?
>
>
> On Thu, 23 Jan 2025 at 11:46=E2=80=AFAM, Alexander Kanavin <alex.kanavin@=
gmail.com>
> wrote:
>
>> Generally, you need to modify your image recipe to declare what
>> packages need to be in the target image.
>>
>> Note that ${WORKDIR}/image is a slightly confusing name: it shows what
>> a particular recipe installs and packages, but it has no influence
>> what goes into actual target images.
>>
>> Alex
>>
>> On Thu, 23 Jan 2025 at 06:01, MOHAMMED HASSAN <hassanchattarki@gmail.com=
>
>> wrote:
>> >
>> > Well, I believe bluez5 should add it but it isn't happening for now. S=
o
>> I wanted to add it manually to my build.
>> > So i needed suggestions on how to do it.
>> >
>> >
>> >
>> > On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin <
>> alex.kanavin@gmail.com> wrote:
>> >>
>> >> It helps to step back and consider what your actual goal is. A librar=
y
>> >> without applications is not useful on the target image. And if you
>> >> install applications into target images, you do not need to worry
>> >> about libraries, they will be pulled into the target image through
>> >> package dependencies.
>> >>
>> >> So what is the task you have?
>> >>
>> >> Alex
>> >>
>> >> On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via
>> >> lists.yoctoproject.org
>> >> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >> >
>> >> > An update,
>> >> > I notice the files are not being added in my image recipe. I have
>> called it correctly but can't see it. Do I need to set any packageconfig
>> variables?
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via
>> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.o=
rg>
>> wrote:
>> >> >>
>> >> >> Hi guys,
>> >> >> I am facing an issue with the glib-2.0 library. I have added the
>> package to my image baserootfs as glib-2.0 . On manually verifying the
>> image folder under work directory I can see the /usr/lib and other syste=
m
>> library file present. But they are not getting added in my final image. =
i.e
>> I can see them on my target device. What should I do?
>> >> >>
>> >> >> The build is successful and I don't see any errors so dont know
>> what to share with you guys.
>> >> >>
>> >> >> Regards,
>> >> >> Hassan
>> >> >>
>> >> >>
>> >> >>
>> >> >>
>> >> >>
>> >> >
>> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> > Links: You receive all messages sent to this group.
>> >> > View/Reply Online (#64608):
>> https://lists.yoctoproject.org/g/yocto/message/64608
>> >> > Mute This Topic: https://lists.yoctoproject.org/mt/110748308/168648=
9
>> >> > Group Owner: yocto+owner@lists.yoctoproject.org
>> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alex.kanavin@gmail.com]
>> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> >
>>
>

--0000000000009b3f79062c5c61a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I don=E2=80=99t know. The problem description is not clea=
r enough for me to give suggestions, and I do not have time to figure out w=
hat you need to do in a long exchange of messages.=C2=A0</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">It helps to provide three clear descriptio=
ns like is typically asked when writing bug reports:</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">1. What you did. Which settings did you change=
 and what commands you issued. Also, what is your goal.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">2. What happened. What was the command outp=
ut and what are any relevant logs or files.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">3. What was the expectation, and how does it mismatch p=
oint two.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div=
><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu 23. Jan 2025 at 10.22, MOHAMMED HASSAN &lt;<a href=
=3D"mailto:hassanchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border=
-left-color:rgb(204,204,204)"><div dir=3D"ltr">Does it mean I need to add t=
he packageconfig variables=C2=A0or any more changes=C2=A0will be needed?</d=
iv><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 23 Jan 2025 at 11:46=E2=80=AFAM, Alex=
ander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blan=
k">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Generall=
y, you need to modify your image recipe to declare what<br>
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
</blockquote></div></div>

--0000000000009b3f79062c5c61a8--

