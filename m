Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43E0AE00950; Tue, 27 Jan 2015 04:25:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E1A5E0094C
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:25:00 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 27 Jan 2015 04:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="657282965"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2015 04:24:58 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mahdi Saadat <MahdiS@nimakco.net>
Date: Tue, 27 Jan 2015 12:24:58 +0000
Message-ID: <1644867.RvSMSTFBCo@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <00d201d03a2b$c11ad3f0$43507bd0$@nimakco.net>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
	<00d201d03a2b$c11ad3f0$43507bd0$@nimakco.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: dansguardian
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
X-List-Received-Date: Tue, 27 Jan 2015 12:25:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 January 2015 15:51:12 Mahdi Saadat wrote:
> After I add "inherit autotools gettext pkgconfig" on .bb file the error is :
> /usr/bin/install: cannot stat 'transparent1x1.gif': No such file or
> directory
> Attached file is the do install log

This is something specific to dansguardian's "make install", you'll need to 
investigate yourself why that file is not where the makefile expects it to be.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

