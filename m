Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B75E00B5E; Wed, 17 Oct 2018 16:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.230 listed in list.dnswl.org]
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECD4E00AB9
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 16:41:18 -0700 (PDT)
Received: from cdptpa-web09 ([107.14.174.248]) by cmsmtp with ESMTPA
	id CvDVgrf1svVJ9CvDVgrPOy; Wed, 17 Oct 2018 23:27:05 +0000
Message-ID: <20181017232705.HQN68.75473.root@cdptpa-web09>
Date: Wed, 17 Oct 2018 23:27:05 +0000
From: <sscott@san.rr.com>
To: yocto@yoctoproject.org, Sinan Kaya <okaya@kernel.org>
In-Reply-To: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
MIME-Version: 1.0
X-Priority: 3 (Normal)
Sensitivity: Normal
X-Originating-IP: from 70.164.106.130 by webmail.roadrunner.com;
	Wed, 17 Oct 2018 23:27:05 +0000
X-CMAE-Envelope: MS4wfKsz31hUyWFS/cPtuZDWY1ET60QUsaR8N5w0LdrkyVNjysbZ3WYeZBppMx1uUJXfWijddrigUrM+AvC4/L8SJbKMy4Z65POl9WFnYvKNee9RyZkPI2XM
	+p4h0LutCRRuCipGgVu6bezIwEu2ZhgOJ9tEcNH01Xg2eXmOgiqHI4FVumaJXufRIXrXoDUdltMFhg==
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Wed, 17 Oct 2018 23:41:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


It was broken in rocko too. I added this to local.conf to workaround the problem:

PREFERRED_VERSION_refpolicy-standard = "2.20170204"

-steve

---- Sinan Kaya <okaya@kernel.org> wrote: 
> Hi,
> 
> We realized today that SELinux does not compile on sumo branch.
> 
> Is it possible for someone to branch the last working version to a sumo branch?
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
> 
> NOTE: Running task 352 of 2707 
> (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
> NOTE: Running task 1413 of 2707 
> (/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
> Applying patch misc_create_inode.c-label_rootfs.patch
> patching file misc/create_inode.c
> Hunk #1 FAILED at 979.
> Hunk #2 FAILED at 987.
> 
> Sinan
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


