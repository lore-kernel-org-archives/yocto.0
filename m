Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1160CE01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 20:23:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Aug 2011 20:23:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,242,1312182000"; d="scan'208";a="40909072"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2011 20:23:37 -0700
Message-ID: <4E4C85B8.3000301@linux.intel.com>
Date: Wed, 17 Aug 2011 20:23:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, 
	Yocto Project <yocto@yoctoproject.org>
Subject: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 03:23:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
with messages like:

NOTE: preferred version 3.0+git% of linux-yocto not available (for item
virtual/kernel)

I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
just released and I'd have to do it again tomorrow. For 2.6.37, the
LINUX_VERSION remained the same across point releases. I recommend we do
the same for 3.0. I really don't want to have to go through and update
all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
point release comes out.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

