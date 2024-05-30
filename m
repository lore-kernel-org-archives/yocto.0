Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 756AAC25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 17:22:06 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web10.2657.1717089717522665802
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 10:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NWbtfjv4;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: simonkbaby@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-df78b040314so1178323276.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 10:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717089717; x=1717694517; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2W4WwpWgrJGbXZod1K0Z8T7gB2zaWma+0OR+Q3m6t7c=;
        b=NWbtfjv4DYfIRW+/vSOAq/7yMKYpI5bt6apKm2Lkzi6bCCXm7Fq1j2R4vW9/diQqR7
         p1NyCob3vaJgFejeVFlxR1AdsBNVJ/iTbMypOXwhm8znbzKVMAW7f+YCaVt6Bd620+ud
         ITXGAZEon0xxR96JDN6vF01jrXEX144i/z2QJnFkD9be+VLK1H63yLnrBJBG+Xl4I+n/
         MpLN1BOl4sGPv/78N2UmRDE/PfdCuwvcAOs7X4pxRujAnyGwSsrGcZBOkpddaZJH6fm5
         J+ZaXA780/jiwi4ADfXWK9iYsxcPF9AEDYHOSYSZMW+US1xrsDUKjHdo8pIDS7WSqBjE
         gMPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717089717; x=1717694517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2W4WwpWgrJGbXZod1K0Z8T7gB2zaWma+0OR+Q3m6t7c=;
        b=MIO6vMyoy2onrWXXtTd9/cGPFjfVRJVaHA2kuFUqSU//2nHNwZfmL16glPYD0OxhSC
         jYDK2pjsjaFqkyyn2G4A2wcWzRZo0+9EILQVKc8Bqf1Cvv1m1/P34T4+MdXScQawP/9t
         UNZEtUh0I1KAaGzQGEvVi3nuzh0NIDje34r6CgRKfTR/8BCfe3ZLOr/dDc3x73UB6CFb
         WStL2OQ35Yg0RCtcoeti7OGTK2mTaQKkknqig4g0ZT6UzJgu5OZZhmxEet39C9ePyiXx
         vi+Hvd06IMfHIlX/NGu4A5rDhXea264y8ywUKwyEvS83chRfMYI+vCuODTvPwlO+2DkQ
         rwrw==
X-Gm-Message-State: AOJu0YwBcdQv35QZuooVsZntvJcVNOJqI7ZgrznJ+cLXemumTpuqxvGB
	b0cgPw66929gzPGveu1zkukxakH+xfapDJgFopO7IQOZo24KZuka6udCaOS+V3IMo9OOkFY4Vmk
	oxtk5+paxTg+38OXKpmQE8QUe/c4=
X-Google-Smtp-Source: AGHT+IHu1T53RhWYJePvVrxYO3emmmwk0g7hqxIW2Oon37ZVPrq/dAhtlHk5wlm1/J+8TBdcieqpbx/gKOQjNlIGPgc=
X-Received: by 2002:a25:d850:0:b0:df4:a2e7:dd6 with SMTP id
 3f1490d57ef6-dfa5a423488mr3008326276.0.1717089716353; Thu, 30 May 2024
 10:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
 <CANNYZj-sf3j4yJeCvDWSjqBQbA_-iwEQyD4QLF6oin6Y-UMo5w@mail.gmail.com>
In-Reply-To: <CANNYZj-sf3j4yJeCvDWSjqBQbA_-iwEQyD4QLF6oin6Y-UMo5w@mail.gmail.com>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 30 May 2024 10:21:43 -0700
Message-ID: <CAEFUPH0j1FXCMF4E1yVbD1hed264SWsYZ5MnPftL1NSVQg16aw@mail.gmail.com>
Subject: Re: [yocto] query on building rabbitmq-c
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009745c20619af1a77"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 17:22:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63244

--0000000000009745c20619af1a77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

Thank you for helping this out.

I can see packages-split with below files:

sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/build/tmp=
/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/package=
s-split/rabbitmq-c-tools$
ls -ll usr/bin/
total 104
-rwxr-xr-x 2 sbaby sbaby 22284 Mar 31  2021 amqp-consume
-rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-declare-queue
-rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-delete-queue
-rwxr-xr-x 2 sbaby sbaby 18176 Mar 31  2021 amqp-get
-rwxr-xr-x 2 sbaby sbaby 18184 Mar 31  2021 amqp-publish

sbaby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/build/tmp=
/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/package=
s-split$
ls -ll rabbitmq-c/usr/lib/
total 80
lrwxrwxrwx 1 sbaby sbaby    20 Mar 31  2021 librabbitmq.so.4 ->
librabbitmq.so.4.5.0
-rwxr-xr-x 2 sbaby sbaby 79204 Mar 31  2021 librabbitmq.so.4.5.0



However, On the target I could not see the amqp-* binaries under /usr/bin.
But I see the library librabbitmq.so.4.5.0. Is this expected? Do we need
only the library to execute some client code with rabbitmq-c  api ?

root@sama7g5ek-sd:~# ls -ll /usr/lib/librabbitmq.so.4.5.0
-rwxr-xr-x 1 root root 79204 Mar  9  2018 /usr/lib/librabbitmq.so.4.5.0

root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-consume
ls: cannot access '/usr/bin/amqp-consume': No such file or directory
root@sama7g5ek-sd:~#
root@sama7g5ek-sd:~#
root@sama7g5ek-sd:~#
root@sama7g5ek-sd:~#
root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-*
ls: cannot access '/usr/bin/amqp-*': No such file or directory

