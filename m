Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A7EC433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 17:07:19 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web12.615.1643303238598875359
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 09:07:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SWQZQ4ms;
 spf=pass (domain: gmail.com, ip: 209.85.222.46,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id c36so5846501uae.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 09:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bjEuO2EyEB4T2ffkEgTh3B9VnmcOe2imD5F5MPKdmz0=;
        b=SWQZQ4msGX+koUp4hKqYDyetxPOumG47m+N5zBCQwqtSgUbaf9Ey6FoDxs3H0EQaW8
         uhUjbQ0vyoMGD33GZHOvMdCO5RjyBgdmglw1SrgeM+nbbK6WhEse+IKrTqPbV4Gls4VO
         hH0Oa2rRbYZk/pAsRXwxmpD2WmxOIy4mXg6nP4ZCbqYlq4Et4Q166egiD69vrLvbc7MW
         48tH3feOVPhJdH8h7bVlW2bcqbadrcFUGeuXWs7hIb8YBnzeQPVNmL9rv6qLCqpsp/eA
         uPhN54EE7ElveewY3HR4vrO4t7DcXLa47nMZpK7b/+Sga1IlU2QOg4jVGsaPmEnSOgvD
         WMEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bjEuO2EyEB4T2ffkEgTh3B9VnmcOe2imD5F5MPKdmz0=;
        b=hZeA4vfXVriNaDHFPnVXC15XOkVRY0IcBgFbYqSN2giqqBwAcd9Ud1718VFrX9ZTAj
         jtuqy4XkxKI3JCWWmnSSoLC2gjcrcCUEWk0kK/p95aQBNSA8SjLYf+/+FP8rzhqx3jQE
         pQBcUCRUq9y63j1nssYUGk1Afklarr7Lyjj+iRmQROb40mBjFVHWqF/lWjnSQpIm92yI
         2i37WmQGseol7tqeHZfTRQTdbfSiEsk2JIAnw1YAlwKK/J7WdINGKiqruCO36QRcQUXz
         XxJy0ocqJxEKu5RCfruPSpRdtH9zI/PK+VtNz3eVg41OHqgcfOHRHXUApnFHa9RTVc8z
         zAeQ==
X-Gm-Message-State: AOAM5329MUc1RkY/tuV681E8EHjuSnjeZ8+I8v26SWQspgLOBfB6af/x
	j/KpG+rSX96zNohNNjIUVy1LufMSmJcLyih0PlM=
X-Google-Smtp-Source: 
 ABdhPJwj6URpcQP09aZ/4x+Z6u1xZj91g1/p4GvHPU4+zVQB+MIuNW5A+aHqWCMvLK6zuyjyr93gI/xfAvDVtbiNzGg=
X-Received: by 2002:a67:ce95:: with SMTP id c21mr1940556vse.81.1643303237599;
 Thu, 27 Jan 2022 09:07:17 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
In-Reply-To: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Jan 2022 18:07:06 +0100
Message-ID: 
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Denys Dmytriyenko <denis@denix.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Adrian Freihofer <adrian.freihofer@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bc46a205d693592d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 17:07:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56001

--000000000000bc46a205d693592d
Content-Type: text/plain; charset="UTF-8"

A question specifically to Denys, how can I actually get this into the
mixin repo, and have commit rights to the branch? We've tested this quite
well in private, and there are further enhancements coming up.

Alex

On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via lists.yoctoproject.org
<alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:

> Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  COPYING.MIT     | 17 +++++++++++++++++
>  README          | 23 +++++++++++++++++++++++
>  conf/layer.conf | 19 +++++++++++++++++++
>  3 files changed, 59 insertions(+)
>  create mode 100644 COPYING.MIT
>  create mode 100644 README
>  create mode 100644 conf/layer.conf
>
> diff --git a/COPYING.MIT b/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a
> copy
> +of this software and associated documentation files (the "Software"), to
> deal
> +in the Software without restriction, including without limitation the
> rights
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> +copies of the Software, and to permit persons to whom the Software is
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included
> in
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
> OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
> THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> +THE SOFTWARE.
> diff --git a/README b/README
> new file mode 100644
> index 0000000..5b22b72
> --- /dev/null
> +++ b/README
> @@ -0,0 +1,23 @@
> +"Mixin" layer for adding latest Go toolchain versions into the Yocto
> Project LTS.
> +
> +At the time Dunfell was released in April 2020, Go 1.14 was the latest
> version
> +and officially Dunfell supports only that. This thin special-purpose mixin
> +layer is meant to address this issue by backporting Go recipes from the
> master
> +branch of openembedded-core.
> +
> +You can see what Go versions are provided by listing recipes-devtools/
> content.
> +
> +Including the layer automatically picks up the latest Go version;
> different versions
> +need to be set explicitly by adding the following line to your distro
> config
> +or local.conf:
> +
> +GOVERSION = "1.16%"
> +
> +Please note: enabling these newer Go versions makes docker from dunfell
> branch
> +of meta-virtualization unbuildable as it is too old. If you need a
> working docker
> +recipe, you can use the supplementary 'dunfell/docker' layer from this
> meta-lts-mixin
> +repository.
> +
> +
> +Maintainers:
> +Alexander Kanavin <alex@linutronix.de>
> diff --git a/conf/layer.conf b/conf/layer.conf
> new file mode 100644
> index 0000000..5f74224
> --- /dev/null
> +++ b/conf/layer.conf
> @@ -0,0 +1,19 @@
> +# We have a conf and classes directory, append to BBPATH
> +BBPATH .= ":${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS += "lts-go-mixin"
> +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
> +BBFILE_PRIORITY_lts-go-mixin = "6"
> +
> +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
> +
> +LAYERDEPENDS_lts-go-mixin = " \
> +    core \
> +"
> +
> +GOVERSION ?= "1.17%"
> +PREFERRED_PROVIDER_go-native = "go-binary-native"
> +
> --
> 2.20.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55990):
> https://lists.yoctoproject.org/g/yocto/message/55990
> Mute This Topic: https://lists.yoctoproject.org/mt/88722205/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000bc46a205d693592d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A question specifically to Denys, how can I actually =
get this into the mixin repo, and have commit rights to the branch? We&#39;=
ve tested this quite well in private, and there are further enhancements co=
ming up.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 27 Jan 2022 at 15:4=
3, Alexander Kanavin via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoc=
toproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Reviewed-by: Martin Kaistra =
&lt;<a href=3D"mailto:martin.kaistra@linutronix.de" target=3D"_blank">marti=
n.kaistra@linutronix.de</a>&gt;<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix.de" =
target=3D"_blank">alex@linutronix.de</a>&gt;<br>
---<br>
=C2=A0COPYING.MIT=C2=A0 =C2=A0 =C2=A0| 17 +++++++++++++++++<br>
=C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 23 +++++++++++++++++++++++=
<br>
=C2=A0conf/layer.conf | 19 +++++++++++++++++++<br>
=C2=A03 files changed, 59 insertions(+)<br>
=C2=A0create mode 100644 COPYING.MIT<br>
=C2=A0create mode 100644 README<br>
=C2=A0create mode 100644 conf/layer.conf<br>
<br>
diff --git a/COPYING.MIT b/COPYING.MIT<br>
new file mode 100644<br>
index 0000000..fb950dc<br>
--- /dev/null<br>
+++ b/COPYING.MIT<br>
@@ -0,0 +1,17 @@<br>
+Permission is hereby granted, free of charge, to any person obtaining a co=
py <br>
+of this software and associated documentation files (the &quot;Software&qu=
ot;), to deal <br>
+in the Software without restriction, including without limitation the righ=
ts <br>
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell =
<br>
+copies of the Software, and to permit persons to whom the Software is <br>
+furnished to do so, subject to the following conditions:<br>
+<br>
+The above copyright notice and this permission notice shall be included in=
 <br>
