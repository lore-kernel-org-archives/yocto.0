Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89369E00CD5; Fri,  5 Jul 2019 02:39:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36F6CE00994
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 02:39:53 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id j6so17902077ioa.5
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 02:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8l8zAy24ifp2qgMq/BiDRhiT7TFTG0LLWre1KD1iogU=;
	b=iaOBLYqWTxY2Py5FLi2pkzccfKN5IDllXPWK2NCAKqQIaGXscflrhp97C+bMqyB9oD
	J1e97IyzMHCHzxrHQ20IgfxF6cylLpKzbnIuTPtGhxOC2blN7Rmq9P2EP9p9BSWlTVKn
	yqts74oqIcD8QWyvv4eQjIKfhTjriY41UBEbMtU2RnViiP1+L76Rk2peE+5W70ajaEcJ
	IJhPpltbXSWhoM/9SyGFqAnzhamOLQAQ2l7/UKO8LGHTdkHfqN/ckvjuzPK/ITPVtSTC
	dqmhrG1Q5ddJv5t0r2U16oW6xiJwMXjbdaBy2G2aLkm6yhJhlbGw2E1Nmzr4WYw7m0g/
	VlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8l8zAy24ifp2qgMq/BiDRhiT7TFTG0LLWre1KD1iogU=;
	b=tvNlyeZPDyIKf3Nz57tca81ogDagiwl8kMlKvEnMms7jSoWas8syOIEzJHl796zTb+
	vPuC+H7ggk/irPLcF6B11E+yBVJKeiiK1zNtMjvJhLlvTTi85bdgLaMN5NvRJEpChiQl
	3m1ItLWAnonIT/MuVUPgGNcmJjZc0dpIDEoj68MDcZtFEN9BvgefycPIuVLkGxDFOGg7
	ARSe2qLRPFMczyI8D3FVTqMD0Uyz1+PCYxIhOiydksa/lkNFurMvs4D+iVHuMtT9hZjz
	9O1nUvdJaRpBWp/P0HfBxmzgn9uA8aj++ikqPiQzpI5Kcznc0UGWO0O0160y65aFNvvm
	HUSw==
X-Gm-Message-State: APjAAAULn/0z1RSqhqHob3GLRhc8Mgv3oQxo0kWu7xeaYujbfvmLFdMe
	OhKBBpdab807bG9+eq93/MkX9/tsFGduvuw0wf7ypN9nXZU=
X-Google-Smtp-Source: APXvYqwUUU3Pb3VIVRIO2YtKUXLpzyK3CJlxZ39q8el5uUmj5bj+CTYDbkA2NwwYOvp2JkgDbZTHuhRT7VDHcfhGl1w=
X-Received: by 2002:a02:b713:: with SMTP id g19mr3208626jam.77.1562319592399; 
	Fri, 05 Jul 2019 02:39:52 -0700 (PDT)
MIME-Version: 1.0
From: Onur Eser <onureser12@gmail.com>
Date: Fri, 5 Jul 2019 12:39:40 +0300
Message-ID: <CAG+Ob8ZYNO2VFCrgimh6GQoZXgGY7tn2aRURDSjoTuvNak=3cA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: dev_pkgs feature caused conflict
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
X-List-Received-Date: Fri, 05 Jul 2019 09:39:53 -0000
Content-Type: multipart/alternative; boundary="00000000000054a9aa058cebe023"

--00000000000054a9aa058cebe023
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am trying to build a toolchain for my image. Added line
IMAGE_FEATURES += "dev-pkgs"
to my local.conf file and rebuilt everything from zero.
It gives two conflict errors.

Check my error log:
https://paste.ee/p/HbC5r#zh4fQsZhX9vAQEXQiwIqc7c2VkK82i2d

Note: If I exclude the line
IMAGE_FEATURES += "dev-pkgs"
image is being builded and booted successfully.
But I need it to cross compile if I am not wrong.
If I include this line, following error shows up.

Note2: My base image is core-image-weston.
My device is SolidRun Humming Board 2 i.MX6 ARMv7

Cheers,
Onur

--00000000000054a9aa058cebe023
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I am trying =
to build a toolchain for my image. Added line</div><div>IMAGE_FEATURES +=3D=
 &quot;dev-pkgs&quot;</div><div>to my local.conf file and rebuilt everythin=
g from zero.</div><div>It gives two conflict errors. <br></div><div><br></d=
iv><div>Check my error log:</div><div><a href=3D"https://paste.ee/p/HbC5r#z=
h4fQsZhX9vAQEXQiwIqc7c2VkK82i2d" target=3D"_blank">https://paste.ee/p/HbC5r=
#zh4fQsZhX9vAQEXQiwIqc7c2VkK82i2d</a></div><div><br></div><div>Note: If I e=
xclude the line</div><div>IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;</div><di=
v>image is being builded and booted successfully. <br></div><div>But I need=
 it to cross compile if I am not wrong.</div><div>If I include this line, f=
ollowing error shows up.</div><div><br></div><div>Note2: My base image is c=
ore-image-weston.</div><div>My device is SolidRun Humming Board 2 i.MX6 ARM=
v7</div><div><br></div><div>Cheers,</div><div>Onur<br></div></div>

--00000000000054a9aa058cebe023--
