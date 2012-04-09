Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA7C4E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 10:57:30 -0700 (PDT)
Received: by dajx4 with SMTP id x4so6580721daj.28
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2012 10:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=EU+um4Apl+ruY4hkHv9BaC3s/q7+do1m5IFZs9EChkc=;
	b=CDDm/ERUhe6BwN3iBnnXKztHnH4JcpjF8soaopWSbcQihu01jcZ9KZ+37C8YiLdqWa
	qNYbl4k2wRV+Dd7634MS9G82BitIp4aO69xrhXIgjWX8SLsgLMrhYOIzjVERnNqO/vAT
	6aZZ9Ua9+DX+ehbFoXXqDrvc6plOnvQEFL38fGIK4UxTJ4pnMalmKsxTBbgTW3T3X2ZZ
	/Xxr6H3hBjqNZo4fBTZ5tP4iUph+PlFXMIRXt25jO6Up1uledhUfa35krK4yV5/0MtWl
	+fM4nelTOFTkjeKbSA+GhouNd2dsqHSOkkbe5qAGH9OksC3VzdT30WyG2wWKPgJWQnMv
	LIAg==
Received: by 10.68.216.234 with SMTP id ot10mr21309832pbc.107.1333994250238;
	Mon, 09 Apr 2012 10:57:30 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id q5sm15506158pbp.28.2012.04.09.10.57.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Apr 2012 10:57:29 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon,  9 Apr 2012 10:57:20 -0700
Message-Id: <cover.1333994199.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQn78cWilygx9HpSmt8Gs85zgU5EsiN4Ero7j4JBwkzrcJHhG5IrJLlLcOvNd01TNbet7oOs
Subject: [PATCH 0/1] meta-skeleton: Move hello-mod example kernel module to meta-skeleton
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
X-List-Received-Date: Mon, 09 Apr 2012 17:57:30 -0000

The following changes since commit 190f6d791d51aaa4cfb9f1cf932bc205ff674fb5:

  runqemu-internal: Add console=tty for qemuppc and NFS (2012-04-06 01:12:47 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/skeleton
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/skeleton

Darren Hart (1):
  meta-skeleton: Move hello-mod example kernel module to meta-skeleton

 .../recipes-kernel/hello-mod/files/COPYING         |  340 ++++++++++++++++++++
 .../recipes-kernel/hello-mod/files/Makefile        |   14 +
 .../recipes-kernel/hello-mod/files/hello.c         |   33 ++
 .../recipes-kernel/hello-mod/hello-mod_0.1.bb      |   15 +
 4 files changed, 402 insertions(+), 0 deletions(-)
 create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/hello.c
 create mode 100644 meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb

-- 
1.7.5.4


