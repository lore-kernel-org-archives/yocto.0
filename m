Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E920AE00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 08:25:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q51FPRVU003795
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 1 Jun 2012 08:25:27 -0700 (PDT)
Received: from msp-dhcp42.wrs.com (172.25.34.42) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 1 Jun 2012 08:25:26 -0700
Message-ID: <4FC8DEE6.5060003@windriver.com>
Date: Fri, 1 Jun 2012 10:25:26 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: prelink-cross project update
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
X-List-Received-Date: Fri, 01 Jun 2012 15:25:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

The prelink-cross project has been updated with a number of recent commits. 
Each of these commits has been test with a Yocto Project target build and the 
internal test suite for: qemux86, qemux86-64, qemuppc, qemumips and qemuarm.

Note, due to various issues I was unable to validate the x32 ABI.

See changelog below:

2012-05-30  Mark Hatle <mark.hatle@windriver.com>
         * configure.in: Change the default bug report address to me
         * testsuite/ifunc*.sh: Update a test to only run when !CROSS

2012-05-22  Joseph Myers  <joseph@codesourcery.com>
         * src/prelink.h: Add missing wrap_glob declaration

2012-05-28  Joseph Myers  <joseph@codesourcery.com>
         * m4/libelf.m4: Add unistd.h

2012-05-29  Mark Hatle <mark.hatle@windriver.com>
         * testsuite/tls*.sh: Update TLS __thread check
         * README.cross: change instructions to use autoreconf -if

2012-05-29  Mark Hatle <mark.hatle@windriver.com>
         Integrate testsuite patches:

         2012-05-25  Joseph Myers  <joseph@codesourcery.com>

         * testsuite: Introduce $READELF
         * testsuite: Introduce $RUN
         * testsuite: Introduce $RUN_HOST
         * testsuite/quick2.sh: Enable PIE test for ARM
         * testsuite: Use $CCLINK instead of $CC for tls tests

2012-04-10  Maxim Kuvyrkov  <maxim@codesourcery.com>
         * src/rtld/rtld.c (find_lib_by_soname): Follow ld.so's behavior of
         pulling its name from PT_INTERP.

2012-05-29  Mark Hatle <mark.hatle@windriver.com>
         * arch-x86_64.c: Fix R_X86_64_64 relocation

2012-05-25  Mark Hatle <mark.hatle@windriver.com>
         * Fix testsuite execution

