Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D0E6E0070B
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 05:04:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2012 05:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="168480728"
Received: from unknown (HELO helios.localnet) ([10.252.120.141])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2012 05:04:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Rucker <linux.mrjimorg@gmail.com>
Date: Thu, 21 Jun 2012 13:04:47 +0100
Message-ID: <1421627.kHU8fotsWR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <CAH6UwN2ri4TbZZfySb51SKpMVeDHYjUa0ZRAXaTtmy+70kiTcA@mail.gmail.com>
References: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
	<1716213.rh1b8QEMi2@helios>
	<CAH6UwN2ri4TbZZfySb51SKpMVeDHYjUa0ZRAXaTtmy+70kiTcA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Dependency Tree
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
X-List-Received-Date: Thu, 21 Jun 2012 12:04:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 20 June 2012 16:28:02 Jim Rucker wrote:
> Thanks for the help
> "how did you conclude that its a prerequisite with external toolchain and
> not with internal toolchain?"
> Because this system doesn't have network access, so I have to transfer
> files to the system manually and use the PREMIRROR feature. When I build
> using the internal toolchain I never needed to grab qemu.
> Side note- after researching this it looks like qemu was needed for
> localization files required by eglibc, while the internal gcc uses a prebuilt
> localization file.

This is something that has apparently been fixed post-denzil. I think you just 
need to set the following:

GLIBC_INTERNAL_USE_BINARY_LOCALE = "precompiled"
ENABLE_BINARY_LOCALE_GENERATION = ""

> Although I'm able to build without network access on edison, I can't seem
> to get it to work on denzil. I seem to get pretty far, but when I get to a
> git repository, it doesn't seem to work. I have the file
> "git2_git.yoctoproject.org.prelink-cross.git.tar.gz", but it never seems to
> try to access it. Any suggestions?

So this suggests that you don't have the prelink-cross git archive in your 
local mirror (assuming PREMIRRORS is set up to also redirect git URIs); hence 
it is trying to go out to the internet to get it.

By the way, do you have BB_NO_NETWORK = "1" set? If not then you should set 
this in local.conf.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

