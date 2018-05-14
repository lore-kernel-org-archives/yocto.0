Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94166E0164C; Mon, 14 May 2018 10:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B27CE006F1
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 10:09:42 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id n10-v6so16541825wmc.1
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 10:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=j1KCL2B6FQbL37mGUpJxZM9aiR2CPb+RWGRJHxITWTg=;
	b=jtkCv17YMsjagUHLodPo9hH4opDoptrigzlavO4Y7ce7ZxChVyeNTSxsy2mnJFhxIF
	2SMKOkYonKHi3XoKLy6Pqx6qa7dZNBSHRjxmsP1bz9j6wh+LdTn4o7mQH39ay0Od+S0T
	Zarw2/3vaLpZfIfJ9Tspekp+snj+eyLcmwcmOHyFgBwuDFLc9lATYdEOQiYD1aGzBjHt
	DjuHYWFffycJiK27K7aHzXFqs+HERax3SNZZLSnZG70yxxB9kMbYOoGdjspwibY4ic1I
	UucmeG/nIWxq8rl1nU+3DzEPB0MmlpLnxk6+/EAvbjX73q9n3snmi9aSS31vI9bHp04b
	xyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=j1KCL2B6FQbL37mGUpJxZM9aiR2CPb+RWGRJHxITWTg=;
	b=Kb8meHWrWEucXueaq3KCoJdgA+ml2PswV3mN5Yp8VWBW4cOxslzrEaSwdt6waKxkTP
	AQGDGWIFa0KpEIVXECrAGXHiCwHewqUvzVQXaeMgmj45cP5pz3md3rIONlfkwPp+dC2W
	jaBS3nDhlw8G4L1ilA+g1aPy6mIBNIdgdYJtRTWaJW5ocUirBxRHhWpZHHEcb/WD2xQw
	He6R5OFTT1/cpU8v0kKsd2h/p9/lQi37KBOY44Ls3D2mInLugXa9YxDQXFTYtBBwtwo3
	GXbxyQCnNIo9UM928/DRHiN9mFNl5MiOHl2Rw3eS9MU40+TXUOWC0k6VVYzm+Wf6ngoi
	lNig==
X-Gm-Message-State: ALKqPwdJxXrR8LwSM+d5ekyQy1Pi04a3O3ey410tviB+S8iUiM6phqfK
	eroCeUT6rMwep0S9vkVtwm3yGA==
X-Google-Smtp-Source: AB8JxZq1oUZVKulmFloXunTa+AOHfnDdpg3s/V5s9oOyuHxOUUFvwL0aSPoulOSA32wgVDCaAUBsJQ==
X-Received: by 2002:a1c:8d8a:: with SMTP id
	p132-v6mr5604703wmd.49.1526317781464; 
	Mon, 14 May 2018 10:09:41 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	f6-v6sm12314398wrj.66.2018.05.14.10.09.40
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 14 May 2018 10:09:40 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 14 May 2018 19:09:41 +0200
To: Dan McGregor <danismostlikely@gmail.com>
Message-ID: <20180514170941.GC2840@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CACS+7ZR6F1PgKxQxxh=iJzTQNmrrMVOQ01EuhcnotSAhB=AiEA@mail.gmail.com>
	<1ceb098b-1836-4693-d03f-8801ac354c25@gmail.com>
	<CACS+7ZRs_zB_c-Wg8K=JEtWyHH7DG-W8ER4Ky1Yg6v1C8xtsyw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACS+7ZRs_zB_c-Wg8K=JEtWyHH7DG-W8ER4Ky1Yg6v1C8xtsyw@mail.gmail.com>
User-Agent: Mutt/1.9.5 (2018-04-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Mon, 14 May 2018 17:09:43 -0000
X-Groupsio-MsgNum: 41142
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ALfTUftag+2gvp1h"
Content-Disposition: inline

--ALfTUftag+2gvp1h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 14, 2018 at 10:33:41AM -0600, Dan McGregor wrote:
> On 10 May 2018 at 12:53, Khem Raj <raj.khem@gmail.com> wrote:
> > Hi Dan,
> >
> > Thanks for testing
> >
> > On 5/10/18 7:34 AM, Dan McGregor wrote:
> >>
> >> On 4 May 2018 at 18:26, Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> Hi All
> >>>
> >>> As you might have noticed that gcc 8.1 was released this week, I am
> >>> calling out for some testing help on testing branch so we can weed out
> >>> issues you might see in your setups. so if you have your
> >>> builders idling over weekend, then you know what they can do this wee=
kend
> >>> :)
> >>>
> >>
> >> Thanks for this. The only two issues I noticed are that the
> >> Wandboard's kernel doesn't compile with gcc 8.1,
> >
> >
> >
> > what errors do you see ?
>=20
> I expect the standard "Linux 4.1" errors. A bunch of ignored
> attributes and incompatible type aliases:
>=20
> tmp-glibc/work-shared/wandboard/kernel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with
> attribute 'const' [-Wattributes]
>  int ____ilog2_NaN(void)

Try backporting this change:
https://github.com/torvalds/linux/commit/474c90156c8dcc2fa815e6716cc9394d79=
30cb9c

> tmp-glibc/work-shared/wandboard/kernel-source/include/linux/syscalls.h:19=
5:18:
> warning: 'sys_clone' alias between functions of incompatible types
> 'long int(long unsigned int,  long unsigned int,  int *, int,  int *)'
> and 'long int(long int,  long int,  long int,  long int,  long int)'
> [-Wattribute-alias]
>   asmlinkage long sys##name(__MAP(x,__SC_DECL,__VA_ARGS__)) \
>=20
> I can give you the full compile log if you'd like, but I think others
> want it kept off the list.
>=20
> >
> >  and gcc-sanitizers
> >>
> >> now throws a packaging error on (at least) x86_64.
> >> ${libdir}/liblsan_preinit.o is a new file that should go into
> >> liblsan-dev.
> >
> >
> > That seems to be the case, I wonder why my world build for qemux86_64 d=
id
> > not find this error. I would like to reproduce this and the fix is then
> > simple.
>=20
> My x86_64 build was multilib enabled. I doubt that had anything to do
> with it, but I suppose it's possible.
>=20
> >
> >
> >>
> >>> Highlighted changes are
> >>>
> >>> https://gcc.gnu.org/gcc-8/changes.html
> >>>
> >>> and porting doc is
> >>>
> >>> https://gcc.gnu.org/gcc-8/porting_to.html
> >>>
> >>> The branch is here
> >>>
> >>> http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/g=
cc-8
> >>>
> >>> Its uptodate on top of current master oe-core
> >>>
> >>> May fourth be with you !!
> >>>
> >>> Cheers!
> >>>
> >>> -Khem
> >>> --
> >>> _______________________________________________
> >>> Openembedded-core mailing list
> >>> Openembedded-core@lists.openembedded.org
> >>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
> --=20
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ALfTUftag+2gvp1h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWvnC1AAKCRA3VSO3ZXaA
HJtNAJ9hCNj2hM6jk36I1zRYy/ed5nsoigCgo6XjRZUyPZrCrGIXxbSR3T7CD8M=
=zK+i
-----END PGP SIGNATURE-----

--ALfTUftag+2gvp1h--
