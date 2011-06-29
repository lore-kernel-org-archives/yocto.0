Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A88314C800B3
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 08:40:44 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5TDeeoe004639;
	Wed, 29 Jun 2011 14:40:40 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04497-04; Wed, 29 Jun 2011 14:40:36 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5TDeZtJ004633
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Jun 2011 14:40:35 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
In-Reply-To: <CFBC532374C38D45810FA00BC2D2C204016E8BA010@irsmsx502.ger.corp.intel.com>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
	<4E0A611D.9040604@linux.intel.com>
	<CFBC532374C38D45810FA00BC2D2C204016E8BA010@irsmsx502.ger.corp.intel.com>
Date: Wed, 29 Jun 2011 14:40:18 +0100
Message-ID: <1309354818.20015.378.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Wed, 29 Jun 2011 13:40:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-29 at 08:17 +0100, O'donoghue, Bryan wrote:
> Saul, Richard.
> 
> Thanks for the suggestions re: building the whole thing from scratch.
> 
> In a previous life using openembedded our solutions for slow builds
> were an array of ASSUME_PROVIDEDs. I'll try the build the world
> approach instead !

There is now sstate which is intended to try and assist this problem by
providing a cache of prebuilt entities that get reused if they're
compatible. Try giving that a try and I'm suspect you'll become a
convert! If you do run into problems let us know as its still one of the
newer features and we're interested in user feedback.

Cheers,

Richard


