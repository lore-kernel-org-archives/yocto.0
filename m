Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B6DE0144E
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:17 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1BBED400BF;
	Fri, 21 Sep 2012 16:14:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:06 +0200
Message-Id: <ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 03/12] feature/sdk.doc: Added feature containing yocto documentation plugins
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:18 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The project documentation of yocto is licensed under the Create
Commons Attribution Share Alike 2.0 (CCA-SA). Because the plugins
containing this documentation cannot be licensed under the Eclipse
Public License 1.0, as it is not compatible to the CCA-SA, this
feature will contain all plugins licensed by the CCA-SA.

The idea is to cleanly separate content licensed by the different
licenses.
---
 features/org.yocto.sdk.doc/.project                |   17 ++
 features/org.yocto.sdk.doc/build.properties        |    5 +
 features/org.yocto.sdk.doc/feature.properties      |  208 +++++++++++++++++
 features/org.yocto.sdk.doc/feature.xml             |   32 +++
 features/org.yocto.sdk.doc/license.html            |  237 ++++++++++++++++++++
 .../sourceTemplateFeature/feature.properties       |  208 +++++++++++++++++
 .../sourceTemplateFeature/license.html             |  237 ++++++++++++++++++++
 7 files changed, 944 insertions(+), 0 deletions(-)
 create mode 100644 features/org.yocto.sdk.doc/.project
 create mode 100644 features/org.yocto.sdk.doc/build.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.xml
 create mode 100644 features/org.yocto.sdk.doc/license.html
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/feature.properties
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/license.html

