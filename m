Return-Path: <kristupas.savickas@teltonika.lt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58E66E00BC6; Mon, 22 Oct 2018 23:13:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.61.46.25 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 599 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Oct 2018 23:13:47 PDT
Received: from mail.teltonika.lt (mail.teltonika.lt [92.61.46.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC2A7E00BBF
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 23:13:47 -0700 (PDT)
Received: from [192.168.90.159] (88-119-152-93.static.zebra.lt [88.119.152.93])
	by mail.teltonika.lt (Postfix) with ESMTPSA id 4092D2460FDD
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 09:03:47 +0300 (EEST)
To: yocto@yoctoproject.org
From: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Message-ID: <3c8fcce7-e642-a8f2-b599-a85f487038e1@teltonika.lt>
Date: Tue, 23 Oct 2018 09:03:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Removing hostapd init file
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
X-List-Received-Date: Tue, 23 Oct 2018 06:13:49 -0000
Content-Type: multipart/alternative;
	boundary="------------B4C80F40FE36334CCB7D553E"
Content-Language: en-US

--------------B4C80F40FE36334CCB7D553E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Greetings,

I'm trying to remove the hostapd init file as I'll handle startup of it 
on my own. I've created a .bbappend file in my layer to do this:

    do_install_append() {
         rm -rf ${D}${sysconfdir}/init.d
    }

However, this results in a compilation warning when building my image 
and the ipk-postinst is still being run on my target:

    WARNING: tlt-image-1.0-r0 do_rootfs: hostapd.postinst returned 1,
    marking as unpacked only, configuration required on target.
    WARNING: tlt-image-1.0-r0 do_rootfs: Intentionally failing
    postinstall scriptlets of ['hostapd'] to defer them to first boot is
    deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
    If deferring to first boot wasn't the intent, then scriptlet failure
    may mean an issue in the recipe, or a regression elsewhere.
    Details of the failure are in
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_rootfs.
    WARNING: tlt-image-1.0-r0 do_rootfs: [log_check] tlt-image: found 1
    warning message in the logfile:
    [log_check] WARNING: Intentionally failing postinstall scriptlets of
    ['hostapd'] to defer them to first boot is deprecated. Please place
    them into pkg_postinst_ontarget_${PN} ().


I tried setting INITSCRIPT_NAME to "" in my .bbappend, but it fails with 
an error during do_rootfs task of my image:

    cat
    build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_rootfs.24919
    | grep hostapd
    NOTE: Found hostapd-dbg_2.6-r0_armv7ahf-neon.ipk in Packages, but
    mtime differs - re-reading
    Found hostapd-dev_2.6-r0_armv7ahf-neon.ipk in Packages, but mtime
    differs - re-reading
    Found hostapd_2.6-r0_armv7ahf-neon.ipk in Packages, but mtime
    differs - re-reading
    NOTE: Installing the following packages: android-system-core-adbd
    android-system-core-liblog android-system-core-usb ap6212 avlcommd
    base-files base-passwd boot-config config-backup curl dnsmasq
    dropbear ethtool eventslog factory-restore firewall3 fsl-rc-local
    gps-control gps-utils gpsd gpsd-conf gsmd hostapd iio-utils iiod
    iproute2 iptables iputils iw kernel-modules libcutils0 libglib-2.0-0
    libnl-3-200 libstdc++6 libtlt-lua libxml2 lsm6dsl-rebind lsqlite3
    luci lucihttp mnf-info motion-monitor mtd-utils-ubifs netifd openssl
    os-release packagegroup-core-boot perl ppp preinit procd qmuxd
    recgend rpcd run-postinsts shadow sms-utilities sqlite3 storage
    sysntpd system sysup tlt-base-files tlt-connection-manager
    tlt-eventslog-lua tzdata ubus uhttpd update-rc.d ustream-ssl
    NOTE:
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
    --volatile-cache -f
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
    -t
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
    -o
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs
    --force_postinstall --prefer-arch-to-version
    --no-install-recommends  --force-overwrite install
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
    sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua tzdata
    ubus uhttpd update-rc.d ustream-ssl
    ERROR: Unable to install packages. Command
    '/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
    --volatile-cache -f
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
    -t
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
    -o
    /home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs
    --force_postinstall --prefer-arch-to-version
    --no-install-recommends  --force-overwrite install
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
    sysup tlt-base-files tlt-connection-manager tlt-eventslog-lua tzdata
    ubus uhttpd update-rc.d ustream-ssl' returned 255:
    Installing hostapd (2.6) on root
    Downloading
    file:/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/deploy/ipk/armv7ahf-neon/hostapd_2.6-r0_armv7ahf-neon.ipk.
    To remove package debris, try `opkg remove hostapd`.
    To re-attempt the install, try `opkg install hostapd`.
      * preinst_configure: Aborting installation of hostapd.

Any pointers of how I could accomplish my goal?



--------------B4C80F40FE36334CCB7D553E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Greetings,</p>
    <p>I'm trying to remove the hostapd init file as I'll handle startup
      of it on my own. I've created a .bbappend file in my layer to do
      this:</p>
    <blockquote>
      <p>do_install_append() {<br>
            rm -rf ${D}${sysconfdir}/init.d<br>
        }<br>
      </p>
    </blockquote>
    <p>However, this results in a compilation warning when building my
      image and the ipk-postinst is still being run on my target:</p>
    <blockquote>
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
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_rootfs.<br>
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
    <blockquote>cat
build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/log.do_rootfs.24919
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
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
      --volatile-cache -f
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
      -t
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
      -o
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs 
      --force_postinstall --prefer-arch-to-version
      --no-install-recommends  --force-overwrite install
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
'/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
      --volatile-cache -f
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/opkg.conf
      -t
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/temp/ipktemp/
      -o
/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/work/fml001-oe-linux-gnueabi/tlt-image/1.0-r0/rootfs 
      --force_postinstall --prefer-arch-to-version
      --no-install-recommends  --force-overwrite install
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
<a class="moz-txt-link-freetext" href="file:/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/deploy/ipk/armv7ahf-neon/hostapd_2.6-r0_armv7ahf-neon.ipk">file:/home/kristupas/projects/fml-linux-sdk-qtel/oe-core/build/tmp-glibc/deploy/ipk/armv7ahf-neon/hostapd_2.6-r0_armv7ahf-neon.ipk</a>.<br>
      To remove package debris, try `opkg remove hostapd`.<br>
      To re-attempt the install, try `opkg install hostapd`.<br>
       * preinst_configure: Aborting installation of hostapd.<br>
    </blockquote>
    <p>Any pointers of how I could accomplish my goal?<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------B4C80F40FE36334CCB7D553E--
