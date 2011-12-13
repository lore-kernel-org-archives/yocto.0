Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B58AE00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:47:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2011 15:47:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="46916109"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Dec 2011 15:47:18 -0800
Message-ID: <4EE7E3F3.8010003@linux.intel.com>
Date: Tue, 13 Dec 2011 15:46:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Ashfield, Bruce" <Bruce.Ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.3
Subject: Using yocto/standard by default
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
X-List-Received-Date: Tue, 13 Dec 2011 23:47:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

We hit another lock-step SRCREV bug earlier on the FRI2 BSP. This was
due mostly to my pushing the efi changes to meta-intel too early - but,
it highlights a maintenance step that I believe could be eliminated for
most boards.

We have a yocto/standard/fri2 branch, but it doesn't contain any
additional changes over yocto/standard/base. If we were to make
yocto/standard/base the default for KBRANCH, shouldn't we be able to
eliminate all the BSP branches that are identical to
yocto/standard/base? This would significantly reduce the number of
SRCREV updates that are required and likely reduce the number of
Autobuilder failures we experience as a result. Seems like it would also
help make the git tree easier to deal with.

Any opinions here?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

