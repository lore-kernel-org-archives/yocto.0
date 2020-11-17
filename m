Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.21132.1605687850083916390
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 00:24:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=UTpsRR/G;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id 15.0.1395.4; Wed, 18 Nov 2020 07:57:59 +0000
X-Sender: bounce+53643+51411+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 6945
X-Received: by 127.0.0.2 with SMTP id tc6TYY3619394xwmohggvGmw; Tue, 17 Nov 2020 13:36:41 -0800
X-Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54]) by mx.groups.io
 with SMTP id smtpd.web11.14902.1605647399498127583 for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 13:09:59 -0800
X-Received: by mail-vs1-f54.google.com with SMTP id m16so11888756vsl.8        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 13:09:59 -0800 (PST)
X-Gm-Message-State: a5vr0XWipgPcqtE58maNAtv5x3618059AA=
X-Google-Smtp-Source: ABdhPJxgOr3qhGRHdvtuFWhLZTWBUQMPMrsgeTqa0+5UVq+ljk7iCLE4F6pHX5X9u75zXcqSO3O2AZqfIGgFOr3WD4w=
X-Received: by 2002:a67:e3b1:: with SMTP id j17mr1273757vsm.51.1605647398389; Tue, 17 Nov 2020 13:09:58 -0800 (PST)
MIME-Version: 1.0
References: <164619B424331089.10479@lists.yoctoproject.org>
In-Reply-To: <164619B424331089.10479@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 17 Nov 2020 22:09:47 +0100
X-OldMsgId: <CANNYZj_=9jL+JfnRYke_NWyyZJHbxa=2w=uO_jBAa3bRuJforw@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] auh-config: add non-default distro features
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605649001; bh=Eudccgo5CShJkoNxUwc/icsp2q0fwEYLrntk5KsjkHs=; h=Cc:Content-Type:Date:From:Subject:To;
 b=UTpsRR/G2VVMrVAr1UqxcwJGgQ2z7v+NX1g64Fpk3pYoHbTDXBfvC4f2Gj6ChjUELfy B9Atmg/pu8h4Sc/OfALK4bQgHNDNZLRfptsue0b+GK3YMIYv29OL2eq5RcQAksDqvuhgw onZLnAeMlUdLULGAQwJjdCn4G5sWE1Ven/E=
Return-Path: bounce+53643+51411+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <eda235d07f7c476c80dc4aa050410085@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="pZvbjKAYJQ3n4wRiRvsQ"

--pZvbjKAYJQ3n4wRiRvsQ
Content-Type: multipart/alternative; boundary="000000000000d0c92b05b453eaf3"

--000000000000d0c92b05b453eaf3
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {A4C07589-1900-47DB-96DC-8EF02311CBD1}

ping :)

Alex

On Tue, 10 Nov 2020 at 09:56, Alexander Kanavin via lists.yoctoproject.org
<alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:

> This adds systemd and pam related recipes to upstream checks and
> devtool-driven updates.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  scripts/auh-config/local.conf.append | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/auh-config/local.conf.append
> b/scripts/auh-config/local.conf.append
> index 9628737..b18590f 100644
> --- a/scripts/auh-config/local.conf.append
> +++ b/scripts/auh-config/local.conf.append
> @@ -1,3 +1,4 @@
>
>  INHERIT += "buildhistory"
>  LICENSE_FLAGS_WHITELIST = "commercial"
> +DISTRO_FEATURES_append = ' systemd pam'
> --
> 2.29.1
>
>
> 
>
>




--000000000000d0c92b05b453eaf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {8987DE88-E21E-45A7-9B86-8950CD2E8FF1}

<div><div>ping :)</div><div><br></div><div>Alex<br></div></div><br><div clas=
s=3D"gmail_quote"><div class=3D"gmail_attr">On Tue, 10 Nov 2020 at 09:56, Al=
exander Kanavin via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">This adds systemd and pam related reci=
pes to upstream checks and devtool-driven updates.<br>
<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m">alex.kanavin@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/auh-config/local.conf.append | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local=
.conf.append<br>
index 9628737..b18590f 100644<br>
--- a/scripts/auh-config/local.conf.append<br>
+++ b/scripts/auh-config/local.conf.append<br>
@@ -1,3 +1,4 @@<br>
<br>
=C2=A0INHERIT +=3D &quot;buildhistory&quot;<br>
=C2=A0LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
+DISTRO_FEATURES_append =3D &#39; systemd pam&#39;<br>
-- <br>
2.29.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000d0c92b05b453eaf3--

--pZvbjKAYJQ3n4wRiRvsQ--
