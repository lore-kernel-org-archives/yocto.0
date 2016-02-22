Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6420CE00C31; Mon, 22 Feb 2016 08:19:08 -0800 (PST)
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
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F10D9E00AAB
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 08:19:05 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id c200so179548218wme.0
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 08:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FwuLhyxsfbuS1Z6z8UlQpee2Y8/17NTNJcSiK1xZQaw=;
	b=yxIP/ME2E+T2ckjO4fjx46PZz1Q/8+mZDpIglcnuXM1P3k/4TWeWG/2p5f/zJWv2ub
	4lk31eMW4+q8q9/nqQac76cU5ldXev27ZC4JklWp6/CREO2Wh6sbl7wGE2aR4eerZXCX
	hMvwTs091HPvzfKlETZYFZ7yJmQAeF2d/qmuNCtLdN7+KbA5w8wxUHIkNTpBXJMeKQE+
	y7cd8OjBpG0I4Pb374S1oST0bJrOGuUpEbmrwK5XLAmWdeMNJvVwPYjfK9EiSWS4WLBx
	WMTq5Ek3KESz6iO3YBj3tXPk+dhE6CaZrtmtnlHxMwB2LQ9mbWKjthIyjRoPiyJ/t76/
	M5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FwuLhyxsfbuS1Z6z8UlQpee2Y8/17NTNJcSiK1xZQaw=;
	b=jHQNyHW0mvgjkes5sCEhW84Pu499yXlkQxTlKG+AWsr2cMhmtBQ8bYHJdK47mdBzkm
	OiZbsDQTsiOEbdvpmpeTt3bHeGTLJFa8dUf+OSKYIvoSs6kxksmcbTXNmWOiykPCRh84
	1fch1hVOoxq0+8J87VlVHi/3esIjDbY8sszcejtGejgypfmt8SkJd1X0u37rW7iaj/vp
	bzDfOYfeVjILeHG5HPw7fhEhuI+FIonYI6sPlrTiX+CFzTAaVbU1fUe3Tkt7Ejzs7No/
	WzWsRJLfruAGwb1WbLyAlXEtUCju7bbEXNZkYalYeZsBduJ79o4u7/pEAbe0GME/uCJW
	08+Q==
X-Gm-Message-State: AG10YORR9H8OqRQZf9Fpl8OYHnICYMJb0CihfMzkf6VbVrFWaVASPA+KFx/5Hyj7TReDDw==
X-Received: by 10.28.131.141 with SMTP id f135mr13029143wmd.33.1456157944839; 
	Mon, 22 Feb 2016 08:19:04 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	n9sm25234994wjy.36.2016.02.22.08.19.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Feb 2016 08:19:03 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 22 Feb 2016 17:19:56 +0100
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160222161956.GE6329@jama>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com> <20160222153336.GB2255@mentor.com>
	<CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "T.O. Radzy Radzykewycz" <radzy@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Mon, 22 Feb 2016 16:19:08 -0000
X-Groupsio-MsgNum: 28562
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ytoMbUMiTKPMT3hY"
Content-Disposition: inline

--ytoMbUMiTKPMT3hY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2016 at 03:58:44PM +0000, Burton, Ross wrote:
> On 22 February 2016 at 15:33, Joe MacDonald <Joe_MacDonald@mentor.com>
> wrote:
>=20
> > I'm also not against removing the local copy (I don't think it adds
> > anything to the layer and occasionally causes headaches), but I really
> > don't want to make meta-selinux dependent on meta-oe components, so I
> > guess I'm voting for keeping it.
> >
>=20
> Luckily it's also in oe-core (meta/recipes-devtools/swig/swig_3.0.8.bb).

And it was removed from meta-oe couple months ago:

commit 02f98d1bc7dc585538df5c96c2b0ccdd857ec46f
Author:     Wenzong Fan <wenzong.fan@windriver.com>
AuthorDate: Thu Oct 8 01:31:36 2015 -0400
Commit:     Martin Jansa <Martin.Jansa@gmail.com>
CommitDate: Tue Oct 13 12:28:17 2015 +0200

    swig: remove package
   =20
    swig 3.0.6 has been moved to oe-croe:
      66923c6776da13bd4513a73c3f7c5e60d74eb0f3
   =20
    Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
    Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ytoMbUMiTKPMT3hY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbLNSsACgkQN1Ujt2V2gBx15wCgumAg7Dmj/jaEOPwOPwXO7+1z
oo8AoIGHDlhJnettck1a7tF5TDQ+XQyy
=DY2t
-----END PGP SIGNATURE-----

--ytoMbUMiTKPMT3hY--
