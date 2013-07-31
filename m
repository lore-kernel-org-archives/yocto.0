Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11D1E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 02:11:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2013 02:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,785,1367996400"; d="scan'208";a="339454962"
Received: from unknown (HELO helios.localnet) ([10.252.122.226])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2013 02:11:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Ertsaas <martiert@gmail.com>
Date: Wed, 31 Jul 2013 10:11:17 +0100
Message-ID: <4482295.q3u6A1t33j@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <51F8BAE8.3090805@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 31 Jul 2013 09:11:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Martin,

On Wednesday 31 July 2013 09:21:12 Martin Ertsaas wrote:
> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"

You should not set THISDIR, it's already set automatically.

> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"

You should have a colon at the end of that value.

I'm not sure if this will fix your problem, though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

