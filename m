Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C2AE0077C
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 06:16:49 -0800 (PST)
Received: by mail-we0-f170.google.com with SMTP id w61so785662wes.29
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 06:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=nohvws/3NV4I8iJrD4pzVwVBPewQeVqPD9fMH4NKcC8=;
	b=iyrRSxUqjKYpp6Xxi845xUyWCl6A8tnBdNt117ieGP6rh4o9Xy5kShZL1RhrOGsbUZ
	6J2a+cGCK+PLxiphPsNQalYmaHfMU9+0xP6SslU56mJaCzuo5RKnrlW3mA4drQ8MXVtZ
	spTgnoVRdjbmDYsR/kJ3K0WHRvyrQib8Zh9w1pDIE50WtHXyKdZmm09eOBXew6ZcXNQ2
	s58DXfrAGGMgjCJ26t2jC6WTa7DbCPKH1NJXBTwZDj5B6q1r1z9NJDskuUSCvPShmU2d
	PH98H0kgVtBU3NZ9NHfpOETmxbESG3Ls6owH4eteCE7WJl2NNbffGvb9jDfE8pysZZ3m
	BGJA==
X-Received: by 10.180.97.37 with SMTP id dx5mr12968499wib.53.1393510608086;
	Thu, 27 Feb 2014 06:16:48 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id lz3sm15708170wic.1.2014.02.27.06.16.47
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 06:16:47 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 27 Feb 2014 14:16:32 +0000
Message-Id: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/1] gtk-sharp: Updated to 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 14:16:51 -0000

See following patch for details

The following changes since commit 7cd40847c65978c42a68f02cd1483c6a2254ff06:

  mono: Update Mono to 3.2.8 (2014-02-26 13:56:42 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/gtk-sharp
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/gtk-sharp

Alex J Lennon (1):
  gtk-sharp: Updated to GTK# 2.12.21

 .../fix-ambiguous-actions-glib-includes.patch      |   99 -------------------
 recipes-mono/gtk-sharp/gtk-sharp.inc               |   36 ++++++-
 recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb         |  101 --------------------
 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb        |   13 +++
 4 files changed, 46 insertions(+), 203 deletions(-)
 delete mode 100644 recipes-mono/gtk-sharp/files/fix-ambiguous-actions-glib-includes.patch
 delete mode 100644 recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb
 create mode 100644 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb

-- 
1.7.9.5


