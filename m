Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 155F1E00C59; Wed, 16 Jan 2019 05:13:07 -0800 (PST)
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
	*      [209.85.128.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 948C0E00C29
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 05:13:05 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id t200so1963235wmt.0
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mmkkWf8a+aqGXnCHU0JgiivV77hNtOEtlW13Yx9J+xw=;
	b=t2mKVUbjqGbJpXXX93yQ4EpMpg27AW/65CsoM0NqadKMVqfvu84G/nZ6zsry2hPfZm
	/CXoc3bhyxNtFh2RF0x4mO9RB/ETmQfW0ytGoU6UiAtPH2UBXz8bSr6uW6SpYF9Rfj5M
	ylRz0QpyCXiwe4YbtfX2Pedb1JnFie7C+UoCIn2ffxh+lupFyFLKgDOyI8MYQwCrUVK3
	oxYHm42T1lsCA13Wh8SQ1KCG6zurSrqh1nugedvIawT2jCePJ0dTwWW/jesyWsezaKwL
	5bF/tBJFLA1S81e5JxKpSv8WTqMPMYiPNuKOo+5uq1ZoWn/Z7D4GeqWfNhLZPe4Sri9t
	Nv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mmkkWf8a+aqGXnCHU0JgiivV77hNtOEtlW13Yx9J+xw=;
	b=KYLPCn/MW748cLJrc+z3jQ9AvtVxixco0SxsKDC1YzlR5HfMEheYDEvj3N5u/EPwVC
	0NKvGp5U15x2YPkR/9+jrwKFoV3Zuu7ngzN3EpbZ86z8g0Z92U6/wSMUGFRjdZSIuJWs
	cZCM+btySlat4lwYYzX841vNDBXkjV0ZgrDIrSvHg6d8X20LWOfqzh672ZS4IAFVVE/L
	aPFFSf99fZ10wUmBe8ywwSvlPY1IkP6224vvTL2uCQ9+gJ3/nwXa7W6Lw9AbIrOmr/Ec
	F6gErooj1J4TydmI2MmLVPQACNzQ3COXI/DRgRo098xPrw/Pb8thKE7xbqHybaeBcQ9Y
	hITg==
X-Gm-Message-State: AJcUukfRLHR4wEhqLorcfvYkm2UIZUQGCLbK24ECX3e+po+0g8sGXNs6
	XF1FDDpba1lMIgDrt0P8I/bvsNTiyMXEYCdwLV8=
X-Google-Smtp-Source: ALg8bN7e/1pEqFQfd+hhAueRSX8BdQeKT5IA1nti6pxlBVw9xLZvdxZ4rDTgRSBEOiB/l+uPmrcWr4K00oK3ni4EH8I=
X-Received: by 2002:a1c:9806:: with SMTP id a6mr7453888wme.114.1547644384409; 
	Wed, 16 Jan 2019 05:13:04 -0800 (PST)
MIME-Version: 1.0
References: <1547631395-435805-1-git-send-email-changqing.li@windriver.com>
In-Reply-To: <1547631395-435805-1-git-send-email-changqing.li@windriver.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 16 Jan 2019 07:12:52 -0600
Message-ID: <CAJdd5GbEiSAaRw0Fonftxf465-QigYF-p7SpG0y3dWbfe1Jkrw@mail.gmail.com>
To: changqing.li@windriver.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] mingw32-common: change mingw sdk to .zip type
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
X-List-Received-Date: Wed, 16 Jan 2019 13:13:07 -0000
Content-Type: multipart/alternative; boundary="000000000000c58001057f930902"

--000000000000c58001057f930902
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 16, 2019, 3:37 AM <changqing.li@windriver.com wrote:

> From: Changqing Li <changqing.li@windriver.com>
>
> Current sdk type is tar.xz, but for mingw sdk, since we
> have symlink under the sdk folder, 7zip which used to
> extract tar.xz cannot handle it, refer 7zip upstream bug:
> https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
> so change to .zip type
>
> Also tried to use option --dereference of tar which use means:
> "follow symlinks; archive and dump the files they point to"
> with this option, when archive it will deal with symlink to hard link,
> but windows not support hard link, so drop this solution,
> and use .zip for windows.
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  conf/machine-sdk/include/mingw32-common.inc | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/conf/machine-sdk/include/mingw32-common.inc
> b/conf/machine-sdk/include/mingw32-common.inc
> index 9011ded..dbad50a 100644
> --- a/conf/machine-sdk/include/mingw32-common.inc
> +++ b/conf/machine-sdk/include/mingw32-common.inc
> @@ -46,3 +46,8 @@ GCCPIE_mingw32 = ""
>  # wine and wineserver are required to test MinGW SDKs
>  HOSTTOOLS += "${@'wine wineserver' if
> (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x
> in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
>
> +# mingw sdk use .zip type
> +SDK_TAR_TYPE = "zip"
> +SDK_TAR_DEPENDS = "zip-native"
> +SDK_TAR_CMD ?= "zip -r
> ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME}.${SDK_TAR_TYPE} ."
> +
>

You will also need to update the QA tests, since right now they expecting a
tar file (lib/oeqa/sdkmingw/testsdk.py)

--

2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c58001057f930902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Jan 16, 2019, 3:37 AM  &lt;<a href=3D"mailto:changqing.li@windriver=
.com">changqing.li@windriver.com</a> wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">From: Changqing Li &lt;<a href=3D"mailto:changqing.li@windriver.co=
m" target=3D"_blank" rel=3D"noreferrer">changqing.li@windriver.com</a>&gt;<=
br>
<br>
Current sdk type is tar.xz, but for mingw sdk, since we<br>
have symlink under the sdk folder, 7zip which used to<br>
extract tar.xz cannot handle it, refer 7zip upstream bug:<br>
<a href=3D"https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6=
b96/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://sourceforge.n=
et/p/sevenzip/discussion/45797/thread/c71d6b96/</a><br>
so change to .zip type<br>
<br>
Also tried to use option --dereference of tar which use means:<br>
&quot;follow symlinks; archive and dump the files they point to&quot;<br>
with this option, when archive it will deal with symlink to hard link,<br>
but windows not support hard link, so drop this solution,<br>
and use .zip for windows.<br>
<br>
Signed-off-by: Changqing Li &lt;<a href=3D"mailto:changqing.li@windriver.co=
m" target=3D"_blank" rel=3D"noreferrer">changqing.li@windriver.com</a>&gt;<=
br>
---<br>
=C2=A0conf/machine-sdk/include/mingw32-common.inc | 5 +++++<br>
=C2=A01 file changed, 5 insertions(+)<br>
<br>
diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk=
/include/mingw32-common.inc<br>
index 9011ded..dbad50a 100644<br>
--- a/conf/machine-sdk/include/mingw32-common.inc<br>
+++ b/conf/machine-sdk/include/mingw32-common.inc<br>
@@ -46,3 +46,8 @@ GCCPIE_mingw32 =3D &quot;&quot;<br>
=C2=A0# wine and wineserver are required to test MinGW SDKs<br>
=C2=A0HOSTTOOLS +=3D &quot;${@&#39;wine wineserver&#39; if (bb.utils.contai=
ns_any(&#39;IMAGE_CLASSES&#39;, &#39;testsdk&#39;, True, False, d) or any(x=
 in (d.getVar(&quot;BBINCLUDED&quot;) or &quot;&quot;) for x in [&quot;test=
sdk.bbclass&quot;])) else &#39;&#39;}&quot;<br>
<br>
+# mingw sdk use .zip type<br>
+SDK_TAR_TYPE =3D &quot;zip&quot;<br>
+SDK_TAR_DEPENDS =3D &quot;zip-native&quot;<br>
+SDK_TAR_CMD ?=3D &quot;zip -r=C2=A0 ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME=
}.${SDK_TAR_TYPE} .&quot;<br>
+<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>You will also need to update the QA tests, since right now they expecting =
a tar file (lib/oeqa/sdkmingw/testsdk.py)</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
--</blockquote></div></div><div dir=3D"auto"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">
2.7.4<br>
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

--000000000000c58001057f930902--
