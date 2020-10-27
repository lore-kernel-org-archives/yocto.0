Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.922.1603814469088374832
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 09:01:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l/b+x+AH;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: vincent.prince.fr@gmail.com)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7E6AC38C0699
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 09:01:08 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id y12so2511569wrp.6
        for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cYkG7QgHppYx7HOrMeXHtq7O0E/yPGg1J8ooIjqocic=;
        b=l/b+x+AHWSocGa7M766ANO5aFXFITcLSKjQlkeCGNvlhOy9w1NQDAlm1o1aYpxQ8Yx
         0UI7XohGbrijsMnmy64m8t/U/jfL1vps1BnMRrz5cEeTFFKwMnT3wp5AQaCyDbkVHgUl
         T5onsXOTfLgZ/L+0n3TW8B4TK29kyjf2Vh3ec8FgDNBJwxNi17ecmuX65CtRncs2N00L
         jtWmdslsyWVRM+MNOrg2TG2Y0r4atAOttMUHsXjI9wNj59jmaOa/5DXsZhvYUbZg/ZBk
         tfy38S0IUd1Wzi9AYpkdKSsNQslwn5YHd+C7fyEtqa4jYW3iz28+dlgcFavIji8S7qFy
         snEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cYkG7QgHppYx7HOrMeXHtq7O0E/yPGg1J8ooIjqocic=;
        b=PjdznEj80wk4MJaT84y7iQtnMstW0xdybYBcH18eKGdal+rJzwZYodycpXUQVgjmpn
         ofvMLoVbK/TfItOim+yfU90eX3iYuIfR8+4FWigx5TW6lbT8FApRiEVxfC3W0JrEz55+
         rpgE51tQky5f5yJkWN6Se4xW9Y0E3o8heUJjjMscdgPEcIzHTInDsOF8z9evvhiUwHrV
         h9qQtBYWMo+nrRmlT3ZeE1baS6M0sRtIqI7PHLVo6lGvRyHezGodSvaO9JUTMnS4d47B
         Dy2gEziKoSOsfgeNFoV7Audn9Rvr1+6PzixSMDZr/7/JPNp9gbYtZtnQfP4aS1bLLikS
         cSFg==
X-Gm-Message-State: AOAM5309nyRSyJGGhoeakPbmmbqkkMrL8/RJom++RkBb5oVXPBJPk4Aj
	JOAPDW4H9nRUrhwSSq2lUU/HnQ6SBA9COlckMvA=
X-Google-Smtp-Source: ABdhPJyqthWZ378tXl/2NsM9iMwpBbR9IcTBfbPrQHUkVCcAJp1DYC0SB244OvnlPcW/wS4UBMlBTaJ+yIrZgPJ/iK0=
X-Received: by 2002:a5d:458c:: with SMTP id p12mr3619617wrq.329.1603814467046;
 Tue, 27 Oct 2020 09:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20201026205608.5994-1-jdmason@kudzu.us> <CAB2nKc-LLwRZ8MN+zJWQpS=5Ldjz5vsMJSu1hoVe5gTg0gS-Mg@mail.gmail.com>
 <20201027150948.GA2619@deserted.net>
In-Reply-To: <20201027150948.GA2619@deserted.net>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Tue, 27 Oct 2020 17:00:55 +0100
Message-ID: <CAB2nKc-PnaNXR_kw+Kzo+TCOv6M7r-_k1=we91gtE_Ych5GaZQ@mail.gmail.com>
Subject: Re: [yocto] [meta-selinux][PATCH] layer.conf: add gatesgarth compatibility
To: Joe MacDonald <joe@deserted.net>
Cc: Jon Mason <jdmason@kudzu.us>, Yocto-mailing-list <yocto@yoctoproject.org>, flihp@twobit.us, 
	nicolas.dechesne@linaro.org, =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>, 
	yi.zhao@windriver.com
Content-Type: multipart/alternative; boundary="0000000000009811c905b2a92795"

--0000000000009811c905b2a92795
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, no problem :)

