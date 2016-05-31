Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72EDFE00EBD; Tue, 31 May 2016 15:07:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EA95E00DCE
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 15:07:38 -0700 (PDT)
Received: from mfilter31-d.gandi.net (mfilter31-d.gandi.net [217.70.178.162])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 63CF3C5A54
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 00:07:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter31-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter31-d.gandi.net (mfilter31-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id w48JXuDPNWrF for <yocto@yoctoproject.org>;
	Wed,  1 Jun 2016 00:07:36 +0200 (CEST)
X-Originating-IP: 37.71.25.165
Received: from Happy.wifirst.net (165.25.71.37.rev.sfr.net [37.71.25.165])
	(Authenticated sender: contact@jgueytat.fr)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1742DC5A4E
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 00:07:35 +0200 (CEST)
From: Julien Gueytat <contact@jgueytat.fr>
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2016 00:07:34 +0200
Message-Id: <1464732455-28307-1-git-send-email-contact@jgueytat.fr>
X-Mailer: git-send-email 1.9.1
Subject: [psplash][PATCH 1/2] Fix indendation.
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
X-List-Received-Date: Tue, 31 May 2016 22:07:42 -0000

Signed-off-by: Julien Gueytat <contact@jgueytat.fr>
---
 psplash.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/psplash.c b/psplash.c
index 04d3d49..507202f 100644
--- a/psplash.c
+++ b/psplash.c
@@ -245,10 +245,10 @@ main (int argc, char** argv)
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
       if (errno!=EEXIST) 
-	{
-	  perror("mkfifo");
-	  exit(-1);
-	}
+	    {
+	      perror("mkfifo");
+	      exit(-1);
+	    }
     }
 
   pipe_fd = open (PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
-- 
1.9.1


