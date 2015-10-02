Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F01E00D4D; Fri,  2 Oct 2015 11:18:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
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
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D32E3E0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:18:10 -0700 (PDT)
Received: by ykdt18 with SMTP id t18so118364154ykd.3
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Cwzsim8PInW//CbH4q3KwwS7VPOxdhi3pLL9z4uR3CA=;
	b=wuxy3Vk3FU/6V/q8bux+Cr9Mq/AnLZAZJvg7O3Dx3hU11MULeqyiG1SJyhXVhQ5yrT
	Spb/MiqOYhrifjjZf4Yd2bThA3/k25cJpyduaPjOwolXmkNabsky4dlL5cu6Mehel3fy
	aeQ6IAPdkBv1jJIVF4gTMe7N0EW+GePUiiaZ3fH5GOVsFCCV980z92w9aDZuXajkkkv6
	IOxx3EqLzUeOUR4OhN0RHBHRJcgSbse+WBCqsN/lnd/MeU2a54Dn6QCPs5/WnzADI5/g
	k+DeC3wqjYKf3xfjExi+KWRD7aykbCLE/U7V5l05bQ7O6/0J7KZ8h7s63luw5rb80vZN
	lVfw==
MIME-Version: 1.0
X-Received: by 10.13.244.68 with SMTP id d65mr14587250ywf.27.1443809889898;
	Fri, 02 Oct 2015 11:18:09 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 11:18:09 -0700 (PDT)
In-Reply-To: <717519649.323138.1443800072056.JavaMail.yahoo@mail.yahoo.com>
References: <mailman.2882.1443798513.7199.yocto@yoctoproject.org>
	<717519649.323138.1443800072056.JavaMail.yahoo@mail.yahoo.com>
Date: Fri, 2 Oct 2015 15:18:09 -0300
Message-ID: <CAF3SDA7dynzdg5VP83FfyQCi-F+_xVUsRcOszYQvR6FbKWPnDg@mail.gmail.com>
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
X-List-Received-Date: Fri, 02 Oct 2015 18:18:15 -0000
Content-Type: multipart/alternative; boundary=94eb2c0356a49c5dc10521232f01

--94eb2c0356a49c5dc10521232f01
Content-Type: text/plain; charset=UTF-8

It seems that your wpa_supplicant isn't being started at boot. Can you see
it with `ps | grep wpa_supplicant'? You may start it by hand with something
like `wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant.conf' and try
`wpa_cli stat' stat again...

Regards,

2015-10-02 12:34 GMT-03:00 Edward Vidal <develone@sbcglobal.net>:

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


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0356a49c5dc10521232f01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It seems that your wpa_supplicant isn&#39;t being sta=
rted at boot. Can you see it with `ps | grep wpa_supplicant&#39;? You may s=
tart it by hand with something like `wpa_supplicant -B -iwlan0 -c /etc/wpa_=
supplicant.conf&#39; and try `wpa_cli stat&#39; stat again...<br><br></div>=
Regards,<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2015-10-02 12:34 GMT-03:00 Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><div style=3D"color:#000=
;background-color:#fff;font-family:HelveticaNeue,Helvetica Neue,Helvetica,A=
rial,Lucida Grande,sans-serif;font-size:16px"><div><span>Hi Philip &amp; Da=
niel,</span></div><div><span>I modified interface</span></div><div dir=3D"l=
tr"><span> diff -u interfaces.orig interfaces <br>--- interfaces.orig=C2=A0=
=C2=A0=C2=A0 2015-09-15 04:53:28.759998719 +0000<br>+++ interfaces=C2=A0=C2=
=A0=C2=A0 2015-09-15 04:54:16.999998700 +0000<br>@@ -8,8 +8,8 @@<br>=C2=A0i=
face wlan0 inet dhcp<br>=C2=A0=C2=A0=C2=A0=C2=A0 wireless_mode managed<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 wireless_essid any<br>-=C2=A0=C2=A0=C2=A0 wpa-driv=
er wext<br>-=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.conf<br>+=C2=A0=
=C2=A0=C2=A0 wpa-driver nl80211<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 wpa-conf /etc/wpa_supplicant.conf<br>=C2=A0<br>=C2=A0iface atml0 inet d=
hcp<br>=C2=A0Also ran the wpa_cli stat<br>root@raspberrypi2:/etc/network# w=
pa_cli stat<br>Failed to connect to non-global ctrl_ifname: (nil)=C2=A0 err=
or: Success</span></div><div><div>=C2=A0and <br></div><div>wpa_cli -i wlan0=
=C2=A0=C2=A0=C2=A0 =C2=A0</div>wpa_cli v2.4<br>Copyright (c) 2004-2015, Jou=
ni Malinen &lt;<a href=3D"mailto:j@w1.fi" target=3D"_blank">j@w1.fi</a>&gt;=
 and contributors<br><br>This software may be distributed under the terms o=
