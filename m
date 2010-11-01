Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67D294C80044
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 14:00:49 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1J0mNr029906
	for <yocto@yoctoproject.org>; Mon, 1 Nov 2010 12:00:49 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:00:48 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:00:48 -0700
Message-ID: <4CCF0E5F.5060900@windriver.com>
Date: Mon, 01 Nov 2010 14:00:47 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CCBDC67.4050306@linux.intel.com>
In-Reply-To: <4CCBDC67.4050306@linux.intel.com>
X-OriginalArrivalTime: 01 Nov 2010 19:00:48.0930 (UTC)
	FILETIME=[18BFD820:01CB79F7]
Subject: Re: Bugzilla Changes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 19:00:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/10 3:50 AM, Saul Wold wrote:
>
> We need to review the existing Bugzilla and update the Products and
> Categories to reflect the projects correctly.  Please review this email
> and make comments, suggestions for moving forward with a better Bugzilla
> categorization.
>
> Currently we have "Core OS" with the following Components:
>     General
>     Graphics Driver
>     Kernel
>     Tool Chain
>
> Along with "Poky" which contains:
>     General
>     SDK Tools
>
> There are also product categories for "Runtime Distribution", "Sato" and
> "SDK Plugins". Along with other infrastructure items.
>
> I would propose that we clearly define the some new products and move
> bugs as appropriate:
>
> Poky Build System - for Poky class and configuration issues
> User Space  - for user space, patching and runtime failures
> Tool Chain - break it down to compiler, tools, libraries, and general
> Kernel - Break it down to Arch  / Config components
> SDK - For all SDK related issues, have components for plugin, tools, ...
> Sato - as it exists today
> Runtime Distribution- Delete this, we are not a distro (no bugs now)

My proposal -- similar bug slightly different:

Poky Build System
   Bitbake
   Documentation
   General

Poky Distribution
   Runtime Distribution -- Poky embedded linux distribution
   Documentation
   Security
   Toolchain
   SDK
   Test Suite

Yocto Infrastructure
   AutoBuilder
   Bugzilla
   Website

Anjuta Plug-in
   ???

Eclipse Plug-in
   ???

Cross-Prelink

Pseudo

SDK Generator

Swabber


...  specifically we need a major category for each of the projects in Yocto, 
right now the bugzilla is very specific to Poky and I think that needs to be 
updated now that things are public.

> Additionally, there is other discussion about Poky Test components for
> the standards tests such as LSB, LTP, Posix.

My suggestion is that is part of the run-time distribution.  If someone chooses 
to not use the Poky run-time, then the tests likely won't be useful on their own.

> We will need to add Product Categories for other Yocto Projects that do
> not have bugzilla yet.
>
> Finally we need to update the Bugzilla Interface to be Yocto Project,
> changing naming as appropriate.
>
> Please take a few minutes to review this and give some feedback.
>
>
> Thanks
>
>       Sau!
>
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


