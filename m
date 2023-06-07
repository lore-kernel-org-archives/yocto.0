Return-Path: <huykhacnguyen1983@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C047C7EE29
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 01:58:17 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.4366.1686103088676486345
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jun 2023 18:58:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=hQdlONAl;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: huykhacnguyen1983@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-9786c67ec32so246840466b.1
        for <yocto@lists.yoctoproject.org>; Tue, 06 Jun 2023 18:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686103087; x=1688695087;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EdnnF9QhxdKEgLzPzApoZbrP5L8XRzBqLrd88HGDffg=;
        b=hQdlONAlDio7YejFavICskBpSzPnCsqhPYIVdYs3NIGXPoj6yvEBuMytBSWFjzDj8L
         ALt3CxGDATDA2Ib+XxnLBSWf72N70JhL3EhgY/QyU7yWAgi8xs0AmnENItOpsMgrDbPi
         9ZQrCF6y4J/F6hp6xpKm4ImruVgMIlk2XMq8bC5C7Vp3E2c3esfW9X7cdBtN5XzzO3q4
         hLhznkj3zgsQKbFzoX9P0NrIUyJDRTkpIj3HxbCmJ9rTxWxnnzYydJzVZxbb+peHOrAU
         n+A1j2DIoYlIm023DqR1MJVVn1hG1GZPrFqRIIB3CocebJ1HMlHcRt2XV+VMg4FwmWsi
         YPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686103087; x=1688695087;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdnnF9QhxdKEgLzPzApoZbrP5L8XRzBqLrd88HGDffg=;
        b=NQ+8DxSl5VY3tF4RoajaDiV9PZ5prTzTBgiuDiAQP0i91lqMFjc08AnYcWXiiPS8A8
         Aq6jGrT0BIs6oixHxQWkrg300I9CvegKcxrnLGCdWMq872KWyGuYj2AViU3MJKP1jLTr
         V1El1+tamL6J8lJJnBNnRNk0qxDzjivah3sWVH3l1YcVt0ABZSxNZ5dcu6qJe6t3NvWg
         DhhFlQG5kyx4BdH+udrh+gtIRszHU4FMO6msQzQ7oA1anlxzrgLyoF34m7suXUtgO42A
         yubmkyFLgpxJEa8URbh7yGJ/5wtyUzJ5853k8otDKlWN7sjRskk1blpnufUnFxdGCW4D
         x9ww==
X-Gm-Message-State: AC+VfDz8z8ifWAFuK5NqWsbsNLojnn7i3POSeobWZZyAlus8XuAm8X+O
	pnGvfSS6fx32zKdSgdD5HpV8vPGlLDJVaCJxA8I=
X-Google-Smtp-Source: ACHHUZ66xxz/X5qqEL8E7vX7/DpHkiaX2J7+X/QAw9vYspGIafRJaA4c75q070YPpLT/YJ25BhdHgTmGGnE2GnlE/BA=
X-Received: by 2002:a17:907:60cc:b0:96f:136e:eadd with SMTP id
 hv12-20020a17090760cc00b0096f136eeaddmr4516139ejc.66.1686103086847; Tue, 06
 Jun 2023 18:58:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+gF+GmO=MJWUzhpmw5J7DoixHkOOcBqNr2f7A2LZe_+FUnOcQ@mail.gmail.com>
 <0028e972a327c914b1cb7979ba8fd82bb2e103a4.camel@intel.com>
In-Reply-To: <0028e972a327c914b1cb7979ba8fd82bb2e103a4.camel@intel.com>
From: huy nguyen <huykhacnguyen1983@gmail.com>
Date: Wed, 7 Jun 2023 08:57:55 +0700
Message-ID: <CA+gF+G=6TbR_iVtdDh+MKDb32FcFTUBrFppLYoUj8qyqQ1_X9g@mail.gmail.com>
Subject: Re: [yocto][chromium] Need support to enable intel VAAPI with Chromium
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008bd94a05fd807761"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 01:58:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60194

--0000000000008bd94a05fd807761
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anuj,

Thank you for the quick response with positive information. It makes me
feel warm about our community.

1- "This doesn't look like complete error log. A complete log would have
helped."
Do you mean a complete run log from chromium? I will submit a full running
log when I run chromium soon.

