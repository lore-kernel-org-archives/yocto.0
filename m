Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2E5C4C800BA
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 07:53:58 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BD4271660315; Thu, 24 Mar 2011 06:53:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DCA9116602EB;
	Thu, 24 Mar 2011 06:53:56 -0600 (MDT)
Message-ID: <4D8B3EE4.9030502@mlbassoc.com>
Date: Thu, 24 Mar 2011 06:53:56 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <imfelh$rhd$1@dough.gmane.org>
In-Reply-To: <imfelh$rhd$1@dough.gmane.org>
Cc: yocto@yoctoproject.org
Subject: Re: run-time problem - poky-image-lsb-sdk-beagleboard
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
X-List-Received-Date: Thu, 24 Mar 2011 12:53:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/24/2011 06:49 AM, Robert Berger wrote:
> Hi,
>
> Using rpm instead of ipk I'm able to build
> poky-image-lsb-sdk-beagleboard even with the lastest and greatest from
> git (commit aeaa356a5ee77b4596c479451a9db289381a4d16 Sat Mar 19 01:30:12
> 2011 +0000)
>
> The problem I have now is, that on my beagle-xm networking does not seem
> to get an IP address from my dhcp server.
>
> root@beagleboard:~# ifconfig -a
> lo        Link encap:Local Loopback
>            inet addr:127.0.0.1  Mask:255.0.0.0
>            inet6 addr: ::1/128 Scope:Host
>            UP LOOPBACK RUNNING  MTU:16436  Metric:1
>            RX packets:50 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:50 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:0
>            RX bytes:5375 (5.2 KiB)  TX bytes:5375 (5.2 KiB)
>
> usb0      Link encap:Ethernet  HWaddr 06:ba:3b:e0:1f:b2
>            BROADCAST MULTICAST  MTU:1492  Metric:1
>            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:1000
>            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>
>
> Manually it seems to work:
> root@beagleboard:~# ifconfig usb0 192.168.42.67
> root@beagleboard:~# ifcusb0: link up, 100Mbps, full-duplex, lpa 0xC5E1
>
> root@beagleboard:~# ifconfig
> lo        Link encap:Local Loopback
>            inet addr:127.0.0.1  Mask:255.0.0.0
>            inet6 addr: ::1/128 Scope:Host
>            UP LOOPBACK RUNNING  MTU:16436  Metric:1
>            RX packets:55 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:55 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:0
>            RX bytes:6140 (5.9 KiB)  TX bytes:6140 (5.9 KiB)
>
> usb0      Link encap:Ethernet  HWaddr 06:ba:3b:e0:1f:b2
>            inet addr:192.168.42.67  Bcast:192.168.42.255  Mask:255.255.255.0
>            inet6 addr: fe80::4ba:3bff:fee0:1fb2/64 Scope:Link
>            UP BROADCAST RUNNING MULTICAST  MTU:1492  Metric:1
>            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:26 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:1000
>            RX bytes:0 (0.0 B)  TX bytes:5472 (5.3 KiB)
>
> A sato image built from exactly the same sources had dhcp working out of
> the box.

What does /etc/network/interfaces show?  Is it different between the two images?

n.b. I've not tried any of the LSB images, just poking in the dark.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

