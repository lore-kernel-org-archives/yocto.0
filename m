Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52B3DE00BFD; Tue, 13 Nov 2018 12:48:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1203 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Nov 2018 12:48:22 PST
Received: from cpanel4.indieserve.net (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 322B4E006F1
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 12:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default;
	h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3WHK2FStKR93Bv37iUXz52wbohjsiUBqkus20FFs0iE=;
	b=sIRhMVhE6jLV3v8hJ6DEThfvZz
	P6c7zYR6Y+xxBwSBcHbUb01M3+CLpd4fYCj+0FETXGFlw//Ud2Jj8f4NAygvqPWWvOrJYHBE4lhkT
	lC0sJo41Y6P0V5zvyq1MfPWoTftciAYrLxQeNLkwKWxTw/r0NjF5NSTTDcJLnxIuFIAwZ6AyVE+xg
	cBotpkdZ5Ap0xRifvapR5g9Uk6erPoSqKwy0bvDHkF+gqccTBhaUVhIz4WLHYPf4wClfi4Qo/RvwB
	CGflq3Rg/SrA+lMiy/t/aodNziB3TewL+F/98Ddr27P737rmWu7ZwCtx+D/iwsNXpnRF5hyw0b5mg
	Dwl8rWFQ==;
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com
	([174.114.57.56]:39398 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>) id 1gMfIG-0008FP-M6
	for yocto@yoctoproject.org; Tue, 13 Nov 2018 15:28:17 -0500
Date: Tue, 13 Nov 2018 15:28:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: m4-native, zedboard, "Please port gnulib fseeko.c to your platform"
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
X-List-Received-Date: Tue, 13 Nov 2018 20:48:24 -0000
Content-Type: multipart/mixed; boundary="8323328-867063164-1542140897=:10117"

--8323328-867063164-1542140897=:10117
Content-Type: text/plain; charset=ISO-8859-7
Content-Transfer-Encoding: 8BIT


  been away from YP for a few months, diving back in, want to build a
core-image-minimal for my zedboard, and i will first admit that i'm
using a non-approved distro (fully-updated fedora 29):

"WARNING: Host distribution "fedora-29" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution."

  no matter, i will live dangerously. but then things take an ugly
turn:

"WARNING: Your host glibc verson (2.28) is newer than that in
uninative (2.27). Disabling uninative so that sstate is not
corrupted."

  ok, let's see how far we get ... and that's here, trying to compile
m4-native:

| gcc   -I. -I../../m4-1.4.18/lib
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-O2 -pipe -c -o freadahead.o ../../m4-1.4.18/lib/freadahead.c
| gcc   -I. -I../../m4-1.4.18/lib
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-O2 -pipe -c -o fseeko.o ../../m4-1.4.18/lib/fseeko.c
| ../../m4-1.4.18/lib/freadahead.c: In function ¡freadahead¢:
| ../../m4-1.4.18/lib/fseeko.c: In function ¡rpl_fseeko¢:
| ../../m4-1.4.18/lib/freadahead.c:92:3: error: #error "Please port
gnulib freadahead.c to your platform! Look at the definition of
fflush, fread, ungetc on your system, then report this to bug-gnulib."
|   #error "Please port gnulib freadahead.c to your platform! Look at
the definition of fflush, fread, ungetc on your system, then report
this to bug-gnulib."
|    ^~~~~
| ../../m4-1.4.18/lib/fseeko.c:110:4: error: #error "Please port
gnulib fseeko.c to your platform! Look at the code in fseeko.c, then
report this to bug-gnulib."
|    #error "Please port gnulib fseeko.c to your platform! Look at the
code in fseeko.c, then report this to bug-gnulib."


and so on. red hat's bugzilla has an entry for just this:

https://bugzilla.redhat.com/show_bug.cgi?id=1595702

but i'm unsure (read, have no clue) how to deal with this, and i
suspect it affects more targets than just zedboard which is why i'm
asking on the general YP list.

  thoughts? is there a cheap fix for this? i'm about to dive into
debugging this, but if someone wants to make my life easy, that'd be
great.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                  http://crashcourse.ca/dokuwiki

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-867063164-1542140897=:10117--
