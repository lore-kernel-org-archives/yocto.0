Return-Path: <yannickkiekens@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C2BCE007B9; Fri, 24 Apr 2015 00:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yannickkiekens[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575C1E0049A
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 00:46:27 -0700 (PDT)
Received: by labbd9 with SMTP id bd9so29382591lab.2
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 00:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ULWHQQJ4z9McoVOI0WHZqGY1gJJbf/mv8yq4pxAVeV4=;
	b=hxyWCxtzcdKD4eoeX238a9o/ZIueldwUzLtN1SpH/F/tI0GE0D8XOQlN86EAo/MDxM
	HM4xbz3eF8pqK7itRbW4uC1EeJ5amx/bxgf7izazTUYj0u0wRuUbZUCGvpEOT9suAm9u
	AFnypBe2dLq8Q8TIZwHigX9oaQWLAUEyCNf4Thn564ESEMV8ou2BokZYdEe1QA1z6Drd
	TOUimPazBdABFy38VNCHIx3lUdv3HMtPg23y77B/WJjjf9707Y+yYJ0I1MIFPYa+Pc9I
	VxACHfNaslT3kSHejsRbb0QMCHq7wh3xlrRHstMXPvgOKMKl5Qh2XjoO+CSTUWrMl521
	eVVQ==
MIME-Version: 1.0
X-Received: by 10.112.204.6 with SMTP id ku6mr5730037lbc.73.1429861585658;
	Fri, 24 Apr 2015 00:46:25 -0700 (PDT)
Received: by 10.112.22.39 with HTTP; Fri, 24 Apr 2015 00:46:25 -0700 (PDT)
Date: Fri, 24 Apr 2015 09:46:25 +0200
Message-ID: <CAEyFGJG2qO6rahc6DcrZC3FfVtpyd96TMy8eypCagYLyCGC9Fg@mail.gmail.com>
From: Yannick Kiekens <yannickkiekens@gmail.com>
To: yocto@yoctoproject.org
Subject: Warnings when using custom distro.conf
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
X-List-Received-Date: Fri, 24 Apr 2015 07:46:29 -0000
Content-Type: multipart/alternative; boundary=001a11c3db82e427e405147397a3

--001a11c3db82e427e405147397a3
Content-Type: text/plain; charset=UTF-8

Hi all,

I created a custom distro.conf by requiring poky.conf then changing some
values.
Now I get these warnings:

WARNING: Variable key PREFERRED_PROVIDER_virtual/${SDK_PREFIX}compilerlibs
(nativesdk-gcc-runtime) replaces original key
PREFERRED_PROVIDER_virtual/x86_64-tcs-linux-compilerlibs (gcc-runtime).
WARNING: Variable key PREFERRED_PROVIDER_virtual/${SDK_PREFIX}gcc
(gcc-crosssdk-${SDK_ARCH}) replaces original key
PREFERRED_PROVIDER_virtual/x86_64-tcs-linux-gcc (gcc-cross-${TARGET_ARCH}).
WARNING: Variable key PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++
(gcc-cross-${TARGET_ARCH}) replaces original key
PREFERRED_PROVIDER_virtual/x86_64-tcs-linux-g++ (gcc-crosssdk-${SDK_ARCH}).
WARNING: Variable key PREFERRED_PROVIDER_virtual/${SDK_PREFIX}gcc-initial
(gcc-crosssdk-initial-${SDK_ARCH}) replaces original key
PREFERRED_PROVIDER_virtual/x86_64-tcs-linux-gcc-initial
(gcc-cross-initial-${TARGET_ARCH}).

These are my SDK related changes in distro.conf:
TARGET_VENDOR = "-tcs"
SDK_VENDOR = "-tcs"
SDK_NAME = "${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
SDKPATH = "/opt/tcs/${SDK_VERSION}"

What is happening here?
What did I do wrong?


mvg
Yannick Kiekens

--001a11c3db82e427e405147397a3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif;font-size:small">Hi all,</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif;font-size:small"><br></div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif;font-size:small">I =
created a custom distro.conf by requiring poky.conf then changing some valu=
es.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-ser=
if;font-size:small">Now I get these warnings:</div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif;font-size:small"><br></div><di=
v class=3D"gmail_default" style><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif;font-size:small">WARNING: Variable key PREFERRED_=
PROVIDER_virtual/${SDK_PREFIX}compilerlibs (nativesdk-gcc-runtime) replaces=
 original key PREFERRED_PROVIDER_virtual/x86_64-tcs-linux-compilerlibs (gcc=
-runtime).</div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif;font-size:small">WARNING: Variable key PREFERRED_PROVIDER_virtual=
/${SDK_PREFIX}gcc (gcc-crosssdk-${SDK_ARCH}) replaces original key PREFERRE=
D_PROVIDER_virtual/x86_64-tcs-linux-gcc (gcc-cross-${TARGET_ARCH}).</div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif;font-siz=
e:small">WARNING: Variable key PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g=
++ (gcc-cross-${TARGET_ARCH}) replaces original key PREFERRED_PROVIDER_virt=
ual/x86_64-tcs-linux-g++ (gcc-crosssdk-${SDK_ARCH}).</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif;font-size:small">WARNIN=
G: Variable key PREFERRED_PROVIDER_virtual/${SDK_PREFIX}gcc-initial (gcc-cr=
osssdk-initial-${SDK_ARCH}) replaces original key PREFERRED_PROVIDER_virtua=
l/x86_64-tcs-linux-gcc-initial (gcc-cross-initial-${TARGET_ARCH}).</div><di=
v style=3D"font-family:verdana,sans-serif;font-size:small"><br></div><div s=
tyle=3D"font-family:verdana,sans-serif;font-size:small">These are my SDK re=
lated changes in distro.conf:</div><div style><div style><font face=3D"verd=
ana, sans-serif">TARGET_VENDOR =3D &quot;-tcs&quot;</font></div><div style>=
<font face=3D"verdana, sans-serif">SDK_VENDOR =3D &quot;-tcs&quot;</font></=
div><div style><font face=3D"verdana, sans-serif">SDK_NAME =3D &quot;${TCLI=
BC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}&quot;</font></div><div st=
yle><font face=3D"verdana, sans-serif">SDKPATH =3D &quot;/opt/tcs/${SDK_VER=
SION}&quot;</font></div><div style><font face=3D"verdana, sans-serif"><br><=
/font></div><div style><font face=3D"verdana, sans-serif">What is happening=
 here?</font></div><div style><font face=3D"verdana, sans-serif">What did I=
 do wrong?</font></div><div style><font face=3D"verdana, sans-serif"><br></=
font></div><div style><font face=3D"verdana, sans-serif"><br></font></div><=
div style><font face=3D"verdana, sans-serif">mvg</font></div><div style><fo=
nt face=3D"verdana, sans-serif">Yannick Kiekens</font></div></div></div></d=
iv>

--001a11c3db82e427e405147397a3--
