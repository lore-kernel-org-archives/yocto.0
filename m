Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4A7FE00C77; Mon, 16 Apr 2018 08:04:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B92E00C70
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:53 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y66so10661074pfi.7
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CEE6Wzfi4iij8GlNB5a6QmZiyzIeD5As0uSM9bR2rNg=;
	b=kZuzh6NfJ5vs7PvpY1oQAiaG5bnJBTcMEOUT6aOJgbxMkkIq5BkISw7f4JjRDlNt8s
	DrLUmsN7AXxQlv80SqFqGOEo17RZT7bVNnFq5I+q4Qn5doCrvZ9kHr8wRm0G9yIiWQWM
	u2Q8oOL4ggXALYOFC8eaY+0yCfe9ahFNqhXrCS/V+5HMd/Morlxj5JZq8yXXzQzINhIC
	tyeFS+lIXdvRFYMF/hZZw0Dt1aUn412EsMkR8XY6ZrLTzC7q5yL9Ganw2RHL2jLKElDR
	9M7qgAnqj483dpnrtZVgxRJJlw1FqIvJy7DiVXzFGIB5DmcNVtnkt5Wvy64AMj5+qS5i
	Dpvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CEE6Wzfi4iij8GlNB5a6QmZiyzIeD5As0uSM9bR2rNg=;
	b=lt57MSCl2HtsZlnsjDy/671AM5ZyQAT7K9cWg/cfksBG+gBtd1hxCapFdDK5ES2/Kk
	Q/Y+LH9okGeRMYna/+pUnpRi0e57WkaT5nllVjP9Q8bDk2um7FjvBjtIRfIv4h6kiZql
	ekHQuF+8RnQ8J4YlriSrbd0YCvRq1ZC9cY64aXGcmTkbcJ7SQmeVZx8r0Tdglz1wOzkQ
	XMoAD7gyi3Kz/BqT+AylcRocRWDnVoO7bHMe1RqnpI8UmVnP+UKkxKvXuxhnRMwr9KrR
	jNVHAGbBWe1lrWpK/J5qqss0Ia34Dn2vUcWdCI1XhCov3BcOy7C/7KHWry+ZYrru/ri+
	bpng==
X-Gm-Message-State: ALQs6tAuRe1XMP2iMUTINAqLTpUBFH9JZhR5RvIgwZDXTambID76ZW7V
	4+CrcxqSoKHAl5p56D4vlvQ=
X-Google-Smtp-Source: AIpwx48ft2PTlEMCM0gD6j1v3ssOaJWlDNzxkeszXa3J9o6SGqk7pljrKsLtAavPSqmjSHyvEBfZ+w==
X-Received: by 10.101.67.203 with SMTP id n11mr13314341pgp.228.1523891032757; 
	Mon, 16 Apr 2018 08:03:52 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id
	81sm23363892pfl.92.2018.04.16.08.03.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:50 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:34 -0700
Message-Id: <1523891014-31583-6-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 5/5] meta-cge-common: Add README
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
X-List-Received-Date: Mon, 16 Apr 2018 15:04:00 -0000

per spec, every layer needs a README. Issue noted via yocto-check-layer

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/README | 138 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 meta-cgl-common/README

diff --git a/meta-cgl-common/README b/meta-cgl-common/README
new file mode 100644
index 0000000..ec6e8ba
--- /dev/null
+++ b/meta-cgl-common/README
@@ -0,0 +1,138 @@
+This README file contains information on the contents of the cgl layer.
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.yoctoproject.org/poky
+  branch: master
+
+  URI: git://git.openembedded.org/meta-openembedded
+  layers: meta-oe, meta-perl, meta-networking, meta-filesystems
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-cloud-services
+  layers: meta-openstack
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-qt3
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-selinux
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-security
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-virtualization
+  branch: master
+
+
+Source code
+===========
+
+git://git.yoctoproject.org/meta-cgl
+http://git.yoctoproject.org/git/meta-cgl
+
+
+Maintenance
+===========
+
+Maintainers:
+    Adrian Dudau <Adrian.Dudau@enea.com>
+    Alexandru Vaduva <alexandru.vaduva@linux.com>
+    Joe MacDonald <joe_macdonald@mentor.com>
+
+
+Contributing
+============
+
+Contributions and patches can be sent to the Yocto Project mailing
+list: yocto@yoctoproject.org"
+As a backup alternative the Enea Linux mailing list can be
+used: enealinux@lists.enea.com
+
+When sending patches please take a look at the contribution guide available
+here: https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
+
+example:
+git send-email -1 -M --to yocto@yoctoproject.org  --subject-prefix=meta-cgl][PATCH
+
+
+Table of Contents
+=================
+
+  I. Adding the cgl layer to your build
+ II. Misc
+III. Layer specific information
+ IV. Specific terms and information
+
+
+I. Adding the cgl layer to your build
+=================================================
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming the cgl layer exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the cgl layer to bblayers.conf, along with any
+other layers needed. Adapt the below list to proper format.
+
+  BBLAYERS:
+
+    meta
+    meta-cgl/meta-cgl-common
+    meta-qt3
+    meta-openembedded/meta-networking
+    meta-openembedded/meta-filesystems
+    meta-openembedded/meta-oe
+    meta-openembedded/meta-perl
+    meta-openembedded/meta-python
+    meta-yocto
+    meta-yocto-bsp
+    meta-virtualization
+    meta-selinux
+    meta-security
+    meta-cloud-services/meta-openstack
+
+A BBMASK definition is required because of some recipes duplicate existance:
+    BBMASK = "meta-openembedded/meta-oe/recipes-support/multipath-tools"
+
+II. Misc
+========
+
+The meta-cgl layer tries to offer CGL compliant packages to be used for
+a Linux distribution.
+
+
+III. Layer specific information
+==============================
+
+The layer contains a core package group (packagegroup-cgl.bb) that
+should aggregate all the other available package groups.
+The recommandation is to group all CGL compliant features into specific
+package groups.
+
+An CGL compliant Linux image is also available into the layer. Its use
+is to facilitate the development of a CGL compliant OS.
+The core image name is: core-image-cgl.bb
+
+
+IV. Specific terms and information
+==================================
+
+    HA(high availability) technology - refers to a system or component
+that is continuously operational for a long length of time.
+    Standard interface - represents a joint place of two systems or
+subsystems that has a previously agreed  upon form so that two systems
+may be readily connected together.
+    Service interface - a programatic interface that tries to achive
+interoperability. It enables users to describe independently of a platform
+or programming language operations required in the application system at
+a later stage.
+    Interface - shared boundary or connection between two dissimilar
+objects, devices or systems.
-- 
2.7.4


