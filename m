Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F0304C80132
	for <yocto@yoctoproject.org>; Sat,  6 Nov 2010 16:57:13 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Nov 2010 14:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,308,1286175600"; 
	d="csv'?scan'208";a="345467414"
Received: from unknown (HELO [10.255.12.220]) ([10.255.12.220])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2010 14:57:12 -0700
Message-ID: <4CD5CF37.3030903@linux.intel.com>
Date: Sat, 06 Nov 2010 14:57:11 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CCBDAF8.70209@linux.intel.com> <4CD06441.5060407@linux.intel.com>
In-Reply-To: <4CD06441.5060407@linux.intel.com>
Subject: Re: World Package List
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Nov 2010 21:57:14 -0000
X-Groupsio-MsgNum: 200
Content-Type: multipart/mixed; boundary="------------000707000106020606030704"

--------------000707000106020606030704
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Please find enclosed the annotated list of recipes that are not 
currently built as part of any task or image. There are a some basic 
options that could occur with these recipes, do nothing, move the recipe 
to a layer, or add the recipe to an existing image. The notes indicate a 
number of different options for the recipes that we chose.

The major changes to recipes are to moving them  to meta-extras, 
meta-demoapps or meta-m2. Meta-extras is a location that will ultimately 
be deprecated, meta-demoapps is a staging area for further review and 
items that are more vertical oriented recipes.

Additional notes such as LSB or gmae SDK would move into those tasks or 
images as appropriate. There are additional notes which will be used for 
future discussion.

Please review the attached list and provide feedback.

Thanks

     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System



On 11/02/2010 12:19 PM, Saul Wold wrote:
>
> I have updated the spreadsheet and removed items that should not have
> been included (-natives and other tools). I have also added annotation
> to the first column to show some potential adjustments and existing
> inter-dependencies within the list.
>
> Again, please review the remaining items and provide any input.
>
> Thanks
>
> Sau!
>
>
>
> On 10/30/2010 01:44 AM, Saul G. Wold wrote:
>>
>> Folks,
>>
>> Please find attached a list of packages that are in the world build but
>> not currently contained in any tasks or images. This is an early warning
>> that we are putting some of these up for consideration for relocation.
>>
>> As we work through this determination process, we will document it to
>> use as in the future for package relocation. There maybe recipes in this
>> list that will move into some specific tasks or be moved to an external
>> layer.
>>
>> Please review this spreadsheet and provide any input for these packages.
>>
>> Thanks
>> Sau!
>>
>> Saul Wold
>> Yocto Component Wrangler @ Intel
>> Yocto Project / Poky Build System
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

--------------000707000106020606030704
Content-Type: text/csv;
 name="annotated_not_in_world.csv"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="annotated_not_in_world.csv"

