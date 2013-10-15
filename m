Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5A3E01708
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 15:34:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Oct 2013 15:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,503,1378882800"; d="scan'208";a="308249860"
Received: from unknown (HELO helios.localnet) ([10.252.120.232])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Oct 2013 15:34:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Tue, 15 Oct 2013 23:34:39 +0100
Message-ID: <1700191.EdxHocCYrr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
References: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: fetch from perforce
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
X-List-Received-Date: Tue, 15 Oct 2013 22:34:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Katu,

On Tuesday 15 October 2013 20:52:15 Katu Txakur wrote:
> can someone please give me an example of fetching the code from perforce?
> I want to map files from perforce and put them in a different tree
> structure in the workspace before compiling it. I also need to set user and
> password.
> I failed to find an example online and I don't understand the perforce
> script enough to guess the way to call it.

I have zero experience with perforce or fetching from it with a recipe, but 
looking at the fetcher code (bitbake/lib/bb/fetch2/perforce.py) it looks like 
the SRC_URI syntax is:

p4://user:password:host:port@path

Unfortunately it looks like you also need to set FETCHCOMMAND_p4 in your 
configuration as well since there is no default for this. Something like 
"/usr/bin/env p4" might work.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