f the BSD license.<br>See README for more details.<br><br><br><br>Interacti=
ve mode<br><br><div dir=3D"ltr">Could not connect to wpa_supplicant: wlan0 =
- re-trying</div><div dir=3D"ltr">Still no success. <br></div><div dir=3D"l=
tr">Thanks <br></div></div><span class=3D""><div>Edward Vidal Jr. e-mail <a=
 href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">develone@sbcgloba=
l.net</a> <a href=3D"tel:915-595-1613" value=3D"+19155951613" target=3D"_bl=
ank">915-595-1613</a></div>  <br><div><br><br></div></span><div style=3D"di=
splay:block"> <div style=3D"font-family:HelveticaNeue,Helvetica Neue,Helvet=
ica,Arial,Lucida Grande,sans-serif;font-size:16px"> <div style=3D"font-fami=
ly:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;fo=
nt-size:16px"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Friday=
, October 2, 2015 9:09 AM, &quot;<a href=3D"mailto:yocto-request@yoctoproje=
ct.org" target=3D"_blank">yocto-request@yoctoproject.org</a>&quot; &lt;<a h=
ref=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">yocto-reque=
st@yoctoproject.org</a>&gt; wrote:<br> </font> </div>  <br><br> <div>Send y=
octo mailing list submissions to<br>=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yo=
cto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br><br>T=
o subscribe or unsubscribe via the World Wide Web, visit<br>=C2=A0=C2=A0=C2=
=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br>or, via email, se=
nd a message with subject or body &#39;help&#39; to<br>=C2=A0=C2=A0=C2=A0 <=
a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">yocto-re=
quest@yoctoproject.org</a><br><br>You can reach the person managing the lis=
t at<br>=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org" =
target=3D"_blank">yocto-owner@yoctoproject.org</a><br><br>When replying, pl=
ease edit your Subject line so it is more specific<br>than &quot;Re: Conten=
ts of yocto digest...&quot;<br><br><br>Today&#39;s Topics:<br><br>=C2=A0  1=
. Release Candidate Build for yocto-2.0.rc1.rc1 now available.<br>=C2=A0 =
=C2=A0 =C2=A0 (Poky Build User)<br>=C2=A0  2. Re: Safely cleaning &#39;down=
loads&#39; (Laurentiu Palcu)<br>=C2=A0  3. Re: [linux-yocto] [raspberryp2] =
Error during the build of<br>=C2=A0 =C2=A0 =C2=A0 linux kernel (Trevor Woer=
ner)<br>=C2=A0  4. wpa_supplicant on Raspberry Pi 2B (Edward Vidal)<br>=C2=
=A0  5. Re: wpa_supplicant on Raspberry Pi 2B (Philip Balister)<br>=C2=A0  =
6. Re: wpa_supplicant on Raspberry Pi 2B (Daniel.)<br><br><br>-------------=
---------------------------------------------------------<br><br>Message: 1=
<br>Date: Fri, 02 Oct 2015 07:04:04 +0000<br>From: &quot;Poky Build User&qu=
ot; &lt;<a href=3D"mailto:pokybuild@fedora21.osl.yoctoproject.org" target=
=3D"_blank">pokybuild@fedora21.osl.yoctoproject.org</a>&gt;<br>To: <a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a><br>Cc: <a href=3D"mailto:otavio@ossystems.com.br" target=3D"_blank">ot=
avio@ossystems.com.br</a><br>Subject: [yocto] Release Candidate Build for y=
octo-2.0.rc1.rc1 now<br>=C2=A0=C2=A0=C2=A0 available.<br>Message-ID: &lt;<a=
 href=3D"mailto:20151002070407.D2B43E00D10@yocto-www.yoctoproject.org" targ=