Le mar. 27 oct. 2020 =C3=A0 16:09, Joe MacDonald <joe@deserted.net> a =C3=
=A9crit :

> [Re: [yocto] [meta-selinux][PATCH] layer.conf: add gatesgarth
> compatibility] On 20.10.27 (Tue 16:00) nefethael wrote:
>
> > Hi Jon,
> >
> > There is already a pending patch submitted some time ago by An=C3=ADba=
l Lim=C3=B3
> here
> > https://patchwork.openembedded.org/patch/177350/
>
> Yeah, I've had that older patch in my work-tree for a while now and
> haven't pushed it upstream yet.  I'll get on that today.  Sorry for the
> delay.
>
> -Joe.
>
> >
> > Best regards,
> > Vincent
> >
> >
> >
> > Le lun. 26 oct. 2020 =C3=A0 21:56, Jon Mason <jdmason@kudzu.us> a =C3=
=A9crit :
> >
> >     Signed-off-by: Jon Mason <jdmason@kudzu.us>
> >     ---
> >      conf/layer.conf | 2 +-
> >      1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >     diff --git a/conf/layer.conf b/conf/layer.conf
> >     index da24359b7484..178ce1b734d3 100644
> >     --- a/conf/layer.conf
> >     +++ b/conf/layer.conf
> >     @@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
> >      # cause compatibility issues with other layers
> >      LAYERVERSION_selinux =3D "1"
> >
> >     -LAYERSERIES_COMPAT_selinux =3D "dunfell"
> >     +LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth"
> >
> >      LAYERDEPENDS_selinux =3D " \
> >          core \
> >     --
> >     2.20.1
> >
> >
> >
> >
> >
>
> >
> >=20
> >
>
>
> --
> -Joe MacDonald.
> :wq
>

--0000000000009811c905b2a92795
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, no problem :)<br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 27 oct. 2020 =C3=A0=
=C2=A016:09, Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net">joe@des=
erted.net</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">[Re: [yocto] [meta-selinux][PATCH] layer.conf: add ga=
tesgarth compatibility] On 20.10.27 (Tue 16:00) nefethael wrote:<br>
<br>
&gt; Hi Jon,<br>
&gt; <br>
&gt; There is already a pending patch submitted some time ago by An=C3=ADb=
al Lim=C3=B3 here<br>
&gt; <a href=3D"https://patchwork.openembedded.org/patch/177350/" rel=3D"n=
oreferrer" target=3D"_blank">https://patchwork.openembedded.org/patch/17735=
0/</a><br>
<br>
Yeah, I&#39;ve had that older patch in my work-tree for a while now and<br=
>
haven&#39;t pushed it upstream yet.=C2=A0 I&#39;ll get on that today.=C2=
=A0 Sorry for the<br>
delay.<br>
<br>
-Joe.<br>
<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Vincent<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Le=C2=A0lun. 26 oct. 2020 =C3=A0=C2=A021:56, Jon Mason &lt;<a href=3D=
"mailto:jdmason@kudzu.us" target=3D"_blank">jdmason@kudzu.us</a>&gt; a =C3=
=A9crit=C2=A0:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Jon Mason &lt;<a href=3D"mailto:jdm=
ason@kudzu.us" target=3D"_blank">jdmason@kudzu.us</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0conf/layer.conf | 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A01 file changed, 1 insertion(+), 1 deletion(-=
)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/conf/layer.conf b/conf/layer.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0index da24359b7484..178ce1b734d3 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/conf/layer.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/conf/layer.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D &quo=
t;5&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0# cause compatibility issues with other laye=
rs<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0LAYERVERSION_selinux =3D &quot;1&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-LAYERSERIES_COMPAT_selinux =3D &quot;dunfell&quot=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+LAYERSERIES_COMPAT_selinux =3D &quot;dunfell gate=
sgarth&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0LAYERDEPENDS_selinux =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0core \<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A02.20.1<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
-Joe MacDonald.<br>
:wq<br>
</blockquote></div>

--0000000000009811c905b2a92795--
