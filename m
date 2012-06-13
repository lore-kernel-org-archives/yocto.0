Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5996EE006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 09:35:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Jun 2012 09:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111737585"
Received: from unknown (HELO helios.localnet) ([10.252.120.116])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Jun 2012 09:34:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 13 Jun 2012 17:34:37 +0100
Message-ID: <10306994.IBNakgMNPp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FD8BAF0.5090405@linux.intel.com>
References: <0FABE48C74734648B69F641A84298A59190B8A98@IRSMSX104.ger.corp.intel.com>
	<F27469E0A1C1456C807477C954225267@halfman.com>
	<4FD8BAF0.5090405@linux.intel.com>
MIME-Version: 1.0
Cc: Konstantinos Papagiannopoulos <hello@konputer.net>, yocto@yoctoproject.org,
	Jim Kosem <jim@halfman.com>
Subject: Re: Web HOB planning discussion
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
X-List-Received-Date: Wed, 13 Jun 2012 16:35:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 13 June 2012 09:08:16 Darren Hart wrote:
> The group/project concept is very interesting.
> 
> One thing I didn't see in the video, and perhaps you just couldn't cover
> it, is how do you specify settings in local.conf? LICENSE settings for
> example?

Some of these settings should be available under "Settings" which isn't really 
covered in the video other than the button being at the top right. I'm not 
sure the current design can cover every possible setting you can set via 
local.conf, but it should cover the basics (the settings currently configurable 
in Hob v2 that make sense in the context of a central server - i.e. it may be 
that the admin is the one that sets parallel make / threads dependent on the 
hardware resources they have assigned). We can always add additional settings 
in the future where they make sense.
 
> As for the image writer, it really should not be limited to USB devices.

Indeed, but it's worth noting that the whole "deploy" section is a little 
tricky anyway. In the design it's shown within the web interface but I'm not 
sure how it can work there, given that it requires root privileges on the 
client machine to write an image to the media. It's more likely that this will 
be implemented in the form of an executable that is available for download 
from the web interface, but we won't know for sure until it reaches 
implementation. (I've talked to Jim about this already, what is there in the 
design is a stand-in for the fact that the capability should be there in some 
form, eventually at least.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

