Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.14117.1602169709151618066
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 08:08:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m/y0Ewzx;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: idadelm@gmail.com)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0709C38C094A
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 08:08:28 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id dn5so6180365edb.10
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 08:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6C0syd6Q7E8hhgKnLE3D95TZf2mnjNGb1cBbICA1ZmA=;
        b=m/y0Ewzx2D5IZY/cYVxfwiD88u86YlHAjybJxeG+7wdxOZJgpljNF8JOoJztUIGbm+
         Eol+dH7thD1AjG3hFC33FWb/QXz2zdScWcM5x2lgz2OUHfi7pshoSVUZtq4jWuc1AE+O
         MFxfhViUHy6I1EvoaLiofcrLGyBuC/8x+V269zYGvvOjmSOVF0uOE+fKej4Ij64nxh8k
         JCil0YRDgMjV9GIoH97Iz3G49cS7DdZDp2wnz+wlMfFRS62kED49mR+MDjkGzYLhEKnX
         2u1KuTPF5cJ8jtecM+rtOC3AqpwOqkGBSows8ryaj0E0IEdUbEo1TCph5G9vkrbc9lTa
         0LoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6C0syd6Q7E8hhgKnLE3D95TZf2mnjNGb1cBbICA1ZmA=;
        b=rYb9RuXTv9lR/96B5AWg/9iYgvZBgl3vqAAwaJlfE5AQNxCm9+fc6PkLiRNoc/BV/Q
         7u1Lb24k07KTiTmjdkl/9a/hpf0HHwlf4xmB1lTo22RR9Osa4KgIkVBQ6fyGcEQxriEP
         keVhtZZw7cRQcdfWxTYMeDcLDKQTZ5KZVNm8KX3biYWptDgyXXRzC4br392jkDuocd6K
         ZuBjq8kw5bqVd2vWwsY90wfClsTOQhZ9TKZDHdRdA7xPRPG8S9W+QAP0jLWSi1dYsSzM
         19gAggbdDzQ/qh0tFU/huJqUjnj8Dsz4pkftzhFACDPu748okmimVxvRUXL+cPGA+dp6
         GtNA==
X-Gm-Message-State: AOAM532IxzjBet9ZpAHzOL02yLDet0ooyRlwVxXpd3PGNQSyKnzkCOp3
	ZhUtz8itSbKJPTgz4oV4Owk=
X-Google-Smtp-Source: ABdhPJzyMwszRMQfri4K0FKmNQLTr9aW0qJCx4NJ0lSyNDLxfzY763Z2xf8ebQG/xF2SD9FRBfVuwg==
X-Received: by 2002:a05:6402:214:: with SMTP id t20mr9697486edv.85.1602169704737;
        Thu, 08 Oct 2020 08:08:24 -0700 (PDT)
Received: from localhost.localdomain ([129.0.101.9])
        by smtp.gmail.com with ESMTPSA id j5sm4387712ejt.52.2020.10.08.08.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 08:08:23 -0700 (PDT)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org,
	Meh Mbeh Ida Delphine <idadelm@gmail.com>
