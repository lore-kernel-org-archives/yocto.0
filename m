Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 355DBE00FA6; Sat,  3 Oct 2015 05:51:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm0.bullet.mail.ne1.yahoo.com
	(nm28-vm0.bullet.mail.ne1.yahoo.com [98.138.91.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9260FE00BC0
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 05:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1443876701; bh=1hs59w2TwwvgT2wdXCGzZVFokUzyB/AWu7OwTtIzjY4=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=N3HV5dSqdp/zqp6LBb/OiRF1od8pvleiX8QegzTiEnVQjdFGozS3mQg+IBcvmAmAtWHn/SWPehZ/Eb0NU9SkOVV0S3Zkp1nGelduW3cvqJOQWh+jx0kxXu/AR+tf2AKU/i4p/UvuW7oi4ABDhzJzpFWZh73pDuMsJFMI2hFlLtaEnafvuhMC+EmCsbSOfzKgzVFgWJZpzYw7W/OQoZG+oGWvfi6h2vTSiMSKfZOPWGBfcB91rA80uulWH6F/jPhUKE02b8cp9Rwz9PXrusFaIZJ2B/68r14U69mWhBm9EM8lTU6BH3qORDYAQj+Lp2q5H1iBN+OFLorTCaGYW0yZYg==
Received: from [98.138.226.180] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Oct 2015 12:51:41 -0000
Received: from [98.138.89.193] by tm15.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Oct 2015 12:51:41 -0000
Received: from [127.0.0.1] by omp1051.mail.ne1.yahoo.com with NNFMP;
	03 Oct 2015 12:51:41 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 407823.78634.bm@omp1051.mail.ne1.yahoo.com
X-YMail-OSG: FLtngxEVM1kQw2oLwoB2SdL8pulZUDlxT2G5DYsXrPc7yiokMtfRD_sVtKYB8s9
	6lB.0vFah33eCzyWeqADdiCFQ5bAifD4heWSYc.iHRf9L5oDxtbxw9a2mWlD.8_zp0v2DjEkykHD
	oxCPCnuE2c9uLvPzDLw84qNv6k7y_kL2CM_IslougQ8KhC2iPI1jim29g.aPmjMSimIxX9Xb0HEw
	dSVX9OCkD3v4wqW2tn1F39IeKN2YAWvZwNeWjhC0C_eXvS473vDdHLa9TOWvgq5bRwFlYGxKNV6W
	4KGbF5wPXbkUh.BbLm6O7emxzaHGH35oQSuSNi3W2_dJ5Q1EEkb9CMMrEroPvzFcUm5QOvfiRAI2
	07kqAkRC5omFSL4W.h4Y2Moq9Hu.txhfzc.u27UFPhkUIAqIrrEQdPL_hU1sCVx5e6JyFbY6RV.e
	3lSzY7lvDVRowiIO0awDURYMi71PYPjboFheFPsr9FMgBX9dT2z5rN50.gdVKs0Fcty3THMXvpBL
	t9i37ROpl3kp5QDTEBgPJca2BLJ_vrdFFa99JILNq4EtWNmvov6Priv_tbDBP2ow-
Received: by 98.138.101.165; Sat, 03 Oct 2015 12:51:40 +0000 
Date: Sat, 3 Oct 2015 12:51:40 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <246328473.707613.1443876700452.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <mailman.2930.1443821882.7199.yocto@yoctoproject.org>
References: <mailman.2930.1443821882.7199.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 61, Issue 13
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Oct 2015 12:51:48 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_707612_1684645445.1443876700443"

------=_Part_707612_1684645445.1443876700443
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,
After installing linux-firmware and "rfkill unblock all".Then at the consol=
e Enabled wireless and provided the psk manually the wireless is working.I =
now have 2 Raspberry Pi 2B running RaspBian and 1 Raspberry Pi 2B running Y=
octo core-image-sato all wireless.
 Thanks for the help.=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 9=
15-595-1613=20


     On Friday, October 2, 2015 3:38 PM, "yocto-request@yoctoproject.org" <=
yocto-request@yoctoproject.org> wrote:
  =20

 Send yocto mailing list submissions to
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 yocto-request@yoctoproject.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

=C2=A0 1. Re: [meta-raspberrypi][PATCH] userland: Fix multiple inline
=C2=A0 =C2=A0 =C2=A0 issues while building with gcc 5.x (Andrei Gherzan)
=C2=A0 2. Re: [meta-raspberrypi] compiling userland (Andrei Gherzan)
=C2=A0 3. Re: [meta-raspberrypi] compiling userland (Andrei Gherzan)
=C2=A0 4. Re: wpa_supplicant on Raspberry Pi 2B (Edward Vidal)


----------------------------------------------------------------------

Message: 1
Date: Fri, 2 Oct 2015 23:29:46 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Tom Doehring <toolmmy@googlemail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] userland: Fix multiple
=C2=A0=C2=A0=C2=A0 inline issues while building with gcc 5.x
Message-ID: <20151002212946.GA11827@resin>
Content-Type: text/plain; charset=3Dus-ascii

On Sun, Sep 27, 2015 at 03:34:14PM +0200, Tom Doehring wrote:
> Building userland source with gcc 5.x causes multiple issues such as:
>=20
> vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity'=
 declared but never defined
> |=C2=A0 VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
>=20
> The following patches fixes these issues and allows building userland on =
the current
> poky master branch.
>=20
> Signed-off-by: Tom Doehring <toolmmy@googlemail.com>
> ---
>=C2=A0 .../userland/0001-Use-newer-POSIX-macro.patch=C2=A0 =C2=A0 =C2=A0 |=
 35 ----------------------
>=C2=A0 .../userland/0001-fix-gcc-5.x-inlines.patch=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 26 ++++++++++++++++
>=C2=A0 .../userland/userland/0002-fix-musl-build.patch=C2=A0 =C2=A0 | 22 +=
+++++++++++++
>=C2=A0 .../0003-fix-alloc-size-uninitialized.patch=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 13 ++++++++
>=C2=A0 recipes-graphics/userland/userland_git.bb=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 13 +++++---
>=C2=A0 5 files changed, 70 insertions(+), 39 deletions(-)
>=C2=A0 delete mode 100644 recipes-graphics/userland/userland/0001-Use-newe=
r-POSIX-macro.patch
>=C2=A0 create mode 100644 recipes-graphics/userland/userland/0001-fix-gcc-=
5.x-inlines.patch
>=C2=A0 create mode 100644 recipes-graphics/userland/userland/0002-fix-musl=
-build.patch
>=C2=A0 create mode 100644 recipes-graphics/userland/userland/0003-fix-allo=
c-size-uninitialized.patch
>=20

Tested on GCC 5.2.0 and worked fine. Merged to master. Thank you.

--=20
Andrei Gherzan


------------------------------

Message: 2
Date: Fri, 2 Oct 2015 23:33:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Tom Martin <t.martin@eins-plus.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi] compiling userland
Message-ID: <20151002213335.GA3484@resin>
Content-Type: text/plain; charset=3Dus-ascii

