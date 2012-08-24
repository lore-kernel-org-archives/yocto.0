Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FB5EE0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 10:12:26 -0700 (PDT)
Received: by qafk30 with SMTP id k30so753185qaf.14
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 10:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=6kZLgsHyQgAeWKP9YcbVmBVbGtBKX7OEIHGSHMPVEws=;
	b=DuaP807mVeopo6iPjlFuUQXQxeVplp675j6o2KgO6h4DoUPKHsYu6d2HDnqzPrRZxl
	U3Uf6bDl5T47B/BEceg0Sn4L+pg0VDVi08A59A6eRSYypwoEPd090NksoKH81XuZGhzw
	/lOpNMWWgO1E2DdrfFlu8IyiiYx45C2Tc7Ss5daUFBao8ZoH3B4hcD+IW8wWOcKVdM5A
	odpoXhYNr8YJXWpxYv8iYudkr/cCbRjg6Z6Hr+TnYd0jzC0ufpUHFgQborAP6UQ8dOi6
	wnvMawrpTve1N4oRwAUQ71nOqq36rkx/0jEIK0bZ4NRiboADLoVk2oGku19KauWM6hij
	vUBA==
Received: by 10.229.69.31 with SMTP id x31mr2838544qci.101.1345828343441;
	Fri, 24 Aug 2012 10:12:23 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id u8sm5431763qal.22.2012.08.24.10.12.22
	(version=SSLv3 cipher=OTHER); Fri, 24 Aug 2012 10:12:22 -0700 (PDT)
Message-ID: <5037B5F5.5040105@gmail.com>
Date: Fri, 24 Aug 2012 13:12:21 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: configuring WiFi in Yocto
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
X-List-Received-Date: Fri, 24 Aug 2012 17:12:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When I configured WiFi with Yocto on a n450 based netbook, all I had to 
do was get the right drivers for the hardware included in the Yocto 3.2 
kernel, then I could use the GUI Connection Manager to configure the 
WiFi so the hardware would connect to my WiFi network.

However, I'm now trying to configure a different WiFi on a Cedartrail 
system. The card is a Realtek RTL8188CE and the hardware is a DN2800MT 
Cedartrail board.  For Cedartrail the current BSP under Denzil is on 
kernel 3.0.  Not sure what made the difference, but Connection Manager 
does not have an option for Wireless networks.

iwconfig list both lo and eth0, both of course have no wireless 
extensions.  I was expecting to see wlan0.  If I do lspci -v, it shows I 
have my RTL8188CE hardware connected to the kernel module rtl8192ce, 
which was loaded in support of the wifi card along with the other 
modules I put into my config fragment file:
CONFIG_RTL8192CE=m
CONFIG_RTL8192C_COMMON=m
CONFIG_RTLWIFI=m
CONFIG_MAC80211=m
CONFIG_CFG80211=m

What does it take to get the wlan0 device so Connection Manger will 
recognize it?

Jim A


