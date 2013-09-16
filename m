Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8294AE0159E
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:35:03 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=ENRKtAYgwa1q24JbXSALdyXB9xef4Ah3+7jLBA5wuaOZOaUwDMFXo+grzeIvDjln;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VLddR-0004kN-T3; Mon, 16 Sep 2013 14:34:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
	<CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
In-Reply-To: <CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
Date: Mon, 16 Sep 2013 11:34:56 -0700
Message-ID: <A713D66A57B545848DDD45415085C8D0@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6zBdFr4iQaAAHOQrKlndyZJVlABQABHGXA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068856d4fadf1f7ab6b06160d97b4dd3de5a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: 'Chris Larson' <clarson@kergoth.com>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 18:35:04 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > On Mon, Sep 16, 2013 at 10:02 AM, Paul D. DeRocco 
> > <pderocco@ix.netcom.com> wrote:
> > 
> > This image recipe has some Python that complains 
> > because "x11" is in
> > DISTRO_FEATURES. How do I find out where that "x11" is 
> > coming from? This
> > is a Gumstix build, so I suspect it's indirectly 
> > related to my selecting
> > "overo" as the MACHINE, because otherwise building this 
> > image would never
> > have worked with the plain Yocto meta-data. So how do I 
> > track this down?

> From: Chris Larson
> 
> Assuming you're using recent metadata, bitbake -e somerecipe 
> will show you this.

This isn't working for me. The image I'm trying to build is
core-image-gtk-directfb. The recipe is in meta/recipes-graphics/images. If
I just type "bitbake -k core-image-gtk-directfb", I get two errors:

ERROR: Nothing PROVIDES 'core-image-gtk-directfb'
ERROR: core-image-gtk-directfb was skipped: FEATURE "x11" is in
DISTRO_FEATURES, Please remove "x11" from DISTRO_FEATURES, use
"gtk-directfb" instead of it

I don't understand the "Nothing PROVIDES" error. Doesn't a recipe called
x.bb PROVIDE x by default? The second error comes from the bit of Python
in that recipe, which at least proves that it's reading that recipe.

If I type "bitbake -e core-image-gtk-directfb", I just get the first
error. This happens almost instantly, before it's done any real work, so
I'm not getting any further output.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


