Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A90FE00D3D; Fri, 22 Jun 2018 08:33:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4DA1E00972
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2018 08:33:05 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id z16-v6so4527148uaz.10
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2018 08:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jwNjvqcxpie09prm+eZwYwXy5SrZhb1bQS71Jlv/oMg=;
	b=cl9E7N/sb4hr4ZR2din3lOCsHIxhQlYT/o451ZSXbOn+lzJ+BhvSGKA4RFXNkBS7C8
	/rrZGiNY8OJV0cZmc5Kd9E8w6mw1RLqiqJzXxVOTxLczIMSczV5QQrh9YgVYuwWeDdMp
	qZVpAaS9KWTu3+pAkjs6LNloLNaKG/vPIzxjeZ9gxUjjjSy/I5iEvTs35MOrrzBmc21h
	T7cLg44XGYeHkmdGXYcgQLWulRpSOsiXaCUb6199RQJnUP4oqf6xBY3SagbWpuJcBZgv
	ahv9R1Tx9Bj+cAWt+nFlVk6Df7E4VoGpnGrQrxdnphU/atTtTZ3jbSZ8NrZH3RgAD3EF
	a7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jwNjvqcxpie09prm+eZwYwXy5SrZhb1bQS71Jlv/oMg=;
	b=ijctOAsYpDrPsgC8AoJKDzQ3axS3N3/BSDZDkpySLLRfsSJPKKxoU5BdRvLDojCntV
	MXFtbKfbokADRSrSwZEkcefrOI4r9eIzjb/dYx78GUp69aHEgh3daWmi3gNLHb/dWOQn
	1nbutrc2e7wMJkSJuwPkdsTTfHzEqrlgY9ur2dv9Wm9bzL9blJIJw3repgxZzVfWThrZ
	h8uHWzI+2HrXeksdDBN9KHKBGHROFPwPBHMuwLRAffgcpUlIe++PEs/d+Hi/aaTxSroL
	NRnl5ELPLR4R65qU7oK7k7+guz/25Eynjl7eaECXuDRKaiYV8xEtPazKlNcd80b8RgTm
	zUbw==
X-Gm-Message-State: APt69E2T8WTSBS0nCgRDzRHx3QVDXsQVb5zIA/anfeiyvcXlE2aqbXsF
	3LiKraeGPC7clKnExucgebN24t3HH+ipsy0EDfg=
X-Google-Smtp-Source: ADUXVKJ0vAseGkPfZBo87qUL3jQXaSeermfkuBKBbSWQYMVEkTLBlmKT4QGdJIvu0DHc63XezOM+AzXb+Cr+pYc4q5I=
X-Received: by 2002:ab0:304e:: with SMTP id
	x14-v6mr1375503ual.80.1529681584619; 
	Fri, 22 Jun 2018 08:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <HE1P122MB0090894C688B6F014F3ABE50D6760@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P122MB0090894C688B6F014F3ABE50D6760@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jun 2018 08:32:47 -0700
Message-ID: <CAMKF1srp7ONCyBNnt3y72uG1dcfRe+tKeg5H_M09WD=5Je6DwQ@mail.gmail.com>
To: carlos.bejar-colonia@philips.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Rocko: how to remove python3 from target's rootfs
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
X-List-Received-Date: Fri, 22 Jun 2018 15:33:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2018 at 8:17 AM Bejar-Colonia, Carlos
<carlos.bejar-colonia@philips.com> wrote:
>
> Hello Yocto Team,
>
>
>
> I=E2=80=99ve upgraded my Yocto system from Morty to Rocko and I=E2=80=99v=
e noticed that python3 gets installed in the rootfs, which I don=E2=80=99t =
want (it takes a lot disk space)
>
> I=E2=80=99ve noticed that when I add dhcp-client package to the rootfs (C=
ORE_IMAGE_EXTRA_INSTALL +=3D "dhcp-client"), python3 gets installed as well=
.
>
> However, with Morty, python3 does not get installed in the rootfs after a=
dding dhcp-client pakage.
>
>
>
> Probably someone has already done this, but I was not able to figure it o=
ut. I tried: IMAGE_INSTALL_remove +=3D "python3-core", didn=E2=80=99t help.
>
> Any hints on how to remove python3 from the target=E2=80=99s rootfs (with=
out removing dhcp-client)?

when there are scripts in packages which requires a certain kind of
interpreter e.g. perl. python. bash, sh etc. system can autodetect
that if interpreter is specified in first line of script and add the
appropriate runtime dependency, since this script otherwise will be
useless on target.

I suspect build for dhcp is adding such a file into dhcp-client
package which might be resulting in this implicit dep.

So please check it in the build area for dhcp especially under
packages-split/dhcp-client

for any such scripts.

if there are any and you find that these scripts are not required for norma=
l
functioning of dhcp-client on target then move this script out into
another package where it might be more appropriate, that can eliminate
this rdep
>
>
>
> Thanks,
>
> Carlos
>
>
>
>
>
>
> ________________________________
> The information contained in this message may be confidential and legally=
 protected under applicable law. The message is intended solely for the add=
ressee(s). If you are not the intended recipient, you are hereby notified t=
hat any use, forwarding, dissemination, or reproduction of this message is =
strictly prohibited and may be unlawful. If you are not the intended recipi=
ent, please contact the sender by return e-mail and destroy all copies of t=
he original message.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

