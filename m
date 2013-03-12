Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE82AE0129D
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 02:28:59 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=O2j0Dzl+G2Yp0/sOUlCOn/NYuQ3kL1S/OztC74C3QSdgnIf0yTgLrxNFvHhCG+rj;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UFLVy-0000lS-PP
	for yocto@yoctoproject.org; Tue, 12 Mar 2013 05:28:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 12 Mar 2013 02:28:53 -0700
Message-ID: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4fBAM9ZUllslC5TiSVBuHH5ygIRg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068865f50612f2aeb2ddd9930d4dafbca0ee350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Can't find guile-2.0
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
X-List-Received-Date: Tue, 12 Mar 2013 09:28:59 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm bitbaking a console image for an Atom, which worked when I did a plain
vanilla version. Now I've added the OpenEmbedded layer containing Samba, and
it's failing on one thing. The error message points me to a 5000-line log
file called
build/tmp/work/i686-linux/autogen-native-5.12-r3/temp/log.do_configure.5923,
and it seems to be getting errors looking for Guile. The configure script
says this:

 configure:14911: checking for LIBGUILE
 configure:14918: $PKG_CONFIG --exists --print-errors "guile-2.0"
 Package guile-2.0 was not found in the pkg-config search path.
 Perhaps you should add the directory containing `guile-2.0.pc'
 to the PKG_CONFIG_PATH environment variable
 No package 'guile-2.0' found

and then finishes up with this:

 configure:14966: error: Package requirements (guile-2.0) were not met:
 No package 'guile-2.0' found
 Consider adjusting the PKG_CONFIG_PATH environment variable if you
 installed software in a non-standard prefix.
 Alternatively, you may set the environment variables LIBGUILE_CFLAGS
 and LIBGUILE_LIBS to avoid the need to call pkg-config.
 See the pkg-config man page for more details.

I used apt-get to install guile-2.0. There is a file called
/usr/lib/libguile-2.0.so.22 (not sure what the .22 means), so it looks like
I have the library. However, there is no .pc file for it in
/usr/lib/pkgconfig, or anywhere else that I can see. I'm new to Linux, so I
don't know if this is an improperly installed library or what. Anyone have
any insight?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


