Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6AEEE006C2
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 07:57:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Mar 2013 07:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="273016835"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by azsmga001.ch.intel.com with ESMTP; 19 Mar 2013 07:57:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Florin Cristian Dan <dan.florincristian@gmail.com>, yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 14:57:25 +0000
Message-ID: <2307196.6NslAs12Xo@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CABzOdpQ0H0oBe7bFFwc03ff9nx=BtOXbpyy032iXwpTe2vSbaA@mail.gmail.com>
References: <CABzOdpQ0H0oBe7bFFwc03ff9nx=BtOXbpyy032iXwpTe2vSbaA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Yocto Java support.
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
X-List-Received-Date: Tue, 19 Mar 2013 14:57:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 19 March 2013 09:58:43 Florin Cristian Dan wrote:
> Ok, so in the last days, i've managest to bake my own sato-emenlow image,
> and runed it on my machine wich is a PEB2739 (Intel Atom Z510 based).I'm
> intrested now in developing some industrial applications, like different
> types of masurement gauges.  Now i wonder if yocto project has suport for
> java and how its done, as far as i am, i'have read that there would some
> meta-java layer, but i'm not sure what to do further, where to get it, and
> how the development proces would go.

The meta-java layer maintained by the OE community is here:

  https://github.com/woglinde/meta-java

You can find other layers in the OE / Yocto Project ecosystem here:

  http://www.openembedded.org/wiki/LayerIndex

For information on how to add the layer to your configuration, see the
manual:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#enabling-your-layer

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

