Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D7540E002AB
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 09:57:27 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1U3VjB-0005gc-Tx
	for yocto@yoctoproject.org; Thu, 07 Feb 2013 18:57:41 +0100
Received: from ppp005054066050.access.hol.gr ([5.54.66.50])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 18:57:41 +0100
Received: from gmane by ppp005054066050.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 18:57:41 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 07 Feb 2013 19:57:03 +0200
Message-ID: <kf0pth$hu9$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054066050.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
Subject: gcov on beagle-xm with kernel module
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
X-List-Received-Date: Thu, 07 Feb 2013 17:57:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I still try to use gcov on the beagle-xm on a kernel module and I'm not
sure this is the right mailing list to ask.

I just build it with the following modification to the makefile:

GCOV_PROFILE_debugfs.o := y

and it builds;)

... but as soon as I try and insmod I get the following:

insmod debugfs.ko
Error: could not insert module debugfs.ko: Invalid module format

and dmesg says:
[ 1628.759552] debugfs: unknown relocation: 38

Did anyone see something like this before here?

Apparently I'm not the only one having this kind of problem:

http://old.nabble.com/Problem-with-applying-Gcov-tool-to-kernel-module-to28299744.html

Does this look like a compiler bug?

Regards,

Robert..."Never express yourself more clearly than you think." - Niels Bohr

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



