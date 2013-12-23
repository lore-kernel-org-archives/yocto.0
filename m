Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63218E007DC
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 12:47:18 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VvCPD-0004Tl-CG
	for yocto@yoctoproject.org; Mon, 23 Dec 2013 21:47:15 +0100
Received: from ppp005054052062.access.hol.gr ([5.54.52.62])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 21:47:15 +0100
Received: from gmane by ppp005054052062.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 21:47:15 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 23 Dec 2013 22:47:00 +0200
Message-ID: <l9a7ft$2rm$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054052062.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
Subject: u-boot 2013.10 LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Mon, 23 Dec 2013 20:47:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I try to build instead of u-boot v2013.07 [1] the latest and greatest
released version i.e. v2013.10[2].

... which does not build because LIC_FILES_CHKSUM points to an invalid
file ...

... and yes it does, since the COPYING file is gone ...

The licencense info is contained in the source code itself as
SPDX-License-Identifiers.

How do I get it to build?

Regards,

Robert

[1]
http://git.denx.de/?p=u-boot.git;a=tree;h=63e74bc767dda75feff521c40b779018397fe1e7;hb=62c175fbb8a0f9a926c88294ea9f7e88eb898f6c

[2]
http://git.denx.de/?p=u-boot.git;a=tree;h=b6756a15fd1e165107adf57e7c4a393f7dbcba38;hb=183acb700378a8cfc5d50a01a65de93fb2c24586..."In
C++ it's harder to shoot yourself in the foot, but when you do, you blow
off your whole leg." - Bjarne Stroustrup

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



