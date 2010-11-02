Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D37C4C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 14:19:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2010 12:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,284,1286175600"; 
	d="csv'?scan'208";a="569702528"
Received: from unknown (HELO [10.255.12.117]) ([10.255.12.117])
	by orsmga002.jf.intel.com with ESMTP; 02 Nov 2010 12:19:29 -0700
Message-ID: <4CD06441.5060407@linux.intel.com>
Date: Tue, 02 Nov 2010 12:19:29 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <4CCBDAF8.70209@linux.intel.com>
In-Reply-To: <4CCBDAF8.70209@linux.intel.com>
Subject: Re: World Package List
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 19:19:31 -0000
X-Groupsio-MsgNum: 176
Content-Type: multipart/mixed; boundary="------------000005070802070607020901"

--------------000005070802070607020901
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


I have updated the spreadsheet and removed items that should not have 
been included (-natives and other tools).  I have also added annotation 
to the first column to show some potential adjustments and existing 
inter-dependencies within the list.

Again, please review the remaining items and provide any input.

Thanks

    Sau!



On 10/30/2010 01:44 AM, Saul G. Wold wrote:
>
> Folks,
>
> Please find attached a list of packages that are in the world build but
> not currently contained in any tasks or images. This is an early warning
> that we are putting some of these up for consideration for relocation.
>
> As we work through this determination process, we will document it to
> use as in the future for package relocation. There maybe recipes in this
> list that will move into some specific tasks or be moved to an external
> layer.
>
> Please review this spreadsheet and provide any input for these packages.
>
> Thanks
> Sau!
>
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

--------------000005070802070607020901
Content-Type: text/csv;
 name="annotated_not_in_world.csv"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="annotated_not_in_world.csv"

