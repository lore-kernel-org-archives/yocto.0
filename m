Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6681E00EA9; Fri,  2 Oct 2015 14:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.114 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm21-vm6.bullet.mail.ne1.yahoo.com
	(nm21-vm6.bullet.mail.ne1.yahoo.com [98.138.91.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C525E0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 14:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1443821877; bh=lBfSj0zhKucg5bVa4dznIBQvndHVHtDa+1S0xPYv/wA=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=F/k/x0Hod1WOIwuY/PvpxXsXE89GTaoKa86XFVe8+keEtEmXM2xgAJYNsMwIvLfarH5btbeZM5H62NB9+aegfIb08OToWNktu9FM0riO8rBqJJ56cUq9gkw6Eg6E0F9VHay+C8808y7Xan51faz9jkhGSVBkuHOP3H3Vb01bb7G0Gc5aSOCF6CbcPEHo8PjE/m+pE6yCT2f2VPjZUugUX5KkCrtjZmfHSJ1CKaKTDn6CLtW8i69n/oKsiuikphwbQRpx0JElW19R3xjPZZ8PlMzStcyiup9xiq5ZqP+RuQ5EoFf01Dw7wFzOnxWflfvA9KamyRt75milwARAmpw7+g==
Received: from [98.138.226.178] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 21:37:57 -0000
Received: from [98.138.89.175] by tm13.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 21:37:57 -0000
Received: from [127.0.0.1] by omp1031.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 21:37:57 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 736982.22658.bm@omp1031.mail.ne1.yahoo.com
X-YMail-OSG: k0_fBEoVM1kZ74UhbKJsZHtWH6xN0c5mLaTyEwRYBG5ScVqVPzFWG9.c7RYMnUQ
	lH7TscE0qOphZf6RYq6uGO.nol2m8kuR.Ap6rJCiu6ZtusBrYU9q4WmyhcEWOtADhaUkYG6hPTul
	l_ZVLhCV70cKp3tasKF2EwAUXZw.i3jEq5rnM2E.YDJ1OrmELMeWmv_1g48X0g5Anz2MFRJJ4Sd8
	1_R5VblF.vEI.mnDcbyQ9lod8pcBIzMDF.VhrNNo_XXiz0MsW9rDOumieD0KLAceFAO_g5E0J9fV
	KwIC9JOtN36BHIUyrrxq6072fSim3nHn9aIXxvAYRFjUDPgdMqXxaAr_Nvo58xDl27qUzx_N_LeI
	xeC2S23u8QhYDb.cPEzdkh2PNSaOJ27eln0abM6bkOWieri6XYGCSiu3n4h1DI7ZHqQb0OcQkasH
	osL9IMCHymKZtOH4LM64Fm_t_6VOHwWUBkJERC12G1iKuThaNQoWiMCSCfIdPaVbweXagyydbRvc
	PaMZ.IdVZe0P9DZaxHmEMcBzw8f3.mZWBgOu9Ja9ETXTmZhxkOQPzJ4aIOmQr.A--
Received: by 98.138.105.226; Fri, 02 Oct 2015 21:37:57 +0000 
Date: Fri, 2 Oct 2015 21:37:56 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"danielhilst@gmail.com" <danielhilst@gmail.com>
Message-ID: <962916176.503077.1443821876374.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Re: wpa_supplicant on Raspberry Pi 2B
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
X-List-Received-Date: Fri, 02 Oct 2015 21:38:01 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_503076_1556697868.1443821876368"

------=_Part_503076_1556697868.1443821876368
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,Still no success getting wifi working.Any and all help appreciated.
Created a new image which installed 46 new rpms linux-firmware see below.
=C2=A0
ps -ax | grep wpa_supplicant
=C2=A0 503 ?=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 S=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0:00 /usr/sbin/wpa_supplicant -u
=C2=A0 704 pts/0=C2=A0=C2=A0=C2=A0 R+=C2=A0=C2=A0=C2=A0=C2=A0 0:00 grep wpa=
_supplicant

root@raspberrypi2:~# wpa_cli stat
Failed to connect to non-global ctrl_ifname: (nil)=C2=A0 error: Success
root@raspberrypi2:~# wpa_cli stat
Failed to connect to non-global ctrl_ifname: (nil)=C2=A0 error: Success

root@raspberrypi2:~# wpa_supplicant -ddd -B=C2=A0 -i wlan0 -D nl80211 -c /e=
tc/wpa_supplicant.conf
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
=C2=A0=C2=A0=C2=A0=C2=A0 41 54 54 39 78 32 78 39 6a 37=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ATT9x2x9j7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
PSK (ASCII passphrase) - hexdump_ascii(len=3D12): [REMOVED]
proto: 0x1
key_mgmt: 0x2
PSK (from passphrase) - hexdump(len=3D32): [REMOVED]
Priority group 0
=C2=A0=C2=A0 id=3D0 ssid=3D'ATT9x2x9j7'
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
wlan0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 40:A5:EF:05:=
4D:01=C2=A0=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 BROADCAST MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:0 errors:=
0 dropped:0 overruns:0 frame:0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:0 errors:=
0 dropped:0 overruns:0 carrier:0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:0 (0.0 B)=
=C2=A0 TX bytes:0 (0.0 B)

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
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_503076_1556697868.1443821876368
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1443821462523_2796"><span=
 id=3D"yui_3_16_0_1_1443821462523_2916">Hi all,</span></div><div id=3D"yui_=
3_16_0_1_1443821462523_3406" dir=3D"ltr"><span id=3D"yui_3_16_0_1_144382146=
2523_2916">Still no success getting wifi working.</span></div><div id=3D"yu=
i_3_16_0_1_1443821462523_3405" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1443821=
462523_2916">Any and all help appreciated.</span></div><div id=3D"yui_3_16_=
0_1_1443821462523_3404" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1443821462523_=
2916"><br></span></div><div id=3D"yui_3_16_0_1_1443821462523_3352" dir=3D"l=
tr"><span id=3D"yui_3_16_0_1_1443821462523_2916">Created a new image which =
installed 46 new rpms linux-firmware see below.<br class=3D"" id=3D"yui_3_1=
6_0_1_1443821462523_2920">&nbsp;<br class=3D"" id=3D"yui_3_16_0_1_144382146=
2523_2922">ps -ax | grep wpa_supplicant<br class=3D"" id=3D"yui_3_16_0_1_14=
43821462523_2924">&nbsp; 503 ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0:00 /usr/sbin/wpa_supplicant -u<br class=3D"=
" id=3D"yui_3_16_0_1_1443821462523_2926">&nbsp; 704 pts/0&nbsp;&nbsp;&nbsp;=
 R+&nbsp;&nbsp;&nbsp;&nbsp; 0:00 grep wpa_supplicant<br class=3D"" id=3D"yu=
i_3_16_0_1_1443821462523_2928"><br class=3D"" id=3D"yui_3_16_0_1_1443821462=
523_2930">root@raspberrypi2:~# wpa_cli stat<br class=3D"" id=3D"yui_3_16_0_=
1_1443821462523_2932">Failed to connect to non-global ctrl_ifname: (nil)&nb=
sp; error: Success<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2934">roo=
t@raspberrypi2:~# wpa_cli stat<br class=3D"" id=3D"yui_3_16_0_1_14438214625=
23_2936">Failed to connect to non-global ctrl_ifname: (nil)&nbsp; error: Su=
ccess<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2938"><br class=3D"" i=
d=3D"yui_3_16_0_1_1443821462523_2940">root@raspberrypi2:~# wpa_supplicant -=
ddd -B&nbsp; -i wlan0 -D nl80211 -c /etc/wpa_supplicant.conf<br class=3D"" =
id=3D"yui_3_16_0_1_1443821462523_2942">wpa_supplicant v2.4<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_2944">random: Trying to read entropy from /d=
ev/random<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2946">Successfully=
 initialized wpa_supplicant<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_=
2948">Initializing interface 'wlan0' conf '/etc/wpa_supplicant.conf' driver=
 'nl80211' ctrl_interface 'N/A' bridge 'N/A'<br class=3D"" id=3D"yui_3_16_0=
_1_1443821462523_2950">Configuration file '/etc/wpa_supplicant.conf' -&gt; =
'/etc/wpa_supplicant.conf'<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2=
952">Reading configuration file '/etc/wpa_supplicant.conf'<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_2954">ctrl_interface=3D'/var/run/wpa_supplic=
ant'<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2956">ctrl_interface_gr=
oup=3D'0'<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2958">update_confi=
g=3D1<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2960">Line: 5 - start =
of a new network block<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2962"=
>scan_ssid=3D1 (0x1)<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2964">s=
sid - hexdump_ascii(len=3D10):<br class=3D"" id=3D"yui_3_16_0_1_14438214625=
23_2966">&nbsp;&nbsp;&nbsp;&nbsp; 41 54 54 39 78 32 78 39 6a 37&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ATT9x2x9j7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2968">PSK (ASCII passphrase=
) - hexdump_ascii(len=3D12): [REMOVED]<br class=3D"" id=3D"yui_3_16_0_1_144=
3821462523_2970">proto: 0x1<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_=
2972">key_mgmt: 0x2<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2974">PS=
K (from passphrase) - hexdump(len=3D32): [REMOVED]<br class=3D"" id=3D"yui_=
3_16_0_1_1443821462523_2976">Priority group 0<br class=3D"" id=3D"yui_3_16_=
0_1_1443821462523_2978">&nbsp;&nbsp; id=3D0 ssid=3D'ATT9x2x9j7'<br class=3D=
"" id=3D"yui_3_16_0_1_1443821462523_2980">rfkill: initial event: idx=3D0 ty=
pe=3D1 op=3D0 soft=3D1 hard=3D0<br class=3D"" id=3D"yui_3_16_0_1_1443821462=
523_2982">rfkill: WLAN soft blocked<br class=3D"" id=3D"yui_3_16_0_1_144382=
1462523_2984">nl80211: Supported cipher 00-0f-ac:1<br class=3D"" id=3D"yui_=
3_16_0_1_1443821462523_2986">nl80211: Supported cipher 00-0f-ac:5<br class=
=3D"" id=3D"yui_3_16_0_1_1443821462523_2988">nl80211: Supported cipher 00-0=
f-ac:2<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2990">nl80211: Suppor=
ted cipher 00-0f-ac:4<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2992">=
nl80211: Using driver-based off-channel TX<br class=3D"" id=3D"yui_3_16_0_1=
_1443821462523_2994">nl80211: interface wlan0 in phy phy0<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_2996">nl80211: Set mode ifindex 3 iftype 2 (=
STATION)<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_2998">nl80211: Subs=
cribe to mgmt frames with non-AP handle 0x5a6e68<br class=3D"" id=3D"yui_3_=
16_0_1_1443821462523_3000">nl80211: Register frame type=3D0xd0 (WLAN_FC_STY=
PE_ACTION) nl_handle=3D0x5a6e68 match=3D06<br class=3D"" id=3D"yui_3_16_0_1=
_1443821462523_3002">nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACT=
ION) nl_handle=3D0x5a6e68 match=3D0a07<br class=3D"" id=3D"yui_3_16_0_1_144=
3821462523_3004">nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION)=
 nl_handle=3D0x5a6e68 match=3D0a11<br class=3D"" id=3D"yui_3_16_0_1_1443821=
