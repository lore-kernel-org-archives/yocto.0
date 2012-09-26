Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41109E011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 05:59:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Sep 2012 05:59:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,490,1344236400"; d="scan'208";a="213565526"
Received: from unknown (HELO helios.localnet) ([10.252.122.36])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2012 05:59:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Wolfgang Denk <wd@denx.de>
Date: Wed, 26 Sep 2012 13:59:32 +0100
Message-ID: <10067256.0vCsjtRvv5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <20120926113900.3519F2031A9@gemini.denx.de>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<20120926113900.3519F2031A9@gemini.denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 12:59:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Wolfgang,

On Wednesday 26 September 2012 13:39:00 Wolfgang Denk wrote:
> This commit has:
> 
> meta-yocto/conf/distro/poky.conf:LAYER_CONF_VERSION ?= "6"
> 
> But:
> 
> meta/conf/sanity.conf:LAYER_CONF_VERSION ?= "5"
> 
> 
> So for me the sanity checker bails out with:
> 
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration. Either fix the cause of this error or at your own risk
> disable the checker (see sanity.conf). Following is the list of potential
> problems / advisories:
> 
>     Your version of bblayers.conf was generated from an older version of
> bblayers.conf.sample and there have been updates made to this file. Please
> compare the two files and merge any changes before continuing. Matching the
> version numbers will remove this message.
> "meld conf/bblayers.conf
> /home/wd/git/eldk-5.3/meta*/conf/bblayers.conf.sample" is a good way to
> visualise the changes.
> 
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> 
> 
> Am I doing anyhting wrong?

No, this is expected, at the moment you need to follow the instructions and 
make the appropriate changes to your conf/bblayers.conf. However, there is a 
patch out for review that we would like to include for the 1.3 final release 
which will take care of this automatically for you.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

