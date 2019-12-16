Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web10.3456.1576477351554893794
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 22:22:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFFspuhC;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: aatreyamit@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id i11so2575529ioi.12
        for <yocto@lists.yoctoproject.org>; Sun, 15 Dec 2019 22:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=mjJvkSB6dc3UdpEHx53pR2EWSOaLiH0/gtjaxpRsOeM=;
        b=pFFspuhCBAzeEIGjaL9uYbJS8PnDSdVRcCx9+CQ2QEYaa/T/o3LuwQO9JtFIcEaoXN
         IO/5ZZiPpB/QwuWpK7c5GTfPYcqoDpyp4kEpGRL3sGI19FHI/Nhx4a21sr1YIvDaUKP8
         Bz5HvdJlSUwIHOAXKk90RVRkQdYZUeJtBu2aEPk2Q9PXTNfqmeJPFj2UP+kgPS4+Me7q
         fnxqMvAf4G2gNnp2wyhYrgykRTTQ/NB0FiXRYin1IIl8pafFX9HNqo1rcoaHii4dRXa2
         Y5qQ2vNvBRDqazVern1BgwzDEHwknvb83bWNqHXre12m5jPrdPBsnCQj3nBQ2bWt1ZCx
         8LOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=mjJvkSB6dc3UdpEHx53pR2EWSOaLiH0/gtjaxpRsOeM=;
        b=LvtKAO2Y0tlJQEOZH9JHrYiAIkHoBrtxMPtE3dkfsrka4YOpKE0+rv3m9w6NKz2twy
         bC6OJ0+1ZPd4FyJ+XGHpmn7jXvXroLcgsLfMJO1eM2hKalNJur6lPh3azLXJOf9//djt
         mF6TkMvC96dJ6sF5fR0Txo9Gn9IsoPOfFUKkOEvHzxeWx7MVp+pvsPBS9CUaLW/fWlMe
         xccaNEsEdK3yjtJDejpdZU5vfMxAHjqUbvZ9S3kxOMh0WsJ6OwK18lp4UnNL3BL/q4/2
         g+OdGh4Ob/OXWtPxJ7BRmMGLcR2Lut13m2CjifRyylSlViBQTnIyoo4dSCD7kLYOGjHx
         sa4w==
X-Gm-Message-State: APjAAAWAURMmKPnVTKH8XfHPk5FBHOdhx4nR/LrAZ/Bd+9mVsW7trHJU
	hbHT4MRMlWbYR4sBf/3QQpIJLeOUtGkYfzIKow1UMg==
X-Google-Smtp-Source: APXvYqwAj/Ie0yPJM7hUlNBQFkFJl50UQRZrZleCD7025Wgfrdgj33J5+OGz7wLXpas9mOXEM2wUlLuPIxCw2dz1Ciw=
X-Received: by 2002:a6b:ab81:: with SMTP id u123mr3310054ioe.214.1576477350790;
 Sun, 15 Dec 2019 22:22:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a92:d64b:0:0:0:0:0 with HTTP; Sun, 15 Dec 2019 22:22:30
 -0800 (PST)
Received: by 2002:a92:d64b:0:0:0:0:0 with HTTP; Sun, 15 Dec 2019 22:22:30
 -0800 (PST)
In-Reply-To: <CAEe7cvBOCpQbEAE0=XrcS8LWxNBqn-XT+LDBi6ZFt8P+PBH-2A@mail.gmail.com>
References: <CAEe7cvAH9c3VQp2rHE01e8h4kMY-ESZ66YeqxE0sCfuoHaxfdQ@mail.gmail.com>
 <CAEe7cvBOCpQbEAE0=XrcS8LWxNBqn-XT+LDBi6ZFt8P+PBH-2A@mail.gmail.com>
From: aatreyamit@gmail.com
Date: Mon, 16 Dec 2019 11:52:30 +0530
Message-ID: <CAEe7cvCvDpXSmPdrYqCkPp1g0N=m7sMKtRUFT=EGwqyhHZWOWA@mail.gmail.com>
Subject: gstreamer bitbake introspection issue
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007d8c500599cc3cc9"

--0000000000007d8c500599cc3cc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am building gstreamer 1.12 for aarch64, with poky and need immediate
help.
bitbake gobject-introspection is success and package is built successfully,
still I get this error on bitbake gstreamer1.0
=C3=97***=C3=97*******=C3=97***************

ERROR: gstreamer1.0-1.12.2-r0 do_configure: Function failed: do_configure
(log file /poky/build/tmp-glibc/work/aarch64-oe-linux/
gstreamer1.0/1.12.2-r0/temp/log.do_configure.14926)
ERROR: Logfile of failure stored in:


