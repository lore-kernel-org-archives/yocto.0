Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04A0EE00572; Fri,  8 Aug 2014 09:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 75AA0E0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 09:40:00 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Fri, 8 Aug 2014
	18:39:56 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 54FB9288F38;
	Fri,  8 Aug 2014 18:39:56 +0200 (CEST)
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Aug 2014 18:39:46 +0200
Message-ID: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Subject: [meta-oracle-java][PATCH 0/5] Add a custom fetch method
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
X-List-Received-Date: Fri, 08 Aug 2014 16:40:06 -0000
Content-Type: text/plain

At present,to use meta-oracle-java layer, we need to manually download
the Oracle Java Binaries and place it in download location. Provide a 
custom fetch method to avoid that manual step.
 
Maxin B. John (5):
  README: Update Notes
  oracle-jse-jdk-i586: add custom fetch method
  oracle-jse-jdk-x86-64: add custom fetch method
  oracle-jse-jre-i586: add custom fetch method
  oracle-jse-jre-x86-64: add custom fetch method

 README                                                   | 16 ++++++++--------
 .../oracle-java/oracle-jse-jdk-i586_1.7.0.bb             |  9 ++++++++-
 .../oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb           |  9 ++++++++-
 .../oracle-java/oracle-jse-jre-i586_1.7.0.bb             | 10 +++++++++-
 .../oracle-java/oracle-jse-jre-x86-64_1.7.0.bb           | 10 +++++++++-
 5 files changed, 42 insertions(+), 12 deletions(-)

-- 
1.9.1


