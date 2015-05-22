Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 563BEE009D9; Fri, 22 May 2015 05:00:34 -0700 (PDT)
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
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3878E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 05:00:29 -0700 (PDT)
Received: by wgez8 with SMTP id z8so15717775wge.0
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 05:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=GfrdhPB7rciHwwgdoUxKFPX3WVX3bbbp2z78kOCXAOI=;
	b=rd7G0scft1vhr2frFIIjuktHt7BKNFbpbCbn8hT8i4SD+Ow9ftznxpkv40iRl3mH1z
	JAj+rrXWa78WqFCvC+S+gVF0lmuo2x4ErEnpLkaY0nfjWLNJkCz7bYsU7NCXjIleKfzS
	rotLmXakvFey9iD/GnMVr/tW5rESI4K73uZucQHUl/lN9gPeg7PX1sr7GSPiiVqRO9he
	fuOOBeqkBufmWnPri29ep4XNx76/zHz8Q+7d5Tr8z+jrs6aGXCLCPTGBprlhB63KJjpB
	xef4SDNxqmp5Rx6hJfY76LKQRg14dJ1OurW64Do0aCABNUKS5Qi6XR5gImHqeTLLjrcz
	6x5Q==
X-Received: by 10.194.189.4 with SMTP id ge4mr14125870wjc.111.1432296028697;
	Fri, 22 May 2015 05:00:28 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id ex2sm2844790wjd.28.2015.05.22.05.00.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 May 2015 05:00:27 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 22 May 2015 14:00:50 +0200
To: yocto yocto <yoctomailinglist@gmail.com>
Message-ID: <20150522120050.GD2376@jama>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<2493502.gGu5ytCTqB@peggleto-mobl.ger.corp.intel.com>
	<20150522111758.GA2376@jama>
	<CACTu1Li_MZA+M3D+Y72ODut60+Uhz4Xvp3w_zFB3DcXfjg5Nug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACTu1Li_MZA+M3D+Y72ODut60+Uhz4Xvp3w_zFB3DcXfjg5Nug@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 12:00:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 22, 2015 at 01:44:20PM +0200, yocto yocto wrote:
> I set BBCLASSEXTEND =3D "native" active again. My php_5.5.24.bbappend loo=
ks
> like this (just one line):
>=20
> PACKAGECONFIG_append_class-native =3D " pgsql"

Do you really want to add it for native or target version?

>=20
> However, the error still persists, nothing changed:
>=20
> ---------------------------------
> ERROR: Nothing PROVIDES 'postgresql-native' (but /recipes-devtools/php/
> php_5.5.24.bb DEPENDS on or otherwise requires it). Close matches:
>   postgresql
>   strace-native
>   popt-native
> NOTE: Runtime target 'php' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['php', 'php-native',
> 'postgresql-native']
> ERROR: Required build target 'myImage-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['myImage-image', 'php',
> 'php-native', 'postgresql-native']
>=20
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> ---------------------------------
>=20
> When changing php_5.5.24.bbappend to
>=20
> #PACKAGECONFIG_append_class-native =3D " pgsql"
>=20
> everything compiles but of course the support for pgsql is missing. I fou=
nd
> this: https://www.yoctoproject.org/irc/%23yocto.2013-12-17.log.html But
> this discussion is not helping me (search for postgresql-native)
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> 2015-05-22 13:17 GMT+02:00 Martin Jansa <martin.jansa@gmail.com>:
>=20
> > On Fri, May 22, 2015 at 09:51:31AM +0100, Paul Eggleton wrote:
> > > On Thursday 21 May 2015 23:21:53 yocto yocto wrote:
> > > > Good day,
> > > >
> > > >
> > > > I am working with the intel Edison. Therefore I am using the
> > > > meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here:
> > > > https://github.com/openembedded/meta-openembedded/branches/stale).
> > Using
> > > > another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=
=E2=80=9D is
> > recommended
> > > > for the intel Edison within the official intel documents.
> > > >
> > > >
> > > > Nevertheless I added apache2_2.4.9.bb and postgresql_9.2.4.bb to my
> > custom
> > > > image. However, php5 support is missing. Therefore I downloaded the=
 php
> > > > recipe from the current master branch and put it in my custom layer:
> > > >
> > > >
> > > >
> > https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f=
4baf7
> > > > 5e2427216b39c641a12/meta-oe/recipes-devtools/php/
> > > >
> > > >
> > > > <
> > https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f=
4baf
> > > > 75e2427216b39c641a12/meta-oe/recipes-devtools/php/>
> > > >
> > > > Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with th=
e following content
> > in
> > > > the same folder:
> > > >
> > > >
> > > > PACKAGECONFIG_append +=3D "apache2"
> > > >
> > > > PACKAGECONFIG_append +=3D "pgsql"
> > > >
> > > >
> > > > bitbake php results in the following errors:
> > > >
> > > >
> > > > ERROR: Nothing PROVIDES 'uw-imap' [=E2=80=A6] but php/php_5.5.24.bb=
 DEPENDS
> > on or
> > > > otherwise requires it)
> > > >
> > > > ERROR: Required build target 'php' has no buildable providers.
> > > >
> > > > Missing or unbuildable dependency chain was: ['php', 'uw-imap']
> > > >
> > > >
> > > > So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from =
php_5.5.24.bb.
> > Result:
> > > >
> > > >
> > > > ERROR: Nothing PROVIDES 'postgresql-native' [=E2=80=A6] but /php/ph=
p_5.5.24.bb
> > > > DEPENDS on or otherwise requires it). Close matches:
> > > >
> > > >   postgresql
> > > >
> > > >   strace-native
> > > >
> > > >   popt-native
> > > >
> > > > ERROR: Required build target 'php' has no buildable providers.
> > > >
> > > > Missing or unbuildable dependency chain was: ['php', 'php-native',
> > > > 'postgresql-native']
> > > >
> > > >
> > > > Google does not show much for postgresql-native related to yocto.
> > "bitbake
> > > > postgresql" is running fine... If I remove BBCLASSEXTEND =3D "nativ=
e"
> > from
> > > > the recipe I get the following result:
> > > >
> > > >
> > > > ERROR: This autoconf log indicates errors, it looked at host include
> > and/or
> > > > library paths while determining system capabilities.
> > > >
> > > > Rerun configure task after fixing this. The path was
> > > > "php/5.5.24-r0/php-5.5.24'
> > > >
> > > > ERROR: Function failed: do_qa_configure
> > > >
> > > > ERROR: Logfile of failure stored in:
> > > > "php/5.5.24-r0/temp/log.do_configure.22410
> > > >
> > > > ERROR: Task 5 (php/php_5.5.24.bb, do_configure) failed with exit co=
de
> > '1'
> > > >
> > > >
> > > >
> > > >
> > > > I appreciate any advice on how to set up php5 for postgresql.
> > >
> > > Change your PACKAGECONFIG_append lines in your bbappend to use
> > > PACKAGECONFIG_append_class-native instead and you should be able to
> > progress.
> > > Also, you very likely shouldn't be removing the BBCLASSEXTEND.
> >
> > And add leading space in append instead of +=3D (_append + +=3D always =
looks
> > wrong as the only function of +=3D is to add the leading space), change=
 it
> > to:
> >
> > PACKAGECONFIG_append =3D " pgsql"
> >
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

