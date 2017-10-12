Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A783E00CC6; Thu, 12 Oct 2017 01:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2391E00CB6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 01:20:50 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Oct 2017 01:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,365,1503385200"; d="scan'208";a="909205937"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Oct 2017 01:20:48 -0700
Date: Thu, 12 Oct 2017 11:19:18 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Message-ID: <20171012081917.GA8819@mbabyjoh-desk.ger.corp.intel.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
	<CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
	<1507717126.9509.29.camel@collabora.co.uk>
	<20171011113731.GA35471@mbabyjoh-desk.ger.corp.intel.com>
	<1507744126.9509.35.camel@collabora.co.uk>
MIME-Version: 1.0
In-Reply-To: <1507744126.9509.35.camel@collabora.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Thu, 12 Oct 2017 08:20:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Fabien,

Good to know that it helps here.

On Wed, Oct 11, 2017 at 07:48:46PM +0200, Fabien Lahoudere wrote:
> Maxin,
> 
> Is this patch submitted or applied for next release?

Submitted the patch to oe-core mailing list today:
http://lists.openembedded.org/pipermail/openembedded-core/2017-October/143288.html

> Thanks
> On Wed, 2017-10-11 at 14:37 +0300, Maxin B. John wrote:
> > Hi Fabien,
> > 
> > On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote:
> > > > I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS implies build time
> > > > dependencies (e.g. libraries) while RDEPENDS actually gets the component installed as a
> > > > runtime
> > > > dependency.
> > > > 
> > > Thanks Henrik
> > > I tried to add RDEPENDS too without success. The problem is that users and groups are not
> > > installed
> > > IIUC.
> > 
> > Could you apply this patch and see if it helps here ?
> > 
> > Best Regards,
> > Maxin
> -- 
> Fabien

Thanks and Regards,
Maxin

