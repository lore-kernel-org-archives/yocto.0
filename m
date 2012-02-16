Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC7FE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 12:16:50 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Ry7l4-0007JW-3f from Hollis_Blanchard@mentor.com 
	for yocto@yoctoproject.org; Thu, 16 Feb 2012 12:16:50 -0800
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 16 Feb 2012 12:16:06 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 16 Feb 2012 12:16:49 -0800
Message-ID: <4F3D6431.70505@mentor.com>
Date: Thu, 16 Feb 2012 12:16:49 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 16 Feb 2012 20:16:06.0406 (UTC)
	FILETIME=[D059FA60:01CCECE7]
Subject: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 20:16:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to figure out how to use a cloned/modified copy of the 
linux-yocto-3.0 git repository. Here's what I did:

* cloned linux-yocto-3.0.git and committed to the meta branch
* specified my new repo:

--- a/meta/recipes-kernel/linux/linux-yocto_3.0.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_3.0.bb
@@ -18,12 +18,12 @@ SRCREV_machine_qemuppc ?= "15fd748017f0849138ff4b47d73f6866fa26cfe8"
  SRCREV_machine_qemux86 ?= "8f74a4339b3dc029fafff0ba7d88d6dc950d4b31"
  SRCREV_machine_qemux86-64 ?= "610c5a62daeda033755b0b7bfcb3e2cad5c76f3f"
  SRCREV_machine ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
-SRCREV_meta ?= "b78a519841bd8b477cad599af8d38df6760445c1"
+SRCREV_meta ?= "7af8d6f8769335b79c1b76c8bded256b8f909c74"

  PR = "r3"
  PV = "${LINUX_VERSION}+git${SRCPV}"

-SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta
+SRC_URI = "git:///mnt/linux-yocto-3.0.git;protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machi

  COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"

* bitbake -c clean virtual/kernel&&  bitbake virtual/kernel


What I get is this:
ERROR: Function failed: do_validate_branches (see 
/mnt/poky.git/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.18+git2+7af8d6f8769335b79c1b76c8bded256b8f909c74_1+368e38c673ffac8b37fc2a2d4c1e4a1e6f8abf19-r3/temp/log.do_validate_branches.5342 
for further information)

There is no more information in that file. It contains only the exact 
message I already got on the console ("ERROR: Function failed ...").

What am I missing? 
http://www.yoctoproject.org/docs/current/kernel-manual/kernel-manual.html was 
not helpful.

Thanks!

-- 
Hollis Blanchard
Mentor Graphics, Embedded Systems Division


