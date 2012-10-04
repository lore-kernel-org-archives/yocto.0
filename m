Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 156EEE01461
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 09:29:15 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dt10so455108wgb.11
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 09:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer;
	bh=Oq5jlyOX8dHE31k8H4I3ri2sKlEEKULJcQBNAN9pdwk=;
	b=TuWDPYMscACBXxnvzIBEPmmpGrkg3ri3JaGP56ywD22FzmAojV+htoj4p9VwBEi7KV
	FGduFn5h4Qg3/SvoJ43Adfmic+zGEx6V966s5Uw987sFNEwjAw/y50siqYT/ppH23BC4
	Y4V3TqIT+sTS3AzphEiGLQ6h1fy3bG+hz++yU7J1FF6FBkJWROyQVinoOUcWZOshLsTZ
	nPxAkis0SppkjfTqCmprGMQ9rE5xIxYD3WEEOZFVoXmw62Oq1MfQOnNUgGk+fmYz/CF9
	DmB/o07e+0rMFWeJL+Wq3dgNXMQw94bYCBVk1RPgY2eITu4LctVAqQR4p+TiDBOTr92I
	tbHQ==
Received: by 10.180.79.7 with SMTP id f7mr14058024wix.22.1349368155026;
	Thu, 04 Oct 2012 09:29:15 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id bn7sm15488214wib.8.2012.10.04.09.29.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Oct 2012 09:29:13 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 18:29:12 +0200
Message-Id: <cover.1349358184.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.12
Subject: [opkg-utils][PATCH 0/1] opkg-make-index: small fix for filelist
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
X-List-Received-Date: Thu, 04 Oct 2012 16:29:16 -0000

The following changes since commit 423ecd36b4782327c16f516885d1248249c7724a:

  Changed call to subprocess.check_output which isn't compatible with Python 2.6 (2012-06-19 08:34:48 +0100)

are available in the git repository at:

  git://github.com/shr-project/opkg-utils master
  https://github.com/shr-project/opkg-utils/tree/jansa/pull

Marc Olzheim (1):
  opkg-make-index: fix mis-indented else:

 opkg-make-index | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.7.12


