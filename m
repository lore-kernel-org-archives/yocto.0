Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C5C2E00A10; Thu,  1 Nov 2018 10:38:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23FDFE00994
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 10:38:48 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id d6so3257818itl.4
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 10:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version; bh=cZ4UwwCl4w3PBD2zm8be8brauSRO0cMff8Ywjnzjlx4=;
	b=fXV1B8dt0USpCFfg8lajlv4+hywf1Pcdwk5MW7aRgJZh3wQMa3XrG0Q3OYZsjfjKuB
	vf/3yQK8wWR5zCIUW8aq8tk9uW6r9YLSwNOLiOnLNG0kgqprLpN+fAuZF2kVAZBy7kHm
	4OTJ/Jb9xAwLrlXCcL1mj8dx374/ygHRYL2t0tAnBFyDUqhMP2ffT25NAlHG70owm7rW
	SUTDyJfVkqPZVWgKha9F8z3UM86vuSDLEHlZD/N9Q5OVQjGhZ0yqwmL7thf67VuYe8yG
	dqoDhpkRd7mtT0E38s27dEk/Ck1zSuI91daezhjjRb6YaW7J/Khbu9UAYSM78vQVU843
	ZONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version;
	bh=cZ4UwwCl4w3PBD2zm8be8brauSRO0cMff8Ywjnzjlx4=;
	b=CsdHqI/OiZmqP6I1s5u46bVtpy9LwGXVBKSQOK17wiIS3YFZ6q90FxCylb+9hH/fwL
	8RAbdL6q14eFkmaqCsprCWA7nL4r1vU/lyUqaG9FA+d7ZTOgtIXkeVZn6ZtGD32G7pNW
	lfa65NotCEfScn5GPWg0+/oKo4h/naCrNlspYEB7S5NOU2IDgl5aXq1I+o3g16RxWOcD
	MC3Fu1fEwwsfKSIjaKWecdWzNAsRDV4helqFgfQJ5GuGez0RRph45VnbF93xqlEEufe6
	TsnJgHfPaTPKO07l0SHjorROOU6a0j0OuW6ESPVT5WtDoGh+HYXtiu9A7kJnm9hm0ND0
	HloQ==
X-Gm-Message-State: AGRZ1gJJGeYvGEUxdNYNn6GhrCHemFFxQ6aBK/FOKkB5y/2xVXISdaEJ
	IA89NUNOj8BueQmQ01D8xr/BWBwG
X-Google-Smtp-Source: AJdET5foBQqZuWS3wstsFvgp9LSXfyELHC6aEkml9yw/4zuBaaISwzfNkiK9OYkAl8iBPQbQp41F/Q==
X-Received: by 2002:a05:660c:b03:: with SMTP id
	f3mr6307329itk.60.1541093928436; 
	Thu, 01 Nov 2018 10:38:48 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	x21-v6sm11302930ita.6.2018.11.01.10.38.47
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 01 Nov 2018 10:38:47 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <4c283c8c44c2a78d12061a5f0e63c5c1629f5dc4.camel@gmail.com>
To: Kristupas Savickas <kristupas.savickas@teltonika.lt>, 
	yocto@yoctoproject.org
Date: Thu, 01 Nov 2018 12:38:46 -0500
In-Reply-To: <3c8fcce7-e642-a8f2-b599-a85f487038e1@teltonika.lt>
References: <3c8fcce7-e642-a8f2-b599-a85f487038e1@teltonika.lt>
User-Agent: Evolution 3.30.1 (3.30.1-1.fc29) 
Mime-Version: 1.0
Subject: Re: Removing hostapd init file
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
X-List-Received-Date: Thu, 01 Nov 2018 17:38:50 -0000
Content-Type: multipart/alternative; boundary="=-hcA9cgdn1MusAnf7jG4S"

