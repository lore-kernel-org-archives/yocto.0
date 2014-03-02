Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA43E009B9
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 13:39:52 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id bs8so3647208wib.4
	for <yocto@yoctoproject.org>; Sun, 02 Mar 2014 13:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=Tnv3UqlgMjfz+2X1ntX3SshJ2SsCwgkG/U+eBKfbOJg=;
	b=EyABvHUUnuGOkDc2MDJ1hvxGH9Ezf/zP8p2RNOpUVV48mblt5nTCpVkeMHEAei6DcG
	jm9OVBaEQYN7jW+rsDe+1JPiB9XBn2zF22uFHGLbhgDzGUaDAI5MLCGd+xFi+/G/Sqok
	TDfcV9qPwLG+BItAodIziGickbQ+ye0b0x7nqlykVR703C3nhyasSxe3JM2uUR5N5iMA
	YVJrhHR6ePy2doI4KsB+2q1cz+rxRKeIrA8mcZLPCsAgurg26iFK4Td0v/PVcaQDzYXE
	NCiO4i9lc10Sp7kvcdwf7VTlChoENFwKrtAOFwY5umbdk4zAePfgpkSCYDk25QpMYG4M
	RzxA==
X-Received: by 10.194.170.167 with SMTP id an7mr12076746wjc.39.1393796390898; 
	Sun, 02 Mar 2014 13:39:50 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id n3sm27326112wix.10.2014.03.02.13.39.47
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 02 Mar 2014 13:39:48 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  2 Mar 2014 21:39:11 +0000
Message-Id: <cover.1393796208.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/1] mono-native: Modify build to eliminate dependency on on host system mscorlib.dll
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
X-List-Received-Date: Sun, 02 Mar 2014 21:39:53 -0000

See following patch for details 

The following changes since commit 5e23cc3af5b3ee914cb0e59a5eb6317992845118:

  mono-basic: Add VisualBasic.NET support with mono-basic v2.10 (2014-02-28 15:59:36 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/mono
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/mono

Alex J Lennon (1):
  mono-native: Modify build to eliminate dependency on on host system
    mscorlib.dll

 .../mono/mono-3.2.8/fix-basic-mscorlib-dep.patch   |   11 +++++++++++
 recipes-mono/mono/mono-native_3.2.8.bb             |    5 +++--
 2 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 recipes-mono/mono/mono-3.2.8/fix-basic-mscorlib-dep.patch

-- 
1.7.9.5


