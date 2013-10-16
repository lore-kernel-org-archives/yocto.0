Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF71FE0167D
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 01:20:30 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id my13so137582bkb.7
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 01:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=r9dfkGuFKOS8m3bfUjHzuEAG67dg5Ideb5cCv6rNWvA=;
	b=k6mhOM1Hum/UW7WrrwzfoLaKNXdYYA93tnp05xhLEtlPZwBz4jCrwrapw126XMqmH2
	Qgjy85lWHwAx/bDhU78BhTdV68f40oUWgS/96r3Z5EdCV1VxW7iZU8i6CCSIxKX7fkpO
	FtnjoAvUc2JBFp1xoudDt87VhHJJoM308CACJsVxYUHt5ZLmikk5KSJpyayLlZ7rTeLA
	RfoFyJM5jhIXsZkQDyQHWrxTHmHmuYCHqX3HGPrSXm8Tm/rStSJbQvlv4h9Va9JeKkQ0
	1yrLJLxt2cFFJ7Pzqv8aDzKMaJETtvviJUBoV6KUPyomp//99pzA4noybznzuadhQrvW
	sHGw==
X-Gm-Message-State: ALoCoQnRVy1OHSqDHYDaA1d0hhQzpCn+4Fwuo9SgfdMuiM08I5sN1Mx2AF6yH7NaeAXcUHciIVPn
X-Received: by 10.205.35.15 with SMTP id su15mr1191967bkb.21.1381911629680;
	Wed, 16 Oct 2013 01:20:29 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id zl3sm46167433bkb.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Oct 2013 01:20:28 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Wed, 16 Oct 2013 10:20:24 +0200
Message-ID: <1453346.6uHgHqcMcF@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.3-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>,
	Amit Tomer <amittomer25@gmail.com>
Subject: Re: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 08:20:32 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data mercoled=EC 16 ottobre 2013 00:01:13, Amit Tomer ha scritto:
> I wanted to modify the content of /etc/passwd but don't know how
> /etc/passwd files is packed into final image
>=20
> After the build process ,passwd file goes to
>=20
> "tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd"
>=20
> this loaction
>=20
> Now I see image-k2.bb file but could not find any rule that will pack=

> passwd file to
> final image.
>=20
> Can anybody how it is packed and way to modify it.
>=20
> Thanks
> Amit
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Hi,
I think that the recipe that creates passwd file is under poky/meta/rec=
ipes-core/base-passwd (I'm on dora branch).
Maybe with a bbappend of that recipe you can change the passwd file wit=
h yours...
Cheers
Davide

