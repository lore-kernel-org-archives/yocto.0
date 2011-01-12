Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEE454C8085F
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 11:04:17 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0CH4HEF020011
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 09:04:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 12 Jan 2011 09:04:16 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 12 Jan 2011 09:04:17 -0800
Message-ID: <4D2DDF10.40700@windriver.com>
Date: Wed, 12 Jan 2011 11:04:16 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-OriginalArrivalTime: 12 Jan 2011 17:04:17.0130 (UTC)
	FILETIME=[BF0DD4A0:01CBB27A]
Subject: Announcement: Cross-prelink upreved to latest upstream version
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
X-List-Received-Date: Wed, 12 Jan 2011 17:04:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The cross-prelink project has been updated to the latest upstream prelink SVN
Revision 187 a.k.a. prelink-0.4.4.

Current version of the cross-prelink is f51f4a5db605ab542ab06334fcad1d5bdba91048

The official (upstream) changelog:

2010-11-23  Jakub Jelinek  <jakub@redhat.com>

        * src/dwarf2.h (DW_OP_GNU_implicit_pointer): Define.
        * src/dwarf2.c (adjust_location_list): Add CU argument, fix
        handling of DW_OP_call_ref, handle DW_OP_GNU_implicit_pointer.
        (adjust_dwarf2_loc): Add CU argument, adjust adjust_location_list
        caller.
        (adjust_attributes): Adjust adjust_location_list and
        adjust_dwarf2_loc callers.
        (adjust_dwarf2_frame): Likewise.

2010-11-22  Jakub Jelinek  <jakub@redhat.com>

        * src/dso.c: Include sys/xattr.h.
        (copy_xattrs): New function.
        (set_security_context): Call it.

cross-prelink changelog:

2011-01-12  Mark Hatle <mark.hatle@wwindriver.com>
        * Merge to upstream r187
        * Resolve merge conflict

