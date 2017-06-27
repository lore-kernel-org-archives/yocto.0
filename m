Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2DD5E00BD6; Tue, 27 Jun 2017 08:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09516E00BCC
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 08:38:17 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 27 Jun 2017 08:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,401,1493708400"; d="scan'208";a="101955502"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga004.jf.intel.com with ESMTP; 27 Jun 2017 08:38:16 -0700
Message-ID: <1498578455.31575.104.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Date: Tue, 27 Jun 2017 10:47:35 -0500
In-Reply-To: <505eb7f8-c2d5-c602-a668-e9c26b8b4625@embexus.com>
References: <CAGAEfx6hh-KRRJXKUdgaOpFXcwHTR5FC2TienxRfCBKQadtuvw@mail.gmail.com>
	<CAGAEfx5V=MUNswTy7UoqtZT49AnwxdPqyBUje6i1N8+FYUcrPQ@mail.gmail.com>
	<CAGAEfx7sAmi03pQWBuzLkVQ+nDeRvHxzwR+F7WZ5Zx_Dv-NZKw@mail.gmail.com>
	<CAGAEfx7M2V2SkMU5tYaiSEEpBe9a0z16JoXBv0GVit8LxgDncQ@mail.gmail.com>
	<505eb7f8-c2d5-c602-a668-e9c26b8b4625@embexus.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Optimization query
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
X-List-Received-Date: Tue, 27 Jun 2017 15:38:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-06-27 at 17:19 +0200, Ayoub Zaki wrote:
> Hi Prasoon,
> 
> I wrote a Howto on reducing start-up time in yocto :
> 
> https://embexus.com/2017/05/16/embedded-linux-fast-boot-techniques/
> 
> Maybe you can some useful informations on the topic.
> 
> 
> 
> On 27.06.2017 08:09, Prasoon Kumar wrote:
> 
> > Hi, 
> > 
> > 
> > I am trying to optimise the boot time in yocto. I need some
> > suggestions on how to optimise the boot time and different ways of
> > doing it.
> > 

This is a hard topic because there are many approaches, but the first
task to do is to measure current boot. In the past, I have found this
page and its links quite useful:

http://elinux.org/Boot_Time

> > 
> > Thanks
> > Prasoon
> > 
> > 
> Cheers, 
> -- 
> 
> Ayoub Zaki
> 
> ayoub.zaki@embexus.com
> Mobile: +49(0)176-62901545
> Skype: ayoub.zaki_2
> https://embexus.com
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



