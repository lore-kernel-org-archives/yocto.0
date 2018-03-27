Return-Path: <mylene.josserand@bootlin.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A964E00C9C; Tue, 27 Mar 2018 01:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,FROM_EXCESS_BASE64
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 578 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 01:19:51 PDT
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E279E00BB6
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:19:51 -0700 (PDT)
Received: by mail.bootlin.com (Postfix, from userid 110)
	id 538B72072B; Tue, 27 Mar 2018 10:10:11 +0200 (CEST)
Received: from dell-desktop.home (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr
	[90.63.216.87])
	by mail.bootlin.com (Postfix) with ESMTPSA id D92FD20711;
	Tue, 27 Mar 2018 10:10:10 +0200 (CEST)
Date: Tue, 27 Mar 2018 10:10:11 +0200
From: =?UTF-8?B?TXlsw6huZQ==?= Josserand <mylene.josserand@bootlin.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Message-ID: <20180327101011.6bd649b6@dell-desktop.home>
In-Reply-To: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
References: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 27 Mar 2018 09:15:13 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to add pulseaudio
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
X-List-Received-Date: Tue, 27 Mar 2018 08:19:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, 26 Mar 2018 22:17:02 +0200
Sherif Omran <sherifomran2000@gmail.com> wrote:

> hello
>=20
> i am trying to add pulse audio to an image but i don't get pulse audio
> being installed in the image

Which layers are you using and on which branch are you based? Rocko?

>=20
> I am using the following
> DISTRO_FEATURES_append +=3D " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
> pulseaudio pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"
> IMAGE_INSTALL_append +=3D " python dbus gconf glib-2.0"
>=20
> what am i doing wrong?

I think you are little confused with DISTRO_FEATURES and IMAGE_INSTALL.

The DISTRO_FEATURES is a variable to indicate what your
distribution is supporting as features. Thanks to that, it is possible
to enable/disable features in application (such as bluetooth support,
etc). See
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-fe=
atures-distro
You can set "pulseaudio" as a feature but the other "pulseaudio"
variables are useless because they are packages's names.

The IMAGE_INSTALL
(https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-I=
MAGE_INSTALL)
is the list of packages that you want to install in your final image.
So you need to add the "pulseaudio" package in your IMAGE_INSTALL.
And you have to move "pulseaudio-module-dbus-protocol" and
"pulseaudio-module-bluetooth" from DISTRO_FEATURES to IMAGE_INSTALL.

So try something like this:
DISTRO_FEATURES_append =3D " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
pulseaudio"
IMAGE_INSTALL_append =3D " python dbus gconf glib-2.0 pulseaudio
pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"

With that, you will have pulseaudio + pulseaudio's dbus module +
pulseaudio's bluetooth module installed in your final image.

Hope it helps.

Best regards,

--=20
Myl=C3=A8ne Josserand, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

