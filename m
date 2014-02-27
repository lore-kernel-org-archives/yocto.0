Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB60BE0090A
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 13:48:15 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id hm4so6848wib.13
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 13:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=RvBnPNCi402r1SdLZ9hrbaH3oxrdsl2VfwtQCxAA1KU=;
	b=R7ENhaSXUAnCsH5Xj9JKv/H2kp+utExh9hShpKG0bmgx++0AS6UZZ+nyVhY7uebZHg
	GtSfD/hmFBCWke0SnY8vF3XiSJDqf5KdeO5D/ppSIjqp94OwFWfOkuKeKSRewKyzgqP7
	ylLdTXSYFdKI9UWIqVgY8ZDauUDAuOOmdABROVav4E9jA+wVy4ytIZVU5NtBl7H3u9zK
	gKTkj0a4NdnvA2aNBeWH6vaPYbvpOdWP3POACdVuz7sslZSlA0NyVy4KaaqpI4GrSiqz
	dpyrE+MCHbaOlBeoHtdbBcqmj0KSiYIaTWSFNl4Q5B3DFdn6ORMgh1HKNbeh6RVs7G44
	xXyw==
X-Received: by 10.194.2.70 with SMTP id 6mr10197537wjs.25.1393537694729;
	Thu, 27 Feb 2014 13:48:14 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id lz3sm78367wic.1.2014.02.27.13.48.13
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 13:48:14 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 27 Feb 2014 21:47:40 +0000
Message-Id: <1d81c1a12a014becdf729412d57a318a4a826406.1393537481.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393537481.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393537481.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393537481.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393537481.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] mono-xsp: Updated to 2.10
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
X-List-Received-Date: Thu, 27 Feb 2014 21:48:17 -0000

Synopsis:

- mono-xsp package incorporates xsp/mod-mono/fastcgi support (< 400kB).
- mono-xsp-test package contains support .aspx pages for testing.

Testing:

- tested on a qemux86 based image with dependencies on mono-xsp, mono-xsp-test

mono /usr/lib/mono/2.0/xsp2.exe --root /usr/lib/xsp/test

Runs by default on :8080, displays "Welcome to Mono XSP!" page and examples appear to work

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-mono/mono-xsp/mono-xsp.inc      |   33 +++++
 recipes-mono/mono-xsp/mono-xsp_1.2.5.bb |  228 -------------------------------
 recipes-mono/mono-xsp/mono-xsp_2.10.bb  |    5 +
 3 files changed, 38 insertions(+), 228 deletions(-)
 create mode 100644 recipes-mono/mono-xsp/mono-xsp.inc
 delete mode 100644 recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
 create mode 100644 recipes-mono/mono-xsp/mono-xsp_2.10.bb