Hi Tom,

On Fri, Sep 25, 2015 at 01:19:43AM +0200, Tom Martin wrote:
> i'm completly new to yocta and doing my first steps.
>
> plan is to build a system with a small footprint for low-latency video
> wifibroadcast.
>
> first steps are trying to build rpi-test-image including omxplayer. but
> compiling fails when compiling userland.
>
> last lines before the failure are. am i missing just something basic?

This should be now fixed in master. Could you give it a try?

--
Andrei Gherzan


------------------------------

Message: 3
Date: Fri, 2 Oct 2015 23:34:56 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas M?ller <schnitzeltony@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi] compiling userland
Message-ID: <20151002213456.GB3484@resin>
Content-Type: text/plain; charset=3Diso-8859-1

On Sun, Sep 27, 2015 at 10:24:28PM +0200, Andreas M?ller wrote:
> On Fri, Sep 25, 2015 at 6:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > Can you try the patches from
> > https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> >
> Hi Khem,
>
> Because of running into same issues I've tried your branch and get
> errors as attached with current oe-core.
>
> Off-topic note: I think this layer is totally under-maintained. There
> were many patches send that were not even commented. This ends up in
> forks (e.g yours - and yes I've seen your efforts in sending patches)
> which should be avoided.
>

Started to get back on track. Hope this won't happen again.


--
Andrei Gherzan


------------------------------

Message: 4
Date: Fri, 2 Oct 2015 21:37:56 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
=C2=A0=C2=A0=C2=A0 "danielhilst@gmail.com" <danielhilst@gmail.com>
Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
Message-ID:
=C2=A0=C2=A0=C2=A0 <962916176.503077.1443821876374.JavaMail.yahoo@mail.yaho=
o.com>
Content-Type: text/plain; charset=3D"utf-8"

Hi all,Still no success getting wifi working.Any and all help appreciated.
Created a new image which installed 46 new rpms linux-firmware see below.
?
ps -ax | grep wpa_supplicant
? 503 ???????? S????? 0:00 /usr/sbin/wpa_supplicant -u
? 704 pts/0??? R+???? 0:00 grep wpa_supplicant

root@raspberrypi2:~# wpa_cli stat
Failed to connect to non-global ctrl_ifname: (nil)? error: Success
root@raspberrypi2:~# wpa_cli stat
Failed to connect to non-global ctrl_ifname: (nil)? error: Success

root@raspberrypi2:~# wpa_supplicant -ddd -B? -i wlan0 -D nl80211 -c /etc/wp=
a_supplicant.conf
wpa_supplicant v2.4
random: Trying to read entropy from /dev/random
Successfully initialized wpa_supplicant
Initializing interface 'wlan0' conf '/etc/wpa_supplicant.conf' driver 'nl80=
211' ctrl_interface 'N/A' bridge 'N/A'
Configuration file '/etc/wpa_supplicant.conf' -> '/etc/wpa_supplicant.conf'
Reading configuration file '/etc/wpa_supplicant.conf'
ctrl_interface=3D'/var/run/wpa_supplicant'
ctrl_interface_group=3D'0'
update_config=3D1
Line: 5 - start of a new network block
scan_ssid=3D1 (0x1)
ssid - hexdump_ascii(len=3D10):
???? 41 54 54 39 78 32 78 39 6a 37???????????????????? ATT9x2x9j7?????=20
PSK (ASCII passphrase) - hexdump_ascii(len=3D12): [REMOVED]
proto: 0x1
key_mgmt: 0x2
PSK (from passphrase) - hexdump(len=3D32): [REMOVED]
Priority group 0
?? id=3D0 ssid=3D'ATT9x2x9j7'
rfkill: initial event: idx=3D0 type=3D1 op=3D0 soft=3D1 hard=3D0
rfkill: WLAN soft blocked
nl80211: Supported cipher 00-0f-ac:1
nl80211: Supported cipher 00-0f-ac:5
nl80211: Supported cipher 00-0f-ac:2
nl80211: Supported cipher 00-0f-ac:4
nl80211: Using driver-based off-channel TX
nl80211: interface wlan0 in phy phy0
nl80211: Set mode ifindex 3 iftype 2 (STATION)
nl80211: Subscribe to mgmt frames with non-AP handle 0x5a6e68
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D06
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D0a07
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D0a11
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D1101
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D1102
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a=
6e68 match=3D0505
nl80211: Could not yet enable interface 'wlan0' due to rfkill
netlink: Operstate: ifindex=3D3 linkmode=3D1 (userspace-control), operstate=
=3D5 (IF_OPER_DORMANT)
nl80211: driver param=3D'(null)'
Add interface wlan0 to a new radio phy0
nl80211: Regulatory information - country=3D00
nl80211: 2402-2472 @ 40 MHz 20 mBm
nl80211: 2457-2482 @ 40 MHz 20 mBm (no IR)
nl80211: 2474-2494 @ 20 MHz 20 mBm (no OFDM) (no IR)
nl80211: 5170-5250 @ 160 MHz 20 mBm (no IR)
nl80211: 5250-5330 @ 160 MHz 20 mBm (DFS) (no IR)
nl80211: 5490-5730 @ 160 MHz 20 mBm (DFS) (no IR)
nl80211: Added 802.11b mode based on 802.11g information
wlan0: Own MAC address: 40:a5:ef:05:4d:01
wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_id=
x=3D0 set_tx=3D0 seq_len=3D0 key_len=3D0
nl80211: set_key failed; err=3D-100 Network is down)
wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_id=
x=3D1 set_tx=3D0 seq_len=3D0 key_len=3D0
nl80211: set_key failed; err=3D-100 Network is down)
wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_id=
x=3D2 set_tx=3D0 seq_len=3D0 key_len=3D0
nl80211: set_key failed; err=3D-100 Network is down)
wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_id=
x=3D3 set_tx=3D0 seq_len=3D0 key_len=3D0
nl80211: set_key failed; err=3D-100 Network is down)
wlan0: RSN: flushing PMKID list in the driver
nl80211: Flush PMKIDs
wlan0: Setting scan request: 0.100000 sec
wlan0: WPS: UUID based on MAC address: 50fb4973-c5e3-5899-b3c0-27a64501d294
GnuTLS: Library version 3.3.14 (runtime) - 3.3.14 (build)
EAPOL: SUPP_PAE entering state DISCONNECTED
EAPOL: Supplicant port status: Unauthorized
nl80211: Skip set_supp_port(unauthorized) while not associated
EAPOL: KEY_RX entering state NO_KEY_RECEIVE
EAPOL: SUPP_BE entering state INITIALIZE
EAP: EAP entering state DISABLED
Using existing control interface directory.
ctrl_interface_group=3D0
wlan0: Added interface wlan0
wlan0: State: DISCONNECTED -> DISCONNECTED
nl80211: Set wlan0 operstate 0->0 (DORMANT)
netlink: Operstate: ifindex=3D3 linkmode=3D-1 (no change), operstate=3D5 (I=
F_OPER_DORMANT)
Daemonize..

