Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3826.1618282866039469485
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 20:01:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=CpxVUdHl;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: jpuhlman@mvista.com)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A873938C0627
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 03:01:05 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id w4so11136906wrt.5
        for <yocto@yoctoproject.org>; Mon, 12 Apr 2021 20:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6E2KtO1Pc+c2NDx/slr9sWc7BsGhPOWUails9tB+JW0=;
        b=CpxVUdHlG2OCVyhbWDKcCO8TjVmYZ+i3oLn+vc5T6pZO8OEp9agI7WQbeROw8fr6I5
         ptccpZZ/7toNFFyLzvhzyzf0H5LFaFECspxhlkR2sFsJWrS7ymlEFhKq7O9mdxgqQuAM
         dICNtpi6lroGkG6fpnHOrBIzJ0EG7+WbmODweIbBwtdMBRdE/t2QnnaNoeCksfzXuoZl
         FxHHB9HQqojRS/P8osKczrwIeJgFoFR4wPHfaAWbC5HLfyFt3VCmc+RZGTWW8jp2zRH8
         AkHpAzI8h2P59HZiDPjq/7xKnL/HCeL8C95UT/eozSuDwmveOWJQZMUbPsA6apidHGdz
         Ibpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6E2KtO1Pc+c2NDx/slr9sWc7BsGhPOWUails9tB+JW0=;
        b=ZrISYY1JtYqfnPo8Lznth0qlpQCDKsGUHQpo2kedNvLdQb99Aw0UELssRz/CLpQ5mZ
         LLbugdnVOBrxLfeWc57yHenD2o70IusyG0Xrfqq+SF1aQYmZg/pz+FAyKYQK1848wxg9
         x6/csHzthHYNKwuZjhGmZ3kvnt7JBJUCXo98MC8PLKOmqlTlyyA5KUnH8Pje8kfBUprx
         JvJQ6ToE0Y2cfQoTYKHm2f4vjwoiezfE3BkYFWXNTAJe3dQYhFdTCf53phiSs2isvzHh
         fjlGuig5I/8u8As//3irdJ21QHgKKqswJk1XgV+l+KV1+z1scgSJsiHphWKpXI5ckj5m
         jX5g==
X-Gm-Message-State: AOAM531vtUcUmICRaweRxkudiF1O1duUYXcBt5/WibmJgYCExqe1e1Aq
	U7H340/AXSHgZeuGFKjBIuiDKY5dpJcrkSeCNba55Q==
X-Google-Smtp-Source: ABdhPJxAFvPYHM2XM0CxIs8rHMnSbEvhf16WDvRKH2i+Ti3EHFQ8NcroWmYwtyKTlLMzr7+U7X5IxJzyrl/YcIOiSSs=
X-Received: by 2002:adf:f108:: with SMTP id r8mr22932571wro.147.1618282864200;
 Mon, 12 Apr 2021 20:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201209060111.97275-1-yi.zhao@windriver.com> <ad06fdcd-04b0-ae06-0fc2-67eb6c6389af@windriver.com>
 <99b93a31-dfd4-3129-6897-ff10ef9ea8fb@windriver.com>
In-Reply-To: <99b93a31-dfd4-3129-6897-ff10ef9ea8fb@windriver.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Date: Mon, 12 Apr 2021 20:00:53 -0700
Message-ID: <CADe5tdO2urU-zXP8CxMMwp2voe3o0h8oWd328VdWvSiyGvTH8g@mail.gmail.com>
Subject: Re: [yocto] [meta-cgl][PATCH] pacemaker: upgrade 2.0.3 -> 2.0.5
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org, 
	Yi Zhao <yi.zhao@windriver.com>, Adrian Dudau <Adrian.Dudau@enea.com>, 
	alexandru.vaduva@linux.com
Content-Type: multipart/alternative; boundary="000000000000445fbc05bfd1d75e"

--000000000000445fbc05bfd1d75e
Content-Type: text/plain; charset="UTF-8"

I haven't been doing much with it lately and this got lost in my pile. Its
merged to master.

