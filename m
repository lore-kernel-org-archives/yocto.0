Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C2D0E00858; Tue, 20 Jan 2015 00:44:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 240FBE0083A
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 00:43:51 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2015 00:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,432,1418112000"; d="scan'208";a="672689132"
Received: from jkan1-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.1.52])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2015 00:43:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 20 Jan 2015 08:43:19 +0000
Message-ID: <2608332.CqdSeLLBDo@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9D091@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1501101014070.11943@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E9D091@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: what is the future for package_tar.bbclass?
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
X-List-Received-Date: Tue, 20 Jan 2015 08:44:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 19 January 2015 22:57:37 Rifenbark, Scott M wrote:
> The class is broken and unsupported.  I have updated the docs indicating
> such.

I'm not sure that's true. It's not supported for building images, and it never 
has been. However it can be used for producing tarball packages for individual 
recipes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

