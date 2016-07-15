Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4856FE00E48; Fri, 15 Jul 2016 00:49:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 149BCE00D8B
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:49:23 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id t190so5957238pfb.2
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=s+cC54TPxumb65eZ9rs7FXYaY784hrCS2qaIEmKvQ2k=;
	b=CxdkDWHLMSsKw6Ha/NNlzB7Hb1l9iGpWzsCG9VdBy23zWZrPalcGJR0S/UoZKI9HUI
	hHE7/ZhSCBOrFIxWWwFmUHiK3Daurwnonb1kAtuil/xcQAhZxr+vIGcSWyvCuY2DV3ip
	yHd4LwgxwHPgHmft5HB6/nktdwfbFLwAoObgiEyjTTy1EuGGarXq6iqk5xRGvZV7lC69
	d+Ke2bpgqX/O5HQ/PJd8AO0OS9KN3kBHozJu+dVhjagO4MbzqXwrk+Y3GEw9FYI6DuX3
	9hnI8WFMxoz77A+IUPZ/aCZPuojt9SHiXFzqftnZ5F/gcdeV/l8KMWmYs/8/lqtyjwee
	osKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=s+cC54TPxumb65eZ9rs7FXYaY784hrCS2qaIEmKvQ2k=;
	b=NG5Ij7+/7Fkb1UfShkST67HLxGeBsag/sNKKfP2nMamO5jsTxiceGWEhf63c8i2TeX
	F7XHul+C3q9+FoxCqx2UvccdShJGs5KA0/2F05sqURz5dYfJAjQQ98D+UhdOEUp0Mo97
	gi/6ViWFuMQfExQOEKodowvJV4cJ1l02zC90QJx/yY0kHz9Zhy8GKaUqkIfuKw0KEpH8
	ckxUw0UAE3uUl3YISMEa8yUo4/uesBVzkcN88jyAqWr3dgIqNze22S25qIsdNR+PMgPj
	80ZOJ/Eq3jZjIvGUxLdmsobG+MBcxx8N9ls59EBgcMgn21ZrmcAOp0Fi1cI0iZ6UUnBk
	voAQ==
X-Gm-Message-State: ALyK8tIl82D1M378ZnZ/kwdXrUfQEq9HOp/08AY6vXyPtehDYECLNw1z8MjZtykAVfK4cQ==
X-Received: by 10.98.20.201 with SMTP id 192mr19539659pfu.144.1468568962769;
	Fri, 15 Jul 2016 00:49:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:484e:ddb0:204b:d826?
	([2601:646:8882:b8c:484e:ddb0:204b:d826])
	by smtp.gmail.com with ESMTPSA id
	t80sm2837082pfj.38.2016.07.15.00.49.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Jul 2016 00:49:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAEKp-abX0bVE0zwCm_oMrG+KSjY9TQH_fAHWLFKLmpTqEwy0OQ@mail.gmail.com>
Date: Fri, 15 Jul 2016 00:49:15 -0700
Message-Id: <9F875290-E7FA-46E9-8533-CE26D7FCFBA4@gmail.com>
References: <CAEKp-abX0bVE0zwCm_oMrG+KSjY9TQH_fAHWLFKLmpTqEwy0OQ@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [Devtool] RPM Source Package
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
X-List-Received-Date: Fri, 15 Jul 2016 07:49:28 -0000
X-Groupsio-MsgNum: 31077
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C1B22B11-CF7A-46DB-8C97-D073740B8C93";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C1B22B11-CF7A-46DB-8C97-D073740B8C93
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A49C57A7-4339-4763-8D49-CD3F0B92F2A3"

--Apple-Mail=_A49C57A7-4339-4763-8D49-CD3F0B92F2A3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 15, 2016, at 12:43 AM, Rudolf Streif <rudolf.streif@gmail.com> =
wrote:
>=20
> Devtool works reasonably well with repos and packaged source tarballs. =
We did a test with a source RPM which resulted in a simple stub recipe =
although the source rpm contained an autotooled package. devtool did not =
even make an attempt to unpack the source RPM into the workspace and =
analyze the code.
>=20
> Are there any plans or a roadmap for devtool to support source RPMs?

I think surely, this is a good feature enhancement. Are there more src =
pkgs formats may be of relevance too. Please file an enhancement bug =
nevertheless.

> When Tizen moved from OBS to YP the developers created a Python script =
[1] to convert an OBS spec file to a YP recipe. A possible starting =
point.
>=20
> Cheers,
> :rjs
>=20
>=20
>=20
> [1] =
https://review.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3Dtools/spec=
2yocto.py;h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD =
<https://review.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3Dtools/spe=
c2yocto.py;h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD>
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A49C57A7-4339-4763-8D49-CD3F0B92F2A3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 15, 2016, at 12:43 AM, Rudolf Streif &lt;<a =
href=3D"mailto:rudolf.streif@gmail.com" =
class=3D"">rudolf.streif@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Devtool works reasonably well with repos and packaged source =
tarballs. We did a test with a source RPM which resulted in a simple =
stub recipe although the source rpm contained an autotooled package. =
devtool did not even make an attempt to unpack the source RPM into the =
workspace and analyze the code.<div class=3D""><br class=3D""></div><div =
class=3D"">Are there any plans or a roadmap for devtool to support =
source RPMs? </div></div></div></blockquote><div><br =
class=3D""></div><div>I think surely, this is a good feature =
enhancement. Are there more src pkgs formats may be of relevance too. =
Please file an enhancement bug nevertheless.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"">When Tizen moved from OBS to YP =
the developers created a Python script [1] to convert an OBS spec file =
to a YP recipe. A possible starting point.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Cheers,</div><div =
class=3D"">:rjs</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">[1]&nbsp;<a =
href=3D"https://review.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3Dto=
ols/spec2yocto.py;h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD" =
class=3D"">https://review.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3D=
tools/spec2yocto.py;h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD=
</a><br clear=3D"all" class=3D""><div class=3D""><br class=3D""></div><br =
class=3D"">
</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A49C57A7-4339-4763-8D49-CD3F0B92F2A3--

--Apple-Mail=_C1B22B11-CF7A-46DB-8C97-D073740B8C93
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleIlYEACgkQuwUzVZGdMxTK5QCeIFZiVtXfmoM9hivqvxQWrStH
Y5oAnRsHnUu1plCGwAY12n33Y/BnJRxQ
=HCfC
-----END PGP SIGNATURE-----

--Apple-Mail=_C1B22B11-CF7A-46DB-8C97-D073740B8C93--
