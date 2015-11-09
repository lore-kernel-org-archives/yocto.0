Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14624E005BB; Mon,  9 Nov 2015 08:17:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5F6E0059B
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 08:17:39 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 09 Nov 2015 08:17:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,266,1444719600"; d="scan'208";a="846791531"
Received: from pdelcroi-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.3.221])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2015 08:17:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Date: Mon, 09 Nov 2015 16:17:34 +0000
Message-ID: <4496448.WdMJ1LFoxN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <5640C5B2.7010809@linux.intel.com>
References: <563B4DF9.5030206@mlbassoc.com> <563B66D9.1050808@mlbassoc.com>
	<5640C5B2.7010809@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Python pip
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
X-List-Received-Date: Mon, 09 Nov 2015 16:17:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 09 November 2015 10:11:30 Alejandro Hernandez wrote:
> On 05/11/15 08:25, Gary Thomas wrote:
> > On 2015-11-05 07:14, Paul Eggleton wrote:
> >> Hi Gary,
> >> 
> >> On Thursday 05 November 2015 05:39:21 Gary Thomas wrote:
> >>> Just curious, does anyone know why OE-core has python3-pip
> >>> but python-pip is relegated to meta-oe?
> >> 
> >> I think it has to do with pip being supplied as part of the standard
> >> python 3
> >> distribution from 3.4 onwards. I think for simplicity's sake it might be
> >> argued that python-pip could be in the same place though.
> 
> Yes, in fact, python3-pip was included on oe-core after the upgrade to
> python3.4 since it's now a requirement, I agree, we probably should
> include python-pip on oe-core too
> 
> > Thanks, I'll consider sending a patch set for that.
> > 
> > Sadly, at this point, both packages can't be installed at the
> > same time as they both call the result "/usr/bin/pip".  Maybe
> > in keeping with the python/python3 naming, the python3 version
> > should be installed as pip3?
> 
> python3-pip recipe had to be created to avoid an issue with the default
> pip installation by python3.4, its now handled by distutils3, if its
> only a matter of changing the binary name afterwards from pip to pip3 I
> see no problem doing this, I am hoping this solves it, but just
> mentioning that we already had some issues with this, because of the
> "defaults" python3 expects

My question would be would renaming it to "pip3" be consistent with how this 
situation is handled on mainstream distributions?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

