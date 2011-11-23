Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0726FE005B4
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 15:41:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2011 15:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="79357057"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2011 15:41:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Date: Wed, 23 Nov 2011 23:41:36 +0000
Message-ID: <3229545.vvJnxo6DNZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SRCREV variable
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
X-List-Received-Date: Wed, 23 Nov 2011 23:41:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 23 November 2011 15:19:01 Saxena, Rahul wrote:
> For example if my source is MesaLib-7.9.tar.bz2 file from following
> site...what steps do I need to do to get the SRCREV ?
> 
> ftp://ftp.freedesktop.org/pub/mesa/7.9/

SRCREV is only used when you are fetching from some remote version control 
system (git, etc.). If it's complaining about it not being present then there 
must be some reference to a VCS in your SRC_URI. You can check this by running 
the following (replacing targetname as appropriate):

bitbake -e targetname | grep ^SRC_URI

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

