Return-Path: <chetan.byalihal@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43C8C04A95
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 17:43:11 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.19599.1664127782739570181
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 10:43:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OXEKzfRm;
 spf=pass (domain: gmail.com, ip: 209.85.128.42,
 mailfrom: chetan.byalihal@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id
 k3-20020a05600c1c8300b003b4fa1a85f8so2547082wms.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 10:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=/YrshaEMmk3S21Qx1E3xEyRaWm2DPp3fnXfH4kE9fyk=;
        b=OXEKzfRm5jwxQVtlgeSLqHPsutPVkmzXKuymGGaH7q09cr06R82Id90wfpb7AvMabr
         fWa35imbLRtLF2IjTqr0bMVHqV3RRPe1oSv45u9NEXx06Bsqtin/2nE64O/abHAnAvEV
         0WL462ZCn0RJz9LCNB7BkSCyIBIirJAWVxOk+PQul3tzXBDnLxZhJ+7qEJKYp93UiOqn
         DqbK+C2R81Ggo93B9U7mP8RFbDnhroUgZFeUxbKErBaoDo8Vk6pkkMbX8uLBeiEVlHHL
         5lP2hxavgwfs20Da01Uu2Q6I/o6HtYPNJhIALRxDTPBT9FPrbZDRiXr4bHdtPfY4IPpC
         XHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=/YrshaEMmk3S21Qx1E3xEyRaWm2DPp3fnXfH4kE9fyk=;
        b=0WuYeobILEBh/FLBmAGs52BMTMkQ2FViBVJ4rvSmm+E1AO3G+tw3zyPuDR2i6EbONm
         okSypJmtKZlvmol9OBPhtmYRvqE+dqjofZfvokVN5auy38f5B+Vc+QcAKJyOe4bxp7ZX
         y5dNXOL0Z1ub4ZNSiuxNEha+ZufkNxOOUPEALzssEWQxTIdpV73OK1/MvTxUTPY2MYPw
         kB27EV3AGCqVA9aJlBd8toNQjKyZiuph5y+raBoX3y+T4QrOB1f7oHdVoXeNjr/JUVTK
         wef3UzzkRwP+/uyAdxSzqRNft1Ju8N1Pfk5vycNac5e3GFz4CWKibFJxUcuHYTbtUJz1
         wS0w==
X-Gm-Message-State: ACrzQf0g5KekhlAT2sVt1JVjhhUSNAcGIqRnw4DuVbeS9VSVQNOfWNLx
	SW/5wptOjSgxcbyK5VzwtjbbzDdtonJ0GNdqFvo=
X-Google-Smtp-Source: 
 AMsMyM5XJB8wIVq3gJiRs4hBIqZJtHvKZwwsre+Ifoit5/Vq3/NdhnN4Mk6vQWfKzC9UmftEPluU3MulS8aHdwkFWCE=
X-Received: by 2002:a7b:cb56:0:b0:3b3:4ad8:9e31 with SMTP id
 v22-20020a7bcb56000000b003b34ad89e31mr12542312wmj.87.1664127780855; Sun, 25
 Sep 2022 10:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
In-Reply-To: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
From: Chetan <chetan.byalihal@gmail.com>
Date: Sun, 25 Sep 2022 23:12:52 +0530
Message-ID: 
 <CA+6q8-6MRhJwcRFpev62TTQqgU7UcqHRK5MAZvSraBtJ4zL8eQ@mail.gmail.com>
Subject: Re: [yocto] meta-swupdate integration with the custom Yocto image
 #dunfell
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003d23c905e983f1f4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 17:43:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58153

--0000000000003d23c905e983f1f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mahendra

I think the below folder structure will work.
.
=E2=94=94=E2=94=80=E2=94=80 swupdate
    =E2=94=9C=E2=94=80=E2=94=80 files
    =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
    =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 defconfig
    =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sw-description
    =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
    =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend




On Sun, 25 Sept, 2022, 11:08 pm Mahendra Sondagar, <
mahendrasondagar08@gmail.com> wrote:

> Hey.. There
> Hope all are doing well
>
> I'm dealing with the swupdate with the my custom Yocto image created for
> STM32MP1 dk1 board
> The intend is, to update the rootfs remotely
>
> I have successfully integrated meta-swupdate layer with the custom Yocto
> image by adding the layers in to bblayer.conf file
> The both layers meta-swupdate & meta-custom are parallel to each-others
>
> To change the flags and setting with the swupdate, i have created the r
> *ecipes-myswupdate* file inside the meta-custom layers
> The content of the recipes-myswupdate are as follows
> .
> =E2=94=94=E2=94=80=E2=94=80 swupdate
>     =E2=94=9C=E2=94=80=E2=94=80 stm32mp1
>     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
>     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 defconfig
>     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sw-description
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
>     =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend
>
>
> The content of the *swupdate_%.bbappend* are as follows
>
>
> -------------------------------------------------------------------------=
-------------
>
> DESCRIPTION =3D "Example recipe generating SWU image"
> SECTION =3D ""
>
> LICENSE =3D ""
>
> # Add all local files to be added to the SWU
> # sw-description must always be in the list.
> # You can extend with scripts or wahtever you need
> SRC_URI +=3D " \
>     file://sw-description \
>     file://09-swupdate-args \
>     file://swupdate.cfg \
>     "
>
> # images to build before building swupdate image
> IMAGE_DEPENDS =3D "core-image-full-cmdline virtual/kernel"
>
> # images and files that will be included in the .swu image
> SWUPDATE_IMAGES =3D "core-image-full-cmdline uImage"
>
> # a deployable image can have multiple format, choose one
> SWUPDATE_IMAGES_FSTYPES[core-image-full-cmdline] =3D ".ubifs"
> SWUPDATE_IMAGES_FSTYPES[uImage] =3D ".bin"
>
> inherit swupdate
>
>
>
> -------------------------------------------------------------------------=
-------------------------------
> I'm building the image by adding the machine name to update the image by
> following command
>
>
> *MACHINE=3Dstm32mp1 bitbake swupdate-image*However, image unable!
> As bitbake unable find the sw-description file
> here, is the error log
>
>
>
> *Bitbake Fetcher Error: FetchError('Unable to fetch URL from any source.'=
,
> 'file://sw-description')*I'm new with the swupdate
> I have a following concerns
>
> a) is it right approach to add the separate recipes for the swupdate in t=
o
> the meta-custom layers, which I'm doing now  ?
>
> b) do i need to deal with the only recipes-support, which is the part of
> the meta-swupdate layer , instead of creating separate recipes in to
> meta-custom?
>
> c) can any one help me with the right integration steps for the swupdate
> with yocto ?
>
>
> for the instance, I'm following official guide from here
> <https://sbabic.github.io/swupdate/building-with-yocto.html>
>
> All suggestions & comments welcome
>
> Regards
> Mahendra Sondagar
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58152):
> https://lists.yoctoproject.org/g/yocto/message/58152
> Mute This Topic: https://lists.yoctoproject.org/mt/93911152/4077624
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chetan.byalihal@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003d23c905e983f1f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Mahendra<div dir=3D"auto"><br></div><div dir=3D"auto">=
I think the below folder structure will work.</div><div dir=3D"auto">.</div=
><div dir=3D"auto">=E2=94=94=E2=94=80=E2=94=80 swupdate</div><div dir=3D"au=
to">=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files</div><div dir=3D"auto">=
=C2=A0 =C2=A0 =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args</div=
><div dir=3D"auto">=C2=A0 =C2=A0 =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 de=
fconfig</div><div dir=3D"auto">=C2=A0 =C2=A0 =E2=94=82   =E2=94=9C=E2=94=80=
=E2=94=80 sw-description</div><div dir=3D"auto">=C2=A0 =C2=A0 =E2=94=82   =
=E2=94=94=E2=94=80=E2=94=80 swupdate.cfg</div><div dir=3D"auto">=C2=A0 =C2=
=A0 =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend</div><div dir=3D"auto">=
<br><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 2=
5 Sept, 2022, 11:08 pm Mahendra Sondagar, &lt;<a href=3D"mailto:mahendrason=
dagar08@gmail.com">mahendrasondagar08@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Hey.. There<br>Hope all are doing well<br><br>I=
&#39;m dealing with the swupdate with the my custom Yocto image created for=
 STM32MP1 dk1 board<br>The intend is, to update the rootfs remotely<br><br>=
