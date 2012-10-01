Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D99FEE01304
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 01:01:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Oct 2012 01:00:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,514,1344236400"; d="scan'208";a="228958891"
Received: from unknown (HELO helios.localnet) ([10.252.122.23])
	by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2012 01:00:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 01 Oct 2012 09:00:12 +0100
Message-ID: <2929338.Cetim2KrZW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A6A28ED@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1716058.TZM8ukYCTx@helios>
	<70CC66F5C30A414DADDA6973E4CA391A6A28ED@039-SN1MPN1-001.039d.mgd.msft.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Oct 2012 08:01:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 24 September 2012 19:03:57 McClintock Matthew-B29882 wrote:
> CentOS release 5.8 (Final)

OK, so do we keep 5.6 / 5.7 or remove them in favour of 5.8?

> Fedora release 13 (Goddard)

I think this is probably too old for us to be declaring support for, since it 
has been unsupported upstream for some time now.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

