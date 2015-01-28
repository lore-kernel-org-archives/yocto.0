Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82912E0087C; Wed, 28 Jan 2015 11:54:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C88A6E00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 11:54:12 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id fb4so14417171wid.2
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 11:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=1SSEi3fpnmgEbbL80MDG06/h8mDo9MR7f6fJQ0XmKws=;
	b=OYJb2ioUjiuFpbdKIuBoR51ED3wEUp/UcirQomL5QKKa/cV3GPPwCetJTXNqY/10hX
	ItFH0U5ZLaPeXVKHTYBy3A21aVCYfBKBAYCFw/HIQvapnMsS2XJLhzLKj6kDGQBKPW5j
	UDPjZ1ripqXCfQCR10jbpzRZtCaw3y3l+v6GZr1XgxIFOMLI+h7zqpug1anID7bHDeuP
	oNNtpwmSy+GiQw2NhGSI83G+H+g97+KIuL124A/ZBzrbaMNuHqQ3TJ+sSnIki5A6YObl
	APWNFmJXKkouW4FlKkZZOQ7AS8LYomQxYxfzY1f4VuA0/vC1nGIZrsN40eQxcCGIhaEz
	suYg==
X-Received: by 10.180.218.73 with SMTP id pe9mr10421326wic.13.1422474851445;
	Wed, 28 Jan 2015 11:54:11 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	u13sm7444993wjr.26.2015.01.28.11.54.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jan 2015 11:54:10 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 28 Jan 2015 20:54:12 +0100
To: Simon Bolek <simon.bolek@googlemail.com>
Message-ID: <20150128195412.GJ2477@jama>
References: <CAEfap_A5KbwEFkXCiz8uiGiH3_F2FBWSOUzwFFnfg-c+CeUWbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEfap_A5KbwEFkXCiz8uiGiH3_F2FBWSOUzwFFnfg-c+CeUWbA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, peterengcomau001@adam.com.au
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Wed, 28 Jan 2015 19:54:20 -0000
X-Groupsio-MsgNum: 23254
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibvzjYYg+QDzMCy1"
Content-Disposition: inline

--ibvzjYYg+QDzMCy1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2015 at 07:31:35PM +0100, Simon Bolek wrote:
> Hi Lachlan,

I'm getting lost in HTML format of previous message so I'll just reply
on top :/.

The redirect should be fine, but sometimes it gives you broken mirror.
e.g. today I've seen couple of 5.1.1 builds fail to fetch, because they
were redirected to http://mirrors.neusoft.edu.cn which was returning
HTTP 500.

git recipes in older branches are also working only from already
populated premirror, because upstream renamed 5.[012] branches to
old/5.[012], that's why it shows current SRCREV to exist in origin/5.4
(after you call "git remote prune origin")

I've just cherry-picked
  pick 76af63c qt3d: change to 'dev' branch
=66rom master to dizzy to fix qt3d branch.

Similar problem exist in qtwayland recipes where the branches were also
rewritten and pruned when first 5.4 release was created.

