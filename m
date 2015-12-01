Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03A22E00A4F; Tue,  1 Dec 2015 03:13:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DAF8E009EF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 03:13:54 -0800 (PST)
Received: by wmec201 with SMTP id c201so199810213wme.0
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 03:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tmDC9iEl9c5XmPTLuSHIEkC6gdTYog3iHhQ/NYIM2Jw=;
	b=zeqFuqp6h7aju4GtwhgRS9BeFK9mJauAIttC4xBTn3+2l0MPUmdNq67fHbR1za4xQ0
	LxltQeoGEBHsNQV8cCzozWRcHh8BocumrdokJW7W4RhYd4cDd+pn/unCQU5/4iM2GRM3
	VxlRc6QkpWAEqzZLU3+JXvJeGcaXVE0JB77JoBwXOLSBPDkzKvUyc7zv6X5h98qJo/Y0
	hA7WMK6/sNdbkBk/xrNgXIH7LS6YItEXYKNliSG1hIXEdp6SOR/PWvl+xXTur33WJmZy
	QgkKZLUOSxbLI7cQrCmMXi6Kt3jhzPOisOW+fNe4h0AfiwoNHiXKuZZpmFwt/y2kaC+d
	VZHQ==
X-Received: by 10.28.24.5 with SMTP id 5mr36309361wmy.3.1448968433204;
	Tue, 01 Dec 2015 03:13:53 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id h7sm25535975wmf.0.2015.12.01.03.13.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Dec 2015 03:13:52 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 1 Dec 2015 12:14:51 +0100
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Message-ID: <20151201111451.GC2251@jama>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
	<20151201094058.GA2251@jama>
	<D2832681.6BDCB%belen.barros.pena@intel.com>
MIME-Version: 1.0
In-Reply-To: <D2832681.6BDCB%belen.barros.pena@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Franco,
	Alejandro" <alejandro.franco@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Tue, 01 Dec 2015 11:13:58 -0000
X-Groupsio-MsgNum: 27540
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Pk6IbRAofICFmK5e"
Content-Disposition: inline

--Pk6IbRAofICFmK5e
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2015 at 10:42:49AM +0000, Barros Pena, Belen wrote:
>=20
>=20
> On 01/12/2015 09:40, "yocto-bounces@yoctoproject.org on behalf of Martin
> Jansa" <yocto-bounces@yoctoproject.org on behalf of
> martin.jansa@gmail.com> wrote:
>=20
> >>Another thing that just occurred to me though - apologies for not
> >>raising it=20
> >>earlier - for the benefit of newer users it may be useful to explain
> >>implications of the blacklisting. What I'd suggest is we put a line
> >>after the=20
> >>reason on the recipe detail page saying "This means that the recipe will
> >>not=20
> >>be buildable until the PNBLACKLIST value is cleared and the issue that
> >>caused=20
> >>it to be added has been fixed or worked around." (Just on the recipe
> >>detail=20
> >>page - not in the popup.)
> >>Does that sound OK?
> >
> >Maybe some more information how to clear PNBLACKLIST (people often don't
> >know that they can just set it to empty value in their bbappend or even
> >distro/local config).
>=20
> I think explaining what blacklisting means, its implications and how to
> clear it is an excellent idea, but it seems there is quite a lot to say,
> and the layer index itself might not be the best place to show it all. So
> what about adding all this to the documentation, then link to it from the
> layer index? The recipe details page would then look like the attached
> image.=20

Agreed, LGTM.

>=20
> Alex, sorry for nitpicking: using the .label-inverse class means that the
> label in the h1 of the recipe details page also hovers. Only labels with a
> tooltip should hover, so maybe we should go back to the extra class, or
> just qualify the hover styles so that they only apply to .label-inverse
> inside tables (td > .label-inverse:hover). Apologies: I should have picked
> this up before you submitted the patch.
>=20
> Cheers
>=20
> Bel=E9n
>=20
> >
> >--=20
> >Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>=20



--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Pk6IbRAofICFmK5e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZdgKEACgkQN1Ujt2V2gBzzWQCePMtwf04gRSoJwFhGMpgBHBa2
X2sAnRAqy7C+8WfN8MUpWLmEu7AfSRTq
=yiUn
-----END PGP SIGNATURE-----

--Pk6IbRAofICFmK5e--
