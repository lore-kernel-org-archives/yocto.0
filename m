Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10457.1602158693294786643
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 05:04:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TaHojq11;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: idadelm@gmail.com)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B498F38C1164
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 05:04:51 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id e17so6288071wru.12
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 05:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Grhz1LNKVa/aENP27NGn2zrVMDRZxwYMxY4AfcgxPwo=;
        b=TaHojq115GmsDVyT/b6yb1nBUT1sKm5uDn4jnQyS4vwFF4yTCQMmabsJvyH/bf+FcO
         /h4ReCg2nJPDOqc4+HxkuBqa2ULjB5kkqLV/KEDvqoF3Y68U3jJnaXXyIgaRGRiZ8koL
         Z5uU3QuqU7hoDD6/aDsYig7krgvRFYgHI80zgh3Oq2hVzGBLKukaowMrAUtzL9f20iSn
         DeMEYf3W6MvXGahIsiuw4aO/vcU7ChMNgGwiB8MIN7mWB2JUWoDe53ndB4atRTbnvVvP
         KPreDCEwdz3qSHZKS0Y8ZH/yv7/X1ZYnTqaH3NcXbw52+DiHxsyN7iuHF2kDNgzCbZ/L
         Ssyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Grhz1LNKVa/aENP27NGn2zrVMDRZxwYMxY4AfcgxPwo=;
        b=kFzNGefV2YoHnaHlHmCtCmp1cMjQMd5evmhIdCG8oDfyJ1HxaZPMnwYYtEqNO9D8gR
         XaG3ib1PtafBWHKkoJCr0qoqHCZUXO9rlvXIgn4SKqrW4IlEm4R3D3s2Vo54ZdTqzXIq
         Nqe9hYb/TLuugfAb3NhYNToja3uVSi5DPgBKgYKlg7Tw7aqXtrU5FrUvAlRK25zUnjhe
         0e1juJeeaTTIgWJvbsj4A640IttvXeFnR7qxR1u+M3gyzw6du/O3g5zGXYSMb6eavCua
         /0+ZlVdb/vILYGdDibUwNmWspDjzlpjWdjWpRWqAcgO8zxYzmPpiff9+vGWhnLMtUgcs
         dkSg==
X-Gm-Message-State: AOAM53310Q2VF5a1WmfQCl0QX0bygsad2sTlFplOuc3gohQ0CExGS4AA
	q45oGVC851cxi6lrbXcfrIc=
X-Google-Smtp-Source: ABdhPJxJBdOnZ00fbd4xnWMzulFRH1BMtvwDbRcOROg/yvggN1445qN+Go2b59RkzHVIsuaLpqR0Kw==
X-Received: by 2002:a5d:5281:: with SMTP id c1mr8853588wrv.184.1602158686441;
        Thu, 08 Oct 2020 05:04:46 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.138])
        by smtp.gmail.com with ESMTPSA id c21sm6804636wme.36.2020.10.08.05.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 05:04:45 -0700 (PDT)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org,
	Meh Mbeh Ida Delphine <idadelm@gmail.com>
