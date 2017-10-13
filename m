Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5463E00CD4; Fri, 13 Oct 2017 03:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B281E00CC1
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 03:40:26 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id l68so20563726wmd.5
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 03:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lZEGMo2mxQqmlzgBfn0PoLvoP/HeR0cpEw2diTjORVo=;
	b=M58kVVMwB+Nqdh7KITl03es/Smru0rX/K0sZMD6DWZFh0SbfQvJwWOyzBXlcbmmvbM
	vP1EXzNTGss2BH6GvFlsFSK1XWknIGqgVQoAPdYlnNh0yBkdL2XmeZuBfV+5dd7gxheh
	Ep8xsdKrwYzq91NqXHbL3+db9RQyx/uHqrNLDN/WJ6Y8CBERvtLQMBLaTH196PioByCs
	CIIymGihvQ/u2KoFpzokSJdIs2GRuEjTr0X+UDS5kk3v5N6Rn6ibysJA3D3hv6n3JwhY
	xT1jIJlj25AY87OCbU2WfrohD7jTU8GSFD0ACP4KtkkSwQGRlPBBF8ufVy2kpnYkoQOy
	+1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lZEGMo2mxQqmlzgBfn0PoLvoP/HeR0cpEw2diTjORVo=;
	b=Xc1FJ1VTMC0uZY6a/O68LxtfSAGm0nsXekhaampaxsbA9ZA0QSaZapNGv6BJ5dxTDc
	w7TkZtwudfNp2y9ksWJ4Ir5hRwwoF8+lEAeBeaOEUiUI472As902oF2ZfarTL0xY9czV
	ZhBYX8A02Cttd92TtR7dUbWJ++1l10lPZh8xN9BlqOU4vwaQqwxGlkM2X4m/Styt4Pya
	gRmFQ1a6MGqPGJ9NHMBR0N9Vs8V8bQzURDffpNbs/JCfnw9iwcvzIUg0LP6HZ3W2uoPA
	e/15fbwp5ci8cxfZdxAdr4EJ3cbfxi8Uv7XRpQgThwmgy5A7DDH/qHrV1f9dG6+eEArs
	TqFQ==
X-Gm-Message-State: AMCzsaVhOn4jO2AH67oggTqLsrj7qNyc6gq94yz/UR3VTJ+7ETGk0ki3
	13iVBXPkCKtDwD5ZHLublw4CAeXMhyDN4Y74Rao=
X-Google-Smtp-Source: AOwi7QC66JUlOsq0YJgJKB8cpV0PWotBB/LaCdsJ+CznW4rYIN+xbpMC+/nMvBN+Q8nosMzmkmewvZrkaDQpNrLrhO8=
X-Received: by 10.223.157.136 with SMTP id p8mr1117253wre.28.1507891225640;
	Fri, 13 Oct 2017 03:40:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.137.212 with HTTP; Fri, 13 Oct 2017 03:40:25 -0700 (PDT)
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 13 Oct 2017 12:40:25 +0200
Message-ID: <CAAfyv36SdD+BSW2fxsxHdBb5SDb3GwF2UmWMPc9q5m7dgW9G6w@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: rocko problem with external cross compilation
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
X-List-Received-Date: Fri, 13 Oct 2017 10:40:27 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

we're bumping our layer to latest master (rocko). Previously we use
for development purposes only flow like:
- build image and use sysroot + toolchain for cross compilation (we
use cmake where we setup toolchain file with correct paths and compile
our application)

But when try to use same approach for image build via rocko it always
fail when doing external cross compilation (errors about that cannot
compile simple program -> I checked path for gcc and g++ and they are
correct). Any ideas what to look for appreciated. Thanks a lot.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

