Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D9CEE013A6
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 12:20:06 -0700 (PDT)
Received: from eb-e6520 (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 3AE45A623C;
	Sun, 29 Apr 2012 21:20:01 +0200 (CEST)
Date: Sun, 29 Apr 2012 21:19:59 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Daniel Toussaint <daniel@dmhome.net>
Message-ID: <20120429211959.3f12671b@eb-e6520>
In-Reply-To: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
References: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building a Qt4-x11 app.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Apr 2012 19:20:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Sun, 29 Apr 2012 21:16:44 +0800,
Daniel Toussaint <daniel@dmhome.net> a =E9crit :

> I wish to run an application developed with QT in a Yocto filesystem.
> The app should be linked against Qt4-X11 libs. What is the exact work
> flow to get my app cross compiled on my x86_64 host ?
> So far I have :
> -> Build a complete core-image-sato with IPKG as a packaging system.
> -> Build qt4-x11-free
> -> Build qt4-tools-nativesdk
>=20
> Now, I got something called qmake2 in the build directory
> (sysroot-x86_64) , but it complains about not finding the right qmake
> specs.
> I got the feeling I am doing something fundamentally wrong with my
> setup, can anyone enlighten me ?
>=20
simply write a recipe for your app and let the build system build
your application.

The recipe can be quite simple if your app doesn't depends on other
libs than qt4 :

DESCRIPTION =3D "Application QT4-X11"
SECTION =3D "Apps"
LICENSE =3D "yourlicense"
LIC_FILES_CHKSUM =3D "file://youlicense;md5=3Dyourmd5"

inherit qt4x11

SRC_URI =3D "file://application.tar.bz2"
# or directly download it from a VCS

# may be necessary :
EXTRA_QMAKEVARS_PRE +=3D "PREFIX=3D/usr"
EXTRA_OEMAKE +=3D "INSTALL_ROOT=3D${D}"

do_install() {
	oe_runmake install INSTALL_ROOT=3D${D}
}

Eric

