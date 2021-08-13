Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.33626.1628838368030393232
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 00:06:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QfEKDd59;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: samuli.piippo@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id nt11so14035429pjb.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 00:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TZJbYwdOLep6gmSnvmv1uunwPqxooafxVHeKO9lU9wM=;
        b=QfEKDd595Edlie0Kp6aszjJb/P21W1le6IecuaCXAN7np1KtZEFXlF/24ZzLB9fldt
         gXfTy7l6vEP4RdKucNDW/I1xBpTiyUIwAxqk1c823COtxXLumXy4lzja82ViKY4QXduo
         J4mRX1wbqOorR04WVJwVlgv2Wc0ex5C98Nvi7Daq/wCps6R6vwXcaJV4r3Wh/zdSKYJD
         xFNNVdQrq6+HPkgzH/himPJ9IXHPHnM5P2/2MFHOEgL9qm1dAX9MIQfr0dWspzlKDtCm
         l+QL8ERtyAnLe79VW3YRa04lWDjuzW4bOAB0Aj3CrXuhcA0uOvwxN6nO1iUSh87FloXe
         N4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TZJbYwdOLep6gmSnvmv1uunwPqxooafxVHeKO9lU9wM=;
        b=k5VzqLAeiC0Ot4/MllLShyrbAQw1HWeWa3ujQ3jL876OtjmR0pIRDeNbkEDKYXPq3r
         FyfyQOAmi+Cg6VfN6ScZh41qw82etVQhLlaHBW+55Ub7+vuiMGwZ5mhMUIKOnvAoaoOx
         MxZ3LkrMWDtlIMG/xY7VNKV89HfGNdjm7AOSJIqGBw/+Jc8G/eEccbu+hkOrwKnfiOqA
         PMCr+Rd5lRZD1FGbEnNJ+u/V+UYfODtf/iGaTdRwA5PiTTnIhbGEgjRIYTUN9jomYXTQ
         /g+8pJwPrZ3EvPyqxl6r/Cl5w9c9Fse0hxmnqPXVdpPTSDDagjKlfC503NyDQI5/9/Pz
         V3JA==
X-Gm-Message-State: AOAM533jv20vpZUccVZAhDzkJd7dpfCltsOLbOEnMBUqmRAQqzYnqF7n
	+JMqMsWskafZf5tgcOEd5ZH0c846MAH5j+k9q50=
X-Google-Smtp-Source: ABdhPJz53IJm9U8e9bxQfD26h1aqnXTXp5/6qpNq6L96W6H+33k2XhNLAUXZ7oix8yTx7C6i5kt5syC0drm+m9+obEg=
X-Received: by 2002:a17:902:6b09:b029:129:c61e:e31a with SMTP id
 o9-20020a1709026b09b0290129c61ee31amr948910plk.57.1628838367432; Fri, 13 Aug
 2021 00:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <16642F2E6B14B52A.594@lists.yoctoproject.org>
In-Reply-To: <16642F2E6B14B52A.594@lists.yoctoproject.org>
From: "Samuli Piippo" <samuli.piippo@gmail.com>
Date: Fri, 13 Aug 2021 10:05:56 +0300
Message-ID: <CABXoSoX9y-7UrzvHkA65jW-oWM0Hf+g5jYD6bnvBJn46uXqvBQ@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH] binutils: Package static libdep linker plugins
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: yocto@lists.yoctoproject.org, Joshua Watt <jpewhacker@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000049925d05c96b7c71"

--00000000000049925d05c96b7c71
Content-Type: text/plain; charset="UTF-8"

ping.

I'm still seeing problem with this on hardknott, at least when building for
qemux86 target:

agent:2021/08/13 06:00:50 build.go:391: ERROR:
binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA Issue: non
-staticdev package contains static .a library:
binutils-cross-canadian-i686 path
'/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a'
agent:2021/08/13 06:00:50 build.go:391: non -staticdev package
contains static .a library: binutils-cross-canadian-i686 path
'/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a'
[staticdev]
agent:2021/08/13 06:00:50 build.go:391: ERROR:
binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA run found
fatal errors. Please consider fixing them.


On Tue, 16 Feb 2021 at 11:07, Samuli Piippo via lists.yoctoproject.org
<samuli.piippo=gmail.com@lists.yoctoproject.org> wrote:

> this is new plugin added in binutils 2.36
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git
> a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
> b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
> index 5845fe0..0d376bb 100644
> --- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
> +++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
> @@ -3,3 +3,5 @@ LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>
>  DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
>  DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
> +
> +FILES_${PN}-staticdev_append_sdkmingw32 = " ${libdir}/bfd-plugins/lib*.a"
> --
> 2.17.1
>
>
> 
>
>

--00000000000049925d05c96b7c71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>ping.</div><div><br></div><div>I&#39;m still seeing p=
roblem with this on hardknott, at least when building for qemux86 target:</=
div><div></div><div><pre>agent:2021/08/13 06:00:50 build.go:391: ERROR: bin=
utils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA Issue: non -staticdev=
 package contains static .a library: binutils-cross-canadian-i686 path &#39=
;/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-pl=
ugins/libdep.dll.a&#39;
agent:2021/08/13 06:00:50 build.go:391: non -staticdev package contains sta=
tic .a library: binutils-cross-canadian-i686 path &#39;/opt/poky/3.3.2/sysr=
oots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a&#3=
9; [staticdev]
agent:2021/08/13 06:00:50 build.go:391: ERROR: binutils-cross-canadian-i686=
-2.36.1-r0 do_package_qa: QA run found fatal errors. Please consider fixing=
 them.
</pre></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, 16 Feb 2021 at 11:07, Samuli Piippo via <a href=3D"http=
://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;samuli.piippo=3D<=
a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctopro=
ject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">this is new plugin added in binutils 2.36<br>
<br>
Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io" tar=
get=3D"_blank">samuli.piippo@qt.io</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend | 2 ++=
<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend=
 b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
index 5845fe0..0d376bb 100644<br>
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
@@ -3,3 +3,5 @@ LDFLAGS_append_sdkmingw32 =3D &quot; -Wl,-static&quot;<br>
<br>
=C2=A0DEPENDS_remove_sdkmingw32 =3D &quot;nativesdk-gettext&quot;<br>
=C2=A0DEPENDS_remove_sdkmingw32 =3D &quot;nativesdk-flex&quot;<br>
+<br>
+FILES_${PN}-staticdev_append_sdkmingw32 =3D &quot; ${libdir}/bfd-plugins/l=
ib*.a&quot;<br>
-- <br>
2.17.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000049925d05c96b7c71--
