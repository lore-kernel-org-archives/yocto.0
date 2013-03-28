Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA30E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 14:44:01 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id x43so4017682wey.0
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 14:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=GAYR+caMCz7Z1JSYV1bRKWTFm8JE3+70vpZ0wm5wZHE=;
	b=X9e7aywuWJpeaVMgZaeZ2pjXds3qQx4BZVZsc+kNCNWtiv13/2r/USJy46bWegv2eT
	Pl2WKNEOOMsi3wV6ttJ7Bn7M7XmJO0y3ezytY3x1cRl0AEDJDGC/WixdWM4pmEf2kGxC
	wKrzkHQL+Z5EuCaJVClL0XB5yRZZYFy2jE7b83qfUkYyxFSM83ec2gIAMjaoraRjuQ/3
	g3RtuXKKKLvHreLIQBUErux9p+exjSQTVxzZBTzFWsy7yhgvDmW//U9VWHIhoCSBulG+
	lLfrEXeBNodShbOfxI6dEPtMbaWcYZh9o7olc2JR/9LTbDxU2aU6tMGBdSsDsJRl1jFr
	BWcw==
MIME-Version: 1.0
X-Received: by 10.180.94.133 with SMTP id dc5mr221291wib.1.1364507041335; Thu,
	28 Mar 2013 14:44:01 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 28 Mar 2013 14:44:01 -0700 (PDT)
In-Reply-To: <5C1BF08F6F2843618BBE6BEDED4089D5@PAULD>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
	<50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
	<20130307224223.GU32228@jama.dyndns-home.com>
	<D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
	<20130327090320.GA13837@ad.chargestorm.se>
	<2AE00AC2A89C48A38A01262D58FA692A@PAULD>
	<5153A67F.9070702@windriver.com>
	<CAHUNapSVECmuLk8gMhcMisMTLpjA1xbFaG7Q3Ro9edFKbNGiBg@mail.gmail.com>
	<5C1BF08F6F2843618BBE6BEDED4089D5@PAULD>
Date: Thu, 28 Mar 2013 17:44:01 -0400
Message-ID: <CAHUNapR9qjghTk0+pfbQjn4R3e1ULF1pfpmk_bqiKkzz+jvrcQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 28 Mar 2013 21:44:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 28, 2013 at 5:35 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Somehow, it grates on me that underscore is used almost like an
> operator in BitBake.

You're not alone!

Because the people who did this are reading this list ;-) I'll be
polite, it is clever, but even after a year of trying to get
comfortable with it, I still think it is a poor paradigm.

A variable name is a variable name and should be only a variable name.
One shouldn't have to parse a variable name to try to determine what
operations should be performed on the value of a variable in addition
to whatever external operations are requested :-)

VARIABLE_append -= "feature"

??