root@raspberrypi2:~# wpa_cli stat
Selected interface 'wlan0'
wpa_state=3DINTERFACE_DISABLED
address=3D40:a5:ef:05:4d:01
uuid=3D50fb4973-c5e3-5899-b3c0-27a64501d294

root@raspberrypi2:~# ifconfig wlan0
wlan0???? Link encap:Ethernet? HWaddr 40:A5:EF:05:4D:01?=20
????????? BROADCAST MULTICAST? MTU:1500? Metric:1
????????? RX packets:0 errors:0 dropped:0 overruns:0 frame:0
????????? TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
????????? collisions:0 txqueuelen:1000=20
????????? RX bytes:0 (0.0 B)? TX bytes:0 (0.0 B)

Thanks
+linux-firmware-0.0+git0+3161bfa479-r0.all
+linux-firmware-ar3k-0.0+git0+3161bfa479-r0.all
+linux-firmware-ar9170-0.0+git0+3161bfa479-r0.all
+linux-firmware-ath6k-0.0+git0+3161bfa479-r0.all
+linux-firmware-ath9k-0.0+git0+3161bfa479-r0.all
+linux-firmware-atheros-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-bcm4329-0.0+git0+3161bfa479-r0.all
+linux-firmware-bcm4330-0.0+git0+3161bfa479-r0.all
+linux-firmware-bcm4334-0.0+git0+3161bfa479-r0.all
+linux-firmware-broadcom-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-dev-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-135-6-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-3160-7-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-3160-8-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-3160-9-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6000-4-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6000g2a-5-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6000g2a-6-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6000g2b-5-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6000g2b-6-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6050-4-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-6050-5-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-7260-7-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-7260-8-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-7260-9-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-7265-8-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-7265-9-0.0+git0+3161bfa479-r0.all
+linux-firmware-iwlwifi-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-marvell-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-radeon-0.0+git0+3161bfa479-r0.all
+linux-firmware-radeon-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-ralink-0.0+git0+3161bfa479-r0.all
+linux-firmware-ralink-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-rtl-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-rtl8192ce-0.0+git0+3161bfa479-r0.all
+linux-firmware-rtl8192cu-0.0+git0+3161bfa479-r0.all
+linux-firmware-rtl8192su-0.0+git0+3161bfa479-r0.all
+linux-firmware-sd8686-0.0+git0+3161bfa479-r0.all
+linux-firmware-sd8787-0.0+git0+3161bfa479-r0.all
+linux-firmware-sd8797-0.0+git0+3161bfa479-r0.all
+linux-firmware-ti-connectivity-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-vt6656-0.0+git0+3161bfa479-r0.all
+linux-firmware-vt6656-license-0.0+git0+3161bfa479-r0.all
+linux-firmware-wl12xx-0.0+git0+3161bfa479-r0.all
+linux-firmware-wl18xx-0.0+git0+3161bfa479-r0.all
?Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151002/c6=
36a928/attachment.html>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 61, Issue 13
*************************************


  