et=3D"_blank">20151002070407.D2B43E00D10@yocto-www.yoctoproject.org</a>&gt;=
<br>Content-Type: text/plain; charset=3Dus-ascii<br><br><br>A release candi=
date build for yocto-2.0.rc1 is now available at:<br><br> <br><a href=3D"ht=
tp://autobuilder.yoctoproject.org/pub/releases/yocto-2.0.rc1" target=3D"_bl=
ank">http://autobuilder.yoctoproject.org/pub/releases/yocto-2.0.rc1</a><br>=
<br><br>Please begin QA on this build as soon as possible.<br><br><br>Build=
 hash information: <br>meta-intel : 84c049b9cb80b50fd32b716c2ae97e3f0d4e3cd=
7 <br>meta-fsl-arm : 10471566d2868b07f8ac832b94d5e98a463826ba <br>meta-minn=
ow : 9c965ef5252e383843d796cd8b50c61b3034b6ae <br>meta-qt3 : 5233565c80db86=
9f6f539f37f26ea6662d9dc5f6 <br>meta-fsl-ppc : 59fc0c33d2de5db65af4c09c4d28f=
d78fa0f7b4f <br>poky : eac61f37e36099f74485dab398b57f3812826d17 <br><br><br=
>This is an automated message from<br>The Yocto Project Autobuilder<br>Git:=
 git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder" target=3D"=
_blank">git.yoctoproject.org/yocto-autobuilder</a><br>Email: <a href=3D"mai=
lto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabeth.flanagan@inte=
l.com</a> <br><br><br>------------------------------<br><br>Message: 2<br>D=
ate: Fri, 2 Oct 2015 14:43:37 +0300<br>From: Laurentiu Palcu &lt;<a href=3D=
"mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.=
com</a>&gt;<br>To: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" tar=
get=3D"_blank">gary@mlbassoc.com</a>&gt;<br>Cc: Yocto Project &lt;<a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a>&gt;<br>Subject: Re: [yocto] Safely cleaning &#39;downloads&#39;<br>Mes=
sage-ID: &lt;<a href=3D"mailto:20151002114337.GG15509@lpalcu-desk" target=
=3D"_blank">20151002114337.GG15509@lpalcu-desk</a>&gt;<br>Content-Type: tex=
t/plain; charset=3Dus-ascii<br><br>Hi Garry,<br><br>It&#39;s probably a lit=
tle late (I&#39;m not reading the Yocto mailing lists<br>very often now) bu=
t sometime ago I ran out of space myself and I wrote<br>this script that I =
sent out on oe-core mailing list. It did the job for<br>me. For some reason=
 it didn&#39;t make it in master but maybe you find it<br>useful.<br><br>I =
didn&#39;t test it since then though. Maybe things changed, I don&#39;t kno=
w.<br>Give it a try if you wish. If you want to play safe, I recommend maki=
ng<br>a copy of your downloads directory (if you have space left). :)<br><b=
r><a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2015=
-June/106026.html" target=3D"_blank">http://lists.openembedded.org/pipermai=
l/openembedded-core/2015-June/106026.html</a><br><br>laurentiu<br><br>On We=
d, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrote:<br>&gt; Over time, =
I tend to build in the same build tree many, many<br>&gt; times.=C2=A0 This=
 leads to some really big trees as many things are<br>&gt; duplicated, espe=
