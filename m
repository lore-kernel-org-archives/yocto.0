Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB4B8E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 07:16:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Nov 2012 07:16:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,328,1352102400"; d="scan'208";a="253432426"
Received: from unknown (HELO helios.localnet) ([10.252.122.231])
	by fmsmga001.fm.intel.com with ESMTP; 27 Nov 2012 07:16:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jerrod Peach <peachj@lexmark.com>
Date: Tue, 27 Nov 2012 15:16:05 +0000
Message-ID: <7652746.pHk23F2rpO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <CA+QkY1CG_t-MCeKx9VniZ-jS0eAEWwM=CzjxHQP+EwO-Ra2rZw@mail.gmail.com>
References: <CA+QkY1CG_t-MCeKx9VniZ-jS0eAEWwM=CzjxHQP+EwO-Ra2rZw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Forcing native binaries to build as 32-bit on a 64-bit host OS?
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
X-List-Received-Date: Tue, 27 Nov 2012 15:16:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 20 November 2012 14:27:30 Jerrod Peach wrote:
> My company has traditionally built all their code on 32-bit systems for
> 32-bit target architectures.  We're now trying to move our build hosts to
> 64-bit OSes, but that's presenting us with a bit of a problem: some
> non-trivial number of native packages don't want to properly build 64-bit
> binaries.    Rather than fix all those issues right now, we'd like to build
> everything as a 32-bit binary on a 64-bit OS.  The problem is, I'm not sure
> how I'd go about forcing that to happen.  Is there some simple mechanism I
> can use to force all native packages to build as 32-bit on a 64-bit system?

Sorry for the delay in replying. I've not had to do this myself but I suspect 
something like this might do it:

BUILD_ARCH = "i686"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

