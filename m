Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59E77E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 16:17:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 16 Jul 2013 16:17:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,680,1367996400"; d="scan'208";a="269209432"
Received: from unknown (HELO helios.localnet) ([10.252.122.79])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Jul 2013 16:17:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Wed, 17 Jul 2013 00:17:44 +0100
Message-ID: <14937725.rfmtP9RxhW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
References: <CANwz6nzHiBrXscuZS2Y1xXUThiwyo4AT7bD90VfVsh=Lt_cfLQ@mail.gmail.com>
	<5727572.3nCIyqyF5R@helios>
	<CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: zedboard & gnuradio
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
X-List-Received-Date: Tue, 16 Jul 2013 23:17:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 16 July 2013 13:18:07 Edward Vidal wrote:
> On Tue, Jul 16, 2013 at 11:50 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
> > > ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
> > > from qwt was already stripped, this will prevent future debugging!
> > > ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
> > > stripped, this will prevent future debugging!
> > > ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was
> > > already stripped, this will prevent future debugging!
> > 
> > poky.conf now marks this QA issue as an error instead of a warning in
> > order to pick up on quality issues when running builds. You can either:
> > 
> > a) Fix the recipe so that qwt gets built without stripping its output
> > binaries, or
> > 
> > b) set your own value for ERROR_QA and WARN_QA so that "already-stripped"
> > appears in WARN_QA rather than ERROR_QA
>
> I opted for options b.)  modifying
> /home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/distro/poky.conf
> mvoing already-stripped from  ERROR_QA to WARN_QA .
> Build is currently in progress.
> My question will option a.)  need to be done to prevent this from occurring
> in future releases.

The recipe in question is part of meta-oe and thus is maintained by 
OpenEmbedded rather than the Yocto Project, so ultimately someone in the 
OpenEmbedded community should fix it, yes. Fixing "already stripped" issues 
usually isn't too hard, it just depends on how the software in question is 
being built.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

