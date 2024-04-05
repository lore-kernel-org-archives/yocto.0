Return-Path: <jacob.avraham@auto-talks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 240D1CD11C2
	for <webhook@archiver.kernel.org>; Fri,  5 Apr 2024 15:21:58 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.15159.1712330512332067554
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Apr 2024 08:21:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@auto-talks.com header.s=google header.b=S/4j+M/E;
 spf=pass (domain: auto-talks.com, ip: 209.85.218.45, mailfrom: jacob.avraham@auto-talks.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a51ab73de8aso71303766b.2
        for <yocto@lists.yoctoproject.org>; Fri, 05 Apr 2024 08:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=auto-talks.com; s=google; t=1712330511; x=1712935311; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u79/sYCjoRK9BSI8gZDnKg0RvssqzUQApKd673ahLds=;
        b=S/4j+M/EIXoVXKbsSb04RyeMris/2H03hvg5c3Bi3CF0n0J5u7uFlEkoKCupqKrPF0
         dnrUs6s7d/GDo5Bw816+ux4Wm6Tkua3PJogvbtE1IKte0zMZcLGcCcFc2ZA0GrWq4Vq6
         mwnitOpoNTX2BZCS3viaQVwEy/XCoEdM8b3TI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712330511; x=1712935311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u79/sYCjoRK9BSI8gZDnKg0RvssqzUQApKd673ahLds=;
        b=CvoGcKWnwHr+oyX7Emqmdpp9kUgZzBFMxnIc5R/d7YA10oHMuPAyPD3SnZ6sTib5E+
         hQ+DBEQ2hETvItUaGD8GYJPIDuM9K7iBLkVM4KdclXf5nka0jO2+slmTas4TSwG1Fo2K
         e224mclVLvl/ncGZbLaGl5LND6JPZpteu7SgyfvkqCF0bI2ZKkyPYAdbjBNNlXFqdLiQ
         Hu7l7VjTRgZfLdHeCA6rEY16EsIhEeaWro2dmzm+ydIDzdSLUtgttAnGGtFXocpArO7g
         ypNA8U3F3GlZXXoehCV4SQlT8TbHtpSrL5ABiinUhsFIWo/nnDyvKDVUYtIxPcyDz5dO
         1E/A==
X-Gm-Message-State: AOJu0YyLh6yyss4fn01GhzerK2EncSYzhHoN7u+am52d0Cs3CPyBmMQ4
	DtE9cyUGWhNgEJIJYdLgMDR1E/m+xpF7RZHNeMpyYLI+vD45yGNxfJRYm6EG6fOItEo9n7SWJhh
	trWmktg7cQXrVaZz0HudMqHUv3r1Asw8HQfyUNA==
X-Google-Smtp-Source: AGHT+IG3NLxanqBDFyUlbC1OTdBXuzU8oM8DqDcVEIpguG8QiJgjhfTSw9ZjXz6iB60FiOERk+dvd1ubaMTGQ13Jy3Q=
X-Received: by 2002:a17:906:c30a:b0:a51:aec1:653b with SMTP id
 s10-20020a170906c30a00b00a51aec1653bmr533724ejz.9.1712330510728; Fri, 05 Apr
 2024 08:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
 <CAMKF1spcbaPhRvdh32rhUduCvsnRa0=dGmt4iukghvG5NrGK3g@mail.gmail.com>
In-Reply-To: <CAMKF1spcbaPhRvdh32rhUduCvsnRa0=dGmt4iukghvG5NrGK3g@mail.gmail.com>
From: Jacob Avraham <jacob.avraham@auto-talks.com>
Date: Fri, 5 Apr 2024 18:20:52 +0300
Message-ID: <CAD_Sx109jH=oDYZAQ5Qjf3HxOgWqm1deqBb2tj8PJ7FB4JGiNg@mail.gmail.com>
Subject: Re: [yocto] Add json-c package to yocto sdk
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d4a37906155b0364"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Apr 2024 15:21:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62889

--000000000000d4a37906155b0364
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding  CORE_IMAGE_EXTRA_INSTALL +=3D "json-c" did the trick.
Thanks!

On Thu, Apr 4, 2024 at 12:43=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote=
:

> On Wed, Apr 3, 2024 at 1:50=E2=80=AFPM Jacob Avraham
> <jacob.avraham@auto-talks.com> wrote:
> >
> > I want to create a yocto sdk for arm64 architecture that includes the
> json-c library package.
> >
> > After running 'source oe-init-build-env' in the poky directory, I did
> the following changes to the local.conf file: MACHINE ??=3D "qemuarm64"
> > IMAGE_INSTALL +=3D " json-c"
>
> Can you try doing CORE_IMAGE_EXTRA_INSTALL +=3D "json-c"
>
> >
> > Then I ran 'bitbake core-image-minimal' and 'bitbake -c populate_sdk
> core-image-minimal'.
> >
> > I see that the package is compiled as native, but I don't see it in the
> created image, nor in the SDK. I tried it also with target
> 'core-image-full-cmdline', but no luck there either.
> >
> > What am I missing here?
> >
> >
> > Jacob
> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#62885):
> https://lists.yoctoproject.org/g/yocto/message/62885
> > Mute This Topic: https://lists.yoctoproject.org/mt/105317616/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>


--=20

*Jacob Avraham **| Principal SW Engineer*

*M: +972-52-6970067 | T: +972-9-8865314*

*E: jacob.avraham@auto-talks.com <jacob.avraham@auto-talks.com>*

*Grand Netter building, Kfar Netter, Israel*

*Autotalks* | www.auto-talks.com

--000000000000d4a37906155b0364
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adding=C2=A0

CORE_IMAGE_EXTRA_INSTALL +=3D &quot;json-c&quot; did the trick.<div>Thanks!=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Apr 4, 2024 at 12:43=E2=80=AFAM Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Wed, Apr 3, 2024 at 1:50=E2=80=
=AFPM Jacob Avraham<br>
&lt;<a href=3D"mailto:jacob.avraham@auto-talks.com" target=3D"_blank">jacob=
.avraham@auto-talks.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I want to create a yocto sdk for arm64 architecture that includes the =
json-c library package.<br>
&gt;<br>
&gt; After running &#39;source oe-init-build-env&#39; in the poky directory=
, I did the following changes to the local.conf file: MACHINE ??=3D &quot;q=
emuarm64&quot;<br>
&gt; IMAGE_INSTALL +=3D &quot; json-c&quot;<br>
<br>
Can you try doing CORE_IMAGE_EXTRA_INSTALL +=3D &quot;json-c&quot;<br>
<br>
&gt;<br>
&gt; Then I ran &#39;bitbake core-image-minimal&#39; and &#39;bitbake -c po=
pulate_sdk core-image-minimal&#39;.<br>
&gt;<br>
&gt; I see that the package is compiled as native, but I don&#39;t see it i=
n the created image, nor in the SDK. I tried it also with target &#39;core-=
image-full-cmdline&#39;, but no luck there either.<br>
&gt;<br>
&gt; What am I missing here?<br>
&gt;<br>
&gt;<br>
&gt; Jacob<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62885): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62885" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62885</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10531761=
6/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105317616/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><p style=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,s=
ans-serif;font-size:12.8px"><b><span style=3D"font-size:10pt;color:rgb(89,8=
9,89)">Jacob Avraham=C2=A0</span></b><b><span style=3D"font-size:10pt;color=
:rgb(127,127,127)">| Principal SW Engineer</span></b></p><p style=3D"font-f=
amily:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:12.8px"><b><s=
pan style=3D"font-size:10pt;color:rgb(127,127,127)">M:=C2=A0+972-52-6970067=
=C2=A0| T:=C2=A0+972-9-8865314</span></b></p><p style=3D"font-family:Roboto=
,RobotoDraft,Helvetica,Arial,sans-serif;font-size:12.8px"><b><span style=3D=
"font-size:10pt;color:rgb(127,127,127)">E:=C2=A0<a href=3D"mailto:jacob.avr=
aham@auto-talks.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">jacob=
.avraham@auto-talks.com</a></span></b></p><p style=3D"font-family:Roboto,Ro=
botoDraft,Helvetica,Arial,sans-serif;font-size:12.8px"><b><span style=3D"fo=
nt-size:10pt;color:rgb(127,127,127)">Grand Netter building, Kfar Netter, Is=
rael</span></b></p><p style=3D"font-family:Roboto,RobotoDraft,Helvetica,Ari=
al,sans-serif;font-size:12.8px"><b><span style=3D"font-size:10pt;color:rgb(=
89,89,89)">Autotalks</span></b><span style=3D"font-size:10pt;color:rgb(31,7=
3,125)">=C2=A0|=C2=A0</span><span style=3D"color:rgb(17,85,204);font-size:1=
0pt"><a href=3D"http://www.auto-talks.com/" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">www.auto-talks.com</a></span></p></div></div>

--000000000000d4a37906155b0364--

