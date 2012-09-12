Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681B2E002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 09:01:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Sep 2012 09:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,410,1344236400"; d="scan'208";a="202288644"
Received: from unknown (HELO helios.localnet) ([10.252.121.198])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2012 09:01:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Sep 2012 17:01:23 +0100
Message-ID: <1391749.2csV02vdze@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CA+gsK-rSTj418hLedGJ8VgdUgrP7=eRqNw5etpb21gBWwGAYkA@mail.gmail.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
	<CA+gsK-rSTj418hLedGJ8VgdUgrP7=eRqNw5etpb21gBWwGAYkA@mail.gmail.com>
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
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
X-List-Received-Date: Wed, 12 Sep 2012 16:01:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 September 2012 08:16:46 Rudolf Streif wrote:
> Thanks, Chris. From what bitbake version on is that command available? The
> bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not
> recognize that command:
> 
> ...
> bitbake: error: no such option -C

That's correct. This has been implemented in master (and will be in the 
upcoming stable release).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

