Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C425CE00B63; Sun, 10 Jan 2016 20:35:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,MISSING_DATE,
	MISSING_MID,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 MISSING_MID Missing Message-Id: header
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  1.4 MISSING_DATE Missing Date: header
X-Greylist: delayed 335 seconds by postgrey-1.32 at yocto-www;
	Sun, 10 Jan 2016 20:35:32 PST
Received: from pdx-yp-fw1.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01508E00B3A
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 20:35:32 -0800 (PST)
Received: from auh.yoctoproject.org (yct42 [192.168.10.66])
	by pdx-yp-fw1.yoctoproject.org (Postfix) with ESMTP id EBFEC539D7
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 04:29:56 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160111043538.C425CE00B63@yocto-www.yoctoproject.org>
Date: Sun, 10 Jan 2016 20:35:38 -0800 (PST)
X-Mailman-Approved-At: Mon, 11 Jan 2016 06:21:39 -0800
Subject: [AUH] Upgrade status: 2016-01-11
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
X-List-Received-Date: Mon, 11 Jan 2016 04:35:38 -0000
Content-Type: multipart/mixed; boundary="===============5206777727279702404=="

--===============5206777727279702404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160108161501.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(do_patch): 1
        dbus-test, 1.10.6, Chen Qi <Qi.Chen@windriver.com>
    * Succeeded: 63
        less, 481, Robert Yang <liezhi.yang@windriver.com>
        lttng-modules, 2.7.1+gitAUTOINC+45e0ebd91f, Richard Purdie <richard.purdie@linuxfoundation.org>
        gdb, 7.10.1, Richard Purdie <richard.purdie@linuxfoundation.org>
        python-nose, 1.3.7, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        gpgme, 1.6.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libsoup-2.4, 2.52.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        glew, 1.13.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        pixman, 0.33.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-setuptools, 19.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        swig, 3.0.8, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libdrm, 2.4.66, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gtk+, 2.24.29, Jussi Kukkonen <jussi.kukkonen@intel.com>
        lttng-ust, 2.7.1+gitAUTOINC+f89c1a3cf2, Richard Purdie <richard.purdie@linuxfoundation.org>
        man-pages, 4.04, Hongxu Jia <hongxu.jia@windriver.com>
        findutils, 4.5.19, Chen Qi <Qi.Chen@windriver.com>
        libsdl2, 2.0.4, Kai Kang <kai.kang@windriver.com>
        waffle, 1.5.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-scons, 2.4.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libinput, 1.1.4, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libwebp, 0.5.0, Alexander Kanavin <alexander.kanavin@intel.com>
        kmod, 22+gitAUTOINC+42f32b8ae4, Chen Qi <Qi.Chen@windriver.com>
        rsync, 3.1.2, Robert Yang <liezhi.yang@windriver.com>
        nss, 3.21, Alexander Kanavin <alexander.kanavin@intel.com>
        libxi, 1.7.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libevdev, 1.4.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libgpg-error, 1.21, Jussi Kukkonen <jussi.kukkonen@intel.com>
        connman, 1.31, Maxin B. John <maxin.john@intel.com>
        ccache, 3.2.4, Wenzong Fan <wenzong.fan@windriver.com>
        gnupg, 2.1.10, Hongxu Jia <hongxu.jia@windriver.com>
        vala, 0.30.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        at-spi2-core, 2.18.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        wget, 1.17.1, Robert Yang <liezhi.yang@windriver.com>
        libgcrypt, 1.6.4, Hongxu Jia <hongxu.jia@windriver.com>
        epiphany, 3.18.3, Alexander Kanavin <alexander.kanavin@intel.com>
        xz, 5.2.2, Chen Qi <Qi.Chen@windriver.com>
        pax-utils, 1.1.4, Hongxu Jia <hongxu.jia@windriver.com>
        cups, 2.1.2, Chen Qi <Qi.Chen@windriver.com>
        subversion, 1.9.3, Richard Purdie <richard.purdie@linuxfoundation.org>
        gdk-pixbuf, 2.32.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        glib-2.0, 2.46.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-pycurl, 7.21.5, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        xmlto, 0.0.28, Hongxu Jia <hongxu.jia@windriver.com>
        pulseaudio, 7.99.1, Tanu Kaskinen <tanuk@iki.fi>
        lighttpd, 1.4.39, Alexander Kanavin <alexander.kanavin@intel.com>
        dpkg, 1.18.4, Aníbal Limón <anibal.limon@linux.intel.com>
        menu-cache, 1.0.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        bluez5, 5.37, Maxin B. John <maxin.john@intel.com>
        python-mako, 1.0.3, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        xf86-input-evdev, 2.10.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python3-setuptools, 19.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        alsa-tools, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>
        libcroco, 0.6.11, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gtk+3, 3.18.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-numpy, 1.10.4, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        gsettings-desktop-schemas, 3.19.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        curl, 7.46.0, Chen Qi <Qi.Chen@windriver.com>
        libbsd, 0.8.1, Robert Yang <liezhi.yang@windriver.com>
        cmake, 3.4.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        alsa-lib, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>
        librsvg, 2.40.13, Jussi Kukkonen <jussi.kukkonen@intel.com>
        lttng-tools, 2.7.1+gitAUTOINC+a90f2c1e10, Richard Purdie <richard.purdie@linuxfoundation.org>
        iso-codes, 3.64, Alexander Kanavin <alexander.kanavin@intel.com>
        pciutils, 3.4.1, Chen Qi <Qi.Chen@windriver.com>
    * Failed(do_compile): 12
        wayland, 1.9.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ca-certificates, 20160104, Alexander Kanavin <alexander.kanavin@intel.com>
        ghostscript, 9.18, Hongxu Jia <hongxu.jia@windriver.com>
        dbus, 1.10.6, Chen Qi <Qi.Chen@windriver.com>
        elfutils, 0.164, Hongxu Jia <hongxu.jia@windriver.com>
        dhcp, 4.3.3, Hongxu Jia <hongxu.jia@windriver.com>
        sysstat, 11.2.0-1, Chen Qi <Qi.Chen@windriver.com>
        ruby, 2.3.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        sqlite3, 3.10.0, Maxin B. John <maxin.john@intel.com>
        perl, 5.22.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        strace, 4.11, Robert Yang <liezhi.yang@windriver.com>
        alsa-plugins, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>
    * Failed(do_fetch): 1
        git, 2.7.0, Robert Yang <liezhi.yang@windriver.com>
    * Failed(do_configure): 6
        alsa-utils, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>
        weston, 1.9.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        at, 3.1.18, Chen Qi <Qi.Chen@windriver.com>
        pinentry, 0.9.7, Armin Kuster <akuster808@gmail.com>
        quota, 4.03, Maxin B. John <maxin.john@intel.com>
        usbutils, 008, Alexander Kanavin <alexander.kanavin@intel.com>
    * Failed(other errors): 12
        iputils, s20151218, Robert Yang <liezhi.yang@windriver.com>
        unzip, 60, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        prelink, 20151030.+gitAUTOINC+927979bbd1, Mark Hatle <mark.hatle@windriver.com>
        gettext, 0.19.7, Wenzong Fan <wenzong.fan@windriver.com>
        valgrind, 3.11.0, Alexander Kanavin <alexander.kanavin@intel.com>
        lsbinitscripts, 9.65, Ross Burton <ross.burton@intel.com>
        apt, 1.1.10, Aníbal Limón <anibal.limon@linux.intel.com>
        ncurses, 6.0.20150627, Hongxu Jia <hongxu.jia@windriver.com>
        libpng12, 1.2.56, Maxin B. John <maxin.john@intel.com>
        freetype, 2.6.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        file, 5.25, Robert Yang <liezhi.yang@windriver.com>
        slang, 2.3.0, Kai Kang <kai.kang@windriver.com>
    * Failed(get_env): 2
        boost, 1.60.0, Alexander Kanavin <alexander.kanavin@intel.com>
        alsa-utils-scripts, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>

    TOTAL: attempted=97 succeeded=63(64.95%) failed=34(35.05%)

