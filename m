Return-Path: <javier.b.perez.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 304B2E00954; Fri,  9 Jan 2015 09:07:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 974DAE00828
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:07:26 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 09:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="438588831"
Received: from unknown (HELO jbperezh-mobl4.amr.corp.intel.com)
	([10.255.34.120])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2015 08:54:49 -0800
From: "Javier B. Perez" <javier.b.perez.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jan 2015 11:07:07 -0600
Message-Id: <1420823230-6148-2-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
References: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailman-Approved-At: Sun, 11 Jan 2015 22:02:59 -0800
Cc: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
Subject: [PATCH 1/4] Added the 'multiple' and 'default' options for the ChoiceStringParameter.
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
X-List-Received-Date: Fri, 09 Jan 2015 17:07:31 -0000

From: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>

Autobuilder.py: I added the support for the 'multiple' and 'default' values in
parseProps and CreateExtraSchedulerParams for the CoiceStringParameter property.
The default value for 'multiple' is set as 'false'.

Signed-off-by: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 0dae5dc..0002112 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -128,6 +128,7 @@ class Autobuilder:
                     self.prop_label=""
                     self.prop_required=""
                     self.prop_size=""
+                    self.prop_multiple=None
                     setattr(self, "prop_name", prop)
                     for k, v in props[prop].iteritems():
                         setattr(self, "prop_"+str(k), v)
@@ -139,7 +140,8 @@ class Autobuilder:
                                                                            label=self.prop_label,
                                                                            required=self.prop_required,
                                                                            scheduler=buildset,
-                                                                           size=self.prop_size)
+                                                                           size=self.prop_size,
+                                                                           multiple=self.prop_multiple)
                         self.schedprops.extend(schedpropstoextend)
                         self.properties.append(self.prop_name)
 
@@ -284,7 +286,8 @@ class Autobuilder:
                                          label=None,
                                          required=None,
                                          size=None,
-                                         scheduler=""):
+                                         scheduler="",
+                                         multiple=None):
         supported_prop_types  = ["ChoiceStringParameter",
                          "StringParameter",
                          "FixedParameter",
@@ -313,6 +316,8 @@ class Autobuilder:
                 default = ""
 
         if prop_type == "ChoiceStringParameter":
+            if multiple is None:
+                multiple = False
             if choices is None:
                 try:
                     raise ABConfigError("your config file has a ChoiceStringParameter declaration that has no choices")
@@ -332,7 +337,9 @@ class Autobuilder:
            schedprops.append(ChoiceStringParameter(name=propid,
                                              label=label,
                                              required=required,
-                                             choices=choices))
+                                             choices=choices,
+                                             default=default,
+                                             multiple=multiple))
         elif prop_type=="StringParameter":
            schedprops.append(StringParameter(name=propid,
                                              label=label,
-- 
1.9.3


