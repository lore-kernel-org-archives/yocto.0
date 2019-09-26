Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6636AE00CBC; Thu, 26 Sep 2019 09:59:18 -0700 (PDT)
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
	*      [209.85.167.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D0EE0098A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:59:15 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id r134so2228630lff.12
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XaXYn065vA7WDaqMiEnyPrqgXEnmv5hYC4QNpkrbdq4=;
	b=Xhn1XfZhfqUc9sBRn7T+6mcZ+HdZqQ6WgvDK2ZYgf+0n+KaiCHZKpnhmQA/Sz8f0hX
	OJi56i06Q2oO/7PNO5+laj4Q0u+t00rcZJ9zb7kSm3K+cb3QXldtkmW6HpTF/iWA4rMV
	UEIhO2ZP8QtEvvAq8ozDxnUJuXaP4byVVs40IXtOsd4v3J4FjhfqsMDr44UCV+QQTT5x
	TbMVsmkEGH2yhHubD838O8suexzHnYXfIP8FGMyFDUAyeLI9J/vUtNozZqRv/tuvoVME
	XR+989qw1NgkLjL+P9Sy6LFJaAJXqe4QCiJ/aKjdeEimREBpXzRT2zi8yNdrXeC4+Sym
	8B0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XaXYn065vA7WDaqMiEnyPrqgXEnmv5hYC4QNpkrbdq4=;
	b=JK/4SClgFDbq360ibjzAoILvM/1XJG/dmqJxcqLv0HtdVkINbiuAOYSrRMi2x5cwcd
	Zv/665UpMa7zPA06ySmVvQTiOR1gfMFLSeiPmtxWqQ5J1l2Oa91nxqRsQs8nULImzc28
	bP9/Sm7C5aqA33NNxjHYMO8y7NfUZGxXEINxVS6whsyUjKqnrkzPyX4zvBEqu8FEXepx
	oM5frfYcWXwFyAwwG+PgAsLTQxUHAsX7YMtt7U3pnS5JrOePLv9U6YQqlxQXEpbnEbGX
	/D8jIM4ZJmL5vDUaUUTnmk2UvifnUFQ27b6zBTOdE0HiL3Fcnux8QmOkfa8SCoYyJRRV
	Bg2Q==
X-Gm-Message-State: APjAAAXSiFF83/WGDPsB7wWLBSZi469aSsRGSnuhbg6RIhZDG6npT+7Y
	hc7Ex0yBZWQqQdPBIeIl/WHgYlFUROC+u5bIpP4=
X-Google-Smtp-Source: APXvYqwkrrr+lzzfGlm5tlVLd2Co4Sqv+bVyQo4dLsfJuFWnl8ArqL3Y60dq96Vh9PqefWRfII3AF3IQuEuyqwfd8f4=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr2752545lfn.177.1569517154363; 
	Thu, 26 Sep 2019 09:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190926165534.11753-1-bruce.ashfield@gmail.com>
In-Reply-To: <20190926165534.11753-1-bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 26 Sep 2019 12:59:03 -0400
Message-ID: <CADkTA4NbO+16wnW8R0ykPU6oKKB3xNBH2mjvqEoXOb_FKF8GYg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsps: update to v5.2.17
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
X-List-Received-Date: Thu, 26 Sep 2019 16:59:18 -0000
Content-Type: multipart/alternative; boundary="000000000000746e63059377b079"

--000000000000746e63059377b079
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 26, 2019 at 12:55 PM <bruce.ashfield@gmail.com> wrote:

> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> Updating the reference BSP SRCREVs and versions to 5.2.17 to match
> the latest for qemu* and to pickup some reference board specific
> patches.
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> ---
>  .../linux/linux-yocto_5.2.bbappend               | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> index b7cefd25ca..63027d3f99 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> @@ -9,10 +9,10 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>
>  SRCREV_machine_genericx86    ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
> -SRCREV_machine_genericx86-64 ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
> -SRCREV_machine_edgerouter ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
> +SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
> +SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
>  SRCREV_machine_beaglebone-yocto ?=
> "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
> -SRCREV_machine_mpc8315e-rdb ?= "cae01d71ef67eaafec75ce24f49b038b705b8711"
> +SRCREV_machine_mpc8315e-rdb ?= "77f031b182885c177b3a96098ae61271911a7954"
>

I may have a bug in my script (or an old input) .. let me check why not all
the board SRCREV updates. I can send a v2 in a couple of hours (but this
as-is, won't break anything).

Bruce



>
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>
> -LINUX_VERSION_genericx86 = "5.2.10"
> -LINUX_VERSION_genericx86-64 = "5.2.10"
> -LINUX_VERSION_edgerouter = "5.2.10"
> -LINUX_VERSION_beaglebone-yocto = "5.2.10"
> -LINUX_VERSION_mpc8315e-rdb = "5.2.10"
> +LINUX_VERSION_genericx86 = "5.2.17"
> +LINUX_VERSION_genericx86-64 = "5.2.17"
> +LINUX_VERSION_edgerouter = "5.2.17"
> +LINUX_VERSION_beaglebone-yocto = "5.2.17"
> +LINUX_VERSION_mpc8315e-rdb = "5.2.17"
> --
> 2.19.1
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000746e63059377b079
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Sep 26, 2019 at 12:55 PM &lt;<a href=3D"mai=
lto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">From: Bruce Ashfield =
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a>&gt;<br>
<br>
Updating the reference BSP SRCREVs and versions to 5.2.17 to match<br>
the latest for qemu* and to pickup some reference board specific<br>
patches.<br>
<br>
Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.co=
m" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../linux/linux-yocto_5.2.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 16 ++++++++--------<br>
=C2=A01 file changed, 8 insertions(+), 8 deletions(-)<br>
<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b=
/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend<br>
index b7cefd25ca..63027d3f99 100644<br>
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend<br>
@@ -9,10 +9,10 @@ KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
=C2=A0KMACHINE_beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
<br>
=C2=A0SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;77c28ea0e55cabb0b22=
b47d4eb2cc94b0940dfe6&quot;<br>
-SRCREV_machine_genericx86-64 ?=3D &quot;35276d20c01a78ee3640a074446b0c15c4=
86c5d0&quot;<br>
-SRCREV_machine_edgerouter ?=3D &quot;35276d20c01a78ee3640a074446b0c15c486c=
5d0&quot;<br>
+SRCREV_machine_genericx86-64 ?=3D &quot;25b14cdf9659c68ab32d66616dfdbbe2ec=
e3fd94&quot;<br>
+SRCREV_machine_edgerouter ?=3D &quot;25b14cdf9659c68ab32d66616dfdbbe2ece3f=
d94&quot;<br>
=C2=A0SRCREV_machine_beaglebone-yocto ?=3D &quot;77c28ea0e55cabb0b22b47d4eb=
2cc94b0940dfe6&quot;<br>
-SRCREV_machine_mpc8315e-rdb ?=3D &quot;cae01d71ef67eaafec75ce24f49b038b705=
b8711&quot;<br>
+SRCREV_machine_mpc8315e-rdb ?=3D &quot;77f031b182885c177b3a96098ae61271911=
a7954&quot;<br></blockquote><div><br></div><div><div class=3D"gmail_default=
" style=3D"font-size:small">I may have a bug in my script (or an old input)=
 .. let me check why not all the board SRCREV updates. I can send a v2 in a=
 couple of hours (but this as-is, won&#39;t break anything).</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
=C2=A0COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx86-64&quot;<br>
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerouter&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_beaglebone-yocto =3D &quot;beaglebone-yocto&quot;<=
br>
=C2=A0COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;<br>
<br>
-LINUX_VERSION_genericx86 =3D &quot;5.2.10&quot;<br>
-LINUX_VERSION_genericx86-64 =3D &quot;5.2.10&quot;<br>
-LINUX_VERSION_edgerouter =3D &quot;5.2.10&quot;<br>
-LINUX_VERSION_beaglebone-yocto =3D &quot;5.2.10&quot;<br>
-LINUX_VERSION_mpc8315e-rdb =3D &quot;5.2.10&quot;<br>
+LINUX_VERSION_genericx86 =3D &quot;5.2.17&quot;<br>
+LINUX_VERSION_genericx86-64 =3D &quot;5.2.17&quot;<br>
+LINUX_VERSION_edgerouter =3D &quot;5.2.17&quot;<br>
+LINUX_VERSION_beaglebone-yocto =3D &quot;5.2.17&quot;<br>
+LINUX_VERSION_mpc8315e-rdb =3D &quot;5.2.17&quot;<br>
-- <br>
2.19.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000746e63059377b079--
