Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B556FE00DD7; Mon, 12 Feb 2018 07:16:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,WEIRD_PORT autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75533E009BB
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:16:40 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id g72so20881173lfg.5
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=txuhdximDuY4U7AKZzRHB8Ok7u2453AFQAKknKQ0RL8=;
	b=vHmnuCNIImi3QuOls3TJYu4ztsLkojWDeCJbZkh0EuTIu95LeaEjBSljoBrJ9/Ixop
	G5fGFV2SzH+EyUGhrgQwAeZIX2LbVS6rnrqRi7N9mtm+lYJo+qZyvgPZi4T/diXf7BG/
	bLRhW50pgLJ5g4Wm10V8CjO1RjbQvXVWCZ6qMoDC62b7ogB3rrPZQ9EWqIElOJ40vafa
	dFIfJUsbysqUj+EbXqWTckz2UBDEwKUztqq+o0SrpzTODRh4PnhPm1tK8vVV2uiHeDOP
	BsAXHzBIBDLpNGzP8LKk3Lg3DtOryTSpennY/DXZr255l550pzfLjy4RuW5x1VJFmRtz
	ebmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=txuhdximDuY4U7AKZzRHB8Ok7u2453AFQAKknKQ0RL8=;
	b=BQIIfALCztkkCqRRhEZoIVGbJPsgnonZGRhn8CuYpafHLCV7KWpVRVjYCaUEBmukjc
	n/v+yyu3VqAmMNb4P23KTyhoki1AX9XUsZ7DudfwtcGDyUjIavKT8grWGcPHVEs+JG/a
	fYDi500KUGneJ64wUoOKDtsN4Ot+qgaXe+pNFz0H4EfFY5JXW9T75c3fj7ly6uUo9os9
	eivKSSWyFOVDjAvzHVpqCkLeBTxv6jp5drRKC+M3TD4F0KWuCrTHBbbTDNUsQ5NJId4v
	A/19o0QYpOKIv4c0xnXncXV5cu4DQ63APlBtADAWx7DWZgIkOI7ygXQ9YsO0E1e9Pcsr
	f33w==
X-Gm-Message-State: APf1xPCXQuZXadNIVDXqtAtE+p7N5SXkIOgRZjNY8GjYo0BBYgfRyWQ/
	bceusWanBynvssamhThS7JGe/inB25m0ej2gwd1NLKRG
X-Google-Smtp-Source: AH8x227d4hNvyo0ct2F+UrCIV9CgmF9JnaRBq6vDObuBGzyXw+v/aHn/5uw6HqY8NHGols6hAnVkG+t3qpl1Y3E72ys=
X-Received: by 10.46.50.5 with SMTP id y5mr8228847ljy.111.1518448598640; Mon,
	12 Feb 2018 07:16:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Mon, 12 Feb 2018 07:16:38 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 12 Feb 2018 16:16:38 +0100
Message-ID: <CAOT_U5ZjK_AUOdDAjNUWVNKe0Jrk_aGyenQADAWk2yfC3Z_gQg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Printing DISTRO_NAME during OS boot
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
X-List-Received-Date: Mon, 12 Feb 2018 15:16:41 -0000
Content-Type: multipart/alternative; boundary="f4f5e807fcd85524ff0565055dbb"

--f4f5e807fcd85524ff0565055dbb
Content-Type: text/plain; charset="UTF-8"

Hi,
I have two images defined, one is secure stripped and intended
for production, and the other one extends the production one by adding
different development tools.

They are both built using the same distro so the name printed during boot
is always the same.

    Welcome to senic 0.1.9-1-g1692cb1!
    ...
    senic 0.1.9-1-g1692cb1 senic-hub ttyS0

I would like to be able to easily distinguish which image has been
flashed and booted.

I've identified that the variable responsible for those prints is
$DISTRO_NAME.
So I've extended both of my image recipes with:

    IMAGE_NAME =
"${IMAGE_BASENAME}-${MACHINE}-${DISTRO_VERSION}-${DATETIME}"
    DISTRO_NAME = "${IMAGE_NAME}"

However that failed to end up in my image.
The checking the -e for the image shows the variable has
been correctly renamed:

    # $DISTRO_NAME [5 operations]
    #   set /home/alan/senic-os/oe/meta/conf/bitbake.conf:715
    #     [_defaultval] "OpenEmbedded"
    #   set /home/alan/senic-os/oe/../meta-senic/conf/distro/senic.conf:1
    #     "senic"
    #   set /home/alan/senic-os/oe/meta/conf/documentation.conf:143
    #     [doc] "The long name of the distribution."
    #   set /home/alan/senic-os/oe/../meta-senic/recipes-core/images/
