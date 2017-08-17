Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1C24E00DB1; Thu, 17 Aug 2017 01:00:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.81 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53EF9E00C9F
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 01:00:17 -0700 (PDT)
Received: from fwd36.aul.t-online.de (fwd36.aul.t-online.de [172.20.26.137])
	by mailout03.t-online.de (Postfix) with SMTP id E147B42421C8
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:00:16 +0200 (CEST)
Received: from genericx86-64
	(TFwN6BZZghwYojEWrD6UqWnczSJAoTmeGeAB3fUxULM4LlIxbamTTKIkoaPFMpRQRy@[84.146.40.121])
	by fwd36.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1diFir-2pLyeO0; Thu, 17 Aug 2017 10:00:09 +0200
Date: Thu, 17 Aug 2017 10:00:03 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: TFwN6BZZghwYojEWrD6UqWnczSJAoTmeGeAB3fUxULM4LlIxbamTTKIkoaPFMpRQRy
X-TOI-MSGID: c872dbe7-2de4-4727-92ae-cce346322e7a
Subject: some issues with current poky master
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
X-List-Received-Date: Thu, 17 Aug 2017 08:00:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable


Hello,

yesterday i tried building an image using the current poky master branch. I=
 had some issues, not sure which of them are homemade but i=B4d like to sha=
re anyway


for mesa package_qa fails with:

ERROR: mesa-2_17.1.5-r0 do_package_qa: QA Issue: package libxatracker conta=
ins bad RPATH /home/builder/yocto/poky/build/tmp/work/x86_64-linux/llvm-nat=
ive/5.0-r0/recipe-sysroot-native/usr/lib:/home/builder/yocto/poky/build/tmp=
/work/x86_64-linux/llvm-native/5.0-r0/recipe-sysroot-native/lib in file /ho=
me/builder/yocto/poky/build/tmp/work/core2-64-poky-linux/mesa/2_17.1.5-r0/p=
ackages-split/libxatracker/usr/lib/libxatracker.so.2.3.0 [rpaths]
ERROR: mesa-2_17.1.5-r0 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.
ERROR: mesa-2_17.1.5-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/builder/yocto/poky/build/tmp/wor=
k/core2-64-poky-linux/mesa/2_17.1.5-r0/temp/log.do_package_qa.12561
ERROR: Task (/home/builder/yocto/poky/meta/recipes-graphics/mesa/mesa_17.1.=
5.bb:do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 8980 tasks of which 8970 didn't need to be r=
erun and 1 failed.

i added 'INSANE_SKIP_libxatracker =3D "rpaths"  into a bbappend to go on

further, i=B4m packaging chrome. I encounter problems here since pyro with =
unpacking the .deb=20

When doing 'bitbake myimage' it stoppes here:

ERROR: chrome-browser-r0 do_unpack: Unpack failure for URL: 'https://dl.goo=
gle.com/linux/direct/google-chrome-stable_current_amd64.deb'. Unpack comman=
d PATH=3D"/home/builder/yocto/poky/build/tmp/sysroots-uninative/x86_64-linu=
x/usr/bin:/home/builder/yocto/poky/scripts:/home/builder/yocto/poky/build/t=
mp/work/core2-64-poky-linux/chrome/browser-r0/recipe-sysroot-native/usr/bin=
/x86_64-poky-linux:/home/builder/yocto/poky/build/tmp/work/core2-64-poky-li=
nux/chrome/browser-r0/recipe-sysroot/usr/bin/crossscripts:/home/builder/yoc=
to/poky/build/tmp/work/core2-64-poky-linux/chrome/browser-r0/recipe-sysroot=
-native/usr/sbin:/home/builder/yocto/poky/build/tmp/work/core2-64-poky-linu=
x/chrome/browser-r0/recipe-sysroot-native/usr/bin:/home/builder/yocto/poky/=
build/tmp/work/core2-64-poky-linux/chrome/browser-r0/recipe-sysroot-native/=
sbin:/home/builder/yocto/poky/build/tmp/work/core2-64-poky-linux/chrome/bro=
wser-r0/recipe-sysroot-native/bin:/home/builder/yocto/poky/bitbake/bin:/hom=
e/builder/yocto/poky/build/tmp/hosttools" ar x /home/builder/yocto/poky/yoc=
to-downloads/google-chrome-stable_current_amd64.deb data.tar.xz && tar --no=
-same-owner -xpf data.tar.xz && rm data.tar.xz failed with return value 2
ERROR: chrome-browser-r0 do_unpack: Function failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/builder/yocto/poky/build/tmp/wor=
k/core2-64-poky-linux/chrome/browser-r0/temp/log.do_unpack.16529
ERROR: Task (/home/builder/yocto/poky/meta-neutrino-x86/recipes-local/chrom=
e/chrome_browser.bb:do_unpack) failed with exit code '1'

after doing

'bitbake -c cleansstate chrome'
'bitbake chrome'

it is working then, unless the .deb is removed from download directory. May=
be i=B4m missing something inside the .bb ?

SUMMARY =3D "Google Chrome"
LICENSE =3D "proprietary"
LIC_FILES_CHKSUM =3D "file://${WORKDIR}/license;md5=3D17a6b3d5436a55985b200=
c725761907a"

SRC_URI =3D "https://dl.google.com/linux/direct/google-chrome-stable_curren=
t_amd64.deb \
	   file://license \
"

SRC_URI[md5sum] =3D "70f90d19dcf51a87b7f6df788b5fddc7"
SRC_URI[sha256sum] =3D "5c22cc312c360cf7ad84f5f75c6fc6626b59ca529f7f66f65aa=
ab3b9ca8df196"


DEPENDS =3D "xz-native"
RDEPENDS_${PN} +=3D "cups"

S =3D "${WORKDIR}"

do_install() {
	install -d ${D}/usr/bin ${D}/usr/share/applications ${D}/opt/google
	cp -rf ${S}/opt/* ${D}/opt/
	cp -rf ${S}/usr/* ${D}/usr/
	ln -sf ./google-chrome-stable ${D}/usr/bin/google-chrome
	cp -rf ${S}/etc/* ${D}${sysconfdir}
	for i in 16 32 48 128 256;do
		x=3D'x'
		install -d ${D}/usr/share/icons/hicolor/$i$x$i/apps
		cp -f ${S}/opt/google/chrome/product_logo_$i.png ${D}/usr/share/icons/hic=
olor/$i$x$i/apps/google-chrome.png
	done
}

FILES_${PN} =3D "/usr \
		       /opt \
		       /etc \
"

INSANE_SKIP_${PN} +=3D "already-stripped ldflags build-deps file-rdeps"

After sucessful build of the Image, my .iso has 38MB in size and seems to b=
e missing the entire rootfs
The created hddimg has the right size of 4,3GB, but when i write it onto an=
 usb drive (tried dd and gnome-disk-utility) it ends up with a big /boot pa=
rtiton containing only the boot files

regards,
Markus
--=20
Markus Volk <f_l_k@t-online.de>

