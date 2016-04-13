Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 493D5E00D09; Wed, 13 Apr 2016 05:40:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
X-Greylist: delayed 230 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Apr 2016 05:40:02 PDT
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C1A7E00C4F
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 05:40:02 -0700 (PDT)
Received: from 1aqK1h-00012n-WE by out10c.electric.net with emc1-ok (Exim 4.85)
	(envelope-from <Adrian.Dudau@enea.com>) id 1aqK1i-00013J-TK
	for yocto@yoctoproject.org; Wed, 13 Apr 2016 05:36:10 -0700
Received: by emcmailer; Wed, 13 Apr 2016 05:36:10 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10c.electric.net with smtp (Exim 4.85)
	(envelope-from <Adrian.Dudau@enea.com>) id 1aqK1h-00012n-WE
	for yocto@yoctoproject.org; Wed, 13 Apr 2016 05:36:09 -0700
Received: from sestofb11.enea.se (172.21.3.146) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 13 Apr 2016 14:36:09 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 83B142413BD;
	Wed, 13 Apr 2016 14:36:09 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Apr 2016 14:36:09 +0200
Message-ID: <1460550969-42499-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6030817
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH] linux-yocto: Update .bbappend recipe version
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
X-List-Received-Date: Wed, 13 Apr 2016 12:40:04 -0000
Content-Type: text/plain

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../linux/{linux-yocto_3.14.bbappend => linux-yocto_4.%.bbappend}         | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-cgl-common/recipes-kernel/linux/{linux-yocto_3.14.bbappend => linux-yocto_4.%.bbappend} (100%)

diff --git a/meta-cgl-common/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-kernel/linux/linux-yocto_3.14.bbappend
rename to meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
-- 
1.9.1


