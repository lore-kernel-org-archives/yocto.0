Return-Path: <okonopli@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94747E00901; Thu, 15 Nov 2018 05:25:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.38.203.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Nov 2018 05:25:42 PST
Received: from aer-iport-2.cisco.com (aer-iport-2.cisco.com [173.38.203.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86929E00872
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 05:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3166; q=dns/txt; s=iport;
	t=1542288342; x=1543497942;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=BhaaVchT9YPxe7yuRw5gP78N95O21aarkkddL5F8lWA=;
	b=kfawEvb4C1wT1FEpJvZuxlDXDD/McKLJm7JT8LV5jzfBgnMQN3PdmVZ7
	45TBgNJKlSssfUNlqCrZ8P200rAj+wdtltstJCm/ovATmLoomxir+V3gR
	LeChAy0DqzgjuyJOkP3iuK8DWMw21TN4cl7XTnNy+LyW9LupmUq40gE2I g=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ANAAArcu1b/xbLJq1jGwEBAQEDAQE?=
	=?us-ascii?q?BBwMBAQGBUQYBAQELAYNZEieDeIgYX4x7iUKJKoR3gXoLAQGIXjQJDQEDAQE?=
	=?us-ascii?q?CAQECbSiFZgQLAQVaHAImAmwGAgEBgx2BdQ2MRptQfDOFQIRlgQuLEYFAP4E?=
	=?us-ascii?q?4im2CVwKfD1UJkR4GGIlahxsBLJc0AhEUgUY4gVVwFTuCbJBcPQMwjjUBAQ?=
X-IronPort-AV: E=Sophos;i="5.56,236,1539648000"; 
   d="scan'208";a="8066622"
Received: from aer-iport-nat.cisco.com (HELO aer-core-4.cisco.com)
	([173.38.203.22])
	by aer-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Nov 2018 13:24:36 +0000
Received: from [10.63.15.135] ([10.63.15.135]) (authenticated bits=0)
	by aer-core-4.cisco.com (8.15.2/8.15.2) with ESMTPSA id wAFDOXrS015270
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 13:24:36 GMT
To: yocto@yoctoproject.org
From: Oleksii Konoplitskyi <okonopli@cisco.com>
Message-ID: <11e8dff4-67b3-2a90-40ac-e9443589b866@cisco.com>
Date: Thu, 15 Nov 2018 15:24:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-Authenticated-User: okonopli
X-Outbound-SMTP-Client: 10.63.15.135, [10.63.15.135]
X-Outbound-Node: aer-core-4.cisco.com
Subject: [PATCH] ref-manual: add EXCLUDE_PACKAGES_FROM_SHLIBS description
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
X-List-Received-Date: Thu, 15 Nov 2018 13:25:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Some packages containing shared libraries might be registered as shlib
providers when they shouldn't (for example, the lib is for their private use
and must not generate any dependency).

EXCLUDE_FROM_SHLIBS is targeted at that, but it could be set for entire 
recipe
only.

Variable EXCLUDE_PACKAGES_FROM_SHLIBS allows to set list of packages 
that are
not candidates for shlib providers.

Signed-off-by: Oleksii Konoplitskyi <okonopli@cisco.com>
---
  documentation/ref-manual/ref-variables.xml | 28 
++++++++++++++++++++++++++++
  1 file changed, 28 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml 
b/documentation/ref-manual/ref-variables.xml
index 595f2db..98d3f86 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -4289,6 +4289,34 @@
              </glossdef>
          </glossentry>

+        <glossentry 
id='var-EXCLUDE_PACKAGES_FROM_SHLIBS'><glossterm>EXCLUDE_PACKAGES_FROM_SHLIBS</glossterm>
+            <info>
+                EXCLUDE_PACKAGES_FROM_SHLIBS[doc] = "Causes the 
OpenEmbedded build system's shared libraries resolver to exclude 
packages when scanning for shared libraries."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata 
fileref="figures/define-generic.png" /> -->
+                    Triggers the OpenEmbedded build system's shared 
libraries
+                    resolver to exclude packages when scanning for
+                    shared libraries.
+                    The 
<filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable is
+                    similar to the
+                    <link 
linkend='var-EXCLUDE_FROM_SHLIBS'><filename>EXCLUDE_FROM_SHLIBS</filename></link>
+                    variable, which excludes all the packages provided 
by recipe
+                    and not excludes particular package.
+                </para>
+
+                <para>
+                    Use the
+ <filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable as a list 
of packages that
+                    are not candidates for shared libraries providers:
+                    <literallayout class='monospaced'>
+     EXCLUDE_PACKAGES_FROM_SHLIBS += "glibc-ptest glibc-dev"
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
          <glossentry 
id='var-EXCLUDE_FROM_WORLD'><glossterm>EXCLUDE_FROM_WORLD</glossterm>
              <info>
                  EXCLUDE_FROM_WORLD[doc] = "Directs BitBake to exclude 
a recipe from world builds (i.e. bitbake world)."
-- 
2.7.4