------=_Part_707612_1684645445.1443876700443
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1443872937141_4037"><span id=3D"yui_3=
_16_0_1_1443872937141_4991">Hi All,</span></div><div id=3D"yui_3_16_0_1_144=
3872937141_4200"><br><span></span></div><div id=3D"yui_3_16_0_1_14438729371=
41_4201"><span id=3D"yui_3_16_0_1_1443872937141_4577">After installing linu=
x-firmware and "rfkill unblock all".</span></div><div id=3D"yui_3_16_0_1_14=
43872937141_4580"><span id=3D"yui_3_16_0_1_1443872937141_4579">Then at the =
console Enabled wireless and provided the psk manually the wireless is work=
ing.</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1443872937141_4578"><s=
pan class=3D"" id=3D"yui_3_16_0_1_1443872937141_4587">I now have 2 Raspberr=
y Pi 2B running RaspBian and 1 </span><span class=3D"" id=3D"yui_3_16_0_1_1=
443872937141_4587">Raspberry Pi 2B running Yocto core-image-sato all wirele=
ss.</span></div><div id=3D"yui_3_16_0_1_1443872937141_4990" dir=3D"ltr"><sp=
an class=3D"" id=3D"yui_3_16_0_1_1443872937141_4587"><br> </span></div><div=
 id=3D"yui_3_16_0_1_1443872937141_4792"><span id=3D"yui_3_16_0_1_1443872937=
141_4587">Thanks for the help.</span></div><div id=3D"yui_3_16_0_1_14438729=
37141_4036">&nbsp;</div><div id=3D"yui_3_16_0_1_1443872937141_4652" class=
=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613<=
/div>  <br><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"display=
: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16=
px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, =
Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <fon=
t size=3D"2" face=3D"Arial"> On Friday, October 2, 2015 3:38 PM, "yocto-req=
uest@yoctoproject.org" &lt;yocto-request@yoctoproject.org&gt; wrote:<br> </=
font> </div>  <br><br> <div class=3D"y_msg_container">Send yocto mailing li=
st submissions to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@yoctopro=
ject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
<br><br>To subscribe or unsubscribe via the World Wide Web, visit<br>&nbsp;=
&nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>or, via =
email, send a message with subject or body 'help' to<br>&nbsp;&nbsp;&nbsp; =
<a ymailto=3D"mailto:yocto-request@yoctoproject.org" href=3D"mailto:yocto-r=
equest@yoctoproject.org">yocto-request@yoctoproject.org</a><br><br>You can =
reach the person managing the list at<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"m=
ailto:yocto-owner@yoctoproject.org" href=3D"mailto:yocto-owner@yoctoproject=
.org">yocto-owner@yoctoproject.org</a><br><br>When replying, please edit yo=
ur Subject line so it is more specific<br>than "Re: Contents of yocto diges=
t..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. Re: [meta-raspberrypi][P=
ATCH] userland: Fix multiple inline<br>&nbsp; &nbsp; &nbsp; issues while bu=
ilding with gcc 5.x (Andrei Gherzan)<br>&nbsp;  2. Re: [meta-raspberrypi] c=
ompiling userland (Andrei Gherzan)<br>&nbsp;  3. Re: [meta-raspberrypi] com=
piling userland (Andrei Gherzan)<br>&nbsp;  4. Re: wpa_supplicant on Raspbe=
rry Pi 2B (Edward Vidal)<br><br><br>---------------------------------------=
-------------------------------<br><br>Message: 1<br>Date: Fri, 2 Oct 2015 =
23:29:46 +0200<br>From: Andrei Gherzan &lt;<a ymailto=3D"mailto:andrei@gher=
zan.ro" href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>To: =
Tom Doehring &lt;<a ymailto=3D"mailto:toolmmy@googlemail.com" href=3D"mailt=
o:toolmmy@googlemail.com">toolmmy@googlemail.com</a>&gt;<br>Cc: <a ymailto=
=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a><br>Subject: Re: [yocto] [meta-raspberrypi][PATCH]=
 userland: Fix multiple<br>&nbsp;&nbsp;&nbsp; inline issues while building =
