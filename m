Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAD8E008EE; Mon, 29 Feb 2016 11:52:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71629E00851
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 11:52:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 29 Feb 2016 11:52:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,521,1449561600"; d="scan'208";a="923684841"
Received: from tnaray1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.193])
	by orsmga002.jf.intel.com with ESMTP; 29 Feb 2016 11:52:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Date: Tue, 01 Mar 2016 08:52:08 +1300
Message-ID: <3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.2-301.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <D2F9DB3A.7513C%belen.barros.pena@intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3845777.DZXZ3IeRVd@peggleto-mobl.ger.corp.intel.com>
	<D2F9DB3A.7513C%belen.barros.pena@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 19:52:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:
> On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of Paul
> Eggleton" <yocto-bounces@yoctoproject.org on behalf of
> paul.eggleton@linux.intel.com> wrote:
> >There isn't a frontend UI for wic that I am aware of though - as I
> >mentioned earlier image-writer has no support for it, it's just doing a
> >straight dd to the device.
> 
> We would really like to add support for wic at some point.
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=8769

True, but that's a slightly different usage of wic - i.e. preparing the 
formatted image, which we should support. However, writing a formatted image 
to an SD card / USB stick isn't something you could practically do from a web-
based application I don't think - not without help from a local application at 
any rate.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

