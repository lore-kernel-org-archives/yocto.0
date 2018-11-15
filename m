Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02127E0095C; Thu, 15 Nov 2018 06:40:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15838E00872
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:40:31 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id y139so1696638wmc.5
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=B8zFgtkpsdxj3MmQWy+XyXXui3DZHTemQ4VPELqAs5Q=;
	b=qXYkgq5dbZfbSozrBnV5NfdQ0xerVmNrPqyksVgaAWUrMjtkzaXXavNeOLfKKriZYM
	W4JfI/o4z5mN4EpCTZ50l+mZRxsa5Lqj7ZDRARmW0AX/5KKjSsicfKqvmZCywJnomTYh
	Ia7kV5uRxzXprFRuJFMFZ4hwIf3TO4+WHkuxZMqcwOLWHv9orc5nHEsuY5FCEybrgomX
	0s39oJw6GoCreIaExmaAERSC94kM2FrA/5GWEmJrglVmH7n82ejuSHyoQ6JK/kP200/P
	JT96aq2/DusesEOwwF1otA93efiOz1piftnLurNcdZXoUvg/Y3z/g/OOa26wwNxLQNog
	PanA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=B8zFgtkpsdxj3MmQWy+XyXXui3DZHTemQ4VPELqAs5Q=;
	b=CHvQ0y68EhdE1iFiesUmdLYRgtZi04te5d9PKSs+qge8+5g+uYGVWA9XqL0Je9IQcw
	DGdyKxS4CmxcRyT2X2JScJOs8dDgz/8A6Ot7p63cR8caLm9pTtzW0y+RHF2YU6NQd+9e
	DfYx5ERwcLwrPI+wd2oSq+8+490IZB9N5AIl/JYQmCDBBsjlPLd3+bOvD05lfDnASazc
	xVA05XLsTtLRMv7b2TI0s7BbVXdDaCIScWyvTYPeFBqNqWkzxVe9pibCMDzfeDkbQpDp
	eHC5dH0zZ8No4FdY34ewo8izQE88gqVMOVN7IX+fZ8D+lzBRSAD2eZPf+iU8BrKyFpGT
	7/Yg==
X-Gm-Message-State: AGRZ1gKMrYWeaMwHAOj1oUhs2lymj4K2iKQ+KdQ4MjkeTn+/ghfbNrqF
	+bkyfcB84O7g7Ty8jXNgkqzdiM6nsXWrftrWkbU=
X-Google-Smtp-Source: AJdET5f6KCcXKnJKIVez4cN+7G91Th67xwvsS8TmKu0nWzt+mcZRcoad0MbltbjXzPLrpcEJtPTXbikhMvSqqA/d1ns=
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr5663358wmd.103.1542292830948;
	Thu, 15 Nov 2018 06:40:30 -0800 (PST)
MIME-Version: 1.0
References: <20181115141359.31763-1-ste.lendl@gmail.com>
In-Reply-To: <20181115141359.31763-1-ste.lendl@gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 15 Nov 2018 08:40:18 -0600
Message-ID: <CAJdd5GZUVSOW2rvTtJRQauLTO_2e3S0E=zwEj9SS2Q-WqQiFBw@mail.gmail.com>
To: Stefan Lendl <ste.lendl@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH] Use lynis download link from github releases
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
X-List-Received-Date: Thu, 15 Nov 2018 14:40:33 -0000
Content-Type: multipart/alternative; boundary="000000000000542b98057ab508e8"

--000000000000542b98057ab508e8
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018, 8:29 AM Stefan Lendl <ste.lendl@gmail.com wrote:

> Unlike the official download page, it also works for older releases
>
> Signed-off-by: Stefan Lendl <ste.lendl@gmail.com>
> ---
>  meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb | 8
> ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/meta-security-compliance/recipes-auditors/lynis/
> lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/
> lynis_2.5.1.bb
> index c25b804..1ee71ef 100644
> --- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
> +++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
> @@ -6,12 +6,12 @@ HOMEDIR = "https://cisofy.com/"
>  LICENSE = "GPL-3.0"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
>
> -SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
> +SRC_URI = "https://github.com/CISOfy/lynis/archive/${PV}.tar.gz"
>

