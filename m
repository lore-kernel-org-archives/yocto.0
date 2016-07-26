Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B057E00D7E; Tue, 26 Jul 2016 16:51:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECDF9E00D72
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 16:51:48 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 309B06FE110D
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 23:54:21 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160726235421.309B06FE110D@auh.yoctoproject.org>
Date: Tue, 26 Jul 2016 23:54:21 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-07-26
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
X-List-Received-Date: Tue, 26 Jul 2016 23:51:52 -0000
Content-Type: multipart/mixed; boundary="===============4694080487111686602=="

--===============4694080487111686602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160726000002.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(do_fetch): 2
        python3-setuptools, 25.1.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        git, 2.9.2, Robert Yang <liezhi.yang@windriver.com>
    * Failed(do_compile): 1
        python-git, 2.0.7, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Succeeded: 20
        wayland-protocols, 1.5, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python3-git, 2.0.7, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        dropbear, 2016.74, Jussi Kukkonen <jussi.kukkonen@intel.com>
        libinput, 1.4.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        harfbuzz, 1.3.0, Maxin B. John <maxin.john@intel.com>
        kmod, 23+gitAUTOINC+65a885df5f, Chen Qi <Qi.Chen@windriver.com>
        glew, 2.0.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-numpy, 1.11.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libcap-ng, 0.7.8, Robert Yang <liezhi.yang@windriver.com>
        bluez5, 5.41, Maxin B. John <maxin.john@intel.com>
        libgcrypt, 1.7.2, Hongxu Jia <hongxu.jia@windriver.com>
        libtasn1, 4.9, Maxin B. John <maxin.john@intel.com>
        libassuan, 2.4.3, Alexander Kanavin <alexander.kanavin@intel.com>
        connman, 1.33, Maxin B. John <maxin.john@intel.com>
        cmake, 3.6.1, Alexander Kanavin <alexander.kanavin@intel.com>
        curl, 7.50.0, Chen Qi <Qi.Chen@windriver.com>
        libgpg-error, 1.24, Jussi Kukkonen <jussi.kukkonen@intel.com>
        xserver-xorg, 1.18.4, Jussi Kukkonen <jussi.kukkonen@intel.com>
        man-pages, 4.07, Hongxu Jia <hongxu.jia@windriver.com>
        libsolv, 0.6.23, Maxin B. John <maxin.john@intel.com>
    * Failed(other errors): 9
        tcf-agent, 1.4+gitAUTOINC+2dddd5f440, Randy Witt <randy.e.witt@linux.intel.com>
        lighttpd, 1.4.40, Alexander Kanavin <alexander.kanavin@intel.com>
        libidn, 1.33, Alexander Kanavin <alexander.kanavin@intel.com>
        perl, 5.24.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libdrm, 2.4.70, Jussi Kukkonen <jussi.kukkonen@intel.com>
        lsbinitscripts, 9.67, Ross Burton <ross.burton@intel.com>
        nss, 3.25, Alexander Kanavin <alexander.kanavin@intel.com>
        python-setuptools, 25.1.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        guile, 2.0.12, Robert Yang <liezhi.yang@windriver.com>
    * Failed(do_configure): 1
        gnupg, 2.1.14, Hongxu Jia <hongxu.jia@windriver.com>

    TOTAL: attempted=33 succeeded=20(60.61%) failed=13(39.39%)

Recipe upgrade statistics per Maintainer:

    Robert Yang <liezhi.yang: attempted=3 succeeded=1(33.33%) failed=2(66.67%)
    Maxin B. John <maxin.john: attempted=5 succeeded=5(100.00%) failed=0(0.00%)
    Alejandro Hernandez <alejandro.hernandez: attempted=6 succeeded=2(33.33%) failed=4(66.67%)
    Jussi Kukkonen <jussi.kukkonen: attempted=7 succeeded=6(85.71%) failed=1(14.29%)
    Randy Witt <randy.e.witt: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Alexander Kanavin <alexander.kanavin: attempted=5 succeeded=2(40.00%) failed=3(60.00%)
    Chen Qi <Qi.Chen: attempted=2 succeeded=2(100.00%) failed=0(0.00%)
    Hongxu Jia <hongxu.jia: attempted=3 succeeded=2(66.67%) failed=1(33.33%)
    Ross Burton <ross.burton: attempted=1 succeeded=0(0.00%) failed=1(100.00%)

--===============4694080487111686602==--
