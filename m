Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FE13E00CE5; Fri, 23 Mar 2018 00:31:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pawan4749[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6909E007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 00:31:42 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id e123-v6so7348508oih.13
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 00:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lBMajm7QdlWVvCD1UVgI2wmsv/zfa/oQyqfLf8Y1Hj4=;
	b=Bf0OB1TAdhuqDlgPHQ5KjBdyWXK0AX98R5XV3TZnYENbLYRkG5WdxVL1sG5kl0VtKc
	xn77zPTmbF8ixGFT/eknNFD3tgqRVpEfoN0vuFWhLWQFROy6BoQ9ina0R5D1ovp5xbnd
	8zD5ZVYyut96mo752nnXx8Ms6Tecwe2tdRTlWZZnXBwJtWRmMn+7YO0wN/2UQOMgKPgH
	BsU7IJrSp0pc/yOJQ5ZEV62jP8jhwJty089i6pi3X5z6xT+0SIpNowQ/N4V50P0PiDKm
	+xuDDWwsOggnsPgSl+ZOVpeQFrF9GTrPJ56NGSu+bucOjsgdBOw6sGM1iXcTSrgSzXVu
	j+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lBMajm7QdlWVvCD1UVgI2wmsv/zfa/oQyqfLf8Y1Hj4=;
	b=LhheVVSVR1WoELKLLTUwOVVFqNbAwYhqjc5V3spQATMsqCAfFvrlq1eieIsV2LTq3L
	X28S1focke1/i0pMOV0CgGtIDAgTc1Q/xWXO0Yxd8vaDsiRyjnmXtYT1d+szzRczPRK1
	fqZryFKA+HX/pfyoqHSWr+bIJuGt7wg5i4+ALqzZ+tbpKazXQ/kqIfRwMqH42Xx97PC2
	SZ09MS6mTZaKjb5gE1uj9JlR+mGV7qz8otWTDo7sYL9Bru5ChmopcDz+lksrpeJK60KN
	oasi8XYTgYBQqw9QHaqD9QnER7puby9Nc2ipJpa4d+dPcj1o5cOBkwMwIzhpvS3IZVZR
	EQWA==
X-Gm-Message-State: AElRT7Hx9V+oJHs3zLd6MpIVLbOtj7/vvAK2wXxt0ZMF3T/tDdSp3a3W
	gNpANYrSShGQH9V1Wpw/oJEP7hmhQKNuZF2vcqE=
X-Google-Smtp-Source: AG47ELt06QMe37o/NpeTCZTKshhVm8LhHwnV88sKLjRygzsECzHJeedGH2wyhRD1V+ay6y4a2Iqa8HlQTqui486ObbA=
X-Received: by 10.202.227.138 with SMTP id a132mr6290690oih.287.1521790302096; 
	Fri, 23 Mar 2018 00:31:42 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Fri, 23 Mar 2018 07:31:31 +0000
Message-ID: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 23 Mar 2018 08:41:56 -0700
Subject: Bitbake failure:
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
X-List-Received-Date: Fri, 23 Mar 2018 07:31:43 -0000
Content-Type: multipart/alternative; boundary="001a11c0146e6113b605680f6ab5"

--001a11c0146e6113b605680f6ab5
Content-Type: text/plain; charset="UTF-8"

Hi team,
When I tried to run (bitbate -c fetchall) it is giving error as
"target do_fetchall is not found for image core-image-sato".
How to over come this error.

Regards
Pavan.

--001a11c0146e6113b605680f6ab5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi team,<div dir=3D"auto">When I tried to run (bitbate -c=
 fetchall) it is giving error as</div><div dir=3D"auto">&quot;target do_fet=
chall is not found for image core-image-sato&quot;.=C2=A0</div><div dir=3D"=
auto">How to over come this error.</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Regards</div><div dir=3D"auto">Pavan.</div></div>

--001a11c0146e6113b605680f6ab5--
