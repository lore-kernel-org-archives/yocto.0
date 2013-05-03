Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA6DE006C3
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:31:46 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id ht11so1259797vcb.18
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:31:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=eaTstY25nwgSsBy0ahtGXqxH76cj54f6HcKUt6/ZTyc=;
	b=I6liHNgYly7iWZpsOkddFMk3ie8UFX+BJveFPUkYHrt8x4V2UBj6i7nCn66wOYgKsK
	gLfdLk5rLfgoZ221oSg5nhCwC1cvpf0YMRn0IJb86A5CnSJQ2PKONlvoqYmGWFNztQ/p
	KyPWfjx8NP7nM5pcxle4+UpkWn0O3ehtihtzNZiWQ/L6AOs3u+tgp8uwFOnra9nxSceT
	mAGJObMHkWwUOyfZCNM+Q1ELI4ozmoIEYwH28tewYpRspbXZ31iBF9FesFzjHGwvE86y
	JgMyR50C1hFuAajM+carBKpBzcw0hqCbntdL/ZKiH9Vv1aQQWP+KjcGxAFJAcB1pW5YL
	Ahrg==
X-Received: by 10.220.66.212 with SMTP id o20mr3397807vci.2.1367573505593;
	Fri, 03 May 2013 02:31:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.49.5 with HTTP; Fri, 3 May 2013 02:31:25 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <1366661977-26631-1-git-send-email-paul@paulbarker.me.uk>
References: <1366661977-26631-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 May 2013 11:31:25 +0200
Message-ID: <CAK18fxGv2UO_+uvfJTE_s+tKocXagCJhsi-C=vQ0ek0qGb3sHw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQlnoUZye3PEhfyDiE6LxTNIn5RFSc2ksCmerJghvT2MWgTjz2cYfKU6IF3aqY8IW+XX4Nry
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] netbase: Remove bbappend and files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 May 2013 09:31:46 -0000
Content-Type: multipart/alternative; boundary=047d7b33da86015c4404dbcd05c5

--047d7b33da86015c4404dbcd05c5
Content-Type: text/plain; charset=ISO-8859-1

Merged to master.

Thanks a lot.


On Mon, Apr 22, 2013 at 10:19 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Dropped raspberrypi modifications to hosts and interfaces files as they are
> unnecessary.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-core/netbase/netbase-5.0/raspberrypi/hosts      |    2 --
>  recipes-core/netbase/netbase-5.0/raspberrypi/interfaces |   15
> ---------------
>  recipes-core/netbase/netbase_5.0.bbappend               |    3 ---
>  3 files changed, 20 deletions(-)
>  delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/hosts
>  delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
>  delete mode 100644 recipes-core/netbase/netbase_5.0.bbappend
>
> diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
> b/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
> deleted file mode 100644
> index 7d87a18..0000000
> --- a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -127.0.0.1      localhost.localdomain           localhost
> raspberrypi     rpi
> -
> diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
> b/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
> deleted file mode 100644
> index 00ae607..0000000
> --- a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
> -
> -# The loopback interface
> -auto lo
> -iface lo inet loopback
> -
> -# Wireless interfaces
> -iface wlan0 inet dhcp
> -       wireless_mode managed
> -       wireless_essid any
> -       wpa-driver wext
> -       wpa-conf /etc/wpa_supplicant.conf
> -
> -# Bluetooth networking
> -iface bnep0 inet dhcp
> diff --git a/recipes-core/netbase/netbase_5.0.bbappend
> b/recipes-core/netbase/netbase_5.0.bbappend
> deleted file mode 100644
> index 36432f5..0000000
> --- a/recipes-core/netbase/netbase_5.0.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -# Don't forget to bump PRINC if you update the extra files.
> -PRINC = "1"
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b33da86015c4404dbcd05c5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master.=A0<div><br></div><div>Thanks a lot.</div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon=
, Apr 22, 2013 at 10:19 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Dropped raspberrypi modifications to hosts a=
nd interfaces files as they are<br>
unnecessary.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=A0recipes-core/netbase/netbase-5.0/raspberrypi/hosts =A0 =A0 =A0| =A0 =A02=
 --<br>
=A0recipes-core/netbase/netbase-5.0/raspberrypi/interfaces | =A0 15 -------=
--------<br>
=A0recipes-core/netbase/netbase_5.0.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A03 ---<br>
=A03 files changed, 20 deletions(-)<br>
=A0delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/hosts<br=
>
=A0delete mode 100644 recipes-core/netbase/netbase-5.0/raspberrypi/interfac=
es<br>
=A0delete mode 100644 recipes-core/netbase/netbase_5.0.bbappend<br>
<br>
diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts b/recipes-c=
ore/netbase/netbase-5.0/raspberrypi/hosts<br>
deleted file mode 100644<br>
index 7d87a18..0000000<br>
--- a/recipes-core/netbase/netbase-5.0/raspberrypi/hosts<br>
+++ /dev/null<br>
@@ -1,2 +0,0 @@<br>
-127.0.0.1 =A0 =A0 =A0localhost.localdomain =A0 =A0 =A0 =A0 =A0 localhost =
=A0 =A0 =A0 raspberrypi =A0 =A0 rpi<br>
-<br>
diff --git a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces b/reci=
pes-core/netbase/netbase-5.0/raspberrypi/interfaces<br>
deleted file mode 100644<br>
index 00ae607..0000000<br>
--- a/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces<br>
+++ /dev/null<br>
@@ -1,15 +0,0 @@<br>
-# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)<br>
-<br>
-# The loopback interface<br>
-auto lo<br>
-iface lo inet loopback<br>
-<br>
-# Wireless interfaces<br>
-iface wlan0 inet dhcp<br>
- =A0 =A0 =A0 wireless_mode managed<br>
- =A0 =A0 =A0 wireless_essid any<br>
- =A0 =A0 =A0 wpa-driver wext<br>
- =A0 =A0 =A0 wpa-conf /etc/wpa_supplicant.conf<br>
-<br>
-# Bluetooth networking<br>
-iface bnep0 inet dhcp<br>
diff --git a/recipes-core/netbase/netbase_5.0.bbappend b/recipes-core/netba=
se/netbase_5.0.bbappend<br>
deleted file mode 100644<br>
index 36432f5..0000000<br>
--- a/recipes-core/netbase/netbase_5.0.bbappend<br>
+++ /dev/null<br>
@@ -1,3 +0,0 @@<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
-# Don&#39;t forget to bump PRINC if you update the extra files.<br>
-PRINC =3D &quot;1&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7b33da86015c4404dbcd05c5--
