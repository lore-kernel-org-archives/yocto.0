Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79230E00D7F; Fri, 29 Apr 2016 20:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Apr 2016 20:36:51 PDT
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3258EE00D78
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 20:36:51 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id C30ED6FE17C6
	for <yocto@yoctoproject.org>; Sat, 30 Apr 2016 03:32:05 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160430033205.C30ED6FE17C6@auh.yoctoproject.org>
Date: Sat, 30 Apr 2016 03:32:05 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-04-30
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
X-List-Received-Date: Sat, 30 Apr 2016 03:36:54 -0000
Content-Type: multipart/mixed; boundary="===============2326408444359914635=="

--===============2326408444359914635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160428014037.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Succeeded: 46
        tcl, 8.6.5, Robert Yang <liezhi.yang@windriver.com>
        clutter-gst-3.0, 3.0.18, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libsoup-2.4, 2.54.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gdk-pixbuf, 2.34.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ethtool, 4.5, Maxin B. John <maxin.john@intel.com>
        python-dbus, 1.2.4, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        babeltrace, 1.3.2, Alexander Kanavin <alexander.kanavin@intel.com>
        libdrm, 2.4.68, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gtk+, 2.24.30, Jussi Kukkonen <jussi.kukkonen@intel.com>
        pango, 1.40.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        wayland, 1.10.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        lttng-ust, 2.7.3+gitAUTOINC+64165fb5ce, Richard Purdie <richard.purdie@linuxfoundation.org>
        man-pages, 4.05, Hongxu Jia <hongxu.jia@windriver.com>
        json-glib, 1.2.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        lttng-modules, 2.7.3+gitAUTOINC+5362a1f260, Richard Purdie <richard.purdie@linuxfoundation.org>
        inputproto, 2.3.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        glib-networking, 2.48.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python3-pip, 8.1.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        dbus-test, 1.10.8, Chen Qi <Qi.Chen@windriver.com>
        msmtp, 1.6.4, Alexander Kanavin <alexander.kanavin@intel.com>
        vala, 0.32.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        at-spi2-core, 2.20.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        hwlatdetect, 0.97, Alexander Kanavin <alexander.kanavin@intel.com>
        pax-utils, 1.1.6, Hongxu Jia <hongxu.jia@windriver.com>
        orc, 0.4.25, Maxin B. John <maxin.john@intel.com>
        at-spi2-atk, 2.20.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        harfbuzz, 1.2.6, Maxin B. John <maxin.john@intel.com>
        xkeyboard-config, 2.17, Jussi Kukkonen <jussi.kukkonen@intel.com>
        subversion, 1.9.4, Richard Purdie <richard.purdie@linuxfoundation.org>
        pkgconfig, 0.29.1+gitAUTOINC+87152c05be, Maxin B. John <maxin.john@intel.com>
        grep, 2.25, Chen Qi <Qi.Chen@windriver.com>
        mc, 4.8.16, Maxin B. John <maxin.john@intel.com>
        libtasn1, 4.8, Maxin B. John <maxin.john@intel.com>
        bluez5, 5.39, Maxin B. John <maxin.john@intel.com>
        sudo, 1.8.16, Chen Qi <Qi.Chen@windriver.com>
        gsettings-desktop-schemas, 3.20.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        curl, 7.48.0, Chen Qi <Qi.Chen@windriver.com>
        videoproto, 2.3.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        librsvg, 2.40.15, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gcr, 3.20.0, Alexander Kanavin <alexander.kanavin@intel.com>
        libsecret, 0.18.5, Alexander Kanavin <alexander.kanavin@intel.com>
        python-pygobject, 3.21.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        lttng-tools, 2.7.2+gitAUTOINC+85e7d60abd, Richard Purdie <richard.purdie@linuxfoundation.org>
        xrandr, 1.5.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        liburcu, 0.9.2, Alexander Kanavin <alexander.kanavin@intel.com>
        mpfr, 3.1.4, Richard Purdie <richard.purdie@linuxfoundation.org>
    * Failed(do_compile): 2
        nss, 3.23, Alexander Kanavin <alexander.kanavin@intel.com>
        dropbear, 2016.73, Jussi Kukkonen <jussi.kukkonen@intel.com>
    * Failed(do_fetch): 1
        git, 2.8.1, Robert Yang <liezhi.yang@windriver.com>
    * Failed(do_configure): 15
        gstreamer1.0-plugins-good, 1.8.1, Maxin B. John <maxin.john@intel.com>
        db, 6.2.23, Maxin B. John <maxin.john@intel.com>
        python-scons, 2.5.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libinput, 1.2.902, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ccache, 3.2.5, Wenzong Fan <wenzong.fan@windriver.com>
        gstreamer1.0-rtsp-server, 1.8.1, Maxin B. John <maxin.john@intel.com>
        libxkbcommon, 0.6.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        atk, 2.20.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        sysstat, 11.3.3, Chen Qi <Qi.Chen@windriver.com>
        epiphany, 3.20.1, Alexander Kanavin <alexander.kanavin@intel.com>
        clutter-gtk-1.0, 1.8.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-mako, 1.0.4, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libbsd, 0.8.3, Robert Yang <liezhi.yang@windriver.com>
        iso-codes, 3.67, Alexander Kanavin <alexander.kanavin@intel.com>
        docbook-xsl-stylesheets, 1.79.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
    * Failed(other errors): 49
        busybox, 1.24.2, Chen Qi <Qi.Chen@windriver.com>
        acpid, 2.0.27, Maxin B. John <maxin.john@intel.com>
        btrfs-tools, 4.5.1, Alexander Kanavin <alexander.kanavin@intel.com>
        kexec-tools, 2.0.12, Alexander Kanavin <alexander.kanavin@intel.com>
        gettext, 0.19.7, Wenzong Fan <wenzong.fan@windriver.com>
        xserver-xorg, 1.18.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gstreamer1.0-plugins-base, 1.8.1, Maxin B. John <maxin.john@intel.com>
        fontconfig, 2.11.95, Jussi Kukkonen <jussi.kukkonen@intel.com>
        pixman, 0.34.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-setuptools, 20.10.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        prelink, 20151030.+gitAUTOINC+927979bbd1, Mark Hatle <mark.hatle@windriver.com>
        util-linux, 2.28, Chen Qi <Qi.Chen@windriver.com>
        dbus, 1.10.8, Chen Qi <Qi.Chen@windriver.com>
        gdb, 7.11, Richard Purdie <richard.purdie@linuxfoundation.org>
        rt-tests, 0.97, Alexander Kanavin <alexander.kanavin@intel.com>
        cairo, 1.15.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        elfutils, 0.166, Hongxu Jia <hongxu.jia@windriver.com>
        connman, 1.32, Maxin B. John <maxin.john@intel.com>
        systemtap, 3.0, Alexander Kanavin <alexander.kanavin@intel.com>
        gnu-efi, 3.0.4, Robert Yang <liezhi.yang@windriver.com>
        clutter-1.0, 1.26.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        webkitgtk, 2.12.1, Alexander Kanavin <alexander.kanavin@intel.com>
        libarchive, 3.1.901a, Alexander Kanavin <alexander.kanavin@intel.com>
        lsbinitscripts, 9.66, Ross Burton <ross.burton@intel.com>
        libnewt, 0.52.19, Hongxu Jia <hongxu.jia@windriver.com>
        python-git, 2.0.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        watchdog, 5.15, Alexander Kanavin <alexander.kanavin@intel.com>
        perl, 5.24.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        qemu, 2.5.1, Aníbal Limón <anibal.limon@linux.intel.com>
        systemtap-uprobes, 3.0, Alexander Kanavin <alexander.kanavin@intel.com>
        glib-2.0, 2.48.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        expat, 2.1.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-numpy, 1.11.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        sysprof, 3.20.0+gitAUTOINC+aaf81c5cfb, Alexander Kanavin <alexander.kanavin@intel.com>
        python3-setuptools, 20.10.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        icu, 57.1, Alexander Kanavin <alexander.kanavin@intel.com>
        gstreamer1.0-plugins-bad, 1.8.1, Maxin B. John <maxin.john@intel.com>
        gtk+3, 3.20.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        weston, 1.10.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        file, 5.26, Robert Yang <liezhi.yang@windriver.com>
        texinfo, 6.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        cmake, 3.5.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        sqlite3, 3.12.2, Maxin B. John <maxin.john@intel.com>
        libcap, 2.25, Robert Yang <liezhi.yang@windriver.com>
        iproute2, 4.5.0, Maxin B. John <maxin.john@intel.com>
        slang, 2.3.0, Kai Kang <kai.kang@windriver.com>
        gzip, 1.8, Chen Qi <Qi.Chen@windriver.com>
        nasm, 2.12.01, Richard Purdie <richard.purdie@linuxfoundation.org>
        gstreamer1.0, 1.8.1, Maxin B. John <maxin.john@intel.com>
    * Failed(get_env): 1
        libnewt-python, 0.52.19, Hongxu Jia <hongxu.jia@windriver.com>

    TOTAL: attempted=114 succeeded=46(40.35%) failed=68(59.65%)

Recipe upgrade statistics per Maintainer:

    Alexander Kanavin <alexander.kanavin: attempted=19 succeeded=6(31.58%) failed=13(68.42%)
    Alejandro Hernandez <alejandro.hernandez: attempted=11 succeeded=3(27.27%) failed=8(72.73%)
    Ross Burton <ross.burton: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Kai Kang <kai.kang: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Aníbal Limón <anibal.limon: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Hongxu Jia <hongxu.jia: attempted=5 succeeded=2(40.00%) failed=3(60.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=34 succeeded=18(52.94%) failed=16(47.06%)
    Richard Purdie <richard.purdie: attempted=7 succeeded=5(71.43%) failed=2(28.57%)
    Mark Hatle <mark.hatle: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Robert Yang <liezhi.yang: attempted=6 succeeded=1(16.67%) failed=5(83.33%)
    Chen Qi <Qi.Chen: attempted=9 succeeded=4(44.44%) failed=5(55.56%)
    Maxin B. John <maxin.john: attempted=17 succeeded=7(41.18%) failed=10(58.82%)
    Wenzong Fan <wenzong.fan: attempted=2 succeeded=0(0.00%) failed=2(100.00%)

--===============2326408444359914635==--
