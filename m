Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDF1C433F5
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 08:00:37 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web12.3444.1637740836232629768
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 00:00:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ecdeUxWz;
 spf=pass (domain: gmail.com, ip: 209.85.222.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id r15so3330346uao.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 00:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nxy2so5wCFH7C1PGfdL1uRG/ubbJmcyDmSFZ/q7HHn4=;
        b=ecdeUxWzKzUaDDMPHGtzpoXTkRVHA1Ffuipp1NHcTIFY2q5FTyxysULqzf3Y1svpaC
         dwD/udRlOTBMeiDlU4hxz9XRdUsdFft4OoZ/kXwyN6a24oAVHNRBOphXW83ikgVcpzVM
         Uv/aAoV5M/ZOuhLTdoTC0Tax1bFmjQZrlCJXzgWQh2xZJdw7nqN8qCYsZ2GLU8T53CDA
         Rp5Nv44frZiZKCCLKwYSX56JR1sQms+YKx54gJQ/2P3n1PVJNFrsVd78bf5Fv3nAfQN6
         +6odD7m69u5eV1HHfr0C/dFmFdvpt829rGCu1ZLMB5iPEpjGJzKEjZTiGhL6hjxUcY2y
         G7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nxy2so5wCFH7C1PGfdL1uRG/ubbJmcyDmSFZ/q7HHn4=;
        b=BqFx7xYqrxQN9jZRFLtQgbIHXiVXrt4HVqavGDGMXY9ccls7cGHG1ybRtI35/6vDNu
         IbhIr87GS/mTby73UcHDQtaBuAjXFG274kVdIXUanrv+PN2JAb0U59X2WH0ux6Sjbpvw
         WPDeTBrsWWptAfxXruyy8cbr3dGMDBS3aiLsZ91gJXp/2ne0x9bE7TvKpog4vpi5/7uN
         k8K3QkDRJPJ3YNM7Yt/Oz6kOrfAImIdM3jDuct0lM+G35++4n5pqgYdqq72eg74o6hvp
         RnHsj7qwTyW033X4cafA0AuDnCysIsX7tP2WmVWCDJzp0w1ia7RWl5cv4dHf9nR6Fqxt
         qdyQ==
X-Gm-Message-State: AOAM531Dz1kvYSC9JkVyE8ibMvbQX3s1X1g8IKN7pJunLx6JzwlLYSDl
	EVPJZ+vpk0N9XsGkpS9/lVUO/NtjXb9ZsMvSWEN9Nah8ly4=
X-Google-Smtp-Source: 
 ABdhPJwmsdm4Z/V61DHbWwG1Ok4zaeQTrNROfV0KMvypxN8zwTiUs51mPse2csJnD3NqL8PjSV1eal2JwJUk8EHRf7I=
X-Received: by 2002:ab0:6f14:: with SMTP id r20mr7308015uah.22.1637740835267;
 Wed, 24 Nov 2021 00:00:35 -0800 (PST)
MIME-Version: 1.0
References: <20211123150331.2431516-1-ross.burton@arm.com>
 <CANNYZj8WZgGfNjF3pf2i5Fg1yJ0BEJVX3jhjDyTa+0Bs-H5ZAg@mail.gmail.com>
 <CAAnfSTvi57f0i83T80Z2SEKpXG6ch3kiSAKJwo3g=2u9-F_j=Q@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTvi57f0i83T80Z2SEKpXG6ch3kiSAKJwo3g=2u9-F_j=Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 24 Nov 2021 09:00:24 +0100
Message-ID: 
 <CANNYZj9hoiUbuqjiMY00bG3BSAqNL1qrmK1HASdHiD1YyVMn1Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: set
 ZSTD_THREADS like XZ_THREADS
To: Ross Burton <ross@burtonini.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8652105d1844045"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 08:00:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55402

--000000000000b8652105d1844045
Content-Type: text/plain; charset="UTF-8"

But the AB has not been exhibiting any problems with zstd, and this will
degrade performance. Let's only fix what is broken.

Alex

On Tue, 23 Nov 2021 at 20:53, Ross Burton <ross@burtonini.com> wrote:

> My personal build machine has been crashing and dying due to overload
> with the default ZSTD_THREADS, and the AB has had problems with xz due
> to overload so I was being proactive and ensuring zstd is limited on
> the AB the same way xz is.
>
> Ross
>
> On Tue, 23 Nov 2021 at 17:11, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> >
> > Is there a particular reason?
> >
> > Alex
> >
> > On Tue, 23 Nov 2021 at 16:03, Ross Burton <ross@burtonini.com> wrote:
> >>
> >> Signed-off-by: Ross Burton <ross.burton@arm.com>
> >> ---
> >>  config.json | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/config.json b/config.json
> >> index 7203783..c0543d9 100644
> >> --- a/config.json
> >> +++ b/config.json
> >> @@ -47,6 +47,7 @@
> >>              "PARALLEL_MAKE = '-j 16 -l 52'",
> >>              "XZ_MEMLIMIT = '5%'",
> >>              "XZ_THREADS = '8'",
> >> +            "ZSTD_THREADS = '8'",
> >>              "BB_TASK_NICE_LEVEL = '5'",
> >>              "BB_TASK_NICE_LEVEL:task-testimage = '0'",
> >>              "BB_TASK_IONICE_LEVEL = '2.7'",
> >> --
> >> 2.25.1
> >>
> >>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#55396):
> https://lists.yoctoproject.org/g/yocto/message/55396
> >> Mute This Topic: https://lists.yoctoproject.org/mt/87260143/1686489
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >>
>

--000000000000b8652105d1844045
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>But the AB has not been exhibiting any problems with =
zstd, and this will degrade performance. Let&#39;s only fix what is broken.=
</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 23 Nov 2021 at 20:53, Ross =
Burton &lt;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">My perso=
nal build machine has been crashing and dying due to overload<br>
with the default ZSTD_THREADS, and the AB has had problems with xz due<br>
to overload so I was being proactive and ensuring zstd is limited on<br>
the AB the same way xz is.<br>
<br>
Ross<br>
<br>
On Tue, 23 Nov 2021 at 17:11, Alexander Kanavin &lt;<a href=3D"mailto:alex.=
kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Is there a particular reason?<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue, 23 Nov 2021 at 16:03, Ross Burton &lt;<a href=3D"mailto:ross@b=
urtonini.com" target=3D"_blank">ross@burtonini.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.c=
om" target=3D"_blank">ross.burton@arm.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 config.json | 1 +<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/config.json b/config.json<br>
&gt;&gt; index 7203783..c0543d9 100644<br>
&gt;&gt; --- a/config.json<br>
&gt;&gt; +++ b/config.json<br>
&gt;&gt; @@ -47,6 +47,7 @@<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PARALLEL_MAK=
E =3D &#39;-j 16 -l 52&#39;&quot;,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;XZ_MEMLIMIT =
=3D &#39;5%&#39;&quot;,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;XZ_THREADS =
=3D &#39;8&#39;&quot;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ZSTD_THREADS =3D =
&#39;8&#39;&quot;,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BB_TASK_NICE=
_LEVEL =3D &#39;5&#39;&quot;,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BB_TASK_NICE=
_LEVEL:task-testimage =3D &#39;0&#39;&quot;,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BB_TASK_IONI=
CE_LEVEL =3D &#39;2.7&#39;&quot;,<br>
&gt;&gt; --<br>
&gt;&gt; 2.25.1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#55396): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/55396" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/55396</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/8726=
0143/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/87260143/1686489</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"=
>alex.kanavin@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
</blockquote></div>

--000000000000b8652105d1844045--

