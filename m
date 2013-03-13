Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957C1E0071D
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 11:02:15 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id m18so705347vcm.36
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 11:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=yjx/h8CsQ8pjfVtXYp+D5GD1W6G5OlYkB/IzGIX3nYs=;
	b=LUBD2kHhkjOer1qC6VPOsmgrzVSK7T+Ovg9T3NXOW+k5Qxl2t5PrqNDVxjHIKetMrv
	x4cTgYHEhV+NSCJNCNIqrWOhDXAitRjMc3ORqw/KgrixQ621wixOCbw+RHbOezLQem0J
	CV9lphInbXIXL/CTcU/kvEHuvOVlJCipP6ykukDQaJAXQ3dlrtAUxDkwYFW3aecMZ04e
	vJQbi+f8AvwxwihYj2BFNirW319kl+OZ2+aOaMEsq7MCgL2plmZZmxztQZs2jtiU2hRD
	TIhgW8Ed98Hix8VONMgnqfd0EVVphgfrNjT0tCtIaEF9gIaAKYTB3GH7CsQQjrECf245
	gbnQ==
X-Received: by 10.52.65.73 with SMTP id v9mr7484482vds.30.1363197735046; Wed,
	13 Mar 2013 11:02:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 11:01:54 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1363122024-31419-1-git-send-email-eric@eukrea.com>
References: <1363122024-31419-1-git-send-email-eric@eukrea.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 20:01:54 +0200
Message-ID: <CAK18fxFeApWE8OVpf41AaEqpmLvsbdVu8srh5g6rh97Pb16hkg@mail.gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
X-Gm-Message-State: ALoCoQnqp39Lzrc79RIMZLaBVhDq/IZp2yAMZdVQCPr7gXZPp7IQzKqTA6Nj0cskWwbZx0qAVzFS
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] use right license name for GPLv2
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
X-List-Received-Date: Wed, 13 Mar 2013 18:02:15 -0000
Content-Type: multipart/alternative; boundary=20cf3071cab4c1a2c404d7d2348c

--20cf3071cab4c1a2c404d7d2348c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Eric,

