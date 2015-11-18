Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0EC8E00C10; Wed, 18 Nov 2015 01:23:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E48E00C08
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 01:23:52 -0800 (PST)
Received: by lfdo63 with SMTP id o63so22285069lfd.2
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 01:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Ktv2Yo6J6IgoJlh9CY7hZHuXP9uJH8dBcjNAMOTFSY4=;
	b=fGphTEWdg/DRMw8ZxE7hfmQAcWO8hakOhi8YHjpLo5MM/VX9J+r9wK6SsijcfItht6
	VXr9KOd/devDYZNN2oFlcMkv0LBG6vkFlSOxcgsb+H1pVZq7Bs967hX+9g2tasHAogrp
	Ng3qu6pekgtUArN32ARSsIso6BydsP/YTqh91LLZGqyGRuQQsxslPiP39AE1qr0DLeTL
	ENNGMOTn/XJuVGXmG8NHRQVdAv3bXHqdfXBV09z48gcUPhskkarxIfLwuF0hBFqfIUTL
	BAsj8uS6Rrg4lf1nVyxziGmRICTFc1RexjYAPyekkQnly/5YXqO5tPWp/5o/yZvaGhKw
	kyqg==
MIME-Version: 1.0
X-Received: by 10.25.143.146 with SMTP id r140mr200260lfd.163.1447838631274;
	Wed, 18 Nov 2015 01:23:51 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Wed, 18 Nov 2015 01:23:51 -0800 (PST)
Date: Wed, 18 Nov 2015 09:23:51 +0000
Message-ID: <CABatt_y2weW-YiHJP_Si9_Qk-xP0DxOuLfLZXsAjFy2q_Ph6Yw@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: aclocal warnings
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
X-List-Received-Date: Wed, 18 Nov 2015 09:23:53 -0000
Content-Type: multipart/alternative; boundary=001a114014844f33e30524cd33a3

--001a114014844f33e30524cd33a3
Content-Type: text/plain; charset=UTF-8

Hi,

I've created an autotools project to test out my SDK I've generated.  The
SDK was generated from a Yocto build system based the Fido branch.
After souring the environment setup file in the SDK, running aclocal I get
the following warnings
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
    LANGUAGE = "en_GB:en",
    LC_ALL = (unset),
    LANG = "en_GB.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
    LANGUAGE = "en_GB:en",
    LC_ALL = (unset),
    LANG = "en_GB.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").

If I take the same project and build for the host aclocal works fine.

Does anyone know what I can do to fix this in the SDK? even a hint as to
where to look would be appreciated.

Many Thanks,
Martin.

--001a114014844f33e30524cd33a3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;ve created=
 an autotools project to test out my SDK I&#39;ve generated.=C2=A0 The SDK =
was generated from a Yocto build system based the Fido branch.=C2=A0 <br>Af=
ter souring the environment setup file in the SDK, running aclocal I get th=
e following warnings<br>perl: warning: Setting locale failed.<br>perl: warn=
ing: Please check that your locale settings:<br>=C2=A0=C2=A0=C2=A0 LANGUAGE=
 =3D &quot;en_GB:en&quot;,<br>=C2=A0=C2=A0=C2=A0 LC_ALL =3D (unset),<br>=C2=
=A0=C2=A0=C2=A0 LANG =3D &quot;en_GB.UTF-8&quot;<br>=C2=A0=C2=A0=C2=A0 are =
supported and installed on your system.<br>perl: warning: Falling back to t=
he standard locale (&quot;C&quot;).<br>perl: warning: Setting locale failed=
.<br>perl: warning: Please check that your locale settings:<br>=C2=A0=C2=A0=
=C2=A0 LANGUAGE =3D &quot;en_GB:en&quot;,<br>=C2=A0=C2=A0=C2=A0 LC_ALL =3D =
(unset),<br>=C2=A0=C2=A0=C2=A0 LANG =3D &quot;en_GB.UTF-8&quot;<br>=C2=A0=
=C2=A0=C2=A0 are supported and installed on your system.<br>perl: warning: =
Falling back to the standard locale (&quot;C&quot;).<br><br></div>If I take=
 the same project and build for the host aclocal works fine.<br><br></div>D=
oes anyone know what I can do to fix this in the SDK? even a hint as to whe=
re to look would be appreciated.<br><br></div>Many Thanks,<br></div>Martin.=
<br></div>

--001a114014844f33e30524cd33a3--
