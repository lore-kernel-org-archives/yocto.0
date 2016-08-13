Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78000E00D5B; Sat, 13 Aug 2016 06:55:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5209AE00288
	for <yocto@yoctoproject.org>; Sat, 13 Aug 2016 06:55:52 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 288726FE110D
	for <yocto@yoctoproject.org>; Sat, 13 Aug 2016 13:58:46 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160813135846.288726FE110D@auh.yoctoproject.org>
Date: Sat, 13 Aug 2016 13:58:46 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-08-13
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
X-List-Received-Date: Sat, 13 Aug 2016 13:55:55 -0000
Content-Type: multipart/mixed; boundary="===============3926787367030692580=="

--===============3926787367030692580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160812000002.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Succeeded: 21
        swig, 3.0.10, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libwebp, 0.5.1, Alexander Kanavin <alexander.kanavin@intel.com>
        gnupg, 2.1.14, Hongxu Jia <hongxu.jia@windriver.com>
        subversion, 1.9.4, Richard Purdie <richard.purdie@linuxfoundation.org>
        util-linux, 2.28.1, Chen Qi <Qi.Chen@windriver.com>
        iproute2, 4.7.0, Maxin B. John <maxin.john@intel.com>
        libinput, 1.4.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        man-pages, 4.07, Hongxu Jia <hongxu.jia@windriver.com>
        kmod, 23+gitAUTOINC+65a885df5f, Chen Qi <Qi.Chen@windriver.com>
        curl, 7.50.1, Chen Qi <Qi.Chen@windriver.com>
        sqlite3, 3.14.1, Maxin B. John <maxin.john@intel.com>
        e2fsprogs, 1.43.1, Robert Yang <liezhi.yang@windriver.com>
        gnome-themes-standard, 3.20.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        diffutils, 3.4, Chen Qi <Qi.Chen@windriver.com>
        json-glib, 1.2.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        vte, 0.44.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        gtk+3, 3.20.8, Jussi Kukkonen <jussi.kukkonen@intel.com>
        iso-codes, 3.69, Alexander Kanavin <alexander.kanavin@intel.com>
        python3-numpy, 1.11.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        xf86-input-synaptics, 1.8.99.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        btrfs-tools, 4.7, Alexander Kanavin <alexander.kanavin@intel.com>
    * Failed(do_fetch): 5
        python3-git, 2.0.8, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        lttng-tools, 2.8.1+gitAUTOINC+d11e0dba0d, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-ust, 2.8.1+gitAUTOINC+514a87f3b6, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-modules, 2.8.0+gitAUTOINC+4a24ffe737, Richard Purdie <richard.purdie@linuxfoundation.org>
        python3-setuptools, 25.1.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Failed(do_compile): 3
        python-git, 2.0.8, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        kexec-tools, 2.0.13, Alexander Kanavin <alexander.kanavin@intel.com>
        ruby, 2.3.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Failed(do_configure): 1
        pinentry, 0.9.7, Armin Kuster <akuster808@gmail.com>
    * Failed(other errors): 24
        bdwgc, 7.6.0, Alexander Kanavin <alexander.kanavin@intel.com>
        libpng, 1.6.24, Maxin B. John <maxin.john@intel.com>
        nfs-utils, 1.3.4, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        lighttpd, 1.4.41, Alexander Kanavin <alexander.kanavin@intel.com>
        openssh, 7.3p1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        rpm, 5.4.17, Mark Hatle <mark.hatle@windriver.com>
        libpcap, 1.8.0, Maxin B. John <maxin.john@intel.com>
        gdb, 7.11.1, Richard Purdie <richard.purdie@linuxfoundation.org>
        texinfo, 6.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libidn, 1.33, Alexander Kanavin <alexander.kanavin@intel.com>
        nss, 3.25, Alexander Kanavin <alexander.kanavin@intel.com>
        fontconfig, 2.12.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        nasm, 2.12.02, Richard Purdie <richard.purdie@linuxfoundation.org>
        systemd-boot, 231+gitAUTOINC+38b383d9fe, Chen Qi <Qi.Chen@windriver.com>
        libdrm, 2.4.70, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-setuptools, 25.1.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        lsbinitscripts, 9.68, Ross Burton <ross.burton@intel.com>
        perl, 5.24.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        ifupdown, 0.8.13, Maxin B. John <maxin.john@intel.com>
        ltp, 20160510, Robert Yang <liezhi.yang@windriver.com>
        gobject-introspection, 1.49.1, Alexander Kanavin <alexander.kanavin@intel.com>
        u-boot-mkimage, v2016.07+gitAUTOINC+19ce924ff9, Denys Dmytriyenko <denis@denix.org>
        busybox, 1.25.0, Chen Qi <Qi.Chen@windriver.com>
        prelink, 20151030.+gitAUTOINC+927979bbd1, Mark Hatle <mark.hatle@windriver.com>

    TOTAL: attempted=54 succeeded=21(38.89%) failed=33(61.11%)

Recipe upgrade statistics per Maintainer:

    Mark Hatle <mark.hatle: attempted=2 succeeded=0(0.00%) failed=2(100.00%)
    Chen Qi <Qi.Chen: attempted=6 succeeded=4(66.67%) failed=2(33.33%)
    Alejandro Hernandez <alejandro.hernandez: attempted=10 succeeded=2(20.00%) failed=8(80.00%)
    Alexander Kanavin <alexander.kanavin: attempted=9 succeeded=3(33.33%) failed=6(66.67%)
    Armin Kuster <akuster808: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Richard Purdie <richard.purdie: attempted=6 succeeded=1(16.67%) failed=5(83.33%)
    Robert Yang <liezhi.yang: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Hongxu Jia <hongxu.jia: attempted=2 succeeded=2(100.00%) failed=0(0.00%)
    Denys Dmytriyenko <denis: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=9 succeeded=6(66.67%) failed=3(33.33%)
    Ross Burton <ross.burton: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Maxin B. John <maxin.john: attempted=5 succeeded=2(40.00%) failed=3(60.00%)

--===============3926787367030692580==--
