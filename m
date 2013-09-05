Return-Path: <mulhern@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C94C9E0122C;
	Thu,  5 Sep 2013 11:56:00 -0700 (PDT)
Received: by mail-qe0-f41.google.com with SMTP id ff1so1197415qeb.28
	for <multiple recipients>; Thu, 05 Sep 2013 11:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=A2GMyZRkoqLvGFeFbRp/yNaPakO1pCdxwNUaDF72wo0=;
	b=SqKkkX5URFo/xpaKoCTI6alwn8SJV1IxGZPpVJe+EFIt589ccBn48LwZ293kiy8Uja
	qA3OUtA0sCdAVCjOBAAkkf+YWXCyx8v7jbxFc2Fwy4sDUqmWjmBsqkBBvOIz4z6bEJp+
	u4GrLZqp/d/0LQnsCwBgFwyoVuKLj2ifB/xMYOTAcKyPZIDbsAx8GRA7CfOQg0v71jNN
	tthOOseXs6z9/IpgoTC7uEHYWFwuTzbIsxSXWldAW2Q1inh0CaPRLFOJd2eVZ1oxM9mX
	9vlwOCCYYkejhla/NbomMtbxbVJdwEyxygU3/XoOiqxELunC2ykyy+3G8CZOOKTQCuCP
	0OhQ==
X-Received: by 10.224.8.129 with SMTP id h1mr11732092qah.1.1378407359045;
	Thu, 05 Sep 2013 11:55:59 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-203.hsd1.ma.comcast.net.
	[67.186.188.203])
	by mx.google.com with ESMTPSA id u9sm4472008qar.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 11:55:58 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 05 Sep 2013 14:55:56 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu,  5 Sep 2013 14:55:53 -0400
Message-Id: <cover.1378407198.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/1] [meta-security] Remove dependency from libcap-ng.
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
X-List-Received-Date: Thu, 05 Sep 2013 18:56:03 -0000

The erroneous dependency of libcap-ng on libcap is deleted. Note that libcap-ng
provides Python bindings, but that this package does not. Currently, the only
recipe that depends on libcap-ng is redhat-security which does not require 
Python bindings. If Python bindings are needed subsequently a swig dependency
will have to be introduced.
The following changes since commit 5ec81ec5b117de41ed56eb05df271f103213d7be:

  Bastille: document the current status and usability of the Bastille install. (2013-08-30 15:42:10 -0400)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bug5084
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bug5084

mulhern (1):
  libcap-ng: omit an unnecessary build time dependency.

 recipes-security/libcap-ng/libcap-ng_0.7.3.bb |    1 -
 1 file changed, 1 deletion(-)

-- 
1.7.10.4


