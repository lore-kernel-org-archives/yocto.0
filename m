Return-Path: <eric@eukrea.com>
Received: from mo3.mail-out.ovh.net (10.mo3.mail-out.ovh.net [87.98.165.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E4D3E011DB
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 00:19:11 -0800 (PST)
Received: from mail642.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 80174FF8485
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 09:32:42 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 17 Jan 2013 10:19:18 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO e6520eb)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 17 Jan 2013 10:19:18 +0200
Date: Thu, 17 Jan 2013 09:19:08 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
X-Ovh-Mailout: 178.32.228.3 (mo3.mail-out.ovh.net)
Message-ID: <20130117091908.493c18fb@e6520eb>
In-Reply-To: <CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
	<19691651.cLZhLvd0Ni@helios>
	<CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 12971774303146913092
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledriedvucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledriedvucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Thu, 17 Jan 2013 08:19:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jon,

Le Wed, 16 Jan 2013 13:49:25 -0500,
Jon Szymaniak <jon.szymaniak@gmail.com> a =C3=A9crit :
> I'm not doing anything too unusual for "installing" Qt. My recipes for
> my Qt application simply inherit qt4e, and list qt4-embedded in
> DEPENDS.
>=20
"inherit qt4e" is enough, no need to add qt4-embedded to DEPENDS.

> The only place where I deviated a bit from the norm is that I use a
> qt4-embedded_4.8.3.bbappend to set up QT_CONFIG_FLAGS exactly as I
> want them, and to rm ${D}/usr/bin/qtopia. Below's my bbappend. I'd be
> interested to hear if there's a better way to clean out unneeded
> directories from a rootfs (in my case ${D}/usr/bin/qtopia).
>=20
> DEPENDS =3D "qt4-tools-native freetype jpeg libpng zlib"
>=20
> # Override provided recipe and configure Qt4 to...
> # - Disable irrelevant functionality and output
> # - Disable SQL Plugins
> # - Disable unused input/ouput
> # - Have keyboard input and mouse input via /dev/input/mice
> # - Have Linux framebuffer support
> # - Use QML (so we need the declarative engine)
> #
> # Note, some of these might be extraneous, and this is a work in progress.
> # (You've been warned!)
> QT_CONFIG_FLAGS =3D "\
>  -embedded ${QT_ARCH} -qtlibinfix ${QT_LIBINFIX} \
>  -release -no-rpath -reduce-relocations -shared -no-exceptions \
>  -no-mmx -no-3dnow -no-sse -no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-av=
x \
>  -no-glib -no-largefile -no-accessibility -no-openssl -no-gtkstyle \
>  -no-xcursor -no-xinerama -no-phonon -no-phonon-backend -no-svg -no-webki=
t \
>  -no-libmng -no-accessibility -no-qt3support -no-xmlpatterns \
>  -no-audio-backend -no-gif -nomake examples -nomake demos -no-javascript-=
jit \
>  -no-nis -no-cups -no-declarative-debug \
>  -no-sql-db2 -no-sql-ibase -no-sql-mysql -no-sql-oci -no-sql-odbc \
>  -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian -no-sql-tds \
>  -no-xkb -no-kbd-tty -no-kbd-qnx -no-mouse-linuxinput \
>  -no-mouse-tslib -no-mouse-qnx -no-mouse-linuxtp \
>  -qt-mouse-pc -qt-kbd-linuxinput \
>  -qt-gfx-linuxfb -qt-gfx-multiscreen \
>  -depths 8,16,24,32 \
>  -declarative -script"
>=20
> PRINC :=3D "${@int(PRINC) + 1}"
>=20
> # Despite not building them, qt4.inc creates /usr/bin/qtopia/ with
> # only demo/ and example/ underneath. Let's get rid of these...
> do_install_append() {
>     rm -rf ${D}/usr/bin/qtopia
> }

strange, demos and examples are packaged in ${QT_BASE_NAME}-demos and
${QT_BASE_NAME}-examples packages so if you find these directories on
your target, that means you requested qt4-embedded-demos and
qt4-embedded-examples to be installed in your image.

Are you installing packagegroup-core-qt4e in your image like in=20
qt4e-demo-image ? If yes, that's where you pull demos & examples.

To get a minimal image, you could simply have :
IMAGE_INSTALL +=3D "\
	${CORE_IMAGE_BASE_INSTALL} \
	you_qt_app \
	some qt4-embedded-fonts or qt4-embedded-plugin you may need
	(check packagegroup-core-qt4e.bb for the exact names) \
	"
inherit core-image

The Qt libraries your application is linked with will be automatically
installed and you won't get extra unwanted packages in your image.

Best regards,
Eric

