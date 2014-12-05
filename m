Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C04E00897; Fri,  5 Dec 2014 07:28:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Dec 2014 07:28:11 PST
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329DEE002A6
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 07:28:11 -0800 (PST)
Received: from [98.100.91.242] ([98.100.91.242:34167]
	helo=ih3-development-ubuntu-vm.melinkcorp.local)
	by cdptpa-oedge01 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id 10/EA-29844-2CEC1845; Fri, 05 Dec 2014 15:26:59 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org, california.l.sullivan@intel.com,
	elizabeth.flanagan@intel.com, bevenson@melinkcorp.com
Date: Fri,  5 Dec 2014 10:26:51 -0500
Message-Id: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
X-RR-Connecting-IP: 107.14.168.118:25
X-Cloudmark-Score: 0
Subject: [autobuilder][PATCH 0/2] GitPoller changesource improvements
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
X-List-Received-Date: Fri, 05 Dec 2014 15:28:17 -0000

These are fixes on top of California Sullivan's work for adding the
GitPoller changesource.  With my testing, I was unable to get the GitPoller
changesource to work until I added the first patch.  The second patch
documents how to use the GitPoller changesource.

Applies on top of HEAD of git://git.yoctoproject.org/yocto-autobuilder branch sullical/contrib

Bryan Evenson (2):
  Autobuilder.py: Import gitpoller module
  Documentation: Document GitPoller changesource

 README-NEW-AUTOBUILDER                             |   35 ++++++++++++++++----
 docs/YoctoAutobuilderDevelopersDocument.html       |   26 +++++++++++++--
 .../site-packages/autobuilder/Autobuilder.py       |    1 +
 3 files changed, 54 insertions(+), 8 deletions(-)

-- 
1.7.9.5


