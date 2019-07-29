Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04AA6E00CB9; Mon, 29 Jul 2019 00:24:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50012E00951
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 00:24:47 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id b17so41323628lff.7
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 00:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tibbo.com; s=google;
	h=from:subject:to:openpgp:autocrypt:message-id:date:user-agent
	:mime-version; bh=nhHhhUXcR/Kc39xa4jNui9R3lkrhZ8DHqjUCoUCV9bw=;
	b=XRJUcAmJrLwTYiA7vgN++mn70G779DzrInHWViS3TVsFQPvlRfv494XJxAPlLkz12M
	vw3dZ4xWNQ77zZdZtB+NyskqcOfLVbz2GcVXXGKP84uRvW2KKcL19P2YPvw9H1ahJGbA
	mrdRs2w1Tx5gocO+2jmG4M6/FebRvjNQE/53R6HdxHQSx7+zuNp8XeXNOTcDI++DhmEz
	Pe+qAC/T6EBt6UVWKo1Neh3bDd4EPKa593LwgvfxdpzsnvWvJZqlWfhICD+BYuBLcssZ
	HdvNqRnGuszZhUeXmmWsp60ywhppkgdea1CSY+1ql9oZLInD/Pb3dWZPswDbgb4ryFh7
	8SnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:openpgp:autocrypt:message-id
	:date:user-agent:mime-version;
	bh=nhHhhUXcR/Kc39xa4jNui9R3lkrhZ8DHqjUCoUCV9bw=;
	b=LSVrhNVjk5hgVOri8a62OhcosCTA4yONdzTSnFg8hA4kxmIWl17qrxbC0/nwJKCQfe
	FFpWQEoFln2Jz2Hl6W/RBAkZdsv/7uXVUCV+Ix0ylFbq2wCyBx2+fYg1jVexOIlcFg4Z
	hRwg7IeAVazyB7GnTxyzCQpOaL216ErVZeuFtzCY0G54akIWnWw7pfJwvWdTxHBSQtbw
	2v0bFUtOPq5rpV/4wSZ2+0S5JngVxGSrEQTiBIb5t7dtGygiif+teKu7Q2d3+lIxqzum
	/cjV+nFiellSXFSP1qRDQGF/TttNPp4u2Roc4zxv8Dq+q2POoQ5eGopFbaEoCXaiNYLJ
	gKlQ==
X-Gm-Message-State: APjAAAUOeSNhFl6CBI7J2jm6ZBbahonc8GKSl8/LrdGdpoOMugV/lfJi
	azrr7A2KdK3udMe2iwEmle2vZQDdxp1hgw==
X-Google-Smtp-Source: APXvYqxRZBuYsm0MqB3VuBxaJVDOjE+PfLi7nwaiRq9LR22CncBmftr5gEw6F1m25gpm3FsB8coENA==
X-Received: by 2002:ac2:44ce:: with SMTP id d14mr51260857lfm.143.1564385086088;
	Mon, 29 Jul 2019 00:24:46 -0700 (PDT)
Received: from [192.168.77.88] ([176.114.204.12])
	by smtp.gmail.com with ESMTPSA id
	q30sm11942162lfd.27.2019.07.29.00.24.44 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jul 2019 00:24:45 -0700 (PDT)
