Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C97E006B4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 10:41:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9QHfTpJ016633
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 10:41:29 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 26 Oct 2011 10:41:28 -0700
Message-ID: <4EA84648.8040206@windriver.com>
Date: Wed, 26 Oct 2011 12:41:28 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: prelink-cross project sync update
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
X-List-Received-Date: Wed, 26 Oct 2011 17:41:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

(I'm going to try to send out these quick blurbs as prelink-cross is synced to
the upstream.  Upstream changes are fairly infrequent, so this will be a low
volume set of emails.  Most emails in the future will be shorted then this one.)

prelink-cross has been synced up to the latest upstream prelink changes.

The latest changes include:

2011-10-12  Jakub Jelinek  <jakub@redhat.com>

        * src/main.c (layout_page_size): New variable.
        (OPT_LAYOUT_PAGE_SIZE): Define.
        (options): Add --layout-page-size option.
        (set_default_layout_page_size): New function in i?86/x86_64
        resp. empty macro on other architectures.
        (main): Call it.
        * src/arch-i386.c (i386_layout_libs_init): Fail if
        l->max_page_size is larger than 2MB and exec_shield is true.
        Compute reg0s as REG0S rounded up to l->max_page_size
        boundary and use it instead of REG0S.
        (i386_layout_libs_pre): Compute reg0s as REG0S rounded up to
        l->max_page_size boundary and use it instead of REG0S.
        Fix up a pasto in computation of virt parameter for
        third i386_find_free_addr call.
        * src/prelink.h (layout_page_size): New decl.
        * src/layout.c (layout_libs): Set max_page_size and
        l.max_page_size to maximum of plarch->max_page_size
        and layout_page_size.  Fail if mmap_base or mmap_end
        aren't max_page_size aligned.
        * src/arch-ppc.c (ppc_layout_libs_pre): Give up if
        l->max_page_size is larger than 64KB.

In essence what this does is adds a new option "--layout-page-size" that allows
someone to override the "max_page_size" value when necessary.  (It's not a true
override as the max_page_size is set to either the existing value or
layout-page-size whichever is larger.)

The upstream change also added dynamic run-time detection for the AMD Bulldozer
platform, setting the default to 32k.  Since run-time detection is contrary to
the existing prelink-cross usage, the code has been disabled.

As usual, the upstream version is in the "master" branch, and the cross version
is in the "cross_prelink" branch.

--Mark

