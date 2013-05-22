Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5035E01439
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:17 -0700 (PDT)
Received: by mail-wg0-f53.google.com with SMTP id m15so1022469wgh.32
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=oyA0qKgCA/TBd1vtKAQV/mTrKxWkVQ63rXWMjHky9c8=;
	b=buJtTlZD1gFFZ9E+/kMR5Qp7FxxqW7r6Z/oA3Sx/6e5t4KMrTtlfKhBpOiSG2eUref
	yiIvJjLDwj6vC7O/rwZRDz0IobRBRooa1fJUaHurh6gbmxEJbxCHBAcAtvMa+6TtyEvi
	xAFop7qGnrzd+a+jyniaNfB6Px/n5mM12I8mJ0QNNxRnYNMPq+oYPL8PtE8MFpb8xN4A
	k2oG0IMyIlvXTamMQhPpZQTB/9wL1vxxtwtdDAnkRdZNOcNhzUnmMpJuBdV6+BnnAU4W
	SrgCfnOoO+tv8RmorX353/cgNYLBLOmUSHdu/+qjR4/nUo5uLFKze7YLd0lAymbIEplq
	H8qw==
X-Received: by 10.180.79.40 with SMTP id g8mr12396996wix.3.1369213576432;
	Wed, 22 May 2013 02:06:16 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83]) by mx.google.com with ESMTPSA id
	ca19sm27459501wib.3.2013.05.22.02.06.14 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 02:06:15 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed, 22 May 2013 10:06:03 +0100
Message-Id: <1369213564-22220-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
In-Reply-To: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
References: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 1/2] rpi-first-run-wizard: remove
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
X-List-Received-Date: Wed, 22 May 2013 09:06:18 -0000

The existing first run script is inappropriate for a board support layer. It is
also full of references to OpenPandora and is not portable across all distros
which may use meta-raspberrypi.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-extra/startup/rpi-first-run-wizard.bb      |  37 ---
 recipes-extra/startup/rpi-first-run-wizard/LICENSE | 339 ---------------------
 .../rpi-first-run-wizard/first-run-wizard.sh       | 213 -------------
 .../startup/rpi-first-run-wizard/rc.firstrun       |  73 -----
 .../startup/rpi-first-run-wizard/rpi_startup.sh    |   6 -
 5 files changed, 668 deletions(-)
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard.bb
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/LICENSE
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rc.firstrun
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh

diff --git a/recipes-extra/startup/rpi-first-run-wizard.bb b/recipes-extra/startup/rpi-first-run-wizard.bb
deleted file mode 100644
index 40f9785..0000000
--- a/recipes-extra/startup/rpi-first-run-wizard.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-DESCRIPTION = "Scripts to support a first run wizard on the Raspberry Pi."
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-
-DEPENDS = "zenity dbus"
-RDEPENDS_${PN} = "slim sudo zenity dbus"
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-PR = "r2"
-
-SRC_URI = " \
-          file://LICENSE \
-          file://first-run-wizard.sh \
-          file://rpi_startup.sh \
-          file://rc.firstrun \
-"
-
-inherit update-rc.d
-
-INITSCRIPT_NAME = "rpi-run-init"
-INITSCRIPT_PARAMS = "start 29 2 3 4 5 . stop  29 2 3 4 5 ."
-
-do_install() {
-          install -d ${D}${prefix}/rpi/scripts/
-          install -m 0755 ${WORKDIR}/first-run-wizard.sh ${D}${prefix}/rpi/scripts/
-          install -m 0755 ${WORKDIR}/rpi_startup.sh ${D}${prefix}/rpi/scripts/
-
-          install -d ${D}${sysconfdir}/init.d/
-          install -m 0755 ${WORKDIR}/rc.firstrun ${D}${sysconfdir}/init.d/rpi-run-init
-
-          install -d ${D}${sysconfdir}/rpi/
-}
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-FILES_${PN} += "${prefix} ${sysconfdir}"
diff --git a/recipes-extra/startup/rpi-first-run-wizard/LICENSE b/recipes-extra/startup/rpi-first-run-wizard/LICENSE
deleted file mode 100644
index d159169..0000000
--- a/recipes-extra/startup/rpi-first-run-wizard/LICENSE
+++ /dev/null
@@ -1,339 +0,0 @@
-                    GNU GENERAL PUBLIC LICENSE
-                       Version 2, June 1991
-
- Copyright (C) 1989, 1991 Free Software Foundation, Inc.,
- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
- Everyone is permitted to copy and distribute verbatim copies
- of this license document, but changing it is not allowed.
-
-                            Preamble
-
-  The licenses for most software are designed to take away your
-freedom to share and change it.  By contrast, the GNU General Public
-License is intended to guarantee your freedom to share and change free
-software--to make sure the software is free for all its users.  This
-General Public License applies to most of the Free Software
-Foundation's software and to any other program whose authors commit to
-using it.  (Some other Free Software Foundation software is covered by
-the GNU Lesser General Public License instead.)  You can apply it to
-your programs, too.
-
-  When we speak of free software, we are referring to freedom, not
-price.  Our General Public Licenses are designed to make sure that you
-have the freedom to distribute copies of free software (and charge for
-this service if you wish), that you receive source code or can get it
-if you want it, that you can change the software or use pieces of it
-in new free programs; and that you know you can do these things.
-
-  To protect your rights, we need to make restrictions that forbid
-anyone to deny you these rights or to ask you to surrender the rights.
-These restrictions translate to certain responsibilities for you if you
-distribute copies of the software, or if you modify it.
-
-  For example, if you distribute copies of such a program, whether
-gratis or for a fee, you must give the recipients all the rights that
-you have.  You must make sure that they, too, receive or can get the
-source code.  And you must show them these terms so they know their
-rights.
-
-  We protect your rights with two steps: (1) copyright the software, and
-(2) offer you this license which gives you legal permission to copy,
-distribute and/or modify the software.
-
-  Also, for each author's protection and ours, we want to make certain
-that everyone understands that there is no warranty for this free
-software.  If the software is modified by someone else and passed on, we
-want its recipients to know that what they have is not the original, so
-that any problems introduced by others will not reflect on the original
-authors' reputations.
-
-  Finally, any free program is threatened constantly by software
-patents.  We wish to avoid the danger that redistributors of a free
-program will individually obtain patent licenses, in effect making the
-program proprietary.  To prevent this, we have made it clear that any
-patent must be licensed for everyone's free use or not licensed at all.
-
-  The precise terms and conditions for copying, distribution and
-modification follow.
-
-                    GNU GENERAL PUBLIC LICENSE
-   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
-
-  0. This License applies to any program or other work which contains
-a notice placed by the copyright holder saying it may be distributed
-under the terms of this General Public License.  The "Program", below,
-refers to any such program or work, and a "work based on the Program"
-means either the Program or any derivative work under copyright law:
-that is to say, a work containing the Program or a portion of it,
-either verbatim or with modifications and/or translated into another
-language.  (Hereinafter, translation is included without limitation in
-the term "modification".)  Each licensee is addressed as "you".
-
-Activities other than copying, distribution and modification are not
-covered by this License; they are outside its scope.  The act of
-running the Program is not restricted, and the output from the Program
-is covered only if its contents constitute a work based on the
-Program (independent of having been made by running the Program).
-Whether that is true depends on what the Program does.
-
-  1. You may copy and distribute verbatim copies of the Program's
-source code as you receive it, in any medium, provided that you
-conspicuously and appropriately publish on each copy an appropriate
-copyright notice and disclaimer of warranty; keep intact all the
-notices that refer to this License and to the absence of any warranty;
-and give any other recipients of the Program a copy of this License
-along with the Program.
-
-You may charge a fee for the physical act of transferring a copy, and
-you may at your option offer warranty protection in exchange for a fee.
-
-  2. You may modify your copy or copies of the Program or any portion
-of it, thus forming a work based on the Program, and copy and
-distribute such modifications or work under the terms of Section 1
-above, provided that you also meet all of these conditions:
-
-    a) You must cause the modified files to carry prominent notices
-    stating that you changed the files and the date of any change.
-
-    b) You must cause any work that you distribute or publish, that in
-    whole or in part contains or is derived from the Program or any
-    part thereof, to be licensed as a whole at no charge to all third
-    parties under the terms of this License.
-
-    c) If the modified program normally reads commands interactively
-    when run, you must cause it, when started running for such
-    interactive use in the most ordinary way, to print or display an
-    announcement including an appropriate copyright notice and a
-    notice that there is no warranty (or else, saying that you provide
-    a warranty) and that users may redistribute the program under
-    these conditions, and telling the user how to view a copy of this
-    License.  (Exception: if the Program itself is interactive but
-    does not normally print such an announcement, your work based on
-    the Program is not required to print an announcement.)
-
-These requirements apply to the modified work as a whole.  If
-identifiable sections of that work are not derived from the Program,
-and can be reasonably considered independent and separate works in
-themselves, then this License, and its terms, do not apply to those
-sections when you distribute them as separate works.  But when you
-distribute the same sections as part of a whole which is a work based
-on the Program, the distribution of the whole must be on the terms of
-this License, whose permissions for other licensees extend to the
-entire whole, and thus to each and every part regardless of who wrote it.
-
-Thus, it is not the intent of this section to claim rights or contest
-your rights to work written entirely by you; rather, the intent is to
-exercise the right to control the distribution of derivative or
-collective works based on the Program.
-
-In addition, mere aggregation of another work not based on the Program
-with the Program (or with a work based on the Program) on a volume of
-a storage or distribution medium does not bring the other work under
-the scope of this License.
-
-  3. You may copy and distribute the Program (or a work based on it,
-under Section 2) in object code or executable form under the terms of
-Sections 1 and 2 above provided that you also do one of the following:
-
-    a) Accompany it with the complete corresponding machine-readable
-    source code, which must be distributed under the terms of Sections
-    1 and 2 above on a medium customarily used for software interchange; or,
-
-    b) Accompany it with a written offer, valid for at least three
-    years, to give any third party, for a charge no more than your
-    cost of physically performing source distribution, a complete
-    machine-readable copy of the corresponding source code, to be
-    distributed under the terms of Sections 1 and 2 above on a medium
-    customarily used for software interchange; or,
-
-    c) Accompany it with the information you received as to the offer
-    to distribute corresponding source code.  (This alternative is
-    allowed only for noncommercial distribution and only if you
-    received the program in object code or executable form with such
-    an offer, in accord with Subsection b above.)
-
-The source code for a work means the preferred form of the work for
-making modifications to it.  For an executable work, complete source
-code means all the source code for all modules it contains, plus any
-associated interface definition files, plus the scripts used to
-control compilation and installation of the executable.  However, as a
-special exception, the source code distributed need not include
-anything that is normally distributed (in either source or binary
-form) with the major components (compiler, kernel, and so on) of the
-operating system on which the executable runs, unless that component
-itself accompanies the executable.
-
-If distribution of executable or object code is made by offering
-access to copy from a designated place, then offering equivalent
-access to copy the source code from the same place counts as
-distribution of the source code, even though third parties are not
-compelled to copy the source along with the object code.
-
-  4. You may not copy, modify, sublicense, or distribute the Program
-except as expressly provided under this License.  Any attempt
-otherwise to copy, modify, sublicense or distribute the Program is
-void, and will automatically terminate your rights under this License.
-However, parties who have received copies, or rights, from you under
-this License will not have their licenses terminated so long as such
-parties remain in full compliance.
-
-  5. You are not required to accept this License, since you have not
-signed it.  However, nothing else grants you permission to modify or
-distribute the Program or its derivative works.  These actions are
-prohibited by law if you do not accept this License.  Therefore, by
-modifying or distributing the Program (or any work based on the
-Program), you indicate your acceptance of this License to do so, and
-all its terms and conditions for copying, distributing or modifying
-the Program or works based on it.
-
-  6. Each time you redistribute the Program (or any work based on the
-Program), the recipient automatically receives a license from the
-original licensor to copy, distribute or modify the Program subject to
-these terms and conditions.  You may not impose any further
-restrictions on the recipients' exercise of the rights granted herein.
-You are not responsible for enforcing compliance by third parties to
-this License.
-
-  7. If, as a consequence of a court judgment or allegation of patent
-infringement or for any other reason (not limited to patent issues),
-conditions are imposed on you (whether by court order, agreement or
-otherwise) that contradict the conditions of this License, they do not
-excuse you from the conditions of this License.  If you cannot
-distribute so as to satisfy simultaneously your obligations under this
-License and any other pertinent obligations, then as a consequence you
-may not distribute the Program at all.  For example, if a patent
-license would not permit royalty-free redistribution of the Program by
-all those who receive copies directly or indirectly through you, then
-the only way you could satisfy both it and this License would be to
-refrain entirely from distribution of the Program.
-
-If any portion of this section is held invalid or unenforceable under
-any particular circumstance, the balance of the section is intended to
-apply and the section as a whole is intended to apply in other
-circumstances.
-
-It is not the purpose of this section to induce you to infringe any
-patents or other property right claims or to contest validity of any
-such claims; this section has the sole purpose of protecting the
-integrity of the free software distribution system, which is
-implemented by public license practices.  Many people have made
-generous contributions to the wide range of software distributed
-through that system in reliance on consistent application of that
-system; it is up to the author/donor to decide if he or she is willing
-to distribute software through any other system and a licensee cannot
-impose that choice.
-
-This section is intended to make thoroughly clear what is believed to
-be a consequence of the rest of this License.
-
-  8. If the distribution and/or use of the Program is restricted in
-certain countries either by patents or by copyrighted interfaces, the
-original copyright holder who places the Program under this License
-may add an explicit geographical distribution limitation excluding
-those countries, so that distribution is permitted only in or among
-countries not thus excluded.  In such case, this License incorporates
-the limitation as if written in the body of this License.
-
-  9. The Free Software Foundation may publish revised and/or new versions
-of the General Public License from time to time.  Such new versions will
-be similar in spirit to the present version, but may differ in detail to
-address new problems or concerns.
-
-Each version is given a distinguishing version number.  If the Program
-specifies a version number of this License which applies to it and "any
-later version", you have the option of following the terms and conditions
-either of that version or of any later version published by the Free
-Software Foundation.  If the Program does not specify a version number of
-this License, you may choose any version ever published by the Free Software
-Foundation.
-
-  10. If you wish to incorporate parts of the Program into other free
-programs whose distribution conditions are different, write to the author
-to ask for permission.  For software which is copyrighted by the Free
-Software Foundation, write to the Free Software Foundation; we sometimes
-make exceptions for this.  Our decision will be guided by the two goals
-of preserving the free status of all derivatives of our free software and
-of promoting the sharing and reuse of software generally.
-
-                            NO WARRANTY
-
-  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
-FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
-OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
-PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
-OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
-TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
-PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
-REPAIR OR CORRECTION.
-
-  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
-WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
-REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
-INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
-OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
-TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
-YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
-PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
-POSSIBILITY OF SUCH DAMAGES.
-
-                     END OF TERMS AND CONDITIONS
-
-            How to Apply These Terms to Your New Programs
-
-  If you develop a new program, and you want it to be of the greatest
-possible use to the public, the best way to achieve this is to make it
-free software which everyone can redistribute and change under these terms.
-
-  To do so, attach the following notices to the program.  It is safest
-to attach them to the start of each source file to most effectively
-convey the exclusion of warranty; and each file should have at least
-the "copyright" line and a pointer to where the full notice is found.
-
-    <one line to give the program's name and a brief idea of what it does.>
-    Copyright (C) <year>  <name of author>
-
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; either version 2 of the License, or
-    (at your option) any later version.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    You should have received a copy of the GNU General Public License along
-    with this program; if not, write to the Free Software Foundation, Inc.,
-    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-
-Also add information on how to contact you by electronic and paper mail.
-
-If the program is interactive, make it output a short notice like this
-when it starts in an interactive mode:
-
-    Gnomovision version 69, Copyright (C) year name of author
-    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
-    This is free software, and you are welcome to redistribute it
-    under certain conditions; type `show c' for details.
-
-The hypothetical commands `show w' and `show c' should show the appropriate
-parts of the General Public License.  Of course, the commands you use may
-be called something other than `show w' and `show c'; they could even be
-mouse-clicks or menu items--whatever suits your program.
-
-You should also get your employer (if you work as a programmer) or your
-school, if any, to sign a "copyright disclaimer" for the program, if
-necessary.  Here is a sample; alter the names:
-
-  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
-  `Gnomovision' (which makes passes at compilers) written by James Hacker.
-
-  <signature of Ty Coon>, 1 April 1989
-  Ty Coon, President of Vice
-
-This General Public License does not permit incorporating your program into
-proprietary programs.  If your program is a subroutine library, you may
-consider it more useful to permit linking proprietary applications with the
-library.  If this is what you want to do, use the GNU Lesser General
-Public License instead of this License.
diff --git a/recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh b/recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh
deleted file mode 100644
index 4393b68..0000000
--- a/recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh
+++ /dev/null
@@ -1,213 +0,0 @@
-#!/bin/sh
-
-# Initially based on the scripts by JohnX/Mer Project - http://wiki.maemo.org/Mer/
-# Reworked for the OpenPandora - John Willis/Michael Mrozek
-# Quickly 'hacked' for the Raspberry Pi to provide a simple 1st boot wizard.
-
-# You can start the wizard from the shell using 'xinit ./first-boot-init.sh'
-
-export LANG=en_GB.UTF-8
-export GTK2_RC_FILES=/usr/share/themes/Xfce/gtk-2.0/gtkrc
-
-# Ensure there is a wheel group for sudoers to be put into.
-# TODO: Do this somewhere better.
-groupadd wheel
-
-# Default error message (should a user hit cancel, validation fail etc.).
-ERROR_WINDOW='zenity --title="Error" --error --text="Sorry! Please try again." --timeout 6'
-
-RESET_ROOT="yes"
-
-DISPLAY=:0 xset s off
-
-# Greet the user.
-
-if zenity --question --title="Pandoras Box has been opened." --text="Welcome!\n\nPandora's Box has been opened.\n\nThis wizard will help you setting up your new OpenPandora handheld before the first use.\n\nYou will be asked a few simple questions to personalise and configure your device.\n\nDo you want to set up your unit now or shut the unit down and do it later?" --ok-label="Start now" --cancel-label="Shutdown" ; then
-# ----
-
-# Reset ROOT's password to something random 
-
-# (I know the image build sets the password to something pusdo-random)
-# (ok, urandom is not 100% secure but it's good enough for our needs)
-
-if [ $RESET_ROOT == "yes" ]; then
-	rootpwd=$(cat /dev/urandom|tr -dc "a-zA-Z0-9-_\$\?"|fold -w 30|head -n 1)
-passwd "root" <<EOF
-$rootpwd
-$rootpwd
-EOF
-	rootpwd=""
-fi
-
-# ----
-
-# Setup swap partition if the user has placed an SD with a swap partition on it.
-
-swap_part=$(sfdisk -l /dev/mmcblk? | grep swap | cut -d" " -f1)
-if [ x$swap_part != x ] ; then
-	use_swap=$(zenity --title="Enable swap?" --text "Swap partition found on SD card. Would you like to use it?\n\nWarning: This SD must remain in the system to use the swap." --list --radiolist --column " " --column "Answer" TRUE "Use swap on $swap_part" FALSE "Do not use swap")
-	if [ "$use_swap" = "Use swap on $swap_part" ] ; then
-		swapon $swap_part
-       		echo "$swap_part none swap sw 0 0" >> /etc/fstab
-	fi
-fi
-
-# ----
-
-# Setup the full name and username.
-
-while ! name=$(zenity --title="Please enter your full name" --entry --text "Please enter your full name.") || [ "x$name" = "x" ] ; do
-	zenity --title="Error" --error --text="Please try again." --timeout 6
-done
-
-username_guess=$(echo "$name" | cut -d" " -f1 | tr A-Z a-z)
-
-while ! username=$(zenity --title="Enter your username" --entry --text "Please choose a short username.\n\nIt should be all lowercase and contain only letters and numbers." --entry-text "$username_guess") || [ "x$username" = "x" ] ; do
-	zenity --title="Error" --error --text="Please try again." --timeout 6
-done
-
-while ! useradd -c "$name,,," -G adm,audio,video,netdev,wheel,plugdev,users "$username" ; do
-	username=$(zenity --title="Please check username" --entry --text "Please ensure that your username consists of only\nletters and numbers and is not already in use on the system." --entry-text "$username")
-done
-
-# ----
-
-# Setup the users password.
-
-password=""
-while [ x$password = x ] ; do
-	password1=$(zenity --title=Password --entry --text="Please choose a new password." --hide-text)
-	password2=$(zenity --title=Confirm --entry --text="Confirm your new password." --hide-text)
-	if [ $password1 != $password2 ] ; then 
-		zenity --title="Error" --error --text="The passwords do not match.\n\nPlease try again." --timeout 6
-	else 
-		if [ x$password1 = x ] ; then
-			zenity --title="Error" --error --text="Password cannot be blank!\n\nPlease try again." --timeout 6
-		else
-			password=$password1
-		fi
-	fi
-done
-
-passwd "$username" <<EOF
-$password
-$password
-EOF
-
-# ----
-
-# Pick a name for the OpenPandora.
-
-while ! hostname=$(zenity --title="Name your Pandora" --entry --text "Please choose a name for your OpenPandora.\n\nIt should only contain letters, numbers and dashes, no spaces." --entry-text "$username-openpandora") || [ "x$hostname" = "x" ]; do 
-	zenity --title="Error" --error --text="Please try again."
-done
-
-
-echo $hostname > /etc/hostname
-hostname =$(sed 's/ /_/g' /etc/hostname)
-echo $hostname > /etc/hostname
-echo "127.0.0.1 localhost.localdomain localhost $hostname" > /etc/hosts
-hostname -F /etc/hostname
-
-# Set the correct user for Autologin and enable / disable it.
-
-if zenity --question --title="Autologin" --text="Do you wish to automatically login at startup?\n\nSecurity warning: This skips the password check on startup" --ok-label="Yes" --cancel-label="No"; then      	
-	# echo "PREFERED_USER=$username" > /etc/default/autologin
-	sed -i "s/.*default_user.*/default_user $username/g" /etc/slim.conf
-	sed -i 's/.*auto_login.*/auto_login yes/g' /etc/slim.conf
-else
-	if zenity --question --title="User" --text="Do you wish to have your username automatically populated in the login screen?\n\nNote: This is ideal if you're the only user of the OpenPandora but wish to disable autologin and use a password." --ok-label="Yes" --cancel-label="No"; then 
-		sed -i "s/.*default_user.*/default_user $username/g" /etc/slim.conf
-		sed -i 's/.*auto_login.*/auto_login no/g' /etc/slim.conf
-	else
-		sed -i "s/.*default_user.*/default_user/g" /etc/slim.conf
-		sed -i 's/.*auto_login.*/auto_login no/g' /etc/slim.conf
-	fi
-fi
-
-# ----
-
-# Select the default interface and setup SLiM to pass that as a sesion to ~./.xinitrc
-
-selection=""
-while [ x$selection = x ]; do
-selection=$(cat /etc/pandora/conf/gui.conf | awk -F\; '{print $1 "\n" $2 }' | zenity --width=500 --height=300 --title="Select the Default GUI" --list --column "Name" --column "Description" --text "Please select the Default GUI" )
-if [ x$selection = x ]; then
-  zenity --title="Error" --error --text="Please select a GUI." --timeout=6
-fi
-done
-
-echo $selection
-
-gui=$(grep $selection /etc/pandora/conf/gui.conf | awk -F\; '{print $3}')
-stopcommand=$(grep $selection /etc/pandora/conf/gui.conf | awk -F\; '{print $4}')
-
-echo $gui
-
-if [ $gui ]; then 
-  sed -i "s/.*DEFAULT_SESSION=.*/DEFAULT_SESSION=$gui/g" /home/$username/.xinitrc
-  echo $selection selected as default interface
-  zenity --info --title="Selected session" --text "You selected $selection as default setting. You can always change your default GUI later." --timeout 6
-else
-  sed -i 's/.*DEFAULT_SESSION=.*/DEFAULT_SESSION=startxfce4/g' /home/$username/.xinitrc
-fi
-
-# ----
-
-# Set the timezone and date/time
-
-while ! area=$(zenity --list --title "Select your time zone" --text="Please select your area" --column="Select your area" --print-column=1 "Africa" "America" "Asia" "Australia" "Europe" "Pacific" --width=500 --height=260) || [ "x$area" = "x" ] ; do
-	zenity --title="Error" --error --text="Please select your area." --timeout=6
-done
-
-while ! timezone=$(ls -1 /usr/share/zoneinfo/$area | zenity ---width=500 --height=200 --title="Select your closest location" --list --column "Closest Location" --text "Please select the location closest to you") || [ "x$timezone" = "x" ] ; do
-	zenity --title="Error" --error --text="Please select your location." --timeout=6
-done
-
-echo $timezone
-rm /etc/localtime && ln -s /usr/share/zoneinfo/$area/$timezone /etc/localtime
-
-# Make sure we clean up any leading zeros in the day (as Zenity freaks out)
-date_d=`date +%d | sed 's/^0//'`
-date_m=`date +%m | sed 's/^0//'`
-date_y=`date +%Y`
-
-while ! date=$(zenity --calendar --text="Please select the current date" --title "Please select the current date" --day=$date_d --month=$date_m --year=$date_y --date-format="%Y%m%d" --width=500) || [ "x$date" = "x" ] ; do
-        zenity --title="Error" --error --text="Please select the date." --timeout 6
-done
-
-echo $date
-
-time_h=`date +%H`
-time_m=`date +%M`
-
-while ! time=$(zenity --title="Enter actual time" --entry --text "Please enter the time in 24hour format (HH:MM):" --entry-text "$time_h:$time_m") || [ "x$time" = "x" ] ; do
-        zenity --title="Error" --error --text="Please input the time." --timeout 6
-done
-
-while ! date -d $time ; do
-	time=$(zenity --title="Enter actual time" --entry --text "Please enter the time in 24hour format (HH:MM):" --entry-text "$time_h:$time_m")
-done
- 
-date +%Y%m%d -s $date
-date +%H:%M -s $time
-
-# ----
-
-# Finsh up and boot the system.
-
-zenity --info --title="Finished" --text "This concludes the First Boot Wizard.\n\nYour chosen interface will start in a few seconds\n\nThankyou for buying the OpenPandora. Enjoy using the device!" --timeout 6
-
-# ----
-
-# Write the control file so this script is not run on next boot 
-# (hackish I know but I want the flexability to drop a new script in later esp. in the early firmwares).
-
-touch /etc/rpi/first-boot
-# Make the control file writeable by all to allow the user to delete to rerun the wizard on next boot.
-chmod 0666 /etc/rpi/first-boot
-
-# ----
-else
-poweroff
-fi
diff --git a/recipes-extra/startup/rpi-first-run-wizard/rc.firstrun b/recipes-extra/startup/rpi-first-run-wizard/rc.firstrun
deleted file mode 100644
index 2bc91aa..0000000
--- a/recipes-extra/startup/rpi-first-run-wizard/rc.firstrun
+++ /dev/null
@@ -1,73 +0,0 @@
-#!/bin/sh
-
-### BEGIN INIT INFO
-# Provides:          rpiruninit
-# Required-Start:    #adjust
-# Required-Stop:     #adjust
-# Default-Start:     2 3 4 5
-# Default-Stop:      0 1 6
-### END INIT INFO
- 
-DESC="Raspberry Pi Startup Script Deamon"
-NAME="rpiruninit"
-
-PID=`pidof -o %PPID -x rpi_startup.sh`
-OPRUNINIT='/usr/rpi/scripts/rpi_startup.sh'
-
-d_stop() {
-	if [ $PID ]
-	then
-		kill $PID
-	else
-		echo "$DESC: $NAME not running."
-	fi
-}
-
-d_start() {
-	if [ $PID ]
-	then
-		echo "$DESC: $NAME already running."
-	else
-		$OPRUNINIT
-	fi
-}
-
-d_reload() {
-	if [ $PID ]
-	then
-		kill -HUP $PID
-	else
-		echo "$DESC: $NAME not running."
-	fi
-}
-
-case "$1" in
-  start)
-	echo -n "Starting $DESC: $NAME"
-	d_start
-	echo "."
-	;;
-  stop)
-	echo -n "Stopping $DESC: $NAME"
-	d_stop
-	echo "."
-	;;
-  reload)
-	echo -n "Reloading $DESC: $NAME"
-	d_reload
-	echo "."
-	;;	
-  restart|force-reload)
-	echo -n "Restarting $DESC: $NAME"
-	d_stop
-	sleep 1
-	d_start
-	echo "."
-	;;
-  *)
-	echo "Usage: $0 {start|stop|restart|reload|force-reload}" >&2
-	exit 1
-	;;
-esac
-
-exit 0
diff --git a/recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh b/recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh
deleted file mode 100644
index aef257d..0000000
--- a/recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-OP_CHECKFILE='/etc/rpi/first-boot'
-OP_FIRSTRUN='xinit /usr/rpi/scripts/first-run-wizard.sh'
-
-[ -f $OP_CHECKFILE ] && echo -e "\nOP_STARTUP: $OP_CHECKFILE exists, not first boot." || $OP_FIRSTRUN
-- 
1.8.2.2


