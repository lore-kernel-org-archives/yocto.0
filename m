Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3871E01850
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:18:09 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id a1so2114308wgh.0
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:18:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZRluepbyz0lB3F0smh2gPwv28SELaqnlWvMGo0w8wdc=;
	b=jhgIu2Gv/xMbJxPB5Vb8SzFq9TckBLfhTCOwfS61hUUO9Cw4B0ewAOSXhIQu5QAnuO
	xHzChQ4w1s3n1u/gtSb7Y1Jeq+G+f2q2lEpi5d4ANqDKBRLmKA6RIYCnA0gIacdrEcAj
	xzv0J0D+rwwRaxTeKeprtSy7+2aM32ruEzmLKmF197A2Uzvtd4RkTxr99OmD0eNswYZu
	dfH7kveZyCE8bMNDp/XGueiUramZWIFBQfWkbpOwVeAhLZPX80MzHLwnxAp9tXcMKuSd
	3wGxjraEC2KLSAED1X6ijVUoZQhOl97d/wBp8ypTYYv7z+DGNiJk0E8YPXP1slsHE9Uq
	skvw==
X-Gm-Message-State: ALoCoQn68FC+IoeUxcsoF/JsdXlhKOLcCKfRqybvLLCQz4sfW0x+QDiVnsHVTkWnf5gqTUlVJqGr
X-Received: by 10.180.187.41 with SMTP id fp9mr3262086wic.33.1384442288101;
	Thu, 14 Nov 2013 07:18:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Thu, 14 Nov 2013 07:17:48 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-6-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-6-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Nov 2013 17:17:48 +0200
Message-ID: <CAK18fxEwLzs=sVkNBnSMVokRXrSjHTOOPiYe_0RESW8++qOweA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 6/6] userland: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Thu, 14 Nov 2013 15:18:10 -0000
Content-Type: multipart/alternative; boundary=001a11c3844ccb615704eb249621

--001a11c3844ccb615704eb249621
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: Ic618f8bc5365b9f787a230a2a3e0ccb92c17738a
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/userland/userland_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bbb/recipes-graphics/userland/
> userland_git.bb
> index c7ea522..18c74fa 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
>  LICENSE = "Broadcom"
>  LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
>
> -PR = "r2"
> +PR = "r3"
>
>  PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -SRCREV = "23baee63495aa685e7693467b7a5469ff5ca4481"
> +SRCREV = "628498eb6cf501554c98a5e6c7ea3855574fa43e"
>  SRC_URI = "git://
> github.com/raspberrypi/userland.git;protocol=git;branch=master \
>            "
>  S = "${WORKDIR}/git"
> --
> 1.8.1.4
>
>

Merged.

ag

--001a11c3844ccb615704eb249621
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D""><div class=3D"h5">Change-Id: Ic618f8bc5365=
b9f787a230a2a3e0ccb92c17738a<br>


Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=3D"_=
blank">userland_git.bb</a> | 4 ++--<br>
=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" t=
arget=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D=
"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
index c7ea522..18c74fa 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
@@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG.&quot;<=
br>
=A0LICENSE =3D &quot;Broadcom&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://LICENCE;md5=3D957f6640d5e2d2acfce73a36=
a56cb32f&quot;<br>
<br>
-PR =3D &quot;r2&quot;<br>
+PR =3D &quot;r3&quot;<br>
<br>
=A0PROVIDES =3D &quot;virtual/libgles2 \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0virtual/egl&quot;<br>
=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<br>
-SRCREV =3D &quot;23baee63495aa685e7693467b7a5469ff5ca4481&quot;<br>
+SRCREV =3D &quot;628498eb6cf501554c98a5e6c7ea3855574fa43e&quot;<br>
=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/userlan=
d.git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/raspberr=
ypi/userland.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
=A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
=A0S =3D &quot;${WORKDIR}/git&quot;<br>
--<br>
1.8.1.4<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><div class=3D"gma=
il_extra">Merged.</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">ag</div></div>
</div></div>

--001a11c3844ccb615704eb249621--
