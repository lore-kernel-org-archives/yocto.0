Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF33E00D5D; Wed,  6 Dec 2017 08:19:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D927E00BEA
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 08:19:46 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id b5so7797044itc.3
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 08:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AIiFKFqLOxVaXBSn7i0mTPosX3WfGxfNEORjzbBVxGw=;
	b=1t1KVl9Dc4lxrrwXxJ+bAqljCaXg7UU33iLDHNH4oElH/YZIztqbUtnK5ndSqLn0T7
	KclZXqXx1AnKx2AbwFbVXgloHLvwcSBCisJUtJfjK+td/Uo5gCWGsN+g7Ijqfx6Egwh1
	gzzW9ggxmjpsFOUbBUx9yd3wYbjflpZwXaObmMo2EAPfrkqKBe7+sHm1tK4TNg820AM+
	5f98fFPQlyC/7012c6Jxz6haFVTsBFbmjyhqX7CIfPvwWIXvi9I/HxRZgsIfcgMMRqyb
	R6poNWiP7BnQaRx7r8XunnfEkj57ELLhbnzoHT4EN0bwv5/2sFDETomWt2k3Ju28OBWl
	alTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AIiFKFqLOxVaXBSn7i0mTPosX3WfGxfNEORjzbBVxGw=;
	b=Bz3OxofrSbZ7VvhxnPwSAavrkA372ylEDq+QoYEqcitQ2/P1cHYxg51pPCP3IA3pPd
	RoiCKw8iWDqSdXD3I+7VbazKN1PHsa9G7uQMtCtcmJkIvdxeLD8Jsic4MHbX85itnHYN
	LW99KUFexJzoY6sxViH9HLi9poL26PVmNE8g7pdOH7K9DeoFgCWlyckY3C94s9XRBeFG
	ovhWDewDk/33YrqVrb+uXxNG4bk2PJ3MMmKogT8i6EO90NLkCRcCymuyXNfUpqQY3enK
	IfYZftF3Jy3CuhdYM09lKKm1+C1xn8sdAD9RkHoeiBFNCQsLwejqPcQAw+XzEXtKlavO
	dXDg==
X-Gm-Message-State: AKGB3mKOcDK3WM9FafWlY53DNL0jBOOS2DPbzT+pX13/z0/GNgEUNNgF
	MCXx1OP/6MKiHmjPC6/qCJS38i1IYDGmGHC5bpEfNg==
X-Google-Smtp-Source: AGs4zMbYK6wep6X8IJp8SIFZCkf1KWT93p78StLr1GplqYRJaLWLlrDPeTTWkG5Pd7sVuwyjK/y5+c79C+vhwn2HTDI=
X-Received: by 10.36.93.5 with SMTP id w5mr3201706ita.124.1512577185509; Wed,
	06 Dec 2017 08:19:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Wed, 6 Dec 2017 08:19:25 -0800 (PST)
In-Reply-To: <504ee8af-2bd5-83e6-39ca-e091c7b21c80@gmail.com>
References: <504ee8af-2bd5-83e6-39ca-e091c7b21c80@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Dec 2017 16:19:25 +0000
Message-ID: <CAJTo0LZXGjwHUpwok+Ct0WVUTHoxX3w6BvKCBLOOMLffnPRSJQ@mail.gmail.com>
To: Petr Cvek <petrcvekcz@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto: matchbox-window-manager-2: Makefile with spaces instead of a tab refuses to compile
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
X-List-Received-Date: Wed, 06 Dec 2017 16:19:47 -0000
Content-Type: multipart/alternative; boundary="001a1143f14cd69be2055fae51cf"

--001a1143f14cd69be2055fae51cf
Content-Type: text/plain; charset="UTF-8"

This patch was corrupted because you copied/pasted it into Thunderbird
instead of using git-send-email, but I applied it by hand.

Ross

On 19 November 2017 at 19:58, Petr Cvek <petrcvekcz@gmail.com> wrote:

> A wrong spacing in Makefile.am generates a Makefile which will refuse
> to compile. This patch fixes it.
>
> Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
> ---
>  Makefile.am | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile.am b/Makefile.am
> index c95ea0a..7d2f517 100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -3,6 +3,6 @@ SUBDIRS = matchbox data doc util
>  # Extra clean files so that maintainer-clean removes *everything*
>   snapshot:
> -        $(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
> +       $(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
>   MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub
> configure depcomp install-sh ltmain.sh Makefile.in missing
> --
> 2.14.2
>
>

--001a1143f14cd69be2055fae51cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch was corrupted because you copied/pasted it into=
 Thunderbird instead of using git-send-email, but I applied it by hand.<div=
><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 19 November 2017 at 19:58, Petr Cvek <span dir=3D"ltr">=
&lt;<a href=3D"mailto:petrcvekcz@gmail.com" target=3D"_blank">petrcvekcz@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">A wrong spa=
cing in Makefile.am generates a Makefile which will refuse<br>
to compile. This patch fixes it.<br>
<br>
Signed-off-by: Petr Cvek &lt;<a href=3D"mailto:petrcvekcz@gmail.com" target=
=3D"_blank">petrcvekcz@gmail.com</a>&gt;<br>
---<br>
=C2=A0Makefile.am | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/Makefile.am b/Makefile.am<br>
index c95ea0a..7d2f517 100644<br>
--- a/Makefile.am<br>
+++ b/Makefile.am<br>
@@ -3,6 +3,6 @@ SUBDIRS =3D matchbox data doc util<br>
=C2=A0# Extra clean files so that maintainer-clean removes *everything*<br>
=C2=A0 snapshot:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(MAKE) dist distdir=3D$(PACKAGE)-snapshot-`d<=
wbr>ate +&quot;%Y%m%d&quot;`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(MAKE) dist distdir=3D$(PACKAGE)-snapshot-`d<w=
br>ate +&quot;%Y%m%d&quot;`<br>
=C2=A0 MAINTAINERCLEANFILES =3D aclocal.m4 compile config.guess config.sub =
configure depcomp install-sh ltmain.sh Makefile.in missing<span class=3D"HO=
EnZb"><font color=3D"#888888"><br>
-- <br>
2.14.2<br>
<br>
</font></span></blockquote></div><br></div>

--001a1143f14cd69be2055fae51cf--
