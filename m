Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23FE3E011A6
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 03:05:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7FA5w84015948;
	Mon, 15 Aug 2011 11:05:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14922-08; Mon, 15 Aug 2011 11:05:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7FA5qR5015942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 15 Aug 2011 11:05:53 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Andre Haupt <andre@bitwigglers.org>
In-Reply-To: <20110815094718.GA24824@localhost.localdomain>
References: <20110812082637.GA22860@localhost.localdomain>
	<B497E783C723AE4386DDEA96AF1D2B989EED6E@008-AM1MPN1-013.mgdnok.nokia.com>
	<20110812094522.GA24048@localhost.localdomain>
	<20110815094718.GA24824@localhost.localdomain>
Date: Mon, 15 Aug 2011 11:05:51 +0100
Message-ID: <1313402751.14274.555.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: glib-2.0-native build fails on bernard
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
X-List-Received-Date: Mon, 15 Aug 2011 10:05:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-08-15 at 11:47 +0200, Andre Haupt wrote:
> On Fri, Aug 12, 2011 at 11:45:22AM +0200, Andre Haupt wrote:
> > On Fri, Aug 12, 2011 at 08:32:17AM +0000, jani.uusi-rantala@nokia.com wrote:
> > > I had the same issue on 64-bit fedora R15. This patch fixed it for me:
> > > 
> > > http://patchwork.openembedded.org/patch/8233/
> > 
> > for bernard (with MACHINE ??= qemux86 and DISTRO ?= poky) glib-2.0_2.26.1.bb is pulled in, so the above
> > patch does not apply. I tried something similar:
> > 
> > diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > index eace71a..e8964d9 100644
> > --- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > @@ -1,7 +1,7 @@
> >  require glib.inc
> >  
> >  PE = "1"
> > -PR = "r0"
> > +PR = "r1"
> >  
> >  SRC_URI =
> > "http://ftp.gnome.org/pub/GNOME/sources/glib/2.26/glib-${PV}.tar.bz2 \
> >             file://configure-libtool.patch \
> > @@ -14,3 +14,5 @@ SRC_URI[sha256sum] =
> > "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e51562
> >  
> >  SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
> >  BBCLASSEXTEND = "native"
> > +
> > +EXTRA_OECONF_append = " --enable-dtrace=no"
> > 
> > Unfortunately that does not help.
> 
> I had a look at the configure log. Dtrace and SystemTap are both still
> pulled in. I also tried with --disable-dtrace and --disable-systemtap
> but that does not help either.

In glib.inc there is the line:

EXTRA_OECONF_virtclass-native = ""

and you could try changing that to be:

EXTRA_OECONF_virtclass-native = "--disable-dtrace --disable-systemtap"

I think master may also need some fixes in this regard.

Cheers,

Richard



