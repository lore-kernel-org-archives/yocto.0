Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA6E3C433FE
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 05:37:57 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web08.7813.1639028276385292132
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 21:37:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IOeqya+B;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id bu11so4284345qvb.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 21:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NhwO6+XA+CXiJ6ual0i4eEDwoLsfFl0eGlKrTdfWsUg=;
        b=IOeqya+BWrOd8R1tHft3o8DVyOtnSlmYfmLgfIXFYpoTmy1uwM5zlE+ZmBE6gJXora
         j0NookAjIbTahKuflMwWsH7z11QveLjx2bZLX2+OFYBUgZQo51RiV0aflCFMTASwiRN1
         nkLe7HbdEnvHpI89eZTkNCr2sPOWwgmCty5vjLTJ4oTGUe0Pg29NXZp9ApZNc8OoUuw1
         iwbATVqSvl9pooAlvi/BKNkaUiwcYf06gfTOzkahDoDrP8RaquG9QjqFX2CbCvnNbmHK
         /VAvS6i87FLohbge2abz7EmNJ1IhCBz/wXc4r2Is2lXn8qOQ4NP7zJr2PF9gizrbEbaH
         OyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NhwO6+XA+CXiJ6ual0i4eEDwoLsfFl0eGlKrTdfWsUg=;
        b=Em8zAXgyf/i0Uqwn4J5yJ53u2vAONMwzLo+uD8zgESI4BnzPBWNtg1E7c+IIAp/CPg
         BZd6aXrAg1qxNUY+jGQDvjY35ICBflnsVWy4cA0a+LPY6gdlDXOaev20PYFqosc5KCWR
         wX20J7yRq+b2AmhkwYHuewFF5YsCL8H3ilkZecK1y/JW0RRbhD6Fq4lfIaf1kXwzrGGS
         wkkRznHeMGvYOY2wStPxvg7AJCdFC+w7eA9U3Bs+JhtaHbtCwgyd01p51NjdAdG0v5nR
         9gPxIpvzpssJpzaCWVsVT6ATjHnQYgJzecbEt/EPtBY/e2CawiTJFSC0qFiHkauIBgZI
         bxqw==
X-Gm-Message-State: AOAM5328CC3QQWavyFPTWw4NIun5QJiI4Qw5ZrYj920dEGKp3Ls9ruNL
	RNRZofI56aKyoobuyR/IArUWHoTuwcMIESVNCaA0COL6g3E=
X-Google-Smtp-Source: 
 ABdhPJyN2jbpZpuEWrxo2vXJvTJlJEefKC3CseEwgsFiV47O4Knvuq/8PoWDOxxwro0v7Skh6V+NGDEU+Z6khbHsV0o=
X-Received: by 2002:a05:6214:e63:: with SMTP id
 jz3mr13313591qvb.16.1639028275391;
 Wed, 08 Dec 2021 21:37:55 -0800 (PST)
MIME-Version: 1.0
References: <20211209025956.41679-1-mingli.yu@windriver.com>
In-Reply-To: <20211209025956.41679-1-mingli.yu@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Dec 2021 21:37:44 -0800
Message-ID: 
 <CAMKF1spEXRKjDgoC9AA42=yitDtWO8YYPhuLnuCKsRzTBdJN9Q@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] xserver-xorg: remove xshmfence
 configure option
To: "Yu, Mingli" <mingli.yu@windriver.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021b52f05d2b002c0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 05:37:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55532

--00000000000021b52f05d2b002c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 8, 2021 at 7:03 PM Yu, Mingli <mingli.yu@windriver.com> wrote:

> From: Mingli Yu <mingli.yu@windriver.com>
>
> After the commit [1] introduced in openembedded-core layer,
> some configure options is't carried over include xshmfence
> option, so remove the xshmfence configure option to silence
> the below warning.
>   WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue: xserver-xorg:
> invalid PACKAGECONFIG: xshmfence [invalid-packageconfig]
>

That=E2=80=99s ok to remove it but more importantly does it work now withou=
t this
option

>
> [1]
> https://git.openembedded.org/openembedded-core/commit/?id=3De05abd87ee5d2=
3750c641d0129d9c83db68ee2e8
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>  recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
> b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
> index 25829c2..ee4812f 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
> @@ -1,4 +1,4 @@
> -OPENGL_PKGCONFIGS:rpi =3D "dri glx ${@bb.utils.contains('MACHINE_FEATURE=
S',
> 'vc4graphics', 'dri3 xshmfence glamor', '', d)}"
> +OPENGL_PKGCONFIGS:rpi =3D "dri glx ${@bb.utils.contains('MACHINE_FEATURE=
S',
> 'vc4graphics', 'dri3 glamor', '', d)}"
>
>  # when using userland graphic KHR/khrplatform.h is provided by userland
> but virtual/libgl is provided by mesa-gl where
>  # we explicitly delete KHR/khrplatform.h since its already coming from
> userland package
> --
> 2.17.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55531):
> https://lists.yoctoproject.org/g/yocto/message/55531
> Mute This Topic: https://lists.yoctoproject.org/mt/87605115/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000021b52f05d2b002c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Dec 8, 2021 at 7:03 PM Yu, Mingli &lt;<a href=3D"ma=
ilto:mingli.yu@windriver.com">mingli.yu@windriver.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)">From: Mingli Yu &lt;<a href=3D"mailto:mingli.yu@windriv=
er.com" target=3D"_blank">mingli.yu@windriver.com</a>&gt;<br>
<br>
After the commit [1] introduced in openembedded-core layer,<br>
some configure options is&#39;t carried over include xshmfence<br>
option, so remove the xshmfence configure option to silence<br>
the below warning.<br>
=C2=A0 WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue: xserver-xo=
rg: invalid PACKAGECONFIG: xshmfence [invalid-packageconfig]<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">That=E2=80=99s o=
k to remove it but more importantly does it work now without this option=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)"><br>
[1] <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D=
e05abd87ee5d23750c641d0129d9c83db68ee2e8" rel=3D"noreferrer" target=3D"_bla=
nk">https://git.openembedded.org/openembedded-core/commit/?id=3De05abd87ee5=
d23750c641d0129d9c83db68ee2e8</a><br>
<br>
Signed-off-by: Mingli Yu &lt;<a href=3D"mailto:mingli.yu@windriver.com" tar=
get=3D"_blank">mingli.yu@windriver.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend b/recipe=
s-graphics/xorg-xserver/xserver-xorg_%.bbappend<br>
index 25829c2..ee4812f 100644<br>
--- a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend<br>
+++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend<br>
@@ -1,4 +1,4 @@<br>
-OPENGL_PKGCONFIGS:rpi =3D &quot;dri glx ${@bb.utils.contains(&#39;MACHINE_=
FEATURES&#39;, &#39;vc4graphics&#39;, &#39;dri3 xshmfence glamor&#39;, &#39=
;&#39;, d)}&quot;<br>
+OPENGL_PKGCONFIGS:rpi =3D &quot;dri glx ${@bb.utils.contains(&#39;MACHINE_=
FEATURES&#39;, &#39;vc4graphics&#39;, &#39;dri3 glamor&#39;, &#39;&#39;, d)=
}&quot;<br>
<br>
=C2=A0# when using userland graphic KHR/khrplatform.h is provided by userla=
nd but virtual/libgl is provided by mesa-gl where<br>
=C2=A0# we explicitly delete KHR/khrplatform.h since its already coming fro=
m userland package<br>
-- <br>
2.17.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#55531): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55531" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55531</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87605115/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87605115/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000021b52f05d2b002c0--

