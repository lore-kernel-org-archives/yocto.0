Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BBB54C800A6
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2011 10:53:52 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q3VoB-0006ZB-WC
	for yocto@yoctoproject.org; Sat, 26 Mar 2011 16:53:48 +0100
Received: from ppp079166103136.dsl.hol.gr ([79.166.103.136])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2011 16:53:47 +0100
Received: from gmane by ppp079166103136.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2011 16:53:47 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 26 Mar 2011 17:53:28 +0200
Organization: Reliable Embedded Systems
Message-ID: <iml25p$l8j$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166103136.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: internal compiler error with qt building poky-image-lsb-sdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 26 Mar 2011 15:53:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

The short version:

With commit f8539239bc473279cc475b07c22e1e96514c6d2f Thu Mar 24 13:03:50
2011 +0000 both beagleboard and routerstationpro fail to build due to an
internal compiler error:

../../include/QtCore/../../src/corelib/tools/qstring.h:187:17: note: the
mangling of 'va_list' has changed in GCC 4.4
graphicsview/qgridlayoutengine.cpp:1553:1: internal compiler error: in
build_abbrev_table, at dwarf2out.c:9806

This seems to be due to the gcc version used and how the code is written
in qt.

The longer version:

http://bugzilla.pokylinux.org/show_bug.cgi?id=932

Regards,

Robert..."C treats you like a consenting adult. Pascal treats you like a
naughty child. Ada treats you like a criminal." -- (Bruce Powel Douglass)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



