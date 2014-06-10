Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB756E00C08; Tue, 10 Jun 2014 11:23:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87319E00C0F
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:23:44 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id n3so3962795wiv.8
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:23:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MxLwUKeIKZx1q+MjvSfhVoQucGKbYCvV9mTqrIXR5z0=;
	b=fpVwG2gcgYeJIc0m9JrYY42WZJa/6uKlLsCwNOLiutrJU0y7JDnoP/YSP1y21u1/6N
	6xuP8At0zC/KmZ4yTPUPVJjv22/eCGfJIxAWjtXiypRdXtk7nf9otIDOHg8/IslAJNKd
	RhDh/VBIy0bKL9MCNANioOaHC3Xum5A034END3bkXQyXpqauQLpiJ8p8j8STOxz29TkP
	AftX959wxtfxhKPABRDmWIURXlPKkX3R/BxUGPjV5TIPbW1/2wGh+s55bnapDP8u/Coc
	sQgv/0Uu1kZxUHNq4c+5FXl+63YqmvClTfG/Gu3JV/55jpkKtOBSny5E1CKoKpz+uZWf
	WV5A==
X-Gm-Message-State: ALoCoQlMRyXGgqZ0rxm0LXe3YIc6LB33fcNlKLNYz9XgrgpZuXV4T6PyPrP97U9RmQN2R385W4tc
X-Received: by 10.195.13.79 with SMTP id ew15mr43968775wjd.19.1402424624177;
	Tue, 10 Jun 2014 11:23:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 11:23:23 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <b1b874cd4262f7b9934a11cc1809d609352a370f.1401706333.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<b1b874cd4262f7b9934a11cc1809d609352a370f.1401706333.git.ajlennon@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 21:23:23 +0300
Message-ID: <CAK18fxFts9yvjae-0y1R-UQ_c2bbeun_z-wDKzh7BSw-F6JWXQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Add SRCBRANCH and SRCFORK for use by SRC_URI
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
X-List-Received-Date: Tue, 10 Jun 2014 18:23:56 -0000
Content-Type: multipart/alternative; boundary=047d7bfd093a8c80e004fb7f6d9b

--047d7bfd093a8c80e004fb7f6d9b
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> Makes it clearer to manage repo forks, and branches prior to (e.g.)
> upstream commits of in tree changes
>
> Change-Id: I42f8af975c08f84c4ceb9910713eba2da3a87d8b
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-graphics/userland/userland_git.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index 4b405ee..7fb7ebb 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -11,8 +11,11 @@ PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> +SRCBRANCH = "master"
> +SRCFORK = "raspberrypi"
>  SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
> -SRC_URI = "git://
> github.com/raspberrypi/userland.git;protocol=git;branch=master \
> +
> +SRC_URI = "git://
> github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
>            "
>  S = "${WORKDIR}/git"
>
> --
> 2.0.0
>
>
Thanks Alex. Merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7bfd093a8c80e004fb7f6d9b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenno=
n@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Makes it clearer to manage repo forks, and b=
ranches prior to (e.g.) upstream commits of in tree changes<br>
<br>
Change-Id: I42f8af975c08f84c4ceb9910713eba2da3a87d8b<br>
Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.=
co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a> | 5 ++++-<br>
=C2=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" t=
arget=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D=
"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
index 4b405ee..7fb7ebb 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
@@ -11,8 +11,11 @@ PROVIDES =3D &quot;virtual/libgles2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/egl&quot;<br>
=C2=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<br>
+SRCBRANCH =3D &quot;master&quot;<br>
+SRCFORK =3D &quot;raspberrypi&quot;<br>
=C2=A0SRCREV =3D &quot;eccb81050afd177da1923404b366c6226f29bfe0&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/userland.=
git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/raspberryp=
i/userland.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/${SRCFORK}/userland.g=
it;protocol=3Dgit;branch=3D${SRCBRANCH}" target=3D"_blank">github.com/${SRC=
FORK}/userland.git;protocol=3Dgit;branch=3D${SRCBRANCH}</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
2.0.0<br>
<br>
</font></span></blockquote></div><br>Thanks Alex. Merged.<br clear=3D"all">=
<div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></d=
iv><div style=3D"text-align:center"><div align=3D"left" style=3D"font-famil=
y:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7bfd093a8c80e004fb7f6d9b--