cially in the &#39;downloads&#39; directory.<br>&gt; <br>&gt; I use local m=
irrors and hence my &#39;downloads&#39; directory is<br>&gt; _mostly_ popul=
ated with symbolic links.=C2=A0 However, there are<br>&gt; also expanded SC=
M packages, e.g. git2/xxx<br>&gt; <br>&gt; How can I safely clean up the &#=
39;downloads&#39; directory?=C2=A0 I already<br>&gt; copy any created tarba=
lls (I use BB_GENERATE_MIRROR_TARBALLS=3D&quot;1&quot;<br>&gt; to preclude =
unneeded downloads) to my mirror, but I&#39;d like to<br>&gt; periodically =
clean out the whole directory (without disturbing<br>&gt; my builds of cour=
se).=C2=A0 I&#39;ve found out the hard way that just<br>&gt; emptying seems=
 to be unsafe, at least for some recipes like<br>&gt; the [RaspberryPi] Lin=
ux kernel recipe which once built seems<br>&gt; to expect the expanded git2=
/xxx tree to remain.<br>&gt; <br>&gt; Just trying to find ways to recover m=
y lost GB...<br>&gt; <br>&gt; Thanks for any ideas<br>&gt; <br>&gt; -- <br>=
&gt; ------------------------------------------------------------<br>&gt; G=
ary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  |=C2=A0 =
Consulting for the<br>&gt; MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 Embedded world<br>&gt; ----------------------=
--------------------------------------<span class=3D""><br>&gt; -- <br>&gt;=
 _______________________________________________<br>&gt; yocto mailing list=
