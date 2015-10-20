Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21FBAE00843; Tue, 20 Oct 2015 09:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3FE0E0086D
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t9KGf9iJ024345
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:10 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 09:41:09 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Oct 2015 11:41:04 -0500
Message-ID: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 0/4] Fix meta-mingw support to work with Jethro
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
X-List-Received-Date: Tue, 20 Oct 2015 16:41:19 -0000
Content-Type: text/plain

Mark Hatle (1):
  nativesdk-gcc: Add mingw32 named libraries to files list

Peter Seebach (3):
  gcc-runtime: Drop libgomp for mingw32 runtime
  binutils*.bbappend: Work with all 2.25 versions
  gcc*.bbappend: Work with 5.2.

 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend  | 5 -----
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend               | 6 ++++++
 recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend             | 6 ------
 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend             | 1 +
 recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend           | 1 -
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend                     | 1 +
 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend                   | 1 -
 recipes-devtools/gcc/gcc-runtime_%.bbappend                      | 8 ++++++++
 recipes-devtools/gcc/gcc-runtime_4.9.bbappend                    | 8 --------
 recipes-devtools/gcc/gcc_%.bbappend                              | 6 ++++++
 recipes-devtools/gcc/libgcc_%.bbappend                           | 2 ++
 recipes-devtools/gcc/libgcc_4.9.bbappend                         | 2 --
 13 files changed, 29 insertions(+), 23 deletions(-)
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-runtime_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-runtime_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc_%.bbappend
 create mode 100644 recipes-devtools/gcc/libgcc_%.bbappend
 delete mode 100644 recipes-devtools/gcc/libgcc_4.9.bbappend

-- 
1.9.3


