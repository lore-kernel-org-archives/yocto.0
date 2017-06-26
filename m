Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4983E00BBF; Mon, 26 Jun 2017 05:17:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84EFAE00B8D
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 05:17:46 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id A9648264C3E
To: Trevor Woerner <twoerner@gmail.com>
References: <20170616134740.25372-1-romain.perier@collabora.com>
	<20170616134740.25372-3-romain.perier@collabora.com>
	<20170617222906.GA20416@linux-uys3>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <da6700bc-dd06-ff2c-c68a-2be90d608c1e@collabora.com>
Date: Mon, 26 Jun 2017 14:17:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170617222906.GA20416@linux-uys3>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/2] u-boot: Backport upstream fix for gmac_rockchip
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
X-List-Received-Date: Mon, 26 Jun 2017 12:17:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,


Le 18/06/2017 à 00:29, Trevor Woerner a écrit :
> Hi Romain,
>
> I assume this patch is meant to fix an ethernet issue in u-boot? How does
> someone test that ethernet is working from u-boot?

Because it has been merged on upstream and tested by Simon and me.
It only fixes ethernet for 100mbps, another fix for 1gbs is on the way.

Could you retry with ethernet 100mbs ? (in the worst case force your
autonego with ethtool...)

Thanks,
Romain

>
> Here is my firefly booting with these patches:
>
>
> 	U-Boot SPL 2017.05 (Jun 17 2017 - 17:12:20)
> 	Returning to boot ROM...
>
> 	U-Boot 2017.05 (Jun 17 2017 - 17:12:20 -0400)
>
> 	Model: Firefly-RK3288
> 	DRAM:  1.7 GiB
> 	MMC:   dwmmc@ff0c0000: 1, dwmmc@ff0f0000: 0
> 	*** Warning - bad CRC, using default environment
>
> 	In:    serial
> 	Out:   serial
> 	Err:   serial
> 	Net:   
> 	Warning: ethernet@ff290000 (eth0) using random MAC address - 5a:40:1a:28:0e:43
> 	eth0: ethernet@ff290000
> 	Hit any key to stop autoboot:  0 
>
> Here is me configuring the networking stuff in u-boot:
>
> 	=> setenv ipaddr 192.168.142.20
> 	=> setenv netmask 255.255.255.0
> 	=> setenv serverip 192.168.142.1
>
> Then I try pinging my server:
>
> 	=> ping 192.168.142.1
> 	ethernet@ff290000 Waiting for PHY auto negotiation to complete... done
> 	Speed: 100, full duplex
> 	Using ethernet@ff290000 device
>
> The next thing I know my firefly is rebooting:
>
> 	data abort
> 	pc : [<6ada703a>]          lr : [<6ada7dbb>]
> 	reloc pc : [<0003303a>]    lr : [<00033dbb>]
> 	sp : 68d67e48  ip : 00000000     fp : 00000002
> 	r10: 68d77e60  r9 : 68d71ee8     r8 : 00000000
> 	r7 : 00000001  r6 : 00000000     r5 : 0000002a  r4 : 6adfd04e
> 	r3 : 14000045  r2 : 148ea8c0     r1 : 018ea8c0  r0 : 6adfd04e
> 	Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
> 	Resetting CPU ...
>
>
> 	U-Boot SPL 2017.05 (Jun 17 2017 - 17:12:20)
> 	Returning to boot ROM...


