Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com [209.85.222.68])
 by mx.groups.io with SMTP id smtpd.web12.1008.1597271333971091438
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 15:28:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TO7wRjuM;
 spf=pass (domain: gmail.com, ip: 209.85.222.68, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f68.google.com with SMTP id v20so1076739ual.4
        for <yocto@lists.yoctoproject.org>; Wed, 12 Aug 2020 15:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wQl9F8skyUEBL3TwdV+YC+tPGQ82ArpYHy0r0z8jXd8=;
        b=TO7wRjuMm4IvmrEbgn4kbQYZOKhig6g4UsG8CKrZ2edbN5SYIs8mYdcfH22ac/Kl4V
         7bnYDR+YqUIkB1rUKUnfbCZRNKZ8MdBMLO4VKIl6oMm0v5jmZKFUI1ZyUoNO6sU8XG0P
         +VBcpcAwqacHcNYVEwrJzwzn+fkJa5t+4e8G0d7pscyscV5tqJUIHxdgjf0ekhPctkHO
         q6ZRwPzHqSSF7wgUEwN8gWy4liVFyiiCWKwIGcJje96amlC2TLcZ7vO00qCMn0XWoWIz
         8qGKBNRc5iMdGuQMiNUgWu5im4uHyjtKZjaR4IfMaupHWw0rb7EbwhuvM0YECBV65LLE
         7wsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wQl9F8skyUEBL3TwdV+YC+tPGQ82ArpYHy0r0z8jXd8=;
        b=CT+0DPLw4jiXcaXx0djBeCgRponPz0qSGEV3Jnx/VPUZWYtlGZ899YfDTWPtBSvwnC
         mysDURlFHPUeICDhkd+Gtog+r3kk+2sTv4+49ZBDaCOmA/ganF7arGhv6zB8j4B92rxE
         yXkQInU3HXRcSfADK6aDR1JMP6bnzIv5Jj5phoqq7KLybHNa/TB+ii5GFrREZdTvdtM7
         ksumVZJ15mUSw7YG8HCGVDkdjW3MBvEzB+d4nNluSMyMf84BEG9UHDfvyhFtc4UpEfbA
         a0AJpDQZyME1XntlK1HWdZDIXfXXlaw4Z3LKfjYRY6h1YbwVsYXjWPCsxwjgtSD8M8Ja
         G9iA==
X-Gm-Message-State: AOAM531uHDXOW8mT+6JZJ8wO3UVQwMDfO62P+JsvUZvAV3UuPGrSM5Qy
	3DKLyhgpJ4LKkTrCR2NKOr5RtC9wwD9x/fJhUj67wA==
X-Google-Smtp-Source: ABdhPJxNHraE1+X7lnaQaMfWfM+5TSS0lvfrDbU2WufDn/x29chjFaTQyhznEBdxYwDG2cNIxutv4ucPySj4JjiD0pU=
X-Received: by 2002:ab0:1305:: with SMTP id g5mr1127279uae.93.1597271332911;
 Wed, 12 Aug 2020 15:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <1597266150-3500-1-git-send-email-chandana.kalluri@xilinx.com>
 <CANNYZj-4r-CnZyh383ARSTxaQYWKfw7qhRP3LZG5xhk7gunqOQ@mail.gmail.com> <MN2PR02MB59346EBD65A2FADF3093C182B0420@MN2PR02MB5934.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB59346EBD65A2FADF3093C182B0420@MN2PR02MB5934.namprd02.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 13 Aug 2020 00:28:41 +0200
Message-ID: <CANNYZj9dUGtzF640WiZO3Js+yTr3aEMrXz6kf4gAE7UbB0pDYw@mail.gmail.com>
Subject: Re: [yocto] [poky][master][PATCH] qemu.inc: Use virtual/libgl instead of mesa
To: Chandana Kalluri <ckalluri@xilinx.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000687c6e05acb5b614"

--000000000000687c6e05acb5b614
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right, I agree with that. Then the patch is fine, but please send it to the
correct list: openembedded-core@lists.openembedded.org

Alex


On Thu, 13 Aug 2020 at 00:19, Chandana Kalluri <ckalluri@xilinx.com> wrote=
:

> I agree its possible for virgl and qemu to not be tested with other libg=
l
> providers other than mesa.
>
> But I also think mesa shouldn=E2=80=99t be hardcoded within the two reci=
pes and
> should use virtual/libgl so as to provide the users with the flexibility=
 to
> specify something other than mesa.
>
> If the recipes fail for using something other than mesa, it=E2=80=99s st=
ill the
> users choice .
>
>
>
> Thanks,
>
> Chandana
>
>
>
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Wednesday, August 12, 2020 2:32 PM
> *To:* Chandana Kalluri <ckalluri@xilinx.com>
> *Cc:* yocto@lists.yoctoproject.org; Chandana Kalluri <ckalluri@xilinx.co=
m>
> *Subject:* Re: [yocto] [poky][master][PATCH] qemu.inc: Use virtual/libgl
> instead of mesa
>
>
>
> Virgl is not verified with anything else than mesa, and will almost
> certainly fail. And so does qemu.
>
>
>
> I think you should rather remove glx and virglrenderer from qemu
> PACKAGECONFIG, so that mesa is not pulled in at all.
>
>
>
> Alex
>
>
>
> On Wed, 12 Aug 2020 at 23:02, Chandana kalluri <ckalluri@xilinx.com>
> wrote:
>
> If there are multiple providers of virtual/libgl and mesa is not the
> default
> provider, the recipe compilation fails.  Use virtual/libgl to pick the
> default
> provider.
>
> Signed-off-by: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
> ---
>  meta/recipes-devtools/qemu/qemu.inc                        | 2 +-
>  meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-devtools/qemu/qemu.inc
> b/meta/recipes-devtools/qemu/qemu.inc
> index b1c822b..dada4b8 100644
> --- a/meta/recipes-devtools/qemu/qemu.inc
> +++ b/meta/recipes-devtools/qemu/qemu.inc
> @@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] =3D
> "--enable-nettle,--disable-nettle,nettle"
>  PACKAGECONFIG[libusb] =3D "--enable-libusb,--disable-libusb,libusb1"
>  PACKAGECONFIG[fdt] =3D "--enable-fdt,--disable-fdt,dtc"
>  PACKAGECONFIG[alsa] =3D "--audio-drv-list=3D'oss alsa',,alsa-lib"
> -PACKAGECONFIG[glx] =3D "--enable-opengl,--disable-opengl,mesa"
> +PACKAGECONFIG[glx] =3D "--enable-opengl,--disable-opengl,virtual/libgl"
>  PACKAGECONFIG[lzo] =3D "--enable-lzo,--disable-lzo,lzo"
>  PACKAGECONFIG[numa] =3D "--enable-numa,--disable-numa,numactl"
>  PACKAGECONFIG[gnutls] =3D "--enable-gnutls,--disable-gnutls,gnutls"
> diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> index 29b1262..5282119 100644
> --- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> +++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> @@ -8,7 +8,7 @@ HOMEPAGE =3D "https://virgil3d.github.io/"
>  LICENSE =3D "MIT"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc81c08eeefd9418fca8f88309a76=
db10"
>
> -DEPENDS =3D "libdrm mesa libepoxy"
> +DEPENDS =3D "libdrm virtual/libgl libepoxy"
>  SRCREV =3D "7d204f3927be65fb3365dce01dbcd04d447a4985"
>  SRC_URI =3D "git://anongit.freedesktop.org/virglrenderer \
>
> file://0001-gallium-Expand-libc-check-to-be-platform-OS-check.patch \
> --
> 2.7.4
>
>=20
>
>

