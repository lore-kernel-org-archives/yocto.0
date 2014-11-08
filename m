Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95E09E00832; Sat,  8 Nov 2014 09:18:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5576DE00832
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 09:17:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sA8HHv2R015817
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 8 Nov 2014 09:17:57 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.174.1;
	Sat, 8 Nov 2014 09:17:56 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 8 Nov 2014 11:17:54 -0600
Message-ID: <1415467075-233424-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH] [meta-mingw] Add whitelist of WINDRES and RC to hash
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
X-List-Received-Date: Sat, 08 Nov 2014 17:18:03 -0000
Content-Type: text/plain

Add the two specific exported values to the hash, otherwise task hashes change
and things rebuild unnecessarily.  (perl-native may also fail to rebuild.)

Mark Hatle (1):
  *-mingw32.conf: Add whitelist of WINDRES and RC to hash

 conf/machine-sdk/i686-mingw32.conf   | 2 ++
 conf/machine-sdk/x86_64-mingw32.conf | 4 +++-
 2 files changed, 5 insertions(+), 1 deletion(-)

-- 
2.0.1


