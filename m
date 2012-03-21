Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE37E0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 00:32:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2012 00:32:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="119888954"
Received: from unknown (HELO [10.255.15.160]) ([10.255.15.160])
	by orsmga001.jf.intel.com with ESMTP; 21 Mar 2012 00:32:03 -0700
Message-ID: <4F6983F2.5030200@linux.intel.com>
Date: Wed, 21 Mar 2012 00:32:02 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>, 
	"Purdie, Richard" <richard.purdie@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Any reason why pseudo would fail sanity test?
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
X-List-Received-Date: Wed, 21 Mar 2012 07:32:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Mark, Richard:

I built an image with a target pseudo installed in /usr/bin, for the 
self-hosted-image, and then I set the build/pseudodone to have /usr/bin, 
but when I ran bitbake, it complained that "Pseudo is not functioning 
correctly, ...".

Can pseudo be installed in an image in /usr/bin and used by bitbake?

An additional interesting note (maybe warning) is the following:
(I did try to create /usr/var/pseudo in the failing image and it still 
failed!)

BTW, I think this should really be /var not /usr/var, so a fix to 
upstream pseudo maybe required.

WARNING: For recipe pseudo, the following files/directories were 
installed but not shipped in any package:
WARNING:   /usr/var
WARNING:   /usr/var/pseudo
WARNING: QA Issue: package pseudo contains bad RPATH 
/intel/poky2/builds/builder/tmp/sysroots/qemux86-64/usr/lib in file 
/intel/poky2/builds/builder/tmp/work/x86_64-poky-linux/pseudo-1.2-r5/packages-split/pseudo/usr/lib/pseudo/lib64/libpseudo.so
WARNING: QA Issue: package pseudo contains bad RPATH 
/intel/poky2/builds/builder/tmp/sysroots/qemux86-64/usr/lib in file 
/intel/poky2/builds/builder/tmp/work/x86_64-poky-linux/pseudo-1.2-r5/packages-split/pseudo/usr/bin/pseudodb
WARNING: QA Issue: package pseudo contains bad RPATH 
/intel/poky2/builds/builder/tmp/sysroots/qemux86-64/usr/lib in file 
/intel/poky2/builds/builder/tmp/work/x86_64-poky-linux/pseudo-1.2-r5/packages-split/pseudo/usr/bin/pseudolog
WARNING: QA Issue: package pseudo contains bad RPATH 
/intel/poky2/builds/builder/tmp/sysroots/qemux86-64/usr/lib in file 
/intel/poky2/builds/builder/tmp/work/x86_64-poky-linux/pseudo-1.2-r5/packages-split/pseudo/usr/bin/pseudo

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


