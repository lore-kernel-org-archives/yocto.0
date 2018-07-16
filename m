Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 751C1E00E7D; Mon, 16 Jul 2018 03:05:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C8E2E00E7D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 03:05:06 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id r16-v6so73695399oie.3
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=EV63a9KOVDcd03UbRMV2I3K/uUEbyXazlAgwKMMgERs=;
	b=a7zzomOySw/zcf4jZw3KKEjKRUUfxeaGqNLlbM15PKlD8MNrylJHl/qEOy2CAHFHLi
	mofhjF11EL6olbsTcSyCwphwBdZB9YNMupoCBPn+o3j8Y6TLqvRLwRYOZBIpX4AgOPHr
	LIIjdL0fnt6RcoM56XW8Uq4fn3ZqN6PoOLB2a8REgTt94i9VGETMgf+989j85azkCmPU
	LcX/44+rMhIKjwuJ+ZKfVoU/5lg8JQlO2oIB3fdevAd3xtVKUUN3sFU4thiaqOzpF8EX
	ir+pkLkbyX1qvbGG1d2kCqJF49aM8O2E0HAp3tARB2Vyhpu+evY8y76U47hGFdhSqmOD
	KmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=EV63a9KOVDcd03UbRMV2I3K/uUEbyXazlAgwKMMgERs=;
	b=TCG/CFWcRsmjFTA5oxY2p1muKyamMVvmAtpYMlZU1cPMwKJDS/pu8yo77+4edAvPxe
	tMccX0IJYp0M2jcA5RZouTWtmcxIarcYh0JRH45wthp2YkY2nAFOEOBHiSSV0wvqsVwB
	NH/o9y/W7q3eCFU2nZojOU93IsmAKW+NvNE+cN3X+b2/0btd0llXl6qrdimiTNBFiDp2
	Dza/RdlDsoIE9XDMxVFv2YfQkQo6bTZgxm2lSg1fkDtK1c8JOPqrVhEIzOie/S4QzXXG
	CdvdqwkEefqsD2SWGwxHZZbCoipPtgTBGV8TIew2f/m76kidIYjEdYUBXiCGCrdcjQLu
	OlDw==
X-Gm-Message-State: AOUpUlHY6ROPjSLuQMzz3CjBafqK/9Hu+KeSMT5BUFCN9ag7r/suRH72
	fT8VnTEEgAYA/YKBdhIeqqz+YUCSrzFoDtaA9P0=
X-Google-Smtp-Source: AAOMgpeNZXZrwoCObE8wz4CCKSOm/n+XWyZ3R2HquBmTxebD6t/yCT82HcZwgdrJnqJLpz52KD5E5cs+6OgYpy2sx0U=
X-Received: by 2002:aca:5754:: with SMTP id
	l81-v6mr12224817oib.100.1531735505558; 
	Mon, 16 Jul 2018 03:05:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 03:05:05
	-0700 (PDT)
In-Reply-To: <32FF3687-3963-4F20-87DE-16DCBA134DAE@comcast.net>
References: <32FF3687-3963-4F20-87DE-16DCBA134DAE@comcast.net>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 16 Jul 2018 12:05:05 +0200
Message-ID: <CANNYZj9Suoax9UCoh-ji35QpwLbNnQ=777kWca9qOFR5MiRrtg@mail.gmail.com>
To: Russell Peterson <bluehills7@comcast.net>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: openssl
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
X-List-Received-Date: Mon, 16 Jul 2018 10:05:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are building something that requires openssl 1.0 (most likely
openssh, which is not compatible with 1.1). You have to exclude it
from your builds first.

Alex

2018-07-16 3:19 GMT+02:00 Russell Peterson <bluehills7@comcast.net>:
> Hello,
>
> I=E2=80=99m looking to change to openssl version 1.1.  I=E2=80=99m using =
the rocko branch.
> I have set PREFERRED_VERSION_openssl to 1.1%=E2=80=A6 but it doesn=E2=80=
=99t seem to work.
>
> Anyone?
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 1.1.% of openssl not available (for item openssl1=
0)
> NOTE: versions of openssl available: 1.0.2m
> NOTE: preferred version 1.1.% of openssl not available (for item
> openssl-misc)
> NOTE: versions of openssl available: 1.0.2m
> NOTE: preferred version 1.1.% of openssl not available (for item
> openssl-conf)
> NOTE: versions of openssl available: 1.0.2m
> NOTE: preferred version 1.1.% of openssl not available (for item libcrypt=
o)
> NOTE: versions of openssl available: 1.0.2m
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

