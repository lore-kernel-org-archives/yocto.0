Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C71C54EBC
	for <webhook@archiver.kernel.org>; Thu, 12 Jan 2023 13:27:08 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.54919.1673530024603515795
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 05:27:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112 header.b=l9gOBRQE;
 spf=pass (domain: baylibre.com, ip: 209.85.221.50, mailfrom: pidge@baylibre.com)
Received: by mail-wr1-f50.google.com with SMTP id r2so18074146wrv.7
        for <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 05:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dTC19vMZUlixP7nR+OB1DztD3vtcN6umFPUxjo0qKzs=;
        b=l9gOBRQEdk+g9ptFQcnUzqvXFIeGLVNrSubCOvNsMDyWZtIbEioRYEpvKInzPLlXQn
         /U76wdN3QLNB4c/fnHavTDt5UDTiK4xcuRP+HTznTH0OFXH5g33mmevpgLH6e5wXd3Cg
         pwdpunHB1tBbyF30gCLn1hnmgIrt5wQMW/Yvx2Ho5/mG2/cr3xRY6UJ9smjkvDjyMYT3
         T/94M3zG5HYMaXpNP6sXwHZM2oDjcEG2ale3KhVBtSd9czAu+oBs6bQhqdi1c6WEovYd
         RBk6GtjzHlcD8asLFFf0uyCnvM2uGhZpE6IzzZXGaKQgXV4TeylPYLKGOMno5ffOfQKo
         9f3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dTC19vMZUlixP7nR+OB1DztD3vtcN6umFPUxjo0qKzs=;
        b=z/uboacKqrJR1SiXYyJJPWgRKGRH9XQS1K/irhk2e+n1gEguHwIsbdhSqDlZKywcE8
         rVITUludNPs4BWpUyTr951MW+z1q97oF3k5iK7rEwInrie9PqIVYaWmVjCN97JT6QLcZ
         8lim91GZpBXQ+g2utBPY9MAaN4ur20rFFSM+yJAhS9oHDt6Gfoo3ujdqCE8QB9VKYK8P
         CbrQw9xoGeaG0rsa2BqAqriaAupXm2E66bgM5smdzdawIH3Biu1nkD9ZjeLzXXwOUAmC
         VWAgWgH8a4pq/m9HG0ON4h7gsqrRK3uPcGbcZUQD2GIHsG70HX+6ALfV29Y+gqbht6yh
         XOfQ==
X-Gm-Message-State: AFqh2kq/3CFgwjpam2X+lDR4Q3bATh11goe7mvuEmfvl1abA7eDgT1om
	fBKpvGjvXmdsBIUwm52cH2muwNao6GYBHRQU
X-Google-Smtp-Source: AMrXdXvgmBZzsEMedf1iQ2zp8f+9PqYF+hCEXhvsHEbkAg6GibF7hxDWCQYd6R069RUPZaQfVclKvQ==
X-Received: by 2002:a5d:42c7:0:b0:2bc:7f49:d276 with SMTP id t7-20020a5d42c7000000b002bc7f49d276mr8172559wrr.46.1673530020905;
        Thu, 12 Jan 2023 05:27:00 -0800 (PST)
Received: from tapa.fritz.box ([194.110.145.185])
        by smtp.gmail.com with ESMTPSA id u5-20020adfdb85000000b002ba2646fd30sm19303563wri.36.2023.01.12.05.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:27:00 -0800 (PST)
From: =?UTF-8?q?Eil=C3=ADs=20=27pidge=27=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Eil=C3=ADs=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
Subject: [CROPS][PATCH] crops: Archive crops repository
Date: Thu, 12 Jan 2023 13:26:57 +0000
Message-Id: <20230112132657.1618080-1-pidge@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 13:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58970

From: Eilís Ní Fhlannagáin <pidge@baylibre.com>

This repository is depreciated and is no longer maintained so we should
archive it and make note that development for crops is currently at
https://github.com/crops

Signed-off-by: Eilís Ní Fhlannagáin <pidge@baylibre.com>
---
 .dockerignore                          |   1 -
 .gitignore                             |   9 -
 .travis.yml                            |  44 ----
 LICENSE                                | 339 ------------------------
 Makefile                               |  15 --
 README.md                              | 154 +----------
 TODO                                   |  10 -
 ceed/Makefile                          |  42 ---
 ceed/ceed.c                            |  70 -----
 ceed/ceed_api.c                        | 157 -----------
 ceed/ceed_api.h                        |  22 --
 codi/Makefile                          |  19 --
 codi/codi.c                            | 126 ---------
 codi/codi_api.c                        | 134 ----------
 codi/codi_api.h                        |  25 --
 codi/codi_db.c                         | 137 ----------
 codi/codi_db.h                         |  28 --
 codi/codi_launcher.c                   | 146 ----------
 codi/codi_launcher.h                   |  58 ----
 codi/codi_list.c                       | 100 -------
 codi/codi_list.h                       |  33 ---
 confs/ostro/ostro.conf                 |  16 --
 confs/ostro/ostro.layers               |   0
 dockerfiles/Dockerfile.ceed.deps       |  16 --
 dockerfiles/Dockerfile.ceed.linux      |  19 --
 dockerfiles/Dockerfile.ceed.win        |  19 --
 dockerfiles/Dockerfile.codi            |  34 ---
 dockerfiles/Dockerfile.codi.deps       |  31 ---
 dockerfiles/Dockerfile.ostro           |  24 --
 dockerfiles/Dockerfile.ostro.deps      |  33 ---
 dockerfiles/Dockerfile.toolchain       |  49 ----
 dockerfiles/Dockerfile.toolchain.deps  |  18 --
 dockerfiles/Dockerfile.zephyr          |  59 -----
 dockerfiles/Dockerfile.zephyr.deps     |  24 --
 globals.c                              |  47 ----
 globals.h                              |  69 -----
 helpers/runbitbake.py                  | 148 -----------
 helpers/startOstroScript.sh            |  42 ---
 installers/ostro-installer.sh          | 108 --------
 installers/zephyr-installer.sh         | 225 ----------------
 scripts/bitbake.ostro                  |  12 -
 scripts/build_ceed                     |  11 -
 scripts/build_containers               |  73 -----
 scripts/build_containers.ostro         |  35 ---
 scripts/gdb.zephyr                     |   8 -
 scripts/make.zephyr                    |  21 --
 scripts/run_containers                 |  59 -----
 scripts/stop_containers                |  33 ---
 tests.py                               |  32 ---
 tests/functional/test_ceed_basic.py    | 104 --------
 tests/functional/test_ceed_commands.py | 121 ---------
 tests/functional/test_zephyr_build.py  | 101 -------
 tests/functional/utils/__init__.py     |   0
 tests/functional/utils/ceedutil.py     |  20 --
 tests/unit/test_basic.py               |  19 --
 tests/unit/test_runbitbake.py          | 130 ---------
 turff/Makefile                         |  19 --
 turff/turff.c                          | 128 ---------
 turff/turff_api.c                      | 255 ------------------
 turff/turff_api.h                      |  24 --
 turff/turff_launcher                   |  43 ---
 utils.c                                | 351 -------------------------
 utils.h                                |  30 ---
 63 files changed, 5 insertions(+), 4274 deletions(-)
 delete mode 100644 .dockerignore
 delete mode 100644 .gitignore
 delete mode 100644 .travis.yml
 delete mode 100644 LICENSE
 delete mode 100755 Makefile
 mode change 100755 => 100644 README.md
 delete mode 100755 TODO
 delete mode 100755 ceed/Makefile
 delete mode 100755 ceed/ceed.c
 delete mode 100755 ceed/ceed_api.c
 delete mode 100755 ceed/ceed_api.h
 delete mode 100644 codi/Makefile
 delete mode 100644 codi/codi.c
 delete mode 100644 codi/codi_api.c
 delete mode 100644 codi/codi_api.h
 delete mode 100644 codi/codi_db.c
 delete mode 100644 codi/codi_db.h
 delete mode 100644 codi/codi_launcher.c
 delete mode 100644 codi/codi_launcher.h
 delete mode 100644 codi/codi_list.c
 delete mode 100644 codi/codi_list.h
 delete mode 100644 confs/ostro/ostro.conf
 delete mode 100644 confs/ostro/ostro.layers
 delete mode 100644 dockerfiles/Dockerfile.ceed.deps
 delete mode 100644 dockerfiles/Dockerfile.ceed.linux
 delete mode 100644 dockerfiles/Dockerfile.ceed.win
 delete mode 100644 dockerfiles/Dockerfile.codi
 delete mode 100644 dockerfiles/Dockerfile.codi.deps
 delete mode 100644 dockerfiles/Dockerfile.ostro
 delete mode 100644 dockerfiles/Dockerfile.ostro.deps
 delete mode 100644 dockerfiles/Dockerfile.toolchain
 delete mode 100644 dockerfiles/Dockerfile.toolchain.deps
 delete mode 100644 dockerfiles/Dockerfile.zephyr
 delete mode 100644 dockerfiles/Dockerfile.zephyr.deps
 delete mode 100755 globals.c
 delete mode 100755 globals.h
 delete mode 100644 helpers/runbitbake.py
 delete mode 100644 helpers/startOstroScript.sh
 delete mode 100644 installers/ostro-installer.sh
 delete mode 100755 installers/zephyr-installer.sh
 delete mode 100755 scripts/bitbake.ostro
 delete mode 100755 scripts/build_ceed
 delete mode 100755 scripts/build_containers
 delete mode 100755 scripts/build_containers.ostro
 delete mode 100644 scripts/gdb.zephyr
 delete mode 100755 scripts/make.zephyr
 delete mode 100755 scripts/run_containers
 delete mode 100755 scripts/stop_containers
 delete mode 100644 tests.py
 delete mode 100644 tests/functional/test_ceed_basic.py
 delete mode 100644 tests/functional/test_ceed_commands.py
 delete mode 100644 tests/functional/test_zephyr_build.py
 delete mode 100644 tests/functional/utils/__init__.py
 delete mode 100644 tests/functional/utils/ceedutil.py
 delete mode 100644 tests/unit/test_basic.py
 delete mode 100644 tests/unit/test_runbitbake.py
 delete mode 100755 turff/Makefile
 delete mode 100755 turff/turff.c
 delete mode 100755 turff/turff_api.c
 delete mode 100755 turff/turff_api.h
 delete mode 100755 turff/turff_launcher
 delete mode 100755 utils.c
 delete mode 100755 utils.h

diff --git a/.dockerignore b/.dockerignore
deleted file mode 100644
index 191381e..0000000
--- a/.dockerignore
+++ /dev/null
@@ -1 +0,0 @@
-.git
\ No newline at end of file
diff --git a/.gitignore b/.gitignore
deleted file mode 100644
index bf35249..0000000
--- a/.gitignore
+++ /dev/null
@@ -1,9 +0,0 @@
-*~
-*.o
-ceed/ceed
-codi/codi
-turff/turff
-outdir
-*.pyc
-*#
-.#*
diff --git a/.travis.yml b/.travis.yml
deleted file mode 100644
index 72bda2e..0000000
--- a/.travis.yml
+++ /dev/null
@@ -1,44 +0,0 @@
-language: python
-python:
-  - "2.7"
-
-
-sudo: required
-services:
-  - docker
-
-services:
-    - docker
-
-env:
-    global:
-        - DOCKER_VERSION=1.10.1-0~trusty
-
-
-compiler:
-  - gcc
-  - clang
-
-before_install:
-  # list docker-engine versions
-  - apt-cache madison docker-engine
-
-  # upgrade docker-engine to specific version
-  - sudo apt-get -o Dpkg::Options::="--force-confnew" install -y docker-engine=${DOCKER_VERSION}
-
-
-script:
-  - ./scripts/build_ceed
-  - docker version
-  - ./scripts/build_containers
-  - docker images | grep codi | grep -q test
-  - docker images | grep toolchain | grep -q test
-  - docker images | grep zephyr | grep -q test
-  - ./scripts/run_containers
-  - python tests.py
-
-notifications:
-  email:
-    recipients:
-    on_success: change
-    on_failure: always
diff --git a/LICENSE b/LICENSE
deleted file mode 100644
index d159169..0000000
--- a/LICENSE
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
diff --git a/Makefile b/Makefile
deleted file mode 100755
index 97dabae..0000000
--- a/Makefile
+++ /dev/null
@@ -1,15 +0,0 @@
-SUBDIRS = turff ceed codi
-
-.PHONY: subdirs $(SUBDIRS)
-
-all: TARGET = all
-
-clean: TARGET = clean
-
-debug: TARGET = debug
-
-all clean debug: subdirs $(SUBDIRS)
-
-$(SUBDIRS):
-	$(MAKE) -C $@ $(TARGET)
-
diff --git a/README.md b/README.md
old mode 100755
new mode 100644
index 555f7e2..ddd9cba
--- a/README.md
+++ b/README.md
@@ -1,153 +1,9 @@
-## What is CROPS (CROssPlatformS)?
+This repository is depreciated and is no longer maintained. 
 
-CROPS is an open source, cross-platform development framework that leverages Docker containers to provide an easily managed, extensible environment which allows developers to build binaries for a variety of architectures of Windows, Linux and Mac OS X hosts.
+Current CROPS development occurs at:
 
-### CROPS components
-* **CEED** - runs on the development host and exposes an API to Integrated
-Development Environments (IDEs) or CLI callers
-* **TURFF** - runs in a container and services requests from CODI
-* **CODI** - COntainer DIspatcher runs in a container and keeps track of all available TURFF instances
-in its internal table. CODI also redirects CEED requests to the corresponding TURFF instance
+https://github.com/crops
 
-## USING CROPS FOR [ZEPHYR OS](https://www.zephyrproject.org/) DEVELOPMENT
+The last functional commit for this repo was:
 
