Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBC83E00BAE; Tue, 10 Jun 2014 10:31:19 -0700 (PDT)
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
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA68E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:31:07 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id fp1so6331934pdb.17
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version;
	bh=4oOUHpLSdNO3OUryYyQ098HjqhRkoFF34LXaJOM0fI4=;
	b=YPzkJRD9/Un456sLRNAoRCLmC4D9iD5kH8j7tSeDz/UupHWd31/Q8CoyFi3Qbctg+S
	xxRVfK1scTcNoRom3Pn1IvUTb1CnlodFUhWwA7u1zmUYb8JLtqAxfl0yDhE/g1UQEokC
	LmaNbfdrbUAvIj1QIAnbiW9dRHweiBzRGgKWGq/QBhxmIS6XI/A0BNUw9RgeNyJqaf7D
	tDS3eloDi7oJYVyIJvgSDeE1/C3T6APOBbOrhcdZCMVAa0N1Dcg8ALNepxpccawhu5mZ
	9wE88SBOJs9QlxJ871LdHwNgjW88MQ6li7mlGRE5Fh0vnSSmzpskC7HeulF8yBxef4CQ
	azgQ==
X-Received: by 10.68.211.164 with SMTP id nd4mr13399138pbc.44.1402421466959;
	Tue, 10 Jun 2014 10:31:06 -0700 (PDT)
Received: from [192.168.0.10] (S0106602ad07d0544.gv.shawcable.net.
	[184.66.138.43]) by mx.google.com with ESMTPSA id
	om6sm70553093pbc.43.2014.06.10.10.31.06 for <yocto@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Tue, 10 Jun 2014 10:31:06 -0700 (PDT)
Message-ID: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
From: Marlon Smith <marlon.smith10@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jun 2014 10:31:05 -0700
X-Mailer: Evolution 3.10.4-0ubuntu1 
Mime-Version: 1.0
Subject: Best way to "freeze" Yocto for production
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
X-List-Received-Date: Tue, 10 Jun 2014 17:31:19 -0000
Content-Type: multipart/alternative; boundary="=-kcd23fCAoX52/8n3Xzh4"

--=-kcd23fCAoX52/8n3Xzh4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi everyone,

We've decided to use Yocto in our company's product!  And I have a
question:

Since Yocto is updated pretty frequently, at some point we'll need to
freeze everything and keep a permanent copy so that we can make small
changes/bug fixes without having to worry about anything being changed
outside of our control.  My current theory is that we'll do a bitbake -c
fetchall, then zip up the entire Yocto directory and save it somewhere
so we'll always have a static copy.  We'll place our application and
custom bsp layer under a separate Git repository, and then to do a build
we'll just combine everything together and run bitbake on the whole
thing.

Is there a better or recommended way of doing this?

Thanks again, and I'm excited to start working with Yocto!

Marlon

--=-kcd23fCAoX52/8n3Xzh4
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
We've decided to use Yocto in our company's product!&nbsp; And I have a question:<BR>
<BR>
Since Yocto is updated pretty frequently, at some point we'll need to freeze everything and keep a permanent copy so that we can make small changes/bug fixes without having to worry about anything being changed outside of our control.&nbsp; My current theory is that we'll do a bitbake -c fetchall, then zip up the entire Yocto directory and save it somewhere so we'll always have a static copy.&nbsp; We'll place our application and custom bsp layer under a separate Git repository, and then to do a build we'll just combine everything together and run bitbake on the whole thing.<BR>
<BR>
Is there a better or recommended way of doing this?<BR>
<BR>
Thanks again, and I'm excited to start working with Yocto!<BR>
<BR>
Marlon
</BODY>
</HTML>

--=-kcd23fCAoX52/8n3Xzh4--
