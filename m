Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8585C4C803A5
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 11:21:53 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9JGLqgg028749;
	Tue, 19 Oct 2010 09:21:52 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 09:21:52 -0700
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 09:21:52 -0700
Message-ID: <4CBDC59D.8070402@windriver.com>
Date: Tue, 19 Oct 2010 12:21:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
X-OriginalArrivalTime: 19 Oct 2010 16:21:52.0240 (UTC)
	FILETIME=[BD11AF00:01CB6FA9]
X-Mailman-Approved-At: Tue, 19 Oct 2010 11:29:03 -0500
Cc: yocto@yoctoproject.org, "Li, Susie" <susie.li@intel.com>, "deVries,
	Alex" <Alex.deVries@windriver.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "McCombe,
	Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Anderson,
	Paul" <paul.anderson@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Hart, Darren" <darren.hart@intel.com>
Subject: Re: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 16:21:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-10-19 11:40 AM, Stewart, David C wrote:
> Attending: davest, RP, Saul, Kevin, Jessica, Tom, Mark, Alex, Jeff, Josh

Sorry I missed without notice. I was standing outside of
the daycare providers house with an 18 month old wonder
where everyone was at 11:00 am this morning :(

Bruce

>
> Exec Summary:
> 	EIGHT DAYS TO LAUNCH.
> 	RC3 testing is going, will be finished on time for Oct 22
> 	Readiness review on Oct 21, Saul will set up
> 	The Fetcher is showing serious problems, this needs to be addressed for release. Richard will update daily on this.
>
> 	You all have items to complete below, please follow up
>
>
> ARs:
> 	AR: Saul - set up readiness review
> 	AR: Darren - demo use case notes to ScottR
> 	AR: Kevin - do we need to retain the WR copyrights on the kernel doc? or can we rebrand as LF?
> 	AR: Saul - ask Nitin to investigate delta with the MeeGo toolchain
> 	AR: Dave to send CB, boards, panels, etc to Tom
> 	AR: Bruce to take the recipes, bring up the 4 arch demo and train Alex on them
> 	AR: MarkH - Package summary doc to ScottR
> 	AR: Jessica - work on getting Eclipse plug-in download location set up with ScottR
>
> Giveaway:
>
>
> Sprint B (Due: Oct 01, Midnight PDT)
>
>
> * demo
>
> ** Alex will put the hardware bits together, Darren to write down the description of what needs to come together and wiki-fy it. RP suggests that maybe getting all the pieces running on one hardware might be a good way to try it out just in case.
>
> ** create and document on Yocto Linux website the use cases
>
> ** NAS: NFS (Mark)
> 	Will do by end of his day today. This will run on MIPS RouterStation Pro
> 	Mark will bring this board and drive to Cambridge
>
> ** DNLA Server (Darren)
>
> ** UPnP Renderer (Josh)
> 	Will test with real hardware because audio on qemux86 isn't working
>
> * autobuilder runtime testing of images (ScottG)
> 	Will defer this change until release bits are safely out the door
>
>
> Sprint C (Due: Oct 8, Midnight PDT)
>
> * Go through each of the recipe file summary info and make sure they are there and correct, load all into a spreadsheet (Distro team) tech writer correct them and send them back (MarkH, Bug 281)
> 	Tech writer info pending, may move to 1.0
>
> * add class for rpmbuild (JeffP)
> 	WIP
>
> * ldat compatibility
> ** importing packages from LDAT (JeffP)
> 	WIP
>
> * determine way to distribute SDK (Jessica)
> 	Done, waiting for the build to push it.
>
> * setup and test RPM feed (Saul)
> 	done
>
>
> Sprint D (Due: Oct 15 (note: Thursday), Midnight PDT)
>
> ** shrink kernel repo size (Bruce)
>
> * demo
> ** kit up boards for give away (Dave/Saul)
>
> ** ensure sato desktop runs on ppc real h/w (Bruce)
>
> * qemu ppc graphics (Bruce)
>
>


