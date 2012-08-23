Return-Path: <marc.ferland@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A48AE01438
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:35:27 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so1703202obb.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type:content-transfer-encoding;
	bh=ZzDN8mGSVt3gHv+iwoBm8bF3kNFqSTOx28Iype1DynM=;
	b=f8mWSMORbBlJ6X+g1cYT372R51Kp7b7tkD7+4g/EuTJk17nLN4w6XzuBfSNUiysKoz
	vMRjZAZ6Mz7Qa+lxQdG45Brur5K9Ra+BRCNS3ci1XxUweAE2PyiLmtuXRCHWptkUcwJ/
	Jhj/YoMtBTeG2wCYjM0jLu3kB3jvpAPmMHxeAn4D3k2ihEuZ6UCcs3w4hWBiwbuZQuwi
	CZV8/O0IKDqssvUrj4Jl/L1pdVdBSwQsWnhfeozoNu8wpdKX1VapSlj8QQLThMi+16Uw
	O7ZDzlQOKW4ghLPUIRNBef4djKkdgf5aewFqkS1219eGTnNXCApES6Q4tOd/sPKgjPRO
	W7PA==
Received: by 10.50.186.196 with SMTP id fm4mr1399950igc.1.1345725324926;
	Thu, 23 Aug 2012 05:35:24 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id
	at10sm10497517igc.16.2012.08.23.05.35.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 05:35:19 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 23 Aug 2012 08:35:35 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <50361C9F.3090203@gmail.com>
Date: Thu, 23 Aug 2012 08:35:35 -0400
In-Reply-To: <50361C9F.3090203@gmail.com> (Jim Abernathy's message of "Thu, 23
	Aug 2012 08:05:51 -0400")
Message-ID: <87393dn5uw.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: adding drivers to the kernel
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
X-List-Received-Date: Thu, 23 Aug 2012 12:35:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jim Abernathy <jfabernathy@gmail.com> writes:

> If I need to add a driver for a networking device that should be in
> the 3.0 kernel, but seems to be turned off, I usually follow the
> example in sections B.2.3 in the Development Manual. When I get to the
> stage of running bitbake linux-yocto -c menuconfig, I can search for
> my device with the "/" command and search for CONFIG_RTL8192CE and I
> find this:
>
> Symbol: RTL8192CE [=3Dn] =E2=94=82
> =E2=94=82 Type : tristate =E2=94=82
> =E2=94=82 Prompt: Realtek RTL8192CE/RTL8188CE Wireless Network Adapter =
=E2=94=82
> =E2=94=82 Defined at drivers/net/wireless/rtlwifi/Kconfig:1 =E2=94=82
> =E2=94=82 Depends on: NETDEVICES [=3Dy] && WLAN [=3Dy] && MAC80211 [=3Dn]=
 && PCI [=3Dy] =E2=94=82
> =E2=94=82 Location: =E2=94=82
> =E2=94=82 -> Device Drivers =E2=94=82
> =E2=94=82 -> Network device support (NETDEVICES [=3Dy]) =E2=94=82
> =E2=94=82 -> Wireless LAN (WLAN [=3Dy]) =E2=94=82
> =E2=94=82 Selects: FW_LOADER [=3Dy] && RTLWIFI [=3Dn] && RTL8192C_COMMON =
[=3Dn]
>
> However, I can't find this device where is should be or anywhere in
> the .config file. I've tried just adding the CONFIG_RTL8192CE=3Dy to a
> config fragment file anyway and that didn't work. After building the
> image, the .config still didn't have the CONFIG_RTL8192CE=3Dy. The 3.0
> kernel should have support for the RTL8192CE devices.
>
> Also if I manual add CONFIG_RTL8192CE=3Dy to the .config file and then
> compile and build the kernel, the RTL8192CE parameter is removed from
> the .config file after the kernel build.
>
You probably need to enable MAC80211 first. Your RTL8192CE driver will
be selectable afterwards.
Marc