/poky/build/tmp-glibc/work/aarch64-oe-linux/gstreamer1.0/1.12.2-r0/temp/
log.do_configure.14926
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64',
'common-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64',
'common-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function delete_pkg_m4_file
| DEBUG: Shell function delete_pkg_m4_file finished
| DEBUG: Executing shell function patch_gtk_doc_makefiles
| DEBUG: Shell function patch_gtk_doc_makefiles finished
| DEBUG: Executing shell function do_configure
| cp: cannot stat '/poky/build/tmp-glibc/work/aarch64-oe-linux/
gstreamer1.0/1.12.2-r0/recipe-sysroot//usr/share/aclocal/introspection.m4=
=E2=80=99:
No such file or directory
| WARNING: /poky/build/tmp-glibc/work/aarch64-oe-linux/
gstreamer1.0/1.12.2-r0/temp/run.do_configure.14926:1 exit 1 /poky/build/tmp=
-
glibc/work/aarch64-oe-linux/gstreamer1.0/1.12.2-r0/recipe-
sysroot//usr/share/aclocal/introspection.m4 /poky/build/tmp-
glibc/work/aarch64-oe-linux/gstreamer1.0/1.12.2-r0/gstreamer-1.12.2/m4'
*************************************

Thanks,
Amit

--0000000000007d8c500599cc3cc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote">Hi,=C2=A0</div><div class=
=3D"gmail_quote" dir=3D"auto">I am building gstreamer 1.12 for aarch64, wit=
h poky and need immediate help.=C2=A0</div><div class=3D"gmail_quote" dir=
=3D"auto">bitbake gobject-introspection is success and package is built suc=
cessfully, still I get this error on bitbake gstreamer1.0</div><div class=
=3D"gmail_quote" dir=3D"auto">=C3=97***=C3=97*******=C3=97***************</=
div><div class=3D"gmail_quote" dir=3D"auto"><blockquote class=3D"quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)"><span>ERROR: gstreamer1.0-1.12.2-r0 do_config=
ure: Function failed: do_configure (log file /poky/build/tmp-<wbr>glibc/wor=
k/aarch64-oe-linux/<wbr>gstreamer1.0/1.12.2-r0/temp/<wbr>log.do_configure.1=
4926)<br>
</span>
<div>ERROR: Logfile of failure stored in:</div></div></div></blockquote></d=
iv></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_=
quote" dir=3D"auto"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div style=3D=
"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><div>/poky/build/tmp-<wbr>glibc/work/aarch64-oe-linux/<wbr>gstreamer1=
.0/1.12.2-r0/temp/<wbr>log.do_configure.14926<br>
</div>
<div>Log data follows:<br>
</div>
<div>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-64&#39;, &#39;a=
rm-common&#39;, &#39;arm-64&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;aarch64-linux&#39;, &#39;common&#39;]<br>
</div>
<div>| DEBUG: Executing shell function autotools_preconfigure<br>
</div>
<div>| DEBUG: Shell function autotools_preconfigure finished<br>
</div>
<div>| DEBUG: Executing python function autotools_aclocals<br>
</div>
<div>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-64&#39;, &#39;a=
rm-common&#39;, &#39;arm-64&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;aarch64-linux&#39;, &#39;common&#39;]<br>
</div>
<div>| DEBUG: Python function autotools_aclocals finished<br>
</div>
<div>| DEBUG: Executing shell function delete_pkg_m4_file<br>
</div>
<div>| DEBUG: Shell function delete_pkg_m4_file finished<br>
</div>
<div>| DEBUG: Executing shell function patch_gtk_doc_makefiles<br>
</div>
<div>| DEBUG: Shell function patch_gtk_doc_makefiles finished<br>
</div>
<div>| DEBUG: Executing shell function do_configure<br>
</div>
<div>| cp: cannot stat &#39;/poky/build/tmp-<wbr>glibc/work/aarch64-oe-linu=
x/<wbr>gstreamer1.0/1.12.2-r0/recipe-<wbr>sysroot//usr/share/aclocal/<wbr>i=
ntrospection.m4=E2=80=99: No such file or
 directory<br>
</div>
<span>| WARNING: /poky/build/tmp-<wbr>glibc/work/aarch64-oe-linux/<wbr>gstr=
eamer1.0/1.12.2-r0/temp/<wbr>run.do_configure.14926:1 exit 1 /poky/build/tm=
p-<wbr>glibc/work/aarch64-oe-linux/<wbr>gstreamer1.0/1.12.2-r0/recipe-<wbr>=
sysroot//usr/share/aclocal/<wbr>introspection.m4
/poky/build/tmp-<wbr>glibc/work/aarch64-oe-linux/<wbr>gstreamer1.0/1.12.2-r=
0/<wbr>gstreamer-1.12.2/m4&#39;</span><br>
</div>******************************<wbr>*******
</div>

</blockquote></div>Thanks,=C2=A0</div><div dir=3D"auto">Amit</div></div>

--0000000000007d8c500599cc3cc9--