On Mon, Apr 12, 2021 at 7:29 PM Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2021-03-05 1:28 a.m., Changqing Li wrote:
> > ping
>
> Is this layer alive? :)
>
> ../Randy
> >
> > On 12/9/20 2:01 PM, Yi Zhao wrote:
> >> Drop backported patches:
> >> 0001-Mark-declaration-with-extern.patch
> >> 0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> >>
> >> Rebase patches:
> >> 0001-Fix-python3-usage.patch
> >> 0001-pacemaker-fix-compile-error-of-musl-libc.patch
> >>
> >> Remove /var/log directory in do_install and create /var/log/pacemaker
> >> directory in volatile file.
> >>
> >> Signed-off-by: Yi Zhao<yi.zhao@windriver.com>
> >> ---
> >>   .../recipes-cgl/pacemaker/files/tmpfiles      |  3 +-
> >>   .../recipes-cgl/pacemaker/files/volatiles     |  1 +
> >>   .../pacemaker/0001-Fix-python3-usage.patch    | 34 ++++----------
> >>   .../0001-Mark-declaration-with-extern.patch   | 46 -------------------
> >>   ...maker-fix-compile-error-of-musl-libc.patch | 39 +++-------------
> >>   ...definition-of-curses_indented_printf.patch | 30 ------------
> >>   ...{pacemaker_2.0.3.bb => pacemaker_2.0.5.bb} |  5 +-
> >>   7 files changed, 21 insertions(+), 137 deletions(-)
> >>   mode change 100755 => 100644
> meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> >>   mode change 100755 => 100644
> meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> >>   delete mode 100644
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> >>   delete mode 100644
> meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> >>   rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb =>
> pacemaker_2.0.5.bb} (96%)
> >>
> >> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> >> old mode 100755
> >> new mode 100644
> >> index 979db47..765ee0d
> >> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> >> @@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient -
> >>   d /var/lib/pacemaker/cores 0750 hacluster haclient -
> >>   d /var/lib/pacemaker/pengine 0750 hacluster haclient -
> >>   d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
> >> -d /var/run/crm 0750 hacluster haclient -
> >> +d /run/crm 0750 hacluster haclient -
> >> +d /var/log/pacemaker 0750 hacluster haclient -
> >> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> >> old mode 100755
> >> new mode 100644
> >> index 1700a69..eca3002
> >> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> >> @@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/cores none
> >>   d hacluster haclient 0750 /var/lib/pacemaker/pengine none
> >>   d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
> >>   d hacluster haclient 0750 /var/run/crm none
> >> +d hacluster haclient 0750 /var/log/pacemaker none
> >> diff --git
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> >> index 05d7a76..2095227 100644
> >> ---
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> >> +++
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> >> @@ -1,4 +1,4 @@
> >> -From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
> >> +From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:00 2001
> >>   From: Jeremy Puhlman<jpuhlman@mvista.com>
> >>   Date: Sun, 15 Mar 2020 21:09:33 +0000
> >>   Subject: [PATCH] Fix python3 usage
> >> @@ -18,12 +18,11 @@ Upstream-Status: Pending
> >>    cts/pacemaker-cts-dummyd.in                   | 2 +-
> >>    daemons/fenced/fence_legacy.in                | 2 +-
> >>    doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
> >> - doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
> >>    tools/pcmk_simtimes.in                        | 2 +-
> >> - 14 files changed, 14 insertions(+), 14 deletions(-)
> >> + 13 files changed, 13 insertions(+), 13 deletions(-)
> >>
> >>   diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
> >> -index f4ae60dc1..55a0d4ecf 100644
> >> +index 4bae93515..f09f71c66 100644
> >>   --- a/cts/CTSlab.py.in
> >>   +++ b/cts/CTSlab.py.in
> >>   @@ -1,4 +1,4 @@
> >> @@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
> >>    '''OCF IPaddr/IPaddr2 Resource Agent Test'''
> >>
> >>   diff --git a/cts/cluster_test.in b/cts/cluster_test.in
> >> -index e0d28509d..f982be05a 100755
> >> +index 38f941d3e..5a289e3fc 100755
> >>   --- a/cts/cluster_test.in
> >>   +++ b/cts/cluster_test.in
> >> -@@ -171,4 +171,4 @@ printf "\nAll set to go for %d iterations!\n"
> "$CTS_numtests"
> >> +@@ -172,4 +172,4 @@ printf "\nAll set to go for %d iterations!\n"
> "$CTS_numtests"
> >>        || echo "+ To use a different configuration, remove ~/.cts and
> re-run cts (or edit it manually)."
> >>
> >>    echo Now paste the following command into this shell:
> >> @@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
> >>    """
> >>
> >>   diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
> >> -index 2d9999ca0..8e3fb7203 100644
> >> +index 444402438..0270c99ce 100644
> >>   --- a/cts/cts-fencing.in
> >>   +++ b/cts/cts-fencing.in
> >>   @@ -1,4 +1,4 @@
> >> @@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
> >>
> >>    Reads a specified number of lines from the supplied offset
> >>   diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
> >> -index 8fa16fb69..d4306b02b 100644
> >> +index 23e6a919f..09058ce22 100644
> >>   --- a/cts/cts-scheduler.in
> >>   +++ b/cts/cts-scheduler.in
> >>   @@ -1,4 +1,4 @@
> >> @@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
> >>    """
> >>
> >>   diff --git a/cts/environment.py b/cts/environment.py
> >> -index db9d3db16..9d103fda9 100644
> >> +index 6a97b1289..39e89fa6f 100644
> >>   --- a/cts/environment.py
> >>   +++ b/cts/environment.py
> >>   @@ -639,7 +639,7 @@ class Environment(object):
> >> @@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
> >>
> >>            sys.exit(status)
> >>   diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
> >> -index a2692b1e0..f1d111205 100644
> >> +index 8b0dd5165..9e8624bd9 100644
> >>   --- a/cts/fence_dummy.in
> >>   +++ b/cts/fence_dummy.in
> >>   @@ -1,4 +1,4 @@
> >> @@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
> >>    ----
> >>    ====
> >>    which will be replaced with the appropriate python executable when
> Pacemaker is
> >> -diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot
> b/doc/Pacemaker_Development/pot/Ch-Python.pot
> >> -index ed71331ce..27c7e22e5 100644
> >> ---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
> >> -+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
> >> -@@ -39,7 +39,7 @@ msgstr ""
> >> -
> >> - #. Tag: screen
> >> - #, no-c-format
> >> --msgid "#!@PYTHON@"
> >> -+msgid "#!/usr/bin/env python3"
> >> - msgstr ""
> >> -
> >> - #. Tag: para
> >>   diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
> >>   index 6e362243b..28009f499 100644
> >>   --- a/tools/pcmk_simtimes.in
> >> @@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
> >>    """
> >>
> >>   --
> >> -2.23.0
> >> +2.17.1
> >>
> >> diff --git
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> >> deleted file mode 100644
> >> index 5729447..0000000
> >> ---
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> >> +++ /dev/null
> >> @@ -1,46 +0,0 @@
> >> -From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
> >> -From: Mingli Yu<mingli.yu@windriver.com>
> >> -Date: Thu, 3 Sep 2020 04:44:09 +0000
> >> -Subject: [PATCH] Mark declaration with extern
> >> -
> >> -Fixes build with gcc 10+
> >> -
> >> -Upstream-Status: Pending
> >> -
> >> -Signed-off-by: Mingli Yu<mingli.yu@windriver.com>
> >> ----
> >> - daemons/attrd/pacemaker-attrd.h | 4 ++--
> >> - daemons/execd/pacemaker-execd.h | 2 +-
> >> - 2 files changed, 3 insertions(+), 3 deletions(-)
> >> -
> >> -diff --git a/daemons/attrd/pacemaker-attrd.h
> b/daemons/attrd/pacemaker-attrd.h
> >> -index cc8e29ee1..76778915e 100644
> >> ---- a/daemons/attrd/pacemaker-attrd.h
> >> -+++ b/daemons/attrd/pacemaker-attrd.h
> >> -@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
> >> -         gboolean seen;
> >> - } attribute_value_t;
> >> -
> >> --crm_cluster_t *attrd_cluster;
> >> --GHashTable *attributes;
> >> -+extern crm_cluster_t *attrd_cluster;
> >> -+extern GHashTable *attributes;
> >> -
> >> - #define attrd_send_ack(client, id, flags) \
> >> -     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__,
> __LINE__)
> >> -diff --git a/daemons/execd/pacemaker-execd.h
> b/daemons/execd/pacemaker-execd.h
> >> -index 4a52d9183..dab3ccdbe 100644
> >> ---- a/daemons/execd/pacemaker-execd.h
> >> -+++ b/daemons/execd/pacemaker-execd.h
> >> -@@ -20,7 +20,7 @@
> >> - #    include <gnutls/gnutls.h>
> >> - #  endif
> >> -
> >> --GHashTable *rsc_list;
> >> -+extern GHashTable *rsc_list;
> >> -
> >> - typedef struct lrmd_rsc_s {
> >> -     char *rsc_id;
> >> ---
> >> -2.26.2
> >> -
> >> diff --git
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> >> index f8cbb7e..a10e8cd 100644
> >> ---
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> >> +++
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> >> @@ -1,4 +1,4 @@
> >> -From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
> >> +From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:00 2001
> >>   From: Changqing Li<changqing.li@windriver.com>
> >>   Date: Fri, 10 Aug 2018 15:08:31 +0800
> >>   Subject: [PATCH] pacemaker: fix compile error of musl libc
> >> @@ -7,28 +7,14 @@ Upstream-Status: Pending
> >>
> >>   Signed-off-by: Changqing Li<changqing.li@windriver.com>
> >>   ---
> >> - include/crm/stonith-ng.h | 1 +
> >> - lib/cib/cib_remote.c     | 3 ---
> >> - tools/crm_mon.c          | 2 +-
> >> - 3 files changed, 2 insertions(+), 4 deletions(-)
> >> + lib/cib/cib_remote.c | 3 ---
> >> + 1 file changed, 3 deletions(-)
> >>
> >> -diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
> >> -index 56c1ec7..a637b47 100644
> >> ---- a/include/crm/stonith-ng.h
> >> -+++ b/include/crm/stonith-ng.h
> >> -@@ -28,6 +28,7 @@
> >> - #  include <dlfcn.h>
> >> - #  include <errno.h>
> >> - #  include <stdbool.h>
> >> -+#  include <time.h>
> >> -
> >> - /* TO-DO: Work out how to drop this requirement */
> >> - #  include <libxml/tree.h>
> >>   diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
> >> -index 4d7b93b..8be8ecc 100644
> >> +index 4de0a0f7b..7686637db 100644
> >>   --- a/lib/cib/cib_remote.c
> >>   +++ b/lib/cib/cib_remote.c
> >> -@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
> >> +@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
> >>    #endif
> >>
> >>    #include <arpa/inet.h>
> >> @@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
> >>
> >>    #define DH_BITS 1024
> >>
> >> -diff --git a/tools/crm_mon.c b/tools/crm_mon.c
> >> -index 7c63803..1ae6c21 100644
> >> ---- a/tools/crm_mon.c
> >> -+++ b/tools/crm_mon.c
> >> -@@ -553,7 +553,7 @@ main(int argc, char **argv)
> >> -
> >> - #if !defined (ON_DARWIN) && !defined (ON_BSD)
> >> -     /* prevent zombies */
> >> --    signal(SIGCLD, SIG_IGN);
> >> -+    signal(SIGCHLD, SIG_IGN);
> >> - #endif
> >> -
> >> -     if (crm_ends_with_ext(argv[0], ".cgi") == TRUE) {
> >>   --
> >> -2.7.4
> >> +2.17.1
> >>
> >> diff --git
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> >> deleted file mode 100644
> >> index f5e1829..0000000
> >> ---
> a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> >> +++ /dev/null
> >> @@ -1,30 +0,0 @@
> >> -From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
> >> -From: Chris Lumens<clumens@redhat.com>
> >> -Date: Thu, 2 Jan 2020 15:08:58 -0500
> >> -Subject: [PATCH 006/207] Fix: tools: Fix definition of
> curses_indented_printf.
> >> -
> >> -The placeholder version that is built if curses is not enabled does not
> >> -have a type that matches the header file.  Correct that.
> >> -
> >> -Signed-off-by: Jeremy A. Puhlman<jpuhlman@mvista.com>
> >> -Upstream-Status: Backport[git]
> >> ----
> >> - tools/crm_mon_curses.c | 2 +-
> >> - 1 file changed, 1 insertion(+), 1 deletion(-)
> >> -
> >> -diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
> >> -index c0dbedbf0..ecd0584fe 100644
> >> ---- a/tools/crm_mon_curses.c
> >> -+++ b/tools/crm_mon_curses.c
> >> -@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const
> char *format, va_list args) {
> >> -
> >> - G_GNUC_PRINTF(2, 3)
> >> - void
> >> --curses_indented_printf(pcmk__output_t *out, const char *format,
> va_list args) {
> >> -+curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
> >> -     return;
> >> - }
> >> -
> >> ---
> >> -2.23.0
> >> -
> >> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> >> similarity index 96%
> >> rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> >> rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> >> index 8576f18..6cfa057 100644
> >> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> >> @@ -14,9 +14,7 @@ LIC_FILES_CHKSUM
> ="file://COPYING;md5=000212f361a81b100d9d0f0435040663"
> >>   DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb
> python3-native"
> >>
> >>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git
> <http://github.com/ClusterLabs/$%7BBPN%7D.git> \
> >> -file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch  \
> >>              file://0001-Fix-python3-usage.patch  \
> >> -file://0001-Mark-declaration-with-extern.patch  \
> >>
> file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch  \
> >>              file://volatiles  \
> >>              file://tmpfiles  \
> >> @@ -26,7 +24,7 @@ CFLAGS += "-I${STAGING_INCDIR}/heartbeat"
> >>   CPPFLAGS +="-I${STAGING_INCDIR}/heartbeat"
> >>   SRC_URI_append_libc-musl
> ="file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
> >>
> >> -SRCREV = "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
> >> +SRCREV = "ba59be71228fed04f78ab374dfac748d314d0e89"
> >>
> >>   inherit autotools-brokensep pkgconfig systemd python3native
> python3-dir useradd
> >>
> >> @@ -78,6 +76,7 @@ do_install_append() {
> >>
> >>       rm -rf ${D}${localstatedir}/lib/heartbeat
> >>       rm -rf ${D}${localstatedir}/run
> >> +    rm -rf ${D}${localstatedir}/log
> >>
> >>       # remove buildpath
> >>       tempdirs=$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F:
> '{print $1}' | uniq)
> >>
> >
> >
> > 
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>


-- 
Jeremy Puhlman
Montavista Software, LLC.

--000000000000445fbc05bfd1d75e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I haven&#39;t been doing much with it lately and this got =
lost in my pile. Its merged to master.</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021 at 7:29 PM Randy=
 MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 2021-03-05 1:28 a.m., Changqing Li wrote:<br>
&gt; ping<br>
<br>
Is this layer alive? :)<br>
<br>
../Randy<br>
&gt; <br>
&gt; On 12/9/20 2:01 PM, Yi Zhao wrote:<br>
&gt;&gt; Drop backported patches:<br>
&gt;&gt; 0001-Mark-declaration-with-extern.patch<br>
&gt;&gt; 0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch<br>
&gt;&gt;<br>
&gt;&gt; Rebase patches:<br>
&gt;&gt; 0001-Fix-python3-usage.patch<br>
&gt;&gt; 0001-pacemaker-fix-compile-error-of-musl-libc.patch<br>
&gt;&gt;<br>
&gt;&gt; Remove /var/log directory in do_install and create /var/log/pacem=
aker<br>
&gt;&gt; directory in volatile file.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Yi Zhao&lt;<a href=3D"mailto:yi.zhao@windriver.com=
" target=3D"_blank">yi.zhao@windriver.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 =C2=A0.../recipes-cgl/pacemaker/files/tmpfiles=C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 3 +-<br>
&gt;&gt;=C2=A0 =C2=A0.../recipes-cgl/pacemaker/files/volatiles=C2=A0 =C2=
=A0 =C2=A0|=C2=A0 1 +<br>
&gt;&gt;=C2=A0 =C2=A0.../pacemaker/0001-Fix-python3-usage.patch=C2=A0 =C2=
=A0 | 34 ++++----------<br>
&gt;&gt;=C2=A0 =C2=A0.../0001-Mark-declaration-with-extern.patch=C2=A0 =C2=
=
=A0| 46 -------------------<br>
&gt;&gt;=C2=A0 =C2=A0...maker-fix-compile-error-of-musl-libc.patch | 39 ++=
+-------------<br>
&gt;&gt;=C2=A0 =C2=A0...definition-of-curses_indented_printf.patch | 30 --=
----------<br>
&gt;&gt;=C2=A0 =C2=A0...{<a href=3D"http://pacemaker_2.0.3.bb" rel=3D"nore=
ferrer" target=3D"_blank">pacemaker_2.0.3.bb</a> =3D&gt; <a href=3D"http://=
pacemaker_2.0.5.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.5.bb=
</a>} |=C2=A0 5 +-<br>
&gt;&gt;=C2=A0 =C2=A07 files changed, 21 insertions(+), 137 deletions(-)<b=
r>
&gt;&gt;=C2=A0 =C2=A0mode change 100755 =3D&gt; 100644 meta-cgl-common/rec=
ipes-cgl/pacemaker/files/tmpfiles<br>
&gt;&gt;=C2=A0 =C2=A0mode change 100755 =3D&gt; 100644 meta-cgl-common/rec=
ipes-cgl/pacemaker/files/volatiles<br>
&gt;&gt;=C2=A0 =C2=A0delete mode 100644 meta-cgl-common/recipes-cgl/pacema=
ker/pacemaker/0001-Mark-declaration-with-extern.patch<br>
&gt;&gt;=C2=A0 =C2=A0delete mode 100644 meta-cgl-common/recipes-cgl/pacema=
ker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch=
<br>
&gt;&gt;=C2=A0 =C2=A0rename meta-cgl-common/recipes-cgl/pacemaker/{<a href=
=
=3D"http://pacemaker_2.0.3.bb" rel=3D"noreferrer" target=3D"_blank">pacema=
ker_2.0.3.bb</a> =3D&gt; <a href=3D"http://pacemaker_2.0.5.bb" rel=3D"noref=
errer" target=3D"_blank">pacemaker_2.0.5.bb</a>} (96%)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles=
 b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles<br>
&gt;&gt; old mode 100755<br>
&gt;&gt; new mode 100644<br>
&gt;&gt; index 979db47..765ee0d<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles<br>
&gt;&gt; +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles<br>
&gt;&gt; @@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient =
-<br>
&gt;&gt;=C2=A0 =C2=A0d /var/lib/pacemaker/cores 0750 hacluster haclient -<=
br>
&gt;&gt;=C2=A0 =C2=A0d /var/lib/pacemaker/pengine 0750 hacluster haclient =
-<br>
&gt;&gt;=C2=A0 =C2=A0d /var/lib/pacemaker/blackbox 0750 hacluster haclient=
 -<br>
&gt;&gt; -d /var/run/crm 0750 hacluster haclient -<br>
&gt;&gt; +d /run/crm 0750 hacluster haclient -<br>
&gt;&gt; +d /var/log/pacemaker 0750 hacluster haclient -<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatile=
s b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles<br>
&gt;&gt; old mode 100755<br>
&gt;&gt; new mode 100644<br>
&gt;&gt; index 1700a69..eca3002<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles<br>
&gt;&gt; +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles<br>
&gt;&gt; @@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/core=
s none<br>
&gt;&gt;=C2=A0 =C2=A0d hacluster haclient 0750 /var/lib/pacemaker/pengine =
none<br>
&gt;&gt;=C2=A0 =C2=A0d hacluster haclient 0750 /var/lib/pacemaker/blackbox=
 none<br>
&gt;&gt;=C2=A0 =C2=A0d hacluster haclient 0750 /var/run/crm none<br>
&gt;&gt; +d hacluster haclient 0750 /var/log/pacemaker none<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001=
-Fix-python3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/=
0001-Fix-python3-usage.patch<br>
&gt;&gt; index 05d7a76..2095227 100644<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-py=
thon3-usage.patch<br>
&gt;&gt; +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-py=
thon3-usage.patch<br>
&gt;&gt; @@ -1,4 +1,4 @@<br>
&gt;&gt; -From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt; +From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt;=C2=A0 =C2=A0From: Jeremy Puhlman&lt;<a href=3D"mailto:jpuhlman@mv=
ista.com" target=3D"_blank">jpuhlman@mvista.com</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0Date: Sun, 15 Mar 2020 21:09:33 +0000<br>
&gt;&gt;=C2=A0 =C2=A0Subject: [PATCH] Fix python3 usage<br>
&gt;&gt; @@ -18,12 +18,11 @@ Upstream-Status: Pending<br>
&gt;&gt;=C2=A0 =C2=A0 cts/<a href=3D"http://pacemaker-cts-dummyd.in" rel=
=3D"noreferrer" target=3D"_blank">pacemaker-cts-dummyd.in</a>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;&gt;=C2=A0 =C2=A0 daemons/fenced/<a href=3D"http://fence_legacy.in" re=
l=3D"noreferrer" target=3D"_blank">fence_legacy.in</a>=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
&gt;&gt;=C2=A0 =C2=A0 doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-=
<br>
&gt;&gt; - doc/Pacemaker_Development/pot/Ch-Python.pot=C2=A0 =C2=A0| 2 +-<=
br>
&gt;&gt;=C2=A0 =C2=A0 tools/<a href=3D"http://pcmk_simtimes.in" rel=3D"nor=
eferrer" target=3D"_blank">pcmk_simtimes.in</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
&gt;&gt; - 14 files changed, 14 insertions(+), 14 deletions(-)<br>
&gt;&gt; + 13 files changed, 13 insertions(+), 13 deletions(-)<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/<a href=3D"http://CTSlab.py.in" rel=
=3D"noreferrer" target=3D"_blank">CTSlab.py.in</a> b/cts/<a href=3D"http:/=
/CTSlab.py.in" rel=3D"noreferrer" target=3D"_blank">CTSlab.py.in</a><br>
&gt;&gt; -index f4ae60dc1..55a0d4ecf 100644<br>
&gt;&gt; +index 4bae93515..f09f71c66 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/<a href=3D"http://CTSlab.py.in" rel=3D"nore=
ferrer" target=3D"_blank">CTSlab.py.in</a><br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/<a href=3D"http://CTSlab.py.in" rel=3D"nore=
ferrer" target=3D"_blank">CTSlab.py.in</a><br>
&gt;&gt;=C2=A0 =C2=A0@@ -1,4 +1,4 @@<br>
&gt;&gt; @@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644<br>
&gt;&gt;=C2=A0 =C2=A0 &#39;&#39;&#39;OCF IPaddr/IPaddr2 Resource Agent Tes=
t&#39;&#39;&#39;<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/<a href=3D"http://cluster_test.in" r=
el=3D"noreferrer" target=3D"_blank">cluster_test.in</a> b/cts/<a href=3D"ht=
tp://cluster_test.in" rel=3D"noreferrer" target=3D"_blank">cluster_test.in<=
/a><br>
&gt;&gt; -index e0d28509d..f982be05a 100755<br>
&gt;&gt; +index 38f941d3e..5a289e3fc 100755<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/<a href=3D"http://cluster_test.in" rel=3D"n=
oreferrer" target=3D"_blank">cluster_test.in</a><br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/<a href=3D"http://cluster_test.in" rel=3D"n=
oreferrer" target=3D"_blank">cluster_test.in</a><br>
&gt;&gt; -@@ -171,4 +171,4 @@ printf &quot;\nAll set to go for %d iteratio=
ns!\n&quot; &quot;$CTS_numtests&quot;<br>
&gt;&gt; +@@ -172,4 +172,4 @@ printf &quot;\nAll set to go for %d iteratio=
ns!\n&quot; &quot;$CTS_numtests&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 || echo &quot;+ To use a different con=
figuration, remove ~/.cts and re-run cts (or edit it manually).&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 echo Now paste the following command into this shell=
:<br>
&gt;&gt; @@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644<br>
&gt;&gt;=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/<a href=3D"http://cts-fencing.in" re=
l=3D"noreferrer" target=3D"_blank">cts-fencing.in</a> b/cts/<a href=3D"http=
://cts-fencing.in" rel=3D"noreferrer" target=3D"_blank">cts-fencing.in</a><=
br>
&gt;&gt; -index 2d9999ca0..8e3fb7203 100644<br>
&gt;&gt; +index 444402438..0270c99ce 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/<a href=3D"http://cts-fencing.in" rel=3D"no=
referrer" target=3D"_blank">cts-fencing.in</a><br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/<a href=3D"http://cts-fencing.in" rel=3D"no=
referrer" target=3D"_blank">cts-fencing.in</a><br>
&gt;&gt;=C2=A0 =C2=A0@@ -1,4 +1,4 @@<br>
&gt;&gt; @@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 Reads a specified number of lines from the supplied =
offset<br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/<a href=3D"http://cts-scheduler.in" =
rel=3D"noreferrer" target=3D"_blank">cts-scheduler.in</a> b/cts/<a href=3D"=
http://cts-scheduler.in" rel=3D"noreferrer" target=3D"_blank">cts-scheduler=
.in</a><br>
&gt;&gt; -index 8fa16fb69..d4306b02b 100644<br>
&gt;&gt; +index 23e6a919f..09058ce22 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/<a href=3D"http://cts-scheduler.in" rel=3D"=
noreferrer" target=3D"_blank">cts-scheduler.in</a><br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/<a href=3D"http://cts-scheduler.in" rel=3D"=
noreferrer" target=3D"_blank">cts-scheduler.in</a><br>
&gt;&gt;=C2=A0 =C2=A0@@ -1,4 +1,4 @@<br>
&gt;&gt; @@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644<br>
&gt;&gt;=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/environment.py b/cts/environment.py<=
br>
&gt;&gt; -index db9d3db16..9d103fda9 100644<br>
&gt;&gt; +index 6a97b1289..39e89fa6f 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/environment.py<br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/environment.py<br>
&gt;&gt;=C2=A0 =C2=A0@@ -639,7 +639,7 @@ class Environment(object):<br>
&gt;&gt; @@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(status)<br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/cts/<a href=3D"http://fence_dummy.in" re=
l=3D"noreferrer" target=3D"_blank">fence_dummy.in</a> b/cts/<a href=3D"http=
://fence_dummy.in" rel=3D"noreferrer" target=3D"_blank">fence_dummy.in</a><=
br>
&gt;&gt; -index a2692b1e0..f1d111205 100644<br>
&gt;&gt; +index 8b0dd5165..9e8624bd9 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/cts/<a href=3D"http://fence_dummy.in" rel=3D"no=
referrer" target=3D"_blank">fence_dummy.in</a><br>
&gt;&gt;=C2=A0 =C2=A0+++ b/cts/<a href=3D"http://fence_dummy.in" rel=3D"no=
referrer" target=3D"_blank">fence_dummy.in</a><br>
&gt;&gt;=C2=A0 =C2=A0@@ -1,4 +1,4 @@<br>
&gt;&gt; @@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644<br>
&gt;&gt;=C2=A0 =C2=A0 ----<br>
&gt;&gt;=C2=A0 =C2=A0 =3D=3D=3D=3D<br>
&gt;&gt;=C2=A0 =C2=A0 which will be replaced with the appropriate python e=
xecutable when Pacemaker is<br>
&gt;&gt; -diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/P=
acemaker_Development/pot/Ch-Python.pot<br>
&gt;&gt; -index ed71331ce..27c7e22e5 100644<br>
&gt;&gt; ---- a/doc/Pacemaker_Development/pot/Ch-Python.pot<br>
&gt;&gt; -+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot<br>
&gt;&gt; -@@ -39,7 +39,7 @@ msgstr &quot;&quot;<br>
&gt;&gt; -<br>
&gt;&gt; - #. Tag: screen<br>
&gt;&gt; - #, no-c-format<br>
&gt;&gt; --msgid &quot;#!@PYTHON@&quot;<br>
&gt;&gt; -+msgid &quot;#!/usr/bin/env python3&quot;<br>
&gt;&gt; - msgstr &quot;&quot;<br>
&gt;&gt; -<br>
&gt;&gt; - #. Tag: para<br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/tools/<a href=3D"http://pcmk_simtimes.in=
" rel=3D"noreferrer" target=3D"_blank">pcmk_simtimes.in</a> b/tools/<a href=
=
=3D"http://pcmk_simtimes.in" rel=3D"noreferrer" target=3D"_blank">pcmk_sim=
times.in</a><br>
&gt;&gt;=C2=A0 =C2=A0index 6e362243b..28009f499 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/tools/<a href=3D"http://pcmk_simtimes.in" rel=
=3D"noreferrer" target=3D"_blank">pcmk_simtimes.in</a><br>
&gt;&gt; @@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644<br>
&gt;&gt;=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0--<br>
&gt;&gt; -2.23.0<br>
&gt;&gt; +2.17.1<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001=
-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker=
/pacemaker/0001-Mark-declaration-with-extern.patch<br>
&gt;&gt; deleted file mode 100644<br>
&gt;&gt; index 5729447..0000000<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-d=
eclaration-with-extern.patch<br>
&gt;&gt; +++ /dev/null<br>
&gt;&gt; @@ -1,46 +0,0 @@<br>
&gt;&gt; -From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt; -From: Mingli Yu&lt;<a href=3D"mailto:mingli.yu@windriver.com" ta=
rget=3D"_blank">mingli.yu@windriver.com</a>&gt;<br>
&gt;&gt; -Date: Thu, 3 Sep 2020 04:44:09 +0000<br>
&gt;&gt; -Subject: [PATCH] Mark declaration with extern<br>
&gt;&gt; -<br>
&gt;&gt; -Fixes build with gcc 10+<br>
&gt;&gt; -<br>
&gt;&gt; -Upstream-Status: Pending<br>
&gt;&gt; -<br>
&gt;&gt; -Signed-off-by: Mingli Yu&lt;<a href=3D"mailto:mingli.yu@windrive=
r.com" target=3D"_blank">mingli.yu@windriver.com</a>&gt;<br>
&gt;&gt; ----<br>
&gt;&gt; - daemons/attrd/pacemaker-attrd.h | 4 ++--<br>
&gt;&gt; - daemons/execd/pacemaker-execd.h | 2 +-<br>
&gt;&gt; - 2 files changed, 3 insertions(+), 3 deletions(-)<br>
&gt;&gt; -<br>
&gt;&gt; -diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pac=
emaker-attrd.h<br>
&gt;&gt; -index cc8e29ee1..76778915e 100644<br>
&gt;&gt; ---- a/daemons/attrd/pacemaker-attrd.h<br>
&gt;&gt; -+++ b/daemons/attrd/pacemaker-attrd.h<br>
&gt;&gt; -@@ -106,8 +106,8 @@ typedef struct attribute_value_s {<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gboolean seen;<br>
&gt;&gt; - } attribute_value_t;<br>
&gt;&gt; -<br>
&gt;&gt; --crm_cluster_t *attrd_cluster;<br>
&gt;&gt; --GHashTable *attributes;<br>
&gt;&gt; -+extern crm_cluster_t *attrd_cluster;<br>
&gt;&gt; -+extern GHashTable *attributes;<br>
&gt;&gt; -<br>
&gt;&gt; - #define attrd_send_ack(client, id, flags) \<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0crm_ipcs_send_ack((client), (id), (flags), &=
quot;ack&quot;, __FUNCTION__, __LINE__)<br>
&gt;&gt; -diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pac=
emaker-execd.h<br>
&gt;&gt; -index 4a52d9183..dab3ccdbe 100644<br>
&gt;&gt; ---- a/daemons/execd/pacemaker-execd.h<br>
&gt;&gt; -+++ b/daemons/execd/pacemaker-execd.h<br>
&gt;&gt; -@@ -20,7 +20,7 @@<br>
&gt;&gt; - #=C2=A0 =C2=A0 include &lt;gnutls/gnutls.h&gt;<br>
&gt;&gt; - #=C2=A0 endif<br>
&gt;&gt; -<br>
&gt;&gt; --GHashTable *rsc_list;<br>
&gt;&gt; -+extern GHashTable *rsc_list;<br>
&gt;&gt; -<br>
&gt;&gt; - typedef struct lrmd_rsc_s {<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0char *rsc_id;<br>
&gt;&gt; ---<br>
&gt;&gt; -2.26.2<br>
&gt;&gt; -<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001=
-pacemaker-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-c=
gl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch<=
br>
&gt;&gt; index f8cbb7e..a10e8cd 100644<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacema=
ker-fix-compile-error-of-musl-libc.patch<br>
&gt;&gt; +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacema=
ker-fix-compile-error-of-musl-libc.patch<br>
&gt;&gt; @@ -1,4 +1,4 @@<br>
&gt;&gt; -From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt; +From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt;=C2=A0 =C2=A0From: Changqing Li&lt;<a href=3D"mailto:changqing.li@=
windriver.com" target=3D"_blank">changqing.li@windriver.com</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0Date: Fri, 10 Aug 2018 15:08:31 +0800<br>
&gt;&gt;=C2=A0 =C2=A0Subject: [PATCH] pacemaker: fix compile error of musl=
 libc<br>
&gt;&gt; @@ -7,28 +7,14 @@ Upstream-Status: Pending<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0Signed-off-by: Changqing Li&lt;<a href=3D"mailto:chan=
gqing.li@windriver.com" target=3D"_blank">changqing.li@windriver.com</a>&gt=
;<br>
&gt;&gt;=C2=A0 =C2=A0---<br>
&gt;&gt; - include/crm/stonith-ng.h | 1 +<br>
&gt;&gt; - lib/cib/cib_remote.c=C2=A0 =C2=A0 =C2=A0| 3 ---<br>
&gt;&gt; - tools/crm_mon.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
&gt;&gt; - 3 files changed, 2 insertions(+), 4 deletions(-)<br>
&gt;&gt; + lib/cib/cib_remote.c | 3 ---<br>
&gt;&gt; + 1 file changed, 3 deletions(-)<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt; -diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h=
<br>
&gt;&gt; -index 56c1ec7..a637b47 100644<br>
&gt;&gt; ---- a/include/crm/stonith-ng.h<br>
&gt;&gt; -+++ b/include/crm/stonith-ng.h<br>
&gt;&gt; -@@ -28,6 +28,7 @@<br>
&gt;&gt; - #=C2=A0 include &lt;dlfcn.h&gt;<br>
&gt;&gt; - #=C2=A0 include &lt;errno.h&gt;<br>
&gt;&gt; - #=C2=A0 include &lt;stdbool.h&gt;<br>
&gt;&gt; -+#=C2=A0 include &lt;time.h&gt;<br>
&gt;&gt; -<br>
&gt;&gt; - /* TO-DO: Work out how to drop this requirement */<br>
&gt;&gt; - #=C2=A0 include &lt;libxml/tree.h&gt;<br>
&gt;&gt;=C2=A0 =C2=A0diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remot=
e.c<br>
&gt;&gt; -index 4d7b93b..8be8ecc 100644<br>
&gt;&gt; +index 4de0a0f7b..7686637db 100644<br>
&gt;&gt;=C2=A0 =C2=A0--- a/lib/cib/cib_remote.c<br>
&gt;&gt;=C2=A0 =C2=A0+++ b/lib/cib/cib_remote.c<br>
&gt;&gt; -@@ -53,9 +53,6 @@ typedef void gnutls_session_t;<br>
&gt;&gt; +@@ -45,9 +45,6 @@ typedef void gnutls_session_t;<br>
&gt;&gt;=C2=A0 =C2=A0 #endif<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 #include &lt;arpa/inet.h&gt;<br>
&gt;&gt; @@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 #define DH_BITS 1024<br>
&gt;&gt;=C2=A0 =C2=A0 <br>
&gt;&gt; -diff --git a/tools/crm_mon.c b/tools/crm_mon.c<br>
&gt;&gt; -index 7c63803..1ae6c21 100644<br>
&gt;&gt; ---- a/tools/crm_mon.c<br>
&gt;&gt; -+++ b/tools/crm_mon.c<br>
&gt;&gt; -@@ -553,7 +553,7 @@ main(int argc, char **argv)<br>
&gt;&gt; -<br>
&gt;&gt; - #if !defined (ON_DARWIN) &amp;&amp; !defined (ON_BSD)<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0/* prevent zombies */<br>
&gt;&gt; --=C2=A0 =C2=A0 signal(SIGCLD, SIG_IGN);<br>
&gt;&gt; -+=C2=A0 =C2=A0 signal(SIGCHLD, SIG_IGN);<br>
&gt;&gt; - #endif<br>
&gt;&gt; -<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0if (crm_ends_with_ext(argv[0], &quot;.cgi&qu=
ot;) =3D=3D TRUE) {<br>
&gt;&gt;=C2=A0 =C2=A0--<br>
&gt;&gt; -2.7.4<br>
&gt;&gt; +2.17.1<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006=
-Fix-tools-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common=
/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_in=
dented_printf.patch<br>
&gt;&gt; deleted file mode 100644<br>
&gt;&gt; index f5e1829..0000000<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-to=
ols-Fix-definition-of-curses_indented_printf.patch<br>
&gt;&gt; +++ /dev/null<br>
&gt;&gt; @@ -1,30 +0,0 @@<br>
&gt;&gt; -From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:0=
0 2001<br>
&gt;&gt; -From: Chris Lumens&lt;<a href=3D"mailto:clumens@redhat.com" targ=
et=3D"_blank">clumens@redhat.com</a>&gt;<br>
&gt;&gt; -Date: Thu, 2 Jan 2020 15:08:58 -0500<br>
&gt;&gt; -Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_in=
dented_printf.<br>
&gt;&gt; -<br>
&gt;&gt; -The placeholder version that is built if curses is not enabled d=
oes not<br>
&gt;&gt; -have a type that matches the header file.=C2=A0 Correct that.<br=
>
&gt;&gt; -<br>
&gt;&gt; -Signed-off-by: Jeremy A. Puhlman&lt;<a href=3D"mailto:jpuhlman@m=
vista.com" target=3D"_blank">jpuhlman@mvista.com</a>&gt;<br>
&gt;&gt; -Upstream-Status: Backport[git]<br>
&gt;&gt; ----<br>
&gt;&gt; - tools/crm_mon_curses.c | 2 +-<br>
&gt;&gt; - 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt; -<br>
&gt;&gt; -diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c<br>
&gt;&gt; -index c0dbedbf0..ecd0584fe 100644<br>
&gt;&gt; ---- a/tools/crm_mon_curses.c<br>
&gt;&gt; -+++ b/tools/crm_mon_curses.c<br>
&gt;&gt; -@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out,=
 const char *format, va_list args) {<br>
&gt;&gt; -<br>
&gt;&gt; - G_GNUC_PRINTF(2, 3)<br>
&gt;&gt; - void<br>
&gt;&gt; --curses_indented_printf(pcmk__output_t *out, const char *format,=
 va_list args) {<br>
&gt;&gt; -+curses_indented_printf(pcmk__output_t *out, const char *format,=
 ...) {<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0return;<br>
&gt;&gt; - }<br>
&gt;&gt; -<br>
&gt;&gt; ---<br>
&gt;&gt; -2.23.0<br>
&gt;&gt; -<br>
&gt;&gt; diff --git a/meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"htt=
p://pacemaker_2.0.3.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.=
3.bb</a> b/meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"http://pacemake=
r_2.0.5.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.5.bb</a><br>
&gt;&gt; similarity index 96%<br>
&gt;&gt; rename from meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"http=
://pacemaker_2.0.3.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.3=
.bb</a><br>
&gt;&gt; rename to meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"http:/=
/pacemaker_2.0.5.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.5.b=
b</a><br>
&gt;&gt; index 8576f18..6cfa057 100644<br>
&gt;&gt; --- a/meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"http://pac=
emaker_2.0.3.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.3.bb</a=
><br>
&gt;&gt; +++ b/meta-cgl-common/recipes-cgl/pacemaker/<a href=3D"http://pac=
emaker_2.0.5.bb" rel=3D"noreferrer" target=3D"_blank">pacemaker_2.0.5.bb</a=
><br>
&gt;&gt; @@ -14,9 +14,7 @@ LIC_FILES_CHKSUM =3D&quot;file://COPYING;md5=3D=
000212f361a81b100d9d0f0435040663&quot;<br>
&gt;&gt;=C2=A0 =C2=A0DEPENDS =3D &quot;corosync libxslt libxml2 gnutls res=
ource-agents libqb python3-native&quot;<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/=
ClusterLabs/$%7BBPN%7D.git" rel=3D"noreferrer" target=3D"_blank">github.com=
/ClusterLabs/${BPN}.git</a> \<br>
&gt;&gt; -file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.p=
atch=C2=A0 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Fix-p=
ython3-usage.patch=C2=A0 \<br>
&gt;&gt; -file://0001-Mark-declaration-with-extern.patch=C2=A0 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-pacem=
aker-set-OCF_ROOT_DIR-to-libdir-ocf.patch=C2=A0 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://volatiles=
=C2=A0 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://tmpfiles=
=C2=A0 \<br>
&gt;&gt; @@ -26,7 +24,7 @@ CFLAGS +=3D &quot;-I${STAGING_INCDIR}/heartbeat=
&quot;<br>
&gt;&gt;=C2=A0 =C2=A0CPPFLAGS +=3D&quot;-I${STAGING_INCDIR}/heartbeat&quot=
;<br>
&gt;&gt;=C2=A0 =C2=A0SRC_URI_append_libc-musl =3D&quot;file://0001-pacemak=
er-fix-compile-error-of-musl-libc.patch&quot;<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt; -SRCREV =3D &quot;4b1f869f0f64ef0d248b6aa4781d38ecccf83318&quot;<=
br>
&gt;&gt; +SRCREV =3D &quot;ba59be71228fed04f78ab374dfac748d314d0e89&quot;<=
br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0inherit autotools-brokensep pkgconfig systemd python3=
native python3-dir useradd<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt; @@ -78,6 +76,7 @@ do_install_append() {<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${localstatedir}/lib/heartbe=
at<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${localstatedir}/run<br>
&gt;&gt; +=C2=A0 =C2=A0 rm -rf ${D}${localstatedir}/log<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# remove buildpath<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tempdirs=3D$(grep -Rn ${RECIPE_SYSROOT_=
NATIVE} ${D}/* | awk -F: &#39;{print $1}&#39; | uniq)<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">Jeremy Puhlman<br>Montavista Software, LLC.</di=
v>

--000000000000445fbc05bfd1d75e--
