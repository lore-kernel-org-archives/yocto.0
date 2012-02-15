Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD57E0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 15:20:50 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Rxo9N-0001N4-Mq from Hollis_Blanchard@mentor.com ;
	Wed, 15 Feb 2012 15:20:37 -0800
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 15 Feb 2012 15:19:58 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Wed, 15 Feb 2012 15:20:36 -0800
Message-ID: <4F3C3DC4.8060400@mentor.com>
Date: Wed, 15 Feb 2012 15:20:36 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4F3AF87F.8010806@mentor.com>
	<CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
In-Reply-To: <CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
X-OriginalArrivalTime: 15 Feb 2012 23:19:58.0140 (UTC)
	FILETIME=[555D3FC0:01CCEC38]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: missing USB gadget support on beagleboard?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Feb 2012 23:20:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/14/2012 10:24 PM, McClintock Matthew-B29882 wrote:
> On Tue, Feb 14, 2012 at 4:12 PM, Hollis Blanchard
> <hollis_blanchard@mentor.com>  wrote:
>> Hi, I'm sure I'm missing something simple, but I just built Poky from git
>> for beagleboard, and can't figure out USB networking. I expected to find
>> g_cdc and g_ether modules in
>> /lib/modules/3.0.18-yocto-standard+/kernel/drivers/usb, but that directory
>> doesn't actually exist (I guess the drivers are built-in to this kernel).
>>
>> I have MACHINE ??= beagleboard in local.conf, and "bitbake
>> core-image-minimal" did produce a working kernel, uboot, etc. I see some USB
>> messages at boot (see below), but although cdc_ether is mentioned, ifconfig
>> -a lists only loopback.
>>
>> Any suggestions? Thanks!
> You can look at the default defconfig to see which kernel modules are
> selected and also make sure the kernel modules are actually included
> on core-image-minimal.

Right, it looks like CONFIG_USB_ETH is disabled in 
linux-beagleboard-standard-build/.config , and I think that's the key 
missing option. I'm so lost in Yocto's kernel configuration 
"architecture" that I have no idea if that's being explicitly disabled, 
or just omitted from the base config, or what.

It seems to me that option should be enabled if DISTRO_FEATURES contains 
usbgadget. More simply, it seems like a good idea to enable 
CONFIG_USB_ETH in the beagleboard default configuration, since many 
beagleboards don't have any other network interface.

Is there an owner of Yocto's beagleboard BSP stuff?

Hollis Blanchard
Mentor Graphics, Embedded Systems Division