Subject: [prelink-cross v2] Reverted to previous commit and added the SPDX identifiers
Date: Thu,  8 Oct 2020 16:08:02 +0100
Message-Id: <20201008150802.8689-1-idadelm@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
---
 src/arch-alpha.c   | 15 ++-------------
 src/arch-arm.c     | 15 ++-------------
 src/arch-cris.c    | 15 ++-------------
 src/arch-i386.c    | 15 ++-------------
 src/arch-ia64.c    | 15 ++-------------
 src/arch-mips.c    | 18 ++++--------------
 src/arch-ppc.c     | 15 ++-------------
 src/arch-ppc64.c   | 15 ++-------------
 src/arch-s390.c    | 15 ++-------------
 src/arch-s390x.c   | 15 ++-------------
 src/arch-sh.c      | 15 ++-------------
 src/arch-sparc.c   | 16 +++-------------
 src/arch-sparc64.c | 15 ++-------------
 src/arch-x86_64.c  | 15 ++-------------
 src/cache.c        | 15 ++-------------
 src/canonicalize.c | 16 ++--------------
 src/checksum.c     | 15 ++-------------
 src/conflict.c     | 15 ++-------------
 src/crc32.c        | 15 ++-------------
 src/cxx.c          | 15 ++-------------
 src/data.c         | 15 ++-------------
 src/doit.c         | 15 ++-------------
 src/dso.c          | 15 ++-------------
 src/dwarf2.c       | 15 ++-------------
 src/dwarf2.h       | 15 ++-------------
 src/exec.c         | 15 ++-------------
 src/execle_open.c  | 15 ++-------------
 src/execstack.c    | 15 ++-------------
 src/fptr.c         | 15 ++-------------
 src/fptr.h         | 15 ++-------------
 src/gather.c       | 15 ++-------------
 src/get.c          | 15 ++-------------
 src/hashtab.c      | 21 +++++----------------
 src/hashtab.h      | 19 +++++--------------
 src/layout.c       | 15 ++-------------
 src/layout.h       | 15 ++-------------
 src/main.c         | 15 ++-------------
 src/md5.c          | 16 ++--------------
 src/md5.h          | 15 ++-------------
 src/mdebug.c       | 15 ++-------------
 src/prelink.c      | 15 ++-------------
 src/prelink.h      | 15 ++-------------
 src/prelinktab.h   | 15 ++-------------
 src/reloc-info.c   | 15 ++-------------
 src/reloc-info.h   | 15 ++-------------
 src/reloc.c        | 15 ++-------------
 src/reloc.h        | 15 ++-------------
 src/sha.c          |  4 ++++
 src/sha.h          |  4 ++++
 src/space.c        | 15 ++-------------
 src/space.h        | 15 ++-------------
 src/stabs.c        | 15 ++-------------
 src/undo.c         | 15 ++-------------
 src/undoall.c      | 15 ++-------------
 src/verify.c       | 15 ++-------------
 55 files changed, 123 insertions(+), 696 deletions(-)

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
index 02c608f..9431759 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -2,20 +2,6 @@
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
 /* GENERAL NOTES
 
    The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
@@ -78,6 +64,10 @@
    for type E would either be a no-op (if the GOT entry already contains
    st_value) or would lose the address of the lazy binding stub.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
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
index e016a79..41b297d 100644
--- a/src/arch-sparc.c
+++ b/src/arch-sparc.c
@@ -1,19 +1,9 @@
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
+/*
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
index 277f1b5..0d1e7c4 100644
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
+*/
 
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
index fa27446..12e4f30 100644
--- a/src/hashtab.c
+++ b/src/hashtab.c
@@ -1,22 +1,7 @@
 /* An expandable hash tables datatype.
    Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (vmakarov@cygnus.com).
-
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
+*/
 
 /* This package implements basic hash table functionality.  It is possible
    to search for an entry, create an entry and destroy an entry.
@@ -31,6 +16,10 @@ Boston, MA 02111-1307, USA.  */
    expanded by creation of new hash table and transferring elements from
    the old table to the new table. */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <sys/types.h>
 #include <stdlib.h>
diff --git a/src/hashtab.h b/src/hashtab.h
index 31e63e0..d412057 100644
--- a/src/hashtab.h
+++ b/src/hashtab.h
@@ -1,20 +1,7 @@
 /* An expandable hash tables datatype.
    Copyright (C) 1999, 2000 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (vmakarov@cygnus.com).
-
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
+  */
 
 /* This package implements basic hash table functionality.  It is possible
    to search for an entry, create an entry and destroy an entry.
@@ -29,6 +16,10 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
    expanded by creation of new hash table and transferring elements from
    the old table to the new table.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
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
index 0d2fdef..19a8e0b 100644
--- a/src/md5.c
+++ b/src/md5.c
@@ -4,21 +4,9 @@
    NOTE: The canonical source of this file is maintained with the GNU C
    Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
 
-   This program is free software; you can redistribute it and/or modify it
-   under the terms of the GNU General Public License as published by the
-   Free Software Foundation; either version 2, or (at your option) any
-   later version.
 
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
-
-/* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include <sys/types.h>
 #include <stdlib.h>
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
index cfbc956..38e520c 100644
--- a/src/sha.c
+++ b/src/sha.c
@@ -8,6 +8,10 @@
    NOTE: The canonical source of this file is maintained in GNU coreutils.
 */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <sys/types.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/src/sha.h b/src/sha.h
index 13583e3..055b4a4 100644
--- a/src/sha.h
+++ b/src/sha.h
@@ -4,6 +4,10 @@
    Copyright (C) 1999, Scott G. Miller
 */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef _SHA_H
 # define _SHA_H 1
 
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

