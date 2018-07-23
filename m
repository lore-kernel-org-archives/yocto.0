Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04173E00C74; Mon, 23 Jul 2018 08:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f54.google.com (mail-pl0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B92DCE00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 08:05:55 -0700 (PDT)
Received: by mail-pl0-f54.google.com with SMTP id w8-v6so342125ply.8
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 08:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=bqe3CjNPRQISeVbSKc0bwp8l5m/EDeapCOzqRMsO8zE=;
	b=FsiiFs31ffii0jJwnqCU7udRVN2O6RYcIkz0DNsguqYK2sYVq6Mtdoc7viDBy7WQX9
	ULoAwCjDmusleRIoWqdrKXeFoXuG3iFab15ujCdqfZkIyXdvtbsNhLePL1Ka1nzmQdaA
	dY1pKsm+YHigu8rwuq/8SixL3aFavZEB3WkVjSnxST1GH7sIm0KHjcVBXKhlUdoalRQL
	//015rghcF0GjckOuAAMdR/N/XHRtP8n5S/xqWUbuWmcg1oxqz8fYsLczJeyXybrGWVs
	xhUqyH12tSExCLyQIToAbgSvY/U2e9pBy9XfneIUCf1ha6IyoPUzXTQ1wHl0galO4r/x
	Ja0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=bqe3CjNPRQISeVbSKc0bwp8l5m/EDeapCOzqRMsO8zE=;
	b=lMontu3dcSJm2NHzWwL36TkE950lf19twi1zdPIQPiORrNOFJe4323LxpjuJmktTJt
	8NvwHojJuBbCNZlGiEa7rna6fk2BW7Ovovkbxde9UrBuqbVQ49ls2gXHCNFWkJOmhoww
	CabtFYvVbj+QysQjJPWEaCCA+HKQt5sMufqeTvL5N75IzxVUpaP4W+AtCoEpOVFlq8wN
	thsQqM6P47KyFjcm+3ANMiFdm923HiDy3iT4Kr2fRhKu9rjI1iwNGePb2nfLcbb91Rnz
	LrVc3brSnR/zoowRUCiss+nSvufTZH292GsPo4Y2IHa7oeiFkweXJkUEy7+am1Vz8H/b
	g2/w==
X-Gm-Message-State: AOUpUlERFZwP8NOlhYThqips54ldYqHVVHlv4SxJ+KiSXyEaWOszG2n3
	pzPlDvH3zKA1g1vp2/ySvcJoc3ew
X-Google-Smtp-Source: AAOMgpfV4wCu7i7l1vh2JxJmlsA/1AUPl4V0kJkBffTnGNbxmL0FjjFlUJe3uNyssf8tmiCfSbFIlg==
X-Received: by 2002:a17:902:9a01:: with SMTP id
	v1-v6mr13485563plp.20.1532358355048; 
	Mon, 23 Jul 2018 08:05:55 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	i25-v6sm8379427pfi.150.2018.07.23.08.05.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jul 2018 08:05:54 -0700 (PDT)
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>, yocto@yoctoproject.org
References: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <fa1281bd-1bb1-7126-d142-1ca4e599794a@gmail.com>
Date: Mon, 23 Jul 2018 08:05:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>
Subject: Re: How to tell bitbake my prefered terminal in for devshell and access bitbake datastore?
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
X-List-Received-Date: Mon, 23 Jul 2018 15:05:57 -0000
X-Groupsio-MsgNum: 41910
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="6VqvTWkBd4CdE9Xwd5NYGks02gQlvbCBa"

--6VqvTWkBd4CdE9Xwd5NYGks02gQlvbCBa
Content-Type: multipart/mixed; boundary="aaO1dJFK7g7PkRa8JnHTsza6wzDeqhwGH";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>, yocto@yoctoproject.org
Message-ID: <fa1281bd-1bb1-7126-d142-1ca4e599794a@gmail.com>
Subject: Re: [yocto] How to tell bitbake my prefered terminal in for devshell
 and access bitbake datastore?
References: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>
In-Reply-To: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>

--aaO1dJFK7g7PkRa8JnHTsza6wzDeqhwGH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

You can use the variable OE_TERMINAL to choose your preferred terminal.
By default it's set to auto and Bitbake figures out what terminal is
available on your system. Please refer to the manual at:
https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#var-OE=
_TERMINAL.

> Also, is it possible to access bitbake datastore from inside the
devshell(or devpyshell) ?

You cannot access d if you mean that, however, all the variables are
exported to the shell.

:rjs


On 07/23/2018 02:49 AM, MOHAMMAD RASIM wrote:
> Hi,
>
> when running bitbake with a recipe and giving the devshell as a
> command bitbake runs the devshell inside xterm, on my other machine it
> runs tmux.
>
> looking at the openembedded source code here
> https://github.com/openembedded/openembedded-core/blob/master/meta/lib/=
oe/terminal.py
>
> I can see there are multiple classes for terminals that bitbake loop
> through, but how can I tell bitbake that I prefer a certain terminal?
>
> Also, is it possible to access bitbake datastore from inside the
> devshell(or devpyshell) ?
>
> Regards
>

--=20
Rudolf J Streif



--aaO1dJFK7g7PkRa8JnHTsza6wzDeqhwGH--

--6VqvTWkBd4CdE9Xwd5NYGks02gQlvbCBa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAltV7tEACgkQhnUrlOPR
ybpYHQgAmSnWnejuTr83OUfAor+psowS0TciIkX9W/HQUbYkOx4s38ETHx9hC2ew
4IBjxYUrRWGNHICmXKBdNIDOHmo52IdTOw7fhSfTA++9MzrD2aedafd5CS9Vxgev
sOSUQRBHjmQP6nY5lQ1WYYZsupAZtiMF5vzeVHv7RsEm0QV6gxM7kRMIquJeC0DG
5ClfypWumi1JCxHVfbk1Y0Ha0+UEo2m0pEP5vnshvNAenwvZURO7EPhb1c33ppZQ
O0wsby+PXmqIhFNXg7Djk3DWQ4X2ObJbEVANoq1OY/Iw01GtmGayPLDX2SFkzG7N
KIf5RcOmcyvtA1cQbsgCnWTt5wF8xQ==
=KFqr
-----END PGP SIGNATURE-----

--6VqvTWkBd4CdE9Xwd5NYGks02gQlvbCBa--
