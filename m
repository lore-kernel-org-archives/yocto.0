Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD72E0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 16:49:34 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1RxpXP-0006u3-98 from Hollis_Blanchard@mentor.com ;
	Wed, 15 Feb 2012 16:49:31 -0800
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 15 Feb 2012 16:49:31 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Wed, 15 Feb 2012 16:49:30 -0800
Message-ID: <4F3C529A.5050202@mentor.com>
Date: Wed, 15 Feb 2012 16:49:30 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F3AF87F.8010806@mentor.com>	<CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
	<4F3C3DC4.8060400@mentor.com> <4F3C4F37.6000601@windriver.com>
In-Reply-To: <4F3C4F37.6000601@windriver.com>
X-OriginalArrivalTime: 16 Feb 2012 00:49:31.0241 (UTC)
	FILETIME=[D7FB6590:01CCEC44]
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 16 Feb 2012 00:49:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/15/2012 04:35 PM, Bruce Ashfield wrote:
> On 12-02-15 06:20 PM, Hollis Blanchard wrote:
>> On 02/14/2012 10:24 PM, McClintock Matthew-B29882 wrote:
>>> On Tue, Feb 14, 2012 at 4:12 PM, Hollis Blanchard
>>> <hollis_blanchard@mentor.com> wrote:
>>>> Hi, I'm sure I'm missing something simple, but I just built Poky from
>>>> git
>>>> for beagleboard, and can't figure out USB networking. I expected to 
>>>> find
>>>> g_cdc and g_ether modules in
>>>> /lib/modules/3.0.18-yocto-standard+/kernel/drivers/usb, but that
>>>> directory
>>>> doesn't actually exist (I guess the drivers are built-in to this
>>>> kernel).
>>>>
>>>> I have MACHINE ??= beagleboard in local.conf, and "bitbake
>>>> core-image-minimal" did produce a working kernel, uboot, etc. I see
>>>> some USB
>>>> messages at boot (see below), but although cdc_ether is mentioned,
>>>> ifconfig
>>>> -a lists only loopback.
>>>>
>>>> Any suggestions? Thanks!
>>> You can look at the default defconfig to see which kernel modules are
>>> selected and also make sure the kernel modules are actually included
>>> on core-image-minimal.
>>
>> Right, it looks like CONFIG_USB_ETH is disabled in
>> linux-beagleboard-standard-build/.config , and I think that's the key
>> missing option. I'm so lost in Yocto's kernel configuration
>> "architecture" that I have no idea if that's being explicitly disabled,
>> or just omitted from the base config, or what.
>
> Is this the 3.0 variant ? That particular option wasn't enabled (most
> likely because no one had the right device to test it). But that's not
> the point, we can absolutely and easily enable it .. in particular
> if someone confirms that it works :)

Yes, it's (apparently) a 3.0.18 kernel. I'd be happy to test it.

>> It seems to me that option should be enabled if DISTRO_FEATURES contains
>> usbgadget. More simply, it seems like a good idea to enable
>> CONFIG_USB_ETH in the beagleboard default configuration, since many
>> beagleboards don't have any other network interface.
>
> The ethernet issue(s) are a painful memory of last year's ELC demos and
> plenty of swearing about USB ethernet that didn't detect due to 
> particular
> USB hubs.

I don't think I can do anything about that. :)

> We can trigger the inclusion of a particular config option or fragment
> directly from a distro feature as well.

Matt's clues may have helped me decipher enough to create a 
features/usb-gadget fragment. AFAICS, that can't be controlled by 
bitbake variables... but it would be enough for me. :)

The next issue is something to auto-load the g_ether module at boot. It 
looks like there's no shortage of init scripts developed for this 
purpose in different OE distributions, but none of them are installed in 
Yocto's Beagleboard build...

>> Is there an owner of Yocto's beagleboard BSP stuff?
>
> I can help. Sorry that I missed your first email, traveling to ELC
> filled up my inbox with a backlog.

No worries, I knew it was a bad time to ask... thanks!

Hollis Blanchard
Mentor Graphics, Embedded Systems Division


