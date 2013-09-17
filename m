Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 557B3E013AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:02:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Sep 2013 01:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,922,1371106800"; d="scan'208";a="404519327"
Received: from unknown (HELO helios.localnet) ([10.252.123.194])
	by orsmga002.jf.intel.com with ESMTP; 17 Sep 2013 02:02:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Tue, 17 Sep 2013 10:02:27 +0100
Message-ID: <16622177.NMr0mASBTi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F898B21@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<4616187.FgK0ETbC70@helios>
	<17797116383D4341B029FDF34C22BF6A5D7F898B21@GUREXMB01.ASIAN.AD.ARICENT.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 09:02:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 September 2013 14:28:36 Rohit2 Jindal wrote:
> The way you mentioned to put option inSRC_URI doesnot work it allows to
> download first repository in SRC_URI and gives error not allowing to
> download Second one. Gives error branch checkout id is not a valid id for
> second src_uri.
> 
> Please suggest me the alternative to handle the same.

Could you please show the SRC_URI lines you are using now? 

Thanks,
Paul

PS Please also keep the discussion on the mailing list, thanks.

-- 

Paul Eggleton
Intel Open Source Technology Centre