with gcc 5.x<br>Message-ID: &lt;<a ymailto=3D"mailto:20151002212946.GA11827=
@resin" href=3D"mailto:20151002212946.GA11827@resin">20151002212946.GA11827=
@resin</a>&gt;<br>Content-Type: text/plain; charset=3Dus-ascii<br><br>On Su=
n, Sep 27, 2015 at 03:34:14PM +0200, Tom Doehring wrote:<br>&gt; Building u=
serland source with gcc 5.x causes multiple issues such as:<br>&gt; <br>&gt=
; vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity'=
 declared but never defined<br>&gt; |&nbsp; VCOS_UNSIGNED vcos_thread_get_a=
ffinity(VCOS_THREAD_T *thread);<br>&gt; <br>&gt; The following patches fixe=
s these issues and allows building userland on the current<br>&gt; poky mas=
ter branch.<br>&gt; <br>&gt; Signed-off-by: Tom Doehring &lt;<a ymailto=3D"=
mailto:toolmmy@googlemail.com" href=3D"mailto:toolmmy@googlemail.com">toolm=
my@googlemail.com</a>&gt;<br>&gt; ---<br>&gt;&nbsp; .../userland/0001-Use-n=
ewer-POSIX-macro.patch&nbsp; &nbsp; &nbsp; | 35 ----------------------<br>&=
gt;&nbsp; .../userland/0001-fix-gcc-5.x-inlines.patch&nbsp; &nbsp; &nbsp; &=
nbsp; | 26 ++++++++++++++++<br>&gt;&nbsp; .../userland/userland/0002-fix-mu=
sl-build.patch&nbsp; &nbsp; | 22 ++++++++++++++<br>&gt;&nbsp; .../0003-fix-=
alloc-size-uninitialized.patch&nbsp; &nbsp; &nbsp; &nbsp; | 13 ++++++++<br>=
&gt;&nbsp; recipes-graphics/userland/userland_git.bb&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; | 13 +++++---<br>&gt;&nbsp; 5 files changed, 70 insertions(+), =
39 deletions(-)<br>&gt;&nbsp; delete mode 100644 recipes-graphics/userland/=
userland/0001-Use-newer-POSIX-macro.patch<br>&gt;&nbsp; create mode 100644 =
recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch<br>&gt;&n=
bsp; create mode 100644 recipes-graphics/userland/userland/0002-fix-musl-bu=
ild.patch<br>&gt;&nbsp; create mode 100644 recipes-graphics/userland/userla=
nd/0003-fix-alloc-size-uninitialized.patch<br>&gt; <br><br>Tested on GCC 5.=
2.0 and worked fine. Merged to master. Thank you.<br><br>-- <br>Andrei Gher=
zan<br><br><br>------------------------------<br><br>Message: 2<br>Date: Fr=
i, 2 Oct 2015 23:33:35 +0200<br>From: Andrei Gherzan &lt;<a ymailto=3D"mail=
to:andrei@gherzan.ro" href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</=
a>&gt;<br>To: Tom Martin &lt;<a ymailto=3D"mailto:t.martin@eins-plus.de" hr=
ef=3D"mailto:t.martin@eins-plus.de">t.martin@eins-plus.de</a>&gt;<br>Cc: "<=
a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproje=
ct.org">yocto@yoctoproject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yoctopro=
ject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
&gt;<br>Subject: Re: [yocto] [meta-raspberrypi] compiling userland<br>Messa=
ge-ID: &lt;<a ymailto=3D"mailto:20151002213335.GA3484@resin" href=3D"mailto=
:20151002213335.GA3484@resin">20151002213335.GA3484@resin</a>&gt;<br>Conten=
t-Type: text/plain; charset=3Dus-ascii<br><br>Hi Tom,<br><br>On Fri, Sep 25=
, 2015 at 01:19:43AM +0200, Tom Martin wrote:<br>&gt; i'm completly new to =
yocta and doing my first steps.<br>&gt;<br>&gt; plan is to build a system w=
ith a small footprint for low-latency video<br>&gt; wifibroadcast.<br>&gt;<=
br>&gt; first steps are trying to build rpi-test-image including omxplayer.=
 but<br>&gt; compiling fails when compiling userland.<br>&gt;<br>&gt; last =