Subject: [prelink-cross] Added SPDX license headers to all .c and .h source files
Date: Thu,  8 Oct 2020 13:04:23 +0100
Message-Id: <20201008120423.27548-1-idadelm@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
---
 src/arch-alpha.c   | 15 ++-------
 src/arch-arm.c     | 15 ++-------
 src/arch-cris.c    | 15 ++-------
 src/arch-i386.c    | 15 ++-------
 src/arch-ia64.c    | 15 ++-------
 src/arch-mips.c    | 77 ++--------------------------------------------
 src/arch-ppc.c     | 15 ++-------
 src/arch-ppc64.c   | 15 ++-------
 src/arch-s390.c    | 15 ++-------
 src/arch-s390x.c   | 15 ++-------
 src/arch-sh.c      | 15 ++-------
 src/arch-sparc.c   | 15 ++-------
 src/arch-sparc64.c | 15 ++-------
 src/arch-x86_64.c  | 15 ++-------
 src/cache.c        | 15 ++-------
 src/canonicalize.c | 16 ++--------
 src/checksum.c     | 15 ++-------
 src/conflict.c     | 15 ++-------
 src/crc32.c        | 15 ++-------
 src/cxx.c          | 15 ++-------
 src/data.c         | 15 ++-------
 src/doit.c         | 15 ++-------
 src/dso.c          | 15 ++-------
 src/dwarf2.c       | 15 ++-------
 src/dwarf2.h       | 15 ++-------
 src/exec.c         | 15 ++-------
 src/execle_open.c  | 15 ++-------
 src/execstack.c    | 15 ++-------
 src/fptr.c         | 15 ++-------
 src/fptr.h         | 15 ++-------
 src/gather.c       | 15 ++-------
 src/get.c          | 15 ++-------
 src/hashtab.c      | 30 ++----------------
 src/hashtab.h      | 28 ++---------------
 src/layout.c       | 15 ++-------
 src/layout.h       | 15 ++-------
 src/main.c         | 15 ++-------
 src/md5.c          | 15 ++-------
 src/md5.h          | 15 ++-------
 src/mdebug.c       | 15 ++-------
 src/prelink.c      | 15 ++-------
 src/prelink.h      | 15 ++-------
 src/prelinktab.h   | 15 ++-------
 src/reloc-info.c   | 15 ++-------
 src/reloc-info.h   | 15 ++-------
 src/reloc.c        | 15 ++-------
 src/reloc.h        | 15 ++-------
 src/sha.c          |  2 ++
 src/sha.h          |  2 ++
 src/space.c        | 15 ++-------
 src/space.h        | 15 ++-------
 src/stabs.c        | 15 ++-------
 src/undo.c         | 15 ++-------
 src/undoall.c      | 15 ++-------
 src/verify.c       | 15 ++-------
 55 files changed, 110 insertions(+), 780 deletions(-)

diff --git a/src/arch-alpha.c b/src/arch-alpha.c
index 7802a3e..bc5c192 100644
--- a/src/arch-alpha.c
+++ b/src/arch-alpha.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-arm.c b/src/arch-arm.c
index eec7c57..b5ea886 100644
--- a/src/arch-arm.c
+++ b/src/arch-arm.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-cris.c b/src/arch-cris.c
index 3272779..634bf9f 100644
--- a/src/arch-cris.c
+++ b/src/arch-cris.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-i386.c b/src/arch-i386.c
index a1e0fcc..5a0b2ca 100644
--- a/src/arch-i386.c
+++ b/src/arch-i386.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-ia64.c b/src/arch-ia64.c
index 6039115..56196de 100644
--- a/src/arch-ia64.c
+++ b/src/arch-ia64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-mips.c b/src/arch-mips.c
index 02c608f..d0e69d4 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -2,81 +2,8 @@
    Written by Richard Sandiford <richard@codesourcery.com>, 2006
    Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
