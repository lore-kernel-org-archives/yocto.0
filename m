Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02403E00B63; Mon, 19 Jun 2017 06:07:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A5EE00B63
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 06:07:57 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jun 2017 06:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,361,1493708400"; d="scan'208";a="982590325"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga003.jf.intel.com with ESMTP; 19 Jun 2017 06:07:56 -0700
Date: Mon, 19 Jun 2017 16:06:53 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Pawar, Alok" <Alok.Pawar3@harman.com>
Message-ID: <20170619130653.GA12563@mbabyjoh-desk.ger.corp.intel.com>
References: <2ea62f0ed3fc4c94960c6ac199d94061@HIBDWSMB03.ad.harman.com>
MIME-Version: 1.0
In-Reply-To: <2ea62f0ed3fc4c94960c6ac199d94061@HIBDWSMB03.ad.harman.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Openjdk-8 fetcher failure
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
X-List-Received-Date: Mon, 19 Jun 2017 13:08:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alok,

On Mon, Jun 19, 2017 at 06:11:20AM +0000, Pawar, Alok wrote:
> 
>Hi All,
>
> I am using yocto 2.1.2 krogoth, and I added meta-java in it, but when I tried to bitbake. I faced fetcher failure, following are the Error :
>
>ERROR: openjdk-8-102b14-r0 do_fetch: Fetcher failure: Fetch command failed with exit code 4, output:
>
>  Read error (Connection timed out) in headers.
>
>  Read error (Connection timed out) in headers.
>
>ERROR: openjdk-8-102b14-r0 do_fetch: Function failed: Fetcher failure for URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.tar.bz2;name=hotspot;unpack=false'. Unable to fetch URL from any source.
>
>Please give your inputs.

This could be related to the network configuration in your build machine.

Have you tried to fetch that file manually using wget from your machine ?
ie:
# wget http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.tar.bz2


Best Regards,
Maxin

