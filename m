Return-Path: <eric@eukrea.com>
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D6EDE0145F
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 07:02:27 -0700 (PDT)
Received: from e6520eb (unknown [90.84.144.53]) (Authenticated sender: eukrea)
	by smtp6-g21.free.fr (Postfix) with ESMTPSA id 1D7028229C;
	Thu, 14 Mar 2013 15:02:15 +0100 (CET)
Date: Thu, 14 Mar 2013 15:02:11 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20130314150211.1b6b68e4@e6520eb>
In-Reply-To: <CAK18fxFeApWE8OVpf41AaEqpmLvsbdVu8srh5g6rh97Pb16hkg@mail.gmail.com>
References: <1363122024-31419-1-git-send-email-eric@eukrea.com>
	<CAK18fxFeApWE8OVpf41AaEqpmLvsbdVu8srh5g6rh97Pb16hkg@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] use right license name for GPLv2
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
X-List-Received-Date: Thu, 14 Mar 2013 14:02:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andrei,

Le Wed, 13 Mar 2013 20:01:54 +0200,
Andrei Gherzan <andrei@gherzan.ro> a =C3=A9crit :
> The SPDX name for GPLv2 (http://spdx.org/licenses/) is GPL-2.0 so I'd like
> to use this.
>=20
OE-core is mainly using GPLv2 thus the change proposal to be consistant.

> And one more thing, please add the recipe name in the commit log -
> something like:
> *rpi-first-run-wizard.bb: Use right license name for GPLv2*
>=20
2 recipes were concerned in this patch so I din't put their names in
the 1st line to keep it short.

Eric

