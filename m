Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08CFAE008DC; Tue, 30 Dec 2014 05:36:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
X-Greylist: delayed 2305 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Dec 2014 05:35:55 PST
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16708E008B4
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 05:35:55 -0800 (PST)
Received: from [70.30.87.145] (port=33194 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y5wMW-0003CF-8d; Tue, 30 Dec 2014 07:57:24 -0500
Date: Tue, 30 Dec 2014 07:57:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1412300753001.10446@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: [PATCH] yocto-docs: Tidy up documentation Makefile.
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
X-List-Received-Date: Tue, 30 Dec 2014 13:36:07 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Some aesthetic fixes to yocto-docs Makefile, none of which should
affect the documentation builds:

  * small number of typos fixed
  * documentation corrected in a couple places
  * for most part, reduce line lengths to 80 for printing

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  was going to fix just a couple typos, then figured that while i was
there, might as well do some cleanup, mostly in the area of reducing
line lengths to 80 where possible for printing. feel free to comment
on any other possible aesthetic fixes, i can add them and resubmit.

diff --git a/documentation/Makefile b/documentation/Makefile
index 3bc9a21..78a2e8e 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -1,22 +1,22 @@
 # This is a single Makefile to handle all generated Yocto Project documents.
-# The Makefile needs to live in the documents directory and all figures used
-# in any manuals must be .PNG files and live in the individual book's figures
-# directory as well as in the figures directory for the mega-manual.
+# The Makefile needs to live in the documentation/ directory and all figures
+# used in any manuals must be .PNG files and live in the individual book's
+# figures/ directory as well as in the figures/ directory for the mega-manual.
 # Note that the figures for the Yocto Project Development Manual
 # differ depending on the BRANCH being built.
 #
 # The Makefile has these targets:
 #
-#    pdf:      generates a PDF version of a manual.  Not valid for the Quick Start
-#              or the mega-manual (single, large HTML file comprised of all
-#              Yocto Project manuals).
-#    html:     generates an HTML version of a manual.
-#    eclipse:  generates an HTML version of a manual that can be used as
-#              eclipse help (including necessary metadata files).
-#    tarball:  creates a tarball for the doc files.
-#    validate: validates
-#    publish:  pushes generated files to the Yocto Project website
-#    clean:    removes files
+#    pdf:	generates a PDF version of a manual.  Not valid for the
+#		Quick Start or the mega-manual (single, large HTML file
+#		comprised of all Yocto Project manuals).
+#    html:	generates an HTML version of a manual.
+#    eclipse:	generates an HTML version of a manual that can be used as
+#		eclipse help (including necessary metadata files).
+#    tarball:	creates a tarball for the doc files.
+#    validate:	validates
+#    publish:	pushes generated files to the Yocto Project website
+#    clean:	removes files
 #
 # The Makefile generates an HTML and PDF version of every document except the
 # Yocto Project Quick Start and the single, HTML mega-manual, which is comprised
@@ -33,7 +33,7 @@
 # To build a manual, you must invoke Makefile with the DOC argument.  If you
 # are going to publish the manual, then you must invoke Makefile with both the
 # DOC and the VER argument.  Furthermore, if you are building or publishing
-# the edison or denzil versions of the Yocto Poject Development Manual or
+# the edison or denzil versions of the Yocto Project Development Manual or
 # the mega-manual, you must also use the BRANCH argument.
 #
 # Examples:
@@ -45,18 +45,19 @@
 #     make DOC=mega-manual BRANCH=denzil
 #
 # The first example generates the HTML and PDF versions of the BSP Guide.
-# The second example generates the HTML version only of the Quick Start.  Note that
-# the Quick Start only has an HTML version available.  The third example generates
-# both the PDF and HTML versions of the Yocto Project Reference Manual. The
-# fourth example generates both the PDF and HTML 'edison' versions of the YP
-# Development Manual.  The last exmample generates the HTML version of the
-# mega-manual and uses the 'denzil' branch when choosing figures for the
+# The second example generates the HTML version only of the Quick Start.  Note
+# that the Quick Start only has an HTML version available.  The third example
+# generates just the PDF version of the Yocto Project Reference Manual.
+# The fourth example generates both the PDF and HTML 'edison' versions
+# of the YP Development Manual.  The last example generates the HTML version
+# of the mega-manual and uses the 'denzil' branch when choosing figures for the
 # tarball of figures.  Any example that does not use the BRANCH argument
 # builds the current version of the manual set.
 #
 # Use the publish target to push the generated manuals to the Yocto Project
-# website.  All files needed for the manual's HTML form are pushed as well as the
-# PDF version (if applicable).
+# website.  All files needed for the manual's HTML form are pushed as well as
+# the PDF version (if applicable).
+#
 # Examples:
 #
 #    make publish DOC=bsp-guide VER=1.3
@@ -64,11 +65,11 @@
 #    make publish DOC=dev-manual VER=1.1.1 BRANCH=edison
 #    make publish DOC=dev-manual VER=1.2 BRANCH=denzil
 #
-# The first example publishes the 1.3 version of both the PDF and HTML versions of
-# the BSP Guide.  The second example publishes the 1.3 version of both the PDF and
-# HTML versions of the ADT Manual. The third example publishes the PDF and HTML
-# 'edison' versions of the YP Development Manual.  The fourth example publishes
-# the PDF and HTML 'denzil' versions of the YP Development Manual.
+# The first example publishes the 1.3 version of both the PDF and HTML versions
+# of the BSP Guide.  The second example publishes the 1.3 version of both the
+# PDF and HTML versions of the ADT Manual. The third example publishes the PDF
+# and HTML 'edison' versions of the YP Development Manual.  The fourth example
+# publishes the PDF and HTML 'denzil' versions of the YP Development Manual.
 #

 ifeq ($(DOC),bsp-guide)
@@ -86,16 +87,18 @@ ifeq ($(DOC),dev-manual)
 XSLTOPTS = --xinclude
 ALLPREQ = html pdf eclipse tarball
 #
-# Note that the tarfile might produce the "Cannot stat: No such file or directory" error
-# message for .PNG files that are not present when building a particular branch.  The
-# list of files is all-inclusive for all branches.  Note, if you don't provide a BRANCH
-# option, it defaults to the latest stuff.  This would be appropriate for "master" branch.
+# Note that the tarfile might produce the "Cannot stat: No such file or
+# directory" error message for .PNG files that are not present when building
+# a particular branch.  The list of files is all-inclusive for all branches.
+# Note, if you don't provide a BRANCH option, it defaults to the latest stuff.
+# This would be appropriate for "master" branch.
 #

 	ifeq ($(BRANCH),edison)
 TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-           figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
+           figures/dev-title.png figures/git-workflow.png \
+           figures/index-downloads.png figures/kernel-dev-flow.png \
            figures/kernel-example-repos-edison.png \
            figures/kernel-overview-1.png figures/kernel-overview-2.png \
            figures/kernel-overview-3-edison.png \
@@ -103,8 +106,9 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/wip.png
 	else ifeq ($(BRANCH),denzil)
 TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-           figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
+           figures/dev-title.png figures/git-workflow.png \
+           figures/index-downloads.png figures/kernel-dev-flow.png \
            figures/kernel-example-repos-denzil.png \
            figures/kernel-overview-1.png figures/kernel-overview-2.png \
            figures/kernel-overview-3-denzil.png \
@@ -112,10 +116,12 @@ TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
            figures/wip.png
         else
 TARFILES = dev-style.css dev-manual.html dev-manual.pdf \
-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-           figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
+           figures/dev-title.png figures/git-workflow.png \
+           figures/index-downloads.png figures/kernel-dev-flow.png \
            figures/kernel-overview-1.png figures/kernel-overview-2-generic.png \
-           figures/source-repos.png figures/yp-download.png figures/recipe-workflow.png \
+           figures/source-repos.png figures/yp-download.png \
+           figures/recipe-workflow.png \
            eclipse
 	endif

@@ -146,61 +152,82 @@ XSLTOPTS = --stringparam html.stylesheet mega-style.css \
 ALLPREQ = html tarball

 	ifeq ($(BRANCH),edison)
-TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png figures/building-an-image.png  \
+TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png \
+        figures/building-an-image.png  \
 	figures/using-a-pre-built-image.png \
 	figures/poky-title.png \
 	figures/adt-title.png figures/bsp-title.png \
 	figures/kernel-title.png figures/kernel-architecture-overview.png \
-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-	figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
+        figures/dev-title.png figures/git-workflow.png \
+        figures/index-downloads.png figures/kernel-dev-flow.png \
 	figures/kernel-example-repos-edison.png \
 	figures/kernel-overview-1.png figures/kernel-overview-2.png \
 	figures/kernel-overview-3-edison.png \
 	figures/source-repos.png figures/yp-download.png \
 	figures/wip.png
 	else ifeq ($(BRANCH),denzil)
-TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png figures/building-an-image.png  \
+TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png \
+        figures/building-an-image.png  \
 	figures/using-a-pre-built-image.png \
 	figures/poky-title.png \
 	figures/adt-title.png figures/bsp-title.png \
 	figures/kernel-title.png figures/kernel-architecture-overview.png \
-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-	figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
+        figures/dev-title.png figures/git-workflow.png \
+        figures/index-downloads.png figures/kernel-dev-flow.png \
 	figures/kernel-example-repos-denzil.png \
 	figures/kernel-overview-1.png figures/kernel-overview-2.png \
 	figures/kernel-overview-3-denzil.png \
 	figures/source-repos.png figures/yp-download.png \
 	figures/wip.png
         else
-TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png figures/building-an-image.png  \
+TARFILES = mega-manual.html mega-style.css figures/yocto-environment.png \
+        figures/building-an-image.png  \
 	figures/using-a-pre-built-image.png \
-	figures/poky-title.png figures/buildhistory.png figures/buildhistory-web.png \
+	figures/poky-title.png figures/buildhistory.png \
+        figures/buildhistory-web.png \
 	figures/adt-title.png figures/bsp-title.png \
 	figures/kernel-dev-title.png figures/kernel-architecture-overview.png \
-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-title.png \
-	figures/git-workflow.png figures/index-downloads.png figures/kernel-dev-flow.png \
+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
+        figures/dev-title.png \
+	figures/git-workflow.png figures/index-downloads.png \
+        figures/kernel-dev-flow.png \
 	figures/kernel-overview-1.png figures/kernel-overview-2-generic.png \
 	figures/source-repos.png figures/yp-download.png \
         figures/profile-title.png figures/kernelshark-all.png \
-        figures/kernelshark-choose-events.png figures/kernelshark-i915-display.png \
+        figures/kernelshark-choose-events.png \
+        figures/kernelshark-i915-display.png \
         figures/kernelshark-output-display.png figures/lttngmain0.png \
         figures/oprofileui-busybox.png figures/oprofileui-copy-to-user.png \
         figures/oprofileui-downloading.png figures/oprofileui-processes.png \
-        figures/perf-probe-do_fork-profile.png figures/perf-report-cycles-u.png \
+        figures/perf-probe-do_fork-profile.png \
+        figures/perf-report-cycles-u.png \
         figures/perf-systemwide.png figures/perf-systemwide-libc.png \
-        figures/perf-wget-busybox-annotate-menu.png figures/perf-wget-busybox-annotate-udhcpc.png \
-        figures/perf-wget-busybox-debuginfo.png figures/perf-wget-busybox-dso-zoom.png \
-        figures/perf-wget-busybox-dso-zoom-menu.png figures/perf-wget-busybox-expanded-stripped.png \
-        figures/perf-wget-flat-stripped.png figures/perf-wget-g-copy-from-user-expanded-stripped.png \
-        figures/perf-wget-g-copy-to-user-expanded-debuginfo.png figures/perf-wget-g-copy-to-user-expanded-stripped.png \
-        figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-hidden.png figures/pybootchartgui-linux-yocto.png \
-        figures/pychart-linux-yocto-rpm.png figures/pychart-linux-yocto-rpm-nostrip.png \
+        figures/perf-wget-busybox-annotate-menu.png \
+        figures/perf-wget-busybox-annotate-udhcpc.png \
+        figures/perf-wget-busybox-debuginfo.png \
+        figures/perf-wget-busybox-dso-zoom.png \
+        figures/perf-wget-busybox-dso-zoom-menu.png \
+        figures/perf-wget-busybox-expanded-stripped.png \
+        figures/perf-wget-flat-stripped.png \
+        figures/perf-wget-g-copy-from-user-expanded-stripped.png \
+        figures/perf-wget-g-copy-to-user-expanded-debuginfo.png \
+        figures/perf-wget-g-copy-to-user-expanded-stripped.png \
+        figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-hidden.png \
+        figures/pybootchartgui-linux-yocto.png \
+        figures/pychart-linux-yocto-rpm.png \
+        figures/pychart-linux-yocto-rpm-nostrip.png \
         figures/sched-wakeup-profile.png figures/sysprof-callers.png \
-        figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.png figures/cross-development-toolchains.png \
-	figures/yocto-environment-ref.png figures/user-configuration.png figures/source-input.png \
-	figures/package-feeds.png figures/layer-input.png figures/images.png figures/sdk.png \
-	figures/source-fetching.png figures/patching.png figures/configuration-compile-autoreconf.png \
-	figures/analysis-for-package-splitting.png figures/image-generation.png \
+        figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.png \
+        figures/cross-development-toolchains.png \
+	figures/yocto-environment-ref.png figures/user-configuration.png \
+        figures/source-input.png figures/package-feeds.png \
+        figures/layer-input.png figures/images.png figures/sdk.png \
+	figures/source-fetching.png figures/patching.png \
+        figures/configuration-compile-autoreconf.png \
+	figures/analysis-for-package-splitting.png \
+        figures/image-generation.png \
 	figures/sdk-generation.png figures/recipe-workflow.png
 	endif

@@ -243,19 +270,28 @@ XSLTOPTS = --xinclude
 ALLPREQ = html pdf eclipse tarball
 TARFILES = profile-manual.html profile-manual.pdf profile-manual-style.css \
            figures/profile-title.png figures/kernelshark-all.png \
-           figures/kernelshark-choose-events.png figures/kernelshark-i915-display.png \
+           figures/kernelshark-choose-events.png \
+           figures/kernelshark-i915-display.png \
            figures/kernelshark-output-display.png figures/lttngmain0.png \
            figures/oprofileui-busybox.png figures/oprofileui-copy-to-user.png \
            figures/oprofileui-downloading.png figures/oprofileui-processes.png \
-           figures/perf-probe-do_fork-profile.png figures/perf-report-cycles-u.png \
+           figures/perf-probe-do_fork-profile.png \
+           figures/perf-report-cycles-u.png \
            figures/perf-systemwide.png figures/perf-systemwide-libc.png \
-           figures/perf-wget-busybox-annotate-menu.png figures/perf-wget-busybox-annotate-udhcpc.png \
-           figures/perf-wget-busybox-debuginfo.png figures/perf-wget-busybox-dso-zoom.png \
-           figures/perf-wget-busybox-dso-zoom-menu.png figures/perf-wget-busybox-expanded-stripped.png \
-           figures/perf-wget-flat-stripped.png figures/perf-wget-g-copy-from-user-expanded-stripped.png \
-           figures/perf-wget-g-copy-to-user-expanded-debuginfo.png figures/perf-wget-g-copy-to-user-expanded-stripped.png \
-           figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-hidden.png figures/pybootchartgui-linux-yocto.png \
-           figures/pychart-linux-yocto-rpm.png figures/pychart-linux-yocto-rpm-nostrip.png \
+           figures/perf-wget-busybox-annotate-menu.png \
+           figures/perf-wget-busybox-annotate-udhcpc.png \
+           figures/perf-wget-busybox-debuginfo.png \
+           figures/perf-wget-busybox-dso-zoom.png \
+           figures/perf-wget-busybox-dso-zoom-menu.png \
+           figures/perf-wget-busybox-expanded-stripped.png \
+           figures/perf-wget-flat-stripped.png \
+           figures/perf-wget-g-copy-from-user-expanded-stripped.png \
+           figures/perf-wget-g-copy-to-user-expanded-debuginfo.png \
+           figures/perf-wget-g-copy-to-user-expanded-stripped.png \
+           figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-hidden.png \
+           figures/pybootchartgui-linux-yocto.png \
+           figures/pychart-linux-yocto-rpm.png \
+           figures/pychart-linux-yocto-rpm-nostrip.png \
            figures/sched-wakeup-profile.png figures/sysprof-callers.png \
            figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.png \
            eclipse
@@ -267,7 +303,8 @@ endif
 ifeq ($(DOC),kernel-dev)
 XSLTOPTS = --xinclude
 ALLPREQ = html pdf eclipse tarball
-TARFILES = kernel-dev.html kernel-dev.pdf kernel-dev-style.css figures/kernel-dev-title.png \
+TARFILES = kernel-dev.html kernel-dev.pdf kernel-dev-style.css \
+           figures/kernel-dev-title.png \
            figures/kernel-architecture-overview.png \
            eclipse
 MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse
@@ -278,7 +315,7 @@ endif

 ##
 # These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
+# match your locally installed XSL stylesheets.
 XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
 XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

