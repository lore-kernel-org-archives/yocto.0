Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C416E00751; Mon,  5 Jan 2015 13:34:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5119FE003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 13:34:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2015 13:34:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,702,1413270000"; d="scan'208";a="632851970"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2015 13:34:41 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 5 Jan 2015 13:34:41 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX115.amr.corp.intel.com ([169.254.10.66]) with mapi id
	14.03.0195.001; Mon, 5 Jan 2015 13:34:41 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] yocto-docs: Tidy up documentation Makefile.
Thread-Index: AQHQJDA001+DzQ6UK02dsXCtu0lJHJyyFl5Q
Date: Mon, 5 Jan 2015 21:34:40 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9088F@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1412300753001.10446@localhost>
In-Reply-To: <alpine.LFD.2.11.1412300753001.10446@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] yocto-docs: Tidy up documentation Makefile.
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
X-List-Received-Date: Mon, 05 Jan 2015 21:34:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied.  Thanks Robert.

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Tuesday, December 30, 2014 4:57 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] yocto-docs: Tidy up documentation Makefile.
>
>
>Some aesthetic fixes to yocto-docs Makefile, none of which should affect t=
he
>documentation builds:
>
>  * small number of typos fixed
>  * documentation corrected in a couple places
>  * for most part, reduce line lengths to 80 for printing
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>  was going to fix just a couple typos, then figured that while i was ther=
e, might
>as well do some cleanup, mostly in the area of reducing line lengths to 80
>where possible for printing. feel free to comment on any other possible
>aesthetic fixes, i can add them and resubmit.
>
>diff --git a/documentation/Makefile b/documentation/Makefile index
>3bc9a21..78a2e8e 100644
>--- a/documentation/Makefile
>+++ b/documentation/Makefile
>@@ -1,22 +1,22 @@
> # This is a single Makefile to handle all generated Yocto Project documen=
ts.
>-# The Makefile needs to live in the documents directory and all figures u=
sed -
># in any manuals must be .PNG files and live in the individual book's figu=
res -#
>directory as well as in the figures directory for the mega-manual.
>+# The Makefile needs to live in the documentation/ directory and all
>+figures # used in any manuals must be .PNG files and live in the
>+individual book's # figures/ directory as well as in the figures/ directo=
ry for
>the mega-manual.
> # Note that the figures for the Yocto Project Development Manual  # diffe=
r
>depending on the BRANCH being built.
> #
> # The Makefile has these targets:
> #
>-#    pdf:      generates a PDF version of a manual.  Not valid for the Qu=
ick Start
>-#              or the mega-manual (single, large HTML file comprised of a=
ll
>-#              Yocto Project manuals).
>-#    html:     generates an HTML version of a manual.
>-#    eclipse:  generates an HTML version of a manual that can be used as
>-#              eclipse help (including necessary metadata files).
>-#    tarball:  creates a tarball for the doc files.
>-#    validate: validates
>-#    publish:  pushes generated files to the Yocto Project website
>-#    clean:    removes files
>+#    pdf:	generates a PDF version of a manual.  Not valid for the
>+#		Quick Start or the mega-manual (single, large HTML file
>+#		comprised of all Yocto Project manuals).
>+#    html:	generates an HTML version of a manual.
>+#    eclipse:	generates an HTML version of a manual that can be used as
>+#		eclipse help (including necessary metadata files).
>+#    tarball:	creates a tarball for the doc files.
>+#    validate:	validates
>+#    publish:	pushes generated files to the Yocto Project website
>+#    clean:	removes files
> #
> # The Makefile generates an HTML and PDF version of every document
>except the  # Yocto Project Quick Start and the single, HTML mega-manual,
>which is comprised @@ -33,7 +33,7 @@  # To build a manual, you must invoke
>Makefile with the DOC argument.  If you  # are going to publish the manual=
,
>then you must invoke Makefile with both the  # DOC and the VER argument.
>Furthermore, if you are building or publishing -# the edison or denzil ver=
sions
>of the Yocto Poject Development Manual or
>+# the edison or denzil versions of the Yocto Project Development Manual
>+or
> # the mega-manual, you must also use the BRANCH argument.
> #
> # Examples:
>@@ -45,18 +45,19 @@
> #     make DOC=3Dmega-manual BRANCH=3Ddenzil
> #
> # The first example generates the HTML and PDF versions of the BSP Guide.
>-# The second example generates the HTML version only of the Quick Start.
>Note that -# the Quick Start only has an HTML version available.  The thir=
d
>example generates -# both the PDF and HTML versions of the Yocto Project
>Reference Manual. The -# fourth example generates both the PDF and HTML
>'edison' versions of the YP -# Development Manual.  The last exmample
>generates the HTML version of the -# mega-manual and uses the 'denzil'
>branch when choosing figures for the
>+# The second example generates the HTML version only of the Quick
>+Start.  Note # that the Quick Start only has an HTML version available.
>+The third example # generates just the PDF version of the Yocto Project
>Reference Manual.
>+# The fourth example generates both the PDF and HTML 'edison' versions
>+# of the YP Development Manual.  The last example generates the HTML
>+version # of the mega-manual and uses the 'denzil' branch when choosing
>+figures for the
> # tarball of figures.  Any example that does not use the BRANCH argument =
 #