"Notes","Recipe Name","Description","License","Current Version","Upstream Version"
,"aaina","Aaina Clutter Demo","GPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
,"abiword","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
,"abiword-embedded","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
"BSP for acpi","acpid","A daemon for delivering ACPI events.","GPL","1.0.6","1.0.10"
,"alsa-oss","Alsa OSS Compatibility Package","GPL","1.0.17","1.0.17"
,"alsa-tools","Alsa Tools","GPL","1.0.20","None"
"Move to meta-extras","applewmproto","X protocol headers: applewmproto","MIT-X",01/04/01,01/04/01
,"apr","Apache Portable Runtime (APR) library","Apache License_ Version 2.0",01/03/03,01/04/02
,"apr-util","Apache Portable Runtime (APR) companion library","Apache License_ Version 2.0",01/03/04,01/03/09
"Bluez Tools","bluez-hcidump","The hcidump tool reads raw HCI data coming from and going to a Bluetooth device and displays the commands events and data in a human-readable form.","GPL",1.42,1.42
,"claws-mail","Mail user agent","GPL",02/09/01,03/07/06
,"claws-plugin-gtkhtml2-viewer","Mail user agent plugins","GPL",0.15,0.27
,"claws-plugin-maildir","Mail user agent plugins","GPL","0.24.4","0.24.4"
,"claws-plugin-mailmbox","Mail user agent plugins","GPL",1.13,01/14/04
,"claws-plugin-rssyl","Mail user agent plugins","GPL",0.13,0.27
,"clipboard-manager","clipboard manager","GPL","0.6.4","0.6.8"
,"clutter","Clutter graphics library","LGPL","1.0.0+git0+e957e277b8a4893ce8c99e94402036d42a8b3748",01/02/08
"Old Version – Remove","clutter-0.6","Clutter graphics library","LGPL","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59"
"Old Version – Remove","clutter-0.8","Clutter graphics library","LGPL","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30"
,"clutter-1.0","Clutter graphics library","LGPL","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4"
,"clutter-box2d","Clutter Box2D","GPLv2","0.0+git0+2bcf5b836548dc4909e13b8ae7f60dc64c93d559","0.10.0"
"Old Version – Remove","clutter-cairo-0.6","Clutter Cairo","LGPL","0.6.0+git4dc4ef712ddc890d828a1cb65a69a835285af548",0.6
"Old Version – Remove","clutter-cairo-0.8","Clutter Cairo","LGPL","0.8.0+git0+e27e507dedddec3f279a2902ecee0da1011c78eb","0.8.2"
,"clutter-gst-0.10","Clutter GStreamer","LGPL","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf"
"Old Version – Remove","clutter-gst-0.6","Clutter GStreamer","LGPL","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd"
"Old Version – Remove","clutter-gst-0.8","Clutter GStreamer","LGPL","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e"
,"clutter-gst-1.0","Clutter GStreamer","LGPL","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af"
,"clutter-gtk-0.10","Clutter GTK+","LGPL","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992"
"Old Version – Remove","clutter-gtk-0.6","Clutter GTK+","LGPL","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a"
"Old Version – Remove","clutter-gtk-0.8","Clutter GTK+","LGPL","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd"
,"clutter-gtk-1.0","Clutter GTK+","LGPL","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8"
,"console-tools","Provides tools that enable the set-up and manipulation of the linux console and console-font files.","GPL","0.3.2","0.3.2"
"PulseAudio","consolekit","ConsoleKit is a framework for defining and tracking users login sessions and seats.","GPLv2","0.3.0","0.4.1"
,"devicekit","DeviceKit is a simple system service that a) can enumerate devices; b) emits signals when devices are added removed; c) provides a way to merge device information / quirks onto devices.","GPLv2",3,3
,"devicekit-power","Devicekit power","GPLv2",14,"n/a"
"LSB","dhcp","DHCP (Dynamic Host Configuration Protocol) is a protocol which allows individual devices on an IP network to get their own network configuration information from a server.  DHCP helps make it easier to administer devices.","ISC","4.1.1-P1","4.1.1-P1"
"BSP for atom-pc","eee-acpi-scripts","eeePC specific ACPI scripts","GPL","0.0+gitdf785afdacedf869b20fb88a793c13b539819270","1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5"
,"empathy","Instant messaging program supporting text voice video file transfers and interapplication communication over many different protocols include: AIM MSN Google Talk (Jabber/XMPP) Facebook Yahoo! Salut Gadu-Gadu Groupwise ICQ and QQ.","GPL",02/26/01,"2.31.2"
,"epdfview","A minimal PDF viewer based on gtk and poppler","GPLv2","0.1.7","None"
,"exmap-console","Console based version of exmap a memory usage analysis tool","GPL","0.4+svnr405","0.4.1"
,"farsight2","FarSight is an audio/video conferencing framework specifically designed for Instant Messengers.","GPLv2.1","0.0.9","0.0.20"
"Qt Demo","fotowall","Fotowall is a creative tool that allows you to layout your photos or pictures in a personal way. You can add pictures then resize move change colors text shadows etc..","GPLv2+",0.9,
,"fstests","Various benchmarning tests for X","GPL","0.0+svnr266","0.0+svnr426"
,"fuse","With FUSE it is possible to implement a fully functional filesystem in a userspace program","GPL",02/07/02,02/08/04
,"galago-daemon","Galago is a desktop presence framework designed to transmit presence information between programs.","GPL","0.5.1","0.5.1"
,"gcalctool","gcalctool is a powerful calculator","GPL",05/08/17,"None"
,"gnome-desktop","GNOME library for reading .desktop files","GPL",02/26/02,"2.31.2"
,"gnome-doc-utils","None","GPL LGPL","0.12.0","0.20.1"
,"gnome-icon-theme","None","GPL",02/22/00,"2.30.2"
,"gnome-settings-daemon","GNOME settings daemon","GPL",02/26/01,"2.31.2"
,"gnome-terminal","GNOME Terminal","GPL",02/26/03,"2.31.3"
"LSB","groff","groff-a short reference for the GNU roff language ","GPLv2","1.18.1.4","None"
"Machine Task","grub","GRUB is a GPLed bootloader intended to unify bootloading across x86 operating systems. In addition to loading the Linux kernel it implements the Multiboot standard which allows for flexible loading of multiple boot images.","GPLv2+",0.97,0.97
"Gupnp Demo","gssdp","GSSDP implements resource discovery and announcement over SSDP (Simpe Service Discovery Protocol).","LGPL","0.7.1","0.7.2"
,"gthumb","gThumb is an image viewer and browser for the GNOME Desktop","GPLv2",02/12/00,"None"
"Gupnp Demo","gupnp","GUPnP is an elegant object-oriented open source framework for creating UPnP  devices and control points written in C using GObject and libsoup. The GUPnP API is intended to be easy to use efficient and flexible. It provides the same set of features as libupnp but shields the developer from most of UPnP's internals.","LGPL","0.13.2","0.13.3"
"Gupnp Demo","gupnp-av","GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP.","LGPL","0.5.2","0.5.5"
"Gupnp Demo","gupnp-tools","Tools for GUPnP","GPL",0.8,0.8
"GPS Demo","gypsy","Gypsy is a GPS multiplexing daemon which allows multiple clients to access GPS data from multiple GPS sources concurrently.  Gypsy also hides the details of parsing NMEA from the client applications passing the data as simple values for the clients to use.","GPL",0.6,0.7
"BSP? (old?)","hostap-conf","PCMCIA-cs configuration files for wireless LAN cards based on Intersil's Prism2/2.5/3 chipset","GPL",1,1
,"imake","C preprocessor interface to the make utility","MIT-X","1.0.2","1.0.3"
"Gnome Dep (libxklavier)","iso-codes","ISO language territory currency script codes and their translations","LGPL",3.3,3.16
"BSP for keyboards","keymaps","Keymaps and initscript to set the keymap on bootup.","GPL",1,1
"sato?","kf","Kf is a GTK+ instant messaging client.","GPL","0.5.4.1","n/a"
"BSP for acpi","libacpi","General purpose shared library for programs gathering ACPI data on Linux. Thermal zones battery infomration fan information and AC states are implemented.","MIT",0.2,0.2
"Move to meta-extras","libapplewm","None","MIT-X","1.0.0",01/04/00
"Gnome Dep (gnome-setting-daemon)","libart-lgpl","Library of functions for 2D graphics","LGPL",02/03/19,02/03/21
"PulseAudio Dep","libatomics-ops","A library for atomic integer operations","MIT",1.2,"7.2alpha4"
"Empathy Dep","libcanberra","Libcanberra is an implementation of the XDG Sound Theme and Name Specifications for generating event sounds on free desktops.","LGPL",0.1,0.24
"Claws Dep","libetpan","libetpan is a library for communicating with mail and news servers. It supports the protocols SMTP POP3 IMAP and NNTP.","BSD",0.54,1
,"libexif","Library to read the extended image information (EXIF) from JPEG pictures","LGPL","0.6.16","0.6.19"
"abiword Dep","libfribidi","Fribidi library for bidirectional text","GPL","0.10.4","0.19.2"
,"libfs","X11 Font Services library","MIT-X","1.0.1","1.0.2"
"Galago dep","libgalago","Galago is a desktop presence framework designed to transmit presence information between programs.","LGPL","0.5.2","0.5.2"
"Gnome Dep (gnome-setting-daemon)","libgnomecanvas","A powerful object-oriented display","GPL",02/20/00,"2.30.1"
"Gnome Dep (gnome-setting-daemon)","libgnomekbd","GNOME keyboard library","LGPL",02/26/00,"2.31.1"
"abiword Dep / wv dep","libgsf","None","GPL",01/14/05,01/14/18
"BSP for phone","libgsmd","GSM libraries and daemons implementing the 07.10 specification","GPL LGPL","0.1+svnr4335","check"
,"libgtkstylus","GTK plugin for stylus based systems","LGPL",0.5,0.5
,"liblbxutil","XFIXES Extension","MIT-X",01/01/00,01/01/00
"farsight dep","libnice","Libnice is an implementation of the IETF's draft Interactice Connectivity Establishment standard (ICE).","LGPL/MPL","0.0.6","0.0.12"
"Move to meta-extras","liboldx","None","MIT-X","1.0.1","1.0.1"
"gstreamer","libomxil","Bellagio OpenMAX Integration Layer","LGPL","0.3.3","0.9.2.1"
"OpenSync","libopensync","The OpenSync project is an ongoing effort to create a synchronization framework that will be a platform independent general purpose synchronization engine utilizing modular plugins for content formats and different kind of connection types. OpenSync's modularity should allow it to be extended easily to new devices and purposes without radically changing the architecture itself allowing it to support wide variety of devices used today and in the future.","LGPL",0.37,0.39
"OpenSync","libopensync-plugin-evolution2","OpenSync plugin","LGPL",0.36,0.39
"OpenSync","libopensync-plugin-file","OpenSync plugin","LGPL",0.37,0.39
"OpenSync","libopensync-plugin-google-calendar","OpenSync plugin","GPLv2",0.36,"None"
"OpenSync","libopensync-plugin-irmc","OpenSync plugin","GPLv2",0.36,"None"
"OpenSync","libopensync-plugin-syncml","OpenSync plugin","LGPL",0.38,0.39
"OpenSync","libopensync-plugin-vformat","OpenSync plugin","LGPL",0.37,0.39
"PPP dep","libpcap","None","BSD",01/01/01,01/01/01
"PulseAudio","libsamplerate0","An audio Sample Rate Conversion library","GPL libsamplerate","0.1.2","0.1.7"
"PulseAudio","libsndfile1","An audio format Conversion library","LGPL","1.0.17","1.0.21 "
"Webkit-gtk (remove old versions)","libsoup","An HTTP library implementation in C","GPL",02/02/00,"None"
,"libsync","LibSync is a GObject-based framework for more convenient use of OpenSync in GLib applications.","LGPL","0.0+svnrINVALID","None"
"OpenSync","libsyncml","Libsyncml is a implementation of the SyncML protocol.","LGPL","0.5.4","0.5.4"
"Telepathy","libtelepathy","Telepathy is a D-Bus framework for unifying real time communication including instant messaging voice calls and video calls.  It abstracts differences between protocols to provide a unified interface for applications.","LGPL","0.3.3","0.3.3"
"gthumb","libunique","None","LGPLv2.1",01/01/06,01/01/06
,"libwindowswm","None","MIT-X","1.0.0","1.0.1"
,"libxaw","X Athena Widget Set","MIT-X","1.0.5","1.0.7"
,"libxevie","X11 EvIE extension library","MIT-X","1.0.2","1.0.2"
,"libxkbui","X11 keyboard UI presentation library","GPL","1.0.2","1.0.2"
"Gnome Dep (gnome-setting-daemon)","libxklavier","Utility library to make using XKB easier","LGPL",3.9,5
,"libxscrnsaver","X Screen Saver extension library","GPL",01/02/00,01/02/00
"BSP for igep","linux-firmware","Firmware files for use with Linux kernel","Proprietary","0.0+git85212bf6501da865e570f6b2f6fbd6f212850609","None"
,"lndir","create a shadow directory of symbolic links to another directory tree","MIT-X","1.0.1","n/a"
"kf dep","loudmouth","Loudmouth is a lightweight and easy-to-use C library for programming with the XMPP/Jabber protocol.","LGPL",01/04/00,"None"
"LSB","man","A set of documentation tools: man apropos and whatis","GPLv2","1.6e","None"
"LSB","man-pages","The Linux man-pages project documents the Linux kernel and C library interfaces that are employed by user programs","GPL",3.25,"None"
,"matchbox-themes-extra","Matchbox window manager extra themes","GPL","0.3+svnr1524","0.3+svnr1247"
,"matchbox-themes-gtk","Gtk2 theme files to accompany default Matchbox themes","GPL",1,1
"Extended","mc","Midnight Commander is an ncurses based file manager.","GPLv2",04/07/03,"None"
"Kernel update-modules","modutils","These utilities are intended to make a Linux modular kernel manageable for all users administrators and distribution maintainers.","GPLv2",02/04/27,02/04/27
"Kernel update-modules","modutils-collateral","modutils configuration files","MIT",1,1
,"msynctool","msynctool is a program to synchronize calendars addressbooks and other PIM data between programs on your computer and other computers mobile devices PDAs or cell phones.  It uses the OpenSync plugins when synchronizing data.","GPL",0.37,0.38
,"mutter","Metacity is the boring window manager for the adult in you. Mutter is metacity + clutter.","GPLv2","2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842","2.29.1_0.4"
"Unused","network-suspend-scripts","Network suspend/resume scripts","GPLv2",1.1,1
,"ofono","oFono is a stack for mobile telephony devices on Linux. oFono supports speaking to telephony devices through specific drivers or with generic AT commands.","GPL",0.17,0.21
,"ohm","Open Hardware Manager","LGPL","0.1.2+git-locrevedfe25d49d67884bf004de7ae0724c162bb5e65e","3cb3496846508929b9f2d05683ec93523de7947c"
"OpenSync","openobex","The Openobex project is an open source implementation of the Object Exchange (OBEX) protocol.","GPL",1.5,1.5
,"openswan","Openswan is an Open Source implementation of IPsec for the Linux operating system.","GPLv2",02/04/07,02/06/26
"BSP for wifi","orinoco-conf","PCMCIA-cs configuration files for Hermes (Orinoco) wireless LAN cards","GPL",1,1
"BSP for eee-acpi-utils","pm-utils","Simple shell command line toos to suspect and hibernate.","GPL",01/03/00,01/03/00
"devicekit","polkit","The polkit package is an application-level toolkit for defining and handling the policy that allows unprivileged processes to speak to privileged processes.","LGPLv2+",0.96,0.96
"devicekit","polkit-gnome","None","LGPLv2+",0.96,0.96
"Demo","pong-clock","A clock combined with a game of pong","GPLv2+",1,1
"epdfview","poppler","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","GPL","0.9.2","0.12.4"
"epdfview","poppler-data","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","Adobe",0.1,"0.4.2"
"Distro Feature","ppp","ppp (Paul's PPP Package) is an open source package which implements the Point-to-Point Protocol (PPP) on Linux and Solaris systems.","BSD & GPLv2+ & LGPLv2+ & public domain",02/04/05,02/04/05
"Distro Feature","ppp-dialin","Enables PPP dial-in through a serial connection","MIT",0.1,"check"
,"pulseaudio","Pulseaudio is a sound server for Linux and Unix-like operating systems.","LGPL","0.9.15","0.9.21"
"Demo","puzzles","None","MIT","r7593","svn_8956"
"Qt Demo","qmmp","Qmmp (Qt-based Multimedia Player) is an audio-player written with help of Qt library","GPLv2","0.4.1","None"
,"run-postinsts","Run postinstall scripts on device using awk","MIT",1,"None"
"Demo","table","Table Clutter Demo","LGPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
"qmmp dep","taglib","TagLib is a library for reading and editing the meta-data of several popular audio formats","LGPL",01/06/01,01/06/03
,"telepathy-farsight","Glue library for telepathy media signalling and the media streaming capabilities of Farsight2.","LGPLv2","0.0.7","0.0.14"
,"telepathy-gabble","Telepathy implementation of the Jabber/XMPP protocols.","LGPL","0.7.8","0.9.11"
,"telepathy-glib","Telepathy Framework: GLib-based helper library for connection managers","LGPL","0.9.2","0.11.6"
,"telepathy-idle","Telepathy implementation of the Internet Relay Chat protocols.","LGPL","0.1.2","0.1.6"
,"telepathy-mission-control","Central control for Telepathy connection managers","LGPL",4.67,05/05/00
,"telepathy-python","Telepathy framework - Python package","LGPL","0.15.1","0.15.17"
"Clutter?","tidy","Tidy library","LGPL","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb"
"gthumb","tiff","This software provides support for the Tag Image File Format (TIFF)","tiff",03/08/02,03/09/02
"gthumb","ttf-bitstream-vera","The Bitstream Vera fonts - TTF Edition","Bitstream Vera",1.1,1.1
"OpenSync","wbxml2","The WBXML Library (aka libwbxml) contains a library and its associated tools to Parse Encode and Handle WBXML documents. The WBXML format is a binary representation of XML defined by the Wap Forum and used to reduce bandwidth in mobile communications.","GPLv2","0.9.2","0.10.8"
"Webkit?","web","Web is a multi-platform web browsing application.","GPL","0.0+svnr97","None"
,"windowswmproto","X protocol headers: windowswmproto","MIT-X","1.0.4","1.0.4"
"abiword Dep","wv","Programs for accessing Microsoft Word documents","GPLv2",01/02/00,01/02/01
,"x11perf","X11 server performance test program","MIT-X",1.5,01/05/01
,"x11vnc","Export your X session on-the-fly via VNC","GPL","0.9.3","0.9.11_dev"
,"xbacklight","X Backlight Utility","MIT-X",1.1,01/01/01
,"xev","X Event Viewer","MIT","1.0.3","1.0.4"
,"xeyes","X application","MIT-X","1.0.1",01/01/00
,"xf86-input-synaptics","X.Org X server -- keyboard input driver","MIT-X",01/02/01,01/02/02
,"xf86-video-intel","X.Org X server -- Intel i8xx i9xx display driver","MIT-X",02/12/00,02/11/00
,"xf86-video-omapfb","X.Org X server -- OMAP display driver","MIT-X","0.1.1+git0+2ae9a57ebc3236cd0aec6534067b91a5c6916a3a","0.1.1+git_db636c8436265c3d86"
,"xf86-video-vesa","X.Org X server -- Generic Vesa display driver","MIT-X",02/03/00,02/03/00
"LSB","xinetd","Highly configurable modular and secure inetd","xinetd",02/03/14,02/03/14
,"xorg-cf-files","X Window System CF files","MIT-X","1.0.3","1.0.3"
,"xournal","Xournal is an application for notetaking sketching keeping a journal using a stylus.","GPL",0.2,"0.4.5"
,"xproxymanagementprotocol","X protocol headers: xproxymanagementprotocol","MIT-X","1.0.3","1.0.3"
,"xrdb","X server resource database utility","xrdb","1.0.5","1.0.6"
"BSP / Xorg tool","xvinfo","Print out X-Video extension adaptor information","MIT-X","1.0.2",01/01/00
"BSP","zaurusd","Daemon to handle device specifc features.","GPL","0.0+svnr358","n/a"
"Distro Feature","zeroconf","Zeroconf is a program that is used to claim IPv4 link-local addresses. IPv4 link-local addresses are useful when setting up ad-hoc networking between devices without the involvement of a either a DHCP server or network administrator. These addresses are allocated from the 169.254.0.0/16 address range and are normally attached to each Ethernet device in your computer. Addresses are assigned randomly by each host and in case of collision both hosts (are supposed to) renumber.","GPL",0.9,0.9
,"zile","Zile is a very small emacs-like editor.","GPL","1.7+2.0beta6","None"

--------------000005070802070607020901--
