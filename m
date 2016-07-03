Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A95E00D5B; Sat,  2 Jul 2016 18:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 480 seconds by postgrey-1.32 at yocto-www;
	Sat, 02 Jul 2016 18:53:29 PDT
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B200BE00D4F
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 18:53:29 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 02D0F6FE110B
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 01:47:33 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160703014733.02D0F6FE110B@auh.yoctoproject.org>
Date: Sun,  3 Jul 2016 01:47:33 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-07-03
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
X-List-Received-Date: Sun, 03 Jul 2016 01:53:37 -0000
Content-Type: multipart/mixed; boundary="===============8072952237974576571=="

--===============8072952237974576571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160630215455.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(do_fetch): 6
        python3-setuptools, 23.1.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        git, 2.9.0, Robert Yang <liezhi.yang@windriver.com>
        lttng-ust, 2.8.1+gitAUTOINC+514a87f3b6, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-tools, 2.8.0+gitAUTOINC+a0f518a0b5, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-modules, 2.8.0+gitAUTOINC+4a24ffe737, Richard Purdie <richard.purdie@linuxfoundation.org>
        babeltrace, 1.4.0, Alexander Kanavin <alexander.kanavin@intel.com>
    * Failed(other errors): 22
        bdwgc, 7.4.4, Alexander Kanavin <alexander.kanavin@intel.com>
        slang, 2.3.0, Kai Kang <kai.kang@windriver.com>
        lsbinitscripts, 9.66, Ross Burton <ross.burton@intel.com>
        perl, 5.24.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        python-setuptools, 23.1.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        gdb, 7.11.1, Richard Purdie <richard.purdie@linuxfoundation.org>
        fontconfig, 2.12.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        binutils, 2.26.1, Robert Yang <liezhi.yang@windriver.com>
        cairo, 1.15.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        expat, 2.2.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        file, 5.28, Robert Yang <liezhi.yang@windriver.com>
        u-boot-mkimage, v2016.05+gitAUTOINC+aeaec0e682, Denys Dmytriyenko <denis@denix.org>
        nasm, 2.12.01, Richard Purdie <richard.purdie@linuxfoundation.org>
        gettext, 0.19.8.1, Wenzong Fan <wenzong.fan@windriver.com>
        rpm, 5.4.17, Mark Hatle <mark.hatle@windriver.com>
        libpng, 1.6.23, Maxin B. John <maxin.john@intel.com>
        gnu-efi, 3.0.4, Robert Yang <liezhi.yang@windriver.com>
        prelink, 20151030.+gitAUTOINC+927979bbd1, Mark Hatle <mark.hatle@windriver.com>
        cups, 2.1.4, Chen Qi <Qi.Chen@windriver.com>
        wayland-protocols, 1.4, Jussi Kukkonen <jussi.kukkonen@intel.com>
        nss, 3.24, Alexander Kanavin <alexander.kanavin@intel.com>
        bash-completion, 2.3, Alexander Kanavin <alexander.kanavin@intel.com>
    * Succeeded: 47
        libxfixes, 5.0.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python3-git, 2.0.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libgpg-error, 1.23, Jussi Kukkonen <jussi.kukkonen@intel.com>
        e2fsprogs, 1.43.1, Robert Yang <liezhi.yang@windriver.com>
        busybox, 1.25.0, Chen Qi <Qi.Chen@windriver.com>
        sysstat, 11.3.5, Chen Qi <Qi.Chen@windriver.com>
        vala, 0.32.1, Alexander Kanavin <alexander.kanavin@intel.com>
        xf86-input-evdev, 2.10.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libevdev, 1.5.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        swig, 3.0.10, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        xkeyboard-config, 2.18, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gnupg, 2.1.13, Hongxu Jia <hongxu.jia@windriver.com>
        libgcrypt, 1.7.1, Hongxu Jia <hongxu.jia@windriver.com>
        sudo, 1.8.17p1, Chen Qi <Qi.Chen@windriver.com>
        libarchive, 3.2.1, Alexander Kanavin <alexander.kanavin@intel.com>
        libsndfile1, 1.0.27, Tanu Kaskinen <tanuk@iki.fi>
        gsettings-desktop-schemas, 3.21.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        augeas, 1.5.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        at-spi2-core, 2.20.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        at-spi2-atk, 2.20.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        vte, 0.44.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        xf86-input-synaptics, 1.8.99.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        subversion, 1.9.4, Richard Purdie <richard.purdie@linuxfoundation.org>
        gstreamer1.0-plugins-bad, 1.8.2, Maxin B. John <maxin.john@intel.com>
        cronie, 1.5.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libsolv, 0.6.22, Maxin B. John <maxin.john@intel.com>
        wayland, 1.11.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        settings-daemon, 2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libwnck3, 3.20.1, Alexander Kanavin <alexander.kanavin@intel.com>
        gstreamer1.0-plugins-good, 1.8.2, Maxin B. John <maxin.john@intel.com>
        librsvg, 2.40.16, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ethtool, 4.6, Maxin B. John <maxin.john@intel.com>
        ltp, 20160510, Robert Yang <liezhi.yang@windriver.com>
        gstreamer1.0, 1.8.2, Maxin B. John <maxin.john@intel.com>
        matchbox-theme-sato, 2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gmp, 6.1.1, Robert Yang <liezhi.yang@windriver.com>
        btrfs-tools, 4.6.1, Alexander Kanavin <alexander.kanavin@intel.com>
        screen, 4.4.0, Maxin B. John <maxin.john@intel.com>
        libinput, 1.3.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gstreamer1.0-rtsp-server, 1.8.2, Maxin B. John <maxin.john@intel.com>
        sato-screenshot, 2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ifupdown, 0.8.13, Maxin B. John <maxin.john@intel.com>
        xf86-input-libinput, 0.19.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gstreamer1.0-plugins-base, 1.8.2, Maxin B. John <maxin.john@intel.com>
        libatomic-ops, 7.4.4, Maxin B. John <maxin.john@intel.com>
        wget, 1.18, Robert Yang <liezhi.yang@windriver.com>
        matchbox-config-gtk, 2, Jussi Kukkonen <jussi.kukkonen@intel.com>
    * Failed(do_compile): 7
        util-linux, 2.28, Chen Qi <Qi.Chen@windriver.com>
        gtk+3, 3.20.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ruby, 2.3.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        python-git, 2.0.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        texinfo, 6.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        pulseaudio, 9.0, Tanu Kaskinen <tanuk@iki.fi>
        ccache, 3.2.5, Wenzong Fan <wenzong.fan@windriver.com>
    * Failed(do_configure): 6
        weston, 1.11.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        atk, 2.20.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        clutter-gtk-1.0, 1.8.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        matchbox-terminal, 2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        pinentry, 0.9.7, Armin Kuster <akuster808@gmail.com>
        epiphany, 3.20.3, Alexander Kanavin <alexander.kanavin@intel.com>

    TOTAL: attempted=88 succeeded=47(53.41%) failed=41(46.59%)

