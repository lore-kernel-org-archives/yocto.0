Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB8F2E00A26; Wed,  3 Jun 2015 01:52:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B38D1E009E5
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 01:52:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 03 Jun 2015 01:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,546,1427785200"; d="scan'208";a="719895913"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.4.158])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2015 01:52:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Date: Wed, 03 Jun 2015 09:52:24 +0100
Message-ID: <2307123.SRrdZ8krDi@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D8AB022@SESTOEX04.enea.se>
References: <DDB0C57E45663A458C5CACB7B5688BC21D8AAC26@SESTOEX04.enea.se>
	<1934442.fZaNR3y9Jt@peggleto-mobl.ger.corp.intel.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D8AB022@SESTOEX04.enea.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Smart package manager problems
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
X-List-Received-Date: Wed, 03 Jun 2015 08:52:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

I think you may be overstating the issue - I'm convinced the warnings are 
harmless. As I said before, it's likely these warnings have been present for a 
long time, the only recent change is we are now exposing them - the quickest 
fix would be to stop doing that.

However, if you'd like to dig into the smart code and fix the underlying issue, 
you're more than welcome.

Cheers,
Paul

On Wednesday 03 June 2015 08:42:13 Alexandru Vaduva wrote:
> Thanks Paul,
> 
> I will do that, but the smart package manager cannot be used as a rootfs
> package. The fact that is does not correctly identify which of the
> dependencies are already installed could cause further problems.
> 
> 
> Alex
> 
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, June 03, 2015 10:46 AM
> To: Alexandru Vaduva
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Smart package manager problems
> 
> Hi Alex,
> 
> On Tuesday 02 June 2015 15:50:20 Alexandru Vaduva wrote:
> > I experiences a problem related to smart package manager that I wanted
> > to discuss with you. I was interested in your feedback, knowledge of
> > this and maybe advices on how should we proceed further.
> > 
> > The bug I experienced can be duplicated with the information available
> > in the "patch-info.txt" file attached to this email. I also attached
> > the log of the error for easier read in the "image-build-info.txt" file.
> > 
> > After some careful investigation I discovered that the problem is
> > caused by the smart package manager, after the install_complementary
> > function call when it in fact tries to call smart with "install --attempt
> > -y" arguments. It is not able to see the fact that those packages were
> > already
> > installed and tries to do it again. This error behavior might also be
> > related to the problems mentioned here:
> > https://www.mail-archive.com/yocto@yoctoproject.org/msg24279.html
> > and https://bugs.launchpad.net/smart/+bug/1238492
> 
> Would you mind filing a bug in the Yocto Project bugzilla to cover this? I
> think the likely solution will be just to whitelist the warnings.
> 
> Cheers,
> Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

