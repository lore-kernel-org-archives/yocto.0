Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C938E00BD0; Wed, 21 Jun 2017 15:56:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 403AAE00B8B
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 15:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498085764; bh=us7ep9i7YVd7+xMzwJMmqK3RuYp77QB8AiEb
	zyul8m8=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=UksYXROBygPx8V6pgcOokEQ
	Uh2Pcs+ZLr9q1lNa2RyySw6Y2XEwUyeMhrH5GcNEUR3C8CkqXNlYJ/gMWWkZibvumjp
	7qPuR7A+zLA63AwIHFWd9dnEAgOX7fUiSM53VpeT7nRpx3nY5AE58qZpNDy42gIIHJH
	HxFJsiWCHlpupSZ7vqVAaMxBx517AG0A8zTZNzz1383eGAyrMn47MtX1Dhr5I8BXp+f
	0mGWuf93F5nDv6zWj3W53apsV6rqrIkR+xfzlwi0wGnH5tI6Xt7S/qtUsowVQlD0O7+
	uVXtoLTxilJaIRk+DoQRQ9/uhUamCi9rAyr28D4rypxdj0Q+39w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=THRfLHA0yu5z7dly3kaeYt23uvj9hsWTlnokw8LaTC15pFopvUJueEsmlCGwLFipqiDtryYQRAHrufTQZP4UjDaeFZXaOn1ferfEmVmL8H55G2L8G32vnbWX4Q3y8OKGNFmjzFS05KrxtukVv8ZiFWIQDKQPhnYy0UoUD63bg1aWbmEoCz+xJFV0EGFoJ2njIvXTJTJVhvT61SICHTUmsiBeV44SuooK+9dVTqPZ+8J3fjHR5XowYtTJrwEJXF3W0LvkcQUDdRBkeEO8m10DjrrXfn1W2tAiccxNxI7KhbIx1dQlOehex02GCHbKg3Q2TA1ncAvExa1YyUmAPTWSZA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dNoXa-0000Y5-Hb
	for yocto@yoctoproject.org; Wed, 21 Jun 2017 18:56:02 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 21 Jun 2017 15:56:01 -0700
Message-ID: <BC1422C64DFA4AEF97E90F2A6A5ADE14@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLq4Y3Ob3BrAlHdTPWazi2Zi7sLrw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688fa558e0f16cd1b615853d6186749e520350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Any ideas why my RPi app won't load?
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
X-List-Received-Date: Wed, 21 Jun 2017 22:56:06 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I've built a custom 32-bit non-GUI Raspberry Pi image, built the
corresponding SDK, and used the SDK's toolchain to build an app. When I
run the app on the RPi, from a command prompt as root, the shell
complains:

    -sh: /path/to/app: No such file or directory

(with the real app name, obviously). sh is linked to bash. Here's what
I've checked:

1) The app exists, and is the correct executable.

2) Its execute permission bit is set.

3) Its ELF file format is the same as the ELF file format of every other
command in the system.

4) The shared libraries it uses all exist, recursively, in /lib or
/usr/lib. They are all listed by ldconfig -p.

5) There is no LD_LIBRARY_PATH variable.

6) If I run the app with LL_DEBUG=all, I get the same error, so it isn't
even getting as far as loading libraries. (Or perhaps LL_DEBUG isn't
supported on this build.)

Googling didn't turn up any other possibilities. Has anyone seen any other
reasons for this error?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