--000000000000687c6e05acb5b614
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right, I agree with that. Then the patch is fine, but=
 please send it to the correct list: <a href=3D"mailto:openembedded-core@li=
sts.openembedded.org">openembedded-core@lists.openembedded.org</a></div><di=
v><br></div><div>Alex<br></div><div dir=3D"ltr"><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 13 Aug 2020 at =
00:19, Chandana Kalluri &lt;<a href=3D"mailto:ckalluri@xilinx.com">ckalluri=
@xilinx.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2329853978495325207WordSection1">
<p class=3D"MsoNormal">I agree its possible for virgl and qemu to not be t=
ested with other libgl providers other than mesa.<u></u><u></u></p>
<p class=3D"MsoNormal">But I also think mesa shouldn=E2=80=99t be hardcode=
d within the two recipes and should use virtual/libgl so as to provide the =
users with the flexibility to specify something other than mesa.
<u></u><u></u></p>
<p class=3D"MsoNormal">If the recipes fail for using something other than =
mesa, it=E2=80=99s still the users choice .<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Chandana<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bor=
der-style:none none none solid;border-width:medium medium medium 1.5pt;padd=
ing:0in 0in 0in 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;bord=
er-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in=
">
<p class=3D"MsoNormal"><b>From:</b> Alexander Kanavin &lt;<a href=3D"mailt=
o:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; =
<br>
<b>Sent:</b> Wednesday, August 12, 2020 2:32 PM<br>
<b>To:</b> Chandana Kalluri &lt;<a href=3D"mailto:ckalluri@xilinx.com" tar=
get=3D"_blank">ckalluri@xilinx.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a>; Chandana Kalluri &lt;<a href=3D"mailto=
:ckalluri@xilinx.com" target=3D"_blank">ckalluri@xilinx.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] [poky][master][PATCH] qemu.inc: Use virtual/li=
bgl instead of mesa<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Virgl is not verified with anything else than mesa,=
 and will almost certainly fail. And so does qemu.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I think you should rather remove glx and virglrende=
