Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89759E00595
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 12:40:50 -0800 (PST)
Received: from e6520eb (unknown [82.233.81.124]) (Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 959AD4B0113
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 21:40:44 +0100 (CET)
Date: Sun, 2 Feb 2014 21:40:43 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: yocto@yoctoproject.org
Message-ID: <20140202214043.0963a0e6@e6520eb>
In-Reply-To: <52E96001.7030000@dynamicdevices.co.uk>
References: <52E96001.7030000@dynamicdevices.co.uk>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.9.3 (GTK+ 2.24.22; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Subject: Re: How to temporarily disable a package rebuild during an image build?
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
X-List-Received-Date: Sun, 02 Feb 2014 20:40:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Le Wed, 29 Jan 2014 20:09:37 +0000,
Alex J Lennon <ajlennon@dynamicdevices.co.uk> a =E9crit :
> I was wondering if there's a per-package environment variable I could
> use to contrain the rebuilding of packages?
>=20
> i.e. I am modifying a linux-imx kernel, rebuilding that kernel package
> and then generating an output filesystem image to boot from an SD card
> for testing.
>=20
> Each time I modify linux-imx I am finding that qt4 does a rebuild.
>=20
> So whilst I'm making changes to linux-imx for test I'd rather that q4
> didn't rebuild when I build the image, and was wondering if there's a
> way to prevent that?
>=20
that because of one of these bbappend :
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/recipes-qt/qt4/=
qt4-embedded_4.8.5.bbappend
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/recipes-qt/qt4/=
qt4-x11-free_4.8.5.bbappend
If you don't need opengl nor openvg in qt you can disable the options
and remove the DEPENDS added in the bbappend.

Eric

