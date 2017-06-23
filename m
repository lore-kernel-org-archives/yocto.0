Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6F9FE00B9D; Fri, 23 Jun 2017 16:21:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0065]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.62 listed in list.dnswl.org]
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F29EE00B1B
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 16:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498260084; bh=nPEd3o4Q9BaKCWIm0tBbxjJ/TX/oFrhiMlra
	ajSnNXs=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=pNR0CEDlQ/jRV0R1jzyj+/2
	e5EXtx3Pj4dyR8vh8mWfOr9tmslakzB29l0a8PoOl6dxp4hAE9UpWSwEXbAVzfh/ACQ
	VfzOsju0xrW/NAjxdzGt6HiOYsMUkn5+GNesQOe6Yid2+Cw1b6WveUYN1oStn8cfKEG
	Uafgfi02IX3yXlCAezX//+m4QmlbfSh8crg+CHkwonRhI34IoYyNgbUjeydX05FbrfM
	wKcax0Dl82Vqsr/y2LV4EachNahe/zE5rU7NBDTTniWk22+u4Zreo6GgucArCklDp/K
	oNPdvo0LEGJus/+J3TKIpWrnNUAwonabA1ozcT8a6Z0IAI/NTgw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=ObMLiaDZOBhf1/p3vpBhBGl2Z9Vp0KDcWX042Kxmp8usYaIT+duNfO0n+mSsDt1v0PFQH2R9vAX7oDjDQWbeklbLD1PSA2eskqzsbm3AE3YGxysGDstG4lNoYCUBoYeo7kUyTjIr2s1EL8Gg41lTJz/bYyohZMsk+8uZxS50iuZKXkb5ETPLHWSPqGQSBbTQ25xN7Yi2J3q5YSlxXhMS4ywyqyP365JmxFkRsvDB7xmD18QmwqdrTC9TcE8jkknbb7tu3GbrY+1UAhTkEqXJI51iGP1opt+ScfMaXl/tPIbSnoM9xjl/Vsf1IhL9Wr4q6MJzQ1WomsBQZU20Oc7Uqg==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dOXtD-000G1K-4h
	for yocto@yoctoproject.org; Fri, 23 Jun 2017 19:21:23 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 Jun 2017 16:21:25 -0700
Message-ID: <E68186D16557413C961C4DA89EF49E84@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLsd26yPTtL788wQrqp3ZEWNpEjFQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068837fbfec609f707a3fd545780c89f3c1c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: How do you remove an IMAGEFS?
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
X-List-Received-Date: Fri, 23 Jun 2017 23:21:27 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

x86-base.inc adds "live" to IMAGE_FSTYPES. I have no need for a live
image, or an iso, so I thought adding IMAGE_FSTYPES_remove = "live iso" to
my image recipe might work, but it complained in do_bootimg that my recipe
"depends upon non-existent task do_image_ext4". On a hunch, I movved the
IMAGE_FSTYPES_remove to before inheriting core-image, and then it didn't
complain, but it didn't build ANY images.

So what's the right way to suppress live image and iso image generation,
where those things are included in some stock config file somewhere?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


