Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8110A4C80287
	for <yocto@yoctoproject.org>; Sat, 30 Oct 2010 03:44:44 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2010 01:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,263,1286175600"; 
	d="csv'?scan'208";a="852482338"
Received: from unknown (HELO [10.255.12.196]) ([10.255.12.196])
	by fmsmga001.fm.intel.com with ESMTP; 30 Oct 2010 01:44:41 -0700
Message-ID: <4CCBDAF8.70209@linux.intel.com>
Date: Sat, 30 Oct 2010 09:44:40 +0100
From: "Saul G. Wold" <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: World Package List
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
X-List-Received-Date: Sat, 30 Oct 2010 08:44:44 -0000
X-Groupsio-MsgNum: 137
Content-Type: multipart/mixed; boundary="------------080401080009030406000503"

--------------080401080009030406000503
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

Please find attached a list of packages that are in the world build but 
not currently contained in any tasks or images. This is an early warning 
that we are putting some of these up for consideration for relocation.

As we work through this determination process, we will document it to 
use as in the future for package relocation. There maybe recipes in this 
list that will move into some specific tasks or be moved to an external 
layer.

Please review this spreadsheet and provide any input for these packages.

Thanks
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


--------------080401080009030406000503
Content-Type: text/csv;
 name="world_not_in_images.csv"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="world_not_in_images.csv"

