Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1AADE00BAB; Mon,  7 Aug 2017 16:18:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEDFE00B8D
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 16:18:28 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 07 Aug 2017 16:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,340,1498546800"; d="scan'208";a="134795873"
Received: from arbrindl-dev.jf.intel.com ([10.7.159.149])
	by orsmga005.jf.intel.com with ESMTP; 07 Aug 2017 16:18:27 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Aug 2017 16:17:53 -0700
Message-Id: <1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Matthew Hansen <matthew.k.hansen@intel.com>
Subject: [meta-alexa-demo][PATCH 1/3] Moved meta-alexa-demo top level to meta-alexapi
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
X-List-Received-Date: Mon, 07 Aug 2017 23:18:29 -0000

From: Matthew Hansen <matthew.k.hansen@intel.com>

---
 COPYING.MIT => meta-alexapi/COPYING.MIT                                   | 0
 LICENSE => meta-alexapi/LICENSE                                           | 0
 README => meta-alexapi/README                                             | 0
 {conf => meta-alexapi/conf}/layer.conf                                    | 0
 .../recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend                    | 0
 .../alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch       | 0
 .../0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch       | 0
 .../0003-src.config.template.yaml-Set-default-input-to-defaul.patch       | 0
 {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi_git.bb        | 0
 .../recipes-devtools}/python/python-cheroot_5.1.0.bb                      | 0
 .../recipes-devtools}/python/python-cherrypy_10.1.1.bb                    | 0
 .../recipes-devtools}/python/python-memcached_1.58.bb                     | 0
 .../recipes-devtools}/python/python-pocketsphinx_0.1.3.bb                 | 0
 .../recipes-devtools}/python/python-portend_1.8.bb                        | 0
 .../recipes-devtools}/python/python-py-getch_1.0.1.bb                     | 0
 .../recipes-devtools}/python/python-tempora_1.6.1.bb                      | 0
 .../recipes-devtools}/python/python-vlc_1.1.2.bb                          | 0
 .../recipes-devtools}/python/python-wave_0.0.2.bb                         | 0
 .../recipes-devtools}/python/python-webrtcvad_2.0.10.bb                   | 0
 .../recipes-multimedia}/vlc/vlc_2.2.2.bbappend                            | 0
 20 files changed, 0 insertions(+), 0 deletions(-)
 rename COPYING.MIT => meta-alexapi/COPYING.MIT (100%)
 rename LICENSE => meta-alexapi/LICENSE (100%)
 rename README => meta-alexapi/README (100%)
 rename {conf => meta-alexapi/conf}/layer.conf (100%)
 rename {recipes-connectivity => meta-alexapi/recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend (100%)
 rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch (100%)
 rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch (100%)
 rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch (100%)
 rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi_git.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-cheroot_5.1.0.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-cherrypy_10.1.1.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-memcached_1.58.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-pocketsphinx_0.1.3.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-portend_1.8.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-py-getch_1.0.1.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-tempora_1.6.1.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-vlc_1.1.2.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-wave_0.0.2.bb (100%)
 rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-webrtcvad_2.0.10.bb (100%)
 rename {recipes-multimedia => meta-alexapi/recipes-multimedia}/vlc/vlc_2.2.2.bbappend (100%)

diff --git a/COPYING.MIT b/meta-alexapi/COPYING.MIT
similarity index 100%
rename from COPYING.MIT
rename to meta-alexapi/COPYING.MIT
diff --git a/LICENSE b/meta-alexapi/LICENSE
similarity index 100%
rename from LICENSE
rename to meta-alexapi/LICENSE
diff --git a/README b/meta-alexapi/README
similarity index 100%
rename from README
rename to meta-alexapi/README
diff --git a/conf/layer.conf b/meta-alexapi/conf/layer.conf
similarity index 100%
rename from conf/layer.conf
rename to meta-alexapi/conf/layer.conf
diff --git a/recipes-connectivity/libmtp/libmtp_1.1.5.bbappend b/meta-alexapi/recipes-connectivity/libmtp/libmtp_1.1.5.bbappend
similarity index 100%
rename from recipes-connectivity/libmtp/libmtp_1.1.5.bbappend
rename to meta-alexapi/recipes-connectivity/libmtp/libmtp_1.1.5.bbappend
diff --git a/recipes-core/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch b/meta-alexapi/recipes-core/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch
similarity index 100%
rename from recipes-core/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch
rename to meta-alexapi/recipes-core/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch
diff --git a/recipes-core/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch b/meta-alexapi/recipes-core/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch
similarity index 100%
rename from recipes-core/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch
rename to meta-alexapi/recipes-core/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch
diff --git a/recipes-core/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch b/meta-alexapi/recipes-core/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch
similarity index 100%
rename from recipes-core/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch
rename to meta-alexapi/recipes-core/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch
diff --git a/recipes-core/alexapi/alexapi_git.bb b/meta-alexapi/recipes-core/alexapi/alexapi_git.bb
similarity index 100%
rename from recipes-core/alexapi/alexapi_git.bb
rename to meta-alexapi/recipes-core/alexapi/alexapi_git.bb
diff --git a/recipes-devtools/python/python-cheroot_5.1.0.bb b/meta-alexapi/recipes-devtools/python/python-cheroot_5.1.0.bb
similarity index 100%
rename from recipes-devtools/python/python-cheroot_5.1.0.bb
rename to meta-alexapi/recipes-devtools/python/python-cheroot_5.1.0.bb
diff --git a/recipes-devtools/python/python-cherrypy_10.1.1.bb b/meta-alexapi/recipes-devtools/python/python-cherrypy_10.1.1.bb
similarity index 100%
rename from recipes-devtools/python/python-cherrypy_10.1.1.bb
rename to meta-alexapi/recipes-devtools/python/python-cherrypy_10.1.1.bb
diff --git a/recipes-devtools/python/python-memcached_1.58.bb b/meta-alexapi/recipes-devtools/python/python-memcached_1.58.bb
similarity index 100%
rename from recipes-devtools/python/python-memcached_1.58.bb
rename to meta-alexapi/recipes-devtools/python/python-memcached_1.58.bb
diff --git a/recipes-devtools/python/python-pocketsphinx_0.1.3.bb b/meta-alexapi/recipes-devtools/python/python-pocketsphinx_0.1.3.bb
similarity index 100%
rename from recipes-devtools/python/python-pocketsphinx_0.1.3.bb
rename to meta-alexapi/recipes-devtools/python/python-pocketsphinx_0.1.3.bb
diff --git a/recipes-devtools/python/python-portend_1.8.bb b/meta-alexapi/recipes-devtools/python/python-portend_1.8.bb
similarity index 100%
rename from recipes-devtools/python/python-portend_1.8.bb
rename to meta-alexapi/recipes-devtools/python/python-portend_1.8.bb
diff --git a/recipes-devtools/python/python-py-getch_1.0.1.bb b/meta-alexapi/recipes-devtools/python/python-py-getch_1.0.1.bb
similarity index 100%
rename from recipes-devtools/python/python-py-getch_1.0.1.bb
rename to meta-alexapi/recipes-devtools/python/python-py-getch_1.0.1.bb
diff --git a/recipes-devtools/python/python-tempora_1.6.1.bb b/meta-alexapi/recipes-devtools/python/python-tempora_1.6.1.bb
similarity index 100%
rename from recipes-devtools/python/python-tempora_1.6.1.bb
rename to meta-alexapi/recipes-devtools/python/python-tempora_1.6.1.bb
diff --git a/recipes-devtools/python/python-vlc_1.1.2.bb b/meta-alexapi/recipes-devtools/python/python-vlc_1.1.2.bb
similarity index 100%
rename from recipes-devtools/python/python-vlc_1.1.2.bb
rename to meta-alexapi/recipes-devtools/python/python-vlc_1.1.2.bb
diff --git a/recipes-devtools/python/python-wave_0.0.2.bb b/meta-alexapi/recipes-devtools/python/python-wave_0.0.2.bb
similarity index 100%
rename from recipes-devtools/python/python-wave_0.0.2.bb
rename to meta-alexapi/recipes-devtools/python/python-wave_0.0.2.bb
diff --git a/recipes-devtools/python/python-webrtcvad_2.0.10.bb b/meta-alexapi/recipes-devtools/python/python-webrtcvad_2.0.10.bb
similarity index 100%
rename from recipes-devtools/python/python-webrtcvad_2.0.10.bb
rename to meta-alexapi/recipes-devtools/python/python-webrtcvad_2.0.10.bb
diff --git a/recipes-multimedia/vlc/vlc_2.2.2.bbappend b/meta-alexapi/recipes-multimedia/vlc/vlc_2.2.2.bbappend
similarity index 100%
rename from recipes-multimedia/vlc/vlc_2.2.2.bbappend
rename to meta-alexapi/recipes-multimedia/vlc/vlc_2.2.2.bbappend
-- 
2.7.4