diff --git a/recipes-mono/mono-xsp/mono-xsp.inc b/recipes-mono/mono-xsp/mono-xsp.inc
new file mode 100644
index 0000000..58daa3d
--- /dev/null
+++ b/recipes-mono/mono-xsp/mono-xsp.inc
@@ -0,0 +1,33 @@
+DESCRIPTION = "Standalone web server written in C# that can be used to run ASP.NET applications"
+SECTION = "devel/mono"
+DEPENDS = "mono"
+RDEPENDS_${PN} = "mono"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=84b17f6d63c3c28399d0f3786831d40c"
+
+inherit autotools 
+
+SRC_URI = "http://download.mono-project.com/sources/xsp/xsp-${PV}.tar.bz2"
+
+S = "${WORKDIR}/xsp-${PV}"
+
+PACKAGES += "${PN}-test \
+	${PN}-unittest \
+"
+
+FILES_${PN}-test = "${libdir}/xsp/test/*"
+
+FILES_${PN}-unittest = "${libdir}/xsp/unittests/*"
+
+FILES_${PN}-doc += "${libdir}/monodoc/*"
+
+# AJL - For now we are going to parcel up the different XSP hosting (mod_mono, fastcgi, xsp) together. More granular packages in future
+FILES_${PN} = "${bindir}/* \
+	${libdir}/mono/* \
+	${libdir}/xsp/2.0/* \
+	${libdir}/xsp/4.0/* \
+"
+
+# We seem to run into problems with make parallelisation building mono-xsp, so disable it for now
+PARALLEL_MAKE = ""
+
diff --git a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb b/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
deleted file mode 100644
index a891fbb..0000000
--- a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
+++ /dev/null
@@ -1,228 +0,0 @@
-DESCRIPTION = "Standalone web server written in C# that can be used to run ASP.NET applications"
-SECTION = "devel/mono"
-
-# Issues:
-#  - packaging of mono-xsp is still broken.  It using using the default
-#    FILES list instead of the one specified below
-#  - scripts in /usr/bin contain the wrong paths
-#
-
-PR = "r5"
-
-DEPENDS = "mono"
-RDEPENDS_${PN} = "mono"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=9e1603e27acd337015fdfa7f7ff936c7"
-
-inherit autotools 
-
-SRC_URI = "http://go-mono.com/sources/xsp/xsp-${PV}.tar.bz2"
-
-S = "${WORKDIR}/xsp-${PV}"
-
-PACKAGES += "\
-	libmono-webserver1.0-cil \
-	libmono-webserver2.0-cil \
-	${PN}2 \
-	${PN}-test \
-	mono-mod-mono-server \
-	mono-mod-mono-server2 \
-	"
-
-FILES_libmono-webserver1.0-cil-dbg += " \
-	/usr/lib/mono/gac/Mono.WebServer/0.1.*/*.mdb \
-	"
-FILES_libmono-webserver1.0-cil = " \
-	/usr/lib/mono/gac/Mono.WebServer/0.1.*/ \
-	/usr/lib/mono/1.0/Mono.WebServer.dll \
-	"
-FILES_libmono-webserver2.0-cil-dbg += " \
-	/usr/lib/mono/gac/Mono.WebServer2/0.2.*/*.mdb \
-	"
-FILES_libmono-webserver2.0-cil = " \
-	/usr/lib/mono/gac/Mono.WebServer2/0.2.*/ \
-	/usr/lib/mono/2.0/Mono.WebServer2.dll \
-	"
-FILES_${PN}-dbg += " \
-	/usr/lib/mono/gac/xsp/1.2.*/*.mdb \
-	"
-FILES_${PN} = " \
-	/usr/lib/mono/gac/xsp/1.2.*/ \
-	/usr/lib/mono/1.0/xsp.exe \
-	/usr/bin/xsp \
-	/usr/bin/asp-state \
-	/usr/bin/dbsessmgr \
-	/usr/lib/xsp/1.0/asp-state.exe.config \
-	/usr/lib/xsp/1.0/asp-state.exe \
-	/usr/lib/xsp/1.0/dbsessmgr.exe.config \
-	/usr/lib/xsp/1.0/dbsessmgr.exe \
-	"
-FILES_mono-xsp2-dbg += " \
-	/usr/lib/mono/gac/xsp2/1.2.*/*.dbg \
-	"
-FILES_mono-xsp2 = " \
-	/usr/lib/mono/gac/xsp2/1.2.*/ \
-	/usr/lib/mono/2.0/xsp2.exe \
-	/usr/bin/xsp2 \
-	/usr/bin/asp-state2 \
-	/usr/bin/dbsessmgr2 \
-	/usr/lib/xsp/2.0/asp-state2.exe.config \
-	/usr/lib/xsp/2.0/asp-state2.exe \
-	/usr/lib/xsp/2.0/dbsessmgr2.exe.config \
-	/usr/lib/xsp/2.0/dbsessmgr2.exe \
-	"
-FILES_mono-mod-mono-server-dbg += "\
-	/usr/lib/mono/gac/mod-mono-server/1.2.*/*.mdb \
-	"
-FILES_mono-mod-mono-server = "\
-	/usr/lib/mono/gac/mod-mono-server/1.2.*/ \
-	/usr/lib/mono/1.0/mod-mono-server.exe \
-	/usr/bin/mod-mono-server \
-	"
-FILES_mono-mod-mono-server2-dbg += "\
-	/usr/lib/mono/gac/mod-mono-server2/1.2.*/*.mdb \
-	"
-FILES_mono-mod-mono-server2 = "\
-	/usr/lib/mono/gac/mod-mono-server2/1.2.*/ \
-	/usr/lib/mono/2.0/mod-mono-server2.exe \
-	/usr/bin/mod-mono-server2 \
-	"
-FILES_${PN}-dev = "\
-	/usr/lib/pkgconfig/xsp.pc \
-	/usr/lib/pkgconfig/xsp-2.pc \
-	"
-FILES_${PN}-test = " \
-	/usr/lib/xsp/test/1.1/authtest/index.aspx \
-	/usr/lib/xsp/test/1.1/authtest/login.aspx \
-	/usr/lib/xsp/test/1.1/authtest/web.config \
-	/usr/lib/xsp/test/1.1/asp.net/browsercaps.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/codebehind1.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/code-render.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/body.inc \
-	/usr/lib/xsp/test/1.1/asp.net/header.inc \
-	/usr/lib/xsp/test/1.1/asp.net/registertest1.ascx \
-	/usr/lib/xsp/test/1.1/asp.net/registertest2.ascx \
-	/usr/lib/xsp/test/1.1/asp.net/includetest.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/registertest.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/server-side-object.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/session1.aspx \
-	/usr/lib/xsp/test/1.1/asp.net/typedesc.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/listitem.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/temperature.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/validator1.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_adrotator.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_button.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_checkbox.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_checkboxlist.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_datagrid.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_datagrid_command.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_dropdownlist.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_hyperlink.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_image.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_imagebutton.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_label.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_linkbutton.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_listbox.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_literal.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_panel.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_placeholder.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_radiobutton.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_radiobuttonlist.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_regularexpressionvalidator.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_repeater.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_table2.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_table.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_textbox.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/web_xml.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/calendar.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/datalist.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/dbpage1.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/dbpage2.aspx \
-	/usr/lib/xsp/test/1.1/webcontrols/people.xml \
-	/usr/lib/xsp/test/1.1/webcontrols/web_adrotator.xml \
-	/usr/lib/xsp/test/1.1/webcontrols/peopletable.xsl \
-	/usr/lib/xsp/test/1.1/html/button.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlanchor.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlbutton.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlgeneric.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlimage.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputbutton.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputcheckbox.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputfile.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputhidden.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputimage.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputradiobutton.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlinputtext.aspx \
-	/usr/lib/xsp/test/1.1/html/htmlselect.aspx \
-	/usr/lib/xsp/test/1.1/html/htmltable.aspx \
-	/usr/lib/xsp/test/1.1/html/htmltextarea.aspx \
-	/usr/lib/xsp/test/1.1/webservice/ConverterService.asmx \
-	/usr/lib/xsp/test/1.1/webservice/TestService.asmx \
-	/usr/lib/xsp/test/1.1/webservice/ServiceClient.exe.config \
-	/usr/lib/xsp/test/1.1/webservice/CompressExtension.cs \
-	/usr/lib/xsp/test/1.1/databind/databind-arraylist.aspx \
-	/usr/lib/xsp/test/1.1/databind/databind-attribute.aspx \
-	/usr/lib/xsp/test/1.1/databind/databind-class.aspx \
-	/usr/lib/xsp/test/1.1/databind/databind-template.aspx \
-	/usr/lib/xsp/test/1.1/handlers/chunked.ashx \
-	/usr/lib/xsp/test/1.1/handlers/empty.ashx \
-	/usr/lib/xsp/test/1.1/handlers/monodoc.ashx \
-	/usr/lib/xsp/test/1.1/handlers/webhandler.ashx \
-	/usr/lib/xsp/test/1.1/handlers/async.ashx \
-	/usr/lib/xsp/test/1.1/customcontrol/tabcontrol2.aspx \
-	/usr/lib/xsp/test/1.1/customcontrol/tabcontrol.aspx \
-	/usr/lib/xsp/test/ServiceClient.exe \
-	/usr/lib/xsp/test/extensions.dll \
-	/usr/lib/xsp/test/mod-mono-server.exe.config \
-	/usr/lib/xsp/test/index.aspx \
-	/usr/lib/xsp/test/index2.aspx \
-	/usr/lib/xsp/test/xsp.exe.config \
-	/usr/lib/xsp/test/web.config \
-	/usr/lib/xsp/test/global.asax \
-	/usr/lib/xsp/test/mono.png \
-	/usr/lib/xsp/test/monobutton.png \
-	/usr/lib/xsp/test/mono-powered-big.png \
-	/usr/lib/xsp/test/small-icon.png \
-	/usr/lib/xsp/test/sample.webapp \
-	/usr/lib/xsp/test/favicon.ico \
-	/usr/lib/xsp/test/mono-xsp.css \
-	/usr/lib/xsp/test/bin/codebehind1.dll \
-	/usr/lib/xsp/test/bin/typedesc.dll \
-	/usr/lib/xsp/test/bin/extensions.dll \
-	/usr/lib/xsp/test/bin/tabcontrol.dll \
-	/usr/lib/xsp/test/bin/tabcontrol2.dll \
-	/usr/lib/xsp/test/bin/treeview.dll \
-	/usr/lib/xsp/test/2.0/menu/menu1.aspx \
-	/usr/lib/xsp/test/2.0/menu/menu2.aspx \
-	/usr/lib/xsp/test/2.0/menu/stock_copy_24.png \
-	/usr/lib/xsp/test/2.0/menu/stock_cut_24.png \
-	/usr/lib/xsp/test/2.0/menu/stock_paste_24.png \
-	/usr/lib/xsp/test/2.0/treeview/populate-on-demand.aspx \
-	/usr/lib/xsp/test/2.0/treeview/populate.cs \
-	/usr/lib/xsp/test/2.0/treeview/treeview.aspx \
-	/usr/lib/xsp/test/2.0/treeview/treeview-databound.aspx \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/dash.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/dashminus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/dashplus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/i.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/l.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/lminus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/lplus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/minus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/noexpand.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/plus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/r.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/rminus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/rplus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/t.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/tminus.gif \
-	/usr/lib/xsp/test/2.0/treeview/TreeLineImages/tplus.gif \
-	/usr/lib/xsp/test/2.0/masterpages/simple.master \
-	/usr/lib/xsp/test/2.0/masterpages/simple.aspx \
-	/usr/lib/xsp/test/2.0/masterpages/frame.master \
-	/usr/lib/xsp/test/2.0/masterpages/content1.aspx \
-	/usr/lib/xsp/test/2.0/masterpages/content2.aspx \
-	"
-
-SRC_URI[md5sum] = "adb7871e5ebeefcf8ed959523442c0fb"
-SRC_URI[sha256sum] = "25c246b7ed3e82a5f3562c2c15db551332830de4c238a53e3260ab7d40cd015a"
diff --git a/recipes-mono/mono-xsp/mono-xsp_2.10.bb b/recipes-mono/mono-xsp/mono-xsp_2.10.bb
new file mode 100644
index 0000000..9d8ea95
--- /dev/null
+++ b/recipes-mono/mono-xsp/mono-xsp_2.10.bb
@@ -0,0 +1,5 @@
+require mono-xsp.inc
+
+SRC_URI[md5sum] = "aec9369a00a9728801ea2587a1a8fd9c"
+SRC_URI[sha256sum] = "931127419156f58fdd89250ff5de3eda9b6743473be0682ee42df2c70e93eda3"
+
-- 
1.7.9.5


