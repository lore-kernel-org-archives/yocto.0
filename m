Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E860BE013B7
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 06:22:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 May 2012 06:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138437166"
Received: from unknown (HELO helios.localnet) ([10.252.120.59])
	by azsmga001.ch.intel.com with ESMTP; 03 May 2012 06:21:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 03 May 2012 14:21:40 +0100
Message-ID: <11827908.GWIN234cRG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-19-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build error: Could not inherit file classes/systemd.bbclass
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
X-List-Received-Date: Thu, 03 May 2012 13:22:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 03 May 2012 14:56:03 Elvis Dowson wrote:
>      I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I get
> a build error when I run the following command:
> 
> $ bitbake -c fetchall core-image-minimal
> 
> Pseudo is not present but is required, building this first before the main
> build WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.

This can be ignored - 12.04 *is* supported; it's just that the final version 
string wasn't what I expected it to be. I'll send a patch for this soon and it 
can hopefully go into 1.2.1.

> ERROR: ParseError at
> /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit
> file classes/systemd.bbclass ERROR: Command execution failed: Exited with 1

systemd.bbclass is part of the meta-oe layer, so you'll need to add that to 
your bblayers.conf.

BTW I'm not sure if the meta-ti maintainers have finished their work to ensure 
meta-ti works with distros other than Angstrom. If they haven't you may 
experience problems.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

