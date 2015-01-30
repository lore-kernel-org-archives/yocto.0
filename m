Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CA38E0086F; Fri, 30 Jan 2015 08:00:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7402FE002F9
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 07:59:52 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id q59so27899556wes.3
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 07:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=0qvVH9ZIMlYlyk+8xhpVREvTMqyM+yhNmtQtlpDGveo=;
	b=XamHrd/UY5X16ghwwuZKR2QZ8LqFodePz2wY8gUo/QdqsS3xwV7/9PPI1Wz5A3OgAM
	gQ/wCYc2CCQ9VQixSS1BdmhdVNXD9AOaamEp0K4mZMiNah87ZrLg/epvsuLB78Q2qAee
	oCJJ6hNEeu2D7TCp8tUcts5Pvsg24dEVFZvTeNGcnrVDUm/KRWP7qqOdzJrrqNFUa7dv
	oG+kR3o8m6MO7uYHTwOv7Sw/nXd7zlCLrzKp0JyMV/oiqqx7CUBimo84nmbPZOaGLVnE
	QAGgILaL8orkoH2hNc3k74zi2d1xdylu2v26YNrIUYvpvwK7yl5//KgRdH9+j/E9ya1X
	SyRg==
X-Received: by 10.194.190.39 with SMTP id gn7mr13743411wjc.30.1422633591834;
	Fri, 30 Jan 2015 07:59:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Fri, 30 Jan 2015 07:59:31 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 30 Jan 2015 16:59:31 +0100
Message-ID: <CAEfap_BwbJG8SZ_btNZAAKouS=JAWByJxkMB95n52qV7C=0PqQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: 1.7 - QtCreator ERROR while linking- /usr/bin/ld: cannot find /lib/libpthread.so.0 inside
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
X-List-Received-Date: Fri, 30 Jan 2015 16:00:01 -0000
Content-Type: multipart/alternative; boundary=047d7bb0406ee3156d050de0b144

--047d7bb0406ee3156d050de0b144
Content-Type: text/plain; charset=UTF-8

hello!

So after successfully bitbaking and installing meta-toolchain-st5 I set up
QtCreator 3.2.2 and tried to compile an app against SDK of qt5. However I
get an error:

/usr/bin/ld: cannot find /lib/libpthread.so.0 inside
/usr/bin/ld: cannot find /usr/lib/libpthread_nonshared.a inside

libpthread.so is available alright, but the linker is not finding it
somehow.

LD variable is set to:
i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux

Maybe this is a pure QtCreator bug, but where would I set(override) the
linker correctly? Any suggestions?

If i run(from console ):
i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
/opt/poky/1.7/sysroots/i586-poky-linux/usr/lib/libpthread.so
it is fine(it gives me some warning, but no errors).

Here are the QtCreator settings for Qt5 Kit:
GCC Compiler:
path:
/opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc

Qt Version:
qmake location: /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/qt5/qmake

Qt Kit:
sysroot: /opt/poky/1.7/sysroots/i586-poky-linux
compiler: set to above gcc compiler
qt version: set to above qt version

even manually setting LIBS to
LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/lib
or
LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/usr/lib
does not help(but i really do not think this is the problem).

So you have any hints for me?
I compared the settings of 1.6.1, and there is no difference as far as my
eye can catch.


PS. I switched from 1.6.1 to 1.7, becasue of gclib not beeing available in
1.6.1.

cheers
simon :-)

--047d7bb0406ee3156d050de0b144
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>hello!<br><br>So after successfully bitbaki=
ng and installing meta-toolchain-st5 I set up QtCreator 3.2.2 and tried to =
compile an app against SDK of qt5. However I get an error: <br><br>/usr/bin=
/ld: cannot find /lib/libpthread.so.0 inside <br>/usr/bin/ld: cannot find /=
usr/lib/libpthread_nonshared.a inside <br><br>libpthread.so is available al=
right, but the linker is not finding it somehow. <br><br>LD variable is set=
 to: <br>i586-poky-linux-ld --sysroot=3D/opt/poky/1.7/sysroots/i586-poky-li=
nux<br><br></div>Maybe this is a pure QtCreator bug, but where would I set(=
override) the linker correctly? Any suggestions?<br></div><br>If i run(from=
 console ):<br>i586-poky-linux-ld --sysroot=3D/opt/poky/1.7/sysroots/i586-p=
oky-linux /opt/poky/1.7/sysroots/i586-poky-linux/usr/lib/libpthread.so<br><=
/div>it is fine(it gives me some warning, but no errors).<br><div><div><div=
><br>Here are the QtCreator settings for Qt5 Kit:<br>GCC Compiler: <br>path=
: /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-po=
ky-linux-gcc<br><br>Qt Version: <br>qmake location: /opt/poky/1.7/sysroots/=
i686-pokysdk-linux/usr/bin/qt5/qmake<br><br>Qt Kit:<br>sysroot: /opt/poky/1=
.7/sysroots/i586-poky-linux<br>compiler: set to above gcc compiler<br>qt ve=
rsion: set to above qt version<br><br>even manually setting LIBS to<br>LIBS=
 +=3D -L//opt/poky/1.7/sysroots/i586-poky-linux/lib<br>or <br>LIBS +=3D -L/=
/opt/poky/1.7/sysroots/i586-poky-linux/usr/lib<br>does not help(but i reall=
y do not think this is the problem). <br><br>So you have any hints for me?<=
br>I compared the settings of 1.6.1, and there is no difference as far as m=
y eye can catch.<br><br><br>PS. I switched from 1.6.1 to 1.7, becasue of gc=
lib not beeing available in 1.6.1.<br><br>cheers<br>simon :-)<br></div></di=
v></div></div>

--047d7bb0406ee3156d050de0b144--
