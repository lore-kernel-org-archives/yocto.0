Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0690E00EBE; Tue, 16 Aug 2016 11:56:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DFF1E00EBA
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 11:56:00 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i6so5900343pfe.0
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 11:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:date:message-id:to:mime-version;
	bh=s0mVOUr8peSL7yjKVbz6jsRgbjOh54NSigpC6GzHdVU=;
	b=C1vSK+xcg+4ZAA9/xgd/qS11XiHYn+A6CV79G9ShVLF/N8lBB0qkCv9asHEeW0OnSg
	R8846dMSK92ERd2cK+Rj7JYyJnK9QueppTjN9gEJ6puQ6COGZ0akVRmo8/cWUfJ+B7rM
	REfIKs01U6sIIphPkmKeHB46/yPvxSrRxxYQSGAK873/S41mAXudltI79bSCOH8qGr7D
	dxG4BN+obb26g0yT0t2d27YNdlovPTZzuQDXFErbNFjawOpsq+MtpNqCpEvSs98dXRKH
	mSlMRiH0DumROd4H81/FH3lftdXt+w72IYOmXeGDWwwgFcPoc+ciJPU2sbS/d13ucbFo
	sr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:date:message-id:to:mime-version;
	bh=s0mVOUr8peSL7yjKVbz6jsRgbjOh54NSigpC6GzHdVU=;
	b=O/07KJX1OKJiwpuOdFZ3hSWFT9uOB9HqcbTOHKcreQb8wtnzHO8gBH1uPEUEe149ra
	508hRnXrAIZz6iQTaaEaMDIII1+rb8WGwdWVtk1TRDc0Vu8aYIQqAikfzmXAgN/Gz+NT
	pe5rOB8rdtgtJBzGt64IbkYIMeiTI6RMxbZJaQB3aIpX6FwAAYRqtxts2MwRA+F2XWHZ
	XWvsDR19iYYRniKZFDBsW4sTNqVhAzcO6AQyxAhqq3U0dw9vWFpD0WI4fLsZieqA02ue
	weF71IXkthnlaZ8K4FL0DSuHBPByPnGG1aJE9j54T8gBqjC+vO0xh0EY3HO18rkYiXzQ
	Ivwg==
X-Gm-Message-State: AEkoousmWZIP4wx8/XV0Q/e1DOFROD5O4GlUob0qTFSaCHMRxUImeBlaR+gnl6rYoJj6Xw==
X-Received: by 10.98.155.17 with SMTP id r17mr66757446pfd.24.1471373759731;
	Tue, 16 Aug 2016 11:55:59 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:8111:5203:81eb:cf56?
	([2601:647:4c00:3edf:8111:5203:81eb:cf56])
	by smtp.gmail.com with ESMTPSA id
	wp4sm41239619pab.15.2016.08.16.11.55.57
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Aug 2016 11:55:58 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail
Date: Tue, 16 Aug 2016 11:55:52 -0700
Message-Id: <888B09F3-F9A2-49C1-86E8-E33FA1FE6521@gmail.com>
To: OE Core mailing list <openembedded-core@lists.openembedded.org>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [RFT] gcc 6.2 RC1 update
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
X-List-Received-Date: Tue, 16 Aug 2016 18:56:03 -0000
X-Groupsio-MsgNum: 31506
Content-Type: multipart/signed;
	boundary="Apple-Mail=_60A181AB-1F40-49E5-9DA6-3E495C0879BE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_60A181AB-1F40-49E5-9DA6-3E495C0879BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi All

I have put together recipe upgrade for upcoming gcc 6.2 release now that =
it entered RC phase. With gcc 6.2 the recipes are using tarballs instead =
of git fetcher as promised :)
Please help testing it out in your setups and report any issues you see.

The commit you need to cherry-pick for OE-core is this one

=
https://github.com/kraj/openembedded-core/commit/0319b603761a16e65d7043361=
12c3709a8bf771c

Thank you for your help

-Khem

--Apple-Mail=_60A181AB-1F40-49E5-9DA6-3E495C0879BE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlezYb0ACgkQuwUzVZGdMxRYUwCffgJEKqKH7GnFY0aUY4sEj7Jq
Kt0An2bD0CIuZBj4U+0pJh6u+Wi+1wLq
=7tzg
-----END PGP SIGNATURE-----

--Apple-Mail=_60A181AB-1F40-49E5-9DA6-3E495C0879BE--
