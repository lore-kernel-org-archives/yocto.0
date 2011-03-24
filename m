Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27D5C4C800BA
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 07:50:11 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q2jzN-0005kM-GD
	for yocto@yoctoproject.org; Thu, 24 Mar 2011 13:50:09 +0100
Received: from ppp079166079084.dsl.hol.gr ([79.166.79.84])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 13:50:09 +0100
Received: from gmane by ppp079166079084.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 13:50:09 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 24 Mar 2011 14:49:53 +0200
Organization: Reliable Embedded Systems
Message-ID: <imfelh$rhd$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166079084.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: run-time problem - poky-image-lsb-sdk-beagleboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Mar 2011 12:50:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Using rpm instead of ipk I'm able to build
poky-image-lsb-sdk-beagleboard even with the lastest and greatest from
git (commit aeaa356a5ee77b4596c479451a9db289381a4d16 Sat Mar 19 01:30:12
2011 +0000)

The problem I have now is, that on my beagle-xm networking does not seem
to get an IP address from my dhcp server.

root@beagleboard:~# ifconfig -a
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:50 errors:0 dropped:0 overruns:0 frame:0
          TX packets:50 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:5375 (5.2 KiB)  TX bytes:5375 (5.2 KiB)

usb0      Link encap:Ethernet  HWaddr 06:ba:3b:e0:1f:b2
          BROADCAST MULTICAST  MTU:1492  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)


Manually it seems to work:
root@beagleboard:~# ifconfig usb0 192.168.42.67
root@beagleboard:~# ifcusb0: link up, 100Mbps, full-duplex, lpa 0xC5E1

root@beagleboard:~# ifconfig
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:55 errors:0 dropped:0 overruns:0 frame:0
          TX packets:55 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:6140 (5.9 KiB)  TX bytes:6140 (5.9 KiB)

usb0      Link encap:Ethernet  HWaddr 06:ba:3b:e0:1f:b2
          inet addr:192.168.42.67  Bcast:192.168.42.255  Mask:255.255.255.0
          inet6 addr: fe80::4ba:3bff:fee0:1fb2/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1492  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:26 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:0 (0.0 B)  TX bytes:5472 (5.3 KiB)

A sato image built from exactly the same sources had dhcp working out of
the box.

Regards,

Robert

..."Experience is something you don't get until just after you need it."
- Olivier

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



