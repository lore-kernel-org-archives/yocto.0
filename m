Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5390AE0049F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 05:40:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Sep 2012 05:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,435,1344236400"; d="scan'208";a="193605424"
Received: from unknown (HELO helios.localnet) ([10.252.121.231])
	by azsmga001.ch.intel.com with ESMTP; 17 Sep 2012 05:39:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Date: Mon, 17 Sep 2012 13:39:52 +0100
Message-ID: <10140530.yfykbKl0dX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CANmVirgOc_q2oedDxnCQBqgP+-t8=DdFT_nhTGjbAh=9iZZhaA@mail.gmail.com>
References: <CANmVirgOc_q2oedDxnCQBqgP+-t8=DdFT_nhTGjbAh=9iZZhaA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake for list packages
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
X-List-Received-Date: Mon, 17 Sep 2012 12:40:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 17 September 2012 09:37:13 Raul Rosetto Munoz wrote:
> I know that habe a bitbake command that list all packages.

Do you mean list all recipes? If so, one of the following may be helpful:

  bitbake -s 

  bitbake-layers show-recipes

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

