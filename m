Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BE6DE00575
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 02:18:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Feb 2014 02:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,512,1389772800"; d="scan'208";a="484730132"
Received: from pmckerno-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.159])
	by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2014 02:18:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Meier, Dennis" <meier.dennis@siemens.com>
Date: Thu, 20 Feb 2014 10:18:50 +0000
Message-ID: <6221385.P1iALBOTvE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.3-201.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <6F22A92316C68C42A591A48A6291DA9DD60628@DEFTHW99EI0MSX.ww902.siemens.net>
References: <6F22A92316C68C42A591A48A6291DA9DD60628@DEFTHW99EI0MSX.ww902.siemens.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: @#NAME type fields
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
X-List-Received-Date: Thu, 20 Feb 2014 10:18:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dennis,

On Thursday 20 February 2014 09:04:38 Meier, Dennis wrote:
> what is the reason for the "#@TYPE", "#@NAME" and "#@DESCRIPTION" fields in
> the machine-*.conf files? Are they getting parsed somewhere? Are they there
> for historical reasons? Could they be extended (i.e. more fields added)
> without problem?

For a long time I think they were mostly historical - maybe someone else can 
fill in the blanks. I believe the original intention was to provide information 
for other tools that the build system didn't need itself. We are using these 
in a couple of places now that I know of for machine .conf files:

* DESCRIPTION (or NAME, if DESCRIPTION isn't available) are read and used by 
the OpenEmbedded layer index [1]

* I think WEBTITLE is used to specify the title to show up for the BSP when 
listed on the Yocto Project website [2]

Strictly speaking these are just comments, so you could put anything in there 
if you needed to, but if you want something that's going to be adopted by 
other BSP authors it would be worth trying to get some consensus about the 
values used. Currently I don't think we have this documented anywhere, but 
people seem to have been filling in the values because they are there in the 
templates and other BSPs.

Cheers,
Paul

[1] http://layers.openembedded.org/layerindex/branch/master/machines/
[2] https://www.yoctoproject.org/downloads

-- 

Paul Eggleton
Intel Open Source Technology Centre

