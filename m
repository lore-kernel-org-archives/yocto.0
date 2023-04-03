Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F693C76188
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 14:57:55 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.72854.1680533869701316988
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 07:57:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WJhuJDll;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id r14so16245114oiw.12
        for <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 07:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680533869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=50Hjg9LQ/KygvNWfgDQrx4bm6Ujm618Pb+jq9sBpajE=;
        b=WJhuJDllbFtWidaMYjYulTlVg6Dtq3PyHGVZI3n8oTqdchMGUv5WwLj5V+s/DxDaf0
         ihGyEa0qAJaK+7+IMvqj/tepqsOmCMm8Xzu2dJ2iVnygmFodNBQISzzucSRneNuhMk8c
         sdFc4iwSvV3I5tZr3UdQuVzC+MnLYOKjC7/rpGG/rt5wXUbiupSfLo8FK4rLJcQaMMla
         5Tb8/5MKs1dBH7CC+qeawGmRd+meO6JQv5scAQUY10xYoCA4sJwEh7v+FoKvdHoL2Sui
         mpCpUkqR/zjhEHEvkqupv+gRxtVBQBbQJc0ktJ7reEC75qruNasITGRdveiW+GHhoC0z
         aClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680533869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50Hjg9LQ/KygvNWfgDQrx4bm6Ujm618Pb+jq9sBpajE=;
        b=Qgq580DV565fOqjNFGw210HHGYd2Xu3yVt2AgtlQymP8Fx/6tQsQweWt1vmQCkc2QD
         aWuK1TtaZia/ljn2NVq842eg3IJaFl9r5c+4jg56GDWf3vN4iB5KlqBmOGc3ZYwdwE+/
         TLbKGDVFZo5PMnr6s55Q/nalQwNYzrd4x08KZMbqCP1jO59XsU0bbbgYF+nh3E1ORvIm
         8eswzMq02T19pwE6A+BZxGx97CfaA1ea3B3VAZcdDqOeylSfFHt7CwcRqJQ2cI7q7+T7
         MIH8mN/N/o/1AAyGaZjEUC8yw1TuoTieCUiQN3aGvBleWhfAhx+Uj/CcoZzH+vIMW2aU
         o0SQ==
X-Gm-Message-State: AAQBX9dUCKZQl9r0bsfQNTX+BRJufobNi1UN5EYQvFwomfMgRJid4DR1
	qz0M5h/F/KPsmdSmyw9p/ag0fpm+nUE1kcvp30E=
X-Google-Smtp-Source: AKy350bmY9XiRGgWjIYpTpW05WclfRPpLN4Y54JAp80GK/N1hoKn7ms/dAd4eghl6lIlQ3IR9gazr6KRPhLgdaGIXas=
X-Received: by 2002:a05:6808:220b:b0:38b:2f3f:c613 with SMTP id
 bd11-20020a056808220b00b0038b2f3fc613mr1171822oib.4.1680533868572; Mon, 03
 Apr 2023 07:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
 <6415.1680506699920545280@lists.yoctoproject.org>
In-Reply-To: <6415.1680506699920545280@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 3 Apr 2023 07:57:37 -0700
Message-ID: <CAMKF1sp1e0A88eGB3xVcamY16GB2H6dBwHet4tvYtUf2_GpS7A@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: adrian.dudau@keyfactor.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000044f58d05f86fc8c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 14:57:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59600

--00000000000044f58d05f86fc8c7
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 3, 2023 at 12:25 AM <adrian.dudau@keyfactor.com> wrote:

> On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:
> Hi Richard,
>
> Jumping on this thread to provide some clarifications as I hit the same
> bug.
> I can confirm that this is not an environment issue. I could reproduce it
> by adding a sudo call in an empty recipe like this:
>
> SUMMARY = ""
> HOMEPAGE = ""
> LICENSE = ""
> SECTION = ""
> DEPENDS = ""
>
> SRC_URI = ""
>
> do_install() {
>     ls -l /usr/bin/sudo
>     sudo ls -l /usr/bin/sudo
> }
>

Build already use a fake root environment using pseudo to intercept the
calls so this might not be out of line here. What is the original issue you
are running into ?


>
> Running bitbake barebone on my x86 machine produces this error:
>
> | -rwxr-xr-x 1 nobody 65534 232416 Mar  1 13:59 /usr/bin/sudo
> | sudo: /etc/sudo.conf is owned by uid 65534, should be 0
> | sudo: /etc/sudo.conf is owned by uid 65534, should be 0
> | sudo: error in /etc/sudo.conf, line 0 while loading plugin
> "sudoers_policy"
> | sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0
> | sudo: fatal error, unable to load plugins
>
> Indeed it seems that ownership is broken somehow in the bb environment.
> The issue was introduced somewhere between dunfell and kirkstone. I know
> it's a large timespan but it's a bit time consuming to narrow it down.
>
> Hoping to get some help on this. I would try to investigate further myself
> but I have no idea where to start to be honest.
>
> Best regards,
> --Adrian
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59594):
> https://lists.yoctoproject.org/g/yocto/message/59594
> Mute This Topic: https://lists.yoctoproject.org/mt/96733939/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000044f58d05f86fc8c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Apr 3, 2023 at 12:25 AM &lt;<a href=3D"mailto:adria=
n.dudau@keyfactor.com">adrian.dudau@keyfactor.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">On Mon, Feb 6, 2023 at 01:13 AM, Richard Purd=
ie wrote:<br>Hi Richard,<br><br>Jumping on this thread to provide some clar=
ifications as I hit the same bug.<br>I can confirm that this is not an envi=
ronment issue. I could reproduce it by adding a sudo call in an empty recip=
e like this:<br><br>SUMMARY =3D &quot;&quot;<br>HOMEPAGE =3D &quot;&quot;<b=
r>LICENSE =3D &quot;&quot;<br>SECTION =3D &quot;&quot;<br>DEPENDS =3D &quot=
;&quot;<br><br>SRC_URI =3D &quot;&quot;<br><br>do_install() {<br>=C2=A0=C2=
=A0=C2=A0 ls -l /usr/bin/sudo<br>=C2=A0=C2=A0=C2=A0 sudo ls -l /usr/bin/sud=
o<br>}<br></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Build =
already use a fake root environment using pseudo to intercept the calls so =
this might not be out of line here. What is the original issue you are runn=
ing into ?</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<br><br>Running bitbake barebone on my x86 machine produces this error:<br>=
<br>| -rwxr-xr-x 1 nobody 65534 232416 Mar=C2=A0 1 13:59 /usr/bin/sudo<br>|=
 sudo: /etc/sudo.conf is owned by uid 65534, should be 0<br>| sudo: /etc/su=
do.conf is owned by uid 65534, should be 0<br>| sudo: error in /etc/sudo.co=
nf, line 0 while loading plugin &quot;sudoers_policy&quot;<br>| sudo: /usr/=
libexec/sudo/sudoers.so must be owned by uid 0<br>| sudo: fatal error, unab=
le to load plugins<br><br>Indeed it seems that ownership is broken somehow =
in the bb environment. The issue was introduced somewhere between dunfell a=
nd kirkstone. I know it&#39;s a large timespan but it&#39;s a bit time cons=
uming to narrow it down.<br><br>Hoping to get some help on this. I would tr=
y to investigate further myself but I have no idea where to start to be hon=
est.<br><br>Best regards,<br>--Adrian<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59594): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59594" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59594</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96733939/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96733939/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000044f58d05f86fc8c7--

