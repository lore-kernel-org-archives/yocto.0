Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B8974C800B4
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:31:41 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jul 2011 19:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,523,1304319600"; d="scan'208";a="27226437"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2011 19:31:40 -0700
From: Joshua Lock <josh@linux.intel.com>
To: NiQingliang <niqingliang@insigma.com.cn>
Date: Tue, 12 Jul 2011 19:31:35 -0700
In-Reply-To: <1310523594.2527.35.camel@localhost.localdomain>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
	<1310523594.2527.35.camel@localhost.localdomain>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310524300.2162.28.camel@scimitar>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 02:31:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-13 at 10:19 +0800, NiQingliang wrote:
> /usr/bin/env python2 
> /usr/bin/env python2.7

These are both valid on Fedora 15, iirc before distributions started
shipping Python 3 they were less common though...

> both of them are ok for archlinux, but I don't know which is ok for
> other distributions, maybe both are not.
> 
> maybe we can make a shell script to detect the python version, and make
> a symbollink to the right one in some directory, and add the directory
> into env var "PATH".

Patches welcome :-)

I looked at it briefly and the work would require more time than I have
spare right now just to ensure it worked on all required distributions.

If you'd like to work on a patch I'd be happy to help test and review.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


