Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC644E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 10:48:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q12ImL0s012564
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 2 Feb 2012 10:48:21 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 2 Feb 2012 10:48:21 -0800
Message-ID: <4F2ADA74.6090803@windriver.com>
Date: Thu, 2 Feb 2012 12:48:20 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
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
X-List-Received-Date: Thu, 02 Feb 2012 18:48:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

A new version of the prelink-cross has been pushed to the repository.

This version fixes a number of minor bugs found during development, it is also 
believed to resolve bug #1808 relating to ARM prelinking, and adds support for 
x86_64's x32 ABI.

Special thanks to Mentor Graphics for contributing the ARM TLS fix.

There were no upstream changes to the main prelink component, all changes are
specific to the cross functionality.  Below is the Changelog, since the last update:

2011-12-21  Mark Hatle <mark.hatle@windriver.com>
         * src/arch-x86_64.c: Add support for x32 ABI

2012-02-02  Mark Hatle <mark.hatle@windriver.com>
         Integrate dwarf2 signal frame patch:

         2010-05-10  Paul Brook  <paul@codesourcery.com>

         * src/dwarf2.c (adjust_dwarf2_frame): Skip 'S' augmentation.

2012-02-01  Mark Hatle <mark.hatle@windriver.com>
         * configure.in: Fix enabling and disabling of SE Linux support

2012-01-26  Mark Hatle <mark.hatle@windriver.com>
         * elf.h, rtld/dl-lookupX.h, rtld/rtld.c: Sync to eglibc 2.15

         Integrate R_ARM_TLS_DESC relocation support patch:

         2011-04-13  Maciej W. Rozycki  <macro@codesourcery.com>

         * src/prelink.h (DT_TLSDESC_PLT, R_ARM_TLS_DESC): New macros.
         (DSO): Add info_DT_TLSDESC_PLT member.
         (DT_TLSDESC_PLT_BIT): New macro.
         * src/arch-arm.c (arm_prelink_rel, arm_prelink_rela): Handle
         R_ARM_TLS_DESC relocation.
         (arm_prelink_conflict_rel, arm_prelink_conflict_rela): Likewise.
         (arm_rel_to_rela): Likewise.
         (arm_undo_prelink_rel): Likewise.
         (arm_reloc_class): Likewise.
         * src/dso.c (read_dynamic): Handle DT_TLSDESC_PLT dynamic tag.

         * src/prelink.h: add missing prototypes for wrap_listxattr,
         wrap_getxattr, wrap_setxattr

2012-01-04  Mark Hatle <mark.hatle@windriver.com>
         * exec.c: Check that a section is larger then 0 bytes when
           determining the section to segment mapping.  This matches
           the behavior of elfutils - readelf.  Otherwise an empty
           PROGBITS section at the end of a segment will cause a
           failure.

