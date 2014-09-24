Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDEFBE00857; Wed, 24 Sep 2014 16:42:28 -0700 (PDT)
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
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56DFEE00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 16:42:25 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id em10so7891326wid.17
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 16:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=1ek3raxeMTOlMDzXTWbCTTn0RNBEM3fsIYFqEYpJSb0=;
	b=mSFsCwdufHv6Bi7M3qpvR6YuEPIewpCL1lWiZndL11Af+Njgar37jSNylB1JqWeX1C
	m+QCgYbIUB4kQS2BnPCUcZYT3UuMKXi2y41CcWOIJPcC1mXFHGXUk+PCIDLU+Ifklvvy
	W1Hw4oqJB3X8Y3oCtA3EogE/vRkY9DwFs9kdSq3fyjD4sNSuCbmXYdyXWbpeNS3zA06P
	bcgUhf+qY/rpjD9zc2PQq9j7USmoU6bfIjL9+N/x25iJ260pNJfQm34FzEREoSf4g7RV
	24tPO30CW+scE+WU7Bb0lpAVLqjeSvkfuteRl4xI0uhFTtzENNOpUmiDNCv/gFxj54S3
	dZmQ==
X-Received: by 10.194.186.178 with SMTP id fl18mr11445292wjc.8.1411602144741; 
	Wed, 24 Sep 2014 16:42:24 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	y15sm1200851wib.20.2014.09.24.16.42.23 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Sep 2014 16:42:23 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 25 Sep 2014 01:43:11 +0200
To: Leo Schwab <lschwab@sensity.com>
Message-ID: <20140924234311.GL25706@jama>
References: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Herp-a-Derp Alert: Changes to SRCREV Unpack Wrong Version
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
X-List-Received-Date: Wed, 24 Sep 2014 23:42:28 -0000
X-Groupsio-MsgNum: 21646
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eMP3JyRexyk9c0Bv"
Content-Disposition: inline

--eMP3JyRexyk9c0Bv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 24, 2014 at 03:04:46PM -0700, Leo Schwab wrote:
> I suspect this is a common issue, but my Google-fu has gotten me no closer
> to understanding what I might be doing wrong, so here goes:
>=20
> We have written recipes for various goodies -- both .bb and .bbappend for=
ms
> -- where SRC_URI points to a Git repository, and SRCREV names a commit ID
> (not a tag or a branch name).  When we update the SRCREV to something
> newer, 'bitbake' goes through the motions of rebuilding the recipe but,
> when we look at the result, the thing it built is still the old revision.
> This is confirmed when we look at the file 'log.do_unpack' in the build
> directory, where it is clearly checking out the wrong commit ID.
>=20
> I've tried fiddling around various ways with SRC_URI and SRCREV, but the
> problem persists.  All our SRC_URIs have a 'branch=3D' parameter, and the
> SRCREV points to a commit ID on that branch.  I've tried adding a
> 'name=3Dblah' parameter to the SRC_URI, and then declaring SRCREV_blah, b=
ut
> that doesn't seem to help, either.  We do not do anything with ${PV} or
> ${PR} in our recipes.
>=20
> In short, from where is the do_unpack step getting the SRCREV it's passing
> to 'git checkout'?  How can I trigger a rebuild using the value named in
> the recipe when SRCREV is updated?  We are using Yocto 1.6.1 (Dora).

Include SRCPV in your PV, otherwise do_fetch signature won't be changed
when you change just SRCREV so it won't update it for you.

You can also add it explicitly
do_fetch[vardeps] +=3D "SRCREV"
but having +git${SRCPV} in PV has the advantage that you'll also see
=66rom package name what revision was used to build it and
package management could be used to do upgrades on target.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--eMP3JyRexyk9c0Bv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlQjVw8ACgkQN1Ujt2V2gBxmHgCfeB+cE+cil8DcIPbRxKZ6ROeL
zh4Anjp38TOmvHB+FEBXHBIMtylxMHY5
=UW9l
-----END PGP SIGNATURE-----

--eMP3JyRexyk9c0Bv--
