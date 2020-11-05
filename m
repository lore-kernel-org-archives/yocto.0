Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3899.1604556323956414745
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 22:05:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=G5OXVkaZ;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2049.outbound.protection.outlook.com [40.107.102.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D6DC738C0661
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2020 22:05:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oG8qtMA1SSXDljVd7RjZO9bbqJIRiHJ89yvjeduxNCVz1ictfP5H8y6KDkPVYg2/H/L40MhsPQQg+WSbuknbMoB6rsAIaXt07vIbtJi+nwKRSzTuiK4iMYpdRykVLxaypPqcTlezCGoEIvkwmjGI5cfdHwitpATuj247+iuTNkRhbDbKU1Cwd2nPVZnpLF0pTl6J6TRQ3KwhbxsWJeUP3IE1enWyaPDQhQCuIjajPUeeJYFbUgkPohQuTQ9xINb5BeMZMp2AgYMU1M8ptSbPvxOCX+PhcA/ZXy/gVX8YiVgtOdcSraESfDQV3s4vOxZmr+nffldVy41Yv20MVfrTrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=un5IQUTXvmlJpWxbRGhU/8oOGJsl7m2cO+qcXr+IJdo=;
 b=ImlNYcdBJtWv2/NjNvR0NHn1yE8xkVEhxpCmGB6NttZM0ax3aY95zYFaF1ccDSOEjA0QbN02USjScX8E01rNT1/lT+ohozT7MtCr8MBmjq4cRKgkr8MYDd0O/q/1lJr9g9JSCAh+Kv7cmKTdEMX/txiX66Sz9x1ORDspL3wV0qmLTMK4cYP0OCI07edgvLBONsSSCzG+rFIvdnb3biiEzTLnZ0njnO5UdHixP82AQ0ItSkThDxmJ6SNpPtEbxDoi+YzKLLPOjq+HhSvUlI0ghvfM4Cizk2sZQS8ujJ81jiwpHYkszkkRavJj2x0cIOsdsO1bzCmUWUCB7oZjMIAUsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=un5IQUTXvmlJpWxbRGhU/8oOGJsl7m2cO+qcXr+IJdo=;
 b=G5OXVkaZGgk/Uibnm/ZR4o497Rx6jBfUdckPrOwd6V8PZPjcIpvhW3tXK82o5/hBpqJA2l1iJdfvJ3XHYcRnqdxDFMu02N3v5V0CHCuHuGF1LD997+3OvenJ/kIt7IBfIyVhJPx2XZSB5+HsIYzbNq/oVUbl2T9aNZ72sfX53J8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1536.namprd11.prod.outlook.com (2603:10b6:301:b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.27; Thu, 5 Nov
 2020 06:05:20 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3499.032; Thu, 5 Nov 2020
 06:05:20 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: fix build with Python 3.9
Date: Thu,  5 Nov 2020 14:04:58 +0800
Message-Id: <20201105060458.31974-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Thu, 5 Nov 2020 06:05:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c8272d4f-6b17-433c-b143-08d88150c650
X-MS-TrafficTypeDiagnostic: MWHPR11MB1536:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1536B61B19F3DD8ED1BF8AB7F9EE0@MWHPR11MB1536.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:93;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7mJl2smKgDykAkkLrjP6KepFrWMzcsivZWQi7VIi+z+7toIQTN/hipIXUJl60Yq8tED6xLoa1Ee84F6H8Xm9aU451YvSzsJQhg+xwZbPqJu1Y1MkOOTFRZqwrLTeyUZrUZHkAKAQlKA2c+Ori78bAwtUR3lWVZU2cRRxpEY+r0Innv1TG161GuD0iE7zYDEbVBBeK+fHmp0iPLOSiQLlUdZH3pAuKv7T9xzlvWH2lFnWVmOPnGJBGinmx5nq7JG8HVrKDSIer9rXUk8T3mAtgVqvLXxrO65N/HnSje4ynP/OWBYaHf5rDsu2v20lwoJrTcAbB5TWGQdMZLr0WExyoVOD42nw62u8JrpvkNXVB+Jaz02RE5JoHLiu96Q/vrvFdLrbCjHD/0oVoBW8jVxz+Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(366004)(39850400004)(396003)(346002)(44832011)(5660300002)(6666004)(478600001)(86362001)(186003)(16526019)(6916009)(15650500001)(36756003)(6506007)(26005)(66946007)(6486002)(66476007)(6512007)(8936002)(2906002)(52116002)(2616005)(956004)(8676002)(1076003)(316002)(66556008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	zFN+v3P+sQDQ3NZwdJL4riKUGBMauYQjIoqTrtWC3NiNy4l5fLZpWGoyeqKnY4o67WuZOW+22O0oj0M/vmGXU0lLFMQKCydQqtGTkaAhe1TJ2IyI7N/6rxj2P8N8GX8p07i6Z+wzXUwH+sSBRN92Aav3iQV+jEJ3t8f+6GZdbERxq169VKZZhWv6Od8dlhBe8l6hMQwlc36WbKW+Ijk1A48ploLm48ED9+WcbGr03w6LXNCw6m8Dlixge9ZcS1+MraN6bZLewo73i6fw/Nmx2F3Fr3CAznzlY8N1XW+cpdWiwi30/Q1Ro7vRSwVB1jloh/VJ8sRA+GWyLJzpR5ChSEoVMZIcy7nN/ZugwMhnEnggx0OextmoBu1o4Vw50UcXiWz6SXF75XDfnVuTm9+JQNT6f5n8yYHTQxx1vrQHD7iRPWYXMJy2UnfmBQDawfE7OFb3rRjfX7KWHB3vFgS9wi5P4pkDiwoEDmngrAsa4jDERz/9KbFQVU0cyRvy0+hbzKtEJpfHsZdF6PXuNcBIy7duZAO8liERr3tGuIblptZA9BJdrPCUh9Se3olRgqRA27gvco11J8G11zudD/dpZ+QsBnUonOpHWjHRO3tmdinG0At44wtNAtt0ruIR21HgXkFtC50quO3CkJGXZ4p+SA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8272d4f-6b17-433c-b143-08d88150c650
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2020 06:05:19.9918
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sl5hlFKjF3+VX5O0QY8JN+7BNhD47UpmcPMDH8d7nRwbxdfFQHLn9C/ebli6M8miUQt640K5dg5d8dMqK9uKig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1536
Content-Type: text/plain

The getchildren and getiterator functions are deprecated in Python 3.9.
Backport 3 patches to fix the build issue.

Fixes:
File
"/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/scap-security-guide/0.1.44+gitAUTOINC+5fdfdcb2e9-r0/git/ssg/build_stig.py",
line 41, in add_references
    index = rule.getchildren().index(ref)
AttributeError: 'xml.etree.ElementTree.Element' object has no attribute 'getchildren'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ated-instance-of-element.getchildren.patch | 43 ++++++++++++++
 ...-fix-deprecated-getiterator-function.patch | 58 +++++++++++++++++++
 ...etchildren-and-getiterator-functions.patch | 57 ++++++++++++++++++
 .../scap-security-guide_git.bb                |  3 +
 4 files changed, 161 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
new file mode 100644
index 0000000..01e3dd6
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
@@ -0,0 +1,43 @@
+From e435bf2dc59d652710104a1c59332e410b12bb64 Mon Sep 17 00:00:00 2001
+From: Vojtech Polasek <vpolasek@redhat.com>
+Date: Mon, 8 Jun 2020 12:33:48 +0200
+Subject: [PATCH] fix deprecated instance of element.getchildren
+
+Upstream-Status: Backport
+[https://github.com/ComplianceAsCode/content/commit/e435bf2dc59d652710104a1c59332e410b12bb64]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssg/build_remediations.py | 2 +-
+ ssg/build_stig.py         | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
+index fdde0f268..c18d6bd54 100644
+--- a/ssg/build_remediations.py
++++ b/ssg/build_remediations.py
+@@ -735,7 +735,7 @@ def expand_xccdf_subs(fix, remediation_type, remediation_functions):
+         # First concat output form of modified fix text (including text appended
+         # to all children of the fix)
+         modfix = [fix.text]
+-        for child in fix.getchildren():
++        for child in list(fix):
+             if child is not None and child.text is not None:
+                 modfix.append(child.text)
+         modfixtext = "".join(modfix)
+diff --git a/ssg/build_stig.py b/ssg/build_stig.py
+index 528285f3d..6122981fc 100644
+--- a/ssg/build_stig.py
++++ b/ssg/build_stig.py
+@@ -38,7 +38,7 @@ def add_references(reference, destination):
+         for ref in refs:
+             if (ref.get('href').startswith(stig_refs) and
+                     ref.text in dictionary):
+-                index = rule.getchildren().index(ref)
++                index = list(rule).index(ref)
+                 new_ref = ET.Element(
+                     '{%s}reference' % XCCDF11_NS, {'href': stig_ns})
+                 new_ref.text = dictionary[ref.text]
+-- 
+2.17.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
new file mode 100644
index 0000000..84271c4
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
@@ -0,0 +1,58 @@
+From b0adc1d53780def4a95e310b6d26bb91ee97177e Mon Sep 17 00:00:00 2001
+From: Vojtech Polasek <vpolasek@redhat.com>
+Date: Mon, 8 Jun 2020 13:27:41 +0200
+Subject: [PATCH] fix deprecated getiterator function
+
+Upstream-Status: Backport
+[https://github.com/ComplianceAsCode/content/commit/b0adc1d53780def4a95e310b6d26bb91ee97177e]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssg/build_cpe.py    | 6 +++---
+ ssg/id_translate.py | 2 +-
+ 2 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/ssg/build_cpe.py b/ssg/build_cpe.py
+index 2e5d24a5d..8c046777a 100644
+--- a/ssg/build_cpe.py
++++ b/ssg/build_cpe.py
+@@ -17,7 +17,7 @@ def extract_subelement(objects, sub_elem_type):
+     """
+ 
+     for obj in objects:
+-        for subelement in obj.getiterator():
++        for subelement in obj.iter():
+             if subelement.get(sub_elem_type):
+                 sub_element = subelement.get(sub_elem_type)
+                 return sub_element
+@@ -44,12 +44,12 @@ def extract_referred_nodes(tree_with_refs, tree_with_ids, attrname):
+     reflist = []
+     elementlist = []
+ 
+-    for element in tree_with_refs.getiterator():
++    for element in tree_with_refs.iter():
+         value = element.get(attrname)
+         if value is not None:
+             reflist.append(value)
+ 
+-    for element in tree_with_ids.getiterator():
++    for element in tree_with_ids.iter():
+         if element.get("id") in reflist:
+             elementlist.append(element)
+ 
+diff --git a/ssg/id_translate.py b/ssg/id_translate.py
+index 72b07be18..ba9225904 100644
+--- a/ssg/id_translate.py
++++ b/ssg/id_translate.py
+@@ -64,7 +64,7 @@ class IDTranslator(object):
+         )
+ 
+     def translate(self, tree, store_defname=False):
+-        for element in tree.getiterator():
++        for element in tree.iter():
+             idname = element.get("id")
+             if idname:
+                 # store the old name if requested (for OVAL definitions)
+-- 
+2.17.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
new file mode 100644
index 0000000..8162292
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
@@ -0,0 +1,57 @@
+From a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf Mon Sep 17 00:00:00 2001
+From: Vojtech Polasek <vpolasek@redhat.com>
+Date: Mon, 8 Jun 2020 14:01:55 +0200
+Subject: [PATCH] fix remaining getchildren and getiterator functions
+
+Upstream-Status: Backport
+[https://github.com/ComplianceAsCode/content/commit/a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ build-scripts/sds_move_ocil_to_checks.py                  | 2 +-
+ build-scripts/verify_references.py                        | 2 +-
+ shared/transforms/pcidss/transform_benchmark_to_pcidss.py | 2 +-
+ 3 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/build-scripts/sds_move_ocil_to_checks.py b/build-scripts/sds_move_ocil_to_checks.py
+index 5f5139659..64dc19084 100755
+--- a/build-scripts/sds_move_ocil_to_checks.py
++++ b/build-scripts/sds_move_ocil_to_checks.py
+@@ -106,7 +106,7 @@ def move_ocil_content_from_ds_extended_component_to_ds_component(datastreamtree,
+     timestamp = extendedcomp.get('timestamp')
+ 
+     # Get children elements of <ds:extended-component> containing OCIL content
+-    extchildren = extendedcomp.getchildren()
++    extchildren = list(extendedcomp)
+     # There should be just one OCIL subcomponent in <ds:extended-component>
+     if len(extchildren) != 1:
+         sys.stderr.write("ds:extended-component contains more than one element!"
+diff --git a/build-scripts/verify_references.py b/build-scripts/verify_references.py
+index 69b3e2d1f..95d387f46 100755
+--- a/build-scripts/verify_references.py
++++ b/build-scripts/verify_references.py
+@@ -179,7 +179,7 @@ def main():
+     check_content_refs = xccdftree.findall(".//{%s}check-content-ref"
+                                            % xccdf_ns)
+ 
+-    xccdf_parent_map = dict((c, p) for p in xccdftree.getiterator() for c in p)
++    xccdf_parent_map = dict((c, p) for p in xccdftree.iter() for c in p)
+     # now we can actually do the verification work here
+     if options.rules_with_invalid_checks or options.all_checks:
+         for check_content_ref in check_content_refs:
+diff --git a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
+index 0ceaf727d..c94b12c45 100755
+--- a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
++++ b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
+@@ -111,7 +111,7 @@ def main():
+             benchmark.findall(".//{%s}Value" % (XCCDF_NAMESPACE)):
+         values.append(value)
+ 
+-    parent_map = dict((c, p) for p in benchmark.getiterator() for c in p)
++    parent_map = dict((c, p) for p in benchmark.iter() for c in p)
+     for rule in \
+             benchmark.findall(".//{%s}Rule" % (XCCDF_NAMESPACE)):
+         parent_map[rule].remove(rule)
+-- 
+2.17.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
index f35d769..6e7180f 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
@@ -4,6 +4,9 @@ SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
 SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44; \
            file://0001-Fix-XML-parsing-of-the-remediation-functions-file.patch \
            file://0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch \
+           file://0001-fix-deprecated-instance-of-element.getchildren.patch \
+           file://0002-fix-deprecated-getiterator-function.patch \
+           file://0003-fix-remaining-getchildren-and-getiterator-functions.patch \
           "
 PV = "0.1.44+git${SRCPV}"
 
-- 
2.17.1

