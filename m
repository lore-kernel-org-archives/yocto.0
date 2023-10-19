Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB68C001DF
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 21:42:43 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.40234.1697751758838301557
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 14:42:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b3kCvGLC;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3af64a4c97eso137161b6e.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 14:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697751758; x=1698356558; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HXcXwJ51MOuR+be58GBkOvOIdHUnCiCCTJvK2qvYEdA=;
        b=b3kCvGLCiuiIoUoCXJJ3viMSVouOM6erkh+661BT2Bn4A4S2sUKRK3yLzV0AUZyRED
         xOP1Z9KT46iJMEgo6wtRU7fvajze6eiCLiVsSCc3uduh1rozeTlETRAJowOHCDoWxwtN
         3rXidH36EdVrIafNOMj6RYgfpoLSRR21lKJmcPHHCPBS/EzUW1zllpKfI+sh4euEllsu
         1m1KZBxf4MevgBq2H/TaCNNzSWgKtP0XBgJrBdkZbvpyWWvihw3xTxECS3e0ig9o0q4C
         TSY/yQL/ykLdfFfNmvYTpTMC5Vo0nT9GvhTuz+LNVFKK1Db9IzTFEX1kwQgrsQIcW/bK
         ksVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697751758; x=1698356558;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXcXwJ51MOuR+be58GBkOvOIdHUnCiCCTJvK2qvYEdA=;
        b=oKM32kBkkSqY4OF8O4qH7Aya5MRhNReZxaj+pUp9V+TBH82QXIJGf/x+ax9zECKv0u
         T2WPcoO6eIkfIrZW/5e8acKUh3j7gExAp0qweIJopGWNHi+YpjcjUDMBHLv0oXDtwXnQ
         or9UmGZtYJ78LpJKj2C/ihmT5fupYgmEHr+2r6wisZ2enfiQsZml/gjl+hYcNzD9Xz/8
         y696tkV6mgStOC6pHpF8Qtl1Hzn/m1QPzHJunNL57FXKsmcBk+vv+C0rITBnI8xio2VU
         2bs2ukE2/ac2lfBHfTD2LcDosDOmtpZYj38APs8p2TGymcjr6q7/UxQWU+ymizyLHgH0
         SmJg==
X-Gm-Message-State: AOJu0YzTlt/tQkjqYDzBZa1eG1XMR5VGk8oSh94Bo8T3XKF4WbgDvCYU
	52C5eHt7MFis2VJn7FAtxjB1+ZVhGoSdhcWW75TVO8QApNM=
X-Google-Smtp-Source: AGHT+IFTUjdZWirnkVyLjzwEbtC6NAf344HA0HUk1iKtpSVd6W3NXYqObo549TBh+4QFldpScurM94oAIEaYdM2t064=
X-Received: by 2002:a05:6808:1b0b:b0:3b2:f393:dab1 with SMTP id
 bx11-20020a0568081b0b00b003b2f393dab1mr75815oib.21.1697751757135; Thu, 19 Oct
 2023 14:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230112132657.1618080-1-pidge@baylibre.com>
In-Reply-To: <20230112132657.1618080-1-pidge@baylibre.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 19 Oct 2023 14:42:25 -0700
Message-ID: <CANx9H-BXy29U5w4rJU9yTYYYnQWS5X-+D65cPPAJK2yv3XXtcg@mail.gmail.com>
Subject: Re: [yocto] [CROPS][PATCH] crops: Archive crops repository
To: =?UTF-8?B?RWlsw61zICdwaWRnZScgTsOtIEZobGFubmFnw6Fpbg==?= <pidge@baylibre.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000066a54c060818a2c8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 21:42:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61424

--00000000000066a54c060818a2c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged. Thank you.

On Thu, Jan 12, 2023 at 5:27=E2=80=AFAM Eil=C3=ADs 'pidge' N=C3=AD Fhlannag=
=C3=A1in <
pidge@baylibre.com> wrote:

> From: Eil=C3=ADs N=C3=AD Fhlannag=C3=A1in <pidge@baylibre.com>
>
> This repository is depreciated and is no longer maintained so we should
> archive it and make note that development for crops is currently at
> https://github.com/crops
>
> Signed-off-by: Eil=C3=ADs N=C3=AD Fhlannag=C3=A1in <pidge@baylibre.com>
> ---
>  .dockerignore                          |   1 -
>  .gitignore                             |   9 -
>  .travis.yml                            |  44 ----
>  LICENSE                                | 339 ------------------------
>  Makefile                               |  15 --
>  README.md                              | 154 +----------
>  TODO                                   |  10 -
>  ceed/Makefile                          |  42 ---
>  ceed/ceed.c                            |  70 -----
>  ceed/ceed_api.c                        | 157 -----------
>  ceed/ceed_api.h                        |  22 --
>  codi/Makefile                          |  19 --
>  codi/codi.c                            | 126 ---------
>  codi/codi_api.c                        | 134 ----------
>  codi/codi_api.h                        |  25 --
>  codi/codi_db.c                         | 137 ----------
>  codi/codi_db.h                         |  28 --
>  codi/codi_launcher.c                   | 146 ----------
>  codi/codi_launcher.h                   |  58 ----
>  codi/codi_list.c                       | 100 -------
>  codi/codi_list.h                       |  33 ---
>  confs/ostro/ostro.conf                 |  16 --
>  confs/ostro/ostro.layers               |   0
>  dockerfiles/Dockerfile.ceed.deps       |  16 --
>  dockerfiles/Dockerfile.ceed.linux      |  19 --
>  dockerfiles/Dockerfile.ceed.win        |  19 --
>  dockerfiles/Dockerfile.codi            |  34 ---
>  dockerfiles/Dockerfile.codi.deps       |  31 ---
>  dockerfiles/Dockerfile.ostro           |  24 --
>  dockerfiles/Dockerfile.ostro.deps      |  33 ---
>  dockerfiles/Dockerfile.toolchain       |  49 ----
>  dockerfiles/Dockerfile.toolchain.deps  |  18 --
>  dockerfiles/Dockerfile.zephyr          |  59 -----
>  dockerfiles/Dockerfile.zephyr.deps     |  24 --
>  globals.c                              |  47 ----
>  globals.h                              |  69 -----
>  helpers/runbitbake.py                  | 148 -----------
>  helpers/startOstroScript.sh            |  42 ---
>  installers/ostro-installer.sh          | 108 --------
>  installers/zephyr-installer.sh         | 225 ----------------
>  scripts/bitbake.ostro                  |  12 -
>  scripts/build_ceed                     |  11 -
>  scripts/build_containers               |  73 -----
>  scripts/build_containers.ostro         |  35 ---
>  scripts/gdb.zephyr                     |   8 -
>  scripts/make.zephyr                    |  21 --
>  scripts/run_containers                 |  59 -----
>  scripts/stop_containers                |  33 ---
>  tests.py                               |  32 ---
>  tests/functional/test_ceed_basic.py    | 104 --------
>  tests/functional/test_ceed_commands.py | 121 ---------
>  tests/functional/test_zephyr_build.py  | 101 -------
>  tests/functional/utils/__init__.py     |   0
>  tests/functional/utils/ceedutil.py     |  20 --
>  tests/unit/test_basic.py               |  19 --
>  tests/unit/test_runbitbake.py          | 130 ---------
>  turff/Makefile                         |  19 --
>  turff/turff.c                          | 128 ---------
>  turff/turff_api.c                      | 255 ------------------
>  turff/turff_api.h                      |  24 --
>  turff/turff_launcher                   |  43 ---
>  utils.c                                | 351 -------------------------
>  utils.h                                |  30 ---
>  63 files changed, 5 insertions(+), 4274 deletions(-)
>  delete mode 100644 .dockerignore
>  delete mode 100644 .gitignore
>  delete mode 100644 .travis.yml
>  delete mode 100644 LICENSE
>  delete mode 100755 Makefile
>  mode change 100755 =3D> 100644 README.md
>  delete mode 100755 TODO
>  delete mode 100755 ceed/Makefile
>  delete mode 100755 ceed/ceed.c
>  delete mode 100755 ceed/ceed_api.c
>  delete mode 100755 ceed/ceed_api.h
>  delete mode 100644 codi/Makefile
>  delete mode 100644 codi/codi.c
>  delete mode 100644 codi/codi_api.c
>  delete mode 100644 codi/codi_api.h
>  delete mode 100644 codi/codi_db.c
>  delete mode 100644 codi/codi_db.h
>  delete mode 100644 codi/codi_launcher.c
>  delete mode 100644 codi/codi_launcher.h
>  delete mode 100644 codi/codi_list.c
>  delete mode 100644 codi/codi_list.h
>  delete mode 100644 confs/ostro/ostro.conf
>  delete mode 100644 confs/ostro/ostro.layers
>  delete mode 100644 dockerfiles/Dockerfile.ceed.deps
>  delete mode 100644 dockerfiles/Dockerfile.ceed.linux
>  delete mode 100644 dockerfiles/Dockerfile.ceed.win
>  delete mode 100644 dockerfiles/Dockerfile.codi
>  delete mode 100644 dockerfiles/Dockerfile.codi.deps
>  delete mode 100644 dockerfiles/Dockerfile.ostro
>  delete mode 100644 dockerfiles/Dockerfile.ostro.deps
>  delete mode 100644 dockerfiles/Dockerfile.toolchain
>  delete mode 100644 dockerfiles/Dockerfile.toolchain.deps
>  delete mode 100644 dockerfiles/Dockerfile.zephyr
>  delete mode 100644 dockerfiles/Dockerfile.zephyr.deps
>  delete mode 100755 globals.c
>  delete mode 100755 globals.h
>  delete mode 100644 helpers/runbitbake.py
>  delete mode 100644 helpers/startOstroScript.sh
>  delete mode 100644 installers/ostro-installer.sh
>  delete mode 100755 installers/zephyr-installer.sh
>  delete mode 100755 scripts/bitbake.ostro
>  delete mode 100755 scripts/build_ceed
>  delete mode 100755 scripts/build_containers
>  delete mode 100755 scripts/build_containers.ostro
>  delete mode 100644 scripts/gdb.zephyr
>  delete mode 100755 scripts/make.zephyr
>  delete mode 100755 scripts/run_containers
>  delete mode 100755 scripts/stop_containers
>  delete mode 100644 tests.py
>  delete mode 100644 tests/functional/test_ceed_basic.py
>  delete mode 100644 tests/functional/test_ceed_commands.py
>  delete mode 100644 tests/functional/test_zephyr_build.py
>  delete mode 100644 tests/functional/utils/__init__.py
>  delete mode 100644 tests/functional/utils/ceedutil.py
>  delete mode 100644 tests/unit/test_basic.py
>  delete mode 100644 tests/unit/test_runbitbake.py
>  delete mode 100755 turff/Makefile
>  delete mode 100755 turff/turff.c
>  delete mode 100755 turff/turff_api.c
>  delete mode 100755 turff/turff_api.h
>  delete mode 100755 turff/turff_launcher
>  delete mode 100755 utils.c
>  delete mode 100755 utils.h
>
> diff --git a/.dockerignore b/.dockerignore
> deleted file mode 100644
> index 191381e..0000000
> --- a/.dockerignore
> +++ /dev/null
> @@ -1 +0,0 @@
> -.git
> \ No newline at end of file
> diff --git a/.gitignore b/.gitignore
> deleted file mode 100644
> index bf35249..0000000
> --- a/.gitignore
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -*~
> -*.o
> -ceed/ceed
> -codi/codi
> -turff/turff
> -outdir
> -*.pyc
> -*#
> -.#*
> diff --git a/.travis.yml b/.travis.yml
> deleted file mode 100644
> index 72bda2e..0000000
> --- a/.travis.yml
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -language: python
> -python:
> -  - "2.7"
> -
> -
> -sudo: required
> -services:
> -  - docker
> -
> -services:
> -    - docker
> -
> -env:
> -    global:
> -        - DOCKER_VERSION=3D1.10.1-0~trusty
> -
> -
> -compiler:
> -  - gcc
> -  - clang
> -
> -before_install:
> -  # list docker-engine versions
> -  - apt-cache madison docker-engine
> -
> -  # upgrade docker-engine to specific version
> -  - sudo apt-get -o Dpkg::Options::=3D"--force-confnew" install -y
> docker-engine=3D${DOCKER_VERSION}
> -
> -
> -script:
> -  - ./scripts/build_ceed
> -  - docker version
> -  - ./scripts/build_containers
> -  - docker images | grep codi | grep -q test
> -  - docker images | grep toolchain | grep -q test
> -  - docker images | grep zephyr | grep -q test
> -  - ./scripts/run_containers
> -  - python tests.py
> -
> -notifications:
> -  email:
> -    recipients:
> -    on_success: change
> -    on_failure: always
> diff --git a/LICENSE b/LICENSE
> deleted file mode 100644
> index d159169..0000000
> --- a/LICENSE
> +++ /dev/null
> @@ -1,339 +0,0 @@
> -                    GNU GENERAL PUBLIC LICENSE
> -                       Version 2, June 1991
> -
> - Copyright (C) 1989, 1991 Free Software Foundation, Inc.,
> - 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
> - Everyone is permitted to copy and distribute verbatim copies
> - of this license document, but changing it is not allowed.
> -
> -                            Preamble
> -
> -  The licenses for most software are designed to take away your
> -freedom to share and change it.  By contrast, the GNU General Public
> -License is intended to guarantee your freedom to share and change free
> -software--to make sure the software is free for all its users.  This
> -General Public License applies to most of the Free Software
> -Foundation's software and to any other program whose authors commit to
> -using it.  (Some other Free Software Foundation software is covered by
> -the GNU Lesser General Public License instead.)  You can apply it to
> -your programs, too.
> -
> -  When we speak of free software, we are referring to freedom, not
> -price.  Our General Public Licenses are designed to make sure that you
> -have the freedom to distribute copies of free software (and charge for
> -this service if you wish), that you receive source code or can get it
> -if you want it, that you can change the software or use pieces of it
> -in new free programs; and that you know you can do these things.
> -
> -  To protect your rights, we need to make restrictions that forbid
> -anyone to deny you these rights or to ask you to surrender the rights.
> -These restrictions translate to certain responsibilities for you if you
> -distribute copies of the software, or if you modify it.
> -
> -  For example, if you distribute copies of such a program, whether
> -gratis or for a fee, you must give the recipients all the rights that
> -you have.  You must make sure that they, too, receive or can get the
> -source code.  And you must show them these terms so they know their
> -rights.
> -
> -  We protect your rights with two steps: (1) copyright the software, and
> -(2) offer you this license which gives you legal permission to copy,
> -distribute and/or modify the software.
> -
> -  Also, for each author's protection and ours, we want to make certain
> -that everyone understands that there is no warranty for this free
> -software.  If the software is modified by someone else and passed on, we
> -want its recipients to know that what they have is not the original, so
> -that any problems introduced by others will not reflect on the original
> -authors' reputations.
> -
> -  Finally, any free program is threatened constantly by software
> -patents.  We wish to avoid the danger that redistributors of a free
> -program will individually obtain patent licenses, in effect making the
> -program proprietary.  To prevent this, we have made it clear that any
> -patent must be licensed for everyone's free use or not licensed at all.
> -
> -  The precise terms and conditions for copying, distribution and
> -modification follow.
> -
> -                    GNU GENERAL PUBLIC LICENSE
> -   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
> -
> -  0. This License applies to any program or other work which contains
> -a notice placed by the copyright holder saying it may be distributed
> -under the terms of this General Public License.  The "Program", below,
> -refers to any such program or work, and a "work based on the Program"
> -means either the Program or any derivative work under copyright law:
> -that is to say, a work containing the Program or a portion of it,
> -either verbatim or with modifications and/or translated into another
> -language.  (Hereinafter, translation is included without limitation in
> -the term "modification".)  Each licensee is addressed as "you".
> -
> -Activities other than copying, distribution and modification are not
> -covered by this License; they are outside its scope.  The act of
> -running the Program is not restricted, and the output from the Program
> -is covered only if its contents constitute a work based on the
> -Program (independent of having been made by running the Program).
> -Whether that is true depends on what the Program does.
> -
> -  1. You may copy and distribute verbatim copies of the Program's
> -source code as you receive it, in any medium, provided that you
> -conspicuously and appropriately publish on each copy an appropriate
> -copyright notice and disclaimer of warranty; keep intact all the
> -notices that refer to this License and to the absence of any warranty;
> -and give any other recipients of the Program a copy of this License
> -along with the Program.
> -
> -You may charge a fee for the physical act of transferring a copy, and
> -you may at your option offer warranty protection in exchange for a fee.
> -
> -  2. You may modify your copy or copies of the Program or any portion
> -of it, thus forming a work based on the Program, and copy and
> -distribute such modifications or work under the terms of Section 1
> -above, provided that you also meet all of these conditions:
> -
> -    a) You must cause the modified files to carry prominent notices
> -    stating that you changed the files and the date of any change.
> -
> -    b) You must cause any work that you distribute or publish, that in
> -    whole or in part contains or is derived from the Program or any
> -    part thereof, to be licensed as a whole at no charge to all third
> -    parties under the terms of this License.
> -
> -    c) If the modified program normally reads commands interactively
> -    when run, you must cause it, when started running for such
> -    interactive use in the most ordinary way, to print or display an
> -    announcement including an appropriate copyright notice and a
> -    notice that there is no warranty (or else, saying that you provide
> -    a warranty) and that users may redistribute the program under
> -    these conditions, and telling the user how to view a copy of this
> -    License.  (Exception: if the Program itself is interactive but
> -    does not normally print such an announcement, your work based on
> -    the Program is not required to print an announcement.)
> -
> -These requirements apply to the modified work as a whole.  If
> -identifiable sections of that work are not derived from the Program,
> -and can be reasonably considered independent and separate works in
> -themselves, then this License, and its terms, do not apply to those
> -sections when you distribute them as separate works.  But when you
> -distribute the same sections as part of a whole which is a work based
> -on the Program, the distribution of the whole must be on the terms of
> -this License, whose permissions for other licensees extend to the
> -entire whole, and thus to each and every part regardless of who wrote it=
.
> -
> -Thus, it is not the intent of this section to claim rights or contest
> -your rights to work written entirely by you; rather, the intent is to
> -exercise the right to control the distribution of derivative or
> -collective works based on the Program.
> -
> -In addition, mere aggregation of another work not based on the Program
> -with the Program (or with a work based on the Program) on a volume of
> -a storage or distribution medium does not bring the other work under
> -the scope of this License.
> -
> -  3. You may copy and distribute the Program (or a work based on it,
> -under Section 2) in object code or executable form under the terms of
> -Sections 1 and 2 above provided that you also do one of the following:
> -
> -    a) Accompany it with the complete corresponding machine-readable
> -    source code, which must be distributed under the terms of Sections
> -    1 and 2 above on a medium customarily used for software interchange;
> or,
> -
> -    b) Accompany it with a written offer, valid for at least three
> -    years, to give any third party, for a charge no more than your
> -    cost of physically performing source distribution, a complete
> -    machine-readable copy of the corresponding source code, to be
> -    distributed under the terms of Sections 1 and 2 above on a medium
> -    customarily used for software interchange; or,
> -
> -    c) Accompany it with the information you received as to the offer
> -    to distribute corresponding source code.  (This alternative is
> -    allowed only for noncommercial distribution and only if you
> -    received the program in object code or executable form with such
> -    an offer, in accord with Subsection b above.)
> -
> -The source code for a work means the preferred form of the work for
> -making modifications to it.  For an executable work, complete source
> -code means all the source code for all modules it contains, plus any
> -associated interface definition files, plus the scripts used to
> -control compilation and installation of the executable.  However, as a
> -special exception, the source code distributed need not include
> -anything that is normally distributed (in either source or binary
> -form) with the major components (compiler, kernel, and so on) of the
> -operating system on which the executable runs, unless that component
> -itself accompanies the executable.
> -
> -If distribution of executable or object code is made by offering
> -access to copy from a designated place, then offering equivalent
> -access to copy the source code from the same place counts as
> -distribution of the source code, even though third parties are not
> -compelled to copy the source along with the object code.
> -
> -  4. You may not copy, modify, sublicense, or distribute the Program
> -except as expressly provided under this License.  Any attempt
> -otherwise to copy, modify, sublicense or distribute the Program is
> -void, and will automatically terminate your rights under this License.
> -However, parties who have received copies, or rights, from you under
> -this License will not have their licenses terminated so long as such
> -parties remain in full compliance.
> -
> -  5. You are not required to accept this License, since you have not
> -signed it.  However, nothing else grants you permission to modify or
> -distribute the Program or its derivative works.  These actions are
> -prohibited by law if you do not accept this License.  Therefore, by
> -modifying or distributing the Program (or any work based on the
> -Program), you indicate your acceptance of this License to do so, and
> -all its terms and conditions for copying, distributing or modifying
> -the Program or works based on it.
> -
> -  6. Each time you redistribute the Program (or any work based on the
> -Program), the recipient automatically receives a license from the
> -original licensor to copy, distribute or modify the Program subject to
> -these terms and conditions.  You may not impose any further
> -restrictions on the recipients' exercise of the rights granted herein.
> -You are not responsible for enforcing compliance by third parties to
> -this License.
> -
> -  7. If, as a consequence of a court judgment or allegation of patent
> -infringement or for any other reason (not limited to patent issues),
> -conditions are imposed on you (whether by court order, agreement or
> -otherwise) that contradict the conditions of this License, they do not
> -excuse you from the conditions of this License.  If you cannot
> -distribute so as to satisfy simultaneously your obligations under this
> -License and any other pertinent obligations, then as a consequence you
> -may not distribute the Program at all.  For example, if a patent
> -license would not permit royalty-free redistribution of the Program by
> -all those who receive copies directly or indirectly through you, then
> -the only way you could satisfy both it and this License would be to
> -refrain entirely from distribution of the Program.
> -
> -If any portion of this section is held invalid or unenforceable under
> -any particular circumstance, the balance of the section is intended to
> -apply and the section as a whole is intended to apply in other
> -circumstances.
> -
> -It is not the purpose of this section to induce you to infringe any
> -patents or other property right claims or to contest validity of any
> -such claims; this section has the sole purpose of protecting the
> -integrity of the free software distribution system, which is
> -implemented by public license practices.  Many people have made
> -generous contributions to the wide range of software distributed
> -through that system in reliance on consistent application of that
> -system; it is up to the author/donor to decide if he or she is willing
> -to distribute software through any other system and a licensee cannot
> -impose that choice.
> -
> -This section is intended to make thoroughly clear what is believed to
> -be a consequence of the rest of this License.
> -
> -  8. If the distribution and/or use of the Program is restricted in
> -certain countries either by patents or by copyrighted interfaces, the
> -original copyright holder who places the Program under this License
> -may add an explicit geographical distribution limitation excluding
> -those countries, so that distribution is permitted only in or among
> -countries not thus excluded.  In such case, this License incorporates
> -the limitation as if written in the body of this License.
> -
> -  9. The Free Software Foundation may publish revised and/or new version=
s
> -of the General Public License from time to time.  Such new versions will
> -be similar in spirit to the present version, but may differ in detail to
> -address new problems or concerns.
> -
> -Each version is given a distinguishing version number.  If the Program
> -specifies a version number of this License which applies to it and "any
> -later version", you have the option of following the terms and condition=
s
> -either of that version or of any later version published by the Free
> -Software Foundation.  If the Program does not specify a version number o=
f
> -this License, you may choose any version ever published by the Free
> Software
> -Foundation.
> -
> -  10. If you wish to incorporate parts of the Program into other free
> -programs whose distribution conditions are different, write to the autho=
r
> -to ask for permission.  For software which is copyrighted by the Free
> -Software Foundation, write to the Free Software Foundation; we sometimes
> -make exceptions for this.  Our decision will be guided by the two goals
> -of preserving the free status of all derivatives of our free software an=
d
> -of promoting the sharing and reuse of software generally.
> -
> -                            NO WARRANTY
> -
> -  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRAN=
TY
> -FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
> -OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
> -PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS=
ED
> -OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> -MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK A=
S
> -TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
> -PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
> -REPAIR OR CORRECTION.
> -
> -  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN
> WRITING
> -WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
> -REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGE=
S,
> -INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
> ARISING
> -OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITE=
D
> -TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
> -YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTH=
ER
> -PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
> -POSSIBILITY OF SUCH DAMAGES.
> -
> -                     END OF TERMS AND CONDITIONS
> -
> -            How to Apply These Terms to Your New Programs
> -
> -  If you develop a new program, and you want it to be of the greatest
> -possible use to the public, the best way to achieve this is to make it
> -free software which everyone can redistribute and change under these
> terms.
> -
> -  To do so, attach the following notices to the program.  It is safest
> -to attach them to the start of each source file to most effectively
> -convey the exclusion of warranty; and each file should have at least
> -the "copyright" line and a pointer to where the full notice is found.
> -
> -    <one line to give the program's name and a brief idea of what it
> does.>
> -    Copyright (C) <year>  <name of author>
> -
> -    This program is free software; you can redistribute it and/or modify
> -    it under the terms of the GNU General Public License as published by
> -    the Free Software Foundation; either version 2 of the License, or
> -    (at your option) any later version.
> -
> -    This program is distributed in the hope that it will be useful,
> -    but WITHOUT ANY WARRANTY; without even the implied warranty of
> -    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -    GNU General Public License for more details.
> -
> -    You should have received a copy of the GNU General Public License
> along
> -    with this program; if not, write to the Free Software Foundation,
> Inc.,
> -    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> -
> -Also add information on how to contact you by electronic and paper mail.
> -
> -If the program is interactive, make it output a short notice like this
> -when it starts in an interactive mode:
> -
> -    Gnomovision version 69, Copyright (C) year name of author
> -    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `sho=
w
> w'.
> -    This is free software, and you are welcome to redistribute it
> -    under certain conditions; type `show c' for details.
> -
> -The hypothetical commands `show w' and `show c' should show the
> appropriate
> -parts of the General Public License.  Of course, the commands you use ma=
y
> -be called something other than `show w' and `show c'; they could even be
> -mouse-clicks or menu items--whatever suits your program.
> -
> -You should also get your employer (if you work as a programmer) or your
> -school, if any, to sign a "copyright disclaimer" for the program, if
> -necessary.  Here is a sample; alter the names:
> -
> -  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
> -  `Gnomovision' (which makes passes at compilers) written by James Hacke=
r.
> -
> -  <signature of Ty Coon>, 1 April 1989
> -  Ty Coon, President of Vice
> -
> -This General Public License does not permit incorporating your program
> into
> -proprietary programs.  If your program is a subroutine library, you may
> -consider it more useful to permit linking proprietary applications with
> the
> -library.  If this is what you want to do, use the GNU Lesser General
> -Public License instead of this License.
> diff --git a/Makefile b/Makefile
> deleted file mode 100755
> index 97dabae..0000000
> --- a/Makefile
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -SUBDIRS =3D turff ceed codi
> -
> -.PHONY: subdirs $(SUBDIRS)
> -
> -all: TARGET =3D all
> -
> -clean: TARGET =3D clean
> -
> -debug: TARGET =3D debug
> -
> -all clean debug: subdirs $(SUBDIRS)
> -
> -$(SUBDIRS):
> -       $(MAKE) -C $@ $(TARGET)
> -
> diff --git a/README.md b/README.md
> old mode 100755
> new mode 100644
> index 555f7e2..ddd9cba
> --- a/README.md
> +++ b/README.md
> @@ -1,153 +1,9 @@
> -## What is CROPS (CROssPlatformS)?
> +This repository is depreciated and is no longer maintained.
>
> -CROPS is an open source, cross-platform development framework that
> leverages Docker containers to provide an easily managed, extensible
> environment which allows developers to build binaries for a variety of
> architectures of Windows, Linux and Mac OS X hosts.
> +Current CROPS development occurs at:
>
> -### CROPS components
> -* **CEED** - runs on the development host and exposes an API to Integrat=
ed
> -Development Environments (IDEs) or CLI callers
> -* **TURFF** - runs in a container and services requests from CODI
> -* **CODI** - COntainer DIspatcher runs in a container and keeps track of
> all available TURFF instances
> -in its internal table. CODI also redirects CEED requests to the
> corresponding TURFF instance
> +https://github.com/crops
>
> -## USING CROPS FOR [ZEPHYR OS](https://www.zephyrproject.org/)
> DEVELOPMENT
> +The last functional commit for this repo was:
>
> -Please refer to the [GitHub Wiki](https://github.com/todorez/crops/wiki)
> -
> -## USING CROPS WITH YOUR OWN TOOLCHAIN
> -
> - 1. **Install [Docker (Linux)](https://docs.docker.com/linux/step_one/)
> or [Docker Toolbox (Windows/Mac)](
> https://www.docker.com/products/docker-toolbox)**
> -
> - 2. **Build CODI dependencies container**
> -
> -  Execute the following command from within the dockerfiles directory:
> -
> -  ```
> -  docker build -t crops/codi:deps -f Dockerfile.codi.deps .
> -  ```
> - 3. **Build CODI container**
> -
> -  Execute the following command from within the dockerfiles directory:
> -
> -  ```
> -  docker build -t crops/codi:version -f Dockerfile.codi ../
> -  ```
> -
> - 4. **Build toolchain dependencies container**
> -
> -  Execute the following command from within the dockerfiles directory:
> -
> -  ```
> -  docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .
> -  ```
> -
> - 5. **Open the Dockerfile.toolchain file and provide the URL to your
> toolchain**
> -
> -  Example:
> -
> -  ```
> -  ENV TOOLCHAIN_NAME
> poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
> -  ENV TOOLCHAIN_PATH
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_=
64/
> -  ```
> -
> - 6. **Build your toolchain container**
> -
> -  ```
> -  docker build -t crops/toolchain:my_toolchain -f Dockerfile.toolchain .=
./
> -  ```
> -
> - 7. **Start CODI container**
> -
> -  ```
> -  docker run -d --name codi-test -v
> /var/run/docker.sock:/var/run/docker.sock --net=3Dhost crops/codi:version
> -  ```
> -
> - 8. **Start toolchain container**
> -
> -  ```
> -  mkdir -p $HOME/crops-workspace && docker run -d --name
> crops-toolchain-my_toolchain -v $HOME/crops-workspace/:/crops/   --env
> TURFFID=3Dcrops-toolchain-my_toolchain --net=3Dhost crops/toolchain:my_to=
olchain
> -  ```
> -
> - 9. **Run the Zephyr installer and answer "Yes" when prompted to install
> CEED. Answer "No" to all other questions**
> -
> -  ```
> -  curl -kOs
> https://raw.githubusercontent.com/todorez/crops/master/installers/zephyr-=
installer.sh
> && source   ./zephyr-installer.sh
> -  ```
> -
> - 10. **Place your project in the shared workspace**
> -
> -  Example:
> -  ```
> -  $HOME/crops-workspace/my_project/
> -  ```
> -
> - 11. **Build your project**
> -
> -  Example:
> -  ```
> -  $HOME/.crops/ceed/ceed -d crops-toolchain-my_toolchain -g "make -C
> /crops/my_project/"
> -  ```
> - 12. **Share your toolchain with other developers by pushing it to Docke=
r
> Hub**
> -
> -  Example:
> -  ```
> -  $docker push crops/toolchain:my_toolchain"
> -  ```
> -
> -## CONTRIBUTING TO CROPS
> -
> -#### COMPILE CEED, TURFF AND CODI ON LINUX
> -
> -**Required Prerequisites**
> -
> -* **libsqlite3-dev** - "SQLite is a C library that implements an SQL
> database engine."
> -* **libcurl4-openssl-dev (7.40 or later)** - "libcurl is an easy-to-use
> client-side URL transfer library, supporting DICT, FILE, FTP, FTPS, GOPHE=
R,
> HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP=
,
> SMTP, SMTPS, TELNET and TFTP."
> -* **libjansson-dev** - "Jansson is a C library for encoding, decoding an=
d
> manipulating JSON data."
> -
> -
> -1. **Install Prerequisites On Debian / Ubuntu**
> -
> -  ```
> -  apt-get install libsqlite3-dev libcurl4-openssl-dev libjansson-dev
> -  ```
> -
> -2. **Compile**
> -
> -  * GCC
> -
> -  ```
> -  CC=3Dgcc make all
> -  ```
> -
> -  * CLANG
> -
> -  ```
> -  CC=3Dclang make all
> -  ```
> -
> -3. **Debug Compile**
> -
> -  * GCC
> -
> -  ```
> -  CC=3Dgcc make debug
> -  ```
> -
> -  * CLANG
> -
> -  ```
> -  CC=3Dclang make debug
> -  ```
> -
> -#### RUNNING A CLANG STATIC ANALYSYS
> -
> -1. **Run the static analyzer**
> -
> -  ```
> -  scan-build -V make
> -  ```
> -
> -2. **Point your browser at the following URL to view the static analysis
> results**
> -
> -  ```
> -  http://127.0.0.1:8181
> -  ```
> +
> https://git.yoctoproject.org/crops/commit/?id=3Db719d15fe0e17e5ac05c44068=
0ec3706bcd2cab5
> diff --git a/TODO b/TODO
> deleted file mode 100755
> index 6014c97..0000000
> --- a/TODO
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -* rewrite eclipse plugin for all platforms Windows, Linux, Mac
> -* create Docker image installers for Windows/Linux/Mac
> -* create container launchers
> -* document installation/configuration/usage
> -* document APIs
> -* implement bitbake operations
> -* fix all bugs.. :)
> -
> -
> -
> diff --git a/ceed/Makefile b/ceed/Makefile
> deleted file mode 100755
> index 58205ed..0000000
> --- a/ceed/Makefile
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -CFLAGS =3D-g -I. -I../
> -LDFLAGS =3D-lm
> -
> -ifeq ($(CC),x86_64-w64-mingw32-gcc)
> -LDFLAGS +=3D -lws2_32
> -endif
> -
> -DEPS =3D ceed_api.h ../globals.h ../utils.h
> -OBJ =3D ceed.o ceed_api.o ../utils.o ../globals.o
> -
> -all: ceed
> -
> -debug: DFLAGS =3D -DDBG
> -debug: clean ceed
> -
> -%.o: %.c $(DEPS)
> -       $(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
> -
> -ceed: $(OBJ)
> -       $(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
> -
> -.PHONY: clean
> -clean:
> -       rm -f $(OBJ) ceed *.exe
> -
> -windows:
> -       docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}'=
 |
> xargs -I {} docker rm -f {}
> -       docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{p=
rint
> $1}' | xargs -I {} docker rmi {}
> -       cd ../dockerfiles; docker build -t crops/ceed:windows -f
> Dockerfile.ceed.win ../
> -       docker run --name=3Dceed-windows crops/ceed:windows; mkdir -p
> ../outdir
> -       docker cp ceed-windows:/usr/local/crops/ceed/ceed
> ../outdir/ceed.exe
> -       docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}'=
 |
> xargs -I {} docker rm -f {}
> -       docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{p=
rint
> $1}' | xargs -I {} docker rmi {}
> -
> -linux:
> -       docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' |
> xargs -I {} docker rm -f {}
> -       docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pri=
nt
> $1}' | xargs -I {} docker rmi {}
> -       cd ../dockerfiles; docker build -t crops/ceed:linux -f
> Dockerfile.ceed.linux ../
> -       docker run --name=3Dceed-linux crops/ceed:linux; mkdir -p ../outd=
ir
> -       docker cp ceed-linux:/usr/local/crops/ceed/ceed ../outdir/ceed
> -       docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' |
> xargs -I {} docker rm -f {}
> -       docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pri=
nt
> $1}' | xargs -I {} docker rmi {}
> diff --git a/ceed/ceed.c b/ceed/ceed.c
> deleted file mode 100755
> index f0fa0cc..0000000
> --- a/ceed/ceed.c
> +++ /dev/null
> @@ -1,70 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include <stdlib.h>
> -#include "globals.h"
> -#include "ceed_api.h"
> -#include "utils.h"
> -
> -extern char *ceed_ops[];
> -
> -int main(int argc, char *argv[]) {
> -  int i, done, sock_fd;
> -  char *turff_nodes[KEY_ARR_SZ];
> -  struct addrinfo *addr_p;
> -  void *ceed_out;
> -
> -  parse_ceed_params(argc, argv);
> -
> -  addr_p =3D connect_to_socket(ceed_ops[KEY('i')], ceed_ops[KEY('s')],
> &sock_fd);
> -
> -  if(addr_p =3D=3D NULL) {
> -    ERR("Could not connect to CODI\n");
> -  } else {
> -    INFO("Connected to CODI on %s port : %s\n",
> -      ceed_ops[KEY('i')], ceed_ops[KEY('s')]);
> -  }
> -
> -  INFO("Host Architecture : %s\n", ceed_ops[KEY('a')]);
> -  send_args(sock_fd, ceed_ops);
> -
> -  if(ceed_ops[KEY('l')] =3D=3D NULL) { /* this was a service request */
> -    INFO(" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D  CEED OUTPUT BEGIN  =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D\n");
> -    ceed_out =3D calloc(1, BUFSIZ);
> -    done =3D 0;
> -
> -    while(!done) {
> -      memset(ceed_out, 0, BUFSIZ);
> -      receive_data(sock_fd, ceed_out, BUFSIZ, 1, &done);
> -    }
> -    free(ceed_out);
> -
> -    INFO(" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D  CEED OUTPUT END  =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D\n");
> -  } else { /* this was nodes request, receive turff nodes */
> -    do {
> -      for(i =3D 0; i <  KEY_ARR_SZ; i++)
> -        turff_nodes[i] =3D NULL;
> -
> -      receive_args(sock_fd, turff_nodes);
> -      if(turff_nodes[KEY('e')] =3D=3D NULL) {
> -        INFO("TURFF Node ID: %s \n", turff_nodes[KEY('d')]);
> -      }
> -    }while (turff_nodes[KEY('e')] =3D=3D NULL);
> -  }
> -
> -  close(sock_fd);
> -  return 0;
> -}
> diff --git a/ceed/ceed_api.c b/ceed/ceed_api.c
> deleted file mode 100755
> index 973c050..0000000
> --- a/ceed/ceed_api.c
> +++ /dev/null
> @@ -1,157 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdio.h>
> -#include <stdlib.h>
> -#include <unistd.h>
> -#include <ctype.h>
> -
> -char *ceed_ops[KEY_ARR_SZ];
> -
> -void print_ceed_usage(int argc, char *argv[]) {
> -
> -  printf("Usage: %s -p prj -i 192.168.99.100 -s 10000 -b\n", argv[0]);
> -  printf("     -i CODI ip address [default: 127.0.0.1 (linux) or
> 192.168.99.100 (win/mac)]\n");
> -  printf("     -s CODI listening port [default: 10000]\n");
> -  printf("     -l list available build containers\n");
> -  printf("     -d container_id. Send command to container_id\n");
> -  printf("     -p prj_name [required]\n");
> -  printf("     -b build project [NOTE: -b and -c are mutually
> exclusive]\n");
> -  printf("     -c clean project [NOTE: -c and -b are mutually
> exclusive]\n");
> -  printf("     -t autotools project [NOTE: -t and -k and -m are mutually
> exclusive]\n");
> -  printf("     -k cmake project [NOTE: -k and -t and -m are mutually
> exclusive]\n");
> -  printf("     -m target make makefile_target [NOTE: -m and -t and -k ar=
e
> mutually exclusive]\n");
> -  printf("     -g gen_cmd execute generic command\n");
> -  printf("     -r args generic command arguments\n");
> -  printf("     -e env environment variables\n");
> -  printf("     -h print this help menu\n");
> -  printf("     -v show ceed version\n");
> -  exit(EXIT_FAILURE);
> -}
> -
> -void init_ceed_params(){
> -#if defined(_WIN32) || defined(__CYGWIN__)
> -  ceed_ops[KEY('a')] =3D "win";
> -  ceed_ops[KEY('i')] =3D CODI_IP_VIRT;
> -#elif __APPLE__
> -  ceed_ops[KEY('a')] =3D "mac";
> -  ceed_ops[KEY('i')] =3D CODI_IP_VIRT;
> -#elif __linux
> -  ceed_ops[KEY('a')] =3D "linux";
> -  ceed_ops[KEY('i')] =3D CODI_IP_NATIVE;
> -#endif
> -  ceed_ops[KEY('p')] =3D NULL;
> -  ceed_ops[KEY('s')] =3D CODI_PORT;
> -  ceed_ops[KEY('v')] =3D VERSION;
> -  ceed_ops[KEY('r')] =3D " ";
> -  ceed_ops[KEY('z')] =3D CEED_NAME;
> -}
> -
> -void parse_ceed_params(int argc, char *argv[]) {
> -  int c, b_flg =3D 0, c_flg =3D 0, t_flg =3D 0, m_flg =3D 0, k_flg =3D 0=
;
> -
> -  init_ceed_params();
> -
> -  while((c =3D getopt(argc, argv, "hvltm:kbcp:i:s:g:r:d:")) !=3D -1) {
> -    switch (c) {
> -    case 'h':
> -      print_ceed_usage(argc, argv);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 'v':
> -      INFO("ceed version : %s\n", VERSION);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 'p':
> -      ceed_ops[KEY('p')] =3D optarg;
> -      break;
> -    case 'i':
> -      ceed_ops[KEY('i')] =3D optarg;
> -      break;
> -    case 's':
> -      ceed_ops[KEY('s')] =3D optarg;
> -      break;
> -    case 'g':
> -      ceed_ops[KEY('g')] =3D optarg;
> -      break;
> -    case 'r':
> -      ceed_ops[KEY('r')] =3D optarg;
> -      break;
> -    case 'd':
> -      ceed_ops[KEY('d')] =3D optarg;
> -      break;
> -    case 'l':
> -        asprintf(&ceed_ops[KEY('l')] , "set");
> -      break;
> -    case 'b':
> -      if(c_flg) {
> -        print_ceed_usage(argc, argv);
> -      } else {
> -        b_flg++;
> -        asprintf(&ceed_ops[KEY('b')] , "set");
> -      }
> -      break;
> -    case 'c':
> -      if(b_flg) {
> -        print_ceed_usage(argc, argv);
> -      } else {
> -        c_flg++;
> -        asprintf(&ceed_ops[KEY('c')] , "set");
> -      }
> -      break;
> -    case 't':
> -      if(m_flg || k_flg) {
> -        print_ceed_usage(argc, argv);
> -      } else {
> -        t_flg++;
> -        asprintf(&ceed_ops[KEY('t')] , "set");
> -      }
> -      break;
> -    case 'm':
> -      if(t_flg || k_flg)
> -        print_ceed_usage(argc, argv);
> -      else {
> -        m_flg++;
> -        ceed_ops[KEY('m')] =3D optarg;
> -      }
> -      break;
> -    case 'k':
> -      if(t_flg || m_flg)
> -        print_ceed_usage(argc, argv);
> -      else {
> -        k_flg++;
> -        asprintf(&ceed_ops[KEY('k')] , "set");
> -      }
> -      break;
> -    case '?':
> -      if (optopt =3D=3D 'p' || optopt =3D=3D 'i' || optopt =3D=3D 's' ||=
 optopt =3D=3D
> 'm')
> -        ERR("Option -%c requires an argument.\n", optopt);
> -      else if (isprint(optopt))
> -        ERR("Unknown option `-%c'.\n", optopt);
> -      else
> -        ERR("Unknown option character `\\x%x'.\n", optopt);
> -    default:
> -      print_ceed_usage(argc, argv);
> -    }
> -  }
> -
> -  if ((ceed_ops[KEY('l')] =3D=3D NULL && ceed_ops[KEY('p')] =3D=3D NULL =
&&
> ceed_ops[KEY('g')] =3D=3D NULL )
> -    || (ceed_ops[KEY('i')] =3D=3D NULL || ceed_ops[KEY('s')] =3D=3D NULL=
)) {
> -    print_ceed_usage(argc, argv);
> -  }
> -}
> -
> diff --git a/ceed/ceed_api.h b/ceed/ceed_api.h
> deleted file mode 100755
> index a66e6e6..0000000
> --- a/ceed/ceed_api.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef CEED_API_H
> -#define CEED_API_H
> -
> -void parse_ceed_params(int argc, char *argv[]);
> -
> -#endif
> diff --git a/codi/Makefile b/codi/Makefile
> deleted file mode 100644
> index 0b8135c..0000000
> --- a/codi/Makefile
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -CFLAGS=3D-g -I. -I../
> -LDFLAGS=3D-lsqlite3 -lm -ljansson -lcurl -lpthread
> -DEPS =3D ../globals.h ../utils.h codi_api.h codi_db.h codi_launcher.h
> codi_list.h
> -OBJ =3D codi.o codi_db.o codi_list.o codi_launcher.o codi_api.o ../utils=
.o
> ../globals.o
> -
> -all: codi
> -
> -debug: DFLAGS =3D -DDBG
> -debug: clean codi
> -
> -%.o: %.c $(DEPS)
> -       $(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
> -
> -codi: $(OBJ)
> -       $(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
> -
> -.PHONY: clean
> -clean:
> -       rm -rf $(OBJ) codi
> diff --git a/codi/codi.c b/codi/codi.c
> deleted file mode 100644
> index e24a03c..0000000
> --- a/codi/codi.c
> +++ /dev/null
> @@ -1,126 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdlib.h>
> -#include <signal.h>
> -#include <netdb.h>
> -#include <arpa/inet.h>
> -#include <pthread.h>
> -#include "utils.h"
> -#include "codi_db.h"
> -#include "codi_api.h"
> -#include "codi_list.h"
> -#include "codi_launcher.h"
> -
> -extern char *codi_ops[];
> -int codi_sock_fd;
> -/*
> -pthread_mutex_t lock;
> -*/
> -
> -/*TODO - close sockets on CTRL+C. Get rid of this when running as a
> daemon */
> -void close_sockets(int dummy) {
> -  close(codi_sock_fd);
> -  INFO("\nClosed CODI socket. Exiting!\n") ;
> -  exit(0);
> -}
> -
> -int main(int argc, char *argv[]) {
> -  struct addrinfo *addr_p;
> -  int i, cli_sock_fd;
> -  const char *codi_port =3D (const char*) CODI_PORT;
> -  turff_node *req_node =3D NULL;
> -  char *cli_params[KEY_ARR_SZ], *ip, *docker_url, *tmp_str;
> -  socklen_t cli_len;
> -  struct sockaddr cli_addr;
> -  struct sockaddr_in *cli_ip;
> -
> -  parse_codi_params(argc, argv);
> -
> -  for (i =3D 0; i <  KEY_ARR_SZ; i++)
> -    cli_params[i] =3D NULL;
> -
> -  addr_p =3D bind_to_socket(NULL, codi_port, &codi_sock_fd);
> -
> -  if (addr_p =3D=3D NULL) {
> -    ERR("Could not bind CODI to socket\n");
> -  } else {
> -    INFO("CODI listening on port: %s\n", codi_port);
> -
> -  }
> -
> -  listen(codi_sock_fd,1);
> -  cli_len =3D sizeof(cli_addr);
> -
> -  signal(SIGINT, close_sockets);
> -
> -  while(1) {
> -    cli_sock_fd =3D accept(codi_sock_fd, &cli_addr, &cli_len);
> -
> -    if (cli_sock_fd < 0)
> -      ERR("ERROR on accept");
> -
> -    free_params(cli_params);
> -    receive_args(cli_sock_fd, cli_params);
> -
> -    /*turff registration*/
> -    if (!strcmp(cli_params[KEY('z')], TURFF_NAME)) {
> -      cli_ip =3D (struct sockaddr_in*) &cli_addr;
> -      asprintf(&ip, "%s", inet_ntoa(cli_ip->sin_addr));
> -      cli_params[KEY('c')] =3D ip;
> -      db_insert_node(cli_params[KEY('n')], cli_params[KEY('c')],
> cli_params[KEY('s')]);
> -      INFO("\nToolchain registration received: %s : %s : %s \n",
> cli_params[KEY('n')],
> -      cli_params[KEY('c')], cli_params[KEY('s')]) ;
> -    } else if (!strcmp(cli_params[KEY('z')], CEED_NAME) &&
> (cli_params[KEY('l')] !=3D NULL )) {
> -      /* ceed request for available toolchains */
> -      return_turff_nodes(cli_sock_fd);
> -    } else if (!strcmp(cli_params[KEY('z')], CEED_NAME) &&
> (cli_params[KEY('d')] !=3D NULL )) {
> -      /* must be a command from ceed*/
> -      req_node =3D find_turff_node(cli_params[KEY('d')]);
> -      if (req_node !=3D NULL) {
> -
> -        /* check if docker engine is listening on a unix socket or tcp*/
> -        if (codi_ops[KEY('i')] =3D=3D NULL || codi_ops[KEY('p')] =3D=3D =
NULL) {
> -          asprintf(&docker_url, "%s", codi_ops[KEY('u')]);
> -        } else {
> -          asprintf(&docker_url, "%s:%s", codi_ops[KEY('i')],
> codi_ops[KEY('p')]);
> -        }
> -
> -        if (is_container_running(docker_url, cli_params[KEY('d')])) {
> -          process_ceed_cmd(req_node, cli_sock_fd, cli_params);
> -        } else {
> -          asprintf(&tmp_str, "Container %s is not running\n%s",
> -            cli_params[KEY('d')], TURFF_EOM);
> -          send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
> -          free(tmp_str);
> -        }
> -        free(docker_url);
> -      } else {
> -        asprintf(&tmp_str, "Container %s not found in database\n%s",
> -          cli_params[KEY('d')], TURFF_EOM);
> -        send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
> -        free(tmp_str);
> -      }
> -    } else {
> -      asprintf(&tmp_str, "Invalid command sent to CODI\n%s", TURFF_EOM);
> -      send_data(cli_sock_fd, tmp_str, strlen(tmp_str));
> -      free(tmp_str);
> -    }
> -
> -    free_params(cli_params);
> -  }
> -}
> diff --git a/codi/codi_api.c b/codi/codi_api.c
> deleted file mode 100644
> index b9eff56..0000000
> --- a/codi/codi_api.c
> +++ /dev/null
> @@ -1,134 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdlib.h>
> -#include <ctype.h>
> -#include "utils.h"
> -#include "codi_api.h"
> -#include "codi_list.h"
> -#include "codi_launcher.h"
> -
> -char *codi_ops[KEY_ARR_SZ];
> -
> -void print_codi_usage(int argc, char *argv[])
> -{
> -  printf("Usage: %s \n", argv[0]);
> -  printf(" -s port number on which CODI is listening [default: 10000]\n"=
);
> -  printf(" -u unix socket path of Docker engine [default:
> /var/lib/docker.sock]\n");
> -  printf(" -i ip address of Docker engine [default: 127.0.0.1]\n");
> -  printf(" -p port number of Docker engine [default: 2376]\n");
> -  printf(" -h print this help menu\n");
> -  printf(" -v show CODI version\n");
> -}
> -
> -void init_codi_params()
> -{
> -  int i;
> -
> -  for (i =3D 0; i <  KEY_ARR_SZ; i++)
> -    codi_ops[i] =3D NULL;
> -
> -  codi_ops[KEY('s')] =3D CODI_PORT;
> -  codi_ops[KEY('v')] =3D VERSION;
> -  codi_ops[KEY('i')] =3D NULL;
> -  codi_ops[KEY('p')] =3D NULL;
> -  codi_ops[KEY('u')] =3D DOCKER_UNIX_SOCKET;
> -  codi_ops[KEY('z')] =3D CODI_NAME;
> -}
> -
> -void parse_codi_params(int argc, char *argv[])
> -{
> -  int c, i_flg =3D 0, p_flg =3D 0, u_flg =3D 0;
> -
> -  init_codi_params() ;
> -
> -  while ((c =3D getopt(argc, argv, "hvs:i:p:u:")) !=3D -1) {
> -    switch (c) {
> -    case 'h':
> -      print_codi_usage(argc, argv);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 'v':
> -      INFO("CODI version : %s\n", VERSION);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 's':
> -      codi_ops[KEY('s')]  =3D optarg;
> -      break;
> -    case 'i':
> -      if(u_flg) {
> -        print_codi_usage(argc, argv);
> -      } else {
> -        i_flg++;
> -        codi_ops[KEY('i')]  =3D optarg;
> -      }
> -      break;
> -    case 'p':
> -      if(u_flg) {
> -        print_codi_usage(argc, argv);
> -      } else {
> -        p_flg++;
> -        codi_ops[KEY('p')]  =3D optarg;
> -      }
> -      break;
> -    case 'u':
> -      if(i_flg || p_flg) {
> -        print_codi_usage(argc, argv);
> -      } else {
> -        u_flg++;
> -        codi_ops[KEY('u')]  =3D optarg;
> -      }
> -      break;
> -    case '?':
> -      if (optopt =3D=3D 's' || optopt =3D=3D 'i' || optopt =3D=3D 'p' ||=
 optopt =3D=3D
> 'u')
> -        INFO("Option -%c requires an argument.\n", optopt);
> -      else if (isprint (optopt))
> -        INFO("Unknown option `-%c'.\n", optopt);
> -      else
> -        INFO("Unknown option character `\\x%x'.\n", optopt);
> -    default:
> -      print_codi_usage(argc, argv);
> -      exit(EXIT_FAILURE);
> -    }
> -  }
> -}
> -
> -int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char
> *ceed_params[])
> -{
> -  struct addrinfo *addr_p;
> -  int turff_sock_fd;
> -
> -  addr_p =3D connect_to_socket(t_node->ip, t_node->port, &turff_sock_fd)=
;
> -
> -  if (addr_p =3D=3D NULL) {
> -    INFO("Could not connect to node id: %s ip: %s port: %s\n",
> -    t_node->id, t_node->ip, t_node->port);
> -    return 1;
> -  } else {
> -    INFO("Connected to node id: %s ip: %s port: %s\n",
> -      t_node->id, t_node->ip, t_node->port);
> -
> -    /* change the source signature of the param array */
> -    asprintf(&(ceed_params[KEY('z')]), "%s", CODI_NAME);
> -
> -    /* forward parameters to turff */
> -    send_args(turff_sock_fd, ceed_params);
> -    redirect_sockets(turff_sock_fd, ceed_sock_fd);
> -  }
> -  close(turff_sock_fd);
> -  return 0;
> -}
> diff --git a/codi/codi_api.h b/codi/codi_api.h
> deleted file mode 100644
> index c5813dd..0000000
> --- a/codi/codi_api.h
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef CODI_API_H
> -#define CODI_API_H
> -
> -#include "codi_list.h"
> -
> -int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char
> *ceed_params[]);
> -void parse_codi_params(int argc, char *argv[]);
> -
> -#endif
> diff --git a/codi/codi_db.c b/codi/codi_db.c
> deleted file mode 100644
> index 91ab5bd..0000000
> --- a/codi/codi_db.c
> +++ /dev/null
> @@ -1,137 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdlib.h>
> -#include <sqlite3.h>
> -#include "codi_db.h"
> -#include "codi_list.h"
> -
> -static sqlite3 *codi_db;
> -
> -/* connect */
> -int db_connect(void)
> -{
> -  int result;
> -  result =3D sqlite3_open(CODI_DB, &codi_db);
> -
> -  if (result !=3D SQLITE_OK ) {
> -    INFO("SQL error: %s\n", sqlite3_errmsg(codi_db));
> -    sqlite3_close(codi_db);
> -    return -1;
> -  }
> -
> -  return init_db();
> -}
> -
> -int init_db(void)
> -{
> -  int result;
> -  char *err =3D 0;
> -  char *qry =3D "CREATE TABLE IF NOT EXISTS nodes(id TEXT UNIQUE NOT NUL=
L \
> -    CHECK(id <> ''), ip TEXT NOT NULL CHECK(ip <> ''), port TEXT NOT NUL=
L
> \
> -    CHECK(port <> ''), date TEXT NOT NULL CHECK(date <> ''));";
> -
> -  result =3D sqlite3_exec(codi_db, qry, 0, 0, &err);
> -
> -  if (result !=3D SQLITE_OK) {
> -    INFO("SQL error: %s\n", err);
> -    sqlite3_free(err);
> -    sqlite3_close(codi_db);
> -    return 1;
> -  }
> -
> -  return 0;
> -}
> -
> -/* insert node */
> -int db_insert_node(char *id, char *ip, char *port)
> -{
> -  int result;
> -  char *qry, *err =3D 0;
> -  turff_node *node;
> -
> -  node =3D find_turff_node(id);
> -
> -  /* if a node with this id exists just update it*/
> -  if (node !=3D NULL) {
> -    asprintf(&qry, "UPDATE nodes SET ip =3D '%s', port =3D '%s', date =
=3D \
> -    datetime(CURRENT_TIMESTAMP, 'localtime') WHERE ID =3D '%s';", ip, po=
rt,
> id);
> -  }
> -  else {
> -    asprintf(&qry, "INSERT INTO nodes (id, ip, port, date) VALUES
> ('%s','%s', \
> -    '%s', datetime(CURRENT_TIMESTAMP, 'localtime'));", id, ip, port);
> -  }
> -
> -  result =3D exec_db_query(qry, 0, 0, &err);
> -  free(qry);
> -
> -  return result;
> -}
> -
> -int exec_db_query(const char *sql, int (*callback)(void*, int, char**,
> char**), \
> -  void *callback_arg, char **errmsg)
> -{
> -  int result;
> -
> -  if (db_connect() !=3D 0)
> -    return -1;
> -
> -  result =3D sqlite3_exec(codi_db, sql, callback, callback_arg, errmsg);
> -
> -  if (result !=3D SQLITE_OK) {
> -    INFO("SQL insert error: %s\n", *errmsg);
> -    sqlite3_free(*errmsg);
> -    sqlite3_close(codi_db);
> -    return result;
> -  }
> -  sqlite3_close(codi_db);
> -  return SQLITE_OK;
> -}
> -
> -static int find_node_callback(void *dummy, int argc, char **argv, char
> **col_name)
> -{
> -  int i;
> -
> -  /* no records were found */
> -  if(argc =3D=3D 0)
> -    return 1;
> -
> -  add_turff_node(argv[0], argv[1], argv[2], argv[3]);
> -
> -  return 0;
> -}
> -
> -/* find node(s) - gets all nodes if id is NULL */
> -int get_db_nodes(char *id)
> -{
> -  int result;
> -  char *qry, *err =3D 0;
> -
> -  /* remove all nodes from the list before reading them from the db*/
> -  free_turff_nodes_list();
> -
> -  /* get all nodes */
> -  if (id =3D=3D NULL)
> -    asprintf(&qry, "SELECT * FROM nodes;");
> -  else
> -    asprintf(&qry, "SELECT * from nodes WHERE id=3D'%s';", id);
> -
> -  result =3D exec_db_query(qry, find_node_callback, 0, &err);
> -  free(qry);
> -
> -  return result;
> -}
> diff --git a/codi/codi_db.h b/codi/codi_db.h
> deleted file mode 100644
> index c6fd586..0000000
> --- a/codi/codi_db.h
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef CODI_DB_H
> -#define CODI_DB_H
> -
> -#define CODI_DB      "codi.db"
> -
> -int init_db(void);
> -int db_insert_node(char *id, char *ip, char *port);
> -int exec_db_query(const char *sql, int (*callback)(void*, int, char**,
> char**), \
> -  void *callback_arg, char **errmsg);
> -int get_db_nodes(char *id);
> -
> -#endif
> diff --git a/codi/codi_launcher.c b/codi/codi_launcher.c
> deleted file mode 100644
> index 1087761..0000000
> --- a/codi/codi_launcher.c
> +++ /dev/null
> @@ -1,146 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <jansson.h>
> -#include <string.h>
> -#include <curl/curl.h>
> -#include <ctype.h>
> -#include "codi_launcher.h"
> -
> -/* execute the request and return an array of json objects */
> -json_t *request_json(char *request_method, char *url, char *api, char
> *data)
> -{
> -  char *in =3D 0, *j_start;
> -  json_t *root;
> -  json_error_t err;
> -
> -  in =3D curl_request(request_method, url, api, data);
> -
> -  /* skip the header and move to the json array */
> -  j_start =3D strchr(in, '[');
> -  root =3D json_loads(j_start, 0, &err);
> -  free(in);
> -  return root;
> -}
> -
> -/* execute the request and return the raw server reply */
> -char *curl_request(char *http_method, char *url, char *api,  char *data)
> -{
> -
> -  CURL *curl =3D NULL;
> -  CURLcode res;
> -  struct curl_slist *api_hdr =3D NULL;
> -  curl_mem_chunk_t srv_reply ;
> -  char *request_str ;
> -
> -  srv_reply.mem =3D calloc(1, 1) ;
> -
> -  if (srv_reply.mem =3D=3D NULL)
> -    ERR("ERROR: Unable to allocate memory");
> -
> -  srv_reply.size =3D 0 ;
> -  curl =3D curl_easy_init();
> -
> -  if (curl) {
> -    /* check if url is a unix socket*/
> -    if (url[0] =3D=3D '/') {
> -      /* map the unix socket as a connection endpoint */
> -      curl_easy_setopt(curl, CURLOPT_UNIX_SOCKET_PATH, url);
> -      asprintf(&request_str, "%s%s", "http:", api);
> -    } else {
> -        asprintf(&request_str, "%s%s%s",  "http://", url, api);
> -    }
> -
> -    curl_easy_setopt(curl, CURLOPT_URL, request_str);
> -
> -    if (!strcmp(http_method, POST_REQUEST)) {
> -      curl_easy_setopt(curl, CURLOPT_POST, 1L);
> -      api_hdr =3D curl_slist_append(api_hdr, "Content-Type:
> application/json");
> -      api_hdr =3D curl_slist_append(api_hdr, "Expect:");
> -      curl_easy_setopt(curl, CURLOPT_HTTPHEADER, api_hdr);
> -
> -      if (data =3D=3D NULL)
> -        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, "");
> -      else
> -        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
> -    }
> -
> -    curl_easy_setopt(curl, CURLOPT_HEADER, 1);
> -    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *) &srv_reply);
> -    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, process_srv_reply);
> -
> -#ifdef DBG
> -    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1);
> -#endif
> -
> -    res =3D curl_easy_perform(curl);
> -
> -    if (res !=3D CURLE_OK)
> -      INFO("curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
> -
> -    if (!strcmp(http_method, POST_REQUEST))
> -      curl_slist_free_all(api_hdr);
> -
> -    free(request_str);
> -    curl_easy_cleanup(curl);
> -  }
> -
> -  return srv_reply.mem;
> -}
> -
> -size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void
> *reply_p)
> -{
> -  size_t chunk_size =3D size * nmemb;
> -
> -  curl_mem_chunk_t *mem_chunk =3D (curl_mem_chunk_t *)reply_p;
> -
> -  /* append chunk_size memory block to the original memory block */
> -  mem_chunk->mem =3D realloc(mem_chunk->mem, mem_chunk->size + chunk_siz=
e +
> 1);
> -  if (mem_chunk->mem =3D=3D NULL)
> -    ERR("not enough memory (realloc returned NULL)\n");
> -
> -  INFO("%s", ptr);
> -
> -  /* copy the data into the newly allocated chunk */
> -  memcpy(&(mem_chunk->mem[mem_chunk->size]), ptr, chunk_size);
> -  mem_chunk->size +=3D chunk_size;
> -  mem_chunk->mem[mem_chunk->size] =3D 0;
> -  return chunk_size;
> -}
> -
> -bool is_container_running(char *url, char *cont_name)
> -{
> -  char *api_str =3D NULL;
> -  json_t *result;
> -
> -  asprintf(&api_str, RUNNING_NAMED_CONTAINER, cont_name);
> -  result =3D request_json(GET_REQUEST, url, api_str, NULL);
> -  free(api_str);
> -
> -  if (json_array_size(result)) {
> -    json_decref(result);
> -    return true;
> -  } else {
> -
> -#ifdef DBG
> -  INFO("Container : %s is not running\n", cont_name);
> -#endif
> -
> -    json_decref(result);
> -    return false;
> -  }
> -}
> diff --git a/codi/codi_launcher.h b/codi/codi_launcher.h
> deleted file mode 100644
> index 1b81e49..0000000
> --- a/codi/codi_launcher.h
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef CODI_LAUNCHER_H
> -#define CODI_LAUNCHER_H
> -
> -#include <jansson.h>
> -#include "globals.h"
> -
> -
> -/* Docker Remote API requests */
> -#define GET_REQUEST              "GET"
> -#define POST_REQUEST             "POST"
> -#define DOCKER_UNIX_SOCKET       "/var/run/docker.sock"
> -#define DOCKER_ENG_IP            "127.0.0.1"
> -#define DOCKER_ENG_PORT         "2376"
> -#define GET_IMAGES               "/images/json"
> -#define ALL_CONTAINERS           "/containers/json?all=3Dtrue"
> -#define START_CONTAINER          "/containers/%s/start"
> -#define CREATE_CONTAINER         "/containers/create?name=3D%s"
> -#define GET_IMAGE                "/images/create?fromImage=3D%s&tag=3D%s=
"
> -
> -#define NAMED_CONTAINER          "/containers/json?all=3Dtrue&filters=3D=
" \
> -                                 "{%%22name%%22:[%%22%s%%22]}"
> -
> -#define RUNNING_NAMED_CONTAINER  "/containers/json?all=3Dtrue&filters=3D=
" \
> -
>  "{%%22name%%22:[%%22%s%%22],%%22status%%22:[%%22running%%22]}"
> -
> -/* Docker Engine Responses */
> -#define PULL_COMPLETE      "Pull complete"
> -#define IMAGE_UP_TO_DATE   "Image is up to date"
> -#define NO_ERROR_204       "204 No Content"
> -#define NOT_MODIFIED_304   "304 Not Modified"
> -#define CREATED_201        "201 Created"
> -#define OK_200             "200 OK"
> -
> -#define CONTAINER_PARAMS(...) #__VA_ARGS__
> -
> -char *curl_request(char *http_method, char *url, char *api,  char *data)=
;
> -size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void
> *reply_p);
> -json_t *request_json(char *request_method, char *url, char *api, char
> *data);
> -bool is_container_running(char *url, char *cont_name);
> -bool start_container(char *url, char *cont_name);
> -
> -#endif
> diff --git a/codi/codi_list.c b/codi/codi_list.c
> deleted file mode 100644
> index 4a3f745..0000000
> --- a/codi/codi_list.c
> +++ /dev/null
> @@ -1,100 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdlib.h>
> -#include <stdint.h>
> -#include <stdio.h>
> -#include <string.h>
> -#include "utils.h"
> -#include "codi_db.h"
> -#include "codi_list.h"
> -
> -turff_node *head =3D NULL;
> -
> -turff_node *find_turff_node(char *id)
> -{
> -
> -  /* clear the list and read the nodes from the db*/
> -  get_db_nodes(id);
> -  turff_node *cur =3D head;
> -
> -  while (cur !=3D NULL) {
> -    if(!strcmp(cur->id, id))
> -      return cur;
> -    else
> -      cur =3D cur->next;
> -  }
> -  return NULL;
> -}
> -
> -void free_turff_nodes_list()
> -{
> -  turff_node *tmp =3D NULL;
> -
> -  while (head !=3D NULL) {
> -    free(head->id);
> -    free(head->ip);
> -    free(head->port);
> -    free(head->date);
> -    tmp =3D head ;
> -    head =3D head->next;
> -    free(tmp);
> -  }
> -}
> -
> -void add_turff_node(char *id, char *ip, char *port, char *date)
> -{
> -  int node_exists =3D 0;
> -  turff_node *node;
> -
> -  node =3D calloc(1, sizeof(turff_node));
> -  asprintf(&(node->id), "%s", id);
> -  asprintf(&(node->ip), "%s", ip);
> -  asprintf(&(node->port), "%s",  port);
> -  asprintf(&(node->date), "%s",  date);
> -  node->next =3D head;
> -  head =3D node;
> -}
> -
> -
> -/* send these to ceed*/
> -void return_turff_nodes(int sock_fd)
> -{
> -  int i;
> -  char *tmp_node[KEY_ARR_SZ];
> -
> -  /* clear the list and read the nodes from the db*/
> -  get_db_nodes(NULL);
> -  turff_node *cur =3D head;
> -
> -  for (i =3D 0; i <  KEY_ARR_SZ; i++)
> -    tmp_node[i] =3D NULL;
> -
> -  while (cur !=3D NULL) {
> -    tmp_node[KEY('d')] =3D cur->id;
> -
> -#ifdef DBG
> -    DEBUG("Sent turff node id : %s ip: %s port %s\n", cur->id, cur->ip,
> cur->port);
> -#endif
> -
> -    send_args(sock_fd, tmp_node);
> -    cur =3D cur->next;
> -  }
> -
> -  tmp_node[KEY('e')] =3D "set";
> -  send_args(sock_fd, tmp_node);
> -}
> diff --git a/codi/codi_list.h b/codi/codi_list.h
> deleted file mode 100644
> index 4ce5301..0000000
> --- a/codi/codi_list.h
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef CODI_LIST_H
> -#define CODI_LIST_H
> -
> -typedef struct list_node{
> -  char *id;
> -  char *ip;
> -  char *port;
> -  char *date;
> -  struct list_node *next;
> -} turff_node;
> -
> -turff_node *find_turff_node(char *id);
> -void add_turff_node(char *id, char *ip, char *port, char *date);
> -void return_turff_nodes();
> -void free_turff_nodes_list();
> -
> -#endif
> diff --git a/confs/ostro/ostro.conf b/confs/ostro/ostro.conf
> deleted file mode 100644
> index 796104b..0000000
> --- a/confs/ostro/ostro.conf
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -# allows a standard development build. Read the ostro docs for productio=
n
> settings.
> -require conf/distro/include/ostro-os-development.inc
> -# default ostro mirror, used for speedup!!!
> -SSTATE_MIRRORS ?=3D "file://.*
> http://download.ostroproject.org/sstate/ostro-os/PATH"
> -# puts results on the shared host folder
> -# windows can't do this due to lack of ln -s support on shared volumes
> -#DEPLOY_DIR_IMAGE =3D "/ostro/ostro-shared/images"
> -# windows hangs on this. Currently unsure why.
> -#SSTATE_DIR =3D "/ostro/ostro-shared/sstate"
> -DL_DIR =3D "/ostro/ostro-shared/downloads"
> -# lets bitbake ignore the odd inode settings of the shared directory
> -BB_DISKMON_DIRS =3D "\
> -    STOPTASKS,${TMPDIR},1G,100K \
> -    ABORT,${TMPDIR},100M,1K "
> -# keep workdir small
> -INHERIT+=3D"rm_work"
> diff --git a/confs/ostro/ostro.layers b/confs/ostro/ostro.layers
> deleted file mode 100644
> index e69de29..0000000
> diff --git a/dockerfiles/Dockerfile.ceed.deps
> b/dockerfiles/Dockerfile.ceed.deps
> deleted file mode 100644
> index f806613..0000000
> --- a/dockerfiles/Dockerfile.ceed.deps
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -# This file describes the standard way to build the dependencies require=
d
> for
> -# cross compiling ceed with mingw
> -#
> -# Usage:
> -#
> -# docker build -t crops/ceed:deps -f Dockerfile.ceed.deps .
> -
> -FROM debian:jessie
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Install dependencies
> -RUN apt-get update && apt-get install -y \
> -  mingw-w64 \
> -  gcc \
> -  make
> -
> diff --git a/dockerfiles/Dockerfile.ceed.linux
> b/dockerfiles/Dockerfile.ceed.linux
> deleted file mode 100644
> index 10fcf90..0000000
> --- a/dockerfiles/Dockerfile.ceed.linux
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -# This file describes the standard way to cross compile ceed with mingw
> -#
> -# Example:
> -#
> -# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.linux ../
> -
> -FROM crops/ceed:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -LABEL name=3D"ceed-linux"
> -
> -# Build and install CEED
> -RUN mkdir -p /usr/local/crops/ceed/
> -COPY ceed /usr/local/crops/ceed/
> -COPY utils.[ch] /usr/local/crops/
> -COPY globals.[ch] /usr/local/crops/
> -
> -RUN cd /usr/local/crops/ceed && \
> -  CC=3Dgcc make
> -
> diff --git a/dockerfiles/Dockerfile.ceed.win
> b/dockerfiles/Dockerfile.ceed.win
> deleted file mode 100644
> index 7674c69..0000000
> --- a/dockerfiles/Dockerfile.ceed.win
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -# This file describes the standard way to cross compile ceed with mingw
> -#
> -# Example:
> -#
> -# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.win ../
> -
> -FROM crops/ceed:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -LABEL name=3D"ceed-windows"
> -
> -# Build and install CEED
> -RUN mkdir -p /usr/local/crops/ceed/
> -COPY ceed /usr/local/crops/ceed/
> -COPY utils.[ch] /usr/local/crops/
> -COPY globals.[ch] /usr/local/crops/
> -
> -RUN cd /usr/local/crops/ceed && \
> -  CC=3Dx86_64-w64-mingw32-gcc make
> -
> diff --git a/dockerfiles/Dockerfile.codi b/dockerfiles/Dockerfile.codi
> deleted file mode 100644
> index cf6ef30..0000000
> --- a/dockerfiles/Dockerfile.codi
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -# This file describes the standard way to build a CROPS dispatcher image
> -#
> -# Usage:
> -#
> -# # Build CODI image with the following command. Replace the "version" t=
ag
> -# with the current codi version
> -#
> -# docker build -t crops/codi:version -f Dockerfile.codi ../
> -#
> -# Example: Build CODI version 0.1
> -#
> -# docker build -t crops/codi:0.1 -f Dockerfile.codi ../
> -
> -FROM crops/codi:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Build and install CODI
> -RUN mkdir -p /usr/local/crops/codi/
> -COPY codi /usr/local/crops/codi/
> -COPY utils.[ch] /usr/local/crops/
> -COPY globals.[ch] /usr/local/crops/
> -ARG build_type
> -
> -RUN    cd /usr/local/crops/codi && \
> -       make $build_type && \
> -       mkdir -p /bin/codi && \
> -       cp /usr/local/crops/codi/codi /bin/codi/run && \
> -       rm -rf /usr/local/crops
> -
> -# Monitor CODI and restart it on exit
> -ENTRYPOINT ["supervise", "/bin/codi"]
> -
> -# Default CODI port
> -EXPOSE 10000
> diff --git a/dockerfiles/Dockerfile.codi.deps
> b/dockerfiles/Dockerfile.codi.deps
> deleted file mode 100644
> index dc563d0..0000000
> --- a/dockerfiles/Dockerfile.codi.deps
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -# This file describes the standard way to build the dependencies for a
> CROPS
> -# dispatcher image
> -#
> -# Usage:
> -#
> -# # Build CODI dependencies image with the following command:
> -#
> -# docker build -t crops/codi:deps -f Dockerfile.codi.deps .
> -#
> -
> -FROM debian:wheezy
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Install dependencies
> -RUN apt-get update -qq && apt-get install -y -qq \
> -       libsqlite3-dev \
> -       libjansson-dev  \
> -       git     \
> -       wget \
> -       daemontools \
> -       build-essential && \
> -       apt-get upgrade -y -qq
> -
> -#Install a version of curl with unix sockets support
> -RUN wget -q -P /tmp http://curl.haxx.se/download/curl-7.45.0.tar.gz && \
> -       cd /tmp && \
> -       tar xf curl-7.45.0.tar.gz && \
> -       cd curl-7.45.0 && \
> -       ./configure --prefix=3D/usr --enable-unix-sockets && \
> -       make && \
> -       make install
> diff --git a/dockerfiles/Dockerfile.ostro b/dockerfiles/Dockerfile.ostro
> deleted file mode 100644
> index b68e455..0000000
> --- a/dockerfiles/Dockerfile.ostro
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -# This file describes the standard way to build an Ostro bitbake builder
> image
> -#
> -# Usage:
> -#
> -# docker build -t crops/ostro:builder -f Dockerfile.ostro ..
> -#
> -
> -FROM crops/ostro:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -USER root
> -
> -RUN  mkdir -p /ostro/bin && \
> -     mkdir -p /ostro/sample-conf && \
> -     chmod -R a+rwx /ostro
> -COPY helpers/runbitbake.py /ostro/bin/runbitbake.py
> -COPY helpers/startOstroScript.sh /ostro/bin/startOstroScript.sh
> -COPY confs/ostro/ostro.conf /ostro/sample-conf/ostro.conf
> -
> -RUN   chmod +rx /ostro/bin/runbitbake.py && \
> -      chmod +rx /ostro/bin/startOstroScript.sh && \
> -      git clone https://github.com/ostroproject/ostro-os.git
> /ostro/ostro-os
> -
> -ENTRYPOINT ["/ostro/bin/startOstroScript.sh"]
> diff --git a/dockerfiles/Dockerfile.ostro.deps
> b/dockerfiles/Dockerfile.ostro.deps
> deleted file mode 100644
> index d4da08f..0000000
> --- a/dockerfiles/Dockerfile.ostro.deps
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -# This file describes the standard way to build the dependencies for
> Ostro bitbake build image
> -#
> -# Usage:
> -#
> -# docker build -t crops/ostro:deps -f Dockerfile.ostro.deps .
> -
> -FROM debian:jessie
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Install dependencies
> -RUN apt-get update && apt-get upgrade -y && apt-get install -y \
> -  gawk \
> -  wget \
> -  git-core \
> -  diffstat \
> -  unzip \
> -  sysstat \
> -  texinfo \
> -  gcc-multilib \
> -  build-essential \
> -  chrpath \
> -  socat \
> -  python \
> -  libsdl1.2-dev  \
> -  cpio \
> -  sudo  \
> -  rsync && \
> -  apt-get clean && \
> -  echo "dash dash/sh boolean false" | debconf-set-selections && \
> -  DEBIAN_FRONTEND=3Dnoninteractive dpkg-reconfigure dash
> -
> -
> -CMD /bin/bash
> diff --git a/dockerfiles/Dockerfile.toolchain
> b/dockerfiles/Dockerfile.toolchain
> deleted file mode 100644
> index c03fd90..0000000
> --- a/dockerfiles/Dockerfile.toolchain
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -# This file describes the standard way to build a CROPS toolchain image
> -#
> -# Usage:
> -#
> -# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables
> below with
> -# the name and URL of your self-extracting toolchain
> -#
> -# Example:
> -#
> -# ENV TOOLCHAIN_NAME
> poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
> -# ENV TOOLCHAIN_PATH
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_=
64/
> -#
> -# 2) Build your toolchain image with the following command replacing
> my_tag with your target arch
> -# docker build -t crops/toolchain:my_tag -f Dockerfile.toolchain ../
> -#
> -# Example for i586 target:
> -# docker build -t crops/toolchain:i586 -f Dockerfile.toolchain ../
> -#
> -# The default configuration below will build an i586 toolchain for an
> x86_64 host
> -
> -FROM crops/toolchain:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -ENV TOOLCHAIN_NAME
> poky-glibc-x86_64-core-image-sato-i586-toolchain-2.0.sh
> -ENV TOOLCHAIN_PATH
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_=
64/
> -
> -# Build and install turff
> -RUN mkdir -p /usr/local/crops/turff/
> -COPY turff /usr/local/crops/turff/
> -COPY utils.[ch] /usr/local/crops/
> -COPY globals.[ch] /usr/local/crops/
> -
> -RUN cd /usr/local/crops/turff && \
> -       make && \
> -       mkdir -p /bin/turff && \
> -       cp /usr/local/crops/turff/turff /bin/turff/run && \
> -       cp /usr/local/crops/turff/turff_launcher /bin/
> -
> -# Download and install toolchain
> -RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} && \
> -       cd /tmp &&      \
> -       chmod 755 ./${TOOLCHAIN_NAME} &&        \
> -       ./${TOOLCHAIN_NAME} -d /opt/poky/ -y
> -
> -# Make environment setup script executable and setup workspaces
> -RUN chmod 755 /opt/poky/environment-setup*
> -
> -# Container entry point
> -ENTRYPOINT ["/bin/turff_launcher", "-f", "/opt/poky/environment-setup*"]
> diff --git a/dockerfiles/Dockerfile.toolchain.deps
> b/dockerfiles/Dockerfile.toolchain.deps
> deleted file mode 100644
> index ff809e6..0000000
> --- a/dockerfiles/Dockerfile.toolchain.deps
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -# This file describes the standard way to build the dependencies for CRO=
PS
> -# toolchain images
> -#
> -# Usage:
> -#
> -# docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .
> -
> -FROM debian:wheezy
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Install dependencies
> -RUN apt-get update -qq && apt-get install -y -qq \
> -       python  \
> -       daemontools \
> -       git \
> -       build-essential \
> -       wget
> -
> diff --git a/dockerfiles/Dockerfile.zephyr b/dockerfiles/Dockerfile.zephy=
r
> deleted file mode 100644
> index 32068cb..0000000
> --- a/dockerfiles/Dockerfile.zephyr
> +++ /dev/null
> @@ -1,59 +0,0 @@
> -# This file describes the standard way to build a Zephyr toolchain image
> -#
> -# Usage:
> -#
> -# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables
> below with
> -# the name and URL of your self-extracting toolchain
> -#
> -# Example:
> -#
> -# ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run
> -# ENV TOOLCHAIN_PATH
> https://nexus.zephyrproject.org/content/repositories/releases/org/zephyrp=
roject/zephyr-sdk/0.7.2-i686/
> -#
> -# 2) Build your toolchain image with the following command replacing
> my_tag with your Zephyr's release
> -# docker build -t crops/zephyr:my_tag -f Dockerfile.zephyr ../
> -#
> -# Example for Zephyr SDK 0.7.2:
> -# docker build -t crops/zephyr:0.7.2-src -f Dockerfile.zephyr ../
> -#
> -
> -FROM crops/zephyr:deps
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run
> -ENV TOOLCHAIN_PATH
> https://nexus.zephyrproject.org/content/repositories/releases/org/zephyrp=
roject/zephyr-sdk/0.7.2-i686/
> -
> -# Build and install turff
> -RUN mkdir -p /usr/local/crops/turff/
> -COPY turff /usr/local/crops/turff/
> -COPY utils.[ch] /usr/local/crops/
> -COPY globals.[ch] /usr/local/crops/
> -
> -RUN cd /usr/local/crops/turff && \
> -       make && \
> -       mkdir -p /bin/turff && \
> -       cp /usr/local/crops/turff/turff /bin/turff/run && \
> -       cp /usr/local/crops/turff/turff_launcher /bin/
> -
> -# Download and install Zephyr toolchain
> -RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} && \
> -       cd /tmp &&      \
> -       chmod 755 ./${TOOLCHAIN_NAME} && \
> -       ./${TOOLCHAIN_NAME} && \
> -       rm -rf ./${TOOLCHAIN_NAME}
> -
> -#Linkups
> -# /bin/sh to bash
> -# easy to use gdb to various architectures
> -# NOTE: in future we will probably split these into separate toolchain
> containers
> -RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
> -    ln -s
> /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-elf/i586-po=
ky-elf-gdb
> /usr/bin/zephyr-i586-gdb && \
> -    ln -s
> /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/arm-poky-eabi/arm-pok=
y-eabi-gdb
> /usr/bin/zephyr-arm-gdb && \
> -    ln -s
> /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/arc-poky-elf/arc-poky=
-elf-gdb
> /usr/bin/zephyr-arc-gdb && \
> -    ln -s
> /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/mips-poky-elf/mips-po=
ky-elf-gdb
> /usr/bin/zephyr-mips-gdb
> -
> -#Create Zephyr bare clone
> -RUN git clone --bare https://gerrit.zephyrproject.org/r/zephyr
> /zephyr-src
> -
> -# Container entry point
> -ENTRYPOINT ["/bin/turff_launcher"]
> diff --git a/dockerfiles/Dockerfile.zephyr.deps
> b/dockerfiles/Dockerfile.zephyr.deps
> deleted file mode 100644
> index 4c5aa4f..0000000
> --- a/dockerfiles/Dockerfile.zephyr.deps
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -# This file describes the standard way to build the dependencies for
> Zephyr
> -# toolchain images
> -#
> -# Usage:
> -#
> -# docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps .
> -
> -FROM debian:wheezy
> -MAINTAINER Todor Minchev <todor.minchev@linux.intel.com>
> -
> -# Install dependencies
> -RUN apt-get update && apt-get install -y \
> -       python  \
> -       daemontools \
> -       git \
> -       make \
> -       gcc \
> -       gcc-multilib \
> -       g++ \
> -       libc6-dev-i386 \
> -       g++-multilib    \
> -       bzip2   \
> -       wget
> -
> diff --git a/globals.c b/globals.c
> deleted file mode 100755
> index 2716495..0000000
> --- a/globals.c
> +++ /dev/null
> @@ -1,47 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include <stdio.h>
> -#include <stdlib.h>
> -#include "globals.h"
> -
> -void info(const char *file, int line, const char *func, const char* fmt,
> ...) {
> -  va_list args;
> -
> -  printf("[INFO] ");
> -  va_start(args, fmt);
> -  vprintf(fmt, args);
> -  va_end(args);
> -}
> -
> -void debug(const char *file, int line, const char *func, const char* fmt=
,
> ...) {
> -  va_list args;
> -
> -  printf("[DEBUG] %s:%d: [%s] ", file, line, func);
> -  va_start(args, fmt);
> -  vprintf(fmt, args);
> -  va_end(args);
> -}
> -
> -void error(const char *file, int line, const char *func, const char* fmt=
,
> ...) {
> -  va_list args;
> -
> -  printf("[ERROR] %s:%d: [%s] ", file, line, func);
> -  va_start(args, fmt);
> -  vprintf(fmt, args);
> -  va_end(args);
> -  exit(EXIT_FAILURE);
> -}
> diff --git a/globals.h b/globals.h
> deleted file mode 100755
> index c928166..0000000
> --- a/globals.h
> +++ /dev/null
> @@ -1,69 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef GLOBALS_H
> -#define GLOBALS_H
> -#ifdef __linux
> -#define _GNU_SOURCE
> -#endif
> -
> -
> -#include <math.h>
> -#include <stdarg.h>
> -#include <stdint.h>
> -#include <stdio.h>
> -#include <string.h>
> -#include <unistd.h>
> -
> -#define KEY_ARR_SZ 'z' -'a' + 1
> -#define KEY(var) abs('a'- #var[1])
> -
> -
> -#define CODI_PORT      "10000"
> -#define CODI_IP_NATIVE "127.0.0.1"
> -#define CODI_IP_VIRT   "192.168.99.100"
> -#define TURFF_PORT     "9999"
> -#define MSG_TERM       "EOM"
> -#define VERSION        "0.1"
> -#define TURFF_EOM      "TEOM"
> -#define CEED_NAME      "ceed"
> -#define TURFF_NAME     "turff"
> -#define CODI_NAME      "codi"
> -#define TURFFID        "TURFFID"
> -
> -void info(const char *file, int line, const char *func, const char* fmt,
> ...);
> -void debug(const char *file, int line, const char *func, const char* fmt=
,
> ...);
> -void error(const char *file, int line, const char *func, const char* fmt=
,
> ...);
> -
> -#define INFO(...)  info(__FILE__, __LINE__, __func__, __VA_ARGS__)
> -#define ERR(...) error(__FILE__, __LINE__, __func__, __VA_ARGS__)
> -#define DEBUG(...) debug(__FILE__, __LINE__, __func__, __VA_ARGS__)
> -
> -typedef enum { false, true } bool;
> -
> -/* parameter chunk*/
> -typedef struct chunk{
> -  uint32_t op_code;
> -  char arg[20];
> -  struct chunk *next;
> -} msg_chunk;
> -
> -typedef struct{
> -  char  *mem;
> -  size_t size;
> -} curl_mem_chunk_t;
> -
> -#endif
> diff --git a/helpers/runbitbake.py b/helpers/runbitbake.py
> deleted file mode 100644
> index 96c55dc..0000000
> --- a/helpers/runbitbake.py
> +++ /dev/null
> @@ -1,148 +0,0 @@
> -#!/usr/bin/python
> -
> -# runbitbake.py
> -#
> -# Copyright (C) 2016 Intel Corporation
> -#
> -# This program is free software; you can redistribute it and/or modify
> -# it under the terms of the GNU General Public License version 2 as
> -# published by the Free Software Foundation.
> -#
> -# This program is distributed in the hope that it will be useful,
> -# but WITHOUT ANY WARRANTY; without even the implied warranty of
> -# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -# GNU General Public License for more details.
> -#
> -# You should have received a copy of the GNU General Public License alon=
g
> -# with this program; if not, write to the Free Software Foundation, Inc.=
,
> -# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> -
> -import argparse
> -import subprocess
> -import os
> -import tempfile
> -import shutil
> -import sys
> -import signal
> -
> -bitbake_process =3D None
> -
> -old_handler =3D {}
> -old_handler[str(signal.SIGINT)] =3D signal.getsignal(signal.SIGINT)
> -old_handler[str(signal.SIGTERM)] =3D signal.getsignal(signal.SIGTERM)
> -
> -
> -def addextra(tempdir, builddir, name, extralist):
> -    myf =3D "{}/conf/{}".format(builddir, name)
> -    myf_orig =3D "{}/{}.orig".format(tempdir, name)
> -    tmpfile =3D "{}/{}.orig.tmp".format(tempdir, name)
> -
> -    # copy isn't atomic so make sure that orig is created atomically so
> that
> -    # file.orig is always correct even if file gets hosed. So that
> -    # means if a user ever sees file.orig, they can be assured that it
> -    # is the same as the original file with no corruption.
> -    shutil.copyfile(myf, tmpfile)
> -    with open(tmpfile, "r") as f:
> -        fd =3D f.fileno()
> -        os.fdatasync(fd)
> -
> -    # Remember first sync the file AND directory to make sure data
> -    # is written out
> -    fd =3D os.open(os.path.dirname(tmpfile), os.O_RDONLY)
> -    os.fsync(fd)
> -    os.close(fd)
> -
> -    # Rename should be atomic with respect to disk, yes all of this
> assumes
> -    # linux and possibly non-network filesystems.
> -    os.rename(tmpfile, myf_orig)
> -
> -    with open(myf, "a") as f:
> -        if extralist:
> -            for conf in extralist:
> -                with open(conf) as f2:
> -                    content =3D f2.readlines()
> -                for l in content:
> -                    f.write("%s\n" % format(l.strip()))
> -
> -
> -def restore_files(tempdir, builddir, conffiles):
> -    for f in conffiles:
> -        dest =3D os.path.join(builddir, "conf", f)
> -        src =3D os.path.join(tempdir, f + ".orig")
> -
> -        if os.path.exists(src):
> -            os.rename(src, dest)
> -
> -
> -# If bitbake is around let it do all the signal handling
> -def handler(signum, frame):
> -    if bitbake_process:
> -        # SIGINT is special if there is a tty. Because with a tty SIGINT
> will
> -        # automatically get sent to all processes in the process group.
> So we
> -        # don't need to send it ourselves.
> -        if signum =3D=3D signal.SIGINT and sys.stdin.isatty():
> -            pass
> -        else:
> -            # If there is a bitbake process we want to let it tear down
> all
> -            # its children itself so send the signal to bitbake.
> -            bitbake_process.send_signal(signum)
> -    else:
> -        old_handler[str(signum)](signum, frame)
> -
> -
> -if __name__ =3D=3D '__main__':
> -    signal.signal(signal.SIGINT, handler)
> -    signal.signal(signal.SIGTERM, handler)
> -
> -    parser =3D argparse.ArgumentParser()
> -
> -    parser.add_argument("--extraconf", action=3D'append', help=3D"File
> containing"
> -                        "extra configuration")
> -    parser.add_argument("--extralayers", action=3D'append',
> -                        help=3D"File containing extra bblayers")
> -
> -    parser.add_argument("--pokydir", default=3D"/home/yoctouser/poky",
> -                        required=3DTrue, help=3D"Directory containing po=
ky")
> -    parser.add_argument("--target", "-t", required=3DTrue,
> -                        help=3D"What bitbake should build")
> -    parser.add_argument("--builddir", "-b", required=3DTrue,
> -                        help=3D"Directory to build in")
> -
> -    args =3D parser.parse_args()
> -
> -    builddir =3D args.builddir
> -
> -    if not os.path.isdir(builddir):
> -        os.makedirs(builddir)
> -
> -    # tempdir is a subdirectory of builddir in case builddir and
> local.conf
> -    # already existed. Then if something goes wrong with local.conf the
> user
> -    # can restore it by using builddir/tempdir/local.conf.orig
> -    tempdir =3D tempfile.mkdtemp(prefix=3D"runbitbake-tmpdir", dir=3Dbui=
lddir)
> -
> -    # Have to use bash since the default on ubuntu is dash which is
> garbage
> -    try:
> -        cmd =3D 'bash -c ". {}/oe-init-build-env {}"'.format(args.pokydi=
r,
> -                                                           builddir)
> -        subprocess.check_call(cmd, stdout=3Dsys.stdout, stderr=3Dsys.std=
err,
> -                              shell=3DTrue)
> -
> -        try:
> -            addextra(tempdir, builddir, "local.conf", args.extraconf)
> -            addextra(tempdir, builddir, "bblayers.conf", args.extralayer=
s)
> -
> -            cmd =3D '. {}/oe-init-build-env {} && '.format(args.pokydir,
> -                                                         builddir)
> -            cmd +=3D 'exec bitbake {}'.format(args.target)
> -            bitbake_process =3D subprocess.Popen(['/bin/bash', '-c', cmd=
],
> -                                               stdout=3Dsys.stdout,
> -                                               stderr=3Dsys.stderr,
> shell=3DFalse)
> -            bitbake_process.wait()
> -        finally:
> -            restore_files(tempdir, builddir, ["local.conf",
> "bblayers.conf"])
> -
> -    except subprocess.CalledProcessError as e:
> -        print e
> -
> -    finally:
> -        shutil.rmtree(tempdir, ignore_errors=3DTrue)
> diff --git a/helpers/startOstroScript.sh b/helpers/startOstroScript.sh
> deleted file mode 100644
> index 49a1dd1..0000000
> --- a/helpers/startOstroScript.sh
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -#!/bin/bash
> -POKY_DIR=3D/ostro/ostro-os/
> -EXTRA_CONF=3D/ostro/ostro-shared/conf/ostro.conf
> -BUILD_DIR=3D/ostro/build/
> -EXTRA_LAYERS=3D/ostro/ostro-shared/conf/ostro.layers
> -
> -H_UID=3D$(ls -al /ostro/ostro-shared/ | egrep "\."|egrep -v "\.\." | awk
> '{print $3}')
> -H_USER=3D$(getent passwd "$H_UID" | cut -d: -f1)
> -if [ "$H_USER" =3D=3D "" ]; then
> -    H_USER=3D"yoctobuilder"
> -    /usr/sbin/useradd -m -u ${H_UID} ${H_USER}
> -fi
> -
> -# provide the ostro.conf if there isn't one yet
> -if [ ! -f ${EXTRA_CONF} ]; then
> -    mkdir -p /ostro/ostro-shared/conf
> -    cp /ostro/sample-conf/ostro.conf ${EXTRA_CONF}
> -fi
> -
> -# provide ostro.layers if there isn't one yet
> -if [ ! -f ${EXTRA_LAYERS} ]; then
> -    mkdir -p /ostro/ostro-shared/conf
> -    cp /ostro/sample-conf/ostro.layers ${EXTRA_LAYERS}
> -fi
> -
> -mkdir -p /ostro/ostro-shared/images/
> -chmod a+rwx /ostro/ostro-shared/images/
> -chmod a+rwx /ostro/ostro-shared/conf
> -chmod a+rw  ${EXTRA_CONF}
> -
> -
> -# switch into user to build
> -sudo  --user ${H_USER} /ostro/bin/runbitbake.py --pokydir $POKY_DIR
> --extraconf $EXTRA_CONF --extralayers $EXTRA_LAYERS -b $BUILD_DIR -t $*
> -echo "copying images to shared folder"
> -
> -# we need to source the bitbake env in order to use the bitbake script t=
o
> find the images
> -cd ${BUILD_DIR}
> -source ${POKY_DIR}/oe-init-build-env >> /dev/null
> -CON_DIR=3D`bitbake -e | egrep "DEPLOY_DIR_IMAGE\=3D"|tr "\=3D" " " | tr =
-d
> "\""| awk '{print $2}'`
> -rsync -a ${CON_DIR} /ostro/ostro-shared/images/ > /dev/null 2>&1
> -
> -
> diff --git a/installers/ostro-installer.sh b/installers/ostro-installer.s=
h
> deleted file mode 100644
> index 05eca6a..0000000
> --- a/installers/ostro-installer.sh
> +++ /dev/null
> @@ -1,108 +0,0 @@
> -#!/bin/bash
> -
> -if [[ "$(basename -- "$0")" =3D=3D "ostro-installer.sh" ]]; then
> -  echo -e "$0 has to be sourced not run" >&2;
> -  echo -e "\nExample:\nsource $0\n"; exit 1
> -fi
> -
> -OSTRO_IMG=3Dcrops/ostro:builder
> -OSTRO_CONTAINER=3Dostro-builder
> -OSTRO_CONF=3D$HOME/ostro-workspace/shared/conf/ostro.conf
> -BITBAKE_WRAPPER=3D$HOME/.crops/bitbake.ostro
> -WIN_PLATFORM=3D"msys"
> -LINUX_PLATFORM=3D"linux"
> -MAC_PLATFORM=3D"darwin"
> -unset MY_PLATFORM
> -
> -# establish platform
> -if [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D *$LINUX_PLATFO=
RM*
> ]]; then
> -  MY_PLATFORM=3D$LINUX_PLATFORM
> -elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D=3D
> *$MAC_PLATFORM* ]]; then
> -  MY_PLATFORM=3D$MAC_PLATFORM
> -elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D=3D
> *$WIN_PLATFORM* ]]; then
> -  MY_PLATFORM=3D$WIN_PLATFORM
> -else
> -  echo "Unknown platform: $OSTYPE. Exiting"; return 1
> -fi
> -echo -e "\nPlatform is $MY_PLATFORM"
> -
> -if [ "`which docker`" =3D "" ]; then
> -  echo -e "\nPlease install docker first, then run this installer"
> -  if [[ $MY_PLATFORM =3D $LINUX_PLATFORM ]]; then
> -    echo -e "\nFrom: https://docs.docker.com/linux/step_one/"
> -  else
> -    echo -e "\nFrom: https://www.docker.com/products/docker-toolbox"
> -  fi
> -  return 1
> -fi
> -
> -echo -e "\n"
> -read -p "This will remove existing OSTRO build containers. Answering No
> will exit the installer. Proceed? Y/N " -r
> -echo
> -if [[ ! $REPLY =3D~ ^[Yy]$ ]]
> -then
> -  echo "There is nothing for me to do. Exiting"; return 1
> -else
> -  echo -e "\nRemove existing OSTRO build containers"
> -  docker ps -a | awk '{ print $1,$2 }' | grep $OSTRO_IMG | awk '{print $=
1
> }' | xargs -I {} docker rm -f {}
> -  echo -e "Done"
> -fi
> -
> -if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" !=3D "" ]]; then
> -  read -p "OSTRO build image found. Download latest OSTRO build image?
> Y/N " -r; echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" =3D=3D "" ]]; th=
en
> -      echo "OSTRO build image not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nRemove existing OSTRO build image"
> -    docker rmi $OSTRO_IMG 2> /dev/null
> -    echo -e "Done"
> -
> -    echo -e "\nDownloading OSTRO build image. Please wait"
> -    docker pull $OSTRO_IMG
> -    echo -e "Done"
> -  fi
> -else
> -  read -p "Download OSTRO build image? Y/N " -r
> -  echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" =3D=3D "" ]]; th=
en
> -      echo "OSTRO build image not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nDownloading OSTRO build image. Please wait"
> -    docker pull $OSTRO_IMG
> -    echo -e "Done"
> -  fi
> -fi
> -
> -if [[ "$(docker images -q $OSTRO_IMG 2> /dev/null)" =3D=3D "" ]]; then
> -  echo "OSTRO build image not found. Exiting installer"; return 1
> -fi
> -
> -mkdir -p $HOME/.crops
> -
> -if [[ -f "$BITBAKE_WRAPPER" ]]; then
> -  read -p "OSTRO bitbake wrapper found. Do you want to reinstall bitbake
> wrapper? Y/N " -r; echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    echo -e "\nOSTRO bitbake wrapper was not updated"
> -  else
> -    rm -rf $BITBAKE_WRAPPER
> -         echo -e "Downloading default OSTRO bitbake wrapper"
> -    curl -k -s -o $BITBAKE_WRAPPER
> https://raw.githubusercontent.com/crops/crops/master/scripts/bitbake.ostr=
o
> -    chmod 755 $BITBAKE_WRAPPER
> -    echo -e "Done."
> -  fi
> -else
> -  echo -e "Downloading OSTRO bitbake wrapper"
> -  curl -k -s -o $BITBAKE_WRAPPER
> https://raw.githubusercontent.com/crops/crops/master/scripts/bitbake.ostr=
o
> -  chmod 755 $BITBAKE_WRAPPER
> -  echo -e "Done."
> -fi
> -export PATH=3D$PATH:$HOME/.crops
> -
> -echo -e "\n\nTHE OSTRO BUILD ENVIRONMENT HAS BEEN SET UP"
> -
> -echo -e "\nYou can now build ostro-os from the CLI\n"
> -echo -e "Example :\nbitbake.ostro ostro-image-noswupd\n"
> diff --git a/installers/zephyr-installer.sh
> b/installers/zephyr-installer.sh
> deleted file mode 100755
> index 2afb4cf..0000000
> --- a/installers/zephyr-installer.sh
> +++ /dev/null
> @@ -1,225 +0,0 @@
> -#!/bin/bash
> -
> -if [[ "$(basename -- "$0")" =3D=3D "zephyr-installer.sh" ]]; then
> -  echo -e "$0 has to be sourced not run" >&2;
> -  echo -e "\nExample:\nsource $0\n"; exit 1
> -fi
> -
> -CODI_IMG=3Dcrops/codi:latest
> -CODI_CONTAINER=3Dcodi
> -ZEPHYR_IMG=3Dcrops/zephyr:latest
> -ZEPHYR_CONTAINER=3Dcrops-zephyr-0-7-2-src
> -VM_NAME=3Ddefault
> -CEED_EXE=3D$HOME/.crops/ceed/ceed
> -MAKE_PATH=3D$HOME/.crops
> -WIN_PLATFORM=3D"msys"
> -LINUX_PLATFORM=3D"linux"
> -MAC_PLATFORM=3D"darwin"
> -unset MY_PLATFORM
> -
> -# establish platform
> -if [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D *$LINUX_PLATFO=
RM*
> ]]; then
> -  MY_PLATFORM=3D$LINUX_PLATFORM
> -elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D=3D
> *$MAC_PLATFORM* ]]; then
> -  MY_PLATFORM=3D$MAC_PLATFORM
> -elif [[ "echo "${OSTYPE}" | tr '[:upper:]' '[:lower:]'" =3D=3D
> *$WIN_PLATFORM* ]]; then
> -  MY_PLATFORM=3D$WIN_PLATFORM
> -else
> -  echo "Unknown platform: $OSTYPE. Exiting"; return 1
> -fi
> -echo -e "\nPlatform is $MY_PLATFORM"
> -
> -if [ "`which docker`" =3D "" ]; then
> -  echo -e "\nPlease install docker first, then run this installer"
> -  if [[ $MY_PLATFORM =3D $LINUX_PLATFORM ]]; then
> -    echo -e "\nFrom: https://docs.docker.com/linux/step_one/"
> -  else
> -    echo -e "\nFrom: https://www.docker.com/products/docker-toolbox"
> -  fi
> -  return 1
> -fi
> -
> -echo -e "\n"
> -read -p "This will remove existing CROPS containers. Answering No will
> exit the installer. Proceed? Y/N " -r
> -echo
> -if [[ ! $REPLY =3D~ ^[Yy]$ ]]
> -then
> -  echo "There is nothing for me to do. Exiting"; return 1
> -else
> -  echo -e "\nRemove existing CODI containers"
> -  docker ps -a | awk '{ print $1,$2 }' | grep $CODI_IMG | awk '{print $1
> }' | xargs -I {} docker rm -f {}
> -  echo -e "Done"
> -
> -  echo -e "\nRemove existing Zephyr container"
> -  docker ps -a | awk '{ print $1,$2 }' | grep $ZEPHYR_IMG | awk '{print
> $1 }' | xargs -I {} docker rm -f {}
> -  echo -e "Done"
> -fi
> -
> -if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" !=3D "" ]]; then
> -  read -p "CODI image found. Download latest CODI image? Y/N " -r; echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" =3D=3D "" ]]; the=
n
> -      echo "CODI image not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nRemove existing CODI image"
> -    docker rmi $CODI_IMG 2> /dev/null
> -    echo -e "Done"
> -
> -    echo -e "\nDownloading CODI image. Please wait"
> -    docker pull $CODI_IMG
> -    echo -e "Done"
> -  fi
> -else
> -  read -p "Download CODI image? Y/N " -r
> -  echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $CODI_IMG 2> /dev/null)" =3D=3D "" ]]; the=
n
> -      echo "CODI image not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nDownloading CODI image. Please wait"
> -    docker pull $CODI_IMG
> -    echo -e "Done"
> -  fi
> -fi
> -
> -if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" !=3D "" ]]; then
> -  read -p "Zephyr toolchain found. Download latest Zephyr toolchain? Y/N
> " -r; echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" =3D=3D "" ]]; t=
hen
> -      echo "Zephyr toolchain not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nRemove existing Zephyr toolchain"
> -    docker rmi $ZEPHYR_IMG 2> /dev/null
> -    echo -e "Done"
> -
> -    echo -e "\nDownloading Zephyr toolchain. Please wait"
> -    docker pull $ZEPHYR_IMG
> -    echo -e "Done"
> -  fi
> -else
> -  read -p "Download Zephyr toolchain? Y/N " -r; echo
> -  if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -    if [[ "$(docker images -q $ZEPHYR_IMG 2> /dev/null)" =3D=3D "" ]]; t=
hen
> -      echo "Zephyr toolchain not found. Exiting installer"; return 1
> -    fi
> -  else
> -    echo -e "\nDownloading Zephyr toolchain. Please wait"
> -    docker pull $ZEPHYR_IMG
> -    echo -e "Done"
> -  fi
> -fi
> -
> -echo -e "\nLaunching CODI container"
> -docker run -d --name $CODI_CONTAINER -v
> //var//run//docker.sock://var//run//docker.sock \
> -  --net=3Dhost $CODI_IMG || { echo 'Couldn't start $CODI_CONTAINER\' ;
> return 1; }
> -echo -e "Done"
> -
> -echo -e "\nLaunching Zephyr toolchain"
> -docker run -d --name $ZEPHYR_CONTAINER  -e TURFFID=3D$ZEPHYR_CONTAINER -=
v
> $HOME/crops-workspace:/crops \
> -  --net=3Dhost $ZEPHYR_IMG || { echo 'Couldn't start $ZEPHYR_CONTAINER\'=
 ;
> return 1; }
> -echo -e "Done"
> -
> -mkdir -p $HOME/crops-workspace;
> -
> -if [[ $MY_PLATFORM =3D=3D $MAC_PLATFORM ]]; then
> -  if [[ ! -f "$CEED_EXE" ]]; then
> -    echo -e "Downloading CEED executable for Mac..."
> -    mkdir -p $HOME/.crops/ceed/
> -    curl -s -o $CEED_EXE http://crops.minchev.co.uk/ceed/mac/ceed
> -    chmod 755 $CEED_EXE
> -    echo -e "Done."
> -  fi
> -
> -  if [[ ! -f "$MAKE_PATH/make.zephyr" ]]; then
> -    echo -e "Downloading Zephyr CLI make utility..."
> -    curl -s -o $MAKE_PATH/make.zephyr
> https://raw.githubusercontent.com/todorez/crops/master/scripts/make.zephy=
r
> -    chmod 755 $MAKE_PATH/make.zephyr
> -    echo -e "Done."
> -  fi
> -else
> -  if [[ -f "$CEED_EXE" ]]; then
> -    read -p "CEED found. Do you want to reinstall CEED? Y/N " -r; echo
> -    if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -      echo -e "\nCEED executable was not updated"
> -    else
> -      echo -e "\nRemove existing CEED executable"
> -      rm -rf $CEED_EXE
> -      echo -e "Done"
> -
> -      git clone https://github.com/todorez/crops.git; cd
> crops/dockerfiles;
> -      if [[ $MY_PLATFORM =3D=3D $WIN_PLATFORM ]]; then
> -        echo -e "\nBuilding CEED executable"
> -        docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}=
' |
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{=
print
> $1}' | xargs -I {} docker rmi {}
> -        docker build -t crops/ceed:windows -f Dockerfile.ceed.win ../
> -        docker run --name=3Dceed-windows crops/ceed:windows;
> -        docker-machine ssh default "docker cp
> ceed-windows:/usr/local/crops/ceed/ceed $CEED_EXE";
> -        docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}=
' |
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{=
print
> $1}' | xargs -I {} docker rmi {}
> -        echo -e "Done"
> -      else
> -        echo -e "\nBuilding CEED executable"
> -        docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' =
|
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pr=
int
> $1}' | xargs -I {} docker rmi {}
> -        docker build -t crops/ceed:linux -f Dockerfile.ceed.linux ../
> -        docker run --name=3Dceed-linux crops/ceed:linux;
> -        docker cp ceed-linux:/usr/local/crops/ceed/ceed $CEED_EXE;
> -        docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' =
|
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pr=
int
> $1}' | xargs -I {} docker rmi {}
> -      fi
> -      cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_PATH/
> -      cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf ./crops
> -    fi
> -  else
> -    read -p "Do you want to install CEED? Y/N " -r; echo
> -    if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then
> -      echo -e "\nExiting installer. Your install is incomplete."; return=
 1
> -    else
> -      mkdir -p $HOME/.crops/ceed
> -      git clone https://github.com/todorez/crops.git; cd
> crops/dockerfiles;
> -      if [[ $MY_PLATFORM =3D=3D $WIN_PLATFORM ]]; then
> -        echo -e "\nBuilding CEED executable"
> -        docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}=
' |
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{=
print
> $1}' | xargs -I {} docker rmi {}
> -        docker build -t crops/ceed:windows -f Dockerfile.ceed.win ../
> -        docker run --name=3Dceed-windows crops/ceed:windows;
> -        docker-machine ssh default "docker cp
> ceed-windows:/usr/local/crops/ceed/ceed $CEED_EXE";
> -        docker ps -a -q --filter "name=3Dceed-windows" | awk '{print $1}=
' |
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-windows" | awk '{=
print
> $1}' | xargs -I {} docker rmi {}
> -        echo -e "Done"
> -      else
> -        echo -e "\nBuilding CEED executable"
> -        docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' =
|
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pr=
int
> $1}' | xargs -I {} docker rmi {}
> -        docker build -t crops/ceed:linux -f Dockerfile.ceed.linux ../
> -        docker run --name=3Dceed-linux crops/ceed:linux;
> -        docker cp ceed-linux:/usr/local/crops/ceed/ceed $CEED_EXE;
> -        docker ps -a -q --filter "name=3Dceed-linux" | awk '{print $1}' =
|
> xargs -I {} docker rm -f {}
> -        docker images -q --filter "label=3Dname=3Dceed-linux" | awk '{pr=
int
> $1}' | xargs -I {} docker rmi {}
> -        echo -e "Done"
> -      fi
> -      cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_PATH/;
> -      cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf ./crops
> -    fi
> -  fi
> -fi
> -
> -echo -e "\n\nTHE CROPS ENVIRONMENT HAS BEEN SET UP"
> -
> -if [[ $MY_PLATFORM !=3D $LINUX_PLATFORM ]]; then
> -  MACHINE=3D`docker-machine active`
> -  IP=3D`docker-machine ip $MACHINE`
> -  CEED_EXE=3D"$CEED_EXE -i $IP"
> -fi
> -
> -echo -e "\nInitialize Zephyr environment for CLI use"
> -echo -e "Example :\n${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g \"git clone
> --branch v1.0.0 /zephyr-src /crops/zephyr-project/\""
> -
> -echo -e "\nYou can now build Zephyr applications from the CLI"
> -echo -e "Example :\n$MAKE_PATH/make.zephyr BOARD=3Darduino_101 -C
> /crops/zephyr-project/samples/nanokernel/apps/hello_world/"
> -
> -export CEED_EXE=3D$CEED_EXE
> -export ZEPHYR_CONTAINER=3D$ZEPHYR_CONTAINER
> diff --git a/scripts/bitbake.ostro b/scripts/bitbake.ostro
> deleted file mode 100755
> index a7fba2a..0000000
> --- a/scripts/bitbake.ostro
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -#!/usr/bin/env bash
> -
> -OSTRO_CONTAINER=3Dostro-builder
> -OSTRO_IMG=3Dcrops/ostro:builder
> -
> -DOCKER_CMD=3D"docker run --rm --name $OSTRO_CONTAINER -v
> `pwd`/ostro-shared:/ostro/ostro-shared --net=3Dhost $OSTRO_IMG"
> -PARAMS=3D$1
> -
> -# make sure the shared directory exists
> -mkdir -p `pwd`/ostro-shared
> -${DOCKER_CMD} ${PARAMS} || { echo -e "\nCouldn't start $OSTRO_CONTAINER
> container\n" ; exit 1; }
> -
> diff --git a/scripts/build_ceed b/scripts/build_ceed
> deleted file mode 100755
> index a181b2d..0000000
> --- a/scripts/build_ceed
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -#!/usr/bin/env bash
> -set -e
> -set -o pipefail
> -
> -# This is a convenience script to build the host side ceed for travis
> testing.
> -# this is probably a more travisy way to do this so if you know it, spea=
k
> up!
> -
> -TOPDIR=3D`git rev-parse --show-toplevel`
> -
> -cd ${TOPDIR}/ceed
> -make
> diff --git a/scripts/build_containers b/scripts/build_containers
> deleted file mode 100755
> index 4335d8b..0000000
> --- a/scripts/build_containers
> +++ /dev/null
> @@ -1,73 +0,0 @@
> -#!/usr/bin/env bash
> -set -e
> -set -o pipefail
> -
> -# This is a sanity test script for the CODI and toolchain Docker images.
> -# This removes the old test containers, and builds a new codi and new
> toolchains.
> -# If you do not have the deps containers, it will build them but this
> takes awhile
> -#
> -# Example:
> -#
> -# ./tests/build_containers
> -
> -TOPDIR=3D`git rev-parse --show-toplevel`
> -
> -# remove codi test image as we will rebuild it
> -Q=3D`docker images  -q crops/codi:test`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing codi image"
> -    docker rmi -f $Q
> -fi
> -
> -Q=3D`docker images  -q crops/codi:testdebug`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing codi debug image"
> -    docker rmi -f $Q
> -fi
> -
> -# remove toolchain test image as we will rebuild it
> -Q=3D`docker images  -q crops/toolchain:test`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing toolchain image"
> -    docker rmi -f   $Q
> -fi
> -
> -# remove Zephyr toolchain image as we will rebuild it
> -Q=3D`docker images  -q crops/zephyr:test`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing Zephyr toolchain image"
> -    docker rmi -f   $Q
> -fi
> -
> -cd ${TOPDIR}/dockerfiles;
> -
> -Q=3D`docker images  -q crops/codi:deps`
> -if [ "$Q"  =3D=3D "" ]; then
> -    echo "Build CODI deps image"
> -    docker build -t crops/codi:deps -f Dockerfile.codi.deps --rm=3Dtrue =
..
> -fi
> -
> -
> -echo "Build CODI test image"
> -docker build -t crops/codi:test -f Dockerfile.codi --rm=3Dtrue ..
> -
> -echo "Build CODI debug test image"
> -docker build -t crops/codi:testdebug --build-arg build_type=3Ddebug -f
> Dockerfile.codi --rm=3Dtrue ..
> -
> -Q=3D`docker images  -q crops/toolchain:deps`
> -if [ "$Q"  =3D=3D "" ]; then
> -    echo "Build toolchain deps image"
> -    docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps
> --rm=3Dtrue ..
> -fi
> -
> -echo "Build toolchain test image"
> -docker build -t crops/toolchain:test -f Dockerfile.toolchain --rm=3Dtrue=
 ..
> -
> -Q=3D`docker images  -q crops/zephyr:deps`
> -if [ "$Q"  =3D=3D "" ]; then
> -    echo "Build Zephyr deps image"
> -    docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps
> --rm=3Dtrue ..
> -fi
> -
> -echo "Build Zephyr toolchain image"
> -docker build -t crops/zephyr:test -f Dockerfile.zephyr --rm=3Dtrue ..
> diff --git a/scripts/build_containers.ostro
> b/scripts/build_containers.ostro
> deleted file mode 100755
> index 15019bc..0000000
> --- a/scripts/build_containers.ostro
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -#!/usr/bin/env bash
> -set -e
> -set -o pipefail
> -
> -
> -# This removes the old test containers, and builds a new ostro container=
.
> -# If you do not have the deps containers, it will build them but this
> takes awhile
> -# it does NOT remove the deps images
> -#
> -# Example:
> -#
> -# ./scripts/build_containers.ostro
> -
> -TOPDIR=3D`git rev-parse --show-toplevel`
> -
> -# remove ostro builder image as we will rebuild it
> -Q=3D`docker images  -q crops/ostro:builder`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing ostro image"
> -    docker rmi -f $Q
> -fi
> -
> -cd ${TOPDIR}/dockerfiles;
> -
> -Q=3D`docker images  -q crops/ostro:deps`
> -if [ "$Q"  =3D=3D "" ]; then
> -    echo "Build ostro deps image"
> -    docker build -t crops/ostro:deps -f Dockerfile.ostro.deps --rm=3Dtru=
e ..
> -fi
> -Q=3D`docker images  -q crops/ostro:builder`
> -if [ "$Q"  =3D=3D "" ]; then
> -    echo "Build ostro builder image"
> -    docker build -t crops/ostro:builder -f Dockerfile.ostro --rm=3Dtrue =
..
> -fi
> -
> diff --git a/scripts/gdb.zephyr b/scripts/gdb.zephyr
> deleted file mode 100644
> index dfb128e..0000000
> --- a/scripts/gdb.zephyr
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/usr/bin/env bash
> -
> -DOCKER_EXEC_TTY=3D"docker exec -it"
> -CONTAINER=3Dcrops-zephyr-0-7-2-src
>
> -GDB_PATH=3D//opt//zephyr-sdk//sysroots//i686-pokysdk-linux//usr//bin//i5=
86-poky-elf//i586-poky-elf-gdb
> -IMAGE=3D$1
> -
> - ${DOCKER_EXEC_TTY} ${CONTAINER} ${GDB_PATH} ${IMAGE}
> diff --git a/scripts/make.zephyr b/scripts/make.zephyr
> deleted file mode 100755
> index 55f0cef..0000000
> --- a/scripts/make.zephyr
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -#!/usr/bin/env bash
> -
> -echo $CEED_EXE
> -
> -if [ -z "$CEED_EXE" ]; then
> -  CEED_EXE=3D./ceed/ceed
> -fi
> -
> -if [ -z "$ZEPHYR_CONTAINER" ]; then
> -  ZEPHYR_CONTAINER=3Dzephyr-test
> -fi
> -
> -ZEPHYR_ENV=3D"ZEPHYR_GCC_VARIANT=3Dzephyr
> ZEPHYR_SDK_INSTALL_DIR=3D/opt/zephyr-sdk ZEPHYR_BASE=3D/crops/zephyr-proj=
ect/"
> -ALL_PARAMS=3D$*
> -
> -if [ "$#" -eq 0 ]; then
> -    echo $0: No parameters found
> -    exit 1
> -fi
> -
> -${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g "${ZEPHYR_ENV} make ${ALL_PARAMS}"
> diff --git a/scripts/run_containers b/scripts/run_containers
> deleted file mode 100755
> index d2c8066..0000000
> --- a/scripts/run_containers
> +++ /dev/null
> @@ -1,59 +0,0 @@
> -#!/usr/bin/env bash
> -
> -# This is a sanity test script for the CODI and toolchain Docker images.
> -# This runs the test containers.
> -# Then it runs ceed -l to talk to codi to list the 4 test toolchains
> -#
> -# Example:
> -#
> -# ./tests/run_containers [NUM_TOOLCHAIN CONATINERS TO START DEFAULT:4]
> -
> -TOPDIR=3D`git rev-parse --show-toplevel`
> -# note, currently the turff node and the container name MUST match
> exactly or have matching formats
> -# Example: TURFFID=3Drepo/image:tag and container name repo-image-tag
> -# The Docker API does not allow special characters in container names
> except '-'
> -NAME_BASE=3D"crops-toolchain-test"
> -NUM_TOOLCHAINS=3D4
> -if [ "$1" !=3D "" ]; then
> -  NUM_TOOLCHAINS=3D$1
> -fi
> -
> -
> -if [ "$DEBUG" =3D=3D "" ]; then
> -    echo "Start CODI container"
> -    docker run -d --name codi-test -v
> /var/run/docker.sock:/var/run/docker.sock --net=3Dhost crops/codi:test ||=
 \
> -       { echo 'docker run codi failed' ; exit 1; }
> -else
> -    echo "Start DEBUG CODI container"
> -    docker run -d --name codi-test-debug -v
> /var/run/docker.sock:/var/run/docker.sock --net=3Dhost crops/codi:testdeb=
ug
> || \
> -       { echo 'docker run codi failed' ; exit 1; }
> -fi
> -II=3D0
> -while [ $II -lt $NUM_TOOLCHAINS ]; do
> -  echo "Start toolchain container $II"
> -  sleep 2;
> -  docker run -d --name ${NAME_BASE}${II} -v /crops/:/crops/ --env
> TURFFID=3D${NAME_BASE}${II} --net=3Dhost crops/toolchain:test || \
> -  { echo 'docker run toolchain-test${II} failed' ; exit 1; }
> -  let II=3D$II+1
> -done
> -
> -echo "Start Zephyr toolchain container"
> -sleep 2;
> -mkdir -p $HOME/crops-test-workspace
> -docker run -d --name zephyr-test -v $HOME/crops-test-workspace/:/crops/
> --env TURFFID=3Dzephyr-test --net=3Dhost crops/zephyr:test || \
> -  { echo 'docker run zephyr-test failed' ; exit 1; }
> -
> -echo "List containers known to CODI"
> -sleep 5;
> -cd ${TOPDIR}/ceed
> -
> -# if docker-machine exists then we are on a mac/windows and use the
> address of the vm we are running in
> -# else localhost
> -if [ -x "$(command -v docker-machine)" ]; then
> -  NAME=3D`docker-machine active`
> -  ADDRESS=3D`docker-machine ip ${NAME}`
> -else
> -  # linux can run over unix sockets rather than ip but ip is more cross
> platform
> -  ADDRESS=3D127.0.0.1
> -fi
> -./ceed -i $ADDRESS -s 10000 -l
> diff --git a/scripts/stop_containers b/scripts/stop_containers
> deleted file mode 100755
> index b8d0cb7..0000000
> --- a/scripts/stop_containers
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -#!/usr/bin/env bash
> -
> -# This is a sanity test script for the CODI and toolchain Docker images.
> -# This stops the test containers.
> -#
> -# Example:
> -#
> -# ./scripts/stop_containers
> -
> -NAME_BASE=3D"crops-toolchain-test"
> -
> -II=3D0
> -Q=3D`docker ps -a | egrep ${NAME_BASE}${II} | awk '{print $1}'`
> -while [ "$Q" !=3D ""  ]; do
> -    echo "Stop and Remove toolchain container $II"
> -    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
> -    let II=3D$II+1
> -    Q=3D`docker ps -a | egrep ${NAME_BASE}${II} | awk '{print $1}'`
> -done
> -
> -echo "Stop and remove Zephyr test container"
> -Q=3D`docker ps -a | egrep zephyr-test | awk '{print $1}'`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing Zephyr container"
> -    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
> -fi
> -
> -echo "Stop and remove CODI test container"
> -Q=3D`docker ps -a | egrep codi-test | awk '{print $1}'`
> -if [ "$Q"  !=3D "" ]; then
> -    echo "Removing codi container"
> -    docker rm -f $Q || { echo 'docker rm $Q failed' ; exit 1; };
> -fi
> diff --git a/tests.py b/tests.py
> deleted file mode 100644
> index f574c29..0000000
> --- a/tests.py
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -''' CROPS test runner '''
> -
> -import unittest
> -import sys
> -
> -def run_unittests():
> -    ''' Execute Unit Tests '''
> -    tests =3D unittest.TestLoader().discover('tests/unit')
> -    result =3D unittest.TextTestRunner(verbosity=3D2).run(tests)
> -    return result.wasSuccessful()
> -
> -def run_functional_tests():
> -    ''' Execute Functional Tests '''
> -    tests =3D unittest.TestLoader().discover('tests/functional')
> -    result =3D unittest.TextTestRunner(verbosity=3D2).run(tests)
> -    return result.wasSuccessful()
> -
> -if __name__ =3D=3D '__main__':
> -    print "#" * 70
> -    print "Test Runner: Unit tests"
> -    print "#" * 70
> -    unit_results =3D run_unittests()
> -
> -    print "#" * 70
> -    print "Test Runner: Functional tests"
> -    print "#" * 70
> -    functional_results =3D run_functional_tests()
> -
> -    if unit_results and functional_results:
> -        sys.exit(0)
> -    else:
> -        sys.exit(1)
> diff --git a/tests/functional/test_ceed_basic.py
> b/tests/functional/test_ceed_basic.py
> deleted file mode 100644
> index ed7a7a9..0000000
> --- a/tests/functional/test_ceed_basic.py
> +++ /dev/null
> @@ -1,104 +0,0 @@
> -''' Test Basic ceed/codi api'''
> -
> -import unittest
> -import re
> -import subprocess
> -import utils.ceedutil as ceedutil
> -
> -
> -# This test set ASSUMES the initial scripts have been run and therefore
> we have
> -# 1) 1 codi container named codi-test
> -# 2) 4 toolchain containers named test-toolchain-test[0-3]
> -
> -
> -
> -
> -class CeedBasicTests(unittest.TestCase):
> -    ''' Base class for testing ceed '''
> -
> -    def setUp(self):
> -        ''' Define some unique data for validation '''
> -        self.dockerAddress =3D ceedutil.getDockerAddress().strip()
> -        self.tbase=3Dceedutil.ToolchainNameBase
> -        self.tnum=3Dceedutil.ToolchainNumber
> -        self.cPort=3Dceedutil.CodiPort
> -
> -    def tearDown(self):
> -        ''' Destroy unique data '''
> -        self.dockerAddress =3D None
> -
> -    def test_connect(self):
> -        ''' Connect to codi'''
> -        SUBSTRING=3D"Connected to CODI on"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-l"],stdout=3Dsubp=
rocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertTrue(success)
> -
> -    def test_connect_with_port(self):
> -        ''' Connect to codi'''
> -        SUBSTRING=3D"Connected to CODI on"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-s",str(self.cPort=
),"-l"],stdout=3Dsubprocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertTrue(success)
> -
> -    def test_connect_with_badport_shouldfail(self):
> -        ''' Connect to codi'''
> -        SUBSTRING=3D"Connected to CODI on"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-s",str(self.cPort=
+1),"-l"],stdout=3Dsubprocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertFalse(success)
> -
> -
> -    def test_listContainers(self):
> -        ''' List all the toolchain Containers'''
> -        SUBSTRING1=3D"TURFF"
> -        SUBSTRING2=3Dself.tbase
> -        EXPECTED_COUNT=3D4
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-l"],stdout=3Dsubp=
rocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -
> -        count=3D0
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING1) >=3D 0:
> -                if line.find(SUBSTRING2) >=3D 0:
> -                    count+=3D1
> -        self.assertEqual(count,EXPECTED_COUNT)
> diff --git a/tests/functional/test_ceed_commands.py
> b/tests/functional/test_ceed_commands.py
> deleted file mode 100644
> index 72c22ea..0000000
> --- a/tests/functional/test_ceed_commands.py
> +++ /dev/null
> @@ -1,121 +0,0 @@
> -''' Test Basic ceed/codi api'''
> -
> -import unittest
> -import re
> -import subprocess
> -import utils.ceedutil as ceedutil
> -
> -
> -# This test set ASSUMES the initial scripts have been run and therefore
> we have
> -# 1) 1 codi container named codi-test
> -# 2) 4 toolchain containers named test-toolchain-test[0-3]
> -
> -
> -class CeedCommandsTests(unittest.TestCase):
> -    ''' Base class for testing ceed '''
> -
> -    def setUp(self):
> -        ''' Define some unique data for validation '''
> -        self.dockerAddress =3D ceedutil.getDockerAddress().strip()
> -        self.tbase=3Dceedutil.ToolchainNameBase
> -        self.tnum=3Dceedutil.ToolchainNumber
> -
> -    def tearDown(self):
> -        ''' Destroy unique data '''
> -        self.dockerAddress =3D None
> -
> -    def test_command(self):
> -        ''' Get Output from simple command'''
> -        SUBSTRING=3D"/bin/bash"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0"=
,
> "-g","which bash"],stdout=3Dsubprocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertTrue(success)
> -
> -    def test_command_all(self):
> -        ''' Get Output from simple command for all containers'''
> -        SUBSTRING=3D"/bin/bash"
> -        successAll=3DTrue
> -        for i in range(self.tnum):
> -            try:
> -                p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+str=
(i),
> "-g","which bash"],stdout=3Dsubprocess.PIPE)
> -            except subprocess.CalledProcessError as e:
> -                print e.output
> -                self.assertTrue(False)
> -
> -            success=3DFalse
> -            output=3Dp.communicate()[0]
> -
> -            for line in output.split('\n'):
> -                if line.find(SUBSTRING) >=3D 0:
> -                    success=3DTrue
> -                    break
> -            successAll&=3Dsuccess
> -        self.assertTrue(successAll)
> -
> -
> -    def test_command_args_switch(self):
> -        ''' Get Output from simple command using argument switch'''
> -        SUBSTRING=3D"/bin/bash"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0"=
,
> "-r","bash","-g","which"],stdout=3Dsubprocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertTrue(success)
> -
> -
> -    def test_command_env_inline(self):
> -        ''' Pass env as Q=3DR cmd'''
> -        SUBSTRING=3D"FROGS=3DFRIENDS"
> -        try:
> -            p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0"=
,
> "-g","FROGS=3DFRIENDS printenv"],stdout=3Dsubprocess.PIPE)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -        output=3Dp.communicate()[0]
> -
> -        for line in output.split('\n'):
> -            if line.find(SUBSTRING) >=3D 0:
> -                success=3DTrue
> -                break
> -        self.assertTrue(success)
> -
> -    # This will be added when the -e flag is fixed
> -    # def test_command_env_as_argument(self):
> -    #     ''' Pass env using the -e switch to cmd'''
> -    #     SUBSTRING=3D"FROGS=3DFRIENDS"
> -    #     try:
> -    #         p =3D
> subprocess.Popen(["ceed/ceed","-i",self.dockerAddress,"-d",self.tbase+"0"=
,
> "-e","FROGS=3DFRIENDS","-g","printenv"],stdout=3Dsubprocess.PIPE)
> -    #     except subprocess.CalledProcessError as e:
> -    #         print e.output
> -    #         self.assertTrue(False)
> -
> -    #     success=3DFalse
> -    #     output=3Dp.communicate()[0]
> -
> -    #     for line in output.split('\n'):
> -    #         if line.find(SUBSTRING) >=3D 0:
> -    #             success=3DTrue
> -    #             break
> -    #     self.assertTrue(success)
> diff --git a/tests/functional/test_zephyr_build.py
> b/tests/functional/test_zephyr_build.py
> deleted file mode 100644
> index 97fedf7..0000000
> --- a/tests/functional/test_zephyr_build.py
> +++ /dev/null
> @@ -1,101 +0,0 @@
> -''' Test Zephyr Build'''
> -import unittest
> -import re
> -import subprocess
> -import os.path
> -import utils.ceedutil as ceedutil
> -
> -
> -# This test set ASSUMES the initial scripts have been run and therefore
> we have
> -# 1) 1 codi container named codi-test
> -# 2) 1 zephyr toolchain container named zephyr-test
> -
> -
> -class ZephyrBuildTest(unittest.TestCase):
> -    ''' Base class for testing Zephyr builds '''
> -
> -    def setUp(self):
> -        ''' Define some unique data for validation '''
> -        self.dockerAddress =3D ceedutil.getDockerAddress().strip()
> -        self.codiPort=3Dceedutil.CodiPort
> -        self.zephyrName=3D"zephyr-test"
> -        self.zephyrHostPath=3Dos.environ['HOME']+"/crops-test-workspace/=
"
> -        self.zephyrContainerPath=3D"/crops/"
> -
> self.zephyrPrjPath=3D"zephyr-project/samples/nanokernel/apps/hello_world/=
"
> -        self.zephyrBin=3D"outdir/zephyr.bin"
> -        self.devnull=3Dopen(os.devnull, 'w')
> -
> -    def tearDown(self):
> -        ''' Destroy unique data '''
> -        self.dockerAddress =3D None
> -
> -    def test_a_git_clone(self):
> -        ''' Checkout Zephyr source'''
> -        SUBSTRING=3D"Note: checking out"
> -        try:
> -
> subprocess.call(["rm","-rf",os.environ['HOME']+"/crops-test-workspace/zep=
hyr-project"],stdout=3Dself.devnull)
> -
> subprocess.call(["ceed/ceed","-i",self.dockerAddress,"-d",self.zephyrName=
,
> "-s",str(self.codiPort),
> -                "-g","git clone --branch v1.0.0 /zephyr-src
> /crops/zephyr-project"],stdout=3Dself.devnull)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -
> -        if os.path.isdir(self.zephyrHostPath+self.zephyrPrjPath):
> -            success=3DTrue
> -
> -        self.assertTrue(success)
> -
> -    def test_x86_build(self):
> -        ''' Build X86 hello world application\n'''
> -        BOARD=3D"arduino_101"
> -        try:
> -
> subprocess.call(["scripts/make.zephyr","pristine","BOARD=3D"+BOARD,"-C",s=
elf.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -
> subprocess.call(["scripts/make.zephyr","BOARD=3D"+BOARD,"-C",self.zephyrC=
ontainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -
> -        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath +
> self.zephyrBin):
> -            success=3DTrue
> -
> -        self.assertTrue(success)
> -
> -
> -    def test_arm_build(self):
> -        ''' Build ARM hello world application\n'''
> -        BOARD=3D"arduino_due"
> -        try:
> -
> subprocess.call(["scripts/make.zephyr","pristine","BOARD=3D"+BOARD,"-C",s=
elf.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -
> subprocess.call(["scripts/make.zephyr","BOARD=3D"+BOARD,"-C",self.zephyrC=
ontainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -
> -        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath +
> self.zephyrBin):
> -            success=3DTrue
> -
> -        self.assertTrue(success)
> -
> -
> -    def test_arc_build(self):
> -        ''' Build ARC hello world application\n'''
> -        BOARD=3D"arduino_101_sss"
> -        try:
> -
> subprocess.call(["scripts/make.zephyr","pristine","BOARD=3D"+BOARD,"-C",s=
elf.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -
> subprocess.call(["scripts/make.zephyr","BOARD=3D"+BOARD,"-C",self.zephyrC=
ontainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)
> -        except subprocess.CalledProcessError as e:
> -            print e.output
> -            self.assertTrue(False)
> -
> -        success=3DFalse
> -
> -        if os.path.isfile(self.zephyrHostPath+self.zephyrPrjPath +
> self.zephyrBin):
> -            success=3DTrue
> -
> -        self.assertTrue(success)
> diff --git a/tests/functional/utils/__init__.py
> b/tests/functional/utils/__init__.py
> deleted file mode 100644
> index e69de29..0000000
> diff --git a/tests/functional/utils/ceedutil.py
> b/tests/functional/utils/ceedutil.py
> deleted file mode 100644
> index ea75b90..0000000
> --- a/tests/functional/utils/ceedutil.py
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -# some shared utility functions
> -import subprocess
> -
> -ToolchainNameBase=3D"crops-toolchain-test"
> -ToolchainNumber=3D4
> -CodiPort=3D10000
> -def cmd_exists(cmd):
> -    return subprocess.call ("command -v "+cmd,shell=3DTrue,
> -
> stdout=3Dsubprocess.PIPE,stderr=3Dsubprocess.PIPE)=3D=3D0
> -
> -def getDockerMachineAddress():
> -    machine_name=3Dsubprocess.check_output(['docker-machine','active'])
> -
> ADDRESS=3Dsubprocess.check_output(['docker-machine','ip',machine_name.str=
ip()])
> -    return ADDRESS
> -
> -def getDockerAddress():
> -    ADDRESS=3D"127.0.0.1"
> -    if cmd_exists('docker-machine'):
> -        ADDRESS=3DgetDockerMachineAddress()
> -    return ADDRESS
> diff --git a/tests/unit/test_basic.py b/tests/unit/test_basic.py
> deleted file mode 100644
> index 1856536..0000000
> --- a/tests/unit/test_basic.py
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -''' Crawl the running Docker site and verify all links give a 200 OK '''
> -
> -import unittest
> -import subprocess
> -
> -
> -# Placeholder for future python based codi/TURFF
> -
> -class BasicTests(unittest.TestCase):
> -    ''' Base class for testing '''
> -
> -    def setUp(self):
> -        ''' Define some unique data for validation '''
> -        pass
> -
> -
> -    def tearDown(self):
> -        ''' Destroy unique data '''
> -        pass
> diff --git a/tests/unit/test_runbitbake.py b/tests/unit/test_runbitbake.p=
y
> deleted file mode 100644
> index 3b3a733..0000000
> --- a/tests/unit/test_runbitbake.py
> +++ /dev/null
> @@ -1,130 +0,0 @@
> -#!/usr/bin/env python
> -
> -import unittest
> -import os
> -import subprocess
> -import shutil
> -import tempfile
> -import sys
> -import stat
> -import imp
> -
> -
> -class RunBitbakeTestBase(unittest.TestCase):
> -    def setUp(self):
> -        self.tempdir =3D tempfile.mkdtemp(prefix=3D"runbitbaketest-tmpdi=
r")
> -
> -        self.pokydir =3D os.path.join(self.tempdir, "poky")
> -        os.mkdir(self.pokydir)
> -
> -        # runbitbake.py requires --pokydir with a "oe-init-build-env"
> script
> -        self.setupscript =3D os.path.join(self.pokydir, "oe-init-build-e=
nv")
> -        with open(self.setupscript, "w"):
> -            pass
> -
> -        # Create a builddir and confdir as if oe-init-build-env had ran
> -        self.builddir =3D os.path.join(self.tempdir, "build")
> -        self.confdir =3D os.path.join(self.builddir, "conf")
> -        os.mkdir(self.builddir)
> -        os.mkdir(self.confdir)
> -
> -        # Create an executable bitbake that does nothing
> -        self.bindir =3D os.path.join(self.tempdir, "bin")
> -        os.mkdir(self.bindir)
> -
> -        self.bitbake =3D os.path.join(self.bindir, "bitbake")
> -        with open(self.bitbake, "w") as f:
> -            f.write("#!/bin/sh\n")
> -            os.chmod(self.bitbake, stat.S_IRWXU)
> -
> -        # Make sure runbitbake.py can run our fake bitbake
> -        os.environ["PATH"] =3D "{}:{}".format(self.bindir,
> os.environ["PATH"])
> -
> -        # We will have one line local.conf and bblayers.conf.
> -        self.local_conf =3D os.path.join(self.confdir, "local.conf")
> -        with open(self.local_conf, "w") as f:
> -            f.write("Some data\n")
> -
> -        self.bblayers_conf =3D os.path.join(self.confdir, "bblayers.conf=
")
> -        with open(self.bblayers_conf, "w") as f:
> -            f.write("Other data\n")
> -
> -        # Create the files that contain extra data to be added to the
> original
> -        # configuration files
> -        self.extraconf =3D os.path.join(self.tempdir, "extra.conf")
> -        with open(self.extraconf, "w") as f:
> -            f.write("MOAR STUFF\nEVEN MOAR!!!!\n")
> -
> -        self.extralayers =3D os.path.join(self.tempdir,
> "bblayers_extra.conf")
> -        with open(self.extralayers, "w") as f:
> -            f.write("BBLAYERS MOAR STUFF\nEVEN MOAR BBLAYERS!!!!\n")
> -
> -    def tearDown(self):
> -        shutil.rmtree(self.tempdir, ignore_errors=3DTrue)
> -
> -
> -class ConfFilesTest(RunBitbakeTestBase):
> -    def setUp(self):
> -        super(ConfFilesTest, self).setUp()
> -
> -        # These ".orig" files are for checking that the file is restored
> back
> -        # to the original state
> -        self.local_conf_orig =3D os.path.join(self.tempdir,
> "local.conf.orig")
> -        self.bblayers_conf_orig =3D os.path.join(self.tempdir,
> -                                               "bblayers.conf.orig")
> -        shutil.copyfile(self.local_conf, self.local_conf_orig)
> -        shutil.copyfile(self.bblayers_conf, self.bblayers_conf_orig)
> -
> -
> -
> -    def test_files_are_restored(self):
> -        cmd =3D """python helpers/runbitbake.py --pokydir=3D{} """ \
> -              """-t junk -b {} """ \
> -              """--extraconf=3D{} """ \
> -              """--extralayers=3D{}""".format(self.pokydir, self.builddi=
r,
> -                                            self.extraconf,
> self.extralayers)
> -
> -        subprocess.call(cmd.split(), stderr=3Dsys.stderr, stdout=3Dsys.s=
tdout,
> -                        shell=3DFalse)
> -
> -        with open(self.local_conf_orig, "r") as f:
> -            origlines =3D f.readlines()
> -        with open(self.local_conf, "r") as f:
> -            newlines =3D f.readlines()
> -        self.assertListEqual(origlines, newlines)
> -
> -        with open(self.bblayers_conf_orig, "r") as f:
> -            origlines =3D f.readlines()
> -        with open(self.bblayers_conf, "r") as f:
> -            newlines =3D f.readlines()
> -        self.assertListEqual(origlines, newlines)
> -
> -
> -class AddExtraTest(RunBitbakeTestBase):
> -    def setUp(self):
> -        super(AddExtraTest, self).setUp()
> -        # Since we are importing a file in the source directory, this
> prevents
> -        # cluttering the directory with a .pyc file.
> -        sys.dont_write_bytecode =3D True
> -
> -        self.runbitbake =3D os.path.join("helpers", "runbitbake.py")
> -        self.module =3D imp.load_source("", self.runbitbake)
> -
> -        self.addextra_tempdir =3D os.path.join(self.tempdir, "addextratm=
p")
> -        os.mkdir(self.addextra_tempdir)
> -
> -    def test_addextra_changed_files(self):
> -        addextra =3D self.module.addextra
> -        addextra(self.addextra_tempdir, self.builddir, "local.conf",
> -                 [self.extraconf])
> -
> -        with open(self.extraconf, "r") as f:
> -            extraconflines =3D set(f.readlines())
> -        with open(self.local_conf, "r") as f:
> -            localconflines =3D set(f.readlines())
> -
> -        intersection =3D extraconflines & localconflines
> -        self.assertListEqual(list(intersection), list(extraconflines))
> -
> -if __name__ =3D=3D '__main__':
> -    unittest.main()
> diff --git a/turff/Makefile b/turff/Makefile
> deleted file mode 100755
> index 1664c59..0000000
> --- a/turff/Makefile
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -CFLAGS=3D-g -I. -I../
> -LDFLAGS=3D-lm
> -DEPS =3D turff_api.h ../globals.h ../utils.h
> -OBJ =3D turff.o turff_api.o ../utils.o ../globals.o
> -
> -all: turff
> -
> -debug: DFLAGS=3D-DDBG
> -debug: clean turff
> -
> -%.o: %.c $(DEPS)
> -       $(CC) -c -o $@ $< $(CFLAGS) $(DFLAGS)
> -
> -turff: $(OBJ)
> -       $(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)
> -
> -.PHONY: clean
> -clean:
> -       rm -rf $(OBJ) turff
> diff --git a/turff/turff.c b/turff/turff.c
> deleted file mode 100755
> index d63fb99..0000000
> --- a/turff/turff.c
> +++ /dev/null
> @@ -1,128 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdlib.h>
> -#include <signal.h>
> -#include <netdb.h>
> -#include "utils.h"
> -#include "turff_api.h"
> -
> -#define PORT_RANGE 100
> -extern char *turff_ops[];
> -extern char *codi_params[];
> -static int sock_fd;
> -
> -/*TODO - close sockets on CTRL+C. Get rid of this when running as a
> daemon */
> -void close_sockets(int dummy) {
> -  close(sock_fd);
> -  INFO("\nClosed the sockets. Exiting!\n") ;
> -  exit(0);
> -}
> -
> -int main(int argc, char *argv[]) {
> -
> -  struct addrinfo *addr_p =3D NULL;
> -  struct sockaddr cli_addr;
> -  socklen_t cli_len;
> -  int i, ceed_sock_fd, saved_out =3D -1, saved_err =3D -1, bound =3D 0;
> -  const char *port;
> -
> -  parse_turff_params(argc, argv);
> -
> -  bound =3D 0;
> -  port =3D turff_ops[KEY('s')];
> -  while(!bound && (int) *port > (int) *turff_ops[KEY('s')] - PORT_RANGE)=
 {
> -
> -    addr_p =3D bind_to_socket(NULL, port, &sock_fd);
> -
> -    if (addr_p =3D=3D NULL) {
> -      asprintf((char**)&port, "%d", atoi(port)-1) ;
> -    } else {
> -      turff_ops[KEY('s')] =3D (char*) port;
> -      register_agent(turff_ops);
> -      bound =3D 1;
> -      INFO("TURFF listening on port: %s\n", port);
> -    }
> -  }
> -
> -  if (addr_p =3D=3D NULL) {
> -    ERR("Could not bind agent to socket\n");
> -    exit(EXIT_FAILURE);
> -  }
> -
> -  listen(sock_fd,1);
> -  cli_len =3D sizeof(cli_addr);
> -
> -  signal(SIGINT, close_sockets);
> -
> -  while(1) {
> -    ceed_sock_fd =3D accept(sock_fd, &cli_addr, &cli_len);
> -
> -    if (ceed_sock_fd < 0) {
> -      ERR("ERROR on accept");
> -    }
> -
> -    /* receive parameters from CODI */
> -    receive_args(ceed_sock_fd, codi_params);
> -
> -    if (!strcmp(CODI_NAME, codi_params[KEY('z')])) {
> -      /* save stdout and stderr file descriptors */
> -      dup2(2, saved_err);
> -      dup2(1, saved_out);
> -
> -      /* redirect stdout & stderr to ceed socket */
> -      dup2(ceed_sock_fd, 2);
> -      dup2(ceed_sock_fd, 1);
> -
> -      /* make sure ceed and turff APIs match*/
> -      if (!strcmp(turff_ops[KEY('v')], codi_params[KEY('v')])) {
> -        /* process ceed requests */
> -        if (process_params(codi_params))
> -          ERR("ERROR processing ceed request\n");
> -      } else {
> -        INFO("Incompatible versions: TURFF[%s] - CODI[%s]\n",
> -        turff_ops[KEY('v')], codi_params[KEY('v')]);
> -      }
> -
> -      /* delay EOM - send as separate buffer */
> -      fprintf(stdout, TURFF_EOM);
> -      fflush(stdout);
> -
> -      /* restore stdout and stderr */
> -      dup2(saved_err, 2);
> -      dup2(saved_out, 1);
> -
> -      /* clear parameters and wait for a new service request */
> -      for (i =3D 0; i< KEY_ARR_SZ; i++){
> -        if (codi_params[i] !=3D NULL) {
> -#ifdef DBG
> -          DEBUG("Received parameter [%c] : %s\n", i+'a', codi_params[i] =
);
> -#endif
> -          free(codi_params[i]);
> -          codi_params[i] =3D NULL ;
> -        }
> -      }
> -    } else {
> -      /* ceed connected to turff directly. send it EOM*/
> -      INFO("Request did not originate from CODI!\n");
> -      codi_params[KEY('e')] =3D "set";
> -      send_args(ceed_sock_fd, codi_params);
> -    }
> -    close(ceed_sock_fd);
> -  }
> -}
> -
> diff --git a/turff/turff_api.c b/turff/turff_api.c
> deleted file mode 100755
> index 1cd3728..0000000
> --- a/turff/turff_api.c
> +++ /dev/null
> @@ -1,255 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdio.h>
> -#include <stdlib.h>
> -#include <strings.h>
> -#include <unistd.h>
> -#include <errno.h>
> -#include <ctype.h>
> -#include "utils.h"
> -
> -const char workspace_root[] =3D "/crops";
> -char *turff_ops[KEY_ARR_SZ];
> -char *codi_params[KEY_ARR_SZ];
> -
> -void print_turff_usage(int argc, char *argv[]) {
> -  printf("Usage: %s \n", argv[0]);
> -  printf(" -s port number on which the agent is listening [default:
> 9999]\n");
> -  printf(" -i CODI IP address [default: 127.0.0.1]\n");
> -  printf(" -d CODI port number [default: 10000]\n");
> -  printf(" -n node_id to be sent to CODI [default: TURFFID env
> variable]\n");
> -  printf(" -h print this help menu\n");
> -  printf(" -v show turff version\n");
> -}
> -
> -void init_turff_params(){
> -  int i;
> -
> -  for (i =3D 0; i <  KEY_ARR_SZ; i++)
> -    codi_params[i] =3D NULL;
> -
> -  turff_ops[KEY('s')] =3D TURFF_PORT;
> -  turff_ops[KEY('v')] =3D VERSION;
> -  turff_ops[KEY('i')] =3D CODI_IP_NATIVE;
> -  turff_ops[KEY('d')] =3D CODI_PORT;
> -  turff_ops[KEY('z')] =3D TURFF_NAME;
> -}
> -
> -void parse_turff_params(int argc, char *argv[]) {
> -  int c ;
> -
> -  init_turff_params() ;
> -
> -  while ((c =3D getopt(argc, argv, "hvi:d:s:i:n:")) !=3D -1) {
> -    switch (c) {
> -    case 'h':
> -      print_turff_usage(argc, argv);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 'v':
> -      INFO("turff version : %s\n", VERSION);
> -      exit(EXIT_SUCCESS);
> -      break;
> -    case 's':
> -      turff_ops[KEY('s')]  =3D optarg;
> -      break;
> -    case 'i':
> -      turff_ops[KEY('i')]  =3D optarg;
> -      break;
> -    case 'd':
> -      turff_ops[KEY('d')]  =3D optarg;
> -      break;
> -    case 'n':
> -      turff_ops[KEY('n')]  =3D optarg;
> -      break;
> -    case '?':
> -      if (optopt =3D=3D 's')
> -        INFO("Option -%c requires an argument.\n", optopt);
> -      else if (isprint (optopt))
> -        INFO("Unknown option `-%c'.\n", optopt);
> -      else
> -        INFO("Unknown option character `\\x%x'.\n", optopt);
> -    default:
> -      print_turff_usage(argc, argv);
> -      exit(EXIT_FAILURE);
> -    }
> -  }
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int exec_command(char* cmd) {
> -  system(cmd);
> -  free(cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int build_at_prj(char *platform, char *prj_dir)
> -{
> -  char cmd[] =3D "cd %s/%s/%s; chmod -R 777 *;./autogen.sh
> $CONFIGURE_FLAGS; make;";
> -  char *build_cmd;
> -
> -  asprintf(&build_cmd, cmd, workspace_root, platform, prj_dir);
> -  exec_command(build_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int clean_at_prj(char *platform, char *prj_dir) {
> -  char cmd[] =3D "make distclean -C %s/%s/%s/";
> -  char *clean_cmd;
> -
> -  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
> -  exec_command(clean_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int build_cm_prj(char *platform, char *prj_dir)
> -{
> -  char cmd[] =3D "cd %s/%s/%s; mkdir -p build; cd build; cmake ../; make=
;";
> -  char *build_cmd;
> -
> -  asprintf(&build_cmd, cmd, workspace_root, platform, prj_dir);
> -  exec_command(build_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int clean_cm_prj(char *platform, char *prj_dir)
> -{
> -  char cmd[] =3D "make clean -C %s/%s/%s/build;";
> -  char *clean_cmd;
> -
> -  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
> -  exec_command(clean_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int build_m_prj(char *platform, char *prj_dir, char *make_target)
> -{
> -  char cmd[] =3D "make %s -C %s/%s/%s";
> -  char *build_cmd;
> -
> -  asprintf(&build_cmd, cmd, make_target, workspace_root, platform,
> prj_dir);
> -  exec_command(build_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int clean_m_prj(char *platform, char *prj_dir) {
> -  char cmd[] =3D "make clean -C %s/%s/%s/";
> -  char *clean_cmd;
> -
> -  asprintf(&clean_cmd, cmd, workspace_root, platform, prj_dir);
> -  exec_command(clean_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int generic_cmd(char *params[]) {
> -  char cmd[] =3D "%s %s";
> -  char *gen_cmd;
> -
> -  asprintf(&gen_cmd, cmd, params[KEY('g')], params[KEY('r')]);
> -  exec_command(gen_cmd);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int build_prj(char *params[])
> -{
> -  if(params[KEY('t')] !=3D NULL)
> -    build_at_prj(params[KEY('a')], params[KEY('p')]);
> -  else if(params[KEY('m')] !=3D NULL)
> -    build_m_prj(params[KEY('a')], params[KEY('p')], params[KEY('m')]);
> -  else if(params[KEY('k')] !=3D NULL)
> -    build_cm_prj(params[KEY('a')], params[KEY('p')]);
> -  else
> -    return -1;
> -
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int clean_prj(char *params[])
> -{
> -  if(params[KEY('t')] !=3D NULL)
> -    clean_at_prj(params[KEY('a')], params[KEY('p')]);
> -  else if(params[KEY('m')] !=3D NULL)
> -    clean_m_prj(params[KEY('a')], params[KEY('p')]);
> -  else if(params[KEY('k')] !=3D NULL)
> -    clean_cm_prj(params[KEY('a')], params[KEY('p')]);
> -  else
> -    return -1;
> -
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int process_params(char *params[]) {
> -  int i;
> -  for (i =3D 0; i< KEY_ARR_SZ; i++){
> -    if(params[i] !=3D NULL) {
> -      switch ('a' + i) {
> -      case 'b':
> -        build_prj(params);
> -        break;
> -      case 'c':
> -        clean_prj(params);
> -        break;
> -      case 'g':
> -        generic_cmd(params);
> -        break;
> -      }
> -    }
> -  }
> -  return 0;
> -}
> -
> -/* TODO - send port map to CODI*/
> -int register_agent(char *turff_ops[]) {
> -  int turff_sock_fd;
> -  struct addrinfo *addr_p;
> -  char *turff_id;
> -
> -  addr_p =3D connect_to_socket(turff_ops[KEY('i')], turff_ops[KEY('d')],
> &turff_sock_fd);
> -
> -  if(addr_p =3D=3D NULL) {
> -    INFO("Please ensure that CODI is running\n");
> -    ERR("Could not connect to CODI\n");
> -  } else {
> -    INFO("Connected to codi on %s:%s\n",
> -      turff_ops[KEY('i')], turff_ops[KEY('d')]);
> -  }
> -
> -  if (turff_ops[KEY('n')] =3D=3D NULL) {
> -    turff_id =3D getenv(TURFFID);
> -    if(turff_id =3D=3D NULL) {
> -      INFO("Unable to read TURFFID from the environment\n");
> -      INFO("Setting TURFFID to \"default\"\n");
> -      turff_ops[KEY('n')] =3D "default" ;
> -    } else
> -      turff_ops[KEY('n')] =3D turff_id ;
> -  }
> -  sleep(2);
> -  send_args(turff_sock_fd, turff_ops);
> -
> -  return 0;
> -}
> diff --git a/turff/turff_api.h b/turff/turff_api.h
> deleted file mode 100755
> index c2a3aed..0000000
> --- a/turff/turff_api.h
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef TURFF_API_H
> -#define TURFF_API_H
> -
> -void parse_turff_params(int argc, char *argv[]);
> -int process_params(char *params[]);
> -int register_agent(char *turff_ops[]);
> -
> -#endif
> diff --git a/turff/turff_launcher b/turff/turff_launcher
> deleted file mode 100755
> index 0df0594..0000000
> --- a/turff/turff_launcher
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -#!/usr/bin/env bash
> -
> -help () {
> -       echo -e "\nThis is a wrapper for launching TURFF"
> -       echo -e "usage: $0 -f env_config_file\n";
> -       echo "Options:"
> -       echo -e "-f cross compiler environment configuration file"
> -       echo -e "-h show this help menu"
> -       exit 1;
> -}
> -
> -SUPERVISE=3Dsupervise
> -EXEC=3D/bin/turff/
> -
> -while getopts ":hf:" opt; do
> -       case $opt in
> -               f)
> -                       env_conf_file=3D$OPTARG
> -                       ;;
> -               h)
> -                       help
> -                       exit 1
> -                       ;;
> -               \?)
> -                       echo "Invalid option: -$OPTARG"
> -                       exit 1
> -                       ;;
> -               :)
> -                       echo "Option -$OPTARG requires an argument."
> -                       exit 1
> -                       ;;
> -       esac
> -done
> -
> -if [ -n "$env_conf_file" ]; then
> -       source $env_conf_file
> -fi
> -
> -if [ $? -eq 0 ] ; then
> -       $SUPERVISE $EXEC
> -else
> -       echo "Error setting up cross compiler environment"
> -fi
> diff --git a/utils.c b/utils.c
> deleted file mode 100755
> index 11ff951..0000000
> --- a/utils.c
> +++ /dev/null
> @@ -1,351 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#include "globals.h"
> -#include <stdio.h>
> -#include <stdlib.h>
> -#include <string.h>
> -#include <errno.h>
> -#include <unistd.h>
> -#if defined(_WIN32)
> -#include <winsock2.h>
> -#include <wspiapi.h>
> -#else
> -#include <netdb.h>
> -#include <sys/select.h>
> -#endif
> -#include "utils.h"
> -
> -
> -/* TODO - add error checks and return error codes*/
> -int redirect_sockets(int in_sock, int out_sock) {
> -  int ready, received =3D 0;
> -  fd_set read_fd_set ;
> -  int size =3D BUFSIZ;
> -  void *buf =3D calloc(1, size);
> -
> -  do {
> -    FD_ZERO(&read_fd_set);
> -    FD_SET(in_sock, &read_fd_set);
> -    ready =3D select(in_sock+1, &read_fd_set, NULL, NULL, NULL);
> -  } while (ready=3D=3D-1 && errno =3D=3D EINTR);
> -
> -  if (ready > 0 ){
> -    if (FD_ISSET(in_sock, &read_fd_set)) {
> -      while (size > 0) {
> -        received =3D recv(in_sock, buf, size, 0);
> -        if (received < 0 ){
> -          ERR("Error : %s\n", strerror(errno));
> -        } else if (received =3D=3D 0) {
> -          break ;
> -        } else {
> -          size -=3D received;
> -          if (strstr((char*) buf, TURFF_EOM)) {
> -            send_data(out_sock, (const void *) buf,received);
> -            break;
> -          } else {
> -            send_data(out_sock, (const void *) buf,received);
> -          }
> -
> -        }
> -      }
> -    }
> -  } else if (ready < 0){
> -    free(buf);
> -    ERR("Select error\n");
> -  }
> -  free(buf);
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int send_data(int sock_fd, const void *buf, size_t size) {
> -  int n, ready, sent =3D 0;
> -  fd_set write_fd_set ;
> -  struct timeval timeout;
> -
> -  timeout.tv_sec =3D (long) 0.3;
> -  timeout.tv_usec =3D 0;
> -
> -  FD_ZERO(&write_fd_set);
> -  FD_SET(sock_fd, &write_fd_set);
> -  n =3D sock_fd +1;
> -
> -  ready =3D select(n, NULL, &write_fd_set, NULL, &timeout);
> -
> -  if (ready) {
> -    while (size > 0) {
> -      sent =3D send(sock_fd, buf, size, 0);
> -      if (sent =3D=3D -1){
> -        ERR("Unable to send data. Error: [%d] %s", errno,
> strerror(errno));
> -      }
> -      else {
> -        size -=3D sent;
> -#ifdef DBG
> -        DEBUG("Bytes sent: %d. Bytes remaining: %zu\n", sent, size);
> -#endif
> -      }
> -    }
> -  } else if (ready =3D=3D -1){
> -      ERR("Select timeout\n");
> -  }
> -  return 0;
> -}
> -
> -/* TODO - add error checks and return error codes*/
> -int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int
> *done) {
> -  int ready, received =3D 0;
> -  fd_set read_fd_set ;
> -
> -  do {
> -    FD_ZERO(&read_fd_set);
> -    FD_SET(sock_fd, &read_fd_set);
> -    ready =3D select(sock_fd+1, &read_fd_set, NULL, NULL, NULL);
> -  } while (ready=3D=3D-1 && errno =3D=3D EINTR);
> -
> -  if (ready > 0 ){
> -    if (FD_ISSET(sock_fd, &read_fd_set)) {
> -      while (size > 0) {
> -        received =3D recv(sock_fd, buf, size, 0);
> -        if (received < 0 ){
> -          ERR("Error : %s\n", strerror(errno));
> -        } else if (received =3D=3D 0) {
> -          if (is_ceed)
> -            *done =3D 1;
> -          break ;
> -        } else {
> -          size -=3D received;
> -          if (strstr((char*) buf, TURFF_EOM) && done !=3D NULL ) {
> -            memset(strstr((char*) buf, TURFF_EOM), 0, sizeof(TURFF_EOM))=
;
> -            printf("%s", (char*) buf);
> -            *done =3D 1;
> -            break;
> -          } else if (is_ceed) {
> -            printf("%s", (char*) buf);
> -          }
> -          buf =3D (char*)buf + received;
> -#ifdef DBG
> -          DEBUG("\nBytes read: %d Bytes remaining: %zu\n", received,
> size);
> -#endif
> -        }
> -      }
> -    }
> -  } else if (ready < 0){
> -    ERR("Select error : %s\n", strerror(errno));
> -  }
> -
> -  return 0;
> -}
> -
> -void send_chunk(int sock_fd, msg_chunk *chunk) {
> -  msg_chunk *head;
> -  head =3D chunk ;
> -  while (chunk !=3D NULL) {
> -    send_data(sock_fd, chunk, sizeof(msg_chunk));
> -#ifdef DBG
> -    DEBUG("Chunk op_code: %d , Chunk payload: %s\n", (*chunk).op_code,
> -      (*chunk).arg);
> -#endif
> -    chunk =3D chunk->next ;
> -  }
> -
> -  /* done with this parameter - free all chunks*/
> -  while (head !=3D NULL) {
> -    chunk =3D head;
> -    head =3D chunk->next;
> -    free(chunk);
> -  }
> -}
> -
> -int receive_chunk(int sock_fd, msg_chunk *chunk) {
> -  return receive_data(sock_fd, chunk, sizeof(msg_chunk), 0, NULL);
> -}
> -
> -void send_args(int sock_fd, char *params[]) {
> -  int  i, j, num_chunks;
> -  msg_chunk *new_chunk, *tail_chunk, *head_chunk ;
> -
> -  /* send all params in chunks of 20 chars*/
> -  for(i =3D 0; i < KEY_ARR_SZ; i++) {
> -    if (params[i] !=3D NULL) {
> -      new_chunk =3D calloc(1, sizeof(msg_chunk));
> -      head_chunk =3D new_chunk;
> -      tail_chunk =3D new_chunk;
> -      num_chunks =3D  ceil((double) strlen(params[i]) /
> -        (sizeof((*new_chunk).arg)-1));
> -
> -      for(j =3D 0; j < num_chunks; j++) {
> -        (*tail_chunk).op_code =3D i;
> -        if (j !=3D 0) {
> -          strncpy((*tail_chunk).arg,
> params[i]+(j*sizeof((*tail_chunk).arg)-j),
> -            sizeof((*tail_chunk).arg)-1);
> -        } else {
> -          strncpy((*tail_chunk).arg, params[i],
> sizeof((*tail_chunk).arg)-1);
> -        }
> -
> -        /* was this the last chunk*/
> -        if ((j+1) !=3D num_chunks) {
> -          new_chunk =3D calloc(1, sizeof(msg_chunk));
> -          tail_chunk->next =3D new_chunk;
> -          tail_chunk =3D new_chunk;
> -        }
> -      }
> -      /* this param is ready - send head chunk*/
> -      send_chunk(sock_fd, head_chunk);
> -    }
> -  }
> -
> -  /* we are done with all params. Send EOM as an individual chunk*/
> -  new_chunk =3D calloc(1, sizeof(msg_chunk));
> -  (*new_chunk).op_code =3D -1;
> -  strcpy((*new_chunk).arg, MSG_TERM);
> -  send_chunk(sock_fd, new_chunk);
> -}
> -
> -/* receive all params in chunks of 20 chars including terminator*/
> -void receive_args(int sock_fd, char *params[]) {
> -  msg_chunk param_chunk;
> -  char *tmp;
> -  do {
> -    memset(&param_chunk, 0, sizeof(msg_chunk));
> -    receive_chunk(sock_fd, &param_chunk);
> -
> -#ifdef DBG
> -    DEBUG("Chunk op_code: %d , Chunk payload: %s\n", param_chunk.op_code=
,
> -      &param_chunk.arg);
> -#endif
> -    if (param_chunk.op_code !=3D -1) {
> -      if (params[param_chunk.op_code] =3D=3D NULL) {
> -        tmp =3D calloc(1, sizeof(param_chunk.arg));
> -      } else {
> -        tmp =3D realloc(params[param_chunk.op_code],
> strlen(params[param_chunk.op_code])+
> -          sizeof(param_chunk.arg));
> -      }
> -
> -      params[param_chunk.op_code] =3D tmp;
> -      strcpy(params[param_chunk.op_code] +
> strlen(params[param_chunk.op_code]),
> -        param_chunk.arg);
> -#ifdef DBG
> -      DEBUG("Chunk op_code: %d , parameter: %s\n", param_chunk.op_code,
> -        params[param_chunk.op_code]);
> -#endif
> -    }
> -  }while(param_chunk.op_code !=3D -1); /* not EOM chunk*/
> -}
> -
> -struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int*
> sock_fd_out) {
> -  int sock_fd, result;
> -  struct addrinfo criteria, *srv_addr, *addr_p;
> -
> -#if defined(_WIN32)
> -  WSADATA wsa_data;
> -  int res =3D WSAStartup(MAKEWORD(2, 2), &wsa_data);
> -  if (res !=3D 0) {
> -    ERR("WSAStartup failed: %d\n", res);
> -  }
> -#endif
> -
> -  /* connect to agent */
> -  memset(&criteria, 0, sizeof(criteria));
> -  criteria.ai_family =3D AF_INET;
> -  criteria.ai_socktype =3D SOCK_STREAM;
> -  criteria.ai_flags =3D 0;
> -  criteria.ai_protocol =3D 0;
> -
> -  result =3D getaddrinfo(ip_in, port_in, &criteria,&srv_addr);
> -
> -  if(result !=3D 0) {
> -    ERR("Could not get address info list : %s\n", gai_strerror(result));
> -  }
> -
> -  for(addr_p =3D srv_addr; addr_p !=3D NULL; addr_p =3D addr_p->ai_next)=
 {
> -    *sock_fd_out =3D socket(addr_p->ai_family, addr_p->ai_socktype,
> addr_p->ai_protocol);
> -
> -    if (*sock_fd_out =3D=3D -1)
> -
> -      continue;
> -
> -    if (connect(*sock_fd_out, addr_p->ai_addr, addr_p->ai_addrlen) !=3D =
-1)
> -      break;  /* Connected */
> -
> -    close(*sock_fd_out);
> -  }
> -
> -  return addr_p ;
> -}
> -
> -
> -struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int*
> sock_fd_out) {
> -  struct addrinfo criteria, *srv_addr;
> -  struct addrinfo *addr_p;
> -  int result, opt =3D 1;
> -
> -  memset(&criteria, 0, sizeof(criteria));
> -  criteria.ai_family =3D AF_INET;
> -  criteria.ai_socktype =3D SOCK_STREAM;
> -  criteria.ai_flags =3D AI_PASSIVE;
> -  criteria.ai_protocol =3D 0;
> -  criteria.ai_canonname =3D NULL;
> -  criteria.ai_addr =3D NULL;
> -  criteria.ai_next =3D NULL;
> -
> -  result =3D getaddrinfo(NULL, port_in, &criteria, &srv_addr);
> -
> -  if (result !=3D 0) {
> -    ERR("Could not get address info list\n");
> -  }
> -
> -  for (addr_p =3D srv_addr; addr_p !=3D NULL; addr_p =3D addr_p->ai_next=
) {
> -    *sock_fd_out =3D socket(addr_p->ai_family, addr_p->ai_socktype,
> addr_p->ai_protocol);
> -
> -    if (*sock_fd_out =3D=3D -1)
> -      continue;
> -
> -    if (setsockopt(*sock_fd_out, SOL_SOCKET, SO_REUSEADDR,
> -      (char *)&opt, sizeof(opt)) < 0) {
> -
> -      close(*sock_fd_out);
> -      ERR("setsockopt failed\n");
> -    }
> -
> -    if (bind(*sock_fd_out, addr_p->ai_addr, addr_p->ai_addrlen) =3D=3D 0=
)
> -      break;                  /* Success */
> -
> -      close(*sock_fd_out);
> -  }
> -
> -  freeaddrinfo(srv_addr);
> -  return addr_p;
> -}
> -
> -void copy_params(char *in[], char *out[]) {
> -  int i;
> -  for (i =3D 0; i< KEY_ARR_SZ; i++){
> -    if (in[i] !=3D NULL) {
> -      asprintf(&out[i],"%s",in[i]);
> -    }
> -  }
> -}
> -
> -void free_params(char *params[]) {
> -  int i;
> -  for (i =3D 0; i< KEY_ARR_SZ; i++){
> -    if (params[i] !=3D NULL) {
> -      free(params[i]);
> -      params[i] =3D NULL ;
> -    }
> -  }
> -}
> diff --git a/utils.h b/utils.h
> deleted file mode 100755
> index b4cc534..0000000
> --- a/utils.h
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -/*
> - * Copyright (C) 2016 Intel Corporation
> - *
> - * Author: Todor Minchev <todor.minchev@linux.intel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, or (at your option) any later version, as published by
> - * the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOU=
T
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> for
> - * more details.
> - */
> -
> -#ifndef UTILS_H
> -#define UTILS_H
> -
> -int send_data(int sock_fd, const void *buf, size_t size);
> -int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int
> *done);
> -void send_args(int sock_fd, char *params[]);
> -void receive_args(int sock_fd, char *params[]);
> -struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int*
> sock_fd_out);
> -struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int*
> sock_fd_out);
> -int redirect_sockets(int in_sock, int out_sock);
> -void free_params(char *params[]);
> -void copy_params(char *in[], char *out[]);
> -
> -#endif
> --
> 2.25.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58970):
> https://lists.yoctoproject.org/g/yocto/message/58970
> Mute This Topic: https://lists.yoctoproject.org/mt/96222152/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000066a54c060818a2c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged. Thank you.</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 12, 2023 at 5:27=E2=80=AFAM =
Eil=C3=ADs &#39;pidge&#39; N=C3=AD Fhlannag=C3=A1in &lt;<a href=3D"mailto:p=
idge@baylibre.com">pidge@baylibre.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">From: Eil=C3=ADs N=C3=AD Fhlannag=C3=
=A1in &lt;<a href=3D"mailto:pidge@baylibre.com" target=3D"_blank">pidge@bay=
libre.com</a>&gt;<br>
<br>
This repository is depreciated and is no longer maintained so we should<br>
archive it and make note that development for crops is currently at<br>
<a href=3D"https://github.com/crops" rel=3D"noreferrer" target=3D"_blank">h=
ttps://github.com/crops</a><br>
<br>
Signed-off-by: Eil=C3=ADs N=C3=AD Fhlannag=C3=A1in &lt;<a href=3D"mailto:pi=
dge@baylibre.com" target=3D"_blank">pidge@baylibre.com</a>&gt;<br>
---<br>
=C2=A0.dockerignore=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A01 -<br>
=C2=A0.gitignore=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A09 -<br>
=C2=A0.travis.yml=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 44 ----<br>
=C2=A0LICENSE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 339 -------------------=
-----<br>
=C2=A0Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 15 --<br>
=C2=A0README.md=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 154 +----------<br>
=C2=A0TODO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 10 -<=
br>
=C2=A0ceed/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 42 ---<br>
=C2=A0ceed/ceed.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 70 -----<br>
=C2=A0ceed/ceed_api.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 157 -----------<br>
=C2=A0ceed/ceed_api.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 22 --<br>
=C2=A0codi/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 19 --<br>
=C2=A0codi/codi.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 126 ---------<br>
=C2=A0codi/codi_api.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 134 ----------<br>
=C2=A0codi/codi_api.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 25 --<br>
=C2=A0codi/codi_db.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 137 ----------<br>
=C2=A0codi/codi_db.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 28 --<br>
=C2=A0codi/codi_launcher.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 146 ----------<br>
=C2=A0codi/codi_launcher.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 58 ----<br>
=C2=A0codi/codi_list.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 100 -------<br>
=C2=A0codi/codi_list.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 33 ---<br>
=C2=A0confs/ostro/ostro.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 16 --<br>
=C2=A0confs/ostro/ostro.layers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 =C2=A00<br>
=C2=A0dockerfiles/Dockerfile.ceed.deps=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 16=
 --<br>
=C2=A0dockerfiles/Dockerfile.ceed.linux=C2=A0 =C2=A0 =C2=A0 |=C2=A0 19 --<b=
r>
=C2=A0dockerfiles/Dockerfile.ceed.win=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 19=
 --<br>
=C2=A0dockerfiles/Dockerfile.codi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 34 ---<br>
=C2=A0dockerfiles/Dockerfile.codi.deps=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 31=
 ---<br>
=C2=A0dockerfiles/Dockerfile.ostro=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
|=C2=A0 24 --<br>
=C2=A0dockerfiles/Dockerfile.ostro.deps=C2=A0 =C2=A0 =C2=A0 |=C2=A0 33 ---<=
br>
=C2=A0dockerfiles/Dockerfile.toolchain=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 49=
 ----<br>
=C2=A0dockerfiles/Dockerfile.toolchain.deps=C2=A0 |=C2=A0 18 --<br>
=C2=A0dockerfiles/Dockerfile.zephyr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=
=A0 59 -----<br>
=C2=A0dockerfiles/Dockerfile.zephyr.deps=C2=A0 =C2=A0 =C2=A0|=C2=A0 24 --<b=
r>
=C2=A0globals.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 47 ----<br>
=C2=A0globals.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 69 -----<br>
=C2=A0helpers/runbitbake.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 | 148 -----------<br>
=C2=A0helpers/startOstroScript.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 42 ---<br>
=C2=A0installers/ostro-installer.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 108=
 --------<br>
=C2=A0installers/zephyr-installer.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 225=
 ----------------<br>
=C2=A0scripts/bitbake.ostro=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 12 -<br>
=C2=A0scripts/build_ceed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 11 -<br>
=C2=A0scripts/build_containers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 73 -----<br>
=C2=A0scripts/build_containers.ostro=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 35 ---<br>
=C2=A0scripts/gdb.zephyr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A08 -<br>
=C2=A0scripts/make.zephyr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 21 --<br>
=C2=A0scripts/run_containers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 59 -----<br>
=C2=A0scripts/stop_containers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 33 ---<br>
=C2=A0tests.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 32 ---<br>
=C2=A0tests/functional/test_ceed_basic.py=C2=A0 =C2=A0 | 104 --------<br>
=C2=A0tests/functional/test_ceed_commands.py | 121 ---------<br>
=C2=A0tests/functional/test_zephyr_build.py=C2=A0 | 101 -------<br>
=C2=A0tests/functional/utils/__init__.py=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A00=
<br>
=C2=A0tests/functional/utils/ceedutil.py=C2=A0 =C2=A0 =C2=A0|=C2=A0 20 --<b=
r>
=C2=A0tests/unit/test_basic.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 19 --<br>
=C2=A0tests/unit/test_runbitbake.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 130=
 ---------<br>
=C2=A0turff/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 19 --<br>
=C2=A0turff/turff.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 128 ---------<br>
=C2=A0turff/turff_api.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 255 ------------------<br>
=C2=A0turff/turff_api.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 24 --<br>
=C2=A0turff/turff_launcher=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 43 ---<br>
=C2=A0utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 351 -------------------=
------<br>
=C2=A0utils.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 30 ---<br>
=C2=A063 files changed, 5 insertions(+), 4274 deletions(-)<br>
=C2=A0delete mode 100644 .dockerignore<br>
=C2=A0delete mode 100644 .gitignore<br>
=C2=A0delete mode 100644 .travis.yml<br>
=C2=A0delete mode 100644 LICENSE<br>
=C2=A0delete mode 100755 Makefile<br>
=C2=A0mode change 100755 =3D&gt; 100644 README.md<br>
=C2=A0delete mode 100755 TODO<br>
=C2=A0delete mode 100755 ceed/Makefile<br>
=C2=A0delete mode 100755 ceed/ceed.c<br>
=C2=A0delete mode 100755 ceed/ceed_api.c<br>
=C2=A0delete mode 100755 ceed/ceed_api.h<br>
=C2=A0delete mode 100644 codi/Makefile<br>
=C2=A0delete mode 100644 codi/codi.c<br>
=C2=A0delete mode 100644 codi/codi_api.c<br>
=C2=A0delete mode 100644 codi/codi_api.h<br>
=C2=A0delete mode 100644 codi/codi_db.c<br>
=C2=A0delete mode 100644 codi/codi_db.h<br>
=C2=A0delete mode 100644 codi/codi_launcher.c<br>
=C2=A0delete mode 100644 codi/codi_launcher.h<br>
=C2=A0delete mode 100644 codi/codi_list.c<br>
=C2=A0delete mode 100644 codi/codi_list.h<br>
=C2=A0delete mode 100644 confs/ostro/ostro.conf<br>
=C2=A0delete mode 100644 confs/ostro/ostro.layers<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.ceed.deps<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.ceed.linux<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.ceed.win<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.codi<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.codi.deps<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.ostro<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.ostro.deps<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.toolchain<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.toolchain.deps<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.zephyr<br>
=C2=A0delete mode 100644 dockerfiles/Dockerfile.zephyr.deps<br>
=C2=A0delete mode 100755 globals.c<br>
=C2=A0delete mode 100755 globals.h<br>
=C2=A0delete mode 100644 helpers/runbitbake.py<br>
=C2=A0delete mode 100644 helpers/startOstroScript.sh<br>
=C2=A0delete mode 100644 installers/ostro-installer.sh<br>
=C2=A0delete mode 100755 installers/zephyr-installer.sh<br>
=C2=A0delete mode 100755 scripts/bitbake.ostro<br>
=C2=A0delete mode 100755 scripts/build_ceed<br>
=C2=A0delete mode 100755 scripts/build_containers<br>
=C2=A0delete mode 100755 scripts/build_containers.ostro<br>
=C2=A0delete mode 100644 scripts/gdb.zephyr<br>
=C2=A0delete mode 100755 scripts/make.zephyr<br>
=C2=A0delete mode 100755 scripts/run_containers<br>
=C2=A0delete mode 100755 scripts/stop_containers<br>
=C2=A0delete mode 100644 tests.py<br>
=C2=A0delete mode 100644 tests/functional/test_ceed_basic.py<br>
=C2=A0delete mode 100644 tests/functional/test_ceed_commands.py<br>
=C2=A0delete mode 100644 tests/functional/test_zephyr_build.py<br>
=C2=A0delete mode 100644 tests/functional/utils/__init__.py<br>
=C2=A0delete mode 100644 tests/functional/utils/ceedutil.py<br>
=C2=A0delete mode 100644 tests/unit/test_basic.py<br>
=C2=A0delete mode 100644 tests/unit/test_runbitbake.py<br>
=C2=A0delete mode 100755 turff/Makefile<br>
=C2=A0delete mode 100755 turff/turff.c<br>
=C2=A0delete mode 100755 turff/turff_api.c<br>
=C2=A0delete mode 100755 turff/turff_api.h<br>
=C2=A0delete mode 100755 turff/turff_launcher<br>
=C2=A0delete mode 100755 utils.c<br>
=C2=A0delete mode 100755 utils.h<br>
<br>
diff --git a/.dockerignore b/.dockerignore<br>
deleted file mode 100644<br>
index 191381e..0000000<br>
--- a/.dockerignore<br>
+++ /dev/null<br>
@@ -1 +0,0 @@<br>
-.git<br>
\ No newline at end of file<br>
diff --git a/.gitignore b/.gitignore<br>
deleted file mode 100644<br>
index bf35249..0000000<br>
--- a/.gitignore<br>
+++ /dev/null<br>
@@ -1,9 +0,0 @@<br>
-*~<br>
-*.o<br>
-ceed/ceed<br>
-codi/codi<br>
-turff/turff<br>
-outdir<br>
-*.pyc<br>
-*#<br>
-.#*<br>
diff --git a/.travis.yml b/.travis.yml<br>
deleted file mode 100644<br>
index 72bda2e..0000000<br>
--- a/.travis.yml<br>
+++ /dev/null<br>
@@ -1,44 +0,0 @@<br>
-language: python<br>
-python:<br>
-=C2=A0 - &quot;2.7&quot;<br>
-<br>
-<br>
-sudo: required<br>
-services:<br>
-=C2=A0 - docker<br>
-<br>
-services:<br>
-=C2=A0 =C2=A0 - docker<br>
-<br>
-env:<br>
-=C2=A0 =C2=A0 global:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 - DOCKER_VERSION=3D1.10.1-0~trusty<br>
-<br>
-<br>
-compiler:<br>
-=C2=A0 - gcc<br>
-=C2=A0 - clang<br>
-<br>
-before_install:<br>
-=C2=A0 # list docker-engine versions<br>
-=C2=A0 - apt-cache madison docker-engine<br>
-<br>
-=C2=A0 # upgrade docker-engine to specific version<br>
-=C2=A0 - sudo apt-get -o Dpkg::Options::=3D&quot;--force-confnew&quot; ins=
tall -y docker-engine=3D${DOCKER_VERSION}<br>
-<br>
-<br>
-script:<br>
-=C2=A0 - ./scripts/build_ceed<br>
-=C2=A0 - docker version<br>
-=C2=A0 - ./scripts/build_containers<br>
-=C2=A0 - docker images | grep codi | grep -q test<br>
-=C2=A0 - docker images | grep toolchain | grep -q test<br>
-=C2=A0 - docker images | grep zephyr | grep -q test<br>
-=C2=A0 - ./scripts/run_containers<br>
-=C2=A0 - python tests.py<br>
-<br>
-notifications:<br>
-=C2=A0 email:<br>
-=C2=A0 =C2=A0 recipients:<br>
-=C2=A0 =C2=A0 on_success: change<br>
-=C2=A0 =C2=A0 on_failure: always<br>
diff --git a/LICENSE b/LICENSE<br>
deleted file mode 100644<br>
index d159169..0000000<br>
--- a/LICENSE<br>
+++ /dev/null<br>
@@ -1,339 +0,0 @@<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GNU =
GENERAL PUBLIC LICENSE<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Version 2, June 1991<br>
-<br>
- Copyright (C) 1989, 1991 Free Software Foundation, Inc.,<br>
- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA<br>
- Everyone is permitted to copy and distribute verbatim copies<br>
- of this license document, but changing it is not allowed.<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Preamble<br>
-<br>
-=C2=A0 The licenses for most software are designed to take away your<br>
-freedom to share and change it.=C2=A0 By contrast, the GNU General Public<=
br>
-License is intended to guarantee your freedom to share and change free<br>
-software--to make sure the software is free for all its users.=C2=A0 This<=
br>
-General Public License applies to most of the Free Software<br>
-Foundation&#39;s software and to any other program whose authors commit to=
<br>
-using it.=C2=A0 (Some other Free Software Foundation software is covered b=
y<br>
-the GNU Lesser General Public License instead.)=C2=A0 You can apply it to<=
br>
-your programs, too.<br>
-<br>
-=C2=A0 When we speak of free software, we are referring to freedom, not<br=
>
-price.=C2=A0 Our General Public Licenses are designed to make sure that yo=
u<br>
-have the freedom to distribute copies of free software (and charge for<br>
-this service if you wish), that you receive source code or can get it<br>
-if you want it, that you can change the software or use pieces of it<br>
-in new free programs; and that you know you can do these things.<br>
-<br>
-=C2=A0 To protect your rights, we need to make restrictions that forbid<br=
>
-anyone to deny you these rights or to ask you to surrender the rights.<br>
-These restrictions translate to certain responsibilities for you if you<br=
>
-distribute copies of the software, or if you modify it.<br>
-<br>
-=C2=A0 For example, if you distribute copies of such a program, whether<br=
>
-gratis or for a fee, you must give the recipients all the rights that<br>
-you have.=C2=A0 You must make sure that they, too, receive or can get the<=
br>
-source code.=C2=A0 And you must show them these terms so they know their<b=
r>
-rights.<br>
-<br>
-=C2=A0 We protect your rights with two steps: (1) copyright the software, =
and<br>
-(2) offer you this license which gives you legal permission to copy,<br>
-distribute and/or modify the software.<br>
-<br>
-=C2=A0 Also, for each author&#39;s protection and ours, we want to make ce=
rtain<br>
-that everyone understands that there is no warranty for this free<br>
-software.=C2=A0 If the software is modified by someone else and passed on,=
 we<br>
-want its recipients to know that what they have is not the original, so<br=
>
-that any problems introduced by others will not reflect on the original<br=
>
-authors&#39; reputations.<br>
-<br>
-=C2=A0 Finally, any free program is threatened constantly by software<br>
-patents.=C2=A0 We wish to avoid the danger that redistributors of a free<b=
r>
-program will individually obtain patent licenses, in effect making the<br>
-program proprietary.=C2=A0 To prevent this, we have made it clear that any=
<br>
-patent must be licensed for everyone&#39;s free use or not licensed at all=
.<br>
-<br>
-=C2=A0 The precise terms and conditions for copying, distribution and<br>
-modification follow.<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GNU =
GENERAL PUBLIC LICENSE<br>
-=C2=A0 =C2=A0TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATI=
ON<br>
-<br>
-=C2=A0 0. This License applies to any program or other work which contains=
<br>
-a notice placed by the copyright holder saying it may be distributed<br>
-under the terms of this General Public License.=C2=A0 The &quot;Program&qu=
ot;, below,<br>
-refers to any such program or work, and a &quot;work based on the Program&=
quot;<br>
-means either the Program or any derivative work under copyright law:<br>
-that is to say, a work containing the Program or a portion of it,<br>
-either verbatim or with modifications and/or translated into another<br>
-language.=C2=A0 (Hereinafter, translation is included without limitation i=
n<br>
-the term &quot;modification&quot;.)=C2=A0 Each licensee is addressed as &q=
uot;you&quot;.<br>
-<br>
-Activities other than copying, distribution and modification are not<br>
-covered by this License; they are outside its scope.=C2=A0 The act of<br>
-running the Program is not restricted, and the output from the Program<br>
-is covered only if its contents constitute a work based on the<br>
-Program (independent of having been made by running the Program).<br>
-Whether that is true depends on what the Program does.<br>
-<br>
-=C2=A0 1. You may copy and distribute verbatim copies of the Program&#39;s=
<br>
-source code as you receive it, in any medium, provided that you<br>
-conspicuously and appropriately publish on each copy an appropriate<br>
-copyright notice and disclaimer of warranty; keep intact all the<br>
-notices that refer to this License and to the absence of any warranty;<br>
-and give any other recipients of the Program a copy of this License<br>
-along with the Program.<br>
-<br>
-You may charge a fee for the physical act of transferring a copy, and<br>
-you may at your option offer warranty protection in exchange for a fee.<br=
>
-<br>
-=C2=A0 2. You may modify your copy or copies of the Program or any portion=
<br>
-of it, thus forming a work based on the Program, and copy and<br>
-distribute such modifications or work under the terms of Section 1<br>
-above, provided that you also meet all of these conditions:<br>
-<br>
-=C2=A0 =C2=A0 a) You must cause the modified files to carry prominent noti=
ces<br>
-=C2=A0 =C2=A0 stating that you changed the files and the date of any chang=
e.<br>
-<br>
-=C2=A0 =C2=A0 b) You must cause any work that you distribute or publish, t=
hat in<br>
-=C2=A0 =C2=A0 whole or in part contains or is derived from the Program or =
any<br>
-=C2=A0 =C2=A0 part thereof, to be licensed as a whole at no charge to all =
third<br>
-=C2=A0 =C2=A0 parties under the terms of this License.<br>
-<br>
-=C2=A0 =C2=A0 c) If the modified program normally reads commands interacti=
vely<br>
-=C2=A0 =C2=A0 when run, you must cause it, when started running for such<b=
r>
-=C2=A0 =C2=A0 interactive use in the most ordinary way, to print or displa=
y an<br>
-=C2=A0 =C2=A0 announcement including an appropriate copyright notice and a=
<br>
-=C2=A0 =C2=A0 notice that there is no warranty (or else, saying that you p=
rovide<br>
-=C2=A0 =C2=A0 a warranty) and that users may redistribute the program unde=
r<br>
-=C2=A0 =C2=A0 these conditions, and telling the user how to view a copy of=
 this<br>
-=C2=A0 =C2=A0 License.=C2=A0 (Exception: if the Program itself is interact=
ive but<br>
-=C2=A0 =C2=A0 does not normally print such an announcement, your work base=
d on<br>
-=C2=A0 =C2=A0 the Program is not required to print an announcement.)<br>
-<br>
-These requirements apply to the modified work as a whole.=C2=A0 If<br>
-identifiable sections of that work are not derived from the Program,<br>
-and can be reasonably considered independent and separate works in<br>
-themselves, then this License, and its terms, do not apply to those<br>
-sections when you distribute them as separate works.=C2=A0 But when you<br=
>
-distribute the same sections as part of a whole which is a work based<br>
-on the Program, the distribution of the whole must be on the terms of<br>
-this License, whose permissions for other licensees extend to the<br>
-entire whole, and thus to each and every part regardless of who wrote it.<=
br>
-<br>
-Thus, it is not the intent of this section to claim rights or contest<br>
-your rights to work written entirely by you; rather, the intent is to<br>
-exercise the right to control the distribution of derivative or<br>
-collective works based on the Program.<br>
-<br>
-In addition, mere aggregation of another work not based on the Program<br>
-with the Program (or with a work based on the Program) on a volume of<br>
-a storage or distribution medium does not bring the other work under<br>
-the scope of this License.<br>
-<br>
-=C2=A0 3. You may copy and distribute the Program (or a work based on it,<=
br>
-under Section 2) in object code or executable form under the terms of<br>
-Sections 1 and 2 above provided that you also do one of the following:<br>
-<br>
-=C2=A0 =C2=A0 a) Accompany it with the complete corresponding machine-read=
able<br>
-=C2=A0 =C2=A0 source code, which must be distributed under the terms of Se=
ctions<br>
-=C2=A0 =C2=A0 1 and 2 above on a medium customarily used for software inte=
rchange; or,<br>
-<br>
-=C2=A0 =C2=A0 b) Accompany it with a written offer, valid for at least thr=
ee<br>
-=C2=A0 =C2=A0 years, to give any third party, for a charge no more than yo=
ur<br>
-=C2=A0 =C2=A0 cost of physically performing source distribution, a complet=
e<br>
-=C2=A0 =C2=A0 machine-readable copy of the corresponding source code, to b=
e<br>
-=C2=A0 =C2=A0 distributed under the terms of Sections 1 and 2 above on a m=
edium<br>
-=C2=A0 =C2=A0 customarily used for software interchange; or,<br>
-<br>
-=C2=A0 =C2=A0 c) Accompany it with the information you received as to the =
offer<br>
-=C2=A0 =C2=A0 to distribute corresponding source code.=C2=A0 (This alterna=
tive is<br>
-=C2=A0 =C2=A0 allowed only for noncommercial distribution and only if you<=
br>
-=C2=A0 =C2=A0 received the program in object code or executable form with =
such<br>
-=C2=A0 =C2=A0 an offer, in accord with Subsection b above.)<br>
-<br>
-The source code for a work means the preferred form of the work for<br>
-making modifications to it.=C2=A0 For an executable work, complete source<=
br>
-code means all the source code for all modules it contains, plus any<br>
-associated interface definition files, plus the scripts used to<br>
-control compilation and installation of the executable.=C2=A0 However, as =
a<br>
-special exception, the source code distributed need not include<br>
-anything that is normally distributed (in either source or binary<br>
-form) with the major components (compiler, kernel, and so on) of the<br>
-operating system on which the executable runs, unless that component<br>
-itself accompanies the executable.<br>
-<br>
-If distribution of executable or object code is made by offering<br>
-access to copy from a designated place, then offering equivalent<br>
-access to copy the source code from the same place counts as<br>
-distribution of the source code, even though third parties are not<br>
-compelled to copy the source along with the object code.<br>
-<br>
-=C2=A0 4. You may not copy, modify, sublicense, or distribute the Program<=
br>
-except as expressly provided under this License.=C2=A0 Any attempt<br>
-otherwise to copy, modify, sublicense or distribute the Program is<br>
-void, and will automatically terminate your rights under this License.<br>
-However, parties who have received copies, or rights, from you under<br>
-this License will not have their licenses terminated so long as such<br>
-parties remain in full compliance.<br>
-<br>
-=C2=A0 5. You are not required to accept this License, since you have not<=
br>
-signed it.=C2=A0 However, nothing else grants you permission to modify or<=
br>
-distribute the Program or its derivative works.=C2=A0 These actions are<br=
>
-prohibited by law if you do not accept this License.=C2=A0 Therefore, by<b=
r>
-modifying or distributing the Program (or any work based on the<br>
-Program), you indicate your acceptance of this License to do so, and<br>
-all its terms and conditions for copying, distributing or modifying<br>
-the Program or works based on it.<br>
-<br>
-=C2=A0 6. Each time you redistribute the Program (or any work based on the=
<br>
-Program), the recipient automatically receives a license from the<br>
-original licensor to copy, distribute or modify the Program subject to<br>
-these terms and conditions.=C2=A0 You may not impose any further<br>
-restrictions on the recipients&#39; exercise of the rights granted herein.=
<br>
-You are not responsible for enforcing compliance by third parties to<br>
-this License.<br>
-<br>
-=C2=A0 7. If, as a consequence of a court judgment or allegation of patent=
<br>
-infringement or for any other reason (not limited to patent issues),<br>
-conditions are imposed on you (whether by court order, agreement or<br>
-otherwise) that contradict the conditions of this License, they do not<br>
-excuse you from the conditions of this License.=C2=A0 If you cannot<br>
-distribute so as to satisfy simultaneously your obligations under this<br>
-License and any other pertinent obligations, then as a consequence you<br>
-may not distribute the Program at all.=C2=A0 For example, if a patent<br>
-license would not permit royalty-free redistribution of the Program by<br>
-all those who receive copies directly or indirectly through you, then<br>
-the only way you could satisfy both it and this License would be to<br>
-refrain entirely from distribution of the Program.<br>
-<br>
-If any portion of this section is held invalid or unenforceable under<br>
-any particular circumstance, the balance of the section is intended to<br>
-apply and the section as a whole is intended to apply in other<br>
-circumstances.<br>
-<br>
-It is not the purpose of this section to induce you to infringe any<br>
-patents or other property right claims or to contest validity of any<br>
-such claims; this section has the sole purpose of protecting the<br>
-integrity of the free software distribution system, which is<br>
-implemented by public license practices.=C2=A0 Many people have made<br>
-generous contributions to the wide range of software distributed<br>
-through that system in reliance on consistent application of that<br>
-system; it is up to the author/donor to decide if he or she is willing<br>
-to distribute software through any other system and a licensee cannot<br>
-impose that choice.<br>
-<br>
-This section is intended to make thoroughly clear what is believed to<br>
-be a consequence of the rest of this License.<br>
-<br>
-=C2=A0 8. If the distribution and/or use of the Program is restricted in<b=
r>
-certain countries either by patents or by copyrighted interfaces, the<br>
-original copyright holder who places the Program under this License<br>
-may add an explicit geographical distribution limitation excluding<br>
-those countries, so that distribution is permitted only in or among<br>
-countries not thus excluded.=C2=A0 In such case, this License incorporates=
<br>
-the limitation as if written in the body of this License.<br>
-<br>
-=C2=A0 9. The Free Software Foundation may publish revised and/or new vers=
ions<br>
-of the General Public License from time to time.=C2=A0 Such new versions w=
ill<br>
-be similar in spirit to the present version, but may differ in detail to<b=
r>
-address new problems or concerns.<br>
-<br>
-Each version is given a distinguishing version number.=C2=A0 If the Progra=
m<br>
-specifies a version number of this License which applies to it and &quot;a=
ny<br>
-later version&quot;, you have the option of following the terms and condit=
ions<br>
-either of that version or of any later version published by the Free<br>
-Software Foundation.=C2=A0 If the Program does not specify a version numbe=
r of<br>
-this License, you may choose any version ever published by the Free Softwa=
re<br>
-Foundation.<br>
-<br>
-=C2=A0 10. If you wish to incorporate parts of the Program into other free=
<br>
-programs whose distribution conditions are different, write to the author<=
br>
-to ask for permission.=C2=A0 For software which is copyrighted by the Free=
<br>
-Software Foundation, write to the Free Software Foundation; we sometimes<b=
r>
-make exceptions for this.=C2=A0 Our decision will be guided by the two goa=
ls<br>
-of preserving the free status of all derivatives of our free software and<=
br>
-of promoting the sharing and reuse of software generally.<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 NO WARRANTY<br>
-<br>
-=C2=A0 11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WAR=
RANTY<br>
-FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.=C2=A0 EXCEPT W=
HEN<br>
-OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES<br>
-PROVIDE THE PROGRAM &quot;AS IS&quot; WITHOUT WARRANTY OF ANY KIND, EITHER=
 EXPRESSED<br>
-OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF<br>
-MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 THE ENTIRE RIS=
K AS<br>
-TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.=C2=A0 SHOULD TH=
E<br>
-PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,<b=
r>
-REPAIR OR CORRECTION.<br>
-<br>
-=C2=A0 12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN W=
RITING<br>
-WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR<br>
-REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,=
<br>
-INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISIN=
G<br>
-OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED<=
br>
-TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY<b=
r>
-YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER=
<br>
-PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE<br>
-POSSIBILITY OF SUCH DAMAGES.<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0END OF TERMS AND CONDITIONS<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 How to Apply These Terms to Your=
 New Programs<br>
-<br>
-=C2=A0 If you develop a new program, and you want it to be of the greatest=
<br>
-possible use to the public, the best way to achieve this is to make it<br>
-free software which everyone can redistribute and change under these terms=
.<br>
-<br>
-=C2=A0 To do so, attach the following notices to the program.=C2=A0 It is =
safest<br>
-to attach them to the start of each source file to most effectively<br>
-convey the exclusion of warranty; and each file should have at least<br>
-the &quot;copyright&quot; line and a pointer to where the full notice is f=
ound.<br>
-<br>
-=C2=A0 =C2=A0 &lt;one line to give the program&#39;s name and a brief idea=
 of what it does.&gt;<br>
-=C2=A0 =C2=A0 Copyright (C) &lt;year&gt;=C2=A0 &lt;name of author&gt;<br>
-<br>
-=C2=A0 =C2=A0 This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0 it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0 the Free Software Foundation; either version 2 of the Licens=
e, or<br>
-=C2=A0 =C2=A0 (at your option) any later version.<br>
-<br>
-=C2=A0 =C2=A0 This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0 but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0 GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0 You should have received a copy of the GNU General Public Li=
cense along<br>
-=C2=A0 =C2=A0 with this program; if not, write to the Free Software Founda=
tion, Inc.,<br>
-=C2=A0 =C2=A0 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.<=
br>
-<br>
-Also add information on how to contact you by electronic and paper mail.<b=
r>
-<br>
-If the program is interactive, make it output a short notice like this<br>
-when it starts in an interactive mode:<br>
-<br>
-=C2=A0 =C2=A0 Gnomovision version 69, Copyright (C) year name of author<br=
>
-=C2=A0 =C2=A0 Gnomovision comes with ABSOLUTELY NO WARRANTY; for details t=
ype `show w&#39;.<br>
-=C2=A0 =C2=A0 This is free software, and you are welcome to redistribute i=
t<br>
-=C2=A0 =C2=A0 under certain conditions; type `show c&#39; for details.<br>
-<br>
-The hypothetical commands `show w&#39; and `show c&#39; should show the ap=
propriate<br>
-parts of the General Public License.=C2=A0 Of course, the commands you use=
 may<br>
-be called something other than `show w&#39; and `show c&#39;; they could e=
ven be<br>
-mouse-clicks or menu items--whatever suits your program.<br>
-<br>
-You should also get your employer (if you work as a programmer) or your<br=
>
-school, if any, to sign a &quot;copyright disclaimer&quot; for the program=
, if<br>
-necessary.=C2=A0 Here is a sample; alter the names:<br>
-<br>
-=C2=A0 Yoyodyne, Inc., hereby disclaims all copyright interest in the prog=
ram<br>
-=C2=A0 `Gnomovision&#39; (which makes passes at compilers) written by Jame=
s Hacker.<br>
-<br>
-=C2=A0 &lt;signature of Ty Coon&gt;, 1 April 1989<br>
-=C2=A0 Ty Coon, President of Vice<br>
-<br>
-This General Public License does not permit incorporating your program int=
o<br>
-proprietary programs.=C2=A0 If your program is a subroutine library, you m=
ay<br>
-consider it more useful to permit linking proprietary applications with th=
e<br>
-library.=C2=A0 If this is what you want to do, use the GNU Lesser General<=
br>
-Public License instead of this License.<br>
diff --git a/Makefile b/Makefile<br>
deleted file mode 100755<br>
index 97dabae..0000000<br>
--- a/Makefile<br>
+++ /dev/null<br>
@@ -1,15 +0,0 @@<br>
-SUBDIRS =3D turff ceed codi<br>
-<br>
-.PHONY: subdirs $(SUBDIRS)<br>
-<br>
-all: TARGET =3D all<br>
-<br>
-clean: TARGET =3D clean<br>
-<br>
-debug: TARGET =3D debug<br>
-<br>
-all clean debug: subdirs $(SUBDIRS)<br>
-<br>
-$(SUBDIRS):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(MAKE) -C $@ $(TARGET)<br>
-<br>
diff --git a/README.md b/README.md<br>
old mode 100755<br>
new mode 100644<br>
index 555f7e2..ddd9cba<br>
--- a/README.md<br>
+++ b/README.md<br>
@@ -1,153 +1,9 @@<br>
-## What is CROPS (CROssPlatformS)?<br>
+This repository is depreciated and is no longer maintained. <br>
<br>
-CROPS is an open source, cross-platform development framework that leverag=
es Docker containers to provide an easily managed, extensible environment w=
hich allows developers to build binaries for a variety of architectures of =
Windows, Linux and Mac OS X hosts.<br>
+Current CROPS development occurs at:<br>
<br>
-### CROPS components<br>
-* **CEED** - runs on the development host and exposes an API to Integrated=
<br>
-Development Environments (IDEs) or CLI callers<br>
-* **TURFF** - runs in a container and services requests from CODI<br>
-* **CODI** - COntainer DIspatcher runs in a container and keeps track of a=
ll available TURFF instances<br>
-in its internal table. CODI also redirects CEED requests to the correspond=
ing TURFF instance<br>
+<a href=3D"https://github.com/crops" rel=3D"noreferrer" target=3D"_blank">=
https://github.com/crops</a><br>
<br>
-## USING CROPS FOR [ZEPHYR OS](<a href=3D"https://www.zephyrproject.org/" =
rel=3D"noreferrer" target=3D"_blank">https://www.zephyrproject.org/</a>) DE=
VELOPMENT<br>
+The last functional commit for this repo was:<br>
<br>
-Please refer to the [GitHub Wiki](<a href=3D"https://github.com/todorez/cr=
ops/wiki" rel=3D"noreferrer" target=3D"_blank">https://github.com/todorez/c=
rops/wiki</a>)<br>
-<br>
-## USING CROPS WITH YOUR OWN TOOLCHAIN<br>
-<br>
- 1. **Install [Docker (Linux)](<a href=3D"https://docs.docker.com/linux/st=
ep_one/" rel=3D"noreferrer" target=3D"_blank">https://docs.docker.com/linux=
/step_one/</a>) or [Docker Toolbox (Windows/Mac)](<a href=3D"https://www.do=
cker.com/products/docker-toolbox)**" rel=3D"noreferrer" target=3D"_blank">h=
ttps://www.docker.com/products/docker-toolbox)**</a><br>
-<br>
- 2. **Build CODI dependencies container**<br>
-<br>
-=C2=A0 Execute the following command from within the dockerfiles directory=
:<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 docker build -t crops/codi:deps -f Dockerfile.codi.deps .<br>
-=C2=A0 ```<br>
- 3. **Build CODI container**<br>
-<br>
-=C2=A0 Execute the following command from within the dockerfiles directory=
:<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 docker build -t crops/codi:version -f Dockerfile.codi ../<br>
-=C2=A0 ```<br>
-<br>
- 4. **Build toolchain dependencies container**<br>
-<br>
-=C2=A0 Execute the following command from within the dockerfiles directory=
:<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .=
<br>
-=C2=A0 ```<br>
-<br>
- 5. **Open the Dockerfile.toolchain file and provide the URL to your toolc=
hain**<br>
-<br>
-=C2=A0 Example:<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 ENV TOOLCHAIN_NAME <a href=3D"http://poky-glibc-x86_64-core-image-s=
ato-i586-toolchain-2.0.sh" rel=3D"noreferrer" target=3D"_blank">poky-glibc-=
x86_64-core-image-sato-i586-toolchain-2.0.sh</a><br>
-=C2=A0 ENV TOOLCHAIN_PATH <a href=3D"http://downloads.yoctoproject.org/rel=
eases/yocto/yocto-2.0/toolchain/x86_64/" rel=3D"noreferrer" target=3D"_blan=
k">http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86=
_64/</a><br>
-=C2=A0 ```<br>
-<br>
- 6. **Build your toolchain container**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 docker build -t crops/toolchain:my_toolchain -f Dockerfile.toolchai=
n ../<br>
-=C2=A0 ```<br>
-<br>
- 7. **Start CODI container**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 docker run -d --name codi-test -v /var/run/docker.sock:/var/run/doc=
ker.sock --net=3Dhost crops/codi:version<br>
-=C2=A0 ```<br>
-<br>
- 8. **Start toolchain container**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 mkdir -p $HOME/crops-workspace &amp;&amp; docker run -d --name crop=
s-toolchain-my_toolchain -v $HOME/crops-workspace/:/crops/=C2=A0 =C2=A0--en=
v TURFFID=3Dcrops-toolchain-my_toolchain --net=3Dhost crops/toolchain:my_to=
olchain<br>
-=C2=A0 ```<br>
-<br>
- 9. **Run the Zephyr installer and answer &quot;Yes&quot; when prompted to=
 install CEED. Answer &quot;No&quot; to all other questions**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 curl -kOs <a href=3D"https://raw.githubusercontent.com/todorez/crop=
s/master/installers/zephyr-installer.sh" rel=3D"noreferrer" target=3D"_blan=
k">https://raw.githubusercontent.com/todorez/crops/master/installers/zephyr=
-installer.sh</a> &amp;&amp; source=C2=A0 =C2=A0./zephyr-installer.sh<br>
-=C2=A0 ```<br>
-<br>
- 10. **Place your project in the shared workspace**<br>
-<br>
-=C2=A0 Example:<br>
-=C2=A0 ```<br>
-=C2=A0 $HOME/crops-workspace/my_project/<br>
-=C2=A0 ```<br>
-<br>
- 11. **Build your project**<br>
-<br>
-=C2=A0 Example:<br>
-=C2=A0 ```<br>
-=C2=A0 $HOME/.crops/ceed/ceed -d crops-toolchain-my_toolchain -g &quot;mak=
e -C /crops/my_project/&quot;<br>
-=C2=A0 ```<br>
- 12. **Share your toolchain with other developers by pushing it to Docker =
Hub**<br>
-<br>
-=C2=A0 Example:<br>
-=C2=A0 ```<br>
-=C2=A0 $docker push crops/toolchain:my_toolchain&quot;<br>
-=C2=A0 ```<br>
-<br>
-## CONTRIBUTING TO CROPS<br>
-<br>
-#### COMPILE CEED, TURFF AND CODI ON LINUX<br>
-<br>
-**Required Prerequisites**<br>
-<br>
-* **libsqlite3-dev** - &quot;SQLite is a C library that implements an SQL =
database engine.&quot;<br>
-* **libcurl4-openssl-dev (7.40 or later)** - &quot;libcurl is an easy-to-u=
se client-side URL transfer library, supporting DICT, FILE, FTP, FTPS, GOPH=
ER, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SF=
TP, SMTP, SMTPS, TELNET and TFTP.&quot;<br>
-* **libjansson-dev** - &quot;Jansson is a C library for encoding, decoding=
 and manipulating JSON data.&quot;<br>
-<br>
-<br>
-1. **Install Prerequisites On Debian / Ubuntu**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 apt-get install libsqlite3-dev libcurl4-openssl-dev libjansson-dev<=
br>
-=C2=A0 ```<br>
-<br>
-2. **Compile**<br>
-<br>
-=C2=A0 * GCC<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 CC=3Dgcc make all<br>
-=C2=A0 ```<br>
-<br>
-=C2=A0 * CLANG<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 CC=3Dclang make all<br>
-=C2=A0 ```<br>
-<br>
-3. **Debug Compile**<br>
-<br>
-=C2=A0 * GCC<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 CC=3Dgcc make debug<br>
-=C2=A0 ```<br>
-<br>
-=C2=A0 * CLANG<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 CC=3Dclang make debug<br>
-=C2=A0 ```<br>
-<br>
-#### RUNNING A CLANG STATIC ANALYSYS<br>
-<br>
-1. **Run the static analyzer**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 scan-build -V make<br>
-=C2=A0 ```<br>
-<br>
-2. **Point your browser at the following URL to view the static analysis r=
esults**<br>
-<br>
-=C2=A0 ```<br>
-=C2=A0 <a href=3D"http://127.0.0.1:8181" rel=3D"noreferrer" target=3D"_bla=
nk">http://127.0.0.1:8181</a><br>
-=C2=A0 ```<br>
+<a href=3D"https://git.yoctoproject.org/crops/commit/?id=3Db719d15fe0e17e5=
ac05c440680ec3706bcd2cab5" rel=3D"noreferrer" target=3D"_blank">https://git=
.yoctoproject.org/crops/commit/?id=3Db719d15fe0e17e5ac05c440680ec3706bcd2ca=
b5</a><br>
diff --git a/TODO b/TODO<br>
deleted file mode 100755<br>
index 6014c97..0000000<br>
--- a/TODO<br>
+++ /dev/null<br>
@@ -1,10 +0,0 @@<br>
-* rewrite eclipse plugin for all platforms Windows, Linux, Mac<br>
-* create Docker image installers for Windows/Linux/Mac<br>
-* create container launchers<br>
-* document installation/configuration/usage<br>
-* document APIs<br>
-* implement bitbake operations<br>
-* fix all bugs.. :)<br>
-<br>
-<br>
-<br>
diff --git a/ceed/Makefile b/ceed/Makefile<br>
deleted file mode 100755<br>
index 58205ed..0000000<br>
--- a/ceed/Makefile<br>
+++ /dev/null<br>
@@ -1,42 +0,0 @@<br>
-CFLAGS =3D-g -I. -I../<br>
-LDFLAGS =3D-lm<br>
-<br>
-ifeq ($(CC),x86_64-w64-mingw32-gcc)<br>
-LDFLAGS +=3D -lws2_32<br>
-endif<br>
-<br>
-DEPS =3D ceed_api.h ../globals.h ../utils.h<br>
-OBJ =3D ceed.o ceed_api.o ../utils.o ../globals.o<br>
-<br>
-all: ceed<br>
-<br>
-debug: DFLAGS =3D -DDBG<br>
-debug: clean ceed<br>
-<br>
-%.o: %.c $(DEPS)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -c -o $@ $&lt; $(CFLAGS) $(DFLAGS)<br>
-<br>
-ceed: $(OBJ)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)<br>
-<br>
-.PHONY: clean<br>
-clean:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f $(OBJ) ceed *.exe<br>
-<br>
-windows:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker ps -a -q --filter &quot;name=3Dceed-wind=
ows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker images -q --filter &quot;label=3Dname=3D=
ceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd ../dockerfiles; docker build -t crops/ceed:w=
indows -f Dockerfile.ceed.win ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker run --name=3Dceed-windows crops/ceed:win=
dows; mkdir -p ../outdir<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker cp ceed-windows:/usr/local/crops/ceed/ce=
ed ../outdir/ceed.exe<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker ps -a -q --filter &quot;name=3Dceed-wind=
ows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker images -q --filter &quot;label=3Dname=3D=
ceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<b=
r>
-<br>
-linux:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker ps -a -q --filter &quot;name=3Dceed-linu=
x&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker images -q --filter &quot;label=3Dname=3D=
ceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd ../dockerfiles; docker build -t crops/ceed:l=
inux -f Dockerfile.ceed.linux ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker run --name=3Dceed-linux crops/ceed:linux=
; mkdir -p ../outdir<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker cp ceed-linux:/usr/local/crops/ceed/ceed=
 ../outdir/ceed<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker ps -a -q --filter &quot;name=3Dceed-linu=
x&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0docker images -q --filter &quot;label=3Dname=3D=
ceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<br>
diff --git a/ceed/ceed.c b/ceed/ceed.c<br>
deleted file mode 100755<br>
index f0fa0cc..0000000<br>
--- a/ceed/ceed.c<br>
+++ /dev/null<br>
@@ -1,70 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &lt;stdlib.h&gt;<br>
-#include &quot;globals.h&quot;<br>
-#include &quot;ceed_api.h&quot;<br>
-#include &quot;utils.h&quot;<br>
-<br>
-extern char *ceed_ops[];<br>
-<br>
-int main(int argc, char *argv[]) {<br>
-=C2=A0 int i, done, sock_fd;<br>
-=C2=A0 char *turff_nodes[KEY_ARR_SZ];<br>
-=C2=A0 struct addrinfo *addr_p;<br>
-=C2=A0 void *ceed_out;<br>
-<br>
-=C2=A0 parse_ceed_params(argc, argv);<br>
-<br>
-=C2=A0 addr_p =3D connect_to_socket(ceed_ops[KEY(&#39;i&#39;)], ceed_ops[K=
EY(&#39;s&#39;)], &amp;sock_fd);<br>
-<br>
-=C2=A0 if(addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not connect to CODI\n&quot;);<br>
-=C2=A0 } else {<br>
-=C2=A0 =C2=A0 INFO(&quot;Connected to CODI on %s port : %s\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;i&#39;)], ceed_ops[KEY(&#39;s&#39;)=
]);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 INFO(&quot;Host Architecture : %s\n&quot;, ceed_ops[KEY(&#39;a&#39;=
)]);<br>
-=C2=A0 send_args(sock_fd, ceed_ops);<br>
-<br>
-=C2=A0 if(ceed_ops[KEY(&#39;l&#39;)] =3D=3D NULL) { /* this was a service =
request */<br>
-=C2=A0 =C2=A0 INFO(&quot; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=C2=A0 CEED OUTPUT=
 BEGIN=C2=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n&quot;);<br>
-=C2=A0 =C2=A0 ceed_out =3D calloc(1, BUFSIZ);<br>
-=C2=A0 =C2=A0 done =3D 0;<br>
-<br>
-=C2=A0 =C2=A0 while(!done) {<br>
-=C2=A0 =C2=A0 =C2=A0 memset(ceed_out, 0, BUFSIZ);<br>
-=C2=A0 =C2=A0 =C2=A0 receive_data(sock_fd, ceed_out, BUFSIZ, 1, &amp;done)=
;<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 free(ceed_out);<br>
-<br>
-=C2=A0 =C2=A0 INFO(&quot; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=C2=A0 CEED OUTPUT=
 END=C2=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n&quot;);<br>
-=C2=A0 } else { /* this was nodes request, receive turff nodes */<br>
-=C2=A0 =C2=A0 do {<br>
-=C2=A0 =C2=A0 =C2=A0 for(i =3D 0; i &lt;=C2=A0 KEY_ARR_SZ; i++)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 turff_nodes[i] =3D NULL;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 receive_args(sock_fd, turff_nodes);<br>
-=C2=A0 =C2=A0 =C2=A0 if(turff_nodes[KEY(&#39;e&#39;)] =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;TURFF Node ID: %s \n&quot;, turff_n=
odes[KEY(&#39;d&#39;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 }while (turff_nodes[KEY(&#39;e&#39;)] =3D=3D NULL);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 close(sock_fd);<br>
-=C2=A0 return 0;<br>
-}<br>
diff --git a/ceed/ceed_api.c b/ceed/ceed_api.c<br>
deleted file mode 100755<br>
index 973c050..0000000<br>
--- a/ceed/ceed_api.c<br>
+++ /dev/null<br>
@@ -1,157 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;unistd.h&gt;<br>
-#include &lt;ctype.h&gt;<br>
-<br>
-char *ceed_ops[KEY_ARR_SZ];<br>
-<br>
-void print_ceed_usage(int argc, char *argv[]) {<br>
-<br>
-=C2=A0 printf(&quot;Usage: %s -p prj -i 192.168.99.100 -s 10000 -b\n&quot;=
, argv[0]);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-i CODI ip address [default: 127.0=
.0.1 (linux) or 192.168.99.100 (win/mac)]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-s CODI listening port [default: 1=
0000]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-l list available build containers=
\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-d container_id. Send command to c=
ontainer_id\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-p prj_name [required]\n&quot;);<b=
r>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-b build project [NOTE: -b and -c =
are mutually exclusive]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-c clean project [NOTE: -c and -b =
are mutually exclusive]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-t autotools project [NOTE: -t and=
 -k and -m are mutually exclusive]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-k cmake project [NOTE: -k and -t =
and -m are mutually exclusive]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-m target make makefile_target [NO=
TE: -m and -t and -k are mutually exclusive]\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-g gen_cmd execute generic command=
\n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-r args generic command arguments\=
n&quot;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-e env environment variables\n&quo=
t;);<br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-h print this help menu\n&quot;);<=
br>
-=C2=A0 printf(&quot;=C2=A0 =C2=A0 =C2=A0-v show ceed version\n&quot;);<br>
-=C2=A0 exit(EXIT_FAILURE);<br>
-}<br>
-<br>
-void init_ceed_params(){<br>
-#if defined(_WIN32) || defined(__CYGWIN__)<br>
-=C2=A0 ceed_ops[KEY(&#39;a&#39;)] =3D &quot;win&quot;;<br>
-=C2=A0 ceed_ops[KEY(&#39;i&#39;)] =3D CODI_IP_VIRT;<br>
-#elif __APPLE__<br>
-=C2=A0 ceed_ops[KEY(&#39;a&#39;)] =3D &quot;mac&quot;;<br>
-=C2=A0 ceed_ops[KEY(&#39;i&#39;)] =3D CODI_IP_VIRT;<br>
-#elif __linux<br>
-=C2=A0 ceed_ops[KEY(&#39;a&#39;)] =3D &quot;linux&quot;;<br>
-=C2=A0 ceed_ops[KEY(&#39;i&#39;)] =3D CODI_IP_NATIVE;<br>
-#endif<br>
-=C2=A0 ceed_ops[KEY(&#39;p&#39;)] =3D NULL;<br>
-=C2=A0 ceed_ops[KEY(&#39;s&#39;)] =3D CODI_PORT;<br>
-=C2=A0 ceed_ops[KEY(&#39;v&#39;)] =3D VERSION;<br>
-=C2=A0 ceed_ops[KEY(&#39;r&#39;)] =3D &quot; &quot;;<br>
-=C2=A0 ceed_ops[KEY(&#39;z&#39;)] =3D CEED_NAME;<br>
-}<br>
-<br>
-void parse_ceed_params(int argc, char *argv[]) {<br>
-=C2=A0 int c, b_flg =3D 0, c_flg =3D 0, t_flg =3D 0, m_flg =3D 0, k_flg =
=3D 0;<br>
-<br>
-=C2=A0 init_ceed_params();<br>
-<br>
-=C2=A0 while((c =3D getopt(argc, argv, &quot;hvltm:kbcp:i:s:g:r:d:&quot;))=
 !=3D -1) {<br>
-=C2=A0 =C2=A0 switch (c) {<br>
-=C2=A0 =C2=A0 case &#39;h&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;v&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;ceed version : %s\n&quot;, VERSION);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;p&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;p&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;i&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;i&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;s&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;s&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;g&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;g&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;r&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;r&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;d&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;d&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;l&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ceed_ops[KEY(&#39;l&#39;)] , &qu=
ot;set&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;b&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(c_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 b_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ceed_ops[KEY(&#39;b&#39;)] , &qu=
ot;set&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;c&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(b_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 c_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ceed_ops[KEY(&#39;c&#39;)] , &qu=
ot;set&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;t&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(m_flg || k_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 t_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ceed_ops[KEY(&#39;t&#39;)] , &qu=
ot;set&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;m&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(t_flg || k_flg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 m_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ceed_ops[KEY(&#39;m&#39;)] =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;k&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(t_flg || m_flg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 k_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ceed_ops[KEY(&#39;k&#39;)] , &qu=
ot;set&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;?&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if (optopt =3D=3D &#39;p&#39; || optopt =3D=3D &#39;i=
&#39; || optopt =3D=3D &#39;s&#39; || optopt =3D=3D &#39;m&#39;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Option -%c requires an argument.\n&q=
uot;, optopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else if (isprint(optopt))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Unknown option `-%c&#39;.\n&quot;, o=
ptopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Unknown option character `\\x%x&#39;=
.\n&quot;, optopt);<br>
-=C2=A0 =C2=A0 default:<br>
-=C2=A0 =C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 if ((ceed_ops[KEY(&#39;l&#39;)] =3D=3D NULL &amp;&amp; ceed_ops[KEY=
(&#39;p&#39;)] =3D=3D NULL &amp;&amp; ceed_ops[KEY(&#39;g&#39;)] =3D=3D NUL=
L )<br>
-=C2=A0 =C2=A0 || (ceed_ops[KEY(&#39;i&#39;)] =3D=3D NULL || ceed_ops[KEY(&=
#39;s&#39;)] =3D=3D NULL)) {<br>
-=C2=A0 =C2=A0 print_ceed_usage(argc, argv);<br>
-=C2=A0 }<br>
-}<br>
-<br>
diff --git a/ceed/ceed_api.h b/ceed/ceed_api.h<br>
deleted file mode 100755<br>
index a66e6e6..0000000<br>
--- a/ceed/ceed_api.h<br>
+++ /dev/null<br>
@@ -1,22 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef CEED_API_H<br>
-#define CEED_API_H<br>
-<br>
-void parse_ceed_params(int argc, char *argv[]);<br>
-<br>
-#endif<br>
diff --git a/codi/Makefile b/codi/Makefile<br>
deleted file mode 100644<br>
index 0b8135c..0000000<br>
--- a/codi/Makefile<br>
+++ /dev/null<br>
@@ -1,19 +0,0 @@<br>
-CFLAGS=3D-g -I. -I../<br>
-LDFLAGS=3D-lsqlite3 -lm -ljansson -lcurl -lpthread<br>
-DEPS =3D ../globals.h ../utils.h codi_api.h codi_db.h codi_launcher.h codi=
_list.h<br>
-OBJ =3D codi.o codi_db.o codi_list.o codi_launcher.o codi_api.o ../utils.o=
 ../globals.o<br>
-<br>
-all: codi<br>
-<br>
-debug: DFLAGS =3D -DDBG<br>
-debug: clean codi<br>
-<br>
-%.o: %.c $(DEPS)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -c -o $@ $&lt; $(CFLAGS) $(DFLAGS)<br>
-<br>
-codi: $(OBJ)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)<br>
-<br>
-.PHONY: clean<br>
-clean:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf $(OBJ) codi<br>
diff --git a/codi/codi.c b/codi/codi.c<br>
deleted file mode 100644<br>
index e24a03c..0000000<br>
--- a/codi/codi.c<br>
+++ /dev/null<br>
@@ -1,126 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;signal.h&gt;<br>
-#include &lt;netdb.h&gt;<br>
-#include &lt;arpa/inet.h&gt;<br>
-#include &lt;pthread.h&gt;<br>
-#include &quot;utils.h&quot;<br>
-#include &quot;codi_db.h&quot;<br>
-#include &quot;codi_api.h&quot;<br>
-#include &quot;codi_list.h&quot;<br>
-#include &quot;codi_launcher.h&quot;<br>
-<br>
-extern char *codi_ops[];<br>
-int codi_sock_fd;<br>
-/*<br>
-pthread_mutex_t lock;<br>
-*/<br>
-<br>
-/*TODO - close sockets on CTRL+C. Get rid of this when running as a daemon=
 */<br>
-void close_sockets(int dummy) {<br>
-=C2=A0 close(codi_sock_fd);<br>
-=C2=A0 INFO(&quot;\nClosed CODI socket. Exiting!\n&quot;) ;<br>
-=C2=A0 exit(0);<br>
-}<br>
-<br>
-int main(int argc, char *argv[]) {<br>
-=C2=A0 struct addrinfo *addr_p;<br>
-=C2=A0 int i, cli_sock_fd;<br>
-=C2=A0 const char *codi_port =3D (const char*) CODI_PORT;<br>
-=C2=A0 turff_node *req_node =3D NULL;<br>
-=C2=A0 char *cli_params[KEY_ARR_SZ], *ip, *docker_url, *tmp_str;<br>
-=C2=A0 socklen_t cli_len;<br>
-=C2=A0 struct sockaddr cli_addr;<br>
-=C2=A0 struct sockaddr_in *cli_ip;<br>
-<br>
-=C2=A0 parse_codi_params(argc, argv);<br>
-<br>
-=C2=A0 for (i =3D 0; i &lt;=C2=A0 KEY_ARR_SZ; i++)<br>
-=C2=A0 =C2=A0 cli_params[i] =3D NULL;<br>
-<br>
-=C2=A0 addr_p =3D bind_to_socket(NULL, codi_port, &amp;codi_sock_fd);<br>
-<br>
-=C2=A0 if (addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not bind CODI to socket\n&quot;);<br>
-=C2=A0 } else {<br>
-=C2=A0 =C2=A0 INFO(&quot;CODI listening on port: %s\n&quot;, codi_port);<b=
r>
-<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 listen(codi_sock_fd,1);<br>
-=C2=A0 cli_len =3D sizeof(cli_addr);<br>
-<br>
-=C2=A0 signal(SIGINT, close_sockets);<br>
-<br>
-=C2=A0 while(1) {<br>
-=C2=A0 =C2=A0 cli_sock_fd =3D accept(codi_sock_fd, &amp;cli_addr, &amp;cli=
_len);<br>
-<br>
-=C2=A0 =C2=A0 if (cli_sock_fd &lt; 0)<br>
-=C2=A0 =C2=A0 =C2=A0 ERR(&quot;ERROR on accept&quot;);<br>
-<br>
-=C2=A0 =C2=A0 free_params(cli_params);<br>
-=C2=A0 =C2=A0 receive_args(cli_sock_fd, cli_params);<br>
-<br>
-=C2=A0 =C2=A0 /*turff registration*/<br>
-=C2=A0 =C2=A0 if (!strcmp(cli_params[KEY(&#39;z&#39;)], TURFF_NAME)) {<br>
-=C2=A0 =C2=A0 =C2=A0 cli_ip =3D (struct sockaddr_in*) &amp;cli_addr;<br>
-=C2=A0 =C2=A0 =C2=A0 asprintf(&amp;ip, &quot;%s&quot;, inet_ntoa(cli_ip-&g=
t;sin_addr));<br>
-=C2=A0 =C2=A0 =C2=A0 cli_params[KEY(&#39;c&#39;)] =3D ip;<br>
-=C2=A0 =C2=A0 =C2=A0 db_insert_node(cli_params[KEY(&#39;n&#39;)], cli_para=
ms[KEY(&#39;c&#39;)],=C2=A0 cli_params[KEY(&#39;s&#39;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;\nToolchain registration received: %s : %s=
 : %s \n&quot;, cli_params[KEY(&#39;n&#39;)],<br>
-=C2=A0 =C2=A0 =C2=A0 cli_params[KEY(&#39;c&#39;)], cli_params[KEY(&#39;s&#=
39;)]) ;<br>
-=C2=A0 =C2=A0 } else if (!strcmp(cli_params[KEY(&#39;z&#39;)], CEED_NAME) =
&amp;&amp; (cli_params[KEY(&#39;l&#39;)] !=3D NULL )) {<br>
-=C2=A0 =C2=A0 =C2=A0 /* ceed request for available toolchains */<br>
-=C2=A0 =C2=A0 =C2=A0 return_turff_nodes(cli_sock_fd);<br>
-=C2=A0 =C2=A0 } else if (!strcmp(cli_params[KEY(&#39;z&#39;)], CEED_NAME) =
&amp;&amp; (cli_params[KEY(&#39;d&#39;)] !=3D NULL )) {<br>
-=C2=A0 =C2=A0 =C2=A0 /* must be a command from ceed*/<br>
-=C2=A0 =C2=A0 =C2=A0 req_node =3D find_turff_node(cli_params[KEY(&#39;d&#3=
9;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 if (req_node !=3D NULL) {<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* check if docker engine is listening on a un=
ix socket or tcp*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (codi_ops[KEY(&#39;i&#39;)] =3D=3D NULL || =
codi_ops[KEY(&#39;p&#39;)] =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;docker_url, &quot;%s&quot=
;, codi_ops[KEY(&#39;u&#39;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;docker_url, &quot;%s:%s&q=
uot;, codi_ops[KEY(&#39;i&#39;)], codi_ops[KEY(&#39;p&#39;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_container_running(docker_url, cli_param=
s[KEY(&#39;d&#39;)])) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 process_ceed_cmd(req_node, cli_sock_fd,=
 cli_params);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;tmp_str, &quot;Container =
%s is not running\n%s&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cli_params[KEY(&#39;d&#39;)], TU=
RFF_EOM);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 send_data(cli_sock_fd, tmp_str, strlen(=
tmp_str));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(tmp_str);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(docker_url);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;tmp_str, &quot;Container %s not =
found in database\n%s&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cli_params[KEY(&#39;d&#39;)], TURFF_EOM=
);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 send_data(cli_sock_fd, tmp_str, strlen(tmp_str=
));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(tmp_str);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 asprintf(&amp;tmp_str, &quot;Invalid command sent to =
CODI\n%s&quot;, TURFF_EOM);<br>
-=C2=A0 =C2=A0 =C2=A0 send_data(cli_sock_fd, tmp_str, strlen(tmp_str));<br>
-=C2=A0 =C2=A0 =C2=A0 free(tmp_str);<br>
-=C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 free_params(cli_params);<br>
-=C2=A0 }<br>
-}<br>
diff --git a/codi/codi_api.c b/codi/codi_api.c<br>
deleted file mode 100644<br>
index b9eff56..0000000<br>
--- a/codi/codi_api.c<br>
+++ /dev/null<br>
@@ -1,134 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;ctype.h&gt;<br>
-#include &quot;utils.h&quot;<br>
-#include &quot;codi_api.h&quot;<br>
-#include &quot;codi_list.h&quot;<br>
-#include &quot;codi_launcher.h&quot;<br>
-<br>
-char *codi_ops[KEY_ARR_SZ];<br>
-<br>
-void print_codi_usage(int argc, char *argv[])<br>
-{<br>
-=C2=A0 printf(&quot;Usage: %s \n&quot;, argv[0]);<br>
-=C2=A0 printf(&quot; -s port number on which CODI is listening [default: 1=
0000]\n&quot;);<br>
-=C2=A0 printf(&quot; -u unix socket path of Docker engine [default: /var/l=
ib/docker.sock]\n&quot;);<br>
-=C2=A0 printf(&quot; -i ip address of Docker engine [default: 127.0.0.1]\n=
&quot;);<br>
-=C2=A0 printf(&quot; -p port number of Docker engine [default: 2376]\n&quo=
t;);<br>
-=C2=A0 printf(&quot; -h print this help menu\n&quot;);<br>
-=C2=A0 printf(&quot; -v show CODI version\n&quot;);<br>
-}<br>
-<br>
-void init_codi_params()<br>
-{<br>
-=C2=A0 int i;<br>
-<br>
-=C2=A0 for (i =3D 0; i &lt;=C2=A0 KEY_ARR_SZ; i++)<br>
-=C2=A0 =C2=A0 codi_ops[i] =3D NULL;<br>
-<br>
-=C2=A0 codi_ops[KEY(&#39;s&#39;)] =3D CODI_PORT;<br>
-=C2=A0 codi_ops[KEY(&#39;v&#39;)] =3D VERSION;<br>
-=C2=A0 codi_ops[KEY(&#39;i&#39;)] =3D NULL;<br>
-=C2=A0 codi_ops[KEY(&#39;p&#39;)] =3D NULL;<br>
-=C2=A0 codi_ops[KEY(&#39;u&#39;)] =3D DOCKER_UNIX_SOCKET;<br>
-=C2=A0 codi_ops[KEY(&#39;z&#39;)] =3D CODI_NAME;<br>
-}<br>
-<br>
-void parse_codi_params(int argc, char *argv[])<br>
-{<br>
-=C2=A0 int c, i_flg =3D 0, p_flg =3D 0, u_flg =3D 0;<br>
-<br>
-=C2=A0 init_codi_params() ;<br>
-<br>
-=C2=A0 while ((c =3D getopt(argc, argv, &quot;hvs:i:p:u:&quot;)) !=3D -1) =
{<br>
-=C2=A0 =C2=A0 switch (c) {<br>
-=C2=A0 =C2=A0 case &#39;h&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 print_codi_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;v&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;CODI version : %s\n&quot;, VERSION);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;s&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 codi_ops[KEY(&#39;s&#39;)]=C2=A0 =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;i&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(u_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_codi_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 i_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 codi_ops[KEY(&#39;i&#39;)]=C2=A0 =3D optarg;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;p&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(u_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_codi_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 p_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 codi_ops[KEY(&#39;p&#39;)]=C2=A0 =3D optarg;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;u&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if(i_flg || p_flg) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print_codi_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 u_flg++;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 codi_ops[KEY(&#39;u&#39;)]=C2=A0 =3D optarg;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;?&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if (optopt =3D=3D &#39;s&#39; || optopt =3D=3D &#39;i=
&#39; || optopt =3D=3D &#39;p&#39; || optopt =3D=3D &#39;u&#39;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Option -%c requires an argument.\n&=
quot;, optopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else if (isprint (optopt))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Unknown option `-%c&#39;.\n&quot;, =
optopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Unknown option character `\\x%x&#39=
;.\n&quot;, optopt);<br>
-=C2=A0 =C2=A0 default:<br>
-=C2=A0 =C2=A0 =C2=A0 print_codi_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_FAILURE);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-}<br>
-<br>
-int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char *ceed_para=
ms[])<br>
-{<br>
-=C2=A0 struct addrinfo *addr_p;<br>
-=C2=A0 int turff_sock_fd;<br>
-<br>
-=C2=A0 addr_p =3D connect_to_socket(t_node-&gt;ip, t_node-&gt;port, &amp;t=
urff_sock_fd);<br>
-<br>
-=C2=A0 if (addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 INFO(&quot;Could not connect to node id: %s ip: %s port: %s\=
n&quot;,<br>
-=C2=A0 =C2=A0 t_node-&gt;id, t_node-&gt;ip, t_node-&gt;port);<br>
-=C2=A0 =C2=A0 return 1;<br>
-=C2=A0 } else {<br>
-=C2=A0 =C2=A0 INFO(&quot;Connected to node id: %s ip: %s port: %s\n&quot;,=
<br>
-=C2=A0 =C2=A0 =C2=A0 t_node-&gt;id, t_node-&gt;ip, t_node-&gt;port);<br>
-<br>
-=C2=A0 =C2=A0 /* change the source signature of the param array */<br>
-=C2=A0 =C2=A0 asprintf(&amp;(ceed_params[KEY(&#39;z&#39;)]), &quot;%s&quot=
;, CODI_NAME);<br>
-<br>
-=C2=A0 =C2=A0 /* forward parameters to turff */<br>
-=C2=A0 =C2=A0 send_args(turff_sock_fd, ceed_params);<br>
-=C2=A0 =C2=A0 redirect_sockets(turff_sock_fd, ceed_sock_fd);<br>
-=C2=A0 }<br>
-=C2=A0 close(turff_sock_fd);<br>
-=C2=A0 return 0;<br>
-}<br>
diff --git a/codi/codi_api.h b/codi/codi_api.h<br>
deleted file mode 100644<br>
index c5813dd..0000000<br>
--- a/codi/codi_api.h<br>
+++ /dev/null<br>
@@ -1,25 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef CODI_API_H<br>
-#define CODI_API_H<br>
-<br>
-#include &quot;codi_list.h&quot;<br>
-<br>
-int process_ceed_cmd(turff_node *t_node, int ceed_sock_fd, char *ceed_para=
ms[]);<br>
-void parse_codi_params(int argc, char *argv[]);<br>
-<br>
-#endif<br>
diff --git a/codi/codi_db.c b/codi/codi_db.c<br>
deleted file mode 100644<br>
index 91ab5bd..0000000<br>
--- a/codi/codi_db.c<br>
+++ /dev/null<br>
@@ -1,137 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;sqlite3.h&gt;<br>
-#include &quot;codi_db.h&quot;<br>
-#include &quot;codi_list.h&quot;<br>
-<br>
-static sqlite3 *codi_db;<br>
-<br>
-/* connect */<br>
-int db_connect(void)<br>
-{<br>
-=C2=A0 int result;<br>
-=C2=A0 result =3D sqlite3_open(CODI_DB, &amp;codi_db);<br>
-<br>
-=C2=A0 if (result !=3D SQLITE_OK ) {<br>
-=C2=A0 =C2=A0 INFO(&quot;SQL error: %s\n&quot;, sqlite3_errmsg(codi_db));<=
br>
-=C2=A0 =C2=A0 sqlite3_close(codi_db);<br>
-=C2=A0 =C2=A0 return -1;<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 return init_db();<br>
-}<br>
-<br>
-int init_db(void)<br>
-{<br>
-=C2=A0 int result;<br>
-=C2=A0 char *err =3D 0;<br>
-=C2=A0 char *qry =3D &quot;CREATE TABLE IF NOT EXISTS nodes(id TEXT UNIQUE=
 NOT NULL \<br>
-=C2=A0 =C2=A0 CHECK(id &lt;&gt; &#39;&#39;), ip TEXT NOT NULL CHECK(ip &lt=
;&gt; &#39;&#39;), port TEXT NOT NULL \<br>
-=C2=A0 =C2=A0 CHECK(port &lt;&gt; &#39;&#39;), date TEXT NOT NULL CHECK(da=
te &lt;&gt; &#39;&#39;));&quot;;<br>
-<br>
-=C2=A0 result =3D sqlite3_exec(codi_db, qry, 0, 0, &amp;err);<br>
-<br>
-=C2=A0 if (result !=3D SQLITE_OK) {<br>
-=C2=A0 =C2=A0 INFO(&quot;SQL error: %s\n&quot;, err);<br>
-=C2=A0 =C2=A0 sqlite3_free(err);<br>
-=C2=A0 =C2=A0 sqlite3_close(codi_db);<br>
-=C2=A0 =C2=A0 return 1;<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* insert node */<br>
-int db_insert_node(char *id, char *ip, char *port)<br>
-{<br>
-=C2=A0 int result;<br>
-=C2=A0 char *qry, *err =3D 0;<br>
-=C2=A0 turff_node *node;<br>
-<br>
-=C2=A0 node =3D find_turff_node(id);<br>
-<br>
-=C2=A0 /* if a node with this id exists just update it*/<br>
-=C2=A0 if (node !=3D NULL) {<br>
-=C2=A0 =C2=A0 asprintf(&amp;qry, &quot;UPDATE nodes SET ip =3D &#39;%s&#39=
;, port =3D &#39;%s&#39;, date =3D \<br>
-=C2=A0 =C2=A0 datetime(CURRENT_TIMESTAMP, &#39;localtime&#39;) WHERE ID =
=3D &#39;%s&#39;;&quot;, ip, port, id);<br>
-=C2=A0 }<br>
-=C2=A0 else {<br>
-=C2=A0 =C2=A0 asprintf(&amp;qry, &quot;INSERT INTO nodes (id, ip, port, da=
te) VALUES (&#39;%s&#39;,&#39;%s&#39;, \<br>
-=C2=A0 =C2=A0 &#39;%s&#39;, datetime(CURRENT_TIMESTAMP, &#39;localtime&#39=
;));&quot;, id, ip, port);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 result =3D exec_db_query(qry, 0, 0, &amp;err);<br>
-=C2=A0 free(qry);<br>
-<br>
-=C2=A0 return result;<br>
-}<br>
-<br>
-int exec_db_query(const char *sql, int (*callback)(void*, int, char**, cha=
r**), \<br>
-=C2=A0 void *callback_arg, char **errmsg)<br>
-{<br>
-=C2=A0 int result;<br>
-<br>
-=C2=A0 if (db_connect() !=3D 0)<br>
-=C2=A0 =C2=A0 return -1;<br>
-<br>
-=C2=A0 result =3D sqlite3_exec(codi_db, sql, callback, callback_arg, errms=
g);<br>
-<br>
-=C2=A0 if (result !=3D SQLITE_OK) {<br>
-=C2=A0 =C2=A0 INFO(&quot;SQL insert error: %s\n&quot;, *errmsg);<br>
-=C2=A0 =C2=A0 sqlite3_free(*errmsg);<br>
-=C2=A0 =C2=A0 sqlite3_close(codi_db);<br>
-=C2=A0 =C2=A0 return result;<br>
-=C2=A0 }<br>
-=C2=A0 sqlite3_close(codi_db);<br>
-=C2=A0 return SQLITE_OK;<br>
-}<br>
-<br>
-static int find_node_callback(void *dummy, int argc, char **argv, char **c=
ol_name)<br>
-{<br>
-=C2=A0 int i;<br>
-<br>
-=C2=A0 /* no records were found */<br>
-=C2=A0 if(argc =3D=3D 0)<br>
-=C2=A0 =C2=A0 return 1;<br>
-<br>
-=C2=A0 add_turff_node(argv[0], argv[1], argv[2], argv[3]);<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* find node(s) - gets all nodes if id is NULL */<br>
-int get_db_nodes(char *id)<br>
-{<br>
-=C2=A0 int result;<br>
-=C2=A0 char *qry, *err =3D 0;<br>
-<br>
-=C2=A0 /* remove all nodes from the list before reading them from the db*/=
<br>
-=C2=A0 free_turff_nodes_list();<br>
-<br>
-=C2=A0 /* get all nodes */<br>
-=C2=A0 if (id =3D=3D NULL)<br>
-=C2=A0 =C2=A0 asprintf(&amp;qry, &quot;SELECT * FROM nodes;&quot;);<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 asprintf(&amp;qry, &quot;SELECT * from nodes WHERE id=3D&#39=
;%s&#39;;&quot;, id);<br>
-<br>
-=C2=A0 result =3D exec_db_query(qry, find_node_callback, 0, &amp;err);<br>
-=C2=A0 free(qry);<br>
-<br>
-=C2=A0 return result;<br>
-}<br>
diff --git a/codi/codi_db.h b/codi/codi_db.h<br>
deleted file mode 100644<br>
index c6fd586..0000000<br>
--- a/codi/codi_db.h<br>
+++ /dev/null<br>
@@ -1,28 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef CODI_DB_H<br>
-#define CODI_DB_H<br>
-<br>
-#define CODI_DB=C2=A0 =C2=A0 =C2=A0 &quot;codi.db&quot;<br>
-<br>
-int init_db(void);<br>
-int db_insert_node(char *id, char *ip, char *port);<br>
-int exec_db_query(const char *sql, int (*callback)(void*, int, char**, cha=
r**), \<br>
-=C2=A0 void *callback_arg, char **errmsg);<br>
-int get_db_nodes(char *id);<br>
-<br>
-#endif<br>
diff --git a/codi/codi_launcher.c b/codi/codi_launcher.c<br>
deleted file mode 100644<br>
index 1087761..0000000<br>
--- a/codi/codi_launcher.c<br>
+++ /dev/null<br>
@@ -1,146 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;jansson.h&gt;<br>
-#include &lt;string.h&gt;<br>
-#include &lt;curl/curl.h&gt;<br>
-#include &lt;ctype.h&gt;<br>
-#include &quot;codi_launcher.h&quot;<br>
-<br>
-/* execute the request and return an array of json objects */<br>
-json_t *request_json(char *request_method, char *url, char *api, char *dat=
a)<br>
-{<br>
-=C2=A0 char *in =3D 0, *j_start;<br>
-=C2=A0 json_t *root;<br>
-=C2=A0 json_error_t err;<br>
-<br>
-=C2=A0 in =3D curl_request(request_method, url, api, data);<br>
-<br>
-=C2=A0 /* skip the header and move to the json array */<br>
-=C2=A0 j_start =3D strchr(in, &#39;[&#39;);<br>
-=C2=A0 root =3D json_loads(j_start, 0, &amp;err);<br>
-=C2=A0 free(in);<br>
-=C2=A0 return root;<br>
-}<br>
-<br>
-/* execute the request and return the raw server reply */<br>
-char *curl_request(char *http_method, char *url, char *api,=C2=A0 char *da=
ta)<br>
-{<br>
-<br>
-=C2=A0 CURL *curl =3D NULL;<br>
-=C2=A0 CURLcode res;<br>
-=C2=A0 struct curl_slist *api_hdr =3D NULL;<br>
-=C2=A0 curl_mem_chunk_t srv_reply ;<br>
-=C2=A0 char *request_str ;<br>
-<br>
-=C2=A0 srv_reply.mem =3D calloc(1, 1) ;<br>
-<br>
-=C2=A0 if (srv_reply.mem =3D=3D NULL)<br>
-=C2=A0 =C2=A0 ERR(&quot;ERROR: Unable to allocate memory&quot;);<br>
-<br>
-=C2=A0 srv_reply.size =3D 0 ;<br>
-=C2=A0 curl =3D curl_easy_init();<br>
-<br>
-=C2=A0 if (curl) {<br>
-=C2=A0 =C2=A0 /* check if url is a unix socket*/<br>
-=C2=A0 =C2=A0 if (url[0] =3D=3D &#39;/&#39;) {<br>
-=C2=A0 =C2=A0 =C2=A0 /* map the unix socket as a connection endpoint */<br=
>
-=C2=A0 =C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_UNIX_SOCKET_PATH, url)=
;<br>
-=C2=A0 =C2=A0 =C2=A0 asprintf(&amp;request_str, &quot;%s%s&quot;, &quot;ht=
tp:&quot;, api);<br>
-=C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 asprintf(&amp;request_str, &quot;%s%s%s&quot;,=
=C2=A0 &quot;http://&quot;, url, api);<br>
-=C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_URL, request_str);<br>
-<br>
-=C2=A0 =C2=A0 if (!strcmp(http_method, POST_REQUEST)) {<br>
-=C2=A0 =C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_POST, 1L);<br>
-=C2=A0 =C2=A0 =C2=A0 api_hdr =3D curl_slist_append(api_hdr, &quot;Content-=
Type: application/json&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 api_hdr =3D curl_slist_append(api_hdr, &quot;Expect:&=
quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_HTTPHEADER, api_hdr);<=
br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 if (data =3D=3D NULL)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_POSTFIELDS, &qu=
ot;&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_POSTFIELDS, dat=
a);<br>
-=C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_HEADER, 1);<br>
-=C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *) &amp;srv_=
reply);<br>
-=C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, process_srv_re=
ply);<br>
-<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 curl_easy_setopt(curl, CURLOPT_VERBOSE, 1);<br>
-#endif<br>
-<br>
-=C2=A0 =C2=A0 res =3D curl_easy_perform(curl);<br>
-<br>
-=C2=A0 =C2=A0 if (res !=3D CURLE_OK)<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;curl_easy_perform() failed: %s\n&quot;, cu=
rl_easy_strerror(res));<br>
-<br>
-=C2=A0 =C2=A0 if (!strcmp(http_method, POST_REQUEST))<br>
-=C2=A0 =C2=A0 =C2=A0 curl_slist_free_all(api_hdr);<br>
-<br>
-=C2=A0 =C2=A0 free(request_str);<br>
-=C2=A0 =C2=A0 curl_easy_cleanup(curl);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 return srv_reply.mem;<br>
-}<br>
-<br>
-size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void *reply=
_p)<br>
-{<br>
-=C2=A0 size_t chunk_size =3D size * nmemb;<br>
-<br>
-=C2=A0 curl_mem_chunk_t *mem_chunk =3D (curl_mem_chunk_t *)reply_p;<br>
-<br>
-=C2=A0 /* append chunk_size memory block to the original memory block */<b=
r>
-=C2=A0 mem_chunk-&gt;mem =3D realloc(mem_chunk-&gt;mem, mem_chunk-&gt;size=
 + chunk_size + 1);<br>
-=C2=A0 if (mem_chunk-&gt;mem =3D=3D NULL)<br>
-=C2=A0 =C2=A0 ERR(&quot;not enough memory (realloc returned NULL)\n&quot;)=
;<br>
-<br>
-=C2=A0 INFO(&quot;%s&quot;, ptr);<br>
-<br>
-=C2=A0 /* copy the data into the newly allocated chunk */<br>
-=C2=A0 memcpy(&amp;(mem_chunk-&gt;mem[mem_chunk-&gt;size]), ptr, chunk_siz=
e);<br>
-=C2=A0 mem_chunk-&gt;size +=3D chunk_size;<br>
-=C2=A0 mem_chunk-&gt;mem[mem_chunk-&gt;size] =3D 0;<br>
-=C2=A0 return chunk_size;<br>
-}<br>
-<br>
-bool is_container_running(char *url, char *cont_name)<br>
-{<br>
-=C2=A0 char *api_str =3D NULL;<br>
-=C2=A0 json_t *result;<br>
-<br>
-=C2=A0 asprintf(&amp;api_str, RUNNING_NAMED_CONTAINER, cont_name);<br>
-=C2=A0 result =3D request_json(GET_REQUEST, url, api_str, NULL);<br>
-=C2=A0 free(api_str);<br>
-<br>
-=C2=A0 if (json_array_size(result)) {<br>
-=C2=A0 =C2=A0 json_decref(result);<br>
-=C2=A0 =C2=A0 return true;<br>
-=C2=A0 } else {<br>
-<br>
-#ifdef DBG<br>
-=C2=A0 INFO(&quot;Container : %s is not running\n&quot;, cont_name);<br>
-#endif<br>
-<br>
-=C2=A0 =C2=A0 json_decref(result);<br>
-=C2=A0 =C2=A0 return false;<br>
-=C2=A0 }<br>
-}<br>
diff --git a/codi/codi_launcher.h b/codi/codi_launcher.h<br>
deleted file mode 100644<br>
index 1b81e49..0000000<br>
--- a/codi/codi_launcher.h<br>
+++ /dev/null<br>
@@ -1,58 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef CODI_LAUNCHER_H<br>
-#define CODI_LAUNCHER_H<br>
-<br>
-#include &lt;jansson.h&gt;<br>
-#include &quot;globals.h&quot;<br>
-<br>
-<br>
-/* Docker Remote API requests */<br>
-#define GET_REQUEST=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
GET&quot;<br>
-#define POST_REQUEST=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;=
POST&quot;<br>
-#define DOCKER_UNIX_SOCKET=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;/var/run/docker=
.sock&quot;<br>
-#define DOCKER_ENG_IP=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;127.0=
.0.1&quot;<br>
-#define DOCKER_ENG_PORT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;2376&quot;<=
br>
-#define GET_IMAGES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&=
quot;/images/json&quot;<br>
-#define ALL_CONTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;/cont=
ainers/json?all=3Dtrue&quot;<br>
-#define START_CONTAINER=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;/container=
s/%s/start&quot;<br>
-#define CREATE_CONTAINER=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;/container=
s/create?name=3D%s&quot;<br>
-#define GET_IMAGE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &=
quot;/images/create?fromImage=3D%s&amp;tag=3D%s&quot;<br>
-<br>
-#define NAMED_CONTAINER=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;/container=
s/json?all=3Dtrue&amp;filters=3D&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;{%%22name%%22:[%%22%s%%2=
2]}&quot;<br>
-<br>
-#define RUNNING_NAMED_CONTAINER=C2=A0 &quot;/containers/json?all=3Dtrue&am=
p;filters=3D&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;{%%22name%%22:[%%22%s%%2=
2],%%22status%%22:[%%22running%%22]}&quot;<br>
-<br>
-/* Docker Engine Responses */<br>
-#define PULL_COMPLETE=C2=A0 =C2=A0 =C2=A0 &quot;Pull complete&quot;<br>
-#define IMAGE_UP_TO_DATE=C2=A0 =C2=A0&quot;Image is up to date&quot;<br>
-#define NO_ERROR_204=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;204 No Content&quot;<=
br>
-#define NOT_MODIFIED_304=C2=A0 =C2=A0&quot;304 Not Modified&quot;<br>
-#define CREATED_201=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;201 Created&quot;<br>
-#define OK_200=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;200 OK=
&quot;<br>
-<br>
-#define CONTAINER_PARAMS(...) #__VA_ARGS__<br>
-<br>
-char *curl_request(char *http_method, char *url, char *api,=C2=A0 char *da=
ta);<br>
-size_t process_srv_reply(void *ptr, size_t size, size_t nmemb, void *reply=
_p);<br>
-json_t *request_json(char *request_method, char *url, char *api, char *dat=
a);<br>
-bool is_container_running(char *url, char *cont_name);<br>
-bool start_container(char *url, char *cont_name);<br>
-<br>
-#endif<br>
diff --git a/codi/codi_list.c b/codi/codi_list.c<br>
deleted file mode 100644<br>
index 4a3f745..0000000<br>
--- a/codi/codi_list.c<br>
+++ /dev/null<br>
@@ -1,100 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;stdint.h&gt;<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;string.h&gt;<br>
-#include &quot;utils.h&quot;<br>
-#include &quot;codi_db.h&quot;<br>
-#include &quot;codi_list.h&quot;<br>
-<br>
-turff_node *head =3D NULL;<br>
-<br>
-turff_node *find_turff_node(char *id)<br>
-{<br>
-<br>
-=C2=A0 /* clear the list and read the nodes from the db*/<br>
-=C2=A0 get_db_nodes(id);<br>
-=C2=A0 turff_node *cur =3D head;<br>
-<br>
-=C2=A0 while (cur !=3D NULL) {<br>
-=C2=A0 =C2=A0 if(!strcmp(cur-&gt;id, id))<br>
-=C2=A0 =C2=A0 =C2=A0 return cur;<br>
-=C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 cur =3D cur-&gt;next;<br>
-=C2=A0 }<br>
-=C2=A0 return NULL;<br>
-}<br>
-<br>
-void free_turff_nodes_list()<br>
-{<br>
-=C2=A0 turff_node *tmp =3D NULL;<br>
-<br>
-=C2=A0 while (head !=3D NULL) {<br>
-=C2=A0 =C2=A0 free(head-&gt;id);<br>
-=C2=A0 =C2=A0 free(head-&gt;ip);<br>
-=C2=A0 =C2=A0 free(head-&gt;port);<br>
-=C2=A0 =C2=A0 free(head-&gt;date);<br>
-=C2=A0 =C2=A0 tmp =3D head ;<br>
-=C2=A0 =C2=A0 head =3D head-&gt;next;<br>
-=C2=A0 =C2=A0 free(tmp);<br>
-=C2=A0 }<br>
-}<br>
-<br>
-void add_turff_node(char *id, char *ip, char *port, char *date)<br>
-{<br>
-=C2=A0 int node_exists =3D 0;<br>
-=C2=A0 turff_node *node;<br>
-<br>
-=C2=A0 node =3D calloc(1, sizeof(turff_node));<br>
-=C2=A0 asprintf(&amp;(node-&gt;id), &quot;%s&quot;, id);<br>
-=C2=A0 asprintf(&amp;(node-&gt;ip), &quot;%s&quot;, ip);<br>
-=C2=A0 asprintf(&amp;(node-&gt;port), &quot;%s&quot;,=C2=A0 port);<br>
-=C2=A0 asprintf(&amp;(node-&gt;date), &quot;%s&quot;,=C2=A0 date);<br>
-=C2=A0 node-&gt;next =3D head;<br>
-=C2=A0 head =3D node;<br>
-}<br>
-<br>
-<br>
-/* send these to ceed*/<br>
-void return_turff_nodes(int sock_fd)<br>
-{<br>
-=C2=A0 int i;<br>
-=C2=A0 char *tmp_node[KEY_ARR_SZ];<br>
-<br>
-=C2=A0 /* clear the list and read the nodes from the db*/<br>
-=C2=A0 get_db_nodes(NULL);<br>
-=C2=A0 turff_node *cur =3D head;<br>
-<br>
-=C2=A0 for (i =3D 0; i &lt;=C2=A0 KEY_ARR_SZ; i++)<br>
-=C2=A0 =C2=A0 tmp_node[i] =3D NULL;<br>
-<br>
-=C2=A0 while (cur !=3D NULL) {<br>
-=C2=A0 =C2=A0 tmp_node[KEY(&#39;d&#39;)] =3D cur-&gt;id;<br>
-<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 DEBUG(&quot;Sent turff node id : %s ip: %s port %s\n&quot;, =
cur-&gt;id, cur-&gt;ip, cur-&gt;port);<br>
-#endif<br>
-<br>
-=C2=A0 =C2=A0 send_args(sock_fd, tmp_node);<br>
-=C2=A0 =C2=A0 cur =3D cur-&gt;next;<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 tmp_node[KEY(&#39;e&#39;)] =3D &quot;set&quot;;<br>
-=C2=A0 send_args(sock_fd, tmp_node);<br>
-}<br>
diff --git a/codi/codi_list.h b/codi/codi_list.h<br>
deleted file mode 100644<br>
index 4ce5301..0000000<br>
--- a/codi/codi_list.h<br>
+++ /dev/null<br>
@@ -1,33 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef CODI_LIST_H<br>
-#define CODI_LIST_H<br>
-<br>
-typedef struct list_node{<br>
-=C2=A0 char *id;<br>
-=C2=A0 char *ip;<br>
-=C2=A0 char *port;<br>
-=C2=A0 char *date;<br>
-=C2=A0 struct list_node *next;<br>
-} turff_node;<br>
-<br>
-turff_node *find_turff_node(char *id);<br>
-void add_turff_node(char *id, char *ip, char *port, char *date);<br>
-void return_turff_nodes();<br>
-void free_turff_nodes_list();<br>
-<br>
-#endif<br>
diff --git a/confs/ostro/ostro.conf b/confs/ostro/ostro.conf<br>
deleted file mode 100644<br>
index 796104b..0000000<br>
--- a/confs/ostro/ostro.conf<br>
+++ /dev/null<br>
@@ -1,16 +0,0 @@<br>
-# allows a standard development build. Read the ostro docs for production =
settings.<br>
-require conf/distro/include/ostro-os-development.inc<br>
-# default ostro mirror, used for speedup!!!<br>
-SSTATE_MIRRORS ?=3D &quot;file://.* <a href=3D"http://download.ostroprojec=
t.org/sstate/ostro-os/PATH" rel=3D"noreferrer" target=3D"_blank">http://dow=
nload.ostroproject.org/sstate/ostro-os/PATH</a>&quot;<br>
-# puts results on the shared host folder<br>
-# windows can&#39;t do this due to lack of ln -s support on shared volumes=
<br>
-#DEPLOY_DIR_IMAGE =3D &quot;/ostro/ostro-shared/images&quot;<br>
-# windows hangs on this. Currently unsure why.<br>
-#SSTATE_DIR =3D &quot;/ostro/ostro-shared/sstate&quot;<br>
-DL_DIR =3D &quot;/ostro/ostro-shared/downloads&quot;<br>
-# lets bitbake ignore the odd inode settings of the shared directory<br>
-BB_DISKMON_DIRS =3D &quot;\<br>
-=C2=A0 =C2=A0 STOPTASKS,${TMPDIR},1G,100K \<br>
-=C2=A0 =C2=A0 ABORT,${TMPDIR},100M,1K &quot;<br>
-# keep workdir small<br>
-INHERIT+=3D&quot;rm_work&quot;<br>
diff --git a/confs/ostro/ostro.layers b/confs/ostro/ostro.layers<br>
deleted file mode 100644<br>
index e69de29..0000000<br>
diff --git a/dockerfiles/Dockerfile.ceed.deps b/dockerfiles/Dockerfile.ceed=
.deps<br>
deleted file mode 100644<br>
index f806613..0000000<br>
--- a/dockerfiles/Dockerfile.ceed.deps<br>
+++ /dev/null<br>
@@ -1,16 +0,0 @@<br>
-# This file describes the standard way to build the dependencies required =
for<br>
-# cross compiling ceed with mingw<br>
-#<br>
-# Usage:<br>
-#<br>
-# docker build -t crops/ceed:deps -f Dockerfile.ceed.deps .<br>
-<br>
-FROM debian:jessie<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Install dependencies<br>
-RUN apt-get update &amp;&amp; apt-get install -y \<br>
-=C2=A0 mingw-w64 \<br>
-=C2=A0 gcc \<br>
-=C2=A0 make<br>
-<br>
diff --git a/dockerfiles/Dockerfile.ceed.linux b/dockerfiles/Dockerfile.cee=
d.linux<br>
deleted file mode 100644<br>
index 10fcf90..0000000<br>
--- a/dockerfiles/Dockerfile.ceed.linux<br>
+++ /dev/null<br>
@@ -1,19 +0,0 @@<br>
-# This file describes the standard way to cross compile ceed with mingw<br=
>
-#<br>
-# Example:<br>
-#<br>
-# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.linux ../<br>
-<br>
-FROM crops/ceed:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-LABEL name=3D&quot;ceed-linux&quot;<br>
-<br>
-# Build and install CEED<br>
-RUN mkdir -p /usr/local/crops/ceed/<br>
-COPY ceed /usr/local/crops/ceed/<br>
-COPY utils.[ch] /usr/local/crops/<br>
-COPY globals.[ch] /usr/local/crops/<br>
-<br>
-RUN cd /usr/local/crops/ceed &amp;&amp; \<br>
-=C2=A0 CC=3Dgcc make<br>
-<br>
diff --git a/dockerfiles/Dockerfile.ceed.win b/dockerfiles/Dockerfile.ceed.=
win<br>
deleted file mode 100644<br>
index 7674c69..0000000<br>
--- a/dockerfiles/Dockerfile.ceed.win<br>
+++ /dev/null<br>
@@ -1,19 +0,0 @@<br>
-# This file describes the standard way to cross compile ceed with mingw<br=
>
-#<br>
-# Example:<br>
-#<br>
-# docker build -t crops/ceed:0.1 -f Dockerfile.ceed.win ../<br>
-<br>
-FROM crops/ceed:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-LABEL name=3D&quot;ceed-windows&quot;<br>
-<br>
-# Build and install CEED<br>
-RUN mkdir -p /usr/local/crops/ceed/<br>
-COPY ceed /usr/local/crops/ceed/<br>
-COPY utils.[ch] /usr/local/crops/<br>
-COPY globals.[ch] /usr/local/crops/<br>
-<br>
-RUN cd /usr/local/crops/ceed &amp;&amp; \<br>
-=C2=A0 CC=3Dx86_64-w64-mingw32-gcc make<br>
-<br>
diff --git a/dockerfiles/Dockerfile.codi b/dockerfiles/Dockerfile.codi<br>
deleted file mode 100644<br>
index cf6ef30..0000000<br>
--- a/dockerfiles/Dockerfile.codi<br>
+++ /dev/null<br>
@@ -1,34 +0,0 @@<br>
-# This file describes the standard way to build a CROPS dispatcher image<b=
r>
-#<br>
-# Usage:<br>
-#<br>
-# # Build CODI image with the following command. Replace the &quot;version=
&quot; tag<br>
-# with the current codi version<br>
-#<br>
-# docker build -t crops/codi:version -f Dockerfile.codi ../<br>
-#<br>
-# Example: Build CODI version 0.1<br>
-#<br>
-# docker build -t crops/codi:0.1 -f Dockerfile.codi ../<br>
-<br>
-FROM crops/codi:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Build and install CODI<br>
-RUN mkdir -p /usr/local/crops/codi/<br>
-COPY codi /usr/local/crops/codi/<br>
-COPY utils.[ch] /usr/local/crops/<br>
-COPY globals.[ch] /usr/local/crops/<br>
-ARG build_type<br>
-<br>
-RUN=C2=A0 =C2=A0 cd /usr/local/crops/codi &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make $build_type &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p /bin/codi &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp /usr/local/crops/codi/codi /bin/codi/run &am=
p;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf /usr/local/crops<br>
-<br>
-# Monitor CODI and restart it on exit<br>
-ENTRYPOINT [&quot;supervise&quot;, &quot;/bin/codi&quot;]<br>
-<br>
-# Default CODI port<br>
-EXPOSE 10000<br>
diff --git a/dockerfiles/Dockerfile.codi.deps b/dockerfiles/Dockerfile.codi=
.deps<br>
deleted file mode 100644<br>
index dc563d0..0000000<br>
--- a/dockerfiles/Dockerfile.codi.deps<br>
+++ /dev/null<br>
@@ -1,31 +0,0 @@<br>
-# This file describes the standard way to build the dependencies for a CRO=
PS<br>
-# dispatcher image<br>
-#<br>
-# Usage:<br>
-#<br>
-# # Build CODI dependencies image with the following command:<br>
-#<br>
-# docker build -t crops/codi:deps -f Dockerfile.codi.deps .<br>
-#<br>
-<br>
-FROM debian:wheezy<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Install dependencies<br>
-RUN apt-get update -qq &amp;&amp; apt-get install -y -qq \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0libsqlite3-dev \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0libjansson-dev=C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0git=C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0wget \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0daemontools \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0build-essential &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0apt-get upgrade -y -qq<br>
-<br>
-#Install a version of curl with unix sockets support<br>
-RUN wget -q -P /tmp <a href=3D"http://curl.haxx.se/download/curl-7.45.0.ta=
r.gz" rel=3D"noreferrer" target=3D"_blank">http://curl.haxx.se/download/cur=
l-7.45.0.tar.gz</a> &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd /tmp &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0tar xf curl-7.45.0.tar.gz &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd curl-7.45.0 &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0./configure --prefix=3D/usr --enable-unix-socke=
ts &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make install<br>
diff --git a/dockerfiles/Dockerfile.ostro b/dockerfiles/Dockerfile.ostro<br=
>
deleted file mode 100644<br>
index b68e455..0000000<br>
--- a/dockerfiles/Dockerfile.ostro<br>
+++ /dev/null<br>
@@ -1,24 +0,0 @@<br>
-# This file describes the standard way to build an Ostro bitbake builder i=
mage<br>
-#<br>
-# Usage:<br>
-#<br>
-# docker build -t crops/ostro:builder -f Dockerfile.ostro ..<br>
-#<br>
-<br>
-FROM crops/ostro:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-USER root<br>
-<br>
-RUN=C2=A0 mkdir -p /ostro/bin &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0mkdir -p /ostro/sample-conf &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0chmod -R a+rwx /ostro<br>
-COPY helpers/runbitbake.py /ostro/bin/runbitbake.py<br>
-COPY helpers/startOstroScript.sh /ostro/bin/startOstroScript.sh<br>
-COPY confs/ostro/ostro.conf /ostro/sample-conf/ostro.conf<br>
-<br>
-RUN=C2=A0 =C2=A0chmod +rx /ostro/bin/runbitbake.py &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 chmod +rx /ostro/bin/startOstroScript.sh &amp;&amp; \=
<br>
-=C2=A0 =C2=A0 =C2=A0 git clone <a href=3D"https://github.com/ostroproject/=
ostro-os.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/ostro=
project/ostro-os.git</a> /ostro/ostro-os<br>
-<br>
-ENTRYPOINT [&quot;/ostro/bin/startOstroScript.sh&quot;]<br>
diff --git a/dockerfiles/Dockerfile.ostro.deps b/dockerfiles/Dockerfile.ost=
ro.deps<br>
deleted file mode 100644<br>
index d4da08f..0000000<br>
--- a/dockerfiles/Dockerfile.ostro.deps<br>
+++ /dev/null<br>
@@ -1,33 +0,0 @@<br>
-# This file describes the standard way to build the dependencies for Ostro=
 bitbake build image<br>
-#<br>
-# Usage:<br>
-#<br>
-# docker build -t crops/ostro:deps -f Dockerfile.ostro.deps .<br>
-<br>
-FROM debian:jessie<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Install dependencies<br>
-RUN apt-get update &amp;&amp; apt-get upgrade -y &amp;&amp; apt-get instal=
l -y \<br>
-=C2=A0 gawk \<br>
-=C2=A0 wget \<br>
-=C2=A0 git-core \<br>
-=C2=A0 diffstat \<br>
-=C2=A0 unzip \<br>
-=C2=A0 sysstat \<br>
-=C2=A0 texinfo \<br>
-=C2=A0 gcc-multilib \<br>
-=C2=A0 build-essential \<br>
-=C2=A0 chrpath \<br>
-=C2=A0 socat \<br>
-=C2=A0 python \<br>
-=C2=A0 libsdl1.2-dev=C2=A0 \<br>
-=C2=A0 cpio \<br>
-=C2=A0 sudo=C2=A0 \<br>
-=C2=A0 rsync &amp;&amp; \<br>
-=C2=A0 apt-get clean &amp;&amp; \<br>
-=C2=A0 echo &quot;dash dash/sh boolean false&quot; | debconf-set-selection=
s &amp;&amp; \<br>
-=C2=A0 DEBIAN_FRONTEND=3Dnoninteractive dpkg-reconfigure dash<br>
-<br>
-<br>
-CMD /bin/bash<br>
diff --git a/dockerfiles/Dockerfile.toolchain b/dockerfiles/Dockerfile.tool=
chain<br>
deleted file mode 100644<br>
index c03fd90..0000000<br>
--- a/dockerfiles/Dockerfile.toolchain<br>
+++ /dev/null<br>
@@ -1,49 +0,0 @@<br>
-# This file describes the standard way to build a CROPS toolchain image<br=
>
-#<br>
-# Usage:<br>
-#<br>
-# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables b=
elow with<br>
-# the name and URL of your self-extracting toolchain<br>
-#<br>
-# Example:<br>
-#<br>
-# ENV TOOLCHAIN_NAME <a href=3D"http://poky-glibc-x86_64-core-image-sato-i=
586-toolchain-2.0.sh" rel=3D"noreferrer" target=3D"_blank">poky-glibc-x86_6=
4-core-image-sato-i586-toolchain-2.0.sh</a><br>
-# ENV TOOLCHAIN_PATH <a href=3D"http://downloads.yoctoproject.org/releases=
/yocto/yocto-2.0/toolchain/x86_64/" rel=3D"noreferrer" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_64/<=
/a><br>
-#<br>
-# 2) Build your toolchain image with the following command replacing my_ta=
g with your target arch<br>
-# docker build -t crops/toolchain:my_tag -f Dockerfile.toolchain ../<br>
-#<br>
-# Example for i586 target:<br>
-# docker build -t crops/toolchain:i586 -f Dockerfile.toolchain ../<br>
-#<br>
-# The default configuration below will build an i586 toolchain for an x86_=
64 host<br>
-<br>
-FROM crops/toolchain:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-ENV TOOLCHAIN_NAME <a href=3D"http://poky-glibc-x86_64-core-image-sato-i58=
6-toolchain-2.0.sh" rel=3D"noreferrer" target=3D"_blank">poky-glibc-x86_64-=
core-image-sato-i586-toolchain-2.0.sh</a><br>
-ENV TOOLCHAIN_PATH <a href=3D"http://downloads.yoctoproject.org/releases/y=
octo/yocto-2.0/toolchain/x86_64/" rel=3D"noreferrer" target=3D"_blank">http=
://downloads.yoctoproject.org/releases/yocto/yocto-2.0/toolchain/x86_64/</a=
><br>
-<br>
-# Build and install turff<br>
-RUN mkdir -p /usr/local/crops/turff/<br>
-COPY turff /usr/local/crops/turff/<br>
-COPY utils.[ch] /usr/local/crops/<br>
-COPY globals.[ch] /usr/local/crops/<br>
-<br>
-RUN cd /usr/local/crops/turff &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p /bin/turff &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp /usr/local/crops/turff/turff /bin/turff/run =
&amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp /usr/local/crops/turff/turff_launcher /bin/<=
br>
-<br>
-# Download and install toolchain<br>
-RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd /tmp &amp;&amp;=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0chmod 755 ./${TOOLCHAIN_NAME} &amp;&amp;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0./${TOOLCHAIN_NAME} -d /opt/poky/ -y<br>
-<br>
-# Make environment setup script executable and setup workspaces<br>
-RUN chmod 755 /opt/poky/environment-setup*<br>
-<br>
-# Container entry point<br>
-ENTRYPOINT [&quot;/bin/turff_launcher&quot;, &quot;-f&quot;, &quot;/opt/po=
ky/environment-setup*&quot;]<br>
diff --git a/dockerfiles/Dockerfile.toolchain.deps b/dockerfiles/Dockerfile=
.toolchain.deps<br>
deleted file mode 100644<br>
index ff809e6..0000000<br>
--- a/dockerfiles/Dockerfile.toolchain.deps<br>
+++ /dev/null<br>
@@ -1,18 +0,0 @@<br>
-# This file describes the standard way to build the dependencies for CROPS=
<br>
-# toolchain images<br>
-#<br>
-# Usage:<br>
-#<br>
-# docker build -t crops/toolchain:deps -f Dockerfile.toolchain.deps .<br>
-<br>
-FROM debian:wheezy<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Install dependencies<br>
-RUN apt-get update -qq &amp;&amp; apt-get install -y -qq \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0python=C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0daemontools \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0git \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0build-essential \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0wget<br>
-<br>
diff --git a/dockerfiles/Dockerfile.zephyr b/dockerfiles/Dockerfile.zephyr<=
br>
deleted file mode 100644<br>
index 32068cb..0000000<br>
--- a/dockerfiles/Dockerfile.zephyr<br>
+++ /dev/null<br>
@@ -1,59 +0,0 @@<br>
-# This file describes the standard way to build a Zephyr toolchain image<b=
r>
-#<br>
-# Usage:<br>
-#<br>
-# 1) Replace the TOOLCHAIN_NAME and TOOLCHAIN_PATH environment variables b=
elow with<br>
-# the name and URL of your self-extracting toolchain<br>
-#<br>
-# Example:<br>
-#<br>
-# ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run<br>
-# ENV TOOLCHAIN_PATH <a href=3D"https://nexus.zephyrproject.org/content/re=
positories/releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/" rel=3D"norefe=
rrer" target=3D"_blank">https://nexus.zephyrproject.org/content/repositorie=
s/releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/</a><br>
-#<br>
-# 2) Build your toolchain image with the following command replacing my_ta=
g with your Zephyr&#39;s release<br>
-# docker build -t crops/zephyr:my_tag -f Dockerfile.zephyr ../<br>
-#<br>
-# Example for Zephyr SDK 0.7.2:<br>
-# docker build -t crops/zephyr:0.7.2-src -f Dockerfile.zephyr ../<br>
-#<br>
-<br>
-FROM crops/zephyr:deps<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-ENV TOOLCHAIN_NAME zephyr-sdk-0.7.2-i686-setup.run<br>
-ENV TOOLCHAIN_PATH <a href=3D"https://nexus.zephyrproject.org/content/repo=
sitories/releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/" rel=3D"noreferr=
er" target=3D"_blank">https://nexus.zephyrproject.org/content/repositories/=
releases/org/zephyrproject/zephyr-sdk/0.7.2-i686/</a><br>
-<br>
-# Build and install turff<br>
-RUN mkdir -p /usr/local/crops/turff/<br>
-COPY turff /usr/local/crops/turff/<br>
-COPY utils.[ch] /usr/local/crops/<br>
-COPY globals.[ch] /usr/local/crops/<br>
-<br>
-RUN cd /usr/local/crops/turff &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p /bin/turff &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp /usr/local/crops/turff/turff /bin/turff/run =
&amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cp /usr/local/crops/turff/turff_launcher /bin/<=
br>
-<br>
-# Download and install Zephyr toolchain<br>
-RUN wget -q -P /tmp ${TOOLCHAIN_PATH}${TOOLCHAIN_NAME} &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cd /tmp &amp;&amp;=C2=A0 =C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0chmod 755 ./${TOOLCHAIN_NAME} &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0./${TOOLCHAIN_NAME} &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ./${TOOLCHAIN_NAME}<br>
-<br>
-#Linkups<br>
-# /bin/sh to bash<br>
-# easy to use gdb to various architectures<br>
-# NOTE: in future we will probably split these into separate toolchain con=
tainers<br>
-RUN rm /bin/sh &amp;&amp; ln -s /bin/bash /bin/sh &amp;&amp; \<br>
-=C2=A0 =C2=A0 ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/i5=
86-poky-elf/i586-poky-elf-gdb /usr/bin/zephyr-i586-gdb &amp;&amp; \<br>
-=C2=A0 =C2=A0 ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/ar=
m-poky-eabi/arm-poky-eabi-gdb /usr/bin/zephyr-arm-gdb &amp;&amp; \<br>
-=C2=A0 =C2=A0 ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/ar=
c-poky-elf/arc-poky-elf-gdb /usr/bin/zephyr-arc-gdb &amp;&amp; \<br>
-=C2=A0 =C2=A0 ln -s /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/mi=
ps-poky-elf/mips-poky-elf-gdb /usr/bin/zephyr-mips-gdb<br>
-<br>
-#Create Zephyr bare clone<br>
-RUN git clone --bare <a href=3D"https://gerrit.zephyrproject.org/r/zephyr"=
 rel=3D"noreferrer" target=3D"_blank">https://gerrit.zephyrproject.org/r/ze=
phyr</a> /zephyr-src<br>
-<br>
-# Container entry point<br>
-ENTRYPOINT [&quot;/bin/turff_launcher&quot;]<br>
diff --git a/dockerfiles/Dockerfile.zephyr.deps b/dockerfiles/Dockerfile.ze=
phyr.deps<br>
deleted file mode 100644<br>
index 4c5aa4f..0000000<br>
--- a/dockerfiles/Dockerfile.zephyr.deps<br>
+++ /dev/null<br>
@@ -1,24 +0,0 @@<br>
-# This file describes the standard way to build the dependencies for Zephy=
r<br>
-# toolchain images<br>
-#<br>
-# Usage:<br>
-#<br>
-# docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps .<br>
-<br>
-FROM debian:wheezy<br>
-MAINTAINER Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
-<br>
-# Install dependencies<br>
-RUN apt-get update &amp;&amp; apt-get install -y \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0python=C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0daemontools \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0git \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0make \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc-multilib \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0g++ \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0libc6-dev-i386 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0g++-multilib=C2=A0 =C2=A0 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0bzip2=C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0wget<br>
-<br>
diff --git a/globals.c b/globals.c<br>
deleted file mode 100755<br>
index 2716495..0000000<br>
--- a/globals.c<br>
+++ /dev/null<br>
@@ -1,47 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &quot;globals.h&quot;<br>
-<br>
-void info(const char *file, int line, const char *func, const char* fmt, .=
..) {<br>
-=C2=A0 va_list args;<br>
-<br>
-=C2=A0 printf(&quot;[INFO] &quot;);<br>
-=C2=A0 va_start(args, fmt);<br>
-=C2=A0 vprintf(fmt, args);<br>
-=C2=A0 va_end(args);<br>
-}<br>
-<br>
-void debug(const char *file, int line, const char *func, const char* fmt, =
...) {<br>
-=C2=A0 va_list args;<br>
-<br>
-=C2=A0 printf(&quot;[DEBUG] %s:%d: [%s] &quot;, file, line, func);<br>
-=C2=A0 va_start(args, fmt);<br>
-=C2=A0 vprintf(fmt, args);<br>
-=C2=A0 va_end(args);<br>
-}<br>
-<br>
-void error(const char *file, int line, const char *func, const char* fmt, =
...) {<br>
-=C2=A0 va_list args;<br>
-<br>
-=C2=A0 printf(&quot;[ERROR] %s:%d: [%s] &quot;, file, line, func);<br>
-=C2=A0 va_start(args, fmt);<br>
-=C2=A0 vprintf(fmt, args);<br>
-=C2=A0 va_end(args);<br>
-=C2=A0 exit(EXIT_FAILURE);<br>
-}<br>
diff --git a/globals.h b/globals.h<br>
deleted file mode 100755<br>
index c928166..0000000<br>
--- a/globals.h<br>
+++ /dev/null<br>
@@ -1,69 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef GLOBALS_H<br>
-#define GLOBALS_H<br>
-#ifdef __linux<br>
-#define _GNU_SOURCE<br>
-#endif<br>
-<br>
-<br>
-#include &lt;math.h&gt;<br>
-#include &lt;stdarg.h&gt;<br>
-#include &lt;stdint.h&gt;<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;string.h&gt;<br>
-#include &lt;unistd.h&gt;<br>
-<br>
-#define KEY_ARR_SZ &#39;z&#39; -&#39;a&#39; + 1<br>
-#define KEY(var) abs(&#39;a&#39;- #var[1])<br>
-<br>
-<br>
-#define CODI_PORT=C2=A0 =C2=A0 =C2=A0 &quot;10000&quot;<br>
-#define CODI_IP_NATIVE &quot;127.0.0.1&quot;<br>
-#define CODI_IP_VIRT=C2=A0 =C2=A0&quot;192.168.99.100&quot;<br>
-#define TURFF_PORT=C2=A0 =C2=A0 =C2=A0&quot;9999&quot;<br>
-#define MSG_TERM=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;EOM&quot;<br>
-#define VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;0.1&quot;<br>
-#define TURFF_EOM=C2=A0 =C2=A0 =C2=A0 &quot;TEOM&quot;<br>
-#define CEED_NAME=C2=A0 =C2=A0 =C2=A0 &quot;ceed&quot;<br>
-#define TURFF_NAME=C2=A0 =C2=A0 =C2=A0&quot;turff&quot;<br>
-#define CODI_NAME=C2=A0 =C2=A0 =C2=A0 &quot;codi&quot;<br>
-#define TURFFID=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;TURFFID&quot;<br>
-<br>
-void info(const char *file, int line, const char *func, const char* fmt, .=
..);<br>
-void debug(const char *file, int line, const char *func, const char* fmt, =
...);<br>
-void error(const char *file, int line, const char *func, const char* fmt, =
...);<br>
-<br>
-#define INFO(...)=C2=A0 info(__FILE__, __LINE__, __func__, __VA_ARGS__)<br=
>
-#define ERR(...) error(__FILE__, __LINE__, __func__, __VA_ARGS__)<br>
-#define DEBUG(...) debug(__FILE__, __LINE__, __func__, __VA_ARGS__)<br>
-<br>
-typedef enum { false, true } bool;<br>
-<br>
-/* parameter chunk*/<br>
-typedef struct chunk{<br>
-=C2=A0 uint32_t op_code;<br>
-=C2=A0 char arg[20];<br>
-=C2=A0 struct chunk *next;<br>
-} msg_chunk;<br>
-<br>
-typedef struct{<br>
-=C2=A0 char=C2=A0 *mem;<br>
-=C2=A0 size_t size;<br>
-} curl_mem_chunk_t;<br>
-<br>
-#endif<br>
diff --git a/helpers/runbitbake.py b/helpers/runbitbake.py<br>
deleted file mode 100644<br>
index 96c55dc..0000000<br>
--- a/helpers/runbitbake.py<br>
+++ /dev/null<br>
@@ -1,148 +0,0 @@<br>
-#!/usr/bin/python<br>
-<br>
-# runbitbake.py<br>
-#<br>
-# Copyright (C) 2016 Intel Corporation<br>
-#<br>
-# This program is free software; you can redistribute it and/or modify<br>
-# it under the terms of the GNU General Public License version 2 as<br>
-# published by the Free Software Foundation.<br>
-#<br>
-# This program is distributed in the hope that it will be useful,<br>
-# but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the<br>
-# GNU General Public License for more details.<br>
-#<br>
-# You should have received a copy of the GNU General Public License along<=
br>
-# with this program; if not, write to the Free Software Foundation, Inc.,<=
br>
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.<br>
-<br>
-import argparse<br>
-import subprocess<br>
-import os<br>
-import tempfile<br>
-import shutil<br>
-import sys<br>
-import signal<br>
-<br>
-bitbake_process =3D None<br>
-<br>
-old_handler =3D {}<br>
-old_handler[str(signal.SIGINT)] =3D signal.getsignal(signal.SIGINT)<br>
-old_handler[str(signal.SIGTERM)] =3D signal.getsignal(signal.SIGTERM)<br>
-<br>
-<br>
-def addextra(tempdir, builddir, name, extralist):<br>
-=C2=A0 =C2=A0 myf =3D &quot;{}/conf/{}&quot;.format(builddir, name)<br>
-=C2=A0 =C2=A0 myf_orig =3D &quot;{}/{}.orig&quot;.format(tempdir, name)<br=
>
-=C2=A0 =C2=A0 tmpfile =3D &quot;{}/{}.orig.tmp&quot;.format(tempdir, name)=
<br>
-<br>
-=C2=A0 =C2=A0 # copy isn&#39;t atomic so make sure that orig is created at=
omically so that<br>
-=C2=A0 =C2=A0 # file.orig is always correct even if file gets hosed. So th=
at<br>
-=C2=A0 =C2=A0 # means if a user ever sees file.orig, they can be assured t=
hat it<br>
-=C2=A0 =C2=A0 # is the same as the original file with no corruption.<br>
-=C2=A0 =C2=A0 shutil.copyfile(myf, tmpfile)<br>
-=C2=A0 =C2=A0 with open(tmpfile, &quot;r&quot;) as f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 fd =3D f.fileno()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.fdatasync(fd)<br>
-<br>
-=C2=A0 =C2=A0 # Remember first sync the file AND directory to make sure da=
ta<br>
-=C2=A0 =C2=A0 # is written out<br>
-=C2=A0 =C2=A0 fd =3D os.open(os.path.dirname(tmpfile), os.O_RDONLY)<br>
-=C2=A0 =C2=A0 os.fsync(fd)<br>
-=C2=A0 =C2=A0 os.close(fd)<br>
-<br>
-=C2=A0 =C2=A0 # Rename should be atomic with respect to disk, yes all of t=
his assumes<br>
-=C2=A0 =C2=A0 # linux and possibly non-network filesystems.<br>
-=C2=A0 =C2=A0 os.rename(tmpfile, myf_orig)<br>
-<br>
-=C2=A0 =C2=A0 with open(myf, &quot;a&quot;) as f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if extralist:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for conf in extralist:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(conf) as=
 f2:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
ent =3D f2.readlines()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for l in content:<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.wr=
ite(&quot;%s\n&quot; % format(l.strip()))<br>
-<br>
-<br>
-def restore_files(tempdir, builddir, conffiles):<br>
-=C2=A0 =C2=A0 for f in conffiles:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 dest =3D os.path.join(builddir, &quot;conf&quo=
t;, f)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 src =3D os.path.join(tempdir, f + &quot;.orig&=
quot;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists(src):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.rename(src, dest)<br>
-<br>
-<br>
-# If bitbake is around let it do all the signal handling<br>
-def handler(signum, frame):<br>
-=C2=A0 =C2=A0 if bitbake_process:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # SIGINT is special if there is a tty. Because=
 with a tty SIGINT will<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # automatically get sent to all processes in t=
he process group. So we<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # don&#39;t need to send it ourselves.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if signum =3D=3D signal.SIGINT and sys.stdin.i=
satty():<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # If there is a bitbake process =
we want to let it tear down all<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # its children itself so send th=
e signal to bitbake.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitbake_process.send_signal(sign=
um)<br>
-=C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 old_handler[str(signum)](signum, frame)<br>
-<br>
-<br>
-if __name__ =3D=3D &#39;__main__&#39;:<br>
-=C2=A0 =C2=A0 signal.signal(signal.SIGINT, handler)<br>
-=C2=A0 =C2=A0 signal.signal(signal.SIGTERM, handler)<br>
-<br>
-=C2=A0 =C2=A0 parser =3D argparse.ArgumentParser()<br>
-<br>
-=C2=A0 =C2=A0 parser.add_argument(&quot;--extraconf&quot;, action=3D&#39;a=
ppend&#39;, help=3D&quot;File containing&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;extra configuration&quot;)<br>
-=C2=A0 =C2=A0 parser.add_argument(&quot;--extralayers&quot;, action=3D&#39=
;append&#39;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 help=3D&quot;File containing extra bblayers&quot;)<br>
-<br>
-=C2=A0 =C2=A0 parser.add_argument(&quot;--pokydir&quot;, default=3D&quot;/=
home/yoctouser/poky&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 required=3DTrue, help=3D&quot;Directory containing poky&quot;)<b=
r>
-=C2=A0 =C2=A0 parser.add_argument(&quot;--target&quot;, &quot;-t&quot;, re=
quired=3DTrue,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 help=3D&quot;What bitbake should build&quot;)<br>
-=C2=A0 =C2=A0 parser.add_argument(&quot;--builddir&quot;, &quot;-b&quot;, =
required=3DTrue,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 help=3D&quot;Directory to build in&quot;)<br>
-<br>
-=C2=A0 =C2=A0 args =3D parser.parse_args()<br>
-<br>
-=C2=A0 =C2=A0 builddir =3D args.builddir<br>
-<br>
-=C2=A0 =C2=A0 if not os.path.isdir(builddir):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.makedirs(builddir)<br>
-<br>
-=C2=A0 =C2=A0 # tempdir is a subdirectory of builddir in case builddir and=
 local.conf<br>
-=C2=A0 =C2=A0 # already existed. Then if something goes wrong with local.c=
onf the user<br>
-=C2=A0 =C2=A0 # can restore it by using builddir/tempdir/local.conf.orig<b=
r>
-=C2=A0 =C2=A0 tempdir =3D tempfile.mkdtemp(prefix=3D&quot;runbitbake-tmpdi=
r&quot;, dir=3Dbuilddir)<br>
-<br>
-=C2=A0 =C2=A0 # Have to use bash since the default on ubuntu is dash which=
 is garbage<br>
-=C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D &#39;bash -c &quot;. {}/oe-init-build-=
env {}&quot;&#39;.format(args.pokydir,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builddir)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.check_call(cmd, stdout=3Dsys.stdout=
, stderr=3Dsys.stderr,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shell=3DTrue)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 addextra(tempdir, builddir, &quo=
t;local.conf&quot;, args.extraconf)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 addextra(tempdir, builddir, &quo=
t;bblayers.conf&quot;, args.extralayers)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D &#39;. {}/oe-init-build-=
env {} &amp;&amp; &#39;.format(args.pokydir,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builddir)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd +=3D &#39;exec bitbake {}&#3=
9;.format(args.target)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitbake_process =3D subprocess.P=
open([&#39;/bin/bash&#39;, &#39;-c&#39;, cmd],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0stdout=3Dsys.stdout,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0stderr=3Dsys.stderr, shell=3DFalse)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitbake_process.wait()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 finally:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 restore_files(tempdir, builddir,=
 [&quot;local.conf&quot;, &quot;bblayers.conf&quot;])<br>
-<br>
-=C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print e<br>
-<br>
-=C2=A0 =C2=A0 finally:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(tempdir, ignore_errors=3DTrue)<b=
r>
diff --git a/helpers/startOstroScript.sh b/helpers/startOstroScript.sh<br>
deleted file mode 100644<br>
index 49a1dd1..0000000<br>
--- a/helpers/startOstroScript.sh<br>
+++ /dev/null<br>
@@ -1,42 +0,0 @@<br>
-#!/bin/bash<br>
-POKY_DIR=3D/ostro/ostro-os/<br>
-EXTRA_CONF=3D/ostro/ostro-shared/conf/ostro.conf<br>
-BUILD_DIR=3D/ostro/build/<br>
-EXTRA_LAYERS=3D/ostro/ostro-shared/conf/ostro.layers<br>
-<br>
-H_UID=3D$(ls -al /ostro/ostro-shared/ | egrep &quot;\.&quot;|egrep -v &quo=
t;\.\.&quot; | awk &#39;{print $3}&#39;)<br>
-H_USER=3D$(getent passwd &quot;$H_UID&quot; | cut -d: -f1)<br>
-if [ &quot;$H_USER&quot; =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 H_USER=3D&quot;yoctobuilder&quot;<br>
-=C2=A0 =C2=A0 /usr/sbin/useradd -m -u ${H_UID} ${H_USER}<br>
-fi<br>
-<br>
-# provide the ostro.conf if there isn&#39;t one yet<br>
-if [ ! -f ${EXTRA_CONF} ]; then<br>
-=C2=A0 =C2=A0 mkdir -p /ostro/ostro-shared/conf<br>
-=C2=A0 =C2=A0 cp /ostro/sample-conf/ostro.conf ${EXTRA_CONF}<br>
-fi<br>
-<br>
-# provide ostro.layers if there isn&#39;t one yet<br>
-if [ ! -f ${EXTRA_LAYERS} ]; then<br>
-=C2=A0 =C2=A0 mkdir -p /ostro/ostro-shared/conf<br>
-=C2=A0 =C2=A0 cp /ostro/sample-conf/ostro.layers ${EXTRA_LAYERS}<br>
-fi<br>
-<br>
-mkdir -p /ostro/ostro-shared/images/<br>
-chmod a+rwx /ostro/ostro-shared/images/<br>
-chmod a+rwx /ostro/ostro-shared/conf<br>
-chmod a+rw=C2=A0 ${EXTRA_CONF}<br>
-<br>
-<br>
-# switch into user to build<br>
-sudo=C2=A0 --user ${H_USER} /ostro/bin/runbitbake.py --pokydir $POKY_DIR -=
-extraconf $EXTRA_CONF --extralayers $EXTRA_LAYERS -b $BUILD_DIR -t $*<br>
-echo &quot;copying images to shared folder&quot;<br>
-<br>
-# we need to source the bitbake env in order to use the bitbake script to =
find the images<br>
-cd ${BUILD_DIR}<br>
-source ${POKY_DIR}/oe-init-build-env &gt;&gt; /dev/null<br>
-CON_DIR=3D`bitbake -e | egrep &quot;DEPLOY_DIR_IMAGE\=3D&quot;|tr &quot;\=
=3D&quot; &quot; &quot; | tr -d &quot;\&quot;&quot;| awk &#39;{print $2}&#3=
9;`<br>
-rsync -a ${CON_DIR} /ostro/ostro-shared/images/ &gt; /dev/null 2&gt;&amp;1=
<br>
-<br>
-<br>
diff --git a/installers/ostro-installer.sh b/installers/ostro-installer.sh<=
br>
deleted file mode 100644<br>
index 05eca6a..0000000<br>
--- a/installers/ostro-installer.sh<br>
+++ /dev/null<br>
@@ -1,108 +0,0 @@<br>
-#!/bin/bash<br>
-<br>
-if [[ &quot;$(basename -- &quot;$0&quot;)&quot; =3D=3D &quot;ostro-install=
er.sh&quot; ]]; then<br>
-=C2=A0 echo -e &quot;$0 has to be sourced not run&quot; &gt;&amp;2;<br>
-=C2=A0 echo -e &quot;\nExample:\nsource $0\n&quot;; exit 1<br>
-fi<br>
-<br>
-OSTRO_IMG=3Dcrops/ostro:builder<br>
-OSTRO_CONTAINER=3Dostro-builder<br>
-OSTRO_CONF=3D$HOME/ostro-workspace/shared/conf/ostro.conf<br>
-BITBAKE_WRAPPER=3D$HOME/.crops/bitbake.ostro<br>
-WIN_PLATFORM=3D&quot;msys&quot;<br>
-LINUX_PLATFORM=3D&quot;linux&quot;<br>
-MAC_PLATFORM=3D&quot;darwin&quot;<br>
-unset MY_PLATFORM<br>
-<br>
-# establish platform<br>
-if [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:low=
er:]&#39;&quot; =3D *$LINUX_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$LINUX_PLATFORM<br>
-elif [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:l=
ower:]&#39;&quot; =3D=3D *$MAC_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$MAC_PLATFORM<br>
-elif [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:l=
ower:]&#39;&quot; =3D=3D *$WIN_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$WIN_PLATFORM<br>
-else<br>
-=C2=A0 echo &quot;Unknown platform: $OSTYPE. Exiting&quot;; return 1<br>
-fi<br>
-echo -e &quot;\nPlatform is $MY_PLATFORM&quot;<br>
-<br>
-if [ &quot;`which docker`&quot; =3D &quot;&quot; ]; then<br>
-=C2=A0 echo -e &quot;\nPlease install docker first, then run this installe=
r&quot;<br>
-=C2=A0 if [[ $MY_PLATFORM =3D $LINUX_PLATFORM ]]; then<br>
-=C2=A0 =C2=A0 echo -e &quot;\nFrom: <a href=3D"https://docs.docker.com/lin=
ux/step_one/" rel=3D"noreferrer" target=3D"_blank">https://docs.docker.com/=
linux/step_one/</a>&quot;<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nFrom: <a href=3D"https://www.docker.com/prod=
ucts/docker-toolbox" rel=3D"noreferrer" target=3D"_blank">https://www.docke=
r.com/products/docker-toolbox</a>&quot;<br>
-=C2=A0 fi<br>
-=C2=A0 return 1<br>
-fi<br>
-<br>
-echo -e &quot;\n&quot;<br>
-read -p &quot;This will remove existing OSTRO build containers. Answering =
No will exit the installer. Proceed? Y/N &quot; -r<br>
-echo<br>
-if [[ ! $REPLY =3D~ ^[Yy]$ ]]<br>
-then<br>
-=C2=A0 echo &quot;There is nothing for me to do. Exiting&quot;; return 1<b=
r>
-else<br>
-=C2=A0 echo -e &quot;\nRemove existing OSTRO build containers&quot;<br>
-=C2=A0 docker ps -a | awk &#39;{ print $1,$2 }&#39; | grep $OSTRO_IMG | aw=
k &#39;{print $1 }&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 echo -e &quot;Done&quot;<br>
-fi<br>
-<br>
-if [[ &quot;$(docker images -q $OSTRO_IMG 2&gt; /dev/null)&quot; !=3D &quo=
t;&quot; ]]; then<br>
-=C2=A0 read -p &quot;OSTRO build image found. Download latest OSTRO build =
image? Y/N &quot; -r; echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $OSTRO_IMG 2&gt; /dev/null)&q=
uot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;OSTRO build image not found. Exiting insta=
ller&quot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nRemove existing OSTRO build image&quot;<br>
-=C2=A0 =C2=A0 docker rmi $OSTRO_IMG 2&gt; /dev/null<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading OSTRO build image. Please wait&q=
uot;<br>
-=C2=A0 =C2=A0 docker pull $OSTRO_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-else<br>
-=C2=A0 read -p &quot;Download OSTRO build image? Y/N &quot; -r<br>
-=C2=A0 echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $OSTRO_IMG 2&gt; /dev/null)&q=
uot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;OSTRO build image not found. Exiting insta=
ller&quot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading OSTRO build image. Please wait&q=
uot;<br>
-=C2=A0 =C2=A0 docker pull $OSTRO_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-fi<br>
-<br>
-if [[ &quot;$(docker images -q $OSTRO_IMG 2&gt; /dev/null)&quot; =3D=3D &q=
uot;&quot; ]]; then<br>
-=C2=A0 echo &quot;OSTRO build image not found. Exiting installer&quot;; re=
turn 1<br>
-fi<br>
-<br>
-mkdir -p $HOME/.crops<br>
-<br>
-if [[ -f &quot;$BITBAKE_WRAPPER&quot; ]]; then<br>
-=C2=A0 read -p &quot;OSTRO bitbake wrapper found. Do you want to reinstall=
 bitbake wrapper? Y/N &quot; -r; echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 echo -e &quot;\nOSTRO bitbake wrapper was not updated&quot;<=
br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 rm -rf $BITBAKE_WRAPPER<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo -e &quot;Downloading default OSTRO =
bitbake wrapper&quot;<br>
-=C2=A0 =C2=A0 curl -k -s -o $BITBAKE_WRAPPER <a href=3D"https://raw.github=
usercontent.com/crops/crops/master/scripts/bitbake.ostro" rel=3D"noreferrer=
" target=3D"_blank">https://raw.githubusercontent.com/crops/crops/master/sc=
ripts/bitbake.ostro</a><br>
-=C2=A0 =C2=A0 chmod 755 $BITBAKE_WRAPPER<br>
-=C2=A0 =C2=A0 echo -e &quot;Done.&quot;<br>
-=C2=A0 fi<br>
-else<br>
-=C2=A0 echo -e &quot;Downloading OSTRO bitbake wrapper&quot;<br>
-=C2=A0 curl -k -s -o $BITBAKE_WRAPPER <a href=3D"https://raw.githubusercon=
tent.com/crops/crops/master/scripts/bitbake.ostro" rel=3D"noreferrer" targe=
t=3D"_blank">https://raw.githubusercontent.com/crops/crops/master/scripts/b=
itbake.ostro</a><br>
-=C2=A0 chmod 755 $BITBAKE_WRAPPER<br>
-=C2=A0 echo -e &quot;Done.&quot;<br>
-fi<br>
-export PATH=3D$PATH:$HOME/.crops<br>
-<br>
-echo -e &quot;\n\nTHE OSTRO BUILD ENVIRONMENT HAS BEEN SET UP&quot;<br>
-<br>
-echo -e &quot;\nYou can now build ostro-os from the CLI\n&quot;<br>
-echo -e &quot;Example :\nbitbake.ostro ostro-image-noswupd\n&quot;<br>
diff --git a/installers/zephyr-installer.sh b/installers/zephyr-installer.s=
h<br>
deleted file mode 100755<br>
index 2afb4cf..0000000<br>
--- a/installers/zephyr-installer.sh<br>
+++ /dev/null<br>
@@ -1,225 +0,0 @@<br>
-#!/bin/bash<br>
-<br>
-if [[ &quot;$(basename -- &quot;$0&quot;)&quot; =3D=3D &quot;zephyr-instal=
ler.sh&quot; ]]; then<br>
-=C2=A0 echo -e &quot;$0 has to be sourced not run&quot; &gt;&amp;2;<br>
-=C2=A0 echo -e &quot;\nExample:\nsource $0\n&quot;; exit 1<br>
-fi<br>
-<br>
-CODI_IMG=3Dcrops/codi:latest<br>
-CODI_CONTAINER=3Dcodi<br>
-ZEPHYR_IMG=3Dcrops/zephyr:latest<br>
-ZEPHYR_CONTAINER=3Dcrops-zephyr-0-7-2-src<br>
-VM_NAME=3Ddefault<br>
-CEED_EXE=3D$HOME/.crops/ceed/ceed<br>
-MAKE_PATH=3D$HOME/.crops<br>
-WIN_PLATFORM=3D&quot;msys&quot;<br>
-LINUX_PLATFORM=3D&quot;linux&quot;<br>
-MAC_PLATFORM=3D&quot;darwin&quot;<br>
-unset MY_PLATFORM<br>
-<br>
-# establish platform<br>
-if [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:low=
er:]&#39;&quot; =3D *$LINUX_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$LINUX_PLATFORM<br>
-elif [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:l=
ower:]&#39;&quot; =3D=3D *$MAC_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$MAC_PLATFORM<br>
-elif [[ &quot;echo &quot;${OSTYPE}&quot; | tr &#39;[:upper:]&#39; &#39;[:l=
ower:]&#39;&quot; =3D=3D *$WIN_PLATFORM* ]]; then<br>
-=C2=A0 MY_PLATFORM=3D$WIN_PLATFORM<br>
-else<br>
-=C2=A0 echo &quot;Unknown platform: $OSTYPE. Exiting&quot;; return 1<br>
-fi<br>
-echo -e &quot;\nPlatform is $MY_PLATFORM&quot;<br>
-<br>
-if [ &quot;`which docker`&quot; =3D &quot;&quot; ]; then<br>
-=C2=A0 echo -e &quot;\nPlease install docker first, then run this installe=
r&quot;<br>
-=C2=A0 if [[ $MY_PLATFORM =3D $LINUX_PLATFORM ]]; then<br>
-=C2=A0 =C2=A0 echo -e &quot;\nFrom: <a href=3D"https://docs.docker.com/lin=
ux/step_one/" rel=3D"noreferrer" target=3D"_blank">https://docs.docker.com/=
linux/step_one/</a>&quot;<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nFrom: <a href=3D"https://www.docker.com/prod=
ucts/docker-toolbox" rel=3D"noreferrer" target=3D"_blank">https://www.docke=
r.com/products/docker-toolbox</a>&quot;<br>
-=C2=A0 fi<br>
-=C2=A0 return 1<br>
-fi<br>
-<br>
-echo -e &quot;\n&quot;<br>
-read -p &quot;This will remove existing CROPS containers. Answering No wil=
l exit the installer. Proceed? Y/N &quot; -r<br>
-echo<br>
-if [[ ! $REPLY =3D~ ^[Yy]$ ]]<br>
-then<br>
-=C2=A0 echo &quot;There is nothing for me to do. Exiting&quot;; return 1<b=
r>
-else<br>
-=C2=A0 echo -e &quot;\nRemove existing CODI containers&quot;<br>
-=C2=A0 docker ps -a | awk &#39;{ print $1,$2 }&#39; | grep $CODI_IMG | awk=
 &#39;{print $1 }&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 echo -e &quot;Done&quot;<br>
-<br>
-=C2=A0 echo -e &quot;\nRemove existing Zephyr container&quot;<br>
-=C2=A0 docker ps -a | awk &#39;{ print $1,$2 }&#39; | grep $ZEPHYR_IMG | a=
wk &#39;{print $1 }&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 echo -e &quot;Done&quot;<br>
-fi<br>
-<br>
-if [[ &quot;$(docker images -q $CODI_IMG 2&gt; /dev/null)&quot; !=3D &quot=
;&quot; ]]; then<br>
-=C2=A0 read -p &quot;CODI image found. Download latest CODI image? Y/N &qu=
ot; -r; echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $CODI_IMG 2&gt; /dev/null)&qu=
ot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;CODI image not found. Exiting installer&qu=
ot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nRemove existing CODI image&quot;<br>
-=C2=A0 =C2=A0 docker rmi $CODI_IMG 2&gt; /dev/null<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading CODI image. Please wait&quot;<br=
>
-=C2=A0 =C2=A0 docker pull $CODI_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-else<br>
-=C2=A0 read -p &quot;Download CODI image? Y/N &quot; -r<br>
-=C2=A0 echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $CODI_IMG 2&gt; /dev/null)&qu=
ot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;CODI image not found. Exiting installer&qu=
ot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading CODI image. Please wait&quot;<br=
>
-=C2=A0 =C2=A0 docker pull $CODI_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-fi<br>
-<br>
-if [[ &quot;$(docker images -q $ZEPHYR_IMG 2&gt; /dev/null)&quot; !=3D &qu=
ot;&quot; ]]; then<br>
-=C2=A0 read -p &quot;Zephyr toolchain found. Download latest Zephyr toolch=
ain? Y/N &quot; -r; echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $ZEPHYR_IMG 2&gt; /dev/null)&=
quot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;Zephyr toolchain not found. Exiting instal=
ler&quot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nRemove existing Zephyr toolchain&quot;<br>
-=C2=A0 =C2=A0 docker rmi $ZEPHYR_IMG 2&gt; /dev/null<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading Zephyr toolchain. Please wait&qu=
ot;<br>
-=C2=A0 =C2=A0 docker pull $ZEPHYR_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-else<br>
-=C2=A0 read -p &quot;Download Zephyr toolchain? Y/N &quot; -r; echo<br>
-=C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 if [[ &quot;$(docker images -q $ZEPHYR_IMG 2&gt; /dev/null)&=
quot; =3D=3D &quot;&quot; ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;Zephyr toolchain not found. Exiting instal=
ler&quot;; return 1<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 echo -e &quot;\nDownloading Zephyr toolchain. Please wait&qu=
ot;<br>
-=C2=A0 =C2=A0 docker pull $ZEPHYR_IMG<br>
-=C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 fi<br>
-fi<br>
-<br>
-echo -e &quot;\nLaunching CODI container&quot;<br>
-docker run -d --name $CODI_CONTAINER -v //var//run//docker.sock://var//run=
//docker.sock \<br>
-=C2=A0 --net=3Dhost $CODI_IMG || { echo &#39;Couldn&#39;t start $CODI_CONT=
AINER\&#39; ; return 1; }<br>
-echo -e &quot;Done&quot;<br>
-<br>
-echo -e &quot;\nLaunching Zephyr toolchain&quot;<br>
-docker run -d --name $ZEPHYR_CONTAINER=C2=A0 -e TURFFID=3D$ZEPHYR_CONTAINE=
R -v $HOME/crops-workspace:/crops \<br>
-=C2=A0 --net=3Dhost $ZEPHYR_IMG || { echo &#39;Couldn&#39;t start $ZEPHYR_=
CONTAINER\&#39; ; return 1; }<br>
-echo -e &quot;Done&quot;<br>
-<br>
-mkdir -p $HOME/crops-workspace;<br>
-<br>
-if [[ $MY_PLATFORM =3D=3D $MAC_PLATFORM ]]; then<br>
-=C2=A0 if [[ ! -f &quot;$CEED_EXE&quot; ]]; then<br>
-=C2=A0 =C2=A0 echo -e &quot;Downloading CEED executable for Mac...&quot;<b=
r>
-=C2=A0 =C2=A0 mkdir -p $HOME/.crops/ceed/<br>
-=C2=A0 =C2=A0 curl -s -o $CEED_EXE <a href=3D"http://crops.minchev.co.uk/c=
eed/mac/ceed" rel=3D"noreferrer" target=3D"_blank">http://crops.minchev.co.=
uk/ceed/mac/ceed</a><br>
-=C2=A0 =C2=A0 chmod 755 $CEED_EXE<br>
-=C2=A0 =C2=A0 echo -e &quot;Done.&quot;<br>
-=C2=A0 fi<br>
-<br>
-=C2=A0 if [[ ! -f &quot;$MAKE_PATH/make.zephyr&quot; ]]; then<br>
-=C2=A0 =C2=A0 echo -e &quot;Downloading Zephyr CLI make utility...&quot;<b=
r>
-=C2=A0 =C2=A0 curl -s -o $MAKE_PATH/make.zephyr <a href=3D"https://raw.git=
hubusercontent.com/todorez/crops/master/scripts/make.zephyr" rel=3D"norefer=
rer" target=3D"_blank">https://raw.githubusercontent.com/todorez/crops/mast=
er/scripts/make.zephyr</a><br>
-=C2=A0 =C2=A0 chmod 755 $MAKE_PATH/make.zephyr<br>
-=C2=A0 =C2=A0 echo -e &quot;Done.&quot;<br>
-=C2=A0 fi<br>
-else<br>
-=C2=A0 if [[ -f &quot;$CEED_EXE&quot; ]]; then<br>
-=C2=A0 =C2=A0 read -p &quot;CEED found. Do you want to reinstall CEED? Y/N=
 &quot; -r; echo<br>
-=C2=A0 =C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nCEED executable was not updated&quot;=
<br>
-=C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nRemove existing CEED executable&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 rm -rf $CEED_EXE<br>
-=C2=A0 =C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 git clone <a href=3D"https://github.com/todorez/crops=
.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/todorez/crops=
.git</a>; cd crops/dockerfiles;<br>
-=C2=A0 =C2=A0 =C2=A0 if [[ $MY_PLATFORM =3D=3D $WIN_PLATFORM ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nBuilding CEED executable&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-win=
dows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {=
}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker build -t crops/ceed:windows -f Dockerfi=
le.ceed.win ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run --name=3Dceed-windows crops/ceed:wi=
ndows;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker-machine ssh default &quot;docker cp cee=
d-windows:/usr/local/crops/ceed/ceed $CEED_EXE&quot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-win=
dows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {=
}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nBuilding CEED executable&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-lin=
ux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker build -t crops/ceed:linux -f Dockerfile=
.ceed.linux ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run --name=3Dceed-linux crops/ceed:linu=
x;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker cp ceed-linux:/usr/local/crops/ceed/cee=
d $CEED_EXE;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-lin=
ux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<=
br>
-=C2=A0 =C2=A0 =C2=A0 fi<br>
-=C2=A0 =C2=A0 =C2=A0 cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_P=
ATH/<br>
-=C2=A0 =C2=A0 =C2=A0 cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf=
 ./crops<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 read -p &quot;Do you want to install CEED? Y/N &quot; -r; ec=
ho<br>
-=C2=A0 =C2=A0 if [[ ! $REPLY =3D~ ^[Yy]$ ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nExiting installer. Your install is in=
complete.&quot;; return 1<br>
-=C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 mkdir -p $HOME/.crops/ceed<br>
-=C2=A0 =C2=A0 =C2=A0 git clone <a href=3D"https://github.com/todorez/crops=
.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/todorez/crops=
.git</a>; cd crops/dockerfiles;<br>
-=C2=A0 =C2=A0 =C2=A0 if [[ $MY_PLATFORM =3D=3D $WIN_PLATFORM ]]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nBuilding CEED executable&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-win=
dows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {=
}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker build -t crops/ceed:windows -f Dockerfi=
le.ceed.win ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run --name=3Dceed-windows crops/ceed:wi=
ndows;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker-machine ssh default &quot;docker cp cee=
d-windows:/usr/local/crops/ceed/ceed $CEED_EXE&quot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-win=
dows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-windows&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {=
}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;\nBuilding CEED executable&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-lin=
ux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker build -t crops/ceed:linux -f Dockerfile=
.ceed.linux ../<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run --name=3Dceed-linux crops/ceed:linu=
x;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker cp ceed-linux:/usr/local/crops/ceed/cee=
d $CEED_EXE;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker ps -a -q --filter &quot;name=3Dceed-lin=
ux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rm -f {}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker images -q --filter &quot;label=3Dname=
=3Dceed-linux&quot; | awk &#39;{print $1}&#39; | xargs -I {} docker rmi {}<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;Done&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 fi<br>
-=C2=A0 =C2=A0 =C2=A0 cd ../../; cp -fp ./crops/scripts/make.zephyr $MAKE_P=
ATH/;<br>
-=C2=A0 =C2=A0 =C2=A0 cp -fp ./crops/scripts/gdb.zephyr $MAKE_PATH/; rm -rf=
 ./crops<br>
-=C2=A0 =C2=A0 fi<br>
-=C2=A0 fi<br>
-fi<br>
-<br>
-echo -e &quot;\n\nTHE CROPS ENVIRONMENT HAS BEEN SET UP&quot;<br>
-<br>
-if [[ $MY_PLATFORM !=3D $LINUX_PLATFORM ]]; then<br>
-=C2=A0 MACHINE=3D`docker-machine active`<br>
-=C2=A0 IP=3D`docker-machine ip $MACHINE`<br>
-=C2=A0 CEED_EXE=3D&quot;$CEED_EXE -i $IP&quot;<br>
-fi<br>
-<br>
-echo -e &quot;\nInitialize Zephyr environment for CLI use&quot;<br>
-echo -e &quot;Example :\n${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g \&quot;git =
clone --branch v1.0.0 /zephyr-src /crops/zephyr-project/\&quot;&quot;<br>
-<br>
-echo -e &quot;\nYou can now build Zephyr applications from the CLI&quot;<b=
r>
-echo -e &quot;Example :\n$MAKE_PATH/make.zephyr BOARD=3Darduino_101 -C /cr=
ops/zephyr-project/samples/nanokernel/apps/hello_world/&quot;<br>
-<br>
-export CEED_EXE=3D$CEED_EXE<br>
-export ZEPHYR_CONTAINER=3D$ZEPHYR_CONTAINER<br>
diff --git a/scripts/bitbake.ostro b/scripts/bitbake.ostro<br>
deleted file mode 100755<br>
index a7fba2a..0000000<br>
--- a/scripts/bitbake.ostro<br>
+++ /dev/null<br>
@@ -1,12 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-OSTRO_CONTAINER=3Dostro-builder<br>
-OSTRO_IMG=3Dcrops/ostro:builder<br>
-<br>
-DOCKER_CMD=3D&quot;docker run --rm --name $OSTRO_CONTAINER -v `pwd`/ostro-=
shared:/ostro/ostro-shared --net=3Dhost $OSTRO_IMG&quot;<br>
-PARAMS=3D$1<br>
-<br>
-# make sure the shared directory exists<br>
-mkdir -p `pwd`/ostro-shared<br>
-${DOCKER_CMD} ${PARAMS} || { echo -e &quot;\nCouldn&#39;t start $OSTRO_CON=
TAINER container\n&quot; ; exit 1; }<br>
-<br>
diff --git a/scripts/build_ceed b/scripts/build_ceed<br>
deleted file mode 100755<br>
index a181b2d..0000000<br>
--- a/scripts/build_ceed<br>
+++ /dev/null<br>
@@ -1,11 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-set -e<br>
-set -o pipefail<br>
-<br>
-# This is a convenience script to build the host side ceed for travis test=
ing.<br>
-# this is probably a more travisy way to do this so if you know it, speak =
up!<br>
-<br>
-TOPDIR=3D`git rev-parse --show-toplevel`<br>
-<br>
-cd ${TOPDIR}/ceed<br>
-make<br>
diff --git a/scripts/build_containers b/scripts/build_containers<br>
deleted file mode 100755<br>
index 4335d8b..0000000<br>
--- a/scripts/build_containers<br>
+++ /dev/null<br>
@@ -1,73 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-set -e<br>
-set -o pipefail<br>
-<br>
-# This is a sanity test script for the CODI and toolchain Docker images.<b=
r>
-# This removes the old test containers, and builds a new codi and new tool=
chains.<br>
-# If you do not have the deps containers, it will build them but this take=
s awhile<br>
-#<br>
-# Example:<br>
-#<br>
-# ./tests/build_containers<br>
-<br>
-TOPDIR=3D`git rev-parse --show-toplevel`<br>
-<br>
-# remove codi test image as we will rebuild it<br>
-Q=3D`docker images=C2=A0 -q crops/codi:test`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing codi image&quot;<br>
-=C2=A0 =C2=A0 docker rmi -f $Q<br>
-fi<br>
-<br>
-Q=3D`docker images=C2=A0 -q crops/codi:testdebug`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing codi debug image&quot;<br>
-=C2=A0 =C2=A0 docker rmi -f $Q<br>
-fi<br>
-<br>
-# remove toolchain test image as we will rebuild it<br>
-Q=3D`docker images=C2=A0 -q crops/toolchain:test`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing toolchain image&quot;<br>
-=C2=A0 =C2=A0 docker rmi -f=C2=A0 =C2=A0$Q<br>
-fi<br>
-<br>
-# remove Zephyr toolchain image as we will rebuild it<br>
-Q=3D`docker images=C2=A0 -q crops/zephyr:test`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing Zephyr toolchain image&quot;<br>
-=C2=A0 =C2=A0 docker rmi -f=C2=A0 =C2=A0$Q<br>
-fi<br>
-<br>
-cd ${TOPDIR}/dockerfiles;<br>
-<br>
-Q=3D`docker images=C2=A0 -q crops/codi:deps`<br>
-if [ &quot;$Q&quot;=C2=A0 =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Build CODI deps image&quot;<br>
-=C2=A0 =C2=A0 docker build -t crops/codi:deps -f Dockerfile.codi.deps --rm=
=3Dtrue ..<br>
-fi<br>
-<br>
-<br>
-echo &quot;Build CODI test image&quot;<br>
-docker build -t crops/codi:test -f Dockerfile.codi --rm=3Dtrue ..<br>
-<br>
-echo &quot;Build CODI debug test image&quot;<br>
-docker build -t crops/codi:testdebug --build-arg build_type=3Ddebug -f Doc=
kerfile.codi --rm=3Dtrue ..<br>
-<br>
-Q=3D`docker images=C2=A0 -q crops/toolchain:deps`<br>
-if [ &quot;$Q&quot;=C2=A0 =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Build toolchain deps image&quot;<br>
-=C2=A0 =C2=A0 docker build -t crops/toolchain:deps -f Dockerfile.toolchain=
.deps=C2=A0 --rm=3Dtrue ..<br>
-fi<br>
-<br>
-echo &quot;Build toolchain test image&quot;<br>
-docker build -t crops/toolchain:test -f Dockerfile.toolchain --rm=3Dtrue .=
.<br>
-<br>
-Q=3D`docker images=C2=A0 -q crops/zephyr:deps`<br>
-if [ &quot;$Q&quot;=C2=A0 =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Build Zephyr deps image&quot;<br>
-=C2=A0 =C2=A0 docker build -t crops/zephyr:deps -f Dockerfile.zephyr.deps=
=C2=A0 --rm=3Dtrue ..<br>
-fi<br>
-<br>
-echo &quot;Build Zephyr toolchain image&quot;<br>
-docker build -t crops/zephyr:test -f Dockerfile.zephyr --rm=3Dtrue ..<br>
diff --git a/scripts/build_containers.ostro b/scripts/build_containers.ostr=
o<br>
deleted file mode 100755<br>
index 15019bc..0000000<br>
--- a/scripts/build_containers.ostro<br>
+++ /dev/null<br>
@@ -1,35 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-set -e<br>
-set -o pipefail<br>
-<br>
-<br>
-# This removes the old test containers, and builds a new ostro container.<=
br>
-# If you do not have the deps containers, it will build them but this take=
s awhile<br>
-# it does NOT remove the deps images<br>
-#<br>
-# Example:<br>
-#<br>
-# ./scripts/build_containers.ostro<br>
-<br>
-TOPDIR=3D`git rev-parse --show-toplevel`<br>
-<br>
-# remove ostro builder image as we will rebuild it<br>
-Q=3D`docker images=C2=A0 -q crops/ostro:builder`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing ostro image&quot;<br>
-=C2=A0 =C2=A0 docker rmi -f $Q<br>
-fi<br>
-<br>
-cd ${TOPDIR}/dockerfiles;<br>
-<br>
-Q=3D`docker images=C2=A0 -q crops/ostro:deps`<br>
-if [ &quot;$Q&quot;=C2=A0 =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Build ostro deps image&quot;<br>
-=C2=A0 =C2=A0 docker build -t crops/ostro:deps -f Dockerfile.ostro.deps --=
rm=3Dtrue ..<br>
-fi<br>
-Q=3D`docker images=C2=A0 -q crops/ostro:builder`<br>
-if [ &quot;$Q&quot;=C2=A0 =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Build ostro builder image&quot;<br>
-=C2=A0 =C2=A0 docker build -t crops/ostro:builder -f Dockerfile.ostro --rm=
=3Dtrue ..<br>
-fi<br>
-<br>
diff --git a/scripts/gdb.zephyr b/scripts/gdb.zephyr<br>
deleted file mode 100644<br>
index dfb128e..0000000<br>
--- a/scripts/gdb.zephyr<br>
+++ /dev/null<br>
@@ -1,8 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-DOCKER_EXEC_TTY=3D&quot;docker exec -it&quot;<br>
-CONTAINER=3Dcrops-zephyr-0-7-2-src<br>
-GDB_PATH=3D//opt//zephyr-sdk//sysroots//i686-pokysdk-linux//usr//bin//i586=
-poky-elf//i586-poky-elf-gdb<br>
-IMAGE=3D$1<br>
-<br>
- ${DOCKER_EXEC_TTY} ${CONTAINER} ${GDB_PATH} ${IMAGE}<br>
diff --git a/scripts/make.zephyr b/scripts/make.zephyr<br>
deleted file mode 100755<br>
index 55f0cef..0000000<br>
--- a/scripts/make.zephyr<br>
+++ /dev/null<br>
@@ -1,21 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-echo $CEED_EXE<br>
-<br>
-if [ -z &quot;$CEED_EXE&quot; ]; then<br>
-=C2=A0 CEED_EXE=3D./ceed/ceed<br>
-fi<br>
-<br>
-if [ -z &quot;$ZEPHYR_CONTAINER&quot; ]; then<br>
-=C2=A0 ZEPHYR_CONTAINER=3Dzephyr-test<br>
-fi<br>
-<br>
-ZEPHYR_ENV=3D&quot;ZEPHYR_GCC_VARIANT=3Dzephyr ZEPHYR_SDK_INSTALL_DIR=3D/o=
pt/zephyr-sdk ZEPHYR_BASE=3D/crops/zephyr-project/&quot;<br>
-ALL_PARAMS=3D$*<br>
-<br>
-if [ &quot;$#&quot; -eq 0 ]; then<br>
-=C2=A0 =C2=A0 echo $0: No parameters found<br>
-=C2=A0 =C2=A0 exit 1<br>
-fi<br>
-<br>
-${CEED_EXE} -d ${ZEPHYR_CONTAINER} -g &quot;${ZEPHYR_ENV} make ${ALL_PARAM=
S}&quot;<br>
diff --git a/scripts/run_containers b/scripts/run_containers<br>
deleted file mode 100755<br>
index d2c8066..0000000<br>
--- a/scripts/run_containers<br>
+++ /dev/null<br>
@@ -1,59 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-# This is a sanity test script for the CODI and toolchain Docker images.<b=
r>
-# This runs the test containers.<br>
-# Then it runs ceed -l to talk to codi to list the 4 test toolchains<br>
-#<br>
-# Example:<br>
-#<br>
-# ./tests/run_containers [NUM_TOOLCHAIN CONATINERS TO START DEFAULT:4]<br>
-<br>
-TOPDIR=3D`git rev-parse --show-toplevel`<br>
-# note, currently the turff node and the container name MUST match exactly=
 or have matching formats<br>
-# Example: TURFFID=3Drepo/image:tag and container name repo-image-tag<br>
-# The Docker API does not allow special characters in container names exce=
pt &#39;-&#39;<br>
-NAME_BASE=3D&quot;crops-toolchain-test&quot;<br>
-NUM_TOOLCHAINS=3D4<br>
-if [ &quot;$1&quot; !=3D &quot;&quot; ]; then<br>
-=C2=A0 NUM_TOOLCHAINS=3D$1<br>
-fi<br>
-<br>
-<br>
-if [ &quot;$DEBUG&quot; =3D=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Start CODI container&quot;<br>
-=C2=A0 =C2=A0 docker run -d --name codi-test -v /var/run/docker.sock:/var/=
run/docker.sock --net=3Dhost crops/codi:test || \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ echo &#39;docker run codi failed&#39; ; exit =
1; }<br>
-else<br>
-=C2=A0 =C2=A0 echo &quot;Start DEBUG CODI container&quot;<br>
-=C2=A0 =C2=A0 docker run -d --name codi-test-debug -v /var/run/docker.sock=
:/var/run/docker.sock --net=3Dhost crops/codi:testdebug || \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ echo &#39;docker run codi failed&#39; ; exit =
1; }<br>
-fi<br>
-II=3D0<br>
-while [ $II -lt $NUM_TOOLCHAINS ]; do<br>
-=C2=A0 echo &quot;Start toolchain container $II&quot;<br>
-=C2=A0 sleep 2;<br>
-=C2=A0 docker run -d --name ${NAME_BASE}${II} -v /crops/:/crops/ --env TUR=
FFID=3D${NAME_BASE}${II} --net=3Dhost crops/toolchain:test || \<br>
-=C2=A0 { echo &#39;docker run toolchain-test${II} failed&#39; ; exit 1; }<=
br>
-=C2=A0 let II=3D$II+1<br>
-done<br>
-<br>
-echo &quot;Start Zephyr toolchain container&quot;<br>
-sleep 2;<br>
-mkdir -p $HOME/crops-test-workspace<br>
-docker run -d --name zephyr-test -v $HOME/crops-test-workspace/:/crops/ --=
env TURFFID=3Dzephyr-test --net=3Dhost crops/zephyr:test || \<br>
-=C2=A0 { echo &#39;docker run zephyr-test failed&#39; ; exit 1; }<br>
-<br>
-echo &quot;List containers known to CODI&quot;<br>
-sleep 5;<br>
-cd ${TOPDIR}/ceed<br>
-<br>
-# if docker-machine exists then we are on a mac/windows and use the addres=
s of the vm we are running in<br>
-# else localhost<br>
-if [ -x &quot;$(command -v docker-machine)&quot; ]; then<br>
-=C2=A0 NAME=3D`docker-machine active`<br>
-=C2=A0 ADDRESS=3D`docker-machine ip ${NAME}`<br>
-else<br>
-=C2=A0 # linux can run over unix sockets rather than ip but ip is more cro=
ss platform<br>
-=C2=A0 ADDRESS=3D127.0.0.1<br>
-fi<br>
-./ceed -i $ADDRESS -s 10000 -l<br>
diff --git a/scripts/stop_containers b/scripts/stop_containers<br>
deleted file mode 100755<br>
index b8d0cb7..0000000<br>
--- a/scripts/stop_containers<br>
+++ /dev/null<br>
@@ -1,33 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-# This is a sanity test script for the CODI and toolchain Docker images.<b=
r>
-# This stops the test containers.<br>
-#<br>
-# Example:<br>
-#<br>
-# ./scripts/stop_containers<br>
-<br>
-NAME_BASE=3D&quot;crops-toolchain-test&quot;<br>
-<br>
-II=3D0<br>
-Q=3D`docker ps -a | egrep ${NAME_BASE}${II} | awk &#39;{print $1}&#39;`<br=
>
-while [ &quot;$Q&quot; !=3D &quot;&quot;=C2=A0 ]; do<br>
-=C2=A0 =C2=A0 echo &quot;Stop and Remove toolchain container $II&quot;<br>
-=C2=A0 =C2=A0 docker rm -f $Q || { echo &#39;docker rm $Q failed&#39; ; ex=
it 1; };<br>
-=C2=A0 =C2=A0 let II=3D$II+1<br>
-=C2=A0 =C2=A0 Q=3D`docker ps -a | egrep ${NAME_BASE}${II} | awk &#39;{prin=
t $1}&#39;`<br>
-done<br>
-<br>
-echo &quot;Stop and remove Zephyr test container&quot;<br>
-Q=3D`docker ps -a | egrep zephyr-test | awk &#39;{print $1}&#39;`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing Zephyr container&quot;<br>
-=C2=A0 =C2=A0 docker rm -f $Q || { echo &#39;docker rm $Q failed&#39; ; ex=
it 1; };<br>
-fi<br>
-<br>
-echo &quot;Stop and remove CODI test container&quot;<br>
-Q=3D`docker ps -a | egrep codi-test | awk &#39;{print $1}&#39;`<br>
-if [ &quot;$Q&quot;=C2=A0 !=3D &quot;&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;Removing codi container&quot;<br>
-=C2=A0 =C2=A0 docker rm -f $Q || { echo &#39;docker rm $Q failed&#39; ; ex=
it 1; };<br>
-fi<br>
diff --git a/tests.py b/tests.py<br>
deleted file mode 100644<br>
index f574c29..0000000<br>
--- a/tests.py<br>
+++ /dev/null<br>
@@ -1,32 +0,0 @@<br>
-&#39;&#39;&#39; CROPS test runner &#39;&#39;&#39;<br>
-<br>
-import unittest<br>
-import sys<br>
-<br>
-def run_unittests():<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Execute Unit Tests &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 tests =3D unittest.TestLoader().discover(&#39;tests/unit&#39=
;)<br>
-=C2=A0 =C2=A0 result =3D unittest.TextTestRunner(verbosity=3D2).run(tests)=
<br>
-=C2=A0 =C2=A0 return result.wasSuccessful()<br>
-<br>
-def run_functional_tests():<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Execute Functional Tests &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 tests =3D unittest.TestLoader().discover(&#39;tests/function=
al&#39;)<br>
-=C2=A0 =C2=A0 result =3D unittest.TextTestRunner(verbosity=3D2).run(tests)=
<br>
-=C2=A0 =C2=A0 return result.wasSuccessful()<br>
-<br>
-if __name__ =3D=3D &#39;__main__&#39;:<br>
-=C2=A0 =C2=A0 print &quot;#&quot; * 70<br>
-=C2=A0 =C2=A0 print &quot;Test Runner: Unit tests&quot;<br>
-=C2=A0 =C2=A0 print &quot;#&quot; * 70<br>
-=C2=A0 =C2=A0 unit_results =3D run_unittests()<br>
-<br>
-=C2=A0 =C2=A0 print &quot;#&quot; * 70<br>
-=C2=A0 =C2=A0 print &quot;Test Runner: Functional tests&quot;<br>
-=C2=A0 =C2=A0 print &quot;#&quot; * 70<br>
-=C2=A0 =C2=A0 functional_results =3D run_functional_tests()<br>
-<br>
-=C2=A0 =C2=A0 if unit_results and functional_results:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(0)<br>
-=C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(1)<br>
diff --git a/tests/functional/test_ceed_basic.py b/tests/functional/test_ce=
ed_basic.py<br>
deleted file mode 100644<br>
index ed7a7a9..0000000<br>
--- a/tests/functional/test_ceed_basic.py<br>
+++ /dev/null<br>
@@ -1,104 +0,0 @@<br>
-&#39;&#39;&#39; Test Basic ceed/codi api&#39;&#39;&#39;<br>
-<br>
-import unittest<br>
-import re<br>
-import subprocess<br>
-import utils.ceedutil as ceedutil<br>
-<br>
-<br>
-# This test set ASSUMES the initial scripts have been run and therefore we=
 have<br>
-# 1) 1 codi container named codi-test<br>
-# 2) 4 toolchain containers named test-toolchain-test[0-3]<br>
-<br>
-<br>
-<br>
-<br>
-class CeedBasicTests(unittest.TestCase):<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Base class for testing ceed &#39;&#39;&#39;<=
br>
-<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Define some unique data for va=
lidation &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D ceedutil.getDockerAddre=
ss().strip()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tbase=3Dceedutil.ToolchainNameBase<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tnum=3Dceedutil.ToolchainNumber<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.cPort=3Dceedutil.CodiPort<br>
-<br>
-=C2=A0 =C2=A0 def tearDown(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Destroy unique data &#39;&#39;=
&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D None<br>
-<br>
-=C2=A0 =C2=A0 def test_connect(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Connect to codi&#39;&#39;&#39;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;Connected to CODI on&quot;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-l&quot;],stdout=3Dsu=
bprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-=C2=A0 =C2=A0 def test_connect_with_port(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Connect to codi&#39;&#39;&#39;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;Connected to CODI on&quot;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-s&quot;,str(self.cPo=
rt),&quot;-l&quot;],stdout=3Dsubprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-=C2=A0 =C2=A0 def test_connect_with_badport_shouldfail(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Connect to codi&#39;&#39;&#39;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;Connected to CODI on&quot;<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-s&quot;,str(self.cPo=
rt+1),&quot;-l&quot;],stdout=3Dsubprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertFalse(success)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_listContainers(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; List all the toolchain Contain=
ers&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING1=3D&quot;TURFF&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING2=3Dself.tbase<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 EXPECTED_COUNT=3D4<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-l&quot;],stdout=3Dsu=
bprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 count=3D0<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING1) &gt;=3D=
 0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBST=
RING2) &gt;=3D 0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 coun=
t+=3D1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertEqual(count,EXPECTED_COUNT)<br>
diff --git a/tests/functional/test_ceed_commands.py b/tests/functional/test=
_ceed_commands.py<br>
deleted file mode 100644<br>
index 72c22ea..0000000<br>
--- a/tests/functional/test_ceed_commands.py<br>
+++ /dev/null<br>
@@ -1,121 +0,0 @@<br>
-&#39;&#39;&#39; Test Basic ceed/codi api&#39;&#39;&#39;<br>
-<br>
-import unittest<br>
-import re<br>
-import subprocess<br>
-import utils.ceedutil as ceedutil<br>
-<br>
-<br>
-# This test set ASSUMES the initial scripts have been run and therefore we=
 have<br>
-# 1) 1 codi container named codi-test<br>
-# 2) 4 toolchain containers named test-toolchain-test[0-3]<br>
-<br>
-<br>
-class CeedCommandsTests(unittest.TestCase):<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Base class for testing ceed &#39;&#39;&#39;<=
br>
-<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Define some unique data for va=
lidation &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D ceedutil.getDockerAddre=
ss().strip()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tbase=3Dceedutil.ToolchainNameBase<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tnum=3Dceedutil.ToolchainNumber<br>
-<br>
-=C2=A0 =C2=A0 def tearDown(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Destroy unique data &#39;&#39;=
&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D None<br>
-<br>
-=C2=A0 =C2=A0 def test_command(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Get Output from simple command=
&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;/bin/bash&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot;,self.tbase+&=
quot;0&quot;, &quot;-g&quot;,&quot;which bash&quot;],stdout=3Dsubprocess.PI=
PE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-=C2=A0 =C2=A0 def test_command_all(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Get Output from simple command=
 for all containers&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;/bin/bash&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 successAll=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(self.tnum):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.P=
open([&quot;ceed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot=
;,self.tbase+str(i), &quot;-g&quot;,&quot;which bash&quot;],stdout=3Dsubpro=
cess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessE=
rror as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(Fa=
lse)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n=
&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBST=
RING) &gt;=3D 0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 succ=
ess=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brea=
k<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 successAll&amp;=3Dsuccess<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(successAll)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_command_args_switch(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Get Output from simple command=
 using argument switch&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;/bin/bash&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot;,self.tbase+&=
quot;0&quot;, &quot;-r&quot;,&quot;bash&quot;,&quot;-g&quot;,&quot;which&qu=
ot;],stdout=3Dsubprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_command_env_inline(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Pass env as Q=3DR cmd&#39;&#39=
;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;FROGS=3DFRIENDS&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D subprocess.Popen([&quot;ce=
ed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot;,self.tbase+&=
quot;0&quot;, &quot;-g&quot;,&quot;FROGS=3DFRIENDS printenv&quot;],stdout=
=3Dsubprocess.PIPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in output.split(&#39;\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(SUBSTRING) &gt;=3D =
0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-=C2=A0 =C2=A0 # This will be added when the -e flag is fixed<br>
-=C2=A0 =C2=A0 # def test_command_env_as_argument(self):<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0&#39;&#39;&#39; Pass env using the -e s=
witch to cmd&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0SUBSTRING=3D&quot;FROGS=3DFRIENDS&quot;=
<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0try:<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D subprocess.Popen([&=
quot;ceed/ceed&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot;,self.=
tbase+&quot;0&quot;, &quot;-e&quot;,&quot;FROGS=3DFRIENDS&quot;,&quot;-g&qu=
ot;,&quot;printenv&quot;],stdout=3Dsubprocess.PIPE)<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0except subprocess.CalledProcessError as=
 e:<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print e.output<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.assertTrue(False)<br=
>
-<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0success=3DFalse<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0output=3Dp.communicate()[0]<br>
-<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0for line in output.split(&#39;\n&#39;):=
<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if line.find(SUBSTRING) &=
gt;=3D 0:<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0success=3DT=
rue<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break<br>
-=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0self.assertTrue(success)<br>
diff --git a/tests/functional/test_zephyr_build.py b/tests/functional/test_=
zephyr_build.py<br>
deleted file mode 100644<br>
index 97fedf7..0000000<br>
--- a/tests/functional/test_zephyr_build.py<br>
+++ /dev/null<br>
@@ -1,101 +0,0 @@<br>
-&#39;&#39;&#39; Test Zephyr Build&#39;&#39;&#39;<br>
-import unittest<br>
-import re<br>
-import subprocess<br>
-import os.path<br>
-import utils.ceedutil as ceedutil<br>
-<br>
-<br>
-# This test set ASSUMES the initial scripts have been run and therefore we=
 have<br>
-# 1) 1 codi container named codi-test<br>
-# 2) 1 zephyr toolchain container named zephyr-test<br>
-<br>
-<br>
-class ZephyrBuildTest(unittest.TestCase):<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Base class for testing Zephyr builds &#39;&#=
39;&#39;<br>
-<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Define some unique data for va=
lidation &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D ceedutil.getDockerAddre=
ss().strip()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.codiPort=3Dceedutil.CodiPort<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zephyrName=3D&quot;zephyr-test&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zephyrHostPath=3Dos.environ[&#39;HOME&#39=
;]+&quot;/crops-test-workspace/&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zephyrContainerPath=3D&quot;/crops/&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zephyrPrjPath=3D&quot;zephyr-project/samp=
les/nanokernel/apps/hello_world/&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zephyrBin=3D&quot;outdir/zephyr.bin&quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.devnull=3Dopen(os.devnull, &#39;w&#39;)<b=
r>
-<br>
-=C2=A0 =C2=A0 def tearDown(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Destroy unique data &#39;&#39;=
&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.dockerAddress =3D None<br>
-<br>
-=C2=A0 =C2=A0 def test_a_git_clone(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Checkout Zephyr source&#39;&#3=
9;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUBSTRING=3D&quot;Note: checking out&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;rm&quot;,=
&quot;-rf&quot;,os.environ[&#39;HOME&#39;]+&quot;/crops-test-workspace/zeph=
yr-project&quot;],stdout=3Dself.devnull)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;ceed/ceed=
&quot;,&quot;-i&quot;,self.dockerAddress,&quot;-d&quot;,self.zephyrName, &q=
uot;-s&quot;,str(self.codiPort),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;-g&quot;,&qu=
ot;git clone --branch v1.0.0 /zephyr-src /crops/zephyr-project&quot;],stdou=
t=3Dself.devnull)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isdir(self.zephyrHostPath+self.zeph=
yrPrjPath):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-=C2=A0 =C2=A0 def test_x86_build(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Build X86 hello world applicat=
ion\n&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 BOARD=3D&quot;arduino_101&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;pristine&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&q=
uot;,self.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&quot;,self.zephyrConta=
inerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isfile(self.zephyrHostPath+self.zep=
hyrPrjPath + self.zephyrBin):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_arm_build(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Build ARM hello world applicat=
ion\n&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 BOARD=3D&quot;arduino_due&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;pristine&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&q=
uot;,self.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&quot;,self.zephyrConta=
inerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isfile(self.zephyrHostPath+self.zep=
hyrPrjPath + self.zephyrBin):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_arc_build(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Build ARC hello world applicat=
ion\n&#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 BOARD=3D&quot;arduino_101_sss&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;pristine&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&q=
uot;,self.zephyrContainerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call([&quot;scripts/m=
ake.zephyr&quot;,&quot;BOARD=3D&quot;+BOARD,&quot;-C&quot;,self.zephyrConta=
inerPath+self.zephyrPrjPath],stdout=3Dself.devnull)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except subprocess.CalledProcessError as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print e.output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(False)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DFalse<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.isfile(self.zephyrHostPath+self.zep=
hyrPrjPath + self.zephyrBin):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 success=3DTrue<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertTrue(success)<br>
diff --git a/tests/functional/utils/__init__.py b/tests/functional/utils/__=
init__.py<br>
deleted file mode 100644<br>
index e69de29..0000000<br>
diff --git a/tests/functional/utils/ceedutil.py b/tests/functional/utils/ce=
edutil.py<br>
deleted file mode 100644<br>
index ea75b90..0000000<br>
--- a/tests/functional/utils/ceedutil.py<br>
+++ /dev/null<br>
@@ -1,20 +0,0 @@<br>
-# some shared utility functions<br>
-import subprocess<br>
-<br>
-ToolchainNameBase=3D&quot;crops-toolchain-test&quot;<br>
-ToolchainNumber=3D4<br>
-CodiPort=3D10000<br>
-def cmd_exists(cmd):<br>
-=C2=A0 =C2=A0 return subprocess.call (&quot;command -v &quot;+cmd,shell=3D=
True,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 stdout=3Dsubprocess.PIPE,stderr=3Dsubprocess.PIPE)=
=3D=3D0<br>
-<br>
-def getDockerMachineAddress():<br>
-=C2=A0 =C2=A0 machine_name=3Dsubprocess.check_output([&#39;docker-machine&=
#39;,&#39;active&#39;])<br>
-=C2=A0 =C2=A0 ADDRESS=3Dsubprocess.check_output([&#39;docker-machine&#39;,=
&#39;ip&#39;,machine_name.strip()])<br>
-=C2=A0 =C2=A0 return ADDRESS<br>
-<br>
-def getDockerAddress():<br>
-=C2=A0 =C2=A0 ADDRESS=3D&quot;127.0.0.1&quot;<br>
-=C2=A0 =C2=A0 if cmd_exists(&#39;docker-machine&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ADDRESS=3DgetDockerMachineAddress()<br>
-=C2=A0 =C2=A0 return ADDRESS<br>
diff --git a/tests/unit/test_basic.py b/tests/unit/test_basic.py<br>
deleted file mode 100644<br>
index 1856536..0000000<br>
--- a/tests/unit/test_basic.py<br>
+++ /dev/null<br>
@@ -1,19 +0,0 @@<br>
-&#39;&#39;&#39; Crawl the running Docker site and verify all links give a =
200 OK &#39;&#39;&#39;<br>
-<br>
-import unittest<br>
-import subprocess<br>
-<br>
-<br>
-# Placeholder for future python based codi/TURFF<br>
-<br>
-class BasicTests(unittest.TestCase):<br>
-=C2=A0 =C2=A0 &#39;&#39;&#39; Base class for testing &#39;&#39;&#39;<br>
-<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Define some unique data for va=
lidation &#39;&#39;&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def tearDown(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; Destroy unique data &#39;&#39;=
&#39;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
diff --git a/tests/unit/test_runbitbake.py b/tests/unit/test_runbitbake.py<=
br>
deleted file mode 100644<br>
index 3b3a733..0000000<br>
--- a/tests/unit/test_runbitbake.py<br>
+++ /dev/null<br>
@@ -1,130 +0,0 @@<br>
-#!/usr/bin/env python<br>
-<br>
-import unittest<br>
-import os<br>
-import subprocess<br>
-import shutil<br>
-import tempfile<br>
-import sys<br>
-import stat<br>
-import imp<br>
-<br>
-<br>
-class RunBitbakeTestBase(unittest.TestCase):<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tempdir =3D tempfile.mkdtemp(prefix=3D&qu=
ot;runbitbaketest-tmpdir&quot;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.pokydir =3D os.path.join(self.tempdir, &q=
uot;poky&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir(self.pokydir)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # runbitbake.py requires --pokydir with a &quo=
t;oe-init-build-env&quot; script<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.setupscript =3D os.path.join(self.pokydir=
, &quot;oe-init-build-env&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.setupscript, &quot;w&quot;):<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Create a builddir and confdir as if oe-init-=
build-env had ran<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.builddir =3D os.path.join(self.tempdir, &=
quot;build&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.confdir =3D os.path.join(self.builddir, &=
quot;conf&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir(self.builddir)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir(self.confdir)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Create an executable bitbake that does nothi=
ng<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bindir =3D os.path.join(self.tempdir, &qu=
ot;bin&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir(self.bindir)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bitbake =3D os.path.join(self.bindir, &qu=
ot;bitbake&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.bitbake, &quot;w&quot;) as f:<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.write(&quot;#!/bin/sh\n&quot;)=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.chmod(self.bitbake, stat.S_IR=
WXU)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Make sure runbitbake.py can run our fake bit=
bake<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.environ[&quot;PATH&quot;] =3D &quot;{}:{}&q=
uot;.format(self.bindir, os.environ[&quot;PATH&quot;])<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # We will have one line local.conf and bblayer=
s.conf.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.local_conf =3D os.path.join(self.confdir,=
 &quot;local.conf&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.local_conf, &quot;w&quot;) as f=
:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.write(&quot;Some data\n&quot;)=
<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bblayers_conf =3D os.path.join(self.confd=
ir, &quot;bblayers.conf&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.bblayers_conf, &quot;w&quot;) a=
s f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.write(&quot;Other data\n&quot;=
)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Create the files that contain extra data to =
be added to the original<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # configuration files<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.extraconf =3D os.path.join(self.tempdir, =
&quot;extra.conf&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.extraconf, &quot;w&quot;) as f:=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.write(&quot;MOAR STUFF\nEVEN M=
OAR!!!!\n&quot;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.extralayers =3D os.path.join(self.tempdir=
, &quot;bblayers_extra.conf&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.extralayers, &quot;w&quot;) as =
f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f.write(&quot;BBLAYERS MOAR STUF=
F\nEVEN MOAR BBLAYERS!!!!\n&quot;)<br>
-<br>
-=C2=A0 =C2=A0 def tearDown(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(self.tempdir, ignore_errors=3DTr=
ue)<br>
-<br>
-<br>
-class ConfFilesTest(RunBitbakeTestBase):<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 super(ConfFilesTest, self).setUp()<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # These &quot;.orig&quot; files are for checki=
ng that the file is restored back<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # to the original state<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.local_conf_orig =3D os.path.join(self.tem=
pdir, &quot;local.conf.orig&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bblayers_conf_orig =3D os.path.join(self.=
tempdir,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;bblayers.conf.orig&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.copyfile(self.local_conf, self.local_co=
nf_orig)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.copyfile(self.bblayers_conf, self.bblay=
ers_conf_orig)<br>
-<br>
-<br>
-<br>
-=C2=A0 =C2=A0 def test_files_are_restored(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D &quot;&quot;&quot;python helpers/runbi=
tbake.py --pokydir=3D{} &quot;&quot;&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;-t junk=
 -b {} &quot;&quot;&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;--extra=
conf=3D{} &quot;&quot;&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;--extra=
layers=3D{}&quot;&quot;&quot;.format(self.pokydir, self.builddir,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 self.extraconf, self.extralayers)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 subprocess.call(cmd.split(), stderr=3Dsys.stde=
rr, stdout=3Dsys.stdout,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 shell=3DFalse)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.local_conf_orig, &quot;r&quot;)=
 as f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 origlines =3D f.readlines()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.local_conf, &quot;r&quot;) as f=
:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 newlines =3D f.readlines()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertListEqual(origlines, newlines)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.bblayers_conf_orig, &quot;r&quo=
t;) as f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 origlines =3D f.readlines()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.bblayers_conf, &quot;r&quot;) a=
s f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 newlines =3D f.readlines()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertListEqual(origlines, newlines)<br>
-<br>
-<br>
-class AddExtraTest(RunBitbakeTestBase):<br>
-=C2=A0 =C2=A0 def setUp(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 super(AddExtraTest, self).setUp()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Since we are importing a file in the source =
directory, this prevents<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # cluttering the directory with a .pyc file.<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.dont_write_bytecode =3D True<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.runbitbake =3D os.path.join(&quot;helpers=
&quot;, &quot;runbitbake.py&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.module =3D imp.load_source(&quot;&quot;, =
self.runbitbake)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.addextra_tempdir =3D os.path.join(self.te=
mpdir, &quot;addextratmp&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir(self.addextra_tempdir)<br>
-<br>
-=C2=A0 =C2=A0 def test_addextra_changed_files(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 addextra =3D self.module.addextra<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 addextra(self.addextra_tempdir, self.builddir,=
 &quot;local.conf&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[self.extrac=
onf])<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.extraconf, &quot;r&quot;) as f:=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraconflines =3D set(f.readlin=
es())<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.local_conf, &quot;r&quot;) as f=
:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localconflines =3D set(f.readlin=
es())<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 intersection =3D extraconflines &amp; localcon=
flines<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.assertListEqual(list(intersection), list(=
extraconflines))<br>
-<br>
-if __name__ =3D=3D &#39;__main__&#39;:<br>
-=C2=A0 =C2=A0 unittest.main()<br>
diff --git a/turff/Makefile b/turff/Makefile<br>
deleted file mode 100755<br>
index 1664c59..0000000<br>
--- a/turff/Makefile<br>
+++ /dev/null<br>
@@ -1,19 +0,0 @@<br>
-CFLAGS=3D-g -I. -I../<br>
-LDFLAGS=3D-lm<br>
-DEPS =3D turff_api.h ../globals.h ../utils.h<br>
-OBJ =3D turff.o turff_api.o ../utils.o ../globals.o<br>
-<br>
-all: turff<br>
-<br>
-debug: DFLAGS=3D-DDBG<br>
-debug: clean turff<br>
-<br>
-%.o: %.c $(DEPS)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -c -o $@ $&lt; $(CFLAGS) $(DFLAGS)<br>
-<br>
-turff: $(OBJ)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)<br>
-<br>
-.PHONY: clean<br>
-clean:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf $(OBJ) turff<br>
diff --git a/turff/turff.c b/turff/turff.c<br>
deleted file mode 100755<br>
index d63fb99..0000000<br>
--- a/turff/turff.c<br>
+++ /dev/null<br>
@@ -1,128 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;signal.h&gt;<br>
-#include &lt;netdb.h&gt;<br>
-#include &quot;utils.h&quot;<br>
-#include &quot;turff_api.h&quot;<br>
-<br>
-#define PORT_RANGE 100<br>
-extern char *turff_ops[];<br>
-extern char *codi_params[];<br>
-static int sock_fd;<br>
-<br>
-/*TODO - close sockets on CTRL+C. Get rid of this when running as a daemon=
 */<br>
-void close_sockets(int dummy) {<br>
-=C2=A0 close(sock_fd);<br>
-=C2=A0 INFO(&quot;\nClosed the sockets. Exiting!\n&quot;) ;<br>
-=C2=A0 exit(0);<br>
-}<br>
-<br>
-int main(int argc, char *argv[]) {<br>
-<br>
-=C2=A0 struct addrinfo *addr_p =3D NULL;<br>
-=C2=A0 struct sockaddr cli_addr;<br>
-=C2=A0 socklen_t cli_len;<br>
-=C2=A0 int i, ceed_sock_fd, saved_out =3D -1, saved_err =3D -1, bound =3D =
0;<br>
-=C2=A0 const char *port;<br>
-<br>
-=C2=A0 parse_turff_params(argc, argv);<br>
-<br>
-=C2=A0 bound =3D 0;<br>
-=C2=A0 port =3D turff_ops[KEY(&#39;s&#39;)];<br>
-=C2=A0 while(!bound &amp;&amp; (int) *port &gt; (int) *turff_ops[KEY(&#39;=
s&#39;)] - PORT_RANGE) {<br>
-<br>
-=C2=A0 =C2=A0 addr_p =3D bind_to_socket(NULL, port, &amp;sock_fd);<br>
-<br>
-=C2=A0 =C2=A0 if (addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 asprintf((char**)&amp;port, &quot;%d&quot;, atoi(port=
)-1) ;<br>
-=C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;s&#39;)] =3D (char*) port;<br>
-=C2=A0 =C2=A0 =C2=A0 register_agent(turff_ops);<br>
-=C2=A0 =C2=A0 =C2=A0 bound =3D 1;<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;TURFF listening on port: %s\n&quot;, port)=
;<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 if (addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not bind agent to socket\n&quot;);<br>
-=C2=A0 =C2=A0 exit(EXIT_FAILURE);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 listen(sock_fd,1);<br>
-=C2=A0 cli_len =3D sizeof(cli_addr);<br>
-<br>
-=C2=A0 signal(SIGINT, close_sockets);<br>
-<br>
-=C2=A0 while(1) {<br>
-=C2=A0 =C2=A0 ceed_sock_fd =3D accept(sock_fd, &amp;cli_addr, &amp;cli_len=
);<br>
-<br>
-=C2=A0 =C2=A0 if (ceed_sock_fd &lt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 ERR(&quot;ERROR on accept&quot;);<br>
-=C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 /* receive parameters from CODI */<br>
-=C2=A0 =C2=A0 receive_args(ceed_sock_fd, codi_params);<br>
-<br>
-=C2=A0 =C2=A0 if (!strcmp(CODI_NAME, codi_params[KEY(&#39;z&#39;)])) {<br>
-=C2=A0 =C2=A0 =C2=A0 /* save stdout and stderr file descriptors */<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(2, saved_err);<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(1, saved_out);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 /* redirect stdout &amp; stderr to ceed socket */<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(ceed_sock_fd, 2);<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(ceed_sock_fd, 1);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 /* make sure ceed and turff APIs match*/<br>
-=C2=A0 =C2=A0 =C2=A0 if (!strcmp(turff_ops[KEY(&#39;v&#39;)], codi_params[=
KEY(&#39;v&#39;)])) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* process ceed requests */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (process_params(codi_params))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;ERROR processing ceed request=
\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Incompatible versions: TURFF[%s] - =
CODI[%s]\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;v&#39;)], codi_params[KEY(&=
#39;v&#39;)]);<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 /* delay EOM - send as separate buffer */<br>
-=C2=A0 =C2=A0 =C2=A0 fprintf(stdout, TURFF_EOM);<br>
-=C2=A0 =C2=A0 =C2=A0 fflush(stdout);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 /* restore stdout and stderr */<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(saved_err, 2);<br>
-=C2=A0 =C2=A0 =C2=A0 dup2(saved_out, 1);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 /* clear parameters and wait for a new service reques=
t */<br>
-=C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i&lt; KEY_ARR_SZ; i++){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (codi_params[i] !=3D NULL) {<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG(&quot;Received parameter [%c] : %=
s\n&quot;, i+&#39;a&#39;, codi_params[i] );<br>
-#endif<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(codi_params[i]);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 codi_params[i] =3D NULL ;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 /* ceed connected to turff directly. send it EOM*/<br=
>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;Request did not originate from CODI!\n&quo=
t;);<br>
-=C2=A0 =C2=A0 =C2=A0 codi_params[KEY(&#39;e&#39;)] =3D &quot;set&quot;;<br=
>
-=C2=A0 =C2=A0 =C2=A0 send_args(ceed_sock_fd, codi_params);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 close(ceed_sock_fd);<br>
-=C2=A0 }<br>
-}<br>
-<br>
diff --git a/turff/turff_api.c b/turff/turff_api.c<br>
deleted file mode 100755<br>
index 1cd3728..0000000<br>
--- a/turff/turff_api.c<br>
+++ /dev/null<br>
@@ -1,255 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;strings.h&gt;<br>
-#include &lt;unistd.h&gt;<br>
-#include &lt;errno.h&gt;<br>
-#include &lt;ctype.h&gt;<br>
-#include &quot;utils.h&quot;<br>
-<br>
-const char workspace_root[] =3D &quot;/crops&quot;;<br>
-char *turff_ops[KEY_ARR_SZ];<br>
-char *codi_params[KEY_ARR_SZ];<br>
-<br>
-void print_turff_usage(int argc, char *argv[]) {<br>
-=C2=A0 printf(&quot;Usage: %s \n&quot;, argv[0]);<br>
-=C2=A0 printf(&quot; -s port number on which the agent is listening [defau=
lt: 9999]\n&quot;);<br>
-=C2=A0 printf(&quot; -i CODI IP address [default: 127.0.0.1]\n&quot;);<br>
-=C2=A0 printf(&quot; -d CODI port number [default: 10000]\n&quot;);<br>
-=C2=A0 printf(&quot; -n node_id to be sent to CODI [default: TURFFID env v=
ariable]\n&quot;);<br>
-=C2=A0 printf(&quot; -h print this help menu\n&quot;);<br>
-=C2=A0 printf(&quot; -v show turff version\n&quot;);<br>
-}<br>
-<br>
-void init_turff_params(){<br>
-=C2=A0 int i;<br>
-<br>
-=C2=A0 for (i =3D 0; i &lt;=C2=A0 KEY_ARR_SZ; i++)<br>
-=C2=A0 =C2=A0 codi_params[i] =3D NULL;<br>
-<br>
-=C2=A0 turff_ops[KEY(&#39;s&#39;)] =3D TURFF_PORT;<br>
-=C2=A0 turff_ops[KEY(&#39;v&#39;)] =3D VERSION;<br>
-=C2=A0 turff_ops[KEY(&#39;i&#39;)] =3D CODI_IP_NATIVE;<br>
-=C2=A0 turff_ops[KEY(&#39;d&#39;)] =3D CODI_PORT;<br>
-=C2=A0 turff_ops[KEY(&#39;z&#39;)] =3D TURFF_NAME;<br>
-}<br>
-<br>
-void parse_turff_params(int argc, char *argv[]) {<br>
-=C2=A0 int c ;<br>
-<br>
-=C2=A0 init_turff_params() ;<br>
-<br>
-=C2=A0 while ((c =3D getopt(argc, argv, &quot;hvi:d:s:i:n:&quot;)) !=3D -1=
) {<br>
-=C2=A0 =C2=A0 switch (c) {<br>
-=C2=A0 =C2=A0 case &#39;h&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 print_turff_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;v&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;turff version : %s\n&quot;, VERSION);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_SUCCESS);<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;s&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;s&#39;)]=C2=A0 =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;i&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;i&#39;)]=C2=A0 =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;d&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;d&#39;)]=C2=A0 =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;n&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;n&#39;)]=C2=A0 =3D optarg;<br>
-=C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 case &#39;?&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 if (optopt =3D=3D &#39;s&#39;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Option -%c requires an argument.\n&=
quot;, optopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else if (isprint (optopt))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Unknown option `-%c&#39;.\n&quot;, =
optopt);<br>
-=C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 INFO(&quot;Unknown option character `\\x%x&#39=
;.\n&quot;, optopt);<br>
-=C2=A0 =C2=A0 default:<br>
-=C2=A0 =C2=A0 =C2=A0 print_turff_usage(argc, argv);<br>
-=C2=A0 =C2=A0 =C2=A0 exit(EXIT_FAILURE);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int exec_command(char* cmd) {<br>
-=C2=A0 system(cmd);<br>
-=C2=A0 free(cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int build_at_prj(char *platform, char *prj_dir)<br>
-{<br>
-=C2=A0 char cmd[] =3D &quot;cd %s/%s/%s; chmod -R 777 *;./autogen.sh $CONF=
IGURE_FLAGS; make;&quot;;<br>
-=C2=A0 char *build_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;build_cmd, cmd, workspace_root, platform, prj_dir);<b=
r>
-=C2=A0 exec_command(build_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int clean_at_prj(char *platform, char *prj_dir) {<br>
-=C2=A0 char cmd[] =3D &quot;make distclean -C %s/%s/%s/&quot;;<br>
-=C2=A0 char *clean_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;clean_cmd, cmd, workspace_root, platform, prj_dir);<b=
r>
-=C2=A0 exec_command(clean_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int build_cm_prj(char *platform, char *prj_dir)<br>
-{<br>
-=C2=A0 char cmd[] =3D &quot;cd %s/%s/%s; mkdir -p build; cd build; cmake .=
./; make;&quot;;<br>
-=C2=A0 char *build_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;build_cmd, cmd, workspace_root, platform, prj_dir);<b=
r>
-=C2=A0 exec_command(build_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int clean_cm_prj(char *platform, char *prj_dir)<br>
-{<br>
-=C2=A0 char cmd[] =3D &quot;make clean -C %s/%s/%s/build;&quot;;<br>
-=C2=A0 char *clean_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;clean_cmd, cmd, workspace_root, platform, prj_dir);<b=
r>
-=C2=A0 exec_command(clean_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int build_m_prj(char *platform, char *prj_dir, char *make_target)<br>
-{<br>
-=C2=A0 char cmd[] =3D &quot;make %s -C %s/%s/%s&quot;;<br>
-=C2=A0 char *build_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;build_cmd, cmd, make_target, workspace_root, platform=
, prj_dir);<br>
-=C2=A0 exec_command(build_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int clean_m_prj(char *platform, char *prj_dir) {<br>
-=C2=A0 char cmd[] =3D &quot;make clean -C %s/%s/%s/&quot;;<br>
-=C2=A0 char *clean_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;clean_cmd, cmd, workspace_root, platform, prj_dir);<b=
r>
-=C2=A0 exec_command(clean_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int generic_cmd(char *params[]) {<br>
-=C2=A0 char cmd[] =3D &quot;%s %s&quot;;<br>
-=C2=A0 char *gen_cmd;<br>
-<br>
-=C2=A0 asprintf(&amp;gen_cmd, cmd, params[KEY(&#39;g&#39;)], params[KEY(&#=
39;r&#39;)]);<br>
-=C2=A0 exec_command(gen_cmd);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int build_prj(char *params[])<br>
-{<br>
-=C2=A0 if(params[KEY(&#39;t&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 build_at_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39=
;)]);<br>
-=C2=A0 else if(params[KEY(&#39;m&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 build_m_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39;=
)], params[KEY(&#39;m&#39;)]);<br>
-=C2=A0 else if(params[KEY(&#39;k&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 build_cm_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39=
;)]);<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 return -1;<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int clean_prj(char *params[])<br>
-{<br>
-=C2=A0 if(params[KEY(&#39;t&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 clean_at_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39=
;)]);<br>
-=C2=A0 else if(params[KEY(&#39;m&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 clean_m_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39;=
)]);<br>
-=C2=A0 else if(params[KEY(&#39;k&#39;)] !=3D NULL)<br>
-=C2=A0 =C2=A0 clean_cm_prj(params[KEY(&#39;a&#39;)], params[KEY(&#39;p&#39=
;)]);<br>
-=C2=A0 else<br>
-=C2=A0 =C2=A0 return -1;<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int process_params(char *params[]) {<br>
-=C2=A0 int i;<br>
-=C2=A0 for (i =3D 0; i&lt; KEY_ARR_SZ; i++){<br>
-=C2=A0 =C2=A0 if(params[i] !=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 switch (&#39;a&#39; + i) {<br>
-=C2=A0 =C2=A0 =C2=A0 case &#39;b&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 build_prj(params);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 case &#39;c&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 clean_prj(params);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 case &#39;g&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 generic_cmd(params);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - send port map to CODI*/<br>
-int register_agent(char *turff_ops[]) {<br>
-=C2=A0 int turff_sock_fd;<br>
-=C2=A0 struct addrinfo *addr_p;<br>
-=C2=A0 char *turff_id;<br>
-<br>
-=C2=A0 addr_p =3D connect_to_socket(turff_ops[KEY(&#39;i&#39;)], turff_ops=
[KEY(&#39;d&#39;)], &amp;turff_sock_fd);<br>
-<br>
-=C2=A0 if(addr_p =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 INFO(&quot;Please ensure that CODI is running\n&quot;);<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not connect to CODI\n&quot;);<br>
-=C2=A0 } else {<br>
-=C2=A0 =C2=A0 INFO(&quot;Connected to codi on %s:%s\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;i&#39;)], turff_ops[KEY(&#39;d&#39=
;)]);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 if (turff_ops[KEY(&#39;n&#39;)] =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 turff_id =3D getenv(TURFFID);<br>
-=C2=A0 =C2=A0 if(turff_id =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;Unable to read TURFFID from the environmen=
t\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 INFO(&quot;Setting TURFFID to \&quot;default\&quot;\n=
&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;n&#39;)] =3D &quot;default&quot; ;=
<br>
-=C2=A0 =C2=A0 } else<br>
-=C2=A0 =C2=A0 =C2=A0 turff_ops[KEY(&#39;n&#39;)] =3D turff_id ;<br>
-=C2=A0 }<br>
-=C2=A0 sleep(2);<br>
-=C2=A0 send_args(turff_sock_fd, turff_ops);<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
diff --git a/turff/turff_api.h b/turff/turff_api.h<br>
deleted file mode 100755<br>
index c2a3aed..0000000<br>
--- a/turff/turff_api.h<br>
+++ /dev/null<br>
@@ -1,24 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef TURFF_API_H<br>
-#define TURFF_API_H<br>
-<br>
-void parse_turff_params(int argc, char *argv[]);<br>
-int process_params(char *params[]);<br>
-int register_agent(char *turff_ops[]);<br>
-<br>
-#endif<br>
diff --git a/turff/turff_launcher b/turff/turff_launcher<br>
deleted file mode 100755<br>
index 0df0594..0000000<br>
--- a/turff/turff_launcher<br>
+++ /dev/null<br>
@@ -1,43 +0,0 @@<br>
-#!/usr/bin/env bash<br>
-<br>
-help () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo -e &quot;\nThis is a wrapper for launching=
 TURFF&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo -e &quot;usage: $0 -f env_config_file\n&qu=
ot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Options:&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo -e &quot;-f cross compiler environment con=
figuration file&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo -e &quot;-h show this help menu&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0exit 1;<br>
-}<br>
-<br>
-SUPERVISE=3Dsupervise<br>
-EXEC=3D/bin/turff/<br>
-<br>
-while getopts &quot;:hf:&quot; opt; do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case $opt in<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0env_conf_file=3D$OPTARG<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0help<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0exit 1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\?)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0echo &quot;Invalid option: -$OPTARG&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0exit 1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0echo &quot;Option -$OPTARG requires an argument.&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0exit 1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
-done<br>
-<br>
-if [ -n &quot;$env_conf_file&quot; ]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0source $env_conf_file<br>
-fi<br>
-<br>
-if [ $? -eq 0 ] ; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$SUPERVISE $EXEC<br>
-else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Error setting up cross compiler envi=
ronment&quot;<br>
-fi<br>
diff --git a/utils.c b/utils.c<br>
deleted file mode 100755<br>
index 11ff951..0000000<br>
--- a/utils.c<br>
+++ /dev/null<br>
@@ -1,351 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#include &quot;globals.h&quot;<br>
-#include &lt;stdio.h&gt;<br>
-#include &lt;stdlib.h&gt;<br>
-#include &lt;string.h&gt;<br>
-#include &lt;errno.h&gt;<br>
-#include &lt;unistd.h&gt;<br>
-#if defined(_WIN32)<br>
-#include &lt;winsock2.h&gt;<br>
-#include &lt;wspiapi.h&gt;<br>
-#else<br>
-#include &lt;netdb.h&gt;<br>
-#include &lt;sys/select.h&gt;<br>
-#endif<br>
-#include &quot;utils.h&quot;<br>
-<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int redirect_sockets(int in_sock, int out_sock) {<br>
-=C2=A0 int ready, received =3D 0;<br>
-=C2=A0 fd_set read_fd_set ;<br>
-=C2=A0 int size =3D BUFSIZ;<br>
-=C2=A0 void *buf =3D calloc(1, size);<br>
-<br>
-=C2=A0 do {<br>
-=C2=A0 =C2=A0 FD_ZERO(&amp;read_fd_set);<br>
-=C2=A0 =C2=A0 FD_SET(in_sock, &amp;read_fd_set);<br>
-=C2=A0 =C2=A0 ready =3D select(in_sock+1, &amp;read_fd_set, NULL, NULL, NU=
LL);<br>
-=C2=A0 } while (ready=3D=3D-1 &amp;&amp; errno =3D=3D EINTR);<br>
-<br>
-=C2=A0 if (ready &gt; 0 ){<br>
-=C2=A0 =C2=A0 if (FD_ISSET(in_sock, &amp;read_fd_set)) {<br>
-=C2=A0 =C2=A0 =C2=A0 while (size &gt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 received =3D recv(in_sock, buf, size, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (received &lt; 0 ){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Error : %s\n&quot;, strerror(=
errno));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (received =3D=3D 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break ;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size -=3D received;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (strstr((char*) buf, TURFF_EOM)) {<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 send_data(out_sock, (const void =
*) buf,received);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 send_data(out_sock, (const void =
*) buf,received);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 } else if (ready &lt; 0){<br>
-=C2=A0 =C2=A0 free(buf);<br>
-=C2=A0 =C2=A0 ERR(&quot;Select error\n&quot;);<br>
-=C2=A0 }<br>
-=C2=A0 free(buf);<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int send_data(int sock_fd, const void *buf, size_t size) {<br>
-=C2=A0 int n, ready, sent =3D 0;<br>
-=C2=A0 fd_set write_fd_set ;<br>
-=C2=A0 struct timeval timeout;<br>
-<br>
-=C2=A0 timeout.tv_sec =3D (long) 0.3;<br>
-=C2=A0 timeout.tv_usec =3D 0;<br>
-<br>
-=C2=A0 FD_ZERO(&amp;write_fd_set);<br>
-=C2=A0 FD_SET(sock_fd, &amp;write_fd_set);<br>
-=C2=A0 n =3D sock_fd +1;<br>
-<br>
-=C2=A0 ready =3D select(n, NULL, &amp;write_fd_set, NULL, &amp;timeout);<b=
r>
-<br>
-=C2=A0 if (ready) {<br>
-=C2=A0 =C2=A0 while (size &gt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 sent =3D send(sock_fd, buf, size, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 if (sent =3D=3D -1){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Unable to send data. Error: [%d] %s&=
quot;, errno, strerror(errno));<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 size -=3D sent;<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG(&quot;Bytes sent: %d. Bytes remaining: %=
zu\n&quot;, sent, size);<br>
-#endif<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 } else if (ready =3D=3D -1){<br>
-=C2=A0 =C2=A0 =C2=A0 ERR(&quot;Select timeout\n&quot;);<br>
-=C2=A0 }<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-/* TODO - add error checks and return error codes*/<br>
-int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int *do=
ne) {<br>
-=C2=A0 int ready, received =3D 0;<br>
-=C2=A0 fd_set read_fd_set ;<br>
-<br>
-=C2=A0 do {<br>
-=C2=A0 =C2=A0 FD_ZERO(&amp;read_fd_set);<br>
-=C2=A0 =C2=A0 FD_SET(sock_fd, &amp;read_fd_set);<br>
-=C2=A0 =C2=A0 ready =3D select(sock_fd+1, &amp;read_fd_set, NULL, NULL, NU=
LL);<br>
-=C2=A0 } while (ready=3D=3D-1 &amp;&amp; errno =3D=3D EINTR);<br>
-<br>
-=C2=A0 if (ready &gt; 0 ){<br>
-=C2=A0 =C2=A0 if (FD_ISSET(sock_fd, &amp;read_fd_set)) {<br>
-=C2=A0 =C2=A0 =C2=A0 while (size &gt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 received =3D recv(sock_fd, buf, size, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (received &lt; 0 ){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ERR(&quot;Error : %s\n&quot;, strerror(=
errno));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (received =3D=3D 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_ceed)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *done =3D 1;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break ;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size -=3D received;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (strstr((char*) buf, TURFF_EOM) &amp=
;&amp; done !=3D NULL ) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(strstr((char*) buf, TURFF=
_EOM), 0, sizeof(TURFF_EOM));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;%s&quot;, (char*) b=
uf);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *done =3D 1;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (is_ceed) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;%s&quot;, (char*) b=
uf);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf =3D (char*)buf + received;<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG(&quot;\nBytes read: %d Bytes rema=
ining: %zu\n&quot;, received, size);<br>
-#endif<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 } else if (ready &lt; 0){<br>
-=C2=A0 =C2=A0 ERR(&quot;Select error : %s\n&quot;, strerror(errno));<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 return 0;<br>
-}<br>
-<br>
-void send_chunk(int sock_fd, msg_chunk *chunk) {<br>
-=C2=A0 msg_chunk *head;<br>
-=C2=A0 head =3D chunk ;<br>
-=C2=A0 while (chunk !=3D NULL) {<br>
-=C2=A0 =C2=A0 send_data(sock_fd, chunk, sizeof(msg_chunk));<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 DEBUG(&quot;Chunk op_code: %d , Chunk payload: %s\n&quot;, (=
*chunk).op_code,<br>
-=C2=A0 =C2=A0 =C2=A0 (*chunk).arg);<br>
-#endif<br>
-=C2=A0 =C2=A0 chunk =3D chunk-&gt;next ;<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 /* done with this parameter - free all chunks*/<br>
-=C2=A0 while (head !=3D NULL) {<br>
-=C2=A0 =C2=A0 chunk =3D head;<br>
-=C2=A0 =C2=A0 head =3D chunk-&gt;next;<br>
-=C2=A0 =C2=A0 free(chunk);<br>
-=C2=A0 }<br>
-}<br>
-<br>
-int receive_chunk(int sock_fd, msg_chunk *chunk) {<br>
-=C2=A0 return receive_data(sock_fd, chunk, sizeof(msg_chunk), 0, NULL);<br=
>
-}<br>
-<br>
-void send_args(int sock_fd, char *params[]) {<br>
-=C2=A0 int=C2=A0 i, j, num_chunks;<br>
-=C2=A0 msg_chunk *new_chunk, *tail_chunk, *head_chunk ;<br>
-<br>
-=C2=A0 /* send all params in chunks of 20 chars*/<br>
-=C2=A0 for(i =3D 0; i &lt; KEY_ARR_SZ; i++) {<br>
-=C2=A0 =C2=A0 if (params[i] !=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 new_chunk =3D calloc(1, sizeof(msg_chunk));<br>
-=C2=A0 =C2=A0 =C2=A0 head_chunk =3D new_chunk;<br>
-=C2=A0 =C2=A0 =C2=A0 tail_chunk =3D new_chunk;<br>
-=C2=A0 =C2=A0 =C2=A0 num_chunks =3D=C2=A0 ceil((double) strlen(params[i]) =
/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 (sizeof((*new_chunk).arg)-1));<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 for(j =3D 0; j &lt; num_chunks; j++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 (*tail_chunk).op_code =3D i;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (j !=3D 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 strncpy((*tail_chunk).arg, params[i]+(j=
*sizeof((*tail_chunk).arg)-j),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof((*tail_chunk).arg)-1);<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 strncpy((*tail_chunk).arg, params[i], s=
izeof((*tail_chunk).arg)-1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* was this the last chunk*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((j+1) !=3D num_chunks) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_chunk =3D calloc(1, sizeof(msg_chun=
k));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tail_chunk-&gt;next =3D new_chunk;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tail_chunk =3D new_chunk;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 /* this param is ready - send head chunk*/<br>
-=C2=A0 =C2=A0 =C2=A0 send_chunk(sock_fd, head_chunk);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 /* we are done with all params. Send EOM as an individual chunk*/<b=
r>
-=C2=A0 new_chunk =3D calloc(1, sizeof(msg_chunk));<br>
-=C2=A0 (*new_chunk).op_code =3D -1;<br>
-=C2=A0 strcpy((*new_chunk).arg, MSG_TERM);<br>
-=C2=A0 send_chunk(sock_fd, new_chunk);<br>
-}<br>
-<br>
-/* receive all params in chunks of 20 chars including terminator*/<br>
-void receive_args(int sock_fd, char *params[]) {<br>
-=C2=A0 msg_chunk param_chunk;<br>
-=C2=A0 char *tmp;<br>
-=C2=A0 do {<br>
-=C2=A0 =C2=A0 memset(&amp;param_chunk, 0, sizeof(msg_chunk));<br>
-=C2=A0 =C2=A0 receive_chunk(sock_fd, &amp;param_chunk);<br>
-<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 DEBUG(&quot;Chunk op_code: %d , Chunk payload: %s\n&quot;, p=
aram_chunk.op_code,<br>
-=C2=A0 =C2=A0 =C2=A0 &amp;param_chunk.arg);<br>
-#endif<br>
-=C2=A0 =C2=A0 if (param_chunk.op_code !=3D -1) {<br>
-=C2=A0 =C2=A0 =C2=A0 if (params[param_chunk.op_code] =3D=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D calloc(1, sizeof(param_chunk.arg));<br=
>
-=C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D realloc(params[param_chunk.op_code], s=
trlen(params[param_chunk.op_code])+<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(param_chunk.arg));<br>
-=C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 params[param_chunk.op_code] =3D tmp;<br>
-=C2=A0 =C2=A0 =C2=A0 strcpy(params[param_chunk.op_code] + strlen(params[pa=
ram_chunk.op_code]),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 param_chunk.arg);<br>
-#ifdef DBG<br>
-=C2=A0 =C2=A0 =C2=A0 DEBUG(&quot;Chunk op_code: %d , parameter: %s\n&quot;=
, param_chunk.op_code,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 params[param_chunk.op_code]);<br>
-#endif<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }while(param_chunk.op_code !=3D -1); /* not EOM chunk*/<br>
-}<br>
-<br>
-struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int* sock_f=
d_out) {<br>
-=C2=A0 int sock_fd, result;<br>
-=C2=A0 struct addrinfo criteria, *srv_addr, *addr_p;<br>
-<br>
-#if defined(_WIN32)<br>
-=C2=A0 WSADATA wsa_data;<br>
-=C2=A0 int res =3D WSAStartup(MAKEWORD(2, 2), &amp;wsa_data);<br>
-=C2=A0 if (res !=3D 0) {<br>
-=C2=A0 =C2=A0 ERR(&quot;WSAStartup failed: %d\n&quot;, res);<br>
-=C2=A0 }<br>
-#endif<br>
-<br>
-=C2=A0 /* connect to agent */<br>
-=C2=A0 memset(&amp;criteria, 0, sizeof(criteria));<br>
-=C2=A0 criteria.ai_family =3D AF_INET;<br>
-=C2=A0 criteria.ai_socktype =3D SOCK_STREAM;<br>
-=C2=A0 criteria.ai_flags =3D 0;<br>
-=C2=A0 criteria.ai_protocol =3D 0;<br>
-<br>
-=C2=A0 result =3D getaddrinfo(ip_in, port_in, &amp;criteria,&amp;srv_addr)=
;<br>
-<br>
-=C2=A0 if(result !=3D 0) {<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not get address info list : %s\n&quot;, gai_=
strerror(result));<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 for(addr_p =3D srv_addr; addr_p !=3D NULL; addr_p =3D addr_p-&gt;ai=
_next) {<br>
-=C2=A0 =C2=A0 *sock_fd_out =3D socket(addr_p-&gt;ai_family, addr_p-&gt;ai_=
socktype, addr_p-&gt;ai_protocol);<br>
-<br>
-=C2=A0 =C2=A0 if (*sock_fd_out =3D=3D -1)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 continue;<br>
-<br>
-=C2=A0 =C2=A0 if (connect(*sock_fd_out, addr_p-&gt;ai_addr, addr_p-&gt;ai_=
addrlen) !=3D -1)<br>
-=C2=A0 =C2=A0 =C2=A0 break;=C2=A0 /* Connected */<br>
-<br>
-=C2=A0 =C2=A0 close(*sock_fd_out);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 return addr_p ;<br>
-}<br>
-<br>
-<br>
-struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int* soc=
k_fd_out) {<br>
-=C2=A0 struct addrinfo criteria, *srv_addr;<br>
-=C2=A0 struct addrinfo *addr_p;<br>
-=C2=A0 int result, opt =3D 1;<br>
-<br>
-=C2=A0 memset(&amp;criteria, 0, sizeof(criteria));<br>
-=C2=A0 criteria.ai_family =3D AF_INET;<br>
-=C2=A0 criteria.ai_socktype =3D SOCK_STREAM;<br>
-=C2=A0 criteria.ai_flags =3D AI_PASSIVE;<br>
-=C2=A0 criteria.ai_protocol =3D 0;<br>
-=C2=A0 criteria.ai_canonname =3D NULL;<br>
-=C2=A0 criteria.ai_addr =3D NULL;<br>
-=C2=A0 criteria.ai_next =3D NULL;<br>
-<br>
-=C2=A0 result =3D getaddrinfo(NULL, port_in, &amp;criteria, &amp;srv_addr)=
;<br>
-<br>
-=C2=A0 if (result !=3D 0) {<br>
-=C2=A0 =C2=A0 ERR(&quot;Could not get address info list\n&quot;);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 for (addr_p =3D srv_addr; addr_p !=3D NULL; addr_p =3D addr_p-&gt;a=
i_next) {<br>
-=C2=A0 =C2=A0 *sock_fd_out =3D socket(addr_p-&gt;ai_family, addr_p-&gt;ai_=
socktype, addr_p-&gt;ai_protocol);<br>
-<br>
-=C2=A0 =C2=A0 if (*sock_fd_out =3D=3D -1)<br>
-=C2=A0 =C2=A0 =C2=A0 continue;<br>
-<br>
-=C2=A0 =C2=A0 if (setsockopt(*sock_fd_out, SOL_SOCKET, SO_REUSEADDR,<br>
-=C2=A0 =C2=A0 =C2=A0 (char *)&amp;opt, sizeof(opt)) &lt; 0) {<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 close(*sock_fd_out);<br>
-=C2=A0 =C2=A0 =C2=A0 ERR(&quot;setsockopt failed\n&quot;);<br>
-=C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 if (bind(*sock_fd_out, addr_p-&gt;ai_addr, addr_p-&gt;ai_add=
rlen) =3D=3D 0)<br>
-=C2=A0 =C2=A0 =C2=A0 break;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* Success */<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 close(*sock_fd_out);<br>
-=C2=A0 }<br>
-<br>
-=C2=A0 freeaddrinfo(srv_addr);<br>
-=C2=A0 return addr_p;<br>
-}<br>
-<br>
-void copy_params(char *in[], char *out[]) {<br>
-=C2=A0 int i;<br>
-=C2=A0 for (i =3D 0; i&lt; KEY_ARR_SZ; i++){<br>
-=C2=A0 =C2=A0 if (in[i] !=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 asprintf(&amp;out[i],&quot;%s&quot;,in[i]);<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-}<br>
-<br>
-void free_params(char *params[]) {<br>
-=C2=A0 int i;<br>
-=C2=A0 for (i =3D 0; i&lt; KEY_ARR_SZ; i++){<br>
-=C2=A0 =C2=A0 if (params[i] !=3D NULL) {<br>
-=C2=A0 =C2=A0 =C2=A0 free(params[i]);<br>
-=C2=A0 =C2=A0 =C2=A0 params[i] =3D NULL ;<br>
-=C2=A0 =C2=A0 }<br>
-=C2=A0 }<br>
-}<br>
diff --git a/utils.h b/utils.h<br>
deleted file mode 100755<br>
index b4cc534..0000000<br>
--- a/utils.h<br>
+++ /dev/null<br>
@@ -1,30 +0,0 @@<br>
-/*<br>
- * Copyright (C) 2016 Intel Corporation<br>
- *<br>
- * Author: Todor Minchev &lt;<a href=3D"mailto:todor.minchev@linux.intel.c=
om" target=3D"_blank">todor.minchev@linux.intel.com</a>&gt;<br>
- *<br>
- * This program is free software; you can redistribute it and/or modify it=
<br>
- * under the terms and conditions of the GNU General Public License,<br>
- * version 2, or (at your option) any later version, as published by<br>
- * the Free Software Foundation.<br>
- *<br>
- * This program is distributed in the hope it will be useful, but WITHOUT<=
br>
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or<b=
r>
- * FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU General Public Lice=
nse for<br>
- * more details.<br>
- */<br>
-<br>
-#ifndef UTILS_H<br>
-#define UTILS_H<br>
-<br>
-int send_data(int sock_fd, const void *buf, size_t size);<br>
-int receive_data(int sock_fd, void *buf, size_t size, int is_ceed, int *do=
ne);<br>
-void send_args(int sock_fd, char *params[]);<br>
-void receive_args(int sock_fd, char *params[]);<br>
-struct addrinfo* connect_to_socket(char *ip_in, char *port_in, int* sock_f=
d_out);<br>
-struct addrinfo* bind_to_socket(char *ip_in, const char *port_in, int* soc=
k_fd_out);<br>
-int redirect_sockets(int in_sock, int out_sock);<br>
-void free_params(char *params[]);<br>
-void copy_params(char *in[], char *out[]);<br>
-<br>
-#endif<br>
-- <br>
2.25.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58970): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58970" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58970</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96222152/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
96222152/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000066a54c060818a2c8--

