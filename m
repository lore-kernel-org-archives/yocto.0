Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72450E00307
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 07:43:06 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2011 07:43:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,306,1320652800"; d="scan'208";a="82784734"
Received: from unknown (HELO helios.localnet) ([10.252.121.246])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2011 07:43:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 06 Dec 2011 15:43:03 +0000
Message-ID: <1408073.zz37vY4uZy@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
MIME-Version: 1.0
Cc: saul.wold@intel.com
Subject: Sanity tested distributions list
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
X-List-Received-Date: Tue, 06 Dec 2011 15:43:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,

We had some discussions [1] [2] about this last cycle but I don't feel we 
reached a proper conclusion on the list of tested distributions we want to set 
(SANITY_TESTED_DISTROS) and I assume we want to support a few more distros 
(latest versions of Fedora & Ubuntu, presumably?). I'd like to update and re-
post the patch [3] so we can close bug #1096 [4] but for that we need to agree 
on the list.

Thanks,
Paul

[1] https://lists.yoctoproject.org/pipermail/yocto/2011-August/004699.html

[2] http://article.gmane.org/gmane.linux.embedded.poky/6959

[3] http://git.yoctoproject.org/cgit/cgit.cgi/poky-
contrib/log/?h=paule/sanity-distros

[4] http://bugzilla.pokylinux.org/show_bug.cgi?id=1096

-- 

Paul Eggleton
Intel Open Source Technology Centre