462523_3006">nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_=
handle=3D0x5a6e68 match=3D1101<br class=3D"" id=3D"yui_3_16_0_1_14438214625=
23_3008">nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_hand=
le=3D0x5a6e68 match=3D1102<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3=
010">nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=
=3D0x5a6e68 match=3D0505<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_301=
2">nl80211: Could not yet enable interface 'wlan0' due to rfkill<br class=
=3D"" id=3D"yui_3_16_0_1_1443821462523_3014">netlink: Operstate: ifindex=3D=
3 linkmode=3D1 (userspace-control), operstate=3D5 (IF_OPER_DORMANT)<br clas=
s=3D"" id=3D"yui_3_16_0_1_1443821462523_3016">nl80211: driver param=3D'(nul=
l)'<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3018">Add interface wlan=
0 to a new radio phy0<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3020">=
nl80211: Regulatory information - country=3D00<br class=3D"" id=3D"yui_3_16=
_0_1_1443821462523_3022">nl80211: 2402-2472 @ 40 MHz 20 mBm<br class=3D"" i=
d=3D"yui_3_16_0_1_1443821462523_3024">nl80211: 2457-2482 @ 40 MHz 20 mBm (n=
o IR)<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3026">nl80211: 2474-24=
94 @ 20 MHz 20 mBm (no OFDM) (no IR)<br class=3D"" id=3D"yui_3_16_0_1_14438=
21462523_3028">nl80211: 5170-5250 @ 160 MHz 20 mBm (no IR)<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_3030">nl80211: 5250-5330 @ 160 MHz 20 mBm (D=
FS) (no IR)<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3032">nl80211: 5=
490-5730 @ 160 MHz 20 mBm (DFS) (no IR)<br class=3D"" id=3D"yui_3_16_0_1_14=
43821462523_3034">nl80211: Added 802.11b mode based on 802.11g information<=
br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3036">wlan0: Own MAC address=
: 40:a5:ef:05:4d:01<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3038">wp=
a_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_idx=
=3D0 set_tx=3D0 seq_len=3D0 key_len=3D0<br class=3D"" id=3D"yui_3_16_0_1_14=
43821462523_3040">nl80211: set_key failed; err=3D-100 Network is down)<br c=
lass=3D"" id=3D"yui_3_16_0_1_1443821462523_3042">wpa_driver_nl80211_set_key=
: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key_idx=3D1 set_tx=3D0 seq_len=
=3D0 key_len=3D0<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3044">nl802=
11: set_key failed; err=3D-100 Network is down)<br class=3D"" id=3D"yui_3_1=
6_0_1_1443821462523_3046">wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) a=
lg=3D0 addr=3D(nil) key_idx=3D2 set_tx=3D0 seq_len=3D0 key_len=3D0<br class=
=3D"" id=3D"yui_3_16_0_1_1443821462523_3048">nl80211: set_key failed; err=
=3D-100 Network is down)<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_305=
0">wpa_driver_nl80211_set_key: ifindex=3D3 (wlan0) alg=3D0 addr=3D(nil) key=
_idx=3D3 set_tx=3D0 seq_len=3D0 key_len=3D0<br class=3D"" id=3D"yui_3_16_0_=
1_1443821462523_3052">nl80211: set_key failed; err=3D-100 Network is down)<=
br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3054">wlan0: RSN: flushing P=
MKID list in the driver<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3056=
">nl80211: Flush PMKIDs<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3058=
">wlan0: Setting scan request: 0.100000 sec<br class=3D"" id=3D"yui_3_16_0_=
1_1443821462523_3060">wlan0: WPS: UUID based on MAC address: 50fb4973-c5e3-=
5899-b3c0-27a64501d294<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3062"=
>GnuTLS: Library version 3.3.14 (runtime) - 3.3.14 (build)<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_3064">EAPOL: SUPP_PAE entering state DISCONN=
ECTED<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3066">EAPOL: Supplican=
t port status: Unauthorized<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_=
3068">nl80211: Skip set_supp_port(unauthorized) while not associated<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1443821462523_3070">EAPOL: KEY_RX entering state=
 NO_KEY_RECEIVE<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3072">EAPOL:=
 SUPP_BE entering state INITIALIZE<br class=3D"" id=3D"yui_3_16_0_1_1443821=