-
-/* GENERAL NOTES
-
-   The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
-   depends on the symbol index.  If the index is less than DT_MIPS_GOTSYM,
-   EA is the symbol's st_value "plus displacement".  If the index is greater
-   than or equal to DT_MIPS_GOTSYM, EA is the original value of the
-   associated GOT entry.
-
-   However, glibc's dynamic linker implements a different definition.
-   If the index is less than DT_MIPS_GOTSYM, the dynamic linker adds the
-   symbol's st_value and the base address to the addend.  If the index
-   is greater than or equal to DT_MIPS_GOTSYM, the dynamic linker adds
-   the final symbol value to the addend.
-
-   MIPS GOTs are divided into three parts:
-
-     - Reserved entries (of which GNU objects have 2)
-     - Local entries
-     - Global entries
-
-   DT_MIPS_LOCAL_GOTNO gives the total number of reserved and local
-   entries.  The local entries all hold virtual addresses and the
-   dynamic linker will add the base address to each one.
-
-   Unlike most other architectures, the MIPS ABI does not use
-   relocations to initialize the global GOT entries.  Instead, global
-   GOT entry X is mapped to dynamic symbol DT_MIPS_GOTSYM + X, and there
-   are a total of DT_MIPS_SYMTABNO - DT_MIPS_GOTSYM global GOT entries.
-
-   The interpretation of a global GOT entry depends on the symbol entry
-   and the initial GOT contents.  The psABI lists the following cases:
-
-      st_shndx    st_type     st_value      initial GOT value
-      --------    -------     --------      -----------------
-   A: SHN_UNDEF   STT_FUNC    0             st_value (== 0) / QS
-   B: SHN_UNDEF   STT_FUNC    stub address  st_value / QS
-   C: SHN_UNDEF   all others  0             st_value (== 0) / QS
-   D: SHN_COMMON  any         alignment     0 / QS
-   E: all others  STT_FUNC    value         st_value / stub address
-   F: all others  all others  value         st_value
-
-   (wording slightly modified from the psABI table).  Here, QS denotes
-   Quickstart values.
-
-   The dynamic linker treats each case as follows:
-
-   - [A, B when not binding lazily, C, D, E when not binding lazily, F]
-     Resolve the symbol and store its value in the GOT.
-
-   - [B when binding lazily] Set the GOT entry to the st_value plus
-     the base address.
-
-   - [E when binding lazily] If the GOT entry is different from the st_value,
-     add the base addreess to the GOT entry.  Otherwise resolve the symbol
-     and store its value in the GOT (as for A, C, etc).
-
-   As the table shows, we can install Quickstart values for types A-D.
-   Installing Quickstart values for type F should be a no-op, because the
-   GOT should already hold the desired value.  Installing Quickstart values
-   for type E would either be a no-op (if the GOT entry already contains
-   st_value) or would lose the address of the lazy binding stub.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-ppc.c b/src/arch-ppc.c
index e22e5d5..e296d79 100644
--- a/src/arch-ppc.c
+++ b/src/arch-ppc.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
index a764b99..3f2c375 100644
--- a/src/arch-ppc64.c
+++ b/src/arch-ppc64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-s390.c b/src/arch-s390.c
index e5fe130..1a65f5c 100644
--- a/src/arch-s390.c
+++ b/src/arch-s390.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-s390x.c b/src/arch-s390x.c
index e4d82f7..926cfa2 100644
--- a/src/arch-s390x.c
+++ b/src/arch-s390x.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sh.c b/src/arch-sh.c
index 1b11312..a852266 100644
--- a/src/arch-sh.c
+++ b/src/arch-sh.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sparc.c b/src/arch-sparc.c
index e016a79..d841a28 100644
--- a/src/arch-sparc.c
+++ b/src/arch-sparc.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
index aee4601..c6a1027 100644
--- a/src/arch-sparc64.c
+++ b/src/arch-sparc64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 2f6c551..249661a 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -3,19 +3,8 @@
    Copyright (C) 2011 Wind River Systems, Inc.
    x32 support by Mark Hatle <mark.hatle@windriver.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/cache.c b/src/cache.c
index 1cc3217..b476581 100644
--- a/src/cache.c
+++ b/src/cache.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/canonicalize.c b/src/canonicalize.c
index 79df44e..e94ec06 100644
--- a/src/canonicalize.c
+++ b/src/canonicalize.c
@@ -2,20 +2,8 @@
    Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, write to the Free
-   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
-   02111-1307 USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <assert.h>
 #include <stdlib.h>
diff --git a/src/checksum.c b/src/checksum.c
index 20a23a0..5c80fc5 100644
--- a/src/checksum.c
+++ b/src/checksum.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/conflict.c b/src/conflict.c
index 5613ace..83713c5 100644
--- a/src/conflict.c
+++ b/src/conflict.c
@@ -3,19 +3,8 @@
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
    Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/crc32.c b/src/crc32.c
index f36abb5..81e990b 100644
--- a/src/crc32.c
+++ b/src/crc32.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <stdint.h>
diff --git a/src/cxx.c b/src/cxx.c
index 4391ebe..4b911a9 100644
--- a/src/cxx.c
+++ b/src/cxx.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/data.c b/src/data.c
index 751f96f..d648744 100644
--- a/src/data.c
+++ b/src/data.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include "prelink.h"
diff --git a/src/doit.c b/src/doit.c
index 3784866..42e6819 100644
--- a/src/doit.c
+++ b/src/doit.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/dso.c b/src/dso.c
index 949abf9..9cce846 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/dwarf2.c b/src/dwarf2.c
index b9588b1..d230bb7 100644
--- a/src/dwarf2.c
+++ b/src/dwarf2.c
@@ -2,19 +2,8 @@
    Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/dwarf2.h b/src/dwarf2.h
index b0c80b6..888f2c7 100644
--- a/src/dwarf2.h
+++ b/src/dwarf2.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #define DW_TAG_padding			0x00
 #define DW_TAG_array_type		0x01
diff --git a/src/exec.c b/src/exec.c
index ca7fd14..431690e 100644
--- a/src/exec.c
+++ b/src/exec.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/execle_open.c b/src/execle_open.c
index 2ee5cbc..0d4bef5 100644
--- a/src/execle_open.c
+++ b/src/execle_open.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/execstack.c b/src/execstack.c
index 97fb453..fe044c5 100644
--- a/src/execstack.c
+++ b/src/execstack.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2003.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/fptr.c b/src/fptr.c
index cfe3aed..65a2804 100644
--- a/src/fptr.c
+++ b/src/fptr.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/fptr.h b/src/fptr.h
index 36ef7c6..c4ce3f7 100644
--- a/src/fptr.h
+++ b/src/fptr.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef FPTR_H
 #define FPTR_H
diff --git a/src/gather.c b/src/gather.c
index 277f1b5..0e6876b 100644
--- a/src/gather.c
+++ b/src/gather.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*//
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/get.c b/src/get.c
index 0659962..bb58b1e 100644
--- a/src/get.c
+++ b/src/get.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/hashtab.c b/src/hashtab.c
index fa27446..99a656d 100644
--- a/src/hashtab.c
+++ b/src/hashtab.c
@@ -2,34 +2,8 @@
    Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (vmakarov@cygnus.com).
 
