Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39401E00BBA; Tue, 10 Jun 2014 01:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8A44E00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 01:53:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jun 2014 01:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,1008,1392192000"; d="scan'208";a="443726483"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.176])
	by azsmga001.ch.intel.com with ESMTP; 10 Jun 2014 01:53:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Rafert <jimr@spectralogic.com>
Date: Tue, 10 Jun 2014 09:53:46 +0100
Message-ID: <2167937.Ioj4ylAJNq@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do I create a recipe for laying down post-build config files?
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
X-List-Received-Date: Tue, 10 Jun 2014 08:54:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jim,

On Monday 09 June 2014 21:44:00 Jim Rafert wrote:
> I'm trying to gather all my post-build tweaks into a recipe that will be
> built as part of an upper-level layer, so that they are installed after the
> meta layer is processed.  Many of these could be accomplished as part of
> .bbappend files for the recipes that originally supply the config files,
> but I wanted to gather all my customizations in one spot, so that they're
> easy to find.
> 
> The recipe doesn't actually build anything, so there's no do_build task.
> 
> This is surely something that is commonly wanted.
> 
> Here's my current recipe, in spectra-postbuild_0.1.bb.
> 
> When I try to build an image, the build fails with
> ERROR: QA Issue: spectra-postbuild: Files/directories were installed but not
> shipped /RELEASE-NOTES.txt
> 
> When I disable the installed-vs-shipped QA test,  it fails later when it
> can't find a package file.

In general, disabling installed-vs-shipped is not the right thing to do. What 
it's trying to tell you is that you've installed a file in do_install and then 
haven't packaged it in any package, which means it can never end up in the 
final image.

FYI we've been putting together a section for the manual in the upcoming 1.7 
release that attempts to explain each warning and what to do to resolve it; 
here is a preview:

http://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#ref-qa-checks

If "fails later when it can't find a package file" means during do_rootfs, this 
is almost certainly because the package ended up empty and thus wasn't created 
(we don't create empty packages unless ALLOW_EMPTY for the package is set to 
"1", but generally the fix is to ensure the files you expect to be packaged into 
the package are actually packaged).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