I have successfully integrated meta-swupdate layer with the custom Yocto im=
age by adding the layers in to bblayer.conf file <br>The both layers meta-s=
wupdate &amp; meta-custom are parallel to each-others<br><br>To change the =
flags and setting with the swupdate, i have created the r<strong>ecipes-mys=
wupdate</strong> file inside the meta-custom layers <br>The content of the =
recipes-myswupdate are as follows<br>.<br>=E2=94=94=E2=94=80=E2=94=80 swupd=
ate<br>=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 stm32mp1<br>=C2=A0=C2=
=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-arg=
s<br>=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 d=
efconfig<br>=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=
=94=80 sw-description<br>=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=
=E2=94=80=E2=94=80 swupdate.cfg<br>=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=
=94=80 swupdate_%.bbappend<br><br><br>The content of the <strong>swupdate_%=
.bbappend</strong> are as follows<br><br>----------------------------------=
----------------------------------------------------<br><br>DESCRIPTION =3D=
 &quot;Example recipe generating SWU image&quot;<br>SECTION =3D &quot;&quot=
;<br><br>LICENSE =3D &quot;&quot;<br><br># Add all local files to be added =
to the SWU<br># sw-description must always be in the list.<br># You can ext=
end with scripts or wahtever you need<br>SRC_URI +=3D &quot; \<br>=C2=A0=C2=
=A0=C2=A0 file://sw-description \<br>=C2=A0=C2=A0=C2=A0 file://09-swupdate-=
args \<br>=C2=A0=C2=A0=C2=A0 file://swupdate.cfg \<br>=C2=A0=C2=A0=C2=A0 &q=
uot;<br><br># images to build before building swupdate image<br>IMAGE_DEPEN=
DS =3D &quot;core-image-full-cmdline virtual/kernel&quot;<br><br># images a=
nd files that will be included in the .swu image<br>SWUPDATE_IMAGES =3D &qu=
ot;core-image-full-cmdline uImage&quot;<br><br># a deployable image can hav=
e multiple format, choose one<br>SWUPDATE_IMAGES_FSTYPES[core-image-full-cm=
dline] =3D &quot;.ubifs&quot;<br>SWUPDATE_IMAGES_FSTYPES[uImage] =3D &quot;=
.bin&quot;<br><br>inherit swupdate<br><br><br>-----------------------------=
---------------------------------------------------------------------------=
<br>I&#39;m building the image by adding the machine name to update the ima=
ge by following command<br><strong>MACHINE=3Dstm32mp1 bitbake swupdate-imag=
e<br><br></strong>However, image unable!<br>As bitbake unable find the sw-d=
escription file <br>here, is the error log<br><strong>Bitbake Fetcher Error=
: FetchError(&#39;Unable to fetch URL from any source.&#39;, &#39;file://sw=
-description&#39;)<br><br><br></strong>I&#39;m new with the swupdate <br>I =
have a following concerns <br><br>a) is it right approach to add the separa=
te recipes for the swupdate in to the meta-custom layers, which I&#39;m doi=
ng now=C2=A0 ?<br><br>b) do i need to deal with the only recipes-support, w=
hich is the part of the meta-swupdate layer , instead of creating separate =
recipes in to meta-custom?<br><br>c) can any one help me with the right int=
egration steps for the swupdate with yocto ?<br><br><br>for the instance, I=
&#39;m following official guide from <a href=3D"https://sbabic.github.io/sw=
update/building-with-yocto.html" rel=3D"noopener noreferrer" target=3D"_bla=
nk">here</a><br><br>All suggestions &amp; comments welcome=C2=A0<br><br>Reg=
ards<br>Mahendra Sondagar
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58152): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58152" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58152</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93911152/4077=
624" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/93911152/4077624</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:chetan.byalihal@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">chetan.byalihal@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000003d23c905e983f1f4--

