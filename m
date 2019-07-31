Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D1CCE00D35; Wed, 31 Jul 2019 07:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD04E00CD5
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 07:48:02 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45zGW50nS5z1n;
	Wed, 31 Jul 2019 16:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1564584481;
	bh=1jWdAhINvPKpGVX7GGMMAhNy0o6WraPr1wJar6gSZiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZwwCrHk6uz8rvcEkLuQWWRVx3/cclMOeHe+j9g5MA48Ekz4/FW/7RkvDwxOw3wBtX
	XmRpr2fwHI+jnVW2PkIO3rqPkLU07VW2vl3V9WjDqED2Vi9UgJ4TG5GmyEEsILvkoW
	kXm768YITN7IP5BX+9SQOOAZ3gUyVymsAMz8NBENP6rdlY1YX6kJBM/+r7gRaQyKz+
	xLvqrTJKSicwXdlFGr/mKwc0GKcJhSaM0Fbs/yBMuneEE3dRQICFhGfep/V6x39gy4
	+0HLZuST4ffq986MOhTRxuqU/33QljB5vYuJkH2GZ6enOtYiFd03bps9Cuv9B32P3x
	m+Ctw94z61DnBfPIYl/zeZ/bGWP5KF5EdCmsZjpZ+Zjm7PDnprU/K4IMo6C7TSrslv
	zyvOhr9TxPPw3gPizEAYK2azte0AeBi9DwwpwlTedFuSIYT1Az1Y7aqT0MDNCKd76l
	0DFKyfh2kpw2UHoZXKYRDMIw9/PkbpINCLcIEr/JfbZcHB90Gy0eK36dE3tFLAfcbG
	rrap+zcTw4Hrmn8170NZ5s5cYgpQ4tQEF/0hzFCCXOAgxa8Je040UdHsuyg5BuQ8JM
	Ii7JgRMiU5LYn0YdUSYWtexsemXWCbW0D2JBWRI70FIWeScS+/8oY1PMil24nXoicZ
	pYlYXG4ciPqVpJZPWDS86qD8=
Date: Wed, 31 Jul 2019 17:47:58 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20190731144758.GC1647@localhost>
References: <20190731132957.4782-1-bunk@stusta.de>
	<CAMKF1sriCokV8j2TsVva1DbxBnoe3q84cd=XXXaLpv6aHhLT-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sriCokV8j2TsVva1DbxBnoe3q84cd=XXXaLpv6aHhLT-A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: Re: [yocto-docs][PATCH] ref-manual: Remove documentation for the removed gnome class
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
X-List-Received-Date: Wed, 31 Jul 2019 14:48:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Jul 31, 2019 at 07:33:37AM -0700, Khem Raj wrote:
> On Wed, Jul 31, 2019 at 6:30 AM Adrian Bunk <bunk@stusta.de> wrote:
> >
> > When removed all it did was
> >   inherit gnomebase gtk-icon-cache gconf mime
> > which would also be the most trivial replacement.
> >
> > Most of the time not all of these classes were needed,
> > and it is recommended to use only the ones actually required.
> >
> 
> This should go to oe-core ml as well.

Added to Cc.

> > Signed-off-by: Adrian Bunk <bunk@stusta.de>
> > ---
> >  documentation/ref-manual/ref-classes.xml | 15 ---------------
> >  1 file changed, 15 deletions(-)
> >
> > diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
> > index 37619e382d..5403f20b6f 100644
> > --- a/documentation/ref-manual/ref-classes.xml
> > +++ b/documentation/ref-manual/ref-classes.xml
> > @@ -920,21 +920,6 @@
> >      </para>
> >  </section>
> >
> > -<section id='ref-classes-gnome'>
> > -    <title><filename>gnome.bbclass</filename></title>
> > -
> > -    <para>
> > -        The <filename>gnome</filename> class supports recipes that
> > -        build software from the GNOME stack.
> > -        This class inherits the
> > -        <link linkend='ref-classes-gnomebase'><filename>gnomebase</filename></link>,
> > -        <link linkend='ref-classes-gtk-icon-cache'><filename>gtk-icon-cache</filename></link>,
> > -        <link linkend='ref-classes-gconf'><filename>gconf</filename></link> and
> > -        <link linkend='ref-classes-mime'><filename>mime</filename></link> classes.
> > -        The class also disables GObject introspection where applicable.
> > -    </para>
> > -</section>
> > -
> 
> do we need to enhance the documentation for gnomebase bbclass to
> mention about disabling  gobject introspection
> or is it handled differently now.
>...

This part of the documentation had been wrong for 3-4 years.

The gobject introspection disabling was moved to the gnomebase class
back in 2015.

In 2016 the gnomebase class stopped disabling gobject introspection.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


