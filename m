Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 310BFE00E1E; Fri, 21 Oct 2016 10:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF79E00C45
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 10:05:20 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i85so9130094pfa.0
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 10:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=VPfq3i6SBSpG/APk0ELzLuWDvA9XqPXxbCs4IYLHDhU=;
	b=UnBlki233N8lOoNqO9w5cHY1AabdHFS1PAqaqvQZDBtlp8Cw8J8K0eFOaQBkka72yM
	YquowoYBuvw+Fgd+AxgjuZ46oyREmeI5EM0TI0GE3FJtK1ZwPVa5+9kKbJ9Ez3izRbiv
	L/WDyM90Si0iBCBKaq9bdWxI3w87ss2m9pqyFfPsJZup8Gral85dxdbe8z4fFX65B3Pf
	n5pgC4EwxqkbouoHO2SS6PTd2Iz40JdIgSvExVskH86r+QaEAo7VGQxgRnyyYJn9qEh7
	xHTVM4fPem7d0L6ALviq1cZCam9zauUEyQxUKIioSBP1fwpeWGkjU98rXo74TDLAav6h
	f48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=VPfq3i6SBSpG/APk0ELzLuWDvA9XqPXxbCs4IYLHDhU=;
	b=CGnngcdijz8LcXc1aVN/Qy6Ze4VdOdCdSqnPaylMvQ81UDrKruuF9jU7D2OA2Rr+IK
	uHy0W5Zy7EUT63zQRRmoM93pWjsA6x0LnTtUpPr4DT7VXqooD1rBnsW6xdFT7EwWphXr
	PcWVNJsFFkMGQkhDKH7l7KcTT47fGsfFQeZ6lVzESVUbYPOLu2u8zJdbiNXU81H6qctr
	ov+pXdugp+Vcr+OIR5Lxpuca45PAENsX6v3qO/YWg3ZS/cpR/9//JRL+do5/HarCvt1s
	bxEeskd5EWB73Ik6xEar9LcoYayCS3LZh/vF+VqUixXz2jiaB5LoFIvEylnBxo9YM5YU
	ssCg==
X-Gm-Message-State: ABUngvfsucjG/vUSzec0b4T8+pyk8EeugjYxL9YruR9PL0YshU72glDTNiZP2MuJa6NFpg==
X-Received: by 10.98.206.1 with SMTP id y1mr3373021pfg.70.1477069519876;
	Fri, 21 Oct 2016 10:05:19 -0700 (PDT)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id bx5sm6531356pad.6.2016.10.21.10.05.18
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 21 Oct 2016 10:05:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <03b5e98b-0724-daa2-8f78-ab4624f52752@linux.intel.com>
Date: Fri, 21 Oct 2016 10:05:13 -0700
Message-Id: <80B25E1D-5083-4751-BD09-DEB6DBE7FA7F@gmail.com>
References: <03b5e98b-0724-daa2-8f78-ab4624f52752@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Attention all: patches for upstream source will be applied with stricter criteria for context
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
X-List-Received-Date: Fri, 21 Oct 2016 17:05:23 -0000
X-Groupsio-MsgNum: 32562
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1A3F1D3A-449C-400F-ABF9-BCB53103ED0A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1A3F1D3A-449C-400F-ABF9-BCB53103ED0A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 21, 2016, at 5:55 AM, Alexander Kanavin =
<alexander.kanavin@linux.intel.com> wrote:
>=20
> Hello all,
>=20
> while updating gnutls to a newer version I came across a rather =
serious issue: the way we patch source code is very lenient about the =
context for the lines to be changed. Basically, it's enough for one line =
before and after the changed line to match, because patch command's =
default setting for 'fuzz factor' allows it. If these lines happen to be =
whitespace or braces, then there's nothing to prevent the patch from =
being applied incorrectly.
>=20
> Here's a particularly nasty example of this happening completely =
silently (compile step works fine too), with security implications:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10450
>=20
> I think this absolutely needs to be fixed. The downside is that this =
will break a lot of patches across all layers - after setting the fuzz =
to zero in oe-core we have 87 recipes that fail to be patched. Maxin and =
I are currently going through them one by one and getting them fixed.

perhaps a list of the recipes, with steps to configure fuzz factor on =
wiki would enable other folks to
fix them especially the recipe maintainers should care.

>=20
> Regards,
> Alex
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1A3F1D3A-449C-400F-ABF9-BCB53103ED0A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgKSs0ACgkQuwUzVZGdMxR+xQCdGaWl9kCDDxDXl8QGOFRMUMKH
p5gAn1mCevm/eb7B1icYwpb4HwMzDJVZ
=H4zG
-----END PGP SIGNATURE-----

--Apple-Mail=_1A3F1D3A-449C-400F-ABF9-BCB53103ED0A--