From: Dvorkin Dmitry <dvorkin@tibbo.com>
To: yocto@yoctoproject.org
Openpgp: preference=signencrypt
Autocrypt: addr=dvorkin@tibbo.com; keydata=
	mQENBFwXTLwBCADcf7vAki++kjlGJ+ydOjgzIVLn4XY1mlJOM4ldu5J2NSXl4dlRYtvgu/na
	2P5t+n7q6r3JlE40WvT6qln7Qx4Okjj1N7vL13PLujihSjU0E4g54pqTyNItPLazD/wTcXZI
	nGbj6fM8RI4Nr3M/qyLsbIoG83kvtMaCMFa9Ia9KR5ncGRnYl3/uDYeohxYBx82YhQCrHoJE
	IfQqW320Efy5F4KliU/ezH1KxCOkGWw91zh2VEZ4W+nnIby3QWi8uZMq/VP/q9i03Kksc/aq
	YzuDS1Wv97kOZhco7kZNHawaQYU4sBLOeMjylQfPlfs5b79OTwTNXWIe03MSZCTdsMCnABEB
	AAG0IkR2b3JraW4gRG1pdHJ5IDxkdm9ya2luQHRpYmJvLmNvbT6JAVQEEwEIAD4WIQSYWW5J
	7CaiEICalwub62lnmy63WwUCXBdMvQIbAwUJAeEzgAULCQgHAgYVCAkKCwIEFgIDAQIeAQIX
	gAAKCRCb62lnmy63WyPQB/461gUo5+SW/hNDtV3ahxFVv4wDKv9EcwItiIBzMfAPCTOYRs6Y
	QtBYsmoLf48/ohPqHojf4rmcrp+WjgKIkn64PhZV/jtNzIUKB4UP8ZfZIRA38qiSrJ2NGFAI
	Lah590BPNDbO4kkpc9G+QYDJJR7Zhz5wF5ppNdC2Ftmvn3eNPGtAC0Ygghy6rTluazcrfNwK
	ayuVN3aUnwmFgVgQlGX9SIxaN3jaqosOcNYixUfJ4wdKevbNtZ+ZpvQizMyhNOHIHRhsyA7m
	eqAE7ZdYHD+ydsmNksMjMFaw7r7Mn2JgUkZQwykbsI63GTxi9yXmPOao6QvN4RM4lr7L2vzR
	rIBJuQENBFwXTL0BCAD6gcvCCRCJ05QnuUB/spY4eKtpU+/gH5vPG++b2bPpcIhNjbNi2yCD
	i25oivfP3ftwfKjKtJP0A7G3EeowNqe1Ys30tQHwyCEesmzfoEqSB/39lL32FfTMiiLzim7H
	2LEZYhxeSveDUVAG8jACQHZBwukyZdobmA9h2dEWRJz0AKFlzJkJYaoA+3itH3o4G9jpiPgf
	Fa3siHGtiWN7cs6KA6A7Cty3Wpj/aT/rnbDIfoIoYYqt5efjNKux93EhSNF5Bx/8c8ySkIU9
	Lks70zrOF6+APpkJds6SyNWywGgB+aYQYc9bR04xmAiWHgyoG2AcVzWal4vkIvDAhRYgNNML
	ABEBAAGJATwEGAEIACYWIQSYWW5J7CaiEICalwub62lnmy63WwUCXBdMvQIbDAUJAeEzgAAK
	CRCb62lnmy63WwVoCADXLHRLw9FXnUdtiq6jyAfw84Hm+EuL2h5dF9j24eG7gFloiSG+O1kT
	agbVB879EvL4Ffwxno2Y7oAstN8SWB0RU+e8+Ljz0gKEJ5EvGDtm5f1S012BOWT0K7VAznpO
	anhvoxdh9xNS09s1bb4tQ3KkZPL62g61Ef69fXPltM0Uk/+JA8zIqcI0IPslFV7d0qCQsC7V
	+UmHm6aecaJHMzNibFfIlbDa5RP8SDVNlkiDiS57ibHjWX4Xoa71Q8owzm09CgEC+Xh+WqAX
	KKbtWsPMtPTz2CvzWSv1Rmy3DkTtAQqfectrPiDVz7wHV2rUz+Gp98xWW1ybvwFE70ufN4F6
Message-ID: <cfec84d1-ab9a-78df-b698-bad07e3b07e9@tibbo.com>
Date: Mon, 29 Jul 2019 10:24:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: NPM yocto build problem
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
X-List-Received-Date: Mon, 29 Jul 2019 07:24:48 -0000
X-Groupsio-MsgNum: 46111
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="HwJshh3VGOUDOXbEvB1nlWbgCO82rhioQ"

--HwJshh3VGOUDOXbEvB1nlWbgCO82rhioQ
Content-Type: multipart/mixed; boundary="3d5AOULA6qjTur2aqVYtrV8EHjYoTbSBD";
 protected-headers="v1"
From: Dvorkin Dmitry <dvorkin@tibbo.com>
To: yocto@yoctoproject.org
Message-ID: <cfec84d1-ab9a-78df-b698-bad07e3b07e9@tibbo.com>
Subject: NPM yocto build problem

--3d5AOULA6qjTur2aqVYtrV8EHjYoTbSBD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I see Jean-Marie made this commit

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da34d0d539e5f=
df341541fb628652d22289e80512

I'm experiencing problems building and installing more then one node
modules into image:

https://pastebin.com/CXPkqD8j

It says, /usr/lib/node is a FILE and is is already installed by another
package. I'm using RPM package manager in Yocto and I'm pre-installing
several NPM modules into my image.


Did I make something wrong?







--3d5AOULA6qjTur2aqVYtrV8EHjYoTbSBD--

--HwJshh3VGOUDOXbEvB1nlWbgCO82rhioQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEmFluSewmohCAmpcLm+tpZ5sut1sFAl0+nzwACgkQm+tpZ5su
t1tmpwf+IkP/98qZ3Ac0syw+uPcsKNs0+TKyZ6AUYuesjgO9c8S3FZ8+AdTV8DU9
pFeLZhwE3ClQ5iBDNPfsvKOSGrGGKfohB5iPKivWYhREX3V+G+fqDTO3uBvYYzeB
8oJZT36fjrE19Wz1p2/91ZWiVYmCpuzdo29bkcTMh7HYOlvmZxL9RpL/P0DuOSFo
ta7sb/wMFNF4erhktUcpN6RR4KPUUnNJNNVKz7QW/GKDomJnCK3tGlgj/NTRG8iI
FsQ7Y5pHepKKwCArh6IJ52vZ46z2jCB7i82KPPagLy2t1O2u4RUxIJWQCuJKX9J4
ompOOlUir0nI+cTNd38EpA4vPtssYA==
=iZ8P
-----END PGP SIGNATURE-----

--HwJshh3VGOUDOXbEvB1nlWbgCO82rhioQ--