<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/list=
info/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br><br><br></span>------------------------------<br><br>Message: 3<br>=
Date: Fri, 2 Oct 2015 08:02:49 -0400<br>From: Trevor Woerner &lt;<a href=3D=
"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;<br=
>To: Karim ATIKI &lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_=
blank">karim_atiki@hotmail.com</a>&gt;<br>Cc: &quot;<a href=3D"mailto:yocto=
@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&quot; &lt;<=
a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a>&gt;<br>Subject: Re: [yocto] [linux-yocto] [raspberryp2] Error du=
ring the<br>=C2=A0=C2=A0=C2=A0 build of linux kernel<br>Message-ID: &lt;<a =
href=3D"mailto:560E7269.6090903@gmail.com" target=3D"_blank">560E7269.60909=
03@gmail.com</a>&gt;<br>Content-Type: text/plain; charset=3Dwindows-1252<br=
><br>On 10/02/15 07:58, Karim ATIKI wrote:<br>&gt; Hello Trevor,<br>&gt;<br=
>&gt; Thanks for your feedback.<br>&gt; You really think that &quot;Fido&qu=
ot; is an older release ?<br><br>Sorry, I didn&#39;t mean to imply it was &=
quot;old&quot; and therefore should be<br>avoided, I meant to point out tha=
t it was something that was released<br>before the switch to gcc5 by defaul=
t :-)<br><br>&gt; Is the 1.9 release of Yocto stable enough yet ? And will =
this pb be<br>&gt; fixed as well ?<br><br>I think the next release will be =
2.0. Whether or not it is stable enough<br>is something you will have to ev=
aluate for yourself :-) I&#39;m rather<br>certain this issue is already fix=
ed in master, therefore it should be<br>available for the next release.<br>=
<br>&gt;<br>&gt; Karim<br><br>Did you really mean to reply personally? I&#3=
9;ve re-CC&#39;ed the list, hope<br>you don&#39;t mind.<br><br><br>--------=
----------------------<br><br>Message: 4<br>Date: Fri, 2 Oct 2015 14:27:58 =
+0000 (UTC)<br>From: Edward Vidal &lt;<a href=3D"mailto:develone@sbcglobal.=
net" target=3D"_blank">develone@sbcglobal.net</a>&gt;<br>To: &quot;<a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">=
yocto@yoctoproject.org</a>&gt;<br>Subject: [yocto] wpa_supplicant on Raspbe=
rry Pi 2B<br>Message-ID:<br>=C2=A0=C2=A0=C2=A0 &lt;<a href=3D"mailto:100615=
3332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com" target=3D"_blank">=
1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com</a>&gt;<br>Co=
ntent-Type: text/plain; charset=3D&quot;utf-8&quot;<br><br>Hello all,I am u=
sing a Wi-Pi wireless adapter.?<span class=3D""><br>My image has the follow=
ing packages installed.<br>wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<=
br>wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>wpa-supplicant-de=
v-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>wpa-supplicant-doc-2.4-r0.cortexa7hf_=
vfp_vfpv4_neon<br>wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neo=
n<br>Do I need any additional packages?<br>My wired eth0 works okay.<br>Whi=
ch document has the most current information on setting up wireless network=
ing?From the information at <br> <a href=3D"http://trac.gateworks.com/wiki/=
Yocto/Wireless" target=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wire=
less</a><br><br>I modified my /etc/wpa_supplicant.conf as below without suc=
cess.<br>ctrl_interface=3D/var/run/wpa_supplicant<br>ctrl_interface_group=
=3D0<br>update_config=3D1<br><br></span>network=3D{<br>??????? scan_ssid=3D=
1<br>??????? ssid=3D&quot;myssid&quot;<br>??????? psk=3D&quot;mypsk&quot;<b=
r>??????? proto=3DWPA<br>??????? key_mgmt=3DWPA-PSK<span class=3D""><br>}Be=
low is the results I get when I run iwconfig.<br>iwconfig <br></span>wlan0?=
??? IEEE 802.11bgn? ESSID:off/any? <br>????????? Mode:Managed? Access Point=
: Not-Associated?? Tx-Power=3D0 dBm?? <br>????????? Retry short limit:7?? R=
TS thr:off?? Fragment thr:off<br>????????? Encryption key:off<br>????????? =
Power Management:off<br>????????? <br>lo??????? no wireless extensions.<br>=
<br>eth0????? no wireless extensions.<br>Thanks in advance.? Any help is ap=
preciated.<span class=3D""><br><br> Edward Vidal Jr. e-mail <a href=3D"mail=
to:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> <a =
href=3D"tel:915-595-1613" value=3D"+19155951613" target=3D"_blank">915-595-=
1613</a><br></span>-------------- next part --------------<br>An HTML attac=
hment was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/=
pipermail/yocto/attachments/20151002/a3a81a97/attachment-0001.html" target=
=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20151=
002/a3a81a97/attachment-0001.html</a>&gt;<br><br>--------------------------=
----<br><br>Message: 5<br>Date: Fri, 2 Oct 2015 10:56:37 -0400<br>From: Phi=
lip Balister &lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">p=
hilip@balister.org</a>&gt;<br>To: Edward Vidal &lt;<a href=3D"mailto:develo=
ne@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a>&gt;,=C2=A0=
=C2=A0=C2=A0 &quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bla=
nk">yocto@yoctoproject.org</a>&quot;<br>=C2=A0=C2=A0=C2=A0 &lt;<a href=3D"m=
ailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&=
gt;<br>Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<br>Message-ID=
: &lt;<a href=3D"mailto:560E9B25.5030303@balister.org" target=3D"_blank">56=
0E9B25.5030303@balister.org</a>&gt;<br>Content-Type: text/plain; charset=3D=
windows-1252<div><div class=3D"h5"><br><br>On 10/02/2015 10:27 AM, Edward V=
idal wrote:<br>&gt; Hello all,I am using a Wi-Pi wireless adapter. <br>&gt;=
 My image has the following packages installed.<br>&gt; wpa-supplicant-2.4-=
