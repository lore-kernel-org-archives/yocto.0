Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C4EFE013AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:28:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Sep 2013 02:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,922,1371106800"; d="scan'208";a="402909500"
Received: from unknown (HELO helios.localnet) ([10.252.123.194])
	by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2013 02:28:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Tue, 17 Sep 2013 10:27:59 +0100
Message-ID: <229904476.ZkVfXfKkUW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F898B2A@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<16622177.NMr0mASBTi@helios>
	<17797116383D4341B029FDF34C22BF6A5D7F898B2A@GUREXMB01.ASIAN.AD.ARICENT.COM>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 09:28:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 September 2013 14:35:53 Rohit2 Jindal wrote:
> SRC_URI  =
> "git://ep-code.xtz.com/u-boot.git;branch=xxx-ep-20130823-3.0-alpha;protocol
> =ssh;subpath=uboot" SRC_URI  =
> "git://ep-code.xtz.com/x-load.git;branch=xxx-ep-20130823-3.0-alpha;protocol
> =ssh;subpath=xload"

There are several problems with the above:

1) In my reply I mentioned that subpath is not the right option to use. Use
destsuffix instead.

2) You can't just do SRC_URI = twice, the second time it will just overwrite
the value from the first statement.

3) You'll need to specify name= for each item and then specify SRCREV for each
one ("${AUTOREV}" if you want to use the latest on the specified branch).

So you'll need something like:

SRC_URI = "git://ep-code.xtz.com/u-boot.git;branch=xxx-ep-20130823-3.0-alpha;protocol=ssh;name=uboot;destsuffix=git/uboot \
                     git://ep-code.xtz.com/x-load.git;branch=xxx-ep-20130823-3.0-alpha;protocol=ssh;name=xload;destsuffix=git/xload"
SRCREV_uboot = "${AUTOREV}"
SRCREV_xload = "${AUTOREV}"

Don't forget also to set S = "${WORKDIR}/git" as well.

Note that if you want to use ${SRCPV} in PV to get the source revision in
the version, you'll also need to set SRCREV_FORMAT to tell the system
how to compose SRCPV from the two SRCREV values e.g.

SRCREV_FORMAT = "uboot_xload"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

