Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.5865.1595596467917939437
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 06:14:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BCqRN29ngz5tlC;
	Fri, 24 Jul 2020 15:14:24 +0200 (CEST)
Date: Fri, 24 Jul 2020 15:14:23 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: paruchuribhavyasree@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] ERRORS while building customized yocto image for Raspberrypi #yocto
Message-ID: <20200724131423.wkpmfforkxce6adv@qschulz>
References: <PPIi.1595595549816870928.90tI@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <PPIi.1595595549816870928.90tI@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Bhavya,

On Fri, Jul 24, 2020 at 05:59:09AM -0700, paruchuribhavyasree@gmail.com wrote:
> Hi,
> 
> I'am trying to build Yocto image for a customized code, where the source code is in my local files, so here is my recipe :
> 
> ----------------------------------------------------------------------------------------------------------------------------------
> DESCRIPTION = "GSM-ASTERISK-SPI"
> HOMEPAGE = ""
> SECTION = "GSM build for Asterisk"
> PR = "r1"
> LICENSE = "GNUC"
> LICENSE = "GPLv3"
> LIC_FILES_CHKSUM = "file://license;md5=d41d8cd98f00b204e9800998ecf8427e"
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> 
> DEPENDS = "asterisk"
> SRCREV = "0.1"
> SRC_URI = "file://gsm-${PV}.tar.gz"
> SRC_URI = "file://license"
> 

SRC_URI = "file://gsm-${PV}.tar.gz \
	   file://license"

or

SRC_URI = "file://gsm-${PV}.tar.gz"
SRC_URI += "file://license"

Quentin
