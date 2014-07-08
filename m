Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADEB7E00559; Tue,  8 Jul 2014 10:28:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBBFAE00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 10:28:12 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id lx4so4300208iec.15
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 10:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xuykn+Mimu+BxxSgGJDC/PWOdS8n5pOhvg7FY/ssv9Y=;
	b=OHm1rCPBCte+uCqAGZnAoOfqlFszEZ3KpiRj5UeHDzv/Ehv/D7nMD+O/hSXsjaBgTA
	Qaw50bbRHahKXwSD8C5OPdgSZpc+qavCpxshx+cJ7jeWllWNiIhaeXZWZeZu1z4Ff0X2
	y/ocKuykYjuQi2C4j3pCmno1p41IJ/k1GXZCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=xuykn+Mimu+BxxSgGJDC/PWOdS8n5pOhvg7FY/ssv9Y=;
	b=YrdYp8Agutseun3JljL6VpjP37XhI2P3ajhbk9TNrUqXccosKmNhieIOEhuA25oajX
	4b2P4AXk071Le6iSE5vbIiLZfrN3cYRL35dmRvzWMyAsHAHIh78IKoZujIVuUpE6mQus
	cQYJd0TPw0bVS1itFpiqTPWJeSLWYzL4ZEMxe0C3yeYSh+czQ/yQGzkS78gKQv1njgPi
	EUbQHZC8ztYS8Z46XTPeQSXslCRb4razD3l5pKnweVPlkkr5oQ3SlTV46i5B14TA+GqS
	DmNr9CS/SEK57AwEaMWdm29O/8fLZX9cf6hCu6B5sbNm3j9BfI+wjx4LzHwA0yg6yvWV
	W9Yg==
X-Gm-Message-State: ALoCoQkTr1U78YG5Rd45iQtSknPZH5tB7T3EOIM60old7Ub4GfQuz7cx5+MhmH1X3e8DmBkIMNaW
MIME-Version: 1.0
X-Received: by 10.42.91.1 with SMTP id n1mr4429175icm.76.1404840491760; Tue,
	08 Jul 2014 10:28:11 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 10:28:11 -0700 (PDT)
Date: Tue, 8 Jul 2014 10:28:11 -0700
Message-ID: <CA+gsK-ppcQmqUwfJSs1MdzqwBPWkJm=5Ok3mx9Mxnfs7yPowLw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: core-image-weston: do_rootfs failure installing libcogl
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
X-List-Received-Date: Tue, 08 Jul 2014 17:28:15 -0000
Content-Type: multipart/alternative; boundary=90e6ba3fd5ef7a500404fdb1ea3d

--90e6ba3fd5ef7a500404fdb1ea3d
Content-Type: text/plain; charset=UTF-8

I am attempting to build core-image-weston with Poky from Master. It fails
creating the rootfs when smart tries to install libcogl (details at the
end):

error:     libcogl20-1.18.0-r0@i586 conflicts with
libcogl-path20-1.18.0-r0@i586

I have searched for this issue in Bugzilla and across the web. No luck. Is
that something anyone here knows about?

Thanks,
Rudi







Build Configuration:
BB_VERSION        = "1.23.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140708"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:a5531a2b8983318b99c119a87b78a92cf84160b8"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Unable to install packages. Command
'/run/media/rudi/SanDisk-256G/develop/yocto/yocto-git/x86/tmp/sysroots/x86_64-linux/usr/bin/smart
--data-dir=/run/media/rudi/SanDisk-256G/develop/yocto/yocto-git/x86/tmp/work/qemux86-poky-linux/core-image-weston/1.0-r0/rootfs/var/lib/smart
install -y packagegroup-core-ssh-dropbear@all psplash@i586
libclutter-1.0-examples@i586 packagegroup-base-extended@qemux86 smartpm@i586
packagegroup-core-tools-debug@qemux86 packagegroup-core-eclipse-debug@all
weston@i586 weston-init@all gtk+3-demo@i586 weston-examples@i586
packagegroup-core-sdk@all packagegroup-core-standalone-sdk-target@all
rpm@i586 packagegroup-core-boot@qemux86 locale-base-en-us@i586
locale-base-en-gb@i586' returned 1:
Loading cache...
Updating cache...               ########################################
[100%]

Computing transaction...error: Can't install libcogl-path20-1.18.0-r0@i586:
unable to install provider for libcogl20 >= 1.18.0:
error:     libcogl20-1.18.0-r0@i586 conflicts with
libcogl-path20-1.18.0-r0@i586


ERROR: Function failed: do_rootfs
E

--90e6ba3fd5ef7a500404fdb1ea3d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am attempting to build core-image-weston with =
Poky from Master. It fails creating the rootfs when smart tries to install =
libcogl (details at the end):<br><br>error:=C2=A0=C2=A0=C2=A0=C2=A0 libcogl=
20-1.18.0-r0@i586 conflicts with libcogl-path20-1.18.0-r0@i586<br>
<br></div>I have searched for this issue in Bugzilla and across the web. No=
 luck. Is that something anyone here knows about?<br><br></div>Thanks,<br>R=
udi<br><div><div><br><br><br><br><br><br><br>Build Configuration:<br>BB_VER=
SION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.23.1&quot;<br>
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-=
linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Fedora-18&quot;<br>TAR=
GET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux=
&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.6+snapshot-20140708&quot;<br>T=
UNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i586&quot;<br>TARGET_FPU=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=
=C2=A0=C2=A0=C2=A0 =3D &quot;master:a5531a2b8983318b99c119a87b78a92cf84160b=
8&quot;<br>
<br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Exe=
cuting RunQueue Tasks<br>ERROR: Unable to install packages. Command &#39;/r=
un/media/rudi/SanDisk-256G/develop/yocto/yocto-git/x86/tmp/sysroots/x86_64-=
linux/usr/bin/smart --data-dir=3D/run/media/rudi/SanDisk-256G/develop/yocto=
/yocto-git/x86/tmp/work/qemux86-poky-linux/core-image-weston/1.0-r0/rootfs/=
var/lib/smart install -y packagegroup-core-ssh-dropbear@all psplash@i586 li=
bclutter-1.0-examples@i586 packagegroup-base-extended@qemux86 smartpm@i586 =
packagegroup-core-tools-debug@qemux86 packagegroup-core-eclipse-debug@all w=
eston@i586 weston-init@all gtk+3-demo@i586 weston-examples@i586 packagegrou=
p-core-sdk@all packagegroup-core-standalone-sdk-target@all rpm@i586 package=
group-core-boot@qemux86 locale-base-en-us@i586 locale-base-en-gb@i586&#39; =
returned 1:<br>
Loading cache...<br>Updating cache...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ##########################=
############## [100%]<br><br>Computing transaction...error: Can&#39;t insta=
ll libcogl-path20-1.18.0-r0@i586: unable to install provider for libcogl20 =
&gt;=3D 1.18.0:<br>
error:=C2=A0=C2=A0=C2=A0=C2=A0 libcogl20-1.18.0-r0@i586 conflicts with libc=
ogl-path20-1.18.0-r0@i586<br><br><br>ERROR: Function failed: do_rootfs<br>E=
<br></div></div></div>

--90e6ba3fd5ef7a500404fdb1ea3d--