Regards
Simon


On Thu, May 30, 2024 at 2:40=E2=80=AFAM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> The recipe puts them in rabbitmq-c-tools package. If you would look in
> packages-split/ instead of image/ you would see the same.
>
> Alex
>
> On Thu, 30 May 2024 at 00:23, SIMON BABY via lists.yoctoproject.org
> <simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > I am building the recipe below.
> >
> >
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-conne=
ctivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=3Dkirkstone
> >
> > I am unable to see the binaries on the target. Do I have to enable
> anything? However my build work directory has the generated binaries.
> >
> >
> >
> /build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.1=
1.0-r0/image/usr/bin$
> ls
> > amqp-consume  amqp-declare-queue  amqp-delete-queue  amqp-get
> amqp-publish
> >
> >
> > Regards
> > Simon
> >
> >
> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63232):
> https://lists.yoctoproject.org/g/yocto/message/63232
> > Mute This Topic: https://lists.yoctoproject.org/mt/106378618/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000009745c20619af1a77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander,<div><br></div><div>Thank=C2=A0you for hel=
ping this out.</div><div><br></div><div>I can see packages-split with below=
 files:</div><div><br></div><div>sbaby@eadlng-build-machine:~/workspace/051=
62024_NIC/741819_NICOPS/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/rabbitmq-c/0.11.0-r0/packages-split/rabbitmq-c-tools$ ls -ll usr/bin/<=
br>total 104<br>-rwxr-xr-x 2 sbaby sbaby 22284 Mar 31 =C2=A02021 amqp-consu=
me<br>-rwxr-xr-x 2 sbaby sbaby 18184 Mar 31 =C2=A02021 amqp-declare-queue<b=
r>-rwxr-xr-x 2 sbaby sbaby 18184 Mar 31 =C2=A02021 amqp-delete-queue<br>-rw=
xr-xr-x 2 sbaby sbaby 18176 Mar 31 =C2=A02021 amqp-get<br>-rwxr-xr-x 2 sbab=
y sbaby 18184 Mar 31 =C2=A02021 amqp-publish<br></div><div><br></div><div>s=
baby@eadlng-build-machine:~/workspace/05162024_NIC/741819_NICOPS/build/tmp/=
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/packages=
-split$ ls -ll rabbitmq-c/usr/lib/<br>total 80<br>lrwxrwxrwx 1 sbaby sbaby =
=C2=A0 =C2=A020 Mar 31 =C2=A02021 librabbitmq.so.4 -&gt; librabbitmq.so.4.5=
.0<br>-rwxr-xr-x 2 sbaby sbaby 79204 Mar 31 =C2=A02021 librabbitmq.so.4.5.0=
<br></div><div><br></div><div><br></div><div><br></div><div>However, On the=
 target I could not see the amqp-* binaries under /usr/bin. But I see the l=
ibrary=C2=A0librabbitmq.so.4.5.0. Is this expected?=C2=A0Do we need only th=
e library to execute some client code with rabbitmq-c=C2=A0 api=C2=A0?</div=
><div><br></div><div>root@sama7g5ek-sd:~# ls -ll /usr/lib/librabbitmq.so.4.=
5.0<br>-rwxr-xr-x 1 root root 79204 Mar =C2=A09 =C2=A02018 /usr/lib/librabb=
itmq.so.4.5.0<br><br>root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-consume<br>l=
s: cannot access &#39;/usr/bin/amqp-consume&#39;: No such file or directory=
<br>root@sama7g5ek-sd:~#<br>root@sama7g5ek-sd:~#<br>root@sama7g5ek-sd:~#<br=
>root@sama7g5ek-sd:~#<br>root@sama7g5ek-sd:~# ls -ll /usr/bin/amqp-*<br>ls:=
 cannot access &#39;/usr/bin/amqp-*&#39;: No such file or directory<br></di=
v><div><br></div><div>Regards</div><div>Simon</div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, M=
ay 30, 2024 at 2:40=E2=80=AFAM Alexander Kanavin &lt;<a href=3D"mailto:alex=
.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">The recipe puts them in rabbitmq-=
c-tools package. If you would look in<br>
packages-split/ instead of image/ you would see the same.<br>
<br>
Alex<br>
<br>
On Thu, 30 May 2024 at 00:23, SIMON BABY via <a href=3D"http://lists.yoctop=
roject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a>=
<br>
&lt;simonkbaby=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=
=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am building the recipe below.<br>
&gt;<br>
&gt; <a href=3D"https://git.openembedded.org/meta-openembedded/tree/meta-oe=
/recipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=3Dkirkstone" rel=3D=
"noreferrer" target=3D"_blank">https://git.openembedded.org/meta-openembedd=
ed/tree/meta-oe/recipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=3Dki=
rkstone</a><br>
&gt;<br>
&gt; I am unable to see the binaries on the target. Do I have to enable any=
thing? However my build work directory has the generated binaries.<br>
&gt;<br>
&gt;<br>
&gt; /build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/=
0.11.0-r0/image/usr/bin$ ls<br>
&gt; amqp-consume=C2=A0 amqp-declare-queue=C2=A0 amqp-delete-queue=C2=A0 am=
qp-get=C2=A0 amqp-publish<br>
&gt;<br>
&gt;<br>
&gt; Regards<br>
&gt; Simon<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63232): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63232" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63232</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10637861=
8/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/106378618/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--0000000000009745c20619af1a77--

