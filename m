Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DB694C8009A
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 03:12:45 -0600 (CST)
Received: by wyb40 with SMTP id 40so3980246wyb.35
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 01:12:44 -0800 (PST)
Received: by 10.227.151.15 with SMTP id a15mr9187206wbw.184.1299921164689;
	Sat, 12 Mar 2011 01:12:44 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id y29sm4180932wbd.22.2011.03.12.01.12.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 12 Mar 2011 01:12:44 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D7B35CC.3070900@linux.intel.com>
Date: Sat, 12 Mar 2011 10:12:42 +0100
Message-Id: <24F5F982-85A4-413E-BB66-55244E2701D7@dominion.thruhere.net>
References: <AANLkTinC_Efgpq8s8QMYvjhmTfTaX-mQSzpafPp27iZh@mail.gmail.com>
	<4D7B35CC.3070900@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: yocto@yoctoproject.org
Subject: Re: Please add build ID to bugs
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
X-List-Received-Date: Sat, 12 Mar 2011 09:12:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 12 mrt 2011, om 09:58 heeft Darren Hart het volgende geschreven:

> On 03/07/2011 11:05 AM, Jeff Osier-Mixon wrote:
>> Hi all
>> 
>> I have added the following item to the Bugzilla guidelines:
>> 
>> *IMPORTANT*: please include the build/commit ID as reported by BitBake,
> 
> s/BitBake/git/ I presume?

I think he means this one:

Build Configuration:
BB_VERSION        = "1.13.0"
METADATA_BRANCH   = "org.openembedded.dev"
METADATA_REVISION = "0671ad1"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "angstrom"
DISTRO_VERSION    = "v20110312"
TARGET_FPU        = "hard"


regards,

Koen

