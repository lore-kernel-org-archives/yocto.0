Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C2FFE00858; Tue, 31 Mar 2015 05:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E98E007A0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 05:55:35 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 31 Mar 2015 05:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,501,1422950400"; d="scan'208";a="474900549"
Received: from sdcrawle-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.13.186])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2015 05:55:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>
Date: Tue, 31 Mar 2015 13:55:19 +0100
Message-ID: <4201432.WeqmRgpN50@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAJTo0LbwdyuYAV3NF0u8iuignk3OVipsBMmoMfVGdqOf-P38UQ@mail.gmail.com>
References: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
	<CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
	<CAJTo0LbwdyuYAV3NF0u8iuignk3OVipsBMmoMfVGdqOf-P38UQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Tue, 31 Mar 2015 12:55:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 31 March 2015 12:43:33 Burton, Ross wrote:
> On 31 March 2015 at 12:38, Flanagan, Elizabeth <elizabeth.flanagan@intel.com>
> wrote:
> > On 28 March 2015 at 04:23, Paul Eggleton <paul.eggleton@linux.intel.com>
> > wrote:
> > > Which doc building? Our manuals or docs as part of recipes? Can you give
> > > an example of a failure?
> > 
> > yocto-docs. On an Ubuntu based system I was having issues building
> > them because xsltproc wasn't installed during the normal system
> > install. I'm not sure if other can verify that, but I tried it on two
> > of my systems with the same results (Mint 17.1 Rebecca).
> 
> Building the documentation from scratch isn't a normal thing for a user to
> do, so I wouldn't add xsltproc to the list of build essential packages for
> builds.
> 
> It should be documented along with the other dependencies in the
> instructions for building the documentation of course.

Right, this is what I was getting at. Packages required for building 
documentation are listed in the ref manual, and xsltproc is already on that 
list for Ubuntu.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

