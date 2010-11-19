Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22ACF4C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 06:08:56 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC8svu014234;
	Fri, 19 Nov 2010 12:08:54 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14210-01; Fri, 19 Nov 2010 12:08:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC8m1k014228
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Nov 2010 12:08:49 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CE5A9EE.2080306@windriver.com>
References: <4CE5A9EE.2080306@windriver.com>
Date: Fri, 19 Nov 2010 12:08:34 +0000
Message-ID: <1290168514.1272.12249.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Request for Reviews and future package updates
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
X-List-Received-Date: Fri, 19 Nov 2010 12:08:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-18 at 16:34 -0600, Mark Hatle wrote:
> I'd like to request that future reviews and package updates include "SUMMARY"
> information in the recipe files.
> 
> For people who are not aware of the issue, a policy was created in Yocto 0.9
> that we want each package to contain both a summary and description.  The
> summary should be short and fewer then 80 characters if possible.  While the
> description may be arbitrarily long and should explain the functionality of the
> package.
> 
> By default, the SUMMARY is set to equal the DESCRIPTION if it was not previously
> set.
> 
> So if the DESCRIPTION is short, a SUMMARY may not be required, such as:
> 
> DESCRIPTION = "A multi-purpose linux bootloader"
> 
> 
> However, in a package with a more complicated description, such as chrpath:
> 
> DESCRIPTION = "chrpath allows you to change the rpath (where the application \
> looks for libraries) in an application. It does not (yet) allow you to add an \
> rpath if there isn't one already."
> 
> A short summary should be added to the recipe:
> 
> SUMMARY = "Tool to edit rpath in ELF binaries"
> 
> ---
> 
> I'm currently going through Poky updating many of the recipes by updating
> descriptions as necessary and adding SUMMARY fields.  In the future, or as
> packages are updated, we should ensure that both the SUMMARY and DESCRIPTION are
> present and up-to-date.

It would be nice to have a section in the wiki with the minimum recipe
requirements documented. We certainly have some but I'm not sure
everything is written down in one place?

Cheers,

Richard


