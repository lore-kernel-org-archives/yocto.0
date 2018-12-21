Return-Path: <prasenjitmahanti@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5168E00D21; Thu, 20 Dec 2018 21:17:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (prasenjitmahanti[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A528E00C8F
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 21:17:27 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id t204so3844638oie.7
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 21:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=L5dYJfB17yZ+XkYIxyrriZ+YvzYU4JnD/QdntzwUtxU=;
	b=G8ZxF7oRIG37w0v345nw8TDl4B260kT0QAAQpVA59+Ua87swYgKz11AzMLW7KEk0e1
	uU35tSGrB46RA5oUK/S8y3b1Np9aXbcom5a/Az7KGGj3dKTnRug9OoWwzAxamwP9Rb3z
	f/9K3GH7NycmgaNu0LCOAwuRz4dn6fC/SyvW4pEEqkzRJb/2AA88HmlDAVcgId4KnktB
	9E1le4Wqm99scQtWiRMZr/XTBJF+Qmfcsun/eba5E3s4y6DJ3MGL8lzUNVtKsO3Ng27K
	5r/Sdc2cohe84UrXKwmwL9v2uCmsqg0/zqZx5IbVHqG867xDiE9ElznxBwsnI4Nxi9az
	dn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L5dYJfB17yZ+XkYIxyrriZ+YvzYU4JnD/QdntzwUtxU=;
	b=mvRdkBA6vOpRXXXl/ZTu8/GvEE7XykWPOtOs5aDMYTg3Iu4DY3NmddYju50QScjGhA
	QXHKjCuGSmwDVKEeMS0fi6zbCZEiznR5hW5wx5V05uNRhYZCp5mQq5pTcDDamvla0BvA
	dQ/L3g0K+XKaJC/fMPJyWWqzaEm9XPi3jXdr7UWB+89ok7JdOXxvMBt9Iq2wlKnXkZu9
	TE7UXKZ75S3yPjGtmNKNwSKgVJAMXaEFDtKaG9zmdpmjX2M8psXZsQAyYdBb9OCp2rYC
	5DSH4xUYBdwOpz9HeVuwk7J6f/Q7MoTbh+e/MkilWCrPm4RFLmWOm7lj9fXqUmei13Dy
	/mgw==
X-Gm-Message-State: AJcUukdq771jEXp4gOLTlDJMb8bjUk+mX0e9PNXJf4IxkY682McUtvCd
	dJCg05xkNlBzmuBXySklCuLvMKoXJYO8TFX7W8mLgFWxCC0=
X-Google-Smtp-Source: AFSGD/V9RFr+TPT9gBa+yx3w+UyliNXIK0d2OoMW7il+cpcAT/Js9O8nKZZaeWaubQ6FiwLfJWTCwCAyBPsAHo4d8iA=
X-Received: by 2002:a05:6808:97:: with SMTP id
	s23mr453232oic.251.1545369446714; 
	Thu, 20 Dec 2018 21:17:26 -0800 (PST)
MIME-Version: 1.0
From: Prasenjit Mahanti <prasenjitmahanti@gmail.com>
Date: Fri, 21 Dec 2018 10:46:50 +0530
Message-ID: <CADsvGBHs=1R8KcOwOHmoPuNMOApsx9d_xy-7wzupfwqX3ipoWQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Fri, 21 Dec 2018 05:17:28 -0000
Content-Type: multipart/alternative; boundary="000000000000eb11a3057d815c3e"

--000000000000eb11a3057d815c3e
Content-Type: text/plain; charset="UTF-8"

I am getting permission denied error when trying to build in yacto build
environment.source code repository for Uboot I have kept in gitlab.com and
other build related dependencies I have kept in github.com. I have
downloaded(git clone) the built platform in my local machine. I made
changes in source code in gitlab.com.and try to fetch and build using
commit tag but getting permission error. If I doing the same in
github.com(keeping
source repository in githib.com and make changes) not facing nay issue.
want to know the solution

"Build failed error" posting from log file
DEBUG: Executing shell function do_compile
NOTE: make -j 4 CROSS_COMPILE=arm-poky-linux-gnueabi-
CC=arm-poky-linux-gnueabi-gcc
--sysroot=/home/cvp/prasenjit-bsp-platform/build/tmp/sysroots/prasenjit-novpek
mx6slnovpek_config
make: execvp:
/home/cvp/prasenjit-bsp-platform/build/tmp/work/prasenjit_novpek-poky-linux-gnueabi/u-boot-prasenjit-novpek/2014.07-r0/git/mkconfig:
Permission denied
Makefile:468: recipe for target 'mx6slnovpek_config' failed
make: *** [mx6slnovpek_config] Error 127
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/home/cvp/prasenjit-bsp-platform/build/tmp/work/prasenjit_novpek-poky-linux-gnueabi/u-boot-prasenjit-novpek/2014.07-r0/temp/log.do_compile.29185)

--000000000000eb11a3057d815c3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am getting permission denied error when trying to build =
in yacto build
 environment.source code repository for Uboot I have kept in <a href=3D"htt=
p://gitlab.com">gitlab.com</a>=20
and other build related dependencies I have kept in <a href=3D"http://githu=
b.com">github.com</a>. I have=20
downloaded(git clone) the built platform in my local machine. I made=20
changes in source code in gitlab.com.and try to fetch and build using=20
commit tag but getting permission error. If I doing the same in=20
<a href=3D"http://github.com">github.com</a>(keeping source repository in <=
a href=3D"http://githib.com">githib.com</a> and make changes) not
 facing nay issue.<br>
want to know the solution<br>
<br>
&quot;Build failed error&quot; posting from log file<br>
DEBUG: Executing shell function do_compile<br>
NOTE: make -j 4 CROSS_COMPILE=3Darm-poky-linux-gnueabi-=20
CC=3Darm-poky-linux-gnueabi-gcc=C2=A0=20
--sysroot=3D/home/cvp/prasenjit-bsp-platform/build/tmp/sysroots/prasenjit-n=
ovpek
 mx6slnovpek_config<br>
make: execvp:=20
/home/cvp/prasenjit-bsp-platform/build/tmp/work/prasenjit_novpek-poky-linux=
-gnueabi/u-boot-prasenjit-novpek/2014.07-r0/git/mkconfig:
 Permission denied<br>
Makefile:468: recipe for target &#39;mx6slnovpek_config&#39; failed<br>
make: *** [mx6slnovpek_config] Error 127<br>
ERROR: oe_runmake failed<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_compile (log file is located at=20
/home/cvp/prasenjit-bsp-platform/build/tmp/work/prasenjit_novpek-poky-linux=
-gnueabi/u-boot-prasenjit-novpek/2014.07-r0/temp/log.do_compile.29185)</div=
>

--000000000000eb11a3057d815c3e--
