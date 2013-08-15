Return-Path: <mulhern@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C9D1E015DA;
	Thu, 15 Aug 2013 13:36:31 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id o19so95474qap.13
	for <multiple recipients>; Thu, 15 Aug 2013 13:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=HaVMjCqVgRib7hX5Yjcw3XmyzrOriVeD5MuSufKbCmU=;
	b=R7eMmvJZSrZ8/CTzF8pIPmFuTMX/tNm/uz07t+YO9DIqW64fVzhLgDsExHfZJUrh9i
	SpoKve+OD1guol0nBxOyfQLqANyAz2uD/IH6VZHeJoY6SR3zeUMYucoEibxWDU5txzm4
	6cHrt5lJOgN+s+bwDI0IwxVuwNKuHyVyka76dd8MWCVgmF66PMSGKCMvEjCXInFabybb
	M/j8L4ZoM10hZL89v/qSPhSiOEfbRFaVEhJdbncusyO4+bVekWGN3xhD9rFIryeXZl0L
	Zq/tY0o1h0iMWyvIjCZBP6/jjbOQYh0jC/tShR/Gwk+QGzWTyqMywmvumQcWmG2rXexP
	9IjQ==
X-Received: by 10.49.2.195 with SMTP id 3mr21192950qew.15.1376598983319;
	Thu, 15 Aug 2013 13:36:23 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id e8sm1091708qai.1.2013.08.15.13.36.21
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 13:36:22 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 16:36:20 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 16:36:16 -0400
Message-Id: <cover.1376598685.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/2] [meta-security] Change descriptions to match packages.
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
X-List-Received-Date: Thu, 15 Aug 2013 20:36:31 -0000

This patch changes the description field to match the package.
The following changes since commit 4f2821cb7b01ca11249154d1d071bc267dbf4f85:

  removed rpm dependency on redhat-security (2013-08-01 12:16:29 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bug4916-final2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bug4916-final2

mulhern (2):
  curses-perl: Change description to match package.
  lib-perl: Change description to match package.

 recipes-security/perl/curses-perl_1.28.bb |    5 ++---
 recipes-security/perl/lib-perl_0.63.bb    |    7 ++++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.10.4


