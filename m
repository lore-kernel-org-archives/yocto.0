Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20737E00BFD; Fri,  2 Oct 2015 12:50:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB807E009EF
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 12:50:01 -0700 (PDT)
Received: by ykft14 with SMTP id t14so120915758ykf.0
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 12:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=drWrK5pTykz7e4MbB2FDzA/Sx738o8/IDw4acBUcFa0=;
	b=ZX5iHZv8P2+oue9v/IU1LlRsdxIUgJxCA0SuhZHrYJxfX9Smbk6J2WyepYyZ11rCAi
	aFQSXpV05BbGdnPljQ4NqpFcyyyS14ll3hnm2EKSGVqFIqiRCyPcCkttPhoIXH/S7ONh
	vJqgUdlzObCIqiU7wjGFmioxoZmtjnKQ/bi9mvvsoKQ1ekb6WSBiK8UeXzGJOtaNxuNs
	02n8pXWypt5Jzxo6hCqnPQiRna+5owfxOK5T5ol2AKNo1DxvIh2ga/qNkSvizu0Fw5zs
	C9jxYeBARqHLo6ICxovq6SY0l7uL5s48EFmJhBBGc7G4FgfdPG42Tt9n5/fvWSAyApt0
	/lnQ==
MIME-Version: 1.0
X-Received: by 10.129.21.213 with SMTP id 204mr15006313ywv.38.1443815400377;
	Fri, 02 Oct 2015 12:50:00 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 12:50:00 -0700 (PDT)
In-Reply-To: <1533093975.464421.1443812908982.JavaMail.yahoo@mail.yahoo.com>
References: <CAF3SDA7dynzdg5VP83FfyQCi-F+_xVUsRcOszYQvR6FbKWPnDg@mail.gmail.com>
	<1533093975.464421.1443812908982.JavaMail.yahoo@mail.yahoo.com>
Date: Fri, 2 Oct 2015 16:50:00 -0300
Message-ID: <CAF3SDA4+3CAMyJgOy_N-A0YeFjCSX_G5VZF=t_fN8ziJ5yoRfw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Edward Vidal <develone@sbcglobal.net>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 02 Oct 2015 19:50:06 -0000
Content-Type: multipart/alternative; boundary=001a114290120f999805212478d4

--001a114290120f999805212478d4
Content-Type: text/plain; charset=UTF-8

This seems weird to me:
"Could not set interface wlan0 flags (UP): No such file or directory"

Are you running this as root? What wifi card are you using? I had to
install linux-firmware to get wifi working but this wasn't on raspberry so
I didn't know what is triggering this NSFOD error. My guess was permission,
but...