>builds the current version of the manual set.
> #
> # Use the publish target to push the generated manuals to the Yocto Proje=
ct -
># website.  All files needed for the manual's HTML form are pushed as well=
 as
>the -# PDF version (if applicable).
>+# website.  All files needed for the manual's HTML form are pushed as
>+well as # the PDF version (if applicable).
>+#
> # Examples:
> #
> #    make publish DOC=3Dbsp-guide VER=3D1.3
>@@ -64,11 +65,11 @@
> #    make publish DOC=3Ddev-manual VER=3D1.1.1 BRANCH=3Dedison
> #    make publish DOC=3Ddev-manual VER=3D1.2 BRANCH=3Ddenzil
> #
>-# The first example publishes the 1.3 version of both the PDF and HTML
>versions of -# the BSP Guide.  The second example publishes the 1.3 versio=
n
>of both the PDF and -# HTML versions of the ADT Manual. The third example
>publishes the PDF and HTML -# 'edison' versions of the YP Development
>Manual.  The fourth example publishes -# the PDF and HTML 'denzil' version=
s
>of the YP Development Manual.
>+# The first example publishes the 1.3 version of both the PDF and HTML
>+versions # of the BSP Guide.  The second example publishes the 1.3
>+version of both the # PDF and HTML versions of the ADT Manual. The
>+third example publishes the PDF # and HTML 'edison' versions of the YP
>+Development Manual.  The fourth example # publishes the PDF and HTML
>'denzil' versions of the YP Development Manual.
> #
>
> ifeq ($(DOC),bsp-guide)
>@@ -86,16 +87,18 @@ ifeq ($(DOC),dev-manual)  XSLTOPTS =3D --xinclude
>ALLPREQ =3D html pdf eclipse tarball  # -# Note that the tarfile might pro=
duce
>the "Cannot stat: No such file or directory" error -# message for .PNG fil=
es
>that are not present when building a particular branch.  The -# list of fi=
les is all-
>inclusive for all branches.  Note, if you don't provide a BRANCH -# option=
, it
>defaults to the latest stuff.  This would be appropriate for "master" bran=
ch.
>+# Note that the tarfile might produce the "Cannot stat: No such file or
>+# directory" error message for .PNG files that are not present when
>+building # a particular branch.  The list of files is all-inclusive for a=
ll branches.
>+# Note, if you don't provide a BRANCH option, it defaults to the latest s=
tuff.
>+# This would be appropriate for "master" branch.
> #
>
> 	ifeq ($(BRANCH),edison)
> TARFILES =3D dev-style.css dev-manual.html dev-manual.pdf \
>-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-           figures/git-workflow.png figures/index-downloads.png figures/k=
ernel-
>dev-flow.png \
>+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+           figures/dev-title.png figures/git-workflow.png \
>+           figures/index-downloads.png figures/kernel-dev-flow.png \
>            figures/kernel-example-repos-edison.png \
>            figures/kernel-overview-1.png figures/kernel-overview-2.png \
>            figures/kernel-overview-3-edison.png \ @@ -103,8 +106,9 @@
>TARFILES =3D dev-style.css dev-manual.html dev-manual.pdf \
>            figures/wip.png
> 	else ifeq ($(BRANCH),denzil)
> TARFILES =3D dev-style.css dev-manual.html dev-manual.pdf \
>-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-           figures/git-workflow.png figures/index-downloads.png figures/k=
ernel-
>dev-flow.png \
>+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+           figures/dev-title.png figures/git-workflow.png \
>+           figures/index-downloads.png figures/kernel-dev-flow.png \
>            figures/kernel-example-repos-denzil.png \
>            figures/kernel-overview-1.png figures/kernel-overview-2.png \
>            figures/kernel-overview-3-denzil.png \ @@ -112,10 +116,12 @@
>TARFILES =3D dev-style.css dev-manual.html dev-manual.pdf \
>            figures/wip.png
>         else
> TARFILES =3D dev-style.css dev-manual.html dev-manual.pdf \
>-           figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-           figures/git-workflow.png figures/index-downloads.png figures/k=
ernel-
>dev-flow.png \
>+           figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+           figures/dev-title.png figures/git-workflow.png \
>+           figures/index-downloads.png figures/kernel-dev-flow.png \
>            figures/kernel-overview-1.png figures/kernel-overview-2-generi=
c.png \
>-           figures/source-repos.png figures/yp-download.png figures/recip=
e-
>workflow.png \
>+           figures/source-repos.png figures/yp-download.png \
>+           figures/recipe-workflow.png \
>            eclipse
> 	endif
>
>@@ -146,61 +152,82 @@ XSLTOPTS =3D --stringparam html.stylesheet mega-
>style.css \  ALLPREQ =3D html tarball
>
> 	ifeq ($(BRANCH),edison)
>-TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png figures/building-an-image.png  \
>+TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png \
>+        figures/building-an-image.png  \
> 	figures/using-a-pre-built-image.png \
> 	figures/poky-title.png \
> 	figures/adt-title.png figures/bsp-title.png \
> 	figures/kernel-title.png figures/kernel-architecture-overview.png \
>-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-	figures/git-workflow.png figures/index-downloads.png
>figures/kernel-dev-flow.png \
>+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+        figures/dev-title.png figures/git-workflow.png \
>+        figures/index-downloads.png figures/kernel-dev-flow.png \
> 	figures/kernel-example-repos-edison.png \
> 	figures/kernel-overview-1.png figures/kernel-overview-2.png \
> 	figures/kernel-overview-3-edison.png \
> 	figures/source-repos.png figures/yp-download.png \
> 	figures/wip.png
> 	else ifeq ($(BRANCH),denzil)
>-TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png figures/building-an-image.png  \
>+TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png \
>+        figures/building-an-image.png  \
> 	figures/using-a-pre-built-image.png \
> 	figures/poky-title.png \
> 	figures/adt-title.png figures/bsp-title.png \
> 	figures/kernel-title.png figures/kernel-architecture-overview.png \
>-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-	figures/git-workflow.png figures/index-downloads.png
>figures/kernel-dev-flow.png \
>+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+        figures/dev-title.png figures/git-workflow.png \
>+        figures/index-downloads.png figures/kernel-dev-flow.png \
> 	figures/kernel-example-repos-denzil.png \
> 	figures/kernel-overview-1.png figures/kernel-overview-2.png \
> 	figures/kernel-overview-3-denzil.png \
> 	figures/source-repos.png figures/yp-download.png \
> 	figures/wip.png
>         else
>-TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png figures/building-an-image.png  \
>+TARFILES =3D mega-manual.html mega-style.css figures/yocto-
>environment.png \
>+        figures/building-an-image.png  \
> 	figures/using-a-pre-built-image.png \
>-	figures/poky-title.png figures/buildhistory.png figures/buildhistory-
>web.png \
>+	figures/poky-title.png figures/buildhistory.png \
>+        figures/buildhistory-web.png \
> 	figures/adt-title.png figures/bsp-title.png \
> 	figures/kernel-dev-title.png figures/kernel-architecture-
>overview.png \
>-	figures/app-dev-flow.png figures/bsp-dev-flow.png figures/dev-
>title.png \
>-	figures/git-workflow.png figures/index-downloads.png
>figures/kernel-dev-flow.png \
>+	figures/app-dev-flow.png figures/bsp-dev-flow.png \
>+        figures/dev-title.png \
>+	figures/git-workflow.png figures/index-downloads.png \
>+        figures/kernel-dev-flow.png \
> 	figures/kernel-overview-1.png figures/kernel-overview-2-
>generic.png \
> 	figures/source-repos.png figures/yp-download.png \
>         figures/profile-title.png figures/kernelshark-all.png \
>-        figures/kernelshark-choose-events.png figures/kernelshark-i915-
>display.png \
>+        figures/kernelshark-choose-events.png \
>+        figures/kernelshark-i915-display.png \
>         figures/kernelshark-output-display.png figures/lttngmain0.png \
>         figures/oprofileui-busybox.png figures/oprofileui-copy-to-user.pn=
g \
>         figures/oprofileui-downloading.png figures/oprofileui-processes.p=
ng \
>-        figures/perf-probe-do_fork-profile.png figures/perf-report-cycles=
-u.png
>\
>+        figures/perf-probe-do_fork-profile.png \
>+        figures/perf-report-cycles-u.png \
>         figures/perf-systemwide.png figures/perf-systemwide-libc.png \
>-        figures/perf-wget-busybox-annotate-menu.png figures/perf-wget-
>busybox-annotate-udhcpc.png \
>-        figures/perf-wget-busybox-debuginfo.png figures/perf-wget-busybox=
-
>dso-zoom.png \
>-        figures/perf-wget-busybox-dso-zoom-menu.png figures/perf-wget-
>busybox-expanded-stripped.png \
>-        figures/perf-wget-flat-stripped.png figures/perf-wget-g-copy-from=
-
>user-expanded-stripped.png \
>-        figures/perf-wget-g-copy-to-user-expanded-debuginfo.png
>figures/perf-wget-g-copy-to-user-expanded-stripped.png \
>-        figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-
>hidden.png figures/pybootchartgui-linux-yocto.png \
>-        figures/pychart-linux-yocto-rpm.png figures/pychart-linux-yocto-r=
pm-
>nostrip.png \
>+        figures/perf-wget-busybox-annotate-menu.png \
>+        figures/perf-wget-busybox-annotate-udhcpc.png \
>+        figures/perf-wget-busybox-debuginfo.png \
>+        figures/perf-wget-busybox-dso-zoom.png \
>+        figures/perf-wget-busybox-dso-zoom-menu.png \
>+        figures/perf-wget-busybox-expanded-stripped.png \
>+        figures/perf-wget-flat-stripped.png \
>+        figures/perf-wget-g-copy-from-user-expanded-stripped.png \
>+        figures/perf-wget-g-copy-to-user-expanded-debuginfo.png \
>+        figures/perf-wget-g-copy-to-user-expanded-stripped.png \
>+        figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-
>hidden.png \
>+        figures/pybootchartgui-linux-yocto.png \
>+        figures/pychart-linux-yocto-rpm.png \
>+        figures/pychart-linux-yocto-rpm-nostrip.png \
>         figures/sched-wakeup-profile.png figures/sysprof-callers.png \
>-        figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.p=
ng
>figures/cross-development-toolchains.png \
>-	figures/yocto-environment-ref.png figures/user-configuration.png
>figures/source-input.png \
>-	figures/package-feeds.png figures/layer-input.png
>figures/images.png figures/sdk.png \
>-	figures/source-fetching.png figures/patching.png
>figures/configuration-compile-autoreconf.png \
>-	figures/analysis-for-package-splitting.png figures/image-
>generation.png \
>+        figures/sysprof-copy-from-user.png figures/sysprof-copy-to-user.p=
ng \
>+        figures/cross-development-toolchains.png \
>+	figures/yocto-environment-ref.png figures/user-configuration.png \
>+        figures/source-input.png figures/package-feeds.png \
>+        figures/layer-input.png figures/images.png figures/sdk.png \
>+	figures/source-fetching.png figures/patching.png \
>+        figures/configuration-compile-autoreconf.png \
>+	figures/analysis-for-package-splitting.png \
>+        figures/image-generation.png \
> 	figures/sdk-generation.png figures/recipe-workflow.png
> 	endif
>
>@@ -243,19 +270,28 @@ XSLTOPTS =3D --xinclude  ALLPREQ =3D html pdf eclips=
e
>tarball  TARFILES =3D profile-manual.html profile-manual.pdf profile-manua=
l-
>style.css \
>            figures/profile-title.png figures/kernelshark-all.png \
>-           figures/kernelshark-choose-events.png figures/kernelshark-i915=
-
>display.png \
>+           figures/kernelshark-choose-events.png \
>+           figures/kernelshark-i915-display.png \
>            figures/kernelshark-output-display.png figures/lttngmain0.png =
\
>            figures/oprofileui-busybox.png figures/oprofileui-copy-to-user=
.png \
>            figures/oprofileui-downloading.png figures/oprofileui-processe=
s.png \
>-           figures/perf-probe-do_fork-profile.png figures/perf-report-cyc=
les-
>u.png \
>+           figures/perf-probe-do_fork-profile.png \
>+           figures/perf-report-cycles-u.png \
>            figures/perf-systemwide.png figures/perf-systemwide-libc.png \
>-           figures/perf-wget-busybox-annotate-menu.png figures/perf-wget-
>busybox-annotate-udhcpc.png \
>-           figures/perf-wget-busybox-debuginfo.png figures/perf-wget-busy=
box-
>dso-zoom.png \
>-           figures/perf-wget-busybox-dso-zoom-menu.png figures/perf-wget-
>busybox-expanded-stripped.png \
>-           figures/perf-wget-flat-stripped.png figures/perf-wget-g-copy-f=
rom-
>user-expanded-stripped.png \
>-           figures/perf-wget-g-copy-to-user-expanded-debuginfo.png
>figures/perf-wget-g-copy-to-user-expanded-stripped.png \
>-           figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-
>hidden.png figures/pybootchartgui-linux-yocto.png \
>-           figures/pychart-linux-yocto-rpm.png figures/pychart-linux-yoct=
o-rpm-
>nostrip.png \
>+           figures/perf-wget-busybox-annotate-menu.png \
>+           figures/perf-wget-busybox-annotate-udhcpc.png \
>+           figures/perf-wget-busybox-debuginfo.png \
>+           figures/perf-wget-busybox-dso-zoom.png \
>+           figures/perf-wget-busybox-dso-zoom-menu.png \
>+           figures/perf-wget-busybox-expanded-stripped.png \
>+           figures/perf-wget-flat-stripped.png \
>+           figures/perf-wget-g-copy-from-user-expanded-stripped.png \
>+           figures/perf-wget-g-copy-to-user-expanded-debuginfo.png \
>+           figures/perf-wget-g-copy-to-user-expanded-stripped.png \
>+           figures/perf-wget-g-copy-to-user-expanded-stripped-unresolved-
>hidden.png \
>+           figures/pybootchartgui-linux-yocto.png \
>+           figures/pychart-linux-yocto-rpm.png \
>+           figures/pychart-linux-yocto-rpm-nostrip.png \
>            figures/sched-wakeup-profile.png figures/sysprof-callers.png \
>            figures/sysprof-copy-from-user.png figures/sysprof-copy-to-use=
r.png \
>            eclipse
>@@ -267,7 +303,8 @@ endif
> ifeq ($(DOC),kernel-dev)
> XSLTOPTS =3D --xinclude
> ALLPREQ =3D html pdf eclipse tarball
>-TARFILES =3D kernel-dev.html kernel-dev.pdf kernel-dev-style.css
>figures/kernel-dev-title.png \
>+TARFILES =3D kernel-dev.html kernel-dev.pdf kernel-dev-style.css \
>+           figures/kernel-dev-title.png \
>            figures/kernel-architecture-overview.png \
>            eclipse
> MANUALS =3D $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf $(DOC)/eclipse @@ -
>278,7 +315,7 @@ endif
>
> ##
> # These URI should be rewritten by your distribution's xml catalog to -# =
match
>your localy installed XSL stylesheets.
>+# match your locally installed XSL stylesheets.
> XSL_BASE_URI  =3D http://docbook.sourceforge.net/release/xsl/current
> XSL_XHTML_URI =3D $(XSL_BASE_URI)/xhtml/docbook.xsl
>
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

