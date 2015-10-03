Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB32E00EB8; Sat,  3 Oct 2015 09:53:52 -0700 (PDT)
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
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8B7E00B3E
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 09:51:48 -0700 (PDT)
Received: by ykdt18 with SMTP id t18so137228169ykd.3
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 09:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z4tguBcP3czoI7m9d0Wq+FaNG+uyC4AywvhhmEMbQps=;
	b=b01lcfypsqFNDNwEQP5o7455qnHNayInYsig9WW7CzdG6KAB+gfXu0uBwp4gfog3do
	G3DKqLGpZR6of3FRn+6u3K0VKZSPKsIScW4Bl11Jn3FqU4e+JZrqcmmDD0jPE01oUYRG
	t4q8cZyTrwn95NBtfaGLvSS361pmwPa87shpSfW+iqxjDeFL4yeGECR8jW3JocpBUZVs
	TTNNwcts8JZyUDyj7A0JJcdMlEAOWEA8EeuxG9rw/LarOrLMp3euSagwP3NROB7oMEne
	bSISTT0us9sgCJk6GYZMhgq023aHgY34k6XzniC9Eme/PYuHjfeFL4lrcIrxPhDHHZft
	+e6A==
MIME-Version: 1.0
X-Received: by 10.129.51.88 with SMTP id z85mr18591437ywz.148.1443891108540;
	Sat, 03 Oct 2015 09:51:48 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Sat, 3 Oct 2015 09:51:48 -0700 (PDT)
In-Reply-To: <246328473.707613.1443876700452.JavaMail.yahoo@mail.yahoo.com>
References: <mailman.2930.1443821882.7199.yocto@yoctoproject.org>
	<246328473.707613.1443876700452.JavaMail.yahoo@mail.yahoo.com>
Date: Sat, 3 Oct 2015 13:51:48 -0300
Message-ID: <CAF3SDA43v2S817vCTSOK-j07h9t-3TPG+WAu16ot0ZmWRtg=aA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 61, Issue 13
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
X-List-Received-Date: Sat, 03 Oct 2015 16:53:52 -0000
Content-Type: text/plain; charset=UTF-8

I'm glad that works,

Cheers,

