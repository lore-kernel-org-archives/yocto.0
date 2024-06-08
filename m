Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3490C25B76
	for <webhook@archiver.kernel.org>; Sat,  8 Jun 2024 10:24:16 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.4010.1717842254165995561
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Jun 2024 03:24:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R1/hc1gc;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eaccc097e2so30951341fa.0
        for <yocto@lists.yoctoproject.org>; Sat, 08 Jun 2024 03:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717842252; x=1718447052; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vjSk+5G25owhvTKxZDj3/A/wWSj5S6jsDLK+92sAk8s=;
        b=R1/hc1gc7nZvU54ZF2yWtGc/5hKJvuf9b2J6pg3Ku5x6Qnwi5X+t4VUnR3sheMCKOZ
         DlpSeoncNd+8D7+HwnjZIcDsdLjgQWVrwcYBYDyT2ECBkLJo0FbzAfBW8jk5I4d58UnI
         FYDrYGdMNfRzsj/zwcnz4dx0Gt+V/dnidNijvmg7pDf0xC76oIr/D3FvoKnq50RxGy7f
         5GTPROUvAOTY+rIvexjzam+PJ0sQudepzF6lm8Mv+yeweLMnQ4FHIORaMg3q+eaFL0bp
         7dqCONjzRKMv1Vu4oUcJoPpHBZTqRad2aOcQZx5sO5kmZG4t7DkVZMCIV/ZhMtjMg6MO
         g+/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717842252; x=1718447052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjSk+5G25owhvTKxZDj3/A/wWSj5S6jsDLK+92sAk8s=;
        b=Vr1Xen9iYpFqntBWa1dNUSeKXgiCVJSsXhW5ClzIECBUrXGMvZrSRax6GC4fIX1AY3
         KJpRYyXpfLVkWiBEbIUak6JxI/9nnkY8O4yMpmxNR6IIDYrAp+2Qp+O4k0wG6QdHK9pb
         J1SOn9GAL9kj+XsCg6l8HqsR5VaGzOvWczyjfEaOaG4+UmWkKH26Vt2gQry8HXy2KWFh
         hdJ59Yt+GZsvol2KNkuoGL5MijJTGD34lbzKYgXWsxcKHSxy/dX+XpD4RWkTvZAguvoz
         JnvwQ0oNjMDSovXYgxAnJ1zJbzV3a4Iob2rPcshw1EI0ZPUiJy/ran6m6u9VXZXtgHSB
         xgXg==
X-Gm-Message-State: AOJu0YyJ0SgLdGB6IiEvLH6I/2oBSz1bqa74sgQO/DQonXcu2Y8WpUQO
	CeyL6zV78Np37kHMmG7mv9eAen2Lp0M0EDsiN+TxDJj55vXzb+m9c/2wEZr2ytgy1CHeVcvECE/
	H8dy93u3kRUs2cP1KetV9vCUAvrc=
X-Google-Smtp-Source: AGHT+IH/V76+xeEYFNoDweBgPrgGG8juhHLmls7PZrRq8pOZLYXOHjWLzBdajFDkKMO4QOX+igosg5hj1QN2KY68NoU=
X-Received: by 2002:a05:6512:308b:b0:51e:41a1:4d5 with SMTP id
 2adb3069b0e04-52bb9f63763mr4246625e87.9.1717842251729; Sat, 08 Jun 2024
 03:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9WxSLVHsXcUbwA2xEME8e_qQ6=ygBvpOLukc1TvAb2mw@mail.gmail.com>
 <7313.1717670469256332062@lists.yoctoproject.org>
In-Reply-To: <7313.1717670469256332062@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 8 Jun 2024 12:24:00 +0200
Message-ID: <CANNYZj9qzDmbO8=MG1KCFd5WUWs2DCDyNeXTjWkBSLuaM+Kbrw@mail.gmail.com>
Subject: Re: [yocto] Bad lib symlink in Host SDK
To: lukas.weiss@janitza.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000031d7b4061a5e51c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Jun 2024 10:24:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63298

--00000000000031d7b4061a5e51c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You should open a ticket with eudev though or submit a patch there.

Alex

On Thu 6. Jun 2024 at 12.41, Lukas Wei=C3=9F via Lists.Yoctoproject.Org
<lukas.weiss=3Djanitza.de@lists.yoctoproject.org> wrote:

> Sorry, was busy with something else.
>
> Thanks for the hint. I think, i found the reason: The Links is already
> broken on install. Its part of the Autotools Install of the eudev project
> (src/libudev/Makefile.in):
>
> install-exec-hook:
>     libname=3Dlibudev.so; if test "$(libdir)" !=3D "$(rootlibdir)"; then =
\
>         $(MKDIR_P) $(DESTDIR)$(rootlibdir) && \
>         so_img_name=3D$$(readlink $(DESTDIR)$(libdir)/$$libname) && \
>         so_img_rel_target_prefix=3D$$(echo $(libdir) | sed
> 's,\(^/\)\?[^/]\+,..,g') && \
>         $(LN_S) -f $$so_img_rel_target_prefix$(rootlibdir)/$$so_img_name
> $(DESTDIR)$(libdir)/$$libname && \
>         mv $(DESTDIR)$(libdir)/$$libname.* $(DESTDIR)$(rootlibdir); \
>     fi
>
> In Case of nativesdk, this leads to bad results, as all of these paths a
> prefixed with default SDK path (/opt/plat_sdk/sysroots/x86_64-platsdk-lin=
ux
> in my case):
>
> libname=3Dlibudev.so; if test
> "/opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib" !=3D
> "/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib"; then \
>   /home/admin/workspaces/yocto/build/tmp/hosttools/mkdir -p
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/l=
ib
> && \
>   so_img_name=3D$(readlink
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname)
> && \
>   so_img_rel_target_prefix=3D$(echo
> /opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib | sed
> 's,\(^/\)\?[^/]\+,..,g') && \
>   ln -s -f
> $so_img_rel_target_prefix/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib/=
$so_img_name
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname
> && \
>   mv
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname.*
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/l=
ib;
> \
> fi
>
> That path seems to be replaced in all symlinks when SDK is installed to a
> different location than default - thats the reason for the individual bad
> symlinks.
> As a workaround i just replace the symlink with the correct one. This is
> very dirty, but it works and i do not have to patch eudev:
>
> do_install:append:class-nativesdk() {
>     # Workaround to fix libudev.so symlink in nativesdk
>     ln -s -f ../../lib/$(basename $(readlink -f ${D}${libdir}/libudev.so)=
)
> ${D}${libdir}/libudev.so.new
>     rm -f ${D}${libdir}/libudev.so
>     mv ${D}${libdir}/libudev.so.new ${D}${libdir}/libudev.so
> }
>
>
> Thanks for help!

