Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB883E00910
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:17:46 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id x48so529595wes.7
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=izSMJdUy76XOyglYblUcWXlVLlMfAc9i5nK/9NP8kOw=;
	b=q9AKIjToCr4vWRu1soRXFdFnm1TvzudX6PWEwX3RIOSAs5+nx5MaEEKCRO6LWtsKyR
	UukcSXUT+EXyni9D5pU2LZIgHU3Emtkg3LR3B87HZNq/ue2lI+9nExx8n6K4eintfCMb
	nwJNj0pFZBXKCQUpwkSn1sIVKjrCOVTeJVM8mM6oYleQYrs4c/E1fC8XZywhs/ffJOpw
	79y5RstQN7nYHQDcc3zAOgWDS2vRwb/VppTABUuxpu9yoCX4yUYX44BczVoVMKtfLjyt
	hxPInpN0UgyVqf34oa4foH9AF555SF8aq0bA4uKgMy/PqO2hY5F1hCQVvvVZzs4GMR4f
	/K1Q==
X-Received: by 10.194.175.202 with SMTP id cc10mr2739639wjc.48.1393593465557; 
	Fri, 28 Feb 2014 05:17:45 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id n15sm4976195wij.3.2014.02.28.05.17.43
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Feb 2014 05:17:43 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 28 Feb 2014 13:16:50 +0000
Message-Id: <cover.1393593269.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 1/1] mono-basic: Add VisualBasic.NET support with mono-basic v2.10
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
X-List-Received-Date: Fri, 28 Feb 2014 13:17:48 -0000

See following patch for details

The following changes since commit 5c1c9de1aac4715c0496b7a9622006ed4cbae421:

  mono-xsp: Updated to 2.10 (2014-02-28 08:29:02 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/mono-basic
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/mono-basic

Alex J Lennon (1):
  mono-basic: Add VisualBasic.NET support with mono-basic v2.10

 recipes-mono/mono-basic/mono-basic.inc     |   47 ++++++++++++++++++++++++++++
 recipes-mono/mono-basic/mono-basic_2.10.bb |    5 +++
 2 files changed, 52 insertions(+)
 create mode 100644 recipes-mono/mono-basic/mono-basic.inc
 create mode 100644 recipes-mono/mono-basic/mono-basic_2.10.bb

-- 
1.7.9.5