462523_3074">EAP: EAP entering state DISABLED<br class=3D"" id=3D"yui_3_16_=
0_1_1443821462523_3076">Using existing control interface directory.<br clas=
s=3D"" id=3D"yui_3_16_0_1_1443821462523_3078">ctrl_interface_group=3D0<br c=
lass=3D"" id=3D"yui_3_16_0_1_1443821462523_3080">wlan0: Added interface wla=
n0<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3082">wlan0: State: DISCO=
NNECTED -&gt; DISCONNECTED<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3=
084">nl80211: Set wlan0 operstate 0-&gt;0 (DORMANT)<br class=3D"" id=3D"yui=
_3_16_0_1_1443821462523_3086">netlink: Operstate: ifindex=3D3 linkmode=3D-1=
 (no change), operstate=3D5 (IF_OPER_DORMANT)<br class=3D"" id=3D"yui_3_16_=
0_1_1443821462523_3088">Daemonize..<br class=3D"" id=3D"yui_3_16_0_1_144382=
1462523_3090"><br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3092">root@ra=
spberrypi2:~# wpa_cli stat<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3=
094">Selected interface 'wlan0'<br class=3D"" id=3D"yui_3_16_0_1_1443821462=
523_3096">wpa_state=3DINTERFACE_DISABLED<br class=3D"" id=3D"yui_3_16_0_1_1=
443821462523_3098">address=3D40:a5:ef:05:4d:01<br class=3D"" id=3D"yui_3_16=
_0_1_1443821462523_3100">uuid=3D50fb4973-c5e3-5899-b3c0-27a64501d294<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1443821462523_3102"><br class=3D"" id=3D"yui_3_1=
6_0_1_1443821462523_3104">root@raspberrypi2:~# ifconfig wlan0<br class=3D""=
 id=3D"yui_3_16_0_1_1443821462523_3106">wlan0&nbsp;&nbsp;&nbsp;&nbsp; Link =
