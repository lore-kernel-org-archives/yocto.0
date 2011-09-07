Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83704E01254
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 15:23:10 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MT1MK029998; Wed, 7 Sep 2011 23:29:01 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id w8MXJpFtgV92; Wed,  7 Sep 2011 23:29:01 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MSsSg029993
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 7 Sep 2011 23:28:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1109060616150.3852@localhost6.localdomain6>
References: <alpine.DEB.2.02.1109060616150.3852@localhost6.localdomain6>
Date: Wed, 07 Sep 2011 23:22:51 +0100
Message-ID: <1315434171.13021.44.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: trying to summarize all the top-level yocto-related docs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Sep 2011 22:23:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-06 at 06:27 -0400, Robert P. J. Day wrote:
> in trying to resolve a minor issue this weekend regarding
> PREMIRRORS, i tried to summarize the current set of yocto-related docs
> and wound up just a bit confused so i'm hoping someone can clarify the
> canonical set of documentation someone getting into yocto would want
> to have.
> 
>   as i read it, one can look at yocto in a series of intellectual
> layers, simplest to most complex:
> 
>   * bitbake
>   * OE-core
>   * poky
>   * yocto
> 
>   first, is that a reasonable way to look at the software collection?
> if so, how do the docs line up against this?
> 
>   first, there's the bitbake user manual here:
> 
>   http://bitbake.berlios.de/manual/index.html
> 
> it seems like that manual hasn't been updated for a while (or has
> it?).  is that the current state of the documentation for bitbake?  it
> seems incomplete, unless i'm unclear on how the software is broken up.
> 
>   next, there's OE-core, for which the wiki page seems to be the most
> current doc:
> 
>   http://www.openembedded.org/wiki/OpenEmbedded-Core
> 
> moving on to poky, the web site http://pokylinux.org/ really doesn't
> take care to distinguish between poky and yocto since the "About" link
> immediately jumps one over to the yocto project "About" page, which
> really blurs the line between poky and yocto, deliberately or
> otherwise.
> 
>   as for poky documentation, the Documentation tab over at yocto has a
> link to the "Poky Reference Manual" but there is also a Poky Handbook
> which is *not* linked from there and is not even clearly linked from
> the poky site itself -- here's the handbook:
> 
>   http://pokylinux.org/doc/poky-handbook.html
> 
> which is clearly back at the poky site but you would be hard-pressed
> to find that handbook starting at the poky linux main page and
> following links.
> 
>   so ... what is the state of docs and support these days, for both
> documentation and mailing lists?  i was wondering about something
> involving PREMIRRORS and i ended up unsure as to what to read or which
> mailing list i could consult.
> 
>   thoughts?

You sent this to the Yocto list so I'll give you the Yocto reply. I see
the position being something like:

Poky = Bitbake + OE-Core + meta-yocto + included docs

Yocto = Several separate software projects (Poky, Pseudo, Swabber,
Matchbox, Kernel tools, other layers)

We have Scott's new overall Yocto developers guide and the you end up
diving into various pieces, each of which have deeper more technical
references. So we are trying to ensure the Yocto documentation is
consistent and up to date and take people from a high level down to the
appropriate technical details.

There are some older references around which we really need to remove or
update. The berlios bitbake manual page really needs to be removed as
its out of date and we need to figure out putting an up to date one
somewhere (and preferably automate updating it from the repo). The Poky
website really needs to be rewritten and those older manuals removed and
replaced with links to the Yocto pieces. The OE-Core wiki is probably
ok.

Does that help?

Cheers,

Richard








