Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0AC044C80570
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 13:14:59 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 11:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="915213579"
Received: from unknown (HELO [10.255.13.15]) ([10.255.13.15])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 11:14:59 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Apr 2011 11:14:58 -0700
In-Reply-To: <4DB8506B.9000709@intel.com>
References: <4DB786E3.4080800@linux.intel.com>
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
	<4DB82C1A.2030008@linux.intel.com> <4DB8506B.9000709@intel.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1303928099.2242.2.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Personal git repositories
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
X-List-Received-Date: Wed, 27 Apr 2011 18:15:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-27 at 10:20 -0700, Elizabeth Flanagan wrote:
> A few notes, since I talked with Darren about this earlier.
> 
> As one of the people in charge of maintaining the git repo, I would like to avoid having, as Darren suggested, a whole 
> bunch of -contrib repos. However, maybe I'm missing something here, as I think basic git solves this issue:

I don't agree. I have a few sparse layers and some other code that I am
not sharing because they need repositories *somewhere*.

Having said that some of these recipes may be useful to others yet
definitely don't belong in oe-core. What do I do with them? The
mechanism Darren describes seems like it would work for my use case.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


