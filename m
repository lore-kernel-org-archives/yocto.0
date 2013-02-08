Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CC19FE0140A
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id DE6BB4029C;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:36 +0100
Message-Id: <305fd42ed6500d248ef6a0662e68fbad6f7b2fe4.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
	<8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 06/12] features/doc.headless.build: Added headless build for yocto.doc feature
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
 features/org.yocto.doc.headless.build/.project     |  11 +
 .../org.yocto.doc.headless.build/build.properties  | 262 +++++++++++++++++++++
 .../org.yocto.doc.headless.build/customTargets.xml | 212 +++++++++++++++++
 3 files changed, 485 insertions(+)
 create mode 100644 features/org.yocto.doc.headless.build/.project
 create mode 100644 features/org.yocto.doc.headless.build/build.properties
 create mode 100644 features/org.yocto.doc.headless.build/customTargets.xml

diff --git a/features/org.yocto.doc.headless.build/.project b/features/org.yocto.doc.headless.build/.project
new file mode 100644
index 0000000..106c772
--- /dev/null
+++ b/features/org.yocto.doc.headless.build/.project
@@ -0,0 +1,11 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.doc.headless.build</name>
+	<comment></comment>
+	<projects>
+	</projects>
+	<buildSpec>
+	</buildSpec>
+	<natures>
+	</natures>
+</projectDescription>
diff --git a/features/org.yocto.doc.headless.build/build.properties b/features/org.yocto.doc.headless.build/build.properties
new file mode 100644
index 0000000..6a857f8
--- /dev/null
+++ b/features/org.yocto.doc.headless.build/build.properties
@@ -0,0 +1,262 @@
+###############################################################################
+# Copyright (c) 2003, 2009 IBM Corporation and others.
+# All rights reserved. This program and the accompanying materials
+# are made available under the terms of the Eclipse Public License v1.0
+# which accompanies this distribution, and is available at
+# http://www.eclipse.org/legal/epl-v10.html
+#
+# Contributors:
+#     IBM Corporation - initial API and implementation
+###############################################################################
+#####################
+# Parameters describing how and where to execute the build.
+# Typical users need only update the following properties:
+#    baseLocation - where things you are building against are installed
+#    bootclasspath - The base jars to compile against (typicaly rt.jar)
+#    configs - the list of {os, ws, arch} configurations to build.
+#
+# Of course any of the settings here can be overridden by spec'ing
+# them on the command line (e.g., -DbaseLocation=d:/eclipse
+
+#The type of the top level element we are building,  generally "feature"
+topLevelElementType = feature
+#The id of the top level element we are building
+topLevelElementId = org.yocto.doc
+
+############# PRODUCT/PACKAGING CONTROL #############
+product=/plugin or feature id/path/to/.product
+runPackager=true
+
+#Set the name of the archive that will result from the product build.
+#archiveNamePrefix=
+
+# The prefix that will be used in the generated archive.
+archivePrefix=eclipse
+
+# The location underwhich all of the build output will be collected.
+collectingFolder=${archivePrefix}
+
+# The list of {os, ws, arch} configurations to build.  This
+# value is a '&' separated list of ',' separate triples.  For example,
+#     configs=win32,win32,x86 & linux,motif,x86
+# By default the value is *,*,*
+configs = *, *, *
+#configs=win32, win32, x86 & \
+#	win32,win32,x86_64 & \
+#	win32,win32,wpf & \
+#	linux, gtk, ppc & \
+#	linux, gtk, x86 & \
+#	linux, gtk, x86_64 & \
+#	linux, motif, x86 & \
+#	solaris, motif, sparc & \
+#	solaris, gtk, sparc & \
+#	aix, motif, ppc & \
+#	hpux, motif, ia64_32 & \
+#	macosx, carbon, ppc & \
+#	macosx, carbon, x86 & \
+#	macosx, cocoa, ppc & \
+#	macosx, cocoa, x86 & \
+#	macosx, cocoa, x86_64
+
+# By default PDE creates one archive (result) per entry listed in the configs property.
+# Setting this value to true will cause PDE to only create one output containing all
+# artifacts for all the platforms listed in the configs property.
+# To control the output format for the group, add a "group, group, group - <format>" entry to the
+# archivesFormat.
+#groupConfigurations=true
+
+#The format of the archive. By default a zip is created using antZip.
+#The list can only contain the configuration for which the desired format is different than zip.
+#archivesFormat=win32, win32, x86 - antZip& \
+#	linux, gtk, ppc - antZip &\
+#    linux, gtk, x86 - antZip& \
+#	linux, gtk, x86_64 - antZip& \
+# linux, motif, x86 - antZip& \
+#	solaris, motif, sparc - antZip& \
+#	solaris, gtk, sparc - antZip& \
+#	aix, motif, ppc - antZip& \
+#	hpux, motif, PA_RISC - antZip& \
+#	macosx, carbon, ppc - antZip
+
+#Allow cycles involving at most one bundle that needs to be compiled with the rest being binary bundles.
+allowBinaryCycles = true
+
+#Sort bundles depenedencies across all features instead of just within a given feature.
+#flattenDependencies = true
+
+#Parallel compilation, requires flattenedDependencies=true
+#parallelCompilation=true
+#parallelThreadCount=
+#parallelThreadsPerProcessor=
+
+#Set to true if you want the output to be ready for an update jar (no site.xml generated)
+outputUpdateJars = true
+
+#Set to true for Jnlp generation
+#codebase should be a URL that will be used as the root of all relative URLs in the output.
+#generateJnlp=false
+#jnlp.codebase=<codebase url>
+#jnlp.j2se=<j2se version>
+#jnlp.locale=<a locale>
+#jnlp.generateOfflineAllowed=true or false generate <offlineAllowed/> attribute in the generated features
+#jnlp.configs=${configs}			#uncomment to filter the content of the generated jnlp files based on the configuration being built
+
+#Set to true if you want to sign jars
+#signJars=false
+#sign.alias=<alias>
+#sign.keystore=<keystore location>
+#sign.storepass=<keystore password>
+#sign.keypass=<key password>
+
+#Arguments to send to the zip executable
+zipargs=
+
+#Arguments to send to the tar executable
+tarargs=
+
+#Control the creation of a file containing the version included in each configuration - on by default
+#generateVersionsLists=false
+
+############## BUILD NAMING CONTROL ################
+# The directory into which the build elements are fetched and where
+# the build takes place.
+#buildDirectory=
+
+# Type of build.  Used in naming the build output.  Typically this value is
+# one of I, N, M, S, ...
+buildType=I
+
+# ID of the build.  Used in naming the build output.
+buildId=TestBuild
+
+# Label for the build.  Used in naming the build output
+buildLabel=${buildType}.${buildId}
+
+# Timestamp for the build.  Used in naming the build output
+timestamp=007
+
+#The value to be used for the qualifier of a plugin or feature when you want to override the value computed by pde.
+#The value will only be applied to plugin or features indicating build.properties, qualifier = context
+#forceContextQualifier=<the value for the qualifier>
+
+#Enable / disable the generation of a suffix for the features that use .qualifier.
+#The generated suffix is computed according to the content of the feature
+#generateFeatureVersionSuffix=true
+
+############# BASE CONTROL #############
+# Settings for the base Eclipse components and Java class libraries
+# against which you are building.
+# Base location for anything the build needs to compile against.  For example,
+# in most RCP app or a plug-in,  the baseLocation should be the location of a previously
+# installed Eclipse against which the application or plug-in code will be compiled and the RCP delta pack.
+
+#base=<path/to/parent/of/eclipse>
+#baseLocation=${base}/eclipse
+
+#Folder containing repositories whose content is needed to compile against
+#repoBaseLocation=${base}/repos
+#Folder where the content of the repositories from ${repoBaseLocation} will be made available as a form suitable to be compiled against
+#transformedRepoLocation=${base}/transformedRepos
+
+#Os/Ws/Arch/nl of the eclipse specified by baseLocation
+#baseos=win32
+#basews=win32
+#basearch=x86
+
+#this property indicates whether you want the set of plug-ins and features to be considered during the build to be limited to the ones reachable from the features / plugins being built
+filteredDependencyCheck=false
+
+#this property indicates whether the resolution should be done in development mode (i.e. ignore multiple bundles with singletons)
+resolution.devMode=false
+
+#pluginPath is a list of locations in which to find plugins and features.  This list is separated by the platform file separator (; or :)
+#a location is one of:
+#- the location of the jar or folder that is the plugin or feature : /path/to/foo.jar or /path/to/foo
+#- a directory that contains a /plugins or /features subdirectory
+#- the location of a feature.xml, or for 2.1 style plugins, the plugin.xml or fragment.xml
+#pluginPath=
+
+skipBase=true
+eclipseURL=<url for eclipse download site>
+eclipseBuildId=<Id of Eclipse build to get>
+eclipseBaseURL=${eclipseURL}/eclipse-platform-${eclipseBuildId}-win32.zip
+
+
+############# MAP FILE CONTROL ################
+# This section defines CVS tags to use when fetching the map files from the repository.
+# If you want to fetch the map file from repository / location, change the getMapFiles target in the customTargets.xml
+
+skipMaps=true
+mapsRepo=:pserver:anonymous@example.com/path/to/repo
+mapsRoot=path/to/maps
+mapsCheckoutTag=HEAD
+
+#tagMaps=true
+mapsTagTag=v${buildId}
+
+
+############ REPOSITORY CONTROL ###############
+# This section defines properties parameterizing the repositories where plugins, fragments
+# bundles and features are being obtained from.
+
+# The tags to use when fetching elements to build.
+# By default thebuilder will use whatever is in the maps.
+# This value takes the form of a comma separated list of repository identifier (like used in the map files) and the
+# overriding value
+# For example fetchTag=CVS=HEAD, SVN=v20050101
+# fetchTag=HEAD
+skipFetch=true
+
+
+############# JAVA COMPILER OPTIONS ##############
+# The location of the Java jars to compile against.  Typically the rt.jar for your JDK/JRE
+#bootclasspath=${java.home}/lib/rt.jar
+
+# specific JRE locations to compile against. These values are used to compile bundles specifying a
+# Bundle-RequiredExecutionEnvironment. Uncomment and set values for environments that you support
+#CDC-1.0/Foundation-1.0= /path/to/rt.jar
+#CDC-1.1/Foundation-1.1=
+#OSGi/Minimum-1.0=
+#OSGi/Minimum-1.1=
+#JRE-1.1=
+#J2SE-1.2=
+#J2SE-1.3=
+#J2SE-1.4=
+#J2SE-1.5=
+#JavaSE-1.6=
+#PersonalJava-1.1=
+#PersonalJava-1.2=
+#CDC-1.0/PersonalBasis-1.0=
+#CDC-1.0/PersonalJava-1.0=
+#CDC-1.1/PersonalBasis-1.1=
+#CDC-1.1/PersonalJava-1.1=
+
+# Specify the output format of the compiler log when eclipse jdt is used
+logExtension=.log
+
+# Whether or not to include debug info in the output jars
+javacDebugInfo=false
+
+# Whether or not to fail the build if there are compiler errors
+javacFailOnError=true
+
+# Enable or disable verbose mode of the compiler
+javacVerbose=true
+
+# Extra arguments for the compiler. These are specific to the java compiler being used.
+#compilerArg=
+
+# Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
+javacSource=1.6
+
+# Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
+javacTarget=1.6
+
+#individualSourceBundles=true
+
+#p2.gathering=true
+p2.compress=true
+#p2.category.site=file:${buildDirectory}/site.xml
+p2.category.definition=file:${buildDirectory}/category.xml
+p2.metadata.repo.name=Yocto Project Update Site
+p2.artifact.repo.name=Yocto Project Update Site
diff --git a/features/org.yocto.doc.headless.build/customTargets.xml b/features/org.yocto.doc.headless.build/customTargets.xml
new file mode 100644
index 0000000..8cb505e
--- /dev/null
+++ b/features/org.yocto.doc.headless.build/customTargets.xml
@@ -0,0 +1,212 @@
+<project name="Build specific targets and properties" default="noDefault">
+
+	<!-- ===================================================================== -->
+	<!-- Run a given ${target} on all elements being built -->
+	<!-- Add on <ant> task for each top level element being built. -->
+	<!-- ===================================================================== -->
+	<available property="allElementsFile" file="${builder}/allElements.xml" value="${builder}/allElements.xml"/>
+	<property name="allElementsFile" location="${eclipse.pdebuild.templates}/headless-build/allElements.xml"/>
+
+	<import file="${allElementsFile}" />
+	<target name="allElements">
+		<antcall target="allElementsDelegator" />
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- ===================================================================== -->
+	<target name="getBaseComponents" depends="checkLocalBase" unless="skipBase">
+		<get src="${eclipseBaseURL}" dest="${buildDirectory}/../temp-base.zip" />
+		<unzip dest="${base}" overwrite="true" src="${buildDirectory}/../temp-base.zip" />
+	</target>
+
+	<target name="checkLocalBase">
+		<available file="${base}" property="skipBase" />
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Check out map files from correct repository -->
+	<!-- Replace values for mapsCheckoutTag as desired. -->
+	<!-- ===================================================================== -->
+	<target name="getMapFiles" depends="checkLocalMaps" unless="skipMaps">
+		<property name="mapsCheckoutTag" value="HEAD" />
+		<cvs cvsRoot="${mapsRepo}" package="${mapsRoot}" dest="${buildDirectory}/maps" tag="${mapsCheckoutTag}" />
+	</target>
+
+	<target name="checkLocalMaps">
+		<available property="skipMaps" file="${buildDirectory}/maps" />
+	</target>
+
+	<target name="tagMapFiles" if="tagMaps">
+		<cvs dest="${buildDirectory}/maps/${mapsRoot}" command="tag ${mapsTagTag}" />
+	</target>
+
+	<!-- ===================================================================== -->
+
+	<target name="clean" unless="noclean">
+		<antcall target="allElements">
+			<param name="target" value="cleanElement" />
+		</antcall>
+	</target>
+
+	<target name="gatherLogs">
+		<mkdir dir="${buildDirectory}/${buildLabel}/compilelogs" />
+		<antcall target="allElements">
+			<param name="target" value="gatherLogs" />
+		</antcall>
+		<unzip dest="${buildDirectory}/${buildLabel}/compilelogs" overwrite="true">
+			<fileset dir="${buildDirectory}/features">
+				<include name="**/*.log.zip" />
+			</fileset>
+		</unzip>
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before setup -->
+	<!-- ===================================================================== -->
+	<target name="preSetup">
+		<delete dir="${buildDirectory}/plugins"/>
+		<mkdir dir="${buildDirectory}/plugins"/>
+		<copy todir="${buildDirectory}/plugins" failonerror="true">
+			<fileset dir="${otherSrcDirectory}/plugins"/>
+		</copy>
+		<delete dir="${buildDirectory}/features"/>
+		<copy todir="${buildDirectory}/features" failonerror="true" >
+			<fileset dir="${otherSrcDirectory}/features"/>
+		</copy>
+		<antcall target="prepareForP2" />
+	</target>
+
+	<target name="prepareForP2" if="p2.gathering">
+		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/site.xml" todir="${buildDirectory}" />
+		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/category.xml" todir="${buildDirectory}" />
+		<xmlproperty file="${otherSrcDirectory}/features/org.yocto.doc/feature.xml" />
+		<replace file="${buildDirectory}/category.xml">
+			<replacefilter token="@docFeatureVersion@" value="${feature(version)}"/>
+		</replace>
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after setup but before starting the build proper -->
+	<!-- ===================================================================== -->
+	<target name="postSetup">
+		<antcall target="getBaseComponents" />
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before fetching the build elements -->
+	<!-- ===================================================================== -->
+	<target name="preFetch">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after fetching the build elements -->
+	<!-- ===================================================================== -->
+	<target name="postFetch">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before the repositories are being processed -->
+	<!-- ===================================================================== -->
+	<target name="preProcessRepos">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after the repositories have been processed -->
+	<!-- ===================================================================== -->
+	<target name="postProcessRepos">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before generating the build scripts. -->
+	<!-- ===================================================================== -->
+	<target name="preGenerate">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after generating the build scripts. -->
+	<!-- ===================================================================== -->
+	<target name="postGenerate">
+		<antcall target="clean" />
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before running the build.xmls for the elements being built. -->
+	<!-- ===================================================================== -->
+	<target name="preProcess">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after running the build.xmls for the elements being built. -->
+	<!-- ===================================================================== -->
+	<target name="postProcess">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before running assemble. -->
+	<!-- ===================================================================== -->
+	<target name="preAssemble">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after  running assemble. -->
+	<!-- ===================================================================== -->
+	<target name="postAssemble">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do before running package. -->
+	<!-- ===================================================================== -->
+	<target name="prePackage">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after  running package. -->
+	<!-- ===================================================================== -->
+	<target name="postPackage">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do after the build is done. -->
+	<!-- ===================================================================== -->
+	<target name="postBuild">
+		<antcall target="gatherLogs" />
+		<antcall target="updateSiteContent" />
+	</target>
+
+	<target name="updateSiteContent" if="p2.gathering">
+		<property file="${buildDirectory}/finalFeaturesVersions.properties" />
+		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/site.xml" todir="${buildDirectory}" />
+		<replace file="${buildDirectory}/site.xml">
+			<replacefilter token="@docGenVersion@" value="${org.yocto.doc}"/>
+		</replace>
+		<zip destfile="${buildDirectory}/${buildLabel}/org.yocto.doc-${buildId}-group.group.group.zip" update="true">
+			<zipfileset dir="${buildDirectory}">
+				<include name="site.xml"/>
+			</zipfileset>
+			<zipfileset dir="${otherSrcDirectory}/features/org.yocto.sdk.site">
+				 <include name="index.html"/>
+			</zipfileset>
+			<zipfileset dir="${otherSrcDirectory}/features/org.yocto.sdk.site/web" prefix="web"/>
+		</zip>
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do to test the build results -->
+	<!-- ===================================================================== -->
+	<target name="test">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Steps to do to publish the build results -->
+	<!-- ===================================================================== -->
+	<target name="publish">
+	</target>
+
+	<!-- ===================================================================== -->
+	<!-- Default target                                                        -->
+	<!-- ===================================================================== -->
+	<target name="noDefault">
+		<echo message="You must specify a target when invoking this file" />
+	</target>
+
+</project>
-- 
1.7.11.7