The wpa_supplicant.conf seems fine to me. The `wpa_cli stat' returns what?

2015-10-02 16:08 GMT-03:00 Edward Vidal <develone@sbcglobal.net>:

> Hi Daniel,
> You are right wpa_supplicant is not running.
> I tried the following no success.
> wpa_supplicant -ddd -B -P /var/run/wpa_supplicant.wlan0.pid -i wlan0 -D
> nl80211,wext -c /etc/wpa_supplicant.conf
> wpa_supplicant v2.4
> random: Trying to read entropy from /dev/random
> Successfully initialized wpa_supplicant
> Initializing interface 'wlan0' conf '/etc/wpa_supplicant.conf' driver
> 'nl80211,wext' ctrl_interface 'N/A' bridge 'N/A'
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
> rfkill: initial event: idx=0 type=1 op=0 soft=0 hard=0
> nl80211: Supported cipher 00-0f-ac:1
> nl80211: Supported cipher 00-0f-ac:5
> nl80211: Supported cipher 00-0f-ac:2
> nl80211: Supported cipher 00-0f-ac:4
> nl80211: Using driver-based off-channel TX
> nl80211: interface wlan0 in phy phy0
> nl80211: Set mode ifindex 3 iftype 2 (STATION)
> nl80211: Subscribe to mgmt frames with non-AP handle 0x8f8eb8
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=06
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=0a07
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=0a11
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=1101
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=1102
> nl80211: Register frame type=0xd0 (WLAN_FC_STYPE_ACTION)
> nl_handle=0x8f8eb8 match=0505
> Could not set interface wlan0 flags (UP): No such file or directory
> nl80211: Could not set interface 'wlan0' UP
> nl80211: deinit ifname=wlan0 disabled_11b_rates=0
> nl80211: Remove monitor interface: refcount=0
> netlink: Operstate: ifindex=3 linkmode=0 (kernel-control), operstate=6
> (IF_OPER_UP)
> nl80211: Set mode ifindex 3 iftype 2 (STATION)
> nl80211: Unsubscribe mgmt frames handle 0x88070631 (mode change)
> wlan0: Failed to initialize driver interface - try next driver wrapper
> WEXT: cfg80211-based driver detected
> wext: interface wlan0 phy: phy0
> rfkill: initial event: idx=0 type=1 op=0 soft=0 hard=0
> Could not set interface wlan0 flags (UP): No such file or directory
> WEXT: Could not set interface 'wlan0' UP
> wlan0: Failed to initialize driver interface
> Failed to add interface wlan0
> wlan0: Cancelling scan request
> wlan0: Cancelling authentication timeout
>
> Is this correct for the wpa_supplicant.conf?
> ctrl_interface=/var/run/wpa_supplicant
> ctrl_interface_group=0
> update_config=1
>
> network={
>         scan_ssid=1
>         ssid="ATT9x2x9j7"
>         psk="2%699656433d"
>         proto=WPA
>         key_mgmt=WPA-PSK
> }
>
> Any ideas?
>
> Thanks
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
>
>
> On Friday, October 2, 2015 12:18 PM, Daniel. <danielhilst@gmail.com>
> wrote:
>
>
> It seems that your wpa_supplicant isn't being started at boot. Can you see
> it with `ps | grep wpa_supplicant'? You may start it by hand with something
> like `wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant.conf' and try
> `wpa_cli stat' stat again...
>
> Regards,
>
> 2015-10-02 12:34 GMT-03:00 Edward Vidal <develone@sbcglobal.net>:
>
> Hi Philip & Daniel,
> I modified interface
> diff -u interfaces.orig interfaces
> --- interfaces.orig    2015-09-15 04:53:28.759998719 +0000
> +++ interfaces    2015-09-15 04:54:16.999998700 +0000
> @@ -8,8 +8,8 @@
>  iface wlan0 inet dhcp
>      wireless_mode managed
>      wireless_essid any
> -    wpa-driver wext
> -    wpa-conf /etc/wpa_supplicant.conf
> +    wpa-driver nl80211
> +        wpa-conf /etc/wpa_supplicant.conf
>
>  iface atml0 inet dhcp
>  Also ran the wpa_cli stat
> root@raspberrypi2:/etc/network# wpa_cli stat
> Failed to connect to non-global ctrl_ifname: (nil)  error: Success
>  and
> wpa_cli -i wlan0
> wpa_cli v2.4
> Copyright (c) 2004-2015, Jouni Malinen <j@w1.fi> and contributors
>
> This software may be distributed under the terms of the BSD license.
> See README for more details.
>
>
>
> Interactive mode
>
> Could not connect to wpa_supplicant: wlan0 - re-trying
> Still no success.
> Thanks
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
>
>
> On Friday, October 2, 2015 9:09 AM, "yocto-request@yoctoproject.org" <
> yocto-request@yoctoproject.org> wrote:
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
>   1. Release Candidate Build for yocto-2.0.rc1.rc1 now available.
>       (Poky Build User)
>   2. Re: Safely cleaning 'downloads' (Laurentiu Palcu)
>   3. Re: [linux-yocto] [raspberryp2] Error during the build of
>       linux kernel (Trevor Woerner)
>   4. wpa_supplicant on Raspberry Pi 2B (Edward Vidal)
>   5. Re: wpa_supplicant on Raspberry Pi 2B (Philip Balister)
>   6. Re: wpa_supplicant on Raspberry Pi 2B (Daniel.)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 02 Oct 2015 07:04:04 +0000
> From: "Poky Build User" <pokybuild@fedora21.osl.yoctoproject.org>
> To: yocto@yoctoproject.org
> Cc: otavio@ossystems.com.br
> Subject: [yocto] Release Candidate Build for yocto-2.0.rc1.rc1 now
>     available.
> Message-ID: <20151002070407.D2B43E00D10@yocto-www.yoctoproject.org>
> Content-Type: text/plain; charset=us-ascii
>
>
> A release candidate build for yocto-2.0.rc1 is now available at:
>
>
> http://autobuilder.yoctoproject.org/pub/releases/yocto-2.0.rc1
>
>
> Please begin QA on this build as soon as possible.
>
>
> Build hash information:
> meta-intel : 84c049b9cb80b50fd32b716c2ae97e3f0d4e3cd7
> meta-fsl-arm : 10471566d2868b07f8ac832b94d5e98a463826ba
> meta-minnow : 9c965ef5252e383843d796cd8b50c61b3034b6ae
> meta-qt3 : 5233565c80db869f6f539f37f26ea6662d9dc5f6
> meta-fsl-ppc : 59fc0c33d2de5db65af4c09c4d28fd78fa0f7b4f
> poky : eac61f37e36099f74485dab398b57f3812826d17
>
>
> This is an automated message from
> The Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder
> Email: elizabeth.flanagan@intel.com
>
>
> ------------------------------
>
> Message: 2
> Date: Fri, 2 Oct 2015 14:43:37 +0300
> From: Laurentiu Palcu <laurentiu.palcu@intel.com>
> To: Gary Thomas <gary@mlbassoc.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] Safely cleaning 'downloads'
> Message-ID: <20151002114337.GG15509@lpalcu-desk>
> Content-Type: text/plain; charset=us-ascii
>
> Hi Garry,
>
> It's probably a little late (I'm not reading the Yocto mailing lists
> very often now) but sometime ago I ran out of space myself and I wrote
> this script that I sent out on oe-core mailing list. It did the job for
> me. For some reason it didn't make it in master but maybe you find it
> useful.
>
> I didn't test it since then though. Maybe things changed, I don't know.
> Give it a try if you wish. If you want to play safe, I recommend making
> a copy of your downloads directory (if you have space left). :)
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-June/106026.html
>
> laurentiu
>
> On Wed, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrote:
> > Over time, I tend to build in the same build tree many, many
> > times.  This leads to some really big trees as many things are
> > duplicated, especially in the 'downloads' directory.
> >
> > I use local mirrors and hence my 'downloads' directory is
> > _mostly_ populated with symbolic links.  However, there are
> > also expanded SCM packages, e.g. git2/xxx
> >
> > How can I safely clean up the 'downloads' directory?  I already
> > copy any created tarballs (I use BB_GENERATE_MIRROR_TARBALLS="1"
> > to preclude unneeded downloads) to my mirror, but I'd like to
> > periodically clean out the whole directory (without disturbing
> > my builds of course).  I've found out the hard way that just
> > emptying seems to be unsafe, at least for some recipes like
> > the [RaspberryPi] Linux kernel recipe which once built seems
> > to expect the expanded git2/xxx tree to remain.
> >
> > Just trying to find ways to recover my lost GB...
> >
> > Thanks for any ideas
> >
> > --
> > ------------------------------------------------------------
> > Gary Thomas                |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 2 Oct 2015 08:02:49 -0400
> From: Trevor Woerner <twoerner@gmail.com>
> To: Karim ATIKI <karim_atiki@hotmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [linux-yocto] [raspberryp2] Error during the
>     build of linux kernel
> Message-ID: <560E7269.6090903@gmail.com>
> Content-Type: text/plain; charset=windows-1252
>
> On 10/02/15 07:58, Karim ATIKI wrote:
> > Hello Trevor,
> >
> > Thanks for your feedback.
> > You really think that "Fido" is an older release ?
>
> Sorry, I didn't mean to imply it was "old" and therefore should be
> avoided, I meant to point out that it was something that was released
> before the switch to gcc5 by default :-)
>
> > Is the 1.9 release of Yocto stable enough yet ? And will this pb be
> > fixed as well ?
>
> I think the next release will be 2.0. Whether or not it is stable enough
> is something you will have to evaluate for yourself :-) I'm rather
> certain this issue is already fixed in master, therefore it should be
> available for the next release.
>
> >
> > Karim
>
> Did you really mean to reply personally? I've re-CC'ed the list, hope
> you don't mind.
>
>
> ------------------------------
>
> Message: 4
> Date: Fri, 2 Oct 2015 14:27:58 +0000 (UTC)
> From: Edward Vidal <develone@sbcglobal.net>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] wpa_supplicant on Raspberry Pi 2B
> Message-ID:
>     <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello all,I am using a Wi-Pi wireless adapter.?
> My image has the following packages installed.
> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> Do I need any additional packages?
> My wired eth0 works okay.
> Which document has the most current information on setting up wireless
> networking?From the information at
> http://trac.gateworks.com/wiki/Yocto/Wireless
>
> I modified my /etc/wpa_supplicant.conf as below without success.
> ctrl_interface=/var/run/wpa_supplicant
> ctrl_interface_group=0
> update_config=1
>
> network={
> ??????? scan_ssid=1
> ??????? ssid="myssid"
> ??????? psk="mypsk"
> ??????? proto=WPA
> ??????? key_mgmt=WPA-PSK
> }Below is the results I get when I run iwconfig.
> iwconfig
> wlan0???? IEEE 802.11bgn? ESSID:off/any?
> ????????? Mode:Managed? Access Point: Not-Associated?? Tx-Power=0 dBm??
> ????????? Retry short limit:7?? RTS thr:off?? Fragment thr:off
> ????????? Encryption key:off
> ????????? Power Management:off
> ?????????
> lo??????? no wireless extensions.
>
> eth0????? no wireless extensions.
> Thanks in advance.? Any help is appreciated.
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20151002/a3a81a97/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 5
> Date: Fri, 2 Oct 2015 10:56:37 -0400
> From: Philip Balister <philip@balister.org>
> To: Edward Vidal <develone@sbcglobal.net>,    "yocto@yoctoproject.org"
>     <yocto@yoctoproject.org>
> Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
> Message-ID: <560E9B25.5030303@balister.org>
> Content-Type: text/plain; charset=windows-1252
>
>
> On 10/02/2015 10:27 AM, Edward Vidal wrote:
> > Hello all,I am using a Wi-Pi wireless adapter.
> > My image has the following packages installed.
> > wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> > wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> > wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> > wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> > wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> > Do I need any additional packages?
> > My wired eth0 works okay.
> > Which document has the most current information on setting up wireless
> networking?From the information at
> >  http://trac.gateworks.com/wiki/Yocto/Wireless
> >
> > I modified my /etc/wpa_supplicant.conf as below without success.
> > ctrl_interface=/var/run/wpa_supplicant
> > ctrl_interface_group=0
> > update_config=1
> >
>
> Try modifying /etc/network/interfaces like this:
>
>
> https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11
>
> it seems wireless extensions are deprecated and you should use the
> nl80211 driver now.
>
> Philip
>
>
> > network={
> >        scan_ssid=1
> >        ssid="myssid"
> >        psk="mypsk"
> >        proto=WPA
> >        key_mgmt=WPA-PSK
> > }Below is the results I get when I run iwconfig.
> > iwconfig
> > wlan0    IEEE 802.11bgn  ESSID:off/any
> >          Mode:Managed  Access Point: Not-Associated  Tx-Power=0 dBm
> >          Retry short limit:7  RTS thr:off  Fragment thr:off
> >          Encryption key:off
> >          Power Management:off
> >
> > lo        no wireless extensions.
> >
> > eth0      no wireless extensions.
> > Thanks in advance.  Any help is appreciated.
> >
> >  Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> >
> >
> >
>
>
> ------------------------------
>
> Message: 6
> Date: Fri, 2 Oct 2015 12:08:28 -0300
> From: "Daniel." <danielhilst@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
> Message-ID:
>     <CAF3SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3B1kCHVqR35aEbA@mail.gmail.com>
> Content-Type: text/plain; charset=UTF-8
>
>
> What `wpa_cli stat' returns?
>
> Regards,
>
>
> 2015-10-02 11:56 GMT-03:00 Philip Balister <philip@balister.org>:
> > On 10/02/2015 10:27 AM, Edward Vidal wrote:
> >> Hello all,I am using a Wi-Pi wireless adapter.
> >> My image has the following packages installed.
> >> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> >> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> >> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> >> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> >> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> >> Do I need any additional packages?
> >> My wired eth0 works okay.
> >> Which document has the most current information on setting up wireless
> networking?From the information at
> >>  http://trac.gateworks.com/wiki/Yocto/Wireless
> >>
> >> I modified my /etc/wpa_supplicant.conf as below without success.
> >> ctrl_interface=/var/run/wpa_supplicant
> >> ctrl_interface_group=0
> >> update_config=1
> >>
> >
> > Try modifying /etc/network/interfaces like this:
> >
> >
> https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11
> >
> > it seems wireless extensions are deprecated and you should use the
> > nl80211 driver now.
> >
> > Philip
> >
> >
> >> network={
> >>        scan_ssid=1
> >>        ssid="myssid"
> >>        psk="mypsk"
> >>        proto=WPA
> >>        key_mgmt=WPA-PSK
> >> }Below is the results I get when I run iwconfig.
> >> iwconfig
> >> wlan0    IEEE 802.11bgn  ESSID:off/any
> >>          Mode:Managed  Access Point: Not-Associated  Tx-Power=0 dBm
> >>          Retry short limit:7  RTS thr:off  Fragment thr:off
> >>          Encryption key:off
> >>          Power Management:off
> >>
> >> lo        no wireless extensions.
> >>
> >> eth0      no wireless extensions.
> >> Thanks in advance.  Any help is appreciated.
> >>
> >>  Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> >>
> >>
> >>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
>
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
> End of yocto Digest, Vol 61, Issue 8
> ************************************
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114290120f999805212478d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>This seems weird to me:<br>&quot;Could not set i=
nterface wlan0 flags (UP): No such file or directory&quot;<br><br></div>Are=
 you running this as root? What wifi card are you using? I had to install l=
inux-firmware to get wifi working but this wasn&#39;t on raspberry so I did=
n&#39;t know what is triggering this NSFOD error. My guess was permission, =
but... <br><br></div>The wpa_supplicant.conf seems fine to me. The `wpa_cli=
 stat&#39; returns what?<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-10-02 16:08 GMT-03:00 Edward Vidal <span dir=3D"ltr">=