lines before the failure are. am i missing just something basic?<br><br>Thi=
s should be now fixed in master. Could you give it a try?<br><br>--<br>Andr=
ei Gherzan<br><br><br>------------------------------<br><br>Message: 3<br>D=
ate: Fri, 2 Oct 2015 23:34:56 +0200<br>From: Andrei Gherzan &lt;<a ymailto=
=3D"mailto:andrei@gherzan.ro" href=3D"mailto:andrei@gherzan.ro">andrei@gher=
zan.ro</a>&gt;<br>To: Andreas M?ller &lt;<a ymailto=3D"mailto:schnitzeltony=
@googlemail.com" href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony=
@googlemail.com</a>&gt;<br>Cc: "<a ymailto=3D"mailto:yocto@yoctoproject.org=
" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>" &lt;<a=
 ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [yocto] [meta-raspber=
rypi] compiling userland<br>Message-ID: &lt;<a ymailto=3D"mailto:2015100221=
3456.GB3484@resin" href=3D"mailto:20151002213456.GB3484@resin">201510022134=
56.GB3484@resin</a>&gt;<br>Content-Type: text/plain; charset=3Diso-8859-1<b=
r><br>On Sun, Sep 27, 2015 at 10:24:28PM +0200, Andreas M?ller wrote:<br>&g=
t; On Fri, Sep 25, 2015 at 6:42 AM, Khem Raj &lt;<a ymailto=3D"mailto:raj.k=
hem@gmail.com" href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; wrote:<br>&gt; &gt; Can you try the patches from<br>&gt; &gt; <a href=3D"=
https://github.com/kraj/meta-raspberrypi/commits/kraj/master" target=3D"_bl=
ank">https://github.com/kraj/meta-raspberrypi/commits/kraj/master</a><br>&g=
t; &gt;<br>&gt; Hi Khem,<br>&gt;<br>&gt; Because of running into same issue=
s I've tried your branch and get<br>&gt; errors as attached with current oe=
-core.<br>&gt;<br>&gt; Off-topic note: I think this layer is totally under-=
maintained. There<br>&gt; were many patches send that were not even comment=
ed. This ends up in<br>&gt; forks (e.g yours - and yes I've seen your effor=
ts in sending patches)<br>&gt; which should be avoided.<br>&gt;<br><br>Star=
ted to get back on track. Hope this won't happen again.<br><br><br>--<br>An=
drei Gherzan<br><br><br>------------------------------<br><br>Message: 4<br=
>Date: Fri, 2 Oct 2015 21:37:56 +0000 (UTC)<br>From: Edward Vidal &lt;<a ym=
ailto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:develone@sbcglobal.n=
et">develone@sbcglobal.net</a>&gt;<br>To: "<a ymailto=3D"mailto:yocto@yocto=
project.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>" &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@=
yoctoproject.org">yocto@yoctoproject.org</a>&gt;,<br>&nbsp;&nbsp;&nbsp; "<a=
 ymailto=3D"mailto:danielhilst@gmail.com" href=3D"mailto:danielhilst@gmail.=
com">danielhilst@gmail.com</a>" &lt;<a ymailto=3D"mailto:danielhilst@gmail.=
com" href=3D"mailto:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt;<br=
>Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<br>Message-ID:<br>&=
nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:962916176.503077.1443821876374.J=
avaMail.yahoo@mail.yahoo.com" href=3D"mailto:962916176.503077.1443821876374=
.JavaMail.yahoo@mail.yahoo.com">962916176.503077.1443821876374.JavaMail.yah=
oo@mail.yahoo.com</a>&gt;<br>Content-Type: text/plain; charset=3D"utf-8"<br=
><br>Hi all,Still no success getting wifi working.Any and all help apprecia=
ted.<br>Created a new image which installed 46 new rpms linux-firmware see =
below.<br>?<br>ps -ax | grep wpa_supplicant<br>? 503 ???????? S????? 0:00 /=
usr/sbin/wpa_supplicant -u<br>? 704 pts/0??? R+???? 0:00 grep wpa_supplican=
t<br><br><a ymailto=3D"mailto:root@raspberrypi2" href=3D"mailto:root@raspbe=
rrypi2">root@raspberrypi2</a>:~# wpa_cli stat<br>Failed to connect to non-g=
lobal ctrl_ifname: (nil)? error: Success<br><a ymailto=3D"mailto:root@raspb=
errypi2" href=3D"mailto:root@raspberrypi2">root@raspberrypi2</a>:~# wpa_cli=
 stat<br>Failed to connect to non-global ctrl_ifname: (nil)? error: Success=
<br><br><a ymailto=3D"mailto:root@raspberrypi2" href=3D"mailto:root@raspber=
rypi2">root@raspberrypi2</a>:~# wpa_supplicant -ddd -B? -i wlan0 -D nl80211=
 -c /etc/wpa_supplicant.conf<br>wpa_supplicant v2.4<br>random: Trying to re=
