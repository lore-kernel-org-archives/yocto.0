Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B42E008A6; Tue,  3 Feb 2015 01:41:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CCD8E0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 01:41:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Feb 2015 01:41:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,511,1418112000"; d="scan'208";a="671942093"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.17.39])
	by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2015 01:40:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: ChenQi <Qi.Chen@windriver.com>
Date: Tue, 03 Feb 2015 09:40:50 +0000
Message-ID: <2124522.oJWk0JzxCo@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54D02A1A.6030702@windriver.com>
References: <54CFA6DA.60103@mlbassoc.com>
	<3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
	<54D02A1A.6030702@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: bitbake-whatchanged error
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
X-List-Received-Date: Tue, 03 Feb 2015 09:41:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 February 2015 09:53:30 ChenQi wrote:
> On 02/03/2015 02:40 AM, Paul Eggleton wrote:
> > On Monday 02 February 2015 09:33:30 Gary Thomas wrote:
> >> Every time I run the 'bitbake-whatchanged' script, I get an
> >> 
> >> error like this:
> >>     ERROR: Bitbake's cached basehash does not match the one we just
> >>     generated
> >> 
> >> (/home/local/poky-cutting-edge/meta-imx6/packages/images/imx6-demo-image.
> >> bb
> >> .do_rootfs)! ERROR: The mismatched hashes were
> >> e48dfde9772b0a567b5327087c9e2d44 and 3c3447f08ef4da61b814bff5fb909bff
> >> 
> >> What causes this and should I be worried?  Does it affect
> >> the actual results which are shown?
> > 
> > I don't think you should necessarily be worried, but this is definitely a
> > bug and we should fix it. It affects bitbake -S printdiff as well. If you
> > have a chance it would be great if you could file a bug about it.
> > 
> > Thanks,
> > Paul
> 
> I've sent a patch to OE-core mailing list to fix this problem.
> The title is:
> image.bbclass: don't let do_rootfs depend on BUILDNAME

Great. Thank you!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

