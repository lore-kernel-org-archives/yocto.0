Return-Path: <mulhern@gmail.com>
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC35E0073F;
	Thu, 15 Aug 2013 18:27:49 -0700 (PDT)
Received: by mail-yh0-f49.google.com with SMTP id f64so44413yha.8
	for <multiple recipients>; Thu, 15 Aug 2013 18:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=1OXVe3hFtNJR3YNNKAq4pIcDZ3j3HTMxPio/SFHHEog=;
	b=ot9q6msUzcKloNNQ/N4qo6hznC/n0rQQElx9rq9e89YE8Sc92acF/NkU3TRX/u5dP0
	+OdFkfqhkz+nQahqvP1xDW8xdnghZJDDM4bIi9eEyCj3vE14lA7/EaPMiDbYiUiJcfw9
	HcVxDFsO0T6a793RSPdtTqzYr7QkvgPuSmtddYw5zVIaJyadDzEEMAWYrQmQzxP59AjC
	0ArNAl/xhN1DbGbgdlURHfaorRefsnzpT7y5rawB8nRytzVkQHJhpMl95lQRhBX6SQb8
	I2DOikZXw85RJrB8aS6PVyd1ZWZW6DuSKJmE/X86cn3kLKpXTr0NGwNZdH+bGrrxeAE9
	kXrg==
X-Received: by 10.236.121.40 with SMTP id q28mr678178yhh.40.1376616469293;
	Thu, 15 Aug 2013 18:27:49 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id e42sm1269897yhe.14.2013.08.15.18.27.47
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Aug 2013 18:27:48 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 15 Aug 2013 21:27:46 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu, 15 Aug 2013 21:27:43 -0400
Message-Id: <cover.1376616378.git.mulhern@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Aug 2013 01:27:50 -0000

This patch changes the description field to match the package.
The following changes since commit 4f2821cb7b01ca11249154d1d071bc267dbf4f85:

  removed rpm dependency on redhat-security (2013-08-01 12:16:29 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bug4916-final4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bug4916-final4

mulhern (2):
  curses-perl: Change description to match package.
  lib-perl: Change description to match package.

 recipes-security/perl/curses-perl_1.28.bb |    5 ++---
 recipes-security/perl/lib-perl_0.63.bb    |    7 ++++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.10.4


