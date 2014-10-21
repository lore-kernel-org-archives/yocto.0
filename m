Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74FB5E00920; Tue, 21 Oct 2014 09:56:25 -0700 (PDT)
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
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 009ABE00912
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 09:56:16 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hi2so11535060wib.3
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 09:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=cn8Uydz1SPSly9iujtFEs7Zwvt2hA/x2tMFW+xVghqY=;
	b=oTr7Mtvn1/li3+6AGNHTyemxijPn6wPGrG2PYVjaB0lCWAJEn65TMJ/j44NJvPPzNm
	5FuUO2iC8T6eARnH/3+24VnK+1CqY1MpNrO8hz9RBiXhuoQLtOqEOmFEA979gZ7QwIqA
	964UBtdz7HkolHEys4jUyP20tev2ibH+KJ1iWXTpwlHjhU/NUlpvcAntJiPgO15SBxi+
	xkgIqIUnO1JRvORe1AIGEaW5GJluIb+BhEmHxUvPE6A251b/vEQmJ6n98MPGrqpud912
	CU0pdBaU2p8mrRgxEMA6rCW/rMVNp0Bzmfnmz90r5U/gMQ/jSPB3y+b67Mk/NGNws46q
	L4Bw==
X-Received: by 10.194.78.113 with SMTP id a17mr14322111wjx.120.1413910574288; 
	Tue, 21 Oct 2014 09:56:14 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	b6sm13665152wiy.22.2014.10.21.09.56.13 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Oct 2014 09:56:13 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 21 Oct 2014 18:56:12 +0200
To: Neuer User <auslands-kv@gmx.de>
Message-ID: <20141021165612.GF2455@jama>
References: <m25unh$ls3$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <m25unh$ls3$1@ger.gmane.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt5] How to bisect problem?
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
X-List-Received-Date: Tue, 21 Oct 2014 16:56:25 -0000
X-Groupsio-MsgNum: 21882
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wZdghQXYJzyo6AGC"
Content-Disposition: inline

--wZdghQXYJzyo6AGC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 21, 2014 at 05:39:28PM +0200, Neuer User wrote:
> Hi
>=20
> I was using qt5 5.3.0-beta1 for a long time. Now I upgraded to 5.3.2,
> which is the current master.
>=20
> Now I am experiencing some video problems. I reverted back to my old
> 5.3.0-beta 1 and the problems are gone. So, it seems one (or more)
> commits between 5.3.0-beta1 and 5.3.2 are the cause of the faulty video.
>=20
> How can I bisect this best to find the culprit? It doesn't seem to make
> sense to just use git-bisect as not all versions will compile fine. Are
> there specific points, such as 5.3.0, 5.3.1 that I should test? Or does
> it make more sense to use some 5.4.0 beta version?

qt5 isn't special from this perspective (well maybe except that it takes
damn long to build it all, so it's always useful to narrow the
problematic module asap and then rebuild only that one as long as
dependencies on other modules allow), I would start by using 5.3.0
and 5.3.1 (because you'll easily find meta-qt5 revisions which will give
you compatible set of qt5 tarballs).

If you plan to upgrade your images to 5.4.* soon(ish), than testing
5.4-alpha (or 5.4-beta from jansa/master branch) is also very useful,
but I would expect more rough road then just bisecting 5.3.* releases.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--wZdghQXYJzyo6AGC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRGkCwACgkQN1Ujt2V2gBzDQwCgsfXAELWzppo0JOTK6OD06LXg
fBIAn2lKH5peGwgpNIZcEtpHmnRcMwL9
=RMp0
-----END PGP SIGNATURE-----

--wZdghQXYJzyo6AGC--