&lt;<a href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">develone@sb=
cglobal.net</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div sty=
le=3D"color:#000;background-color:#fff;font-family:HelveticaNeue,Helvetica =
Neue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:16px"><div>Hi Danie=
l,</div><div>You are right wpa_supplicant is not running.</div><div>I tried=
 the following no success.<br></div><div dir=3D"ltr">wpa_supplicant -ddd -B=
 -P /var/run/wpa_supplicant.wlan0.pid -i wlan0 -D nl80211,wext -c /etc/wpa_=
supplicant.conf<br>wpa_supplicant v2.4<br>random: Trying to read entropy fr=
om /dev/random<br>Successfully initialized wpa_supplicant<br>Initializing i=
nterface &#39;wlan0&#39; conf &#39;/etc/wpa_supplicant.conf&#39; driver &#3=
9;nl80211,wext&#39; ctrl_interface &#39;N/A&#39; bridge &#39;N/A&#39;<br>Co=
nfiguration file &#39;/etc/wpa_supplicant.conf&#39; -&gt; &#39;/etc/wpa_sup=
plicant.conf&#39;<br>Reading configuration file &#39;/etc/wpa_supplicant.co=
nf&#39;<br>ctrl_interface=3D&#39;/var/run/wpa_supplicant&#39;<br>ctrl_inter=
face_group=3D&#39;0&#39;<br>update_config=3D1<br>Line: 5 - start of a new n=
etwork block<br>scan_ssid=3D1 (0x1)<br>ssid - hexdump_ascii(len=3D10):<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 41 54 54 39 78 32 78 39 6a 37=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ATT9x2x9j7=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>PSK (=
ASCII passphrase) - hexdump_ascii(len=3D12): [REMOVED]<br>proto: 0x1<br>key=
_mgmt: 0x2<br>PSK (from passphrase) - hexdump(len=3D32): [REMOVED]<br>Prior=
ity group 0<br>=C2=A0=C2=A0 id=3D0 ssid=3D&#39;ATT9x2x9j7&#39;<br>rfkill: i=
nitial event: idx=3D0 type=3D1 op=3D0 soft=3D0 hard=3D0<br>nl80211: Support=
ed cipher 00-0f-ac:1<br>nl80211: Supported cipher 00-0f-ac:5<br>nl80211: Su=
pported cipher 00-0f-ac:2<br>nl80211: Supported cipher 00-0f-ac:4<br>nl8021=
1: Using driver-based off-channel TX<br>nl80211: interface wlan0 in phy phy=
0<br>nl80211: Set mode ifindex 3 iftype 2 (STATION)<br>nl80211: Subscribe t=
o mgmt frames with non-AP handle 0x8f8eb8<br>nl80211: Register frame type=
=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x8f8eb8 match=3D06<br>nl80211: =
Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x8f8eb8 matc=
h=3D0a07<br>nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_h=
andle=3D0x8f8eb8 match=3D0a11<br>nl80211: Register frame type=3D0xd0 (WLAN_=
FC_STYPE_ACTION) nl_handle=3D0x8f8eb8 match=3D1101<br>nl80211: Register fra=
me type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x8f8eb8 match=3D1102<br>=
nl80211: Register frame type=3D0xd0 (WLAN_FC_STYPE_ACTION) nl_handle=3D0x8f=
8eb8 match=3D0505<br>Could not set interface wlan0 flags (UP): No such file=
 or directory<br>nl80211: Could not set interface &#39;wlan0&#39; UP<br>nl8=
