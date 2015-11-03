Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D60A0E00B9A; Tue,  3 Nov 2015 06:21:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C120E00AB5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:21:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 03 Nov 2015 06:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,239,1444719600"; d="scan'208";a="810669812"
Received: from bcrawfor-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.26.120])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2015 06:21:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Tue, 03 Nov 2015 14:21:35 +0000
Message-ID: <2549250.gePibbIndn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <BN3PR0501MB1090B21718BCC23F3350B08EBB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB1090167F43DDD94ECB562845BB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<20151102203219.GB28051@jama>
	<BN3PR0501MB1090B21718BCC23F3350B08EBB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
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
X-List-Received-Date: Tue, 03 Nov 2015 14:21:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 November 2015 21:55:01 Bryan Evenson wrote:
> Martin,
> 
> > -----Original Message-----
> > From: Martin Jansa [mailto:martin.jansa@gmail.com]
> > Sent: Monday, November 02, 2015 3:32 PM
> > To: Bryan Evenson <bevenson@melinkcorp.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware
> > upgrades
> > 
> > On Mon, Nov 02, 2015 at 05:13:48PM +0000, Bryan Evenson wrote:
> > > All,
> > > 
> > > I'm on poky/dizzy-1.7.2 and I've been using COPY_LIC_DIRS and
> > 
> > COPY_LIC_MANIFEST to include the license text on my image.  I noticed
> > something about the way it operates and I'm wondering if it's a problem
> > when it comes to Free and Open Source Software compliance.
> > 
> > > If I build an image with COPY_LIC_MANIFEST and COPY_LIC_DIRS both set
> > 
> > to 1, then the image is generated with the directory /usr/share/common-
> > licenses that include all the licenses for all the packages in the image. 
> > There is also /usr/share/common-licenses/license.manifest which
> > summarizes all the licenses in the directory.  Let's call this starting
> > point image version A.> 
> > > Later on in development I add package "foo-extra" to the image.  I add
> > 
> > "foo-extra" to the RDEPENDS list for package "foo" which now needs the
> > new package for proper operation.  The built image now includes in
> > /usr/share/common-licenses/foo-extra the license for the new package.
> > We'll call this image version B.
> > 
> > > If I ship a product that was burned with image verison A then it has all
> > > the> 
> > licenses for all the packages that were installed in the image.  Likewise,
> > if I ship a product that was burned with image version B then it has all
> > the licenses for all the packages that were installed in the image. 
> > However, if a product ships with image version A and then is upgraded to
> > image version B then package "foo-extra" is installed due to dependencies
> > but the license for "foo-extra" is not included in the upgrade.  The
> > /usr/share/common-licenses directory is not tied to any package, so
> > firmware upgrade does not add, modify or remove any of the licenses in
> > /usr/share/common-licenses.> 
> > > Is this a problem when it comes to FOSS compliance?  If so, is there a
> > 
> > suggested way of including the new licenses for firmware upgrades?
> > 
> > You can also enable LICENSE_CREATE_PACKAGE which should create <pkg>-
> > lic packages rrecommended from <pkg> so they should get installed together
> > with image upgrade, see:
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3743
> 
> Thanks for the information, I'll give this a try.  I noticed I don't see any
> reference to LICENSE_CREATE_PACKAGE in the Yocto documentation.  Should I
> add a bug in Bugzilla to add documentation for this variable?

Yes please.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

