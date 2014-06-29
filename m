Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19C7E00543; Sun, 29 Jun 2014 10:53:25 -0700 (PDT)
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
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A08E002F9
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 10:53:19 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id b13so6901041wgh.2
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 10:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=dXqSbf/84dbkV93CQbNZjf9tw5x3/9SK7A/XS8EaSOw=;
	b=SotfgKOAvf/GMdkowXlCZWulBndXtHTxt9KlXnntGvNh+3KO81AZ3LbxtN6DBMNnBQ
	MiViPt6g7pumyMaorBsififRaS2EqfC/MAA2qDNFkADX2qygzfJSn6wmJHIvNH4GG+hV
	pkYkvOMmqN2hmHuPYoVoqAazeCA4BDgqYIUoCAqG9XdnZky2vamiDjxpyRpEw4KJXHqz
	9kHnxXM33UZUFBqhepsaH+np3/a4U2PN5slvK82qXcRBJRp39U9IjRgNQn5/qI4Y2ZtX
	BYOratpsr9C7l1tqgYhF4B/zQ25KLHrgfG3ylLXjPd9sxiyIKQMOBKoJFcWjwD6eamo7
	TXXw==
X-Received: by 10.180.13.47 with SMTP id e15mr24895251wic.28.1404064398778;
	Sun, 29 Jun 2014 10:53:18 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	lk7sm35877277wjb.24.2014.06.29.10.53.17 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 29 Jun 2014 10:53:17 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sun, 29 Jun 2014 19:53:25 +0200
To: Christian Ege <k4230r6@gmail.com>
Message-ID: <20140629175325.GZ2437@jama>
References: <CALXw4G4sWVH+ZegiAfvF4g0CSWhUz_db87hNtOLVX8DnZAUDUw@mail.gmail.com>
	<CAALGJZYmVU8+Bs8+ftZO4uDGRqAVkwrgTm1MNVGqmnTdzqpXaQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAALGJZYmVU8+Bs8+ftZO4uDGRqAVkwrgTm1MNVGqmnTdzqpXaQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Pulseadudio depends
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
X-List-Received-Date: Sun, 29 Jun 2014 17:53:25 -0000
X-Groupsio-MsgNum: 20332
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="O2g7+miYGsIKoR9l"
Content-Disposition: inline

--O2g7+miYGsIKoR9l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 28, 2014 at 10:06:54PM +0200, Christian Ege wrote:
> Am 28.06.2014 21:54 schrieb "Michael Gloff" <mgloff@emacinc.com>:
> >
> > All,
> > I'm having some build errors when pulseaudio tries to configure. It loo=
ks
> like there is a dependency on libcap. If the image already has libcap
> pulled in or I manually make it so, everything is fine. Just wondering if
> anyone else has experienced this and/or can duplicate on a clean build.
> >
> It may fixes your Problem by addind RDEPENDS +=3D "libcap"

Not RDEPENDS but DEPENDS.

And I haven't seen this issue in test-dependencies builds, so it's
either very new dependency or something special about your config (maybe
more PACKAGECONFIG options enabled).

> to the pulsaudio recipe. It may worth filing a patch if it is fixed.
>=20
> Regards,
> Christian
> > Thanks,
> >
> > Michael Gloff
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--O2g7+miYGsIKoR9l
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlOwUpUACgkQN1Ujt2V2gBwGFwCeIu1ZvBv3QSKTXwCpRfROI9EQ
TMYAoJsGF7j/QoeMhHGlHZFOF42wx2mA
=joRD
-----END PGP SIGNATURE-----

--O2g7+miYGsIKoR9l--
