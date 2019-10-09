Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82F96E00D8B; Wed,  9 Oct 2019 06:02:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 366ECE00D89
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 06:02:48 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 7so2513089wme.1
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 06:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=nkK3WhFximfgvJEjR0AiW5QMpEwyYBxqNKoao4JzGLA=;
	b=iO/0j4qu3VcX3n4TuGV115nrzr5BjjhnJRqTDuykaw939ui5EYAE/I7UgMZ7P/Tr30
	b3lL4lHarA6kwLDA9SU4uoBK3qGlMI6i5yRk3er51UON0k0BSEL9gvgVbDjbVYI0mLs/
	yVhl6nl3yp7y0+rieNmrDQnTxwz5IyX+e0hM+9+hH4AjEY//1tzz4IKm4EOggBhglV0P
	QJj1eaxvf3kiDWeWrAbSBJcbJK2zzwAkeio1hh7B6ImU94W/O1kxhtryJuf6HCZnhqG7
	tG7mfwTzcWcWbShEZd/ByI36jVju0RMvaLnOc3Pi17pBt9XZDUad2bh0Oco7GpkDnvgD
	F20A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=nkK3WhFximfgvJEjR0AiW5QMpEwyYBxqNKoao4JzGLA=;
	b=ecsyQzyCsXCsybnJya8VkWCsLXfqr+4rj1/U2fwITEcUeSx0RvygvAxa51wF8MbwWq
	lHQqyZJZPyBSCm2hYcP9ctM/QU66qnuY7EISwm/UauKz8OYZ7nDQKhoMR1XTnIGTk9vu
	99UC5PCzMs6UUY3HaJG4dP6pLQhHkbOOvR9EVzkDBm6V2gv0UXwcrFraONbrRH7WmO5n
	H41RCtDoCd6PU4CuFt/f/QSOzbOzRNuG1mOA/h3II/BoaPYSwM2ahGl02QMaFWC2y3Ff
	OUlXRKxFEEGsXG8uADvWdqfO2GJUd8gGzFu1h8J6L5aEyWMhB9rTeEUUCVh/K7BAH0dK
	EKVA==
X-Gm-Message-State: APjAAAUEtLz4DRvSY6b3cWDmrtHthYsttsW61YFSdkBlzaQQsrCgRTxk
	2OAAagguxjsMAlmpss+X/cFDMDsLt3E=
X-Google-Smtp-Source: APXvYqwRtT6CdAw+KIhptSw9x5eNf4oUWTdNhLsD5BfpWA9NFMi4fPdyIOysALB7SXzcHw/YfHpGTA==
X-Received: by 2002:a05:600c:143:: with SMTP id
	w3mr2401601wmm.35.1570626167522; 
	Wed, 09 Oct 2019 06:02:47 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id l4sm1681016wrw.6.2019.10.09.06.02.45
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 09 Oct 2019 06:02:46 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Oct 2019 14:02:43 +0100
Message-Id: <20191009130243.28284-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH][yocto-docs] ref-system-requirements: update support distribution list
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
X-List-Received-Date: Wed, 09 Oct 2019 13:02:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add Fedora 30 and Ubuntu 19.04.

Swap openSUSE 42.3 for Leap 15.1.

Remove huge comment of old distributions.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../ref-manual/ref-system-requirements.xml    | 54 ++-----------------
 1 file changed, 4 insertions(+), 50 deletions(-)

diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documentation/ref-manual/ref-system-requirements.xml
index 51995309d..9c2198a76 100644
--- a/documentation/ref-manual/ref-system-requirements.xml
+++ b/documentation/ref-manual/ref-system-requirements.xml
@@ -89,65 +89,19 @@
             </note>
             <itemizedlist>
                 <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
-                <listitem><para>Ubuntu 18.04</para></listitem>
+                <listitem><para>Ubuntu 18.04 (LTS)</para></listitem>
+                <listitem><para>Ubuntu 19.04</para></listitem>
                 <listitem><para>Fedora 28</para></listitem>
                 <listitem><para>Fedora 29</para></listitem>
+                <listitem><para>Fedora 30</para></listitem>
                 <listitem><para>CentOS 7.x</para></listitem>
                 <listitem><para>Debian GNU/Linux 8.x (Jessie)</para></listitem>
                 <listitem><para>Debian GNU/Linux 9.x (Stretch)</para></listitem>
                 <listitem><para>Debian GNU/Linux 10.x (Buster)</para></listitem>
-                <listitem><para>OpenSUSE 42.3</para></listitem>
+                <listitem><para>OpenSUSE Leap 15.1</para></listitem>
             </itemizedlist>
         </para>
 
-
-<!--            <listitem><para>Ubuntu 10.04</para></listitem>
-                <listitem><para>Ubuntu 11.10</para></listitem>
-                <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
-                <listitem><para>Ubuntu 13.10</para></listitem>
-                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>
-                <listitem><para>Ubuntu 14.10</para></listitem>
-                <listitem><para>Ubuntu 15.04</para></listitem>
-                <listitem><para>Ubuntu 15.10</para></listitem>
-                <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
-                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>
-                <listitem><para>Ubuntu 17.04</para></listitem>
-                <listitem><para>Fedora 16 (Verne)</para></listitem>
-                <listitem><para>Fedora 17 (Spherical)</para></listitem>
-                <listitem><para>Fedora 19 (Schrödinger's Cat)</para></listitem>
-                <listitem><para>Fedora release 20 (Heisenbug)</para></listitem>
-                <listitem><para>Fedora release 22</para></listitem>
-                <listitem><para>Fedora release 23</para></listitem>
-                <listitem><para>Fedora release 24</para></listitem>
-                <listitem><para>Fedora release 26</para></listitem>
-                <listitem><para>CentOS release 5.6 (Final)</para></listitem>
-                <listitem><para>CentOS release 5.7 (Final)</para></listitem>
-                <listitem><para>CentOS release 5.8 (Final)</para></listitem>
-                <listitem><para>CentOS release 6.3 (Final)</para></listitem>
-                <listitem><para>CentOS release 6.x</para></listitem>
-                <listitem><para>CentOS release 7.x</para></listitem>
-                <listitem><para>Debian GNU/Linux 6.0 (Squeeze)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.x (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 8.x (Jessie)</para></listitem>
-                <listitem><para>Debian GNU/Linux 9.x (Stretch)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.1 (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.2 (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.3 (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.4 (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.5 (Wheezy)</para></listitem>
-                <listitem><para>Debian GNU/Linux 7.6 (Wheezy)</para></listitem>
-                <listitem><para>openSUSE 11.4</para></listitem>
-                <listitem><para>openSUSE 12.1</para></listitem>
-                <listitem><para>openSUSE 12.2</para></listitem>
-                <listitem><para>openSUSE 12.3</para></listitem>
-                <listitem><para>openSUSE 13.1</para></listitem>
-                <listitem><para>openSUSE 13.2</para></listitem>
-                <listitem><para>openSUSE 42.1</para></listitem>
-                <listitem><para>openSUSE 42.2</para></listitem>
-            </itemizedlist>
--->
-
-
         <note>
             While the Yocto Project Team attempts to ensure all Yocto Project
             releases are one hundred percent compatible with each officially
-- 
2.20.1


