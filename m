Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D9FE00B5E; Wed, 14 Jun 2017 01:38:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 323 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Jun 2017 01:38:02 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482D3E00B18
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 01:38:02 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3wnfyZ4lSMz1qtXF;
	Wed, 14 Jun 2017 10:32:38 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3wnfyZ4FW5z3jRB6;
	Wed, 14 Jun 2017 10:32:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id FjFVSHfwTTI3; Wed, 14 Jun 2017 10:32:36 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Wed, 14 Jun 2017 10:32:36 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 8296C4540376;
	Wed, 14 Jun 2017 10:32:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id YEvPbQsgQxVd; Wed, 14 Jun 2017 10:32:33 +0200 (CEST)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id AF1EC454022A;
	Wed, 14 Jun 2017 10:32:33 +0200 (CEST)
To: Andreas Fenkart <afenkart@gmail.com>, yocto@yoctoproject.org
References: <CALtMJEDs_oFkifuHe8gahxS25UEqP-gKCLfkH3HbZqsB8T8DPQ@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <990d598a-da7c-f568-96a0-d360902baf7e@denx.de>
Date: Wed, 14 Jun 2017 10:32:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CALtMJEDs_oFkifuHe8gahxS25UEqP-gKCLfkH3HbZqsB8T8DPQ@mail.gmail.com>
Subject: Re: swupate.bblcass dependencies not triggering rebuild
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
X-List-Received-Date: Wed, 14 Jun 2017 08:38:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Andreas,

On 13/06/2017 14:18, Andreas Fenkart wrote:
> Hi list,
> 
> I want to create a swupdate file, which is a cpio file with rootfs and
> some metadata to control software update. My problem is, that it is not
> rebuilt everytime the rootfs changes. I checked in the cooker log.
> 
> NOTE: recipe swupdate-image-1.0-r4: task do_populate_sysroot_setscene: Succeeded
> NOTE: Running noexec task 5475 of 5478 (ID: 27,
> meta-devel/recipes-core/images/swupdate-image.bb, do_build)
> 
> I generated the dot files with bitbake -g swupdate, and while do_swuimage
> has to run before do_build, do_build does not depend directly on do_swuimage:
> 
> swupdate-image.do_createlink -> swupdate-image.do_swuimage
> swupdate-image.do_install -> swupdate-image.do_createlink
> swupdate-image.do_populate_sysroot -> swupdate-image.do_install
> swupdate-image.do_build" -> swupdate-image.do_populate_sysroot
> 
> $ bitbake-diffsigs -t swupdate-image do_build
> ERROR: No sigdata files found matching swupdate-image do_build
> 
> $ bitbake-diffsigs -t swupdate-image do_populate_sysroot
> Unable to find matching sigdata for ....
> recipes-core/images/swupdate-image.bb.do_install with hashes
> c0bc8039e8dbe8d70939dd3db2ceb922 or e9d7b242613f323d4d6adff3d6d4881b
> 
> $ bitbake-diffsigs -t swupdate-image do_install
> ERROR: No sigdata files found matching swupdate-image do_install
> 
> $ bitbake-diffsigs -t swupdate-image do_createlink
> Hash for dependent task imagesswupdate-image.bb.do_swuimage changed
> from cec64d7e21b0375ff641427d5d631254 to
> 45510576a402839f4c4d4ac9b9eff578
>   Hash for dependent task imagesrootfs.bb.do_build changed from
> 876eb436b444f84efd355c0294b871bf to fabbabdd000427cdf5e721b59784d5c4
>   Unable to find matching sigdata for
> meta-devel/recipes-core/images/rootfs.bb.do_build with hashes
> 876eb436b444f84efd355c0294b871bf or fabbabdd000427cdf5e721b59784d5c4
> 
> The dependency on rootfs is added here:
> https://github.com/sbabic/meta-swupdate/blob/master/classes/swupdate.bbclass#L64
> with IMAGE_DEPENDS="rootfs"
> 
> Is it correct to 'depend' on :do_build? It seems rather uncommon.

I think that the first attempt to set dependency here was with
do_rootfs, but this just works for rootfs, not for all other images. In
the history. commit b2f47aa9de53a98380b8677eb9e078db608b0ad3 changed
from do_populatesysroot to do_build because it was noted that it runs
too early.

I am not sure if I have this issue, maybe it was sporadic. I wrote a
patch, really to fix an issue in the transition morty --> pyro, where I
changed the dependency as:
diff --git a/classes/swupdate.bbclass b/classes/swupdate.bbclass
index 44e4546..511f147 100644
--- a/classes/swupdate.bbclass
+++ b/classes/swupdate.bbclass
@@ -61,16 +61,23 @@ def swupdate_getdepends(d):

     depstr = ""
     for dep in deps:
-        depstr += " " + dep + ":do_build"
+        if dep.find(":") != -1:
+            deptask = ""
+        else:
+            if (dep == "virtual/kernel") or (dep == "virtual/bootloader"):
+                deptask = ":do_deploy"
+            else:
+                deptask = ":do_image_complete"
+
+        depstr += " " + dep + deptask
+
     return depstr


So "do_image_complete" instead of "do_build", but I have to check
explicitely for kernel and bootloader because they have no
do_image_complete. But I do not know if this can be a correct solution.

> 
> I checked the latest swupdate-image.do_populate siginfo in sstate, which is
> pretty large, so adding just the task-dependencies:
> ..
> Tasks this task depends on:
> ['..-devel/recipes-core/images/swupdate-image.bb.do_install']
> This task depends on the checksums of files: []
> Hash for dependent task
> ./meta-devel/recipes-core/images/swupdate-image.bb.do_install is
> e9d7b242613f323d4d6adff3d6d4881b
> Computed Hash is d8b1d389351c25e0c4a519fb8fe9ddda
> ..
> 
> Which makes me wonder, since bitbake-diffsig said do_install has no sigdata
> 

We have do_install[noexec] = "1" in the class - is this the reason ?

> I must admit that I feel pretty lost here.

Best regards,
Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

