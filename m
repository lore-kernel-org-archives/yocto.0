Return-Path: <Vincent.Riera@imgtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D6D9E006C5; Fri, 12 Sep 2014 09:52:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com [195.59.15.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73347E006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:51:52 -0700 (PDT)
Received: from KLMAIL01.kl.imgtec.org (unknown [192.168.5.35])
	by Websense Email Security Gateway with ESMTPS id EF4D2EF540BDC
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 17:35:56 +0100 (IST)
Received: from LEMAIL01.le.imgtec.org (192.168.152.62) by
	KLMAIL01.kl.imgtec.org (192.168.5.35) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 12 Sep 2014 17:35:59 +0100
Received: from localhost.localdomain (192.168.154.104) by
	LEMAIL01.le.imgtec.org (192.168.152.62) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 12 Sep 2014 17:35:58 +0100
From: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Sep 2014 17:35:51 +0100
Message-ID: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
X-Mailer: git-send-email 1.7.1
MIME-Version: 1.0
X-Originating-IP: [192.168.154.104]
Subject: [PATCH 0/2] Add support for MIPS32r2 and CI20 to Yocto
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
X-List-Received-Date: Fri, 12 Sep 2014 16:52:06 -0000
Content-Type: text/plain

Add support for the MIPS Creator CI20 machine. That board has a MIPS32r2
architecture so we also add support for that.

Vicente Olivert Riera (2):
  Add support for MIPS32r2
  Add MIPS Creator CI20 machine

 meta-yocto-bsp/conf/machine/ci20.conf       |   10 ++++++++++
 meta/conf/machine/include/tune-mips32r2.inc |   25 +++++++++++++++++++++++++
 2 files changed, 35 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/ci20.conf
 create mode 100644 meta/conf/machine/include/tune-mips32r2.inc


