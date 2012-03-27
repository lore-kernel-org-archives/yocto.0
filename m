Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5916CE0137D
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 23:51:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Mar 2012 23:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81980064"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Mar 2012 23:51:07 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: yocto <yocto@yoctoproject.org>
Date: Tue, 27 Mar 2012 14:48:50 +0800
Message-ID: <1332830930.4380.14.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Subject: Deleting layers in Hob
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
X-List-Received-Date: Tue, 27 Mar 2012 06:51:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

When using Hob in Yocto Project, I found a issue when deleting layers. I
think I ever raised this problem before.

Let me briefly introduce how layer removal works in Hob. When user
changes a layer, it will following the below steps 
1) init the cooker.
2) set new layers to cooker.
3) parse configuration files.
4) get available machines, distros, SDKs, etc.

As we know, if we source oe-init-build-env in Yocto project environment,
we will have DISTRO="poky" set in local.conf by default, where the
"poky" DISTRO comes from the meta-yocto layer. If user deletes
meta-yocto in Hob, and then error will happen when bitbake parsing the
local.conf, since it could not find where the "poky" DISTRO is defined.

Even if we are able to successfully removed the meta-yocto layer by
removing the DISTRO definition in local.conf, system will report another
issue that:

Your configuration is using stamp files including the sstate hash but
your build directory was built with stamp files that do not include
this.
To continue, either rebuild or switch back to the OEBasic signature
handler with BB_SIGNATURE_HANDLER = 'OEBasic'.

This is because BB_SIGNATURE_HANDLER = "OEBasic" is also defined in
meta-yocto layer (poky.conf).


So it seems that in certain environment (e.x, Yocto Project), certain
layer (e.x, meta-yocto) should not be removed? 

Or any idea on how to solve this problem?

Thanks,
Dongxiao



