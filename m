Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87D214C8009D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 13:34:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jul 2011 11:34:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,242,1309762800"; d="scan'208";a="28650733"
Received: from vorpal.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 21 Jul 2011 11:34:30 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Thu, 21 Jul 2011 11:38:59 -0700
In-Reply-To: <C7884CFB-DBBE-4EB0-9C21-88BDE564DDB4@dominion.thruhere.net>
References: <cover.1310696828.git.liping.ke@intel.com>
	<6ac3109c3cf221687a96606685fb209cb5d68556.1310696828.git.liping.ke@intel.com>
	<C7884CFB-DBBE-4EB0-9C21-88BDE564DDB4@dominion.thruhere.net>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311273539.2172.1.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: [bitbake-devel] [PATCH 1/1][Image Creator] Remove unused target tree data for Hob
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
X-List-Received-Date: Thu, 21 Jul 2011 18:34:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-21 at 11:04 +0200, Koen Kooi wrote:
> Op 21 jul. 2011, om 07:50 heeft Ke Liping het volgende geschreven:
> 
> > From: Liping Ke <liping.ke@intel.com>
> > 
> > Since Hob only needes package dependency information, we can
> > create a new version of package information retrieving methods,
> > remove task dependency information, so that we can greatly
> > reduce data loading time for Hob
> 
> 
> Does this fix the bug where DEPENDS are leaking into the RDEPENDS list?
> If you select something like systemd the gui will list 'gtk' as a
> runtime dep for the image, while it's only a transitive buildtime one.
> 

It does not, 1263 filed.

http://bugzilla.pokylinux.org/show_bug.cgi?id=1263

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes Factotum"
        Intel Open Source Technology Centre


