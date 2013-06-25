Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51891E014DF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:16:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jun 2013 08:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,937,1363158000"; d="scan'208";a="359320944"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2013 08:16:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
Date: Tue, 25 Jun 2013 16:16:08 +0100
Message-ID: <7888643.66nBCjdCFc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
	<2169568.OdCe6aKEne@helios>
	<CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Tue, 25 Jun 2013 15:16:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 25 June 2013 15:20:19 DAMARLA Satya Swaroop wrote:
> I am trying to install .deb file and the recipe is as follows... may I ask
> you what is the mistake that is not allowing it to build it into the
> rootfilesystem....
> 
> *UMMARY = "Bootstrapper from Skidata"*
> *DESCRIPTION = "For the moment it just installs the .deb file"*
> *LICENSE = "CLOSED"*
> *
> *
> *SRC_URI[md5sum] = "7835334732d1704765e52168994b09a6"*
> *SRC_URI[sha256sum] =
> "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
> *
> *
> *
> *
> *SRC_URI =
> "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.14.d
> eb" *
> *
> *
> *inherit bin_package*
> *
> *
> *INITSCRIPT_PACKAGES = "${PN}-bsd"*
> *INITSCRIPT_NAME_${PN}-bsp = "bootstraploader"*
> *INITSCRIPT_PARAMS_${PN}-bsp = "defaults 90"*

You have a mismatch here, "bsp" in the last two lines and "bsd" everywhere 
else.

> *PACKAGES =+ "${PN} ${PN}-bsd"*
> *
> *
> *FILES_${PN}-bsd = "${sysconfdir}/init.d/bootstraploader"*
> *FILES_${PN} = "${D}/usr/skidata/bootstraploader/*.sh
> ${D}/usr/skidata/bootstraploader/*.pm"*

You should not include ${D} in FILES values. Because of the invalid path the 
desired files are not being picked up.

The reason you're likely getting an error at do_rootfs is that because of the 
above, the package is empty and therefore is not produced, thus it can't be 
found when it comes to installing it into the image.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

