Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D564EE00CD4; Thu, 10 Mar 2016 22:40:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79134E00CA0
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 22:40:22 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id y89so90953233qge.2
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 22:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=L+3VsvnM/hSdPkiV8aWLf8wh3aj/+AjSU0s+5GWME9Q=;
	b=B1JIQT9wrhwuTytlhDv04R9PkapuPNu6Yx34tEm8WkUQH8ccrIBNGI4h6dxjIEtcse
	1pg/JA3sQDJztJml08cOmpMk1fp6p8nwLb1CjERMEhp0e8TZJHI6jJuW/+oIpQZsJ7+I
	6kmHrEHioiJwetSe6edvWBtuS+qFxmwFIlNuA8zVJTrBeGxpXuFHxqw5QfTstHehYNkv
	pNBa7BPyJzF4sCbK94Ko3G5p4WUlzqzAJqTgZeCLoW+TquIRh9cj2sDXGDX+yKkwJnme
	xMfdTZEWZX6aazxWbsuxPK7BNxg2VsGjg0Y/vC6VPvr/IWravDDdx3MWu4UMf/9ByAuj
	yGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=L+3VsvnM/hSdPkiV8aWLf8wh3aj/+AjSU0s+5GWME9Q=;
	b=PWMHuDCbbViDRM8QA8oOVrLWDZQDlLf/I7Fa94T71nV7OudMqHKT0FNmL9LOPO/qvr
	+AhCL+ovxW6b3zxRNtPJLEJNgrBXbIoExTwyL5LAdxXdhGq8Xgz/MzarkCevbA07OqjH
	ex2aQPHF3i4CoT4FYKOD3s/qnZucGXjA41ajbqu+qdDDTCIl27bXDjWGRmM9cEBtLX+R
	RNXS/jT5nptcSfmjlARHyPP8ta3yjW2HEN0B2Q9qxAEPVB+vgN0ZYUW7cwIWXvn/UHjN
	DrkIyeJ+y81bkTemILUhEBZklZkRxoJLabhRSyCX1PsraToCLPY2WtRf23hEp4B8P1S1
	itDA==
X-Gm-Message-State: AD7BkJK0OS4O4C++zNNKmCqpy8SOzKAkLGyOhGSGX6hGdvs/zBhAAhWLrVoDnPiVIaPI97VxwXHKkrxzN4gAxQ==
MIME-Version: 1.0
X-Received: by 10.140.104.234 with SMTP id a97mr9520858qgf.57.1457678422333;
	Thu, 10 Mar 2016 22:40:22 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Thu, 10 Mar 2016 22:40:22 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Thu, 10 Mar 2016 22:40:22 -0800 (PST)
In-Reply-To: <1457618824-40656-1-git-send-email-helio.castro@bmw-carit.de>
References: <1457618824-40656-1-git-send-email-helio.castro@bmw-carit.de>
Date: Fri, 11 Mar 2016 13:40:22 +0700
Message-ID: <CAMKF1sqt2yMAODnSL5=qODtGZowBqehsf+V6aeK3w3=WdPW=Mg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: helio.castro@bmw-carit.de
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][oe-core] gcc: Fix the license on GNU OpenMP
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
X-List-Received-Date: Fri, 11 Mar 2016 06:40:26 -0000
Content-Type: multipart/alternative; boundary=001a11352ee28f5e7c052dc034f8

--001a11352ee28f5e7c052dc034f8
Content-Type: text/plain; charset=UTF-8

Please resend it to oe-core ml. Secondly some links which points to the
fact that its under runtime exception
On Mar 10, 2016 9:10 PM, <helio.castro@bmw-carit.de> wrote:

