Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB3E2E0132F
	for <yocto@yoctoproject.org>; Sat,  3 Mar 2012 04:07:41 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S3nkS-0003C6-RL
	for yocto@yoctoproject.org; Sat, 03 Mar 2012 07:07:40 -0500
Date: Sat, 3 Mar 2012 07:07:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203030703030.27890@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: redundant "-no-reboot" built into runqemu-internal command
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
X-List-Received-Date: Sat, 03 Mar 2012 12:07:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  while playing with "runqemu", i noticed that the generated
"qemu-system-arm" command contained two "-no-reboot" options in it,
apparently because of this in runqemu-internal:

first:

if [ "$MACHINE" = "qemuarm" -o "$MACHINE" = "qemuarmv6" -o "$MACHINE" = "qemuarmv7" ]; then
    QEMU=qemu-system-arm
    MACHINE_SUBTYPE=versatilepb
    QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS"
    # QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -force-pointer"
    if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
        KERNCMDLINE="root=/dev/sda rw console=ttyAMA0,115200 console=tty $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY highres=off"
        QEMUOPTIONS="$QEMU_NETWORK_CMD -M versatilepb -hda $ROOTFS -no-reboot $QEMU_UI_OPTIONS"
... snip ...

while at the very end, we read:

echo "Running $QEMU..."
# -no-reboot is a mandatory option - see bug #100
echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT
--append "$KERNCMDLINE $SCRIPT_KERNEL_OPT"

  obviously, not affecting actual operation, but is this something
"bug #100" will change some day (whatever that is)?  just curious.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