Recipe upgrade statistics per Maintainer:

    Alejandro Hernandez <alejandro.hernandez: attempted=11 succeeded=8(72.73%) failed=3(27.27%)
    Alexander Kanavin <alexander.kanavin: attempted=9 succeeded=5(55.56%) failed=4(44.44%)
    Ross Burton <ross.burton: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Kai Kang <kai.kang: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Wenzong Fan <wenzong.fan: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Aníbal Limón <anibal.limon: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Armin Kuster <akuster808: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=25 succeeded=22(88.00%) failed=3(12.00%)
    Richard Purdie <richard.purdie: attempted=5 succeeded=5(100.00%) failed=0(0.00%)
    Hongxu Jia <hongxu.jia: attempted=9 succeeded=5(55.56%) failed=4(44.44%)
    Tanu Kaskinen <tanuk: attempted=6 succeeded=3(50.00%) failed=3(50.00%)
    Robert Yang <liezhi.yang: attempted=8 succeeded=4(50.00%) failed=4(50.00%)
    Chen Qi <Qi.Chen: attempted=10 succeeded=6(60.00%) failed=4(40.00%)
    Maxin B. John <maxin.john: attempted=5 succeeded=2(40.00%) failed=3(60.00%)
    Mark Hatle <mark.hatle: attempted=1 succeeded=0(0.00%) failed=1(100.00%)

--===============5206777727279702404==--