0211: deinit ifname=3Dwlan0 disabled_11b_rates=3D0<br>nl80211: Remove monit=
or interface: refcount=3D0<br>netlink: Operstate: ifindex=3D3 linkmode=3D0 =
(kernel-control), operstate=3D6 (IF_OPER_UP)<br>nl80211: Set mode ifindex 3=
 iftype 2 (STATION)<br>nl80211: Unsubscribe mgmt frames handle 0x88070631 (=
mode change)<br>wlan0: Failed to initialize driver interface - try next dri=
ver wrapper<br>WEXT: cfg80211-based driver detected<br>wext: interface wlan=
0 phy: phy0<br>rfkill: initial event: idx=3D0 type=3D1 op=3D0 soft=3D0 hard=
=3D0<br>Could not set interface wlan0 flags (UP): No such file or directory=
<br>WEXT: Could not set interface &#39;wlan0&#39; UP<br>wlan0: Failed to in=
itialize driver interface<br>Failed to add interface wlan0<br>wlan0: Cancel=
ling scan request<br>wlan0: Cancelling authentication timeout</div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Is this correct for the wpa_supplicant.=
conf?<br></div><div dir=3D"ltr"><span class=3D"">ctrl_interface=3D/var/run/=
wpa_supplicant<br>ctrl_interface_group=3D0<br>update_config=3D1<br><br>netw=
ork=3D{<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scan_ssid=3D1<br></sp=
an>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ssid=3D&quot;ATT9x2x9j7&quot;=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 psk=3D&quot;2%699656433d&quo=
t;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proto=3DWPA<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 key_mgmt=3DWPA-PSK<br>}<br><br></div><div=
 dir=3D"ltr">Any ideas?</div><span class=3D""><div dir=3D"ltr"><br></div><d=
iv><span>Thanks</span></div><div>=C2=A0</div><div>Edward Vidal Jr. e-mail <=
a href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">develone@sbcglob=
al.net</a> <a href=3D"tel:915-595-1613" value=3D"+19155951613" target=3D"_b=
lank">915-595-1613</a></div>  <br><div><br><br></div></span><div><div class=
=3D"h5"><div style=3D"display:block"> <div style=3D"font-family:HelveticaNe=
ue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:16px">=
 <div style=3D"font-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Luc=
