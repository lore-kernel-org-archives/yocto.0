Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5025DE00E46; Sat,  3 Oct 2015 09:52:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56277E00B1E
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 09:50:10 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so137082993ykd.2
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 09:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nFdPtuDUraybxGL3BeJgijo2tyR7cOg4GSn3uPrijSA=;
	b=r4O6k6oGhO4mUIyk9eTyJVS5h4d7vFFN7u0ex88cG21AJL0fDvgObWok6s3Hb0qGRr
	8whdx+9ZP3Ojgu2lReshwIXSVzKrhn9dtDxiZwSeV4wT8nUeczZvStmHAvki7T+Ujfub
	ztVred+Y7mg2f0/USmvEbEedODzQcLaoyRPOrzefD2w12P8XKM5ISNl4umCkhn2JGSUj
	lCzyyAaTOWSyjgJDz98G0usBzBD/HUCTmgwrgSvdc24UHfwpDT3vrUA9U3cbTkyEmbXr
	NM7IqIX6shb81vTtdfM5y1QmjmixlMgyRIKKJCsuZSM9RSiRSaN0Eue2qRkaPvfnffHh
	wwhg==
MIME-Version: 1.0
X-Received: by 10.129.21.213 with SMTP id 204mr18348056ywv.38.1443891010034;
	Sat, 03 Oct 2015 09:50:10 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Sat, 3 Oct 2015 09:50:09 -0700 (PDT)
In-Reply-To: <962916176.503077.1443821876374.JavaMail.yahoo@mail.yahoo.com>
References: <962916176.503077.1443821876374.JavaMail.yahoo@mail.yahoo.com>
Date: Sat, 3 Oct 2015 13:50:09 -0300
Message-ID: <CAF3SDA6Ba0mCwbbvwe8CAjrSGOMUNsuoBTFG6GUy3ruf--ta7g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wpa_supplicant on Raspberry Pi 2B
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
X-List-Received-Date: Sat, 03 Oct 2015 16:52:14 -0000
Content-Type: text/plain; charset=UTF-8

2015-10-02 18:37 GMT-03:00 Edward Vidal <develone@sbcglobal.net>:
> Hi all,
> Still no success getting wifi working.
> Any and all help appreciated.
>
> Created a new image which installed 46 new rpms linux-firmware see below.
>
> ps -ax | grep wpa_supplicant
>   503 ?        S      0:00 /usr/sbin/wpa_supplicant -u
>   704 pts/0    R+     0:00 grep wpa_supplicant
>
Well wpa_supplicant is running here with -u option. Did you have
connman installed? What image you're using? I don't have a rasp2 so I
can only test with raspB.

Best regards,


