Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F7EE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:29:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLGSixp011281;
	Wed, 21 Dec 2011 16:28:44 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10835-07; Wed, 21 Dec 2011 16:28:40 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLGSZBX011275
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 21 Dec 2011 16:28:36 GMT
Message-ID: <1324484918.18348.7.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 21 Dec 2011 16:28:38 +0000
In-Reply-To: <64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/9] distro: Factor out poky-common.inc from poky.conf
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
X-List-Received-Date: Wed, 21 Dec 2011 16:29:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-12-21 at 01:02 -0800, Darren Hart wrote:
> Prepare to add additional poky distro variants by factoring out
> assignments common to all poky* distros into poky-common.inc. Things
> like the naming schemes, mirrors, etc. are common, while dependencies
> and other things impacting image generation should be distro specific.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Why doesn't something like:

"""
$meta-yocto/conf/distro$ cat poky-lsb.conf 
require conf/distro/poky.conf

DISTRO = "poky-lsb"
DISTROOVERRIDES = "poky:linuxstdbase"
"""

work?

Effectively the above takes poky but then customises it...

Cheers,

Richard



