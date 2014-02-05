Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1857E00788
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 11:07:47 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id hm4so887233wib.1
	for <yocto@yoctoproject.org>; Wed, 05 Feb 2014 11:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=R5Bs0DpCP+0XuqQDf6QU5ojQq1o3q+RNT/l7F9F/RX0=;
	b=crIg4KsIMOYwzV+zMR0kwb2oZs6Kqyhjz8cbqaQIT+DuSPVa2fTgDDwSd7DEek0LaI
	qsNcpg5cL5OYSfeq45lBNqAiHlqcJEMQc9FDKlQq8CjVsqvupIeeV/hYiRAQxnknHekG
	hPK1DKqKNHCfbhZva2NUKBDpQFSnSc2za8kEIyah5yUFN1XJl5o8QiATOXQgCzUcLdOz
	A0OidRO0WIvy3nX6ySjWIFg3R4SdTLQuYTdh0F+LnJT2v4KHMVce4dBGAogbLsR3/gUT
	4ux/+Np7pj7i3lgENDbVanO0/f9lcaujqUJZSjzCM2Y7dPAylvcW2poGygRz8qBfLQCT
	WXtA==
X-Received: by 10.180.164.174 with SMTP id yr14mr3807520wib.18.1391627266320; 
	Wed, 05 Feb 2014 11:07:46 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id t6sm48291094wix.4.2014.02.05.11.07.44
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 05 Feb 2014 11:07:45 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: paul.eggleton@linux.intel.com
Date: Wed,  5 Feb 2014 19:07:35 +0000
Message-Id: <cover.1391626374.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/1] libgdiplus: Fix build error relating to missing freetype/tttables.h, and update to libgdiplus 2.10.8
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
X-List-Received-Date: Wed, 05 Feb 2014 19:07:51 -0000

See following patch 1/1 for details

The following changes since commit ac286b1682e6bcc486ceb30ef90a936949bbfeab:

  monotools-server: Remove multiline comment (2013-02-27 12:01:10 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/libgdiplus-2.10.8
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/libgdiplus-2.10.8

Alex J Lennon (1):
  libgdiplus: Fix build error relating to missing freetype/tttables.h,
    and update to libgdiplus 2.10.8

 ...gdiplus-2.10.x-use-freetype-include-macro.patch |   14 ++++++++++++++
 .../{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb}   |    8 ++++----
 2 files changed, 18 insertions(+), 4 deletions(-)
 create mode 100644 recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch
 rename recipes-mono/libgdiplus/{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb} (68%)

-- 
1.7.9.5


