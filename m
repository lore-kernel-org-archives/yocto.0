Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5DD6E011A6
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 03:20:14 -0700 (PDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu4) with ESMTP (Nemesis)
	id 0MOHTM-1QyOSe11XQ-005WjC; Mon, 15 Aug 2011 12:20:20 +0200
Date: Mon, 15 Aug 2011 12:20:19 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110815102019.GA8299@localhost.localdomain>
References: <20110812082637.GA22860@localhost.localdomain>
	<B497E783C723AE4386DDEA96AF1D2B989EED6E@008-AM1MPN1-013.mgdnok.nokia.com>
	<20110812094522.GA24048@localhost.localdomain>
	<20110815094718.GA24824@localhost.localdomain>
	<1313402751.14274.555.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1313402751.14274.555.camel@rex>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:MzR2/Cxeh7F809RhbbWlkf1VcrL1PN6Qzt+Ivst0BW3
	jxPaUl1gD6TJIm/Ub4a1NIvpnaCmVJwo/Cd/el8reijBzHLO5k
	0U7W4nOC9HvnZeVQT8nBWRMBz9PwHXu8+bzTnPdwpbdw1cAPv3
	DbhUMYcQJYhjs1hPYFv3P0IF6sfSumjrFkHsfWFSN/w1xyzr5P
	q9s1kCwbRw8YWOIUuuJPct237ZwVEqSRwP6j99YPc8=
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
X-List-Received-Date: Mon, 15 Aug 2011 10:20:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 15, 2011 at 11:05:51AM +0100, Richard Purdie wrote:
> On Mon, 2011-08-15 at 11:47 +0200, Andre Haupt wrote:
> > On Fri, Aug 12, 2011 at 11:45:22AM +0200, Andre Haupt wrote:
> > > On Fri, Aug 12, 2011 at 08:32:17AM +0000, jani.uusi-rantala@nokia.com wrote:
> > > > I had the same issue on 64-bit fedora R15. This patch fixed it for me:
> > > > 
> > > > http://patchwork.openembedded.org/patch/8233/
> > > 
> > > for bernard (with MACHINE ??= qemux86 and DISTRO ?= poky) glib-2.0_2.26.1.bb is pulled in, so the above
> > > patch does not apply. I tried something similar:
> > > 
> > > diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > > b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > > index eace71a..e8964d9 100644
> > > --- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > > +++ b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > > @@ -1,7 +1,7 @@
> > >  require glib.inc
> > >  
> > >  PE = "1"
> > > -PR = "r0"
> > > +PR = "r1"
> > >  
> > >  SRC_URI =
> > > "http://ftp.gnome.org/pub/GNOME/sources/glib/2.26/glib-${PV}.tar.bz2 \
> > >             file://configure-libtool.patch \
> > > @@ -14,3 +14,5 @@ SRC_URI[sha256sum] =
> > > "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e51562
> > >  
> > >  SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
> > >  BBCLASSEXTEND = "native"
> > > +
> > > +EXTRA_OECONF_append = " --enable-dtrace=no"
> > > 
> > > Unfortunately that does not help.
> > 
> > I had a look at the configure log. Dtrace and SystemTap are both still
> > pulled in. I also tried with --disable-dtrace and --disable-systemtap
> > but that does not help either.
> 
> In glib.inc there is the line:
> 
> EXTRA_OECONF_virtclass-native = ""
> 
> and you could try changing that to be:
> 
> EXTRA_OECONF_virtclass-native = "--disable-dtrace --disable-systemtap"
> 
> I think master may also need some fixes in this regard.

That worked, thanks a lot Richard.

For reference, i include the patch here

diff --git a/meta/recipes-core/glib-2.0/glib.inc
b/meta/recipes-core/glib-2.0/glib.inc
index 0319b9d..51ccd4d 100644
--- a/meta/recipes-core/glib-2.0/glib.inc
+++ b/meta/recipes-core/glib-2.0/glib.inc
@@ -28,7 +28,7 @@ inherit autotools pkgconfig gettext
 S = "${WORKDIR}/glib-${PV}"
 
 EXTRA_OECONF = "--disable-debug --enable-included-printf=no"
-EXTRA_OECONF_virtclass-native = ""
+EXTRA_OECONF_virtclass-native = "--disable-dtrace --disable-systemtap"
 EXTRA_OECONF_poky-lsb = "--enable-included-printf=no"
 
 FILES_${PN} = "${libdir}/lib*${SOLIBS}"

