Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16636E00D3D; Thu,  9 May 2019 05:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6801E00AD5
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 05:53:03 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id z5so1888118lji.10
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 05:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5+n6uwlFsZuTDtrxqFqtK8Q0gzYvDor0iXYerE3BtNk=;
	b=mMzdh3jfwXFGq6eIVJWerqeI0+A68D7c0bZ5jJqxbj1C+t3FxEe6XJUEoMv+8xIiKI
	4NfW5Gzv6muXQUAYRiafcGfSimrIEyoYs8FT3wvrV6ge0GnpPdfxx7yO/+J2r2Lxq/Iv
	D0hoNCB64WcxstIU5wkTkIx2KapIN1HWDkXiMylNViiJ3Bvkuy228cKz2/tdGjR3xcMP
	p6uXjsD0bzDNujGGdgPaYo4moYPr/2NYcboNeL3jD81OF9WYmPOZn/OL5SjOaeQgO6bo
	qEDmBywzrpMMHCVVfy4RoGmf8iTa003DD+3zZOZBDJf2mvCoNrHdVAZ7AQY+PLkhGNdF
	qHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5+n6uwlFsZuTDtrxqFqtK8Q0gzYvDor0iXYerE3BtNk=;
	b=Qp8Ou0Mzt9hJUEDtkaagGbASvfZ4CUwrHwb6/z36WFR1YKzvaWEQnIQn+1NnZtwbzE
	UGhK5AlDwZ89zuNBda50eBrdKIyaOZIvsoYfpeokFObM+nq7RL8GzwmfR94SBDGA54Nl
	PPa/3Z6bnslXbnmcmPs9sdy4T0AvwQaZySsfM6CkehlFcLGzpdyQXqqQFekiGmxesdI8
	+yWeDUvYqrpGiloxInN7YMvV+10dDRdCEhT1U3rfnn5IrtQo6lyUp1P56iG4l+1jiP/o
	xVO+fL08M82vUrqgGa7UNP+7pB/O8pjkvfEstd8o4hzcyCtuf/vCilmQMY9bAuy1VB/O
	oxfA==
X-Gm-Message-State: APjAAAXOnw4HZUL8Mqxuyd4MWKSoMMIqdaELVSxd69mtWu+YHzrnnCDd
	DrPmpq4JBOi0UkfuNIg6DVF0Fw3JQckpsEji1HAR50x+
X-Google-Smtp-Source: APXvYqxuQoDX/N5Lh1IttpCU2BxdH6OaGaFo4BqijuwsWQjkuV3t3tDGnzMA4iQCfgNxucEd/ph+WQGr9r8GAFm3IEE=
X-Received: by 2002:a2e:2e17:: with SMTP id u23mr2214255lju.187.1557406382575; 
	Thu, 09 May 2019 05:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190509115933.23465-1-kexin.hao@windriver.com>
In-Reply-To: <20190509115933.23465-1-kexin.hao@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 9 May 2019 08:52:51 -0400
Message-ID: <CADkTA4Ocyat40N4Fcgf3d95WT27fDnPMppiFWvPuFKj5ATOw4g@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Thu, 09 May 2019 12:53:05 -0000
Content-Type: multipart/alternative; boundary="0000000000003456fe058873ee4e"

--0000000000003456fe058873ee4e
Content-Type: text/plain; charset="UTF-8"

On Thu, May 9, 2019 at 8:10 AM Kevin Hao <kexin.hao@windriver.com> wrote:

> Boot test for all these boards.
>
>
I do have more -stable updates coming, and you are seeing some queued 5.0.x
changes that I haven't sent yet (since I'm hung up on resolving a 4.19
conflict for one of the SoC branches), but yes, the changes here are good
and I'll be bumping the qemu boards in the next day or so.

Bruce



> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20
> ++++++++++----------
>  .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20
> ++++++++++----------
>  2 files changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> index 6025230c7306..ec269d905c4b 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>
> -SRCREV_machine_genericx86    ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
> -SRCREV_machine_genericx86-64 ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
> -SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
> -SRCREV_machine_beaglebone-yocto ?=
> "eebb51300a07804a020ec468b5f8c5bf720198d9"
> -SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
> +SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> +SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> +SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> +SRCREV_machine_beaglebone-yocto ?=
> "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> +SRCREV_machine_mpc8315e-rdb ?= "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
>
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>
> -LINUX_VERSION_genericx86 = "4.19.19"
> -LINUX_VERSION_genericx86-64 = "4.19.19"
> -LINUX_VERSION_edgerouter = "4.19.14"
> -LINUX_VERSION_beaglebone-yocto = "4.19.14"
> -LINUX_VERSION_mpc8315e-rdb = "4.19.14"
> +LINUX_VERSION_genericx86 = "4.19.34"
> +LINUX_VERSION_genericx86-64 = "4.19.34"
> +LINUX_VERSION_edgerouter = "4.19.34"
> +LINUX_VERSION_beaglebone-yocto = "4.19.34"
> +LINUX_VERSION_mpc8315e-rdb = "4.19.34"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> index 5cf6e1f0649e..d7cf1216f45d 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>
> -SRCREV_machine_genericx86    ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> -SRCREV_machine_genericx86-64 ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> -SRCREV_machine_edgerouter ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> -SRCREV_machine_beaglebone-yocto ?=
> "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> -SRCREV_machine_mpc8315e-rdb ?= "8b62af7f252af10588276802c4c6d7c502e875be"
> +SRCREV_machine_genericx86    ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> +SRCREV_machine_genericx86-64 ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> +SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> +SRCREV_machine_beaglebone-yocto ?=
> "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> +SRCREV_machine_mpc8315e-rdb ?= "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
>
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>
> -LINUX_VERSION_genericx86 = "5.0.3"
> -LINUX_VERSION_genericx86-64 = "5.0.3"
> -LINUX_VERSION_edgerouter = "5.0.3"
> -LINUX_VERSION_beaglebone-yocto = "5.0.3"
> -LINUX_VERSION_mpc8315e-rdb = "5.0.3"
> +LINUX_VERSION_genericx86 = "5.0.13"
> +LINUX_VERSION_genericx86-64 = "5.0.13"
> +LINUX_VERSION_edgerouter = "5.0.13"
> +LINUX_VERSION_beaglebone-yocto = "5.0.13"
> +LINUX_VERSION_mpc8315e-rdb = "5.0.13"
> --
> 2.14.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000003456fe058873ee4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 9, 2019 at 8:10 AM Kevin Hao &lt;<a hre=
f=3D"mailto:kexin.hao@windriver.com">kexin.hao@windriver.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Boot test for a=
ll these boards.<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">I do have more -stable updates coming, and you are seeing =
some queued 5.0.x changes that I haven&#39;t sent yet (since I&#39;m hung u=
p on resolving a 4.19 conflict for one of the SoC branches), but yes, the c=
hanges here are good and I&#39;ll be bumping the qemu boards in the next da=
y or so.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br><=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Signed-off-by: Kevin Hao &lt;<a href=3D"mailto:kexin.hao@windriver.com" tar=
get=3D"_blank">kexin.hao@windriver.com</a>&gt;<br>
---<br>
=C2=A0.../recipes-kernel/linux/linux-yocto_4.19.bbappend=C2=A0 =C2=A0| 20 +=
+++++++++----------<br>
=C2=A0.../recipes-kernel/linux/linux-yocto_5.0.bbappend=C2=A0 =C2=A0 | 20 +=
+++++++++----------<br>
=C2=A02 files changed, 20 insertions(+), 20 deletions(-)<br>
<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend<br>
index 6025230c7306..ec269d905c4b 100644<br>
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend<br>
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D &quot;common-pc&quot;<br>
=C2=A0KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
=C2=A0KMACHINE_beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
<br>
-SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;11e0e616ed095bb8012e1b4a=
231254c9656a0193&quot;<br>
-SRCREV_machine_genericx86-64 ?=3D &quot;11e0e616ed095bb8012e1b4a231254c965=
6a0193&quot;<br>
-SRCREV_machine_edgerouter ?=3D &quot;eebb51300a07804a020ec468b5f8c5bf72019=
8d9&quot;<br>
-SRCREV_machine_beaglebone-yocto ?=3D &quot;eebb51300a07804a020ec468b5f8c5b=
f720198d9&quot;<br>
-SRCREV_machine_mpc8315e-rdb ?=3D &quot;8b60f968823256f5d2889c4520d70299ca2=
1411b&quot;<br>
+SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;5664dc14399edcaad210bbeb=
6343d84561fb3ea8&quot;<br>
+SRCREV_machine_genericx86-64 ?=3D &quot;5664dc14399edcaad210bbeb6343d84561=
fb3ea8&quot;<br>
+SRCREV_machine_edgerouter ?=3D &quot;5664dc14399edcaad210bbeb6343d84561fb3=
ea8&quot;<br>
+SRCREV_machine_beaglebone-yocto ?=3D &quot;5664dc14399edcaad210bbeb6343d84=
561fb3ea8&quot;<br>
+SRCREV_machine_mpc8315e-rdb ?=3D &quot;d419f4ca6ba4b097b8ad710a93b89510f5b=
2998c&quot;<br>
<br>
=C2=A0COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
=C2=A0COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx86-64&quot;<br>
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerouter&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_beaglebone-yocto =3D &quot;beaglebone-yocto&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;<br>
<br>
-LINUX_VERSION_genericx86 =3D &quot;4.19.19&quot;<br>
-LINUX_VERSION_genericx86-64 =3D &quot;4.19.19&quot;<br>
-LINUX_VERSION_edgerouter =3D &quot;4.19.14&quot;<br>
-LINUX_VERSION_beaglebone-yocto =3D &quot;4.19.14&quot;<br>
-LINUX_VERSION_mpc8315e-rdb =3D &quot;4.19.14&quot;<br>
+LINUX_VERSION_genericx86 =3D &quot;4.19.34&quot;<br>
+LINUX_VERSION_genericx86-64 =3D &quot;4.19.34&quot;<br>
+LINUX_VERSION_edgerouter =3D &quot;4.19.34&quot;<br>
+LINUX_VERSION_beaglebone-yocto =3D &quot;4.19.34&quot;<br>
+LINUX_VERSION_mpc8315e-rdb =3D &quot;4.19.34&quot;<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b=
/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend<br>
index 5cf6e1f0649e..d7cf1216f45d 100644<br>
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend<br>
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D &quot;common-pc&quot;<br>
=C2=A0KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
=C2=A0KMACHINE_beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
<br>
-SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;3df4aae6074e94e794e27fe7=
f17451d9353cdf3d&quot;<br>
-SRCREV_machine_genericx86-64 ?=3D &quot;3df4aae6074e94e794e27fe7f17451d935=
3cdf3d&quot;<br>
-SRCREV_machine_edgerouter ?=3D &quot;3df4aae6074e94e794e27fe7f17451d9353cd=
f3d&quot;<br>
-SRCREV_machine_beaglebone-yocto ?=3D &quot;3df4aae6074e94e794e27fe7f17451d=
9353cdf3d&quot;<br>
-SRCREV_machine_mpc8315e-rdb ?=3D &quot;8b62af7f252af10588276802c4c6d7c502e=
875be&quot;<br>
+SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;f990fd0ce123aa6035042efa=
d09b2ddc3e7d48f4&quot;<br>
+SRCREV_machine_genericx86-64 ?=3D &quot;f990fd0ce123aa6035042efad09b2ddc3e=
7d48f4&quot;<br>
+SRCREV_machine_edgerouter ?=3D &quot;f990fd0ce123aa6035042efad09b2ddc3e7d4=
8f4&quot;<br>
+SRCREV_machine_beaglebone-yocto ?=3D &quot;f990fd0ce123aa6035042efad09b2dd=
c3e7d48f4&quot;<br>
+SRCREV_machine_mpc8315e-rdb ?=3D &quot;670ce7e9db627d0c2067cfdb571ddc1f117=
818d8&quot;<br>
<br>
=C2=A0COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
=C2=A0COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx86-64&quot;<br>
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerouter&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_beaglebone-yocto =3D &quot;beaglebone-yocto&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;<br>
<br>
-LINUX_VERSION_genericx86 =3D &quot;5.0.3&quot;<br>
-LINUX_VERSION_genericx86-64 =3D &quot;5.0.3&quot;<br>
-LINUX_VERSION_edgerouter =3D &quot;5.0.3&quot;<br>
-LINUX_VERSION_beaglebone-yocto =3D &quot;5.0.3&quot;<br>
-LINUX_VERSION_mpc8315e-rdb =3D &quot;5.0.3&quot;<br>
+LINUX_VERSION_genericx86 =3D &quot;5.0.13&quot;<br>
+LINUX_VERSION_genericx86-64 =3D &quot;5.0.13&quot;<br>
+LINUX_VERSION_edgerouter =3D &quot;5.0.13&quot;<br>
+LINUX_VERSION_beaglebone-yocto =3D &quot;5.0.13&quot;<br>
+LINUX_VERSION_mpc8315e-rdb =3D &quot;5.0.13&quot;<br>
-- <br>
2.14.4<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000003456fe058873ee4e--
