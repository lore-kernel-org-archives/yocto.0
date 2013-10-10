Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5644E015E2
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 03:33:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Oct 2013 03:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1070,1371106800"; d="scan'208";a="414780059"
Received: from unknown (HELO helios.localnet) ([10.252.120.176])
	by fmsmga002.fm.intel.com with ESMTP; 10 Oct 2013 03:33:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 10 Oct 2013 11:33:12 +0100
Message-ID: <3776909.Wq363vMS5E@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAP71Wjz=2tpUFK=CeOWQshm4z91Yu5r-_xGUo+CeuWVaU3NcPg@mail.gmail.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
	<3660370.oRDG4CenKT@helios>
	<CAP71Wjz=2tpUFK=CeOWQshm4z91Yu5r-_xGUo+CeuWVaU3NcPg@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 Oct 2013 10:33:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 September 2013 13:53:49 Nicolas Dechesne wrote:
> On Thu, Sep 12, 2013 at 12:16 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > > Is the best course to create a recipe bbappend for the
> > > lighttpd_1.4.31.bb file that is being used?  And can I just include a new
> > > file with the same name in my append and will it overwrite the old one,
> > > or do I need to create an actual patch file?
> > 
> > So, since this config file is provided along with the original recipe, and
> > is already mentioned in SRC_URI and installed within do_install, you only
> > need to extend FILESEXTRAPATHS in your bbappend so that the system can
> > pick up your version of the file. Outright replacing the file is the easiest
> > way here rather than trying to patch it.
> > 
> > So in your bbappend you would have:
> > 
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> how about if the lighttpd.conf file needs to be fetched (git or svn)
> instead added in the same repo as the recipe?

If fetching from git/svn then you'd just add an entry to SRC_URI, and the file 
would be fetched into a subdirectory; you'd then just have a do_install() / 
do_install_append() to install the version of the file from within that 
subdirectory.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