2- Regarding  the suggestion in
https://github.com/intel/media-driver/issues/1498
 I reviewed that suggestion during my self-research for a solution. It
suggests using chromium r107 and adding
--disable-features=3DUseChromeOSDirectVideoDecoder
 However, I do not know which chromium recipe version for that r107. For
the flag UseChromOSDirectVideoDecoder, I already have that.

Thank you,
Huy


On Wed, Jun 7, 2023 at 8:49=E2=80=AFAM Mittal, Anuj <anuj.mittal@intel.com>=
 wrote:

> On Wed, 2023-06-07 at 08:24 +0700, HuyK wrote:
> > Hi all,
> >
> > I am working on Intel J4125 platform with these meta layers:
> >  - poky: master branch
> >  - meta-intel: master branch
> >  - meta-browser: master branch
> >
> > 1/ I build chromium by chromium-ozone-wayland_111.0.5563.147.bb
> > recipe with adding "use-vaapi" and "proprietary-codecs" to
> > PACKAGECONFI in chromium-gn.inc
> > That chromium did not call intel VAAPI functions, but I see it
> > loads iHD_drv_video.so at runtime.
> >
> > 2/ Then I research to find this link about applying patches to
> > support VAAPI in
> > chromium https://aur.archlinux.org/packages/chromium-wayland-vaapi
> >    + 0001-ozone-wayland-add-VA-API-support.patch
> >    + vaapi-add-av1-support.patch
> >    + use-oauth2-client-switches-as-default.patch
> > This chromium loads iHD_drv_video.so and calls Intel VAAPI APIs;
> > however, chromium reports these errors when I open to play an H264
> > video so that HW Acceleration is not working
> >
> >  [13436:13436:0606/150528.263552:ERROR:vaapi_wrapper.cc(2399)]
> > vaCreateSurfaces (import mode) failed, VA error: resource allocation
> > failed
> > [13436:13436:0606/150528.263789:ERROR:vaapi_picture_native_pixmap_ozo
> > ne.cc(73)] Failed creating VASurface for NativePixmap
> > [13436:13436:0606/150528.264843:ERROR:vaapi_wrapper.cc(2399)]
> > vaCreateSurfaces (import mode) failed, VA error: resource allocation
> > failed
> > [13436:13436:0606/150528.265073:ERROR:vaapi_picture_native_pixmap_ozo
> > ne.cc(73)] Failed creating VASurface for NativePixmap
> > [13436:13436:0606/150528.265294:VERBOSE1:vaapi_video_decode_accelerat
> > or.cc(142)] NotifyError(): Notifying of error 4
>
> This doesn't look like complete error log. A complete log would have
> helped.
>
> >
> > So far, I could not find a solution to fix chromium errors and I am
> > new to chromium, intel vaapi, libva debugging.
> >
> > Please support how to debug the errors there or guidance on how to
> > officially build chromium with intel VAAPI support in Yocto?
>
> This doesn't seem to be Yocto related. This looks very similar so
> please try the suggestions here:
>
> https://github.com/intel/media-driver/issues/1498
>
> Thanks,
>
> Anuj
>

--0000000000008bd94a05fd807761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anuj,<div><br></div><div>Thank you for the quick respon=
se with positive=C2=A0information. It makes me feel warm about our communit=
y.</div><div><br></div><div>1- &quot;This doesn&#39;t look like complete er=
ror log. A complete log would have helped.&quot;</div><div>Do you mean a co=
mplete run log from chromium? I will submit a full running log when I run c=
hromium soon.</div><div><br></div><div>2- Regarding=C2=A0 the suggestion in=
=C2=A0<a href=3D"https://github.com/intel/media-driver/issues/1498" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/intel/media-driver/issues/=
1498</a></div><div>=C2=A0I reviewed that suggestion during my self-research=
 for a solution. It suggests using chromium r107 and adding=C2=A0<span styl=
