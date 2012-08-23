Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B130E0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:41:30 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so492724qcs.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=n++KslCWA79Zrea7h1HHWRuaYUOu/cCE0OicqZTsJ4A=;
	b=RprN8kEIqzJDoSHDaHphnVUrVz+Sq+1PUUAI2oA+5QuscBZA/cxij/2lkvYeqLRema
	5s6RugUmI0gVM0xJr5mDnn+SirVOpCWPDMkdQpE8FR9oeldpgHESrfKitOJawzBxXgct
	YaB4lMN5e+WB6WhEftCuTiEqxmxfbRM4jCNY+3BkFf4zj0TfQaHBOBwQGg7ikauxkBxj
	HrzprBAMGRWpkyp/LEAPn67arT+X7ES0g2u53W8y8Vjx8DzVY+ht5x2140m3WSOg4Hpx
	S3V+tSXFlzMuOvci8nxrdY5JC0wxL/fixhIyL8EJOHSC8jIxn5M1NzTw9HW8OANieuiJ
	ITKA==
Received: by 10.224.195.199 with SMTP id ed7mr2606911qab.22.1345725690451;
	Thu, 23 Aug 2012 05:41:30 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id gw6sm5174731qab.21.2012.08.23.05.41.29
	(version=SSLv3 cipher=OTHER); Thu, 23 Aug 2012 05:41:29 -0700 (PDT)
Message-ID: <503624F9.60905@gmail.com>
Date: Thu, 23 Aug 2012 08:41:29 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50361C9F.3090203@gmail.com> <87393dn5uw.fsf@sonatest.com>
In-Reply-To: <87393dn5uw.fsf@sonatest.com>
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
X-List-Received-Date: Thu, 23 Aug 2012 12:41:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/23/2012 08:35 AM, Marc Ferland wrote:
> Jim Abernathy <jfabernathy@gmail.com> writes:
>
>> If I need to add a driver for a networking device that should be in
>> the 3.0 kernel, but seems to be turned off, I usually follow the
>> example in sections B.2.3 in the Development Manual. When I get to the
>> stage of running bitbake linux-yocto -c menuconfig, I can search for
>> my device with the "/" command and search for CONFIG_RTL8192CE and I
>> find this:
>>
>> Symbol: RTL8192CE [=n] │
>> │ Type : tristate │
>> │ Prompt: Realtek RTL8192CE/RTL8188CE Wireless Network Adapter │
>> │ Defined at drivers/net/wireless/rtlwifi/Kconfig:1 │
>> │ Depends on: NETDEVICES [=y] && WLAN [=y] && MAC80211 [=n] && PCI [=y] │
>> │ Location: │
>> │ -> Device Drivers │
>> │ -> Network device support (NETDEVICES [=y]) │
>> │ -> Wireless LAN (WLAN [=y]) │
>> │ Selects: FW_LOADER [=y] && RTLWIFI [=n] && RTL8192C_COMMON [=n]
>>
>> However, I can't find this device where is should be or anywhere in
>> the .config file. I've tried just adding the CONFIG_RTL8192CE=y to a
>> config fragment file anyway and that didn't work. After building the
>> image, the .config still didn't have the CONFIG_RTL8192CE=y. The 3.0
>> kernel should have support for the RTL8192CE devices.
>>
>> Also if I manual add CONFIG_RTL8192CE=y to the .config file and then
>> compile and build the kernel, the RTL8192CE parameter is removed from
>> the .config file after the kernel build.
>>
> You probably need to enable MAC80211 first. Your RTL8192CE driver will
> be selectable afterwards.
> Marc
You are correct. after I posted my question, I cheated and booted Ubuntu 
on the same hardware and saw the list of modules that lsmod showed were 
loaded to support my WiFi card.  my config fragment files now has:
CONFIG_RTL8192CE=y
CONFIG_RTL8192C_COMMON=y
CONFIG_RTLWIFI=y
CONFIG_MAC80211=y
CONFIG_CFG80211=y

It's still building, but at least the .config file now has all the right 
parameters in it and they didn't get deleted by the bitbake linux-yocto 
-c compile -f

Thanks,

Jim A

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


