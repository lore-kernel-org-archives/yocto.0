Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032F7E01768
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:27:31 -0700 (PDT)
Received: from [128.107.17.87] (port=59872 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VZMor-0007Qf-KY
	for yocto@yoctoproject.org; Thu, 24 Oct 2013 11:27:29 -0400
Date: Thu, 24 Oct 2013 08:27:21 -0700 (PDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310240824020.5368@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: undocumented/inconsistent use of KERNEL_DEVICETREE variable
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
X-List-Received-Date: Thu, 24 Oct 2013 15:27:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  simple observation -- the KERNEL_DEVICETREE variable is not
mentioned in the ref manual variable glossary.

  more weirdly, though, i've always been used to seeing it used this
way, like in the meta-yocto-bsp layer (that is, referring to the .dts
*source* files):

beagleboard.conf:KERNEL_DEVICETREE =
"${S}/arch/arm/boot/dts/omap3-beagle.dts
${S}/arch/arm/boot/dts/omap3-beagle-xm.dts"
mpc8315e-rdb.conf:KERNEL_DEVICETREE =
"${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"

  but i just noticed this in the meta-fsl-asm layer:

meta-fsl-arm/conf/machine/imx23evk.conf:KERNEL_DEVICETREE = "imx23-evk.dtb"
meta-fsl-arm/conf/machine/imx6dlsabresd.conf:KERNEL_DEVICETREE = "imx6dl-sabresd.dtb"
meta-fsl-arm/conf/machine/imx6dlsabreauto.conf:KERNEL_DEVICETREE = "imx6dl-sabreauto.dtb"
meta-fsl-arm/conf/machine/imx6qsabresd.conf:KERNEL_DEVICETREE = "imx6q-sabresd.dtb"

where the variable contains references to the .dtb *blob* files.

  is there a standard? recommended? either way fine?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

