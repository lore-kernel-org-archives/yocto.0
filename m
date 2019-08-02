Return-Path: <kaz@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 881F0E00E16; Fri,  2 Aug 2019 13:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [64.59.134.13 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Aug 2019 13:58:57 PDT
Received: from smtp-out-no.shaw.ca (smtp-out-no.shaw.ca [64.59.134.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E658E00994
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 13:58:57 -0700 (PDT)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id tecch1CrFsAGktecdhZGO7; Fri, 02 Aug 2019 14:57:56 -0600
X-Authority-Analysis: v=2.3 cv=WeVylHpX c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=FmdZ9Uzk2mMA:10
	a=QhSedKNqE5ra2gnNN2UA:9 a=QEXdDO2ut3YA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22
	a=jd6J4Gguk5HxikPWLKER:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <kaz@kylheku.com>) id 1htecc-0005Ch-98
	for yocto@yoctoproject.org; Fri, 02 Aug 2019 13:57:54 -0700
To: yocto@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
From: Kaz Kylheku <kaz@kylheku.com>
Message-ID: <e916cb6cb6d8dbb629e11a42bc0c8561@mail.kylheku.com>
X-Sender: kaz@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfKqj3y17BA+LQHoEzpNb78NRutL+s3mjzCuhujZAabHjzK0GxlnJbSC4MSIQMaNyEWEqt3onUCPqnps3XOKSwthC0j+yKk11nKYB7qtMFcSsCMqgl6yr
	tEVaqY4Qt8m+niyDO5LM/smZZ9O0NIdKixYGREq0aORqFfQJzU9ffAIi
X-Mailman-Approved-At: Mon, 19 Aug 2019 02:32:48 -0700
Subject: [PATCH] In Yocto 2.7 powertop package is broken.
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
Date: Fri, 02 Aug 2019 20:58:57 -0000
X-Original-Date: Fri, 02 Aug 2019 13:57:54 -0700
X-List-Received-Date: Fri, 02 Aug 2019 20:58:57 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

Via a .bbappend file in my own layers, I added the following patch to
build powertop, which is enabled when tools-profile is added to
EXTRA_IMAGE_FEATURES.

* recipes-profiling/powertop/files/posix-path-max-not-defined.patch:
Patch for build issue. The C++ code needs to including <limits.h> which
defines the POSIX PATH_MAX preprocessor symbol.

Index: powertop-v2.10/src/wakeup/wakeup_ethernet.h
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- powertop-v2.10.orig/src/wakeup/wakeup_ethernet.h
+++ powertop-v2.10/src/wakeup/wakeup_ethernet.h
@@ -25,6 +25,7 @@
  #ifndef _INCLUDE_GUARD_ETHERNET_WAKEUP_H
  #define _INCLUDE_GUARD_ETHERNET_WAKEUP_H

+#include <limits.h>
  #include <vector>

  #include "wakeup.h"
Index: powertop-v2.10/src/wakeup/wakeup_usb.h
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- powertop-v2.10.orig/src/wakeup/wakeup_usb.h
+++ powertop-v2.10/src/wakeup/wakeup_usb.h
@@ -26,6 +26,7 @@
  #define _INCLUDE_GUARD_USB_WAKEUP_H

  #include <vector>
+#include <limits.h>

  #include "wakeup.h"



