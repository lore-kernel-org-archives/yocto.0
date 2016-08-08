Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA379E00CD2; Mon,  8 Aug 2016 00:23:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633B4E00C2E
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 00:23:49 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i6so24530943pfe.0
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 00:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=8TvkB+3scMzEVNEEwSYaRSfXRMPXYZLc+9pOCghj4og=;
	b=mq2pWNkXpLJ0Uruc4v3RPx+QjcXAao1b4VZU/DPnGMaHvNm2jJoqSng+D5X1j3p8qo
	ZHePXhFQJcuuY911AdQheQ2fgCSXJMg0jYlkogoWpWW7yUt5Xp4MHFFMytVfFULtgDHz
	02A582WnlSfFrOej4Q13d0nlSeRJsti+M6NxwcR1tqs3t9xwIWB2bGNsCbxxZ+lSFcKp
	ftZhZrk3BUrbEkY4UVJvyMKNkGtso2sYyfVS0DZz8Kq4WfVe2lyNBAfsaY1sleuUAR2i
	lcNX5K1QstAQgL2f516y826DYCXExMDzUalPUWOu0Zh0HLNXODY9JZhYp/alR1zIptz6
	SlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8TvkB+3scMzEVNEEwSYaRSfXRMPXYZLc+9pOCghj4og=;
	b=ddCq7ffTkncfCJMDpc4PdWbqTtrDyDIoHBJmdC3OVllqdCefQzq8hBd1K1lAH1y1gj
	4mlQUGQ6IRTNAa0piJEyI8jAHcSi3WLmxlbo+KXXum0pw+GHY9dKmhDim5N+DGrFF01M
	XinQw6w9q7K4G/vQuIYmINQYccyuB0WcvHeEXVH+HEzRei2PLH7+/HepCR2ycpndrtJE
	rWzM/J9ZeaM7GMMCHRIQ1sb7Uki54yeYXsCdAXw8tcdh4WTRRRpPdI3UEQw/KY+jkiyS
	WtiPM3mIGeQkTfOi2LHeirzBNZzfUkqcTuTzb0RNU6WF0NpAWPjknR/UfviX5VwjC7Mu
	+Mzg==
X-Gm-Message-State: AEkoouuctn5kFFN8yA9qR+nXeUBjblqX3gaQYGw9K0t9QfB9GBkVzC7BZWy/C6HKxkUD4A==
X-Received: by 10.98.27.200 with SMTP id b191mr159482976pfb.111.1470641029528; 
	Mon, 08 Aug 2016 00:23:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:7ced:64fa:b426:f5b4?
	([2601:646:8882:b8c:7ced:64fa:b426:f5b4])
	by smtp.gmail.com with ESMTPSA id
	j2sm45323703paa.46.2016.08.08.00.23.44
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 Aug 2016 00:23:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1470637705.8166.29.camel@linuxfoundation.org>
Date: Mon, 8 Aug 2016 00:24:13 -0700
Message-Id: <8C207C42-3D61-4C3F-A1DE-F305AA6617BA@gmail.com>
References: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
	<1470637705.8166.29.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] binutils 2.27
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
X-List-Received-Date: Mon, 08 Aug 2016 07:23:52 -0000
X-Groupsio-MsgNum: 31408
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3EF67517-6E1F-45B8-BEA2-DB52E20A821E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3EF67517-6E1F-45B8-BEA2-DB52E20A821E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 7, 2016, at 11:28 PM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Sun, 2016-08-07 at 01:39 -0700, Khem Raj wrote:
>> I have put together upgrade for binutils 2.27 here ( kraj/master
>> branch )
>>=20
>> https://github.com/kraj/openembedded-core/commit/b98f5761d2285ffd773e
>> c6ecb901b799302ebd6b
>>=20
>> I have started bunch of test builds. but I would appreciate any help
>> in testing it out in your
>> environments and report any issues you see.
>=20
> I ran this through the autobuilder:
>=20
> bitbake world shows issues in libunwind (from gold?):
>=20

yes, however, use of gold for libunwind in OE was an escape route
where we were relying upon gold=E2=80=99s inability to detect this issue =
while BFD linker
was detecting it earlier. Now in 2.27 gold has caught up as well.

see
=
https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;h=3D6eeb0170bbb=
43ffb73e8f01b8b481adde8194c21

so now we have to get to nub of this issue to resolve it.

> =
https://autobuilder.yoctoproject.org/main/builders/nightly-world/builds
> /889/steps/BuildImages/logs/stdio
>=20
> bitbake world with no x11 also shows it:
>=20
> =
https://autobuilder.yoctoproject.org/main/builders/nightly-no-x11/build
> s/231/steps/BuildImages/logs/stdio
>=20
> Other than that, things don't seem too bad though.
>=20
> Cheers,
>=20
> Richard
>=20
>=20


--Apple-Mail=_3EF67517-6E1F-45B8-BEA2-DB52E20A821E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleoM6IACgkQuwUzVZGdMxROMwCghGSidA3CJlfwF8ro+4w2xkkZ
6J8An0xUwvG7CDGLUakN8VGjsfX+0IMR
=HGBo
-----END PGP SIGNATURE-----

--Apple-Mail=_3EF67517-6E1F-45B8-BEA2-DB52E20A821E--
