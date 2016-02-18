Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED8D9E00BF8; Wed, 17 Feb 2016 17:52:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6F5E00BEB
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 17:52:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 17 Feb 2016 17:52:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,463,1449561600"; d="scan'208";a="888261967"
Received: from wangzhiy-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.75])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2016 17:52:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Gloff <mgloff@emacinc.com>
Date: Thu, 18 Feb 2016 14:52:40 +1300
Message-ID: <2664449.evFU7oFL41@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.16; x86_64; ;
	)
In-Reply-To: <CALXw4G44V9n_+jVHNhdvdj1h0+365p4HEmJi0O=nsA=fTrBrEw@mail.gmail.com>
References: <CALXw4G6C3AFm9FLEaKSF6nrxwKU59v4r-yX3zCTwRKTWPPbTLg@mail.gmail.com>
	<CALXw4G44V9n_+jVHNhdvdj1h0+365p4HEmJi0O=nsA=fTrBrEw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Qtbase Poky/Jethro
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
X-List-Received-Date: Thu, 18 Feb 2016 01:52:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sat, 06 Feb 2016 14:28:47 Michael Gloff wrote:
> Does anyone have any insite as to why Qt5 does not compile against OE core
> fido branch?
> 
> A more recent pull of OE core master now fails building qtbase at
> do_populate_sysroot with:
> 
> ERROR: QA Issue: Qt5OpenGLExtensions.pc failed sanity test (tmpdir) in path
> /home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-a
> lpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
> [pkgconfig]

This is due to a fix in the QA check in recent master. FYI, Martin just sent a 
meta-qt5 patch for this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

