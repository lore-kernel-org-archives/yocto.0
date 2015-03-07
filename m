Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB364E008E3; Sat,  7 Mar 2015 04:33:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E9ACE008DD
	for <yocto@yoctoproject.org>; Sat,  7 Mar 2015 04:33:49 -0800 (PST)
Received: from [99.240.204.5] (port=40135 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YUDvQ-0008Jr-W0; Sat, 07 Mar 2015 07:33:49 -0500
Date: Sat, 7 Mar 2015 07:33:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Jens Lucius <incnews@jenslucius.de>
In-Reply-To: <54F99D99.6090806@jenslucius.de>
Message-ID: <alpine.LFD.2.11.1503070724330.7850@Device-040570>
References: <54F99D99.6090806@jenslucius.de>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Different u-boot recipes (machine names and provider)
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
X-List-Received-Date: Sat, 07 Mar 2015 12:33:51 -0000
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1463811327-836369577-1425731627=:7850"

---1463811327-836369577-1425731627=:7850
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Fri, 6 Mar 2015, Jens Lucius wrote:

> Hello,
>
> I am working on a custom machine layer, which until now has it´s own u-boot
> recipe for a custom u-boot.
>
> I want to add a recipe for mainline u-boot additional to that. I have defined
> a PREFERRED_PROVIDER_u-boot and PREFERRED_PROVIDER_virtual/bootloader which
> point to the custom u-boot to not break the current build, which can be
> changed to the mainline u-boot if needed to build the mainline.
>
> First question: Do I need to define both PREFERRED_PROVIDER (u-boot and
> virtual/bootloader)? I have seen different approaches in different layers.

  i would *think* you could do the following if you wanted to do it in
two stages for flexibility:

PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
PREFERRED_PROVIDER_u-boot = "u-boot-my-custom-recipe"

  the other option i see being used in the meta-ti layer (which is
probably what you're talking about) sets both to the same TI-specific
value:

ti33x.inc:PREFERRED_PROVIDER_virtual/bootloader = "u-boot-ti-staging"
ti33x.inc:PREFERRED_PROVIDER_u-boot = "u-boot-ti-staging"

  i see freescale does the same thing:

# Freescale BSP default providers

PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
PREFERRED_PROVIDER_virtual/kernel ??= "linux-imx"
PREFERRED_PROVIDER_u-boot ??= "u-boot-fslc"
PREFERRED_PROVIDER_virtual/bootloader ??= "u-boot-fslc"

  i see this as well, which seems like overkill:

PREFERRED_PROVIDER_virtual/bootloader_ls102xa ?= "u-boot-ls1"
PREFERRED_PROVIDER_virtual/kernel_ls102xa ?= "linux-ls1"

  are there any style recommendations for this?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


---1463811327-836369577-1425731627=:7850--
