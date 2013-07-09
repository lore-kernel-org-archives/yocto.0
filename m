Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E75D0E00715
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 03:02:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Jul 2013 03:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1027,1363158000"; d="scan'208";a="265817011"
Received: from unknown (HELO helios.localnet) ([10.252.121.245])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Jul 2013 03:02:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jerrod Peach <peachj@lexmark.com>
Date: Tue, 09 Jul 2013 11:02:32 +0100
Message-ID: <11944897.4VBUiy9yHt@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CA+QkY1CUeBR2zkzNofqbosfB=-3zMYChDQOYJPKpB0EaUfx+zw@mail.gmail.com>
References: <CA+QkY1AuHy-wzgTWfRq7B0e7GFR4fAXdf_okVZ7wypjBp5ewzw@mail.gmail.com>
	<CA+QkY1CUeBR2zkzNofqbosfB=-3zMYChDQOYJPKpB0EaUfx+zw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.4: Bad behavior between rm_work and packaging causing failures?
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
X-List-Received-Date: Tue, 09 Jul 2013 10:02:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jerrod,

On Monday 08 July 2013 09:25:12 Jerrod Peach wrote:
> Re-sending as we've hit another rash of these issues and it ate up a couple
> days of investigation that still led to no resolution or figuring out how
> to reproduce it.  I'm going to log a bug in a day or so, even though my
> information is incomplete, if no one knows what's going on here and can
> explain how to avoid it (other than turning rm_work off, which I suspect
> would fix the problem but cost us a bunch of disk space as a trade-off).
> 
> ---------- Forwarded message ----------
> From: Jerrod Peach <peachj@lexmark.com>
> Date: Thu, Jun 13, 2013 at 12:28 PM
> Subject: Yocto 1.4: Bad behavior between rm_work and packaging causing
> failures?
> To: yocto <yocto@yoctoproject.org>
> 
> 
> All,
> 
> Since upgrading to Yocto 1.4, several people at our organization have
> noticed a couple of weird build failures related to rm_work and packaging.
>  Here are the two failure scenarios:
> 
> 1) A user builds package, but bitbake only re-runs the do_pkg_write_rpm
> task without having run any other build tasks.  This appears to be due to a
> supposedly-valid stamp file existing for the other tasks in the task graph.
>  This would normally result in an empty rpm being created, but the rpm
> creation code (smartly) refuses to create empty rpms.  This, then, causes a
> build failure during image creation (if the package is needed for the
> image, of course) because the rpm isn't present.  We think this situation
> leads to the second failure we see.
> 
> 2) Whether a build succeeds or fails, if it's run on our build
> infrastructure, we upload its sstate to an sstate mirror.  sstate is still
> uploaded for the do_package_write_rpm task in case 1 for builds performed
> on our infrastructure.  That means the sstate, then, contains no rpm for
> the package in question.  This causes later builds to fail with the same
> error as in case 1 (the rpm isn't present when the image needs it), but for
> a different reason (getting a hit on poisoned sstate).
> 
> We do not know how to reproduce this problem.  We think it's related to
> commit f090c15 (in the poky repo), but we haven't had much time to
> investigate further.  I suspect there is only one bug to fix here (i.e.,
> whatever is causing stamp files to incorrectly exist), but since there are
> some number of unknowns here, I thought I'd be better off describing the
> whole situation, just in case.
> 
> Has anyone else seen this?  Does anyone have ideas as to what's causing it?

I haven't seen this, but then I don't often run with rm_work enabled. I have 
asked Martin Jansa (the OE rm_work expert, who also made the change you have 
pointed to) about it but he has not seen any similar issues in his setup.

I think it's probably worth concentrating on the first issue. I can run some 
tests, but the question is are you able to elaborate on what builds might have 
been done before the user runs the problem build, and the nature of any 
changes that were made between prior builds and the failing build? Are you 
adding any custom tasks in your setup at all?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

