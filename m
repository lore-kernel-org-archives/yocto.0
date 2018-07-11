Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF3DDE00CEA; Wed, 11 Jul 2018 12:28:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BFB4E0044F
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:28:24 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id z74-v6so14257232qkb.10
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=GZAeTzN9mKhxc/JnW0RKZZWy/temQy8ntMIxOOaz5Os=;
	b=Xqx8hPedUYHk1LY4ElSzXBL8yzzEwmFde9Wgt9lgOyjYeVxuueEbVFDv+yLwI8frAG
	eCizT8J+U35YWX+w1KscZ/U3+CtbQEOLEwi9ZIzV2lYd2LKyL8q11o9zfvNG3SBuUfr/
	CQmaxYkrQ8qrtuGhfTjCYyGXjaijm1+S4SrKgpHpTycNTZFf8+X/lfYe66DWMdAX4ttB
	HcHzhPubevKJsYl0bjPaWkY4g3YCMe1AC9bmT+XY2S/iBWfRQTm8IHqscM9COyaeNImD
	+kkotr4yRNWp46f8l7/rHBe/hTFotoPPYj3ewVSPwa39ltZHV8DxGL0MKb8m3us8J06Z
	XHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GZAeTzN9mKhxc/JnW0RKZZWy/temQy8ntMIxOOaz5Os=;
	b=qDzCM1FC/jTTArOFpeRDmxcCP2DgiqLkAM6XMpbaB0ZFTHQUQFR5kr5fZsUTg4cBOQ
	9xP09LS55Q+4s/MA25M8dYIll2LBFU8SnYO4/J817tbJaAQ3ZvZXsaRjGmPkfAt2HpbP
	I4aA1EEfxRt5UjRNvmh5A5pre3HUyJkQ7xB0HmFc9YbVjcsuUluwPJLhCuw2jBpHc0+4
	sL3B3fTvw0k7AOVlunrJEWruAgtCwYBg3Jt2aMs7HZqQbB6eMsAtIPhLAky80Yc33Wfn
	Uc/6t6gdjtc/HZm0IVk3YM1tdD0LmuABSXm0F/DxPdoLaoVSXtUU42nHIr3E/SfQ8Ttt
	gU1Q==
X-Gm-Message-State: APt69E1rURTodznPIkWzd2mSeukxWHvCiOGzlpyMAzEly/oc2xo5gJS8
	2yZVJ8nnUwHV48yEWAs7rRlaPNpEN0MUgz3dc+e2WQql
X-Google-Smtp-Source: AAOMgpcSPeakCsGAV/kcowiNfYNrZ0HE1MCkQjQFoShKBXzA3tP13KjNgfX2zpdzwigo84/UwdXWGPV0Ro2bfDP1gj8=
X-Received: by 2002:a37:c9:: with SMTP id
	t70-v6mr27142764qkg.235.1531337303531; 
	Wed, 11 Jul 2018 12:28:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Wed, 11 Jul 2018 12:28:23 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 11 Jul 2018 15:28:23 -0400
Message-ID: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Which bb is chosen when several versions are available
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
X-List-Received-Date: Wed, 11 Jul 2018 19:28:24 -0000
Content-Type: multipart/alternative; boundary="00000000000002351f0570be4093"

--00000000000002351f0570be4093
Content-Type: text/plain; charset="UTF-8"

Hi,

In the BSP yocto image, I have 2 recipes:

/sources/meta-openembedded/meta-oe/recipes-devtools/php

drwxrwxr-x 2 jay jay  4096 Jun 28 09:48 php
-rw-rw-r-- 1 jay jay   232 Jun 28 09:48 php_5.5.38.bb
drwxrwxr-x 2 jay jay  4096 Jun 28 09:48 php-5.6.26
-rw-rw-r-- 1 jay jay   291 Jun 28 09:48 php_5.6.26.bb
-rw-rw-r-- 1 jay jay 11980 Jun 28 09:48 php.inc


If I add in my image recipe:
CORE_IMAGE_EXTRA_INSTALL += " \
    php \
"

which version will be included?

Thanks,
S

--00000000000002351f0570be4093
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>In the BSP yocto image, =
I have 2 recipes:</div><div><br></div><div style=3D"margin-left:40px"><span=
 style=3D"font-family:monospace,monospace">/sources/meta-openembedded/meta-=
oe/recipes-devtools/php<br><br>drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28 09:48=
 php<br>-rw-rw-r-- 1 jay jay=C2=A0=C2=A0 232 Jun 28 09:48 <a href=3D"http:/=
/php_5.5.38.bb">php_5.5.38.bb</a><br>drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28=
 09:48 php-5.6.26<br>-rw-rw-r-- 1 jay jay=C2=A0=C2=A0 291 Jun 28 09:48 <a h=
ref=3D"http://php_5.6.26.bb">php_5.6.26.bb</a><br>-rw-rw-r-- 1 jay jay 1198=
0 Jun 28 09:48 php.inc</span></div><div><br></div><div><br></div><div>If I =
add in my image recipe:</div><div style=3D"margin-left:40px"><span style=3D=
"font-family:monospace,monospace">CORE_IMAGE_EXTRA_INSTALL +=3D &quot; \<br=
>=C2=A0=C2=A0=C2=A0 php \=C2=A0=C2=A0 <br></span></div><div style=3D"margin=
-left:40px"><span style=3D"font-family:monospace,monospace">&quot;</span></=
div><div><br></div><div>which version will be included?</div><div><br></div=
><div>Thanks,</div><div>S</div><div><br></div></div>

--00000000000002351f0570be4093--
