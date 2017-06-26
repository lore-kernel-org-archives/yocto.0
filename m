Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F40B1E00B8D; Sun, 25 Jun 2017 19:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0532]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71DBFE0094C
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 19:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498444359; bh=88q7+tmFyxBYm2FnMF6xc7JrZphCdbFMHN05
	5hEpkYA=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=by7Fszb6HQD3YJDYtc3mdW6
	PWy25zUu1U9i2oxS7xKVvCy/H9HttTUFJ0iE6ha4O4wGNHxDD6aqg7xVJ+wGSbXHvTK
	mJmpXzh90uZ2HcmrYYgGYllL290qQR4SrMzFRCakcqkZlhBNKc0T7i6LMPjxCPDOTI1
	X5PJ1Vm3RED0tC4kiMrIkuIt/jBfFsqVdW7ETuowYedAd7pJOk0ejQqcu/CM5O8yyWO
	1svTl8K5omA7ahvSQ21bZc4VXU2jk0Rtb6yS3XngDaTMopdFappa+7Gvyw/c18FQJwJ
	aTgh2f63agHBuIh5/vRvHeWGYRX39cdHs7WN7TYc9qnyqN9OG2Q==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=Eubs06EWOJc/Jf2ugFOBbyMt51fSvxs3DwFqvHU6m5VR4cd1PUwwEdgxIbrgZjFziqor9w3SBRQQx687wE7quuEabHdW+yKBJIPnnwscq4XoRR2GexcpxANlh2IjLRjjhkAjaoRu3q4K6ZX9U7EKPX6yQeh7W+rEXEMJ/2NIezupWt+IMw/9+o0qg14hfame61w0ofjKVanCmTw1/PRLFAHA7f2AlwN+0HEAmfonOINtCUw3rYcrjeh1ddPaVEv12oEFXUZPduHwmTO7seBPXp1CjOaxnVkKrPb0YjnkufW9tnZpURVIWMJGM9Yzokv3OlSZUYEvCF1RdOAXGk7/Hw==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dPJpN-0001Ar-Um
	for yocto@yoctoproject.org; Sun, 25 Jun 2017 22:32:38 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 25 Jun 2017 19:32:36 -0700
Message-ID: <23EE2924AFA4488992A7D0127F20147A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLuJHkt+Gulwcr4TsWOsYs7iZfmGQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688f32d3446b6ba012d30fcc6abaa1874b5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Current state of linux-raspberrypi-rt?
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
X-List-Received-Date: Mon, 26 Jun 2017 02:32:41 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Google turns up a lot of stuff about this, but the latest I found was a
thread from 1/5/17 that started with Trevor Woerner posting a 1MB patch,
and that ended with him posting a message saying that it didn't actually
work.

Is there anything new on this? I'm trying to do some compute-intensive
audio on an RPi3, and it really needs a real-time kernel.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


