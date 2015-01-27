Return-Path: <timo.j.pulkkinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF8EE008DC; Tue, 27 Jan 2015 03:47:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (timo.j.pulkkinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D64E0083A
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 03:47:01 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id pv20so12730301lab.7
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 03:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:mime-version:subject
	:message-id:date:to;
	bh=W30Z3d8JZSV2iLGv/i0r882r+piCLQcINFWa5o9LwLI=;
	b=uvbswsCuMqhDT+/1cVy+ADmwJ+eWbe2dCjN2G2I8PYNeMEJdvTUXFgCQgqbHHp1k98
	Y0yM0Zy4bDf+xNSyuOkXwMF/usqTbDkZnEDYClh7ZVNHtzWlcAF+WV0ANddThtYuyjv7
	Gp6I/N7NPnC3ylusjwSApo+V09X2D5HN2ZqbkzMl5ga8RCGFqxBZxKPMZzXWtvr68i+T
	N+kKZwhkexeoe4fb9VIBCu8mS3TPUi2ItJ0T7e6PBC2R7HAEmflBa7+EhhlM8y7Js1lE
	AQVntTC77LXL+HzSya2j4dYwEtqu9yjlTVJeo4XgxgKnPsfbXYbB3L0As4ffyrOCmOSA
	Z1NA==
X-Received: by 10.112.198.233 with SMTP id jf9mr1095245lbc.9.1422359219636;
	Tue, 27 Jan 2015 03:46:59 -0800 (PST)
Received: from [10.10.0.209] (ip210-126.seclan.com. [81.19.126.210])
	by mx.google.com with ESMTPSA id j9sm362366lae.39.2015.01.27.03.46.57
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 27 Jan 2015 03:46:58 -0800 (PST)
From: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
X-Mao-Original-Outgoing-Id: 444052016.78003-1c314a6eead22053140efeae7f73f3ae
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
Message-Id: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
Date: Tue, 27 Jan 2015 13:46:56 +0200
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1993)
Subject: Google Chrome recipe and systemd => how to satisfy runtime requirement for libudev.so.0?
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
X-List-Received-Date: Tue, 27 Jan 2015 11:47:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

i'm trying to create a recipe for Google Chrome for my first Yocto =
project for Intel NUC (based on the Chrome rpm package). The recipe =
seems to build ok, and I was able to
build a working system using sysvinit, but when I enabled systemd the =
image build stops during do_rootfs when requirement for libudev.so.0 is =
not satisfied.=20

error: Can't install google-chrome-40.0.2214.91+1-r0@x86_64: no package =
provides libudev.so.0()(64bit)

Google Chrome can use either systemd provided libudev.so.1 or udev =
provided libudev.so.0 (so either of them should satisfy the runtime =
dependency). I tried to create a symlink between
libudev.so.0 and libudev.so1 (as you can see in the recipe attached) but =
to no avail. Any suggestions on how I could satisfy this dependency=20
during image building? Link between lib and lib64 was fairly easy to do =
but apparently libs are handled differently.

Chrome recipe:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

SUMMARY =3D "Google Chrome (without auto updates, 64bit) "
DESCRIPTION =3D "This recipe adds Google Chrome (binary) to system"
LICENSE =3D "Proprietary"
PACKAGE_ARCH =3D "x86_64"
RDEPENDS_${PN} =3D "systemd openssl libselinux krb5 xz libpcap cairo =
expat freetype libxcursor libxtst glib-2.0 udev nss libxi \
                  fontconfig gdk-pixbuf libcap libxdamage libxext =
libxrandr alsa-lib dbus gtk+ gconf pango nspr \
                  libx11 libxcomposite libxrender libxfixes =
libxscrnsaver cups-lib"


LIC_FILES_CHKSUM =3D =
"file://eula_text.html;md5=3Da4fcf95699bbb37e9522695b0d632e0b"

# skip certain insane QA tests for binaries

INSANE_SKIP_${PN} =3D "already-stripped ldflags"



# set source dir to subdir

S =3D "${WORKDIR}/google-chrome/"

SRC_URI =3D =
"file://google-chrome-stable_current_x86_64.rpm;subdir=3Dgoogle-chrome"
SRC_URI[md5sum] =3D ""
SRC_URI[sha256sum] =3D ""

# Common variable and task for the binary package recipe.
# Basic principle:
# * The files have been unpacked to ${S} by base.bbclass
# * Skip do_configure and do_compile
# * Use do_install to install the files to ${D}
#
# Note:
# The "subdir" parameter in the SRC_URI is useful when the input package
# is rpm, ipk, deb and so on, for example:
#
# SRC_URI =3D "http://foo.com/foo-1.0-r1.i586.rpm;subdir=3Dfoo-1.0"
#
# Then the files would be unpacked to ${WORKDIR}/foo-1.0, otherwise
# they would be in ${WORKDIR}.
#

# Skip the unwanted steps
do_configure[noexec] =3D "1"
do_compile[noexec] =3D "1"

# Install the files to ${D}
do_install () {
        echo sdfs =20
  # Do it carefully
    [ -d "${S}" ] || (echo missing source && exit 1)
    cd ${S} || (echo unable to change to && exit 1)
    tar --no-same-owner --exclude=3D'./etc' --exclude=3D'./patches' =
--exclude=3D'./.pc' -cpvf - . \
        | tar --no-same-owner -xpvf - -C ${D}
    cd ${D}
    ln -sf lib lib64
    cd usr
    ln -sf lib lib64
    cd ..
    mkdir -p lib
    cd ${D}/opt/google/chrome
    ln -sf ../../../lib/libudev.so.1 libudev.so.0
}
FILES_${PN} =3D "${bindir}/google-chrome-stable /lib64 /usr/lib64 =
${bindir}/google-chrome /opt/google/chrome ${datadir}/applications =
${datadir}/gnome-control-center/default-apps"


Excerpt from local.conf:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
...

LICENSE_FLAGS_WHITELIST =3D "commercial"
DISTRO_FEATURES_append =3D " opengl pam selinux systemd"
VIRTUAL-RUNTIME_xserver_common =3D "xserver-common"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_initscripts =3D ""
PREFERRED_PROVIDER_udev =3D "systemd"
PREFERRED_PROVIDER_libudev =3D "systemd"

Layers:
=3D=3D=3D=3D=3D=3D
BBLAYERS =3D "/.../Yocto/poky/meta-infomonitor /.../Yocto/poky/meta =
/.../Yocto/poky/meta-yocto /.../Yocto/poky/meta-yocto-bsp =
/.../Yocto/poky/meta-intel /.../Yocto/poky/meta-intel/meta-nuc =
/.../Yocto/poky/meta-qt5 /.../Yocto/poky/meta-browser =
/.../Yocto/poky/meta-openembedded/meta-gnome =
/.../Yocto/poky/meta-openembedded/meta-ruby =
/.../Yocto/poky/meta-openembedded/meta-xfce =
/.../Yocto/poky/meta-openembedded/meta-multimedia =
/.../Yocto/poky/meta-openembedded/meta-networking =
/.../Yocto/poky/meta-openembedded/meta-python =
/.../Yocto/poky/meta-openembedded/meta-oe /.../Yocto/poky/meta-selinux"


br,
Timo




