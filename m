Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDE66E01422
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:38 -0700 (PDT)
Received: by mail-pz0-f48.google.com with SMTP id z8so2377972dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=fkhQbVpNKpuJsVqjYcwZH7D7BofelMPuoeUXoDtIRiY=;
	b=GPTtfHXowAbes7bSTOKzvXXccI843LhyCcqvNbGVGsbDW8c0G0I7VwvHgi8CxBE2sb
	ljheCCDRqIqYf0c31IOffs8ywdQ46AsCsRonXZGuxdPSmUEz6K08xNogs5P9NNxtYmZz
	WH0y8ijA74ELbID3ltDjZOsxGXv4I8QP7Sgb4yOBDtkJBnkGGZJ2y8nUPBD80oo495Pn
	Z60YLIgavzzJEFr9WqFCTegOxNyLE3xRif7BOUQlC4YLpQ+42cJPrcYL8ejReAtLORBX
	U4cdQIrAysF+FFQJ+eYWIv5p16Jlnf0GGIZH+uw+68g1Z9EpjIKTp+O8XOQt6V3Gedm2
	5gFA==
Received: by 10.68.136.69 with SMTP id py5mr1539733pbb.115.1337983838851;
	Fri, 25 May 2012 15:10:38 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id uz7sm10332392pbc.35.2012.05.25.15.10.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:10:38 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 25 May 2012 15:10:24 -0700
Message-Id: <dcc1ceb2c89e548bb801f4e3da9056015bd4bf60.1337983732.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
References: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <caa0042ec0042bb4d4f48ac2a4722af9e52469c1.1337983732.git.dvhart@linux.intel.com>
References: <caa0042ec0042bb4d4f48ac2a4722af9e52469c1.1337983732.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQk7Niz+OWGtOXL1cWTwtqJmo+YX2l4a+Tq5ncd1Z+wsLoXV0a2xPgvqj6GWml9tPkFo6kzV
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] fri2: README: Add device details and known issues
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
X-List-Received-Date: Fri, 25 May 2012 22:10:39 -0000

Expand the README to provide more details about the device as well as how to
configure and interract with it. List known issues.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 meta-fri2/README |  190 ++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 files changed, 183 insertions(+), 7 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index df2fa87..ac7a04d 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -2,10 +2,15 @@ This README file contains information on building the meta-fri2 BSP
 layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The Fish River Island II platform consists of the Intel Atom Z6xx
-processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
-+ Topcliff), along with a varied assortment of communications options
-and various other machine-to-machine (m2m) capabilities.
+The Fish River Island II BSP supports the Kontron M2M Smart Services
+Developer Kit, as described here:
+
+http://us.kontron.com/products/systems+and+platforms/m2m/m2m+smart+services+developer+kit.html
+
+The platform consists of the Intel Atom E640T processor plus the Intel
+EG20T Platform Controller Hub (Tunnel Creek + Topcliff), along with a
+variety of communications options and other machine-to-machine (m2m)
+capabilities.
 
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
@@ -44,6 +49,21 @@ Table of Contents
 
   I. Building the meta-fri2 BSP layer
  II. Booting the images in /binary
+III. Device Notes
+     a. Serial Port
+     b. HDMI
+     c. Power Reset
+     d. Accelerometer
+     e. GPIO
+     f. MMC
+     g. 802.11
+     h. 802.15.4
+     i. Audio
+     j. Optional devices
+ IV. Known Issues
+     a. EFI boot fails
+     b. Client USB is disabled
+     c. Audio over secondary HDMI port only
 
 
 I. Building the meta-fri2 BSP layer
@@ -55,9 +75,8 @@ Package (BSP) Downloads' page of the Yocto Project website.
 
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build an fri2 image
-by adding the location of the meta-fri2 layer to bblayers.conf, along
-with the meta-intel layer itself (to access common metadata shared
-between BSPs) e.g.:
+by adding the location of the meta-intel and meta-fri2 layers to
+bblayers.conf, e.g.:
 
   yocto/meta-intel \
   yocto/meta-intel/meta-fri2 \
@@ -139,3 +158,160 @@ the syslinux boot: prompt, or the boot: prompt contains strange
 characters), try doing this first:
 
 # dd if=/dev/zero of=/dev/sdf bs=1M count=512
