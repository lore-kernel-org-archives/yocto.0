Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f41.google.com (mail-bk0-f41.google.com
	[209.85.214.41]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7D079E006DC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:33 -0800 (PST)
Received: by mail-bk0-f41.google.com with SMTP id q16so3005391bkw.28
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=K+7AIqO7DHDKuPLYbUBc/KI5SIK3Ki6eBhuWG492y04=;
	b=alWqrfkAXJhEXJKH07a7aUlukwQZg4p094rNoN9u4X5O7qkQMRCFHT0HrIl4u9tIXU
	/nUxRNtiGguDu9eLNoTtzb6b/MlcN9GqxkoHtK3LtDsCGXXfRH5fzUXSicUD6t8nCdSE
	k3VSGP5olMFUvOV6F+rwxz6H7Hdxu6V75VkNgy/hCDG10Gn5jAy81he8CawPfyKBvl9b
	UeqDLH0J4qlsKQbG4T5ZwB17+28Ip/tl+0uQv7+zej9Yaac9A9Ojah5x2LQunhhqH97V
	bY1xp8r1B2DeWQwr6w0ndyg9ANwwD8rXzF0qgbEi6HHZqyKx/uiBD+FY2OypOszW5n2o
	d+xA==
X-Received: by 10.204.147.81 with SMTP id k17mr5058592bkv.70.1360662631781;
	Tue, 12 Feb 2013 01:50:31 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g28sm14081966bkv.17.2013.02.12.01.50.30
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 01:50:31 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Feb 2013 10:50:16 +0100
Message-Id: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/3][eclipse-poky] Small cleanup patch set
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
X-List-Received-Date: Tue, 12 Feb 2013 09:50:33 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series correct some minor mistakes in our code. It does not add new functionality.

Cheers,
Atanas

Atanas Gegov (3):
  Unified JRE_CONTAINER setting for all plugins
  Unified Bundle-Version setting for all plugins
  Fixed a typo in manifest

 plugins/org.yocto.bc.ui/.classpath                 |    2 +-
 plugins/org.yocto.doc.user/.classpath              |    2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |    4 ++--
 .../META-INF/MANIFEST.MF                           |    2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.7.5.4


