Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89161E014D8
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 16:42:41 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=lIzwllV6cmzDUrNnSW1rs4yFuVMbx+x2dN/NSqdfDVenS5oCD/N6YQi6W1/XJ36Z;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UMoN6-0008Dx-AP; Mon, 01 Apr 2013 19:42:40 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><5153A67F.9070702@windriver.com><BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
	<1624497.d7J2isS43f@helios>
In-Reply-To: <1624497.d7J2isS43f@helios>
Date: Mon, 1 Apr 2013 16:42:46 -0700
Message-ID: <CC8EC8ACB2884AB0BBAF61C7FAF19D47@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4uu+EPcM7aNjqUTheGENADnIPKGAAc0Iug
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b7f8713990d1ecee45885812fff0028e350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Mon, 01 Apr 2013 23:42:41 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> There are a few useful tools here. Firstly, "bitbake-layers 
> show-recipes" will 
> list all recipes available in your current configuration, the 
> versions 
> available and which layers they are provided by. You can also 
> specify a search keyword on the command line.
> 
> Additionally, "bitbake -s" will list all available "targets" 
> (recipes, plus 
> any BBCLASSEXTENDed variants, e.g. zlib-native) and the 
> latest and current preferred versions.
> 
> Lastly, if you want to search all available recipes in 
> community layers, there 
> is now an online metadata index available:
> 
>   http://layers.openembedded.org/

I found the first one, and the second seems to show mostly the same info in
a different form.

What I don't see is any info on the recipes, beyond name and version number.
I don't see a list of packages they produce. For instance, doing "bitbake -e
samba", and then looking at the PACKAGES variable, shows the following list:

    libwbclient
    libwinbind
    libwinbind-dbg
    winbind
    winbind-dbg
    libnetapi
    libtdb
    libsmbsharemodes
    libsmbclient
    libsmbclient-dev
    cifs
    cifs-doc
    swat
    samba-dbg
    samba-staticdev
    samba-dev
    samba-doc
    samba-locale
    samba

I'm not sure what got included when I added "samba" to my IMAGE_INSTALL
variable, but I assume samba and winbind are required, but the other things?
To an end user like me (someone who just wants to build a distro with
certain capabilities, and then get back to the real work of application
development), the following sorts of questions occur:

    What choices are provided by each package?
    If something is included in the build, can I do without it?
    If something isn't included in the build, should I add it?

To be a real turn-key system, each recipe needs a page, or two, or three, of
human-written (not script-produced) explanation of what options the recipe
has, what they correspond to in user terms, and how they can be selected or
deselected. Without that, the recipe really isn't "documented" in the
conventional sense.

When I added samba to core-image-base-cedartrail-nopvr, the image got vastly
bigger. I wouldn't think the ability to do Windows file sharing would be
comparable in size to the rest of the system. Did it add tons of man pages
which no one will read, because it's an embedded system? Did it add a client
which I don't need, or just the server which I do need? Did it add libraries
to the target that will never be used? Eventually, I'll figure this out, but
I'm spending weeks and weeks on this, which is making this a very expensive
project. Perhaps I should have just hired someone else to do it for me.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


