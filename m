Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63EEE01768
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:46:11 -0700 (PDT)
Received: from [128.107.17.87] (port=59911 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VZN6w-0008IM-EB; Thu, 24 Oct 2013 11:46:10 -0400
Date: Thu, 24 Oct 2013 08:46:06 -0700 (PDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkTp8E5-dGsLmkEW=XQ8-cu=iSiZ5dbxaXRxNmpu=SFqQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1310240842390.5465@oneiric>
References: <alpine.DEB.2.02.1310240824020.5368@oneiric>
	<CABcZANkTp8E5-dGsLmkEW=XQ8-cu=iSiZ5dbxaXRxNmpu=SFqQ@mail.gmail.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: undocumented/inconsistent use of KERNEL_DEVICETREE variable
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
X-List-Received-Date: Thu, 24 Oct 2013 15:46:12 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-775314755-1382629570=:5465"

--8323329-775314755-1382629570=:5465
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 24 Oct 2013, Chris Larson wrote:

>
> On Thu, Oct 24, 2013 at 8:27 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
>         simple observation -- the KERNEL_DEVICETREE variable is not
>       mentioned in the ref manual variable glossary.
>
>         more weirdly, though, i've always been used to seeing it used
>       this
>       way, like in the meta-yocto-bsp layer (that is, referring to the
>       .dts
>       *source* files):
>
>       beagleboard.conf:KERNEL_DEVICETREE =
>       "${S}/arch/arm/boot/dts/omap3-beagle.dts
>       ${S}/arch/arm/boot/dts/omap3-beagle-xm.dts"
>       mpc8315e-rdb.conf:KERNEL_DEVICETREE =
>       "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
>
>         but i just noticed this in the meta-fsl-asm layer:
>
>       meta-fsl-arm/conf/machine/imx23evk.conf:KERNEL_DEVICETREE =
>       "imx23-evk.dtb"
>       meta-fsl-arm/conf/machine/imx6dlsabresd.conf:KERNEL_DEVICETREE =
>       "imx6dl-sabresd.dtb"
>       meta-fsl-arm/conf/machine/imx6dlsabreauto.conf:KERNEL_DEVICETREE
>       = "imx6dl-sabreauto.dtb"
>       meta-fsl-arm/conf/machine/imx6qsabresd.conf:KERNEL_DEVICETREE =
>       "imx6q-sabresd.dtb"
>
>       where the variable contains references to the .dtb *blob* files.
>
>         is there a standard? recommended? either way fine?
>
>
> The behavior changed a couple months back.
> See 03b3e4b62f22a8ef435252c0401c5369defabe71 in poky, aka “linux-dtb: Use
> kernel build system to generate the dtb files”. The new style is the dtb
> filename, the others likely need updating, unless those bsp layers override
> the default linux-dtb behavior, afaik.

  ok, then -- as you suggest -- those entries in meta-yocto-bsp should
probably be updated unless there's something non-standard happening
there.

  amusingly, even though the meta-fsl-arm layer uses .dtb references,
it also supplies "image_types_fsl.bbclass", which contains the
processing loop:

  # Copy device tree file
  if test -n "${KERNEL_DEVICETREE}"; then
          for DTS_FILE in ${KERNEL_DEVICETREE}; do
                  DTS_BASE_NAME=`basename ${DTS_FILE} | awk -F "." '{print $1}'`
                  if [ -e "${KERNEL_IMAGETYPE}-${DTS_BASE_NAME}.dtb" ]; then
                  ... snip ...

which is kind of misleading since the loop assigns to the variable
DTS_FILE what are clearly .dtb filenames. minor, yes, but the kind of
thing that has the potential for confusion when reading code.

</pedantry>

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-775314755-1382629570=:5465--
