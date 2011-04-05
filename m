Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id B40B14C80044
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2011 05:43:40 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q73jV-0007rY-Eg
	for yocto@yoctoproject.org; Tue, 05 Apr 2011 12:43:37 +0200
Received: from ppp079166103128.dsl.hol.gr ([79.166.103.128])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2011 12:43:37 +0200
Received: from gmane by ppp079166103128.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2011 12:43:37 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 05 Apr 2011 13:43:21 +0300
Organization: Reliable Embedded Systems
Message-ID: <ineroa$hbp$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166103128.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: Change Endianess for MIPS build
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
X-List-Received-Date: Tue, 05 Apr 2011 10:43:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I was wondering what needs to be done to build (at least) a little
endian qemu root file system for MIPS.

Yocto builds this:

ELF 32-bit MSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
linked (uses shared libs), not stripped

I would need this:

ELF 32-bit LSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
linked (uses shared libs), not stripped

I guess SITEINFO_ENDIANESS (endian-big, endian-little) needs to be
changed to endian-little somewhere.

Can you please point me to where this needs to be done?

... or maybe I'm completely wrong and it needs to be done elsewhere ...

Regards,

Robert

..."I'm afraid that I've seen too many people fix bugs by looking at
debugger output, and that almost inevitably leads to fixing the symptoms
rather than the underlying problems." --Linus

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



