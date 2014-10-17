Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B12E007B9; Fri, 17 Oct 2014 08:06:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83728E0078E
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 08:06:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2014 08:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,739,1406617200"; d="scan'208";a="616131476"
Received: from pwarusav-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.1])
	by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2014 08:05:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Neuer User <auslands-kv@gmx.de>
Date: Fri, 17 Oct 2014 16:05:42 +0100
Message-ID: <2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.4-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <m1rb0r$ucm$1@ger.gmane.org>
References: <m1qpbo$lsa$1@ger.gmane.org>
	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Fri, 17 Oct 2014 15:06:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 17 October 2014 17:01:46 Neuer User wrote:
> Am 17.10.2014 um 16:51 schrieb Paul Eggleton:
> > Hi there,
> > 
> > I agree this sort of thing shouldn't happen on a stable branch. I'm not
> > sure what would have caused such a problem though. However, above you are
> > looking under tmp/work, but the file being present under there doesn't
> > really say much - the key question is is it still in the sysroot i.e.
> > tmp/sysroots/* ? The first thing to figure out is if the file is really
> > missing, or if it is now simply not looking for it in the right location.
> > 
> > Cheers,
> > Paul
> 
> Very good point.
> 
> $ find tmp/sysroots/ -name "Python.h"
> tmp/sysroots/i686-linux/usr/include/python2.7/Python.h
> tmp/sysroots/i686-linux/usr/include/python3.3m/Python.h
> tmp/sysroots/cubox-i/usr/include/python2.7/Python.h
> tmp/sysroots/cubox-i/usr/include/python3.3m/Python.h
> 
> So, it seems to be there, if I see that correctly. The question then
> seems to be, why it is no longer found?

I'm not sure. That's where you'd need to look at how the software your recipe 
is building searches for that - the configure log, devshell might be useful for 
determining that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

