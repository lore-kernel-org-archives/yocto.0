Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DAC5E00BEB; Mon,  9 Jun 2014 15:52:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marlon.smith10[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E44E00B7B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 15:52:53 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id v10so5389926pde.4
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 15:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version;
	bh=fltBChWEp8hGWWIBiKLDfmaLpOPLhpkOwGgz15VDzaw=;
	b=mukxe/X9KYxwWeFEFE+OjDh7xTwXq4MeN8cxgetr9oyPJiIGoOTAR5ZRNp/n0wFY0c
	tgHniNtoK+TUF+kp/348V57mXwq8v7m9GcdAQUffIw1NQ/pFP/cNl7z7iQfPgZIX8l8P
	+zx1mVsP2IWLVf7pgeoNvXzmOVfk08wFGAHgbKLBwd2njJRpuRqi5AH4Y7t4H+/LH4L6
	JY25nhgFGOeot9B/SLcn8yRNHSZXzRnRudPKSyeHFeu4Ybro+utWCr8IVZE5xUleL4IH
	dVyEBdILkPSPvGKcsnqY1nCSubhJi2EhUSg/7wmrAan0aDxi2FwcibRX2RSuYm1FquJr
	4Auw==
X-Received: by 10.69.15.2 with SMTP id fk2mr7515477pbd.123.1402354373235;
	Mon, 09 Jun 2014 15:52:53 -0700 (PDT)
Received: from [192.168.0.10] (S0106602ad07d0544.gv.shawcable.net.
	[184.66.138.43]) by mx.google.com with ESMTPSA id
	jh2sm65820649pbd.93.2014.06.09.15.52.52 for <yocto@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 15:52:52 -0700 (PDT)
Message-ID: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
From: Marlon Smith <marlon.smith10@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 09 Jun 2014 15:52:50 -0700
X-Mailer: Evolution 3.10.4-0ubuntu1 
Mime-Version: 1.0
Subject: Why use Yocto?
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
X-List-Received-Date: Mon, 09 Jun 2014 22:52:58 -0000
Content-Type: multipart/alternative; boundary="=-Ay/copIaxJixmYxTGDAj"

--=-Ay/copIaxJixmYxTGDAj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi everyone,

I'm developing a product that will run on a custom i.MX6 board and I'm
trying to decide whether to use Yocto or Ubuntu (there's a version of
Ubuntu packaged for the Wandboard that will run on our board).  The
board will run our own custom app, and we'll modify the Linux kernel to
support our hardware.

Ubuntu seems like it would be ready to go - just put it on an SD card,
boot the board, compile the app and create a new SD card image from the
result to use for manufacturing.

Yocto seems like it would be easier to remove unneeded packages from,
and easier to cross-compile the application for.  This means we could
have a smaller SD card image in the end.

What are your thoughts on this?

Thanks

Marlon

--=-Ay/copIaxJixmYxTGDAj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.6.6">
</HEAD>
<BODY>
Hi everyone,<BR>
<BR>
I'm developing a product that will run on a custom i.MX6 board and I'm trying to decide whether to use Yocto or Ubuntu (there's a version of Ubuntu packaged for the Wandboard that will run on our board).&nbsp; The board will run our own custom app, and we'll modify the Linux kernel to support our hardware.<BR>
<BR>
Ubuntu seems like it would be ready to go - just put it on an SD card, boot the board, compile the app and create a new SD card image from the result to use for manufacturing.<BR>
<BR>
Yocto seems like it would be easier to remove unneeded packages from, and easier to cross-compile the application for.&nbsp; This means we could have a smaller SD card image in the end.<BR>
<BR>
What are your thoughts on this?<BR>
<BR>
Thanks<BR>
<BR>
Marlon
</BODY>
</HTML>

--=-Ay/copIaxJixmYxTGDAj--
