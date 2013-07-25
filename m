Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9DD3E01363;
	Thu, 25 Jul 2013 09:57:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2013 09:57:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,744,1367996400"; d="scan'208";a="370963328"
Received: from unknown (HELO [10.255.13.176]) ([10.255.13.176])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2013 09:57:58 -0700
Message-ID: <1374771477.6515.31.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Date: Thu, 25 Jul 2013 11:57:57 -0500
In-Reply-To: <OF4EE7C2B2.6E6969A5-ONC1257BB3.002ECED6-C1257BB3.00316E7B@retarus.de>
References: <OF4EE7C2B2.6E6969A5-ONC1257BB3.002ECED6-C1257BB3.00316E7B@retarus.de>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org,
	genivi-meta-ivi@lists.genivi.org
Subject: Re: [meta-intel] Boot failure when using meta-intel and meta-ivi
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
X-List-Received-Date: Thu, 25 Jul 2013 16:57:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2013-07-25 at 11:00 +0200, Felix01 Fischer wrote:
> Hi, 
> I haven written regarding this issues before. So maybe it sounds
> familiar :-)
> 
> I'm unable to produce a booting image when combining a machine from
> the meta-intel layer with "DISTRO ?= "poky-ivi-systemd" from the
> meta-ivi layer.
> You will find a photograph of my screen attached, but I will describe
> the error anyway. 
> 
> 
> Which error do I get? 
> 
> When I'm booting my image the machine fails to boot. The relevant
> information (IMHO) are the lines:
>        /init: line 98: mount: not found 
>         /init: line 98: mount: not found 
>         /init: line 98: mount: not found 
> and 
>         cat: can't open '/proc/cmdline': No such file or directory 
>         Waiting for removable media... 
> 
> 
> When does the error occur?
> 
> Every image built with the local.conf options 
> MACHINE ?= "crownbay"        OR        MACHINE ?= "chiefriver" 
> AND 
> DISTRO ?= "poky-ivi-systemd" 
> 
> failed to boot. 
> 
I guess more information is needed to even build this.  Using the poky
commit id in the README, using either meta-intel/master or
meta-intel/dylan gives errors like this:

trz@elmorro:/usr/local/dev/yocto/ivi-test/build$ bitbake foton-image
Pseudo is not present but is required, building this first before the
main build
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 1162 entries from dependency cache.
ERROR: No recipes available for:
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-extended/common-api/dbus_1.6.10.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/dbus/dbus_1.6.10.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-connectivity/connman/connman_1.15.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-graphics/xorg-xserver/xserver-xorg_1.14.0.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/busybox/busybox_1.21.1.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/eglibc/eglibc_2.18.bbappend
  /usr/local/dev/yocto/ivi-test/meta-intel/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-qt/qt4/qt4-embedded_4.8.5.bbappend
  /usr/local/dev/yocto/ivi-test/meta-intel/common/recipes-graphics/mesa/mesa_9.0.2.bbappend
  /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/netbase/netbase_5.1.bbappend
ERROR: Command execution failed: Exited with 1

So, please supply the relevant commits for all layers used..

> I have tried builds with meta-ivi excalibur (not 100% sure) and foton
> releases and the master branch aswell 
> Similar applies to poky and meta-intel. I tried the danny and dylan
> releases and the master branch. 
> 
> The boot happens from an USB stick on which I dd'ed
> "foton-image-$MACHINE-$BUILDDATE.hddimg" 
> 
> All other builds are booting fine.
> 
> Addind "EXTRA_IMAGE_FEATURE = "udev-extraconf" did not change this
> behauviour. 
> 
> Building only with meta-intel OR meta-ivi results in a booting image.
> 
Not sure what this means - if using only meta-ivi, which machine are you
building?

Tom


> So, any ideas?
> 
> regards,
> 
> Viele Grüße
> 
> Felix Fischer
> 
> Studentischer Mitarbeiter (VC-D1)
> Vehicle Cockpit Electronics Devices
> 
> IAV GmbH
> Carnotstr. 1
> 10587 BERLIN
> GERMANY
> 
> Phone: +49 30 39978-9540
> Fax:      +49 30 39978-9411
> E-Mail:  <mailto:felix01.fischer@iav.de>
> Internet: http://www.iav.com
> 
> Sitz/Registered Office: Berlin, 
> Registergericht/Registration Court: Amtsgericht Charlottenburg, 
> Registernummer/Company Registration Number: HRB 21 280, 
> Geschäftsführer/Managing Directors: Kurt Blumenröder, Michael
> Schubert, Dr. Rüdiger Goyk
> _______________________________________________
> meta-intel mailing list
> meta-intel@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-intel



