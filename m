Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7597E009C3; Thu,  3 Mar 2016 00:51:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E865AE00851
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 00:51:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2016 00:51:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,531,1449561600"; d="scan'208";a="900155267"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2016 00:51:18 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 9B08B2C8001;
	Thu,  3 Mar 2016 01:39:05 -0800 (PST)
Date: Thu, 3 Mar 2016 08:41:43 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Message-ID: <20160303064143.GA24635@linux.intel.com>
References: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
	<20160302064735.GA21419@linux.intel.com>
	<1620646557.248461.5e7b6350-4729-4603-9492-6e71d7843891.open-xchange@poczta.nazwa.pl>
MIME-Version: 1.0
In-Reply-To: <1620646557.248461.5e7b6350-4729-4603-9492-6e71d7843891.open-xchange@poczta.nazwa.pl>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: [wic] Creating sdimage-bootpart
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Mar 2016 08:51:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Mar 02, 2016 at 09:29:16PM +0100, Maciej Borzecki wrote:
> 
> > Dnia 2 marzec 2016 o 07:47 Ed Bartosh <ed.bartosh@linux.intel.com> napisał(a):
> >
> >
> > Hi Rudolf,
> >
> > Interesting. I thought that this commit shoud fix the issue:
> > http://cgit.openembedded.org/openembedded-core/commit/?id=264c03e854f77c3b62acb710384f66716ccbf469
> >
> > Which branch do you use?
> >


> Ed, would it make sense to backport this commit to jethro?
I don't think if makes sense for 2 reasons:
- this issue is rare and there is a work around it
- backporting it is not easy as it relates to wks parser, which has been
  rewritten from scratch after jethro.

--
Regards,
Ed

