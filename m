Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9CF2E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 02:32:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2013 02:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,846,1371106800"; d="scan'208";a="291096745"
Received: from unknown (HELO helios.localnet) ([10.252.123.106])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Sep 2013 02:32:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: JC <jc@vtkloud.com>
Date: Thu, 05 Sep 2013 10:32:10 +0100
Message-ID: <196913219.mMcczBtVSS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <522793A2.3000207@vtkloud.com>
References: <522782E7.8080509@vtkloud.com> <522790E3.5080708@vtkloud.com>
	<522793A2.3000207@vtkloud.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding specific config files
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
X-List-Received-Date: Thu, 05 Sep 2013 09:32:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jay,

On Wednesday 04 September 2013 22:10:10 JC wrote:
> On 04/09/2013 21:58, JC wrote:
> > On 04/09/2013 20:58, JC wrote:
> >> Hi,
> >> 
> >> In my project, we have our own rpm repository and we use smartpm on
> >> the target.
> >> In order to have the target setup with the repo out of the box, we of
> >> course have added "package-management" in IMAGE_FEATURES. Now I'd
> >> like the target to have our repo address already configured.
> >> 
> >> The best way I found was to create a recipe in my overlay and hacking
> >> the system a little bit this way :
> >> do_install() {
> >> 
> >>    if
> >> 
> >> ${@base_contains('IMAGE_FEATURES','package-management','true','false',d)}
> >> ;
> >> then
> >> 
> >>         install -d ${D}/${sysconfdir}
> >>         install -m 644 ${WORKDIR}/config.in ${D}/var/lib/smart/config
> >>    
> >>    fi
> >> 
> >> }
> >> 
> >> where "config.in" is a simple copy of the non-human readable version
> >> of smartpm config file, generated manually on the target.
> >> 
> >> I was wondering if there would be a better way such as do not test in
> >> the do_install, but rather make the recipe dependent on the
> >> "package-management" image feature ? (so that do_install wouldn't
> >> even be considered if the option is not set), or any other smarter idea.
> > 
> > Actually I _need_ a better idea because mine doesn't work: it actually
> > creates what I want (/var/lib/smart/config) but since do_rootfs also
> > uses this directory to install packages, it wipes it out at the end of
> > the process... so my installation is removed :(
> > 
> > I'm sure someone else did something like this (but succeeded) ?
> 
> The guilty line is in /sources/poky/meta/classes/rootfs_rpm.bbclass
> 
> 145:         rm -rf ${IMAGE_ROOTFS}/var/lib/smart
> 
> :(
> 
> Whatever I want to do with packages, It'll be removed. There's probably
> an alternate way :(

Unfortunately we have to have a fixed configuration for smart during do_rootfs,
so it has to be written to. I think though that rather than trying to install
a configuration file for smart using a separate recipe, I would suggest
modifying the smart configuration at the end of do_rootfs to add the
configuration elements you need. The way to do this would be to define a shell
function that you can add a call to in ROOTFS_POSTPROCESS_COMMAND that will
run smart:

add_extra_smart_config() {
	smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add rpmsys type=rpm-sys -y
}
ROOTFS_POSTPROCESS_COMMAND += "add_extra_smart_config; "

You can put the above in the image recipe itself or in a class that your image
recipe inherits.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