Using the archive links from GitHub in the past has caused problems because
the checksums change. I think most other recipes use the git fetcher and
specify the sha1 that corresponds to the release.


> -SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
> -SRC_URI[sha256sum] =
> "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
> +SRC_URI[md5sum] = "f91840acc0801b77844363fc55c5d688"
> +SRC_URI[sha256sum] =
> "e143eaefec3222f98a0f74dd6dcb3818aa348dea3d0379bd3a45455911b6ee2a"
>
> -S = "${WORKDIR}/${BPN}"
> +S = "${WORKDIR}/${BPN}-${PV}"
>
>  inherit autotools-brokensep
>
> --
> 2.14.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000542b98057ab508e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Thu, Nov 15, 2018, 8:29 AM Stefan Lendl &lt;<a href=3D"mailto:ste.lendl@=
gmail.com">ste.lendl@gmail.com</a> wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Unlike the official download page, it also works for older releases<=
br>
<br>
Signed-off-by: Stefan Lendl &lt;<a href=3D"mailto:ste.lendl@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">ste.lendl@gmail.com</a>&gt;<br>
---<br>
=C2=A0meta-security-compliance/recipes-auditors/lynis/<a href=3D"http://lyn=
is_2.5.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">lynis_2.5.1.bb=
</a> | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/meta-security-compliance/recipes-auditors/lynis/<a href=3D"htt=
p://lynis_2.5.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">lynis_2=
.5.1.bb</a> b/meta-security-compliance/recipes-auditors/lynis/<a href=3D"ht=
tp://lynis_2.5.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">lynis_=
2.5.1.bb</a><br>
index c25b804..1ee71ef 100644<br>
--- a/meta-security-compliance/recipes-auditors/lynis/<a href=3D"http://lyn=
is_2.5.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">lynis_2.5.1.bb=
</a><br>
+++ b/meta-security-compliance/recipes-auditors/lynis/<a href=3D"http://lyn=
is_2.5.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">lynis_2.5.1.bb=
</a><br>
@@ -6,12 +6,12 @@ HOMEDIR =3D &quot;<a href=3D"https://cisofy.com/" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://cisofy.com/</a>&quot;<br>
=C2=A0LICENSE =3D &quot;GPL-3.0&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D3edd6782854304fd11da4=
975ab9799c1&quot;<br>
<br>
-SRC_URI =3D &quot;<a href=3D"https://cisofy.com/files/$%7BBPN%7D-$%7BPV%7D=
.tar.gz" rel=3D"noreferrer noreferrer" target=3D"_blank">https://cisofy.com=
/files/${BPN}-${PV}.tar.gz</a>&quot;<br>
+SRC_URI =3D &quot;<a href=3D"https://github.com/CISOfy/lynis/archive/$%7BP=
V%7D.tar.gz" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github=
.com/CISOfy/lynis/archive/${PV}.tar.gz</a>&quot;<br></blockquote></div></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Using the archive links fro=
m GitHub in the past has caused problems because the checksums change. I th=
ink most other recipes use the git fetcher and specify the sha1 that corres=
ponds to the release.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-SRC_URI[md5sum] =3D &quot;5b9da89c616344bbc73cbc5688a4a0bd&quot;<br>
-SRC_URI[sha256sum] =3D &quot;7a09c6fc71c65d572ca702df7b4394d71f9037484062e=
f71b76f59a2c498b029&quot;<br>
+SRC_URI[md5sum] =3D &quot;f91840acc0801b77844363fc55c5d688&quot;<br>
+SRC_URI[sha256sum] =3D &quot;e143eaefec3222f98a0f74dd6dcb3818aa348dea3d037=
9bd3a45455911b6ee2a&quot;<br>
<br>
-S =3D &quot;${WORKDIR}/${BPN}&quot;<br>
+S =3D &quot;${WORKDIR}/${BPN}-${PV}&quot;<br>
<br>
=C2=A0inherit autotools-brokensep<br>
<br>
-- <br>
2.14.5<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div></div>

--000000000000542b98057ab508e8--
