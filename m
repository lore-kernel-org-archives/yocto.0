Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68317E006E9
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 07:48:12 -0700 (PDT)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id BDF574B0049;
	Thu, 27 Jun 2013 16:48:04 +0200 (CEST)
Date: Thu, 27 Jun 2013 16:48:03 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130627164803.09187edf@e6520eb>
In-Reply-To: <20130627164019.133ccec1@e6520eb>
References: <CAFMfyzL4zn208FJUOsBq8ZqCU3RejEJ0F8-XzEDVf0xSrGGWrw@mail.gmail.com>
	<20130627164019.133ccec1@e6520eb>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.1 (GTK+ 2.24.18; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org,
	DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
Subject: Re: Qt4 - qmake in toolchain for Qt/X11
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
X-List-Received-Date: Thu, 27 Jun 2013 14:48:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le Thu, 27 Jun 2013 16:40:19 +0200,
Eric B=C3=A9nard <eric@eukrea.com> a =C3=A9crit :

> Hi,
>=20
> Le Thu, 27 Jun 2013 11:01:11 +0200,
> DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com> a =C3=A9crit :
> > I have a small confusion.... In my image, I have normal Qt4 packages
> > installed and they are working good. Now, when I wanted to develop a Qt
> > application for my image, I compiled a toolchain but unfortunately, I d=
on't
> > find qmake installed.
> >=20
> > After browsing the directories I found the following
> >=20
> > damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packagegroups$ l=
s -la
> > total 40
> > drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .
> > drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..
> > -rw-rw-r-- 1 damarla damarla  104 Jun 17 13:50
> > nativesdk-packagegroup-qte-toolchain-host.bb
> > -rw-rw-r-- 1 damarla damarla   95 Jun 17 13:50
> > nativesdk-packagegroup-qt-toolchain-host.bb
> > -rw-rw-r-- 1 damarla damarla  178 Jun 17 13:50
> > nativesdk-packagegroup-qt-toolchain-host.inc
> > -rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 packagegroup-core-qt4e.bb
> > -rw-rw-r-- 1 damarla damarla  501 Jun 17 13:50 packagegroup-core-qt.bb
> > -rw-rw-r-- 1 damarla damarla  136 Jun 17 13:50
> > packagegroup-qte-toolchain-target.bb
> > -rw-rw-r-- 1 damarla damarla  335 Jun 17 13:50
> > packagegroup-qt-toolchain-target.bb
> > -rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50
> > packagegroup-qt-toolchain-target.inc
> >=20
> > Now in order to get "qmake" for my toolchain I am not able to understand
> > which package group should I include from the above.
>=20
> bitbake meta-toolchain-qte
> recipe in :
> ./meta/recipes-qt/meta/meta-toolchain-qte.bb
>=20
oops sorry I didn't read you wanted Qt/X11 :-(

Anyway you can base your work one meta-toolchain-qte to integrate the
Qt/X11 packages.

Eric

