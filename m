Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web12.49327.1597688736241487994
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 11:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LztPmEM7;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id x17so5028851uao.5
        for <yocto@lists.yoctoproject.org>; Mon, 17 Aug 2020 11:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XjHOXLJEnXJ7f1T1FL9EP2Z9pjO+mULeLG3DTRx5WTs=;
        b=LztPmEM7KOxj7eivYgjetF0IGCIzzOCO0LMq/H3PxKVLkr0swD3yj+0imf+sjALGO4
         BZdiJUTVFbtWAA9z1K/wjKrl68aT7Pry33tslLaAKfXxEj5lHLXvfzraYV+69WKhKHo+
         QAqofZXYn68ydiQNcLDZLZGg5qORxG8GGJIKNLqrS84Yn0JPyUIbLMICU0xwa3kO4oV6
         1O5K/KqDynLKdlj2wisvLzZgnlR8u17PIuJxppE4dnn0RYdKHDSjf7Z2k9Y5QuRDaDZD
         02zfGlNUNsuV1Wp5iMGYZhxe53M/WiTy0TiihWyAL9Cw0x+BQS5PwL+f2E7HPtqT+80r
         vmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XjHOXLJEnXJ7f1T1FL9EP2Z9pjO+mULeLG3DTRx5WTs=;
        b=Dpgg4a0i+8GnR5/SgPDEtGvwgxw36WbhYVz66Nj9sh/Y3tRV10uMMvHR7zcQNXNrq0
         3PtBqn6hSYv+VyenjeBq3zPfpO6J3VeE0Y4V3/2iMfDFgKeFoYJN1sXlkdawczY13ucA
         A0G3w8ohu/RHv3SlPu/QM+Bn5Q87xMDnxjlVgIolQHDctCJRd+4tap4rs3VjVpt6j2mR
         ryCvj1SEWc0G3H7qzrL87iDGPK6oDvYHRzGO0Fda4wUmTU1CV/eBIHvkhdskIlMlqDms
         45dWhVqMq/mbORoziAQJqVqdufxljIr57AdwkqrEmuv3ab4tOIt78/IQh1Fr3VeVjIUk
         omPg==
X-Gm-Message-State: AOAM533rq4ffmQAaT3cxGk/vPe22bOLOfMYKdnv+KM0Jcuhm3rk49Ct4
	vitCSB8ipijoCjjiov5RCc7JCa/wp8Pr07w2D/w=
X-Google-Smtp-Source: ABdhPJzMVT6qAtcg8D5bjI+SB9x5SxznA4dFCXqr6FDtuVHRVHb0ImEjkRQ3dCL8G19ZAHxXATY6331WvKhJ/rSEdk4=
X-Received: by 2002:a9f:2c9a:: with SMTP id w26mr5009361uaj.89.1597688735339;
 Mon, 17 Aug 2020 11:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
In-Reply-To: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Aug 2020 20:25:23 +0200
Message-ID: <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
Subject: Re: [yocto] pkg-config dependencies?
To: Rob Prowel <rprowel@comcast.net>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000881b8e05ad16e586"

--000000000000881b8e05ad16e586
Content-Type: text/plain; charset="UTF-8"

You need to add DEPENDS = "libmnl" maybe?

RDEPENDS is needed for runtime things like script interpreters or
supplementary data; plain library dependencies are build-time.

Alex

On Mon, 17 Aug 2020 at 19:14, Rob Prowel <rprowel@comcast.net> wrote:

> I'm trying to add the ipset utility to my arm build so that I can group
> IP/ports for use in tc and netfilter.  I was able to update the vendor
> supplied iptools2 recipe to install tc and iptables, but ipset is a
> fresh recipe, not included in another existing layer.
>
> I'm adding the following in its bb file:
>
> # -----------------------------------------------------------------
> SRC_URI =  "file://ipset-7.6.tar.bz2"
> SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"
>
>
> inherit pkgconfig
>
> S = "${WORKDIR}/ipset-7.6"
>
> RDEPENDS_${PN} += "libmnl"
>
> FILES_${PN} =  ""
> # list will be populated once I know what the package wants to install
>
> do_configure(){
>          ./configure --prefix=/ --host=arm-linuxeabi
> }
>
> do_compile(){
>          make DESTDIR=${D}
> }
>
> do_install(){
>          oe_runmake install DESTDIR=${D}
> }
>
> # -----------------------------------------------------------------
>
> problem is that it depends on libmnl (which already exists as a lower
> layer recipe), and the ipset configure script barfs on pkg-config with
> the following message.
>
> | checking whether ln -s works... yes
> | checking for libmnl... no
> | configure: error: Package requirements (libmnl >= 1) were not met:
> |
> | No package 'libmnl' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables libmnl_CFLAGS
> | and libmnl_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | WARNING: exit code 1 from a shell command.
>
>
> the PKG_CONFIG_PATH variable seems correct under devshell, but there is
> no libmnl.pc file in there.  How do I force libmnl to create and stage a
> proper pkg-config .pc file where it needs to be?
>
>
> 
>

--000000000000881b8e05ad16e586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to add DEPENDS =3D &quot;libmnl&quot; maybe?=
</div><div><br></div><div>RDEPENDS is needed for runtime things like script=
 interpreters or supplementary data; plain library dependencies are build-t=
ime.<br></div><div><br></div><div>Alex<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 17 Aug 2020 at 19:1=
4, Rob Prowel &lt;<a href=3D"mailto:rprowel@comcast.net">rprowel@comcast.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>I&#39;m trying to add the ipset utility to my arm build so that I can grou=
p <br>
IP/ports for use in tc and netfilter.=C2=A0 I was able to update the vendo=
r <br>
supplied iptools2 recipe to install tc and iptables, but ipset is a <br>
fresh recipe, not included in another existing layer.<br>
<br>
I&#39;m adding the following in its bb file:<br>
<br>
# -----------------------------------------------------------------<br>
SRC_URI =3D=C2=A0 &quot;file://ipset-7.6.tar.bz2&quot;<br>
SRC_URI[md5sum] =3D &quot;3a6f5952fd1bcf0eefb9c7c087acbfc9&quot;<br>
<br>
<br>
inherit pkgconfig<br>
<br>
S =3D &quot;${WORKDIR}/ipset-7.6&quot;<br>
<br>
RDEPENDS_${PN} +=3D &quot;libmnl&quot;<br>
<br>
FILES_${PN} =3D=C2=A0 &quot;&quot;<br>
# list will be populated once I know what the package wants to install<br>
<br>
do_configure(){<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0./configure --prefix=3D/ --host=3Darm-li=
nuxeabi<br>
}<br>
<br>
do_compile(){<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make DESTDIR=3D${D}<br>
}<br>
<br>
do_install(){<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0oe_runmake install DESTDIR=3D${D}<br>
}<br>
<br>
# -----------------------------------------------------------------<br>
<br>
problem is that it depends on libmnl (which already exists as a lower <br>
layer recipe), and the ipset configure script barfs on pkg-config with <br=
>
the following message.<br>
<br>
| checking whether ln -s works... yes<br>
| checking for libmnl... no<br>
| configure: error: Package requirements (libmnl &gt;=3D 1) were not met:<=
br>
|<br>
| No package &#39;libmnl&#39; found<br>
|<br>
| Consider adjusting the PKG_CONFIG_PATH environment variable if you<br>
| installed software in a non-standard prefix.<br>
|<br>
| Alternatively, you may set the environment variables libmnl_CFLAGS<br>
| and libmnl_LIBS to avoid the need to call pkg-config.<br>
| See the pkg-config man page for more details.<br>
| WARNING: exit code 1 from a shell command.<br>
<br>
<br>
the PKG_CONFIG_PATH variable seems correct under devshell, but there is <b=
r>
no libmnl.pc file in there.=C2=A0 How do I force libmnl to create and stag=
e a <br>
proper pkg-config .pc file where it needs to be?<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000881b8e05ad16e586--