> root@raspberrypi2:~# wpa_cli stat
> Failed to connect to non-global ctrl_ifname: (nil)  error: Success
> root@raspberrypi2:~# wpa_cli stat
> Failed to connect to non-global ctrl_ifname: (nil)  error: Success
>
> root@raspberrypi2:~# wpa_supplicant -ddd -B  -i wlan0 -D nl80211 -c
> /etc/wpa_supplicant.conf
> wpa_supplicant v2.4
> random: Trying to read entropy from /dev/random
> Successfully initialized wpa_supplicant
> Initializing interface 'wlan0' conf '/etc/wpa_supplicant.conf' driver
> 'nl80211' ctrl_interface 'N/A' bridge 'N/A'
> Configuration file '/etc/wpa_supplicant.conf' -> '/etc/wpa_supplicant.conf'
> Reading configuration file '/etc/wpa_supplicant.conf'
> ctrl_interface='/var/run/wpa_supplicant'
> ctrl_interface_group='0'
> update_config=1
> Line: 5 - start of a new network block
> scan_ssid=1 (0x1)
> ssid - hexdump_ascii(len=10):
>      41 54 54 39 78 32 78 39 6a 37                     ATT9x2x9j7
> PSK (ASCII passphrase) - hexdump_ascii(len=12): [REMOVED]
> proto: 0x1
> key_mgmt: 0x2
> PSK (from passphrase) - hexdump(len=32): [REMOVED]
> Priority group 0
>    id=0 ssid='ATT9x2x9j7'
> rfkill: initial event: idx=0 type=1 op=0 soft=1 hard=0
> rfkill: WLAN soft blocked
> nl80211: Supported cipher 00-0f-ac:1
> nl80211: Supported cipher 00-0f-ac:5
> nl80211: Supported cipher 00-0f-ac:2
> nl80211: Supported cipher 00-0f-ac:4
> nl80211: Using driver-based off-channel TX
> nl80211: interface wlan0 in phy phy0
> nl80211: Set mode ifindex 3 iftype 2 (STATION)
> nl80211: Subscribe to mgmt frames with non-AP handle 0x5a6e68
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=06
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=0a07
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=0a11
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=1101
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=1102
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=0x5a6e68
> match=0505
> nl80211: Could not yet enable interface 'wlan0' due to rfkill
> netlink: Operstate: ifindex=3 linkmode=1 (userspace-control), operstate=5
> (IF_OPER_DORMANT)
> nl80211: driver param='(null)'
> Add interface wlan0 to a new radio phy0
> nl80211: Regulatory information - country=00
> nl80211: 2402-2472 @ 40 MHz 20 mBm
> nl80211: 2457-2482 @ 40 MHz 20 mBm (no IR)
> nl80211: 2474-2494 @ 20 MHz 20 mBm (no OFDM) (no IR)
> nl80211: 5170-5250 @ 160 MHz 20 mBm (no IR)
> nl80211: 5250-5330 @ 160 MHz 20 mBm (DFS) (no IR)
> nl80211: 5490-5730 @ 160 MHz 20 mBm (DFS) (no IR)
> nl80211: Added 802.11b mode based on 802.11g information
> wlan0: Own MAC address: 40:a5:ef:05:4d:01
> wpa_driver_nl80211_set_key: ifindex=3 (wlan0) alg=0 addr=(nil) key_idx=0
> set_tx=0 seq_len=0 key_len=0
> nl80211: set_key failed; err=-100 Network is down)
> wpa_driver_nl80211_set_key: ifindex=3 (wlan0) alg=0 addr=(nil) key_idx=1
> set_tx=0 seq_len=0 key_len=0
> nl80211: set_key failed; err=-100 Network is down)
> wpa_driver_nl80211_set_key: ifindex=3 (wlan0) alg=0 addr=(nil) key_idx=2
> set_tx=0 seq_len=0 key_len=0
> nl80211: set_key failed; err=-100 Network is down)
> wpa_driver_nl80211_set_key: ifindex=3 (wlan0) alg=0 addr=(nil) key_idx=3
> set_tx=0 seq_len=0 key_len=0
> nl80211: set_key failed; err=-100 Network is down)
> wlan0: RSN: flushing PMKID list in the driver
> nl80211: Flush PMKIDs
> wlan0: Setting scan request: 0.100000 sec
> wlan0: WPS: UUID based on MAC address: 50fb4973-c5e3-5899-b3c0-27a64501d294
> GnuTLS: Library version 3.3.14 (runtime) - 3.3.14 (build)
> EAPOL: SUPP_PAE entering state DISCONNECTED
> EAPOL: Supplicant port status: Unauthorized
> nl80211: Skip set_supp_port(unauthorized) while not associated
> EAPOL: KEY_RX entering state NO_KEY_RECEIVE
> EAPOL: SUPP_BE entering state INITIALIZE
> EAP: EAP entering state DISABLED
> Using existing control interface directory.
> ctrl_interface_group=0
> wlan0: Added interface wlan0
> wlan0: State: DISCONNECTED -> DISCONNECTED
> nl80211: Set wlan0 operstate 0->0 (DORMANT)
> netlink: Operstate: ifindex=3 linkmode=-1 (no change), operstate=5
> (IF_OPER_DORMANT)
> Daemonize..
>
> root@raspberrypi2:~# wpa_cli stat
> Selected interface 'wlan0'
> wpa_state=INTERFACE_DISABLED
> address=40:a5:ef:05:4d:01
> uuid=50fb4973-c5e3-5899-b3c0-27a64501d294
>
> root@raspberrypi2:~# ifconfig wlan0
> wlan0     Link encap:Ethernet  HWaddr 40:A5:EF:05:4D:01
>           BROADCAST MULTICAST  MTU:1500  Metric:1
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>
> Thanks
>
> +linux-firmware-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ar3k-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ar9170-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ath6k-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ath9k-0.0+git0+3161bfa479-r0.all
> +linux-firmware-atheros-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-bcm4329-0.0+git0+3161bfa479-r0.all
> +linux-firmware-bcm4330-0.0+git0+3161bfa479-r0.all
> +linux-firmware-bcm4334-0.0+git0+3161bfa479-r0.all
> +linux-firmware-broadcom-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-dev-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-135-6-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-3160-7-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-3160-8-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-3160-9-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6000-4-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6000g2a-5-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6000g2a-6-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6000g2b-5-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6000g2b-6-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6050-4-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-6050-5-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-7260-7-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-7260-8-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-7260-9-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-7265-8-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-7265-9-0.0+git0+3161bfa479-r0.all
> +linux-firmware-iwlwifi-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-marvell-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-radeon-0.0+git0+3161bfa479-r0.all
> +linux-firmware-radeon-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ralink-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ralink-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-rtl-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-rtl8192ce-0.0+git0+3161bfa479-r0.all
> +linux-firmware-rtl8192cu-0.0+git0+3161bfa479-r0.all
> +linux-firmware-rtl8192su-0.0+git0+3161bfa479-r0.all
> +linux-firmware-sd8686-0.0+git0+3161bfa479-r0.all
> +linux-firmware-sd8787-0.0+git0+3161bfa479-r0.all
> +linux-firmware-sd8797-0.0+git0+3161bfa479-r0.all
> +linux-firmware-ti-connectivity-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-vt6656-0.0+git0+3161bfa479-r0.all
> +linux-firmware-vt6656-license-0.0+git0+3161bfa479-r0.all
> +linux-firmware-wl12xx-0.0+git0+3161bfa479-r0.all
> +linux-firmware-wl18xx-0.0+git0+3161bfa479-r0.all
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613



-- 
"Do or do not. There is no try"
  Yoda Master

