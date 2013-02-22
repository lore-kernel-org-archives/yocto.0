Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3AE0CE01466
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 02:10:55 -0800 (PST)
Received: by mail-bk0-f51.google.com with SMTP id ik5so209791bkc.38
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 02:10:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type
	:x-gm-message-state;
	bh=/WiFSTevwJT68UMyvKi8LoKLGQ0diA9ZPT6DrvqSbdM=;
	b=erVTtHu+pTjLgng81mI3cn/ZObRVCShnyiYX2R57QnCXPheztJJ1v4GFMkzeZipfjT
	k7yhs9xejq/kBiNE0zH0zu1QICGF6tR26w6X6kEQ+B9apExl7/SeD+JeCT5DEaPsuJ42
	K36mI0wEUc20VDbBz5DBs0DwOg5mXvoEJBSF5Z2u875I+asZKwemtbVXva7RmNEOD1IC
	sxlHET1kJmn5mpNZ5ihXDejStF41f3I5P7oCoThroSpD3tRYxGppw5wZ/f/5lgW9ixkz
	pbZotpFp1TE3mBcI//VRyT5vVYxjYzcmRQeyDuGehKQJKUJtdOIK0BvYu9GB+nsJYu9n
	wFng==
X-Received: by 10.205.136.205 with SMTP id il13mr642488bkc.93.1361527853188;
	Fri, 22 Feb 2013 02:10:53 -0800 (PST)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPS id x10sm428195bkv.13.2013.02.22.02.10.51
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 22 Feb 2013 02:10:52 -0800 (PST)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 11:10:48 +0100
Message-ID: <3061185.qjNdBeNxOi@fedora-fisso>
User-Agent: KMail/4.9.5 (Linux/3.7.6-102.fc17.x86_64; KDE/4.9.5; x86_64; ; )
In-Reply-To: <51263B0E.6020209@mlbassoc.com>
References: <1711946.6ebLgJzAjK@fedora-fisso> <51263B0E.6020209@mlbassoc.com>
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQn/yMyzIYOwn/BUGONq9rj14njPlPTI/kow0wq9/5y7LXQ618CIgzKx2axSQonMPBGWVqIb
Subject: Re: core-image-sato + firefox for pandaboard
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
X-List-Received-Date: Fri, 22 Feb 2013 10:10:56 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data gioved=EC 21 febbraio 2013 08:19:42, Gary Thomas ha scritto:
> On 2013-02-21 07:52, Davide Soldan wrote:
> > Hi to all!
> > I'm new in building images with yocto for my pandaboard. Trying to =
build core-image-sato (http://maniacbug.wordpress.com/2012/08/03/panday=
octo/) all works fine, but now I want to add some packages to this imag=
e.
> > So proceeding like mentioned here https://lists.yoctoproject.org/pi=
permail/yocto/2012-May/009175.html, downloading meta-browser layer and =
adding this layer to build/conf/bblayers.conf and adding the package fi=
refox to conf/build/local.conf I've got this error:
> >
> > ERROR: No recipes available for:
> >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-gnome/gn=
ome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
> >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-graphics=
/libxi/libxi_1.6.1.bbappend
> >    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-support/=
nspr/nspr_4.9.4.bbappend
> >
> > So I found, for example, gnome-settings-daemon under meta-openebedd=
ed (dependency declared in the README file of meta-browser). Adding the=
 layer "meta-openembedded/meta-gnome" to build/conf/bblayers.conf to sa=
tisfy the gnome-settings-daemon dependency I've got the following diffe=
rent error:
> >
> > NOTE: Error expanding variable populate_packages
> > NOTE: Error during finalise of /home/davide/yocto/poky-denzil-7.0/m=
eta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
> > ERROR: Unable to parse /home/davide/yocto/poky-denzil-7.0/meta-open=
embedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
>=20
> I was able to build this combo (master, not denzil) by only importing=

> the necessary recipes, not all of meta-gnome.  I just put them in a
> local layer.
>=20
> n.b. FireFox runs OK, but IMO [Google] Chromium is much snappier on t=
he PandaBoard.
> You should be able to build it using the same setup.
>=20
>=20
Solved the problem: I downloaded the yocto denzil release from the webs=
ite (tar.gz file) but the layers meta-browser/openembedded-come/meta-op=
enembedded was from git...so the branch of this latest layers was maste=
r and not denzil. checking out the correct branch solved the problem!
Thanks!

