Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378B4E00343
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:41:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 06:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176011719"
Received: from unknown (HELO helios.localnet) ([10.252.120.253])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2012 06:41:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Wed, 11 Jul 2012 14:40:59 +0100
Message-ID: <1960513.rV2biWNs2x@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <4FFD7BCC.60204@gmail.com>
References: <4FFD7BCC.60204@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: switch between denzil and edison
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
X-List-Received-Date: Wed, 11 Jul 2012 13:41:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 July 2012 09:12:44 Jim Abernathy wrote:
> I just build an Ubuntu 12.04 LTS development system and installed the
> required packages based on the current 1.2 QS Guide.  On Denzil based
> BSP that works as expected.
> 
> However, I needed to switch back to edison.  When I tried to bitbake an
> image I received errors that stated a need for bash and not dash (just
> like the old days).  Also it needed a package 'cvs'.
> 
> Can I assume that bash is supported if I move back to working on the
> denzil release??

Yes, bash will always be supported; the only change between edison and denzil 
in that regard is that having bash as the default shell is no longer a 
mandatory requirement.

> Can I assume installing cvs will not interfere with the denzil release?

Yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

