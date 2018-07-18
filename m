Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CC4E00EEE; Wed, 18 Jul 2018 04:49:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F7DE00D6D
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 04:49:05 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id l10-v6so8208465oii.0
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 04:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gLy5oWEZoRDmhLvRUEqK+Eg0CFSoYzLjHYrsh9Sjpvw=;
	b=rMduB4hBeSTaAJ1p0ASQlVOKcFS4F5VoHRKg30rt6nMSjDbNvC8+Yzf9nmJWgq/iXW
	IavLQ6L/fPQry3bLzquNDL6gffOV6cqVryh5OjPWamVyeRiEMqnsXc09M2pp2Wdmd2bo
	w1IVpwSEHiErgGHVm+XiXFBB3ca3v0q2A3FNtvseuE1miiluMdDZ1tpMIzRsCLgXWtkr
	sb3IxP4ndVhD5B6bVc727Wg0cI4JBr5HgZVOSp6WZ6mZNntShDTgP+9IPnkMtf2py3/a
	hTRPWONUkS7jSDUgm4iJHuhdHgDTl/fdb4lS35y0FRLusxGK0ZnH07pyXR/7tP6Sf7iN
	eOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gLy5oWEZoRDmhLvRUEqK+Eg0CFSoYzLjHYrsh9Sjpvw=;
	b=Y1o7S7YH6zFS6d6GWYHNFdjqi701ZJFhQLAJWiIcyJrbkWbrldJeTgEwVfAqWA+Px7
	egzH40ppoiwLCa8py/Gl7ZWth9QKXhBsq9AZChweM4NR80XoIdocfkxz9BOJwxbaCQ8I
	ihxSAmcEOa+nK+Qtz8mLTzdV4QqmH3sNWalkzipSpVZqnf1+FAtPnfbV9l6Tq5JfLeY4
	FTos59yzomGGWD3Wat4F1TAgweDMEGPnvqMazz6ziXVS0LFlmhdK1Vz1xp1T6QfZfTqo
	pRAWFkPWJviUOy9YoabZc7N2OxK+Yr6jJJ1MF6uthqlvPrU9kaNI4dXcOPgUgV34msGs
	xEUg==
X-Gm-Message-State: AOUpUlEQliGpyQU55jaK2aZVyA3HoRZkD872FfzdoLrTUxoI8FaftM3E
	8aHZNuUsWKZPAQ/qTsGmutHwDCjKdI2KVJFgh3w=
X-Google-Smtp-Source: AAOMgpeZ19QTsDfv33MO1KcoRMnpzx0fyjnHgKggkDOJdco5uMtNJTsCZA/T3TKSUEK/ZFaTpe5y1DkAQlEe0calY08=
X-Received: by 2002:aca:e80c:: with SMTP id
	f12-v6mr6409063oih.38.1531914545155; 
	Wed, 18 Jul 2018 04:49:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Wed, 18 Jul 2018 04:49:04
	-0700 (PDT)
In-Reply-To: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Jul 2018 13:49:04 +0200
Message-ID: <CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Wed, 18 Jul 2018 11:49:06 -0000
Content-Type: text/plain; charset="UTF-8"

2018-07-18 13:37 GMT+02:00 Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>:
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 cannelloni ${D}${bindir}
> }

You are installing only the executable binary here, but not the
corresponding library. Just remove the do_install function altogether,
and cmake class should take care of the installation properly.

Alex

