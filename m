Return-Path: <Rainer.Koenig@ts.fujitsu.com>
Received: from dgate10.ts.fujitsu.com (dgate10.ts.fujitsu.com [80.70.172.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5E0E00307
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 05:06:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1536-bit key; insecure key) header.i=Rainer.Koenig@ts.fujitsu.com;
	x-dkim-adsp=none (insecure policy)
DomainKey-Signature: s=s1536a; d=ts.fujitsu.com; c=nofws; q=dns;
	h=X-SBRSScore:X-IronPort-AV:Received:X-IronPort-AV:
	Received:Message-ID:Date:From:User-Agent:MIME-Version:To:
	Subject:References:In-Reply-To:X-Enigmail-Version:
	Content-Type:Content-Transfer-Encoding;
	b=idqU5enG1akcaXp/bFYlfXZt7RHpg8/3REct5hyEjyS/TSXflb/q1odz
	unHo1YJnnj6/byLWK+LU39Cux4StQNfuc/Qh+hGbV4zPiXISapOWrqKkk
	fLX7XUKN+vah69gR/TrQZZMwCWerpOsxXBQN1JwfYYAMKyaAfI7zSVMuR
	oz3JZZjHThEgEsfQOLratAJ76HwevD8EQCK/FNMsfiv1F6pk0dq2xi9do
	DYV1B1+maf5HFeWsNGyzqWglorrhC;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=ts.fujitsu.com; i=Rainer.Koenig@ts.fujitsu.com;
	q=dns/txt; s=s1536b; t=1321535189; x=1353071189;
	h=message-id:date:from:mime-version:to:subject:references:
	in-reply-to:content-transfer-encoding;
	bh=64KbUQcv++1khalkadutWmcQ33kOBMZzOc1M+yYz7LI=;
	b=oEK2Oe+ZgOUrQa4pPNJ4/kn2Z7HJGNeMWThDIBlbud0orZfalWo5hDZH
	W0SmkyWkSOjYjTQFWebLKkmfZBBkO/mlhIyZaVYF+lLRlYufoJZYKI7nY
	Kvo7NJ9kjIUDX2Ptql4kdTgwZaIpC7BbtmPOv+4ZNQWdCIlYb7Vhl3a/0
	K3WNMnMOBac20tDE+Jz2Idi4RtduTzywbTNn3VYIvuGowb2412uc79pLd
	AuJ772annu1pxDxbClS/5GToFuMrl;
X-SBRSScore: None
X-IronPort-AV: E=Sophos;i="4.69,525,1315173600"; d="scan'208";a="93391438"
Received: from abgdgate30u.abg.fsc.net ([172.25.138.66])
	by dgate10u.abg.fsc.net with ESMTP; 17 Nov 2011 14:06:27 +0100
X-IronPort-AV: E=Sophos;i="4.69,526,1315173600"; d="scan'208";a="123237473"
Received: from abg3595c.abg.fsc.net (HELO [172.25.145.158]) ([172.25.145.158])
	by abgdgate30u.abg.fsc.net with ESMTP; 17 Nov 2011 14:06:26 +0100
Message-ID: <4EC506D2.3080901@ts.fujitsu.com>
Date: Thu, 17 Nov 2011 14:06:26 +0100
From: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20111110 Icedove/3.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
In-Reply-To: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
X-Enigmail-Version: 1.0.1
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Thu, 17 Nov 2011 13:06:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi Jeff,

On 16.11.2011 23:07,  Jeff Osier-Mixon wrote:

> > Mark & everyone else listening:
I include myself in the "everyone" group and answer. ;-)

> > Would you say that (1) the need for a recipe and (2) the requirement to
> > cross-compile are two of the most major usability or learning-curve
> > disadvantages of working with the Yocto Project (and oe-core)? What
> > would be a third disadvantage from a usability standpoint?
Agree with (1), but not with (2) because in my case cross-compiling with
yocto was running "out-of-the-box". Yes, cross-compiling might be
difficult and will probably be a pain in the ass for some packages, but
its definitely not a big hurdle for a beginner.

> > Another way to put it: if you could change three things about the Yocto
> > Project to make it more approachable for someone who has never used it
> > before, what would they be?
Ok, short introduction of my history.
- Started playing around with Beagleboard in May.
- Used Angstrom/Arago and the TI SDK for that.
- Got the wish to create an onw distribution
- Meanwhile switched to the TI8148 EVM
- Tried OE classic for building an image and failed
- Tried OE core for building an image and failed
- Got the advice to try Yocto and succeeded in building for Beagleboard
- Tried again with OE core and somehow succeeded as well
- Now most of the time playing with OE core because my board isn't that
  well supported in Yocto and I have still to little experience to
  do it totally myself.

