Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6187E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 09:02:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Oct 2012 09:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,524,1344236400"; d="scan'208";a="199659850"
Received: from unknown (HELO [10.255.14.37]) ([10.255.14.37])
	by azsmga001.ch.intel.com with ESMTP; 02 Oct 2012 09:02:29 -0700
Message-ID: <1349193749.8890.6.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Tue, 02 Oct 2012 11:02:29 -0500
In-Reply-To: <506B018E.6010101@linux.intel.com>
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com> <1348765649.32215.1.camel@empanada>
	<9EAF22A4DBD743CEA7903B14F00DB03F@intel.com>
	<506B018E.6010101@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Tue, 02 Oct 2012 16:02:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-02 at 18:00 +0300, Mihai Lindner wrote:
> On 2012-09-29 23:50, Ross Burton wrote:
> > On Thursday, 27 September 2012 at 18:07, Tom Zanussi wrote:
> >> Yeah, looks like the other SRC_URIs do that, but it's missing from that
> >> SRC_URI - I just pushed a fix for this one to meta-intel/master.
> > 
> > Thanks Tom, I've been frequently flipping between atom-pc and cedartrail and this was getting annoying.
> > 
> > Ross 
> > 
> > 
> > 
> 
> Unfortunately this change breaks SRC_URI appends, discarded or overwritten; e.g. adding meta-tlk brings no change to SRC_URI.
> 

It shouldn't though, since the application of the meta-tlk SRC_URI
bbappend should follow the SRC_URI assignment in the cedartrail
bbappend.  On the other hand, the layer priorities don't seem to be
right - meta-cedartrail is supposed to have a priority of 6, but it
doesn't actually seem to:

BBFILE_PRIORITY_cedartrail = "6" 

[trz@empanada build]$ bitbake-layers show_layers
layer                 path                                      priority
==========================================================================
meta                  /home/trz/yocto/crownbay-test/meta        5
meta-yocto            /home/trz/yocto/crownbay-test/meta-yocto  5
meta-yocto-bsp        /home/trz/yocto/crownbay-test/meta-yocto-bsp  5
meta-intel            /home/trz/yocto/crownbay-test/meta-intel  5
meta-cedartrail       /home/trz/yocto/crownbay-test/meta-intel/meta-cedartrail  5
meta-tlk              /home/trz/yocto/crownbay-test/meta-intel/meta-tlk  5

On the other hand, meta-tlk does follow meta-cedatrail in the parse
order so should append to the SRC_URI...

Tom


