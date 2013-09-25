Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4B81E015E8
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 05:33:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Sep 2013 05:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,978,1371106800"; d="scan'208";a="406937760"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.48])
	by fmsmga002.fm.intel.com with ESMTP; 25 Sep 2013 05:33:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Date: Wed, 25 Sep 2013 13:33:04 +0100
Message-ID: <2330193.rVqRLtpaqy@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <OF09452752.EFA3380A-ONC1257BF1.002CFBA5-C1257BF1.002DBD31@retarus.de>
References: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
	<2378070.oljIghCm7B@helios>
	<OF09452752.EFA3380A-ONC1257BF1.002CFBA5-C1257BF1.002DBD31@retarus.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Antwort: Re: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Wed, 25 Sep 2013 12:33:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Felix,

On Wednesday 25 September 2013 10:19:41 Felix01 Fischer wrote:
> One Question: I want to add changes to a %MACHINE.conf via my layer
> (to be specific: I want to add "APPEND += "video=LVDS-1:d" to
> meta-intel/meta-chiefriver/conf/machine/chiefriver.conf)
> Is this also possible via a separate layer? Once again, I didn't find out
> via the documentation. ATM I have to modify the chiefriver.conf directly

Really the way to do this kind of thing is to have your own custom distro 
config. If you're doing anything beyond the basics you should probably have one 
anyway. Generally this kind of thing is usually about how you are using the 
machine as opposed to supporting the machine itself, so it's more of a distro 
policy type situation.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

