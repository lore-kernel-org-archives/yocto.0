Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DDFBE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 14:58:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2012 14:58:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="104326669"
Received: from mkgumbel-mobl5.jf.intel.com (HELO [10.7.199.151])
	([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2012 14:58:58 -0800
Message-ID: <4F2720B1.8070001@linux.intel.com>
Date: Mon, 30 Jan 2012 14:58:57 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Using stable releases from git
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
X-List-Received-Date: Mon, 30 Jan 2012 22:58:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

It's beginning to sound like we've caught some folks off guard by 
pushing changes to the edison branch of the poky repository in 
preparation for an upcoming edison point release.

The named branches are development branches for the release, stable 
release development will be done in the named branch and we can't 
guarantee they will be issue free (though we intend them to be where 
possible).

If you're looking to use a git checkout which matches the release 
tarballs you should checkout the tags for the releases. i.e. for Poky 
Edison-6.0/Yocto 1.1:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0

Having suffered through a couple of stable cycles recently I anticipate 
that in future the release branches will be updated more frequently. 
This will make it even more important to use a tag, rather than a 
branch, to track the releases using git.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

