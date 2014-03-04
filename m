Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D77FE00975
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 03:14:55 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Mar 2014 03:14:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,584,1389772800"; d="scan'208";a="492019999"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.51])
	by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2014 03:14:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Tue, 04 Mar 2014 11:14:47 +0000
Message-ID: <1499138.kxKh9OGNhb@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <5315B37E.9040505@dynamicdevices.co.uk>
References: <5315A685.5070702@dynamicdevices.co.uk>
	<3478033.4G0PVG1MHp@peggleto-mobl5.ger.corp.intel.com>
	<5315B37E.9040505@dynamicdevices.co.uk>
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
X-List-Received-Date: Tue, 04 Mar 2014 11:14:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 04 March 2014 11:05:34 Alex J Lennon wrote:
> On 04/03/2014 11:01, Paul Eggleton wrote:
> > Hi Alex,
> > 
> > On Tuesday 04 March 2014 10:10:13 Alex J Lennon wrote:
> >> I'm trying to understand how to cleanly extend FILES${PN} to include
> >> files that are staged and need to be packaged
> >> 
> >> If I start with something like
> >> 
> >> FILES_${PN} += " \
> >> ${libdir}/mono/gac/policy.0.2.Mono.Addins/0.0.0.0__0738eb9f132ed756/* \
> >> ${libdir}/mono/gac/policy.0.2.Mono.Addins.Setup/0.0.0.0__0738eb9f132ed756
> >> /*
> >> \
> >> ${libdir}/mono/gac/policy.0.6.Mono.Addins.CecilReflector/0.0.0.0__0738eb9
> >> f13 2ed756/* \
> >> ${libdir}/mono/gac/policy.0.6.Mono.Addins.Gui/0.0.0.0__0738eb9f132ed756/*
> >> \
> >> <snip/>
> >> 
> >> I seem to be able to clean that up a bit to
> >> 
> >> FILES_${PN} += " \
> >> ${libdir}/mono/gac/*/*/* \
> >> <snip/>
> >> 
> >> What I'd like to do is to be able to represent "all files excepting
> >> files ending with .mdb", for example, as I want to add those to a
> >> ${PN}-dbg package.
> >> 
> >> I was wondering if there's a syntax I can use within FILES_${PN} to
> >> achieve that cleanly?
> > 
> > There isn't I'm afraid - the tools you have available are wildcards and
> > the
> > ordering of PACKAGES, since the first package whose FILES value matches a
> > file will get the file. However, for this specific case this should be
> > just fine - ${PN}-dbg appears before ${PN} in the default value of
> > PACKAGES, so you just need to ensure FILES_${PN}-dbg is extended as
> > needed.
> 
> Oh great, thanks. So as long as I make sure the order of precedence is
> as needed in PACKAGES then the files will go in the right packages.
> 
> I wonder if there's any benefit to allowing regexp in FILES_
> definitions? Or if that's just overcomplicating something that already
> works?

Well, I know the issue of making packaging a bit more flexible has been talked 
about in the past, but I think we'd be reluctant to just add regex support 
unless it's solving something that's hard / impossible with the current 
scheme. The way it works now is already a bit complex for new users so 
increasing the complexity might have the opposite to the desired effect, and of 
course there's compatibility and performance impact to think about.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

