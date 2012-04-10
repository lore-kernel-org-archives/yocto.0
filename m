Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCCFBE01374
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 07:04:24 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so2986957wib.11
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 07:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=9zIno5nVHrwPNMP5qjgSQ28TGQ2NUY3XoqQM9rBTKuw=;
	b=K03hWceTtXNvm/SEaYqE+hNr9lyDz7UG5nB+MrshxR+JiqMYE02YiK99mFJnZw0nKT
	ImojqfjGwp5G3JUao1/05kICirY0SHjygEF4rIvouf+DY+aOGcXd4bzFpV0wRPcWLQwd
	LiFBnOTXIX0clYit7Sh8Zb2Pt8CDOa2fRP+LNUR0q38DQLD8Bte6Z05SefaZbJOEy2FA
	XYW+cwGFLCaV5J/9fYoCWJHuFHvz/7erBUgQb+YzEmd4cuB35JzGMMc82+SkqEf1YR0n
	BZoqa6JVhRzJ4b+/lbR3GruNBMFHcyIsFQF4erAFp7/JGs7D9mLAWRIrEtJ4/h9mwjWE
	1MNA==
Received: by 10.180.95.74 with SMTP id di10mr631828wib.1.1334066663795;
	Tue, 10 Apr 2012 07:04:23 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id gd4sm61425300wib.6.2012.04.10.07.04.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 Apr 2012 07:04:21 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CALZ2gZVhRwSbv86SDiFZY685c+R5P7tNSaK-Mf0204bAMLVOuA@mail.gmail.com>
Date: Tue, 10 Apr 2012 16:04:19 +0200
Message-Id: <93E9DB02-0484-40E7-9FF1-E82AF7305CEE@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<CALZ2gZVhRwSbv86SDiFZY685c+R5P7tNSaK-Mf0204bAMLVOuA@mail.gmail.com>
To: David C Stewart <david.c.stewart@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmyNlRa5CG95oCAAxWiaOhcYdwiVysxi83PDx7d7GbjcYhc4iCumP7kXiNW+6qPV4K3g7mg
Cc: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 14:04:25 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Dave,

Coud summarize the discussion about this during bspfest, collab and the =
AB meeting please?

regards,

Koen

Op 30 mrt. 2012, om 21:00 heeft Osier-mixon, Jeffrey het volgende =
geschreven:

> As I understand it - Poky is sort of a "reference distro" for the =
Yocto system. I think Angstrom would be an excellent addition as an =
alternative, and I'd be happy to do anything needed on the community =
side to help.
>=20
> On Fri, Mar 30, 2012 at 11:44 AM, Koen Kooi =
<koen@dominion.thruhere.net> wrote:
> Hi,
>=20
> RP said I should raise this on the yocto lists, so here it is:
>=20
> The Angstrom core team would like to move angstrom under the yocto =
banner so we can formally claim to be 'yocto'.
>=20
> What is the process to make that happen? I suspect OSVs will need to =
know as well, since lately yocto is being defined as 'poky + 1 bsp =
layer' which makes it impossible to provide any added value if you want =
to keep calling it 'yocto' to your customers.
>=20
> regards,
>=20
> Koen
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --=20
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>=20


