Return-Path: <nathan.roberts@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE406E00DBD; Wed, 10 Jan 2018 12:57:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nathan.roberts[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE6B3E00A00
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 12:57:51 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id l64so860830qke.13
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 12:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FaL0nH9XbYULVaI7gGy1kXFWc6PgoyA2YC+DOM6vxe8=;
	b=jSXHHuNPvAaik4IGDBXDnSK7Uiqu+SwICQbZyfaeFEkfTsVAZZqxs+VBGADRoB/R4o
	6TbNV7Lw71tBUkyH7Xu1gOolybzuUUj6q9txxaou/Y75DHol292Lijvlu7Fjxz6ssJ26
	L9dM1+Y3gvxPJfddjNYDxqrg3ggZWO9IGGFqLE+TYcH19GBoOp6j+chrlZPHw932/HVF
	+dA9Z/pL/0zmGVch6KbKm5uvSOaEG/YgEbFQbYnVKxu/5IJsIOo9BB4HOq6wVZ0MoMNy
	oZXiKyN9WM0px3QwUm6EcO9TCiAbFA7Ph7m9ObQriduMzAt1s8miUXfjiq/X/TKUawTz
	+bLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FaL0nH9XbYULVaI7gGy1kXFWc6PgoyA2YC+DOM6vxe8=;
	b=IjqIFKs22wmiLh+6aTfO2AIjNtyNki0iufFxF06o0X188Olf1hbPs58f+O6I+VPFtQ
	Fjd9mTii/xovn/bs4imUR8pScosJGsakAL9bh20SlvQWPV3UhRov7XMbNidyadMjb829
	alqVrAhsb8JWjxeJX11OZEgUGrLBsEfKhNWWvn8lZHIMLEMnOMuq3hEhGEUR5znbk4hE
	2En5e4kS+KjQQbVp9JE+uDVVFTdG9wkMxvP1i0Xz5sHOwOt+AG1XOWl7SF871OgszlhR
	fL7g03f2NcRyHLeWR/Rx6m3mIjSEmwnXFOuGtGeA/Cg9KamoPcg8W5lZ9dsP0zcqN4my
	V6VQ==
X-Gm-Message-State: AKwxytcE9O8IQpGmgrowHa792Mf7V4dY27iSAmQ6PBd9UlbKG1QGA0sV
	Xisw2Z4gKVp9OTCoz+0uNkVAZRZnJ/a+xqhfyhkluw==
X-Google-Smtp-Source: ACJfBosdpvqPRBVtguPu9lXoGNIABPuNOBVWpvtIEZPVKj21fZGfq1gxW6pu92IcVz3LDk762PyU5TnWT9V6y7+3OjI=
X-Received: by 10.200.43.141 with SMTP id m13mr28532219qtm.72.1515617870746;
	Wed, 10 Jan 2018 12:57:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.36.147 with HTTP; Wed, 10 Jan 2018 12:57:50 -0800 (PST)
From: Nathan Roberts <nathan.roberts@gmail.com>
Date: Wed, 10 Jan 2018 20:57:50 +0000
Message-ID: <CAGkqu_uJC_jUYACWfzaSEn4N9a5M6pvxUxA6mhMkM-OxSdEjgA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 11 Jan 2018 09:16:41 -0800
Subject: Recipe for JNI Wrapper (libusb4java)
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
X-List-Received-Date: Wed, 10 Jan 2018 20:57:52 -0000
Content-Type: multipart/alternative; boundary="001a11410898cd16b2056272482f"

--001a11410898cd16b2056272482f
Content-Type: text/plain; charset="UTF-8"

I'm trying to create a recipe for libusb4Java (
https://github.com/usb4java/libusb4java/).

I have the following recipe

SUMMARY = "Native library support for usb4java"
HOMEPAGE = "http://usb4java.org"
BUGTRACKER = "https://github.com/usb4java/libusb4java/issues"
SECTION = "libs"
DEPENDS = "libusb"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE.md;md5=4c49d7fe1fc7a6ebad3b4e6b849a0052"
BBCLASSEXTEND = "native nativesdk"
SRCREV = "396d642a57678a0d9663b062c980fe100cc0ea1e"
SRC_URI = "git://github.com/usb4java/libusb4java.git"

S = "${WORKDIR}/git"
#need to change following ref http://usb4java.org/nativelibs.html
D = "/tmp"
export JAVA_HOME="${STAGING_DIR_NATIVE}/usr/bin/java"
inherit cmake java-library


local.conf has the following added:
BB_ENV_EXTRAWHITE += "JAVA_HOME"


I get the following error:
checking if
/home/ubuntu/yocto/poky/build/tmp/work/x86_64-linux/classpath-native/0.99-r6.0/recipe-sysroot-native/usr/bin/ecj-initial
works... configure: error: The Java compiler
/home/ubuntu/yocto/poky/build/tmp/work/x86_64-linux/classpath-native/0.99-r6.0/recipe-sysroot-native/usr/bin/ecj-initial
failed (see config.log, check the CLASSPATH?)

So I appear to have a classpath problem, but I'm unsure how to resolve this?

Any advice appreciated.

--001a11410898cd16b2056272482f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to create a recipe for libusb4Java (<a=
 href=3D"https://github.com/usb4java/libusb4java/">https://github.com/usb4j=
ava/libusb4java/</a>).<br><br>I have the following recipe<br><br>SUMMARY =
=3D &quot;Native library support for usb4java&quot;<br>HOMEPAGE =3D &quot;<=
a href=3D"http://usb4java.org">http://usb4java.org</a>&quot;<br>BUGTRACKER =
=3D &quot;<a href=3D"https://github.com/usb4java/libusb4java/issues">https:=
//github.com/usb4java/libusb4java/issues</a>&quot;<br>SECTION =3D &quot;lib=
s&quot;<br>DEPENDS =3D &quot;libusb&quot;<br>LICENSE =3D &quot;MIT&quot;<br=
>LIC_FILES_CHKSUM =3D &quot;file://LICENSE.md;md5=3D4c49d7fe1fc7a6ebad3b4e6=
b849a0052&quot;<br>BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>SRCREV=
 =3D &quot;396d642a57678a0d9663b062c980fe100cc0ea1e&quot;<br>SRC_URI =3D &q=
uot;git://<a href=3D"http://github.com/usb4java/libusb4java.git">github.com=
/usb4java/libusb4java.git</a>&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;=
<br>#need to change following ref <a href=3D"http://usb4java.org/nativelibs=
.html">http://usb4java.org/nativelibs.html</a><br>D =3D &quot;/tmp&quot;<br=
>export JAVA_HOME=3D&quot;${STAGING_DIR_NATIVE}/usr/bin/java&quot;<br>inher=
it cmake java-library<br><br><br>local.conf has the following added:<br>BB_=
ENV_EXTRAWHITE +=3D &quot;JAVA_HOME&quot;<br><br><br>I get the following er=
ror:<br>checking if /home/ubuntu/yocto/poky/build/tmp/work/x86_64-linux/cla=
sspath-native/0.99-r6.0/recipe-sysroot-native/usr/bin/ecj-initial works... =
configure: error: The Java compiler /home/ubuntu/yocto/poky/build/tmp/work/=
x86_64-linux/classpath-native/0.99-r6.0/recipe-sysroot-native/usr/bin/ecj-i=
nitial failed (see config.log, check the CLASSPATH?)<br><br>So I appear to =
have a classpath problem, but I&#39;m unsure how to resolve this?<br><br>An=
y advice appreciated.<br></div><div><br></div></div>

--001a11410898cd16b2056272482f--
