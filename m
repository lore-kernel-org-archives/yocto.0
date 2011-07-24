Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A55A54C801DA
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2011 18:57:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jul 2011 16:57:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,258,1309762800"; d="scan'208";a="31796446"
Received: from unknown (HELO [10.255.14.61]) ([10.255.14.61])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2011 16:57:13 -0700
Message-ID: <4E2CB159.5040706@linux.intel.com>
Date: Sun, 24 Jul 2011 16:57:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Weekly Build Status
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
X-List-Received-Date: Sun, 24 Jul 2011 23:57:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

There is a build available from the autobuilder

http://autobuilder.yoctoproject.org/nightly/20110723-2/

There were a couple of failures in the LSB-QT3 Builds that are being 
looked into. The failures occur in differnt packages for qemuarm and 
qemux86 LSB builds. I am trying to determine this is related to some 
shared state issues I have been seeing.

The meta-toolchain builds are running again due to an autobuilder 
related issue.

Please begin weekly testing with what is available.

Thanks
-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


