Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7472E0071F
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 05:37:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jul 2013 05:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,692,1367996400"; d="scan'208";a="372351697"
Received: from unknown (HELO helios.localnet) ([10.252.122.61])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2013 05:37:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 18 Jul 2013 13:37:09 +0100
Message-ID: <1994317.voCf2gl0Ax@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAPhnLPDOMPPOb+ZDH4mp4tZWFW_Xp-CZdWQFB=737EYLwXSsdg@mail.gmail.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
	<CAPhnLPDOMPPOb+ZDH4mp4tZWFW_Xp-CZdWQFB=737EYLwXSsdg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Thu, 18 Jul 2013 12:37:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Beth,

On Wednesday 17 July 2013 14:30:27 Flanagan, Elizabeth wrote:
> So, after the oe-core failure last night that was due to how we
> determine when to use the new testimage, this has kind of bumped up
> the need for the autobuilder to start using LAYERVERSION_* as a means
> of determinating major functionality changes.
> 
> In this example, we've essentially broken backwards compatibility for
> oe-core builds on the autobuilder. I put in a quick and dirty patch
> last night just to get it so oe-core sanity will run using the old
> sanity testing framework. I'm working on getting a GetLayerVersion
> buildstep working so we can utilize it both for the new test framework
> as well as to differentiate the toolchain image builds (prior to 2 we
> build meta-toolchain-gmae, post core-image-sato-sdk).

Wouldn't the simplest thing be to just check for the presence of 
meta/classes/testimage.bbclass?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