"Recipe Name","Description","License Type","Yocto Version","Upstream Version (if known)"
"aaina","Aaina Clutter Demo","GPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
"abiword","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
"abiword-embedded","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
"acpid","A daemon for delivering ACPI events.","GPL","1.0.6","1.0.10"
"alsa-oss","Alsa OSS Compatibility Package","GPL","1.0.17","1.0.17"
"alsa-tools","Alsa Tools","GPL","1.0.20","None"
"applewmproto","X protocol headers: applewmproto","MIT-X",01/04/01,01/04/01
"apr","Apache Portable Runtime (APR) library","Apache License_ Version 2.0",01/03/03,01/04/02
"apr-util","Apache Portable Runtime (APR) companion library","Apache License_ Version 2.0",01/03/04,01/03/09
"bluez-hcidump","The hcidump tool reads raw HCI data coming from and going to a Bluetooth device and displays the commands events and data in a human-readable form.","GPL",1.42,1.42
"chrpath","chrpath allows you to change the rpath (where the application looks for libraries) in an application. It does not (yet) allow you to add an rpath if there isn't one already.","GPL",0.13,"0.13-2"
"claws-mail","Mail user agent","GPL",02/09/01,03/07/06
"claws-plugin-gtkhtml2-viewer","Mail user agent plugins","GPL",0.15,0.27
"claws-plugin-maildir","Mail user agent plugins","GPL","0.24.4","0.24.4"
"claws-plugin-mailmbox","Mail user agent plugins","GPL",1.13,01/14/04
"claws-plugin-rssyl","Mail user agent plugins","GPL",0.13,0.27
"clipboard-manager","clipboard manager","GPL","0.6.4","0.6.8"
"clutter","Clutter graphics library","LGPL","1.0.0+git0+e957e277b8a4893ce8c99e94402036d42a8b3748",01/02/08
"clutter-0.6","Clutter graphics library","LGPL","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59"
"clutter-0.8","Clutter graphics library","LGPL","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30"
"clutter-1.0","Clutter graphics library","LGPL","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4"
"clutter-box2d","Clutter Box2D","GPLv2","0.0+git0+2bcf5b836548dc4909e13b8ae7f60dc64c93d559","0.10.0"
"clutter-cairo-0.6","Clutter Cairo","LGPL","0.6.0+git4dc4ef712ddc890d828a1cb65a69a835285af548",0.6
"clutter-cairo-0.8","Clutter Cairo","LGPL","0.8.0+git0+e27e507dedddec3f279a2902ecee0da1011c78eb","0.8.2"
"clutter-gst-0.10","Clutter GStreamer","LGPL","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf"
"clutter-gst-0.6","Clutter GStreamer","LGPL","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd"
"clutter-gst-0.8","Clutter GStreamer","LGPL","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e"
"clutter-gst-1.0","Clutter GStreamer","LGPL","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af"
"clutter-gtk-0.10","Clutter GTK+","LGPL","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992"
"clutter-gtk-0.6","Clutter GTK+","LGPL","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a"
"clutter-gtk-0.8","Clutter GTK+","LGPL","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd"
"clutter-gtk-1.0","Clutter GTK+","LGPL","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8"
"console-tools","Provides tools that enable the set-up and manipulation of the linux console and console-font files.","GPL","0.3.2","0.3.2"
"consolekit","ConsoleKit is a framework for defining and tracking users login sessions and seats.","GPLv2","0.3.0","0.4.1"
"cwautomacros","cwautomacros","GPLv2",20090610,20090610
"devicekit","DeviceKit is a simple system service that a) can enumerate devices; b) emits signals when devices are added removed; c) provides a way to merge device information / quirks onto devices.","GPLv2",3,3
"devicekit-power","Devicekit power","GPLv2",14,"n/a"
"dhcp","DHCP (Dynamic Host Configuration Protocol) is a protocol which allows individual devices on an IP network to get their own network configuration information from a server.  DHCP helps make it easier to administer devices.","ISC","4.1.1-P1","4.1.1-P1"
"dosfstools","DOS FAT Filesystem Utilities","GPL",2.11,2.11
"dtc","The Device Tree Compiler is a tool used to manipulate the Open-Firmware-like device tree used by PowerPC kernels.","GPL","1.2.0+git0+73dca9ae0b9abe6924ba640164ecce9f8df69c5a","None"
"eds-tools","Test applications for EDS","GPL","bzr","None"
"eee-acpi-scripts","eeePC specific ACPI scripts","GPL","0.0+gitdf785afdacedf869b20fb88a793c13b539819270","1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5"
"empathy","Instant messaging program supporting text voice video file transfers and interapplication communication over many different protocols include: AIM MSN Google Talk (Jabber/XMPP) Facebook Yahoo! Salut Gadu-Gadu Groupwise ICQ and QQ.","GPL",02/26/01,"2.31.2"
"epdfview","A minimal PDF viewer based on gtk and poppler","GPLv2","0.1.7","None"
"exmap-console","Console based version of exmap a memory usage analysis tool","GPL","0.4+svnr405","0.4.1"
"fakechroot","Gives a fake root environment which can support chroot","GPL",2.9,"None"
"farsight2","FarSight is an audio/video conferencing framework specifically designed for Instant Messengers.","GPLv2.1","0.0.9","0.0.20"
"fotowall","Fotowall is a creative tool that allows you to layout your photos or pictures in a personal way. You can add pictures then resize move change colors text shadows etc..","GPLv2+",0.9,
"fstests","Various benchmarning tests for X","GPL","0.0+svnr266","0.0+svnr426"
"fuse","With FUSE it is possible to implement a fully functional filesystem in a userspace program","GPL",02/07/02,02/08/04
"galago-daemon","Galago is a desktop presence framework designed to transmit presence information between programs.","GPL","0.5.1","0.5.1"
"gcalctool","gcalctool is a powerful calculator","GPL",05/08/17,"None"
"gccmakedep","create dependencies in makefiles using 'gcc -M'","MIT-X","1.0.2","None"
"genext2fs","A tool to generate an ext2 filesystem as a normal (non-root) user.","GPLv2",01/04/01,01/04/01
"git","The git revision control system used by the Linux kernel developers","GPL","1.7.2.1","None"
"gnome-desktop","GNOME library for reading .desktop files","GPL",02/26/02,"2.31.2"
"gnome-doc-utils","None","GPL LGPL","0.12.0","0.20.1"
"gnome-icon-theme","None","GPL",02/22/00,"2.30.2"
"gnome-settings-daemon","GNOME settings daemon","GPL",02/26/01,"2.31.2"
"gnome-terminal","GNOME Terminal","GPL",02/26/03,"2.31.3"
"gobject-introspection","None","GPLv2+ & LGPLv2+","0.0+gitefa7266bcf78478ce62e8dd778a4f0417bfd4d15","0.9.5"
"gperf","GNU gperf is a perfect hash function generator","GPLv3+","3.0.4","3.0.4"
"groff","groff-a short reference for the GNU roff language ","GPLv2","1.18.1.4","None"
"gssdp","GSSDP implements resource discovery and announcement over SSDP (Simpe Service Discovery Protocol).","LGPL","0.7.1","0.7.2"
"gst-ffmpeg","FFmpeg-based GStreamer plug-in","LGPL","0.10.1","0.10.10"
"gst-fluendo-mp3","Fluendo closed-format mp3 GStreamer plug-in","MIT","0.10.2","0.10.10"
"gst-fluendo-mpegdemux","Fluendo closed-format mpeg video GStreamer plug-in","MIT","0.10.7","0.10.23"
"gst-openmax","None","LGPLv2","0.10.0.2","0.10.0.5"
"gthumb","gThumb is an image viewer and browser for the GNOME Desktop","GPLv2",02/12/00,"None"
"gtk-doc","None","LGPL",1,1.15
"gtk-engines","GTK theme engines","GPL",02/14/00,2.18
"gtk-theme-darkilouche","Dark GTK+ theme","GPL",1,1
"gtk-theme-torturer","Gtk+ Theme Benchmark Program","GPL","0.0.0+git20101029","0.0.0+git0+99962ae39bb5aadb31929b25c58e1a053f9c9545"
"gtkhtml2","A GTK+ HTML rendering library.","GPL","2.11.0+svnr1144",02/11/01
"gupnp","GUPnP is an elegant object-oriented open source framework for creating UPnP  devices and control points written in C using GObject and libsoup. The GUPnP API is intended to be easy to use efficient and flexible. It provides the same set of features as libupnp but shields the developer from most of UPnP's internals.","LGPL","0.13.2","0.13.3"
"gupnp-av","GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP.","LGPL","0.5.2","0.5.5"
"gupnp-tools","Tools for GUPnP","GPL",0.8,0.8
"gypsy","Gypsy is a GPS multiplexing daemon which allows multiple clients to access GPS data from multiple GPS sources concurrently.  Gypsy also hides the details of parsing NMEA from the client applications passing the data as simple values for the clients to use.","GPL",0.6,0.7
"hostap-conf","PCMCIA-cs configuration files for wireless LAN cards based on Intersil's Prism2/2.5/3 chipset","GPL",1,1
"imake","C preprocessor interface to the make utility","MIT-X","1.0.2","1.0.3"
"initramfs-boot","None","MIT",1,1
"initramfs-live-boot","None","MIT",1,1
"initramfs-live-install","None","MIT",1,1
"insserv","None","GPL",01/11/00,01/14/00
"iso-codes","ISO language territory currency script codes and their translations","LGPL",3.3,3.16
"keymaps","Keymaps and initscript to set the keymap on bootup.","GPL",1,1
"kf","Kf is a GTK+ instant messaging client.","GPL","0.5.4.1","n/a"
"libacpi","General purpose shared library for programs gathering ACPI data on Linux. Thermal zones battery infomration fan information and AC states are implemented.","MIT",0.2,0.2
"libapplewm","None","MIT-X","1.0.0",01/04/00
"libart-lgpl","Library of functions for 2D graphics","LGPL",02/03/19,02/03/21
"libatomics-ops","A library for atomic integer operations","MIT",1.2,"7.2alpha4"
"libcanberra","Libcanberra is an implementation of the XDG Sound Theme and Name Specifications for generating event sounds on free desktops.","LGPL",0.1,0.24
"libconvert-asn1-perl","Convert::ASN1 - ASN.1 Encode/Decode library","Artistic|GPL",0.21,0.22
"libdrm-poulsbo","Userspace interface to kernel DRM services","MIT",02/03/00,02/03/00
"libetpan","libetpan is a library for communicating with mail and news servers. It supports the protocols SMTP POP3 IMAP and NNTP.","BSD",0.54,1
"libexif","Library to read the extended image information (EXIF) from JPEG pictures","LGPL","0.6.16","0.6.19"
"libffi","None","MIT","3.0.9","3.0.9"
"libfribidi","Fribidi library for bidirectional text","GPL","0.10.4","0.19.2"
"libfs","X11 Font Services library","MIT-X","1.0.1","1.0.2"
"libgalago","Galago is a desktop presence framework designed to transmit presence information between programs.","LGPL","0.5.2","0.5.2"
"libgnomecanvas","A powerful object-oriented display","GPL",02/20/00,"2.30.1"
"libgnomekbd","GNOME keyboard library","LGPL",02/26/00,"2.31.1"
"libgsf","None","GPL",01/14/05,01/14/18
"libgsmd","GSM libraries and daemons implementing the 07.10 specification","GPL LGPL","0.1+svnr4335","check"
"libgtkstylus","GTK plugin for stylus based systems","LGPL",0.5,0.5
"liblbxutil","XFIXES Extension","MIT-X",01/01/00,01/01/00
"libnice","Libnice is an implementation of the IETF's draft Interactice Connectivity Establishment standard (ICE).","LGPL/MPL","0.0.6","0.0.12"
"liboldx","None","MIT-X","1.0.1","1.0.1"
"libomxil","Bellagio OpenMAX Integration Layer","LGPL","0.3.3","0.9.2.1"
"libopensync","The OpenSync project is an ongoing effort to create a synchronization framework that will be a platform independent general purpose synchronization engine utilizing modular plugins for content formats and different kind of connection types. OpenSync's modularity should allow it to be extended easily to new devices and purposes without radically changing the architecture itself allowing it to support wide variety of devices used today and in the future.","LGPL",0.37,0.39
"libopensync-plugin-evolution2","OpenSync plugin","LGPL",0.36,0.39
"libopensync-plugin-file","OpenSync plugin","LGPL",0.37,0.39
"libopensync-plugin-google-calendar","OpenSync plugin","GPLv2",0.36,"None"
"libopensync-plugin-irmc","OpenSync plugin","GPLv2",0.36,"None"
"libopensync-plugin-syncml","OpenSync plugin","LGPL",0.38,0.39
"libopensync-plugin-vformat","OpenSync plugin","LGPL",0.37,0.39
"libpcap","None","BSD",01/01/01,01/01/01
"libsamplerate0","An audio Sample Rate Conversion library","GPL libsamplerate","0.1.2","0.1.7"
"libsndfile1","An audio format Conversion library","LGPL","1.0.17","1.0.21 "
"libsoup","An HTTP library implementation in C","GPL",02/02/00,"None"
"libsync","LibSync is a GObject-based framework for more convenient use of OpenSync in GLib applications.","LGPL","0.0+svnrINVALID","None"
"libsyncml","Libsyncml is a implementation of the SyncML protocol.","LGPL","0.5.4","0.5.4"
"libtelepathy","Telepathy is a D-Bus framework for unifying real time communication including instant messaging voice calls and video calls.  It abstracts differences between protocols to provide a unified interface for applications.","LGPL","0.3.3","0.3.3"
"libtimedate-perl","TimeDate - parser for absolute times","Artistic|GPL",1.2,1.2
"libunique","None","LGPLv2.1",01/01/06,01/01/06
"libwindowswm","None","MIT-X","1.0.0","1.0.1"
"libxaw","X Athena Widget Set","MIT-X","1.0.5","1.0.7"
"libxevie","X11 EvIE extension library","MIT-X","1.0.2","1.0.2"
"libxkbui","X11 keyboard UI presentation library","GPL","1.0.2","1.0.2"
"libxklavier","Utility library to make using XKB easier","LGPL",3.9,5
"libxml-parser-perl","None","Artistic",2.36,2.36
"libxml-simple-perl","None","Artistic",2.18,"None"
"libxpm","X11 Pixmap library","X-BSD",03/05/07,03/05/08
"libxprintapputil","Xprint job utility client library","MIT-X","1.0.1","1.0.1"
"libxprintutil","Xprint printer utility client library","MIT-X","1.0.1","1.0.1"
"libxscrnsaver","X Screen Saver extension library","GPL",01/02/00,01/02/00
"libxtrap","X11 event trapping extension library","MIT-X","1.0.0","1.0.0"
"linux-firmware","Firmware files for use with Linux kernel","Proprietary","0.0+git85212bf6501da865e570f6b2f6fbd6f212850609","None"
"lndir","create a shadow directory of symbolic links to another directory tree","MIT-X","1.0.1","n/a"
"loudmouth","Loudmouth is a lightweight and easy-to-use C library for programming with the XMPP/Jabber protocol.","LGPL",01/04/00,"None"
"makedepend","create dependencies in makefiles","MIT-X","1.0.2","None"
"man","A set of documentation tools: man apropos and whatis","GPLv2","1.6e","None"
"man-pages","The Linux man-pages project documents the Linux kernel and C library interfaces that are employed by user programs","GPL",3.25,"None"
"matchbox-theme-sato-2","Matchbox window manager Sato themes","CCPL","0.1+svnr94","0.1+svnr164"
"matchbox-themes-extra","Matchbox window manager extra themes","GPL","0.3+svnr1524","0.3+svnr1247"
"matchbox-themes-gtk","Gtk2 theme files to accompany default Matchbox themes","GPL",1,1
"matchbox-wm-2","Matchbox window manager","GPL","0.0+svnr2083","0.0+svnr2106"
"mc","Midnight Commander is an ncurses based file manager.","GPLv2",04/07/03,"None"
"modutils","These utilities are intended to make a Linux modular kernel manageable for all users administrators and distribution maintainers.","GPLv2",02/04/27,02/04/27
"modutils-collateral","modutils configuration files","MIT",1,1
"msynctool","msynctool is a program to synchronize calendars addressbooks and other PIM data between programs on your computer and other computers mobile devices PDAs or cell phones.  It uses the OpenSync plugins when synchronizing data.","GPL",0.37,0.38
"mtd-utils","Tools for managing memory technology devices.","GPLv2",01/03/01,"1.3.1+a67747b7a314e685085b62e8239442ea54959dbc"
"mtools","Mtools is a collection of utilities for accessing MS-DOS disks from Unix without mounting them.","GPL",03/09/09,"4.0.13"
"nasm","General-purpose x86 assembler","simplifiedBSD",2.07,2.07
"network-suspend-scripts","Network suspend/resume scripts","GPLv2",1.1,1
"ofono","oFono is a stack for mobile telephony devices on Linux. oFono supports speaking to telephony devices through specific drivers or with generic AT commands.","GPL",0.17,0.21
"ohm","Open Hardware Manager","LGPL","0.1.2+git-locrevedfe25d49d67884bf004de7ae0724c162bb5e65e","3cb3496846508929b9f2d05683ec93523de7947c"
"openobex","The Openobex project is an open source implementation of the Object Exchange (OBEX) protocol.","GPL",1.5,1.5
"openswan","Openswan is an Open Source implementation of IPsec for the Linux operating system.","GPLv2",02/04/07,02/06/26
"opkg-collateral","opkg configuration files","MIT",1,1
"opkg-utils","OPKG Package Manager Utilities","GPLv2+","0.1.8+svnr4747","0.1.8+svnr4747"
"orinoco-conf","PCMCIA-cs configuration files for Hermes (Orinoco) wireless LAN cards","GPL",1,1
"pm-utils","Simple shell command line toos to suspect and hibernate.","GPL",01/03/00,01/03/00
"polkit","The polkit package is an application-level toolkit for defining and handling the policy that allows unprivileged processes to speak to privileged processes.","LGPLv2+",0.96,0.96
"polkit-gnome","None","LGPLv2+",0.96,0.96
"pong-clock","A clock combined with a game of pong","GPLv2+",1,1
"poppler","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","GPL","0.9.2","0.12.4"
"poppler-data","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","Adobe",0.1,"0.4.2"
"ppp","ppp (Paul's PPP Package) is an open source package which implements the Point-to-Point Protocol (PPP) on Linux and Solaris systems.","BSD & GPLv2+ & LGPLv2+ & public domain",02/04/05,02/04/05
"ppp-dialin","Enables PPP dial-in through a serial connection","MIT",0.1,"check"
"prelink"," The prelink package contains a utility which modifies ELF shared libraries and executables so that far fewer relocations need to be resolved at runtime and thus programs come up faster.","GPLv2","1.0+git0+909470ee441237563d6236c505cb2d02ddc48704","1.0+git0+0x909470ee441237563d6236c505cb2d02ddc48704"
"pulseaudio","Pulseaudio is a sound server for Linux and Unix-like operating systems.","LGPL","0.9.15","0.9.21"
"puzzles","None","MIT","r7593","svn_8956"
"python-gst","Python Gstreamer bindings","LGPL","0.10.18","0.10.18"
"python-imaging","Python Imaging Library","GPL",01/01/07,01/01/07
"python-pycairo","Python Bindings for the Cairo canvas library","LGPLv2.1 & MPLv1.1",01/08/10,01/08/10
"python-pycurl","libcurl python bindings.","LGPLv2.1+ | MIT",07/19/00,07/19/00
"python-pygobject","Python GObject bindings","LGPL",02/21/01,02/21/01
"python-pygtk","Python GTK+ 2.17.x Bindings","LGPL",02/17/00,02/17/00
"python-pyrex","Pyrex is a language specially designed for writing Python extension modules. It's designed to bridge the gap between the nice high-level easy-to-use world of Python and the messy low-level world of C.","GPL","0.9.9","0.9.9"
"python-scons","A Software Construction Tool","GPL",01/03/00,01/03/00
"qemu","open source processor emulator","GPL","0.12.4","0.12.4"
"qmmp","Qmmp (Qt-based Multimedia Player) is an audio-player written with help of Qt library","GPLv2","0.4.1","None"
"run-postinsts","Run postinstall scripts on device using awk","MIT",1,"None"
"subversion","The Subversion (svn) client","Apache BSD",01/05/05,"None"
"syslinux","A multi-purpose linux bootloader","GPLv2+",3.86,3.86
"table","Table Clutter Demo","LGPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
"telepathy-farsight","Glue library for telepathy media signalling and the media streaming capabilities of Farsight2.","LGPLv2","0.0.7","0.0.14"
"telepathy-gabble","Telepathy implementation of the Jabber/XMPP protocols.","LGPL","0.7.8","0.9.11"
"telepathy-glib","Telepathy Framework: GLib-based helper library for connection managers","LGPL","0.9.2","0.11.6"
"telepathy-idle","Telepathy implementation of the Internet Relay Chat protocols.","LGPL","0.1.2","0.1.6"
"telepathy-mission-control","Central control for Telepathy connection managers","LGPL",4.67,05/05/00
"telepathy-python","Telepathy framework - Python package","LGPL","0.15.1","0.15.17"
"tidy","Tidy library","LGPL","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb"
"tiff","This software provides support for the Tag Image File Format (TIFF)","tiff",03/08/02,03/09/02
"ttf-bitstream-vera","The Bitstream Vera fonts - TTF Edition","Bitstream Vera",1.1,1.1
"u-boot-mkimage","U-boot bootloader mkimage tool","GPL",2009.08,2010.03
"ubootchart","A boot profiling tool","GPLv3","0.0+r10","0.0+r12"
"usbinit","Initscript to manage gadget Ethernet","GPL",1,"n/a"
"wbxml2","The WBXML Library (aka libwbxml) contains a library and its associated tools to Parse Encode and Handle WBXML documents. The WBXML format is a binary representation of XML defined by the Wap Forum and used to reduce bandwidth in mobile communications.","GPLv2","0.9.2","0.10.8"
"web","Web is a multi-platform web browsing application.","GPL","0.0+svnr97","None"
"windowswmproto","X protocol headers: windowswmproto","MIT-X","1.0.4","1.0.4"
"wv","Programs for accessing Microsoft Word documents","GPLv2",01/02/00,01/02/01
"x11perf","X11 server performance test program","MIT-X",1.5,01/05/01
"x11vnc","Export your X session on-the-fly via VNC","GPL","0.9.3","0.9.11_dev"
"xbacklight","X Backlight Utility","MIT-X",1.1,01/01/01
"xev","X Event Viewer","MIT","1.0.3","1.0.4"
"xeyes","X application","MIT-X","1.0.1",01/01/00
"xf86-input-synaptics","X.Org X server -- keyboard input driver","MIT-X",01/02/01,01/02/02
"xf86-video-intel","X.Org X server -- Intel i8xx i9xx display driver","MIT-X",02/12/00,02/11/00
"xf86-video-omapfb","X.Org X server -- OMAP display driver","MIT-X","0.1.1+git0+2ae9a57ebc3236cd0aec6534067b91a5c6916a3a","0.1.1+git_db636c8436265c3d86"
"xf86-video-vesa","X.Org X server -- Generic Vesa display driver","MIT-X",02/03/00,02/03/00
"xinetd","Highly configurable modular and secure inetd","xinetd",02/03/14,02/03/14
"xorg-cf-files","X Window System CF files","MIT-X","1.0.3","1.0.3"
"xournal","Xournal is an application for notetaking sketching keeping a journal using a stylus.","GPL",0.2,"0.4.5"
"xproxymanagementprotocol","X protocol headers: xproxymanagementprotocol","MIT-X","1.0.3","1.0.3"
"xrdb","X server resource database utility","xrdb","1.0.5","1.0.6"
"xvinfo","Print out X-Video extension adaptor information","MIT-X","1.0.2",01/01/00
"xz","utils for managing LZMA compressed files","GPLv2+ & GPLv3+ & LGPLv2.1+","4.999.9beta","4.999.9beta"
"yaffs2-utils","Tools for managing 'yaffs2' file systems.","GPLv2","0.0.0+cvs20071107",
"zaurusd","Daemon to handle device specifc features.","GPL","0.0+svnr358","n/a"
"zeroconf","Zeroconf is a program that is used to claim IPv4 link-local addresses. IPv4 link-local addresses are useful when setting up ad-hoc networking between devices without the involvement of a either a DHCP server or network administrator. These addresses are allocated from the 169.254.0.0/16 address range and are normally attached to each Ethernet device in your computer. Addresses are assigned randomly by each host and in case of collision both hosts (are supposed to) renumber.","GPL",0.9,0.9
"zile","Zile is a very small emacs-like editor.","GPL","1.7+2.0beta6","None"

--------------080401080009030406000503--