ida Grande,sans-serif;font-size:16px"> <div dir=3D"ltr"> <font face=3D"Aria=
l" size=3D"2"> On Friday, October 2, 2015 12:18 PM, Daniel. &lt;<a href=3D"=
mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&g=
t; wrote:<br> </font> </div>  <br><br> <div><div><div><div dir=3D"ltr"><div=
>It seems that your wpa_supplicant isn&#39;t being started at boot. Can you=
 see it with `ps | grep wpa_supplicant&#39;? You may start it by hand with =
something like `wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant.conf&#39; =
and try `wpa_cli stat&#39; stat again...<br clear=3D"none"><br clear=3D"non=
e"></div>Regards,<br clear=3D"none"></div><div><br clear=3D"none"><div>2015=
-10-02 12:34 GMT-03:00 Edward Vidal <span dir=3D"ltr">&lt;<a rel=3D"nofollo=
w" shape=3D"rect" href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">=
develone@sbcglobal.net</a>&gt;</span>:<br clear=3D"none"><blockquote style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v><div style=3D"color:#000;background-color:#fff;font-family:HelveticaNeue,=
Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:16px"><di=
v><span>Hi Philip &amp; Daniel,</span></div><div><span>I modified interface=
</span></div><div dir=3D"ltr"><span> diff -u interfaces.orig interfaces <br=
 clear=3D"none">--- interfaces.orig=C2=A0=C2=A0=C2=A0 2015-09-15 04:53:28.7=
59998719 +0000<br clear=3D"none">+++ interfaces=C2=A0=C2=A0=C2=A0 2015-09-1=
5 04:54:16.999998700 +0000<br clear=3D"none">@@ -8,8 +8,8 @@<br clear=3D"no=
ne">=C2=A0iface wlan0 inet dhcp<br clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0 =
wireless_mode managed<br clear=3D"none">=C2=A0=C2=A0=C2=A0=C2=A0 wireless_e=
ssid any<br clear=3D"none">-=C2=A0=C2=A0=C2=A0 wpa-driver wext<br clear=3D"=
none">-=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.conf<br clear=3D"non=
e">+=C2=A0=C2=A0=C2=A0 wpa-driver nl80211<br clear=3D"none">+=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.conf<br clear=
=3D"none">=C2=A0<br clear=3D"none">=C2=A0iface atml0 inet dhcp<br clear=3D"=
none">=C2=A0Also ran the wpa_cli stat<br clear=3D"none">root@raspberrypi2:/=
etc/network# wpa_cli stat<br clear=3D"none">Failed to connect to non-global=
 ctrl_ifname: (nil)=C2=A0 error: Success</span></div><div><div>=C2=A0and <b=
r clear=3D"none"></div><div>wpa_cli -i wlan0=C2=A0=C2=A0=C2=A0 =C2=A0</div>=
wpa_cli v2.4<br clear=3D"none">Copyright (c) 2004-2015, Jouni Malinen &lt;<=
a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:j@w1.fi" target=3D"_blank"=
>j@w1.fi</a>&gt; and contributors<br clear=3D"none"><br clear=3D"none">This=
 software may be distributed under the terms of the BSD license.<br clear=
=3D"none">See README for more details.<br clear=3D"none"><br clear=3D"none"=
><br clear=3D"none"><br clear=3D"none">Interactive mode<br clear=3D"none"><=
br clear=3D"none"><div dir=3D"ltr">Could not connect to wpa_supplicant: wla=
n0 - re-trying</div><div dir=3D"ltr">Still no success. <br clear=3D"none"><=
/div><div dir=3D"ltr">Thanks <br clear=3D"none"></div></div><span></span><d=
iv>Edward Vidal Jr. e-mail <a rel=3D"nofollow" shape=3D"rect" href=3D"mailt=
o:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> <a r=
el=3D"nofollow" shape=3D"rect">915-595-1613</a></div>  <br clear=3D"none"><=
div><br clear=3D"none"><br clear=3D"none"></div><div style=3D"display:block=
"> <div style=3D"font-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,L=
ucida Grande,sans-serif;font-size:16px"> <div style=3D"font-family:Helvetic=
aNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:16p=
x"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Friday, October 2=
, 2015 9:09 AM, &quot;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yoc=
to-request@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.o=
rg</a>&quot; &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yocto-re=
quest@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org</a=
>&gt; wrote:<br clear=3D"none"> </font> </div>  <br clear=3D"none"><br clea=
r=3D"none"> <div>Send yocto mailing list submissions to<br clear=3D"none">=
=C2=A0=C2=A0=C2=A0 <a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br clear=3D"=
none"><br clear=3D"none">To subscribe or unsubscribe via the World Wide Web=
, visit<br clear=3D"none">=C2=A0=C2=A0=C2=A0 <a rel=3D"nofollow" shape=3D"r=
ect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blan=
k">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none">or, =
via email, send a message with subject or body &#39;help&#39; to<br clear=
=3D"none">=C2=A0=C2=A0=C2=A0 <a rel=3D"nofollow" shape=3D"rect" href=3D"mai=
lto:yocto-request@yoctoproject.org" target=3D"_blank">yocto-request@yoctopr=
oject.org</a><br clear=3D"none"><br clear=3D"none">You can reach the person=
 managing the list at<br clear=3D"none">=C2=A0=C2=A0=C2=A0 <a rel=3D"nofoll=
ow" shape=3D"rect" href=3D"mailto:yocto-owner@yoctoproject.org" target=3D"_=
blank">yocto-owner@yoctoproject.org</a><br clear=3D"none"><br clear=3D"none=
">When replying, please edit your Subject line so it is more specific<br cl=
ear=3D"none">than &quot;Re: Contents of yocto digest...&quot;<br clear=3D"n=
one"><br clear=3D"none"><br clear=3D"none">Today&#39;s Topics:<br clear=3D"=
none"><br clear=3D"none">=C2=A0  1. Release Candidate Build for yocto-2.0.r=
c1.rc1 now available.<br clear=3D"none">=C2=A0 =C2=A0 =C2=A0 (Poky Build Us=
er)<br clear=3D"none">=C2=A0  2. Re: Safely cleaning &#39;downloads&#39; (L=
aurentiu Palcu)<br clear=3D"none">=C2=A0  3. Re: [linux-yocto] [raspberryp2=
] Error during the build of<br clear=3D"none">=C2=A0 =C2=A0 =C2=A0 linux ke=
rnel (Trevor Woerner)<br clear=3D"none">=C2=A0  4. wpa_supplicant on Raspbe=
rry Pi 2B (Edward Vidal)<br clear=3D"none">=C2=A0  5. Re: wpa_supplicant on=
 Raspberry Pi 2B (Philip Balister)<br clear=3D"none">=C2=A0  6. Re: wpa_sup=
plicant on Raspberry Pi 2B (Daniel.)<br clear=3D"none"><br clear=3D"none"><=
br clear=3D"none">---------------------------------------------------------=
-------------<br clear=3D"none"><br clear=3D"none">Message: 1<br clear=3D"n=
one">Date: Fri, 02 Oct 2015 07:04:04 +0000<br clear=3D"none">From: &quot;Po=
ky Build User&quot; &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:p=
okybuild@fedora21.osl.yoctoproject.org" target=3D"_blank">pokybuild@fedora2=
1.osl.yoctoproject.org</a>&gt;<br clear=3D"none">To: <a rel=3D"nofollow" sh=
ape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br clear=3D"none">Cc: <a rel=3D"nofollow" shape=3D"re=
ct" href=3D"mailto:otavio@ossystems.com.br" target=3D"_blank">otavio@ossyst=
ems.com.br</a><br clear=3D"none">Subject: [yocto] Release Candidate Build f=
or yocto-2.0.rc1.rc1 now<br clear=3D"none">=C2=A0=C2=A0=C2=A0 available.<br=
 clear=3D"none">Message-ID: &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"=
mailto:20151002070407.D2B43E00D10@yocto-www.yoctoproject.org" target=3D"_bl=
ank">20151002070407.D2B43E00D10@yocto-www.yoctoproject.org</a>&gt;<br clear=
=3D"none">Content-Type: text/plain; charset=3Dus-ascii<br clear=3D"none"><b=
r clear=3D"none"><br clear=3D"none">A release candidate build for yocto-2.0=
.rc1 is now available at:<br clear=3D"none"><br clear=3D"none"> <br clear=
=3D"none"><a rel=3D"nofollow" shape=3D"rect" href=3D"http://autobuilder.yoc=
toproject.org/pub/releases/yocto-2.0.rc1" target=3D"_blank">http://autobuil=
der.yoctoproject.org/pub/releases/yocto-2.0.rc1</a><br clear=3D"none"><br c=
lear=3D"none"><br clear=3D"none">Please begin QA on this build as soon as p=
ossible.<br clear=3D"none"><br clear=3D"none"><br clear=3D"none">Build hash=
 information: <br clear=3D"none">meta-intel : 84c049b9cb80b50fd32b716c2ae97=
e3f0d4e3cd7 <br clear=3D"none">meta-fsl-arm : 10471566d2868b07f8ac832b94d5e=
98a463826ba <br clear=3D"none">meta-minnow : 9c965ef5252e383843d796cd8b50c6=
1b3034b6ae <br clear=3D"none">meta-qt3 : 5233565c80db869f6f539f37f26ea6662d=
9dc5f6 <br clear=3D"none">meta-fsl-ppc : 59fc0c33d2de5db65af4c09c4d28fd78fa=
0f7b4f <br clear=3D"none">poky : eac61f37e36099f74485dab398b57f3812826d17 <=
br clear=3D"none"><br clear=3D"none"><br clear=3D"none">This is an automate=
d message from<br clear=3D"none">The Yocto Project Autobuilder<br clear=3D"=
none">Git: git://<a rel=3D"nofollow" shape=3D"rect" href=3D"http://git.yoct=
oproject.org/yocto-autobuilder" target=3D"_blank">git.yoctoproject.org/yoct=
o-autobuilder</a><br clear=3D"none">Email: <a rel=3D"nofollow" shape=3D"rec=
t" href=3D"mailto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabeth=
.flanagan@intel.com</a> <br clear=3D"none"><br clear=3D"none"><br clear=3D"=
none">------------------------------<br clear=3D"none"><br clear=3D"none">M=
essage: 2<br clear=3D"none">Date: Fri, 2 Oct 2015 14:43:37 +0300<br clear=
=3D"none">From: Laurentiu Palcu &lt;<a rel=3D"nofollow" shape=3D"rect" href=
=3D"mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@int=
el.com</a>&gt;<br clear=3D"none">To: Gary Thomas &lt;<a rel=3D"nofollow" sh=
ape=3D"rect" href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbas=
soc.com</a>&gt;<br clear=3D"none">Cc: Yocto Project &lt;<a rel=3D"nofollow"=
 shape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a>&gt;<br clear=3D"none">Subject: Re: [yocto] Safely =
cleaning &#39;downloads&#39;<br clear=3D"none">Message-ID: &lt;<a rel=3D"no=
follow" shape=3D"rect" href=3D"mailto:20151002114337.GG15509@lpalcu-desk" t=
arget=3D"_blank">20151002114337.GG15509@lpalcu-desk</a>&gt;<br clear=3D"non=
e">Content-Type: text/plain; charset=3Dus-ascii<br clear=3D"none"><br clear=
=3D"none">Hi Garry,<br clear=3D"none"><br clear=3D"none">It&#39;s probably =
a little late (I&#39;m not reading the Yocto mailing lists<br clear=3D"none=
">very often now) but sometime ago I ran out of space myself and I wrote<br=
 clear=3D"none">this script that I sent out on oe-core mailing list. It did=
 the job for<br clear=3D"none">me. For some reason it didn&#39;t make it in=
 master but maybe you find it<br clear=3D"none">useful.<br clear=3D"none"><=
br clear=3D"none">I didn&#39;t test it since then though. Maybe things chan=
ged, I don&#39;t know.<br clear=3D"none">Give it a try if you wish. If you =
want to play safe, I recommend making<br clear=3D"none">a copy of your down=
loads directory (if you have space left). :)<br clear=3D"none"><br clear=3D=
"none"><a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.openembedded=
.org/pipermail/openembedded-core/2015-June/106026.html" target=3D"_blank">h=
ttp://lists.openembedded.org/pipermail/openembedded-core/2015-June/106026.h=
tml</a><br clear=3D"none"><br clear=3D"none">laurentiu<br clear=3D"none"><b=
r clear=3D"none">On Wed, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrot=
e:<br clear=3D"none">&gt; Over time, I tend to build in the same build tree=
 many, many<br clear=3D"none">&gt; times.=C2=A0 This leads to some really b=
ig trees as many things are<br clear=3D"none">&gt; duplicated, especially i=
n the &#39;downloads&#39; directory.<br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; I use local mirrors and hence my &#39;downloads&#39; directory is<=
br clear=3D"none">&gt; _mostly_ populated with symbolic links.=C2=A0 Howeve=
r, there are<br clear=3D"none">&gt; also expanded SCM packages, e.g. git2/x=
xx<br clear=3D"none">&gt; <br clear=3D"none">&gt; How can I safely clean up=
 the &#39;downloads&#39; directory?=C2=A0 I already<br clear=3D"none">&gt; =
copy any created tarballs (I use BB_GENERATE_MIRROR_TARBALLS=3D&quot;1&quot=
;<br clear=3D"none">&gt; to preclude unneeded downloads) to my mirror, but =
I&#39;d like to<br clear=3D"none">&gt; periodically clean out the whole dir=
ectory (without disturbing<br clear=3D"none">&gt; my builds of course).=C2=
=A0 I&#39;ve found out the hard way that just<br clear=3D"none">&gt; emptyi=
ng seems to be unsafe, at least for some recipes like<br clear=3D"none">&gt=
; the [RaspberryPi] Linux kernel recipe which once built seems<br clear=3D"=
none">&gt; to expect the expanded git2/xxx tree to remain.<br clear=3D"none=
">&gt; <br clear=3D"none">&gt; Just trying to find ways to recover my lost =
GB...<br clear=3D"none">&gt; <br clear=3D"none">&gt; Thanks for any ideas<b=
r clear=3D"none">&gt; <br clear=3D"none">&gt; -- <br clear=3D"none">&gt; --=
----------------------------------------------------------<br clear=3D"none=
">&gt; Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  =
|=C2=A0 Consulting for the<br clear=3D"none">&gt; MLB Associates=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 Embedded world<br cle=
ar=3D"none">&gt; ----------------------------------------------------------=
--<span><br clear=3D"none">&gt; -- <br clear=3D"none">&gt; ________________=
_______________________________<br clear=3D"none">&gt; yocto mailing list<b=
r clear=3D"none">&gt; <a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yoc=
to@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br clear=
=3D"none">&gt; <a rel=3D"nofollow" shape=3D"rect" href=3D"https://lists.yoc=
toproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br clear=3D"none"><br clear=3D"none"><br clear=3D"no=
ne"></span>------------------------------<br clear=3D"none"><br clear=3D"no=
ne">Message: 3<br clear=3D"none">Date: Fri, 2 Oct 2015 08:02:49 -0400<br cl=
ear=3D"none">From: Trevor Woerner &lt;<a rel=3D"nofollow" shape=3D"rect" hr=
ef=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&g=
t;<br clear=3D"none">To: Karim ATIKI &lt;<a rel=3D"nofollow" shape=3D"rect"=
 href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotm=
ail.com</a>&gt;<br clear=3D"none">Cc: &quot;<a rel=3D"nofollow" shape=3D"re=
ct" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a>&quot; &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yo=
cto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br c=
lear=3D"none">Subject: Re: [yocto] [linux-yocto] [raspberryp2] Error during=
 the<br clear=3D"none">=C2=A0=C2=A0=C2=A0 build of linux kernel<br clear=3D=
"none">Message-ID: &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:56=
0E7269.6090903@gmail.com" target=3D"_blank">560E7269.6090903@gmail.com</a>&=
gt;<br clear=3D"none">Content-Type: text/plain; charset=3Dwindows-1252<br c=
lear=3D"none"><br clear=3D"none">On 10/02/15 07:58, Karim ATIKI wrote:<br c=
lear=3D"none">&gt; Hello Trevor,<br clear=3D"none">&gt;<br clear=3D"none">&=
gt; Thanks for your feedback.<br clear=3D"none">&gt; You really think that =
&quot;Fido&quot; is an older release ?<br clear=3D"none"><br clear=3D"none"=
>Sorry, I didn&#39;t mean to imply it was &quot;old&quot; and therefore sho=
uld be<br clear=3D"none">avoided, I meant to point out that it was somethin=
g that was released<br clear=3D"none">before the switch to gcc5 by default =
:-)<br clear=3D"none"><br clear=3D"none">&gt; Is the 1.9 release of Yocto s=
table enough yet ? And will this pb be<br clear=3D"none">&gt; fixed as well=
 ?<br clear=3D"none"><br clear=3D"none">I think the next release will be 2.=
0. Whether or not it is stable enough<br clear=3D"none">is something you wi=
ll have to evaluate for yourself :-) I&#39;m rather<br clear=3D"none">certa=
in this issue is already fixed in master, therefore it should be<br clear=
=3D"none">available for the next release.<br clear=3D"none"><br clear=3D"no=
ne">&gt;<br clear=3D"none">&gt; Karim<br clear=3D"none"><br clear=3D"none">=
Did you really mean to reply personally? I&#39;ve re-CC&#39;ed the list, ho=
pe<br clear=3D"none">you don&#39;t mind.<br clear=3D"none"><br clear=3D"non=
e"><br clear=3D"none">------------------------------<br clear=3D"none"><br =
clear=3D"none">Message: 4<br clear=3D"none">Date: Fri, 2 Oct 2015 14:27:58 =
+0000 (UTC)<br clear=3D"none">From: Edward Vidal &lt;<a rel=3D"nofollow" sh=
ape=3D"rect" href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">devel=
one@sbcglobal.net</a>&gt;<br clear=3D"none">To: &quot;<a rel=3D"nofollow" s=
hape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>&quot; &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D=
"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a=
>&gt;<br clear=3D"none">Subject: [yocto] wpa_supplicant on Raspberry Pi 2B<=
br clear=3D"none">Message-ID:<br clear=3D"none">=C2=A0=C2=A0=C2=A0 &lt;<a r=
el=3D"nofollow" shape=3D"rect" href=3D"mailto:1006153332.270433.14437960787=
01.JavaMail.yahoo@mail.yahoo.com" target=3D"_blank">1006153332.270433.14437=
96078701.JavaMail.yahoo@mail.yahoo.com</a>&gt;<br clear=3D"none">Content-Ty=
pe: text/plain; charset=3D&quot;utf-8&quot;<br clear=3D"none"><br clear=3D"=
none">Hello all,I am using a Wi-Pi wireless adapter.?<span><br clear=3D"non=
e">My image has the following packages installed.<br clear=3D"none">wpa-sup=
plicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">wpa-supplicant-c=
li-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">wpa-supplicant-dev-2.=
4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">wpa-supplicant-doc-2.4-r0.=
cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">wpa-supplicant-passphrase-2.4-r=
0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">Do I need any additional pack=
ages?<br clear=3D"none">My wired eth0 works okay.<br clear=3D"none">Which d=
ocument has the most current information on setting up wireless networking?=
From the information at <br clear=3D"none"> <a rel=3D"nofollow" shape=3D"re=
ct" href=3D"http://trac.gateworks.com/wiki/Yocto/Wireless" target=3D"_blank=
">http://trac.gateworks.com/wiki/Yocto/Wireless</a><br clear=3D"none"><br c=
lear=3D"none">I modified my /etc/wpa_supplicant.conf as below without succe=
ss.<br clear=3D"none">ctrl_interface=3D/var/run/wpa_supplicant<br clear=3D"=
none">ctrl_interface_group=3D0<br clear=3D"none">update_config=3D1<br clear=
=3D"none"><br clear=3D"none"></span>network=3D{<br clear=3D"none">??????? s=
can_ssid=3D1<br clear=3D"none">??????? ssid=3D&quot;myssid&quot;<br clear=
=3D"none">??????? psk=3D&quot;mypsk&quot;<br clear=3D"none">??????? proto=
=3DWPA<br clear=3D"none">??????? key_mgmt=3DWPA-PSK<span><br clear=3D"none"=
>}Below is the results I get when I run iwconfig.<br clear=3D"none">iwconfi=
g <br clear=3D"none"></span>wlan0???? IEEE 802.11bgn? ESSID:off/any? <br cl=
ear=3D"none">????????? Mode:Managed? Access Point: Not-Associated?? Tx-Powe=
r=3D0 dBm?? <br clear=3D"none">????????? Retry short limit:7?? RTS thr:off?=
? Fragment thr:off<br clear=3D"none">????????? Encryption key:off<br clear=
=3D"none">????????? Power Management:off<br clear=3D"none">????????? <br cl=
ear=3D"none">lo??????? no wireless extensions.<br clear=3D"none"><br clear=
=3D"none">eth0????? no wireless extensions.<br clear=3D"none">Thanks in adv=
ance.? Any help is appreciated.<span><br clear=3D"none"><br clear=3D"none">=
 Edward Vidal Jr. e-mail <a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:=
develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> <a rel=
=3D"nofollow" shape=3D"rect">915-595-1613</a><br clear=3D"none"></span>----=
---------- next part --------------<br clear=3D"none">An HTML attachment wa=
s scrubbed...<br clear=3D"none">URL: &lt;<a rel=3D"nofollow" shape=3D"rect"=
 href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/20151002=
/a3a81a97/attachment-0001.html" target=3D"_blank">http://lists.yoctoproject=
.org/pipermail/yocto/attachments/20151002/a3a81a97/attachment-0001.html</a>=
&gt;<br clear=3D"none"><br clear=3D"none">------------------------------<br=
 clear=3D"none"><br clear=3D"none">Message: 5<br clear=3D"none">Date: Fri, =
2 Oct 2015 10:56:37 -0400<br clear=3D"none">From: Philip Balister &lt;<a re=
l=3D"nofollow" shape=3D"rect" href=3D"mailto:philip@balister.org" target=3D=
"_blank">philip@balister.org</a>&gt;<br clear=3D"none">To: Edward Vidal &lt=
;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:develone@sbcglobal.net" =
target=3D"_blank">develone@sbcglobal.net</a>&gt;,=C2=A0=C2=A0=C2=A0 &quot;<=
a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a>&quot;<br clear=3D"none">=C2=A0=
=C2=A0=C2=A0 &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yocto@yo=
ctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br clear=
=3D"none">Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<br clear=
=3D"none">Message-ID: &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto=
:560E9B25.5030303@balister.org" target=3D"_blank">560E9B25.5030303@balister=
.org</a>&gt;<br clear=3D"none">Content-Type: text/plain; charset=3Dwindows-=
1252<div><div><br clear=3D"none"><br clear=3D"none">On 10/02/2015 10:27 AM,=
 Edward Vidal wrote:<br clear=3D"none">&gt; Hello all,I am using a Wi-Pi wi=
reless adapter. <br clear=3D"none">&gt; My image has the following packages=
 installed.<br clear=3D"none">&gt; wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfp=
v4_neon<br clear=3D"none">&gt; wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfp=
v4_neon<br clear=3D"none">&gt; wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfp=
v4_neon<br clear=3D"none">&gt; wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfp=
v4_neon<br clear=3D"none">&gt; wpa-supplicant-passphrase-2.4-r0.cortexa7hf_=
vfp_vfpv4_neon<br clear=3D"none">&gt; Do I need any additional packages?<br=
 clear=3D"none">&gt; My wired eth0 works okay.<br clear=3D"none">&gt; Which=
 document has the most current information on setting up wireless networkin=
g?From the information at <br clear=3D"none">&gt;=C2=A0 <a rel=3D"nofollow"=
 shape=3D"rect" href=3D"http://trac.gateworks.com/wiki/Yocto/Wireless" targ=
et=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wireless</a><br clear=3D=
"none">&gt; <br clear=3D"none">&gt; I modified my /etc/wpa_supplicant.conf =
as below without success.<br clear=3D"none">&gt; ctrl_interface=3D/var/run/=
wpa_supplicant<br clear=3D"none">&gt; ctrl_interface_group=3D0<br clear=3D"=
none">&gt; update_config=3D1<br clear=3D"none">&gt; <br clear=3D"none"><br =
clear=3D"none">Try modifying /etc/network/interfaces like this:<br clear=3D=
"none"><br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" href=3D"https:=
//github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aa=
bb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11" target=3D"_blank">http=
s://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453=
aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11</a><br clear=3D"none"=
><br clear=3D"none">it seems wireless extensions are deprecated and you sho=
uld use the<br clear=3D"none">nl80211 driver now.<br clear=3D"none"><br cle=
ar=3D"none">Philip<br clear=3D"none"><br clear=3D"none"><br clear=3D"none">=
&gt; network=3D{<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  scan_ss=
id=3D1<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  ssid=3D&quot;myss=
id&quot;<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  psk=3D&quot;myp=
sk&quot;<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  proto=3DWPA<br =
clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  key_mgmt=3DWPA-PSK<br clear=
=3D"none">&gt; }Below is the results I get when I run iwconfig.<br clear=3D=
"none">&gt; iwconfig <br clear=3D"none">&gt; wlan0=C2=A0 =C2=A0  IEEE 802.1=
1bgn=C2=A0 ESSID:off/any=C2=A0 <br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0  Mode:Managed=C2=A0 Access Point: Not-Associated=C2=A0  Tx-Po=
wer=3D0 dBm=C2=A0  <br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0  Retry short limit:7=C2=A0  RTS thr:off=C2=A0  Fragment thr:off<br clea=
r=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Encryption key:off<br cl=
ear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Power Management:off<b=
r clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  <br clear=3D"none"=
>&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no wireless extensions.<br clear=3D"non=
e">&gt; <br clear=3D"none">&gt; eth0=C2=A0 =C2=A0 =C2=A0 no wireless extens=
ions.<br clear=3D"none">&gt; Thanks in advance.=C2=A0 Any help is appreciat=
ed.<br clear=3D"none">&gt; <br clear=3D"none">&gt;=C2=A0 Edward Vidal Jr. e=
-mail <a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:develone@sbcglobal.=
net" target=3D"_blank">develone@sbcglobal.net</a> <a rel=3D"nofollow" shape=
=3D"rect">915-595-1613</a><br clear=3D"none">&gt; <br clear=3D"none">&gt; <=
br clear=3D"none">&gt; <br clear=3D"none"><br clear=3D"none"><br clear=3D"n=
one"></div></div>------------------------------<br clear=3D"none"><br clear=
=3D"none">Message: 6<br clear=3D"none">Date: Fri, 2 Oct 2015 12:08:28 -0300=
<br clear=3D"none">From: &quot;Daniel.&quot; &lt;<a rel=3D"nofollow" shape=
=3D"rect" href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhil=
st@gmail.com</a>&gt;<br clear=3D"none">Cc: &quot;<a rel=3D"nofollow" shape=
=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yo=
ctoproject.org</a>&quot; &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mai=
lto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt=
;<br clear=3D"none">Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<=
br clear=3D"none">Message-ID:<br clear=3D"none">=C2=A0=C2=A0=C2=A0 &lt;CAF3=
SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3D<a rel=3D"nofollow" shape=3D"rect" href=
=3D"mailto:3B1kCHVqR35aEbA@mail.gmail.com" target=3D"_blank">3B1kCHVqR35aEb=
A@mail.gmail.com</a>&gt;<br clear=3D"none">Content-Type: text/plain; charse=
t=3DUTF-8<div><div><br clear=3D"none"><br clear=3D"none">What `wpa_cli stat=
&#39; returns?<br clear=3D"none"><br clear=3D"none">Regards,<br clear=3D"no=
ne"><br clear=3D"none"><br clear=3D"none">2015-10-02 11:56 GMT-03:00 Philip=
 Balister &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:philip@bali=
