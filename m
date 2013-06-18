Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D322E01541
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 07:04:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2013 07:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,889,1363158000"; d="scan'208";a="331530026"
Received: from unknown (HELO [10.255.13.120]) ([10.255.13.120])
	by orsmga001.jf.intel.com with ESMTP; 18 Jun 2013 07:04:01 -0700
Message-ID: <1371564241.1569.26.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 18 Jun 2013 09:04:01 -0500
In-Reply-To: <394F6C8A37E5424BB91439BABFA30180@PAULD>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, foo.chien.haw@intel.com
Subject: Re: Cedartrail and Dylan?
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
X-List-Received-Date: Tue, 18 Jun 2013 14:04:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-06-17 at 16:56 -0700, Paul D. DeRocco wrote:
> I've been using the Intel meta-cedartrail layer with Danny 8.0.1. Is this
> layer likely to be unusable with Dylan 9.0? Or unusable without lots of
> tinkering that's probably beyond my abilities?
> 
> And if I were to try Dylan, is it best to start from scratch, in a
> completely new directory?
> 

Hi,

I believe the main problem would be the graphics driver - it would need
porting to the 3.8 kernel - the rest would probably be straightforward.

The cedartrail BSP was discontinued following danny, but I'm cc:ing the
maintainers in case they might have any further input.

I was thinking of creating a meta-intel/staging area for things like
this i.e. discontinued BSPs that people are still using, which would
contain best-effort updates but completely without promise of any kind
of support.  If there's enough interest, and there seems to be judging
from the number of questions about cedartrail we continue to keep
getting, I'll try to find some free time to take a stab at moving it to
dylan...

Thanks,

Tom




