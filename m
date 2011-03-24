Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0DC24C80050
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 09:00:03 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q2l4z-0002cx-Jv
	for yocto@yoctoproject.org; Thu, 24 Mar 2011 15:00:01 +0100
Received: from ppp079166079084.dsl.hol.gr ([79.166.79.84])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 15:00:01 +0100
Received: from gmane by ppp079166079084.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2011 15:00:01 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 24 Mar 2011 15:59:46 +0200
Organization: Reliable Embedded Systems
Message-ID: <imfioj$l2r$1@dough.gmane.org>
References: <imfelh$rhd$1@dough.gmane.org> <4D8B3EE4.9030502@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166079084.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4D8B3EE4.9030502@mlbassoc.com>
Subject: Re: run-time problem - poky-image-lsb-sdk-beagleboard
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
X-List-Received-Date: Thu, 24 Mar 2011 14:00:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 03/24/2011 02:53 PM, Gary Thomas wrote:

> 
> What does /etc/network/interfaces show?  Is it different between the two
> images?
> 
> n.b. I've not tried any of the LSB images, just poking in the dark.
> 

To our both surprise they are identical (see below).
... and if you ask my uneducated guess I would say this should not work,
since usb0 is static ?!?!

... but, surprisingly enough it does on sato ...

... and if I make the following change in lsb-sdk it still does not :

iface usb0 inet dhcp

it also does not work if I hardcode the network conf for usb0 in
/etc/network/interfaces

--------------

# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcp
	wireless_mode managed
	wireless_essid any
	wpa-driver wext
	wpa-conf /etc/wpa_supplicant.conf

iface atml0 inet dhcp

# Wired or wireless interfaces
iface eth0 inet dhcp
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether)
# ... or on host side, usbnet and random hwaddr
iface usb0 inet static
	address 192.168.7.2
	netmask 255.255.255.0
	network 192.168.7.0
	gateway 192.168.7.1

# Bluetooth networking
iface bnep0 inet dhcp

Regards,

Robert...Good judgment comes from experience... and experience comes
from bad judgment.- Fred Brooks

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



