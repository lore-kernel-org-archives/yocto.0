Return-Path: <eren@hambedded.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC716E0034C
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 11:04:21 -0800 (PST)
Received: by mail-ea0-f176.google.com with SMTP id d13so3215514eaa.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 11:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent
	:x-gm-message-state;
	bh=Uqejgx+1chnOTDSar0REJ4eIuG8nnfLW+ja+RiweF70=;
	b=oILKpV68ks1a3rP7mk5gIcWrRyQ/6PqgE+3IQ0WaKM9RCMVYM9RzuFgYGxGj4o9uoq
	H02o4GtmcFlVSEXDYwtWNYYeifyyAaNCFxXRYd8F3n0EVzETuQJdO6npWiBC+AP7A/DN
	AQiNQVNRj9pwNJk9qJ4HqtLptJOUM9uPJ/cRWKFVb6G6QKNwJPRiXhUcUk9b2y6s8s4n
	MSzhbAoDLA6k41Ymlxd5p/6og99GQWNpslcN63LmamkF8FQVWLegNyDFJOngdQW/5btd
	lPNWL3xV+VT7d/d4T9TDvy83oj7PxlmzXfCXpKbzQmKyg0/UB76csjQlb3xIT82gn5kS
	pbWg==
Received: by 10.14.173.69 with SMTP id u45mr25172107eel.21.1353956659785;
	Mon, 26 Nov 2012 11:04:19 -0800 (PST)
Received: from gmail.com ([46.196.117.99])
	by mx.google.com with ESMTPS id f49sm5033505eep.12.2012.11.26.11.04.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 26 Nov 2012 11:04:18 -0800 (PST)
Date: Mon, 26 Nov 2012 21:04:07 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20121126190407.GA69689@gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQloDzvHjpeSkRlWtyPzDv5kotAapa174kUMgzxt71yAcxNI7UUp684MLSg1BeQ+OsYVVuUL
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Mon, 26 Nov 2012 19:04:22 -0000
X-Groupsio-MsgNum: 10653
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 26, 2012 at 10:47:31AM -0500, Trevor Woerner wrote:
> I'm kinda surprised nobody jumped in on this one; either my question
> is so silly it isn't worth anyone's time, or I'm the only one who
> wants to add packages to an image after a full build. I know my
> question has nothing to do with trace-cmd specifically, adding any
> package after a full build results in the same problem.

I don't think you are the first person who wants to add a package to image =
after
the image has been built :)

The obvious problem would have been leading spaces in IMAGE_INSTALL_append =
but
you explicitly stated its correct. Normally, the class that's responsible f=
or
image creation (image.bbclass) depends on the packages defined in IMAGE_INS=
TALL
so that the packages are built before the image creation begins.

image.bbclass, line 9
---------------------
RDEPENDS +=3D "${IMAGE_INSTALL} ${LINGUAS_INSTALL} ${NORMAL_FEATURE_INSTALL}
${ROOTFS_BOOTSTRAP_INSTALL}"

On irc (#oe), Eric Benard tried IMAGE_INSTALL_append =3D " trace-cmd" after=
 a full
build and reported that it built fine. I'm CCing him.

I believe that it will be better to include your <image> file and the files=
 that
you changed so that it will be easier to debug. Mentioning your layers,
configuration, version of Yocto you use will also be helpful.

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://erenturkay.com/

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQs70nAAoJEOM7bMm6HhcTmE4P/1s48/IVVgI7ngHpmHABvHhQ
MLkIS/HSnV/B51x5L+U/8yr7reIbWKkneJqDg4fjFCbgKka8CaSs/HJb5V9/63Id
vlVYw0aKnBTNZ6t+YzHfL2s0pv61BrFH53jU5YAhmBd31xmENVB9Z12t2e8ZSKJf
T6Z8gRBBzok3Yo76Q9KRYj6QFsyjVMsrMlF8yI8ZjTKUrALxrLzJ7U2iKFltV4pA
G724bGow3wAAQZWh4XlAdQeXw7yI9xiNQJnIEVtAid2HZZcThWtnwjpnTc1TPnTb
WsM+w4McNPlVXieEGEp2kYDyKdRyaP92r+IY5aKKPLmGT6b1riK5W4MTRj1gZYAh
ahDUK9ae9LnIQjOTag4CRXxL3J6khPFxpObYLehS5FnQN99HN4LQ2eqHyhZZKDDL
u3LDVWPOSAxtpxofgrVtaorJpUdITEQirHbpxWFBgljxYOrP44Kzi65JWnoEgcZo
Uvjiwb5z5djt+oBNBjlD0j947BD2ipe23/SOI1UnyfvdgJFY6RbI09dlXHNsQZtu
YaB2bNHL+SztR43PnkSfXb7uGJkZuSvOaWbMSZikXjpwNBUsBYBYa5cI0R13SZm6
H5R2j4DNmP3yVpWJW3Kl7CB5c+pMHhRu4BxqQNXXTnAIBEIojx4sL03lqDEFuZB4
fw6BsQJMu1c5ufVWo6At
=OsEZ
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