-Please refer to the [GitHub Wiki](https://github.com/todorez/crops/wiki)
-
-## USING CROPS WITH YOUR OWN TOOLCHAIN
-
- 1. **Install [Docker (Linux)](https://docs.docker.com/linux/step_one/) or [Docker Toolbox (Windows/Mac)](https://www.docker.com/products/docker-toolbox)**
-
- 2. **Build CODI dependencies container**
-
-  Execute the following command from within the dockerfiles directory:
-
-  ```
-  docker build -t crops/codi:deps -f Dockerfile.codi.deps .
-  ```
- 3. **Build CODI container**
-
-  Execute the following command from within the dockerfiles directory:
-
-  ```
-  docker build -t crops/codi:version -f Dockerfile.codi ../
-  ```
-
- 4. **Build toolchain dependencies container**
-
-  Execute the following command from within the dockerfiles directory:
-
-  ```
-  docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .
-  ```
-
- 5. **Open the Dockerfile.toolchain file and provide the URL to your toolchain**
-
-  Example:
-
-  ```
-  ENV TOOLCHAIN_NAME poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
-  ENV TOOLCHAIN_PATH http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_64/
-  ```
-
- 6. **Build your toolchain container**
-
-  ```
-  docker build -t crops/toolchain:my_toolchain -f Dockerfile.toolchain ../
-  ```
-
- 7. **Start CODI container**
-
-  ```
-  docker run -d --name codi-test -v /var/run/docker.sock:/var/run/docker.sock --net=host crops/codi:version
-  ```
-
- 8. **Start toolchain container**
-
-  ```
-  mkdir -p $HOME/crops-workspace && docker run -d --name crops-toolchain-my_toolchain -v $HOME/crops-workspace/:/crops/   --env TURFFID=crops-toolchain-my_toolchain --net=host crops/toolchain:my_toolchain
-  ```
-
- 9. **Run the Zephyr installer and answer "Yes" when prompted to install CEED. Answer "No" to all other questions**
-
-  ```
-  curl -kOs https://raw.githubusercontent.com/todorez/crops/master/installers/zephyr-installer.sh && source   ./zephyr-installer.sh
-  ```
-
- 10. **Place your project in the shared workspace**
-
-  Example:
-  ```
-  $HOME/crops-workspace/my_project/
-  ```
-
- 11. **Build your project**
-
-  Example:
-  ```
-  $HOME/.crops/ceed/ceed -d crops-toolchain-my_toolchain -g "make -C /crops/my_project/"
-  ```
- 12. **Share your toolchain with other developers by pushing it to Docker Hub**
-
-  Example:
-  ```
-  $docker push crops/toolchain:my_toolchain"
-  ```
-
-## CONTRIBUTING TO CROPS
-
-#### COMPILE CEED, TURFF AND CODI ON LINUX
-
-**Required Prerequisites**
-
-* **libsqlite3-dev** - "SQLite is a C library that implements an SQL database engine."
-* **libcurl4-openssl-dev (7.40 or later)** - "libcurl is an easy-to-use client-side URL transfer library, supporting DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, TELNET and TFTP."
-* **libjansson-dev** - "Jansson is a C library for encoding, decoding and manipulating JSON data."
-
-
-1. **Install Prerequisites On Debian / Ubuntu**
-
-  ```
-  apt-get install libsqlite3-dev libcurl4-openssl-dev libjansson-dev
-  ```
-
-2. **Compile**
-
-  * GCC
-
-  ```
-  CC=gcc make all
-  ```
-
-  * CLANG
-
-  ```
-  CC=clang make all
-  ```
-
-3. **Debug Compile**
-
-  * GCC
-
-  ```
-  CC=gcc make debug
-  ```
-
-  * CLANG
-
-  ```
-  CC=clang make debug
-  ```
-
-#### RUNNING A CLANG STATIC ANALYSYS
-
-1. **Run the static analyzer**
-
-  ```
-  scan-build -V make
-  ```
-
-2. **Point your browser at the following URL to view the static analysis results**
-
-  ```
-  http://127.0.0.1:8181
-  ```
+https://git.yoctoproject.org/crops/commit/?id=b719d15fe0e17e5ac05c440680ec3706bcd2cab5
diff --git a/TODO b/TODO
deleted file mode 100755
index 6014c97..0000000
--- a/TODO
+++ /dev/null
@@ -1,10 +0,0 @@
-* rewrite eclipse plugin for all platforms Windows, Linux, Mac
-* create Docker image installers for Windows/Linux/Mac
-* create container launchers
-* document installation/configuration/usage
-* document APIs
-* implement bitbake operations
-* fix all bugs.. :)
-
-
-
diff --git a/ceed/Makefile b/ceed/Makefile
deleted file mode 100755
index 58205ed..0000000
--- a/ceed/Makefile
+++ /dev/null
@@ -1,42 +0,0 @@
-CFLAGS =-g -I. -I../
-LDFLAGS =-lm
-
-ifeq ($(CC),x86_64-w64-mingw32-gcc)
-LDFLAGS += -lws2_32
-endif
-
-DEPS = ceed_api.h ../globals.h ../utils.h
-OBJ = ceed.o ceed_api.o ../utils.o ../globals.o
-
-all: ceed
-
-debug: DFLAGS = -DDBG
-debug: clean ceed
-
-%.o: %.c $(DEPS)
-	$(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
-
-ceed: $(OBJ)
-	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
-
-.PHONY: clean
-clean:
-	rm -f $(OBJ) ceed *.exe
-
-windows:
-	docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-	docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-	cd ../dockerfiles; docker build -t crops/ceed:windows -f Dockerfile.ceed.win ../
-	docker run --name=ceed-windows crops/ceed:windows; mkdir -p ../outdir
-	docker cp ceed-windows:/usr/local/crops/ceed/ceed ../outdir/ceed.exe
-	docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-	docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-
-linux:
-	docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-	docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
-	cd ../dockerfiles; docker build -t crops/ceed:linux -f Dockerfile.ceed.linux ../
-	docker run --name=ceed-linux crops/ceed:linux; mkdir -p ../outdir
-	docker cp ceed-linux:/usr/local/crops/ceed/ceed ../outdir/ceed
-	docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-	docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
diff --git a/ceed/ceed.c b/ceed/ceed.c
deleted file mode 100755
index f0fa0cc..0000000
--- a/ceed/ceed.c
+++ /dev/null
@@ -1,70 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include <stdlib.h>
-#include "globals.h"
-#include "ceed_api.h"
-#include "utils.h"
-
-extern char *ceed_ops[];
-
-int main(int argc, char *argv[]) {
-  int i, done, sock_fd;
-  char *turff_nodes[KEY_ARR_SZ];
-  struct addrinfo *addr_p;
-  void *ceed_out;
-
-  parse_ceed_params(argc, argv);
-
-  addr_p = connect_to_socket(ceed_ops[KEY('i')], ceed_ops[KEY('s')], &sock_fd);
-
-  if(addr_p == NULL) {
-    ERR("Could not connect to CODI\n");
-  } else {
-    INFO("Connected to CODI on %s port : %s\n",
-      ceed_ops[KEY('i')], ceed_ops[KEY('s')]);
-  }
-
-  INFO("Host Architecture : %s\n", ceed_ops[KEY('a')]);
-  send_args(sock_fd, ceed_ops);
-
-  if(ceed_ops[KEY('l')] == NULL) { /* this was a service request */
-    INFO(" ==========  CEED OUTPUT BEGIN  ==========\n");
-    ceed_out = calloc(1, BUFSIZ);
-    done = 0;
-
-    while(!done) {
-      memset(ceed_out, 0, BUFSIZ);
-      receive_data(sock_fd, ceed_out, BUFSIZ, 1, &done);
-    }
-    free(ceed_out);
-
-    INFO(" ==========  CEED OUTPUT END  ==========\n");
-  } else { /* this was nodes request, receive turff nodes */
-    do {
-      for(i = 0; i <  KEY_ARR_SZ; i++)
-        turff_nodes[i] = NULL;
-
-      receive_args(sock_fd, turff_nodes);
-      if(turff_nodes[KEY('e')] == NULL) {
-        INFO("TURFF Node ID: %s \n", turff_nodes[KEY('d')]);
-      }
-    }while (turff_nodes[KEY('e')] == NULL);
-  }
-
-  close(sock_fd);
-  return 0;
-}
diff --git a/ceed/ceed_api.c b/ceed/ceed_api.c
deleted file mode 100755
index 973c050..0000000
--- a/ceed/ceed_api.c
+++ /dev/null
@@ -1,157 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <ctype.h>
-
-char *ceed_ops[KEY_ARR_SZ];
-
-void print_ceed_usage(int argc, char *argv[]) {
-
-  printf("Usage: %s -p prj -i 192.168.99.100 -s 10000 -b\n", argv[0]);
-  printf("	-i CODI ip address [default: 127.0.0.1 (linux) or 192.168.99.100 (win/mac)]\n");
-  printf("	-s CODI listening port [default: 10000]\n");
-  printf("	-l list available build containers\n");
-  printf("	-d container_id. Send command to container_id\n");
-  printf("	-p prj_name [required]\n");
-  printf("	-b build project [NOTE: -b and -c are mutually exclusive]\n");
-  printf("	-c clean project [NOTE: -c and -b are mutually exclusive]\n");
-  printf("	-t autotools project [NOTE: -t and -k and -m are mutually exclusive]\n");
-  printf("	-k cmake project [NOTE: -k and -t and -m are mutually exclusive]\n");
-  printf("	-m target make makefile_target [NOTE: -m and -t and -k are mutually exclusive]\n");
-  printf("	-g gen_cmd execute generic command\n");
-  printf("	-r args generic command arguments\n");
-  printf("	-e env environment variables\n");
-  printf("	-h print this help menu\n");
-  printf("	-v show ceed version\n");
-  exit(EXIT_FAILURE);
-}
-
-void init_ceed_params(){
-#if defined(_WIN32) || defined(__CYGWIN__)
-  ceed_ops[KEY('a')] = "win";
-  ceed_ops[KEY('i')] = CODI_IP_VIRT;
-#elif __APPLE__
-  ceed_ops[KEY('a')] = "mac";
-  ceed_ops[KEY('i')] = CODI_IP_VIRT;
-#elif __linux
-  ceed_ops[KEY('a')] = "linux";
-  ceed_ops[KEY('i')] = CODI_IP_NATIVE;
-#endif
-  ceed_ops[KEY('p')] = NULL;
-  ceed_ops[KEY('s')] = CODI_PORT;
-  ceed_ops[KEY('v')] = VERSION;
-  ceed_ops[KEY('r')] = " ";
-  ceed_ops[KEY('z')] = CEED_NAME;
-}
-
-void parse_ceed_params(int argc, char *argv[]) {
-  int c, b_flg = 0, c_flg = 0, t_flg = 0, m_flg = 0, k_flg = 0;
-
-  init_ceed_params();
-
-  while((c = getopt(argc, argv, "hvltm:kbcp:i:s:g:r:d:")) != -1) {
-    switch (c) {
-    case 'h':
-      print_ceed_usage(argc, argv);
-      exit(EXIT_SUCCESS);
-      break;
-    case 'v':
-      INFO("ceed version : %s\n", VERSION);
-      exit(EXIT_SUCCESS);
-      break;
-    case 'p':
-      ceed_ops[KEY('p')] = optarg;
-      break;
-    case 'i':
-      ceed_ops[KEY('i')] = optarg;
-      break;
-    case 's':
-      ceed_ops[KEY('s')] = optarg;
-      break;
-    case 'g':
-      ceed_ops[KEY('g')] = optarg;
-      break;
-    case 'r':
-      ceed_ops[KEY('r')] = optarg;
-      break;
-    case 'd':
-      ceed_ops[KEY('d')] = optarg;
-      break;
-    case 'l':
-        asprintf(&ceed_ops[KEY('l')] , "set");
-      break;
-    case 'b':
-      if(c_flg) {
-        print_ceed_usage(argc, argv);
-      } else {
-        b_flg++;
-        asprintf(&ceed_ops[KEY('b')] , "set");
-      }
-      break;
-    case 'c':
-      if(b_flg) {
-        print_ceed_usage(argc, argv);
-      } else {
-        c_flg++;
-        asprintf(&ceed_ops[KEY('c')] , "set");
-      }
-      break;
-    case 't':
-      if(m_flg || k_flg) {
-        print_ceed_usage(argc, argv);
-      } else {
-        t_flg++;
-        asprintf(&ceed_ops[KEY('t')] , "set");
-      }
-      break;
-    case 'm':
-      if(t_flg || k_flg)
-        print_ceed_usage(argc, argv);
-      else {
-        m_flg++;
-        ceed_ops[KEY('m')] = optarg;
-      }
-      break;
-    case 'k':
-      if(t_flg || m_flg)
-        print_ceed_usage(argc, argv);
-      else {
-        k_flg++;
-        asprintf(&ceed_ops[KEY('k')] , "set");
-      }
-      break;
-    case '?':
-      if (optopt == 'p' || optopt == 'i' || optopt == 's' || optopt == 'm')
-        ERR("Option -%c requires an argument.\n", optopt);
-      else if (isprint(optopt))
-        ERR("Unknown option `-%c'.\n", optopt);
-      else
-        ERR("Unknown option character `\\x%x'.\n", optopt);
-    default:
-      print_ceed_usage(argc, argv);
-    }
-  }
-
-  if ((ceed_ops[KEY('l')] == NULL && ceed_ops[KEY('p')] == NULL && ceed_ops[KEY('g')] == NULL )
-    || (ceed_ops[KEY('i')] == NULL || ceed_ops[KEY('s')] == NULL)) {
-    print_ceed_usage(argc, argv);
-  }
-}
-
diff --git a/ceed/ceed_api.h b/ceed/ceed_api.h
deleted file mode 100755
index a66e6e6..0000000
--- a/ceed/ceed_api.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef CEED_API_H
-#define CEED_API_H
-
-void parse_ceed_params(int argc, char *argv[]);
-
-#endif
diff --git a/codi/Makefile b/codi/Makefile
deleted file mode 100644
index 0b8135c..0000000
--- a/codi/Makefile
+++ /dev/null
@@ -1,19 +0,0 @@
-CFLAGS=-g -I. -I../
-LDFLAGS=-lsqlite3 -lm -ljansson -lcurl -lpthread
-DEPS = ../globals.h ../utils.h codi_api.h codi_db.h codi_launcher.h codi_list.h
-OBJ = codi.o codi_db.o codi_list.o codi_launcher.o codi_api.o ../utils.o ../globals.o
-
-all: codi
-
-debug: DFLAGS = -DDBG
-debug: clean codi
-
-%.o: %.c $(DEPS)
-	$(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
-
-codi: $(OBJ)
-	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
-
-.PHONY: clean
-clean:
-	rm -rf $(OBJ) codi
diff --git a/codi/codi.c b/codi/codi.c
deleted file mode 100644
index e24a03c..0000000
--- a/codi/codi.c
+++ /dev/null
@@ -1,126 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdlib.h>
-#include <signal.h>
-#include <netdb.h>
-#include <arpa/inet.h>
-#include <pthread.h>
-#include "utils.h"
-#include "codi_db.h"
-#include "codi_api.h"
-#include "codi_list.h"
-#include "codi_launcher.h"
-
-extern char *codi_ops[];
-int codi_sock_fd;
-/*
-pthread_mutex_t lock;
-*/
-
-/*TODO - close sockets on CTRL+C. Get rid of this when running as a daemon */
-void close_sockets(int dummy) {
-  close(codi_sock_fd);
-  INFO("\nClosed CODI socket. Exiting!\n") ;
-  exit(0);
-}
-
-int main(int argc, char *argv[]) {
-  struct addrinfo *addr_p;
-  int i, cli_sock_fd;
-  const char *codi_port = (const char*) CODI_PORT;
-  turff_node *req_node = NULL;
-  char *cli_params[KEY_ARR_SZ], *ip, *docker_url, *tmp_str;
-  socklen_t cli_len;
-  struct sockaddr cli_addr;
-  struct sockaddr_in *cli_ip;
-
-  parse_codi_params(argc, argv);
-
-  for (i = 0; i <  KEY_ARR_SZ; i++)
-    cli_params[i] = NULL;
-
-  addr_p = bind_to_socket(NULL, codi_port, &codi_sock_fd);
-
-  if (addr_p == NULL) {
-    ERR("Could not bind CODI to socket\n");
-  } else {
-    INFO("CODI listening on port: %s\n", codi_port);
-
-  }
-
-  listen(codi_sock_fd,1);
-  cli_len = sizeof(cli_addr);
-
-  signal(SIGINT, close_sockets);
-
-  while(1) {
-    cli_sock_fd = accept(codi_sock_fd, &cli_addr, &cli_len);
-
-    if (cli_sock_fd < 0)
-      ERR("ERROR on accept");
-
-    free_params(cli_params);
-    receive_args(cli_sock_fd, cli_params);
-
-    /*turff registration*/
-    if (!strcmp(cli_params[KEY('z')], TURFF_NAME)) {
-      cli_ip = (struct sockaddr_in*) &cli_addr;
-      asprintf(&ip, "%s", inet_ntoa(cli_ip->sin_addr));
-      cli_params[KEY('c')] = ip;
-      db_insert_node(cli_params[KEY('n')], cli_params[KEY('c')],  cli_params[KEY('s')]);
-      INFO("\nToolchain registration received: %s : %s : %s \n", cli_params[KEY('n')],
-      cli_params[KEY('c')], cli_params[KEY('s')]) ;
-    } else if (!strcmp(cli_params[KEY('z')], CEED_NAME) && (cli_params[KEY('l')] != NULL )) {
-      /* ceed request for available toolchains */
-      return_turff_nodes(cli_sock_fd);
-    } else if (!strcmp(cli_params[KEY('z')], CEED_NAME) && (cli_params[KEY('d')] != NULL )) {
-      /* must be a command from ceed*/
-      req_node = find_turff_node(cli_params[KEY('d')]);
-      if (req_node != NULL) {
-
-        /* check if docker engine is listening on a unix socket or tcp*/
-        if (codi_ops[KEY('i')] == NULL || codi_ops[KEY('p')] == NULL) {
-          asprintf(&docker_url, "%s", codi_ops[KEY('u')]);
-        } else {
-          asprintf(&docker_url, "%s:%s", codi_ops[KEY('i')], codi_ops[KEY('p')]);
-        }
-
-        if (is_container_running(docker_url, cli_params[KEY('d')])) {
-          process_ceed_cmd(req_node, cli_sock_fd, cli_params);
-        } else {
-          asprintf(&tmp_str, "Container %s is not running\n%s",
-            cli_params[KEY('d')], TURFF_EOM);
-          send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
-          free(tmp_str);
-        }
-        free(docker_url);
-      } else {
-        asprintf(&tmp_str, "Container %s not found in database\n%s",
-          cli_params[KEY('d')], TURFF_EOM);
-        send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
-        free(tmp_str);
-      }
-    } else {
-      asprintf(&tmp_str, "Invalid command sent to CODI\n%s", TURFF_EOM);
-      send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
-      free(tmp_str);
-    }
-
-    free_params(cli_params);
-  }
-}
diff --git a/codi/codi_api.c b/codi/codi_api.c
deleted file mode 100644
index b9eff56..0000000
--- a/codi/codi_api.c
+++ /dev/null
@@ -1,134 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdlib.h>
-#include <ctype.h>
-#include "utils.h"
-#include "codi_api.h"
-#include "codi_list.h"
-#include "codi_launcher.h"
-
-char *codi_ops[KEY_ARR_SZ];
-
-void print_codi_usage(int argc, char *argv[])
-{
-  printf("Usage: %s \n", argv[0]);
-  printf(" -s port number on which CODI is listening [default: 10000]\n");
-  printf(" -u unix socket path of Docker engine [default: /var/lib/docker.sock]\n");
-  printf(" -i ip address of Docker engine [default: 127.0.0.1]\n");
-  printf(" -p port number of Docker engine [default: 2376]\n");
-  printf(" -h print this help menu\n");
-  printf(" -v show CODI version\n");
-}
-
-void init_codi_params()
-{
-  int i;
-
-  for (i = 0; i <  KEY_ARR_SZ; i++)
-    codi_ops[i] = NULL;
-
-  codi_ops[KEY('s')] = CODI_PORT;
-  codi_ops[KEY('v')] = VERSION;
-  codi_ops[KEY('i')] = NULL;
-  codi_ops[KEY('p')] = NULL;
-  codi_ops[KEY('u')] = DOCKER_UNIX_SOCKET;
-  codi_ops[KEY('z')] = CODI_NAME;
-}
-
-void parse_codi_params(int argc, char *argv[])
-{
-  int c, i_flg = 0, p_flg = 0, u_flg = 0;
-
-  init_codi_params() ;
-
-  while ((c = getopt(argc, argv, "hvs:i:p:u:")) != -1) {
-    switch (c) {
-    case 'h':
-      print_codi_usage(argc, argv);
-      exit(EXIT_SUCCESS);
-      break;
-    case 'v':
-      INFO("CODI version : %s\n", VERSION);
-      exit(EXIT_SUCCESS);
-      break;
-    case 's':
-      codi_ops[KEY('s')]  = optarg;
-      break;
-    case 'i':
-      if(u_flg) {
-        print_codi_usage(argc, argv);
-      } else {
-        i_flg++;
-        codi_ops[KEY('i')]  = optarg;
-      }
-      break;
-    case 'p':
-      if(u_flg) {
-        print_codi_usage(argc, argv);
-      } else {
-        p_flg++;
-        codi_ops[KEY('p')]  = optarg;
-      }
-      break;
-    case 'u':
-      if(i_flg || p_flg) {
-        print_codi_usage(argc, argv);
-      } else {
-        u_flg++;
-        codi_ops[KEY('u')]  = optarg;
-      }
-      break;
-    case '?':
-      if (optopt == 's' || optopt == 'i' || optopt == 'p' || optopt == 'u')
-        INFO("Option -%c requires an argument.\n", optopt);
-      else if (isprint (optopt))
-        INFO("Unknown option `-%c'.\n", optopt);
-      else
-        INFO("Unknown option character `\\x%x'.\n", optopt);
-    default:
-      print_codi_usage(argc, argv);
-      exit(EXIT_FAILURE);
-    }
-  }
-}
-
-int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char *ceed_params[])
-{
-  struct addrinfo *addr_p;
-  int turff_sock_fd;
-
-  addr_p = connect_to_socket(t_node->ip, t_node->port, &turff_sock_fd);
-
-  if (addr_p == NULL) {
-    INFO("Could not connect to node id: %s ip: %s port: %s\n",
-    t_node->id, t_node->ip, t_node->port);
-    return 1;
-  } else {
-    INFO("Connected to node id: %s ip: %s port: %s\n",
-      t_node->id, t_node->ip, t_node->port);
-
-    /* change the source signature of the param array */
-    asprintf(&(ceed_params[KEY('z')]), "%s", CODI_NAME);
-
-    /* forward parameters to turff */
-    send_args(turff_sock_fd, ceed_params);
-    redirect_sockets(turff_sock_fd, ceed_sock_fd);
-  }
-  close(turff_sock_fd);
-  return 0;
-}
diff --git a/codi/codi_api.h b/codi/codi_api.h
deleted file mode 100644
index c5813dd..0000000
--- a/codi/codi_api.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef CODI_API_H
-#define CODI_API_H
-
-#include "codi_list.h"
-
-int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char *ceed_params[]);
-void parse_codi_params(int argc, char *argv[]);
-
-#endif
diff --git a/codi/codi_db.c b/codi/codi_db.c
deleted file mode 100644
index 91ab5bd..0000000
--- a/codi/codi_db.c
+++ /dev/null
@@ -1,137 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdlib.h>
-#include <sqlite3.h>
-#include "codi_db.h"
-#include "codi_list.h"
-
-static sqlite3 *codi_db;
-
-/* connect */
-int db_connect(void)
-{
-  int result;
-  result = sqlite3_open(CODI_DB, &codi_db);
-
-  if (result != SQLITE_OK ) {
-    INFO("SQL error: %s\n", sqlite3_errmsg(codi_db));
-    sqlite3_close(codi_db);
-    return -1;
-  }
-
-  return init_db();
-}
-
-int init_db(void)
-{
-  int result;
-  char *err = 0;
-  char *qry = "CREATE TABLE IF NOT EXISTS nodes(id TEXT UNIQUE NOT NULL \
-    CHECK(id <> ''), ip TEXT NOT NULL CHECK(ip <> ''), port TEXT NOT NULL \
-    CHECK(port <> ''), date TEXT NOT NULL CHECK(date <> ''));";
-
-  result = sqlite3_exec(codi_db, qry, 0, 0, &err);
-
-  if (result != SQLITE_OK) {
-    INFO("SQL error: %s\n", err);
-    sqlite3_free(err);
-    sqlite3_close(codi_db);
-    return 1;
-  }
-
-  return 0;
-}
-
-/* insert node */
-int db_insert_node(char *id, char *ip, char *port)
-{
-  int result;
-  char *qry, *err = 0;
-  turff_node *node;
-
-  node = find_turff_node(id);
-
-  /* if a node with this id exists just update it*/
-  if (node != NULL) {
-    asprintf(&qry, "UPDATE nodes SET ip = '%s', port = '%s', date = \
-    datetime(CURRENT_TIMESTAMP, 'localtime') WHERE ID = '%s';", ip, port, id);
-  }
-  else {
-    asprintf(&qry, "INSERT INTO nodes (id, ip, port, date) VALUES ('%s','%s', \
-    '%s', datetime(CURRENT_TIMESTAMP, 'localtime'));", id, ip, port);
-  }
-
-  result = exec_db_query(qry, 0, 0, &err);
-  free(qry);
-
-  return result;
-}
-
-int exec_db_query(const char *sql, int (*callback)(void*, int, char**, char**), \
-  void *callback_arg, char **errmsg)
-{
-  int result;
-
-  if (db_connect() != 0)
-    return -1;
-
-  result = sqlite3_exec(codi_db, sql, callback, callback_arg, errmsg);
-
-  if (result != SQLITE_OK) {
-    INFO("SQL insert error: %s\n", *errmsg);
-    sqlite3_free(*errmsg);
-    sqlite3_close(codi_db);
-    return result;
-  }
-  sqlite3_close(codi_db);
-  return SQLITE_OK;
-}
-
-static int find_node_callback(void *dummy, int argc, char **argv, char **col_name)
-{
-  int i;
-
-  /* no records were found */
-  if(argc == 0)
-    return 1;
-
-  add_turff_node(argv[0], argv[1], argv[2], argv[3]);
-
-  return 0;
-}
-
-/* find node(s) - gets all nodes if id is NULL */
-int get_db_nodes(char *id)
-{
-  int result;
-  char *qry, *err = 0;
-
-  /* remove all nodes from the list before reading them from the db*/
-  free_turff_nodes_list();
-
-  /* get all nodes */
-  if (id == NULL)
-    asprintf(&qry, "SELECT * FROM nodes;");
-  else
-    asprintf(&qry, "SELECT * from nodes WHERE id='%s';", id);
-
-  result = exec_db_query(qry, find_node_callback, 0, &err);
-  free(qry);
-
-  return result;
-}
diff --git a/codi/codi_db.h b/codi/codi_db.h
deleted file mode 100644
index c6fd586..0000000
--- a/codi/codi_db.h
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef CODI_DB_H
-#define CODI_DB_H
-
-#define CODI_DB      "codi.db"
-
-int init_db(void);
-int db_insert_node(char *id, char *ip, char *port);
-int exec_db_query(const char *sql, int (*callback)(void*, int, char**, char**), \
-  void *callback_arg, char **errmsg);
-int get_db_nodes(char *id);
-
-#endif
diff --git a/codi/codi_launcher.c b/codi/codi_launcher.c
deleted file mode 100644
index 1087761..0000000
--- a/codi/codi_launcher.c
+++ /dev/null
@@ -1,146 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <jansson.h>
-#include <string.h>
-#include <curl/curl.h>
-#include <ctype.h>
-#include "codi_launcher.h"
-
-/* execute the request and return an array of json objects */
-json_t *request_json(char *request_method, char *url, char *api, char *data)
-{
-  char *in = 0, *j_start;
-  json_t *root;
-  json_error_t err;
-
-  in = curl_request(request_method, url, api, data);
-
-  /* skip the header and move to the json array */
-  j_start = strchr(in, '[');
-  root = json_loads(j_start, 0, &err);
-  free(in);
-  return root;
-}
-
-/* execute the request and return the raw server reply */
-char *curl_request(char *http_method, char *url, char *api,  char *data)
-{
-
-  CURL *curl = NULL;
-  CURLcode res;
-  struct curl_slist *api_hdr = NULL;
-  curl_mem_chunk_t srv_reply ;
-  char *request_str ;
-
-  srv_reply.mem = calloc(1, 1) ;
-
-  if (srv_reply.mem == NULL)
-    ERR("ERROR: Unable to allocate memory");
-
-  srv_reply.size = 0 ;
-  curl = curl_easy_init();
-
-  if (curl) {
-    /* check if url is a unix socket*/
-    if (url[0] == '/') {
-      /* map the unix socket as a connection endpoint */
-      curl_easy_setopt(curl, CURLOPT_UNIX_SOCKET_PATH, url);
-      asprintf(&request_str, "%s%s", "http:", api);
-    } else {
-        asprintf(&request_str, "%s%s%s",  "http://", url, api);
-    }
-
-    curl_easy_setopt(curl, CURLOPT_URL, request_str);
-
-    if (!strcmp(http_method, POST_REQUEST)) {
-      curl_easy_setopt(curl, CURLOPT_POST, 1L);
-      api_hdr = curl_slist_append(api_hdr, "Content-Type: application/json");
-      api_hdr = curl_slist_append(api_hdr, "Expect:");
-      curl_easy_setopt(curl, CURLOPT_HTTPHEADER, api_hdr);
-
-      if (data == NULL)
-        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, "");
-      else
-        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
-    }
-
-    curl_easy_setopt(curl, CURLOPT_HEADER, 1);
-    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *) &srv_reply);
-    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, process_srv_reply);
-
-#ifdef DBG
-    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1);
-#endif
-
-    res = curl_easy_perform(curl);
-
-    if (res != CURLE_OK)
-      INFO("curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
-
-    if (!strcmp(http_method, POST_REQUEST))
-      curl_slist_free_all(api_hdr);
-
-    free(request_str);
-    curl_easy_cleanup(curl);
-  }
-
-  return srv_reply.mem;
-}
-
-size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void *reply_p)
-{
-  size_t chunk_size = size * nmemb;
-
-  curl_mem_chunk_t *mem_chunk = (curl_mem_chunk_t *)reply_p;
-
-  /* append chunk_size memory block to the original memory block */
-  mem_chunk->mem = realloc(mem_chunk->mem, mem_chunk->size + chunk_size + 1);
-  if (mem_chunk->mem == NULL)
-    ERR("not enough memory (realloc returned NULL)\n");
-
-  INFO("%s", ptr);
-
-  /* copy the data into the newly allocated chunk */
-  memcpy(&(mem_chunk->mem[mem_chunk->size]), ptr, chunk_size);
-  mem_chunk->size += chunk_size;
-  mem_chunk->mem[mem_chunk->size] = 0;
-  return chunk_size;
-}
-
-bool is_container_running(char *url, char *cont_name)
-{
-  char *api_str = NULL;
-  json_t *result;
-
-  asprintf(&api_str, RUNNING_NAMED_CONTAINER, cont_name);
-  result = request_json(GET_REQUEST, url, api_str, NULL);
-  free(api_str);
-
-  if (json_array_size(result)) {
-    json_decref(result);
-    return true;
-  } else {
-
-#ifdef DBG
-  INFO("Container : %s is not running\n", cont_name);
-#endif
-
-    json_decref(result);
-    return false;
-  }
-}
diff --git a/codi/codi_launcher.h b/codi/codi_launcher.h
deleted file mode 100644
index 1b81e49..0000000
--- a/codi/codi_launcher.h
+++ /dev/null
@@ -1,58 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef CODI_LAUNCHER_H
-#define CODI_LAUNCHER_H
-
-#include <jansson.h>
-#include "globals.h"
-
-
-/* Docker Remote API requests */
-#define GET_REQUEST              "GET"
-#define POST_REQUEST             "POST"
-#define DOCKER_UNIX_SOCKET       "/var/run/docker.sock"
-#define DOCKER_ENG_IP            "127.0.0.1"
-#define DOCKER_ENG_PORT       	 "2376"
-#define GET_IMAGES               "/images/json"
-#define ALL_CONTAINERS           "/containers/json?all=true"
-#define START_CONTAINER          "/containers/%s/start"
-#define CREATE_CONTAINER         "/containers/create?name=%s"
-#define GET_IMAGE                "/images/create?fromImage=%s&tag=%s"
-
-#define NAMED_CONTAINER          "/containers/json?all=true&filters=" \
-                                 "{%%22name%%22:[%%22%s%%22]}"
-
-#define RUNNING_NAMED_CONTAINER  "/containers/json?all=true&filters=" \
-                                 "{%%22name%%22:[%%22%s%%22],%%22status%%22:[%%22running%%22]}"
-
-/* Docker Engine Responses */
-#define PULL_COMPLETE      "Pull complete"
-#define IMAGE_UP_TO_DATE   "Image is up to date"
-#define NO_ERROR_204       "204 No Content"
-#define NOT_MODIFIED_304   "304 Not Modified"
-#define CREATED_201        "201 Created"
-#define OK_200             "200 OK"
-
-#define CONTAINER_PARAMS(...) #__VA_ARGS__
-
-char *curl_request(char *http_method, char *url, char *api,  char *data);
-size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void *reply_p);
-json_t *request_json(char *request_method, char *url, char *api, char *data);
-bool is_container_running(char *url, char *cont_name);
-bool start_container(char *url, char *cont_name);
-
-#endif
diff --git a/codi/codi_list.c b/codi/codi_list.c
deleted file mode 100644
index 4a3f745..0000000
--- a/codi/codi_list.c
+++ /dev/null
@@ -1,100 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdlib.h>
-#include <stdint.h>
-#include <stdio.h>
-#include <string.h>
-#include "utils.h"
-#include "codi_db.h"
-#include "codi_list.h"
-
-turff_node *head = NULL;
-
-turff_node *find_turff_node(char *id)
-{
-
-  /* clear the list and read the nodes from the db*/
-  get_db_nodes(id);
-  turff_node *cur = head;
-
-  while (cur != NULL) {
-    if(!strcmp(cur->id, id))
-      return cur;
-    else
-      cur = cur->next;
-  }
-  return NULL;
-}
-
-void free_turff_nodes_list()
-{
-  turff_node *tmp = NULL;
-
-  while (head != NULL) {
-    free(head->id);
-    free(head->ip);
-    free(head->port);
-    free(head->date);
-    tmp = head ;
-    head = head->next;
-    free(tmp);
-  }
-}
-
-void add_turff_node(char *id, char *ip, char *port, char *date)
-{
-  int node_exists = 0;
-  turff_node *node;
-
-  node = calloc(1, sizeof(turff_node));
-  asprintf(&(node->id), "%s", id);
-  asprintf(&(node->ip), "%s", ip);
-  asprintf(&(node->port), "%s",  port);
-  asprintf(&(node->date), "%s",  date);
-  node->next = head;
-  head = node;
-}
-
-
-/* send these to ceed*/
-void return_turff_nodes(int sock_fd)
-{
-  int i;
-  char *tmp_node[KEY_ARR_SZ];
-
-  /* clear the list and read the nodes from the db*/
-  get_db_nodes(NULL);
-  turff_node *cur = head;
-
-  for (i = 0; i <  KEY_ARR_SZ; i++)
-    tmp_node[i] = NULL;
-
-  while (cur != NULL) {
-    tmp_node[KEY('d')] = cur->id;
-
-#ifdef DBG
-    DEBUG("Sent turff node id : %s ip: %s port %s\n", cur->id, cur->ip, cur->port);
-#endif
-
-    send_args(sock_fd, tmp_node);
-    cur = cur->next;
-  }
-
-  tmp_node[KEY('e')] = "set";
-  send_args(sock_fd, tmp_node);
-}
diff --git a/codi/codi_list.h b/codi/codi_list.h
deleted file mode 100644
index 4ce5301..0000000
--- a/codi/codi_list.h
+++ /dev/null
@@ -1,33 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef CODI_LIST_H
-#define CODI_LIST_H
-
-typedef struct list_node{
-  char *id;
-  char *ip;
-  char *port;
-  char *date;
-  struct list_node *next;
-} turff_node;
-
-turff_node *find_turff_node(char *id);
-void add_turff_node(char *id, char *ip, char *port, char *date);
-void return_turff_nodes();
-void free_turff_nodes_list();
-
-#endif
diff --git a/confs/ostro/ostro.conf b/confs/ostro/ostro.conf
deleted file mode 100644
index 796104b..0000000
--- a/confs/ostro/ostro.conf
+++ /dev/null
@@ -1,16 +0,0 @@
-# allows a standard development build. Read the ostro docs for production settings.
-require conf/distro/include/ostro-os-development.inc
-# default ostro mirror, used for speedup!!!
-SSTATE_MIRRORS ?= "file://.* http://download.ostroproject.org/sstate/ostro-os/PATH"
-# puts results on the shared host folder
-# windows can't do this due to lack of ln -s support on shared volumes
-#DEPLOY_DIR_IMAGE = "/ostro/ostro-shared/images"
-# windows hangs on this. Currently unsure why.
-#SSTATE_DIR = "/ostro/ostro-shared/sstate"
-DL_DIR = "/ostro/ostro-shared/downloads"
-# lets bitbake ignore the odd inode settings of the shared directory
-BB_DISKMON_DIRS = "\
-    STOPTASKS,${TMPDIR},1G,100K \
-    ABORT,${TMPDIR},100M,1K "
-# keep workdir small
-INHERIT+="rm_work"
diff --git a/confs/ostro/ostro.layers b/confs/ostro/ostro.layers
deleted file mode 100644
index e69de29..0000000
diff --git a/dockerfiles/Dockerfile.ceed.deps b/dockerfiles/Dockerfile.ceed.deps
deleted file mode 100644
index f806613..0000000
--- a/dockerfiles/Dockerfile.ceed.deps
+++ /dev/null
@@ -1,16 +0,0 @@
-# This file describes the standard way to build the dependencies required for
-# cross compiling ceed with mingw
-#
-# Usage:
-#
-# docker build -t crops/ceed:deps -f Dockerfile.ceed.deps .
-
-FROM debian:jessie
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Install dependencies
-RUN apt-get update && apt-get install -y \
-  mingw-w64 \
-  gcc \
-  make
-
diff --git a/dockerfiles/Dockerfile.ceed.linux b/dockerfiles/Dockerfile.ceed.linux
deleted file mode 100644
index 10fcf90..0000000
--- a/dockerfiles/Dockerfile.ceed.linux
+++ /dev/null
@@ -1,19 +0,0 @@
-# This file describes the standard way to cross compile ceed with mingw
-#
-# Example:
-#
-# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.linux ../
-
-FROM crops/ceed:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-LABEL name="ceed-linux"
-
-# Build and install CEED
-RUN mkdir -p /usr/local/crops/ceed/
-COPY ceed /usr/local/crops/ceed/
-COPY utils.[ch] /usr/local/crops/
-COPY globals.[ch] /usr/local/crops/
-
-RUN cd /usr/local/crops/ceed && \
-  CC=gcc make
-
diff --git a/dockerfiles/Dockerfile.ceed.win b/dockerfiles/Dockerfile.ceed.win
deleted file mode 100644
index 7674c69..0000000
--- a/dockerfiles/Dockerfile.ceed.win
+++ /dev/null
@@ -1,19 +0,0 @@
-# This file describes the standard way to cross compile ceed with mingw
-#
-# Example:
-#
-# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.win ../
-
-FROM crops/ceed:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-LABEL name="ceed-windows"
-
-# Build and install CEED
-RUN mkdir -p /usr/local/crops/ceed/
-COPY ceed /usr/local/crops/ceed/
-COPY utils.[ch] /usr/local/crops/
-COPY globals.[ch] /usr/local/crops/
-
-RUN cd /usr/local/crops/ceed && \
-  CC=x86_64-w64-mingw32-gcc make
-
diff --git a/dockerfiles/Dockerfile.codi b/dockerfiles/Dockerfile.codi
deleted file mode 100644
index cf6ef30..0000000
--- a/dockerfiles/Dockerfile.codi
+++ /dev/null
@@ -1,34 +0,0 @@
-# This file describes the standard way to build a CROPS dispatcher image
-#
-# Usage:
-#
-# # Build CODI image with the following command. Replace the "version" tag
-# with the current codi version
-#
-# docker build -t crops/codi:version -f Dockerfile.codi ../
-#
-# Example: Build CODI version 0.1
-#
-# docker build -t crops/codi:0.1 -f Dockerfile.codi ../
-
-FROM crops/codi:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Build and install CODI
-RUN mkdir -p /usr/local/crops/codi/
-COPY codi /usr/local/crops/codi/
-COPY utils.[ch] /usr/local/crops/
-COPY globals.[ch] /usr/local/crops/
-ARG build_type
-
-RUN	cd /usr/local/crops/codi && \
-	make $build_type && \
-	mkdir -p /bin/codi && \
-	cp /usr/local/crops/codi/codi /bin/codi/run && \
-	rm -rf /usr/local/crops
-
-# Monitor CODI and restart it on exit
-ENTRYPOINT ["supervise", "/bin/codi"]
-
-# Default CODI port
-EXPOSE 10000
diff --git a/dockerfiles/Dockerfile.codi.deps b/dockerfiles/Dockerfile.codi.deps
deleted file mode 100644
index dc563d0..0000000
--- a/dockerfiles/Dockerfile.codi.deps
+++ /dev/null
@@ -1,31 +0,0 @@
-# This file describes the standard way to build the dependencies for a CROPS
-# dispatcher image
-#
-# Usage:
-#
-# # Build CODI dependencies image with the following command:
-#
-# docker build -t crops/codi:deps -f Dockerfile.codi.deps .
-#
-
-FROM debian:wheezy
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Install dependencies
-RUN apt-get update -qq && apt-get install -y -qq \
-	libsqlite3-dev \
-	libjansson-dev	\
-	git	\
-	wget \
-	daemontools \
-	build-essential && \
-	apt-get upgrade -y -qq
-
-#Install a version of curl with unix sockets support
-RUN wget -q -P /tmp http://curl.haxx.se/download/curl-7.45.0.tar.gz && \
-	cd /tmp && \
-	tar xf curl-7.45.0.tar.gz && \
-	cd curl-7.45.0 && \
-	./configure --prefix=/usr --enable-unix-sockets && \
-	make && \
-	make install
diff --git a/dockerfiles/Dockerfile.ostro b/dockerfiles/Dockerfile.ostro
deleted file mode 100644
index b68e455..0000000
--- a/dockerfiles/Dockerfile.ostro
+++ /dev/null
@@ -1,24 +0,0 @@
-# This file describes the standard way to build an Ostro bitbake builder image
-#
-# Usage:
-#
-# docker build -t crops/ostro:builder -f Dockerfile.ostro ..
-#
-
-FROM crops/ostro:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-USER root
-
-RUN  mkdir -p /ostro/bin && \
-     mkdir -p /ostro/sample-conf && \
-     chmod -R a+rwx /ostro
-COPY helpers/runbitbake.py /ostro/bin/runbitbake.py
-COPY helpers/startOstroScript.sh /ostro/bin/startOstroScript.sh
-COPY confs/ostro/ostro.conf /ostro/sample-conf/ostro.conf
-
-RUN   chmod +rx /ostro/bin/runbitbake.py && \
-      chmod +rx /ostro/bin/startOstroScript.sh && \
-      git clone https://github.com/ostroproject/ostro-os.git /ostro/ostro-os
-
-ENTRYPOINT ["/ostro/bin/startOstroScript.sh"]
diff --git a/dockerfiles/Dockerfile.ostro.deps b/dockerfiles/Dockerfile.ostro.deps
deleted file mode 100644
index d4da08f..0000000
--- a/dockerfiles/Dockerfile.ostro.deps
+++ /dev/null
@@ -1,33 +0,0 @@
-# This file describes the standard way to build the dependencies for Ostro bitbake build image
-#
-# Usage:
-#
-# docker build -t crops/ostro:deps -f Dockerfile.ostro.deps .
-
-FROM debian:jessie
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Install dependencies
-RUN apt-get update && apt-get upgrade -y && apt-get install -y \
-  gawk \
-  wget \
-  git-core \
-  diffstat \
-  unzip \
-  sysstat \
-  texinfo \
-  gcc-multilib \
-  build-essential \
-  chrpath \
-  socat \
-  python \
-  libsdl1.2-dev  \
-  cpio \
-  sudo  \
-  rsync && \
-  apt-get clean && \
-  echo "dash dash/sh boolean false" | debconf-set-selections && \
-  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
-
-
-CMD /bin/bash
diff --git a/dockerfiles/Dockerfile.toolchain b/dockerfiles/Dockerfile.toolchain
deleted file mode 100644
index c03fd90..0000000
--- a/dockerfiles/Dockerfile.toolchain
+++ /dev/null
@@ -1,49 +0,0 @@
-# This file describes the standard way to build a CROPS toolchain image
-#
-# Usage:
-#
-# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables below with
-# the name and URL of your self-extracting toolchain
-#
-# Example:
-#
-# ENV TOOLCHAIN_NAME poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
-# ENV TOOLCHAIN_PATH http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_64/
-#
-# 2) Build your toolchain image with the following command replacing my_tag with your target arch
-# docker build -t crops/toolchain:my_tag -f Dockerfile.toolchain ../
-#
-# Example for i586 target:
-# docker build -t crops/toolchain:i586 -f Dockerfile.toolchain ../
-#
-# The default configuration below will build an i586 toolchain for an x86_64 host
-
-FROM crops/toolchain:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-ENV TOOLCHAIN_NAME poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
-ENV TOOLCHAIN_PATH http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_64/
-
-# Build and install turff
-RUN mkdir -p /usr/local/crops/turff/
-COPY turff /usr/local/crops/turff/
-COPY utils.[ch] /usr/local/crops/
-COPY globals.[ch] /usr/local/crops/
-
-RUN cd /usr/local/crops/turff && \
-	make && \
-	mkdir -p /bin/turff && \
-	cp /usr/local/crops/turff/turff /bin/turff/run && \
-	cp /usr/local/crops/turff/turff_launcher /bin/
-
-# Download and install toolchain
-RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} && \
-	cd /tmp &&	\
-	chmod 755 ./${TOOLCHAIN_NAME} &&	\
-	./${TOOLCHAIN_NAME} -d /opt/poky/ -y
-
-# Make environment setup script executable and setup workspaces
-RUN chmod 755 /opt/poky/environment-setup*
-
-# Container entry point
-ENTRYPOINT ["/bin/turff_launcher", "-f", "/opt/poky/environment-setup*"]
diff --git a/dockerfiles/Dockerfile.toolchain.deps b/dockerfiles/Dockerfile.toolchain.deps
deleted file mode 100644
index ff809e6..0000000
--- a/dockerfiles/Dockerfile.toolchain.deps
+++ /dev/null
@@ -1,18 +0,0 @@
-# This file describes the standard way to build the dependencies for CROPS
-# toolchain images
-#
-# Usage:
-#
-# docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .
-
-FROM debian:wheezy
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Install dependencies
-RUN apt-get update -qq && apt-get install -y -qq \
-	python	\
-	daemontools \
-	git \
-	build-essential \
-	wget
-
diff --git a/dockerfiles/Dockerfile.zephyr b/dockerfiles/Dockerfile.zephyr
deleted file mode 100644
index 32068cb..0000000
--- a/dockerfiles/Dockerfile.zephyr
+++ /dev/null
@@ -1,59 +0,0 @@
-# This file describes the standard way to build a Zephyr toolchain image
-#
-# Usage:
-#
-# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables below with
-# the name and URL of your self-extracting toolchain
-#
-# Example:
-#
-# ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run
-# ENV TOOLCHAIN_PATH https://nexus.zephyrproject.org/content/repositories/releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/
-#
-# 2) Build your toolchain image with the following command replacing my_tag with your Zephyr's release
-# docker build -t crops/zephyr:my_tag -f Dockerfile.zephyr ../
-#
-# Example for Zephyr SDK 0.7.2:
-# docker build -t crops/zephyr:0.7.2-src -f Dockerfile.zephyr ../
-#
-
-FROM crops/zephyr:deps
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run
-ENV TOOLCHAIN_PATH https://nexus.zephyrproject.org/content/repositories/releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/
-
-# Build and install turff
-RUN mkdir -p /usr/local/crops/turff/
-COPY turff /usr/local/crops/turff/
-COPY utils.[ch] /usr/local/crops/
-COPY globals.[ch] /usr/local/crops/
-
-RUN cd /usr/local/crops/turff && \
-	make && \
-	mkdir -p /bin/turff && \
-	cp /usr/local/crops/turff/turff /bin/turff/run && \
-	cp /usr/local/crops/turff/turff_launcher /bin/
-
-# Download and install Zephyr toolchain
-RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} && \
-	cd /tmp &&	\
-	chmod 755 ./${TOOLCHAIN_NAME} && \
-	./${TOOLCHAIN_NAME} && \
-	rm -rf ./${TOOLCHAIN_NAME}
-
-#Linkups
-# /bin/sh to bash
-# easy to use gdb to various architectures
-# NOTE: in future we will probably split these into separate toolchain containers
-RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
-    ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-elf/i586-poky-elf-gdb /usr/bin/zephyr-i586-gdb && \
-    ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/arm-poky-eabi/arm-poky-eabi-gdb /usr/bin/zephyr-arm-gdb && \
-    ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/arc-poky-elf/arc-poky-elf-gdb /usr/bin/zephyr-arc-gdb && \
-    ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/mips-poky-elf/mips-poky-elf-gdb /usr/bin/zephyr-mips-gdb
-
-#Create Zephyr bare clone
-RUN git clone --bare https://gerrit.zephyrproject.org/r/zephyr /zephyr-src
-
-# Container entry point
-ENTRYPOINT ["/bin/turff_launcher"]
diff --git a/dockerfiles/Dockerfile.zephyr.deps b/dockerfiles/Dockerfile.zephyr.deps
deleted file mode 100644
index 4c5aa4f..0000000
--- a/dockerfiles/Dockerfile.zephyr.deps
+++ /dev/null
@@ -1,24 +0,0 @@
-# This file describes the standard way to build the dependencies for Zephyr
-# toolchain images
-#
-# Usage:
-#
-# docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps .
-
-FROM debian:wheezy
-MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
-
-# Install dependencies
-RUN apt-get update && apt-get install -y \
-	python	\
-	daemontools \
-	git \
-	make \
-	gcc \
-	gcc-multilib \
-	g++ \
-	libc6-dev-i386 \
-	g++-multilib	\
-	bzip2	\
-	wget
-
diff --git a/globals.c b/globals.c
deleted file mode 100755
index 2716495..0000000
--- a/globals.c
+++ /dev/null
@@ -1,47 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include <stdio.h>
-#include <stdlib.h>
-#include "globals.h"
-
-void info(const char *file, int line, const char *func, const char* fmt, ...) {
-  va_list args;
-
-  printf("[INFO] ");
-  va_start(args, fmt);
-  vprintf(fmt, args);
-  va_end(args);
-}
-
-void debug(const char *file, int line, const char *func, const char* fmt, ...) {
-  va_list args;
-
-  printf("[DEBUG] %s:%d: [%s] ", file, line, func);
-  va_start(args, fmt);
-  vprintf(fmt, args);
-  va_end(args);
-}
-
-void error(const char *file, int line, const char *func, const char* fmt, ...) {
-  va_list args;
-
-  printf("[ERROR] %s:%d: [%s] ", file, line, func);
-  va_start(args, fmt);
-  vprintf(fmt, args);
-  va_end(args);
-  exit(EXIT_FAILURE);
-}
diff --git a/globals.h b/globals.h
deleted file mode 100755
index c928166..0000000
--- a/globals.h
+++ /dev/null
@@ -1,69 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef GLOBALS_H
-#define GLOBALS_H
-#ifdef __linux
-#define _GNU_SOURCE
-#endif
-
-
-#include <math.h>
-#include <stdarg.h>
-#include <stdint.h>
-#include <stdio.h>
-#include <string.h>
-#include <unistd.h>
-
-#define KEY_ARR_SZ 'z' -'a' + 1
-#define KEY(var) abs('a'- #var[1])
-
-
-#define CODI_PORT      "10000"
-#define CODI_IP_NATIVE "127.0.0.1"
-#define CODI_IP_VIRT   "192.168.99.100"
-#define TURFF_PORT     "9999"
-#define MSG_TERM       "EOM"
-#define VERSION        "0.1"
-#define TURFF_EOM      "TEOM"
-#define CEED_NAME      "ceed"
-#define TURFF_NAME     "turff"
-#define CODI_NAME      "codi"
-#define TURFFID        "TURFFID"
-
-void info(const char *file, int line, const char *func, const char* fmt, ...);
-void debug(const char *file, int line, const char *func, const char* fmt, ...);
-void error(const char *file, int line, const char *func, const char* fmt, ...);
-
-#define INFO(...)  info(__FILE__, __LINE__, __func__, __VA_ARGS__)
-#define ERR(...) error(__FILE__, __LINE__, __func__, __VA_ARGS__)
-#define DEBUG(...) debug(__FILE__, __LINE__, __func__, __VA_ARGS__)
-
-typedef enum { false, true } bool;
-
-/* parameter chunk*/
-typedef struct chunk{
-  uint32_t op_code;
-  char arg[20];
-  struct chunk *next;
-} msg_chunk;
-
-typedef struct{
-  char  *mem;
-  size_t size;
-} curl_mem_chunk_t;
-
-#endif
diff --git a/helpers/runbitbake.py b/helpers/runbitbake.py
deleted file mode 100644
index 96c55dc..0000000
--- a/helpers/runbitbake.py
+++ /dev/null
@@ -1,148 +0,0 @@
-#!/usr/bin/python
-
-# runbitbake.py
-#
-# Copyright (C) 2016 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-
-import argparse
-import subprocess
-import os
-import tempfile
-import shutil
-import sys
-import signal
-
-bitbake_process = None
-
-old_handler = {}
-old_handler[str(signal.SIGINT)] = signal.getsignal(signal.SIGINT)
-old_handler[str(signal.SIGTERM)] = signal.getsignal(signal.SIGTERM)
-
-
-def addextra(tempdir, builddir, name, extralist):
-    myf = "{}/conf/{}".format(builddir, name)
-    myf_orig = "{}/{}.orig".format(tempdir, name)
-    tmpfile = "{}/{}.orig.tmp".format(tempdir, name)
-
-    # copy isn't atomic so make sure that orig is created atomically so that
-    # file.orig is always correct even if file gets hosed. So that
-    # means if a user ever sees file.orig, they can be assured that it
-    # is the same as the original file with no corruption.
-    shutil.copyfile(myf, tmpfile)
-    with open(tmpfile, "r") as f:
-        fd = f.fileno()
-        os.fdatasync(fd)
-
-    # Remember first sync the file AND directory to make sure data
-    # is written out
-    fd = os.open(os.path.dirname(tmpfile), os.O_RDONLY)
-    os.fsync(fd)
-    os.close(fd)
-
-    # Rename should be atomic with respect to disk, yes all of this assumes
-    # linux and possibly non-network filesystems.
-    os.rename(tmpfile, myf_orig)
-
-    with open(myf, "a") as f:
-        if extralist:
-            for conf in extralist:
-                with open(conf) as f2:
-                    content = f2.readlines()
-                for l in content:
-                    f.write("%s\n" % format(l.strip()))
-
-
-def restore_files(tempdir, builddir, conffiles):
-    for f in conffiles:
-        dest = os.path.join(builddir, "conf", f)
-        src = os.path.join(tempdir, f + ".orig")
-
-        if os.path.exists(src):
-            os.rename(src, dest)
-
-
-# If bitbake is around let it do all the signal handling
-def handler(signum, frame):
-    if bitbake_process:
-        # SIGINT is special if there is a tty. Because with a tty SIGINT will
-        # automatically get sent to all processes in the process group. So we
-        # don't need to send it ourselves.
-        if signum == signal.SIGINT and sys.stdin.isatty():
-            pass
-        else:
-            # If there is a bitbake process we want to let it tear down all
-            # its children itself so send the signal to bitbake.
-            bitbake_process.send_signal(signum)
-    else:
-        old_handler[str(signum)](signum, frame)
-
-
-if __name__ == '__main__':
-    signal.signal(signal.SIGINT, handler)
-    signal.signal(signal.SIGTERM, handler)
-
-    parser = argparse.ArgumentParser()
-
-    parser.add_argument("--extraconf", action='append', help="File containing"
-                        "extra configuration")
-    parser.add_argument("--extralayers", action='append',
-                        help="File containing extra bblayers")
-
-    parser.add_argument("--pokydir", default="/home/yoctouser/poky",
-                        required=True, help="Directory containing poky")
-    parser.add_argument("--target", "-t", required=True,
-                        help="What bitbake should build")
-    parser.add_argument("--builddir", "-b", required=True,
-                        help="Directory to build in")
-
-    args = parser.parse_args()
-
-    builddir = args.builddir
-
-    if not os.path.isdir(builddir):
-        os.makedirs(builddir)
-
-    # tempdir is a subdirectory of builddir in case builddir and local.conf
-    # already existed. Then if something goes wrong with local.conf the user
-    # can restore it by using builddir/tempdir/local.conf.orig
-    tempdir = tempfile.mkdtemp(prefix="runbitbake-tmpdir", dir=builddir)
-
-    # Have to use bash since the default on ubuntu is dash which is garbage
-    try:
-        cmd = 'bash -c ". {}/oe-init-build-env {}"'.format(args.pokydir,
-                                                           builddir)
-        subprocess.check_call(cmd, stdout=sys.stdout, stderr=sys.stderr,
-                              shell=True)
-
-        try:
-            addextra(tempdir, builddir, "local.conf", args.extraconf)
-            addextra(tempdir, builddir, "bblayers.conf", args.extralayers)
-
-            cmd = '. {}/oe-init-build-env {} && '.format(args.pokydir,
-                                                         builddir)
-            cmd += 'exec bitbake {}'.format(args.target)
-            bitbake_process = subprocess.Popen(['/bin/bash', '-c', cmd],
-                                               stdout=sys.stdout,
-                                               stderr=sys.stderr, shell=False)
-            bitbake_process.wait()
-        finally:
-            restore_files(tempdir, builddir, ["local.conf", "bblayers.conf"])
-
-    except subprocess.CalledProcessError as e:
-        print e
-
-    finally:
-        shutil.rmtree(tempdir, ignore_errors=True)
diff --git a/helpers/startOstroScript.sh b/helpers/startOstroScript.sh
deleted file mode 100644
index 49a1dd1..0000000
--- a/helpers/startOstroScript.sh
+++ /dev/null
@@ -1,42 +0,0 @@
-#!/bin/bash
-POKY_DIR=/ostro/ostro-os/
-EXTRA_CONF=/ostro/ostro-shared/conf/ostro.conf
-BUILD_DIR=/ostro/build/
-EXTRA_LAYERS=/ostro/ostro-shared/conf/ostro.layers
-
-H_UID=$(ls -al /ostro/ostro-shared/ | egrep "\."|egrep -v "\.\." | awk '{print $3}')
-H_USER=$(getent passwd "$H_UID" | cut -d: -f1)
-if [ "$H_USER" == "" ]; then
-    H_USER="yoctobuilder"
-    /usr/sbin/useradd -m -u ${H_UID} ${H_USER}
-fi
-
-# provide the ostro.conf if there isn't one yet
-if [ ! -f ${EXTRA_CONF} ]; then
-    mkdir -p /ostro/ostro-shared/conf
-    cp /ostro/sample-conf/ostro.conf ${EXTRA_CONF}
-fi
-
-# provide ostro.layers if there isn't one yet
-if [ ! -f ${EXTRA_LAYERS} ]; then
-    mkdir -p /ostro/ostro-shared/conf
-    cp /ostro/sample-conf/ostro.layers ${EXTRA_LAYERS}
-fi
-
-mkdir -p /ostro/ostro-shared/images/
-chmod a+rwx /ostro/ostro-shared/images/
-chmod a+rwx /ostro/ostro-shared/conf
-chmod a+rw  ${EXTRA_CONF}
-
-
-# switch into user to build
-sudo  --user ${H_USER} /ostro/bin/runbitbake.py --pokydir $POKY_DIR --extraconf $EXTRA_CONF --extralayers $EXTRA_LAYERS -b $BUILD_DIR -t $*
-echo "copying images to shared folder"
-
-# we need to source the bitbake env in order to use the bitbake script to find the images
-cd ${BUILD_DIR}
-source ${POKY_DIR}/oe-init-build-env >> /dev/null
-CON_DIR=`bitbake -e | egrep "DEPLOY_DIR_IMAGE\="|tr "\=" " " | tr -d "\""| awk '{print $2}'`
-rsync -a ${CON_DIR} /ostro/ostro-shared/images/ > /dev/null 2>&1
-
-
diff --git a/installers/ostro-installer.sh b/installers/ostro-installer.sh
deleted file mode 100644
index 05eca6a..0000000
--- a/installers/ostro-installer.sh
+++ /dev/null
@@ -1,108 +0,0 @@
-#!/bin/bash
-
-if [[ "$(basename -- "$0")" == "ostro-installer.sh" ]]; then
-  echo -e "$0 has to be sourced not run" >&2;
-  echo -e "\nExample:\nsource $0\n"; exit 1
-fi
-
-OSTRO_IMG=crops/ostro:builder
-OSTRO_CONTAINER=ostro-builder
-OSTRO_CONF=$HOME/ostro-workspace/shared/conf/ostro.conf
-BITBAKE_WRAPPER=$HOME/.crops/bitbake.ostro
-WIN_PLATFORM="msys"
-LINUX_PLATFORM="linux"
-MAC_PLATFORM="darwin"
-unset MY_PLATFORM
-
-# establish platform
-if [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" = *$LINUX_PLATFORM* ]]; then
-  MY_PLATFORM=$LINUX_PLATFORM
-elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" == *$MAC_PLATFORM* ]]; then
-  MY_PLATFORM=$MAC_PLATFORM
-elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" == *$WIN_PLATFORM* ]]; then
-  MY_PLATFORM=$WIN_PLATFORM
-else
-  echo "Unknown platform: $OSTYPE. Exiting"; return 1
-fi
-echo -e "\nPlatform is $MY_PLATFORM"
-
-if [ "`which docker`" = "" ]; then
-  echo -e "\nPlease install docker first, then run this installer"
-  if [[ $MY_PLATFORM = $LINUX_PLATFORM ]]; then
-    echo -e "\nFrom: https://docs.docker.com/linux/step_one/"
-  else
-    echo -e "\nFrom: https://www.docker.com/products/docker-toolbox"
-  fi
-  return 1
-fi
-
-echo -e "\n"
-read -p "This will remove existing OSTRO build containers. Answering No will exit the installer. Proceed? Y/N " -r
-echo
-if [[ ! $REPLY =~ ^[Yy]$ ]]
-then
-  echo "There is nothing for me to do. Exiting"; return 1
-else
-  echo -e "\nRemove existing OSTRO build containers"
-  docker ps -a | awk '{ print $1,$2 }' | grep $OSTRO_IMG | awk '{print $1 }' | xargs -I {} docker rm -f {}
-  echo -e "Done"
-fi
-
-if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" != "" ]]; then
-  read -p "OSTRO build image found. Download latest OSTRO build image? Y/N " -r; echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" == "" ]]; then
-      echo "OSTRO build image not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nRemove existing OSTRO build image"
-    docker rmi $OSTRO_IMG 2> /dev/null
-    echo -e "Done"
-
-    echo -e "\nDownloading OSTRO build image. Please wait"
-    docker pull $OSTRO_IMG
-    echo -e "Done"
-  fi
-else
-  read -p "Download OSTRO build image? Y/N " -r
-  echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" == "" ]]; then
-      echo "OSTRO build image not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nDownloading OSTRO build image. Please wait"
-    docker pull $OSTRO_IMG
-    echo -e "Done"
-  fi
-fi
-
-if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" == "" ]]; then
-  echo "OSTRO build image not found. Exiting installer"; return 1
-fi
-
-mkdir -p $HOME/.crops
-
-if [[ -f "$BITBAKE_WRAPPER" ]]; then
-  read -p "OSTRO bitbake wrapper found. Do you want to reinstall bitbake wrapper? Y/N " -r; echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    echo -e "\nOSTRO bitbake wrapper was not updated"
-  else
-    rm -rf $BITBAKE_WRAPPER
-	  echo -e "Downloading default OSTRO bitbake wrapper"
-    curl -k -s -o $BITBAKE_WRAPPER https://raw.githubusercontent.com/crops/crops/master/scripts/bitbake.ostro
-    chmod 755 $BITBAKE_WRAPPER
-    echo -e "Done."
-  fi
-else
-  echo -e "Downloading OSTRO bitbake wrapper"
-  curl -k -s -o $BITBAKE_WRAPPER https://raw.githubusercontent.com/crops/crops/master/scripts/bitbake.ostro
-  chmod 755 $BITBAKE_WRAPPER
-  echo -e "Done."
-fi
-export PATH=$PATH:$HOME/.crops
-
-echo -e "\n\nTHE OSTRO BUILD ENVIRONMENT HAS BEEN SET UP"
-
-echo -e "\nYou can now build ostro-os from the CLI\n"
-echo -e "Example :\nbitbake.ostro ostro-image-noswupd\n"
diff --git a/installers/zephyr-installer.sh b/installers/zephyr-installer.sh
deleted file mode 100755
index 2afb4cf..0000000
--- a/installers/zephyr-installer.sh
+++ /dev/null
@@ -1,225 +0,0 @@
-#!/bin/bash
-
-if [[ "$(basename -- "$0")" == "zephyr-installer.sh" ]]; then
-  echo -e "$0 has to be sourced not run" >&2;
-  echo -e "\nExample:\nsource $0\n"; exit 1
-fi
-
-CODI_IMG=crops/codi:latest
-CODI_CONTAINER=codi
-ZEPHYR_IMG=crops/zephyr:latest
-ZEPHYR_CONTAINER=crops-zephyr-0-7-2-src
-VM_NAME=default
-CEED_EXE=$HOME/.crops/ceed/ceed
-MAKE_PATH=$HOME/.crops
-WIN_PLATFORM="msys"
-LINUX_PLATFORM="linux"
-MAC_PLATFORM="darwin"
-unset MY_PLATFORM
-
-# establish platform
-if [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" = *$LINUX_PLATFORM* ]]; then
-  MY_PLATFORM=$LINUX_PLATFORM
-elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" == *$MAC_PLATFORM* ]]; then
-  MY_PLATFORM=$MAC_PLATFORM
-elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" == *$WIN_PLATFORM* ]]; then
-  MY_PLATFORM=$WIN_PLATFORM
-else
-  echo "Unknown platform: $OSTYPE. Exiting"; return 1
-fi
-echo -e "\nPlatform is $MY_PLATFORM"
-
-if [ "`which docker`" = "" ]; then
-  echo -e "\nPlease install docker first, then run this installer"
-  if [[ $MY_PLATFORM = $LINUX_PLATFORM ]]; then
-    echo -e "\nFrom: https://docs.docker.com/linux/step_one/"
-  else
-    echo -e "\nFrom: https://www.docker.com/products/docker-toolbox"
-  fi
-  return 1
-fi
-
-echo -e "\n"
-read -p "This will remove existing CROPS containers. Answering No will exit the installer. Proceed? Y/N " -r
-echo
-if [[ ! $REPLY =~ ^[Yy]$ ]]
-then
-  echo "There is nothing for me to do. Exiting"; return 1
-else
-  echo -e "\nRemove existing CODI containers"
-  docker ps -a | awk '{ print $1,$2 }' | grep $CODI_IMG | awk '{print $1 }' | xargs -I {} docker rm -f {}
-  echo -e "Done"
-
-  echo -e "\nRemove existing Zephyr container"
-  docker ps -a | awk '{ print $1,$2 }' | grep $ZEPHYR_IMG | awk '{print $1 }' | xargs -I {} docker rm -f {}
-  echo -e "Done"
-fi
-
-if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" != "" ]]; then
-  read -p "CODI image found. Download latest CODI image? Y/N " -r; echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" == "" ]]; then
-      echo "CODI image not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nRemove existing CODI image"
-    docker rmi $CODI_IMG 2> /dev/null
-    echo -e "Done"
-
-    echo -e "\nDownloading CODI image. Please wait"
-    docker pull $CODI_IMG
-    echo -e "Done"
-  fi
-else
-  read -p "Download CODI image? Y/N " -r
-  echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" == "" ]]; then
-      echo "CODI image not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nDownloading CODI image. Please wait"
-    docker pull $CODI_IMG
-    echo -e "Done"
-  fi
-fi
-
-if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" != "" ]]; then
-  read -p "Zephyr toolchain found. Download latest Zephyr toolchain? Y/N " -r; echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" == "" ]]; then
-      echo "Zephyr toolchain not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nRemove existing Zephyr toolchain"
-    docker rmi $ZEPHYR_IMG 2> /dev/null
-    echo -e "Done"
-
-    echo -e "\nDownloading Zephyr toolchain. Please wait"
-    docker pull $ZEPHYR_IMG
-    echo -e "Done"
-  fi
-else
-  read -p "Download Zephyr toolchain? Y/N " -r; echo
-  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-    if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" == "" ]]; then
-      echo "Zephyr toolchain not found. Exiting installer"; return 1
-    fi
-  else
-    echo -e "\nDownloading Zephyr toolchain. Please wait"
-    docker pull $ZEPHYR_IMG
-    echo -e "Done"
-  fi
-fi
-
-echo -e "\nLaunching CODI container"
-docker run -d --name $CODI_CONTAINER -v //var//run//docker.sock://var//run//docker.sock \
-  --net=host $CODI_IMG || { echo 'Couldn't start $CODI_CONTAINER\' ; return 1; }
-echo -e "Done"
-
-echo -e "\nLaunching Zephyr toolchain"
-docker run -d --name $ZEPHYR_CONTAINER  -e TURFFID=$ZEPHYR_CONTAINER -v $HOME/crops-workspace:/crops \
-  --net=host $ZEPHYR_IMG || { echo 'Couldn't start $ZEPHYR_CONTAINER\' ; return 1; }
-echo -e "Done"
-
-mkdir -p $HOME/crops-workspace;
-
-if [[ $MY_PLATFORM == $MAC_PLATFORM ]]; then
-  if [[ ! -f "$CEED_EXE" ]]; then
-    echo -e "Downloading CEED executable for Mac..."
-    mkdir -p $HOME/.crops/ceed/
-    curl -s -o $CEED_EXE http://crops.minchev.co.uk/ceed/mac/ceed
-    chmod 755 $CEED_EXE
-    echo -e "Done."
-  fi
-
-  if [[ ! -f "$MAKE_PATH/make.zephyr" ]]; then
-    echo -e "Downloading Zephyr CLI make utility..."
-    curl -s -o $MAKE_PATH/make.zephyr https://raw.githubusercontent.com/todorez/crops/master/scripts/make.zephyr
-    chmod 755 $MAKE_PATH/make.zephyr
-    echo -e "Done."
-  fi
-else
-  if [[ -f "$CEED_EXE" ]]; then
-    read -p "CEED found. Do you want to reinstall CEED? Y/N " -r; echo
-    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-      echo -e "\nCEED executable was not updated"
-    else
-      echo -e "\nRemove existing CEED executable"
-      rm -rf $CEED_EXE
-      echo -e "Done"
-
-      git clone https://github.com/todorez/crops.git; cd crops/dockerfiles;
-      if [[ $MY_PLATFORM == $WIN_PLATFORM ]]; then
-        echo -e "\nBuilding CEED executable"
-        docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-        docker build -t crops/ceed:windows -f Dockerfile.ceed.win ../
-        docker run --name=ceed-windows crops/ceed:windows;
-        docker-machine ssh default "docker cp ceed-windows:/usr/local/crops/ceed/ceed $CEED_EXE";
-        docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-        echo -e "Done"
-      else
-        echo -e "\nBuilding CEED executable"
-        docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
-        docker build -t crops/ceed:linux -f Dockerfile.ceed.linux ../
-        docker run --name=ceed-linux crops/ceed:linux;
-        docker cp ceed-linux:/usr/local/crops/ceed/ceed $CEED_EXE;
-        docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
-      fi
-      cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_PATH/
-      cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf ./crops
-    fi
-  else
-    read -p "Do you want to install CEED? Y/N " -r; echo
-    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
-      echo -e "\nExiting installer. Your install is incomplete."; return 1
-    else
-      mkdir -p $HOME/.crops/ceed
-      git clone https://github.com/todorez/crops.git; cd crops/dockerfiles;
-      if [[ $MY_PLATFORM == $WIN_PLATFORM ]]; then
-        echo -e "\nBuilding CEED executable"
-        docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-        docker build -t crops/ceed:windows -f Dockerfile.ceed.win ../
-        docker run --name=ceed-windows crops/ceed:windows;
-        docker-machine ssh default "docker cp ceed-windows:/usr/local/crops/ceed/ceed $CEED_EXE";
-        docker ps -a -q --filter "name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-windows" | awk '{print $1}' | xargs -I {} docker rmi {}
-        echo -e "Done"
-      else
-        echo -e "\nBuilding CEED executable"
-        docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
-        docker build -t crops/ceed:linux -f Dockerfile.ceed.linux ../
-        docker run --name=ceed-linux crops/ceed:linux;
-        docker cp ceed-linux:/usr/local/crops/ceed/ceed $CEED_EXE;
-        docker ps -a -q --filter "name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rm -f {}
-        docker images -q --filter "label=name=ceed-linux" | awk '{print $1}' | xargs -I {} docker rmi {}
-        echo -e "Done"
-      fi
-      cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_PATH/;
-      cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf ./crops
-    fi
-  fi
-fi
-
-echo -e "\n\nTHE CROPS ENVIRONMENT HAS BEEN SET UP"
-
-if [[ $MY_PLATFORM != $LINUX_PLATFORM ]]; then
-  MACHINE=`docker-machine active`
-  IP=`docker-machine ip $MACHINE`
-  CEED_EXE="$CEED_EXE -i $IP"
-fi
-
-echo -e "\nInitialize Zephyr environment for CLI use"
-echo -e "Example :\n${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g \"git clone --branch v1.0.0 /zephyr-src /crops/zephyr-project/\""
-
-echo -e "\nYou can now build Zephyr applications from the CLI"
-echo -e "Example :\n$MAKE_PATH/make.zephyr BOARD=arduino_101 -C /crops/zephyr-project/samples/nanokernel/apps/hello_world/"
-
-export CEED_EXE=$CEED_EXE
-export ZEPHYR_CONTAINER=$ZEPHYR_CONTAINER
diff --git a/scripts/bitbake.ostro b/scripts/bitbake.ostro
deleted file mode 100755
index a7fba2a..0000000
--- a/scripts/bitbake.ostro
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/usr/bin/env bash
-
-OSTRO_CONTAINER=ostro-builder
-OSTRO_IMG=crops/ostro:builder
-
-DOCKER_CMD="docker run --rm --name $OSTRO_CONTAINER -v `pwd`/ostro-shared:/ostro/ostro-shared --net=host $OSTRO_IMG"
-PARAMS=$1
-
-# make sure the shared directory exists
-mkdir -p `pwd`/ostro-shared
-${DOCKER_CMD} ${PARAMS} || { echo -e "\nCouldn't start $OSTRO_CONTAINER container\n" ; exit 1; }
-
diff --git a/scripts/build_ceed b/scripts/build_ceed
deleted file mode 100755
index a181b2d..0000000
--- a/scripts/build_ceed
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/usr/bin/env bash
-set -e
-set -o pipefail
-
-# This is a convenience script to build the host side ceed for travis testing.
-# this is probably a more travisy way to do this so if you know it, speak up!
-
-TOPDIR=`git rev-parse --show-toplevel`
-
-cd ${TOPDIR}/ceed
-make
diff --git a/scripts/build_containers b/scripts/build_containers
deleted file mode 100755
index 4335d8b..0000000
--- a/scripts/build_containers
+++ /dev/null
@@ -1,73 +0,0 @@
-#!/usr/bin/env bash
-set -e
-set -o pipefail
-
-# This is a sanity test script for the CODI and toolchain Docker images.
-# This removes the old test containers, and builds a new codi and new toolchains.
-# If you do not have the deps containers, it will build them but this takes awhile
-#
-# Example:
-#
-# ./tests/build_containers
-
-TOPDIR=`git rev-parse --show-toplevel`
-
-# remove codi test image as we will rebuild it
-Q=`docker images  -q crops/codi:test`
-if [ "$Q"  != "" ]; then
-    echo "Removing codi image"
-    docker rmi -f $Q
-fi
-
-Q=`docker images  -q crops/codi:testdebug`
-if [ "$Q"  != "" ]; then
-    echo "Removing codi debug image"
-    docker rmi -f $Q
-fi
-
-# remove toolchain test image as we will rebuild it
-Q=`docker images  -q crops/toolchain:test`
-if [ "$Q"  != "" ]; then
-    echo "Removing toolchain image"
-    docker rmi -f   $Q
-fi
-
-# remove Zephyr toolchain image as we will rebuild it
-Q=`docker images  -q crops/zephyr:test`
-if [ "$Q"  != "" ]; then
-    echo "Removing Zephyr toolchain image"
-    docker rmi -f   $Q
-fi
-
-cd ${TOPDIR}/dockerfiles;
-
-Q=`docker images  -q crops/codi:deps`
-if [ "$Q"  == "" ]; then
-    echo "Build CODI deps image"
-    docker build -t crops/codi:deps -f Dockerfile.codi.deps --rm=true ..
-fi
-
-
-echo "Build CODI test image"
-docker build -t crops/codi:test -f Dockerfile.codi --rm=true ..
-
-echo "Build CODI debug test image"
-docker build -t crops/codi:testdebug --build-arg build_type=debug -f Dockerfile.codi --rm=true ..
-
-Q=`docker images  -q crops/toolchain:deps`
-if [ "$Q"  == "" ]; then
-    echo "Build toolchain deps image"
-    docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps  --rm=true ..
-fi
-
-echo "Build toolchain test image"
-docker build -t crops/toolchain:test -f Dockerfile.toolchain --rm=true ..
-
-Q=`docker images  -q crops/zephyr:deps`
-if [ "$Q"  == "" ]; then
-    echo "Build Zephyr deps image"
-    docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps  --rm=true ..
-fi
-
-echo "Build Zephyr toolchain image"
-docker build -t crops/zephyr:test -f Dockerfile.zephyr --rm=true ..
diff --git a/scripts/build_containers.ostro b/scripts/build_containers.ostro
deleted file mode 100755
index 15019bc..0000000
--- a/scripts/build_containers.ostro
+++ /dev/null
@@ -1,35 +0,0 @@
-#!/usr/bin/env bash
-set -e
-set -o pipefail
-
-
-# This removes the old test containers, and builds a new ostro container.
-# If you do not have the deps containers, it will build them but this takes awhile
-# it does NOT remove the deps images
-#
-# Example:
-#
-# ./scripts/build_containers.ostro
-
-TOPDIR=`git rev-parse --show-toplevel`
-
-# remove ostro builder image as we will rebuild it
-Q=`docker images  -q crops/ostro:builder`
-if [ "$Q"  != "" ]; then
-    echo "Removing ostro image"
-    docker rmi -f $Q
-fi
-
-cd ${TOPDIR}/dockerfiles;
-
-Q=`docker images  -q crops/ostro:deps`
-if [ "$Q"  == "" ]; then
-    echo "Build ostro deps image"
-    docker build -t crops/ostro:deps -f Dockerfile.ostro.deps --rm=true ..
-fi
-Q=`docker images  -q crops/ostro:builder`
-if [ "$Q"  == "" ]; then
-    echo "Build ostro builder image"
-    docker build -t crops/ostro:builder -f Dockerfile.ostro --rm=true ..
-fi
-
diff --git a/scripts/gdb.zephyr b/scripts/gdb.zephyr
deleted file mode 100644
index dfb128e..0000000
--- a/scripts/gdb.zephyr
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/usr/bin/env bash
-
-DOCKER_EXEC_TTY="docker exec -it"
-CONTAINER=crops-zephyr-0-7-2-src
-GDB_PATH=//opt//zephyr-sdk//sysroots//i686-pokysdk-linux//usr//bin//i586-poky-elf//i586-poky-elf-gdb
-IMAGE=$1
-
- ${DOCKER_EXEC_TTY} ${CONTAINER} ${GDB_PATH} ${IMAGE}
diff --git a/scripts/make.zephyr b/scripts/make.zephyr
deleted file mode 100755
index 55f0cef..0000000
--- a/scripts/make.zephyr
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/usr/bin/env bash
-
-echo $CEED_EXE
-
-if [ -z "$CEED_EXE" ]; then
-  CEED_EXE=./ceed/ceed
-fi
-
-if [ -z "$ZEPHYR_CONTAINER" ]; then
-  ZEPHYR_CONTAINER=zephyr-test
-fi
-
-ZEPHYR_ENV="ZEPHYR_GCC_VARIANT=zephyr ZEPHYR_SDK_INSTALL_DIR=/opt/zephyr-sdk ZEPHYR_BASE=/crops/zephyr-project/"
-ALL_PARAMS=$*
-
-if [ "$#" -eq 0 ]; then
-    echo $0: No parameters found
-    exit 1
-fi
-
-${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g "${ZEPHYR_ENV} make ${ALL_PARAMS}"
diff --git a/scripts/run_containers b/scripts/run_containers
deleted file mode 100755
index d2c8066..0000000
--- a/scripts/run_containers
+++ /dev/null
@@ -1,59 +0,0 @@
-#!/usr/bin/env bash
-
-# This is a sanity test script for the CODI and toolchain Docker images.
-# This runs the test containers.
-# Then it runs ceed -l to talk to codi to list the 4 test toolchains
-#
-# Example:
-#
-# ./tests/run_containers [NUM_TOOLCHAIN CONATINERS TO START DEFAULT:4]
-
-TOPDIR=`git rev-parse --show-toplevel`
-# note, currently the turff node and the container name MUST match exactly or have matching formats
-# Example: TURFFID=repo/image:tag and container name repo-image-tag
-# The Docker API does not allow special characters in container names except '-'
-NAME_BASE="crops-toolchain-test"
-NUM_TOOLCHAINS=4
-if [ "$1" != "" ]; then
-  NUM_TOOLCHAINS=$1
-fi
-
-
-if [ "$DEBUG" == "" ]; then
-    echo "Start CODI container"
-    docker run -d --name codi-test -v /var/run/docker.sock:/var/run/docker.sock --net=host crops/codi:test || \
-	{ echo 'docker run codi failed' ; exit 1; }
-else
-    echo "Start DEBUG CODI container"
-    docker run -d --name codi-test-debug -v /var/run/docker.sock:/var/run/docker.sock --net=host crops/codi:testdebug || \
-	{ echo 'docker run codi failed' ; exit 1; }
-fi
-II=0
-while [ $II -lt $NUM_TOOLCHAINS ]; do
-  echo "Start toolchain container $II"
-  sleep 2;
-  docker run -d --name ${NAME_BASE}${II} -v /crops/:/crops/ --env TURFFID=${NAME_BASE}${II} --net=host crops/toolchain:test || \
-  { echo 'docker run toolchain-test${II} failed' ; exit 1; }
-  let II=$II+1
-done
-
-echo "Start Zephyr toolchain container"
-sleep 2;
-mkdir -p $HOME/crops-test-workspace
-docker run -d --name zephyr-test -v $HOME/crops-test-workspace/:/crops/ --env TURFFID=zephyr-test --net=host crops/zephyr:test || \
-  { echo 'docker run zephyr-test failed' ; exit 1; }
-
-echo "List containers known to CODI"
-sleep 5;
-cd ${TOPDIR}/ceed
-
-# if docker-machine exists then we are on a mac/windows and use the address of the vm we are running in
-# else localhost
-if [ -x "$(command -v docker-machine)" ]; then
-  NAME=`docker-machine active`
-  ADDRESS=`docker-machine ip ${NAME}`
-else
-  # linux can run over unix sockets rather than ip but ip is more cross platform
-  ADDRESS=127.0.0.1
-fi
-./ceed -i $ADDRESS -s 10000 -l
diff --git a/scripts/stop_containers b/scripts/stop_containers
deleted file mode 100755
index b8d0cb7..0000000
--- a/scripts/stop_containers
+++ /dev/null
@@ -1,33 +0,0 @@
-#!/usr/bin/env bash
-
-# This is a sanity test script for the CODI and toolchain Docker images.
-# This stops the test containers.
-#
-# Example:
-#
-# ./scripts/stop_containers
-
-NAME_BASE="crops-toolchain-test"
-
-II=0
-Q=`docker ps -a | egrep ${NAME_BASE}${II} | awk '{print $1}'`
-while [ "$Q" != ""  ]; do
-    echo "Stop and Remove toolchain container $II"
-    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
-    let II=$II+1
-    Q=`docker ps -a | egrep ${NAME_BASE}${II} | awk '{print $1}'`
-done
-
-echo "Stop and remove Zephyr test container"
-Q=`docker ps -a | egrep zephyr-test | awk '{print $1}'`
-if [ "$Q"  != "" ]; then
-    echo "Removing Zephyr container"
-    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
-fi
-
-echo "Stop and remove CODI test container"
-Q=`docker ps -a | egrep codi-test | awk '{print $1}'`
-if [ "$Q"  != "" ]; then
-    echo "Removing codi container"
-    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
-fi
diff --git a/tests.py b/tests.py
deleted file mode 100644
index f574c29..0000000
--- a/tests.py
+++ /dev/null
@@ -1,32 +0,0 @@
-''' CROPS test runner '''
-
-import unittest
-import sys
-
-def run_unittests():
-    ''' Execute Unit Tests '''
-    tests = unittest.TestLoader().discover('tests/unit')
-    result = unittest.TextTestRunner(verbosity=2).run(tests)
-    return result.wasSuccessful()
-
-def run_functional_tests():
-    ''' Execute Functional Tests '''
-    tests = unittest.TestLoader().discover('tests/functional')
-    result = unittest.TextTestRunner(verbosity=2).run(tests)
-    return result.wasSuccessful()
-
-if __name__ == '__main__':
-    print "#" * 70
-    print "Test Runner: Unit tests"
-    print "#" * 70
-    unit_results = run_unittests()
-
-    print "#" * 70
-    print "Test Runner: Functional tests"
-    print "#" * 70
-    functional_results = run_functional_tests()
-
-    if unit_results and functional_results:
-        sys.exit(0)
-    else:
-        sys.exit(1)
diff --git a/tests/functional/test_ceed_basic.py b/tests/functional/test_ceed_basic.py
deleted file mode 100644
index ed7a7a9..0000000
--- a/tests/functional/test_ceed_basic.py
+++ /dev/null
@@ -1,104 +0,0 @@
-''' Test Basic ceed/codi api'''
-
-import unittest
-import re
-import subprocess
-import utils.ceedutil as ceedutil
-
-
-# This test set ASSUMES the initial scripts have been run and therefore we have
-# 1) 1 codi container named codi-test
-# 2) 4 toolchain containers named test-toolchain-test[0-3]
-
-
-
-
-class CeedBasicTests(unittest.TestCase):
-    ''' Base class for testing ceed '''
-
-    def setUp(self):
-        ''' Define some unique data for validation '''
-        self.dockerAddress = ceedutil.getDockerAddress().strip()
-        self.tbase=ceedutil.ToolchainNameBase
-        self.tnum=ceedutil.ToolchainNumber
-        self.cPort=ceedutil.CodiPort
-
-    def tearDown(self):
-        ''' Destroy unique data '''
-        self.dockerAddress = None
-
-    def test_connect(self):
-        ''' Connect to codi'''
-        SUBSTRING="Connected to CODI on"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-l"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertTrue(success)
-
-    def test_connect_with_port(self):
-        ''' Connect to codi'''
-        SUBSTRING="Connected to CODI on"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-s",str(self.cPort),"-l"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertTrue(success)
-
-    def test_connect_with_badport_shouldfail(self):
-        ''' Connect to codi'''
-        SUBSTRING="Connected to CODI on"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-s",str(self.cPort+1),"-l"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertFalse(success)
-
-
-    def test_listContainers(self):
-        ''' List all the toolchain Containers'''
-        SUBSTRING1="TURFF"
-        SUBSTRING2=self.tbase
-        EXPECTED_COUNT=4
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-l"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-
-        count=0
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING1) >= 0:
-                if line.find(SUBSTRING2) >= 0:
-                    count+=1
-        self.assertEqual(count,EXPECTED_COUNT)
diff --git a/tests/functional/test_ceed_commands.py b/tests/functional/test_ceed_commands.py
deleted file mode 100644
index 72c22ea..0000000
--- a/tests/functional/test_ceed_commands.py
+++ /dev/null
@@ -1,121 +0,0 @@
-''' Test Basic ceed/codi api'''
-
-import unittest
-import re
-import subprocess
-import utils.ceedutil as ceedutil
-
-
-# This test set ASSUMES the initial scripts have been run and therefore we have
-# 1) 1 codi container named codi-test
-# 2) 4 toolchain containers named test-toolchain-test[0-3]
-
-
-class CeedCommandsTests(unittest.TestCase):
-    ''' Base class for testing ceed '''
-
-    def setUp(self):
-        ''' Define some unique data for validation '''
-        self.dockerAddress = ceedutil.getDockerAddress().strip()
-        self.tbase=ceedutil.ToolchainNameBase
-        self.tnum=ceedutil.ToolchainNumber
-
-    def tearDown(self):
-        ''' Destroy unique data '''
-        self.dockerAddress = None
-
-    def test_command(self):
-        ''' Get Output from simple command'''
-        SUBSTRING="/bin/bash"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0", "-g","which bash"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertTrue(success)
-
-    def test_command_all(self):
-        ''' Get Output from simple command for all containers'''
-        SUBSTRING="/bin/bash"
-        successAll=True
-        for i in range(self.tnum):
-            try:
-                p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+str(i), "-g","which bash"],stdout=subprocess.PIPE)
-            except subprocess.CalledProcessError as e:
-                print e.output
-                self.assertTrue(False)
-
-            success=False
-            output=p.communicate()[0]
-
-            for line in output.split('\n'):
-                if line.find(SUBSTRING) >= 0:
-                    success=True
-                    break
-            successAll&=success
-        self.assertTrue(successAll)
-
-
-    def test_command_args_switch(self):
-        ''' Get Output from simple command using argument switch'''
-        SUBSTRING="/bin/bash"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0", "-r","bash","-g","which"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertTrue(success)
-
-
-    def test_command_env_inline(self):
-        ''' Pass env as Q=R cmd'''
-        SUBSTRING="FROGS=FRIENDS"
-        try:
-            p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0", "-g","FROGS=FRIENDS printenv"],stdout=subprocess.PIPE)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-        output=p.communicate()[0]
-
-        for line in output.split('\n'):
-            if line.find(SUBSTRING) >= 0:
-                success=True
-                break
-        self.assertTrue(success)
-
-    # This will be added when the -e flag is fixed
-    # def test_command_env_as_argument(self):
-    #     ''' Pass env using the -e switch to cmd'''
-    #     SUBSTRING="FROGS=FRIENDS"
-    #     try:
-    #         p = subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0", "-e","FROGS=FRIENDS","-g","printenv"],stdout=subprocess.PIPE)
-    #     except subprocess.CalledProcessError as e:
-    #         print e.output
-    #         self.assertTrue(False)
-
-    #     success=False
-    #     output=p.communicate()[0]
-
-    #     for line in output.split('\n'):
-    #         if line.find(SUBSTRING) >= 0:
-    #             success=True
-    #             break
-    #     self.assertTrue(success)
diff --git a/tests/functional/test_zephyr_build.py b/tests/functional/test_zephyr_build.py
deleted file mode 100644
index 97fedf7..0000000
--- a/tests/functional/test_zephyr_build.py
+++ /dev/null
@@ -1,101 +0,0 @@
-''' Test Zephyr Build'''
-import unittest
-import re
-import subprocess
-import os.path
-import utils.ceedutil as ceedutil
-
-
-# This test set ASSUMES the initial scripts have been run and therefore we have
-# 1) 1 codi container named codi-test
-# 2) 1 zephyr toolchain container named zephyr-test
-
-
-class ZephyrBuildTest(unittest.TestCase):
-    ''' Base class for testing Zephyr builds '''
-
-    def setUp(self):
-        ''' Define some unique data for validation '''
-        self.dockerAddress = ceedutil.getDockerAddress().strip()
-        self.codiPort=ceedutil.CodiPort
-        self.zephyrName="zephyr-test"
-        self.zephyrHostPath=os.environ['HOME']+"/crops-test-workspace/"
-        self.zephyrContainerPath="/crops/"
-        self.zephyrPrjPath="zephyr-project/samples/nanokernel/apps/hello_world/"
-        self.zephyrBin="outdir/zephyr.bin"
-        self.devnull=open(os.devnull, 'w')
-
-    def tearDown(self):
-        ''' Destroy unique data '''
-        self.dockerAddress = None
-
-    def test_a_git_clone(self):
-        ''' Checkout Zephyr source'''
-        SUBSTRING="Note: checking out"
-        try:
-            subprocess.call(["rm","-rf",os.environ['HOME']+"/crops-test-workspace/zephyr-project"],stdout=self.devnull)
-            subprocess.call(["ceed/ceed","-i",self.dockerAddress,"-d",self.zephyrName, "-s",str(self.codiPort),
-                "-g","git clone --branch v1.0.0 /zephyr-src /crops/zephyr-project"],stdout=self.devnull)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-
-        if os.path.isdir(self.zephyrHostPath+self.zephyrPrjPath):
-            success=True
-
-        self.assertTrue(success)
-
-    def test_x86_build(self):
-        ''' Build X86 hello world application\n'''
-        BOARD="arduino_101"
-        try:
-            subprocess.call(["scripts/make.zephyr","pristine","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-            subprocess.call(["scripts/make.zephyr","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-
-        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath + self.zephyrBin):
-            success=True
-
-        self.assertTrue(success)
-
-
-    def test_arm_build(self):
-        ''' Build ARM hello world application\n'''
-        BOARD="arduino_due"
-        try:
-            subprocess.call(["scripts/make.zephyr","pristine","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-            subprocess.call(["scripts/make.zephyr","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-
-        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath + self.zephyrBin):
-            success=True
-
-        self.assertTrue(success)
-
-
-    def test_arc_build(self):
-        ''' Build ARC hello world application\n'''
-        BOARD="arduino_101_sss"
-        try:
-            subprocess.call(["scripts/make.zephyr","pristine","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-            subprocess.call(["scripts/make.zephyr","BOARD="+BOARD,"-C",self.zephyrContainerPath+self.zephyrPrjPath],stdout=self.devnull)
-        except subprocess.CalledProcessError as e:
-            print e.output
-            self.assertTrue(False)
-
-        success=False
-
-        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath + self.zephyrBin):
-            success=True
-
-        self.assertTrue(success)
diff --git a/tests/functional/utils/__init__.py b/tests/functional/utils/__init__.py
deleted file mode 100644
index e69de29..0000000
diff --git a/tests/functional/utils/ceedutil.py b/tests/functional/utils/ceedutil.py
deleted file mode 100644
index ea75b90..0000000
--- a/tests/functional/utils/ceedutil.py
+++ /dev/null
@@ -1,20 +0,0 @@
-# some shared utility functions
-import subprocess
-
-ToolchainNameBase="crops-toolchain-test"
-ToolchainNumber=4
-CodiPort=10000
-def cmd_exists(cmd):
-    return subprocess.call ("command -v "+cmd,shell=True,
-                            stdout=subprocess.PIPE,stderr=subprocess.PIPE)==0
-
-def getDockerMachineAddress():
-    machine_name=subprocess.check_output(['docker-machine','active'])
-    ADDRESS=subprocess.check_output(['docker-machine','ip',machine_name.strip()])
-    return ADDRESS
-
-def getDockerAddress():
-    ADDRESS="127.0.0.1"
-    if cmd_exists('docker-machine'):
-        ADDRESS=getDockerMachineAddress()
-    return ADDRESS
diff --git a/tests/unit/test_basic.py b/tests/unit/test_basic.py
deleted file mode 100644
index 1856536..0000000
--- a/tests/unit/test_basic.py
+++ /dev/null
@@ -1,19 +0,0 @@
-''' Crawl the running Docker site and verify all links give a 200 OK '''
-
-import unittest
-import subprocess
-
-
-# Placeholder for future python based codi/TURFF
-
-class BasicTests(unittest.TestCase):
-    ''' Base class for testing '''
-
-    def setUp(self):
-        ''' Define some unique data for validation '''
-        pass
-
-
-    def tearDown(self):
-        ''' Destroy unique data '''
-        pass
diff --git a/tests/unit/test_runbitbake.py b/tests/unit/test_runbitbake.py
deleted file mode 100644
index 3b3a733..0000000
--- a/tests/unit/test_runbitbake.py
+++ /dev/null
@@ -1,130 +0,0 @@
-#!/usr/bin/env python
-
-import unittest
-import os
-import subprocess
-import shutil
-import tempfile
-import sys
-import stat
-import imp
-
-
-class RunBitbakeTestBase(unittest.TestCase):
-    def setUp(self):
-        self.tempdir = tempfile.mkdtemp(prefix="runbitbaketest-tmpdir")
-
-        self.pokydir = os.path.join(self.tempdir, "poky")
-        os.mkdir(self.pokydir)
-
-        # runbitbake.py requires --pokydir with a "oe-init-build-env" script
-        self.setupscript = os.path.join(self.pokydir, "oe-init-build-env")
-        with open(self.setupscript, "w"):
-            pass
-
-        # Create a builddir and confdir as if oe-init-build-env had ran
-        self.builddir = os.path.join(self.tempdir, "build")
-        self.confdir = os.path.join(self.builddir, "conf")
-        os.mkdir(self.builddir)
-        os.mkdir(self.confdir)
-
-        # Create an executable bitbake that does nothing
-        self.bindir = os.path.join(self.tempdir, "bin")
-        os.mkdir(self.bindir)
-
-        self.bitbake = os.path.join(self.bindir, "bitbake")
-        with open(self.bitbake, "w") as f:
-            f.write("#!/bin/sh\n")
-            os.chmod(self.bitbake, stat.S_IRWXU)
-
-        # Make sure runbitbake.py can run our fake bitbake
-        os.environ["PATH"] = "{}:{}".format(self.bindir, os.environ["PATH"])
-
-        # We will have one line local.conf and bblayers.conf.
-        self.local_conf = os.path.join(self.confdir, "local.conf")
-        with open(self.local_conf, "w") as f:
-            f.write("Some data\n")
-
-        self.bblayers_conf = os.path.join(self.confdir, "bblayers.conf")
-        with open(self.bblayers_conf, "w") as f:
-            f.write("Other data\n")
-
-        # Create the files that contain extra data to be added to the original
-        # configuration files
-        self.extraconf = os.path.join(self.tempdir, "extra.conf")
-        with open(self.extraconf, "w") as f:
-            f.write("MOAR STUFF\nEVEN MOAR!!!!\n")
-
-        self.extralayers = os.path.join(self.tempdir, "bblayers_extra.conf")
-        with open(self.extralayers, "w") as f:
-            f.write("BBLAYERS MOAR STUFF\nEVEN MOAR BBLAYERS!!!!\n")
-
-    def tearDown(self):
-        shutil.rmtree(self.tempdir, ignore_errors=True)
-
-
-class ConfFilesTest(RunBitbakeTestBase):
-    def setUp(self):
-        super(ConfFilesTest, self).setUp()
-
-        # These ".orig" files are for checking that the file is restored back
-        # to the original state
-        self.local_conf_orig = os.path.join(self.tempdir, "local.conf.orig")
-        self.bblayers_conf_orig = os.path.join(self.tempdir,
-                                               "bblayers.conf.orig")
-        shutil.copyfile(self.local_conf, self.local_conf_orig)
-        shutil.copyfile(self.bblayers_conf, self.bblayers_conf_orig)
-
-
-
-    def test_files_are_restored(self):
-        cmd = """python helpers/runbitbake.py --pokydir={} """ \
-              """-t junk -b {} """ \
-              """--extraconf={} """ \
-              """--extralayers={}""".format(self.pokydir, self.builddir,
-                                            self.extraconf, self.extralayers)
-
-        subprocess.call(cmd.split(), stderr=sys.stderr, stdout=sys.stdout,
-                        shell=False)
-
-        with open(self.local_conf_orig, "r") as f:
-            origlines = f.readlines()
-        with open(self.local_conf, "r") as f:
-            newlines = f.readlines()
-        self.assertListEqual(origlines, newlines)
-
-        with open(self.bblayers_conf_orig, "r") as f:
-            origlines = f.readlines()
-        with open(self.bblayers_conf, "r") as f:
-            newlines = f.readlines()
-        self.assertListEqual(origlines, newlines)
-
-
-class AddExtraTest(RunBitbakeTestBase):
-    def setUp(self):
-        super(AddExtraTest, self).setUp()
-        # Since we are importing a file in the source directory, this prevents
-        # cluttering the directory with a .pyc file.
-        sys.dont_write_bytecode = True
-
-        self.runbitbake = os.path.join("helpers", "runbitbake.py")
-        self.module = imp.load_source("", self.runbitbake)
-
-        self.addextra_tempdir = os.path.join(self.tempdir, "addextratmp")
-        os.mkdir(self.addextra_tempdir)
-
-    def test_addextra_changed_files(self):
-        addextra = self.module.addextra
-        addextra(self.addextra_tempdir, self.builddir, "local.conf",
-                 [self.extraconf])
-
-        with open(self.extraconf, "r") as f:
-            extraconflines = set(f.readlines())
-        with open(self.local_conf, "r") as f:
-            localconflines = set(f.readlines())
-
-        intersection = extraconflines & localconflines
-        self.assertListEqual(list(intersection), list(extraconflines))
-
-if __name__ == '__main__':
-    unittest.main()
diff --git a/turff/Makefile b/turff/Makefile
deleted file mode 100755
index 1664c59..0000000
--- a/turff/Makefile
+++ /dev/null
@@ -1,19 +0,0 @@
-CFLAGS=-g -I. -I../
-LDFLAGS=-lm
-DEPS = turff_api.h ../globals.h ../utils.h
-OBJ = turff.o turff_api.o ../utils.o ../globals.o
-
-all: turff
-
-debug: DFLAGS=-DDBG
-debug: clean turff
-
-%.o: %.c $(DEPS)
-	$(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
-
-turff: $(OBJ)
-	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
-
-.PHONY: clean
-clean:
-	rm -rf $(OBJ) turff
diff --git a/turff/turff.c b/turff/turff.c
deleted file mode 100755
index d63fb99..0000000
--- a/turff/turff.c
+++ /dev/null
@@ -1,128 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdlib.h>
-#include <signal.h>
-#include <netdb.h>
-#include "utils.h"
-#include "turff_api.h"
-
-#define PORT_RANGE 100
-extern char *turff_ops[];
-extern char *codi_params[];
-static int sock_fd;
-
-/*TODO - close sockets on CTRL+C. Get rid of this when running as a daemon */
-void close_sockets(int dummy) {
-  close(sock_fd);
-  INFO("\nClosed the sockets. Exiting!\n") ;
-  exit(0);
-}
-
-int main(int argc, char *argv[]) {
-
-  struct addrinfo *addr_p = NULL;
-  struct sockaddr cli_addr;
-  socklen_t cli_len;
-  int i, ceed_sock_fd, saved_out = -1, saved_err = -1, bound = 0;
-  const char *port;
-
-  parse_turff_params(argc, argv);
-
-  bound = 0;
-  port = turff_ops[KEY('s')];
-  while(!bound && (int) *port > (int) *turff_ops[KEY('s')] - PORT_RANGE) {
-
-    addr_p = bind_to_socket(NULL, port, &sock_fd);
-
-    if (addr_p == NULL) {
-      asprintf((char**)&port, "%d", atoi(port)-1) ;
-    } else {
-      turff_ops[KEY('s')] = (char*) port;
-      register_agent(turff_ops);
-      bound = 1;
-      INFO("TURFF listening on port: %s\n", port);
-    }
-  }
-
-  if (addr_p == NULL) {
-    ERR("Could not bind agent to socket\n");
-    exit(EXIT_FAILURE);
-  }
-
-  listen(sock_fd,1);
-  cli_len = sizeof(cli_addr);
-
-  signal(SIGINT, close_sockets);
-
-  while(1) {
-    ceed_sock_fd = accept(sock_fd, &cli_addr, &cli_len);
-
-    if (ceed_sock_fd < 0) {
-      ERR("ERROR on accept");
-    }
-
-    /* receive parameters from CODI */
-    receive_args(ceed_sock_fd, codi_params);
-
-    if (!strcmp(CODI_NAME, codi_params[KEY('z')])) {
-      /* save stdout and stderr file descriptors */
-      dup2(2, saved_err);
-      dup2(1, saved_out);
-
-      /* redirect stdout & stderr to ceed socket */
-      dup2(ceed_sock_fd, 2);
-      dup2(ceed_sock_fd, 1);
-
-      /* make sure ceed and turff APIs match*/
-      if (!strcmp(turff_ops[KEY('v')], codi_params[KEY('v')])) {
-        /* process ceed requests */
-        if (process_params(codi_params))
-          ERR("ERROR processing ceed request\n");
-      } else {
-        INFO("Incompatible versions: TURFF[%s] - CODI[%s]\n",
-        turff_ops[KEY('v')], codi_params[KEY('v')]);
-      }
-
-      /* delay EOM - send as separate buffer */
-      fprintf(stdout, TURFF_EOM);
-      fflush(stdout);
-
-      /* restore stdout and stderr */
-      dup2(saved_err, 2);
-      dup2(saved_out, 1);
-
-      /* clear parameters and wait for a new service request */
-      for (i = 0; i< KEY_ARR_SZ; i++){
-        if (codi_params[i] != NULL) {
-#ifdef DBG
-          DEBUG("Received parameter [%c] : %s\n", i+'a', codi_params[i] );
-#endif
-          free(codi_params[i]);
-          codi_params[i] = NULL ;
-        }
-      }
-    } else {
-      /* ceed connected to turff directly. send it EOM*/
-      INFO("Request did not originate from CODI!\n");
-      codi_params[KEY('e')] = "set";
-      send_args(ceed_sock_fd, codi_params);
-    }
-    close(ceed_sock_fd);
-  }
-}
-
diff --git a/turff/turff_api.c b/turff/turff_api.c
deleted file mode 100755
index 1cd3728..0000000
--- a/turff/turff_api.c
+++ /dev/null
@@ -1,255 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdio.h>
-#include <stdlib.h>
-#include <strings.h>
-#include <unistd.h>
-#include <errno.h>
-#include <ctype.h>
-#include "utils.h"
-
-const char workspace_root[] = "/crops";
-char *turff_ops[KEY_ARR_SZ];
-char *codi_params[KEY_ARR_SZ];
-
-void print_turff_usage(int argc, char *argv[]) {
-  printf("Usage: %s \n", argv[0]);
-  printf(" -s port number on which the agent is listening [default: 9999]\n");
-  printf(" -i CODI IP address [default: 127.0.0.1]\n");
-  printf(" -d CODI port number [default: 10000]\n");
-  printf(" -n node_id to be sent to CODI [default: TURFFID env variable]\n");
-  printf(" -h print this help menu\n");
-  printf(" -v show turff version\n");
-}
-
-void init_turff_params(){
-  int i;
-
-  for (i = 0; i <  KEY_ARR_SZ; i++)
-    codi_params[i] = NULL;
-
-  turff_ops[KEY('s')] = TURFF_PORT;
-  turff_ops[KEY('v')] = VERSION;
-  turff_ops[KEY('i')] = CODI_IP_NATIVE;
-  turff_ops[KEY('d')] = CODI_PORT;
-  turff_ops[KEY('z')] = TURFF_NAME;
-}
-
-void parse_turff_params(int argc, char *argv[]) {
-  int c ;
-
-  init_turff_params() ;
-
-  while ((c = getopt(argc, argv, "hvi:d:s:i:n:")) != -1) {
-    switch (c) {
-    case 'h':
-      print_turff_usage(argc, argv);
-      exit(EXIT_SUCCESS);
-      break;
-    case 'v':
-      INFO("turff version : %s\n", VERSION);
-      exit(EXIT_SUCCESS);
-      break;
-    case 's':
-      turff_ops[KEY('s')]  = optarg;
-      break;
-    case 'i':
-      turff_ops[KEY('i')]  = optarg;
-      break;
-    case 'd':
-      turff_ops[KEY('d')]  = optarg;
-      break;
-    case 'n':
-      turff_ops[KEY('n')]  = optarg;
-      break;
-    case '?':
-      if (optopt == 's')
-        INFO("Option -%c requires an argument.\n", optopt);
-      else if (isprint (optopt))
-        INFO("Unknown option `-%c'.\n", optopt);
-      else
-        INFO("Unknown option character `\\x%x'.\n", optopt);
-    default:
-      print_turff_usage(argc, argv);
-      exit(EXIT_FAILURE);
-    }
-  }
-}
-
-/* TODO - add error checks and return error codes*/
-int exec_command(char* cmd) {
-  system(cmd);
-  free(cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int build_at_prj(char *platform, char *prj_dir)
-{
-  char cmd[] = "cd %s/%s/%s; chmod -R 777 *;./autogen.sh $CONFIGURE_FLAGS; make;";
-  char *build_cmd;
-
-  asprintf(&build_cmd, cmd, workspace_root, platform, prj_dir);
-  exec_command(build_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int clean_at_prj(char *platform, char *prj_dir) {
-  char cmd[] = "make distclean -C %s/%s/%s/";
-  char *clean_cmd;
-
-  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
-  exec_command(clean_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int build_cm_prj(char *platform, char *prj_dir)
-{
-  char cmd[] = "cd %s/%s/%s; mkdir -p build; cd build; cmake ../; make;";
-  char *build_cmd;
-
-  asprintf(&build_cmd, cmd, workspace_root, platform, prj_dir);
-  exec_command(build_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int clean_cm_prj(char *platform, char *prj_dir)
-{
-  char cmd[] = "make clean -C %s/%s/%s/build;";
-  char *clean_cmd;
-
-  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
-  exec_command(clean_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int build_m_prj(char *platform, char *prj_dir, char *make_target)
-{
-  char cmd[] = "make %s -C %s/%s/%s";
-  char *build_cmd;
-
-  asprintf(&build_cmd, cmd, make_target, workspace_root, platform, prj_dir);
-  exec_command(build_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int clean_m_prj(char *platform, char *prj_dir) {
-  char cmd[] = "make clean -C %s/%s/%s/";
-  char *clean_cmd;
-
-  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
-  exec_command(clean_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int generic_cmd(char *params[]) {
-  char cmd[] = "%s %s";
-  char *gen_cmd;
-
-  asprintf(&gen_cmd, cmd, params[KEY('g')], params[KEY('r')]);
-  exec_command(gen_cmd);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int build_prj(char *params[])
-{
-  if(params[KEY('t')] != NULL)
-    build_at_prj(params[KEY('a')], params[KEY('p')]);
-  else if(params[KEY('m')] != NULL)
-    build_m_prj(params[KEY('a')], params[KEY('p')], params[KEY('m')]);
-  else if(params[KEY('k')] != NULL)
-    build_cm_prj(params[KEY('a')], params[KEY('p')]);
-  else
-    return -1;
-
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int clean_prj(char *params[])
-{
-  if(params[KEY('t')] != NULL)
-    clean_at_prj(params[KEY('a')], params[KEY('p')]);
-  else if(params[KEY('m')] != NULL)
-    clean_m_prj(params[KEY('a')], params[KEY('p')]);
-  else if(params[KEY('k')] != NULL)
-    clean_cm_prj(params[KEY('a')], params[KEY('p')]);
-  else
-    return -1;
-
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int process_params(char *params[]) {
-  int i;
-  for (i = 0; i< KEY_ARR_SZ; i++){
-    if(params[i] != NULL) {
-      switch ('a' + i) {
-      case 'b':
-        build_prj(params);
-        break;
-      case 'c':
-        clean_prj(params);
-        break;
-      case 'g':
-        generic_cmd(params);
-        break;
-      }
-    }
-  }
-  return 0;
-}
-
-/* TODO - send port map to CODI*/
-int register_agent(char *turff_ops[]) {
-  int turff_sock_fd;
-  struct addrinfo *addr_p;
-  char *turff_id;
-
-  addr_p = connect_to_socket(turff_ops[KEY('i')], turff_ops[KEY('d')], &turff_sock_fd);
-
-  if(addr_p == NULL) {
-    INFO("Please ensure that CODI is running\n");
-    ERR("Could not connect to CODI\n");
-  } else {
-    INFO("Connected to codi on %s:%s\n",
-      turff_ops[KEY('i')], turff_ops[KEY('d')]);
-  }
-
-  if (turff_ops[KEY('n')] == NULL) {
-    turff_id = getenv(TURFFID);
-    if(turff_id == NULL) {
-      INFO("Unable to read TURFFID from the environment\n");
-      INFO("Setting TURFFID to \"default\"\n");
-      turff_ops[KEY('n')] = "default" ;
-    } else
-      turff_ops[KEY('n')] = turff_id ;
-  }
-  sleep(2);
-  send_args(turff_sock_fd, turff_ops);
-
-  return 0;
-}
diff --git a/turff/turff_api.h b/turff/turff_api.h
deleted file mode 100755
index c2a3aed..0000000
--- a/turff/turff_api.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef TURFF_API_H
-#define TURFF_API_H
-
-void parse_turff_params(int argc, char *argv[]);
-int process_params(char *params[]);
-int register_agent(char *turff_ops[]);
-
-#endif
diff --git a/turff/turff_launcher b/turff/turff_launcher
deleted file mode 100755
index 0df0594..0000000
--- a/turff/turff_launcher
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/usr/bin/env bash
-
-help () {
-	echo -e "\nThis is a wrapper for launching TURFF"
-	echo -e "usage: $0 -f env_config_file\n";
-	echo "Options:"
-	echo -e "-f cross compiler environment configuration file"
-	echo -e "-h show this help menu"
-	exit 1;
-}
-
-SUPERVISE=supervise
-EXEC=/bin/turff/
-
-while getopts ":hf:" opt; do
-	case $opt in
-		f)
-			env_conf_file=$OPTARG
-			;;
-		h)
-			help
-			exit 1
-			;;
-		\?)
-			echo "Invalid option: -$OPTARG"
-			exit 1
-			;;
-		:)
-			echo "Option -$OPTARG requires an argument."
-			exit 1
-			;;
-	esac
-done
-
-if [ -n "$env_conf_file" ]; then
-	source $env_conf_file
-fi
-
-if [ $? -eq 0 ] ; then
-	$SUPERVISE $EXEC
-else
-	echo "Error setting up cross compiler environment"
-fi
diff --git a/utils.c b/utils.c
deleted file mode 100755
index 11ff951..0000000
--- a/utils.c
+++ /dev/null
@@ -1,351 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#include "globals.h"
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-#include <errno.h>
-#include <unistd.h>
-#if defined(_WIN32)
-#include <winsock2.h>
-#include <wspiapi.h>
-#else
-#include <netdb.h>
-#include <sys/select.h>
-#endif
-#include "utils.h"
-
-
-/* TODO - add error checks and return error codes*/
-int redirect_sockets(int in_sock, int out_sock) {
-  int ready, received = 0;
-  fd_set read_fd_set ;
-  int size = BUFSIZ;
-  void *buf = calloc(1, size);
-
-  do {
-    FD_ZERO(&read_fd_set);
-    FD_SET(in_sock, &read_fd_set);
-    ready = select(in_sock+1, &read_fd_set, NULL, NULL, NULL);
-  } while (ready==-1 && errno == EINTR);
-
-  if (ready > 0 ){
-    if (FD_ISSET(in_sock, &read_fd_set)) {
-      while (size > 0) {
-        received = recv(in_sock, buf, size, 0);
-        if (received < 0 ){
-          ERR("Error : %s\n", strerror(errno));
-        } else if (received == 0) {
-          break ;
-        } else {
-          size -= received;
-          if (strstr((char*) buf, TURFF_EOM)) {
-            send_data(out_sock, (const void *) buf,received);
-            break;
-          } else {
-            send_data(out_sock, (const void *) buf,received);
-          }
-
-        }
-      }
-    }
-  } else if (ready < 0){
-    free(buf);
-    ERR("Select error\n");
-  }
-  free(buf);
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int send_data(int sock_fd, const void *buf, size_t size) {
-  int n, ready, sent = 0;
-  fd_set write_fd_set ;
-  struct timeval timeout;
-
-  timeout.tv_sec = (long) 0.3;
-  timeout.tv_usec = 0;
-
-  FD_ZERO(&write_fd_set);
-  FD_SET(sock_fd, &write_fd_set);
-  n = sock_fd +1;
-
-  ready = select(n, NULL, &write_fd_set, NULL, &timeout);
-
-  if (ready) {
-    while (size > 0) {
-      sent = send(sock_fd, buf, size, 0);
-      if (sent == -1){
-        ERR("Unable to send data. Error: [%d] %s", errno, strerror(errno));
-      }
-      else {
-        size -= sent;
-#ifdef DBG
-        DEBUG("Bytes sent: %d. Bytes remaining: %zu\n", sent, size);
-#endif
-      }
-    }
-  } else if (ready == -1){
-      ERR("Select timeout\n");
-  }
-  return 0;
-}
-
-/* TODO - add error checks and return error codes*/
-int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int *done) {
-  int ready, received = 0;
-  fd_set read_fd_set ;
-
-  do {
-    FD_ZERO(&read_fd_set);
-    FD_SET(sock_fd, &read_fd_set);
-    ready = select(sock_fd+1, &read_fd_set, NULL, NULL, NULL);
-  } while (ready==-1 && errno == EINTR);
-
-  if (ready > 0 ){
-    if (FD_ISSET(sock_fd, &read_fd_set)) {
-      while (size > 0) {
-        received = recv(sock_fd, buf, size, 0);
-        if (received < 0 ){
-          ERR("Error : %s\n", strerror(errno));
-        } else if (received == 0) {
-          if (is_ceed)
-            *done = 1;
-          break ;
-        } else {
-          size -= received;
-          if (strstr((char*) buf, TURFF_EOM) && done != NULL ) {
-            memset(strstr((char*) buf, TURFF_EOM), 0, sizeof(TURFF_EOM));
-            printf("%s", (char*) buf);
-            *done = 1;
-            break;
-          } else if (is_ceed) {
-            printf("%s", (char*) buf);
-          }
-          buf = (char*)buf + received;
-#ifdef DBG
-          DEBUG("\nBytes read: %d Bytes remaining: %zu\n", received, size);
-#endif
-        }
-      }
-    }
-  } else if (ready < 0){
-    ERR("Select error : %s\n", strerror(errno));
-  }
-
-  return 0;
-}
-
-void send_chunk(int sock_fd, msg_chunk *chunk) {
-  msg_chunk *head;
-  head = chunk ;
-  while (chunk != NULL) {
-    send_data(sock_fd, chunk, sizeof(msg_chunk));
-#ifdef DBG
-    DEBUG("Chunk op_code: %d , Chunk payload: %s\n", (*chunk).op_code,
-      (*chunk).arg);
-#endif
-    chunk = chunk->next ;
-  }
-
-  /* done with this parameter - free all chunks*/
-  while (head != NULL) {
-    chunk = head;
-    head = chunk->next;
-    free(chunk);
-  }
-}
-
-int receive_chunk(int sock_fd, msg_chunk *chunk) {
-  return receive_data(sock_fd, chunk, sizeof(msg_chunk), 0, NULL);
-}
-
-void send_args(int sock_fd, char *params[]) {
-  int  i, j, num_chunks;
-  msg_chunk *new_chunk, *tail_chunk, *head_chunk ;
-
-  /* send all params in chunks of 20 chars*/
-  for(i = 0; i < KEY_ARR_SZ; i++) {
-    if (params[i] != NULL) {
-      new_chunk = calloc(1, sizeof(msg_chunk));
-      head_chunk = new_chunk;
-      tail_chunk = new_chunk;
-      num_chunks =  ceil((double) strlen(params[i]) /
-        (sizeof((*new_chunk).arg)-1));
-
-      for(j = 0; j < num_chunks; j++) {
-        (*tail_chunk).op_code = i;
-        if (j != 0) {
-          strncpy((*tail_chunk).arg, params[i]+(j*sizeof((*tail_chunk).arg)-j),
-            sizeof((*tail_chunk).arg)-1);
-        } else {
-          strncpy((*tail_chunk).arg, params[i], sizeof((*tail_chunk).arg)-1);
-        }
-
-        /* was this the last chunk*/
-        if ((j+1) != num_chunks) {
-          new_chunk = calloc(1, sizeof(msg_chunk));
-          tail_chunk->next = new_chunk;
-          tail_chunk = new_chunk;
-        }
-      }
-      /* this param is ready - send head chunk*/
-      send_chunk(sock_fd, head_chunk);
-    }
-  }
-
-  /* we are done with all params. Send EOM as an individual chunk*/
-  new_chunk = calloc(1, sizeof(msg_chunk));
-  (*new_chunk).op_code = -1;
-  strcpy((*new_chunk).arg, MSG_TERM);
-  send_chunk(sock_fd, new_chunk);
-}
-
-/* receive all params in chunks of 20 chars including terminator*/
-void receive_args(int sock_fd, char *params[]) {
-  msg_chunk param_chunk;
-  char *tmp;
-  do {
-    memset(&param_chunk, 0, sizeof(msg_chunk));
-    receive_chunk(sock_fd, &param_chunk);
-
-#ifdef DBG
-    DEBUG("Chunk op_code: %d , Chunk payload: %s\n", param_chunk.op_code,
-      &param_chunk.arg);
-#endif
-    if (param_chunk.op_code != -1) {
-      if (params[param_chunk.op_code] == NULL) {
-        tmp = calloc(1, sizeof(param_chunk.arg));
-      } else {
-        tmp = realloc(params[param_chunk.op_code], strlen(params[param_chunk.op_code])+
-          sizeof(param_chunk.arg));
-      }
-
-      params[param_chunk.op_code] = tmp;
-      strcpy(params[param_chunk.op_code] + strlen(params[param_chunk.op_code]),
-        param_chunk.arg);
-#ifdef DBG
-      DEBUG("Chunk op_code: %d , parameter: %s\n", param_chunk.op_code,
-        params[param_chunk.op_code]);
-#endif
-    }
-  }while(param_chunk.op_code != -1); /* not EOM chunk*/
-}
-
-struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int* sock_fd_out) {
-  int sock_fd, result;
-  struct addrinfo criteria, *srv_addr, *addr_p;
-
-#if defined(_WIN32)
-  WSADATA wsa_data;
-  int res = WSAStartup(MAKEWORD(2, 2), &wsa_data);
-  if (res != 0) {
-    ERR("WSAStartup failed: %d\n", res);
-  }
-#endif
-
-  /* connect to agent */
-  memset(&criteria, 0, sizeof(criteria));
-  criteria.ai_family = AF_INET;
-  criteria.ai_socktype = SOCK_STREAM;
-  criteria.ai_flags = 0;
-  criteria.ai_protocol = 0;
-
-  result = getaddrinfo(ip_in, port_in, &criteria,&srv_addr);
-
-  if(result != 0) {
-    ERR("Could not get address info list : %s\n", gai_strerror(result));
-  }
-
-  for(addr_p = srv_addr; addr_p != NULL; addr_p = addr_p->ai_next) {
-    *sock_fd_out = socket(addr_p->ai_family, addr_p->ai_socktype, addr_p->ai_protocol);
-
-    if (*sock_fd_out == -1)
-
-      continue;
-
-    if (connect(*sock_fd_out, addr_p->ai_addr, addr_p->ai_addrlen) != -1)
-      break;  /* Connected */
-
-    close(*sock_fd_out);
-  }
-
-  return addr_p ;
-}
-
-
-struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int* sock_fd_out) {
-  struct addrinfo criteria, *srv_addr;
-  struct addrinfo *addr_p;
-  int result, opt = 1;
-
-  memset(&criteria, 0, sizeof(criteria));
-  criteria.ai_family = AF_INET;
-  criteria.ai_socktype = SOCK_STREAM;
-  criteria.ai_flags = AI_PASSIVE;
-  criteria.ai_protocol = 0;
-  criteria.ai_canonname = NULL;
-  criteria.ai_addr = NULL;
-  criteria.ai_next = NULL;
-
-  result = getaddrinfo(NULL, port_in, &criteria, &srv_addr);
-
-  if (result != 0) {
-    ERR("Could not get address info list\n");
-  }
-
-  for (addr_p = srv_addr; addr_p != NULL; addr_p = addr_p->ai_next) {
-    *sock_fd_out = socket(addr_p->ai_family, addr_p->ai_socktype, addr_p->ai_protocol);
-
-    if (*sock_fd_out == -1)
-      continue;
-
-    if (setsockopt(*sock_fd_out, SOL_SOCKET, SO_REUSEADDR,
-      (char *)&opt, sizeof(opt)) < 0) {
-
-      close(*sock_fd_out);
-      ERR("setsockopt failed\n");
-    }
-
-    if (bind(*sock_fd_out, addr_p->ai_addr, addr_p->ai_addrlen) == 0)
-      break;                  /* Success */
-
-      close(*sock_fd_out);
-  }
-
-  freeaddrinfo(srv_addr);
-  return addr_p;
-}
-
-void copy_params(char *in[], char *out[]) {
-  int i;
-  for (i = 0; i< KEY_ARR_SZ; i++){
-    if (in[i] != NULL) {
-      asprintf(&out[i],"%s",in[i]);
-    }
-  }
-}
-
-void free_params(char *params[]) {
-  int i;
-  for (i = 0; i< KEY_ARR_SZ; i++){
-    if (params[i] != NULL) {
-      free(params[i]);
-      params[i] = NULL ;
-    }
-  }
-}
diff --git a/utils.h b/utils.h
deleted file mode 100755
index b4cc534..0000000
--- a/utils.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * Copyright (C) 2016 Intel Corporation
- *
- * Author: Todor Minchev <todor.minchev@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, or (at your option) any later version, as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef UTILS_H
-#define UTILS_H
-
-int send_data(int sock_fd, const void *buf, size_t size);
-int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int *done);
-void send_args(int sock_fd, char *params[]);
-void receive_args(int sock_fd, char *params[]);
-struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int* sock_fd_out);
-struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int* sock_fd_out);
-int redirect_sockets(int in_sock, int out_sock);
-void free_params(char *params[]);
-void copy_params(char *in[], char *out[]);
-
-#endif
-- 
2.25.1


