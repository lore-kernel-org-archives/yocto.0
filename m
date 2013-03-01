Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E3FA8E01496
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 13:53:34 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id kp1so2081497pab.3
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 13:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=gR+ff7jjS/eclRzRlj92euksZOd84yCbl1fqSsTgtus=;
	b=rKpbnWNGsKUHUiavZlQqSMmv38p7/vIRRpe1sReIWlwqS9Nua0BIaFS05XMSGrTNWN
	j5fxO5adt20PBMMMqg4rLE0p7tukHwo118hBOCTMa+Li4Iy5wQGPmuXaBj86n4lzmJeU
	ziLyEgPjQWulXSNINzCWrO4GMjbFkQdXKHWbZNvZYRjUi/kiUpzjV67YJmTSRUG+675I
	usF5Kis4HXsKz6mersedevKOzeWMm1iYRGvbovEybzqRdLaWJ+W2AOZIDhphSN+T4vLO
	prGMnO08CGgpJwNJJmvAXOeziYJS3wLK4sYQ812eNkVYoyF0INLz778K9InLxRNttDbV
	FG7g==
X-Received: by 10.66.83.232 with SMTP id t8mr20839857pay.73.1362174814672;
	Fri, 01 Mar 2013 13:53:34 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id
	td10sm13241788pbb.25.2013.03.01.13.53.31
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 13:53:33 -0800 (PST)
Date: Fri, 1 Mar 2013 22:53:24 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Liu, Song" <song.liu@intel.com>
Message-ID: <20130301215324.GU3279@jama>
References: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project 1.4 M4 release readiness discussion
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
X-List-Received-Date: Fri, 01 Mar 2013 21:53:35 -0000
X-Groupsio-MsgNum: 12303
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="f4arffV+Mc+T1KhS"
Content-Disposition: inline

--f4arffV+Mc+T1KhS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 08:01:17PM +0000, Liu, Song wrote:
> Attendees:
> AlexG, ThaddeusL, Cristian, Dave, Richard, Jessica, Nitin, Song
>=20
>=20
> Release criteria review:
> Please see the wiki page:  https://wiki.yoctoproject.org/wiki/Yocto_Proje=
ct_v1.4_Status#Milestone_4<https://wiki.yoctoproject.org/wiki/Yocto_Project=
_v1.4_Status>
>=20
> 1.      All release criteria has been reviewed. M4 met all the criteria.
> 2.      Highlights:
> a.      12% performance increase on overall build time. Cut the rootfs bu=
ild time with sstate on by half.
> 3.      Issues:
> a.      The # of bugs seems high. Plan: Bug triage team is doing a round =
of triage for all medium+ and medium bugs to focus the team on fixing the r=
ight set of bugs. The team will focus more on bugs for the rest of the rele=
ase.
> b.      Dave: not enough CCB members present in this meeting. Cannot appr=
ove the release.
>=20
> Decision: Song will follow up with Dave and the CCB to get approval for t=
he release.

I think it would be good to finish discussion in thread
[OE-core] RFE: make the init manager an image feature (again)
and resolve systemd situation asap, otherwise we're risking
meta-openembedded release or quality of such release.

meta-systemd is broken for >month so people cannot even test it
with current master and couple of important meta-oe developers are
against changing meta-systemd so it gets compatible with current oe-core
but breaks their use-case and also there is no plan for upgrade path
=66rom danny+meta-systemd to Yocto-Project_v1.4 release.

Stalling that discussion till milestone 5 or 6 won't help resolving it=20
to work for everybody.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--f4arffV+Mc+T1KhS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlExI1QACgkQN1Ujt2V2gBxtawCgmNQ8obSenuoNgJyQmEknqbnV
Rb4An2zcq1+6S0/5SCMXZjj/FNWi41wX
=wMkX
-----END PGP SIGNATURE-----

--f4arffV+Mc+T1KhS--
