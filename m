Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7254E00BEB; Sun, 11 Dec 2016 23:44:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434FCE00B96
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 23:44:34 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id f188so32614490pgc.3
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 23:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=bBUSyUkzW90vnw/xEW4tX5PzmUbhMLS2j5Y/SgUpwNE=;
	b=IQH/ioyVpdXz9spV1StXo+6GHqJO7IAVp+dH5a2xpkRDRTfhYqFtYRAqChlk1XKu4e
	FqfjejpfCEcPG7bliESPVINZbyFlyols+05tc7ccorIek9qeNaKjgECFWEqn5l6yY9EC
	73FVZ8D3mQ73Rsyv6ziNHggbbLQGfjcTH93PO/70gQjLKYfiej7Gz6aMD42RZw2zqF4I
	pEocO0vVyabiDqJ1GWRn2FiGhMEhYH/FaK5I+LtxA2bMuN6hj3uERBHCuA/+jBO/POKK
	qksjTooRFdrnMz3HU39MO2uV1DAjDgRsrXKu9v9fKOD5ESIb8Pu/Z3I/b6A8QqWWHbX/
	I7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=bBUSyUkzW90vnw/xEW4tX5PzmUbhMLS2j5Y/SgUpwNE=;
	b=XvdMXLgyPFIFsYQUl42LSX47MninzUcF6T1drp5G0fTFnE3wz//BPTAVuyC0twmmqW
	pqvRSdKSwwNpNynCE3IJPe/FyiBwLBHcW4jaVC8m0AGKaDMjTNAZ+286BOgl09aJma9f
	CrN78b8gEptz3nw/+zye8NHcjFm7VLutUbqOyNNuRrXs2AezWyHiQGRgTfPoyALllzPs
	7YrAFB93Ch+2gZllsY5kyxp1Jq0rSf4eoDj6qm9aVAvBZGAyJP5VYQJDAfAsVxFdHYtP
	P9lGpsHYhdGGThkb/rbZV1BYjTb8Quc9D/EeA9dflOIDsQU3ghS+TM5rOqH1MDhOwAo2
	kK6Q==
X-Gm-Message-State: AKaTC01uWOpRMmvl06IW7Q2NTsODuQmjVbetxaH3OxjrbMute4V54c/1ugUD0RdE0jjl2w==
X-Received: by 10.99.44.84 with SMTP id s81mr164954383pgs.153.1481528673974;
	Sun, 11 Dec 2016 23:44:33 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:7446:7fee:3bbb:1fb9?
	([2601:646:8882:b8c:7446:7fee:3bbb:1fb9])
	by smtp.gmail.com with ESMTPSA id
	y134sm74082213pfg.81.2016.12.11.23.44.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Dec 2016 23:44:33 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1481115648.19291.5.camel@toganlabs.com>
Date: Sun, 11 Dec 2016 23:44:55 -0800
Message-Id: <35A37D50-BEAE-49AF-A826-159CDB02F287@gmail.com>
References: <1481115648.19291.5.camel@toganlabs.com>
To: pidge@toganlabs.com
X-Mailer: Apple Mail (2.3251)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Ignoring Fetch errors for optional source.
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
X-List-Received-Date: Mon, 12 Dec 2016 07:44:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Dec 7, 2016, at 5:00 AM, Beth 'pidge' Flanagan =
<pidge@toganlabs.com> wrote:
>=20
> I've an odd use case that I wonder if anyone has a work around/way of
> doing it.
>=20
> I've a client who has contractors who can't have access to a certain
> segment of the code base. So for example, a recipe will have a SRC_URI
> for the main bit that everyone has access to, but an extra src_uri =
that
> some people won't have access to.
>=20
> I want to be able to just ignore any fetch/unpack errors if that extra
> src is unfetchable. Thoughts on how to achieve this?

You can  append them via bbappends in a layer of its own. and control =
the access
to that layer. If the layer does not exist in bblayers then those repos =
dont bother fetching

if  there is a case where these additional stuff is must have then =
define

SRC_URI +=3D =E2=80=9C${ADDITIONAL_URIS}=E2=80=9D
ADDITIONAL_URIS ? =3D =E2=80=9C=E2=80=9D

and let the layers fill this variables via bbappend and if it turns out =
to be empty in the end
you can raise parse errors,

basically look into RDK, there are several examples of such cases.

>=20
> -b
>=20
> --=20
> Beth 'pidge' Flanagan <pidge@toganlabs.com>
> www.toganlabs.com
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


