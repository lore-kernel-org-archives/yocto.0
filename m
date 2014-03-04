Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792E2E00975
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 03:02:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2014 02:57:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,584,1389772800"; d="scan'208";a="485725459"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.51])
	by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2014 03:01:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Tue, 04 Mar 2014 11:01:54 +0000
Message-ID: <3478033.4G0PVG1MHp@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <5315A685.5070702@dynamicdevices.co.uk>
References: <5315A685.5070702@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: FILES_${PN} packaging and wildcarded exclusions
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
X-List-Received-Date: Tue, 04 Mar 2014 11:02:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Tuesday 04 March 2014 10:10:13 Alex J Lennon wrote:
> I'm trying to understand how to cleanly extend FILES${PN} to include
> files that are staged and need to be packaged
> 
> If I start with something like
> 
> FILES_${PN} += " \
> ${libdir}/mono/gac/policy.0.2.Mono.Addins/0.0.0.0__0738eb9f132ed756/* \
> ${libdir}/mono/gac/policy.0.2.Mono.Addins.Setup/0.0.0.0__0738eb9f132ed756/*
> \
> ${libdir}/mono/gac/policy.0.6.Mono.Addins.CecilReflector/0.0.0.0__0738eb9f13
> 2ed756/* \
> ${libdir}/mono/gac/policy.0.6.Mono.Addins.Gui/0.0.0.0__0738eb9f132ed756/* \
> <snip/>
> 
> I seem to be able to clean that up a bit to
> 
> FILES_${PN} += " \
> ${libdir}/mono/gac/*/*/* \
> <snip/>
> 
> What I'd like to do is to be able to represent "all files excepting
> files ending with .mdb", for example, as I want to add those to a
> ${PN}-dbg package.
> 
> I was wondering if there's a syntax I can use within FILES_${PN} to
> achieve that cleanly?

There isn't I'm afraid - the tools you have available are wildcards and the 
ordering of PACKAGES, since the first package whose FILES value matches a file 
will get the file. However, for this specific case this should be just fine - 
${PN}-dbg appears before ${PN} in the default value of PACKAGES, so you just 
need to ensure FILES_${PN}-dbg is extended as needed.

Cheers,
Paul 

-- 

Paul Eggleton
Intel Open Source Technology Centre

