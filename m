Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8ECCE008B4; Mon, 24 Nov 2014 08:53:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E0FE00832
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 08:52:58 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 24 Nov 2014 08:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="420858563"
Received: from pbrannig-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.144])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Nov 2014 08:42:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 24 Nov 2014 16:52:30 +0000
Message-ID: <1979121.RHhGhy9CBT@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <5473571B.9080702@mlbassoc.com>
References: <5473571B.9080702@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Missing firmware files
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
X-List-Received-Date: Mon, 24 Nov 2014 16:53:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Monday 24 November 2014 09:04:43 Gary Thomas wrote:
> I have a .bbappend which I use to add some non-public firmware
> files to linux-firmware.  This set up used to work, but today
> I'm getting only empty packages.  Here's my .bbappend fragment
> 
>   
> #--------------------------------------------------------------------------
> ------------- # Wi2Wi (based on Marvell SDIO 86xx devices
>    #
>    LICENSE_${PN}-wi2wi = "Firmware:LICENCE.Wi2Wi_firmware.txt"
>    PROVIDES += " linux-firmware-wi2wi "
>    SRC_URI += " \
> 	http://www.not-public.com/Wi2Wi-firmware.tgz;name=Wi2Wi-firmware \
>    "
>    SRC_URI[Wi2Wi-firmware.md5sum] = "2b400aee75e7522eb7f9a299aaa6d023"
>    SRC_URI[Wi2Wi-firmware.sha256sum] =
> "33b08d06169074e3d680df20f057580bbc5aa3aaa07e8ba3744c9318d0cbba5d"
> 
>    do_install_append() {
>          cd ${S}
> 	install -d  ${D}/lib/firmware/
> 	# Wi2Wi via libertas
> 	install -m 0666 ${WORKDIR}/sd8688.bin ${D}/lib/firmware
> 	install -m 0666 ${WORKDIR}/sd8688_helper.bin ${D}/lib/firmware
> 	install -m 0666 ${WORKDIR}/LICENCE.Wi2Wi_firmware.txt ${D}/lib/firmware/
>    }
> 
>    PACKAGES += "${PN}-wi2wi"
>    FILES_${PN}-wi2wi = "/lib/firmware/sd86*.bin
> /lib/firmware/LICENCE.Wi2Wi_firmware.txt" RPROVIDES_${PN}-wi2wi =
> "${PN}-wi2wi"
> 
> The desired files do end up in my install image, but not in the
> split package linux-firmware-wi2wi
> 
> Any ideas what I'm missing in the packaging that is ending up with
> empty packages?

I'd recommend using PACKAGES =+ rather than PACKAGES += so that your package 
picks up the files first. I'll bet another package is snagging the files before 
yours as things are at the moment.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

