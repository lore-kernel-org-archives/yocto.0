Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.18492.1592835532942322324
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 07:18:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: trevor.gamblin@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 05MEIndV003909
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 22 Jun 2020 07:18:49 -0700 (PDT)
Received: from yow-tgamblin-fedora2.wrs.com (128.224.56.206) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.487.0; Mon, 22 Jun 2020 07:18:49 -0700
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <richard.purdie@linuxfoundation.org>
Subject: [yocto-autobuilder2][PATCH 0/2] Clarification and formatting of README-Guide.md
Date: Mon, 22 Jun 2020 10:18:46 -0400
Message-ID: <20200622141848.3461211-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Long-overdue patches based on experiences trying to set up an
autobuilder instance. I've split it into two patches because the second
patch (the one that line wraps the majority of the document) may not be
desired, if the doc is meant to be read in the pre-existing format.
Patch 0001 cleans up the doc so that the sections can be more easily
referenced.

Trevor Gamblin (2):
  README-Guide: cleanup, clarify setup instructions
  README-Guide: wrap lines at 80 characters

 README-Guide.md | 489 ++++++++++++++++++++++++++++++++++++------------
 1 file changed, 372 insertions(+), 117 deletions(-)

-- 
2.26.2

