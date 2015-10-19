Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 224A8E00C08; Mon, 19 Oct 2015 05:08:09 -0700 (PDT)
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
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8322AE00B54
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 05:08:08 -0700 (PDT)
Received: by wikq8 with SMTP id q8so2497865wik.1
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 05:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=j7ortz94reAMJq8+4dMFxaHbqcNVgSGIc3Q63y5DD98=;
	b=ZsI6CddZDDYUw36LDKdMqsn1ZNtyhNd6YbvM+8iYQQxZtFYQkTcBUWK8HWGQVinoEB
	arMG2JEgKDLHCwtFdUWcNGSwEpTZ39kc3wezSjR9s7m7MoXataH7HNeRrzNv+alLeG1q
	Us5Bv71quSRqNGmHeclOTK4u76BU3Afd/kwjpzOfBq+WHx4QLripxFvW+vc/QKu7oBe0
	vTRX6ZBPAxnS5XoRKI5C4qILgjLJS7qq4d7RQHpw30t3PtMb9IVu3z4aZbGs69Gx/PxO
	vgKGw+s/9QU2kjR2RW7PpiEzXLPQu+5d0hye8AgP8lXrpE8NdRShV9cED3Ar+uOW+3JJ
	wM8Q==
X-Received: by 10.194.123.2 with SMTP id lw2mr36835154wjb.48.1445256487059;
	Mon, 19 Oct 2015 05:08:07 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	gl9sm20255256wjb.10.2015.10.19.05.08.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Oct 2015 05:08:06 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 19 Oct 2015 14:08:12 +0200
To: atulkumar singh <atul.singh008@gmail.com>
Message-ID: <20151019120812.GA2549@jama>
References: <CAH21_vGLfHN=hYHeWNA3Epsf0QPpnOg47NDtE7Do5BsBz+vuFQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH21_vGLfHN=hYHeWNA3Epsf0QPpnOg47NDtE7Do5BsBz+vuFQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Nightly build and world build
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
X-List-Received-Date: Mon, 19 Oct 2015 12:08:09 -0000
X-Groupsio-MsgNum: 26898
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline

--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:
> Hi All,
>=20
> I am going through the mailing list and I found some communication related
> to world build and nightly build.
> I even search in the documentation regarding the same but didn't found any
> useful information regarding the same.
> Can anyone please tel me what is nightly build and world build and what is
> the difference between the same.

My world builds are described here:
http://www.openembedded.org/wiki/Bitbake_World_Status

See link on first line.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYk3SIACgkQN1Ujt2V2gBz8GACfaTVH/UmZY0ult2EYqRZTaV1h
6l4AoIsWlglIIm0NTKVGKTsk3JmZuicS
=HkeW
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--
