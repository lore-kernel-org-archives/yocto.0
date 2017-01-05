Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A71E007C9; Thu,  5 Jan 2017 14:06:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEFBEE0070F;
	Thu,  5 Jan 2017 14:06:21 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 05 Jan 2017 14:06:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,322,1477983600"; d="scan'208";a="49782363"
Received: from ktsoltis-mobl1.amr.corp.intel.com ([10.255.231.29])
	by orsmga005.jf.intel.com with ESMTP; 05 Jan 2017 14:06:20 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <586EC35C.1040905@intel.com>
Date: Thu, 5 Jan 2017 14:06:20 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.0.3 (Jethro 14.0.3) Released
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
X-List-Received-Date: Thu, 05 Jan 2017 22:06:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


Hello,

The latest release of the Yocto Project 2.0.3 (jethro-14.0.3) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/poky-jethro-14.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.0.3/poky-fido-14.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW50_-_2016-12-09_-_QA_Cycle_2.0.3.rc6

Thanks to everyone for all their work on this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release

-------------------
yocto-2.0.3 Errata
---------------------

Release Name: eclipse-poky-mars-jethro-14.0.3
Branch: mars/jethro
Tag: mars/jethro-14.0.3
Hash: e38ce99f413b832be4a8c6db5f739fed0041d2f4
md5: 3e3110fd0c8d8dda31407ee8f4233b24
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/eclipse-poky-mars-jethro-14.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.0.3/eclipse-poky-mars-jethro-14.0.3.tar.bz2

Release Name: meta-qt3-jethro-14.0.3
Branch: jethro
Tag: jethro-14.0.3
Hash: b08996efbfb3b26e62b608f34ebf5e671b36ec61
md5: ae83d352e5c59ddc95e5d308428440fb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/meta-qt3-jethro-14.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.0.3/meta-qt3-jethro-14.0.3.tar.bz2

Release Name: poky-jethro-14.0.3
Branch: jethro
Tag: jethro-14.0.3
Hash: adb34b8ddcd8cc34ae7d2b1b2e4b4d291d790f56
md5: a53a50132f73660f7ddfab19146ed994
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/poky-jethro-14.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.0.3/poky-jethro-14.0.3.tar.bz2


----------------
 Known Issues
----------------
N/A

----------------
Security Fixes
----------------
perl: CVE-2016-1238
perl: CVE-2015-8607
perl: CVE-2016-6185
perl: CVE-2016-2381
openssl: CVE-2016-6306
openssl: CVE-2016-6304
openssl: CVE-2016-6303
openssl: CVE-2016-6302
openssl: CVE-2016-2182
openssl: CVE-2016-2181
openssl: CVE-2016-2180
util-linux: CVE-2016-5011
qemu: CVE-2016-5403
qemu: CVE-2016-4002
qemu: CVE-2016-6351
qemu: CVE-2016-4439
qemu: CVE-2016-3712
qemu: CVE-2016-3710
wget: CVE-2016-4971
openssh: CVE-2015-8325
openssh: CVE-2016-5615
openssh: CVE-2016-6210
git: CVE-2016-2315 
git: CVE-2016-2324
bind: CVE-2016-2088
tiff: CVE-2016-5323
tiff: CVE-2016-5321
tiff: CVE-2016-3186
libpcre: CVE-2016-3191
openssl: CVE-2016-2178
openssl: CVE-2016-2177
curl: CVE-2016-5421
curl: CVE-2016-5420
curl: CVE-2016-5419
libxml2: CVE-2016-4448
libxml2: CVE-2016-4447
libxml2: CVE-2016-3627
libxml2: CVE-2016-1833
libxml2: CVE-2016-1835
libxml2: CVE-2016-1837
libxml2: CVE-2016-4449
libxml2: CVE-2016-1836
libxml2: CVE-2016-1839
libxml2: CVE-2016-1838
libxml2: CVE-2016-1840
libxml2: CVE-2016-4483
libxml2: CVE-2016-1834
libxml2: CVE-2016-3705
libxml2: CVE-2016-1762
glibc: CVE-2016-4429
glibc: CVE-2016-3706


----------------
Fixes
----------------
tzdata: update to 2016g
tzcode-native: Update to 2016g
init-install.sh: fix disk_size
openssl: add a patch to fix parallel builds
bitbake: fetch2/wget: fallback to GET if HEAD is rejected in checkstatus()
bitbake: lib/bb/tests/fetch: remove URL that doesn't exist anymore
bitbake: bb/tests/fetch: Update cups url
perl-ptest.inc: fix tar call to prevent objcopy failure
gcc: make sure header path is set correctly
tzcode: update to 2016e
wic: fix path parsing, use last occurrence
bluez5: move btmgmt to common READLINE section
documentation: Updated date in the manual revision tables.
kernel-dev: Fix the locations of .config and source directory
profile-manual: Added cross-reference links to INHIBIT_PACKAGE_STRIP
ref-manual: Fixed *[doc] string for INHIBIT_PACKAGE_DEBUG_SPLIT
yocto-project-qs: Added note for Fedora23 users
documentation: Prepped for a 2.0.2 release
toasterconf.json: exclude releases Toaster can't build
wic: insert local Python paths at front


