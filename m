Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CBEC0E013D9
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B6B6B40295;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:35 +0100
Message-Id: <8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 05/12] features/org.yocto.doc: Add new feature containing yocto project documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Feb 2013 13:24:47 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 features/org.yocto.doc/.project           |  17 ++++
 features/org.yocto.doc/build.properties   |   3 +
 features/org.yocto.doc/feature.properties | 163 ++++++++++++++++++++++++++++++
 features/org.yocto.doc/feature.xml        |  35 +++++++
 features/org.yocto.doc/license.html       | 107 ++++++++++++++++++++
 5 files changed, 325 insertions(+)
 create mode 100644 features/org.yocto.doc/.project
 create mode 100644 features/org.yocto.doc/build.properties
 create mode 100644 features/org.yocto.doc/feature.properties
 create mode 100644 features/org.yocto.doc/feature.xml
 create mode 100644 features/org.yocto.doc/license.html

diff --git a/features/org.yocto.doc/.project b/features/org.yocto.doc/.project
new file mode 100644
index 0000000..2ad46a8
--- /dev/null
+++ b/features/org.yocto.doc/.project
@@ -0,0 +1,17 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.doc</name>
+	<comment></comment>
+	<projects>
+	</projects>
+	<buildSpec>
+		<buildCommand>
+			<name>org.eclipse.pde.FeatureBuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+	</buildSpec>
+	<natures>
+		<nature>org.eclipse.pde.FeatureNature</nature>
+	</natures>
+</projectDescription>
diff --git a/features/org.yocto.doc/build.properties b/features/org.yocto.doc/build.properties
new file mode 100644
index 0000000..52c3cfc
--- /dev/null
+++ b/features/org.yocto.doc/build.properties
@@ -0,0 +1,3 @@
+bin.includes = feature.xml,\
+               license.html,\
+               feature.properties
diff --git a/features/org.yocto.doc/feature.properties b/features/org.yocto.doc/feature.properties
new file mode 100644
index 0000000..46883e8
--- /dev/null
+++ b/features/org.yocto.doc/feature.properties
@@ -0,0 +1,163 @@
+###############################################################################
+# Copyright (c) 2010 Intel, Inc. and others.
+# All rights reserved. This program and the accompanying materials
+# are made available under the terms of the Eclipse Public License v1.0
+# which accompanies this distribution, and is available at
+# http://www.eclipse.org/legal/epl-v10.html
+#
+# Contributors:
+#     Intel - initial implementation
+###############################################################################
+
+# "featureName" property - name of the feature
+featureName=Yocto Project Documentation Plug-in
+
+# "providerName" property - name of the company that provides the feature
+providerName=yoctoproject.org
+
+# "updateSiteName" property - label for the update site
+updateSiteName=Yocto Project Update Site
+
+# "description" property - description of the feature
+description=\
+Eclipse plug-in containing the documentation of the Yocto Project
+
+# copyright
+copyright=\
+Copyright (c) 2013 Intel, Inc. and others. \
+All rights reserved. This program and the accompanying materials \
+are made available under the terms of the Eclipse Public License v1.0 \
+which accompanies this distribution, and is available at \
+http://www.eclipse.org/legal/epl-v10.html
+################ end of copyright property ####################################
+
+# "licenseURL" property - URL of the "Feature License"
+# do not translate value - just change to point to a locale-specific HTML page
+licenseURL=license.html
+
+# "license" property - text of the "Feature Update License"
+# should be plain text version of license agreement pointed to be "licenseURL"
+license=\
+Eclipse Foundation Software User Agreement\n\
+April 14, 2010\n\
+\n\
+Usage Of Content\n\
+\n\
+THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR\n\
+OTHER MATERIALS FOR OPEN SOURCE PROJECTS (COLLECTIVELY "CONTENT").\n\
+USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS\n\
+AGREEMENT AND/OR THE TERMS AND CONDITIONS OF LICENSE AGREEMENTS OR\n\
+NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU\n\
+AGREE THAT YOUR USE OF THE CONTENT IS GOVERNED BY THIS AGREEMENT\n\
+AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS\n\
+OR NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE\n\
+TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND CONDITIONS\n\
+OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED\n\
+BELOW, THEN YOU MAY NOT USE THE CONTENT.\n\
+\n\
+Applicable Licenses\n\
+\n\
+Unless otherwise indicated, all Content made available by the\n\
+Eclipse Foundation is provided to you under the terms and conditions of\n\
+the Eclipse Public License Version 1.0 ("EPL"). A copy of the EPL is\n\
+provided with this Content and is also available at http://www.eclipse.org/legal/epl-v10.html.\n\
+For purposes of the EPL, "Program" will mean the Content.\n\
+\n\
+Content includes, but is not limited to, source code, object code,\n\
+documentation and other files maintained in the Eclipse Foundation source code\n\
+repository ("Repository") in software modules ("Modules") and made available\n\
+as downloadable archives ("Downloads").\n\
+\n\
+       - Content may be structured and packaged into modules to facilitate delivering,\n\
+         extending, and upgrading the Content. Typical modules may include plug-ins ("Plug-ins"),\n\
+         plug-in fragments ("Fragments"), and features ("Features").\n\
+       - Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java(TM) ARchive)\n\
+         in a directory named "plugins".\n\
+       - A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.\n\
+         Each Feature may be packaged as a sub-directory in a directory named "features".\n\
+         Within a Feature, files named "feature.xml" may contain a list of the names and version\n\
+         numbers of the Plug-ins and/or Fragments associated with that Feature.\n\
+       - Features may also include other Features ("Included Features"). Within a Feature, files\n\
+         named "feature.xml" may contain a list of the names and version numbers of Included Features.\n\
+\n\
+The terms and conditions governing Plug-ins and Fragments should be\n\
+contained in files named "about.html" ("Abouts"). The terms and\n\
+conditions governing Features and Included Features should be contained\n\
+in files named "license.html" ("Feature Licenses"). Abouts and Feature\n\
+Licenses may be located in any directory of a Download or Module\n\
+including, but not limited to the following locations:\n\
+\n\
+       - The top-level (root) directory\n\
+       - Plug-in and Fragment directories\n\
+       - Inside Plug-ins and Fragments packaged as JARs\n\
+       - Sub-directories of the directory named "src" of certain Plug-ins\n\
+       - Feature directories\n\
+\n\
+Note: if a Feature made available by the Eclipse Foundation is installed using the\n\
+Provisioning Technology (as defined below), you must agree to a license ("Feature \n\
+Update License") during the installation process. If the Feature contains\n\
+Included Features, the Feature Update License should either provide you\n\
+with the terms and conditions governing the Included Features or inform\n\
+you where you can locate them. Feature Update Licenses may be found in\n\
+the "license" property of files named "feature.properties" found within a Feature.\n\
+Such Abouts, Feature Licenses, and Feature Update Licenses contain the\n\
+terms and conditions (or references to such terms and conditions) that\n\
+govern your use of the associated Content in that directory.\n\
+\n\
+THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER\n\
+TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.\n\
+SOME OF THESE OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):\n\
+\n\
+       - Common Public License Version 1.0 (available at http://www.eclipse.org/legal/cpl-v10.html)\n\
+       - Apache Software License 1.1 (available at http://www.apache.org/licenses/LICENSE)\n\
+       - Apache Software License 2.0 (available at http://www.apache.org/licenses/LICENSE-2.0)\n\
+       - Metro Link Public License 1.00 (available at http://www.opengroup.org/openmotif/supporters/metrolink/license.html)\n\
+       - Mozilla Public License Version 1.1 (available at http://www.mozilla.org/MPL/MPL-1.1.html)\n\
+\n\
+IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR\n\
+TO USE OF THE CONTENT. If no About, Feature License, or Feature Update License\n\
+is provided, please contact the Eclipse Foundation to determine what terms and conditions\n\
+govern that particular Content.\n\
+\n\
+\n\Use of Provisioning Technology\n\
+\n\
+The Eclipse Foundation makes available provisioning software, examples of which include,\n\
+but are not limited to, p2 and the Eclipse Update Manager ("Provisioning Technology") for\n\
+the purpose of allowing users to install software, documentation, information and/or\n\
+other materials (collectively "Installable Software"). This capability is provided with\n\
+the intent of allowing such users to install, extend and update Eclipse-based products.\n\
+Information about packaging Installable Software is available at\n\
+http://eclipse.org/equinox/p2/repository_packaging.html ("Specification").\n\
+\n\
+You may use Provisioning Technology to allow other parties to install Installable Software.\n\
+You shall be responsible for enabling the applicable license agreements relating to the\n\
+Installable Software to be presented to, and accepted by, the users of the Provisioning Technology\n\
+in accordance with the Specification. By using Provisioning Technology in such a manner and\n\
+making it available in accordance with the Specification, you further acknowledge your\n\
+agreement to, and the acquisition of all necessary rights to permit the following:\n\
+\n\
+       1. A series of actions may occur ("Provisioning Process") in which a user may execute\n\
+          the Provisioning Technology on a machine ("Target Machine") with the intent of installing,\n\
+          extending or updating the functionality of an Eclipse-based product.\n\
+       2. During the Provisioning Process, the Provisioning Technology may cause third party\n\
+          Installable Software or a portion thereof to be accessed and copied to the Target Machine.\n\
+       3. Pursuant to the Specification, you will provide to the user the terms and conditions that\n\
+          govern the use of the Installable Software ("Installable Software Agreement") and such\n\
+          Installable Software Agreement shall be accessed from the Target Machine in accordance\n\
+          with the Specification. Such Installable Software Agreement must inform the user of the\n\
+          terms and conditions that govern the Installable Software and must solicit acceptance by\n\
+          the end user in the manner prescribed in such Installable Software Agreement. Upon such\n\
+          indication of agreement by the user, the provisioning Technology will complete installation\n\
+          of the Installable Software.\n\
+\n\
+Cryptography\n\
+\n\
+Content may contain encryption software. The country in which you are\n\
+currently may have restrictions on the import, possession, and use,\n\
+and/or re-export to another country, of encryption software. BEFORE\n\
+using any encryption software, please check the country's laws,\n\
+regulations and policies concerning the import, possession, or use, and\n\
+re-export of encryption software, to see if this is permitted.\n\
+\n\
+Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.\n
+########### end of license property ##########################################
diff --git a/features/org.yocto.doc/feature.xml b/features/org.yocto.doc/feature.xml
new file mode 100644
index 0000000..ed8687e
--- /dev/null
+++ b/features/org.yocto.doc/feature.xml
@@ -0,0 +1,35 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<feature
+      id="org.yocto.doc"
+      label="%featureName"
+      version="1.4.0.qualifier"
+      provider-name="%providerName">
+
+   <description>
+      %description
+   </description>
+
+   <copyright>
+      %copyright
+   </copyright>
+
+   <license url="%licenseURL">
+      %license
+   </license>
+
+   <url>
+      <update label="%updateSiteName" url="http://yoctoproject.org/downloads/eclipse-plugin/"/>
+   </url>
+
+   <requires>
+      <import plugin="org.eclipse.help"/>
+   </requires>
+
+   <plugin
+         id="org.yocto.doc.user"
+         download-size="0"
+         install-size="0"
+         version="0.0.0"
+         unpack="false"/>
+
+</feature>
diff --git a/features/org.yocto.doc/license.html b/features/org.yocto.doc/license.html
new file mode 100644
index 0000000..c184ca3
--- /dev/null
+++ b/features/org.yocto.doc/license.html
@@ -0,0 +1,107 @@
+<?xml version="1.0" encoding="ISO-8859-1" ?>
+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
+<html xmlns="http://www.w3.org/1999/xhtml">
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
+<title>Eclipse Foundation Software User Agreement</title>
+</head>
+
+<body lang="EN-US">
+<h2>Eclipse Foundation Software User Agreement</h2>
+<p>April 14, 2010</p>
+
+<h3>Usage Of Content</h3>
+
+<p>THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR OTHER MATERIALS FOR OPEN SOURCE PROJECTS
+   (COLLECTIVELY &quot;CONTENT&quot;).  USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS AGREEMENT AND/OR THE TERMS AND
+   CONDITIONS OF LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU AGREE THAT YOUR USE
+   OF THE CONTENT IS GOVERNED BY THIS AGREEMENT AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR
+   NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND
+   CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW, THEN YOU MAY NOT USE THE CONTENT.</p>
+
+<h3>Applicable Licenses</h3>
+
+<p>Unless otherwise indicated, all Content made available by the Eclipse Foundation is provided to you under the terms and conditions of the Eclipse Public License Version 1.0
+   (&quot;EPL&quot;).  A copy of the EPL is provided with this Content and is also available at <a href="http://www.eclipse.org/legal/epl-v10.html">http://www.eclipse.org/legal/epl-v10.html</a>.
+   For purposes of the EPL, &quot;Program&quot; will mean the Content.</p>
+
+<p>Content includes, but is not limited to, source code, object code, documentation and other files maintained in the Eclipse Foundation source code
+   repository (&quot;Repository&quot;) in software modules (&quot;Modules&quot;) and made available as downloadable archives (&quot;Downloads&quot;).</p>
+
+<ul>
+       <li>Content may be structured and packaged into modules to facilitate delivering, extending, and upgrading the Content.  Typical modules may include plug-ins (&quot;Plug-ins&quot;), plug-in fragments (&quot;Fragments&quot;), and features (&quot;Features&quot;).</li>
+       <li>Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java&trade; ARchive) in a directory named &quot;plugins&quot;.</li>
+       <li>A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.  Each Feature may be packaged as a sub-directory in a directory named &quot;features&quot;.  Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of the Plug-ins
+      and/or Fragments associated with that Feature.</li>
+       <li>Features may also include other Features (&quot;Included Features&quot;). Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of Included Features.</li>
+</ul>
+
+<p>The terms and conditions governing Plug-ins and Fragments should be contained in files named &quot;about.html&quot; (&quot;Abouts&quot;). The terms and conditions governing Features and
+Included Features should be contained in files named &quot;license.html&quot; (&quot;Feature Licenses&quot;).  Abouts and Feature Licenses may be located in any directory of a Download or Module
+including, but not limited to the following locations:</p>
+
+<ul>
+       <li>The top-level (root) directory</li>
+       <li>Plug-in and Fragment directories</li>
+       <li>Inside Plug-ins and Fragments packaged as JARs</li>
+       <li>Sub-directories of the directory named &quot;src&quot; of certain Plug-ins</li>
+       <li>Feature directories</li>
+</ul>
+
+<p>Note: if a Feature made available by the Eclipse Foundation is installed using the Provisioning Technology (as defined below), you must agree to a license (&quot;Feature Update License&quot;) during the
+installation process.  If the Feature contains Included Features, the Feature Update License should either provide you with the terms and conditions governing the Included Features or
+inform you where you can locate them.  Feature Update Licenses may be found in the &quot;license&quot; property of files named &quot;feature.properties&quot; found within a Feature.
+Such Abouts, Feature Licenses, and Feature Update Licenses contain the terms and conditions (or references to such terms and conditions) that govern your use of the associated Content in
+that directory.</p>
+
+<p>THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.  SOME OF THESE
+OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):</p>
+
+<ul>
+       <li>Common Public License Version 1.0 (available at <a href="http://www.eclipse.org/legal/cpl-v10.html">http://www.eclipse.org/legal/cpl-v10.html</a>)</li>
+       <li>Apache Software License 1.1 (available at <a href="http://www.apache.org/licenses/LICENSE">http://www.apache.org/licenses/LICENSE</a>)</li>
+       <li>Apache Software License 2.0 (available at <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>)</li>
+       <li>Metro Link Public License 1.00 (available at <a href="http://www.opengroup.org/openmotif/supporters/metrolink/license.html">http://www.opengroup.org/openmotif/supporters/metrolink/license.html</a>)</li>
+       <li>Mozilla Public License Version 1.1 (available at <a href="http://www.mozilla.org/MPL/MPL-1.1.html">http://www.mozilla.org/MPL/MPL-1.1.html</a>)</li>
+</ul>
+
+<p>IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR TO USE OF THE CONTENT.  If no About, Feature License, or Feature Update License is provided, please
+contact the Eclipse Foundation to determine what terms and conditions govern that particular Content.</p>
+
+
+<h3>Use of Provisioning Technology</h3>
+
+<p>The Eclipse Foundation makes available provisioning software, examples of which include, but are not limited to, p2 and the Eclipse
+   Update Manager (&quot;Provisioning Technology&quot;) for the purpose of allowing users to install software, documentation, information and/or
+   other materials (collectively &quot;Installable Software&quot;). This capability is provided with the intent of allowing such users to
+   install, extend and update Eclipse-based products. Information about packaging Installable Software is available at <a
+       href="http://eclipse.org/equinox/p2/repository_packaging.html">http://eclipse.org/equinox/p2/repository_packaging.html</a>
+   (&quot;Specification&quot;).</p>
+
+<p>You may use Provisioning Technology to allow other parties to install Installable Software. You shall be responsible for enabling the
+   applicable license agreements relating to the Installable Software to be presented to, and accepted by, the users of the Provisioning Technology
+   in accordance with the Specification. By using Provisioning Technology in such a manner and making it available in accordance with the
+   Specification, you further acknowledge your agreement to, and the acquisition of all necessary rights to permit the following:</p>
+
+<ol>
+       <li>A series of actions may occur (&quot;Provisioning Process&quot;) in which a user may execute the Provisioning Technology
+       on a machine (&quot;Target Machine&quot;) with the intent of installing, extending or updating the functionality of an Eclipse-based
+       product.</li>
+       <li>During the Provisioning Process, the Provisioning Technology may cause third party Installable Software or a portion thereof to be
+       accessed and copied to the Target Machine.</li>
+       <li>Pursuant to the Specification, you will provide to the user the terms and conditions that govern the use of the Installable
+       Software (&quot;Installable Software Agreement&quot;) and such Installable Software Agreement shall be accessed from the Target
+       Machine in accordance with the Specification. Such Installable Software Agreement must inform the user of the terms and conditions that govern
+       the Installable Software and must solicit acceptance by the end user in the manner prescribed in such Installable Software Agreement. Upon such
+       indication of agreement by the user, the provisioning Technology will complete installation of the Installable Software.</li>
+</ol>
+
+<h3>Cryptography</h3>
+
+<p>Content may contain encryption software. The country in which you are currently may have restrictions on the import, possession, and use, and/or re-export to
+   another country, of encryption software. BEFORE using any encryption software, please check the country's laws, regulations and policies concerning the import,
+   possession, or use, and re-export of encryption software, to see if this is permitted.</p>
+
+<p><small>Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.</small></p>
+</body>
+</html>
-- 
1.7.11.7


