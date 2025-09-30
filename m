Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DB7ACCA470
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 16:10:14 +0000 (UTC)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web10.234.1759248612189284922
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Sep 2025 09:10:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=cJMgMePL;
 spf=pass (domain: konsulko.com, ip: 209.85.166.181, mailfrom: trini@konsulko.com)
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-427621906faso19976025ab.2
        for <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 09:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1759248611; x=1759853411; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d7YPIFhjZO/IDEcbmk7ufOg+A/N0HYQ5U75mtsCLGJA=;
        b=cJMgMePL0v2l+nUSGQKU7pippuY93KEl7+DeezGi+JatOzawGen5qUxd5p6sIrAqjK
         ZbAwBBrC8kibZo0u2Z+oBSLHSDzpkb4TBz1LVy6P6k/acfdW4HafRL2vjWcwCrteldDm
         fgAJGw8CrR/E5hTzr1cSG+pHkys0dMqalYVCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759248611; x=1759853411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d7YPIFhjZO/IDEcbmk7ufOg+A/N0HYQ5U75mtsCLGJA=;
        b=tXE5QcCerbtdru5ojkXvgnGkfQ7902gb0c1tbqHqMUzYNArl25rSXrqhSsoBRAnkty
         DEkz/Q8mPMqKqlIgTfGvAtPDL3SpgtTIInU8ZNLAp/EbFEEa2IGj9NLXYwTlwC+9aBJi
         N7HuXj51kmraTbbDcE29LVL8Of3hKY5e8YT9lHTwpXPKp3Gzil8x3/S9uU7GDx4uI+0Q
         J32LKp5Rx+KLkejhhXHUDvzU+UVYXanhWtOOh0njbgL5VMuBDQ/9Y/UlSCrHzvTVJern
         cg7mhL8U6iyzQE/x8LlrI+y6ihci7yfobM/JbuUoiy+oO/iymiV99CSc9qSP9v0R2qIT
         SMAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkq7R0dbRxh4+Mnlk9kyUt3Uuziy3ePzmrfvL/CE/C24LAzmd9mD+TEb5Ji4ce2viE+yOgXA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyEb8WlQHEgcfmxmIFshGaGKDhTPIrocXYGRBEknw4XY6TAfuwF
	pkJ8slBeUZiuMaKtLjgHCIbQ+ySrBG6Ewyz6RLdRNeEhQMeJb0PviXqbqMvjhoX5jz0=
X-Gm-Gg: ASbGncug6/kf3dVdvyM5tKWBS2qpRE+yjQZvCKhKH8vu1Ajb0xnWqLrKyxaaBtqELcF
	0zB1/dOKiP5Z1tROmY7gRMSa5nvwLHjlju8b/31ticE2Q6CvynkTmRZJ39Zn24jQhUEAE9wynK3
	/Im7CD9oAF3Ev8uojWKnKbfMywl9SSCP/WmUEYA/47rEDnzDMlRlZX5ivPzAVnrQWJFqMGpqIRP
	eDUq2wZbfL2WfEMSeVG5sKrgusYbDpQdqY1g0ixgw03CW5Wm5Vu2J3QhNz8QzC32WyflH6yfE4Z
	H8uCwVgxM8ckPPCnD+a6JffeBlypugjMNNj0XWThuGI8MS8EgObfYNweccMcUX57AFs4QJdFKPl
	NuQcFdf0Hz9o353AJb/vmfmH+Yn8oY4fFq468cTphxTilTTxKOTEZQKSRgqPkUexCd7ppN7HXex
	YSxtfI
X-Google-Smtp-Source: AGHT+IH0fBskqQgeWLI2joGQkcll02BDZCgO0y+u5rk57bz9+KDmY3dVJbWsIBJeLQVBEY/ogDQFGw==
X-Received: by 2002:a05:6e02:3a03:b0:424:82a6:3105 with SMTP id e9e14a558f8ab-42d81676838mr6024765ab.18.1759248611205;
        Tue, 30 Sep 2025 09:10:11 -0700 (PDT)
Received: from bill-the-cat (fixed-189-203-97-42.totalplay.net. [189.203.97.42])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4281b14cac0sm48914905ab.5.2025.09.30.09.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 09:10:10 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:10:07 -0600
From: Tom Rini <trini@konsulko.com>
To: seth.raymond@matrixspace.com
Cc: nicolas@saliencelabs.ai, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Failed to fetc qemu-project/u-boot
Message-ID: <20250930161007.GE6093@bill-the-cat>
References: <13254.1759214181282650923@lists.yoctoproject.org>
 <13254.1759242231298370764@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r0khez+okzurg7F5"
Content-Disposition: inline
In-Reply-To: <13254.1759242231298370764@lists.yoctoproject.org>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 16:10:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65896


--r0khez+okzurg7F5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 30, 2025 at 07:23:51AM -0700, seth.raymond@matrixspace.com wrot=
e:

> We've also started running into this issue. I did some searching and
> found that the tarballs are no longer available at any of the MIRRORS,
> which is why I think this recently started breaking. Does anyone know
> why those packages aren't available?

The QEMU project was having to do some workarounds for Gitlab's
automatic license checker failing out on U-Boot for lacking a top-level
COPYING file. We (U-Boot) have accepted adding a symlink from
Licenses/gpl-2.0.txt to COPYING so that every project using Gitlab with
the open source license doesn't need to get a human involved to correct
their automatic checker failing projects.

--=20
Tom

--r0khez+okzurg7F5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTzzqh0PWDgGS+bTHor4qD1Cr/kCgUCaNwA2wAKCRAr4qD1Cr/k
Ck43AP9q3VmNMoXYgcX9p/o+TY8XPE3sv9hkXm0PBvKCT41SogEA8c0vKGdzU36w
qqbn4YPDB1PZhy3V4aKTNO3RYwkJlQk=
=XNJb
-----END PGP SIGNATURE-----

--r0khez+okzurg7F5--

