Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E744EE0079F; Sat,  4 Apr 2015 07:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6E13E006E5
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2015 07:25:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 04 Apr 2015 07:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,522,1422950400"; d="scan'208";a="703380678"
Received: from debyrne-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.24.16])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2015 07:25:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Smith, Virgil" <Virgil.Smith@flir.com>
Date: Sat, 04 Apr 2015 15:25:27 +0100
Message-ID: <3830727.44ard1Gu2C@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F14AEF751653024287138321000C846AF4813599@BOS-DAG1.zone1.flir.net>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<6493109.qmgxeLPueO@peggleto-mobl.ger.corp.intel.com>
	<F14AEF751653024287138321000C846AF4813599@BOS-DAG1.zone1.flir.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, "Yu, Chan KitX" <chan.kitx.yu@intel.com>
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Sat, 04 Apr 2015 14:25:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 03 April 2015 15:31:06 Smith, Virgil wrote:
> > > OK, it turned out that prepending the space before lib32-connman does
> > > not do any good. However, commenting out the line which contains the
> > > IMAGE_INSTALL_append does. That begs the question; what does
> > > lib32-connman do?
> > 
> > It's not lib32-connman that's the problem. The problem is that you were
> > effectively setting the value of IMAGE_INSTALL to something and the
> > default in core-image.bbclass is being set with ?= , and because it's
> > already set at the time the ?= is parsed, the defaults (including the
> > chain leading to
> > sysvinit/systemd) are not being added, among many other packages. If you
> > use IMAGE_INSTALL_append rather than IMAGE_INSTALL (or use a proper image
> > recipe instead of appending to IMAGE_INSTALL from local.conf) you
> > shouldn't have a problem.
> 
> You can't use IMAGE_INSTALL_append from local.conf (as you already
> confirmed).  

This is not true in the general case. You definitely can use 
IMAGE_INSTALL_append with a leading space to add items to an image, I just 
verified that now.

I'm not clear on exactly what happened in the case we're discussing, at least 
initially it sounded like IMAGE_INSTALL = rather than IMAGE_INSTALL_append = 
was being used, which would definitely account for the behaviour described.

> The Yocto layer/configuration composition is non-intuitive.  It is easy to
> expect items in local.conf to 'override/extend' the configuration resulting
> from your layer selections in bblayers.conf, but this is not what happens. 

You can do that, it's just that there is more going on than may be readily 
apparent. We do try to simplify things from time to time where practical (and 
will continue to do so), but a certain level of complexity is basically 
required if you want the system to be flexible.

FWIW, I can strongly recommend the use of bitbake -e (or Toaster, especially 
with the upcoming 1.8 release) to get a view on how variables are being set, 
especially if you are hitting a situation where something is not working in 
the manner you expect it to.

> I'd personally prefer local.conf to be processed AFTER the conf/layer.conf
> and conf/machine/some-name.conf files, but at the very least bb needs to
> know the selected machine first.  So to tune/tweak things you need a file
> up front (local.conf) and a file at the other end (a custom recipe and/or
> layer).

local.conf *is* parsed after the layer.conf files, but not after the machine 
configuration - that is not possible, since it's local.conf that *selects* the 
MACHINE value and thus determines which machine conf file gets parsed.

My opinion on this is that for anything more than just testing or 
experimentation, you should be creating custom image recipes and a custom 
distro configuration, from which you get complete control. The distro 
configuration file is parsed almost at the end of the configuration for exactly 
the reason you mentioned.

> Also, don't think that the ordering of layers in your bblayers.conf file
> (alone) determines the overlaying/replacement of matching bb/bbappend, inc,
> or source/patch files.

The precedence of bb files and order of application of bbappends is controlled 
primarily by layer priorities; the order that layers appear in bblayers.conf 
shouldn't come into that (although it may if you have layers that have exactly 
the same priority set). The order of layers in bblayers.conf can influence the 
order in which bbclass and inc files are found *where files of the same name 
exist across different layers*, since these are found using BBPATH, which is 
prepended or appended to by each layer.conf file and thus the order in which 
those files are parsed is significant.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