rer from qemu PACKAGECONFIG, so that mesa is not pulled in at all.<u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 12 Aug 2020 at 23:02, Chandana kalluri &lt;=
<a href=3D"mailto:ckalluri@xilinx.com" target=3D"_blank">ckalluri@xilinx.co=
m</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor r=
gb(204,204,204);border-style:none none none solid;border-width:medium mediu=
m medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal">If there are multiple providers of virtual/libgl an=
d mesa is not the default<br>
provider, the recipe compilation fails.=C2=A0 Use virtual/libgl to pick th=
e default<br>
provider.<br>
<br>
Signed-off-by: Sai Hari Chandana Kalluri &lt;<a href=3D"mailto:chandana.ka=
lluri@xilinx.com" target=3D"_blank">chandana.kalluri@xilinx.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-devtools/qemu/qemu.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" target=3D"_blank">virglrenderer_0.8.2.bb</a> | 2 +-<br>
=C2=A02 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/q=
emu/qemu.inc<br>
index b1c822b..dada4b8 100644<br>
--- a/meta/recipes-devtools/qemu/qemu.inc<br>
+++ b/meta/recipes-devtools/qemu/qemu.inc<br>
@@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] =3D &quot;--enable-nettle,--disa=
ble-nettle,nettle&quot;<br>
=C2=A0PACKAGECONFIG[libusb] =3D &quot;--enable-libusb,--disable-libusb,lib=
usb1&quot;<br>
=C2=A0PACKAGECONFIG[fdt] =3D &quot;--enable-fdt,--disable-fdt,dtc&quot;<br=
>
=C2=A0PACKAGECONFIG[alsa] =3D &quot;--audio-drv-list=3D&#39;oss alsa&#39;,=
,alsa-lib&quot;<br>
-PACKAGECONFIG[glx] =3D &quot;--enable-opengl,--disable-opengl,mesa&quot;<=
br>
+PACKAGECONFIG[glx] =3D &quot;--enable-opengl,--disable-opengl,virtual/lib=
gl&quot;<br>
=C2=A0PACKAGECONFIG[lzo] =3D &quot;--enable-lzo,--disable-lzo,lzo&quot;<br=
>
=C2=A0PACKAGECONFIG[numa] =3D &quot;--enable-numa,--disable-numa,numactl&q=
uot;<br>
=C2=A0PACKAGECONFIG[gnutls] =3D &quot;--enable-gnutls,--disable-gnutls,gnu=
tls&quot;<br>
diff --git a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglre=
nderer_0.8.2.bb" target=3D"_blank">virglrenderer_0.8.2.bb</a> b/meta/recipe=
s-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.8.2.bb" target=
=3D"_blank">virglrenderer_0.8.2.bb</a><br>
index 29b1262..5282119 100644<br>
--- a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" target=3D"_blank">virglrenderer_0.8.2.bb</a><br>
+++ b/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" target=3D"_blank">virglrenderer_0.8.2.bb</a><br>
@@ -8,7 +8,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://virgil3d.github.io/"=
 target=3D"_blank">https://virgil3d.github.io/</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;<a>file://COPYING;md5=3Dc81c08eeefd9418fc=
a8f88309a76db10</a>&quot;<br>
<br>
-DEPENDS =3D &quot;libdrm mesa libepoxy&quot;<br>
+DEPENDS =3D &quot;libdrm virtual/libgl libepoxy&quot;<br>
=C2=A0SRCREV =3D &quot;7d204f3927be65fb3365dce01dbcd04d447a4985&quot;<br>
=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://anongit.freedesktop.org/vi=
rglrenderer" target=3D"_blank">anongit.freedesktop.org/virglrenderer</a> \<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a>
file://0001-gallium-Expand-libc-check-to-be-platform-OS-check.patch</a> \<=
br>
-- <br>
2.7.4<br>
<br>
<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000687c6e05acb5b614--