ad entropy from /dev/random<br>Successfully initialized wpa_supplicant<br>I=
nitializing interface 'wlan0' conf '/etc/wpa_supplicant.conf' driver 'nl802=
11' ctrl_interface 'N/A' bridge 'N/A'<br>Configuration file '/etc/wpa_suppl=
icant.conf' -&gt; '/etc/wpa_supplicant.conf'<br>Reading configuration file =
'/etc/wpa_supplicant.conf'<br>ctrl_interface=3D'/var/run/wpa_supplicant'<br=
>ctrl_interface_group=3D'0'<br>update_config=3D1<br>Line: 5 - start of a ne=
w network block<br>scan_ssid=3D1 (0x1)<br>ssid - hexdump_ascii(len=3D10):<b=
r>???? 41 54 54 39 78 32 78 39 6a 37???????????????????? ATT9x2x9j7????? <b=
r>PSK (ASCII passphrase) - hexdump_ascii(len=3D12): [REMOVED]<br>proto: 0x1=
<br>key_mgmt: 0x2<br>PSK (from passphrase) - hexdump(len=3D32): [REMOVED]<b=
r>Priority group 0<br>?? id=3D0 ssid=3D'ATT9x2x9j7'<br>rfkill: initial even=
t: idx=3D0 type=3D1 op=3D0 soft=3D1 hard=3D0<br>rfkill: WLAN soft blocked<b=
r>nl80211: Supported cipher 00-0f-ac:1<br>nl80211: Supported cipher 00-0f-a=
c:5<br>nl80211: Supported cipher 00-0f-ac:2<br>nl80211: Supported cipher 00=
-0f-ac:4<br>nl80211: Using driver-based off-channel TX<br>nl80211: interfac=
e wlan0 in phy phy0<br>nl80211: Set mode ifindex 3 iftype 2 (STATION)<br>nl=
80211: Subscribe to mgmt frames with non-AP handle 0x5a6e68<br>nl80211: Reg=
ister frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a6e68 match=
=3D06<br>nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_hand=
le=3D0x5a6e68 match=3D0a07<br>nl80211: Register frame type=3D0xd0 (WLAN_FC_=
STYPE_ACTION) nl_handle=3D0x5a6e68 match=3D0a11<br>nl80211: Register frame =
type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a6e68 match=3D1101<br>nl8=
0211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x5a6e6=
8 match=3D1102<br>nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION=
) nl_handle=3D0x5a6e68 match=3D0505<br>nl80211: Could not yet enable interf=
ace 'wlan0' due to rfkill<br>netlink: Operstate: ifindex=3D3 linkmode=3D1 (=
userspace-control), operstate=3D5 (IF_OPER_DORMANT)<br>nl80211: driver para=
m=3D'(null)'<br>Add interface wlan0 to a new radio phy0<br>nl80211: Regulat=
ory information - country=3D00<br>nl80211: 2402-2472 @ 40 MHz 20 mBm<br>nl8=
0211: 2457-2482 @ 40 MHz 20 mBm (no IR)<br>nl80211: 2474-2494 @ 20 MHz 20 m=
Bm (no OFDM) (no IR)<br>nl80211: 5170-5250 @ 160 MHz 20 mBm (no IR)<br>nl80=
211: 5250-5330 @ 160 MHz 20 mBm (DFS) (no IR)<br>nl80211: 5490-5730 @ 160 M=
Hz 20 mBm (DFS) (no IR)<br>nl80211: Added 802.11b mode based on 802.11g inf=
ormation<br>wlan0: Own MAC address: 40:a5:ef:05:4d:01<br>wpa_driver_nl80211=
_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_idx=3D0 set_tx=3D0 s=
eq_len=3D0 key_len=3D0<br>nl80211: set_key failed; err=3D-100 Network is do=
wn)<br>wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil)=
 key_idx=3D1 set_tx=3D0 seq_len=3D0 key_len=3D0<br>nl80211: set_key failed;=
 err=3D-100 Network is down)<br>wpa_driver_nl80211_set_key: ifindex=3D3 (wl=
an0) alg=3D0 addr=3D(nil) key_idx=3D2 set_tx=3D0 seq_len=3D0 key_len=3D0<br=
>nl80211: set_key failed; err=3D-100 Network is down)<br>wpa_driver_nl80211=
_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_idx=3D3 set_tx=3D0 s=
eq_len=3D0 key_len=3D0<br>nl80211: set_key failed; err=3D-100 Network is do=
wn)<br>wlan0: RSN: flushing PMKID list in the driver<br>nl80211: Flush PMKI=
Ds<br>wlan0: Setting scan request: 0.100000 sec<br>wlan0: WPS: UUID based o=
n MAC address: 50fb4973-c5e3-5899-b3c0-27a64501d294<br>GnuTLS: Library vers=
ion 3.3.14 (runtime) - 3.3.14 (build)<br>EAPOL: SUPP_PAE entering state DIS=
CONNECTED<br>EAPOL: Supplicant port status: Unauthorized<br>nl80211: Skip s=
et_supp_port(unauthorized) while not associated<br>EAPOL: KEY_RX entering s=
tate NO_KEY_RECEIVE<br>EAPOL: SUPP_BE entering state INITIALIZE<br>EAP: EAP=
 entering state DISABLED<br>Using existing control interface directory.<br>=
