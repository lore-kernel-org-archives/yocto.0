Return-Path: <cazfi74@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521A8E0027C
	for <yocto@yoctoproject.org>; Sat,  2 Feb 2013 17:59:03 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id q12so5731366lbc.11
	for <yocto@yoctoproject.org>; Sat, 02 Feb 2013 17:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer;
	bh=yC/4IIOO/4n8JAin2VOefko1+I2fxq9te++kARCnzVo=;
	b=HH/XudELGo3w96omfD4CyqKGvR5c6j9SCWsts1PGLy2+WrtZSq9lT4CyWF2+VR8mhy
	aeMdhzuT0qNSEPrg+PRdQx5BtpOfL+mP8/qKRongBQuv9yXlAuNw85ZfFkIhtweZmo+6
	9kSbZYxUCy7DHaLXU2mqKquWlDuvBMRIIfsJPYMDr9SYeZmfOxbjw2I89lzFd7o7qmL3
	t/eT1Wnh33RZ7yGAnJbKyegpH7bp3gsCPcG+06/rnQqF+Frq5KYX95i0bA9Ms528o/gf
	MCNLb5yC2nMTN23Jb37me2jINhTLb23J0WxkaSaJ6r6zI1jjKb35OfpFu2oJXYvp0cpX
	Wkyw==
X-Received: by 10.152.144.4 with SMTP id si4mr15126871lab.10.1359856741363;
	Sat, 02 Feb 2013 17:59:01 -0800 (PST)
Received: from prime (a91-153-5-47.elisa-laajakaista.fi. [91.153.5.47])
	by mx.google.com with ESMTPS id i4sm1598244lbd.5.2013.02.02.17.58.59
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 02 Feb 2013 17:59:00 -0800 (PST)
Received: from cazfi by prime with local (Exim 4.80)
	(envelope-from <cazfi74@gmail.com>)
	id 1U1orC-0000KT-Hr; Sun, 03 Feb 2013 03:58:58 +0200
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org,
	constantinx.musca@intel.com
Date: Sun,  3 Feb 2013 03:58:54 +0200
Message-Id: <1359856736-25568-1-git-send-email-cazfi74@gmail.com>
X-Mailer: git-send-email 1.7.10.4
Subject: Matchbox-terminal fixes
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
X-List-Received-Date: Sun, 03 Feb 2013 01:59:03 -0000

  Fix build when automake-1.13 in use

  INSTALL in git repo is a symlink outside the repository, to
  file installed as part of automake-1.10 (and only when automake-1.10
  installed to default location) It was dangling in my system without
  automake-1.10. Such a link should not be under version control


 - ML