-This file is part of the libiberty library.
-Libiberty is free software; you can redistribute it and/or
-modify it under the terms of the GNU Library General Public
-License as published by the Free Software Foundation; either
-version 2 of the License, or (at your option) any later version.
-
-Libiberty is distributed in the hope that it will be useful,
-but WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-Library General Public License for more details.
-
-You should have received a copy of the GNU Library General Public
-License along with libiberty; see the file COPYING.LIB.  If
-not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
-Boston, MA 02111-1307, USA.  */
-
-/* This package implements basic hash table functionality.  It is possible
-   to search for an entry, create an entry and destroy an entry.
-
-   Elements in the table are generic pointers.
-
-   The size of the table is not fixed; if the occupancy of the table
-   grows too high the hash table will be expanded.
-
-   The abstract data implementation is based on generalized Algorithm D
-   from Knuth's book "The art of computer programming".  Hash table is
-   expanded by creation of new hash table and transferring elements from
-   the old table to the new table. */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <sys/types.h>
diff --git a/src/hashtab.h b/src/hashtab.h
index 31e63e0..dfbe410 100644
--- a/src/hashtab.h
+++ b/src/hashtab.h
@@ -2,32 +2,8 @@
    Copyright (C) 1999, 2000 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (vmakarov@cygnus.com).
 
