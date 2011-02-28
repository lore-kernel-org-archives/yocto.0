Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73B7A4C800B1
	for <yocto@yoctoproject.org>; Sun, 27 Feb 2011 20:58:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Feb 2011 18:58:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,237,1297065600"; d="scan'208";a="891798632"
Received: from unknown (HELO [10.255.12.81]) ([10.255.12.81])
	by fmsmga001.fm.intel.com with ESMTP; 27 Feb 2011 18:57:57 -0800
Message-ID: <4D6B0F2C.9080401@intel.com>
Date: Sun, 27 Feb 2011 18:57:48 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Status of release candidate: bernard-1.0rc1
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
X-List-Received-Date: Mon, 28 Feb 2011 02:58:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Summary
=======

This weekend, we generated a release candidate for bernard based on the bernard branch
of master at commit:
e08dc5aaaeba61e332caab4a3df5750df6b49ac1

and for BSPs based on the bernard branch of meta-intel at commit:
16f47f04a2baaeaf9b5a9b381fc7a3c7755d6ff6

Issues seen:
===========

Build Infrastructure issues:
----------------------------

- We had an issue with builder02 running out of disk space, so some of the build
  copying was done post-build. This did not effect the build and was dealt with
  manually after cleaning up the partition.

- There is an issue with how package-index is being run. I will need to sync up
  with Jessica to verify how this should be incorporated into the build.

- The sanity tests on builder02 failed because builder02 was unable to resolve
  "localhost". This has been corrected and the sanity tests re-run incrementally:
  http://autobuilder.pokylinux.org:8010/builders/nightly-internal-sanity/builds/3

- The tarball generation buildstep is not branch aware. This will be fixed this week.
  In the meantime it was run manually.


Sanity Test Issues:
----------------------------

- zypper-search failed on qemux-x86_64 on poky-image-lsb and poky-image-sato


Build Issues:
----------------------------

- BSPs did not complete successfully. There were some issue in the actual build mostly centering around:
   - Failing to do_kernel_checkout
   - Unpack issues around svn://svn.o-hand.com/repos

- Beagleboard failed doing runstrip on uboot during do_populate_sysroot


Build statistic:
----------------------------
	
Using RP__'s machine as a baseline, our current build stats for poky-image-sato is:

real	109m52.400s
user	393m58.840s
sys	59m25.380s

Build statistics for nightly-external are available at:

http://autobuilder.pokylinux.org/nightly/20110226-1/buildstats/buildstats/

Open Defects:
----------------------------

As of right now we have:
76 total open defects targeted for 1.0

Critical: 0
High: 14
Medium: 53
Low: 7
Undetermined: 2


Thanks for all those who helped with this weekends RC generation, especially sgw and RP__

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