ster.org" target=3D"_blank">philip@balister.org</a>&gt;:<br clear=3D"none">=
&gt; On 10/02/2015 10:27 AM, Edward Vidal wrote:<br clear=3D"none">&gt;&gt;=
 Hello all,I am using a Wi-Pi wireless adapter.<br clear=3D"none">&gt;&gt; =
My image has the following packages installed.<br clear=3D"none">&gt;&gt; w=
pa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">&gt;&gt; w=
pa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">&gt;&g=
t; wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none">&g=
t;&gt; wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br clear=3D"none=
">&gt;&gt; wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br cl=
ear=3D"none">&gt;&gt; Do I need any additional packages?<br clear=3D"none">=
&gt;&gt; My wired eth0 works okay.<br clear=3D"none">&gt;&gt; Which documen=
t has the most current information on setting up wireless networking?From t=
he information at<br clear=3D"none">&gt;&gt;=C2=A0 <a rel=3D"nofollow" shap=
e=3D"rect" href=3D"http://trac.gateworks.com/wiki/Yocto/Wireless" target=3D=
"_blank">http://trac.gateworks.com/wiki/Yocto/Wireless</a><br clear=3D"none=
">&gt;&gt;<br clear=3D"none">&gt;&gt; I modified my /etc/wpa_supplicant.con=
f as below without success.<br clear=3D"none">&gt;&gt; ctrl_interface=3D/va=
r/run/wpa_supplicant<br clear=3D"none">&gt;&gt; ctrl_interface_group=3D0<br=
 clear=3D"none">&gt;&gt; update_config=3D1<br clear=3D"none">&gt;&gt;<br cl=
