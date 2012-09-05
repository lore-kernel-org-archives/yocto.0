Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3818BE014DA
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 12:44:57 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so4490494wib.11
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 12:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YWa0Mpog4UmqJp+FpG2Fcl8DlgGHT8tIhhiFxRYiAjw=;
	b=TA7fWxEfeEuzUkKfhxzinDJ/Sm6eZB6OIHGqKEW9meq4gxioBnX/a/LxIWbryTlCJf
	ZD+XAqFDlQj6fwAGcsgyQLomtB9auNydD19+p5Huwdo3ILlaIySddASJZlZKrDIFv+xV
	22pr4GULoxRLVZswBQDDdXROIvllbDGWyn1UQAd5M1aK3eGHT7JWDf4C76T+8sZoCtRj
	U1dUBuoFHA/FL0BvKGzOmU/6J/bcZqU/tbE7PDJNX3wdXY/ZrJG1wu2dFOI/1pFgYLLo
	qcUM4kLRCcsBvc/lKhfhJxIeDFnVTCePidznkp5l4yJ1S2jPU5iehKD7pktNixYBI3+E
	6KpA==
Received: by 10.180.106.130 with SMTP id gu2mr4253841wib.20.1346874291569;
	Wed, 05 Sep 2012 12:44:51 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id j6sm338542wiy.4.2012.09.05.12.44.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 05 Sep 2012 12:44:50 -0700 (PDT)
Date: Wed, 5 Sep 2012 21:45:20 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20120905194520.GT3372@jama.jama.net>
References: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
	<20120904210033.GH3372@jama.jama.net>
	<5046D2A3.2070600@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <5046D2A3.2070600@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] linux-yocto: Update linux-yocto for 3.2 and 3.4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Sep 2012 19:44:57 -0000
X-Groupsio-MsgNum: 9146
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iskw6J4cuOvZ6IVF"
Content-Disposition: inline

--iskw6J4cuOvZ6IVF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 04, 2012 at 09:18:43PM -0700, Saul Wold wrote:
> On 09/04/2012 02:00 PM, Martin Jansa wrote:
> > On Tue, Sep 04, 2012 at 01:57:19PM -0700, Saul Wold wrote:
> >> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> >> ---
> >>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
> >>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
> >>   .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
> >>   3 files changed, 14 insertions(+), 0 deletions(-)
> >>   create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bba=
ppend
> >>   create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bba=
ppend
> >>
> >> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/=
meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> >> index 58a6541..138cc21 100644
> >> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> >> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> >> @@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>
> >>   # enable the time limited kernel configuration options
> >>   SRC_URI +=3D "file://time-limited-kernel.cfg"
> >> +
> >> +PR .=3D ".1"
> >
> > why not
> > PRINC :=3D "${@int(PRINC) + 1}"
> > ?
>=20
> I understood that the .1 adds more finer granularity instead of=20
> incrementing the base PR itself.  You end up with a potential r1.2.1=20
> which is still legal.

Yes but also makes order of .bbappends applied even more important.

In case one layer has
PR .=3D ".2"

and other
PR .=3D ".1"

Then it will provide r1.2.1 or r1.1.2 depending on order of bbappends
applied. Hopefully you want change order of layers to break every
upgrade path, but why not use PRINC which does not suffer from this?
=20
> What happens with a r1.2 and the above @int(PRINC) + 1?

I guess it will produce r2.2

    princ =3D d.getVar('PRINC', True)
    if princ and princ !=3D "0":
        pr =3D d.getVar('PR', True)
        pr_prefix =3D re.search("\D+",pr)
        prval =3D re.search("\d+",pr)
        if pr_prefix is None or prval is None:
            bb.error("Unable to analyse format of PR variable: %s" % pr)
        nval =3D int(prval.group(0)) + int(princ)
        pr =3D pr_prefix.group(0) + str(nval) + pr[prval.end():]
        d.setVar('PR', pr)

Cheers,

>=20
> I would need to test it, done for the day right now.
>=20
>=20
> Sau!
>=20
> >> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/=
meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> new file mode 100644
> >> index 0000000..138cc21
> >> --- /dev/null
> >> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> @@ -0,0 +1,6 @@
> >> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >> +
> >> +# enable the time limited kernel configuration options
> >> +SRC_URI +=3D "file://time-limited-kernel.cfg"
> >> +
> >> +PR .=3D ".1"
> >> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/=
meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> new file mode 100644
> >> index 0000000..138cc21
> >> --- /dev/null
> >> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> @@ -0,0 +1,6 @@
> >> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >> +
> >> +# enable the time limited kernel configuration options
> >> +SRC_URI +=3D "file://time-limited-kernel.cfg"
> >> +
> >> +PR .=3D ".1"
> >> --
> >> 1.7.7.6
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--iskw6J4cuOvZ6IVF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBHq9AACgkQN1Ujt2V2gBw2EQCfc1TaX50mQ+aiSP1bk/b6Oheu
/H8AnRpbVbfxeo/xA8nMg3NjeMFAOYXP
=XWO4
-----END PGP SIGNATURE-----

--iskw6J4cuOvZ6IVF--
