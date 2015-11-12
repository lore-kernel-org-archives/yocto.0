Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B13AFE00C4A; Thu, 12 Nov 2015 09:04:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81089E00C3B
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 09:03:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tACH3gPA018942
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Nov 2015 09:03:43 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.226) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Thu, 12 Nov 2015 09:03:42 -0800
To: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>,
	<yocto@yoctoproject.org>
References: <5644591F.1090703@smartacoustics.co.uk>
From: Mark Hatle <mark.hatle@windriver.com>
X-Enigmail-Draft-Status: N1110
Organization: Wind River Systems
Message-ID: <5644C66D.4030408@windriver.com>
Date: Thu, 12 Nov 2015 11:03:41 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5644591F.1090703@smartacoustics.co.uk>
Subject: Re: Building yocto with hard float support
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
X-List-Received-Date: Thu, 12 Nov 2015 17:04:00 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 11/12/15 3:17 AM, Toby Gomersall wrote:
> Hi,
> 
> I want to build yocto with hard float support. I understand that I can
> point the EXTERNAL_TOOLCHAIN variable at the appropriate external hard
> float compiler (gcc-5-arm-linux-gnueabihf). However, I was wondering if
> there was anything within the yocto project to do this?

I'm going to be pedantic for a second.. bear with me.

ARM has two ABIs, the standard EABI which passes floating point values via
integer registers and EABIHF that passes floating point values via floating
point registers.

EABI allows hardware floating point along with neon or any other core specific
optimizations.

EABIHF requires a specific set and size of VFP registers.

The Yocto Project is capable of building for both ABIs with whatever
combinations of optimizations you need.

The ABI and default processor optimization is configured by the 'DEFAULTTUNE'
parameter.  This is typically defined in your machine configuration file, either
explicitly or implicitly via the including of the tune files.


So for example, if you have an ARMv5 CPU you would likely use:

DEFAULTTUNE="armv5e"

This would select ARM EABI, no VFP.

alternatively you could do:

DEFAULTTUNE="armv5e-vfp"

This would select ARM EABI w/ VFP floating point.

OR

(what I think you are actually trying to ask)

DEFAULTTUNE="armv5ehf-vfp"

This would select ARM EABIHF w/ VFP floating point.


So start with your machine and determine which defaulttune (bitbake -e) you have
selected.  Adjust it to a compatible setting for the ABI and processor
optimizations that you wish to use.

> I'm concerned that future updates to an external compiler might affect
> my build and I would prefer to use a method from within the yocto project.

Unless you have a specific need, I don't recommend external compilers.  The
Yocto Project compilers and configurations are well tested and high quality.
While using an external compiler is support by some vendors, it adds complexity
that may not be beneficial.  (Sometimes support and other aspects of commercial
offerings outweigh the complexity..)

> Thank you,
> Toby
> 
> 
> 


