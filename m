Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC010E00AC8; Sun, 23 Aug 2015 18:38:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [93.17.128.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp23.services.sfr.fr (smtp23.services.sfr.fr [93.17.128.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D37E00ABE
	for <yocto@yoctoproject.org>; Sun, 23 Aug 2015 18:38:54 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.81.22])
	by msfrf2317.sfr.fr (SMTP Server) with ESMTP id 35461700009A;
	Mon, 24 Aug 2015 03:38:54 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-81-22.EMOME-IP.hinet.net [42.73.81.22])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2317.sfr.fr (SMTP Server) with ESMTP id EFEF17000097;
	Mon, 24 Aug 2015 03:38:52 +0200 (CEST)
X-SFR-UUID: 20150824013852982.EFEF17000097@msfrf2317.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Mon, 24 Aug 2015 03:38:50 +0100
X-PGP-Universal: processed;	by hjo-pc on Mon, 24 Aug 2015 03:38:50 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Jonathan Liu' <net147@gmail.com>, yocto@yoctoproject.org
References: <1440234679-5948-1-git-send-email-net147@gmail.com>
In-Reply-To: <1440234679-5948-1-git-send-email-net147@gmail.com>
Date: Mon, 24 Aug 2015 03:38:45 +0200
Message-ID: <000b01d0de0d$a0e04da0$e2a0e8e0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFWFVgQRkAfpNkRv/8K4vEBUX3jTZ8P7xGg
Subject: Re: ***SPAM*** [meta-raspberrypi][PATCH] qtbase: enable Raspberry Pi	support
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
X-List-Received-Date: Mon, 24 Aug 2015 01:38:58 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi,

Same for this one, with either my patch or Khem's patch for the include
files, most of the modifications for the include files and library =
should
not be needed.
I would recommend adding one of these patches, and making a dependency =
on
virtual/egl.

What I had to do, though, for qt5, was to add a file:
mkspecs/linux-oe-g++/qeglfshooks_pi.cpp, that would implement =
raspberrypi
specific hooks for QT.
At least, that was required with the QT version I was using, which might =
not
be needed with the latest one - I would need to check that further, =
which is
why I didn't push anything regarding that yet.

Best regards,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Jonathan Liu
Sent: samedi 22 ao=FBt 2015 11:11
To: yocto@yoctoproject.org
Subject: ***SPAM*** [yocto] [meta-raspberrypi][PATCH] qtbase: enable
Raspberry Pi support

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend
b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..d3d41e2
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,21 @@
+do_configure_prepend_rpi() {
+    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
+        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+QMAKE_INCDIR_EGL =3D =
$$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \
+                  =20
+$$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
+QMAKE_INCDIR_OPENGL_ES2 =3D $${QMAKE_INCDIR_EGL} QMAKE_LIBS_EGL =3D =
-lEGL=20
+-lGLESv2 EOF
+
+        if [ -d
${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+EGLFS_DEVICE_INTEGRATION =3D eglfs_brcm
+EOF
+        else
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+EGLFS_PLATFORM_HOOKS_LIBS =3D -lbcm_host
+EGLFS_PLATFORM_HOOKS_SOURCES =3D=20
+$$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
+EOF
+        fi
+    fi
+}
--
2.5.0

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


