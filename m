Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 598A1E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 10:11:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2013 10:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,650,1363158000"; d="scan'208";a="335619205"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2013 10:11:53 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.150]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.61]) with mapi id
	14.01.0355.002; Fri, 10 May 2013 10:11:53 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/6] Initial commit for separate remote
	utilities	plugin
Thread-Index: AQHOTP29hR/+Ra49NEqsDZ4Wr8llwJj+qI5w
Date: Fri, 10 May 2013 17:11:52 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70789FB0@ORSMSX103.amr.corp.intel.com>
References: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368134354-5816-2-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368134354-5816-2-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 1/6] Initial commit for separate remote utilities	plugin
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
X-List-Received-Date: Fri, 10 May 2013 17:11:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Seems you're still using Java 1.7, can you change to 1.6?

Thanks,
Jessica

+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=3Denabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=3D1.7
+org.eclipse.jdt.core.compiler.compliance=3D1.7
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=3Derror
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=3Derror
+org.eclipse.jdt.core.compiler.source=3D1.7


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, May 09, 2013 2:19 PM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 1/6] Initial commit for separate remote utilities p=
lugin

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.remote.utils/.classpath          |    7 +++
 plugins/org.yocto.remote.utils/.project            |   28 +++++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +++
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 ++++
 plugins/org.yocto.remote.utils/build.properties    |    4 ++
 .../src/org/yocto/remote/utils/Activator.java      |   60 ++++++++++++++++=
++++
 6 files changed, 116 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jd=
t.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Activator.java

diff --git a/plugins/org.yocto.remote.utils/.classpath b/plugins/org.yocto.=
remote.utils/.classpath
new file mode 100644
index 0000000..ad32c83
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.classpath
@@ -0,0 +1,7 @@
+<?xml version=3D"1.0" encoding=3D"UTF-8"?>
+<classpath>
+       <classpathentry kind=3D"con" path=3D"org.eclipse.jdt.launching.JRE_=
CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-=
1.6"/>
+       <classpathentry kind=3D"con" path=3D"org.eclipse.pde.core.requiredP=
lugins"/>
+       <classpathentry kind=3D"src" path=3D"src"/>
+       <classpathentry kind=3D"output" path=3D"bin"/> </classpath>
diff --git a/plugins/org.yocto.remote.utils/.project b/plugins/org.yocto.re=
mote.utils/.project
new file mode 100644
index 0000000..29a2a5a
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.project
@@ -0,0 +1,28 @@
+<?xml version=3D"1.0" encoding=3D"UTF-8"?>
+<projectDescription>
+       <name>org.yocto.remote.utils</name>
+       <comment></comment>
+       <projects>
+       </projects>
+       <buildSpec>
+               <buildCommand>
+                       <name>org.eclipse.jdt.core.javabuilder</name>
+                       <arguments>
+                       </arguments>
+               </buildCommand>
+               <buildCommand>
+                       <name>org.eclipse.pde.ManifestBuilder</name>
+                       <arguments>
+                       </arguments>
+               </buildCommand>
+               <buildCommand>
+                       <name>org.eclipse.pde.SchemaBuilder</name>
+                       <arguments>
+                       </arguments>
+               </buildCommand>
+       </buildSpec>
+       <natures>
+               <nature>org.eclipse.pde.PluginNature</nature>
+               <nature>org.eclipse.jdt.core.javanature</nature>
+       </natures>
+</projectDescription>
diff --git a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.=
prefs b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..f42de36
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.pref
+++ s
@@ -0,0 +1,7 @@
+eclipse.preferences.version=3D1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=3Denabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=3D1.7
+org.eclipse.jdt.core.compiler.compliance=3D1.7
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=3Derror
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=3Derror
+org.eclipse.jdt.core.compiler.source=3D1.7
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..16c86e9
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -0,0 +1,10 @@
+Manifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: Utils
+Bundle-SymbolicName: org.yocto.remote.utils
+Bundle-Version: 1.0.0.qualifier
+Bundle-Activator: org.yocto.remote.utils.Activator
+Require-Bundle: org.eclipse.ui,
+ org.eclipse.core.runtime
+Bundle-ActivationPolicy: lazy
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
diff --git a/plugins/org.yocto.remote.utils/build.properties b/plugins/org.=
yocto.remote.utils/build.properties
new file mode 100644
index 0000000..34d2e4d
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/build.properties
@@ -0,0 +1,4 @@
+source.. =3D src/
+output.. =3D bin/
+bin.includes =3D META-INF/,\
+               .
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Acti=
vator.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Acti=
vator.java
new file mode 100644
index 0000000..047d900
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activato
+++ r.java
@@ -0,0 +1,60 @@
+/**********************************************************************
+*********
+ * Copyright (c) 2013 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License
+v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+***********************************************************************
+********/
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.plugin.AbstractUIPlugin;
+import org.osgi.framework.BundleContext;
+
+/**
+ * The activator class controls the plug-in life cycle  */ public class
+Activator extends AbstractUIPlugin {
+
+       // The plug-in ID
+       public static final String PLUGIN_ID =3D "org.yocto.remote.utils";
+//$NON-NLS-1$
+
+       // The shared instance
+       private static Activator plugin;
+
+       /**
+        * The constructor
+        */
+       public Activator() {
+       }
+
+       /*
+        * (non-Javadoc)
+        * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.frame=
work.BundleContext)
+        */
+       public void start(BundleContext context) throws Exception {
+               super.start(context);
+               plugin =3D this;
+       }
+
+       /*
+        * (non-Javadoc)
+        * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framew=
ork.BundleContext)
+        */
+       public void stop(BundleContext context) throws Exception {
+               plugin =3D null;
+               super.stop(context);
+       }
+
+       /**
+        * Returns the shared instance
+        *
+        * @return the shared instance
+        */
+       public static Activator getDefault() {
+               return plugin;
+       }
+
+}
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