ctrl_interface_group=3D0<br>wlan0: Added interface wlan0<br>wlan0: State: D=
ISCONNECTED -&gt; DISCONNECTED<br>nl80211: Set wlan0 operstate 0-&gt;0 (DOR=
MANT)<br>netlink: Operstate: ifindex=3D3 linkmode=3D-1 (no change), opersta=
te=3D5 (IF_OPER_DORMANT)<br>Daemonize..<br><br><a ymailto=3D"mailto:root@ra=
spberrypi2" href=3D"mailto:root@raspberrypi2">root@raspberrypi2</a>:~# wpa_=
cli stat<br>Selected interface 'wlan0'<br>wpa_state=3DINTERFACE_DISABLED<br=
>address=3D40:a5:ef:05:4d:01<br>uuid=3D50fb4973-c5e3-5899-b3c0-27a64501d294=
<br><br><a ymailto=3D"mailto:root@raspberrypi2" href=3D"mailto:root@raspber=
rypi2">root@raspberrypi2</a>:~# ifconfig wlan0<br>wlan0???? Link encap:Ethe=
rnet? HWaddr 40:A5:EF:05:4D:01? <br>????????? BROADCAST MULTICAST? MTU:1500=
? Metric:1<br>????????? RX packets:0 errors:0 dropped:0 overruns:0 frame:0<=
br>????????? TX packets:0 errors:0 dropped:0 overruns:0 carrier:0<br>??????=
??? collisions:0 txqueuelen:1000 <br>????????? RX bytes:0 (0.0 B)? TX bytes=
:0 (0.0 B)<br><br>Thanks<br>+linux-firmware-0.0+git0+3161bfa479-r0.all<br>+=
linux-firmware-ar3k-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-ar9170-0.=
0+git0+3161bfa479-r0.all<br>+linux-firmware-ath6k-0.0+git0+3161bfa479-r0.al=
l<br>+linux-firmware-ath9k-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-at=
heros-license-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-bcm4329-0.0+git=
0+3161bfa479-r0.all<br>+linux-firmware-bcm4330-0.0+git0+3161bfa479-r0.all<b=
r>+linux-firmware-bcm4334-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-bro=
adcom-license-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-dev-0.0+git0+31=
61bfa479-r0.all<br>+linux-firmware-iwlwifi-135-6-0.0+git0+3161bfa479-r0.all=
<br>+linux-firmware-iwlwifi-3160-7-0.0+git0+3161bfa479-r0.all<br>+linux-fir=
mware-iwlwifi-3160-8-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-=
3160-9-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-6000-4-0.0+git=
0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-6000g2a-5-0.0+git0+3161bfa47=
9-r0.all<br>+linux-firmware-iwlwifi-6000g2a-6-0.0+git0+3161bfa479-r0.all<br=
>+linux-firmware-iwlwifi-6000g2b-5-0.0+git0+3161bfa479-r0.all<br>+linux-fir=
mware-iwlwifi-6000g2b-6-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwi=
fi-6050-4-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-6050-5-0.0+=
git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-7260-7-0.0+git0+3161bfa47=
9-r0.all<br>+linux-firmware-iwlwifi-7260-8-0.0+git0+3161bfa479-r0.all<br>+l=
inux-firmware-iwlwifi-7260-9-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-=
iwlwifi-7265-8-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-7265-9=
-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-iwlwifi-license-0.0+git0+316=
1bfa479-r0.all<br>+linux-firmware-license-0.0+git0+3161bfa479-r0.all<br>+li=
nux-firmware-marvell-license-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-=
radeon-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-radeon-license-0.0+git=
0+3161bfa479-r0.all<br>+linux-firmware-ralink-0.0+git0+3161bfa479-r0.all<br=
>+linux-firmware-ralink-license-0.0+git0+3161bfa479-r0.all<br>+linux-firmwa=
re-rtl-license-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-rtl8192ce-0.0+=
git0+3161bfa479-r0.all<br>+linux-firmware-rtl8192cu-0.0+git0+3161bfa479-r0.=
all<br>+linux-firmware-rtl8192su-0.0+git0+3161bfa479-r0.all<br>+linux-firmw=
are-sd8686-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-sd8787-0.0+git0+31=
61bfa479-r0.all<br>+linux-firmware-sd8797-0.0+git0+3161bfa479-r0.all<br>+li=
nux-firmware-ti-connectivity-license-0.0+git0+3161bfa479-r0.all<br>+linux-f=
irmware-vt6656-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-vt6656-license=
-0.0+git0+3161bfa479-r0.all<br>+linux-firmware-wl12xx-0.0+git0+3161bfa479-r=
0.all<br>+linux-firmware-wl18xx-0.0+git0+3161bfa479-r0.all<br>?Edward Vidal=
 Jr. e-mail <a ymailto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:dev=
elone@sbcglobal.net">develone@sbcglobal.net</a> 915-595-1613<br>-----------=
--- next part --------------<br>An HTML attachment was scrubbed...<br>URL: =
&lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/20=
151002/c636a928/attachment.html" target=3D"_blank">http://lists.yoctoprojec=
t.org/pipermail/yocto/attachments/20151002/c636a928/attachment.html</a>&gt;=
<br><br>------------------------------<br><br>-- <br>______________________=
_________________________<br>yocto mailing list<br><a ymailto=3D"mailto:yoc=
to@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" ta=
rget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><b=
r>End of yocto Digest, Vol 61, Issue 13<br>********************************=
*****<br><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_707612_1684645445.1443876700443--