> From: Helio Chissini de Castro <helio.castro@bmw-carit.de>
>
> Poky jethro has libgomp ( GNU OpenMP ) license marked as GPL-3.0,
> where's in fact the correct is GPL-3.0 with GCC Library Runtime Exception
>
> Signed-off-by: Helio Chissini de Castro <helio.castro@bmw-carit.de>
> ---
>  meta/recipes-devtools/gcc/gcc-runtime.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-devtools/gcc/gcc-runtime.inc
> b/meta/recipes-devtools/gcc/gcc-runtime.inc
> index 690d780..b2856d3 100644
> --- a/meta/recipes-devtools/gcc/gcc-runtime.inc
> +++ b/meta/recipes-devtools/gcc/gcc-runtime.inc
> @@ -119,9 +119,9 @@ LICENSE_libatomic = "GPL-3.0-with-GCC-exception"
>  LICENSE_libatomic-dev = "GPL-3.0-with-GCC-exception"
>  LICENSE_libatomic-staticdev = "GPL-3.0-with-GCC-exception"
>
> -LICENSE_libgomp = "GPLv3"
> -LICENSE_libgomp-dev = "GPLv3"
> -LICENSE_libgomp-staticdev = "GPLv3"
> +LICENSE_libgomp = "GPL-3.0-with-GCC-exception"
> +LICENSE_libgomp-dev = "GPL-3.0-with-GCC-exception"
> +LICENSE_libgomp-staticdev = "GPL-3.0-with-GCC-exception"
>
>  # The base package doesn't exist, so we clear the recommends.
>  RRECOMMENDS_${PN}-dbg = ""
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11352ee28f5e7c052dc034f8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Please resend it to oe-core ml. Secondly some links which po=
ints to the fact that its under runtime exception</p>
<div class=3D"gmail_quote">On Mar 10, 2016 9:10 PM,  &lt;<a href=3D"mailto:=
helio.castro@bmw-carit.de">helio.castro@bmw-carit.de</a>&gt; wrote:<br type=
=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">From: Helio Chissini de Cas=
tro &lt;<a href=3D"mailto:helio.castro@bmw-carit.de">helio.castro@bmw-carit=
.de</a>&gt;<br>
<br>
Poky jethro has libgomp ( GNU OpenMP ) license marked as GPL-3.0,<br>
where&#39;s in fact the correct is GPL-3.0 with GCC Library Runtime Excepti=
on<br>
<br>
Signed-off-by: Helio Chissini de Castro &lt;<a href=3D"mailto:helio.castro@=
bmw-carit.de">helio.castro@bmw-carit.de</a>&gt;<br>
---<br>
=C2=A0meta/recipes-devtools/gcc/gcc-runtime.inc | 6 +++---<br>
=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta/recipes-devtools/gcc/gcc-runtime.inc b/meta/recipes-devto=
ols/gcc/gcc-runtime.inc<br>
index 690d780..b2856d3 100644<br>
--- a/meta/recipes-devtools/gcc/gcc-runtime.inc<br>
+++ b/meta/recipes-devtools/gcc/gcc-runtime.inc<br>
@@ -119,9 +119,9 @@ LICENSE_libatomic =3D &quot;GPL-3.0-with-GCC-exception&=
quot;<br>
=C2=A0LICENSE_libatomic-dev =3D &quot;GPL-3.0-with-GCC-exception&quot;<br>
=C2=A0LICENSE_libatomic-staticdev =3D &quot;GPL-3.0-with-GCC-exception&quot=
;<br>
<br>
-LICENSE_libgomp =3D &quot;GPLv3&quot;<br>
-LICENSE_libgomp-dev =3D &quot;GPLv3&quot;<br>
-LICENSE_libgomp-staticdev =3D &quot;GPLv3&quot;<br>
+LICENSE_libgomp =3D &quot;GPL-3.0-with-GCC-exception&quot;<br>
+LICENSE_libgomp-dev =3D &quot;GPL-3.0-with-GCC-exception&quot;<br>
+LICENSE_libgomp-staticdev =3D &quot;GPL-3.0-with-GCC-exception&quot;<br>
<br>
=C2=A0# The base package doesn&#39;t exist, so we clear the recommends.<br>
=C2=A0RRECOMMENDS_${PN}-dbg =3D &quot;&quot;<br>
--<br>
2.5.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11352ee28f5e7c052dc034f8--
