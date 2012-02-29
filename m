Return-Path: <SRS0=0vZ+NE=BH=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout13.eigbox.net (bosmailout13.eigbox.net [66.96.188.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC09E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 10:05:57 -0800 (PST)
Received: from bosmailscan14.eigbox.net ([10.20.15.14])
	by bosmailout13.eigbox.net with esmtp (Exim) id 1S2nuV-0004SQ-9m
	for yocto@yoctoproject.org; Wed, 29 Feb 2012 13:05:55 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan14.eigbox.net with esmtp (Exim)
	id 1S2nuU-0001pW-NY; Wed, 29 Feb 2012 13:05:54 -0500
Received: from bosauthsmtp14.eigbox.net ([10.20.18.14])
	by bosimpout02.eigbox.net with NO UCE
	id fu5u1i00G0JCtq201u5uFs; Wed, 29 Feb 2012 13:05:54 -0500
X-Authority-Analysis: v=2.0 cv=OOmQK1mB c=1 sm=1
	a=DyN8zkliAUdISGavr0A7eg==:17 a=y6CmfMN_vBIA:10 a=TN7DSOgig_0A:10
	a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=jV2zTg0wAAAA:8
	a=Jcyfs2x-9wpXaZSK--EA:9
	a=wPNLvfGTeEIA:10 a=2JmKTArPWNwA:10 a=AnsiuLKgxXFeB68GILQVjQ==:117
X-EN-OrigOutIP: 10.20.18.14
X-EN-IMPSID: fu5u1i00G0JCtq201u5uFs
Received: from pool-108-25-200-43.atclnj.east.verizon.net ([108.25.200.43]
	helo=[192.168.1.3]) by bosauthsmtp14.eigbox.net with esmtpa (Exim)
	id 1S2nuU-0003zY-65; Wed, 29 Feb 2012 13:05:54 -0500
Message-ID: <4F4E68FF.8090600@mindchasers.com>
Date: Wed, 29 Feb 2012 13:05:51 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.200.43
X-EN-OrigHost: pool-108-25-200-43.atclnj.east.verizon.net
Subject: [yocto-autobuilder] [PATCH] ppc & mips names are switched for builders
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
X-List-Received-Date: Wed, 29 Feb 2012 18:05:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have noticed in the nightly buildbot failure reports for ppc & mips 
that the build names are switched (e.g., nightly-mips triggers the 
nightly-ppc build and vice versa).

The name and builderNames appear to be switched in yoctoABConfig.py, and 
I think this patch will correct this one.


Signed-off-by: Robert Cochran<yocto@mindchasers.com>
---
yocto-master/yoctoABConfig.py |    4 ++--
  1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/yocto-master/yoctoABConfig.py b/yocto-master/yoctoABConfig.py
index 0d4ed13..2e0cf27 100644
--- a/yocto-master/yoctoABConfig.py
+++ b/yocto-master/yoctoABConfig.py
@@ -864,8 +864,8 @@ yocto_builders.append(b65)
  yocto_sched.append(triggerable.Triggerable(name="nightly-x86", 
builderNames=["nightly-x86"]))
  yocto_sched.append(triggerable.Triggerable(name="nightly-x86-64", 
builderNames=["nightly-x86-64"]))
  yocto_sched.append(triggerable.Triggerable(name="nightly-arm", 
builderNames=["nightly-arm"]))
-yocto_sched.append(triggerable.Triggerable(name="nightly-ppc", 
builderNames=["nightly-mips"]))
-yocto_sched.append(triggerable.Triggerable(name="nightly-mips", 
builderNames=["nightly-ppc"]))
+yocto_sched.append(triggerable.Triggerable(name="nightly-mips", 
builderNames=["nightly-mips"]))
+yocto_sched.append(triggerable.Triggerable(name="nightly-ppc", 
builderNames=["nightly-ppc"]))
  yocto_sched.append(triggerable.Triggerable(name="eclipse-plugin", 
builderNames=["eclipse-plugin"]))

 
################################################################################
-- 
1.7.5.4


