Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97993E006F3; Thu, 10 Jul 2014 15:30:37 -0700 (PDT)
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
	*      [74.125.82.175 listed in list.dnswl.org]
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 328B2E0059F
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 15:30:27 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id k48so234442wev.34
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 15:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=uvRvYybqApy5hXqH8YjEhZZuy8euOanMJkzZlrrq5JY=;
	b=uCfcikDUB3jdMzKgc2oFWo/QvP/NqaXxM1EGoh2hKQH3hJ8sxwNWAoy1WpDKTlhouL
	k14B5byjBPfJIGu9L/iWL4tUxvkrwJmeHDLg3/zAE1u/+zHZ17cF13eiSNFGqmj5LV2q
	bJSgyfsa+O98IbY7/v8fNAqx6EpC27QAysWCr1z437UBINFasKbC4GUIsRiYNvQTEGVk
	ry1oU/6yRqV/kN9ybPOSFjZEdfHZ815d0PftsEZipjweBQ7xofrv1b2GpA3qhpChUZEW
	MjEeGY6jpLXh8GBHdpYh5IS6+FJWOLppVEGTD54F5izh3nmM1TsOMcY9SXEHkeKG5q5s
	tzNg==
X-Received: by 10.180.94.5 with SMTP id cy5mr437939wib.11.1405031425861;
	Thu, 10 Jul 2014 15:30:25 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	cz4sm36564216wib.23.2014.07.10.15.30.24 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Jul 2014 15:30:24 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 11 Jul 2014 00:30:30 +0200
To: Jate S <jatedev@gmail.com>
Message-ID: <20140710223030.GD2433@jama>
References: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
	<53B39DCE.9060705@freenet.de>
	<CAPphmgaa8uhXjwDq+c-GUgyyqhcPB-gdsHmAxq4_c_x1acBooQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPphmgaa8uhXjwDq+c-GUgyyqhcPB-gdsHmAxq4_c_x1acBooQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>, Jens Lucius <jenslucius@freenet.de>,
	openembedded-devel@lists.openembedded.org
Subject: Re: python tkinter dependencies
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
X-List-Received-Date: Thu, 10 Jul 2014 22:30:37 -0000
X-Groupsio-MsgNum: 20482
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7DO5AaGCk89r4vaK"
Content-Disposition: inline

--7DO5AaGCk89r4vaK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2014 at 04:11:29PM -0400, Jate S wrote:
> - Python-tkinter requires the tk recipe in meta-oe, so you must add
> this layer for your build.
> - I am on dora. I found that I needed commit "tk: make multilib build
> compatible and fix library install" made on 12/5/2013
> (1ca29d1cda0d007c4e6a28fe1a4037b4029ad7ae).
> - I created a bbappend for python. In this I added
> DEPENDS_class-target on tk, and RDEPENDS_class-target on tk and
> tk-lib. Also, I did a SRC_URI replace to eliminate the
> avoid_warning_about_tkinter.patch file.
>=20
> I was able to build and use python-tkinter successfully.
>=20
> The question now is if this should go into meta-oe or oe-core. And how.
>=20
> The tcl recipe is in oe-core, but not tk. I'm not yet sure why this
> is. Does anybody know?

You can use PACKAGECONFIG for optional dependencies like tk, that way
patch adding PACKAGECONFIG can go to oe-core and only people with
meta-oe and tk available will enable it.

>=20
> - Jate S.
>=20
> On Wed, Jul 2, 2014 at 1:51 AM, Jens Lucius <jenslucius@freenet.de> wrote:
> > Hi
> >
> > It worked for me in my build env after trying several things.
> >
> > I did setup a new yocto some while ago and actually had the same proble=
ms
> > again.
> >
> > There is a patch in python about tkinter (03-fix-tkinter-detection.patc=
h).
> >
> > I removed that, did a fresh rebuild of python (-c clean) and did a rebu=
ild
> > of my image (as no new image was written by building my image after
> > rebuilding python).
> >
> > Either of these did work for me, maybe somebody knows exactly which ste=
p :-)
> >
> > Jens
> >
> > Am 02.07.2014 05:41, schrieb Jate S:
> >
> >> The python-tkinter module requires _tkinter. A result from a websearch
> >> suggested that I needed to make sure tk (from meta-oe/meta-oe) and tcl
> >> were installed before compiling python.
> >>
> >> I added a DEPENDS on the tk and tcl recipes to both python and
> >> python-tkinter in a python_2.7.3.bbappend. It did not work and was
> >> never built.
> >>
> >> I'm looking for tips to figure out what is going on. Thanks.
> >>
> >>
> >> - Jate S.
> >
> >
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--7DO5AaGCk89r4vaK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlO/FAYACgkQN1Ujt2V2gBzgZgCfXAkt1aXHEtearbOpdhPz8ezk
hbQAn2Imq+aHFLYXWy7cVzeAXY0ORbtK
=BTP6
-----END PGP SIGNATURE-----

--7DO5AaGCk89r4vaK--
