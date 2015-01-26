Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 180CEE0076F; Mon, 26 Jan 2015 02:48:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1847BE003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 02:48:33 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 26 Jan 2015 02:42:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,468,1418112000"; d="scan'208";a="517590333"
Received: from jcarrol-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.23])
	by orsmga003.jf.intel.com with ESMTP; 26 Jan 2015 02:41:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mahdi Saadat <MahdiS@nimakco.net>
Date: Mon, 26 Jan 2015 10:48:27 +0000
Message-ID: <3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
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
X-List-Received-Date: Mon, 26 Jan 2015 10:48:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mahdi,

On Saturday 24 January 2015 11:05:45 Mahdi Saadat wrote:
> Does anyone knows about how put dansguardian on core-image-minimal?
> I Did some steps on creating the recipe but had some errors on config stage.

You'll need to be a bit more specific about the errors you received before 
anyone will be able to help.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