If you find issue like this, just update the branch parameter (based on
git branch -a --contains <srcrev> and send me the patch (as described in
README). Such fixes are perfectly fine for meta-qt5 release branches.

Regards,

> There is a redirection, yes, and this should not be a problem, as far as
> I'm concerned. Why it does not work for those particular recipes of yours,
> i have no clue. BUT, what I would do, is to bitbake <recipe-by-recipe>
> trying to narrow down the problem.
> When you still have problems when bitbaking single recipes, you might try
> to override the SRC_URI from qt5-{PV}.inc (in my case qt5-5.3.2.inc, yours
> might be different)
>=20
> Whether those are reasonalble advices, well, I am not 100% sure, but maybe
> Martin Jansa would help here. I also have some problems with generating
> meta-toolchain-qt5, which I already posted here.
>=20
>=20
> @Martin: i was so bold to email you directly. I apoligize if this is not
> welcome, please correct me and i will not do this again.
>=20
> best regards
> simon :-)
>=20
>   Message: 7
> >  Date: Tue, 27 Jan 2015 01:32:43 +1030
> >  From: peterengcomau001@adam.com.au [4]
> >  To: yocto@yoctoproject.org [5]
> >  Subject: [yocto] meta-qt5 problem in yocto 1.7
> >  Message-ID:
> >  ? ? ? ?
> >  Content-Type: text/plain; charset=3D"utf-8"
> >
> >  I have just downloaded yocto poky 1.7 and try to build an image. I
> > get
> >  teh follwing problems with fetching qt5 source:
> >  Summary: 5 tasks failed:
> >  ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
> >  do_fetch
> >  ?
> >
> > /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
> >  do_fetch
> >  ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
> >  do_fetch
> >  ?
> >
> > /home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugi=
ns/
> > gstreamer1.0-plugins-hantro_1.0.bb,
> >  do_configure
> >  ?
> >
> > /home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/obp-utils_git=
=2Ebb
> > ,
> >  do_install
> >
> >  I presume the last two problems(do_configure & do_install)? result
> >  from dependencies on the previous three failed fetches.
> >
> >  The more complete error code for teh first three errors is:
> >  WARNING: Failed to fetch URL
> >  git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [7], attempting
> > MIRRORS
> >  if available
> >  ERROR: Fetcher failure: Unable to find revision
> >  8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even from
> >  upstream
> >  ERROR: Function failed: Fetcher failure for URL:
> >  'git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [8]'. Unable to
> > fetch
> >  URL from any source.
> >  ERROR: Logfile of failure stored in:
> >
> >
> > /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux=
-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch=
=2E29304
> >  ERROR: Task 1993
> >  (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
> >  do_fetch) failed with exit code '1'
> >  WARNING: Failed to fetch URL
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtmultimedia-opensource-src-5.3.2.tar.xz
> > [9],
> >  attempting MIRRORS if available
> >  ERROR: Fetcher failure: Fetch command failed with exit code 4, no
> >  output
> >  ERROR: Function failed: Fetcher failure for URL:
> >
> > '
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtmultimedia-opensource-src-5.3.2.tar.xz
> > [10]'.
> >  Unable to fetch URL from any source.
> >  ERROR: Logfile of failure stored in:
> >
> >
> > /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux=
-gnueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762
> >  ERROR: Task 535
> >
> > (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
> >  do_fetch) failed with exit code '1'
> >  WARNING: Failed to fetch URL
> > http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2 [11],
> >  attempting MIRRORS if available
> >  WARNING: Failed to fetch URL
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [12],
> >  attempting MIRRORS if available
> >  ERROR: Fetcher failure: Fetch command failed with exit code 4, no
> >  output
> >  ERROR: Function failed: Fetcher failure for URL:
> >
> > '
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [13]'.
> >  Unable to fetch URL from any source.
> >  ERROR: Logfile of failure stored in:
> >
> >
> > /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux=
-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587
> >  ERROR: Task 675
> >  (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
> >  do_fetch) failed with exit code '1'
> >  NOTE: validating kernel config, see log.do_kernel_configcheck for
> >  details
> >
> >  If I manually download the one of the files, e.g.? :
> >
> > '
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [14]
> >  This works fine.
> >
> >  Can anyone suggest what I can look fro to determine the problem. I
> >  have tried this a number of time over 24 hours and get the exact
> > same
> >  failures.
> >
> >  Thank you for any suggestions moving forward.
> >
> >  Regards
> >  Lachlan
> >
> >  ---- Message sent via Adam Internet WebMail -
> > http://www.adamcom.au/ [15]
> >  -------------- next part --------------
> >  An HTML attachment was scrubbed...
> >  URL:
> >
> >  ------------------------------
> >
> >  --
> >  _______________________________________________
> >  yocto mailing list
> > yocto@yoctoproject.org [17]
> > https://lists.yoctoproject.org/listinfo/yocto [18]
> >
> >  End of yocto Digest, Vol 52, Issue 86
> >  *************************************
> >
> >   ---- Message sent via Adam Internet WebMail -
> > http://www.adam.com.au/
> >
> > Links:
> > ------
> > [1]
> >
> > http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodule=
s/qtbase-opensource-src-5.4.0.tar.xz
> > [2]
> >
> > http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodule=
s/qtbase-opensource-src-5.4.0.tarxz
> > [3]
> >
> > http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodule=
s/qtbase-opensource-src-5.4.0.tar.xz
> > [4] mailto:peterengcomau001@adam.com.au
> > [5] mailto:yocto@yoctoproject.org
> > [6]
> > mailto:f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au
> > [7] http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster
> > [8] http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster
> > [9]
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtmultimedia-opensource-src-5.3.2tar.xz
> > [10]
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtmultimedia-opensource-src-5.3.2.tar.xz
> > [11] http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2
> > [12]
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [13]
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [14]
> >
> > http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodule=
s/qtwebkit-opensource-src-5.3.2.tar.xz
> > [15] http://www.adam.com.au/
> > [16]
> >
> > http://lists.yoctoproject.org/pipermail/yocto/attachments/20150127/7d94=
8cb1/attachment.html
> > [17] mailto:yocto@yoctoproject.org
> > [18] https://lists.yoctoproject.org/listinfo/yocto
> >
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> > http://lists.yoctoproject.org/pipermail/yocto/attachments/20150129/b854=
6355/attachment.html
> > >
> >
> > ------------------------------
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > End of yocto Digest, Vol 52, Issue 111
> > **************************************
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ibvzjYYg+QDzMCy1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlTJPmQACgkQN1Ujt2V2gByuJgCffsT72mSVTPBeStfWoPudJaVo
i1cAn1RopozYC5NokVrLBmlxjPlEZcIE
=Ct8M
-----END PGP SIGNATURE-----

--ibvzjYYg+QDzMCy1--