senic-os.bb:11
    #     "${IMAGE_NAME}"
    #   set /home/alan/senic-os/oe/../meta-senic/recipes-core/images/
senic-os-dev.bb:6
    #     "${IMAGE_NAME}"
    # pre-expansion value:
    #   "${IMAGE_NAME}"
    DISTRO_NAME="senic-os-dev-senic-hub-0.1.9-1-g1692cb1-20180212151325"

But the "Welcome to ... " remains the same.
I've grepped for "Welcome to" in all the layers without success.

Any ideas on how to achieve this?

--f4f5e807fcd85524ff0565055dbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I have two images defined, one is secure stripped =
and intended</div><div>for production, and the other one extends the produc=
tion one by adding</div><div>different development tools.</div><div><br></d=
iv><div>They are both built using the same distro so the name printed durin=
g boot</div><div>is always the same.</div><div><br></div><div>=C2=A0 =C2=A0=
 Welcome to senic 0.1.9-1-g1692cb1!<br></div><div>=C2=A0 =C2=A0 ...</div><d=
iv><div>=C2=A0 =C2=A0 senic 0.1.9-1-g1692cb1 senic-hub ttyS0</div><div><br>=
</div></div><div>I would like to be able to easily distinguish which image =
has been</div><div>flashed and booted.</div><div><br></div><div>I&#39;ve id=
entified that the variable responsible for those prints is $DISTRO_NAME.<br=
>So I&#39;ve extended both of my image recipes with:</div><div><br></div><d=
iv><div>=C2=A0 =C2=A0 IMAGE_NAME =3D &quot;${IMAGE_BASENAME}-${MACHINE}-${D=
ISTRO_VERSION}-${DATETIME}&quot;</div><div>=C2=A0 =C2=A0 DISTRO_NAME =3D &q=
uot;${IMAGE_NAME}&quot;</div></div><div><br></div><div>However that failed =
to end up in my image.</div><div>The checking the -e for the image shows th=
e variable has=C2=A0</div><div>been correctly renamed:</div><div><br></div>=
<div><div>=C2=A0 =C2=A0 # $DISTRO_NAME [5 operations]</div><div>=C2=A0 =C2=
=A0 #=C2=A0 =C2=A0set /home/alan/senic-os/oe/meta/conf/bitbake.conf:715</di=
v><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0[_defaultval] &quot;OpenEmbedded&=
quot;</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0set /home/alan/senic-os/oe/../m=
eta-senic/conf/distro/senic.conf:1</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =
=C2=A0&quot;senic&quot;</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0set /home/ala=
n/senic-os/oe/meta/conf/documentation.conf:143</div><div>=C2=A0 =C2=A0 #=C2=
=A0 =C2=A0 =C2=A0[doc] &quot;The long name of the distribution.&quot;</div>=
<div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0set /home/alan/senic-os/oe/../meta-senic/r=
ecipes-core/images/<a href=3D"http://senic-os.bb:11">senic-os.bb:11</a></di=
v><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0&quot;${IMAGE_NAME}&quot;</div><d=
iv>=C2=A0 =C2=A0 #=C2=A0 =C2=A0set /home/alan/senic-os/oe/../meta-senic/rec=
ipes-core/images/<a href=3D"http://senic-os-dev.bb:6">senic-os-dev.bb:6</a>=
</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0&quot;${IMAGE_NAME}&quot;</di=
v><div>=C2=A0 =C2=A0 # pre-expansion value:</div><div>=C2=A0 =C2=A0 #=C2=A0=
 =C2=A0&quot;${IMAGE_NAME}&quot;</div><div>=C2=A0 =C2=A0 DISTRO_NAME=3D&quo=
t;senic-os-dev-senic-hub-0.1.9-1-g1692cb1-20180212151325&quot;</div></div><=
div><br></div><div>But the &quot;Welcome to ... &quot; remains the same.</d=
iv><div>I&#39;ve grepped for &quot;Welcome to&quot; in all the layers witho=
ut success.</div><div><br></div><div>Any ideas on how to achieve this?</div=
><div><br></div></div>

--f4f5e807fcd85524ff0565055dbb--
