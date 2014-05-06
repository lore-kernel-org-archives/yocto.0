Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95666E00A44; Tue,  6 May 2014 15:45:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7865DE00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:45:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DB4EFF8120D; Tue,  6 May 2014 16:45:19 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DB76F81209;
	Tue,  6 May 2014 16:45:16 -0600 (MDT)
Message-ID: <53696616.90502@mlbassoc.com>
Date: Tue, 06 May 2014 16:45:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <536962D8.1040007@rafresearch.com>
In-Reply-To: <536962D8.1040007@rafresearch.com>
Subject: Re: A simpler way of creating an using a local kernel repository - BeagleBone example
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
X-List-Received-Date: Tue, 06 May 2014 22:45:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-06 16:31, Bob Feretich wrote:
> I have had problems getting good download performance when accessing the kernels at kernel.org. Since I expect to build the kernel several times, I decided to create a copy of the
> kernel repository locally and use that for my builds.
>
> There are instructions on how to create a local repository in the Yocto manuals, but those are more complex than I needed. (I don't plan on checking anything into the repository.)
>
> The below is a simpler way of creating and using the repository.
> I'm publishing this because my search though the Yocto/OE/Angstrom yielded only the more complicated or incomplete methods.
>
> // First set up local kernel repository
> mkdir ~/ksrc3-8
> cd ~/ksrc3-8
> git clone --bare git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git stable-work-bare.git
>
> // Then modify the kernel recipe to use the local repository instead of the the one at kernel.org.
> // The beaglebone recipe for the 3.8 kernel is at...
> setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
>
> // Replace the file's SRC_URI with one that points to your local repository.
> #SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-3.8.y"
> SRC_URI = "git:///home/Bob/ksrc3-8/stable-work-bare.git;branch=linux-3.8.y"

IMO a much simpler (and certainly less invasive) way is to just
use your own local source mirrors.  Add these lines to your local.conf:
   SOURCE_MIRROR_URL = "file:///some-mirror-directory/"
   INHERIT += "own-mirrors "
   BB_GENERATE_MIRROR_TARBALLS ?= "1"

Once the git repository has been downloaded, it will be packed up in a
tarball, e.g.
   git2_git.kernel.org.pub.scm.linux.kernel.git.stable.linux-stable.git.tar.gz
If you then put this file into your SOURCE_MIRROR, the next time bitbake will
fetch from there [first].  It's even smart enough that if you need a revision
which is not in the tarball, it will update the git repository and rebuild the
tarball, which you can then move to your mirror.

Fast access, no messing with source recipes!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