encap:Ethernet&nbsp; HWaddr 40:A5:EF:05:4D:01&nbsp; <br class=3D"" id=3D"yu=
i_3_16_0_1_1443821462523_3108">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; BROADCAST MULTICAST&nbsp; MTU:1500&nbsp; Metric:1<br class=3D"" =
id=3D"yui_3_16_0_1_1443821462523_3110">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; RX packets:0 errors:0 dropped:0 overruns:0 frame:0<br cl=
ass=3D"" id=3D"yui_3_16_0_1_1443821462523_3112">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3114">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; collisions:0 txqueuelen:1000 <br cla=
ss=3D"" id=3D"yui_3_16_0_1_1443821462523_3116">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; RX bytes:0 (0.0 B)&nbsp; TX bytes:0 (0.0 B)<br c=
lass=3D"" id=3D"yui_3_16_0_1_1443821462523_3118"><br class=3D"" id=3D"yui_3=
_16_0_1_1443821462523_3120">Thanks</span></div><div id=3D"yui_3_16_0_1_1443=
821462523_3381" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1443821462523_2916"><b=
r></span></div><div id=3D"yui_3_16_0_1_1443821462523_3389" dir=3D"ltr"><spa=
n id=3D"yui_3_16_0_1_1443821462523_2916">+linux-firmware-0.0+git0+3161bfa47=
9-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3124">+linux-firmwa=
re-ar3k-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821=
462523_3126">+linux-firmware-ar9170-0.0+git0+3161bfa479-r0.all<br class=3D"=
" id=3D"yui_3_16_0_1_1443821462523_3128">+linux-firmware-ath6k-0.0+git0+316=
1bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3130">+linux-=
firmware-ath9k-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_=
1443821462523_3132">+linux-firmware-atheros-license-0.0+git0+3161bfa479-r0.=
all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3134">+linux-firmware-bc=
m4329-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382146=
2523_3136">+linux-firmware-bcm4330-0.0+git0+3161bfa479-r0.all<br class=3D""=
 id=3D"yui_3_16_0_1_1443821462523_3138">+linux-firmware-bcm4334-0.0+git0+31=
61bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3140">+linux=
-firmware-broadcom-license-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"y=
ui_3_16_0_1_1443821462523_3142">+linux-firmware-dev-0.0+git0+3161bfa479-r0.=
all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3144">+linux-firmware-iw=
lwifi-135-6-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144=
3821462523_3146">+linux-firmware-iwlwifi-3160-7-0.0+git0+3161bfa479-r0.all<=
br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3148">+linux-firmware-iwlwif=
i-3160-8-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382=
1462523_3150">+linux-firmware-iwlwifi-3160-9-0.0+git0+3161bfa479-r0.all<br =
class=3D"" id=3D"yui_3_16_0_1_1443821462523_3152">+linux-firmware-iwlwifi-6=
000-4-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382146=
2523_3154">+linux-firmware-iwlwifi-6000g2a-5-0.0+git0+3161bfa479-r0.all<br =
class=3D"" id=3D"yui_3_16_0_1_1443821462523_3156">+linux-firmware-iwlwifi-6=
000g2a-6-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382=
1462523_3158">+linux-firmware-iwlwifi-6000g2b-5-0.0+git0+3161bfa479-r0.all<=
br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3160">+linux-firmware-iwlwif=
i-6000g2b-6-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144=
3821462523_3162">+linux-firmware-iwlwifi-6050-4-0.0+git0+3161bfa479-r0.all<=
br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3164">+linux-firmware-iwlwif=
i-6050-5-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382=
1462523_3166">+linux-firmware-iwlwifi-7260-7-0.0+git0+3161bfa479-r0.all<br =
class=3D"" id=3D"yui_3_16_0_1_1443821462523_3168">+linux-firmware-iwlwifi-7=
260-8-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382146=
2523_3170">+linux-firmware-iwlwifi-7260-9-0.0+git0+3161bfa479-r0.all<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1443821462523_3172">+linux-firmware-iwlwifi-7265=
-8-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_144382146252=
3_3174">+linux-firmware-iwlwifi-7265-9-0.0+git0+3161bfa479-r0.all<br class=
=3D"" id=3D"yui_3_16_0_1_1443821462523_3176">+linux-firmware-iwlwifi-licens=
e-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523=
_3178">+linux-firmware-license-0.0+git0+3161bfa479-r0.all<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_3180">+linux-firmware-marvell-license-0.0+gi=
t0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3182">+=
linux-firmware-radeon-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_=
16_0_1_1443821462523_3184">+linux-firmware-radeon-license-0.0+git0+3161bfa4=
79-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3186">+linux-firmw=
are-ralink-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443=
821462523_3188">+linux-firmware-ralink-license-0.0+git0+3161bfa479-r0.all<b=
r class=3D"" id=3D"yui_3_16_0_1_1443821462523_3190">+linux-firmware-rtl-lic=
ense-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462=
523_3192">+linux-firmware-rtl8192ce-0.0+git0+3161bfa479-r0.all<br class=3D"=
" id=3D"yui_3_16_0_1_1443821462523_3194">+linux-firmware-rtl8192cu-0.0+git0=
+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3196">+li=
nux-firmware-rtl8192su-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3=
_16_0_1_1443821462523_3198">+linux-firmware-sd8686-0.0+git0+3161bfa479-r0.a=
ll<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3200">+linux-firmware-sd8=
787-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_14438214625=
23_3202">+linux-firmware-sd8797-0.0+git0+3161bfa479-r0.all<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_3204">+linux-firmware-ti-connectivity-licens=
e-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523=
_3206">+linux-firmware-vt6656-0.0+git0+3161bfa479-r0.all<br class=3D"" id=
=3D"yui_3_16_0_1_1443821462523_3208">+linux-firmware-vt6656-license-0.0+git=
0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3210">+l=
inux-firmware-wl12xx-0.0+git0+3161bfa479-r0.all<br class=3D"" id=3D"yui_3_1=
6_0_1_1443821462523_3212">+linux-firmware-wl18xx-0.0+git0+3161bfa479-r0.all=
<br class=3D"" id=3D"yui_3_16_0_1_1443821462523_3214"></span></div><div id=
=3D"yui_3_16_0_1_1443821462523_2798">&nbsp;</div><div id=3D"yui_3_16_0_1_14=
43821462523_2834" class=3D"signature">Edward Vidal Jr. e-mail develone@sbcg=
lobal.net 915-595-1613</div></div></body></html>

------=_Part_503076_1556697868.1443821876368--