"Notes","Recipe Name","Description","License","Current Version","Upstream Version"
"add to task-poky-tools-testapps","fstests","Various benchmarning tests for X","GPL","0.0+svnr266","0.0+svnr426"
"add to task-poky-tools-testapps","x11perf","X11 server performance test program","MIT-X",1.5,01/05/01
"Bluez Tools","bluez-hcidump","The hcidump tool reads raw HCI data coming from and going to a Bluetooth device and displays the commands events and data in a human-readable form.","GPL",1.42,1.42
"BSP","grub","GRUB is a GPLed bootloader intended to unify bootloading across x86 operating systems. In addition to loading the Linux kernel it implements the Multiboot standard which allows for flexible loading of multiple boot images.","GPLv2+",0.97,0.97
"BSP","xf86-input-synaptics","X.Org X server -- keyboard input driver","MIT-X",01/02/01,01/02/02
"BSP","xf86-video-intel","X.Org X server -- Intel i8xx i9xx display driver","MIT-X",02/12/00,02/11/00
"BSP","xf86-video-omapfb","X.Org X server -- OMAP display driver","MIT-X","0.1.1+git0+2ae9a57ebc3236cd0aec6534067b91a5c6916a3a","0.1.1+git_db636c8436265c3d86"
"BSP","xf86-video-vesa","X.Org X server -- Generic Vesa display driver","MIT-X",02/03/00,02/03/00
"BSP","zaurusd","Daemon to handle device specifc features.","GPL","0.0+svnr358","n/a"
"BSP / Xorg tool","xvinfo","Print out X-Video extension adaptor information","MIT-X","1.0.2",01/01/00
"BSP for acpi","acpid","A daemon for delivering ACPI events.","GPL","1.0.6","1.0.10"
"BSP for acpi","libacpi","General purpose shared library for programs gathering ACPI data on Linux. Thermal zones battery infomration fan information and AC states are implemented.","MIT",0.2,0.2
"BSP for atom-pc","eee-acpi-scripts","eeePC specific ACPI scripts","GPL","0.0+gitdf785afdacedf869b20fb88a793c13b539819270","1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5"
"BSP for eee-acpi-utils","pm-utils","Simple shell command line toos to suspect and hibernate.","GPL",01/03/00,01/03/00
"BSP for igep","linux-firmware","Firmware files for use with Linux kernel","Proprietary","0.0+git85212bf6501da865e570f6b2f6fbd6f212850609","None"
"BSP for keyboards","console-tools","Provides tools that enable the set-up and manipulation of the linux console and console-font files.","GPL","0.3.2","0.3.2"
"BSP for keyboards","keymaps","Keymaps and initscript to set the keymap on bootup.","GPL",1,1
"BSP for phone","libgsmd","GSM libraries and daemons implementing the 07.10 specification","GPL LGPL","0.1+svnr4335","check"
"BSP for wifi","orinoco-conf","PCMCIA-cs configuration files for Hermes (Orinoco) wireless LAN cards","GPL",1,1
"Clutter","clutter","Clutter graphics library","LGPL","1.0.0+git0+e957e277b8a4893ce8c99e94402036d42a8b3748",01/02/08
"Clutter","clutter-1.0","Clutter graphics library","LGPL","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4"
"Clutter","clutter-box2d","Clutter Box2D","GPLv2","0.0+git0+2bcf5b836548dc4909e13b8ae7f60dc64c93d559","0.10.0"
"Clutter","clutter-gst-1.0","Clutter GStreamer","LGPL","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af","0.11.0+git0+d48c6fc67b48304f90e51b520631c1ecc10410af"
"Clutter","clutter-gtk-1.0","Clutter GTK+","LGPL","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8","0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8"
"Clutter","mutter","Metacity is the boring window manager for the adult in you. Mutter is metacity + clutter.","GPLv2","2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842","2.29.1_0.4"
"Clutter","tidy","Tidy library","LGPL","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb"
"Distro Feature","ppp","ppp (Paul's PPP Package) is an open source package which implements the Point-to-Point Protocol (PPP) on Linux and Solaris systems.","BSD & GPLv2+ & LGPLv2+ & public domain",02/04/05,02/04/05
"Distro Feature","ppp-dialin","Enables PPP dial-in through a serial connection","MIT",0.1,"check"
"Distro Feature","zeroconf","Zeroconf is a program that is used to claim IPv4 link-local addresses. IPv4 link-local addresses are useful when setting up ad-hoc networking between devices without the involvement of a either a DHCP server or network administrator. These addresses are allocated from the 169.254.0.0/16 address range and are normally attached to each Ethernet device in your computer. Addresses are assigned randomly by each host and in case of collision both hosts (are supposed to) renumber.","GPL",0.9,0.9
"Distro Feature – ppp","libpcap","None","BSD",01/01/01,01/01/01
"Docs project","gnome-doc-utils","None","GPL LGPL","0.12.0","0.20.1"
"dpkg","run-postinsts","Run postinstall scripts on device using awk","MIT",1,"None"
"Extended","lndir","create a shadow directory of symbolic links to another directory tree","MIT-X","1.0.1","n/a"
"Extended","mc","Midnight Commander is an ncurses based file manager.","GPLv2",04/07/03,"None"
"gmae sdk","galago-daemon","Galago is a desktop presence framework designed to transmit presence information between programs.","GPL","0.5.1","0.5.1"
"gmae sdk","gnome-desktop","GNOME library for reading .desktop files","GPL",02/26/02,"2.31.2"
"gmae sdk","gssdp","GSSDP implements resource discovery and announcement over SSDP (Simpe Service Discovery Protocol).","LGPL","0.7.1","0.7.2"
"gmae sdk","gupnp","GUPnP is an elegant object-oriented open source framework for creating UPnP  devices and control points written in C using GObject and libsoup. The GUPnP API is intended to be easy to use efficient and flexible. It provides the same set of features as libupnp but shields the developer from most of UPnP's internals.","LGPL","0.13.2","0.13.3"
"gmae sdk","gupnp-av","GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP.","LGPL","0.5.2","0.5.5"
"gmae sdk","gupnp-tools","Tools for GUPnP","GPL",0.8,0.8
"gmae sdk","gypsy","Gypsy is a GPS multiplexing daemon which allows multiple clients to access GPS data from multiple GPS sources concurrently.  Gypsy also hides the details of parsing NMEA from the client applications passing the data as simple values for the clients to use.","GPL",0.6,0.7
"gmae sdk","libart-lgpl","Library of functions for 2D graphics","LGPL",02/03/19,02/03/21
"gmae sdk","libgalago","Galago is a desktop presence framework designed to transmit presence information between programs.","LGPL","0.5.2","0.5.2"
"gmae sdk","libtelepathy","Telepathy is a D-Bus framework for unifying real time communication including instant messaging voice calls and video calls.  It abstracts differences between protocols to provide a unified interface for applications.","LGPL","0.3.3","0.3.3"
"gmae sdk","pulseaudio","Pulseaudio is a sound server for Linux and Unix-like operating systems.","LGPL","0.9.15","0.9.21"
"gmae sdk","telepathy-farsight","Glue library for telepathy media signalling and the media streaming capabilities of Farsight2.","LGPLv2","0.0.7","0.0.14"
"gmae sdk","telepathy-gabble","Telepathy implementation of the Jabber/XMPP protocols.","LGPL","0.7.8","0.9.11"
"gmae sdk","telepathy-glib","Telepathy Framework: GLib-based helper library for connection managers","LGPL","0.9.2","0.11.6"
"gmae sdk","telepathy-idle","Telepathy implementation of the Internet Relay Chat protocols.","LGPL","0.1.2","0.1.6"
"gmae sdk","telepathy-mission-control","Central control for Telepathy connection managers","LGPL",4.67,05/05/00
"gmae sdk","telepathy-python","Telepathy framework - Python package","LGPL","0.15.1","0.15.17"
"Gstreamer – check deps","libomxil","Bellagio OpenMAX Integration Layer","LGPL","0.3.3","0.9.2.1"
"gthumb","libunique","None","LGPLv2.1",01/01/06,01/01/06
"gthumb","tiff","This software provides support for the Tag Image File Format (TIFF)","tiff",03/08/02,03/09/02
"gthumb","ttf-bitstream-vera","The Bitstream Vera fonts - TTF Edition","Bitstream Vera",1.1,1.1
"Kernel update-modules","modutils","These utilities are intended to make a Linux modular kernel manageable for all users administrators and distribution maintainers.","GPLv2",02/04/27,02/04/27
"Kernel update-modules","modutils-collateral","modutils configuration files","MIT",1,1
"LSB","dhcp","DHCP (Dynamic Host Configuration Protocol) is a protocol which allows individual devices on an IP network to get their own network configuration information from a server.  DHCP helps make it easier to administer devices.","ISC","4.1.1-P1","4.1.1-P1"
"LSB","groff","groff-a short reference for the GNU roff language ","GPLv2","1.18.1.4","None"
"LSB","man","A set of documentation tools: man apropos and whatis","GPLv2","1.6e","None"
"LSB","man-pages","The Linux man-pages project documents the Linux kernel and C library interfaces that are employed by user programs","GPL",3.25,"None"
"LSB","xinetd","Highly configurable modular and secure inetd","xinetd",02/03/14,02/03/14
"Meta-demoapps","abiword","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
"Meta-demoapps","abiword-embedded","AbiWord is free word processing program similar to Microsoft(r) Word","GPLv2",02/05/02,"None"
"Meta-demoapps","claws-mail","Mail user agent","GPL",02/09/01,03/07/06
"Meta-demoapps","claws-plugin-gtkhtml2-viewer","Mail user agent plugins","GPL",0.15,0.27
"Meta-demoapps","claws-plugin-maildir","Mail user agent plugins","GPL","0.24.4","0.24.4"
"Meta-demoapps","claws-plugin-mailmbox","Mail user agent plugins","GPL",1.13,01/14/04
"Meta-demoapps","claws-plugin-rssyl","Mail user agent plugins","GPL",0.13,0.27
"Meta-demoapps","clipboard-manager","clipboard manager","GPL","0.6.4","0.6.8"
"Meta-demoapps","empathy","Instant messaging program supporting text voice video file transfers and interapplication communication over many different protocols include: AIM MSN Google Talk (Jabber/XMPP) Facebook Yahoo! Salut Gadu-Gadu Groupwise ICQ and QQ.","GPL",02/26/01,"2.31.2"
"Meta-demoapps","epdfview","A minimal PDF viewer based on gtk and poppler","GPLv2","0.1.7","None"
"Meta-demoapps","farsight2","FarSight is an audio/video conferencing framework specifically designed for Instant Messengers.","GPLv2.1","0.0.9","0.0.20"
"Meta-demoapps","fuse","With FUSE it is possible to implement a fully functional filesystem in a userspace program","GPL",02/07/02,02/08/04
"Meta-demoapps","gcalctool","gcalctool is a powerful calculator","GPL",05/08/17,"None"
"Meta-demoapps","gnome-icon-theme","None","GPL",02/22/00,"2.30.2"
"Meta-demoapps","gnome-settings-daemon","GNOME settings daemon","GPL",02/26/01,"2.31.2"
"Meta-demoapps","gnome-terminal","GNOME Terminal","GPL",02/26/03,"2.31.3"
"Meta-demoapps","iso-codes","ISO language territory currency script codes and their translations","LGPL",3.3,3.16
"Meta-demoapps","kf","Kf is a GTK+ instant messaging client.","GPL","0.5.4.1","n/a"
"Meta-demoapps","libcanberra","Libcanberra is an implementation of the XDG Sound Theme and Name Specifications for generating event sounds on free desktops.","LGPL",0.1,0.24
"Meta-demoapps","libetpan","libetpan is a library for communicating with mail and news servers. It supports the protocols SMTP POP3 IMAP and NNTP.","BSD",0.54,1
"Meta-demoapps","libfribidi","Fribidi library for bidirectional text","GPL","0.10.4","0.19.2"
"Meta-demoapps","libgnomecanvas","A powerful object-oriented display","GPL",02/20/00,"2.30.1"
"Meta-demoapps","libgnomekbd","GNOME keyboard library","LGPL",02/26/00,"2.31.1"
"Meta-demoapps","libgsf","None","GPL",01/14/05,01/14/18
"Meta-demoapps","libgtkstylus","GTK plugin for stylus based systems","LGPL",0.5,0.5
"Meta-demoapps","liblbxutil","XFIXES Extension","MIT-X",01/01/00,01/01/00
"Meta-demoapps","libnice","Libnice is an implementation of the IETF's draft Interactice Connectivity Establishment standard (ICE).","LGPL/MPL","0.0.6","0.0.12"
"Meta-demoapps","libopensync","The OpenSync project is an ongoing effort to create a synchronization framework that will be a platform independent general purpose synchronization engine utilizing modular plugins for content formats and different kind of connection types. OpenSync's modularity should allow it to be extended easily to new devices and purposes without radically changing the architecture itself allowing it to support wide variety of devices used today and in the future.","LGPL",0.37,0.39
"Meta-demoapps","libopensync-plugin-evolution2","OpenSync plugin","LGPL",0.36,0.39
"Meta-demoapps","libopensync-plugin-file","OpenSync plugin","LGPL",0.37,0.39
"Meta-demoapps","libopensync-plugin-google-calendar","OpenSync plugin","GPLv2",0.36,"None"
"Meta-demoapps","libopensync-plugin-irmc","OpenSync plugin","GPLv2",0.36,"None"
"Meta-demoapps","libopensync-plugin-syncml","OpenSync plugin","LGPL",0.38,0.39
"Meta-demoapps","libopensync-plugin-vformat","OpenSync plugin","LGPL",0.37,0.39
"Meta-demoapps","libsync","LibSync is a GObject-based framework for more convenient use of OpenSync in GLib applications.","LGPL","0.0+svnrINVALID","None"
"Meta-demoapps","libsyncml","Libsyncml is a implementation of the SyncML protocol.","LGPL","0.5.4","0.5.4"
"Meta-demoapps","libxaw","X Athena Widget Set","MIT-X","1.0.5","1.0.7"
"Meta-demoapps","libxevie","X11 EvIE extension library","MIT-X","1.0.2","1.0.2"
"Meta-demoapps","libxkbui","X11 keyboard UI presentation library","GPL","1.0.2","1.0.2"
"Meta-demoapps","libxklavier","Utility library to make using XKB easier","LGPL",3.9,5
"Meta-demoapps","libxscrnsaver","X Screen Saver extension library","GPL",01/02/00,01/02/00
"Meta-demoapps","loudmouth","Loudmouth is a lightweight and easy-to-use C library for programming with the XMPP/Jabber protocol.","LGPL",01/04/00,"None"
"Meta-demoapps","matchbox-themes-extra","Matchbox window manager extra themes","GPL","0.3+svnr1524","0.3+svnr1247"
"Meta-demoapps","matchbox-themes-gtk","Gtk2 theme files to accompany default Matchbox themes","GPL",1,1
"Meta-demoapps","msynctool","msynctool is a program to synchronize calendars addressbooks and other PIM data between programs on your computer and other computers mobile devices PDAs or cell phones.  It uses the OpenSync plugins when synchronizing data.","GPL",0.37,0.38
"Meta-demoapps","ofono","oFono is a stack for mobile telephony devices on Linux. oFono supports speaking to telephony devices through specific drivers or with generic AT commands.","GPL",0.17,0.21
"Meta-demoapps","openobex","The Openobex project is an open source implementation of the Object Exchange (OBEX) protocol.","GPL",1.5,1.5
"Meta-demoapps","openswan","Openswan is an Open Source implementation of IPsec for the Linux operating system.","GPLv2",02/04/07,02/06/26
"Meta-demoapps","pong-clock","A clock combined with a game of pong","GPLv2+",1,1
"Meta-demoapps","poppler","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","GPL","0.9.2","0.12.4"
"Meta-demoapps","poppler-data","Poppler is a PDF rendering library based on the xpdf-3.0 code base.","Adobe",0.1,"0.4.2"
"Meta-demoapps","puzzles","None","MIT","r7593","svn_8956"
"Meta-demoapps","table","Table Clutter Demo","LGPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
"Meta-demoapps","wbxml2","The WBXML Library (aka libwbxml) contains a library and its associated tools to Parse Encode and Handle WBXML documents. The WBXML format is a binary representation of XML defined by the Wap Forum and used to reduce bandwidth in mobile communications.","GPLv2","0.9.2","0.10.8"
"Meta-demoapps","wv","Programs for accessing Microsoft Word documents","GPLv2",01/02/00,01/02/01
"Meta-demoapps","xbacklight","X Backlight Utility","MIT-X",1.1,01/01/01
"Meta-demoapps","xev","X Event Viewer","MIT","1.0.3","1.0.4"
"Meta-demoapps","xeyes","X application","MIT-X","1.0.1",01/01/00
"Meta-demoapps","xournal","Xournal is an application for notetaking sketching keeping a journal using a stylus.","GPL",0.2,"0.4.5"
"Meta-demoapps","xproxymanagementprotocol","X protocol headers: xproxymanagementprotocol","MIT-X","1.0.3","1.0.3"
"Meta-demoapps","xrdb","X server resource database utility","xrdb","1.0.5","1.0.6"
"Meta-extras","aaina","Aaina Clutter Demo","GPL","0.3.0+git0+4b267533ce16656cba4104fc39dc12709c1bdddf","None"
"Meta-extras","alsa-oss","Alsa OSS Compatibility Package","GPL","1.0.17","1.0.17"
"Meta-extras","alsa-tools","Alsa Tools","GPL","1.0.20","None"
"Meta-extras","applewmproto","X protocol headers: applewmproto","MIT-X",01/04/01,01/04/01
"Meta-extras","exmap-console","Console based version of exmap a memory usage analysis tool","GPL","0.4+svnr405","0.4.1"
"Meta-extras","imake","C preprocessor interface to the make utility","MIT-X","1.0.2","1.0.3"
"Meta-extras","libapplewm","None","MIT-X","1.0.0",01/04/00
"Meta-extras","libfs","X11 Font Services library","MIT-X","1.0.1","1.0.2"
"Meta-extras","liboldx","None","MIT-X","1.0.1","1.0.1"
"Meta-extras","libwindowswm","None","MIT-X","1.0.0","1.0.1"
"Meta-extras","network-suspend-scripts","Network suspend/resume scripts","GPLv2",1.1,1
"Meta-extras","ohm","Open Hardware Manager","LGPL","0.1.2+git-locrevedfe25d49d67884bf004de7ae0724c162bb5e65e","3cb3496846508929b9f2d05683ec93523de7947c"
"Meta-extras","windowswmproto","X protocol headers: windowswmproto","MIT-X","1.0.4","1.0.4"
"Meta-extras","xorg-cf-files","X Window System CF files","MIT-X","1.0.3","1.0.3"
"Meta-extras","zile","Zile is a very small emacs-like editor.","GPL","1.7+2.0beta6","None"
"Meta-m2","devicekit","DeviceKit is a simple system service that a) can enumerate devices; b) emits signals when devices are added removed; c) provides a way to merge device information / quirks onto devices.","GPLv2",3,3
"Meta-m2","devicekit-power","Devicekit power","GPLv2",14,"n/a"
"Meta-m2","libexif","Library to read the extended image information (EXIF) from JPEG pictures","LGPL","0.6.16","0.6.19"
"Meta-m2","polkit","The polkit package is an application-level toolkit for defining and handling the policy that allows unprivileged processes to speak to privileged processes.","LGPLv2+",0.96,0.96
"Meta-m2","polkit-gnome","None","LGPLv2+",0.96,0.96
"Old Version – Remove","clutter-0.6","Clutter graphics library","LGPL","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59","0.6.0+gitr0+62e852a51e29dd42c84d6b34fe23b80b2542be59"
"Old Version – Remove","clutter-0.8","Clutter graphics library","LGPL","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30","0.8.0+gitr3ba37ff115ed3fbe6c94195775941091a3ac2b30"
"Old Version – Remove","clutter-cairo-0.6","Clutter Cairo","LGPL","0.6.0+git4dc4ef712ddc890d828a1cb65a69a835285af548",0.6
"Old Version – Remove","clutter-cairo-0.8","Clutter Cairo","LGPL","0.8.0+git0+e27e507dedddec3f279a2902ecee0da1011c78eb","0.8.2"
"Old Version – Remove","clutter-gst-0.10","Clutter GStreamer","LGPL","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf","0.10.0+git0+8a087fabc888a6a4a939760c392109dbb610adbf"
"Old Version – Remove","clutter-gst-0.6","Clutter GStreamer","LGPL","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd","0.6.0+git0+1c3dc539057dbcd6dd75f2cb5b4ba39b741892bd"
"Old Version – Remove","clutter-gst-0.8","Clutter GStreamer","LGPL","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e","0.8.0+git0+7a60a435fb0930d911e26158928ab53bda090f3e"
"Old Version – Remove","clutter-gtk-0.10","Clutter GTK+","LGPL","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992","0.10.3+git0+b92329c4c1288019e2dea6567e2b5e98eb0a9992"
"Old Version – Remove","clutter-gtk-0.6","Clutter GTK+","LGPL","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a","0.6.0+git0+2ba362a1a223c2b28541030a80aa11191615340a"
"Old Version – Remove","clutter-gtk-0.8","Clutter GTK+","LGPL","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd","0.8.0+git0+7d3c3230376e731c06c21afa9d8c1d44dbea27cd"
"PulseAudio","consolekit","ConsoleKit is a framework for defining and tracking users login sessions and seats.","GPLv2","0.3.0","0.4.1"
"PulseAudio","libsamplerate0","An audio Sample Rate Conversion library","GPL libsamplerate","0.1.2","0.1.7"
"PulseAudio","libsndfile1","An audio format Conversion library","LGPL","1.0.17","1.0.21 "
"PulseAudio Dep","libatomics-ops","A library for atomic integer operations","MIT",1.2,"7.2alpha4"
"Qt Demo","fotowall","Fotowall is a creative tool that allows you to layout your photos or pictures in a personal way. You can add pictures then resize move change colors text shadows etc..","GPLv2+",0.9,
"Qt Demo","qmmp","Qmmp (Qt-based Multimedia Player) is an audio-player written with help of Qt library","GPLv2","0.4.1","None"
"Qt Demo","taglib","TagLib is a library for reading and editing the meta-data of several popular audio formats","LGPL",01/06/01,01/06/03
"sato","gthumb","gThumb is an image viewer and browser for the GNOME Desktop","GPLv2",02/12/00,"None"
"sato","x11vnc","Export your X session on-the-fly via VNC","GPL","0.9.3","0.9.11_dev"
"Subversion – check deps","apr","Apache Portable Runtime (APR) library","Apache License_ Version 2.0",01/03/03,01/04/02
"subversion – check deps","apr-util","Apache Portable Runtime (APR) companion library","Apache License_ Version 2.0",01/03/04,01/03/09
"Webkit - check deps","web","Web is a multi-platform web browsing application.","GPL","0.0+svnr97","None"
"Webkit – check deps","libsoup","An HTTP library implementation in C","GPL",02/02/00,"None"
"zauras?","hostap-conf","PCMCIA-cs configuration files for wireless LAN cards based on Intersil's Prism2/2.5/3 chipset","GPL",1,1

--------------000707000106020606030704--
