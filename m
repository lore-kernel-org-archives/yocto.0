Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FB67E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 14:03:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jun 2012 14:03:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170812697"
Received: from unknown (HELO [10.255.12.182]) ([10.255.12.182])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2012 14:03:30 -0700
Message-ID: <4FEB7522.5080202@linux.intel.com>
Date: Wed, 27 Jun 2012 14:03:30 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
References: <CDED78A957032E45B3239CDDA7642D151C8681AA@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C8681AA@ORSMSX105.amr.corp.intel.com>
Subject: Re: Web Hob - two additional design ideas
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
X-List-Received-Date: Wed, 27 Jun 2012 21:03:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/27/2012 12:17 PM, Stewart, David C wrote:
> Gang - there are a couple of ideas for Web Hob that we have talked about. I don't remember seeing them in the various movies and documents. So I'm going to throw them out there to get your feedback and hopefully get them in the design.
>
> * Visualizing the image
>
> One of the things which frustrates me about GUI tools which build Linux images is that you usually get a long list of packages to choose from, but no real guidance. I think there are a couple of interesting ways to visualize what is in the image.
>
> One would be to add more visual information about what makes up the image, maybe like a pie chart or linear chart which shows the breakdown between kernel, libraries, commands; perhaps with some drill down into these categories to show which libraries, for example.  This could be extremely useful for tuning a poky-tiny image for its footprint size.
>
This could be interesting for larger images where we could make use the 
the "SECTION" metadata, but might be more of a challenge for a meta-tiny 
where all you really have is libc (of some flavor) and busybox.

There may be additional metadata to help with the drill down further 
than maybe 1 level.

> I find I'm also struggling with figuring out how to add a whole subsystem, rather than picking out the packages.  This goes beyond the scroll list of packages to add higher-level groups of packages. This might be already present in how we present Tasks to select, so it might already be there.
>
We need to work on renaming the existing task-* recipes to make it more 
understood as package grouping or <pick your descriptive name here>

> * Finalizing your device's source offer
>
> One of the things the Project has been praised on is our support for building license compliant embedded distributions. This turns out to be one of the biggest challenges when people use Linux for their embedded devices - often the Linux gets shipped out on the embedded device, but the sources are not made available as specified in the GPL.  Through our tracking and validating of source licenses in recipes, the logic in the build system to restrict licenses used, and the source manifests generated in the build, I think we have a world class solution. This really needs to be supported well in Web Hob.
>
> So the requirement here is that when a build is completed, you not only get access to the image (and kernel) but maybe also a tar file of the sources and scripts used to build the image, for purposes of GPL license compliance.
>
I want to point out to the designers and implementers that there already 
exists a mechanism to archive various levels of source, source with 
logs, source with logs and scripts, ...  Please review the 
archiver.bbclass so we do not re-invent the wheels for the underlying 
implementation of what Dave is asking for.  We just need to inherit that 
class and set the appropriate flags for what level of archiving.

This should also include a License Manifest of some sort that could be 
suitable for posting on a website, I am not sure if this is something 
Beth already has plans for in her license work.

Sau!


>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

