Return-Path: <jbaptiste.marie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28212E00D46; Mon, 23 Sep 2019 05:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jbaptiste.marie[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5452E00C25
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 05:48:55 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id k9so7412664oib.7
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 05:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0utgLZaNGQ5zb+jRosUvfqivhQaJaBtLKfknRDGt5LI=;
	b=r8OitgNNWXj4f5dj9vsdqrZxCBQg3uv7waLiRarp7X8etFdI/bivvxQFS5yBC9seCy
	AMDdI0cri2AFD4aeSNZ29LOT6c/9nTWQhDKdt1076afwY21kgop7LpSz8+w4kC0RkwGO
	oaVxW1dPtO1x7GulNhfSKUNeelojBUGBixPnnheK87zACsGhqBkOUZa80d+GJcGniqqj
	W/V2CHz7KA0a3moXEmHzWnj8IUQ4hxKkJJ1ioLrusEfwYda0lA/H4bCNxYgK2Y/tBvhi
	imh1avL0gOORecOBot5R1BSa3mZWLKHDFoU/hzeB6SSxIsqwCjI3Yy+gztgp95+TSUPK
	rzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0utgLZaNGQ5zb+jRosUvfqivhQaJaBtLKfknRDGt5LI=;
	b=AvsMuXvgjJ0W6uIubZLvM+HyE/ciLXWja72/gqwQjzub0m60+fgP+rOXhmebGXR+1n
	TG4Z8SXaPeTmIc7+Aqqv6bRH4uqGh0lB/fLgViLBP3OqJ3iNvSfLAPP+TM8hnWjWstDG
	qhjfAwvETVjlRYQF4sfXR86+UQKu8rTdM3cfEiNEkwdpFZ+/zCruAgu1TvTWC4oBbyX7
	WWiwY5PaSXQkOv06fTNoJ4NpyRPwEzLCUjp17+SmUgkHTGJMKwSGgAyM65QkO+hYljRr
	fUjHm5VWtPrBhFulvAa2XiWPQdhJL1B8HtDFvTqoPufWHIQTd37B/TOsVMaN1ZEebRjV
	eAYw==
X-Gm-Message-State: APjAAAWCXcBiWL9AkB6AxTTYXnj9CqEuz001ynTPQDpEBf7AP0S7qruf
	Mbh7eihwaczjLs38mCFAhud6L54A0k4wNVWdVu1e2qtjyDI=
X-Google-Smtp-Source: APXvYqze2noIp19SbAnmUtLTi0CixI5zhXRnCJLrI58Lw61PQFZ52hgEoGtcTYl8IT+3dU3HkocBga4zDGjXG+ahEkM=
X-Received: by 2002:aca:da87:: with SMTP id
	r129mr13490478oig.177.1569242934972; 
	Mon, 23 Sep 2019 05:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
	<CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
In-Reply-To: <CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
From: Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
Date: Mon, 23 Sep 2019 14:48:43 +0200
Message-ID: <CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
To: Jussi Kukkonen <jku@goto.fi>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 23 Sep 2019 12:48:57 -0000
Content-Type: multipart/alternative; boundary="000000000000b49576059337d75d"

--000000000000b49576059337d75d
Content-Type: text/plain; charset="UTF-8"

Hello,
Thanks for your answer. It seems "x11" is enabled as a distro feature
during my build.

I am using the following layers:

- meta-freescale (branch rocko): that meta overloads gtk recipe as shown
below:

PACKAGECONFIG_remove_imxgpu2d = " \
    ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
"

CFLAGS_append_imxgpu2d = " \
    -DLINUX \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '-DEGL_API_FB
-DEGL_API_WL', '', d)} \
"

- meta-solidrun-arm-imx6 (branch rocko): that branch overloads gtk recipe
with the .bbappend as shown below:

DEPENDS_append_imxgpu2d = " virtual/egl"

PACKAGECONFIG_remove_imxgpu2d = " \
    ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
"

I do not see any reason why gdk-x11-3.0 would not be built

--000000000000b49576059337d75d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div></div><div>Thanks for your answer. I=
t seems &quot;x11&quot; is enabled as a distro feature during my build.</di=
v><div><br></div><div>I am using the following layers:</div><div><br></div>=
<div>- meta-freescale (branch rocko): that meta overloads gtk recipe as sho=
wn below:</div><div><br></div><div>PACKAGECONFIG_remove_imxgpu2d =3D &quot;=
 \<br>=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot=
;wayland&quot;, &quot;x11&quot;, &quot;&quot;, d)} \<br>&quot;<br><br>CFLAG=
S_append_imxgpu2d =3D &quot; \<br>=C2=A0 =C2=A0 -DLINUX \<br>=C2=A0 =C2=A0 =
${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;wayland&#39;, &#39;-DE=
GL_API_FB -DEGL_API_WL&#39;, &#39;&#39;, d)} \<br>&quot;</div><div><br></di=
v><div>- meta-solidrun-arm-imx6 (branch rocko): that branch overloads gtk r=
ecipe with the .bbappend as shown below:</div><div><br></div><div>DEPENDS_a=
ppend_imxgpu2d =3D &quot; virtual/egl&quot;<br><br>PACKAGECONFIG_remove_imx=
gpu2d =3D &quot; \<br>=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATU=
RES&quot;, &quot;wayland&quot;, &quot;x11&quot;, &quot;&quot;, d)} \<br>&qu=
ot;</div><div><br></div><div>I do not see any reason why gdk-x11-3.0 would =
not be built <br></div></div>

--000000000000b49576059337d75d--