ear=3D"none">&gt;<br clear=3D"none">&gt; Try modifying /etc/network/interfa=
ces like this:<br clear=3D"none">&gt;<br clear=3D"none">&gt; <a rel=3D"nofo=
llow" shape=3D"rect" href=3D"https://github.com/EttusResearch/meta-ettus/co=
mmit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b=
1b1644eaR11" target=3D"_blank">https://github.com/EttusResearch/meta-ettus/=
commit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b1=
3b1b1644eaR11</a><br clear=3D"none">&gt;<br clear=3D"none">&gt; it seems wi=
reless extensions are deprecated and you should use the<br clear=3D"none">&=
gt; nl80211 driver now.<br clear=3D"none">&gt;<br clear=3D"none">&gt; Phili=
p<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;&gt; =
network=3D{<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  scan_ssi=
d=3D1<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  ssid=3D&quot;m=
yssid&quot;<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  psk=3D&q=
uot;mypsk&quot;<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  prot=
o=3DWPA<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  key_mgmt=3DW=
PA-PSK<br clear=3D"none">&gt;&gt; }Below is the results I get when I run iw=
config.<br clear=3D"none">&gt;&gt; iwconfig<br clear=3D"none">&gt;&gt; wlan=
0=C2=A0 =C2=A0  IEEE 802.11bgn=C2=A0 ESSID:off/any<br clear=3D"none">&gt;&g=
t;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Mode:Managed=C2=A0 Access Point: Not-=
Associated=C2=A0  Tx-Power=3D0 dBm<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0  Retry short limit:7=C2=A0  RTS thr:off=C2=A0  Fragmen=
t thr:off<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Enc=
ryption key:off<br clear=3D"none">&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0  Power Management:off<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;=
&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no wireless extensions.<br clear=3D"none=
">&gt;&gt;<br clear=3D"none">&gt;&gt; eth0=C2=A0 =C2=A0 =C2=A0 no wireless =
extensions.<br clear=3D"none">&gt;&gt; Thanks in advance.=C2=A0 Any help is=
 appreciated.<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;=C2=A0 E=
