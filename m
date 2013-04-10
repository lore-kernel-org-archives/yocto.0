Return-Path: <davide.soldan@kynetics.it>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF590E014D0
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 06:34:12 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id hj8so4812142wib.1
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 06:34:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:x-gm-message-state;
	bh=SEViUrP8vdxs3Ab5hNRbCQ9Y3eaJH9W6LIRHnmf1jL4=;
	b=b2IQgU8b1NH6HrMUGOUGC8cUfQG/c3ZZK3PmrDp7JgdzSryhWjsXHiU/Dy0qqTrtTS
	olAiB1M43go+0k9RJp5/jlsJysti27wG84Hj/Gc8wDyOqP+Cd0fx8+ATQH3W6xdDOdzF
	gcPygukLFMTUoPl1HRCpiwQVcMJMcOk5OxPQfJKtL5IARKrwVWO8lo0nj0TAKu0DW9Ae
	h80bSW5OhBTh49Owe0Uc6rQOhW+GAP4WL/vQ8hx+Co5+y1RyPkl1WEwOeiQXxcPWT2vj
	+IdIYCWL7Pg8kgyZvsISkcPn5Rwcmdy+GRA9Eq/DZsht4xd1Qno81lCcJZZzGs6yZSd6
	CUnA==
X-Received: by 10.180.188.141 with SMTP id ga13mr27178704wic.9.1365600851626; 
	Wed, 10 Apr 2013 06:34:11 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPS id k5sm35472147wiy.5.2013.04.10.06.34.09
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 06:34:10 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Wed, 10 Apr 2013 15:34:05 +0200
Message-ID: <3229891.QdK03jF6Lc@fedora-fisso>
User-Agent: KMail/4.10.1 (Linux/3.8.4-102.fc17.x86_64; KDE/4.10.1; x86_64; ; )
In-Reply-To: <loom.20130410T143813-208@post.gmane.org>
References: <1711946.6ebLgJzAjK@fedora-fisso> <3061185.qjNdBeNxOi@fedora-fisso>
	<loom.20130410T143813-208@post.gmane.org>
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlCxDlty7tTrjYHjkE3nbgvX39Rli5bYfy1axtf743Zm336j11RTuZA3H7/xSaIXVsPe75V
Cc: Achim Kanert <achim.kanert@rwth-aachen.de>
Subject: Re: core-image-sato + firefox for pandaboard
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
X-List-Received-Date: Wed, 10 Apr 2013 13:34:13 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data mercoled=EC 10 aprile 2013 12:39:03, Achim Kanert ha scritto:
> Davide Soldan <davide.soldan@...> writes:
>=20
> >=20
> > In data gioved=EC 21 febbraio 2013 08:19:42, Gary Thomas ha scritto=
:
> > > On 2013-02-21 07:52, Davide Soldan wrote:
> > > > Hi to all!
> > > > I'm new in building images with yocto for my pandaboard. Trying=
 to=20
> build core-image-sato
> > (http://maniacbug.wordpress.com/2012/08/03/pandayocto/) all works f=
ine,=20
> but now I want to add some
> > packages to this image.
> > > > So proceeding like mentioned here
> > https://lists.yoctoproject.org/pipermail/yocto/2012-May/009175.html=
,=20
> downloading
> > meta-browser layer and adding this layer to build/conf/bblayers.con=
f and=20
> adding the package firefox to
> > conf/build/local.conf I've got this error:
> > > >
> > > > ERROR: No recipes available for:
> > > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
> gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
> > > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
> graphics/libxi/libxi_1.6.1.bbappend
> > > >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-
> support/nspr/nspr_4.9.4.bbappend
> > > >
> > > > So I found, for example, gnome-settings-daemon under meta-
> openebedded (dependency declared in the
> > README file of meta-browser). Adding the layer "meta-openembedded/m=
eta-
> gnome" to
> > build/conf/bblayers.conf to satisfy the gnome-settings-daemon depen=
dency=20
> I've got the following
> > different error:
> > > >
> > > > NOTE: Error expanding variable populate_packages
> > > > NOTE: Error during finalise of /home/davide/yocto/poky-denzil-
> 7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.=
17.bb
> > > > ERROR: Unable to parse /home/davide/yocto/poky-denzil-7.0/meta-=

> openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
> > >=20
> > > I was able to build this combo (master, not denzil) by only impor=
ting
> > > the necessary recipes, not all of meta-gnome.  I just put them in=
 a
> > > local layer.
> > >=20
> > > n.b. FireFox runs OK, but IMO [Google] Chromium is much snappier =
on=20
> the PandaBoard.
> > > You should be able to build it using the same setup.
> > >=20
> > >=20
> > Solved the problem: I downloaded the yocto denzil release from the=20=

> website (tar.gz file) but the layers
> > meta-browser/openembedded-come/meta-openembedded was from git...so =
the=20
> branch of this latest
> > layers was master and not denzil. checking out the correct branch s=
olved=20
> the problem!
> > Thanks!
> >=20
>=20
>=20
> Hi,
> I am new to yocto and have the same problem.
> Can you please shortly describe which recipes you added.
>=20
> Regards,
> Achim Kanert
>=20
It was firefox recipes under meta-browser layer...
The old layerindex website doesn't exist anymore and there's a new webs=
ite: http://layers.openembedded.org/layerindex/layer/meta-browser/
I think you could use a recipe like firefox-l10n-en-us

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

