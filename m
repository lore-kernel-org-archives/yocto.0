Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89EE7E00971; Mon,  5 Jan 2015 03:44:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A76E0096D
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 03:43:56 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id b16so1543333igk.11
	for <yocto@yoctoproject.org>; Mon, 05 Jan 2015 03:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=F5xYUpXX2lalaTt96mfdb3vdmxV0zjmntcjfaK6nteg=;
	b=JnuMnIIzHfqpgKun7YnrpuQUQRpD5SQSJQrlJDIESpMm/SNR0CVXLghgHlPl+Sq4jS
	722NaHZATFIPLTnIwrAw05zjLWH4bgN8G6ePocylB6w2Sft2nCduwFM/vCwrCfap4GJ+
	JnuY76G9ppXyN54Mzca8WpseZ0Bp9JUofyRHhuL08o8VwVbJ9HCAFdMpBkqELz2Vg4A8
	SHbFFx1vFiZthVkbtzmBEGnk/cWCwxg+TOPzRBkf7eQ84vuowfssvvVt1Av3aLmo85bO
	zbr8DKX8DfXgU9F1Iy7U3Vs/xoPK96z6OkbLCduQXqUQOA7Vd3/zPSIaDDHP4gI112ny
	o6ig==
MIME-Version: 1.0
X-Received: by 10.42.214.212 with SMTP id hb20mr23072800icb.19.1420458236045; 
	Mon, 05 Jan 2015 03:43:56 -0800 (PST)
Received: by 10.50.88.3 with HTTP; Mon, 5 Jan 2015 03:43:55 -0800 (PST)
In-Reply-To: <1416384981-18501-1-git-send-email-bobadeshrikant@gmail.com>
References: <1416384981-18501-1-git-send-email-bobadeshrikant@gmail.com>
Date: Mon, 5 Jan 2015 17:13:55 +0530
Message-ID: <CALwQEroKvLnX11SCHRJX7q3SALFvBV4dVZzdT=qF7+HqRV=X+A@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH 3/3] pkggrp-core-selinux: coreutils addition
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
X-List-Received-Date: Mon, 05 Jan 2015 11:44:07 -0000
Content-Type: multipart/alternative; boundary=20cf301d3f8a93ed92050be6341a

--20cf301d3f8a93ed92050be6341a
Content-Type: text/plain; charset=UTF-8

Hello,

Please provide review comments or feedback if any, It will be a great
help.
@Ping.

Thanks
Shrikant

On Wed, Nov 19, 2014 at 1:46 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>
> To add coreutils to packagegroup-core-selinux
> inorder to get chcon avaibility.
>
> Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
> ---
>  .../packagegroups/packagegroup-core-selinux.bb     |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb
> b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> index 1852aba..40b35d1 100644
> --- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
> +++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> @@ -25,4 +25,5 @@ RDEPENDS_${PN} = " \
>         selinux-config \
>         refpolicy-standard \
>         refpolicy-mls \
> +       coreutils \
>         "
> --
> 1.7.9.5
>
>

--20cf301d3f8a93ed92050be6341a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br></div>Please provide rev=
iew comments or feedback if any, It will be a great help.=C2=A0 <br></div>@=
Ping. <br><br></div>Thanks<br></div>Shrikant<div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Wed, Nov 19, 2014 at 1:46 PM, Shrikant Bobade=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.com" target=
=3D"_blank">bobadeshrikant@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">From: Shrikant Bo=
bade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor.com">Shrikant_Bobade@ment=
or.com</a>&gt;<br>
<br>
To add coreutils to packagegroup-core-selinux<br>
inorder to get chcon avaibility.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor=
.com">Shrikant_Bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0.../packagegroups/<a href=3D"http://packagegroup-core-selinux.bb" tar=
get=3D"_blank">packagegroup-core-selinux.bb</a>=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A0 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-security/packagegroups/<a href=3D"http://packagegroup-=
core-selinux.bb" target=3D"_blank">packagegroup-core-selinux.bb</a> b/recip=
es-security/packagegroups/<a href=3D"http://packagegroup-core-selinux.bb" t=
arget=3D"_blank">packagegroup-core-selinux.bb</a><br>
index 1852aba..40b35d1 100644<br>
--- a/recipes-security/packagegroups/<a href=3D"http://packagegroup-core-se=
linux.bb" target=3D"_blank">packagegroup-core-selinux.bb</a><br>
+++ b/recipes-security/packagegroups/<a href=3D"http://packagegroup-core-se=
linux.bb" target=3D"_blank">packagegroup-core-selinux.bb</a><br>
@@ -25,4 +25,5 @@ RDEPENDS_${PN} =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 selinux-config \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 refpolicy-standard \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 refpolicy-mls \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0coreutils \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
--<br>
1.7.9.5<br>
<br>
</div></div></blockquote></div><br></div></div>

--20cf301d3f8a93ed92050be6341a--