dward Vidal Jr. e-mail <a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:de=
velone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> <a rel=
=3D"nofollow" shape=3D"rect">915-595-1613</a><br clear=3D"none">&gt;&gt;<br=
 clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt; =
--<br clear=3D"none">&gt; _______________________________________________<b=
r clear=3D"none">&gt; yocto mailing list<br clear=3D"none">&gt; <a rel=3D"n=
ofollow" shape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a><br clear=3D"none">&gt; <a rel=3D"nofollow"=
 shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D=
"none"><br clear=3D"none"><br clear=3D"none"><br clear=3D"none">-- <br clea=
r=3D"none">&quot;Do or do not. There is no try&quot;<br clear=3D"none">=C2=
=A0 Yoda Master<br clear=3D"none"><br clear=3D"none"><br clear=3D"none"></d=
iv></div>------------------------------<span><br clear=3D"none"><br clear=
=3D"none">-- <br clear=3D"none">___________________________________________=
____<br clear=3D"none">yocto mailing list<br clear=3D"none"><a rel=3D"nofol=
low" shape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br clear=3D"none"><a rel=3D"nofollow" shape=3D=
"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"><b=
r clear=3D"none"><br clear=3D"none"></span>End of yocto Digest, Vol 61, Iss=
ue 8<br clear=3D"none">************************************<br clear=3D"non=
e"><br clear=3D"none"><br clear=3D"none"></div>  </div> </div>  </div></div=
></div></div><br clear=3D"none">--<br clear=3D"none">
_______________________________________________<br clear=3D"none">
yocto mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank">yocto@yoctoproject.org</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yo=
cto</a><br clear=3D"none">
<br clear=3D"none"></blockquote></div><br clear=3D"none"><br clear=3D"all">=
<br clear=3D"none">-- <br clear=3D"none"><div><div style=3D"text-align:righ=
t"><i>&quot;Do or do not. There is no try&quot;</i><br clear=3D"none"><i>=
=C2=A0 </i><i><b>Yoda Master</b></i><br clear=3D"none"></div></div>
</div></div></div><br><br></div>  </div> </div>  </div></div></div></div></=
div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is=
 no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div=
>
</div>

--001a114290120f999805212478d4--
