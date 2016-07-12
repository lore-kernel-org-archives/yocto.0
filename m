Return-Path: <auh@auh.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA13DE00ED2; Tue, 12 Jul 2016 03:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from auh.yoctoproject.org (unknown [198.145.29.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87004E00EAE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 03:36:10 -0700 (PDT)
Received: from auh.yoctoproject.org (localhost [127.0.0.1])
	by auh.yoctoproject.org (Postfix) with ESMTP id 341156FE110D
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 10:38:25 +0000 (UTC)
MIME-Version: 1.0
From: auh@auh.yoctoproject.org
To: yocto@yoctoproject.org
Message-Id: <20160712103825.341156FE110D@auh.yoctoproject.org>
Date: Tue, 12 Jul 2016 10:38:25 +0000 (UTC)
Subject: [AUH] Upgrade status: 2016-07-12
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
X-List-Received-Date: Tue, 12 Jul 2016 10:36:18 -0000
Content-Type: multipart/mixed; boundary="===============9069711966234995131=="

--===============9069711966234995131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

AUH finished upgrade batch the result patches/logs can be found at:
https://logs.yoctoproject.org/auh//20160712000003.tar.gz, next are the statistics:

Recipe upgrade statistics:

    * Failed(other errors): 5
        python-pexpect, 4.2.0, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        nasm, 2.12.02, Richard Purdie <richard.purdie@linuxfoundation.org>
        python-setuptools, 24.0.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
        freetype, 2.6.4, Jussi Kukkonen <jussi.kukkonen@intel.com>
        u-boot-mkimage, v2016.07+gitAUTOINC+19ce924ff9, Denys Dmytriyenko <denis@denix.org>
    * Succeeded: 5
        procps, 3.3.12, Alexander Kanavin <alexander.kanavin@intel.com>
        neard, 0.16, Maxin B. John <maxin.john@intel.com>
        libwebp, 0.5.1, Alexander Kanavin <alexander.kanavin@intel.com>
        cmake, 3.6.0, Alexander Kanavin <alexander.kanavin@intel.com>
        tzdata, 2016f, Robert Yang <liezhi.yang@windriver.com>
    * Failed(do_fetch): 3
        lttng-tools, 2.8.1+gitAUTOINC+d11e0dba0d, Richard Purdie <richard.purdie@linuxfoundation.org>
        git, 2.9.1, Robert Yang <liezhi.yang@windriver.com>
        python3-setuptools, 24.0.2, Alejandro Hernandez <alejandro.hernandez@linux.intel.com>

    TOTAL: attempted=13 succeeded=5(38.46%) failed=8(61.54%)

Recipe upgrade statistics per Maintainer:

    Alexander Kanavin <alexander.kanavin: attempted=3 succeeded=3(100.00%) failed=0(0.00%)
    Robert Yang <liezhi.yang: attempted=2 succeeded=1(50.00%) failed=1(50.00%)
    Jussi Kukkonen <jussi.kukkonen: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Alejandro Hernandez <alejandro.hernandez: attempted=3 succeeded=0(0.00%) failed=3(100.00%)
    Maxin B. John <maxin.john: attempted=1 succeeded=1(100.00%) failed=0(0.00%)
    Denys Dmytriyenko <denis: attempted=1 succeeded=0(0.00%) failed=1(100.00%)
    Richard Purdie <richard.purdie: attempted=2 succeeded=0(0.00%) failed=2(100.00%)

--===============9069711966234995131==--
