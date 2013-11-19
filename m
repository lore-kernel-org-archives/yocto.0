Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF6F9E00543
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 07:47:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2013 07:47:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,729,1378882800"; d="scan'208";a="430306411"
Received: from unknown (HELO helios.localnet) ([10.252.121.202])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2013 07:47:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Tue, 19 Nov 2013 15:47:15 +0000
Message-ID: <1458984.Xc2zfu3l73@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE35F@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE35F@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Compile on recipe works the second time
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
X-List-Received-Date: Tue, 19 Nov 2013 15:47:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Bryan,

On Tuesday 19 November 2013 08:57:40 Bryan Evenson wrote:
> I'm on poky/dylan-9.0.1 and I've created a layer for a separate open source
> project to include in my image.  The layer is at
> https://github.com/evensonbryan/meta-bacnet for those of you who want to
> try and duplicate my results.  Just add this layer to your setup and build
> the recipe "bacnet-stack".
> 
> I have a very odd build issue.  The first time I build the recipe, the build
> fails during the compile step.  However, if I then build the recipe again,
> the compile completes without errors.  For example:
> 
> 1. bitbake -c clean bacnet-stack
> 2. bitbake bacnet-stack (compile fails)
> 3. bitbake bacnet-stack (compile succeeds, rest of image packaging works)
> 
> Additionally, the following order compiles without error:
> 1. bitbake -c clean bacnet-stack
> 2. bitbake -c devshell bacnet-stack
> 3. (from devshell) make all (compile succeeds)
> 
> This project is divided into a static library and multiple demo
> applications.  The static library needs to be built first, and then the
> demo applications include the static library in their build.  I suspect I
> have an issue with either populating the static library or the related
> include files in the sysroot which causes the demo applications to fail to
> build the first time but work the second.  However, I can't figure out how
> to fix the issue.  Any pointers on what is setup wrong with this recipe?

From bacnet-stack.inc:
> do_install () {
>     install -d ${D}${bindir} ${D}${datadir} ${D}${libdir} > 
${STAGING_INCDIR}/${PN}
>     ...
>     install -m 0644 ${S}/include/* ${STAGING_INCDIR}/${PN}
> }

Don't poke files directly into the sysroot like this. Install the headers to 
${D}${incdir} instead, and they will be staged to the sysroot for you.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

