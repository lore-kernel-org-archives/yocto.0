Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 747044C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:14 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J5LCLK028527
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:13 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 00:21:07 -0500
Message-Id: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
Subject: [PATCH 0/5] Add support for PowerPC e500v2/SPE
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
X-List-Received-Date: Tue, 19 Jul 2011 05:21:15 -0000

The majority of support for the PowerPC e500v2/SPE target already
exists.  However some minor cleans are required to get things working
completely.

The e500v2 utilizes a unique floating point programming model / ABI from
other PowerPC targets and thus requires special handling.

- k

