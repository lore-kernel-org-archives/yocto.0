Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13972E013D3
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:20 -0700 (PDT)
Received: by wibhn14 with SMTP id hn14so2379052wib.11
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer;
	bh=bYdARDnIwDm0b9cC9hfH7mXk2SI5Idds6rYBHwkcl6U=;
	b=uL7tMEqt31toENwweHzlNy4TOFLBsYc8lx1vYGNb9S5epDhPeqDGD61HABZtt6mBRW
	Uq9HzW/SoW9fK26JarxRUh8vk/76GCgSLe26EV6ufeZSKxiX8NWbCYdxyRJfWsaMQHbR
	A+wI+JV5m7xkqdDx9Jc//klKyPA/LBzAf16IkA2ZK4I2t2gqOkNxTL1u+1KpxyBMpai6
	wEZb7UYyalR5+VK5HdKwPf6YPBjoreirI2TKJCagktTAC3GKpwBN7X74qbUhpQuRFKH9
	q9uw0OlSvltPVOAvuOYsAae7lwFdKeVkE0Ox+H05Fo9hHZudcpxDBfNtln5aUl8iBLRu
	jshg==
Received: by 10.216.213.28 with SMTP id z28mr7986683weo.50.1338305659728;
	Tue, 29 May 2012 08:34:19 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id bn9sm28982155wib.5.2012.05.29.08.34.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 May 2012 08:34:19 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 May 2012 17:34:13 +0200
Message-Id: <cover.1338305162.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.6
Subject: [opkg-utils][PATCH 0/2] opkg-utils fix for python-2.6 and fix for missing getopts
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 May 2012 15:34:21 -0000

The following changes since commit 44df9dd3dc411ca1255cb4b23bde7eb71aed4778:

  opkg-make-index: disable filelist by default (2012-04-26 11:39:42 +0100)

are available in the git repository at:
  git://github.com/shr-project/opkg-utils jansa/pull
  https://github.com/shr-project/opkg-utils/tree/jansa/pull

Chris Diamand (1):
  Changed call to subprocess.check_output which isn't compatible with
    Python 2.6

Ondics Githubler (1):
  Option "C" ist shown in usage() and implemented, but was missing in
    getopts. Added "C".

 opkg-build      |    2 +-
 opkg-make-index |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.8.6


