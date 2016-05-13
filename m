Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A28BDE00C18; Thu, 12 May 2016 17:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5204E00BF8
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 17:43:27 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 0274E6FE17CF
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 00:44:29 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160513004429.0274E6FE17CF@auh.yoctoproject.org>
Date: Fri, 13 May 2016 00:44:29 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-05-13
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
X-List-Received-Date: Fri, 13 May 2016 00:43:32 -0000
Content-Type: multipart/mixed; boundary="===============3970517643002190266=="

--===============3970517643002190266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160512000003.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(do_compile): 1
        ruby, 2.3.1, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    * Failed(do_configure): 2
        libinput, 1.3.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        epiphany, 3.20.2, Alexander Kanavin <alexander.kanavin@intel.com>
    * Succeeded: 10
        ofono, 1.18, Maxin B. John <maxin.john@intel.com>
        xf86-input-synaptics, 1.8.99.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        harfbuzz, 1.2.7, Maxin B. John <maxin.john@intel.com>
        glib-networking, 2.48.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        wayland, 1.10.91, Jussi Kukkonen <jussi.kukkonen@intel.com>
        augeas, 1.5.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        mc, 4.8.17, Maxin B. John <maxin.john@intel.com>
        matchbox-terminal, 2+gitAUTOINC+452bca2534, Jussi Kukkonen <jussi.kukkonen@intel.com>
        xf86-input-evdev, 2.10.2, Jussi Kukkonen <jussi.kukkonen@intel.com>
        man-pages, 4.06, Hongxu Jia <hongxu.jia@windriver.com>
    * Failed(other errors): 15
        python-git, 2.0.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        gstreamer1.0-plugins-bad, 1.8.1, Maxin B. John <maxin.john@intel.com>
        btrfs-tools, 4.5.3, Alexander Kanavin <alexander.kanavin@intel.com>
        qemu, 2.6.0, Aníbal Limón <anibal.limon@linux.intel.com>
        glib-2.0, 2.48.1, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python3-pip, 8.1.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        dosfstools, 4.0, Jussi Kukkonen <jussi.kukkonen@intel.com>
        python-setuptools, 21.0.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        libpam, 1.3.0, Maxin B. John <maxin.john@intel.com>
        weston, 1.10.91, Jussi Kukkonen <jussi.kukkonen@intel.com>
        ltp, 20160510, Robert Yang <liezhi.yang@windriver.com>
        iso-codes, 3.68, Alexander Kanavin <alexander.kanavin@intel.com>
        webkitgtk, 2.12.2, Alexander Kanavin <alexander.kanavin@intel.com>
        libarchive, 3.2.0, Alexander Kanavin <alexander.kanavin@intel.com>
        python3-setuptools, 21.0.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>

    TOTAL: attempted=28 succeeded=10(35.71%) failed=18(64.29%)

Recipe upgrade statistics per Maintainer:

    Alejandro Hernandez <alejandro.hernandez: attempted=5 succeeded=0(0.00%) failed=5(100.00%)
    Alexander Kanavin <alexander.kanavin: attempted=5 succeeded=0(0.00%) failed=5(100.00%)
    Aníbal Limón <anibal.limon: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=10 succeeded=6(60.00%) failed=4(40.00%)
    Hongxu Jia <hongxu.jia: attempted=1 succeeded=1(100.00%) failed=0(0.00%)
    Robert Yang <liezhi.yang: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Maxin B. John <maxin.john: attempted=5 succeeded=3(60.00%) failed=2(40.00%)

--===============3970517643002190266==--
