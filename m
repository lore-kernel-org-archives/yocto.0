Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D3C1E00DE4; Mon, 29 Jan 2018 20:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 645F6E0084D
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 20:06:46 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Jan 2018 20:06:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,433,1511856000"; d="scan'208";a="23285788"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.92])
	([10.221.23.92])
	by orsmga003.jf.intel.com with ESMTP; 29 Jan 2018 20:06:45 -0800
To: kishorepasupula <kishorepasupula@gmail.com>
References: <8d42e6cb-a90f-3d6d-0e49-c7a5a6a731fb@gmail.com>
	<b2b0ecb4-ac6c-e362-5baa-8a3d5b973a56@intel.com>
	<44955f37-5402-1914-eb12-78d60398c5c7@gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <545948ff-8104-e3b7-9db8-2d8b976ab3bd@intel.com>
Date: Tue, 30 Jan 2018 12:06:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <44955f37-5402-1914-eb12-78d60398c5c7@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 30 Jan 2018 04:06:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/29/2018 09:47 PM, kishorepasupula wrote:
> 
> Hi,
> As per my understanding I’m not using any proprietary drivers. And 
> Graphic recipies being used are from meta layer itself.
> 
> Here is my complete setup.
> 
> 1) Created a custom layer (4.9.73) for Beaglebone Black instead of 
> using yocto-kernel(This is the only custom layer I have created rest are 
> standard I.e meta, meta-poky, meta-yocto-bsp)
> 	-Here is the recipie for custom kernel( https://pastebin.com/w4GXbY6w )
> 	-local.conf file ( https://pastebin.com/fp2XaxFE )
> 	-I have Interfaced  LCD display(4D 4.3” LCD cape) to my Beaglebone Black.
> 	-Here is the defconfig file :(Attached to Email)
> 	-Enabled following fields in menuconfig:
> 		Device Driver→Graphics support
> 					
> 					->Direct Rendering
> 					→DRM Support for TI LCDC Display Controller
> 					→Support device tree blobs using TI LCDC Slave binding
> 	-Machinefile( https://pastebin.com/T4YesHx3 )

You're probably not using the correct user space DRI driver and/or xorg
configuration. Maybe check out meta-ti layer to see if that works ...

Thanks,

Anuj

> 
> 
> 2) Though build was successful. After porting “Snappy” application  when 
> I tried to run “snappy” application on target I.e BeagleBone Blak, we 
> are getting error response as addressed in previous mail.
> 
> 3)Boot log of BeagleBone black( https://pastebin.com/26FaeBvw )
> 
> Please let me know if you need any further information from my end.
> 
> Regards,
> kk.
> 
> On 01/29/2018 02:48 PM, Anuj Mittal wrote:
>> On 01/29/2018 01:05 PM, kishorepasupula wrote:
>>>
>>> Hi,
>>>
>>> My main objective is to run snappy player
>>> (https://wiki.gnome.org/Snappy) on target machine (BeagleBone Black) so,
>>> I wrote a recipe for Snappy player(snappy_1.0.bb) as below
>>>
>>> LICENSE = "GPLv2"
>>> LIC_FILES_CHKSUM = "file://COPYING;md5=686e6cb566fd6382c9fcc7a557bf4544"
>>>
>>> SRCREV = "e73fabce4c397b40d490c74f6a6a0de000804f42"
>>> SRC_URI = "git://git.gnome.org/snappy"
>>> S = "${WORKDIR}/git"
>>>
>>> RDEPENDS_${PN} = "gtk+3 gstreamer1.0 glib-2.0 clutter-1.0
>>> gstreamer1.0-plugins-base libxtst clutter-gst-3.0 clutter-gtk-1.0 libx11
>>> cairo gdk-pixbuf"
>>>
>>> # inherit line
>>> inherit pkgconfig autotools
>>>
>>> FILES_${PN} += "${datadir}/*"
>>> Added this recipe name in local.conf
>>>
>>> IMAGE_INSTALL_append = " snappy"
>>> The build (bitbake core-image-sato) was successful, when I ran "snappy"
>>> on target(BeagleBone Black) I am getting below error response.
>>>
>>> sh-4.4# snappy
>>> libEGL warning: DRI2: failed to authenticate
>>> libEGL warning: DRI2: failed to authenticate
>>> libEGL warning: DRI2: failed to authenticate
>>>
>>> (snappy:763): clutter-CRITICAL **: Unable to initialize clutter: Unable
>>> to Initialize the clutter backend: no available drivers found.
>>>
>>> As per my Understanding in my recipe I have resolved all dependencies
>>> for Snappy player (such as clutter, gstreamer, gtk etc.). I'm unable to
>>> figure out why snappy player is throwing error? Can any one guide me on
>>> this?
>>>
>>> PS: Also tried adding  PREFERRED_PROVIDER_virtual/egl ?= "mesa" in
>>> local.conf but still I'm getting the same error response.
>>
>> Are you using proprietary drivers? If libegl is coming from mesa, it
>> will probably not work with proprietary drivers. Can you provide more
>> details about your setup? Which layer(s) are you using etc. and where
>> are the graphics recipes/drivers coming from?
>>
>> Thanks,
>> Anuj
>>
>>>
>>> Regards,
>>> Kk.
>>>
>>


