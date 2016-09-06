Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49725E00D4A; Tue,  6 Sep 2016 09:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BD8E00D3D
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 09:54:02 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id x24so1704331pfa.3
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 09:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=XuxZmdgDrGwUaO4LHBUZdQljM9fdPtfL6qhFM77P+4I=;
	b=JEM9h++3gsLipAvE5BfWA6MiBZht/U8ToFgSzTLFhM3AUfX901Ns1hXODLKpmqasp1
	TJIILYNwToGpzEJLR7y0PeWxiZqFkf5G8KGaNG8Ua+9YjsxlmHfCXs7jbjeJbd1fFhjT
	rol9t0o8Wd2HA3jXlG/mAE2oJCyjxSCnTrApmW+3ml4bGq3GuhiaAZcQO1Rzz/56vDnc
	UiotiYYJm8ExyzQmUszFUQ+YsAULQLImksdi3WNfrXR5i5/ufOO5wsP6HxKh1ulXE9f9
	5omGuV3W/LuVcBmYwtdzmC/WN1hOY50jD9O5EGKTcRrhsKHvNdvM4RHuD89jrFKn3i7I
	+fFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=XuxZmdgDrGwUaO4LHBUZdQljM9fdPtfL6qhFM77P+4I=;
	b=ggpRBSWDocPFzprY+DjiaHfjb7KjFiS43egQmT4hhW8sSCQAy8lJMQUUICci/eV75k
	idcmcToQVjsvTuxuLf5+BPJKHGWfx1qf3rpZ92wLK6zYwu7WGT1+bGu2iK+rSk84MZqd
	Bfb4RNLhZw+siw8XYPDkex5QlnUkDe0s8gTR2SY9vpRQpXamXfVVFDBgV0yug2bKxKh6
	tch/y0ZhrPSILiW3GQZax6oLvwfITUgqxC8Vo8feiJE/7hR9KJqcIuj/26VHROlLaQ9y
	GKEM2c5vY6iJvTirhLlb9KjpUMioMgMwMs9LT+Dp3FnNXRZyfKect6u3nymWj4Kv7K2k
	Sy8A==
X-Gm-Message-State: AE9vXwMQjTNK86vZNN25yiBBwj7DdfcDXGqJylIYQxQUxN9mKQS8jy68nXms1UcOfLEZGA==
X-Received: by 10.98.147.14 with SMTP id b14mr73940504pfe.103.1473180842260;
	Tue, 06 Sep 2016 09:54:02 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id 3sm26260244pai.48.2016.09.06.09.54.01
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 09:54:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1472474741-22678-1-git-send-email-sujith.h@gmail.com>
Date: Tue, 6 Sep 2016 09:53:59 -0700
Message-Id: <EB023E2B-852D-4D7B-86D8-3E5B7D6606AC@gmail.com>
References: <1472474741-22678-1-git-send-email-sujith.h@gmail.com>
To: Sujith H <sujith.h@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org, Sujith Haridasan <Sujith_Haridasan@mentor.com>,
	Christopher Larson <chris_larson@mentor.com>
Subject: Re: [OE-core][PATCH] ruby: ensure that .ext/rdoc is gone in compile
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
X-List-Received-Date: Tue, 06 Sep 2016 16:54:06 -0000
X-Groupsio-MsgNum: 31801
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F7E970E7-D438-4F81-97D4-AB0B56618379";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F7E970E7-D438-4F81-97D4-AB0B56618379
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 29, 2016, at 5:45 AM, Sujith H <sujith.h@gmail.com> wrote:
>=20
> From: Christopher Larson <chris_larson@mentor.com>
>=20
> rdoc gets unhappy if this already exists, so remove it before =
building.
>=20
> Without this, it's possible to hit this error:
>=20
>    Directory .ext/rdoc already exists, but it looks like it isn't an =
RDoc
>    directory.
>=20

patch is fine, please post it to openembedded-core mailing list.

> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> Signed-off-by: Sujith Haridasan <Sujith_Haridasan@mentor.com>
> ---
> meta/recipes-devtools/ruby/ruby.inc | 4 ++++
> 1 file changed, 4 insertions(+)
>=20
> diff --git a/meta/recipes-devtools/ruby/ruby.inc =
b/meta/recipes-devtools/ruby/ruby.inc
> index fde67e9..d8f6882 100644
> --- a/meta/recipes-devtools/ruby/ruby.inc
> +++ b/meta/recipes-devtools/ruby/ruby.inc
> @@ -37,3 +37,7 @@ do_configure_prepend() {
>     sed -i "s#%%TARGET_CFLAGS%%#$TARGET_CFLAGS#; =
s#%%TARGET_LDFLAGS%%#$TARGET_LDFLAGS#" ${S}/common.mk
>     rm -rf ${S}/ruby/
> }
> +
> +do_compile_prepend () {
> +    rm -rf .ext/rdoc
> +}
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F7E970E7-D438-4F81-97D4-AB0B56618379
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfO9KsACgkQuwUzVZGdMxQUdwCdHGx+0e2aH2860U8xpzSM5qjw
1CYAn2zCH8txkrNm2FRrU2baZQmo7nvi
=n8Bg
-----END PGP SIGNATURE-----

--Apple-Mail=_F7E970E7-D438-4F81-97D4-AB0B56618379--
