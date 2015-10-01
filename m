Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E70CE01109; Thu,  1 Oct 2015 10:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDDDAE00927
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 10:11:36 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so210780wic.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 10:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=2Fys8YsY69LTHS0pAD1C77i0AXgXsJdCWl0ef29UBsw=;
	b=c2lBfkxpXJeXsl8kx6xUSYmOLCVa55Pq93u682JlkFOfF/+pO0MwlhsQYwR/34ClYh
	gYaPvepH4aw/2e4oV85uhOtDJCUQnCHb4vL6wvKWkQTyLlXc3Q126YJjSlNv0nQ/NC3g
	lBR/CBnir3FccxJClqXqMYu7HoTfvj6ZW3DZJbEsdl8vBeEEvIKb6L6jEVjt9az4Bk8d
	GDxSzYUTXP0Gr9w5AVgyt7OEY77vfXYIs1UhWPE+ai+wLcbeHehRSl9CBu6xZ0oR7wbQ
	Y0BqiyeYDSiakp3XglUknRF5QdNRAXZdlMaxh/Hl8Yb8qEu15rkFVVN+h0FPucBHg1l4
	CttQ==
X-Received: by 10.180.79.34 with SMTP id g2mr4774933wix.28.1443719495407;
	Thu, 01 Oct 2015 10:11:35 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	qc4sm7082968wjc.33.2015.10.01.10.11.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Oct 2015 10:11:34 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 1 Oct 2015 19:12:33 +0200
To: Christopher Larson <clarson@kergoth.com>
Message-ID: <20151001171233.GE2403@jama>
References: <560BD1F3.1090907@mlbassoc.com>
	<F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
	<560D63FC.1040604@mlbassoc.com>
	<CABcZANm3twj-c7gnctQNiwfXr64tV9nDbLFYEGyu+gPy+1TvWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZANm3twj-c7gnctQNiwfXr64tV9nDbLFYEGyu+gPy+1TvWQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Safely cleaning 'downloads'
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
X-List-Received-Date: Thu, 01 Oct 2015 17:11:38 -0000
X-Groupsio-MsgNum: 26634
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J4XPiPrVK1ev6Sgr"
Content-Disposition: inline

--J4XPiPrVK1ev6Sgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 01, 2015 at 09:54:51AM -0700, Christopher Larson wrote:
> On Thu, Oct 1, 2015 at 9:49 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> > On 2015-10-01 10:38, Smith, Virgil wrote:
> >
> >> The following is roughly the procedure I follow and that works for me.
> >> Maybe someone could chime in with how some of this should be trimmed b=
ased
> >> on yocto/bitbake intent/design.
> >> Even so I'd probably stick with this level of extremism because withou=
t a
> >> known good backup of your downloads(sources) you may be incapable of
> >> (tweaking and) rebuilding your products if anything happens to your bu=
ild
> >> server.
> >>
> >> The only reason I've seen that simply deleting the downloads folder
> >> causes problems is that external servers/content go away, violate thei=
r git
> >> history, or replace files with non-identical contents.
> >>
> >>
> >> Warning: The following does not maintain PR server information, so
> >> automatic upgrading of your own packages could break.  If you rely on =
this
> >> work out how to extract that information (and back it up regularly).
> >>
> >> 1. rename/move your current downloads folder and create a new one.
> >> 2. for all of your product build configurations empty out the following
> >> folders
> >> 2.1 cache
> >> 2.2 state-cache
> >> 2.3 tmp
> >> 3. build (bitbake) all your product images with all appropriate
> >> configuration variances
> >> 4. run the following command to extract the unexpanded sources from
> >> downloads
> >> find -H downloads -maxdepth 1 \
> >>       -not -type d   -and   -not -name "*.done" \
> >>       -exec cp -L {} sources-tmp \;
> >>
> >> You now have everything you *currently* need for a sources mirror in t=
he
> >> sources-tmp folder.
> >>
> >> 5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.
> >> 6. Check those contents into some form of revision control (even if th=
at
> >> is just a manual set of backup folders/media).
> >>
> >>
> >> Yes this is costs time and space, you just have to decide how much your
> >> images and how much being able to reproduce them (with or without 'sma=
ll'
> >> changes) is worth.
> >>
> >
> > I'm already doing more or less this same sequence.  I use these command=
s to
> > stage the downloaded files to my mirror (/work/misc/Poky/sources for
> > historical reasons)
> >   ( cd downloads;
> >     find . -maxdepth 1 -type f | grep -v '.lock$' | grep -v '.done$'
> > >/tmp/files.$$;
> >     rsync -auv --files-from=3D/tmp/files.$$ . /work/misc/Poky/sources
> >   )
> >
> > This works very well (I've been doing it for many years).  The issue I'm
> > trying
> > to work on now is that my script leaves 'downloads' possibly full of
> > files, especially
> > if there are new versions that have just been downloaded.  This is
> > especially noticeable
> > for the tarballs of GIT trees - there are a number that I need/use that
> > are measured in
> > gigabytes (e.g. the RaspberryPi board firmware is 4194568645 bytes as of
> > 2015-07-20!)
> > Once I've saved these to my mirror(s), I'd like to be able to purge them
> > from the local
> > download directory in my builds.  As mentioned, I've found that just
> > wiping that in a
> > build tree tends to break things quite badly.  Of course I can always
> > start over with
> > a new build tree, but that also defeats the purpose of incremental buil=
ds.
>=20
>=20
> I'd think something like this would get the job done:
>=20
> 1. Do a build of all your supported machines and configurations with
> BB_GENERATE_MIRROR_TARBALLS=3D1 to ensure you have current, not out of da=
te
> scm tarballs.
>=20
> 2. Set up builds of all your supported machines and configurations, using=
 a
> new DL_DIR, with PREMIRRORS pointing to the old DL_DIR.
>=20
> 3. Either clean up the old DL_DIR by access time before you kicked off the
> builds, or resolve the symlinks in the new DL_DIR and remove the old.

I'm doing the same, but make sure not to re-use sstate in 2nd build,
otherwise many components can be re-used from sstate without the need to
download their sources.

It's easier to use fetchall task instead of actual build in 2nd step.

Similarly when doing the same to clean sstate-cache (if you don't trust
sstate-cache-management.sh) you can end with 2nd build completely built
=66rom sstate, but sstate for many intermediate dependencies wasn't
accessed - you can almost build whole image just by reusing packagedata
sstate archives for all included packages, but once you modify one of
them then you'll need do_populate_sysroot archives for all it's
dependencies.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--J4XPiPrVK1ev6Sgr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYNaYAACgkQN1Ujt2V2gByXtwCgnwZxFCQUtZn56l7KK+ukYF+c
t2EAoKjzK6qOLaVUOw5WdaC7Ih7nCogW
=Xb7X
-----END PGP SIGNATURE-----

--J4XPiPrVK1ev6Sgr--
