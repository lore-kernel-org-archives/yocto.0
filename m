Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3CBBE01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 04:21:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Sep 2013 04:21:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,984,1371106800"; d="scan'208";a="365843969"
Received: from unknown (HELO helios.localnet) ([10.252.120.50])
	by azsmga001.ch.intel.com with ESMTP; 26 Sep 2013 04:21:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Date: Thu, 26 Sep 2013 12:21:08 +0100
Message-ID: <22264128.DeSXXAuuCi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <OF11396AF9.CF08F2EF-ONC1257BF2.003B92E0-C1257BF2.003C5B4D@retarus.de>
References: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
	<2330193.rVqRLtpaqy@helios>
	<OF11396AF9.CF08F2EF-ONC1257BF2.003B92E0-C1257BF2.003C5B4D@retarus.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Antwort: Re: Antwort: Re: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Thu, 26 Sep 2013 11:21:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Felix,

On Thursday 26 September 2013 12:59:24 Felix01 Fischer wrote:
> Is it possible to refer to a whole BSP?
> For example, like the cronwbay.conf requires tune-atom.inc.
> I would like to require the whole meta-crownbay BSP layer.
> I tried this the naive way with a custom "/conf/machine/$MACHINE.conf and
> added
> "require xxxxx/meta-crownbay/conf/machine/crownbay.conf" but that didn't
> worked.

This should work though:

require conf/machine/crownbay.conf

(Since "require" searches for files using BBPATH which will point to the base 
of each layer).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

