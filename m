Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web12.11216.1600521604937253861
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Sep 2020 06:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VOk3cHM2;
 spf=pass (domain: gmail.com, ip: 209.85.221.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f65.google.com with SMTP id s12so8247577wrw.11
        for <yocto@lists.yoctoproject.org>; Sat, 19 Sep 2020 06:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QzwKHVCJNKIKBPY+OBizSq+F1WD4Ame1DQCzF5+LYvc=;
        b=VOk3cHM2zgbBt21saf2cBQV8Tg5/i1eMDrfXfX9T4/fZf500Kuz35mEUBOCzczRKw+
         F2GkwnD0Dcktydldj2ea7PNkRhdw6eE+5qav7qBWZknhKTOEwej20glqNbsk8jf9wguf
         o2MBrsp/2G+ITYh3D+pU45DcXNKI7Gyt7yyZ71OV5W2j7Z+WNTkvXm5bToNQl0yBihSg
         f83Gkr5iG19vTpBjrArlVtSZRaIkbWnEN9zeVv2Xu5eUCnaAyW8RCjkIUOLdKBgZewVp
         pvo5hRY8hazL8e9C9EnJSNSHWQIjuMFcHWTLtDXzjcOKAXQTZY0qTWdFb0Ipr4w/tD5g
         uUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QzwKHVCJNKIKBPY+OBizSq+F1WD4Ame1DQCzF5+LYvc=;
        b=IPUmbfg/XFWYstwfsrrIaI+A5txsPYNS/8vpWUV+wbRe1v6csEiDS7XRMkDORMzIvn
         4N+xDX8eaJEuNtoSy52Ln1FWRcP5/ernSsaNo9RhN0yvOtGFrgwb71AGLNnFqTGYTSdZ
         d+CIMN0KkWhojzmiiGdXc6+gTinDkZ1LfrJWt3UozLx7Z1M67QvFhJbNw/wB42lk2urL
         +y5BW3yzFSCGdgHWUMmKBv385plwsXMu6gHD7+BWXkgY8Q9GXchpSqDot+Q36mhSjTkA
         cws6Klk29T+YaYS0upiTtp0WNfAKI/W5SYYpRm3JJt6GZjg3HXIySPkZwcmZ1nAHQbib
         xCOQ==
X-Gm-Message-State: AOAM531a2cG/veuswYlcZRODRlLI66IJlPHpoARgcgZNOqphZTgbrYr6
	T920CRGpMXVE6+GSLZAAq4KLH9rPCLwzr/aFW5E=
X-Google-Smtp-Source: ABdhPJzAhTkpXHD4kDzybeyfKeOLzTN2IxDRcVoV6vuAxzPsu9AAo/buxGlOF8MLpKO6BnxzGSZ7UBInIJ+2P8tl5Vk=
X-Received: by 2002:adf:dccc:: with SMTP id x12mr44401188wrm.241.1600521603398;
 Sat, 19 Sep 2020 06:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200918123047.23682-1-samuli.piippo@qt.io>
In-Reply-To: <20200918123047.23682-1-samuli.piippo@qt.io>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Sat, 19 Sep 2020 08:19:54 -0500
Message-ID: <CAJdd5GaAMNx5z-E5+Kntxdbu9W+pnxB30fNQbQp=DE81Jxd0cA@mail.gmail.com>
Subject: Re: [meta-mingw][PATCH] ninja: configure for mingw platform
To: Samuli Piippo <samuli.piippo@qt.io>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a03e1905afaa7956"

--000000000000a03e1905afaa7956
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 18, 2020, 7:30 AM Samuli Piippo <samuli.piippo@qt.io> wrote:

> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
>

Thanks! Can you add this to core-image-mingw-sdktest to test it doesn't
regress? Bonus points for writing a runtime test for it if there isn't one
already

---
>  recipes-devtools/ninja/ninja_%.bbappend | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-devtools/ninja/ninja_%.bbappend
>
> diff --git a/recipes-devtools/ninja/ninja_%.bbappend
> b/recipes-devtools/ninja/ninja_%.bbappend
> new file mode 100644
> index 0000000..e7ddb4d
> --- /dev/null
> +++ b/recipes-devtools/ninja/ninja_%.bbappend
> @@ -0,0 +1,8 @@
> +do_compile_mingw32() {
> +        python3 ./configure.py --platform mingw
> +        ninja
> +}
> +
> +do_install_mingw32() {
> +        install -D -m 0755  ${S}/ninja.exe ${D}${bindir}/ninja.exe
> +}
> --
> 2.17.1
>
>

--000000000000a03e1905afaa7956
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Sep 18, 2020, 7:30 AM Samuli Piippo &lt;<a hre=
f=3D"mailto:samuli.piippo@qt.io" target=3D"_blank" rel=3D"noreferrer">samul=
i.piippo@qt.io</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Signe=
d-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">samuli.piippo@qt.io</a>&gt;<br></bl=
ockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks! =
Can you add this to core-image-mingw-sdktest to test it doesn&#39;t regress=
? Bonus points for writing a runtime test for it if there isn&#39;t one alr=
eady</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
---<br>
=C2=A0recipes-devtools/ninja/ninja_%.bbappend | 8 ++++++++<br>
=C2=A01 file changed, 8 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/ninja/ninja_%.bbappend<br>
<br>
diff --git a/recipes-devtools/ninja/ninja_%.bbappend b/recipes-devtools/nin=
ja/ninja_%.bbappend<br>
new file mode 100644<br>
index 0000000..e7ddb4d<br>
--- /dev/null<br>
+++ b/recipes-devtools/ninja/ninja_%.bbappend<br>
@@ -0,0 +1,8 @@<br>
+do_compile_mingw32() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 python3 ./configure.py --platform mingw<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ninja<br>
+}<br>
+<br>
+do_install_mingw32() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -D -m 0755=C2=A0 ${S}/ninja.exe ${D}${=
bindir}/ninja.exe<br>
+}<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div></div></div>

--000000000000a03e1905afaa7956--