e=3D"background-color:rgba(175,184,193,0.2);color:rgb(31,35,40);font-family=
:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liber=
ation Mono&quot;,monospace;font-size:11.9px;white-space:break-spaces">--dis=
able-features=3DUseChromeOSDirectVideoDecoder</span></div><div>=C2=A0Howeve=
r, I do not know which chromium recipe version for that r107. For the flag =
UseChromOSDirectVideoDecoder, I already have that.</div><div><br></div><div=
>Thank you,</div><div>Huy</div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 7, 2023 at 8:49=
=E2=80=AFAM Mittal, Anuj &lt;<a href=3D"mailto:anuj.mittal@intel.com">anuj.=
mittal@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Wed, 2023-06-07 at 08:24 +0700, HuyK wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am working on Intel J4125 platform with these meta layers:<br>
&gt; =C2=A0- poky: master branch<br>
&gt; =C2=A0- meta-intel: master branch<br>
&gt; =C2=A0- meta-browser: master branch<br>
&gt; <br>
&gt; 1/ I build chromium by <a href=3D"http://chromium-ozone-wayland_111.0.=
5563.147.bb" rel=3D"noreferrer" target=3D"_blank">chromium-ozone-wayland_11=
1.0.5563.147.bb</a><br>
&gt; recipe with adding &quot;use-vaapi&quot; and &quot;proprietary-codecs&=
quot; to<br>
&gt; PACKAGECONFI in chromium-gn.inc=C2=A0<br>
&gt; That chromium did not call intel VAAPI functions, but I see it<br>
&gt; loads=C2=A0iHD_drv_video.so at runtime.<br>
&gt; <br>
&gt; 2/ Then I research to find this link about applying patches to<br>
&gt; support VAAPI in<br>
&gt; chromium=C2=A0<a href=3D"https://aur.archlinux.org/packages/chromium-w=
ayland-vaapi" rel=3D"noreferrer" target=3D"_blank">https://aur.archlinux.or=
g/packages/chromium-wayland-vaapi</a><br>
&gt; =C2=A0=C2=A0=C2=A0+ 0001-ozone-wayland-add-VA-API-support.patch<br>
&gt; =C2=A0=C2=A0=C2=A0+ vaapi-add-av1-support.patch<br>
&gt; =C2=A0=C2=A0=C2=A0+ use-oauth2-client-switches-as-default.patch<br>
&gt; This chromium loads=C2=A0iHD_drv_video.so and calls Intel VAAPI APIs;<=
br>
&gt; however, chromium reports these errors when I open to play an H264<br>
&gt; video so that HW Acceleration is not working=C2=A0<br>
&gt; <br>
&gt; =C2=A0[13436:13436:0606/150528.263552:ERROR:vaapi_wrapper.cc(2399)]<br=
>
&gt; vaCreateSurfaces (import mode) failed, VA error: resource allocation<b=
r>
&gt; failed<br>
&gt; [13436:13436:0606/150528.263789:ERROR:vaapi_picture_native_pixmap_ozo<=
br>
&gt; ne.cc(73)] Failed creating VASurface for NativePixmap<br>
&gt; [13436:13436:0606/150528.264843:ERROR:vaapi_wrapper.cc(2399)]<br>
&gt; vaCreateSurfaces (import mode) failed, VA error: resource allocation<b=
r>
&gt; failed<br>
&gt; [13436:13436:0606/150528.265073:ERROR:vaapi_picture_native_pixmap_ozo<=
br>
&gt; ne.cc(73)] Failed creating VASurface for NativePixmap<br>
&gt; [13436:13436:0606/150528.265294:VERBOSE1:vaapi_video_decode_accelerat<=
br>
&gt; or.cc(142)] NotifyError(): Notifying of error 4<br>
<br>
This doesn&#39;t look like complete error log. A complete log would have<br=
>
helped.<br>
<br>
&gt; <br>
&gt; So far, I could not find a solution to fix chromium errors and I am<br=
>
&gt; new to chromium,=C2=A0intel vaapi, libva debugging.<br>
&gt; <br>
&gt; Please support how to debug the errors there or guidance on how to<br>
&gt; officially build chromium with intel VAAPI support in Yocto?<br>
<br>
This doesn&#39;t seem to be Yocto related. This looks very similar so<br>
please try the suggestions here:<br>
<br>
<a href=3D"https://github.com/intel/media-driver/issues/1498" rel=3D"norefe=
rrer" target=3D"_blank">https://github.com/intel/media-driver/issues/1498</=
a><br>
<br>
Thanks,<br>
<br>
Anuj<br>
</blockquote></div>

--0000000000008bd94a05fd807761--

