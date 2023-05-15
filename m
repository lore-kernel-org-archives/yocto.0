Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937BCC77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 09:47:01 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.84711.1684144017803292957
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 02:46:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NbzKT8YA;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so1942208f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 02:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684144016; x=1686736016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1GVPhCI8EC0CVPdjz+AVvqQOH8vIPpF4iLj4aJBEmpg=;
        b=NbzKT8YAIEiP1c6ku8saW1x/zd7E+jbTwMcKBo7bsHbOA0S3YH2o059X3w8tQ93DyZ
         gBmQVFp5VW0DM49f/pzZaFJYFb9L5xCxhWvKc2h7u0/zpy6UtxQARjYiJ9FY42X9nuKe
         45Lapsc1iXBnDZecNJeroMFHIkMtnsCFCKBKkbBVbo201b/4Tj8fSboz/XTo0BjnFrB2
         xW05J4s16L7PE3fglLwq+i0v+yyqyYPtwXdfvx5J64sSpwvH6Bc36I3W/cCHU+LjdO5K
         nN3PqefTEwjvWfDxUwoZ6v2jqzdSphtqmtMGblrBWabOC1fjIvDADGG5YVU6jZwpqwcB
         0rPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144016; x=1686736016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1GVPhCI8EC0CVPdjz+AVvqQOH8vIPpF4iLj4aJBEmpg=;
        b=hmzrzORp53kH/A4VvuXLxP/ncEOXDUz+/Np7o/RmLy7hufZU7IxkWMJInu2DO73LMh
         fsjoMlAFGnQYxHpD4wr4oWUJjEZa/oWGsehjDurmOn1ew4sa800PV+Kq6gb1F1SoLcZi
         vFcD7IFf/xe38cVrorJWXTNLqsX6k8XPK9gUF9bpx/F00zGzLikn8JnOHw6VaRBL4r3R
         4Y2TrutMXfIJzKSKxn5toax6u3qQsx7TC5MiX7qHsKtam8deicePrWi2Eqo5aDWu3Koo
         wkYkg1lR+60WpUpJPaB7I8Dh3l/l7fgmNRELy7unHBPhGgJolmuTMUETElROh5/tnqW1
         5zOw==
X-Gm-Message-State: AC+VfDwsIy1J3wAzA6nuCvNgPXGfu7IbSSiGC7w2jvQ1KSrH86t8ZeSc
	vlVDSxjww6OsPMmQOo4ImZ4F3kqNS/j1o8+BwUA=
X-Google-Smtp-Source: ACHHUZ7GVV3LJqgWDap4R7pQxau+VZcLMx8lbZQQLxEwLrKxIj+h0Uus63pCm/j45sIuR5p8FjXLiyPtneVhJHo9KH4=
X-Received: by 2002:a05:6000:43:b0:309:5d9:8e1 with SMTP id
 k3-20020a056000004300b0030905d908e1mr5525978wrx.57.1684144015852; Mon, 15 May
 2023 02:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
 <CA+chaQej4J96=EQ8OvpA9v0icv9rvcf0GMUYS0-ESQpBJma6_w@mail.gmail.com> <CANzPQ-Ct81W1O+ooyfyhhFGF2iN-C7w=as-vFSvQupqgdjzvLQ@mail.gmail.com>
In-Reply-To: <CANzPQ-Ct81W1O+ooyfyhhFGF2iN-C7w=as-vFSvQupqgdjzvLQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 15 May 2023 11:46:42 +0200
Message-ID: <CA+chaQcO7mvN5d-tJfT4G8hiGXQ3e_ganexKOBHzxMuUA2uoag@mail.gmail.com>
Subject: Re: [yocto][meta-python2] Kirkstone EXTRANATIVEPATH is not in effect
To: Jiliang Cai <tyrocjl@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0caf105fbb855ac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 09:47:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60022

--000000000000d0caf105fbb855ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I don't know why my EXTRANATIVEPATH doesn't contain python-native

Because you didn't inherit pythonnative?

On Mon, May 15, 2023 at 11:38=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com> wr=
ote:

> I added:
> DEPENDS +=3D "python-native python-setuptools-native".
>
> I think it should work just fine, because:
> python-setuptools.bb    inherit setuptools      -->
> setuptools.bbclass      inherit distutils       -->
> distutils.bbclass       inherit distutils-base  -->
> distutils-base.bbclass  inherit pythonnative    -->
> pythonnative.bbclass   contains 'EXTRANATIVEPATH +=3D "python-native"'
>
> I don't know why my EXTRANATIVEPATH doesn't contain python-native when I
> run
> 'bitbake -e <my_package_name>'. And this causes my bitbake can not search
> 'python2'.
>
> Martin Jansa <martin.jansa@gmail.com> =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=
=E6=97=A5=E5=91=A8=E4=B8=80 16:40=E5=86=99=E9=81=93=EF=BC=9A
> >
> > Did you add "inherit pythonnative" or DEPENDS +=3D "python-native"?
> >
> > You need just the inherit line.
> >
> > On Mon, May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com=
> wrote:
> >>
> >> I have a bb file abc_1.0.bb:
> >> DEPENDS +=3D "python3-native"
> >> And EXTRANATIVEPATH contains "python3-native" as expected, so command
> 'python3'
> >> can be searched.
> >>
> >> Then I add DEPENDS +=3D "python-native", but EXTRANATIVEPATH doesn't
> contains
> >> "python-native", so command 'python' can not be searched.
> >>
> >> python3native.bbclass  has a line:
> >> EXTRANATIVEPATH +=3D "python3-native"
> >> So python3 can be searched when bitbake this recipe. I saw similar
> codes in the
> >> pythonnative.bbclass file, but why didn't it take effect?
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#60018):
> https://lists.yoctoproject.org/g/yocto/message/60018
> >> Mute This Topic: https://lists.yoctoproject.org/mt/98899140/3617156
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
>

--000000000000d0caf105fbb855ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; I don&#39;t know why my EXTRANATIVEPATH doesn&#39;t c=
ontain python-native<div><br></div><div>Because you didn&#39;t inherit pyth=
onnative?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, May 15, 2023 at 11:38=E2=80=AFAM Jiliang Cai &lt;<a=
 href=3D"mailto:tyrocjl@gmail.com">tyrocjl@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">I added:<br>
DEPENDS +=3D &quot;python-native python-setuptools-native&quot;.<br>
<br>
I think it should work just fine, because:<br>
<a href=3D"http://python-setuptools.bb" rel=3D"noreferrer" target=3D"_blank=
">python-setuptools.bb</a>=C2=A0 =C2=A0 inherit setuptools=C2=A0 =C2=A0 =C2=
=A0 --&gt;<br>
setuptools.bbclass=C2=A0 =C2=A0 =C2=A0 inherit distutils=C2=A0 =C2=A0 =C2=
=A0 =C2=A0--&gt;<br>
distutils.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0inherit distutils-base=C2=A0 --=
&gt;<br>
distutils-base.bbclass=C2=A0 inherit pythonnative=C2=A0 =C2=A0 --&gt;<br>
pythonnative.bbclass=C2=A0 =C2=A0contains &#39;EXTRANATIVEPATH +=3D &quot;p=
ython-native&quot;&#39;<br>
<br>
I don&#39;t know why my EXTRANATIVEPATH doesn&#39;t contain python-native w=
hen I run<br>
&#39;bitbake -e &lt;my_package_name&gt;&#39;. And this causes my bitbake ca=
n not search<br>
&#39;python2&#39;.<br>
<br>
Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank=
">martin.jansa@gmail.com</a>&gt; =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=E6=97=
=A5=E5=91=A8=E4=B8=80 16:40=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;<br>
&gt; Did you add &quot;inherit pythonnative&quot; or DEPENDS +=3D &quot;pyt=
hon-native&quot;?<br>
&gt;<br>
&gt; You need just the inherit line.<br>
&gt;<br>
&gt; On Mon, May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai &lt;<a href=3D"ma=
ilto:tyrocjl@gmail.com" target=3D"_blank">tyrocjl@gmail.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; I have a bb file <a href=3D"http://abc_1.0.bb" rel=3D"noreferrer" =
target=3D"_blank">abc_1.0.bb</a>:<br>
&gt;&gt; DEPENDS +=3D &quot;python3-native&quot;<br>
&gt;&gt; And EXTRANATIVEPATH contains &quot;python3-native&quot; as expecte=
d, so command &#39;python3&#39;<br>
&gt;&gt; can be searched.<br>
&gt;&gt;<br>
&gt;&gt; Then I add DEPENDS +=3D &quot;python-native&quot;, but EXTRANATIVE=
PATH doesn&#39;t contains<br>
&gt;&gt; &quot;python-native&quot;, so command &#39;python&#39; can not be =
searched.<br>
&gt;&gt;<br>
&gt;&gt; python3native.bbclass=C2=A0 has a line:<br>
&gt;&gt; EXTRANATIVEPATH +=3D &quot;python3-native&quot;<br>
&gt;&gt; So python3 can be searched when bitbake this recipe. I saw similar=
 codes in the<br>
&gt;&gt; pythonnative.bbclass file, but why didn&#39;t it take effect?<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#60018): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/60018" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/60018</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/9889=
9140/3617156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/98899140/3617156</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank"=
>Martin.Jansa@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
</blockquote></div>

--000000000000d0caf105fbb855ac--