diff --git a/features/org.yocto.sdk.doc/.project b/features/org.yocto.sdk.doc/.project
new file mode 100644
index 0000000..7418615
--- /dev/null
+++ b/features/org.yocto.sdk.doc/.project
@@ -0,0 +1,17 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.sdk.doc</name>
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
diff --git a/features/org.yocto.sdk.doc/build.properties b/features/org.yocto.sdk.doc/build.properties
new file mode 100644
index 0000000..b0439e2
--- /dev/null
+++ b/features/org.yocto.sdk.doc/build.properties
@@ -0,0 +1,5 @@
+bin.includes = feature.xml,\
+               feature.properties,\
+               license.html
+
+generate.feature@org.yocto.sdk.doc.source=org.yocto.sdk.doc
diff --git a/features/org.yocto.sdk.doc/feature.properties b/features/org.yocto.sdk.doc/feature.properties
new file mode 100644
index 0000000..c15adce
--- /dev/null
+++ b/features/org.yocto.sdk.doc/feature.properties
@@ -0,0 +1,208 @@
+featureName=Yocto Documentation Plugin for Eclipse
+providerName=yoctoproject.org
+
+updateSiteName=Yocto Update Site
+
+description=\
+Eclipse plug-ins containing the documentation for developing embedded \
+applications for Yocto based embedded Linux.
+
+copyright=\
+Copyright (c) 2010 Intel, Inc. and others. \
+All rights reserved. This program and the accompanying materials \
+are made available under the terms of the Creative Commons Attribution-Share \
+Alike 2.0 UK: England & Wales which accompanies this distribution, \
+and is available at \
+http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+
+licenseURL=license.html
+license=\
+Creative Commons Attribution-Share Alike 2.0 UK: England & Wales\n\
+\n\
+THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS \
+CREATIVE COMMONS PUBLIC LICENCE ("CCPL" OR "LICENCE"). THE WORK IS \
+PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE \
+WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENCE OR COPYRIGHT LAW IS \
+PROHIBITED. BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU \
+ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENCE. THE \
+LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR \
+ACCEPTANCE OF SUCH TERMS AND CONDITIONS. \
+\n\
+This Creative Commons England and Wales Public Licence enables You \
+(all capitalised terms defined below) to view, edit, modify, translate \
+and distribute Works worldwide, under the terms of this licence, \
+provided that You credit the Original Author. \
+\n\
+'The Licensor' [one or more legally recognised persons or entities \
+offering the Work under the terms and conditions of this Licence] \
+\n \
+and \
+\n \
+'You' \
+\n \
+agree as follows: \
+\n \
+1. Definitions \
+\n \
+"Attribution" means acknowledging all the parties who have contributed \
+to and have rights in the Work or Collective Work under this Licence. \
+"Collective Work" means the Work in its entirety in unmodified form \
+along with a number of other separate and independent works, assembled \
+into a collective whole.  "Derivative Work" means any work created by \
+the editing, modification, adaptation or translation of the Work in \
+any media (however a work that constitutes a Collective Work will not \
+be considered a Derivative Work for the purpose of this Licence). For \
+the avoidance of doubt, where the Work is a musical composition or \
+sound recording, the synchronization of the Work in timed-relation \
+with a moving image ("synching") will be considered a Derivative Work \
+for the purpose of this Licence.  "Licence" means this Creative \
+Commons England and Wales Public Licence agreement.  "Licence \
+Elements" means the following high-level licence attributes indicated \
+in the title of this Licence: Attribution, Share-Alike.  "Original \
+Author" means the individual (or entity) who created the Work.  "Work" \
+means the work protected by copyright which is offered under the terms \
+of this Licence.  For the purpose of this Licence, when not \
+inconsistent with the context, words in the singular number include \
+the plural number.  2. Licence Terms \
+\n \
+2.1 The Licensor hereby grants to You a worldwide, royalty-free, \
+non-exclusive, Licence for use and for the duration of copyright in \
+the Work. \
+\n \
+You may: \
+\n \
+copy the Work; create one or more derivative Works; incorporate the \
+Work into one or more Collective Works; copy Derivative Works or the \
+Work as incorporated in any Collective Work; and publish, distribute, \
+archive, perform or otherwise disseminate the Work or the Work as \
+incorporated in any Collective Work, to the public in any material \
+form in any media whether now known or hereafter created.  HOWEVER, \
+\n \
+You must not: \
+\n \
+impose any terms on the use to be made of the Work, the Derivative \
+Work or the Work as incorporated in a Collective Work that alter or \
+restrict the terms of this Licence or any rights granted under it or \
+has the effect or intent of restricting the ability to exercise those \
+rights; impose any digital rights management technology on the Work or \
+the Work as incorporated in a Collective Work that alters or restricts \
+the terms of this Licence or any rights granted under it or has the \
+effect or intent of restricting the ability to exercise those rights; \
+sublicense the Work; subject the Work to any derogatory treatment as \
+defined in the Copyright, Designs and Patents Act 1988.  FINALLY, \
+\n \
+You must: \
+\n \
+make reference to this Licence (by Uniform Resource Identifier (URI), \
+spoken word or as appropriate to the media used) on all copies of the \
+Work and Collective Works published, distributed, performed or \
+otherwise disseminated or made available to the public by You; \
+recognise the Licensor's / Original Author's right of attribution in \
+any Work and Collective Work that You publish, distribute, perform or \
+otherwise disseminate to the public and ensure that You credit the \
+Licensor / Original Author as appropriate to the media used; and to \
+the extent reasonably practicable, keep intact all notices that refer \
+to this Licence, in particular the URI, if any, that the Licensor \
+specifies to be associated with the Work, unless such URI does not \
+refer to the copyright notice or licensing information for the Work. \
+Additional Provisions for third parties making use of the Work \
+\n \
+2.2. Further licence from the Licensor \
+\n \
+Each time You publish, distribute, perform or otherwise disseminate \
+\n \
+the Work; or any Derivative Work; or the Work as incorporated in a \
+Collective Work the Licensor agrees to offer to the relevant third \
+party making use of the Work (in any of the alternatives set out \
+above) a licence to use the Work on the same terms and conditions as \
+granted to You hereunder. \
+\n \
+2.3. Further licence from You \
+\n \
+Each time You publish, distribute, perform or otherwise disseminate \
+\n \
+a Derivative Work; or a Derivative Work as incorporated in a \
+Collective Work You agree to offer to the relevant third party making \
+use of the Work (in either of the alternatives set out above) a \
+licence to use the Derivative Work on any of the following premises: \
+\n \
+a licence to the Derivative Work on the same terms and conditions as \
+the licence granted to You hereunder; or a later version of the \
+licence granted to You hereunder; or any other Creative Commons \
+licence with the same Licence Elements.  2.4. This Licence does not \
+affect any rights that the User may have under any applicable law, \
+including fair use, fair dealing or any other legally recognised \
+limitation or exception to copyright infringement. \
+\n \
+2.5. All rights not expressly granted by the Licensor are hereby \
+reserved, including but not limited to, the exclusive right to \
+collect, whether individually or via a licensing body, such as a \
+collecting society, royalties for any use of the Work which results in \
+commercial advantage or private monetary compensation. \
+\n \
+3. Warranties and Disclaimer \
+\n \
+Except as required by law, the Work is licensed by the Licensor on an \
+"as is" and "as available" basis and without any warranty of any kind, \
+either express or implied. \
+\n \
+4. Limit of Liability \
+\n \
+Subject to any liability which may not be excluded or limited by law \
+the Licensor shall not be liable and hereby expressly excludes all \
+liability for loss or damage howsoever and whenever caused to You. \
+\n \
+5. Termination \
+\n \
+The rights granted to You under this Licence shall terminate \
+automatically upon any breach by You of the terms of this \
+Licence. Individuals or entities who have received Collective Works \
+from You under this Licence, however, will not have their Licences \
+terminated provided such individuals or entities remain in full \
+compliance with those Licences. \
+\n \
+6. General \
+\n \
+6.1. The validity or enforceability of the remaining terms of this \
+agreement is not affected by the holding of any provision of it to be \
+invalid or unenforceable. \
+\n \
+6.2. This Licence constitutes the entire Licence Agreement between the \
+parties with respect to the Work licensed here. There are no \
+understandings, agreements or representations with respect to the Work \
+not specified here. The Licensor shall not be bound by any additional \
+provisions that may appear in any communication in any form. \
+\n \
+6.3. A person who is not a party to this Licence shall have no rights \
+under the Contracts (Rights of Third Parties) Act 1999 to enforce any \
+of its terms. \
+\n \
+6.4. This Licence shall be governed by the law of England and Wales \
+and the parties irrevocably submit to the exclusive jurisdiction of \
+the Courts of England and Wales. \
+\n \
+7. On the role of Creative Commons \
+\n \
+7.1. Neither the Licensor nor the User may use the Creative Commons \
+logo except to indicate that the Work is licensed under a Creative \
+Commons Licence. Any permitted use has to be in compliance with the \
+Creative Commons trade mark usage guidelines at the time of use of the \
+Creative Commons trade mark. These guidelines may be found on the \
+Creative Commons website or be otherwise available upon request from \
+time to time. \
+\n \
+7.2. Creative Commons Corporation does not profit financially from its \
+role in providing this Licence and will not investigate the claims of \
+any Licensor or user of the Licence. \
+\n \
+7.3. One of the conditions that Creative Commons Corporation requires \
+of the Licensor and You is an acknowledgement of its limited role and \
+agreement by all who use the Licence that the Corporation is not \
+responsible to anyone for the statements and actions of You or the \
+Licensor or anyone else attempting to use or using this Licence. \
+\n \
+7.4. Creative Commons Corporation is not a party to this Licence, and \
+makes no warranty whatsoever in connection to the Work or in \
+connection to the Licence, and in all events is not liable for any \
+loss or damage resulting from the Licensor's or Your reliance on this \
+Licence or on its enforceability.
diff --git a/features/org.yocto.sdk.doc/feature.xml b/features/org.yocto.sdk.doc/feature.xml
new file mode 100644
index 0000000..f4b7605
--- /dev/null
+++ b/features/org.yocto.sdk.doc/feature.xml
@@ -0,0 +1,32 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<feature
+      id="org.yocto.sdk.doc"
+      label="%featureName"
+      version="1.2.0.qualifier"
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
+   <includes
+         id="org.yocto.sdk.doc.source"
+         version="0.0.0"/>
+
+   <requires>
+      <import plugin="org.eclipse.ui.cheatsheets"/>
+      <import plugin="org.eclipse.help"/>
+   </requires>
+</feature>
diff --git a/features/org.yocto.sdk.doc/license.html b/features/org.yocto.sdk.doc/license.html
new file mode 100644
index 0000000..a2fe9dd
--- /dev/null
+++ b/features/org.yocto.sdk.doc/license.html
@@ -0,0 +1,237 @@
+
+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
+<html>
+<head>
+<title>Creative Commons Legal Code</title>
+<link rel="stylesheet" type="text/css" href="/includes/deeds.css" />
+<style type="text/css">
+li {
+	margin-bottom:12px;
+}
+</style>
+</head>
+<body>
+
+<p align="center"><a href="/">Creative Commons</a></p>
+
+<div id="deed">
+
+<p align="center"><strong>Attribution - Share-Alike 2.0 England and Wales</strong></p>
+
+<div class="text">
+
+<div class="fineprint" style="background:none;">
+CREATIVE COMMONS CORPORATION IS NOT A LAW FIRM AND DOES NOT PROVIDE LEGAL SERVICES. DISTRIBUTION OF THIS LICENCE DOES NOT CREATE AN ATTORNEY-CLIENT RELATIONSHIP. CREATIVE COMMONS PROVIDES THIS INFORMATION ON AN "AS-IS" BASIS. CREATIVE COMMONS MAKES NO WARRANTIES REGARDING THE INFORMATION PROVIDED, AND DISCLAIMS LIABILITY FOR DAMAGES RESULTING FROM ITS USE.
+</div>
+
+
+
+<p><em>Licence</em></p>
+
+<p>THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE COMMONS PUBLIC LICENCE ("CCPL" OR "LICENCE"). THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENCE OR COPYRIGHT LAW IS PROHIBITED. BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENCE. THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.</p>
+
+<p>This Creative Commons England and Wales Public Licence enables You (all capitalised terms defined below) to view, edit, modify, translate and distribute Works worldwide, under the terms of this licence, provided that You credit the Original Author.</p>
+
+<p><strong>'The Licensor'</strong> [one or more legally recognised persons or entities offering the Work under the terms and conditions of this Licence]</p>
+
+<p>and</p>
+
+<p><strong>'You'</strong></p>
+
+<p>agree as follows:</p>
+
+
+
+<p><strong>1. Definitions </strong></p>
+
+<ol type="a">
+
+<li><strong>"Attribution"</strong> means acknowledging all the parties who have contributed to and have rights in the Work or Collective Work under this Licence.</li>
+
+<li><strong>"Collective Work"</strong> means the Work in its entirety in unmodified form along with a number of other separate and independent works, assembled into a collective whole.</li>
+
+<li><strong>"Derivative Work"</strong> means any work created by the editing, modification, adaptation or translation of the Work in any media (however a work that constitutes a Collective Work will not be considered a Derivative Work for the purpose of this Licence). For the avoidance of doubt, where the Work is a musical composition or sound recording, the synchronization of the Work in timed-relation with a moving image ("synching") will be considered a Derivative Work for the purpose of this Licence.</li>
+
+<li><strong>"Licence"</strong> means this Creative Commons England and Wales Public Licence agreement.</li>
+
+<li><strong>"Licence Elements"</strong> means the following high-level licence attributes indicated in the title of this Licence: Attribution, Share-Alike.</li>
+
+<li><strong>"Original Author"</strong> means the individual (or entity) who created the Work.</li>
+
+<li><strong>"Work"</strong> means the work protected by copyright which is offered under the terms of this Licence.</li>
+
+<li>For the purpose of this Licence, when not inconsistent with the context, words in the singular number include the plural number.</li>
+
+</ol>
+
+
+
+<p><strong>2. Licence Terms</strong></p>
+
+<p>2.1 The Licensor hereby grants to You a worldwide, royalty-free, non-exclusive, Licence for use and for the duration of copyright in the Work.</p>
+
+<p><strong>You may:</strong></p>
+
+<ul>
+
+<li>copy the Work;</li>
+
+<li>create one or more derivative Works;</li>
+
+<li>incorporate the Work into one or more Collective Works;</li>
+
+<li>copy Derivative Works or the Work as incorporated in any Collective Work; and</li>
+
+<li>publish, distribute, archive, perform or otherwise disseminate the Work or the Work as incorporated in any Collective Work, to the public in any material form in any media whether now known or hereafter created.</li>
+
+</ul>
+
+<p><strong>HOWEVER,</strong></p>
+
+<p><strong>You must not:</strong></p>
+
+<ul>
+
+<li>impose any terms on the use to be made of the Work, the Derivative Work or the Work as incorporated in a Collective Work that alter or restrict the terms of this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;</li>
+
+<li>impose any digital rights management technology on the Work or the Work as incorporated in a Collective Work that alters or restricts the terms of this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;</li>
+
+<li>sublicense the Work;</li>
+
+<li>subject the Work to any derogatory treatment as defined in the Copyright, Designs and Patents Act 1988.</li>
+
+</ul>
+
+<p><strong>FINALLY,</strong></p>
+
+<p><strong>You must:</strong></p>
+
+<ul>
+
+<li>make reference to this Licence (by Uniform Resource Identifier (URI), spoken word or as appropriate to the media used) on all copies of the Work and Collective Works published, distributed, performed or otherwise disseminated or made available to the public by You;</li>
+
+<li>recognise the Licensor's / Original Author's right of attribution in any Work and Collective Work that You publish, distribute, perform or otherwise disseminate to the public and ensure that You credit the Licensor / Original Author as appropriate to the media used; and</li>
+
+<li>to the extent reasonably practicable, keep intact all notices that refer to this Licence, in particular the URI, if any, that the Licensor specifies to be associated with the Work, unless such URI does not refer to the copyright notice or licensing information for the Work.</li>
+
+</ul>
+
+
+
+<p><strong>Additional Provisions for third parties making use of the Work</strong></p>
+
+<p>2.2. Further licence from the Licensor</p>
+
+<p>Each time You publish, distribute, perform or otherwise disseminate</p>
+
+<ul>
+
+<li>the Work; or</li>
+
+<li>any Derivative Work; or</li>
+
+<li>the Work as incorporated in a Collective Work</li>
+
+</ul>
+
+<p>the Licensor agrees to offer to the relevant third party making use of the Work (in any of the alternatives set out above) a licence to use the Work on the same terms and conditions as granted to You hereunder.</p>
+
+
+
+<p>2.3. Further licence from You</p>
+
+<p>Each time You publish, distribute, perform or otherwise disseminate</p>
+
+<ul>
+
+<li>a Derivative Work; or</li>
+
+<li>a Derivative Work as incorporated in a Collective Work</li>
+
+</ul>
+
+<p>You agree to offer to the relevant third party making use of the Work (in either of the alternatives set out above) a licence to use the Derivative Work on any of the following premises:</p>
+
+<ul>
+
+<li>a licence to the Derivative Work on the same terms and conditions as the licence granted to You hereunder; or</li>
+
+<li>a later version of the licence granted to You hereunder; or</li>
+
+<li>any other Creative Commons licence with the same Licence Elements.</li>
+
+</ul>
+
+<p>2.4. This Licence does not affect any rights that the User may have under any applicable law, including fair use, fair dealing or any other legally recognised limitation or exception to copyright infringement.</p>
+
+<p>2.5. All rights not expressly granted by the Licensor are hereby reserved, including but not limited to, the exclusive right to collect, whether individually or via a licensing body, such as a collecting society, royalties for any use of the Work which results in commercial advantage or private monetary compensation.</p>
+
+
+
+<p><strong>3. Warranties and Disclaimer</strong></p>
+
+<p>Except as required by law, the Work is licensed by the Licensor on an "as is" and "as available" basis and without any warranty of any kind, either express or implied.</p>
+
+
+
+<p><strong>4. Limit of Liability</strong></p>
+
+<p>Subject to any liability which may not be excluded or limited by law the Licensor shall not be liable and hereby expressly excludes all liability for loss or damage howsoever and whenever caused to You.</p>
+
+
+
+<p><strong>5. Termination</strong></p>
+
+<p>The rights granted to You under this Licence shall terminate automatically upon any breach by You of the terms of this Licence. Individuals or entities who have received Collective Works from You under this Licence, however, will not have their Licences terminated provided such individuals or entities remain in full compliance with those Licences.</p>
+
+
+
+<p><strong>6. General</strong></p>
+
+<p>6.1. The validity or enforceability of the remaining terms of this agreement is not affected by the holding of any provision of it to be invalid or unenforceable.</p>
+
+<p>6.2. This Licence constitutes the entire Licence Agreement between the parties with respect to the Work licensed here. There are no understandings, agreements or representations with respect to the Work not specified here. The Licensor shall not be bound by any additional provisions that may appear in any communication in any form.</p>
+
+<p>6.3. A person who is not a party to this Licence shall have no rights under the Contracts (Rights of Third Parties) Act 1999 to enforce any of its terms.</p>
+
+<p>6.4. This Licence shall be governed by the law of England and Wales and the parties irrevocably submit to the exclusive jurisdiction of the Courts of England and Wales.</p>
+
+
+
+<p><strong>7. On the role of Creative Commons</strong></p>
+
+<p>7.1. Neither the Licensor nor the User may use the Creative Commons logo except to indicate that the Work is licensed under a Creative Commons Licence. Any permitted use has to be in compliance with the Creative Commons trade mark usage guidelines at the time of use of the Creative Commons trade mark. These guidelines may be found on the Creative Commons website or be otherwise available upon request from time to time.</p>
+
+<p>7.2. Creative Commons Corporation does not profit financially from its role in providing this Licence and will not investigate the claims of any Licensor or user of the Licence.</p>
+
+<p>7.3. One of the conditions that Creative Commons Corporation requires of the Licensor and You is an acknowledgement of its limited role and agreement by all who use the Licence that the Corporation is not responsible to anyone for the statements and actions of You or the Licensor or anyone else attempting to use or using this Licence.</p>
+
+<p>7.4. Creative Commons Corporation is not a party to this Licence, and makes no warranty whatsoever in connection to the Work or in connection to the Licence, and in all events is not liable for any loss or damage resulting from the Licensor's or Your reliance on this Licence or on its enforceability.</p>
+
+<p>7.5. USE OF THIS LICENCE MEANS THAT YOU AND THE LICENSOR EACH ACCEPTS THESE CONDITIONS IN SECTION 7.1, 7.2, 7.3, 7.4 AND EACH ACKNOWLEDGES CREATIVE COMMONS CORPORATION'S VERY LIMITED ROLE AS A FACILITATOR OF THE LICENCE FROM THE LICENSOR TO YOU.</p>
+
+
+<!-- BREAKOUT FOR CC NOTICE. NOT A PART OF THE LICENSE -->
+
+<div class="fineprint" >
+
+<p>Creative Commons is not a party to this Licence, and makes no warranty whatsoever in connection with the Work. Creative Commons will not be liable to You or any party on any legal theory for any damages whatsoever, including without limitation any general, special, incidental or consequential damages arising in connection to this licence. Notwithstanding the foregoing two (2) sentences, if Creative Commons has expressly identified itself as the Licensor hereunder, it shall have all rights and obligations of Licensor. </p>
+
+<p>Except for the limited purpose of indicating to the public that the Work is licensed under the CCPL, neither party will use the trademark "Creative Commons" or any related trademark or logo of Creative Commons without the prior written consent of Creative Commons. Any permitted use will be in compliance with Creative Commons' then-current trademark usage guidelines, as may be published on its website or otherwise made available upon request from time to time.</p>
+
+<p>Creative Commons may be contacted at <a href="http://creativecommons.org">http://creativecommons.org/</a>.</p>
+
+</div>
+
+<!-- END CC NOTICE -->
+
+
+
+</div>
+
+
+
+</div>
+
+</body></html>
+
diff --git a/features/org.yocto.sdk.doc/sourceTemplateFeature/feature.properties b/features/org.yocto.sdk.doc/sourceTemplateFeature/feature.properties
new file mode 100644
index 0000000..486c796
--- /dev/null
+++ b/features/org.yocto.sdk.doc/sourceTemplateFeature/feature.properties
@@ -0,0 +1,208 @@
+featureName=Yocto Documentation Plugin for Eclipse - Source
+providerName=yoctoproject.org
+
+updateSiteName=Yocto Update Site
+
+description=\
+Eclipse plug-ins containing the docuementation for developing embedded \
+applications for Yocto based embedded Linux.
+
+copyright=\
+Copyright (c) 2010 Intel, Inc. and others. \
+All rights reserved. This program and the accompanying materials \
+are made available under the terms of the Creative Commons Attribution-Share \
+Alike 2.0 UK: England & Wales which accompanies this distribution, \
+and is available at \
+http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+
+licenseURL=license.html
+license=\
+Creative Commons Attribution-Share Alike 2.0 UK: England & Wales\n\
+\n\
+THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS \
+CREATIVE COMMONS PUBLIC LICENCE ("CCPL" OR "LICENCE"). THE WORK IS \
+PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE \
+WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENCE OR COPYRIGHT LAW IS \
+PROHIBITED. BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU \
+ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENCE. THE \
+LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR \
+ACCEPTANCE OF SUCH TERMS AND CONDITIONS. \
+\n\
+This Creative Commons England and Wales Public Licence enables You \
+(all capitalised terms defined below) to view, edit, modify, translate \
+and distribute Works worldwide, under the terms of this licence, \
+provided that You credit the Original Author. \
+\n\
+'The Licensor' [one or more legally recognised persons or entities \
+offering the Work under the terms and conditions of this Licence] \
+\n \
+and \
+\n \
+'You' \
+\n \
+agree as follows: \
+\n \
+1. Definitions \
+\n \
+"Attribution" means acknowledging all the parties who have contributed \
+to and have rights in the Work or Collective Work under this Licence. \
+"Collective Work" means the Work in its entirety in unmodified form \
+along with a number of other separate and independent works, assembled \
+into a collective whole.  "Derivative Work" means any work created by \
+the editing, modification, adaptation or translation of the Work in \
+any media (however a work that constitutes a Collective Work will not \
+be considered a Derivative Work for the purpose of this Licence). For \
+the avoidance of doubt, where the Work is a musical composition or \
+sound recording, the synchronization of the Work in timed-relation \
+with a moving image ("synching") will be considered a Derivative Work \
+for the purpose of this Licence.  "Licence" means this Creative \
+Commons England and Wales Public Licence agreement.  "Licence \
+Elements" means the following high-level licence attributes indicated \
+in the title of this Licence: Attribution, Share-Alike.  "Original \
+Author" means the individual (or entity) who created the Work.  "Work" \
+means the work protected by copyright which is offered under the terms \
+of this Licence.  For the purpose of this Licence, when not \
+inconsistent with the context, words in the singular number include \
+the plural number.  2. Licence Terms \
+\n \
+2.1 The Licensor hereby grants to You a worldwide, royalty-free, \
+non-exclusive, Licence for use and for the duration of copyright in \
+the Work. \
+\n \
+You may: \
+\n \
+copy the Work; create one or more derivative Works; incorporate the \
+Work into one or more Collective Works; copy Derivative Works or the \
+Work as incorporated in any Collective Work; and publish, distribute, \
+archive, perform or otherwise disseminate the Work or the Work as \
+incorporated in any Collective Work, to the public in any material \
+form in any media whether now known or hereafter created.  HOWEVER, \
+\n \
+You must not: \
+\n \
+impose any terms on the use to be made of the Work, the Derivative \
+Work or the Work as incorporated in a Collective Work that alter or \
+restrict the terms of this Licence or any rights granted under it or \
+has the effect or intent of restricting the ability to exercise those \
+rights; impose any digital rights management technology on the Work or \
+the Work as incorporated in a Collective Work that alters or restricts \
+the terms of this Licence or any rights granted under it or has the \
+effect or intent of restricting the ability to exercise those rights; \
+sublicense the Work; subject the Work to any derogatory treatment as \
+defined in the Copyright, Designs and Patents Act 1988.  FINALLY, \
+\n \
+You must: \
+\n \
+make reference to this Licence (by Uniform Resource Identifier (URI), \
+spoken word or as appropriate to the media used) on all copies of the \
+Work and Collective Works published, distributed, performed or \
+otherwise disseminated or made available to the public by You; \
+recognise the Licensor's / Original Author's right of attribution in \
+any Work and Collective Work that You publish, distribute, perform or \
+otherwise disseminate to the public and ensure that You credit the \
+Licensor / Original Author as appropriate to the media used; and to \
+the extent reasonably practicable, keep intact all notices that refer \
+to this Licence, in particular the URI, if any, that the Licensor \
+specifies to be associated with the Work, unless such URI does not \
+refer to the copyright notice or licensing information for the Work. \
+Additional Provisions for third parties making use of the Work \
+\n \
+2.2. Further licence from the Licensor \
+\n \
+Each time You publish, distribute, perform or otherwise disseminate \
+\n \
+the Work; or any Derivative Work; or the Work as incorporated in a \
+Collective Work the Licensor agrees to offer to the relevant third \
+party making use of the Work (in any of the alternatives set out \
+above) a licence to use the Work on the same terms and conditions as \
+granted to You hereunder. \
+\n \
+2.3. Further licence from You \
+\n \
+Each time You publish, distribute, perform or otherwise disseminate \
+\n \
+a Derivative Work; or a Derivative Work as incorporated in a \
+Collective Work You agree to offer to the relevant third party making \
+use of the Work (in either of the alternatives set out above) a \
+licence to use the Derivative Work on any of the following premises: \
+\n \
+a licence to the Derivative Work on the same terms and conditions as \
+the licence granted to You hereunder; or a later version of the \
+licence granted to You hereunder; or any other Creative Commons \
+licence with the same Licence Elements.  2.4. This Licence does not \
+affect any rights that the User may have under any applicable law, \
+including fair use, fair dealing or any other legally recognised \
+limitation or exception to copyright infringement. \
+\n \
+2.5. All rights not expressly granted by the Licensor are hereby \
+reserved, including but not limited to, the exclusive right to \
+collect, whether individually or via a licensing body, such as a \
+collecting society, royalties for any use of the Work which results in \
+commercial advantage or private monetary compensation. \
+\n \
+3. Warranties and Disclaimer \
+\n \
+Except as required by law, the Work is licensed by the Licensor on an \
+"as is" and "as available" basis and without any warranty of any kind, \
+either express or implied. \
+\n \
+4. Limit of Liability \
+\n \
+Subject to any liability which may not be excluded or limited by law \
+the Licensor shall not be liable and hereby expressly excludes all \
+liability for loss or damage howsoever and whenever caused to You. \
+\n \
+5. Termination \
+\n \
+The rights granted to You under this Licence shall terminate \
+automatically upon any breach by You of the terms of this \
+Licence. Individuals or entities who have received Collective Works \
+from You under this Licence, however, will not have their Licences \
+terminated provided such individuals or entities remain in full \
+compliance with those Licences. \
+\n \
+6. General \
+\n \
+6.1. The validity or enforceability of the remaining terms of this \
+agreement is not affected by the holding of any provision of it to be \
+invalid or unenforceable. \
+\n \
+6.2. This Licence constitutes the entire Licence Agreement between the \
+parties with respect to the Work licensed here. There are no \
+understandings, agreements or representations with respect to the Work \
+not specified here. The Licensor shall not be bound by any additional \
+provisions that may appear in any communication in any form. \
+\n \
+6.3. A person who is not a party to this Licence shall have no rights \
+under the Contracts (Rights of Third Parties) Act 1999 to enforce any \
+of its terms. \
+\n \
+6.4. This Licence shall be governed by the law of England and Wales \
+and the parties irrevocably submit to the exclusive jurisdiction of \
+the Courts of England and Wales. \
+\n \
+7. On the role of Creative Commons \
+\n \
+7.1. Neither the Licensor nor the User may use the Creative Commons \
+logo except to indicate that the Work is licensed under a Creative \
+Commons Licence. Any permitted use has to be in compliance with the \
+Creative Commons trade mark usage guidelines at the time of use of the \
+Creative Commons trade mark. These guidelines may be found on the \
+Creative Commons website or be otherwise available upon request from \
+time to time. \
+\n \
+7.2. Creative Commons Corporation does not profit financially from its \
+role in providing this Licence and will not investigate the claims of \
+any Licensor or user of the Licence. \
+\n \
+7.3. One of the conditions that Creative Commons Corporation requires \
+of the Licensor and You is an acknowledgement of its limited role and \
+agreement by all who use the Licence that the Corporation is not \
+responsible to anyone for the statements and actions of You or the \
+Licensor or anyone else attempting to use or using this Licence. \
+\n \
+7.4. Creative Commons Corporation is not a party to this Licence, and \
+makes no warranty whatsoever in connection to the Work or in \
+connection to the Licence, and in all events is not liable for any \
+loss or damage resulting from the Licensor's or Your reliance on this \
+Licence or on its enforceability.
diff --git a/features/org.yocto.sdk.doc/sourceTemplateFeature/license.html b/features/org.yocto.sdk.doc/sourceTemplateFeature/license.html
new file mode 100644
index 0000000..a2fe9dd
--- /dev/null
+++ b/features/org.yocto.sdk.doc/sourceTemplateFeature/license.html
@@ -0,0 +1,237 @@
+
+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
+<html>
+<head>
+<title>Creative Commons Legal Code</title>
+<link rel="stylesheet" type="text/css" href="/includes/deeds.css" />
+<style type="text/css">
+li {
+	margin-bottom:12px;
+}
+</style>
+</head>
+<body>
+
+<p align="center"><a href="/">Creative Commons</a></p>
+
+<div id="deed">
+
+<p align="center"><strong>Attribution - Share-Alike 2.0 England and Wales</strong></p>
+
+<div class="text">
+
+<div class="fineprint" style="background:none;">
+CREATIVE COMMONS CORPORATION IS NOT A LAW FIRM AND DOES NOT PROVIDE LEGAL SERVICES. DISTRIBUTION OF THIS LICENCE DOES NOT CREATE AN ATTORNEY-CLIENT RELATIONSHIP. CREATIVE COMMONS PROVIDES THIS INFORMATION ON AN "AS-IS" BASIS. CREATIVE COMMONS MAKES NO WARRANTIES REGARDING THE INFORMATION PROVIDED, AND DISCLAIMS LIABILITY FOR DAMAGES RESULTING FROM ITS USE.
+</div>
+
+
+
+<p><em>Licence</em></p>
+
+<p>THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE COMMONS PUBLIC LICENCE ("CCPL" OR "LICENCE"). THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENCE OR COPYRIGHT LAW IS PROHIBITED. BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENCE. THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.</p>
+
+<p>This Creative Commons England and Wales Public Licence enables You (all capitalised terms defined below) to view, edit, modify, translate and distribute Works worldwide, under the terms of this licence, provided that You credit the Original Author.</p>
+
+<p><strong>'The Licensor'</strong> [one or more legally recognised persons or entities offering the Work under the terms and conditions of this Licence]</p>
+
+<p>and</p>
+
+<p><strong>'You'</strong></p>
+
+<p>agree as follows:</p>
+
+
+
+<p><strong>1. Definitions </strong></p>
+
+<ol type="a">
+
+<li><strong>"Attribution"</strong> means acknowledging all the parties who have contributed to and have rights in the Work or Collective Work under this Licence.</li>
+
+<li><strong>"Collective Work"</strong> means the Work in its entirety in unmodified form along with a number of other separate and independent works, assembled into a collective whole.</li>
+
+<li><strong>"Derivative Work"</strong> means any work created by the editing, modification, adaptation or translation of the Work in any media (however a work that constitutes a Collective Work will not be considered a Derivative Work for the purpose of this Licence). For the avoidance of doubt, where the Work is a musical composition or sound recording, the synchronization of the Work in timed-relation with a moving image ("synching") will be considered a Derivative Work for the purpose of this Licence.</li>
+
+<li><strong>"Licence"</strong> means this Creative Commons England and Wales Public Licence agreement.</li>
+
+<li><strong>"Licence Elements"</strong> means the following high-level licence attributes indicated in the title of this Licence: Attribution, Share-Alike.</li>
+
+<li><strong>"Original Author"</strong> means the individual (or entity) who created the Work.</li>
+
+<li><strong>"Work"</strong> means the work protected by copyright which is offered under the terms of this Licence.</li>
+
+<li>For the purpose of this Licence, when not inconsistent with the context, words in the singular number include the plural number.</li>
+
+</ol>
+
+
+
+<p><strong>2. Licence Terms</strong></p>
+
+<p>2.1 The Licensor hereby grants to You a worldwide, royalty-free, non-exclusive, Licence for use and for the duration of copyright in the Work.</p>
+
+<p><strong>You may:</strong></p>
+
+<ul>
+
+<li>copy the Work;</li>
+
+<li>create one or more derivative Works;</li>
+
+<li>incorporate the Work into one or more Collective Works;</li>
+
+<li>copy Derivative Works or the Work as incorporated in any Collective Work; and</li>
+
+<li>publish, distribute, archive, perform or otherwise disseminate the Work or the Work as incorporated in any Collective Work, to the public in any material form in any media whether now known or hereafter created.</li>
+
+</ul>
+
+<p><strong>HOWEVER,</strong></p>
+
+<p><strong>You must not:</strong></p>
+
+<ul>
+
+<li>impose any terms on the use to be made of the Work, the Derivative Work or the Work as incorporated in a Collective Work that alter or restrict the terms of this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;</li>
+
+<li>impose any digital rights management technology on the Work or the Work as incorporated in a Collective Work that alters or restricts the terms of this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;</li>
+
+<li>sublicense the Work;</li>
+
+<li>subject the Work to any derogatory treatment as defined in the Copyright, Designs and Patents Act 1988.</li>
+
+</ul>
+
+<p><strong>FINALLY,</strong></p>
+
+<p><strong>You must:</strong></p>
+
+<ul>
+
+<li>make reference to this Licence (by Uniform Resource Identifier (URI), spoken word or as appropriate to the media used) on all copies of the Work and Collective Works published, distributed, performed or otherwise disseminated or made available to the public by You;</li>
+
+<li>recognise the Licensor's / Original Author's right of attribution in any Work and Collective Work that You publish, distribute, perform or otherwise disseminate to the public and ensure that You credit the Licensor / Original Author as appropriate to the media used; and</li>
+
+<li>to the extent reasonably practicable, keep intact all notices that refer to this Licence, in particular the URI, if any, that the Licensor specifies to be associated with the Work, unless such URI does not refer to the copyright notice or licensing information for the Work.</li>
+
+</ul>
+
+
+
+<p><strong>Additional Provisions for third parties making use of the Work</strong></p>
+
+<p>2.2. Further licence from the Licensor</p>
+
+<p>Each time You publish, distribute, perform or otherwise disseminate</p>
+
+<ul>
+
+<li>the Work; or</li>
+
+<li>any Derivative Work; or</li>
+
+<li>the Work as incorporated in a Collective Work</li>
+
+</ul>
+
+<p>the Licensor agrees to offer to the relevant third party making use of the Work (in any of the alternatives set out above) a licence to use the Work on the same terms and conditions as granted to You hereunder.</p>
+
+
+
+<p>2.3. Further licence from You</p>
+
+<p>Each time You publish, distribute, perform or otherwise disseminate</p>
+
+<ul>
+
+<li>a Derivative Work; or</li>
+
+<li>a Derivative Work as incorporated in a Collective Work</li>
+
+</ul>
+
+<p>You agree to offer to the relevant third party making use of the Work (in either of the alternatives set out above) a licence to use the Derivative Work on any of the following premises:</p>
+
+<ul>
+
+<li>a licence to the Derivative Work on the same terms and conditions as the licence granted to You hereunder; or</li>
+
+<li>a later version of the licence granted to You hereunder; or</li>
+
+<li>any other Creative Commons licence with the same Licence Elements.</li>
+
+</ul>
+
+<p>2.4. This Licence does not affect any rights that the User may have under any applicable law, including fair use, fair dealing or any other legally recognised limitation or exception to copyright infringement.</p>
+
+<p>2.5. All rights not expressly granted by the Licensor are hereby reserved, including but not limited to, the exclusive right to collect, whether individually or via a licensing body, such as a collecting society, royalties for any use of the Work which results in commercial advantage or private monetary compensation.</p>
+
+
+
+<p><strong>3. Warranties and Disclaimer</strong></p>
+
+<p>Except as required by law, the Work is licensed by the Licensor on an "as is" and "as available" basis and without any warranty of any kind, either express or implied.</p>
+
+
+
+<p><strong>4. Limit of Liability</strong></p>
+
+<p>Subject to any liability which may not be excluded or limited by law the Licensor shall not be liable and hereby expressly excludes all liability for loss or damage howsoever and whenever caused to You.</p>
+
+
+
+<p><strong>5. Termination</strong></p>
+
+<p>The rights granted to You under this Licence shall terminate automatically upon any breach by You of the terms of this Licence. Individuals or entities who have received Collective Works from You under this Licence, however, will not have their Licences terminated provided such individuals or entities remain in full compliance with those Licences.</p>
+
+
+
+<p><strong>6. General</strong></p>
+
+<p>6.1. The validity or enforceability of the remaining terms of this agreement is not affected by the holding of any provision of it to be invalid or unenforceable.</p>
+
+<p>6.2. This Licence constitutes the entire Licence Agreement between the parties with respect to the Work licensed here. There are no understandings, agreements or representations with respect to the Work not specified here. The Licensor shall not be bound by any additional provisions that may appear in any communication in any form.</p>
+
+<p>6.3. A person who is not a party to this Licence shall have no rights under the Contracts (Rights of Third Parties) Act 1999 to enforce any of its terms.</p>
+
+<p>6.4. This Licence shall be governed by the law of England and Wales and the parties irrevocably submit to the exclusive jurisdiction of the Courts of England and Wales.</p>
+
+
+
+<p><strong>7. On the role of Creative Commons</strong></p>
+
+<p>7.1. Neither the Licensor nor the User may use the Creative Commons logo except to indicate that the Work is licensed under a Creative Commons Licence. Any permitted use has to be in compliance with the Creative Commons trade mark usage guidelines at the time of use of the Creative Commons trade mark. These guidelines may be found on the Creative Commons website or be otherwise available upon request from time to time.</p>
+
+<p>7.2. Creative Commons Corporation does not profit financially from its role in providing this Licence and will not investigate the claims of any Licensor or user of the Licence.</p>
+
+<p>7.3. One of the conditions that Creative Commons Corporation requires of the Licensor and You is an acknowledgement of its limited role and agreement by all who use the Licence that the Corporation is not responsible to anyone for the statements and actions of You or the Licensor or anyone else attempting to use or using this Licence.</p>
+
+<p>7.4. Creative Commons Corporation is not a party to this Licence, and makes no warranty whatsoever in connection to the Work or in connection to the Licence, and in all events is not liable for any loss or damage resulting from the Licensor's or Your reliance on this Licence or on its enforceability.</p>
+
+<p>7.5. USE OF THIS LICENCE MEANS THAT YOU AND THE LICENSOR EACH ACCEPTS THESE CONDITIONS IN SECTION 7.1, 7.2, 7.3, 7.4 AND EACH ACKNOWLEDGES CREATIVE COMMONS CORPORATION'S VERY LIMITED ROLE AS A FACILITATOR OF THE LICENCE FROM THE LICENSOR TO YOU.</p>
+
+
+<!-- BREAKOUT FOR CC NOTICE. NOT A PART OF THE LICENSE -->
+
+<div class="fineprint" >
+
+<p>Creative Commons is not a party to this Licence, and makes no warranty whatsoever in connection with the Work. Creative Commons will not be liable to You or any party on any legal theory for any damages whatsoever, including without limitation any general, special, incidental or consequential damages arising in connection to this licence. Notwithstanding the foregoing two (2) sentences, if Creative Commons has expressly identified itself as the Licensor hereunder, it shall have all rights and obligations of Licensor. </p>
+
+<p>Except for the limited purpose of indicating to the public that the Work is licensed under the CCPL, neither party will use the trademark "Creative Commons" or any related trademark or logo of Creative Commons without the prior written consent of Creative Commons. Any permitted use will be in compliance with Creative Commons' then-current trademark usage guidelines, as may be published on its website or otherwise made available upon request from time to time.</p>
+
+<p>Creative Commons may be contacted at <a href="http://creativecommons.org">http://creativecommons.org/</a>.</p>
+
+</div>
+
+<!-- END CC NOTICE -->
+
+
+
+</div>
+
+
+
+</div>
+
+</body></html>
+
-- 
1.7.7.6


