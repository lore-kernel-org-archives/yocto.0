Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC59E00DAE; Mon, 29 Jan 2018 01:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600D5E00971
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 01:18:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Jan 2018 01:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,429,1511856000"; d="scan'208";a="13867263"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.92])
	([10.221.23.92])
	by fmsmga008.fm.intel.com with ESMTP; 29 Jan 2018 01:18:26 -0800
To: yocto@yoctoproject.org
References: <8d42e6cb-a90f-3d6d-0e49-c7a5a6a731fb@gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <b2b0ecb4-ac6c-e362-5baa-8a3d5b973a56@intel.com>
Date: Mon, 29 Jan 2018 17:18:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <8d42e6cb-a90f-3d6d-0e49-c7a5a6a731fb@gmail.com>
Subject: Re: clutter-CRITICAL **: Unable to initialize clutter: Unable to Initialize the clutter backend: no available drivers found.
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
X-List-Received-Date: Mon, 29 Jan 2018 09:18:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/29/2018 01:05 PM, kishorepasupula wrote:
> 
> Hi,
> 
> My main objective is to run snappy player 
> (https://wiki.gnome.org/Snappy) on target machine (BeagleBone Black) so, 
> I wrote a recipe for Snappy player(snappy_1.0.bb) as below
> 
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=686e6cb566fd6382c9fcc7a557bf4544"
> 
> SRCREV = "e73fabce4c397b40d490c74f6a6a0de000804f42"
> SRC_URI = "git://git.gnome.org/snappy"
> S = "${WORKDIR}/git"
> 
> RDEPENDS_${PN} = "gtk+3 gstreamer1.0 glib-2.0 clutter-1.0 
> gstreamer1.0-plugins-base libxtst clutter-gst-3.0 clutter-gtk-1.0 libx11 
> cairo gdk-pixbuf"
> 
> # inherit line
> inherit pkgconfig autotools
> 
> FILES_${PN} += "${datadir}/*"
> Added this recipe name in local.conf
> 
> IMAGE_INSTALL_append = " snappy"
> The build (bitbake core-image-sato) was successful, when I ran "snappy" 
> on target(BeagleBone Black) I am getting below error response.
> 
> sh-4.4# snappy
> libEGL warning: DRI2: failed to authenticate
> libEGL warning: DRI2: failed to authenticate
> libEGL warning: DRI2: failed to authenticate
> 
> (snappy:763): clutter-CRITICAL **: Unable to initialize clutter: Unable 
> to Initialize the clutter backend: no available drivers found.
> 
> As per my Understanding in my recipe I have resolved all dependencies 
> for Snappy player (such as clutter, gstreamer, gtk etc.). I'm unable to 
> figure out why snappy player is throwing error? Can any one guide me on 
> this?
> 
> PS: Also tried adding  PREFERRED_PROVIDER_virtual/egl ?= "mesa" in 
> local.conf but still I'm getting the same error response.

Are you using proprietary drivers? If libegl is coming from mesa, it
will probably not work with proprietary drivers. Can you provide more
details about your setup? Which layer(s) are you using etc. and where
are the graphics recipes/drivers coming from?

Thanks,
Anuj

> 
> Regards,
> Kk.
> 


