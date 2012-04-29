Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0516E013D1
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 12:14:19 -0700 (PDT)
Received: from eb-e6520 (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 11F27A625A;
	Sun, 29 Apr 2012 21:14:10 +0200 (CEST)
Date: Sun, 29 Apr 2012 21:14:09 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Wolfgang Denk <wd@denx.de>
Message-ID: <20120429211409.14cd6fc5@eb-e6520>
In-Reply-To: <20120429144117.99E6B202B38@gemini.denx.de>
References: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
	<20120429144117.99E6B202B38@gemini.denx.de>
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
X-List-Received-Date: Sun, 29 Apr 2012 19:14:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Sun, 29 Apr 2012 16:41:17 +0200,
Wolfgang Denk <wd@denx.de> a =E9crit :

> Dear Daniel,
>=20
> In message <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmai=
l.com> you wrote:
> > I wish to run an application developed with QT in a Yocto filesystem.
> > The app should be linked against Qt4-X11 libs. What is the exact work
> > flow to get my app cross compiled on my x86_64 host ?
> > So far I have :
> > -> Build a complete core-image-sato with IPKG as a packaging system.
> > -> Build qt4-x11-free
> > -> Build qt4-tools-nativesdk
> >=20
> > Now, I got something called qmake2 in the build directory
> > (sysroot-x86_64) , but it complains about not finding the right qmake
> > specs.
> > I got the feeling I am doing something fundamentally wrong with my
> > setup, can anyone enlighten me ?
>=20
> Try building "meta-toolchain-qte" for the cross development tools,
> and "core-image-qte-sdk" for a reasonably complete root file system
> that can also be used for native development when needed.
>=20
this won't work for qt4-x11, only for qt4-embedded.

Eric

