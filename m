Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A756E00C75; Mon, 28 Sep 2015 09:08:17 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D36E6E006EA
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 09:08:13 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so182048695pac.2
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 09:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=MnkBiQd3T6h3s+W0TXG0Y3U36K5v3zNS9KtKq67+kIc=;
	b=QWcC5sIjFCV6OEHJ5JkTGTXN/0E7u3xN2S+2vZQQngfeMNAvoDccBOXTcAhlv1hTa7
	iFMkKAh79PhSrBiqmBMfk9oNtuhbYYy2j36xn+w/mMSRR3kptNCx6hxCo/5xfmlGFXke
	ugw2JXhL/d8j9PnvFqztPNEIKTqqKfpBIsNgOdMQ1yeasBJXVNXcxwcz8jyeer8+RCD0
	G3+fH3LctMbDsym3V4u9LecQCriZ4fTitDDqJvdn1f9PNJtZp6P8ksEGDdJx3JxtcmGG
	QdVSutfX+wNLnFs93sFqYssYiAsZdofDwWAPKkCjIjBii7541Xcmg5tSHARKm/8BZa1L
	iQzA==
X-Received: by 10.66.189.69 with SMTP id gg5mr27749567pac.28.1443456492969;
	Mon, 28 Sep 2015 09:08:12 -0700 (PDT)
Received: from ?IPv6:2601:647:4c02:370d:55c3:e462:f5f6:9d1b?
	([2601:647:4c02:370d:55c3:e462:f5f6:9d1b])
	by smtp.gmail.com with ESMTPSA id
	x10sm20338341pas.12.2015.09.28.09.08.06
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 28 Sep 2015 09:08:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <560958FF.4030200@mlbassoc.com>
Date: Mon, 28 Sep 2015 09:04:02 -0700
Message-Id: <0FACAA8C-B9BB-4776-9254-89C7430F1629@gmail.com>
References: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
	<560958FF.4030200@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland: Fix multiple inline issues while building with gcc 5.x
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
X-List-Received-Date: Mon, 28 Sep 2015 16:08:17 -0000
X-Groupsio-MsgNum: 26596
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EA9D17D6-62E1-4146-92A0-7C5466FB0E19";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_EA9D17D6-62E1-4146-92A0-7C5466FB0E19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 28, 2015, at 8:13 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-09-27 07:34, Tom Doehring wrote:
>> Building userland source with gcc 5.x causes multiple issues such as:
>>=20
>> vcos_thread.h:186:15: warning: inline function =
'vcos_thread_get_affinity' declared but never defined
>> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
>>=20
>> The following patches fixes these issues and allows building userland =
on the current
>> poky master branch.
>=20
> Are these patches compatible with older GCC, or does having them
> require using GCC-5?

they should work with older gcc equally well.


--Apple-Mail=_EA9D17D6-62E1-4146-92A0-7C5466FB0E19
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYJZeUACgkQuwUzVZGdMxQN0ACghfCng10iZjF9rhudnW6P7yz/
ywQAnjkviuBF1MwEIH/Q/k3Y6JP6j/RG
=mT4O
-----END PGP SIGNATURE-----

--Apple-Mail=_EA9D17D6-62E1-4146-92A0-7C5466FB0E19--