--=-hcA9cgdn1MusAnf7jG4S
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-10-23 at 09:03 +0300, Kristupas Savickas wrote:
>     Greetings,
>     I'm trying to remove the hostapd init file as I'll handle startup
>       of it on my own. I've created a .bbappend file in my layer to
> do
>       this:
>     
> >       do_install_append() {
> > 
> >             rm -rf ${D}${sysconfdir}/init.d
> > 
> >         }
> > 
> >       
> >     
> 
>     However, this results in a compilation warning when building my
>       image and the ipk-postinst is still being run on my target:
>     
> >       WARNING: tlt-image-1.0-r0 do_rootfs: hostapd.postinst
> > returned
> >         1, marking as unpacked only, configuration required on
> > target.
> > 
> >         WARNING: tlt-image-1.0-r0 do_rootfs: Intentionally failing
> >         postinstall scriptlets of ['hostapd'] to defer them to
> > first
> >         boot is deprecated. Please place them into
> >         pkg_postinst_ontarget_${PN} ().
> > 
> >         If deferring to first boot wasn't the intent, then
> > scriptlet
> >         failure may mean an issue in the recipe, or a regression
> >         elsewhere.
> > 
> >         Details of the failure are in
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-
> > r0/temp/log.do_rootfs.
> > 
> >         WARNING: tlt-image-1.0-r0 do_rootfs: [log_check] tlt-image:
> >         found 1 warning message in the logfile:
> > 
> >         [log_check] WARNING: Intentionally failing postinstall
> >         scriptlets of ['hostapd'] to defer them to first boot is
> >         deprecated. Please place them into
> > pkg_postinst_ontarget_${PN}
> >         ().
> >       
> > 
> >       
> >     
> 
>     I tried setting INITSCRIPT_NAME to "" in my .bbappend, but it
>       fails with an error during do_rootfs task of my image:
>     
> > cat
> > build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-
> > r0/temp/log.do_rootfs.24919
> >       | grep hostapd
> > 
> >       NOTE: Found hostapd-dbg_2.6-r0_armv7ahf-neon.ipk in Packages,
> > but
> >       mtime differs - re-reading
> > 
> >       Found hostapd-dev_2.6-r0_armv7ahf-neon.ipk in Packages, but
> > mtime
> >       differs - re-reading
> > 
> >       Found hostapd_2.6-r0_armv7ahf-neon.ipk in Packages, but mtime
> >       differs - re-reading
> > 
> >       NOTE: Installing the following packages: android-system-core-
> > adbd
> >       android-system-core-liblog android-system-core-usb ap6212
> > avlcommd
> >       base-files base-passwd boot-config config-backup curl dnsmasq
> >       dropbear ethtool eventslog factory-restore firewall3 fsl-rc-
> > local
> >       gps-control gps-utils gpsd gpsd-conf gsmd hostapd iio-utils
> > iiod
> >       iproute2 iptables iputils iw kernel-modules libcutils0
> >       libglib-2.0-0 libnl-3-200 libstdc++6 libtlt-lua libxml2
> >       lsm6dsl-rebind lsqlite3 luci lucihttp mnf-info motion-monitor
> >       mtd-utils-ubifs netifd openssl os-release packagegroup-core-
> > boot
> >       perl ppp preinit procd qmuxd recgend rpcd run-postinsts
> > shadow
> >       sms-utilities sqlite3 storage sysntpd system sysup tlt-base-
> > files
> >       tlt-connection-manager tlt-eventslog-lua tzdata ubus uhttpd
> >       update-rc.d ustream-ssl
> > 
> >       NOTE:
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-
> > native/usr/bin/opkg
> >       --volatile-cache -f
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
> >       -t
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
> >       -o
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs 
> >       --force_postinstall --prefer-arch-to-version
> >       --no-install-recommends  --force-overwrite install
> >       android-system-core-adbd android-system-core-liblog
> >       android-system-core-usb ap6212 avlcommd base-files base-
> > passwd
> >       boot-config config-backup curl dnsmasq dropbear ethtool
> > eventslog
> >       factory-restore firewall3 fsl-rc-local gps-control gps-utils
> > gpsd
> >       gpsd-conf gsmd hostapd iio-utils iiod iproute2 iptables
> > iputils iw
> >       kernel-modules libcutils0 libglib-2.0-0 libnl-3-200
> > libstdc++6
> >       libtlt-lua libxml2 lsm6dsl-rebind lsqlite3 luci lucihttp mnf-
> > info
> >       motion-monitor mtd-utils-ubifs netifd openssl os-release
> >       packagegroup-core-boot perl ppp preinit procd qmuxd recgend
> > rpcd
> >       run-postinsts shadow sms-utilities sqlite3 storage sysntpd
> > system
> >       sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua
> >       tzdata ubus uhttpd update-rc.d ustream-ssl
> > 
> >       ERROR: Unable to install packages. Command
> > '/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-
> > native/usr/bin/opkg
> >       --volatile-cache -f
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
> >       -t
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
> >       -o
> > /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs 
> >       --force_postinstall --prefer-arch-to-version
> >       --no-install-recommends  --force-overwrite install
> >       android-system-core-adbd android-system-core-liblog
> >       android-system-core-usb ap6212 avlcommd base-files base-
> > passwd
> >       boot-config config-backup curl dnsmasq dropbear ethtool
> > eventslog
> >       factory-restore firewall3 fsl-rc-local gps-control gps-utils
> > gpsd
> >       gpsd-conf gsmd hostapd iio-utils iiod iproute2 iptables
> > iputils iw
> >       kernel-modules libcutils0 libglib-2.0-0 libnl-3-200
> > libstdc++6
> >       libtlt-lua libxml2 lsm6dsl-rebind lsqlite3 luci lucihttp mnf-
> > info
> >       motion-monitor mtd-utils-ubifs netifd openssl os-release
> >       packagegroup-core-boot perl ppp preinit procd qmuxd recgend
> > rpcd
> >       run-postinsts shadow sms-utilities sqlite3 storage sysntpd
> > system
> >       sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua
> >       tzdata ubus uhttpd update-rc.d ustream-ssl' returned 255:
> > 
> >       Installing hostapd (2.6) on root
> > 
> >       Downloading
> > file:/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-
> > glibc/deploy/ipk/armv7ahf-neon/hostapd_2.6-r0_armv7ahf-neon.ipk.
> > 
> >       To remove package debris, try `opkg remove hostapd`.
> > 
> >       To re-attempt the install, try `opkg install hostapd`.
> > 
> >        * preinst_configure: Aborting installation of hostapd.
> > 
> >     
> 
>     Any pointers of how I could accomplish my goal?
> 
>     
>     
> 
>     
>   
> 

