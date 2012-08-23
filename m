Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09185E0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:05:55 -0700 (PDT)
Received: by qady1 with SMTP id y1so485781qad.14
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=f+NxpuHUOXBKcswekbH7eva6M8lY/OKBjSmCeu+xe0o=;
	b=bQ+b9tJAgGq8O0UXwJemUJH/UQM5yYaMH+zhk9sIVrgqAUqW2Xu8R0nvGHLpILLm21
	Z2EtkYGIjqPXIKuRNOdszs+7vS1NkhrStgm0oJKpimBeUljpmbg1kuFya/+STJcLSpeY
	0nma726SbA5KHzQAkxFLzDDvwUt8RQ3l4W/WAS39wp/Mv5ZiF9+DJVF9ZW8OwnrtSOlG
	pK/RocINnuJRmaTNzNN9ZRAdhFl0ZQgvheMOValjRZ40c99WEwoSISOjn0/aXZQytX0I
	qyxiMHNT1cqHpH0MX0lpBoVVu7dP85B08HMZ5XkdgJQUoARYrlnjY1+wPcKdSN8r7d6J
	tx7w==
Received: by 10.224.97.199 with SMTP id m7mr2317267qan.61.1345723553188;
	Thu, 23 Aug 2012 05:05:53 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id h8sm5132606qap.16.2012.08.23.05.05.52
	(version=SSLv3 cipher=OTHER); Thu, 23 Aug 2012 05:05:52 -0700 (PDT)
Message-ID: <50361C9F.3090203@gmail.com>
Date: Thu, 23 Aug 2012 08:05:51 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: adding drivers to the kernel
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
X-List-Received-Date: Thu, 23 Aug 2012 12:05:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

If I need to add a driver for a networking device that should be in the 
3.0 kernel, but seems to be turned off, I usually follow the example in 
sections B.2.3 in the Development Manual. When I get to the stage of 
running bitbake linux-yocto -c menuconfig, I can search for my device 
with the "/" command and search for CONFIG_RTL8192CE and I find this:

Symbol: RTL8192CE [=n] │
│ Type : tristate │
│ Prompt: Realtek RTL8192CE/RTL8188CE Wireless Network Adapter │
│ Defined at drivers/net/wireless/rtlwifi/Kconfig:1 │
│ Depends on: NETDEVICES [=y] && WLAN [=y] && MAC80211 [=n] && PCI [=y] │
│ Location: │
│ -> Device Drivers │
│ -> Network device support (NETDEVICES [=y]) │
│ -> Wireless LAN (WLAN [=y]) │
│ Selects: FW_LOADER [=y] && RTLWIFI [=n] && RTL8192C_COMMON [=n]

However, I can't find this device where is should be or anywhere in the 
.config file. I've tried just adding the CONFIG_RTL8192CE=y to a config 
fragment file anyway and that didn't work. After building the image, the 
.config still didn't have the CONFIG_RTL8192CE=y. The 3.0 kernel should 
have support for the RTL8192CE devices.

Also if I manual add CONFIG_RTL8192CE=y to the .config file and then 
compile and build the kernel, the RTL8192CE parameter is removed from 
the .config file after the kernel build.

Any ideas?

Jim A


