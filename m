Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28AB4E01358
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:16:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2013 03:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,890,1371106800"; d="scan'208";a="400515171"
Received: from ks-mobl3.gar.corp.intel.com (HELO helios.localnet)
	([10.252.123.176])
	by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2013 03:16:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <brad@evidence.com>
Date: Thu, 12 Sep 2013 11:16:11 +0100
Message-ID: <3660370.oRDG4CenKT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to customize a file coming from another recipe?
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
X-List-Received-Date: Thu, 12 Sep 2013 10:16:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Wednesday 11 September 2013 20:30:47 Brad Litterell wrote:
> I'm building w/the Arago distribution which contains lighttpd for a web
> server.  I include this in my image as follows:
> 
> IMAGE_INSTALL = "packagegroup-core-boot \
> ...
> lighttpd lighttpd-module-cgi lighttpd-module-compress lighttpd-module-expire
> \ ...
> "
> 
> This installs a default configuration file for the service which I now want
> to customize.  What is the recommended way to overwrite or customize files
> in another package?
> 
> Is the best course to create a recipe bbappend for the lighttpd_1.4.31.bb
> file that is being used?  And can I just include a new file with the same
> name in my append and will it overwrite the old one, or do I need to create
> an actual patch file?

So, since this config file is provided along with the original recipe, and is 
already mentioned in SRC_URI and installed within do_install, you only need to 
extend FILESEXTRAPATHS in your bbappend so that the system can pick up your 
version of the file. Outright replacing the file is the easiest way here rather 
than trying to patch it.

So in your bbappend you would have:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

and then next to the bbappend you would have a directory called "lighttpd" (to 
match ${PN} in the above line) containing your replacement lighttpd.conf file. 
If you prefer you could replace "${PN}" with "files" and name the directory the 
same; it's up to you.

> Or is it better to create a new separate  recipe that just ships my version
> of the configuration file? How are conflicts handled when two recipes
> attempt to install the same file?

This won't work because the package manager will refuse to install packages 
that install the same file (unless it is forced). bbappending the existing 
recipe is the way to go.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

