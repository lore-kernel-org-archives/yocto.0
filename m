Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B34E0E014A9
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 23:05:55 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=mDwm+DSx/+gggh+u1DVxZHsXLdBfYAwLqM50Of1EtI4cZqzinzbyFZFlNORl4iCh;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UL5yE-0002gd-VA; Thu, 28 Mar 2013 02:05:55 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Anders Darander'" <anders@chargestorm.se>,
	<yocto@yoctoproject.org>
References: <20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD><20130307224223.GU32228@jama.dyndns-home.com><D5340F46DF5F458D9096EA823C3A9EAE@PAULD><20130327090320.GA13837@ad.chargestorm.se><2AE00AC2A89C48A38A01262D58FA692A@PAULD><5153A67F.9070702@windriver.com><BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
	<20130328055507.GA2765@ad.chargestorm.se>
In-Reply-To: <20130328055507.GA2765@ad.chargestorm.se>
Date: Wed, 27 Mar 2013 23:05:50 -0700
Message-ID: <5A690539093C443A99FA9CFA67B3CCD7@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4reL0pNMTcc4m1SEONfiAWoO+sUgAAWbPw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606886f8967da25a26c98cfff7065a6cd6ddc350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Thu, 28 Mar 2013 06:05:56 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Anders Darander
> 
> > So is there a general way to peruse the collection of 
> recipes? Does one have
> > to do "ls -R *.bb" to get the list of recipes, then read 
> the comments inside
> > the files to see how to use them?
> 
> No, the recipes themselves do not enforce their own 
> inclusions into your
> image. (That wouldn't really make sense, especially not when including
> such a large layer as meta-oe).
> 
> > And how does one know in advance which ones get included by 
> default? Is
> > there some construct one looks for in the .bb file that 
> indicates it gets
> > included? Or is there some master recipe that says "this 
> depends upon this
> > big long list of standard recipes"?
> 
> Which image are you building? 
> 
> Say that you're building core-image-sato, then you'll have to look at
> that recipe meta/recipes-sato/images/core-image-sato.bb. 
> 
> There you might find IMAGE_INSTALL, which defines what packages (and
> package groupds) this recipe wants to install. 
> 
> The recipes can also define IMAGE_FEATURES, which are used by the
> core-image.bbclass (which is inherited in the .bb-file), to 
> add a number
> of packages.
> 
> > And are any of the recipes that are included by default not actually
> > required, and if so, how do you un-include them if you want 
> to pare down the
> > system to a bare minimum?
> 
> Sure, there's likely some stuff in most images that you're not
> interested in. All the supplied images are there for some use-case, be
> it demoing stuff, test, etc.
> 
> If you want to customize an image more, I'd recommend you to 
> create your
> own image. A first step might be to just copy one of the image recipes
> to a layer of your own, and then modify it according to your taste.

Thanks. With everyone's help, the fog is gradually lifting.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