So, even working with Linux on the Desktop/Server for more than 14 years
I'm still a "newbie" to the embedded Linux world. So I can tell
about my wishes in usability very well. :-)

First, a beginner wants to be able to have some sort of success. I
remember how depressing it was not to be able to build any image, even
following the instructions in the web. Later it turned out that a main
role in that failure was to blame on our coroporate firewall which I was
able to avoid by using a proxy for HTTP, but some packages in OE core
need to be fetched from a git repository and git didn't work from
scratch. Even having git working on my workstation it still failed
inside OE core.

Another problem seems, that you always need to work on the *latest*
version of the recipe-trees since they are depending from the
availability of the upstream sources. If sources change, disappear or
move then the recipe needs to be adapted. Now I know that, but in the
beginning it was just frustrating to get error messages any time I tried
to build something.

So my first wish is a "First steps" guide that works and works
reproducible. Maybe also with a special "stable" tag in the git tree so
that the success is not killed by newer revisions that break something.

Second I would like to have a guide that helps me if something goes
wrong. Bitbake floods you with messages and for a beginner its not that
easy to find out, what was the problem. A sort of "log analyzer" would
be fine that says "package xyz failed because of". E.g. if its a fetch
problem you could just retry. I also observed a "can't lock /etc/group"
lately that went away on the second try, probably another package build
(running a nice 12 core system) was interfering with that.

The third thing on my wishlist would be a tool that helps me to
understand *why* is bitbake xyz-image pulling in that package. So far
the commands I used most often in the past weeks were "find" and "grep"
to learn about the dependencies and connections between recipes, tasks,
classes and conf-files. Probably you've seen the photo of my pinboard on
Google+ yesterday. At least now I have a basic understanding of how
bitbake handles the things, but I'm still far away from understanding
everything.

Example: Last week I was able to build systemd-gnome-image with OE core.
This week (after some updates of the git trees) I'm not because
something is breaking the compilation of samba. So it would be nice to
find which task or recipe is pulling in samba (that I really don't need
for my image). My usual find & grep shows the following:

$ find -name "*\.bb*" | xargs grep "samba"
./meta-openembedded/meta-gnome/recipes-gnome/gvfs/gvfs_1.8.2.bb:DEPENDS
= "samba gnome-keyring glib-2.0 fuse avahi fuse gconf libgphoto2"
./meta-openembedded/meta-gnome/recipes-gnome/gvfs/gvfs_1.8.2.bb:EXTRA_OECONF
= "--enable-samba \
./meta-openembedded/meta-gnome/recipes-gnome/gvfs/gvfs_1.8.2.bb:
        --with-samba-includes=${STAGING_INCDIR} \
./meta-openembedded/meta-gnome/recipes-gnome/gvfs/gvfs_1.8.2.bb:
        --with-samba-libs=${STAGING_LIBDIR} \
./meta-openembedded/meta-gnome/recipes-gnome/gnome-vfs/gnome-vfs_2.24.4.bb:
                --disable-samba \

So, now I think:
What is the difference between "gvfs" and "gnome-vfs" and why is it
using "gvfs 1.8.2" (that DEPENDS on samba) instaed of "gnome-vfs 2.24.4"
which disables samba (assuming that it is the same function that just
got renamed with version 2.

The GUI that yocto offers might help in this case, but the few times I
tried that gui I was sort of disappointed because the initialization is
so damn slow.

Ok, those are the 3 main wishes. Unfortuntely there is no "book of
OE/yocto" in the book stores so far that is really explaining the stuff
for a beginner level (ok, there are probably also no books for the
expert level :-)), but old-fashioned that I am I would really like to
manage the steep learning curve with the help of a book.

Just my 2 cents.

Regards
Rainer
-- 
Dipl.-Inf. (FH) Rainer Koenig
Project Manager Linux Clients
Dept. PDG WPS R&D SW OSE

Fujitsu Technology Solutions
Bürgermeister-Ullrich-Str. 100
86199 Augsburg
Germany

Telephone: +49-821-804-3321
Telefax:   +49-821-804-2131
Mail:      mailto:Rainer.Koenig@ts.fujitsu.com

Internet         ts.fujtsu.com
Company Details  ts.fujitsu.com/imprint.html

