Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8CBDE00C96; Wed, 11 Oct 2017 15:08:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB8CE00C7B
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 15:08:50 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id f4so8674423wme.0
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 15:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EYRDvtfipIFSYWx8EQi/2A0KWn0fQ5O+/QK5m4DiczU=;
	b=DXqQEQdXBEHV4Q1n5/xyMP2YWzmDHQ04891MZKW2OdsR8ZyuuF62hEcF8dOXmG9D6j
	q4BKMbVcgZfk2i+8TxLDm7XE+23k0D85zbPoQIP7jFhJCk0QCB/wrfkIOTxYUlY6lzai
	9tq13hgNh6UAYX2fOcgnRKWcfT56MULFsB0gcMDVKE+N+O5j/u7CJ7y7mk2LNsSWlLIN
	VcKCDmpg8bS0Eqsu38G5td6QzjR3sCM+/KMq5Dp+UY4o+E82PIDfDQlN1HpdFcVpDfac
	SD/DoNP2Fse8dkPTLQJbUuchR7SOAo86FmDMPBLCdco8d0iQCitIEtSu7PbDUJoVvS7A
	QzKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EYRDvtfipIFSYWx8EQi/2A0KWn0fQ5O+/QK5m4DiczU=;
	b=FhFMHj2OOhpwa/s2o/kP1tGcMbgBri6poDehwhPsg+QXouTbcWwst4H2zo9Do/jhJ3
	ocE/QNhS+GGbF9lsMY6YFkbnnZqin7hU48V2TeoyxnQGnMypZ9dPBYebfvqEcMrbqCXd
	NBXz3tocDVhcnohTWTock9OI1s2WezgaMbRNfyoAE8QX886a9LGdsNWRFmBRiIOVccq9
	rze0GIQKDfF1sFzYNxTUECf+TU+Xu1JhFSrwoqFIKU2zb11UPmIJpIdo3IoJy+O+0Twh
	abdhpC203lZDTY9IAQZ1OXSjVpfIKWS0X0bMuuR0PLqM8UUbwcqfPEJnMwLds8aj5XA8
	6wCw==
X-Gm-Message-State: AMCzsaXs9WNaz+M0uXOhjUdS/HZeuOus2ecTaTrGrItSe2uDu+M2qzIY
	3Am5EtOZzuEIOxN7HGR/IiNkaC8DoF4Wm4A3lxE=
X-Google-Smtp-Source: AOwi7QDBe0n69uULgnutrsVy1G0g/oOaqWYsRNV9MNDnOR2X3nLYgnz6b6r9GvIPQcOvrSqdCQKhmVBtVHVGKnsQsp0=
X-Received: by 10.223.148.71 with SMTP id 65mr259074wrq.263.1507759730109;
	Wed, 11 Oct 2017 15:08:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Wed, 11 Oct 2017 15:08:49 -0700 (PDT)
In-Reply-To: <67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 11 Oct 2017 15:08:49 -0700
Message-ID: <CAJ86T=U7WkuShnw7hzhGLUT4-mTB__SF2pFx8DtHFJ_O75DY0Q@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: image dependent pkg versions/pkg variations
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
X-List-Received-Date: Wed, 11 Oct 2017 22:08:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 11, 2017 at 11:24 AM, Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
> Hi,
>
> 3) Different package versions depending on the image recipe?
> Well actually I would like to have root file systems with different recipe
> versions inside
> e.g.
> Customer 1: prg1_1.1.bb, prg2_2.2.bb
> Customer 2: prg1_1.2.bb, prg2_2.1.bb
>
> 4) Different package variants (e.g. extra compile flags) depending on the
> image recipe? Again different content of rootfs.
> e.g.
> Customer 3: prg1_1.1.bb (default), prg2_2.2.bb with extra CFLAGS=-DUMMY)
> Customer 4: prg1_1.2.bb (default), prg2_2.1.bb(default)
>
> ===
>
> Is this possible at all?
>
> I could define per distro image versions, but the name of the distro e.g.
> "poky" seems to be part of the compiler prefix, which is not nice and I
> would need to build the same toolchain multiple times, which again is not
> nice.
>
> If the choice is based on e.g. the distro variable I could use it to
> distinguish in the recipes between different build variations, but again not
> nice.
>
> What would you suggest?

Create additional variants of the machine config to cover each case,
e.g. myboard.conf, myboard-debug.conf, myboard-dummy.conf, etc

The -debug, -dummy, etc variants can include the original base version
of the machine config file, so there doesn't need to be any
duplication.

