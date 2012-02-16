Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0746E0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 16:35:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1G0Z4t3028837
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Feb 2012 16:35:04 -0800 (PST)
Received: from [147.11.116.149] (147.11.116.149) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 15 Feb 2012 16:35:04 -0800
Message-ID: <4F3C4F37.6000601@windriver.com>
Date: Wed, 15 Feb 2012 19:35:03 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3AF87F.8010806@mentor.com>	<CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
	<4F3C3DC4.8060400@mentor.com>
In-Reply-To: <4F3C3DC4.8060400@mentor.com>
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
X-List-Received-Date: Thu, 16 Feb 2012 00:35:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-15 06:20 PM, Hollis Blanchard wrote:
> On 02/14/2012 10:24 PM, McClintock Matthew-B29882 wrote:
>> On Tue, Feb 14, 2012 at 4:12 PM, Hollis Blanchard
>> <hollis_blanchard@mentor.com> wrote:
>>> Hi, I'm sure I'm missing something simple, but I just built Poky from
>>> git
>>> for beagleboard, and can't figure out USB networking. I expected to find
>>> g_cdc and g_ether modules in
>>> /lib/modules/3.0.18-yocto-standard+/kernel/drivers/usb, but that
>>> directory
>>> doesn't actually exist (I guess the drivers are built-in to this
>>> kernel).
>>>
>>> I have MACHINE ??= beagleboard in local.conf, and "bitbake
>>> core-image-minimal" did produce a working kernel, uboot, etc. I see
>>> some USB
>>> messages at boot (see below), but although cdc_ether is mentioned,
>>> ifconfig
>>> -a lists only loopback.
>>>
>>> Any suggestions? Thanks!
>> You can look at the default defconfig to see which kernel modules are
>> selected and also make sure the kernel modules are actually included
>> on core-image-minimal.
>
> Right, it looks like CONFIG_USB_ETH is disabled in
> linux-beagleboard-standard-build/.config , and I think that's the key
> missing option. I'm so lost in Yocto's kernel configuration
> "architecture" that I have no idea if that's being explicitly disabled,
> or just omitted from the base config, or what.

Is this the 3.0 variant ? That particular option wasn't enabled (most
likely because no one had the right device to test it). But that's not
the point, we can absolutely and easily enable it .. in particular
if someone confirms that it works :)

>
> It seems to me that option should be enabled if DISTRO_FEATURES contains
> usbgadget. More simply, it seems like a good idea to enable
> CONFIG_USB_ETH in the beagleboard default configuration, since many
> beagleboards don't have any other network interface.

The ethernet issue(s) are a painful memory of last year's ELC demos and
plenty of swearing about USB ethernet that didn't detect due to particular
USB hubs.

We can trigger the inclusion of a particular config option or fragment
directly from a distro feature as well.

>
> Is there an owner of Yocto's beagleboard BSP stuff?

I can help. Sorry that I missed your first email, traveling to ELC
filled up my inbox with a backlog.

Bruce

>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


