Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 181FCE007F4
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:59:51 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CDD9BF811EB; Tue, 17 Dec 2013 09:59:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 41473F811D8;
	Tue, 17 Dec 2013 09:59:47 -0700 (MST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 09:59:49 -0700
Message-Id: <1387299591-29254-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH 0/2] Add video camera controls
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
X-List-Received-Date: Tue, 17 Dec 2013 16:59:52 -0000

These patches support automatic enabling for the video camera.

Gary Thomas (2):
  README: Add video camera control
  rpi-config: Add video camera control

 README                                  |    4 ++++
 recipes-bcm/bootfiles/rpi-config_git.bb |    6 ++++++
 2 files changed, 10 insertions(+)

-- 
1.7.9.5


