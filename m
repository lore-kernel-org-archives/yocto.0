Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.14462.1596743265013680018
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 12:47:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mzeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 076JlBFF002115
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 12:47:33 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 12:47:13 -0700
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21151)	id 106D51FF3F;
 Thu,  6 Aug 2020 15:47:13 -0400 (EDT)
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-window-manager-2][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Thu, 6 Aug 2020 15:47:11 -0400
Message-ID: <20200806194712.12526-2-matthew.zeng@windriver.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200806194712.12526-1-matthew.zeng@windriver.com>
References: <20200806194712.12526-1-matthew.zeng@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 COPYING                                       | 340 ++++++++++++++++++
 matchbox/client-types/mb-wm-client-app.c      |   2 +
 matchbox/client-types/mb-wm-client-app.h      |  10 +-
 matchbox/client-types/mb-wm-client-desktop.c  |   2 +-
 matchbox/client-types/mb-wm-client-desktop.h  |  10 +-
 matchbox/client-types/mb-wm-client-dialog.c   |   2 +-
 matchbox/client-types/mb-wm-client-dialog.h   |  10 +-
 matchbox/client-types/mb-wm-client-input.c    |   2 +-
 matchbox/client-types/mb-wm-client-input.h    |  10 +-
 matchbox/client-types/mb-wm-client-menu.c     |   2 +-
 matchbox/client-types/mb-wm-client-menu.h     |  10 +-
 matchbox/client-types/mb-wm-client-note.c     |  11 +-
 matchbox/client-types/mb-wm-client-note.h     |  10 +-
 matchbox/client-types/mb-wm-client-override.c |  11 +-
 matchbox/client-types/mb-wm-client-override.h |  10 +-
 matchbox/client-types/mb-wm-client-panel.c    |   1 +
 matchbox/client-types/mb-wm-client-panel.h    |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr-clutter.c    |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr-clutter.h    |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr-xrender.c    |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr-xrender.h    |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr.c            |  10 +-
 matchbox/comp-mgr/mb-wm-comp-mgr.h            |  10 +-
 matchbox/core/mb-window-manager.c             |  10 +-
 matchbox/core/mb-window-manager.h             |  10 +-
 matchbox/core/mb-wm-atoms.c                   |   1 +
 matchbox/core/mb-wm-atoms.h                   |  10 +-
 matchbox/core/mb-wm-client-base.c             |  10 +-
 matchbox/core/mb-wm-client-base.h             |  10 +-
 matchbox/core/mb-wm-client-window.c           |  10 +-
 matchbox/core/mb-wm-client-window.h           |  10 +-
 matchbox/core/mb-wm-client.c                  |  10 +-
 matchbox/core/mb-wm-client.h                  |  10 +-
 matchbox/core/mb-wm-debug.c                   |  10 +-
 matchbox/core/mb-wm-debug.h                   |  10 +-
 matchbox/core/mb-wm-decor.c                   |  10 +-
 matchbox/core/mb-wm-decor.h                   |  10 +-
 matchbox/core/mb-wm-keys.c                    |   1 +
 matchbox/core/mb-wm-keys.h                    |  10 +-
 matchbox/core/mb-wm-layout.c                  |   1 +
 matchbox/core/mb-wm-layout.h                  |  10 +-
 matchbox/core/mb-wm-macros.h                  |  10 +-
 matchbox/core/mb-wm-main-context.c            |   1 +
 matchbox/core/mb-wm-main-context.h            |  10 +-
 matchbox/core/mb-wm-object-props.h            |   1 +
 matchbox/core/mb-wm-object.c                  |  10 +-
 matchbox/core/mb-wm-object.h                  |  10 +-
 matchbox/core/mb-wm-props.c                   |   1 +
 matchbox/core/mb-wm-props.h                   |  10 +-
 matchbox/core/mb-wm-root-window.c             |  10 +-
 matchbox/core/mb-wm-root-window.h             |  10 +-
 matchbox/core/mb-wm-stack.c                   |  10 +-
 matchbox/core/mb-wm-stack.h                   |  10 +-
 matchbox/core/mb-wm-types.h                   |  10 +-
 matchbox/core/mb-wm-util.c                    |   1 +
 matchbox/core/mb-wm-util.h                    |   1 +
 matchbox/core/mb-wm.h                         |  10 +-
 matchbox/core/xas.c                           |   2 +
 matchbox/core/xas.h                           |   2 +
 util/matchbox-remote.c                        |  11 +-
 60 files changed, 402 insertions(+), 394 deletions(-)
 create mode 100644 COPYING

diff --git a/COPYING b/COPYING
new file mode 100644
index 0000000..d60c31a
--- /dev/null
+++ b/COPYING
@@ -0,0 +1,340 @@
+		    GNU GENERAL PUBLIC LICENSE
+		       Version 2, June 1991
+
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.
+     59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ Everyone is permitted to copy and distribute verbatim copies
+ of this license document, but changing it is not allowed.
+
+			    Preamble
+
+  The licenses for most software are designed to take away your
+freedom to share and change it.  By contrast, the GNU General Public
+License is intended to guarantee your freedom to share and change free
+software--to make sure the software is free for all its users.  This
+General Public License applies to most of the Free Software
+Foundation's software and to any other program whose authors commit to
+using it.  (Some other Free Software Foundation software is covered by
+the GNU Library General Public License instead.)  You can apply it to
+your programs, too.
+
+  When we speak of free software, we are referring to freedom, not
+price.  Our General Public Licenses are designed to make sure that you
+have the freedom to distribute copies of free software (and charge for
+this service if you wish), that you receive source code or can get it
+if you want it, that you can change the software or use pieces of it
+in new free programs; and that you know you can do these things.
+
+  To protect your rights, we need to make restrictions that forbid
+anyone to deny you these rights or to ask you to surrender the rights.
+These restrictions translate to certain responsibilities for you if you
+distribute copies of the software, or if you modify it.
+
+  For example, if you distribute copies of such a program, whether
+gratis or for a fee, you must give the recipients all the rights that
+you have.  You must make sure that they, too, receive or can get the
+source code.  And you must show them these terms so they know their
+rights.
+
+  We protect your rights with two steps: (1) copyright the software, and
+(2) offer you this license which gives you legal permission to copy,
+distribute and/or modify the software.
+
+  Also, for each author's protection and ours, we want to make certain
+that everyone understands that there is no warranty for this free
+software.  If the software is modified by someone else and passed on, we
+want its recipients to know that what they have is not the original, so
+that any problems introduced by others will not reflect on the original
+authors' reputations.
+
+  Finally, any free program is threatened constantly by software
+patents.  We wish to avoid the danger that redistributors of a free
+program will individually obtain patent licenses, in effect making the
+program proprietary.  To prevent this, we have made it clear that any
+patent must be licensed for everyone's free use or not licensed at all.
+
+  The precise terms and conditions for copying, distribution and
+modification follow.
+
+		    GNU GENERAL PUBLIC LICENSE
+   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
+
+  0. This License applies to any program or other work which contains
+a notice placed by the copyright holder saying it may be distributed
+under the terms of this General Public License.  The "Program", below,
+refers to any such program or work, and a "work based on the Program"
+means either the Program or any derivative work under copyright law:
+that is to say, a work containing the Program or a portion of it,
+either verbatim or with modifications and/or translated into another
+language.  (Hereinafter, translation is included without limitation in
+the term "modification".)  Each licensee is addressed as "you".
+
+Activities other than copying, distribution and modification are not
+covered by this License; they are outside its scope.  The act of
+running the Program is not restricted, and the output from the Program
+is covered only if its contents constitute a work based on the
+Program (independent of having been made by running the Program).
+Whether that is true depends on what the Program does.
+
+  1. You may copy and distribute verbatim copies of the Program's
+source code as you receive it, in any medium, provided that you
+conspicuously and appropriately publish on each copy an appropriate
+copyright notice and disclaimer of warranty; keep intact all the
+notices that refer to this License and to the absence of any warranty;
+and give any other recipients of the Program a copy of this License
+along with the Program.
+
+You may charge a fee for the physical act of transferring a copy, and
+you may at your option offer warranty protection in exchange for a fee.
+
+  2. You may modify your copy or copies of the Program or any portion
+of it, thus forming a work based on the Program, and copy and
+distribute such modifications or work under the terms of Section 1
+above, provided that you also meet all of these conditions:
+
+    a) You must cause the modified files to carry prominent notices
+    stating that you changed the files and the date of any change.
+
+    b) You must cause any work that you distribute or publish, that in
+    whole or in part contains or is derived from the Program or any
+    part thereof, to be licensed as a whole at no charge to all third
+    parties under the terms of this License.
+
+    c) If the modified program normally reads commands interactively
+    when run, you must cause it, when started running for such
+    interactive use in the most ordinary way, to print or display an
+    announcement including an appropriate copyright notice and a
+    notice that there is no warranty (or else, saying that you provide
+    a warranty) and that users may redistribute the program under
+    these conditions, and telling the user how to view a copy of this
+    License.  (Exception: if the Program itself is interactive but
+    does not normally print such an announcement, your work based on
+    the Program is not required to print an announcement.)
+
+These requirements apply to the modified work as a whole.  If
+identifiable sections of that work are not derived from the Program,
+and can be reasonably considered independent and separate works in
+themselves, then this License, and its terms, do not apply to those
+sections when you distribute them as separate works.  But when you
+distribute the same sections as part of a whole which is a work based
+on the Program, the distribution of the whole must be on the terms of
+this License, whose permissions for other licensees extend to the
+entire whole, and thus to each and every part regardless of who wrote it.
+
+Thus, it is not the intent of this section to claim rights or contest
+your rights to work written entirely by you; rather, the intent is to
+exercise the right to control the distribution of derivative or
+collective works based on the Program.
+
+In addition, mere aggregation of another work not based on the Program
+with the Program (or with a work based on the Program) on a volume of
+a storage or distribution medium does not bring the other work under
+the scope of this License.
+
+  3. You may copy and distribute the Program (or a work based on it,
+under Section 2) in object code or executable form under the terms of
+Sections 1 and 2 above provided that you also do one of the following:
+
+    a) Accompany it with the complete corresponding machine-readable
+    source code, which must be distributed under the terms of Sections
+    1 and 2 above on a medium customarily used for software interchange; or,
+
+    b) Accompany it with a written offer, valid for at least three
+    years, to give any third party, for a charge no more than your
+    cost of physically performing source distribution, a complete
+    machine-readable copy of the corresponding source code, to be
+    distributed under the terms of Sections 1 and 2 above on a medium
+    customarily used for software interchange; or,
+
+    c) Accompany it with the information you received as to the offer
+    to distribute corresponding source code.  (This alternative is
+    allowed only for noncommercial distribution and only if you
+    received the program in object code or executable form with such
+    an offer, in accord with Subsection b above.)
+
+The source code for a work means the preferred form of the work for
+making modifications to it.  For an executable work, complete source
+code means all the source code for all modules it contains, plus any
+associated interface definition files, plus the scripts used to
+control compilation and installation of the executable.  However, as a
+special exception, the source code distributed need not include
+anything that is normally distributed (in either source or binary
+form) with the major components (compiler, kernel, and so on) of the
+operating system on which the executable runs, unless that component
+itself accompanies the executable.
+
+If distribution of executable or object code is made by offering
+access to copy from a designated place, then offering equivalent
+access to copy the source code from the same place counts as
+distribution of the source code, even though third parties are not
+compelled to copy the source along with the object code.
+
+  4. You may not copy, modify, sublicense, or distribute the Program
+except as expressly provided under this License.  Any attempt
+otherwise to copy, modify, sublicense or distribute the Program is
+void, and will automatically terminate your rights under this License.
+However, parties who have received copies, or rights, from you under
+this License will not have their licenses terminated so long as such
+parties remain in full compliance.
+
+  5. You are not required to accept this License, since you have not
+signed it.  However, nothing else grants you permission to modify or
+distribute the Program or its derivative works.  These actions are
+prohibited by law if you do not accept this License.  Therefore, by
+modifying or distributing the Program (or any work based on the
+Program), you indicate your acceptance of this License to do so, and
+all its terms and conditions for copying, distributing or modifying
+the Program or works based on it.
+
+  6. Each time you redistribute the Program (or any work based on the
+Program), the recipient automatically receives a license from the
+original licensor to copy, distribute or modify the Program subject to
+these terms and conditions.  You may not impose any further
+restrictions on the recipients' exercise of the rights granted herein.
+You are not responsible for enforcing compliance by third parties to
+this License.
+
+  7. If, as a consequence of a court judgment or allegation of patent
+infringement or for any other reason (not limited to patent issues),
+conditions are imposed on you (whether by court order, agreement or
+otherwise) that contradict the conditions of this License, they do not
+excuse you from the conditions of this License.  If you cannot
+distribute so as to satisfy simultaneously your obligations under this
+License and any other pertinent obligations, then as a consequence you
+may not distribute the Program at all.  For example, if a patent
+license would not permit royalty-free redistribution of the Program by
+all those who receive copies directly or indirectly through you, then
+the only way you could satisfy both it and this License would be to
+refrain entirely from distribution of the Program.
+
+If any portion of this section is held invalid or unenforceable under
+any particular circumstance, the balance of the section is intended to
+apply and the section as a whole is intended to apply in other
+circumstances.
+
+It is not the purpose of this section to induce you to infringe any
+patents or other property right claims or to contest validity of any
+such claims; this section has the sole purpose of protecting the
+integrity of the free software distribution system, which is
+implemented by public license practices.  Many people have made
+generous contributions to the wide range of software distributed
+through that system in reliance on consistent application of that
+system; it is up to the author/donor to decide if he or she is willing
+to distribute software through any other system and a licensee cannot
+impose that choice.
+
+This section is intended to make thoroughly clear what is believed to
+be a consequence of the rest of this License.
+
+  8. If the distribution and/or use of the Program is restricted in
+certain countries either by patents or by copyrighted interfaces, the
+original copyright holder who places the Program under this License
+may add an explicit geographical distribution limitation excluding
+those countries, so that distribution is permitted only in or among
+countries not thus excluded.  In such case, this License incorporates
+the limitation as if written in the body of this License.
+
+  9. The Free Software Foundation may publish revised and/or new versions
+of the General Public License from time to time.  Such new versions will
+be similar in spirit to the present version, but may differ in detail to
+address new problems or concerns.
+
+Each version is given a distinguishing version number.  If the Program
+specifies a version number of this License which applies to it and "any
+later version", you have the option of following the terms and conditions
+either of that version or of any later version published by the Free
+Software Foundation.  If the Program does not specify a version number of
+this License, you may choose any version ever published by the Free Software
+Foundation.
+
+  10. If you wish to incorporate parts of the Program into other free
+programs whose distribution conditions are different, write to the author
+to ask for permission.  For software which is copyrighted by the Free
+Software Foundation, write to the Free Software Foundation; we sometimes
+make exceptions for this.  Our decision will be guided by the two goals
+of preserving the free status of all derivatives of our free software and
+of promoting the sharing and reuse of software generally.
+
+			    NO WARRANTY
+
+  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
+FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
+OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
+PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
+OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
+TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
+PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
+REPAIR OR CORRECTION.
+
+  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
+WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
+REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
+INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
+OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
+TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
+YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
+PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGES.
+
+		     END OF TERMS AND CONDITIONS
+
+	    How to Apply These Terms to Your New Programs
+
+  If you develop a new program, and you want it to be of the greatest
+possible use to the public, the best way to achieve this is to make it
+free software which everyone can redistribute and change under these terms.
+
+  To do so, attach the following notices to the program.  It is safest
+to attach them to the start of each source file to most effectively
+convey the exclusion of warranty; and each file should have at least
+the "copyright" line and a pointer to where the full notice is found.
+
+    <one line to give the program's name and a brief idea of what it does.>
+    Copyright (C) <year>  <name of author>
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License
+    along with this program; if not, write to the Free Software
+    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this
+when it starts in an interactive mode:
+
+    Gnomovision version 69, Copyright (C) year  name of author
+    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
+    This is free software, and you are welcome to redistribute it
+    under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropriate
+parts of the General Public License.  Of course, the commands you use may
+be called something other than `show w' and `show c'; they could even be
+mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your
+school, if any, to sign a "copyright disclaimer" for the program, if
+necessary.  Here is a sample; alter the names:
+
+  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
+  `Gnomovision' (which makes passes at compilers) written by James Hacker.
+
+  <signature of Ty Coon>, 1 April 1989
+  Ty Coon, President of Vice
+
+This General Public License does not permit incorporating your program into
+proprietary programs.  If your program is a subroutine library, you may
+consider it more useful to permit linking proprietary applications with the
+library.  If this is what you want to do, use the GNU Library General
+Public License instead of this License.
diff --git a/matchbox/client-types/mb-wm-client-app.c b/matchbox/client-types/mb-wm-client-app.c
index 3aa9d2e..f2b6ef0 100644
--- a/matchbox/client-types/mb-wm-client-app.c
+++ b/matchbox/client-types/mb-wm-client-app.c
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
 #include "mb-wm-client-app.h"
 
 #include "mb-wm-theme.h"
diff --git a/matchbox/client-types/mb-wm-client-app.h b/matchbox/client-types/mb-wm-client-app.h
index 935a99c..4181e97 100644
--- a/matchbox/client-types/mb-wm-client-app.h
+++ b/matchbox/client-types/mb-wm-client-app.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-desktop.c b/matchbox/client-types/mb-wm-client-desktop.c
index 81ce628..1a528ee 100644
--- a/matchbox/client-types/mb-wm-client-desktop.c
+++ b/matchbox/client-types/mb-wm-client-desktop.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-client-desktop.h"
 #include "mb-wm-theme.h"
 
@@ -193,4 +194,3 @@ mb_wm_client_desktop_new (MBWindowManager *wm, MBWMClientWindow *win)
 
   return client;
 }
-
diff --git a/matchbox/client-types/mb-wm-client-desktop.h b/matchbox/client-types/mb-wm-client-desktop.h
index 128c450..55b1d6c 100644
--- a/matchbox/client-types/mb-wm-client-desktop.h
+++ b/matchbox/client-types/mb-wm-client-desktop.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-dialog.c b/matchbox/client-types/mb-wm-client-dialog.c
index e4bcdfb..7645899 100644
--- a/matchbox/client-types/mb-wm-client-dialog.c
+++ b/matchbox/client-types/mb-wm-client-dialog.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-client-dialog.h"
 
 #include "mb-wm-theme.h"
@@ -356,4 +357,3 @@ mb_wm_client_dialog_new (MBWindowManager *wm, MBWMClientWindow *win)
 
   return client;
 }
-
diff --git a/matchbox/client-types/mb-wm-client-dialog.h b/matchbox/client-types/mb-wm-client-dialog.h
index fd0eee3..3d9b283 100644
--- a/matchbox/client-types/mb-wm-client-dialog.h
+++ b/matchbox/client-types/mb-wm-client-dialog.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-input.c b/matchbox/client-types/mb-wm-client-input.c
index 3a63d40..d72e23b 100644
--- a/matchbox/client-types/mb-wm-client-input.c
+++ b/matchbox/client-types/mb-wm-client-input.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-client-input.h"
 
 static void
@@ -181,4 +182,3 @@ mb_wm_client_input_detransitise (MBWindowManagerClient *client)
 				     MBWMClientReqGeomForced);
     }
 }
-
diff --git a/matchbox/client-types/mb-wm-client-input.h b/matchbox/client-types/mb-wm-client-input.h
index 05ffabd..5fbe429 100644
--- a/matchbox/client-types/mb-wm-client-input.h
+++ b/matchbox/client-types/mb-wm-client-input.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-menu.c b/matchbox/client-types/mb-wm-client-menu.c
index b68f771..2e51c58 100644
--- a/matchbox/client-types/mb-wm-client-menu.c
+++ b/matchbox/client-types/mb-wm-client-menu.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-client-menu.h"
 
 #include "mb-wm-theme.h"
@@ -153,4 +154,3 @@ mb_wm_client_menu_new (MBWindowManager *wm, MBWMClientWindow *win)
 
   return client;
 }
-
diff --git a/matchbox/client-types/mb-wm-client-menu.h b/matchbox/client-types/mb-wm-client-menu.h
index 4908736..93b8719 100644
--- a/matchbox/client-types/mb-wm-client-menu.h
+++ b/matchbox/client-types/mb-wm-client-menu.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-note.c b/matchbox/client-types/mb-wm-client-note.c
index d0bb770..65c861c 100644
--- a/matchbox/client-types/mb-wm-client-note.c
+++ b/matchbox/client-types/mb-wm-client-note.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
@@ -150,4 +142,3 @@ mb_wm_client_note_new (MBWindowManager *wm, MBWMClientWindow *win)
 
   return client;
 }
-
diff --git a/matchbox/client-types/mb-wm-client-note.h b/matchbox/client-types/mb-wm-client-note.h
index 3a7d5ba..1a67ebe 100644
--- a/matchbox/client-types/mb-wm-client-note.h
+++ b/matchbox/client-types/mb-wm-client-note.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-override.c b/matchbox/client-types/mb-wm-client-override.c
index 238ce73..f516023 100644
--- a/matchbox/client-types/mb-wm-client-override.c
+++ b/matchbox/client-types/mb-wm-client-override.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
@@ -121,4 +113,3 @@ mb_wm_client_override_new (MBWindowManager *wm, MBWMClientWindow *win)
 
   return client;
 }
-
diff --git a/matchbox/client-types/mb-wm-client-override.h b/matchbox/client-types/mb-wm-client-override.h
index 7bf896a..fe2919d 100644
--- a/matchbox/client-types/mb-wm-client-override.h
+++ b/matchbox/client-types/mb-wm-client-override.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/client-types/mb-wm-client-panel.c b/matchbox/client-types/mb-wm-client-panel.c
index c915d6b..2031000 100644
--- a/matchbox/client-types/mb-wm-client-panel.c
+++ b/matchbox/client-types/mb-wm-client-panel.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-client-panel.h"
 #include "mb-wm-theme.h"
 
diff --git a/matchbox/client-types/mb-wm-client-panel.h b/matchbox/client-types/mb-wm-client-panel.h
index e0b7d77..65d21d0 100644
--- a/matchbox/client-types/mb-wm-client-panel.h
+++ b/matchbox/client-types/mb-wm-client-panel.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.c b/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.c
index 21d728f..1610afc 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.c
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2008 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.h b/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.h
index f67f46c..8865046 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.h
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr-clutter.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2008 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.c b/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.c
index fccb0b0..7b2e382 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.c
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.c
@@ -7,15 +7,7 @@
  *
  *  Copyright (c) 2002, 2004, 2007, 2008 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.h b/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.h
index 8e09fd2..4a5576b 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.h
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr-xrender.h
@@ -7,15 +7,7 @@
  *
  *  Copyright (c) 2002, 2004, 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr.c b/matchbox/comp-mgr/mb-wm-comp-mgr.c
index 160303f..7ec8dd8 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr.c
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2002, 2004, 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/comp-mgr/mb-wm-comp-mgr.h b/matchbox/comp-mgr/mb-wm-comp-mgr.h
index 35ac83d..24b11b6 100644
--- a/matchbox/comp-mgr/mb-wm-comp-mgr.h
+++ b/matchbox/comp-mgr/mb-wm-comp-mgr.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2002, 2004, 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-window-manager.c b/matchbox/core/mb-window-manager.c
index f6c2232..0a78bf6 100644
--- a/matchbox/core/mb-window-manager.c
+++ b/matchbox/core/mb-window-manager.c
@@ -7,15 +7,7 @@
  *
  *  Copyright (c) 2005, 2007, 2008 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 #include "mb-wm.h"
diff --git a/matchbox/core/mb-window-manager.h b/matchbox/core/mb-window-manager.h
index 3e83532..cc4d5f8 100644
--- a/matchbox/core/mb-window-manager.h
+++ b/matchbox/core/mb-window-manager.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005, 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-atoms.c b/matchbox/core/mb-wm-atoms.c
index 5d7e805..7cf69dc 100644
--- a/matchbox/core/mb-wm-atoms.c
+++ b/matchbox/core/mb-wm-atoms.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm.h"
 
 void
diff --git a/matchbox/core/mb-wm-atoms.h b/matchbox/core/mb-wm-atoms.h
index ef06083..a5aab5d 100644
--- a/matchbox/core/mb-wm-atoms.h
+++ b/matchbox/core/mb-wm-atoms.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client-base.c b/matchbox/core/mb-wm-client-base.c
index 6460b22..8c4527d 100644
--- a/matchbox/core/mb-wm-client-base.c
+++ b/matchbox/core/mb-wm-client-base.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client-base.h b/matchbox/core/mb-wm-client-base.h
index edc8008..ea1f1b7 100644
--- a/matchbox/core/mb-wm-client-base.h
+++ b/matchbox/core/mb-wm-client-base.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client-window.c b/matchbox/core/mb-wm-client-window.c
index 19aa703..4be1c1d 100644
--- a/matchbox/core/mb-wm-client-window.c
+++ b/matchbox/core/mb-wm-client-window.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client-window.h b/matchbox/core/mb-wm-client-window.h
index 287f881..1b5c050 100644
--- a/matchbox/core/mb-wm-client-window.h
+++ b/matchbox/core/mb-wm-client-window.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client.c b/matchbox/core/mb-wm-client.c
index f88a8d8..c71a389 100644
--- a/matchbox/core/mb-wm-client.c
+++ b/matchbox/core/mb-wm-client.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-client.h b/matchbox/core/mb-wm-client.h
index 8127b07..7e437ee 100644
--- a/matchbox/core/mb-wm-client.h
+++ b/matchbox/core/mb-wm-client.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-debug.c b/matchbox/core/mb-wm-debug.c
index 75d6e63..f2809a5 100644
--- a/matchbox/core/mb-wm-debug.c
+++ b/matchbox/core/mb-wm-debug.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-debug.h b/matchbox/core/mb-wm-debug.h
index 4c10be4..490dda0 100644
--- a/matchbox/core/mb-wm-debug.h
+++ b/matchbox/core/mb-wm-debug.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-decor.c b/matchbox/core/mb-wm-decor.c
index f4f171b..c2694fb 100644
--- a/matchbox/core/mb-wm-decor.c
+++ b/matchbox/core/mb-wm-decor.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-decor.h b/matchbox/core/mb-wm-decor.h
index 6adeadf..df3571f 100644
--- a/matchbox/core/mb-wm-decor.h
+++ b/matchbox/core/mb-wm-decor.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-keys.c b/matchbox/core/mb-wm-keys.c
index 7c32105..27398cf 100644
--- a/matchbox/core/mb-wm-keys.c
+++ b/matchbox/core/mb-wm-keys.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm.h"
 #include <ctype.h> 		/* isalpha etc */
 
diff --git a/matchbox/core/mb-wm-keys.h b/matchbox/core/mb-wm-keys.h
index af4dc02..0b72832 100644
--- a/matchbox/core/mb-wm-keys.h
+++ b/matchbox/core/mb-wm-keys.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-layout.c b/matchbox/core/mb-wm-layout.c
index 793276c..a2347ab 100644
--- a/matchbox/core/mb-wm-layout.c
+++ b/matchbox/core/mb-wm-layout.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm.h"
 #include "mb-wm-client-input.h"
 
diff --git a/matchbox/core/mb-wm-layout.h b/matchbox/core/mb-wm-layout.h
index 7ee61d6..51aaea5 100644
--- a/matchbox/core/mb-wm-layout.h
+++ b/matchbox/core/mb-wm-layout.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-macros.h b/matchbox/core/mb-wm-macros.h
index 5c8ab4b..c97caab 100644
--- a/matchbox/core/mb-wm-macros.h
+++ b/matchbox/core/mb-wm-macros.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-main-context.c b/matchbox/core/mb-wm-main-context.c
index 71d5d6c..f735f2e 100644
--- a/matchbox/core/mb-wm-main-context.c
+++ b/matchbox/core/mb-wm-main-context.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm-main-context.h"
 
 #include <sys/time.h>
diff --git a/matchbox/core/mb-wm-main-context.h b/matchbox/core/mb-wm-main-context.h
index d93574c..673a468 100644
--- a/matchbox/core/mb-wm-main-context.h
+++ b/matchbox/core/mb-wm-main-context.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-object-props.h b/matchbox/core/mb-wm-object-props.h
index bc1f753..e547058 100644
--- a/matchbox/core/mb-wm-object-props.h
+++ b/matchbox/core/mb-wm-object-props.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 
 #ifndef _HAVE_MB_OBJECT_PROPS_H
 #define _HAVE_MB_OBJECT_PROPS_H
diff --git a/matchbox/core/mb-wm-object.c b/matchbox/core/mb-wm-object.c
index 09a6ad4..32607f9 100644
--- a/matchbox/core/mb-wm-object.c
+++ b/matchbox/core/mb-wm-object.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-object.h b/matchbox/core/mb-wm-object.h
index 2df9ea5..eb49b52 100644
--- a/matchbox/core/mb-wm-object.h
+++ b/matchbox/core/mb-wm-object.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-props.c b/matchbox/core/mb-wm-props.c
index 01a74bb..340344b 100644
--- a/matchbox/core/mb-wm-props.c
+++ b/matchbox/core/mb-wm-props.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm.h"
 #include "xas.h"
 
diff --git a/matchbox/core/mb-wm-props.h b/matchbox/core/mb-wm-props.h
index 07418ca..05d9bfb 100644
--- a/matchbox/core/mb-wm-props.h
+++ b/matchbox/core/mb-wm-props.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-root-window.c b/matchbox/core/mb-wm-root-window.c
index 40e2732..46a65dc 100644
--- a/matchbox/core/mb-wm-root-window.c
+++ b/matchbox/core/mb-wm-root-window.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-root-window.h b/matchbox/core/mb-wm-root-window.h
index 7d3cdbe..bc914a0 100644
--- a/matchbox/core/mb-wm-root-window.h
+++ b/matchbox/core/mb-wm-root-window.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2007 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-stack.c b/matchbox/core/mb-wm-stack.c
index f75b228..b864a6f 100644
--- a/matchbox/core/mb-wm-stack.c
+++ b/matchbox/core/mb-wm-stack.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-stack.h b/matchbox/core/mb-wm-stack.h
index 58afc45..147144d 100644
--- a/matchbox/core/mb-wm-stack.h
+++ b/matchbox/core/mb-wm-stack.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-types.h b/matchbox/core/mb-wm-types.h
index 249c875..a3e93b4 100644
--- a/matchbox/core/mb-wm-types.h
+++ b/matchbox/core/mb-wm-types.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/mb-wm-util.c b/matchbox/core/mb-wm-util.c
index 792cb81..b153e32 100644
--- a/matchbox/core/mb-wm-util.c
+++ b/matchbox/core/mb-wm-util.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include "mb-wm.h"
 #include <stdarg.h>
 
diff --git a/matchbox/core/mb-wm-util.h b/matchbox/core/mb-wm-util.h
index 07e193d..56bcede 100644
--- a/matchbox/core/mb-wm-util.h
+++ b/matchbox/core/mb-wm-util.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #ifndef _MB_HAVE_UTIL_H
 #define _MB_HAVE_UTIL_H
 
diff --git a/matchbox/core/mb-wm.h b/matchbox/core/mb-wm.h
index 0edbb04..ec51a49 100644
--- a/matchbox/core/mb-wm.h
+++ b/matchbox/core/mb-wm.h
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 
diff --git a/matchbox/core/xas.c b/matchbox/core/xas.c
index 47329dc..fa7be07 100644
--- a/matchbox/core/xas.c
+++ b/matchbox/core/xas.c
@@ -7,6 +7,8 @@
  * Copyright (C) 2002 Havoc Pennington
  * Copyright (C) 1986, 1998  The Open Group
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Permission to use, copy, modify, distribute, and sell this software
  * and its documentation for any purpose is hereby granted without
  * fee, provided that the above copyright notice appear in all copies
diff --git a/matchbox/core/xas.h b/matchbox/core/xas.h
index e9b7ca8..8d27cfd 100644
--- a/matchbox/core/xas.h
+++ b/matchbox/core/xas.h
@@ -7,6 +7,8 @@
  * Copyright (C) 2002 Havoc Pennington
  * Copyright (C) 1986, 1998  The Open Group
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Permission to use, copy, modify, distribute, and sell this software
  * and its documentation for any purpose is hereby granted without
  * fee, provided that the above copyright notice appear in all copies
diff --git a/util/matchbox-remote.c b/util/matchbox-remote.c
index c83926e..78f1c6f 100644
--- a/util/matchbox-remote.c
+++ b/util/matchbox-remote.c
@@ -6,15 +6,7 @@
  *
  *  Copyright (c) 2008 OpenedHand Ltd - http://o-hand.com
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ * SPDX-License-Identifier: GPL-2.0-or-later
  *
  */
 #define _GNU_SOURCE
@@ -336,4 +328,3 @@ int main(int argc, char* argv[])
 
   return 0;
 }
-
-- 
2.27.0

