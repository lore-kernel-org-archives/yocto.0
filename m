Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A04E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 09:58:16 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id x54so650191wes.4
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 09:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=gzV8n0RZE6RPTpFEmoUzDuhXF+Ral7ICO0MxAjjqeVg=;
	b=mmMBWLGxVKaBgE4sH0zERN+oksScFgLD6aOSPggIx7hYN6x90E6l5ePPQ6Lp0ZFHuH
	2popoADHpe7q/dlzcbZ7NqYyMDtVu2Bq9AurfR116mvRX6uw++2nLgfXpw3DoEm7t7zP
	U8BCFeCpPVwIuabQXE1M3F7Mdf3otIhz2EWBKBTzKa8+WFHsEjBSr1sBEOYp7mCZ2zsk
	rs8wG6vRN/gWJpS3SD+aRSiDrnnDUNxQn7XG/OBRExRrrSv3iuiMFr8rbq3ee/+GR54Q
	pJfaB5xOuW6qPF5WmD1uEN4sRa80jGKAW6aL2lC8WaaoPq2j2nK6X8my7hBEVlqvUB/Y
	9i+w==
X-Received: by 10.180.80.229 with SMTP id u5mr2020272wix.59.1377017894831;
	Tue, 20 Aug 2013 09:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Tue, 20 Aug 2013 09:57:54 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 20 Aug 2013 18:57:54 +0200
Message-ID: <CAAGt+t2Mj2bpU5mvt=Ote-RaPc42zNB2Q9d2-D8OOpT-e3LJdQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Build with Github source fails to connect
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
X-List-Received-Date: Tue, 20 Aug 2013 16:58:17 -0000
Content-Type: multipart/alternative; boundary=f46d04428e40789eae04e463f6eb

--f46d04428e40789eae04e463f6eb
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

When I am trying to build my own recipe, I get the following error:

ERROR: Function failed: Fetcher failure: Fetch command failed with exit
code 128, output:
fatal: unable to connect to git.github.com:
git.github.com[0: 185.31.16.133]: errno=Connection timed out

My bitbake file is as follows:

DESCRIPTION = "Helloworld application"
SECTION = "examples"
LICENSE = "GPLv3+"
LIC_FILES_CHKSUM = "file://README;md5=6ae88ed4026269f1ce69f4c800f36c2b"
PR = "r0"
SRC_URI = "git://
git.github.com/zafrullahsyed/HelloWorld.git;protocol=git;tag=v0.1"
inherit autotools gettext

I followed this tutorial:
http://www.yoctoproject.org/docs/1.2/dev-manual/dev-manual.html#usingpoky-extend-addpkg-makefile

Where am i doing wrong? How do I use git protocol for bitbake recipe?

Thank & Regards,
Zafrullah Syed

--f46d04428e40789eae04e463f6eb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>When I am trying to build my ow=
n recipe, I get the following error:</div><div><div><br></div><div>ERROR: F=
unction failed: Fetcher failure: Fetch command failed with exit code 128, o=
utput:</div>

<div>fatal: unable to connect to <a href=3D"http://git.github.com">git.gith=
ub.com</a>:</div><div><a href=3D"http://git.github.com">git.github.com</a>[=
0: 185.31.16.133]: errno=3DConnection timed out</div></div><div><br></div><=
div>

<div>My bitbake file is as follows:</div><div><br></div><div>DESCRIPTION =
=3D &quot;Helloworld application&quot;=A0</div><div>SECTION =3D &quot;examp=
les&quot;=A0</div><div>LICENSE =3D &quot;GPLv3+&quot;=A0</div><div>LIC_FILE=
S_CHKSUM =3D &quot;file://README;md5=3D6ae88ed4026269f1ce69f4c800f36c2b&quo=
t;=A0</div>

<div>PR =3D &quot;r0&quot;=A0</div><div>SRC_URI =3D &quot;git://<a href=3D"=
http://git.github.com/zafrullahsyed/HelloWorld.git;protocol=3Dgit;tag=3Dv0.=
1">git.github.com/zafrullahsyed/HelloWorld.git;protocol=3Dgit;tag=3Dv0.1</a=
>&quot;</div>

<div>inherit autotools gettext=A0</div></div><div><br clear=3D"all"><div>I =
followed this tutorial:=A0<a href=3D"http://www.yoctoproject.org/docs/1.2/d=
ev-manual/dev-manual.html#usingpoky-extend-addpkg-makefile">http://www.yoct=
oproject.org/docs/1.2/dev-manual/dev-manual.html#usingpoky-extend-addpkg-ma=
kefile<br>

</a><br></div><div>Where am i doing wrong? How do I use git protocol for bi=
tbake recipe?=A0</div><div><br></div><div>Thank &amp; Regards,</div><div>Za=
frullah Syed</div>
</div></div>

--f46d04428e40789eae04e463f6eb--
