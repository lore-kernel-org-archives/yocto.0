Return-Path: <raphael.kubo.da.costa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A5C4E00C45; Fri, 25 Aug 2017 05:50:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5FD7E00C01
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 05:50:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 25 Aug 2017 05:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,425,1498546800"; d="scan'208";a="1210376868"
Received: from rkubodac-desk.ger.corp.intel.com ([10.252.16.24])
	by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2017 05:50:40 -0700
From: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>
To: yocto@yoctoproject.org
Organization: Intel International BV - KvK 34098535 - Capronilaan 37 1119NG
	Amsterdam
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Date: Fri, 25 Aug 2017 14:50:39 +0200
Message-ID: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Pyro's uninative and libstdc++ symbols
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
X-List-Received-Date: Fri, 25 Aug 2017 12:50:42 -0000
Content-Type: text/plain

I've recently updated my host system to Fedora 26, which has GCC 7.

This seems to be causing some issues on Pyro, where I have a -native
recipe that is built with my system's g++ and ends up generating a
binary with the following symbol:

    0000000000000000      DF *UND*  0000000000000000  GLIBCXX_3.4.23 std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned long, std::allocator<char> const&)

GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so when that
binary is invoked in another (non-native) recipe as part of do_configure
it fails to run:

    gn: /data/src/yocto/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found (required by gn)

Is there anything I should be doing differently here?

