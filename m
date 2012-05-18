Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8709AE01422
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 04:23:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2012 04:23:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154391707"
Received: from unknown (HELO [10.237.104.213]) ([10.237.104.213])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2012 04:23:07 -0700
Message-ID: <4FB6311A.3000308@linux.intel.com>
Date: Fri, 18 May 2012 14:23:06 +0300
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Marking Bugs resolved
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
X-List-Received-Date: Fri, 18 May 2012 11:23:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

A gentle reminder:  Please ensure that you include a link to the final 
commit in the Poky Master Branch (not your transient branch) when you 
mark a bug Resolved.

You can get that URL from the cgit interface in the form of:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=8da5fa8ed6121163b4c9442394461869cb6205f5

Also ensure you use the [YOCTO #nnnn] tags in your commit message.

Thanks
-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