+all copies or substantial portions of the Software.<br>
+<br>
+THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, =
EXPRESS OR <br>
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, <=
br>
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL TH=
E <br>
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER <br=
>
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FR=
OM, <br>
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN =
<br>
+THE SOFTWARE.<br>
diff --git a/README b/README<br>
new file mode 100644<br>
index 0000000..5b22b72<br>
--- /dev/null<br>
+++ b/README<br>
@@ -0,0 +1,23 @@<br>
+&quot;Mixin&quot; layer for adding latest Go toolchain versions into the Y=
octo Project LTS.<br>
+<br>
+At the time Dunfell was released in April 2020, Go 1.14 was the latest ver=
sion<br>
+and officially Dunfell supports only that. This thin special-purpose mixin=
<br>
+layer is meant to address this issue by backporting Go recipes from the ma=
ster<br>
+branch of openembedded-core.<br>
+<br>
+You can see what Go versions are provided by listing recipes-devtools/ con=
tent.<br>
+<br>
+Including the layer automatically picks up the latest Go version; differen=
t versions<br>
+need to be set explicitly by adding the following line to your distro conf=
ig <br>
+or local.conf:<br>
+<br>
+GOVERSION =3D &quot;1.16%&quot;<br>
+<br>
+Please note: enabling these newer Go versions makes docker from dunfell br=
anch<br>
+of meta-virtualization unbuildable as it is too old. If you need a working=
 docker<br>
+recipe, you can use the supplementary &#39;dunfell/docker&#39; layer from =
this meta-lts-mixin<br>
+repository.<br>
+<br>
+<br>
+Maintainers:<br>
+Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix.de" target=3D"_bla=
nk">alex@linutronix.de</a>&gt;<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
new file mode 100644<br>
index 0000000..5f74224<br>
--- /dev/null<br>
+++ b/conf/layer.conf<br>
@@ -0,0 +1,19 @@<br>
+# We have a conf and classes directory, append to BBPATH<br>
+BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
+<br>
+# We have a recipes directory, add to BBFILES<br>
+BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bb=
append&quot;<br>
+<br>
+BBFILE_COLLECTIONS +=3D &quot;lts-go-mixin&quot;<br>
+BBFILE_PATTERN_lts-go-mixin :=3D &quot;^${LAYERDIR}/&quot;<br>
+BBFILE_PRIORITY_lts-go-mixin =3D &quot;6&quot;<br>
+<br>
+LAYERSERIES_COMPAT_lts-go-mixin =3D &quot;dunfell&quot;<br>
+<br>
+LAYERDEPENDS_lts-go-mixin =3D &quot; \<br>
+=C2=A0 =C2=A0 core \<br>
+&quot;<br>
+<br>
+GOVERSION ?=3D &quot;1.17%&quot;<br>
+PREFERRED_PROVIDER_go-native =3D &quot;go-binary-native&quot;<br>
+<br>
-- <br>
2.20.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55990): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55990" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55990</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88722205/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88722205/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000bc46a205d693592d--