The SPDX name for GPLv2 (http://spdx.org/licenses/) is GPL-2.0 so I'd like
to use this.

And one more thing, please add the recipe name in the commit log -
something like:
*rpi-first-run-wizard.bb: Use right license name for GPLv2*

Thank you,

On Tue, Mar 12, 2013 at 11:00 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  recipes-bcm/bcm2835/bcm2835_1.8.bb            | 2 +-
>  recipes-extra/startup/rpi-first-run-wizard.bb | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bcm/bcm2835/bcm2835_1.8.bb b/recipes-bcm/bcm2835/
> bcm2835_1.8.bb
> index d9681e5..40f9be5 100644
> --- a/recipes-bcm/bcm2835/bcm2835_1.8.bb
> +++ b/recipes-bcm/bcm2835/bcm2835_1.8.bb
> @@ -5,7 +5,7 @@ SECTION =3D "base"
>  HOMEPAGE =3D "http://www.open.com.au/mikem/bcm2835"
>  AUTHOR =3D "Mike McCauley (mikem@open.com.au)"
>
> -LICENSE =3D "GPL-2.0"
> +LICENSE =3D "GPLv2"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4=
263"
>
>  PR =3D "r0"
> diff --git a/recipes-extra/startup/rpi-first-run-wizard.bbb/recipes-extra=
/startup/
> rpi-first-run-wizard.bb
> index f3ac8b4..dda4012 100644
> --- a/recipes-extra/startup/rpi-first-run-wizard.bb
> +++ b/recipes-extra/startup/rpi-first-run-wizard.bb
> @@ -1,5 +1,5 @@
>  DESCRIPTION =3D "Scripts to support a first run wizard on the Raspberry =
Pi."
> -LICENSE =3D "GPLV2"
> +LICENSE =3D "GPLv2"
>  LIC_FILES_CHKSUM =3D
> "file://${WORKDIR}/LICENSE;md5=3Db234ee4d69f5fce4486a80fdaf4a4263"
>
>  DEPENDS =3D "zenity dbus"
> --
> 1.7.11.7
>
>


--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3071cab4c1a2c404d7d2348c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Eric,<div><br></div><div>The SPDX name for GPLv2 (<a=
 href=3D"http://spdx.org/licenses/" target=3D"_blank">http://spdx.org/licen=
ses/</a>) is=A0GPL-2.0 so I&#39;d like to use this.</div><div><br></div><di=
v>And one more thing, please add the recipe name in the commit log - someth=
ing like:</div>



<div><i><a href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank">rpi-fi=
rst-run-wizard.bb</a>: Use right license name for GPLv2</i><br></div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thank you,<br><br=
><div class=3D"gmail_quote">


On Tue, Mar 12, 2013 at 11:00 PM, Eric B=E9nard <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:eric@eukrea.com" target=3D"_blank">eric@eukrea.com</a>&gt;</sp=
an> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Eric B=E9nard &lt;<a href=3D"=
mailto:eric@eukrea.com" target=3D"_blank">eric@eukrea.com</a>&gt;<br>
---<br>
=A0recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.8.bb" target=3D"_blank">=
bcm2835_1.8.bb</a> =A0 =A0 =A0 =A0 =A0 =A0| 2 +-<br>
=A0recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" target=
=3D"_blank">rpi-first-run-wizard.bb</a> | 2 +-<br>
=A02 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.8.bb" target=
=3D"_blank">bcm2835_1.8.bb</a> b/recipes-bcm/bcm2835/<a href=3D"http://bcm2=
835_1.8.bb" target=3D"_blank">bcm2835_1.8.bb</a><br>
index d9681e5..40f9be5 100644<br>
--- a/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.8.bb" target=3D"_blan=
k">bcm2835_1.8.bb</a><br>
+++ b/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.8.bb" target=3D"_blan=
k">bcm2835_1.8.bb</a><br>
@@ -5,7 +5,7 @@ SECTION =3D &quot;base&quot;<br>
=A0HOMEPAGE =3D &quot;<a href=3D"http://www.open.com.au/mikem/bcm2835" targ=
et=3D"_blank">http://www.open.com.au/mikem/bcm2835</a>&quot;<br>
=A0AUTHOR =3D &quot;Mike McCauley (<a href=3D"mailto:mikem@open.com.au" tar=
get=3D"_blank">mikem@open.com.au</a>)&quot;<br>
<br>
-LICENSE =3D &quot;GPL-2.0&quot;<br>
+LICENSE =3D &quot;GPLv2&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a80fd=
af4a4263&quot;<br>
<br>
=A0PR =3D &quot;r0&quot;<br>
diff --git a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.b=
b" target=3D"_blank">rpi-first-run-wizard.bb</a> b/recipes-extra/startup/<a=
 href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank">rpi-first-run-wi=
zard.bb</a><br>




index f3ac8b4..dda4012 100644<br>
--- a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-first-run-wizard.bb</a><br>
+++ b/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-first-run-wizard.bb</a><br>
@@ -1,5 +1,5 @@<br>
=A0DESCRIPTION =3D &quot;Scripts to support a first run wizard on the Raspb=
erry Pi.&quot;<br>
-LICENSE =3D &quot;GPLV2&quot;<br>
+LICENSE =3D &quot;GPLv2&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/LICENSE;md5=3Db234ee4d69f5f=
ce4486a80fdaf4a4263&quot;<br>
<br>
=A0DEPENDS =3D &quot;zenity dbus&quot;<br>
<span><font color=3D"#888888">--<br>
1.7.11.7<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">



<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a hre=
f=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.74=
4.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162=
812" target=3D"_blank">+40.31.816.28.12</a></font><br>



</div></div></div>
</div></div>

--20cf3071cab4c1a2c404d7d2348c--
