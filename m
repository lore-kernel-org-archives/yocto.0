Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30040E0027E
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 10:07:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Sep 2012 10:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,496,1344236400"; d="scan'208";a="227364385"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 27 Sep 2012 10:07:32 -0700
Message-ID: <1348765649.32215.1.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Thu, 27 Sep 2012 12:07:29 -0500
In-Reply-To: <50645E48.7050208@linux.intel.com>
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com>
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
X-List-Received-Date: Thu, 27 Sep 2012 17:07:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-27 at 17:10 +0300, Mihai Lindner wrote:
> On 2012-09-27 14:31, Burton, Ross wrote:
> > Hi,
> > 
> > If I add meta-intel and meta-cedartrail to my bblayers, when I try and
> > do an atom-pc build (which I thought should still work, right?) I get
> > the following error:
> > 
> > NOTE: Error during finalise of
> > /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> > ERROR: ExpansionError during parsing
> > /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb:
> > Failure expanding variable SRCPV, expression was
> > ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> > Fetcher failure for URL:
> > 'git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=yocto/standard/common-pc/atom-pc,meta,yocto/pvr;name=machine,meta,pvr'.
> > Please set SRCREV to a valid value
> > 
> > That's a bug, right?
> > 

Yeah, looks like the other SRC_URIs do that, but it's missing from that
SRC_URI - I just pushed a fix for this one to meta-intel/master.

Tom

> > Ross
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
> 
> That's a bug alright.
> It seems the overall SRC_URI of linux-yocto is overwritten by meta-cedartrail layer, when included. Should be fixed by using SRC_URI_cedartrail instead.
> 



