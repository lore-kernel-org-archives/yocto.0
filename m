Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AF4FE008EA; Wed,  1 Apr 2015 07:30:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkarascybi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C140E008DC
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 07:30:00 -0700 (PDT)
Received: by igbud6 with SMTP id ud6so49488764igb.1
	for <yocto@yoctoproject.org>; Wed, 01 Apr 2015 07:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KxqQf+jy6tM4GvOTmHZvuS7dGh2g2otIRwHYjcprny8=;
	b=tkWwgsWEKP6rnogFiyZyc/AjwE24EOisfCCXSauP/V0WGkjpFTkntgQl+nuqpBJOBi
	VxHFGdluim4WTuj6DQKFeBhdUlvmMxowwkw9fbQFm5loCu5evPhD2tFzFgJ78g3iuWAT
	jfXhj/ZLI92rq0GFLVfrOrEd3Wnnz7dbyqLGNYsXjfoOH+sPtGpt1k/oP5ZQOFSDa6YU
	H1oZQu3v4SaKxW36+wuWAM8M0xYRNGVtvGCNWcedC0BMibDy10OhrpXOcVQ4d2lnFSBE
	rglhK3WSqrKHPBlrU9mXObUEZZLNvuJbAyaoABsCRj2xjDEpmL5ks/7o0X8T0iTS/McL
	CzZg==
MIME-Version: 1.0
X-Received: by 10.107.25.68 with SMTP id 65mr66933008ioz.44.1427898599811;
	Wed, 01 Apr 2015 07:29:59 -0700 (PDT)
Received: by 10.36.73.87 with HTTP; Wed, 1 Apr 2015 07:29:59 -0700 (PDT)
Date: Wed, 1 Apr 2015 10:29:59 -0400
Message-ID: <CADu_VSbksoy+hm1Vd=jqzxTpNuFTDLoVX49dp7u9cqWnNVLx9A@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: yocto@yoctoproject.org
Subject: python3-native problems
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
X-List-Received-Date: Wed, 01 Apr 2015 14:30:02 -0000
Content-Type: multipart/alternative; boundary=001a113fe548d12fa50512aa8c8f

--001a113fe548d12fa50512aa8c8f
Content-Type: text/plain; charset=UTF-8

Hello,

When I include

python3 python3-native python3-distribute to one of my recipes.

DEPENDS = "python3 python3-native python3-distribute"
RDEPENDS_${PN} = "python3 python3-native python3-distribute"
RDEPENDS_${PN}-dev = "bash python3 python3-native python3-distribute"

I get the following errors.

WARNING: QA Issue: tests-dev rdepends on python3-native, but it isn't a
build dependency? [build-deps]
WARNING: QA Issue: tests rdepends on python3-native, but it isn't a build
dependency? [build-deps]
WARNING: QA Issue: tests rdepends on glib-2.0, but it isn't a build
dependency? [build-deps]

Finally this error too.

Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for
tests:
 *     python3-native *
 * opkg_install_cmd: Cannot install package tests.

But I can bitbake python3-native by itself.  So I'm a bit confused.

Kind Regards and thanks

--001a113fe548d12fa50512aa8c8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>When I includ=
e<br><br></div>python3 python3-native python3-distribute to one of my recip=
es. <br><br>DEPENDS =3D &quot;python3 python3-native python3-distribute&quo=
t;<br>RDEPENDS_${PN} =3D &quot;python3 python3-native python3-distribute&qu=
ot;<br>RDEPENDS_${PN}-dev =3D &quot;bash python3 python3-native python3-dis=
tribute&quot;<br><br>I get the following errors.<br><br>WARNING: QA Issue: =
tests-dev rdepends on python3-native, but it isn&#39;t a build dependency? =
[build-deps]<br>WARNING: QA Issue: tests rdepends on python3-native, but it=
 isn&#39;t a build dependency? [build-deps]<br>WARNING: QA Issue: tests rde=
pends on glib-2.0, but it isn&#39;t a build dependency? [build-deps]<br><br=
></div>Finally this error too.<br><br>Collected errors:<br>=C2=A0* satisfy_=
dependencies_for: Cannot satisfy the following dependencies for tests:<br>=
=C2=A0* =C2=A0=C2=A0=C2=A0 python3-native * <br>=C2=A0* opkg_install_cmd: C=
annot install package tests.<br><br></div>But I can bitbake python3-native =
by itself.=C2=A0 So I&#39;m a bit confused.<br><br></div>Kind Regards and t=
hanks<br></div>

--001a113fe548d12fa50512aa8c8f--
