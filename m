Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88F28E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 14:35:54 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=rhcSbxxLxY7IHc3dzqdMzD/CKU2LR4pVINZLEiGuMGbhyA84j8bBVm9vLBB1SYpp;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ULKUD-0007DY-Pj; Thu, 28 Mar 2013 17:35:53 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Trevor Woerner'" <twoerner@gmail.com>,
	<yocto@yoctoproject.org>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD><20130307224223.GU32228@jama.dyndns-home.com><D5340F46DF5F458D9096EA823C3A9EAE@PAULD><20130327090320.GA13837@ad.chargestorm.se><2AE00AC2A89C48A38A01262D58FA692A@PAULD><5153A67F.9070702@windriver.com>
	<CAHUNapSVECmuLk8gMhcMisMTLpjA1xbFaG7Q3Ro9edFKbNGiBg@mail.gmail.com>
In-Reply-To: <CAHUNapSVECmuLk8gMhcMisMTLpjA1xbFaG7Q3Ro9edFKbNGiBg@mail.gmail.com>
Date: Thu, 28 Mar 2013 14:35:53 -0700
Message-ID: <5C1BF08F6F2843618BBE6BEDED4089D5@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4r83wilS+hCx+7Sza+y4IrCqKloAABmTrw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889ef9d79c109f5bacca8e84ac3f2aa4d8350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
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
X-List-Received-Date: Thu, 28 Mar 2013 21:35:54 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Trevor Woerner
> 
> I'm kinda surprised Robert Day hasn't jumped in, I know he's got all
> this straightened out :-)
> 
> On Wed, Mar 27, 2013 at 10:10 PM, ChenQi 
> <Qi.Chen@windriver.com> wrote:
> > In your case, you could add the following line to local.conf.
> > IMAGE_INSTALL_append += "samba"
> 
> I thought this was not the generally accepted notation. I thought
> 
>     IMAGE_INSTALL_append = " samba"
> 
> (note the space before 'samba') was better. Having an _append bitbake
> option and using += seems a bit redundant.

That's what I thought, too, but what do I know? I tried it with += and no
space, and it does indeed work. I have no idea how this stuff is parsed
internally. Somehow, it grates on me that underscore is used almost like an
operator in BitBake.

> Sorry, Paul, for only noticing this thread now. I wrote a very quick
> bunch of notes when I was going through this as well. Some of these
> notes are probably out of date (they were "correct" at the time, but
> trying to keep pace with Yocto is isn't easy!) but hopefully there's
> something there that might help.
> 
> My notes are at:
> https://github.com/twoerner/meta-trevor/blob/master/misc/notes
> 
> Specifically item #8 might be useful.

Thanks. The distinction between recipes and packages is very useful to know.
So is some of the other stuff.

> Robert Day wrote lots of notes which you can find starting here:
> http://www.crashcourse.ca/wiki/index.php/Yocto_Project
> 
> Tim Bird too has written some good stuff:
> http://elinux.org/Yocto_Project_Introduction

I'll read those, too.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