We override INITSCRIPT_PARAMS in a bbappend like so:

 INITSCRIPT_PARAMS = "stop 20 0 1 0 ."

Seems to work OK.


-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-hcA9cgdn1MusAnf7jG4S
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body style=3D"text-align:left; direction:ltr;"><div>On Tue, 2018-10-23 a=
t 09:03 +0300, Kristupas Savickas wrote:</div><blockquote type=3D"cite" sty=
le=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex">
    <p>Greetings,</p>
    <p>I'm trying to remove the hostapd init file as I'll handle startup
      of it on my own. I've created a .bbappend file in my layer to do
      this:</p>
    <blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #=
729fcf solid;padding-left:1ex">
      <p>do_install_append() {<br>
        &nbsp;&nbsp;&nbsp; rm -rf ${D}${sysconfdir}/init.d<br>
        }<br>
      </p>
    </blockquote>
    <p>However, this results in a compilation warning when building my
      image and the ipk-postinst is still being run on my target:</p>
    <blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #=
729fcf solid;padding-left:1ex">
      <p>WARNING: tlt-image-1.0-r0 do_rootfs: hostapd.postinst returned
        1, marking as unpacked only, configuration required on target.<br>
        WARNING: tlt-image-1.0-r0 do_rootfs: Intentionally failing
        postinstall scriptlets of ['hostapd'] to defer them to first
        boot is deprecated. Please place them into
        pkg_postinst_ontarget_${PN} ().<br>
        If deferring to first boot wasn't the intent, then scriptlet
        failure may mean an issue in the recipe, or a regression
        elsewhere.<br>
        Details of the failure are in
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_rootfs.<br>
        WARNING: tlt-image-1.0-r0 do_rootfs: [log_check] tlt-image:
        found 1 warning message in the logfile:<br>
        [log_check] WARNING: Intentionally failing postinstall
        scriptlets of ['hostapd'] to defer them to first boot is
        deprecated. Please place them into pkg_postinst_ontarget_${PN}
        ().</p>
      <p><br>
      </p>
    </blockquote>
    <p>I tried setting INITSCRIPT_NAME to "" in my .bbappend, but it
      fails with an error during do_rootfs task of my image:</p>
    <blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #=
