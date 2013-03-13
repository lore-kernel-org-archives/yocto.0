Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59E1FE0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:00 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id cz11so969449veb.17
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=CArmK2AljDcdaBsExTT6Wo6O2JZFBkMdtMVAgDA2+3c=;
	b=LC7rlSubDsfYGGfbVvFnkkCXyje7RmjfkQxbs5hHI3roZUbTj7zmLVPa9E/jig/x/p
	gr6qUAKIut/2cbajKt0WH61BGNpQXMZ5gAdzwIh0x5FvsQWJP+KY34Ag0TY1XzXdY9Ym
	Q6tu6TcnaYk9pVwkWsVi99HRh9ilmUYyFr7xpMxEhuvROAqu2NC3oZsgYJgMMAewPAYs
	I2j9/E1fC+b17k3ZPbGnT29+WCE3rpYR8oOrzmuKmV9RMaKce4ElUdNQLxRwl1iu6wHu
	KhP2q81PG1tF+QhuEuc8vkQnBXCIR/bsi5ia1hT8Aaj7gVUtzHNTaCDj4lX/5yDO/S7k
	rAyQ==
X-Received: by 10.52.177.161 with SMTP id cr1mr7367632vdc.64.1363196699730;
	Wed, 13 Mar 2013 10:44:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:44:39 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-5-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-5-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:44:39 +0200
Message-ID: <CAK18fxGts8qbgbney=zdeM-HUZ0fCdL0BdKDxZf4o3Zzb_zydg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmsVFIEjEArIh+72mEtdjueUHsTJQID+d8uQ9vhQAADU/HsQaGA/u8PVmuqSdaIbGmMyW87
Subject: Re: [meta-raspberrypi][PATCH 5/7] recipes.txt: Remove file
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
X-List-Received-Date: Wed, 13 Mar 2013 17:45:00 -0000
Content-Type: multipart/alternative; boundary=20cf3071ceac0bff2904d7d1f7ab

--20cf3071ceac0bff2904d7d1f7ab
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> This file contains outdated informations.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes.txt |    9 ---------
>  1 file changed, 9 deletions(-)
>  delete mode 100644 recipes.txt
>
> diff --git a/recipes.txt b/recipes.txt
> deleted file mode 100644
> index f989530..0000000
> --- a/recipes.txt
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -recipes-bcm          - Broadcom specific recipes and tweaks (including
> binary only bootloader).
> -recipes-bsp          - Anything with links to the RaspberryPi hardware
> configuration information.
> -recipes-core         - Extensions to existing upstream core recipes.
> -recipes-devtools     - Extensions to existing upstream devtools recipes
> and other RaspberryPi specific devtools recipes.
> -recipes-devices      - Device drivers/Init scripts.
> -recipes-graphics     - XOrg Config and such.
> -recipes-kernel       - The RaspberryPi kernel recipes and anything with
> strong kernel dependencies.
> -recipes-multimedia   - Extensions to existing upstream multimedia recipes
> and other RaspberryPi specific multimedia recipes.
> -
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3071ceac0bff2904d7d1f7ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">This file contains outdated informations.<br=
>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes.txt | =A0 =A09 ---------<br>
=A01 file changed, 9 deletions(-)<br>
=A0delete mode 100644 recipes.txt<br>
<br>
diff --git a/recipes.txt b/recipes.txt<br>
deleted file mode 100644<br>
index f989530..0000000<br>
--- a/recipes.txt<br>
+++ /dev/null<br>
@@ -1,9 +0,0 @@<br>
-recipes-bcm =A0 =A0 =A0 =A0 =A0- Broadcom specific recipes and tweaks (inc=
luding binary only bootloader).<br>
-recipes-bsp =A0 =A0 =A0 =A0 =A0- Anything with links to the RaspberryPi ha=
rdware configuration information.<br>
-recipes-core =A0 =A0 =A0 =A0 - Extensions to existing upstream core recipe=
s.<br>
-recipes-devtools =A0 =A0 - Extensions to existing upstream devtools recipe=
s and other RaspberryPi specific devtools recipes.<br>
-recipes-devices =A0 =A0 =A0- Device drivers/Init scripts.<br>
-recipes-graphics =A0 =A0 - XOrg Config and such.<br>
-recipes-kernel =A0 =A0 =A0 - The RaspberryPi kernel recipes and anything w=
ith strong kernel dependencies.<br>
-recipes-multimedia =A0 - Extensions to existing upstream multimedia recipe=
s and other RaspberryPi specific multimedia recipes.<br>
-<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
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

--20cf3071ceac0bff2904d7d1f7ab--
