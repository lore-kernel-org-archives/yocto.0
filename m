Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40364E0073F;
	Fri, 16 Aug 2013 06:12:04 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id j10so1064282qcx.39
	for <multiple recipients>; Fri, 16 Aug 2013 06:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=YCFfZM4VwbLXmUDKA/R2Ttj0cfiFe3WzAYUg8Jc9JhU=;
	b=PUWPnvQLZaDcC4w1lu5asi68RDyVc1ML7xpG0le0aTsVy6coIsdXIghYCruw1r+Xte
	vcvFomZRF/0Ov+ii92M2LihlanApmPU3fzbbqQI7OI12kTVh1jW7PrfeEmylBqKs4Qln
	jwDqAr2EufIEzKLrbQwqAYGCQzPQGGhMRv+d/dBowDXp2uYjJdP8mSubQG3KBLi9bQ8N
	ReKQjOEYSGA8RL24MZKTjYmrq/tNL0qK8NdaCaPwhyO69/YeA3OHhIAqYJpIbtTeE84+
	3c0xfv+mZm+35GRIRmH5LfxchJ5tjk5ExSsch0mtSvYpmvTI/5/JjNoKZzbNu/N2e4hn
	zA3A==
X-Received: by 10.224.68.4 with SMTP id t4mr3131232qai.67.1376658723345;
	Fri, 16 Aug 2013 06:12:03 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id i4sm1215868qev.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 16 Aug 2013 06:12:02 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Fri, 16 Aug 2013 09:12:00 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Fri, 16 Aug 2013 09:11:54 -0400
Message-Id: <cover.1376658426.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <y>
References: <y>
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
X-List-Received-Date: Fri, 16 Aug 2013 13:12:06 -0000

This patch changes the description field to match the package.
The following changes since commit 4f2821cb7b01ca11249154d1d071bc267dbf4f85:

  removed rpm dependency on redhat-security (2013-08-01 12:16:29 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bug4916-final5
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bug4916-final5

mulhern (2):
  curses-perl: Change description to match package.
  lib-perl: Change description to match package.

 recipes-security/perl/curses-perl_1.28.bb |    5 ++---
 recipes-security/perl/lib-perl_0.63.bb    |    7 ++++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.10.4


