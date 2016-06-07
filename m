Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BB25E00C97; Tue,  7 Jun 2016 13:48:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB04E00C81
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 13:47:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 07 Jun 2016 13:47:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,435,1459839600"; d="scan'208";a="993008487"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by orsmga002.jf.intel.com with ESMTP; 07 Jun 2016 13:47:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Wingate <edwingate8@gmail.com>
Date: Wed, 08 Jun 2016 08:47:54 +1200
Message-ID: <1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAGMdoFkJa_K26VhOK4DDnqpwPG3+a+5mT+Z5BQqmpauAjtKr=w@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFkJa_K26VhOK4DDnqpwPG3+a+5mT+Z5BQqmpauAjtKr=w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 20:48:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 07 Jun 2016 08:57:24 Edward Wingate wrote:
> On Tue, Jun 7, 2016 at 3:20 AM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > Let's clarify that for the benefit of others reading along - you
> > absolutely
> > *can* have multiple bbappends per recipe. To answer the original question
> > though, no you cannot have bbappends conditionally applied based on what
> > image is being built - you cannot have other recipes built differently
> > based on the image being built *period*. Other than what gets shared via
> > the sysroot, recipes are largely independent of eachother, and that's by
> > design.
>
> Thank you, I will abandon that line of inquiry.
> 
> So I now have recipes that attempt to overwrite inittab with their own
> custom version.  These individual recipes are included in different
> images and have DEPENDS += " sysvinit-inittab" in them.  However, the
> resulting image still has the original inittab from sysvinit-inittab
> recipe, not the custom inittab in my new recipes.
> 
> My recipes look like this now:
> 
> LICENSE = "BSD"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=9bea9267288f79f074b2e000d3cf6412"
> SRC_URI = "file://LICENSE file://inittab-imageX"
> S = "${WORKDIR}"
> DEPENDS += " sysvinit-inittab"
> 
> FILES_${PN} = "/etc/inittab"
> 
> do_install () {
>     install -d ${D}${sysconfdir}
>     install -m 0644 -D ${S}/inittab-imageX ${D}${sysconfdir}/inittab
> }
> 
> Is there something more I'm missing?  Thanks.

So what this will give you is alternative packages to be installed instead of 
sysvinit-inittab in your image. Have you verified (by way of the image 
manifest written next to the image file) that this package is actually being 
installed? What steps have you taken to ensure that it does get installed in 
preference to sysvinit-inittab?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

