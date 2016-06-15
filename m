Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B00E00D35; Wed, 15 Jun 2016 13:29:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBF5E00D31
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:29:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jun 2016 13:29:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,477,1459839600"; d="scan'208";a="998428470"
Received: from ctan86-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.217])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2016 13:29:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Date: Thu, 16 Jun 2016 08:29:05 +1200
Message-ID: <2437618.ZGTpyCUF7t@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <57616B51.7070001@nokia.com>
References: <57616B51.7070001@nokia.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Additional layers with class and conf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:29:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 15 Jun 2016 16:50:57 Woronicz, Bartosz wrote:
> I got two layers, meta-x and meta-y , meta-x got meta-y in
> bblayers.conf.   in meta-y contains conf/layer.conf with BBPATH .=
> ":${LAYERDIR}", plus classes/my.bbclass plus local.conf containing
> INHERIT += "my"

Do you mean you put local.conf in a conf subdirectory of a layer? If so,
that's not really expected to work.

> when I ran bitbake -e my-image, the INHERIT doesn't seem to contain "my"
> 
> When I put it directly in layer.conf it works, but what to add to
> layer.conf to make bitbake to look for other *.conf files in meta-y/conf/ ??

You don't, at least not in that way. The correct way to do things like this is
to create a custom distro and then set DISTRO to point to it. Your distro conf 
file can then set these kinds of things.

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creating-your-own-distribution

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

