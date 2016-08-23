Return-Path: <jbudde@huth.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D48BDE00FD9; Tue, 23 Aug 2016 06:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.14.225.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 130 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 06:16:00 PDT
Received: from mail.huth.org (mail.huth.org [195.14.225.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2091AE00FB8
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 06:16:00 -0700 (PDT)
Received: from exchange2013.huth.local ([192.168.0.101]:7440
	helo=mail.huth.org)
	by mail.huth.org with esmtps (TLSv1.2:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <JBudde@huth.org>)
	id 1bcBWU-00021k-0K
	for yocto@yoctoproject.org; Tue, 23 Aug 2016 15:13:46 +0200
Received: from Exchange2013.HUTH.LOCAL (192.168.0.101) by
	Exchange2013.HUTH.LOCAL (192.168.0.101) with Microsoft SMTP Server
	(TLS) id 15.0.1104.5; Tue, 23 Aug 2016 15:13:45 +0200
Received: from Exchange2013.HUTH.LOCAL ([::1]) by Exchange2013.HUTH.LOCAL
	([::1]) with mapi id 15.00.1104.000; Tue, 23 Aug 2016 15:13:45 +0200
From: "Budde, Jan" <JBudde@huth.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to build qtwebengine vom meta-qt5 correctly?
Thread-Index: AQHR/UAtAYFljqhwx0O5YXQGSj5TAw==
Date: Tue, 23 Aug 2016 13:13:45 +0000
Message-ID: <e75b4469637c481fa94f4eba10495625@Exchange2013.HUTH.LOCAL>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.210]
MIME-Version: 1.0
Subject: How to build qtwebengine vom meta-qt5 correctly?
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
X-List-Received-Date: Tue, 23 Aug 2016 13:16:03 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm learning to use Yocto with version 2.1.1 "krogoth" and want to
create an image for an intel-corei7-64 machine containing Qt 5.6 from
the meta-qt5 layer for X11. After several attempts I manage to build
all the required components, but a minimal example application using
the QtWebEngine module crashes with a "segmentation fault" as soon as
a webengine view is instantiated. If I install the official pre-built
Qt package from the Qt Company at www.qt.io instead, the application
works as expected.

I assume I might be missing some package configuration option. Is
there some kind of example recipe or tutorial for the kind of image
I'm trying to create? Can anyone with more experience give me a hint
what I might be doing wrong?

I'm using the "krogoth" branch of the following additional layers:

  meta-intel (https://github.com/meta-qt5/meta-qt5)
  meta-qt5 (git://git.yoctoproject.org/meta-intel)
  meta-ruby
  meta-multimedia
  meta-oe (git://git.openembedded.org/meta-openembedded)


My image inherits 'core-image' and 'distro-check'

IMAGE_FEATURES +=3D "splash package-management x11 hwcodecs ssh-server-open=
ssh"


I'm including the following recipes in my image:

  IMAGE_INSTALL_append =3D "\
    packagegroup-core-full-cmdline \
    packagegroup-core-lsb \
    tree \
    openbox \
    xinit \
    xterm \
    setxkbmap \
    binutils \
    \
    fontconfig \
    xorg-minimal-fonts \
    xorg-fonts-100dpi \
    font-cursor-misc \
    font-adobe-100dpi \
    liberation-fonts \
    font-bh-lucidatypewriter-100dpi \
    font-misc-misc \
    font-bitstream-100dpi \
    font-bh-100dpi \
    font-adobe-utopia-100dpi \
    xlsfonts \
    \
    qtbase \
    qtbase-fonts \
    qtbase-plugins \
    qtbase-tools \
    qttools-plugins \
    qtdeclarative \
    qtdeclarative-plugins \
    qtdeclarative-tools \
    qtdeclarative-qmlplugins \
    qtmultimedia \
    qtmultimedia-plugins \
    qtmultimedia-qmlplugins \
    qtquickcontrols-qmlplugins \
    qtsvg \
    qtsvg-plugins \
    qtimageformats-plugins \
    qtsystems \
    qtsystems-tools \
    qtsystems-qmlplugins \
    qtscript \
    qtgraphicaleffects-qmlplugins \
    qtquickcontrols \
    qtquickcontrols-qmlplugins \
    \
    qtwebengine \
    qtwebsockets \
    qtquickcontrols2 \
    qtserialport \
    \
    mesa-demos \
    \
    boost \
    \
    gdbserver \
    openssh-sftp-server \
    strace \
    "


I build Qt5 with the following package configuration options:

  PACKAGECONFIG_append =3D " icu gl accessibility alsa glib zlib xcb sql-sq=
lite2 iconv fontconfig openssl libproxy jpeg libpng freetype harfbuzz"


Am I missing something? What additional information is useful?

Thank you

  Jan
---------------------------------------------------------------------------=
---------------
HUTH Elektronik Systeme GmbH, 53842 Troisdorf-Spich
Gesch=E4ftsf=FChrer: Ralf Zimmermann, Benno Kerling
Amtsgericht Siegburg HRB 5386

