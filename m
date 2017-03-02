Return-Path: <Adrian.Calianu@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC14AE00992; Thu,  2 Mar 2017 04:55:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [185.38.181.32 listed in list.dnswl.org]
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6B9E008D0
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 04:55:03 -0800 (PST)
Received: from 1cjQBi-0004wJ-Uy by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Calianu@enea.com>) id 1cjQBi-0004zg-WB
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: by emcmailer; Thu, 02 Mar 2017 04:50:30 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Calianu@enea.com>)
	id 1cjQBi-0004wJ-Uy
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.319.2; Thu, 2 Mar 2017
	13:50:30 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4191)	id 602C928929C;
	Thu,  2 Mar 2017 13:50:30 +0100 (CET)
From: Adrian Calianu <adrian.calianu@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 2 Mar 2017 13:50:14 +0100
Message-ID: <1488459017-15312-1-git-send-email-adrian.calianu@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.calianu@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Calianu@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-java][PATCH 0/3] Fix build for per-recipe sysroot
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
X-List-Received-Date: Thu, 02 Mar 2017 12:55:05 -0000
Content-Type: text/plain

Fix was done according to latest changes where dependencies
are installed into a per-recipe sysroot.

Adrian Calianu (3):
  classpath-native: fix build dependencies
  libecj: fix build issues by adding missing dependencies
  jamvm: add missing dependencies

 recipes-core/classpath/classpath-native_0.99.bb | 2 +-
 recipes-core/ecj/libecj-bootstrap.inc           | 2 +-
 recipes-core/jamvm/jamvm.inc                    | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.9.1


