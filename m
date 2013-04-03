Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5A2E0151D
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 00:58:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2013 00:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="311583378"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 00:58:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>, yocto@yoctoproject.org
Date: Wed, 03 Apr 2013 08:58:13 +0100
Message-ID: <1806884.N0BHJJRgku@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CA+Z6RkUCNAaR_BTCmHQEGcNcAssuyJ6Kg7Rqp5vOwGpmuyUNzw@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<1B03475D-B706-43D2-A25F-DCB9B0DAF68F@gmail.com>
	<CA+Z6RkUCNAaR_BTCmHQEGcNcAssuyJ6Kg7Rqp5vOwGpmuyUNzw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: SDK creation
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
X-List-Received-Date: Wed, 03 Apr 2013 07:58:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 15 March 2013 14:12:45 Navani Srivastava wrote:
> I tried giving
> PREFERRED_PROVIDER_qt4_embedded ?= "4.8.1"
> 
> in machine configuration file but it didn't helped..
> Any suggestions?

This should be PREFERRED_VERSION_qt4-embedded = "4.8.1"
(note VERSION not PROVIDER, qt4-embedded not qt4_embedded, and = not ?= )

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

