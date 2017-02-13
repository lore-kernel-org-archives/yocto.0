Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B24C4E00726; Mon, 13 Feb 2017 09:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD6AE00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 09:05:11 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id r18so20605044wmd.3
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 09:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wPvqdHZygBafdAPO3cg34gtJCJHymvxvnuUjQc6JDmw=;
	b=cGY0IH3KlbTgt9EGUtjm16FBArd0uf7Xb/sdajFrvQMfx3OiPwcGy4Q95VBMBLSKWk
	YUV9iCRWErUvrada8uia9QcdWyhN7bZjzbdkLNXAyW50Gl18tTMxMgmvEA3k2OaDLTTu
	m6ehEak0GeCodh7I0iIurelFgfXSCch3kM2t+JnvSRPr4hRgPkGq9BwZYJxjyL1vVMkq
	Dgb2W0Kf4HESzAzHQVCODZDYYLKN6k6VpH6MWm8S2xwpd7ny9eY/zC7Lxyf9LFnUYQJW
	nhQf9q1SLR4wpqbhaY5Hy2iCcj4ze1Mo1I3Fc0ZxFql7EeAr85lA93J9rvfWJVwNk1B3
	Swng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wPvqdHZygBafdAPO3cg34gtJCJHymvxvnuUjQc6JDmw=;
	b=lr2RTwAtzjbzTElMWZC8NKUklL/xpeva+OxXgNVxuQSGI2SNp7Gitc8/Pl77+i9pY8
	Tazgp0N+ZAqlMGFsoZQ994WYgjzfss+OVdOI16IhnmOeFbtCErEgqNdFfd8hRKaAIs5X
	uJcDgx4Nb2COi+ZUiSxnd6ynJWMvkA+Btd52q1rt5A8TS3tRm7Apw4MMO0ddnweTO1Ip
	l37ap0hzx/fzLSHt5G9XQVeG5KLK123Wsj+IO7sTR+JmnKkrKHUU9L8xmvIUm0yVS3VF
	5RbHxLVaZyJ+u1S8h9iKAjJiZy+amfacY9V0TI9W3S+roWlBT52F0+TZWw9y9MsUFZLk
	kMQQ==
X-Gm-Message-State: AMke39kHaEdjiiXMP78kk8dV7OAX+7A8rxUfoQ5MZyXhQg4Gdkco6Pb9PDEVhvqKovpX2S2BoY4yDI42Q1+dpw==
X-Received: by 10.28.0.2 with SMTP id 2mr20076136wma.141.1487005510875; Mon,
	13 Feb 2017 09:05:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Mon, 13 Feb 2017 09:05:10 -0800 (PST)
In-Reply-To: <1486564699-6001-4-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
	<1486564699-6001-4-git-send-email-eddie.cai.linux@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Mon, 13 Feb 2017 18:05:10 +0100
Message-ID: <CABgxDoLjrQqFs_bW2LH7UOqoxEOZJNCwksjTW-zDa+_W4VMTRA@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATH 3/3] recipes-kernel: linux: Add mainline kernel
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
X-List-Received-Date: Mon, 13 Feb 2017 17:05:13 -0000
Content-Type: multipart/alternative; boundary=001a113ca22e41429205486c73ba

--001a113ca22e41429205486c73ba
Content-Type: text/plain; charset=UTF-8

Hello,

1. Autorev is bad, when linus will merge patch for the next merge window,
it will break things. Use a fix git revision instead (or a branch from the
stable tree)
2. rc8 is out :)

rk3288 is not a machine for me , can you really ensure that it will board
for all rk3288-based board ? suppose that there is no DT support on
upstream... that's wrong :)

Thanks!
Romain

2017-02-08 15:38 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:

> Add mainline kervel support. Now the version is 4.10.-rc7.
>
> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> ---
>  recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux_4.10.bb
>
> diff --git a/recipes-kernel/linux/linux_4.10.bb b/recipes-kernel/linux/
> linux_4.10.bb
> new file mode 100644
> index 0000000..7abdc56
> --- /dev/null
> +++ b/recipes-kernel/linux/linux_4.10.bb
> @@ -0,0 +1,18 @@
> +# Copyright (C) 2017 Eddie Cai
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/
> linux.git"
> +
> +SRCREV = "${AUTOREV}"
> +LINUX_VERSION = "4.10"
> +# Override local version in order to use the one generated by linux build
> system
> +# And not "yocto-standard"
> +LINUX_VERSION_EXTENSION = ""
> +PR = "r1"
> +PV = "${LINUX_VERSION}-rc7"
> +
> +# Include only supported boards for now
> +COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|rk3288)"
> +deltask kernel_configme
> --
> 2.7.4
>
>

--001a113ca22e41429205486c73ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>1. Autorev is bad, when linus wi=
ll merge patch for the next merge window, it will break things. Use a fix g=
it revision instead (or a branch from the stable tree)</div><div>2. rc8 is =
out :)</div><div><br></div><div>rk3288 is not a machine for me , can you re=
ally ensure that it will board for all rk3288-based board ? suppose that th=
ere is no DT support on upstream... that&#39;s wrong :)</div><div><br></div=
><div>Thanks!</div><div>Romain</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">2017-02-08 15:38 GMT+01:00 Eddie Cai <span dir=3D"=
ltr">&lt;<a href=3D"mailto:eddie.cai.linux@gmail.com" target=3D"_blank">edd=
ie.cai.linux@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Ad=
d mainline kervel support. Now the version is 4.10.-rc7.<br>
<br>
Signed-off-by: Eddie Cai &lt;<a href=3D"mailto:eddie.cai.linux@gmail.com">e=
ddie.cai.linux@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux_4.10.bb" rel=3D"noreferr=
er" target=3D"_blank">linux_4.<wbr>10.bb</a> | 18 ++++++++++++++++++<br>
=C2=A01 file changed, 18 insertions(+)<br>
=C2=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux_4.10.=
bb" rel=3D"noreferrer" target=3D"_blank">linux_4.<wbr>10.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux_4.10.bb" rel=3D"n=
oreferrer" target=3D"_blank">linux_<wbr>4.10.bb</a> b/recipes-kernel/linux/=
<a href=3D"http://linux_4.10.bb" rel=3D"noreferrer" target=3D"_blank">linux=
_<wbr>4.10.bb</a><br>
new file mode 100644<br>
index 0000000..7abdc56<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux_4.10.bb" rel=3D"noreferr=
er" target=3D"_blank">linux_<wbr>4.10.bb</a><br>
@@ -0,0 +1,18 @@<br>
+# Copyright (C) 2017 Eddie Cai<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+require recipes-kernel/linux/linux-<wbr>yocto.inc<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://git.kernel.org/pub/scm/linux/ker=
nel/git/torvalds/linux.git" rel=3D"noreferrer" target=3D"_blank">git.kernel=
.org/pub/scm/<wbr>linux/kernel/git/torvalds/<wbr>linux.git</a>&quot;<br>
+<br>
+SRCREV =3D &quot;${AUTOREV}&quot;<br>
+LINUX_VERSION =3D &quot;4.10&quot;<br>
+# Override local version in order to use the one generated by linux build =
system<br>
+# And not &quot;yocto-standard&quot;<br>
+LINUX_VERSION_EXTENSION =3D &quot;&quot;<br>
+PR =3D &quot;r1&quot;<br>
+PV =3D &quot;${LINUX_VERSION}-rc7&quot;<br>
+<br>
+# Include only supported boards for now<br>
+COMPATIBLE_MACHINE =3D &quot;(radxarock|marsboard-rk3066|<wbr>rk3288)&quot=
;<br>
+deltask kernel_configme<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a113ca22e41429205486c73ba--
