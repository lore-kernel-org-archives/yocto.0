Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65E4AE00E0B; Thu, 26 May 2016 23:25:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52060E00D49
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 23:25:30 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 416BF6FE17CF
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 06:26:49 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160527062649.416BF6FE17CF@auh.yoctoproject.org>
Date: Fri, 27 May 2016 06:26:49 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-05-27
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
X-List-Received-Date: Fri, 27 May 2016 06:25:34 -0000
Content-Type: multipart/mixed; boundary="===============2028644098401574614=="

--===============2028644098401574614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160526000003.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(do_fetch): 5
        gdb, 20131001, Richard Purdie <richard.purdie@linuxfoundation.org>
        git, 2.8.3, Robert Yang <liezhi.yang@windriver.com>
        lttng-tools, 2.8.0+gitAUTOINC+a0f518a0b5, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-modules, 2.8.0+gitAUTOINC+4a24ffe737, Richard Purdie <richard.purdie@linuxfoundation.org>
        lttng-ust, 2.8.0+gitAUTOINC+c2c1079732, Richard Purdie <richard.purdie@linuxfoundation.org>
    * Failed(get_env): 1
        boost, 1.61.0, Alexander Kanavin <alexander.kanavin@intel.com>
    * Failed(do_configure): 1
        libxcb, 1.12, Jussi Kukkonen <jussi.kukkonen@intel.com>
    * Succeeded: 10
        gdbm, 1.12, Alexander Kanavin <alexander.kanavin@intel.com>
        curl, 7.49.0, Chen Qi <Qi.Chen@windriver.com>
        libevdev, 1.5.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        wayland, 1.10.93, Jussi Kukkonen <jussi.kukkonen@intel.com>
        pciutils, 3.5.1, Chen Qi <Qi.Chen@windriver.com>
        at-spi2-core, 2.20.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        xcb-proto, 1.12, Jussi Kukkonen <jussi.kukkonen@intel.com>
        hwlatdetect, 2.0, Alexander Kanavin <alexander.kanavin@intel.com>
        sato-screenshot, 2+gitAUTOINC+3a9688e8a0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        webkitgtk, 2.12.3, Alexander Kanavin <alexander.kanavin@intel.com>
    * Failed(other errors): 15
        python-git, 2.0.3, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        file, 5.27, Robert Yang <liezhi.yang@windriver.com>
        tar, 1.29, Chen Qi <Qi.Chen@windriver.com>
        gtk+3, 3.20.6, Jussi Kukkonen <jussi.kukkonen@intel.com>
        weston, 1.10.93, Jussi Kukkonen <jussi.kukkonen@intel.com>
        e2fsprogs, 1.43, Robert Yang <liezhi.yang@windriver.com>
        rpm, 5.4.17, Mark Hatle <mark.hatle@windriver.com>
        python-pexpect, 4.1.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        make, 4.2, Robert Yang <liezhi.yang@windriver.com>
        python-setuptools, 21.2.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        pulseaudio, 8.99.1, Tanu Kaskinen <tanuk@iki.fi>
        sysstat, 11.3.4, Chen Qi <Qi.Chen@windriver.com>
        rt-tests, 2.0, Alexander Kanavin <alexander.kanavin@intel.com>
        python3-setuptools, 21.2.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        u-boot-mkimage, v2016.05+gitAUTOINC+aeaec0e682, Denys Dmytriyenko <denis@denix.org>

    TOTAL: attempted=32 succeeded=10(31.25%) failed=22(68.75%)

Recipe upgrade statistics per Maintainer:

    Alejandro Hernandez <alejandro.hernandez: attempted=4 succeeded=0(0.00%) failed=4(100.00%)
    Alexander Kanavin <alexander.kanavin: attempted=5 succeeded=3(60.00%) failed=2(40.00%)
    Denys Dmytriyenko <denis: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=8 succeeded=5(62.50%) failed=3(37.50%)
    Richard Purdie <richard.purdie: attempted=4 succeeded=0(0.00%) failed=4(100.00%)
    Tanu Kaskinen <tanuk: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Robert Yang <liezhi.yang: attempted=4 succeeded=0(0.00%) failed=4(100.00%)
    Chen Qi <Qi.Chen: attempted=4 succeeded=2(50.00%) failed=2(50.00%)
    Mark Hatle <mark.hatle: attempted=1 succeeded=0(0.00%) failed=1(100.00%)

--===============2028644098401574614==--