2015-10-03 9:51 GMT-03:00 Edward Vidal <develone@sbcglobal.net>:
> Hi All,
>
> After installing linux-firmware and "rfkill unblock all".
> Then at the console Enabled wireless and provided the psk manually the
> wireless is working.
> I now have 2 Raspberry Pi 2B running RaspBian and 1 Raspberry Pi 2B running
> Yocto core-image-sato all wireless.
>
> Thanks for the help.
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
>
>
> On Friday, October 2, 2015 3:38 PM, "yocto-request@yoctoproject.org"
> <yocto-request@yoctoproject.org> wrote:
>
>
> Send yocto mailing list submissions to
>     yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>     https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>     yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>     yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>   1. Re: [meta-raspberrypi][PATCH] userland: Fix multiple inline
>       issues while building with gcc 5.x (Andrei Gherzan)
>   2. Re: [meta-raspberrypi] compiling userland (Andrei Gherzan)
>   3. Re: [meta-raspberrypi] compiling userland (Andrei Gherzan)
>   4. Re: wpa_supplicant on Raspberry Pi 2B (Edward Vidal)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 2 Oct 2015 23:29:46 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Tom Doehring <toolmmy@googlemail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH] userland: Fix multiple
>     inline issues while building with gcc 5.x
> Message-ID: <20151002212946.GA11827@resin>
> Content-Type: text/plain; charset=us-ascii
>
> On Sun, Sep 27, 2015 at 03:34:14PM +0200, Tom Doehring wrote:
>> Building userland source with gcc 5.x causes multiple issues such as:
>>
>> vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity'
>> declared but never defined
>> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
>>
>> The following patches fixes these issues and allows building userland on
>> the current
>> poky master branch.
>>
>> Signed-off-by: Tom Doehring <toolmmy@googlemail.com>
>> ---
>>  .../userland/0001-Use-newer-POSIX-macro.patch      | 35
>> ----------------------
>>  .../userland/0001-fix-gcc-5.x-inlines.patch        | 26 ++++++++++++++++
>>  .../userland/userland/0002-fix-musl-build.patch    | 22 ++++++++++++++
>>  .../0003-fix-alloc-size-uninitialized.patch        | 13 ++++++++
>>  recipes-graphics/userland/userland_git.bb          | 13 +++++---
>>  5 files changed, 70 insertions(+), 39 deletions(-)
>>  delete mode 100644
>> recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
>>  create mode 100644
>> recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
>>  create mode 100644
>> recipes-graphics/userland/userland/0002-fix-musl-build.patch
>>  create mode 100644
>> recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
>>
>
> Tested on GCC 5.2.0 and worked fine. Merged to master. Thank you.
>
> --
> Andrei Gherzan
>
>
> ------------------------------
>
> Message: 2
> Date: Fri, 2 Oct 2015 23:33:35 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Tom Martin <t.martin@eins-plus.de>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-raspberrypi] compiling userland
> Message-ID: <20151002213335.GA3484@resin>
> Content-Type: text/plain; charset=us-ascii
>
> Hi Tom,
>
> On Fri, Sep 25, 2015 at 01:19:43AM +0200, Tom Martin wrote:
>> i'm completly new to yocta and doing my first steps.
>>
>> plan is to build a system with a small footprint for low-latency video
>> wifibroadcast.
>>
>> first steps are trying to build rpi-test-image including omxplayer. but
>> compiling fails when compiling userland.
>>
>> last lines before the failure are. am i missing just something basic?
>
> This should be now fixed in master. Could you give it a try?
>
> --
> Andrei Gherzan
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 2 Oct 2015 23:34:56 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Andreas M?ller <schnitzeltony@googlemail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-raspberrypi] compiling userland
> Message-ID: <20151002213456.GB3484@resin>
> Content-Type: text/plain; charset=iso-8859-1
>
> On Sun, Sep 27, 2015 at 10:24:28PM +0200, Andreas M?ller wrote:
>> On Fri, Sep 25, 2015 at 6:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> > Can you try the patches from
>> > https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>> >
>> Hi Khem,
>>
>> Because of running into same issues I've tried your branch and get
>> errors as attached with current oe-core.
>>
>> Off-topic note: I think this layer is totally under-maintained. There
>> were many patches send that were not even commented. This ends up in
>> forks (e.g yours - and yes I've seen your efforts in sending patches)
>> which should be avoided.
>>
>
> Started to get back on track. Hope this won't happen again.
>
>
> --
> Andrei Gherzan
>
>
> ------------------------------
>
> Message: 4
> Date: Fri, 2 Oct 2015 21:37:56 +0000 (UTC)
> From: Edward Vidal <develone@sbcglobal.net>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
>     "danielhilst@gmail.com" <danielhilst@gmail.com>
> Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
> Message-ID:
>     <962916176.503077.1443821876374.JavaMail.yahoo@mail.yahoo.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi all,Still no success getting wifi working.Any and all help appreciated.
> Created a new image which installed 46 new rpms linux-firmware see below.
> ?
> ps -ax | grep wpa_supplicant
> ? 503 ???????? S????? 0:00 /usr/sbin/wpa_supplicant -u
> ? 704 pts/0??? R+???? 0:00 grep wpa_supplicant
>
> root@raspberrypi2:~# wpa_cli stat
> Failed to connect to non-global ctrl_ifname: (nil)? error: Success
> root@raspberrypi2:~# wpa_cli stat
> Failed to connect to non-global ctrl_ifname: (nil)? error: Success
>
> root@raspberrypi2:~# wpa_supplicant -ddd -B? -i wlan0 -D nl80211 -c
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
> ???? 41 54 54 39 78 32 78 39 6a 37???????????????????? ATT9x2x9j7?????
> PSK (ASCII passphrase) - hexdump_ascii(len=12): [REMOVED]
> proto: 0x1
> key_mgmt: 0x2
> PSK (from passphrase) - hexdump(len=32): [REMOVED]
> Priority group 0
> ?? id=0 ssid='ATT9x2x9j7'
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
> wlan0???? Link encap:Ethernet? HWaddr 40:A5:EF:05:4D:01?
> ????????? BROADCAST MULTICAST? MTU:1500? Metric:1
> ????????? RX packets:0 errors:0 dropped:0 overruns:0 frame:0
> ????????? TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
> ????????? collisions:0 txqueuelen:1000
> ????????? RX bytes:0 (0.0 B)? TX bytes:0 (0.0 B)
>
> Thanks
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
> ?Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL:
> <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151002/c636a928/attachment.html>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 61, Issue 13
> *************************************
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

