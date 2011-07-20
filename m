Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A74844C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 19:42:01 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2011 17:42:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,231,1309762800"; d="scan'208";a="27831167"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 17:42:00 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 17:41:55 -0700
In-Reply-To: <cover.1310365020.git.liping.ke@intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311122520.2115.25.camel@scimitar>
Mime-Version: 1.0
Subject: Re: [PATCH 0/2][Image Creator] Hob Cache for speed up switching
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
X-List-Received-Date: Wed, 20 Jul 2011 00:42:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-11 at 15:31 +0800, Ke Liping wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> The two patches are the implmentation of Hob Cache for accelarating
> UI switching. If one configuration has been saved before, when user
> switch back to the same configuration combination, we will use the
> cache content instead of re-triggering parsing/loading phase.

I'm still not certain about merging this change, do you feel it's still
worth it once we've merged your change to reduce the tree generation
time?

If so we need to revise the second patch to invalidate the cached value
correctly. sdk-machine shouldn't affect the available packages but which
layers are enabled certainly will.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


