Return-Path: <sergeimir@emcraft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B758BE00997; Tue, 21 Jun 2016 07:19:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4133 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jun 2016 07:18:57 PDT
Received: from ocean.emcraft.com (ocean.emcraft.com [185.75.190.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D7DE0098A
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:18:57 -0700 (PDT)
Received: from sergmir.emcraft.com ([172.17.0.19] helo=sergmir.localdomain)
	by ocean.emcraft.com with esmtps (TLSv1:AES256-SHA:256) (Exim 4.76)
	(envelope-from <sergeimir@emcraft.com>)
	id 1bFLRD-00033m-Fx; Tue, 21 Jun 2016 16:09:55 +0300
From: Sergei Miroshnichenko <sergeimir@emcraft.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Ross Burton <ross.burton@intel.com>
Date: Tue, 21 Jun 2016 16:09:36 +0300
Message-Id: <1466514577-32217-1-git-send-email-sergeimir@emcraft.com>
X-Mailer: git-send-email 2.1.0
Cc: yocto@yoctoproject.org, Roger Meier <r.meier@siemens.com>,
	Sergei Miroshnichenko <sergeimir@emcraft.com>,
	Denk@yoctoproject.org, Wolfgang@yoctoproject.org
Subject: [license][PATCH 1/2] license: Add support for SPDX 2.0 operators
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
X-List-Received-Date: Tue, 21 Jun 2016 14:19:08 -0000

Composite SPDX license expressions can be constructed using "OR",
"AND" and "WITH" operators: map them to "|" and "&" Yocto operators
accordingly.

Recognize long form license identifiers: "[DocumentRef-XXX:][LicenseRef-]YYY".

Tested on the following expressions:
LICENSE = "Artistic-1.0"
LICENSE = "LicenseRef-Artistic-1.0 AND NASA-1.3"
LICENSE = "(LicenseRef-Artistic-1.0 WITH Classpath-exception-2.0)
           OR (DocumentRef-spdx-tool-1.2:LicenseRef-NASA-1.3 AND GPL-2.0+)"

Reference:
https://spdx.org/sites/spdx/files/SPDX-2.0.pdf Appendix IV: SPDX License Expression

Signed-off-by: Sergei Miroshnichenko <sergeimir@emcraft.com>
---
 meta/classes/license.bbclass | 17 ++++++++++-------
 meta/lib/oe/license.py       | 21 ++++++++++++++++-----
 2 files changed, 26 insertions(+), 12 deletions(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 69335d6..7f7f7dd 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -633,20 +633,23 @@ def check_license_format(d):
     """
     pn = d.getVar('PN', True)
     licenses = d.getVar('LICENSE', True)
-    from oe.license import license_operator, license_operator_chars, license_pattern
+    from oe.license import license_operator, license_pattern
 
     elements = filter(lambda x: x.strip(), license_operator.split(licenses))
     for pos, element in enumerate(elements):
-        if license_pattern.match(element):
-            if pos > 0 and license_pattern.match(elements[pos - 1]):
+        operator_match = license_operator.match(element)
+        license_match = license_pattern.match(element)
+
+        if license_match and not operator_match:
+            if pos > 0 and license_pattern.match(elements[pos - 1]) and not license_operator.match(elements[pos - 1]):
                 bb.warn('%s: LICENSE value "%s" has an invalid format - license names ' \
-                        'must be separated by the following characters to indicate ' \
+                        'must be separated by the following operators to indicate ' \
                         'the license selection: %s' %
-                        (pn, licenses, license_operator_chars))
-        elif not license_operator.match(element):
+                        (pn, licenses, license_operator.pattern))
+        elif not operator_match:
             bb.warn('%s: LICENSE value "%s" has an invalid separator "%s" that is not ' \
                     'in the valid list of separators (%s)' %
-                    (pn, licenses, element, license_operator_chars))
+                    (pn, licenses, element, license_operator.pattern))
 
 SSTATETASKS += "do_populate_lic"
 do_populate_lic[sstate-inputdirs] = "${LICSSTATEDIR}"
diff --git a/meta/lib/oe/license.py b/meta/lib/oe/license.py
index f0f661c..4f42a9e 100644
--- a/meta/lib/oe/license.py
+++ b/meta/lib/oe/license.py
@@ -40,8 +40,13 @@ class InvalidLicense(LicenseError):
         return "invalid characters in license '%s'" % self.license
 
 license_operator_chars = '&|() '
-license_operator = re.compile('([' + license_operator_chars + '])')
-license_pattern = re.compile('[a-zA-Z0-9.+_\-]+$')
+license_operator = re.compile('([' + license_operator_chars + ']|AND|OR|WITH)')
+license_pattern = re.compile('^(?:DocumentRef-[a-zA-Z0-9.\-]+:)?(?:LicenseRef-)?([a-zA-Z0-9_.+\-]+)$')
+
+license_operator_map = {}
+license_operator_map["OR"] = '|'
+license_operator_map["AND"] = '&'
+license_operator_map["WITH"] = '&'
 
 class LicenseVisitor(ast.NodeVisitor):
     """Get elements based on OpenEmbedded license strings"""
@@ -49,11 +54,17 @@ class LicenseVisitor(ast.NodeVisitor):
         new_elements = []
         elements = filter(lambda x: x.strip(), license_operator.split(licensestr))
         for pos, element in enumerate(elements):
-            if license_pattern.match(element):
-                if pos > 0 and license_pattern.match(elements[pos-1]):
+            operator_match = license_operator.match(element)
+            license_match = license_pattern.match(element)
+            if operator_match:
+                if license_operator_map.get(element, None) != None:
+                    element = license_operator_map.get(element)
+            elif license_match:
+                if pos > 0 and license_pattern.match(elements[pos-1]) and not license_operator.match(elements[pos-1]):
                     new_elements.append('&')
+                element = license_match.group(1)
                 element = '"' + element + '"'
-            elif not license_operator.match(element):
+            else:
                 raise InvalidLicense(element)
             new_elements.append(element)
 
-- 
2.1.0