-This program is free software; you can redistribute it and/or modify
-it under the terms of the GNU General Public License as published by
-the Free Software Foundation; either version 2 of the License, or
-(at your option) any later version.
-
-This program is distributed in the hope that it will be useful,
-but WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-GNU General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; if not, write to the Free Software
-Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
-
-/* This package implements basic hash table functionality.  It is possible
-   to search for an entry, create an entry and destroy an entry.
-
-   Elements in the table are generic pointers.
-
-   The size of the table is not fixed; if the occupancy of the table
-   grows too high the hash table will be expanded.
-
-   The abstract data implementation is based on generalized Algorithm D
-   from Knuth's book "The art of computer programming".  Hash table is
-   expanded by creation of new hash table and transferring elements from
-   the old table to the new table.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef __HASHTAB_H__
 #define __HASHTAB_H__
diff --git a/src/layout.c b/src/layout.c
index 859ab66..29be7a3 100644
--- a/src/layout.c
+++ b/src/layout.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/layout.h b/src/layout.h
index f481d22..1b10bc0 100644
--- a/src/layout.h
+++ b/src/layout.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef LAYOUT_H
 #define LAYOUT_H
diff --git a/src/main.c b/src/main.c
index 6ba89d5..39e44ad 100644
--- a/src/main.c
+++ b/src/main.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/md5.c b/src/md5.c
index 0d2fdef..f465bfd 100644
--- a/src/md5.c
+++ b/src/md5.c
@@ -4,19 +4,8 @@
    NOTE: The canonical source of this file is maintained with the GNU C
    Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
 
-   This program is free software; you can redistribute it and/or modify it
-   under the terms of the GNU General Public License as published by the
-   Free Software Foundation; either version 2, or (at your option) any
-   later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 /* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
 
diff --git a/src/md5.h b/src/md5.h
index 55f6195..eb0b85e 100644
--- a/src/md5.h
+++ b/src/md5.h
@@ -4,19 +4,8 @@
    NOTE: The canonical source of this file is maintained with the GNU C
    Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
 
-   This program is free software; you can redistribute it and/or modify it
-   under the terms of the GNU General Public License as published by the
-   Free Software Foundation; either version 2, or (at your option) any
-   later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef _MD5_H
 #define _MD5_H 1
diff --git a/src/mdebug.c b/src/mdebug.c
index 4c22d2f..eb6d1b5 100644
--- a/src/mdebug.c
+++ b/src/mdebug.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/prelink.c b/src/prelink.c
index 64c4fea..bf774c9 100644
--- a/src/prelink.c
+++ b/src/prelink.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/prelink.h b/src/prelink.h
index 39c4390..4c4c243 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -4,19 +4,8 @@
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
    Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef PRELINK_H
 #define PRELINK_H
diff --git a/src/prelinktab.h b/src/prelinktab.h
index f41c79c..a404292 100644
--- a/src/prelinktab.h
+++ b/src/prelinktab.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef PRELINKTAB_H
 #define PRELINKTAB_H
diff --git a/src/reloc-info.c b/src/reloc-info.c
index 4ce333c..d51cfc1 100644
--- a/src/reloc-info.c
+++ b/src/reloc-info.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2008 CodeSourcery
    Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 
diff --git a/src/reloc-info.h b/src/reloc-info.h
index a8f8b7c..592a92c 100644
--- a/src/reloc-info.h
+++ b/src/reloc-info.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2008 CodeSourcery
    Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef RELOC_INFO_H
 #define RELOC_INFO_H
diff --git a/src/reloc.c b/src/reloc.c
index deb0abe..9883dc7 100644
--- a/src/reloc.c
+++ b/src/reloc.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/reloc.h b/src/reloc.h
index a2ceff9..ee91f7e 100644
--- a/src/reloc.h
+++ b/src/reloc.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef RELOC_H
 #define RELOC_H
diff --git a/src/sha.c b/src/sha.c
index cfbc956..fb31a9e 100644
--- a/src/sha.c
+++ b/src/sha.c
@@ -6,6 +6,8 @@
    Credits:
       Robert Klep <robert@ilse.nl>  -- Expansion function fix
    NOTE: The canonical source of this file is maintained in GNU coreutils.
+
+* SPDX-License-Identifier: GPL-2.0-or-later
 */
 
 #include <sys/types.h>
diff --git a/src/sha.h b/src/sha.h
index 13583e3..b101b1f 100644
--- a/src/sha.h
+++ b/src/sha.h
@@ -2,6 +2,8 @@
    library functions.
 
    Copyright (C) 1999, Scott G. Miller
+   
+* SPDX-License-Identifier: GPL-2.0-or-later
 */
 
 #ifndef _SHA_H
diff --git a/src/space.c b/src/space.c
index 4bd4760..8223daf 100644
--- a/src/space.c
+++ b/src/space.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/space.h b/src/space.h
index 5c9f725..59d087c 100644
--- a/src/space.h
+++ b/src/space.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2004 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef SPACE_H
 #define SPACE_H
diff --git a/src/stabs.c b/src/stabs.c
index c0a5a6a..fd0ca28 100644
--- a/src/stabs.c
+++ b/src/stabs.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/undo.c b/src/undo.c
index 4c38dab..e6cfae3 100644
--- a/src/undo.c
+++ b/src/undo.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/undoall.c b/src/undoall.c
index 55d2a0b..44a0b4e 100644
--- a/src/undoall.c
+++ b/src/undoall.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2005 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/verify.c b/src/verify.c
index 7f530c0..991794a 100644
--- a/src/verify.c
+++ b/src/verify.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <jakub@redhat.com>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <config.h>
 #include <assert.h>
-- 
2.17.1