Recipe upgrade statistics per Maintainer:

    Tanu Kaskinen <tanuk: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=28 succeeded=19(67.86%) failed=9(32.14%)
    Richard Purdie <richard.purdie: attempted=6 succeeded=1(16.67%) failed=5(83.33%)
    Armin Kuster <akuster808: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Denys Dmytriyenko <denis: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Mark Hatle <mark.hatle: attempted=2 succeeded=0(0.00%) failed=2(100.00%)
    Alejandro Hernandez <alejandro.hernandez: attempted=9 succeeded=3(33.33%) failed=6(66.67%)
    Kai Kang <kai.kang: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Hongxu Jia <hongxu.jia: attempted=2 succeeded=2(100.00%) failed=0(0.00%)
    Maxin B. John <maxin.john: attempted=11 succeeded=10(90.91%) failed=1(9.09%)
    Alexander Kanavin <alexander.kanavin: attempted=9 succeeded=4(44.44%) failed=5(55.56%)
    Chen Qi <Qi.Chen: attempted=5 succeeded=3(60.00%) failed=2(40.00%)
    Wenzong Fan <wenzong.fan: attempted=2 succeeded=0(0.00%) failed=2(100.00%)
    Robert Yang <liezhi.yang: attempted=8 succeeded=4(50.00%) failed=4(50.00%)
    Ross Burton <ross.burton: attempted=1 succeeded=0(0.00%) failed=1(100.00%)

--===============8072952237974576571==--
