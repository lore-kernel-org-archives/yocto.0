Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF37E00AF2; Fri, 29 Jan 2016 19:08:13 -0800 (PST)
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
Received: from pdx-yp-fw1.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6956E00ADD
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 19:08:10 -0800 (PST)
Received: from auh.yoctoproject.org (yct42 [192.168.10.66])
	by pdx-yp-fw1.yoctoproject.org (Postfix) with ESMTP id 9F12D2CF40
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 03:08:10 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160130030813.2DF37E00AF2@yocto-www.yoctoproject.org>
Date: Fri, 29 Jan 2016 19:08:13 -0800 (PST)
Subject: [AUH] Upgrade status: 2016-01-30
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
X-List-Received-Date: Sat, 30 Jan 2016 03:08:13 -0000
Content-Type: multipart/mixed; boundary="===============1619709168275910926=="

--===============1619709168275910926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160128000003.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Succeeded: 12
        diffstat, 1.61, Chen Qi <Qi.Chen@windriver.com>
        xkeyboard-config, 2.17, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libinput, 1.1.5, Jussi Kukkonen <jussi.kukkonen@intel.com>
        curl, 7.47.0, Chen Qi <Qi.Chen@windriver.com>
        libbsd, 0.8.2, Robert Yang <liezhi.yang@windriver.com>
        cmake, 3.4.3, Jussi Kukkonen <jussi.kukkonen@intel.com>
        wayland, 1.9.91, Jussi Kukkonen <jussi.kukkonen@intel.com>
        dbus-glib, 0.106, Chen Qi <Qi.Chen@windriver.com>
        python3-pip, 8.0.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        webkitgtk, 2.10.6, Alexander Kanavin <alexander.kanavin@intel.com>
        gnupg, 2.1.11, Hongxu Jia <hongxu.jia@windriver.com>
        iproute2, 4.4.0, Maxin B. John <maxin.john@intel.com>
    * Failed(do_compile): 1
        elfutils, 0.165, Hongxu Jia <hongxu.jia@windriver.com>
    * Failed(do_fetch): 2
        coreutils, 8.25, Chen Qi <Qi.Chen@windriver.com>
        python3-setuptools, 19.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Failed(do_configure): 3
        weston, 1.9.91, Jussi Kukkonen <jussi.kukkonen@intel.com>
        tzdata, 2016a, Robert Yang <liezhi.yang@windriver.com>
        python-setuptools, 19.6, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Failed(other errors): 3
        apt, 1.2.1, Aníbal Limón <anibal.limon@linux.intel.com>
        pulseaudio, 8.0, Tanu Kaskinen <tanuk@iki.fi>
        binutils, 2.26, Robert Yang <liezhi.yang@windriver.com>
    * Failed(get_env): 1
        alsa-utils-scripts, 1.1.0, Tanu Kaskinen <tanuk@iki.fi>

    TOTAL: attempted=22 succeeded=12(54.55%) failed=10(45.45%)

Recipe upgrade statistics per Maintainer:

    Alejandro Hernandez <alejandro.hernandez: attempted=3 succeeded=1(33.33%) failed=2(66.67%)
    Alexander Kanavin <alexander.kanavin: attempted=1 succeeded=1(100.00%) failed=0(0.00%)
    Aníbal Limón <anibal.limon: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Hongxu Jia <hongxu.jia: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=5 succeeded=4(80.00%) failed=1(20.00%)
    Tanu Kaskinen <tanuk: attempted=2 succeeded=0(0.00%) failed=2(100.00%)
    Robert Yang <liezhi.yang: attempted=3 succeeded=1(33.33%) failed=2(66.67%)
    Chen Qi <Qi.Chen: attempted=4 succeeded=3(75.00%) failed=1(25.00%)
    Maxin B. John <maxin.john: attempted=1 succeeded=1(100.00%) failed=0(0.00%)

--===============1619709168275910926==--
