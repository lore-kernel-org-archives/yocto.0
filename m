Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7103E01472
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:05:52 -0700 (PDT)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 0078A4B00A7;
	Thu, 21 Mar 2013 15:05:43 +0100 (CET)
Date: Thu, 21 Mar 2013 15:05:42 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130321150542.18ab7c22@e6520eb>
In-Reply-To: <CAHUNapQOUHi7f0va3hPjM_Pu69zvbEJuxnHeR__BBZTVnpJvOg@mail.gmail.com>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
	<CAHUNapQOUHi7f0va3hPjM_Pu69zvbEJuxnHeR__BBZTVnpJvOg@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Thu, 21 Mar 2013 14:05:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Le Thu, 21 Mar 2013 09:54:11 -0400,
Trevor Woerner <twoerner@gmail.com> a =C3=A9crit :

> The new autobuilder looks great! One thing that's nice is how easy it
> is to look at the build and figure out from what commit the build is
> based.
>=20
> Clicking around in some of those builds, though, I can't seem to
> figure out what the various configurations are. For example:
> meta-fsl-arm has a number of machine definitions, which MACHINE is
> being used for the autobuilder build? Also, I can't seem to figure out
> which image is being built either; core-image-minimal? sato?
>=20
in the build log
http://autobuilder.yoctoproject.org:8011/builders/nightly-fsl-arm/builds/18=
/steps/Building%20Images/logs/stdio
you can see it builds for imx53qsb :
MACHINE           =3D "imx53qsb"

Eric

