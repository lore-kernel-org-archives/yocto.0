Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 558C7E00D65; Fri, 29 Apr 2016 19:14:21 -0700 (PDT)
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
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80939E00DBC
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:14:18 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id 77so22644656pfv.2
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=6/TMeilkn0+CxSKjlJ5zha7WD3zwFNuAnUKGlSQz9Yg=;
	b=eDQzEBHBI/9tlui5/0H2qL91W02TJFZsWsvtMgoHKH9Sy0gXzBjJc42znid8iLll3f
	zSW+iT1mq0zi+UtHBRN6Rm+wG9q1lL5c9fadPrTMz9uYrRfzgFMUEL1lHqtxRX9LwWg6
	hdT+Hrx6z2N4LTITzuyCy/KP5EbAwzlpJy72cDk3gIhjLdHy6D2r4vk0uugJmyhHonYu
	wuVDdlITxmp1UIXfgy7v4GjsiMAAdJVwYxqKONW9sbmF6e7UpI/IgvQQFwWT8ad5k7Bo
	tbT/JC/yYWSxX6/1tn5GA/iyv3kYPJKuvy+gTFQ8tRXd0n5B3dUXjG6uy9WuwBUSMiZZ
	Jsew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=6/TMeilkn0+CxSKjlJ5zha7WD3zwFNuAnUKGlSQz9Yg=;
	b=T2Qbl9QWOdP2WI/mqpMq0R/K8jT+9sWKG4I4YfDDLierpCPoiRCg7422VDiPpJ7Tm0
	LVbOdvctiVHpg4HCEQ8DeOrfnWmZ4OnFsR540LtKMK+Gh2kHFkfazSYrH9eyy82UVoDe
	3jz1YkWy6Gk6JoeRH3IzfUL5/qW+R0se3iORZ9Lvp/HHXaYljozcw8Mb85cG5EzablIf
	7siF+NaofrIQ/gAwBk0ng7mj3xuUMl1WucY+1tsIrJMuybFzPgM8BsbFUFSo7C7xvpk2
	trp4zq2oERKp/M1b8gNbuBeo6sZm9jRETwTn2LT3gF9/YkEUg/4F9/D7fUVA7PEfjC1J
	8VoA==
X-Gm-Message-State: AOPr4FUeoFgC7x8EKnVjh95XOl1dt0ex0YaIqGQ4KF0qSf5Gfh1fv5eZmd9R8RGU+MH/2g==
X-Received: by 10.98.68.208 with SMTP id m77mr33889429pfi.25.1461982457503;
	Fri, 29 Apr 2016 19:14:17 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:9475:a54c:5e22:a356?
	([2601:646:8800:5a9a:9475:a54c:5e22:a356])
	by smtp.gmail.com with ESMTPSA id
	d78sm26691590pfb.59.2016.04.29.19.14.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 29 Apr 2016 19:14:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAOorjZScGG9kG48=kpzcQv0b5m5ztTX5HmmpaVfrjh4HFD9nqA@mail.gmail.com>
Date: Fri, 29 Apr 2016 19:14:12 -0700
Message-Id: <DDE13F3D-1ADF-4809-99A2-9D0A3430A22C@gmail.com>
References: <CAOorjZScGG9kG48=kpzcQv0b5m5ztTX5HmmpaVfrjh4HFD9nqA@mail.gmail.com>
To: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Help on submitting patch to yocto projcet
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
X-List-Received-Date: Sat, 30 Apr 2016 02:14:21 -0000
X-Groupsio-MsgNum: 29777
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1FE73BCA-8E69-4944-9AEC-DD8F156A91B6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1FE73BCA-8E69-4944-9AEC-DD8F156A91B6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 29, 2016, at 2:46 AM, SIVA SUBRAMANIAN.P <psiva87@gmail.com> =
wrote:
>=20
> Hi,
> Can any one guide me on submitting or upstreaming  patch to
> git.yoctoproject.org recipe? Thanks in advance.

Generally README of the concerned project describes the upstreaming =
process.
Additionally you can read =
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
for preparing the patch properly.

-Khem

--Apple-Mail=_1FE73BCA-8E69-4944-9AEC-DD8F156A91B6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlckFPgACgkQuwUzVZGdMxQZKwCfeSjUyZridVCGkSogofHsLKc7
AT0An11xh5LG2rAvXXeEX7KBPsN6mDti
=WTkh
-----END PGP SIGNATURE-----

--Apple-Mail=_1FE73BCA-8E69-4944-9AEC-DD8F156A91B6--
