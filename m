Return-Path: <mulhern@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 497AFE013EC
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 05:50:54 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so6269171obc.41
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 05:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KX/TpNcXjbHzbCEHT79C1alKCzib8IRXGMAlI+GkMK4=;
	b=dKGZbN53CcAQY64lizrexUfh1VgWyq7GIVpGjuAaGXt71E7CCT7PrBm08ftQ02UuCp
	v1KzHxYHV1zbEHMnfnvbU2eeebdQ0P5eKNMwykRrnfprytst/3HKy1lG951GoUFmeTXA
	/1LdZ5DCQQjP2MOREE/JHJw1Z5CgNB1CBsOn5fUmCEzKC/OFeezk3r2l7Ep6wkNvfVph
	qKc9z7S6x6bx0UAnDbPQqdo17GEK4u2+EGbNbP1b2AgiujLQyOYVrUy8TaDtDZRUEulm
	EoG+hnyKeI51hvJC1BREL/hHguTn8bRF0TMzkKibcNDqxlipWPh1ysy7JMiRyui2lcFp
	vS9g==
MIME-Version: 1.0
X-Received: by 10.182.27.74 with SMTP id r10mr46110900obg.63.1374929453896;
	Sat, 27 Jul 2013 05:50:53 -0700 (PDT)
Received: by 10.76.154.97 with HTTP; Sat, 27 Jul 2013 05:50:53 -0700 (PDT)
Date: Sat, 27 Jul 2013 08:50:53 -0400
Message-ID: <CADM5y7tDgTXVp5b4_9UH5Q_Fx7w2p2js2Yw-Naqk+PM4Ko_OHg@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Setting up Perl modules
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
X-List-Received-Date: Sat, 27 Jul 2013 12:50:56 -0000
Content-Type: multipart/alternative; boundary=089e01184b2eb0dd0a04e27db55f

--089e01184b2eb0dd0a04e27db55f
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Pulled pork is a Perl script for downloading rules for Snort. It has
dependencies on a lot of little non-standard modules which in turn have
dependencies, etc.

I believe that in theory the modules in the BUILD_REQUIRES variable in
Makefile.PL corresponds to the modules that I should put in the DEPENDS
variable in the corresponding bitbake recipe file. And the modules in the
PREREQ_PM variable in Makefile.PL correspond to the modules that I should
put in the RDEPENDS_${PN} variable in the recipe file. Could someone
correct me if this is wrong, and if so, explain why?

Here's my second question. I will need to be able to have
pulledpork.plavailable to use during the installation of Snort. For
this reason, I have
given the pulledpork recipe and all the modules on which it depends a
native variant. How can I be sure that pulledpork and all the modules on
which it depends will be available for use in the directory for my build
machine when building snort for my target machine? Should getting all the
RDEPENDS_${PN} correct and putting pulledpork-native in the DEPENDS
variable for Snort do it? Or must I do something else?

Thanks!

- mulhern

--089e01184b2eb0dd0a04e27db55f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>Pulled pork is a Perl script fo=
r downloading rules for Snort. It has dependencies on a lot of little non-s=
tandard modules which in turn have dependencies, etc.</div><div><br></div>
<div>I believe that in theory the modules in the BUILD_REQUIRES variable in=
 Makefile.PL corresponds to the modules that I should put in the DEPENDS va=
riable in the corresponding bitbake recipe file. And the modules in the PRE=
REQ_PM variable in Makefile.PL correspond to the modules that I should put =
in the RDEPENDS_${PN} variable in the recipe file. Could someone correct me=
 if this is wrong, and if so, explain why?</div>
<div><br></div><div>Here&#39;s my second question. I will need to be able t=
o have <a href=3D"http://pulledpork.pl">pulledpork.pl</a> available to use =
during the installation of Snort. For this reason, I have given the pulledp=
ork recipe and all the modules on which it depends a native variant. How ca=
n I be sure that pulledpork and all the modules on which it depends will be=
 available for use in the directory for my build machine when building snor=
t for my target machine? Should getting all the RDEPENDS_${PN} correct and =
putting pulledpork-native in the DEPENDS variable for Snort do it? Or must =
I do something else?</div>
<div><br></div><div>Thanks!</div><div><br></div><div>- mulhern</div><div><b=
r></div></div>

--089e01184b2eb0dd0a04e27db55f--
