Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49384E013BB
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 12:58:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2012 12:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="143866100"
Received: from unknown (HELO [10.255.12.76]) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2012 12:57:46 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FB1333E.6000509@linux.intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
	<c8205ee5bb6bd7938dcd1868f26953ec2759a966.1336851382.git.tom.zanussi@intel.com>
	<4FB1333E.6000509@linux.intel.com>
Date: Mon, 14 May 2012 14:57:32 -0500
Message-ID: <1337025452.3850.10.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 09/22] meta/jasperforest: factor out policy-related options
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
X-List-Received-Date: Mon, 14 May 2012 19:58:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-05-14 at 09:30 -0700, Darren Hart wrote:
> 
> On 05/12/2012 12:41 PM, tom.zanussi@intel.com wrote:
> 
> >  include features/usb/ehci-hcd.scc
> > -include features/usb/ohci-hcd.scc
> > -include features/usb/uhci-hcd.scc
> 
> Jasper forest is EHCI only?
> 
> 

Yes, it only has two EHCI controllers.  Anyway, all of these features
are inherited from common-pc-64, so if anything, the thing to do would
be to remove ehci here.

Tom




