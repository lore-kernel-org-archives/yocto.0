Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F7BE0146C
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:21:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2QJLOkZ011486
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:21:24 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 26 Mar 2013 12:21:25 -0700
Message-ID: <5151F532.70304@windriver.com>
Date: Tue, 26 Mar 2013 14:21:22 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130307 Thunderbird/17.0.4
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CA+QkY1DZCJnYH-3wUc_z+SXOBtBS7NQU3GV+kCaTTeK8Co+8eA@mail.gmail.com>
In-Reply-To: <CA+QkY1DZCJnYH-3wUc_z+SXOBtBS7NQU3GV+kCaTTeK8Co+8eA@mail.gmail.com>
Subject: Re: Building "restricted" source code
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
X-List-Received-Date: Tue, 26 Mar 2013 19:21:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/26/13 7:53 AM, Jerrod Peach wrote:
> As part of my company's firmware builds, we have to build some code that only a
> handful of developers are allowed to view.  We call this restricted source code.
>   Getting our official "system" builds to build this code isn't a problem.  What
> is a problem is a regular developer's build of this code.
>
> Imagine this scenario: The restricted source depends upon eglibc.  Our low-level
> team, who doesn't have access to the restricted source, updates the recipe for
> eglibc.  The hash for the restricted package is permuted, and so they can't get
> an sstate hit and are required to rebuild the source.  But, since they can't
> check out the source, they can't build it.  This would cause a build failure.
>
> Is anyone dealing with this scenario while using Yocto currently?  If so, how?
>   I know it may be unlikely that many people are hitting this since Yocto is
> primarily used to build open-source code, but I thought I'd take a shot in the
> dark and hope for the best.  :-)
>

Two ways I know of doing this.  Slightly different way of doing things:

1) If the code does -not- rely on outside influences, such as eglibc.  Configure 
the recipe and pretty much ignore everything else with a vardepsexp.  Then ship 
the sstate-cache files that cover the compiled code.  (Along with the original 
recipe...)

2) For code that DOES rely on outside influences.. create a custom recipe that 
either downloads the source and builds it [if the user has access to the 
source], or will pull the binaries from a specific location and simply 
install/package them.   This is actually the more common approach.

(To seed that location, you can extract the items from your restricted build -- 
or build it outside the tree using an SDK or similar.)

--Mark

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


