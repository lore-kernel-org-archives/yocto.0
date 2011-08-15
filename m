Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB6BE011A6
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 02:47:09 -0700 (PDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu1) with ESMTP (Nemesis)
	id 0M9cEd-1R1Nft2ugp-00D3IO; Mon, 15 Aug 2011 11:47:18 +0200
Date: Mon, 15 Aug 2011 11:47:18 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Andre Haupt <andre@bitwigglers.org>
Message-ID: <20110815094718.GA24824@localhost.localdomain>
References: <20110812082637.GA22860@localhost.localdomain>
	<B497E783C723AE4386DDEA96AF1D2B989EED6E@008-AM1MPN1-013.mgdnok.nokia.com>
	<20110812094522.GA24048@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20110812094522.GA24048@localhost.localdomain>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:+mJ0Bc25rtg4IGo8zO62OgjZikTaINVeSBmqe//OM6n
	REoSle6kS8W/GmaSJ2z9DtoeNuof9UD/gCIk23qPOl0stkvO/4
	Gaa23+q5cF/RH6WYkrHnbhOboyCTs/pcJJcc24bIPUz6Ot2PYi
	qInt1xsuDwp9hsTFEzfmlivTUoS1PdzsVPKhksOd9s/PUwUyIU
	eaMh+kGBVZ0N3xT/TacmV5Sy27Rv1stSO8+LPjsHN0=
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
X-List-Received-Date: Mon, 15 Aug 2011 09:47:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 12, 2011 at 11:45:22AM +0200, Andre Haupt wrote:
> On Fri, Aug 12, 2011 at 08:32:17AM +0000, jani.uusi-rantala@nokia.com wrote:
> > I had the same issue on 64-bit fedora R15. This patch fixed it for me:
> > 
> > http://patchwork.openembedded.org/patch/8233/
> 
> for bernard (with MACHINE ??= qemux86 and DISTRO ?= poky) glib-2.0_2.26.1.bb is pulled in, so the above
> patch does not apply. I tried something similar:
> 
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> index eace71a..e8964d9 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> +++ b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> @@ -1,7 +1,7 @@
>  require glib.inc
>  
>  PE = "1"
> -PR = "r0"
> +PR = "r1"
>  
>  SRC_URI =
> "http://ftp.gnome.org/pub/GNOME/sources/glib/2.26/glib-${PV}.tar.bz2 \
>             file://configure-libtool.patch \
> @@ -14,3 +14,5 @@ SRC_URI[sha256sum] =
> "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e51562
>  
>  SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
>  BBCLASSEXTEND = "native"
> +
> +EXTRA_OECONF_append = " --enable-dtrace=no"
> 
> Unfortunately that does not help.

I had a look at the configure log. Dtrace and SystemTap are both still
pulled in. I also tried with --disable-dtrace and --disable-systemtap
but that does not help either.

cheers,

Andre


