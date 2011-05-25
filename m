Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFD284C806DA
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 17:53:35 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 15:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,269,1304319600"; 
   d="scan'208";a="1796553"
Received: from unknown (HELO [10.255.12.84]) ([10.255.12.84])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 15:53:34 -0700
Message-ID: <4DDD886D.8020008@intel.com>
Date: Wed, 25 May 2011 15:53:33 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>,
	"Xu, Jiajun" <jiajun.xu@intel.com>, Saul Wold <saul.wold@intel.com>
Subject: Autobuilder Change: Moving meta-toolchain-gmae builds
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
X-List-Received-Date: Wed, 25 May 2011 22:53:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In order to even out some of the build timing, I've moved the meta-toolchain-gmae builds out to:

http://autobuilder02.pokylinux.org/nightly-external-toolchain/

nightly-external was running substantially longer than other builders (30 hours). This should reduce autobuilder build 
time substantially, however, it does mean that meta-toolchain-gmae needs to be picked up from the 02 server.

If you have any questions or issues with this, please let me know.

---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

