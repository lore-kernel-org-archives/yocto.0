Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26E0E00CD4; Mon, 27 Jun 2016 11:42:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F95E00CC9
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 11:42:29 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id l184so29648692lfl.1
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 11:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XFgKa5TogJOd1XI5mjqekoLX5zhDETnNFV9W1bs3z1Y=;
	b=OMsAE9RbqH+f+KEow0FHPCDK1ndqrH0Bf0XdT1tU+8cGKUgBo0+tOQFPl0u43yoXEY
	cJ6/0RbYVTh7god7buM5Zvs1l3RYOuh/5RdwzLxxhEKiHCBTzSh5iUc3x17Gf5wzz1gP
	bgRbwPVACoJTelcCF6uGBHm/Y5NHF2m3pOvxIOEjYuqT3ZfqFFv2QMq16id/EEiHBa8P
	FeztuAVqoX92ZIhtSgba4SmIXRkKzqJHf22XuOzG1DvlLvT76D+uVYQZpam0Ak9g9CwK
	sbJdXloCb4J944Kl+iDYuhSXUSuMC1oPFvXGmvZFsoJLKTvHOb6hljkx10yFwuZ7CL5x
	qgGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XFgKa5TogJOd1XI5mjqekoLX5zhDETnNFV9W1bs3z1Y=;
	b=cZzcaCK41F/MLs9Xqy1WytoOW/O7VR7El3jm5iJyEuR3PrzIYH/N4x182Wpqw0OW4G
	hMyeXDRTxR6qUOPFaWqp343Zt573tH4nI4RzfE+zwUrPcx7jUJWEr6UC01AP++kJulcd
	peO9DWkXbxFfP1mIPghJFgHAR2p92u2+UwiIHI/E5BvycXQMnVFX3/rHXH48jMTVFxtT
	j64abROePGGh3ga8Rkh9tihy9VvkvsNgA4EzqqhLtZ+ETD3r4cZBq3xUaEPBnMMbIC/R
	VplJdz8lr+KZFxVzxL+FRL180d28WG8Vt1oypcg1SDHj8hTUW+rune27F5RIGipeprCE
	nrXQ==
X-Gm-Message-State: ALyK8tLfqhV/8vWyJ/tUaIOubrPRukKTPng97ccImbFqUMnFKzdtOxj16wIIw5RhdRqYgx2qdVAN1DLzdIbg/g==
X-Received: by 10.25.157.142 with SMTP id g136mr925744lfe.216.1467052947623;
	Mon, 27 Jun 2016 11:42:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.5.215 with HTTP; Mon, 27 Jun 2016 11:41:58 -0700 (PDT)
X-Originating-IP: [179.105.243.72]
In-Reply-To: <1463062229-23247-1-git-send-email-fabio.berton@ossystems.com.br>
References: <1463062229-23247-1-git-send-email-fabio.berton@ossystems.com.br>
From: Fabio Berton <fabio.berton@ossystems.com.br>
Date: Mon, 27 Jun 2016 15:41:58 -0300
Message-ID: <CAAPZna0T95H4PUNzpqxEU=6_bL7fNWA03jW=ZZp31w0+LjMFpg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH] mono-4.xx: Remove --disable-static from EXTRA_OECONF
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
X-List-Received-Date: Mon, 27 Jun 2016 18:42:34 -0000
Content-Type: multipart/alternative; boundary=001a11410b7acf6ad0053646e171

--001a11410b7acf6ad0053646e171
Content-Type: text/plain; charset=UTF-8

Any update on this?

Without this patch I can't build mono-4.4.0.148.

On Thu, May 12, 2016 at 11:10 AM, Fabio Berton <
fabio.berton@ossystems.com.br> wrote:

> As of commit OE-Core:773c9e18071d71454473dd81aff911104a2e9bc6
> EXTRA_OECONF is appended with the option --disable-static on
> DISABLE_STATIC variable and this cause the error:
>  __
> /
> | mono_boehm-main.o: In function `main':
> | x86_64-linux/mono-native/4.4.0.122-r0/mono-4.4.0/mono/mini/main.c:51:
> | undefined reference to `mono_build_date'
> | collect2: error: ld returned 1 exit status
> | Makefile:1390: recipe for target 'mono-boehm' failed
> \__
>
> There's a bug with this issue open here:
> https://bugzilla.xamarin.com/show_bug.cgi?id=33081
>
> Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
> ---
>  recipes-mono/mono/mono-4.xx.inc | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/recipes-mono/mono/mono-4.xx.inc
> b/recipes-mono/mono/mono-4.xx.inc
> index 855c857..6d7c023 100644
> --- a/recipes-mono/mono/mono-4.xx.inc
> +++ b/recipes-mono/mono/mono-4.xx.inc
> @@ -34,6 +34,9 @@ inherit autotools-brokensep
>  inherit pkgconfig
>  inherit gettext
>
> +# avoids build breaks when using no-static-libs.inc
> +DISABLE_STATIC = ""
> +
>  EXTRA_OECONF += " mono_cv_uscore=no --with-sigaltstack=no
> --with-mcs-docs=no "
>
>  do_configure_prepend() {
> --
> 2.1.4
>
>

--001a11410b7acf6ad0053646e171
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace;font-size:small">Any update on this?<br><br></div><div class=3D=
"gmail_default" style=3D"font-family:monospace,monospace;font-size:small">W=
ithout this patch I can&#39;t build mono-4.4.0.148.<br></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, May 12, 2016 at 1=
1:10 AM, Fabio Berton <span dir=3D"ltr">&lt;<a href=3D"mailto:fabio.berton@=
ossystems.com.br" target=3D"_blank">fabio.berton@ossystems.com.br</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">As of commit OE-Core:773c9e1=
8071d71454473dd81aff911104a2e9bc6<br>
EXTRA_OECONF is appended with the option --disable-static on<br>
DISABLE_STATIC variable and this cause the error:<br>
=C2=A0__<br>
/<br>
| mono_boehm-main.o: In function `main&#39;:<br>
| x86_64-linux/mono-native/4.4.0.122-r0/mono-4.4.0/mono/mini/main.c:51:<br>
| undefined reference to `mono_build_date&#39;<br>
| collect2: error: ld returned 1 exit status<br>
| Makefile:1390: recipe for target &#39;mono-boehm&#39; failed<br>
\__<br>
<br>
There&#39;s a bug with this issue open here:<br>
<a href=3D"https://bugzilla.xamarin.com/show_bug.cgi?id=3D33081" rel=3D"nor=
eferrer" target=3D"_blank">https://bugzilla.xamarin.com/show_bug.cgi?id=3D3=
3081</a><br>
<br>
Signed-off-by: Fabio Berton &lt;<a href=3D"mailto:fabio.berton@ossystems.co=
m.br">fabio.berton@ossystems.com.br</a>&gt;<br>
---<br>
=C2=A0recipes-mono/mono/mono-4.xx.inc | 3 +++<br>
=C2=A01 file changed, 3 insertions(+)<br>
<br>
diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.=
inc<br>
index 855c857..6d7c023 100644<br>
--- a/recipes-mono/mono/mono-4.xx.inc<br>
+++ b/recipes-mono/mono/mono-4.xx.inc<br>
@@ -34,6 +34,9 @@ inherit autotools-brokensep<br>
=C2=A0inherit pkgconfig<br>
=C2=A0inherit gettext<br>
<br>
+# avoids build breaks when using no-static-libs.inc<br>
+DISABLE_STATIC =3D &quot;&quot;<br>
+<br>
=C2=A0EXTRA_OECONF +=3D &quot; mono_cv_uscore=3Dno --with-sigaltstack=3Dno =
--with-mcs-docs=3Dno &quot;<br>
<br>
=C2=A0do_configure_prepend() {<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a11410b7acf6ad0053646e171--