r0.cortexa7hf_vfp_vfpv4_neon<br>&gt; wpa-supplicant-cli-2.4-r0.cortexa7hf_v=
fp_vfpv4_neon<br>&gt; wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon<b=
r>&gt; wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt; wpa-supp=
licant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt; Do I need any ad=
ditional packages?<br>&gt; My wired eth0 works okay.<br>&gt; Which document=
 has the most current information on setting up wireless networking?From th=
e information at <br>&gt;=C2=A0 <a href=3D"http://trac.gateworks.com/wiki/Y=
octo/Wireless" target=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wirel=
ess</a><br>&gt; <br>&gt; I modified my /etc/wpa_supplicant.conf as below wi=
thout success.<br>&gt; ctrl_interface=3D/var/run/wpa_supplicant<br>&gt; ctr=
l_interface_group=3D0<br>&gt; update_config=3D1<br>&gt; <br><br>Try modifyi=
ng /etc/network/interfaces like this:<br><br><a href=3D"https://github.com/=
EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#di=
ff-063964fa6e41065c7868b13b1b1644eaR11" target=3D"_blank">https://github.co=
m/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#=
diff-063964fa6e41065c7868b13b1b1644eaR11</a><br><br>it seems wireless exten=
sions are deprecated and you should use the<br>nl80211 driver now.<br><br>P=
hilip<br><br><br>&gt; network=3D{<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  scan_=
ssid=3D1<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  ssid=3D&quot;myssid&quot;<br>&=
gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  psk=3D&quot;mypsk&quot;<br>&gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0  proto=3DWPA<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  key_mgmt=
=3DWPA-PSK<br>&gt; }Below is the results I get when I run iwconfig.<br>&gt;=
 iwconfig <br>&gt; wlan0=C2=A0 =C2=A0  IEEE 802.11bgn=C2=A0 ESSID:off/any=