--00000000000031d7b4061a5e51c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You should open a ticket with eudev though or submit a pa=
tch there.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu 6. Jun 2024 at 12.41, Lukas Wei=C3=9F via <a href=3D"http://Lists.Yoctop=
roject.Org">Lists.Yoctoproject.Org</a> &lt;lukas.weiss=3D<a href=3D"mailto:=
janitza.de@lists.yoctoproject.org">janitza.de@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;b=
order-left-color:rgb(204,204,204)"><p>Sorry, was busy with something else.=
=C2=A0</p>
<p>Thanks for the hint. I think, i found the reason: The Links is already b=
roken on install. Its part of the Autotools Install of the eudev project (s=
rc/libudev/Makefile.in):</p>
<blockquote>
<p>install-exec-hook:<br>=C2=A0 =C2=A0 libname=3Dlibudev.so; if test &quot;=
$(libdir)&quot; !=3D &quot;$(rootlibdir)&quot;; then \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $(MKDIR_P) $(DESTDIR)$(rootlibdir) &amp;&amp; \<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 so_img_name=3D$$(readlink $(DESTDIR)$(libdir)/$$libname) &am=
p;&amp; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 so_img_rel_target_prefix=3D$$(echo=
 $(libdir) | sed &#39;s,\(^/\)\?[^/]\+,..,g&#39;) &amp;&amp; \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 $(LN_S) -f $$so_img_rel_target_prefix$(rootlibdir)/$$s=
o_img_name $(DESTDIR)$(libdir)/$$libname &amp;&amp; \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 mv $(DESTDIR)$(libdir)/$$libname.* $(DESTDIR)$(rootlibdir); \<br=
>=C2=A0 =C2=A0 fi</p>
</blockquote>
<p>In Case of nativesdk, this leads to bad results, as all of these paths a=
 prefixed with default SDK path (/opt/plat_sdk/sysroots/x86_64-platsdk-linu=
x in my case):</p>
<blockquote>
<p>libname=3Dlibudev.so; if test &quot;/opt/plat_sdk/sysroots/x86_64-platsd=
k-linux/usr/lib&quot; !=3D &quot;/opt/plat_sdk/sysroots/x86_64-platsdk-linu=
x/lib&quot;; then \<br>=C2=A0 /home/admin/workspaces/yocto/build/tmp/hostto=
ols/mkdir -p /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-p=
latsdk-linux/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-plat=
sdk-linux/lib &amp;&amp; \<br>=C2=A0 so_img_name=3D$(readlink /home/admin/w=
orkspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linux/nativesdk-eud=
ev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib/$libname=
) &amp;&amp; \<br>=C2=A0 so_img_rel_target_prefix=3D$(echo /opt/plat_sdk/sy=
sroots/x86_64-platsdk-linux/usr/lib | sed &#39;s,\(^/\)\?[^/]\+,..,g&#39;) =
&amp;&amp; \<br>=C2=A0 ln -s -f $so_img_rel_target_prefix/opt/plat_sdk/sysr=
oots/x86_64-platsdk-linux/lib/$so_img_name /home/admin/workspaces/yocto/bui=
ld/tmp/work/x86_64-nativesdk-platsdk-linux/nativesdk-eudev/3.2.14/image/opt=
/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib/$libname &amp;&amp; \<br>=
=C2=A0 mv /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-plat=
sdk-linux/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk=
-linux/usr/lib/$libname.* /home/admin/workspaces/yocto/build/tmp/work/x86_6=
4-nativesdk-platsdk-linux/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroot=
s/x86_64-platsdk-linux/lib; \<br>fi</p>
</blockquote>
<p><span style=3D"background-color:var(--light-mode-body-color)">That path =
seems to be replaced in all symlinks when SDK is installed to a different l=
ocation than default - thats the reason for the individual bad symlinks.<br=
>As a workaround i just replace the symlink with the correct one. This is v=
ery dirty, but it works and i do not have to patch eudev:</span></p>
<blockquote>
<p><span style=3D"background-color:var(--light-mode-body-color)">do_install=
:append:class-nativesdk() {<br>=C2=A0 =C2=A0 # Workaround to fix libudev.so=
 symlink in nativesdk<br>=C2=A0 =C2=A0 ln -s -f ../../lib/$(basename $(read=
link -f ${D}${libdir}/libudev.so)) ${D}${libdir}/libudev.so.new<br>=C2=A0 =
=C2=A0 rm -f ${D}${libdir}/libudev.so<br>=C2=A0 =C2=A0 mv ${D}${libdir}/lib=
udev.so.new ${D}${libdir}/libudev.so<br>}<br></span></p>
</blockquote>
<br>Thanks for help!
</blockquote></div></div>

--00000000000031d7b4061a5e51c7--