+
+
+III. Device Notes
+================================
+a. Serial Port
+--------------
+The FRI2 has an optional serial daughter card providing a serial
+console via the micro-USB port on the top of the device adjascent the
+SIM card slot.
+
+The UART from the EG20T is connected to a TI UART-to-USB device
+(TUSB3410) which appears as a serial port on the host computer. From a
+Linux host, load the driver with the following options:
+
+# modprobe ti_usb_3410_5052 vendor_3410=0x0451 product_3410=0x5053
+
+In future versions of the Linux kernel (3.4 and later), the
+vendor and product codes are detected automatically.
+
+When you power on your FRI2, your host will discover a serial device
+and name it /dev/ttyUSB0 (or similar). You can communicate with this
+device at 115200 8N1 using your preferred terminal emulator.
+
+In order to redirect the BIOS console to the serial port, you may need
+to set up console redirection in the BIOS menu. The serial port is
+referred to as COM2 in the BIOS.
+
+  Advanced
+    Serial Port Console Redirection
+      COM2
+      Console Redirection [Enabled]
+      Console Redirection Settings
+        Terminal Type         [ANSI]
+        Bits per second       [115200]
+        Data Bits             [8]
+        Parity                [None]
+        Stop Bits             [1]
+        Flow Control          [None]
+        Recorder Mode         [Disabled]
+        Resolution 100x31     [Disabled]
+        Legacy OS Redirection [80x24]
+
+Note that the UART clock is configured at 48MHz in the firmware. This
+will cause problems with software assuming a typical 1.8 MHz clock.
+The Linux kernel pch-uart driver is aware of the clock, but Syslinux,
+for example, is not. For software expecting a typical clock, directing
+them to use a BAUD of 3318 (rather than 115200) can work around the
+problem.
+
+b. HDMI
+-------
+The FRI2 has two micro HDMI ports. The one closest to the 1/8" audio
+jacks is the primary display.
+
+c. Power Reset
+--------------
+The recessed button adjacent the LEDs on the top of the device is a
+power reset button.
+
+d. Accelerometer
+----------------
+The LIS331DLH accelerometer is connected to the I2C bus on the CPLD on
+the compute module. The driver for this chip is under active
+development and will be included in the BSP once completed.
+
+e. GPIO
+-------
+The FRI2 has two I2C PCA555x GPIO devices used for internal control
+signals. These have not been exposed in the current release of the
+BSP, but may be in the future. Regardless, these do would not provide
+general purpose IO with which to read or drive additional signals.
+
+f. MMC
+------
+The FRI2 provides two microSD card MMC devices. One is located
+adjacent the 1/8" audio jacks, another is located on the board inside
+the chassis. These devices can be used to boot the device, or as
+secondary storage.
+
+g. 802.11
+---------
+The Intel Corporation Centrino Advanced-N 6205 that ships with the
+FRI2 is supported. You can use connman-gnome to configures the
+interface.
+
+h. 802.15.4
+-----------
+The TI CC2531 802.15.4 radio is a USB ACM modem. The MAC is enabled by
+issuing the following command:
+
+# echo J > /dev/ttyACM0
+
+The bank of 3 LEDs nearest the power reset button will change if this
+command is executed successfully. If you have a 3G modem installed,
+the 802.15.4 device may appear as /dev/ttyACM3 instead.
+
+The linux-zigbee stack recognizes and enumerates the modem. No further
+testing or integration has been done.
+
+i. Audio
+--------------------
+The FRI2 has an 1/8" analog output (nearest the antennae), a line-in
+input below that, as well as SPDIF over HDMI. These can be tested
+using the alsa-utils package. aplay -l will list both playback
+devices:
+
+# aplay -l
+**** List of PLAYBACK Hardware Devices ****
+card 0: MID [HDA Intel MID], device 0: ALC262 Analog [ALC262 Analog]
+  Subdevices: 1/1
+  Subdevice #0: subdevice #0
+card 0: MID [HDA Intel MID], device 3: ALC262 Digital [ALC262 Digital]
+  Subdevices: 1/1
+  Subdevice #0: subdevice #0
+
+Using a sample WAV file, you can use aplay to play to either device:
+
+Over analog:
+# aplay -D plughw:0,0 sample.wav
+
+Over HDMI:
+# aplay -D plughw:0,3 sample.wav
+
+
+j. Optional Devices
+-------------------
+The FRI2 has two mini-PCIe slots internally. The device ships with a
+half-length wireless card installed. This can be replaced with a
+wireless + bluetooth card. The other slot is available for use with
+cellular cards or mSATA SSDs.
+
+The Ericsson F5521gw 3G modem has been verifed with the FRI2 images.
+Note that the connman-gnome UI does not allow for configuring the
+cellular interface. The ofono-tests package can be used to configure
+the modem and bring up an interface.
+
+
+IV. Known Issues
+----------------
+a. EFI
+------
+The FRI2 firmware can boot to an EFI shell. It does not yet boot the
+EFI payload provided on the FRI2 live image. This is a known issue
+under investigation.
+
+b. Client USB is disabled
+-------------------------
+The micro-USB port adjacent the primary HDMI port is intended for
+Client USB functionality, but is not supported on current revisions of
+the device.
+
+c. Audio over secondary HDMI port only
+--------------------------------------
+While audio over HDMI has been shown to work, it seems to only work over
+the secondary (bottom-most) HDMI port. There does not appear to be a
+deterministic way of getting the device to output the signal (video and audio)
+over the secondary port.
-- 
1.7.5.4


