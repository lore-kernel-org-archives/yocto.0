Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC3B9E00BD2; Fri, 16 Oct 2015 06:35:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E7A4E00A26
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 06:35:24 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so100255497lbc.3
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 06:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tLFtiyOIvnSq7pndzjWFnspDI/kTvrJyy5YWZ5esgcc=;
	b=dKHlsuNjdob85bQk7Ukr03l0ZlgDgc9nUbfhZkQDUeGAJGu7uq+52gcxlCcFlqhbo0
	tcodc3zlxk0Na3sPHbByrfahwiDgW7vzbKq+sVTDeaQUSdf3K3G9uYCjQFVyTxvvWj8y
	kz44E0AcsyMG+AvQj0VujsdVwc0ELfH+pL+2gRLJJgkqoXhTMIIOqHGrqZ9spc6Yt/kz
	TqgqlgEdfPbW4nGiiW7G3r6sxYxDgrkf2a9JkraY83PuHa3GzMX+fvuyxyCYSXeQ4Rub
	BG+EDkzv6pgpUkGirRUurGnpkAb7CE42xPVdW0/kRe/OUkIY3T9v0FQ0Eul9lKEPA3+J
	tLbg==
MIME-Version: 1.0
X-Received: by 10.112.54.169 with SMTP id k9mr8072509lbp.95.1445002522708;
	Fri, 16 Oct 2015 06:35:22 -0700 (PDT)
Received: by 10.112.227.75 with HTTP; Fri, 16 Oct 2015 06:35:22 -0700 (PDT)
Date: Fri, 16 Oct 2015 15:35:22 +0200
Message-ID: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-java] openjdk-7-jre was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
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
X-List-Received-Date: Fri, 16 Oct 2015 13:35:31 -0000
Content-Type: multipart/alternative; boundary=001a11c3f5c410d72f052238de6e

--001a11c3f5c410d72f052238de6e
Content-Type: text/plain; charset=UTF-8

Hi Folks,
I'm trying to compile java without x11 and unfortunately also without
success..

I've added in my local.conf:

DISTRO_FEATURES_remove = "x11"
# Java build settings
PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-7-jre = "85b01-2.6.1"
PREFERRED_VERSION_icedtea7-native = "2.1.3"
PREFERRED_PROVIDER_openjdk-7-jre = "openjdk-7-jre"

but I get this error

ERROR: Nothing RPROVIDES 'openjdk-7-jre' (but
/home/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/
fede-java-test.bb RDEPENDS on or otherwise requires it)
ERROR: openjdk-7-jre was skipped: missing required distro feature ['x11']
(not in DISTRO_FEATURES)

Patching those files:
meta-java/recipes-core/classpath/classpath.inc
meta-java/recipes-core/jamvm/jamvm.inc
meta-java/recipes-core/jamvm/jamvm_git.bb
meta-java/recipes-core/openjdk/openjdk-common.inc
poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc

like this:
-REQUIRED_DISTRO_FEATURES = "x11"
+#REQUIRED_DISTRO_FEATURES = "x11"

seems to be a temporary workaround

regards
federico

--001a11c3f5c410d72f052238de6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Folks,<br>I&#39;m trying to compile java=
 without x11 and unfortunately also without success..<br><br>I&#39;ve added=
 in my local.conf:<br><br>DISTRO_FEATURES_remove =3D &quot;x11&quot;<br># J=
ava build settings<br>PREFERRED_PROVIDER_virtual/java-native =3D &quot;jamv=
m-native&quot;<br>PREFERRED_PROVIDER_virtual/javac-native =3D &quot;ecj-boo=
tstrap-native&quot;<br>PREFERRED_VERSION_openjdk-7-jre =3D &quot;85b01-2.6.=
1&quot;<br>PREFERRED_VERSION_icedtea7-native =3D &quot;2.1.3&quot;<br>PREFE=
RRED_PROVIDER_openjdk-7-jre =3D &quot;openjdk-7-jre&quot;<br><br>but I get =
this error<br><br>ERROR: Nothing RPROVIDES &#39;openjdk-7-jre&#39; (but /ho=
me/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/<a href=
=3D"http://fede-java-test.bb">fede-java-test.bb</a> RDEPENDS on or otherwis=
e requires it)<br>ERROR: openjdk-7-jre was skipped: missing required distro=
 feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br><br>Patching those fil=
es:<br>meta-java/recipes-core/classpath/classpath.inc<br>meta-java/recipes-=
core/jamvm/jamvm.inc<br>meta-java/recipes-core/jamvm/<a href=3D"http://jamv=
m_git.bb">jamvm_git.bb</a><br>meta-java/recipes-core/openjdk/openjdk-common=
.inc<br>poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc<br><br>like=
 this:<br>-REQUIRED_DISTRO_FEATURES =3D &quot;x11&quot;<br>+#REQUIRED_DISTR=
O_FEATURES =3D &quot;x11&quot;<br><br></div>seems to be a temporary workaro=
und<br><br></div>regards<br></div>federico<br></div>

--001a11c3f5c410d72f052238de6e--
