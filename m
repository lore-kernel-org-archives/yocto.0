Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95518E00B87; Thu, 22 May 2014 05:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFD77E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 05:34:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 May 2014 05:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,887,1392192000"; d="scan'208";a="543323064"
Received: from mcomyns-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.122])
	by fmsmga002.fm.intel.com with ESMTP; 22 May 2014 05:34:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Date: Thu, 22 May 2014 13:34:27 +0100
Message-ID: <1560241.kjtZFe1g9j@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <1400761572.79188.YahooMailNeo@web122505.mail.ne1.yahoo.com>
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<8100724.KhZTyC37g9@peggleto-mobl5.ger.corp.intel.com>
	<1400761572.79188.YahooMailNeo@web122505.mail.ne1.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 12:34:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 May 2014 05:26:12 Alexandru Vaduva wrote:
> On Thursday, May 22, 2014 3:19 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 22 May 2014 03:31:05 Alexandru Vaduva wrote:
> > > Does anyone has any input on the next bug:
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203
> > 
> > We discussed on IRC looking at the dependency graphs from buildhistory to
> > determine how the package is being brought in - so what did you find there?
>
> I do not have a conclusion from buildhistory, but maybe I do not
> know for what to look.

I would expect somewhere "-> perl-ptest" to appear in the depends.dot file for 
the image.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

