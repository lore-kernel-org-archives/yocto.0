Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C925E01612
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 09:34:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Oct 2013 09:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1014,1371106800"; d="scan'208";a="386306112"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.75])
	by orsmga001.jf.intel.com with ESMTP; 01 Oct 2013 09:34:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Palalau <alexandrux.palalau@intel.com>
Date: Tue, 01 Oct 2013 17:34:09 +0100
Message-ID: <1445453.WIDZ7kv1lg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1380645604-6411-1-git-send-email-alexandrux.palalau@intel.com>
References: <1380645604-6411-1-git-send-email-alexandrux.palalau@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-yocto: Removed obsolete distros from SANITY_TESTED_DISTROS in poky.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Oct 2013 16:34:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Tuesday 01 October 2013 19:40:04 Alexandru Palalau wrote:
> Removed CentOS-6.3, Fedora-17, Debian-6.0 and Poky-1.3 from
> SANITY_TESTED_DISTROS.

Sorry, I forgot to mention last time, these patches should go to the poky 
mailing list. Also, this is somewhat pedantic, but the shortlog prefix should 
be "poky.conf:" rather than "meta-yocto:".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

