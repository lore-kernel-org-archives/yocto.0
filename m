Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426C6E0084A; Mon, 26 Jun 2017 10:26:22 -0700 (PDT)
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
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F21E0048B
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 10:26:20 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id b184so4008466wme.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 10:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LWepNCVmhiXxKtF0e11HEUsoF7w4JgFpyDjL3i7On18=;
	b=libisawRUrrt0AWf3iMpIN7zcxVZmvprpbxtsAyI4cDdmrT9L60Kg0BTSpaguCwBd0
	WYlsFi4EW/wMfaemd/XLTVLpFIX7CMGWqP3WTytHX4Ur0nbGuEaSBSgrASls58CnRZt4
	HScU03/QlYYHLnMPz1YXFFEfG2kbbJ1lAf8Npvqm3bkoRn870d9pTlMkqJo8Us2baluJ
	oYds6SrU2UWEcOUklhE2SBaCTD96FD1nWO0kqY1W3kzNjqq22LmIOx0JppEQCpXc9osl
	OcnvcRFZyDfNvEO4bo8p39Feqhob5F44BBKDyXTRyVHP6NsdCs927AqL/M74eKC4Sf3r
	85Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LWepNCVmhiXxKtF0e11HEUsoF7w4JgFpyDjL3i7On18=;
	b=slerr1PzXHCFtAPRh4kc3xElZDHKTgXuBp8VYmkRisQrDuq0SjxAs5v4L1l7AOr0V1
	z+0SsT0gyxJ7Yf2gqV4KWheO6+gQfojcArmizyIJcrEaOVfCV1VbOJa7EEjY7I6ixqWU
	PTFEc4Z09javQytwnram/f5rtovR3nCjL30kB4baXNO6I0A5TQC15OQO34pmGUA5oFNP
	3NWcewgSKntC/MryqJFcIAx5HcWHa2Jl4QfmO58ewfgYCGuMbEe3Hfhu5wj6ynFfsPoI
	B708fs1q5V1oUR0yn7qTnRmoWVjK+E+wdJzTaOdbiof7U8IwWkd9OuYrN3VTrDm+6ric
	raLA==
X-Gm-Message-State: AKS2vOySMWWag2hoM5+TkNr9kVQjonP0Et5QixTKn3sSCiSB0kEjx2Xg
	iHz7CI8TNWKq7fffgVcrw46zdfZUfw==
X-Received: by 10.80.151.49 with SMTP id c46mr874208edb.30.1498497979377; Mon,
	26 Jun 2017 10:26:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Mon, 26 Jun 2017 10:25:48 -0700 (PDT)
In-Reply-To: <TU4PR84MB0176F6A52E3E3970EB57C1FAEDDF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB0176F6A52E3E3970EB57C1FAEDDF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Jun 2017 10:25:48 -0700
Message-ID: <CAMKF1spqY7MOTt7d1AO0KfKc9XFm1X01r65EWhMDC=93J_5tbw@mail.gmail.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: question regarding share state cache and task dependencies.
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
X-List-Received-Date: Mon, 26 Jun 2017 17:26:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 26, 2017 at 9:16 AM, Koehler, Yannick
<yannick.koehler@hpe.com> wrote:
> I was wondering, reading about the shared state cache system, why are the=
 task / recipe dependencies being honored when executing a setscene task?  =
Since there is a "sanity" check that no two package write to the same outpu=
t files, then could we just run the setscene task without honoring the depe=
ndencies and get all the files in place at maximum speed ?  Right now, the =
system seems to install each package dependencies in the same order it was =
built, but since this is pre-built, I failed to see why the order mater any=
more, given the sanity check above.  The dependency should be used to deter=
mine what setscene to execute, but then they should just pump out as fast a=
s possible in any given order.

there are quite a few resources available for you.

http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitbake-user-manua=
l.html#setscene

http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#shared=
-state-cache

Then there are couple of books also talking about the concept.

>
> --
> Yannick Koehler
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

