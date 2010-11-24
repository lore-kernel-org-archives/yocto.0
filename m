Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C4E454C80BEF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 14:00:23 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAOK0MBB001754;
	Wed, 24 Nov 2010 12:00:22 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 12:00:22 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 12:00:21 -0800
Message-ID: <4CED6ED4.8020609@windriver.com>
Date: Wed, 24 Nov 2010 14:00:20 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
In-Reply-To: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
X-OriginalArrivalTime: 24 Nov 2010 20:00:22.0099 (UTC)
	FILETIME=[3A066A30:01CB8C12]
Cc: yocto@yoctoproject.org
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Wed, 24 Nov 2010 20:00:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/24/10 1:36 PM, Frans Meulenbroeks wrote:
> I was trying to build poky-image-minimal (git head of nov 20).
> | Processing task-poky-boot...
> | Processing rpm...
> | Unable to find package rpm!
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/frans/poky/poky/build/tmp/work/sheevaplug-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6436')

The task you build had an explicit requirement for 'rpm' (the package).  It's
saying it was unable to find that package.

I'm not sure how to track down where that requirement came from though.

You might be able to work around it by doing a "bitbake rpm"...

> NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
> ERROR: Task 10 (/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb,
> do_rootfs) failed with 1
> ERROR: '/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb'
> failed
> 
> rpm is installed on the host
> packaged rpm and rpm-native build so it does not seem to be a missing
> dependency.
> 
> Anyone an idea?
> 
> BTW: I feel that building poky-image-minimal takes quite long.
> I don't have a very high end PC (D920, core2 duo at 3Ghz or so, with
> 4GB DDR2), but  when I tried to build poky-image-minimal a second
> time, no work needed to be done, apart from do_rootfs.
> Yet running the 1839 (of 1842) tasks took 11min25.

There is currently a lot of extra processing during task executation.  Each task
takes approx 1-2 seconds of processing.  A large number of the 1839 were likely
skipped.. thus the 11 minutes.

We're already working on a solution to this.  Between optimizing the setup of
the bitbake environment and changes in pseudo -- to facilitate the task executor
avoiding exec unless necessary.

--Mark

> Frans
> 
> PS: this is with otherwise out-of-the-box settings, so I did not
> modify conf files or so.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


