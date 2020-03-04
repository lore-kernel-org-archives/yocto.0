Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web09.12387.1583333812930555147
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 06:56:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVFJkM7S;
 spf=pass (domain: gmail.com, ip: 209.85.219.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f65.google.com with SMTP id s15so889976qvn.8
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 06:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fRRkW41wpiMBG1JM5pU1ryFnbAk1VGwTtskzY4okRr0=;
        b=UVFJkM7SjoojzdmwlVcfzxqTFAjcc210hyUSqKkl0nwqy3uWEt5ZiHaacUr4uBakIL
         MdKGDaFB7jvtDcp3YhMdA2fBkS5LFGwRPOPpghHtCrWHBooLQA26I+ooBv3GXhGhWPAs
         iGbZRipqGurrxKlNosJwUEEhobbMWdyasUqtHg20VxkRiZr2oNXw0U8Br5K48KpMktRN
         sTZUuNTUerIPxjvXfmUtvy6WyByWmGOnyfUeswQzf7QajQn6SXK0Qoc/GOhiacJyiPwx
         ONgzMdwALhduot60pa405Gvwfx3KW+TTEi5ICrK/SlXE8PqRht5Jl4SSET6LtUx89urW
         MhfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fRRkW41wpiMBG1JM5pU1ryFnbAk1VGwTtskzY4okRr0=;
        b=Ndc402PlBNEVTlTSKoc00iWJvav/N96keZEhAMnmB4psIpbPygEFhlZwbrebQK4ANl
         8Cd0V3zJ2ioO622gcDDaxn0aqVTRXN08oNuf2xN7xVk9Z48f7Mp3V1pjH2jOV+bL4LuJ
         u8o5/2/ICShdJZ1buI0fNy7voJiUarL7MvovMvvIFn8ibX/ZAfM/tKMkeMvwTOmxvTD1
         rNKnSwnUcVMixY1m45NtC6tw+c+8kiGYP6i1BTOpPjaJ3Ft9aWzLuism9HbBwWWGECMa
         g5CTkYlGRTHA+HR0CnvdcbuNjb4uknOXkwG2x0cbJelHWFw/YWdiglYg9SD2ap56Uen1
         B4XQ==
X-Gm-Message-State: ANhLgQ1S8ZdZjhbRa+3BWS5JNY3yWepxH3rKVpTpZEwQopcHpDopgffN
	vfZwz6OFdrtcGvUXER/tXDs=
X-Google-Smtp-Source: ADFU+vt2PM948yo/AiYTbsgrcA4D48bROtBzhY9nLlCt03X9B8idivszFlWsEiRnX/IIROrBaoGykw==
X-Received: by 2002:a0c:f84c:: with SMTP id g12mr2416127qvo.157.1583333811889;
        Wed, 04 Mar 2020 06:56:51 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id h24sm7136978qkk.3.2020.03.04.06.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2020 06:56:51 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] yocto-bsps/5.2: backport perf build fix for latest binutils
Date: Wed,  4 Mar 2020 09:56:49 -0500
Message-Id: <20200304145650.20554-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

[
   Author: Changbin Du <changbin.du@gmail.com>
   Date:   Tue Jan 28 23:29:38 2020 +0800

       perf: Make perf able to build with latest libbfd

       libbfd has changed the bfd_section_* macros to inline functions
       bfd_section_<field> since 2019-09-18. See below two commits:
	 o http://www.sourceware.org/ml/gdb-cvs/2019-09/msg00064.html
	 o https://www.sourceware.org/ml/gdb-cvs/2019-09/msg00072.html

       This fix make perf able to build with both old and new libbfd.

       Signed-off-by: Changbin Du <changbin.du@gmail.com>
       Acked-by: Jiri Olsa <jolsa@redhat.com>
       Cc: Peter Zijlstra <peterz@infradead.org>
       Link: http://lore.kernel.org/lkml/20200128152938.31413-1-changbin.du@gmail.com
       Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
       Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
]

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.2.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
index 9a965321df..a0a4222e61 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -7,10 +7,10 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_beaglebone-yocto ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_genericx86 ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
+SRCREV_machine_genericx86-64 ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
+SRCREV_machine_edgerouter ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
+SRCREV_machine_beaglebone-yocto ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.19.1

