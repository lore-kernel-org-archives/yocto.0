Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.31618.1601278910807899467
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 00:41:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=Yqsp6yfr;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.53, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f53.google.com with SMTP id z17so65120lfi.12
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 00:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QDOZSPQtK23gcrVATEda5Qxhf5TnXegKok1aqS1Lan8=;
        b=Yqsp6yfrM//OtJxUzLdbgbgHfxlhXaW0dwnQzpszKK9HHISkPmvMsEchZFNPSTdmWB
         oEmTqXVqrq3ksmMwnlinoU7xKb/AM7uOud8NjzMC3G9Hpj3G6LlMjOpmWkV6V8WAWizm
         6+DeBp+sYTE1fORqUSvjVi8shqoYaBiSNn35wXC+1ro7dqoWmP+bYcByptCltDcUMjZn
         C9C3nAkxXdCqqiVa54exAT2zn8ODwd4LtLzr1nUAk6wq309aFSDdBivsTHrdqZBC2X1/
         GbwMZC0s0GIrhdIdEsO/q5ZQm41W1sRJMcCAILpSxSva7Af0bYodRLfKkNznUs6s+czM
         XGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QDOZSPQtK23gcrVATEda5Qxhf5TnXegKok1aqS1Lan8=;
        b=rJz1o351obB6hZbs9l9Wm9RQMNdSFbhtSI2HFCpWt94dZoOIBDE15q4cSlWVeVWLqB
         bSA4moN5pSfO4Ge1vXGvSbbA0J6/mCQFbvZ/R00KyUiVOosiUqJg9fmZGKr5Bd4UvSl+
         VcbISEKlZh+nNT9rv7qGk+nC7sN+49Y6LvrqZSIcK2JLgJD9d7YApWSPHtm6riZDE2BJ
         65hdv8fJDlQgQwwPDZgsuNyN67wpudmBlToJbTnLTpTwHj3rQFIjIGdxFlmvBqMe8jz2
         9noGS/SIhj44fwSXgTYrYq6FSGuPMcJEILza8G+bTkf+b+KVdAyyeTVBZ1kWLkhB3RzD
         tJ6Q==
X-Gm-Message-State: AOAM532Rdw/FonVuNsguykPqXIUzFm8RTDoUBb4UVnVDBIEMlXMwLKYn
	Qom26Tt9qWYm3TN4BCsJraKJXAE9/s3ORgHZ8WCVHQ==
X-Google-Smtp-Source: ABdhPJw25To4hoJw0vmidItdP2dE5RuFMfe9wryNHb+vQi6meWOF1anlkZCM9xVayUvnwLGHhaKL85XvVrCXmnx+Hkg=
X-Received: by 2002:ac2:42c4:: with SMTP id n4mr19637lfl.563.1601278908834;
 Mon, 28 Sep 2020 00:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <1379.1601150310877010917@lists.yoctoproject.org> <17472.1601210522746442997@lists.yoctoproject.org>
In-Reply-To: <17472.1601210522746442997@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Mon, 28 Sep 2020 09:41:22 +0200
Message-ID: <CAEt6Nwpek3T5wbHgYORCSptuRvZ=ntuWGDz=FCYvw0UdeBtb4g@mail.gmail.com>
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008c37d405b05accbe"

--0000000000008c37d405b05accbe
Content-Type: text/plain; charset="UTF-8"

Without digging into the details, it sounds very very much like the most of
your problems are caused by handcrafting a Makefile which is not cross
compile aware and probably has multiple other issues. Therefore I strongly
suggest to use a build system like autotools, cmake or meson. You can find
an introduction to a cmake-based setup here: https://youtu.be/NmPta5w6P70

Greetz

Am So., 27. Sept. 2020 um 14:42 Uhr schrieb Bel Hadj Salem Talel <
bhstalel@gmail.com>:

> Hi,
>
> A response came only to me :
>
> Hey Bel,
>
> Please remove the libsystemd from your host. It will cause host
> contamination.
>
> You need to tell in your makefile where make can find include path and lib
> path
>
> Normally it should work
>
> Include: -I${STAging_incdir}
> -L for ld path
>
>
> Cheers
>
> So I added
>
> EXTRA_OEMAKE += "-I${STAGING_INCDIR}
> to fix the systemd include error.
>
> But I still get the error of :
>
>  /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/wirepas-sink-tool/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/ld:
> c-mesh-api/lib/build/mesh_api_lib.a: error adding symbols: file in wrong
> format
>
> I don't know what is the problem.
> Help me on this please.
>
> Thanks for your support.
>
>
>
> 
>
>

--0000000000008c37d405b05accbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Without digging into the details, it sounds very very=
 much like the most of your problems are caused by handcrafting a Makefile =
which is not cross compile aware and probably has multiple other issues. Th=
erefore I strongly suggest to use a build system like autotools, cmake or m=
eson. You can find an introduction to a cmake-based setup here: <a href=3D"=
https://youtu.be/NmPta5w6P70">https://youtu.be/NmPta5w6P70</a></div><div><b=
r></div><div>Greetz<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am So., 27. Sept. 2020 um 14:42=C2=A0Uhr sch=
rieb Bel Hadj Salem Talel &lt;<a href=3D"mailto:bhstalel@gmail.com">bhstale=
l@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi,<br><br>A response came only to me : <br><br>
<div dir=3D"auto">
<blockquote>Hey Bel,
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">Please remove the libsystemd from your host. It will cau=
se host contamination.</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">You need to tell in your makefile where make can find in=
clude path and lib path</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">Normally it should work</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">Include: -I${STAging_incdir}</div>
<div dir=3D"auto">-L for ld path</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">Cheers</div>
</blockquote>
</div>
<div>
<div id=3D"gmail-m_-9033108258316709199:ne"><img src=3D"https://ssl.gstati=
c.com/ui/v1/icons/mail/images/cleardot.gif">So I added <br><br>
<div style=3D"color:rgb(248,248,242);background-color:rgb(39,40,34);font-w=
eight:normal;font-size:20px;line-height:27px;white-space:pre-wrap">
<div><span style=3D"color:rgb(248,248,242)">EXTRA_OEMAKE </span><span styl=
e=3D"color:rgb(249,38,114)">+=3D</span><span style=3D"color:rgb(248,248,242=
)"> </span><span style=3D"color:rgb(230,219,116)">&quot;-I</span><span styl=
e=3D"color:rgb(253,151,31)">${STAGING_INCDIR}</span></div>
</div>
to fix the systemd include error.<br><br>But I still get the error of : <b=
r><br>=C2=A0/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/=
wirepas-sink-tool/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/.=
./../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/ld: c-mesh-api=
/lib/build/mesh_api_lib.a: error adding symbols: file in wrong format<br><b=
r>I don&#39;t know what is the problem.<br>Help me on this please.<br><br>T=
hanks for your support.<br><br><br></div>
</div>
<br>
<br>
<br>
</blockquote></div>

--0000000000008c37d405b05accbe--