729fcf solid;padding-left:1ex">cat
build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_r=
ootfs.24919
      | grep hostapd<br>
      NOTE: Found hostapd-dbg_2.6-r0_armv7ahf-neon.ipk in Packages, but
      mtime differs - re-reading<br>
      Found hostapd-dev_2.6-r0_armv7ahf-neon.ipk in Packages, but mtime
      differs - re-reading<br>
      Found hostapd_2.6-r0_armv7ahf-neon.ipk in Packages, but mtime
      differs - re-reading<br>
      NOTE: Installing the following packages: android-system-core-adbd
      android-system-core-liblog android-system-core-usb ap6212 avlcommd
      base-files base-passwd boot-config config-backup curl dnsmasq
      dropbear ethtool eventslog factory-restore firewall3 fsl-rc-local
      gps-control gps-utils gpsd gpsd-conf gsmd hostapd iio-utils iiod
      iproute2 iptables iputils iw kernel-modules libcutils0
      libglib-2.0-0 libnl-3-200 libstdc++6 libtlt-lua libxml2
      lsm6dsl-rebind lsqlite3 luci lucihttp mnf-info motion-monitor
      mtd-utils-ubifs netifd openssl os-release packagegroup-core-boot
      perl ppp preinit procd qmuxd recgend rpcd run-postinsts shadow
      sms-utilities sqlite3 storage sysntpd system sysup tlt-base-files
      tlt-connection-manager tlt-eventslog-lua tzdata ubus uhttpd
      update-rc.d ustream-ssl<br>
      NOTE:
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
      --volatile-cache -f
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
      -t
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
      -o
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs&nbsp;
      --force_postinstall --prefer-arch-to-version
      --no-install-recommends&nbsp; --force-overwrite install
      android-system-core-adbd android-system-core-liblog
      android-system-core-usb ap6212 avlcommd base-files base-passwd
      boot-config config-backup curl dnsmasq dropbear ethtool eventslog
      factory-restore firewall3 fsl-rc-local gps-control gps-utils gpsd
      gpsd-conf gsmd hostapd iio-utils iiod iproute2 iptables iputils iw
      kernel-modules libcutils0 libglib-2.0-0 libnl-3-200 libstdc++6
      libtlt-lua libxml2 lsm6dsl-rebind lsqlite3 luci lucihttp mnf-info
      motion-monitor mtd-utils-ubifs netifd openssl os-release
      packagegroup-core-boot perl ppp preinit procd qmuxd recgend rpcd
      run-postinsts shadow sms-utilities sqlite3 storage sysntpd system
      sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua
      tzdata ubus uhttpd update-rc.d ustream-ssl<br>
      ERROR: Unable to install packages. Command
'/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/f=
ml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
      --volatile-cache -f
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
      -t
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
      -o
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fm=
l001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs&nbsp;
      --force_postinstall --prefer-arch-to-version
      --no-install-recommends&nbsp; --force-overwrite install
      android-system-core-adbd android-system-core-liblog
      android-system-core-usb ap6212 avlcommd base-files base-passwd
      boot-config config-backup curl dnsmasq dropbear ethtool eventslog
      factory-restore firewall3 fsl-rc-local gps-control gps-utils gpsd
      gpsd-conf gsmd hostapd iio-utils iiod iproute2 iptables iputils iw
      kernel-modules libcutils0 libglib-2.0-0 libnl-3-200 libstdc++6
      libtlt-lua libxml2 lsm6dsl-rebind lsqlite3 luci lucihttp mnf-info
      motion-monitor mtd-utils-ubifs netifd openssl os-release
      packagegroup-core-boot perl ppp preinit procd qmuxd recgend rpcd
      run-postinsts shadow sms-utilities sqlite3 storage sysntpd system
      sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua
      tzdata ubus uhttpd update-rc.d ustream-ssl' returned 255:<br>
      Installing hostapd (2.6) on root<br>
      Downloading
<a class=3D"moz-txt-link-freetext" href=3D"file:/home/kristupas/projects/fm=
l-linux-sdk-qtel/oe-core/build/tmp-glibc/deploy/ipk/armv7ahf-neon/hostapd_2=
.6-r0_armv7ahf-neon.ipk">file:/home/kristupas/projects/fml-linux-sdk-qtel/o=
e-core/build/tmp-glibc/deploy/ipk/armv7ahf-neon/hostapd_2.6-r0_armv7ahf-neo=
n.ipk</a>.<br>
      To remove package debris, try `opkg remove hostapd`.<br>
      To re-attempt the install, try `opkg install hostapd`.<br>
      &nbsp;* preinst_configure: Aborting installation of hostapd.<br>
    </blockquote>
    <p>Any pointers of how I could accomplish my goal?<br>
    </p>
    <p><br>
    </p>
 =20

</blockquote><div><br></div><div>We override INITSCRIPT_PARAMS in a bbappen=
d like so:</div><div><br></div><div> INITSCRIPT_PARAMS =3D "stop 20 0 1 0 .=
"</div><div><br></div><div>Seems to work OK.</div><div><br></div><div><span=
><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com">=
JPEWhacker@gmail.com</a>&gt;</span></div></body></html>

--=-hcA9cgdn1MusAnf7jG4S--
