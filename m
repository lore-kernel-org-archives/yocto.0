Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 998FFE00B68; Fri, 16 May 2014 04:39:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from astoria.ccjclearline.com (unknown [64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625EEE00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 04:39:16 -0700 (PDT)
Received: from [99.240.204.5] (port=57865 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WlGTv-000789-MN; Fri, 16 May 2014 07:39:19 -0400
Date: Fri, 16 May 2014 07:37:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1405160735420.16596@localhost>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<alpine.LFD.2.11.1405130954351.7299@localhost>
	<53722D3D.4030902@dynamicdevices.co.uk>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Fri, 16 May 2014 11:39:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 May 2014, Paul Eggleton wrote:

... snip ...

> So apologies for not replying earlier - I've not been directly involved in the
> BSP for Galileo, but I have been providing support for the team doing the IoT
> DevKit work. You should be able to build images for Galileo using what's in
> meta-intel-iot-devkit directly; you could also use the layers within it
> separately using your own separate OE-Core / Poky tree, but it's not really
> designed to be used in that way. If you really want to do it separately you
> should take care to use all three layers (meta-clanton-bsp, meta-galileo, and
> meta-iot-devkit) and set your DISTRO = "iot-devkit".

  should any of these layers be added to:

http://layers.openembedded.org/layerindex/branch/master/layers/

for findability?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

