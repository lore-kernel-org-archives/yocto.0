Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65C2CE0053A; Sun, 16 Apr 2017 20:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C458E003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 20:08:34 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v3H38UM4013869
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 16 Apr 2017 20:08:31 -0700
Received: from server.local (128.224.20.185) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Sun, 16 Apr 2017 20:08:30 -0700
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <B92317128F384E2BAC28643061FC76E1@PAULD>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <a41596d9-1ef6-90f2-3c92-79755935f443@windriver.com>
Date: Sun, 16 Apr 2017 23:08:29 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <B92317128F384E2BAC28643061FC76E1@PAULD>
Subject: Re: Patch failures
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
X-List-Received-Date: Mon, 17 Apr 2017 03:08:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-16 7:43 PM, Paul D. DeRocco wrote:
> I'm trying to migrate an Atom-based build from Fido to Morty, and also
> switch from 32-bit mode to x32. On a clean build, it gets about half way
> through, and then suddenly coughs up a patch error. I've put blank lines
> between the log lines so that the email word wrap won't be as confusing:
>
> --
>
> DEBUG: Executing shell function do_patch
>
> (1/660) ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch
>
> [INFO]: check of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
> ule-addresses-dur.patch with "git am" did not pass, trying reduced
> context.
>
> [INFO]: Context reduced git-am of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
> ule-addresses-dur.patch with "git am" did not work, trying "apply".
>
> error: patch failed: arch/arm/mm/fault.c:448
>
> error: arch/arm/mm/fault.c: patch does not apply
>
> [ERROR]: Application of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-
> the-TLB-for-module-addresses-dur.patch failed.
>
>          Patch needs to be refreshed. Sample resolution script:
>
>              .git/rebase-apply/resolve_rejects
>
> WARNING:
> /home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
> yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/run.do_patch.3069
> 0:1 exit 1 from 'kgit-s2q --gen -v --patches .kernel-meta/'
>
> ERROR: Function failed: do_patch (log file is located at
> /home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
> yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/log.do_patch.3069
> 0)
>
> --
>
> If I start bitbake again, it detects a "fence", and proceeds a little
> further. I can do it over and over again, and it keeps building more and
> more, but this can't be right, can it? The strange thing is that the
> patches are all about ARM, PowerPC, etc., which have nothing to do with my
> system. Could this be some fundamental misconfiguration having to do with
> my MACHINE? At the beginning of my local.conf, I have:

The content of the patches isn't relative. All the patches are applied
all the time. Doing arch specific patches in a large patch queue turns
into a dependency soup ... hence the entire linux-yocto queue is
checked against the build branch on each build, and if something is
missing, patches are pushed.

What that sounds like is that your BSP doesn't have a proper definition
and hence entry point to the patching process. As such, whatever branch
is being built doesn't have the patches applied .. and hence the patches
are pushed and fail to apply in your context.

I can't say from what you've provided why the BSP description isn't
valid, but if the kernel recipe and layers are something I can look at,
I can debug more.

There were some changes between those releases that tweaked the kernel
meta-data processing .. and that could be the issue, but again, I can't
say without seeing all the details.

Bruce

>
> 	MACHINE ?= "chroma-bsp"
> 	DEFAULTTUNE = "core2-64-x32"
> 	baselib = "libx32"
>
> where chroma-bsp is defined in my own layer. My chroma-bsp.conf file
> contains (among other things):
>
> 	PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
> 	PREFERRED_VERSION_linux-yocto-rt ?= "4.8%"
> 	require conf/machine/include/tune-atom.inc
> 	require conf/machine/include/x86-base.inc
>
> I'm not really good at this. Does anyone see anything wrong?
>