=C2=A0 <br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Mode:Managed=C2=A0 Acces=
s Point: Not-Associated=C2=A0  Tx-Power=3D0 dBm=C2=A0  <br>&gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0  Retry short limit:7=C2=A0  RTS thr:off=C2=A0  Fra=
gment thr:off<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Encryption key:off=
<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Power Management:off<br>&gt;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  <br>&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no =
wireless extensions.<br>&gt; <br>&gt; eth0=C2=A0 =C2=A0 =C2=A0 no wireless =
extensions.<br>&gt; Thanks in advance.=C2=A0 Any help is appreciated.<br>&g=
t; <br>&gt;=C2=A0 Edward Vidal Jr. e-mail <a href=3D"mailto:develone@sbcglo=
bal.net" target=3D"_blank">develone@sbcglobal.net</a> <a href=3D"tel:915-59=
5-1613" value=3D"+19155951613" target=3D"_blank">915-595-1613</a><br>&gt; <=
br>&gt; <br>&gt; <br><br><br></div></div>------------------------------<br>=
<br>Message: 6<br>Date: Fri, 2 Oct 2015 12:08:28 -0300<br>From: &quot;Danie=
l.&quot; &lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">dan=
ielhilst@gmail.com</a>&gt;<br>Cc: &quot;<a href=3D"mailto:yocto@yoctoprojec=
t.org" target=3D"_blank">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&g=
t;<br>Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<br>Message-ID:=
<br>=C2=A0=C2=A0=C2=A0 &lt;CAF3SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3D<a href=3D=
"mailto:3B1kCHVqR35aEbA@mail.gmail.com" target=3D"_blank">3B1kCHVqR35aEbA@m=
ail.gmail.com</a>&gt;<br>Content-Type: text/plain; charset=3DUTF-8<div><div=
 class=3D"h5"><br><br>What `wpa_cli stat&#39; returns?<br><br>Regards,<br><=
br><br>2015-10-02 11:56 GMT-03:00 Philip Balister &lt;<a href=3D"mailto:phi=
lip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;:<br>&gt; On=
 10/02/2015 10:27 AM, Edward Vidal wrote:<br>&gt;&gt; Hello all,I am using =
a Wi-Pi wireless adapter.<br>&gt;&gt; My image has the following packages i=
nstalled.<br>&gt;&gt; wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&g=
t;&gt; wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; wpa-=
supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; wpa-supplicant-=
doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; wpa-supplicant-passphrase-=
2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; Do I need any additional packa=
ges?<br>&gt;&gt; My wired eth0 works okay.<br>&gt;&gt; Which document has t=
he most current information on setting up wireless networking?From the info=
rmation at<br>&gt;&gt;=C2=A0 <a href=3D"http://trac.gateworks.com/wiki/Yoct=
o/Wireless" target=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wireless=
</a><br>&gt;&gt;<br>&gt;&gt; I modified my /etc/wpa_supplicant.conf as belo=
w without success.<br>&gt;&gt; ctrl_interface=3D/var/run/wpa_supplicant<br>=
&gt;&gt; ctrl_interface_group=3D0<br>&gt;&gt; update_config=3D1<br>&gt;&gt;=
<br>&gt;<br>&gt; Try modifying /etc/network/interfaces like this:<br>&gt;<b=
r>&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus/commit/da86e7=
6d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11=
" target=3D"_blank">https://github.com/EttusResearch/meta-ettus/commit/da86=
e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR=
11</a><br>&gt;<br>&gt; it seems wireless extensions are deprecated and you =
should use the<br>&gt; nl80211 driver now.<br>&gt;<br>&gt; Philip<br>&gt;<b=
r>&gt;<br>&gt;&gt; network=3D{<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  scan=
_ssid=3D1<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  ssid=3D&quot;myssid&quot;=
<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0  psk=3D&quot;mypsk&quot;<br>&gt;&gt=
;=C2=A0 =C2=A0 =C2=A0 =C2=A0  proto=3DWPA<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0  key_mgmt=3DWPA-PSK<br>&gt;&gt; }Below is the results I get when I r=
un iwconfig.<br>&gt;&gt; iwconfig<br>&gt;&gt; wlan0=C2=A0 =C2=A0  IEEE 802.=
11bgn=C2=A0 ESSID:off/any<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Mo=
de:Managed=C2=A0 Access Point: Not-Associated=C2=A0  Tx-Power=3D0 dBm<br>&g=
t;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Retry short limit:7=C2=A0  RTS th=
r:off=C2=A0  Fragment thr:off<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
  Encryption key:off<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  Power M=
anagement:off<br>&gt;&gt;<br>&gt;&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no wire=
less extensions.<br>&gt;&gt;<br>&gt;&gt; eth0=C2=A0 =C2=A0 =C2=A0 no wirele=
ss extensions.<br>&gt;&gt; Thanks in advance.=C2=A0 Any help is appreciated=
.<br>&gt;&gt;<br>&gt;&gt;=C2=A0 Edward Vidal Jr. e-mail <a href=3D"mailto:d=
evelone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> <a href=
=3D"tel:915-595-1613" value=3D"+19155951613" target=3D"_blank">915-595-1613=
</a><br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt; --<br>&gt; _______________=
________________________________<br>&gt; yocto mailing list<br>&gt; <a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br>=
<br>-- <br>&quot;Do or do not. There is no try&quot;<br>=C2=A0 Yoda Master<=
br><br><br></div></div>------------------------------<span class=3D""><br><=
br>-- <br>_______________________________________________<br>yocto mailing =
list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@y=
octoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><b=
r><br><br></span>End of yocto Digest, Vol 61, Issue 8<br>******************=
******************<br><br><br></div>  </div> </div>  </div></div></div><br>=
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is=
 no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div=
>
</div>

--94eb2c0356a49c5dc10521232f01--
