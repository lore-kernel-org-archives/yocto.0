Return-Path: <alexander.stein@systec-electronic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 190D9E00DA5; Tue, 16 Jul 2019 08:26:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.118.221.216 listed in list.dnswl.org]
Received: from s1.ox4u.de (ox4u.de [212.118.221.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B42A6E00D63
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 08:26:08 -0700 (PDT)
Received: by s1.ox4u.de (Postfix, from userid 65534)
	id 7D9372600A6; Tue, 16 Jul 2019 17:26:06 +0200 (CEST)
Received: from ws-140106.localnet (unknown [212.185.67.146])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by s1.ox4u.de (Postfix) with ESMTPSA id 17D112600A0;
	Tue, 16 Jul 2019 17:26:06 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Jul 2019 17:26:05 +0200
Message-ID: <44678289.v2aziEsLJM@ws-140106>
In-Reply-To: <CAJTo0LYsz3J24YQgzRgJkFqFpQECG3p2dkwU=Oroja3J7XDo+A@mail.gmail.com>
References: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
	<CAJTo0LYsz3J24YQgzRgJkFqFpQECG3p2dkwU=Oroja3J7XDo+A@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Pre-installing node.js packages
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
X-List-Received-Date: Tue, 16 Jul 2019 15:26:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

If you want to avoid writing those recipes yourself, you can use devtool.
See https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM

I'm not sure how a proper workflow should be done, to keep the extracted so=
urces out of the meta, but it is a starting point.

Alexander

On Tuesday, July 16, 2019, 5:15:19 PM CEST Burton, Ross wrote:
> The proper way would be to write a recipe for each package you wish to ad=
d.
>=20
> Ross
>=20
> On Tue, 16 Jul 2019 at 16:04, Andy Pont <andy.pont@sdcsystems.com> wrote:
> >
> > Hello,
> >
> > Is there a way to add node.js packages into a build?  I?m trying to
> > avoid having to include npm and compiler into my target image.
> >
> > -Andy.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20


=2D-=20
Dipl-Inf. Alexander Stein

SYS TEC electronic AG
Am Windrad 2
08468 Heinsdorfergrund
Germany
Tel: +49-3765-38600-0, Fax: +49-3765-38600-4100
Email   : alexander.stein@systec-electronic.com
Internet: http://www.systec-electronic.com

Board of Directors: Dipl.-Ing. Ronald Sieber, Dipl.-Ing. Dirk Bause
Chairman of the Supervisory Board: Dipl.-Phys. Siegmar Schmidt
Commercial registry: Amtsgericht Chemnitz, HRB 32220; USt.-Id Nr.=20
DE150534010

=2D-------------------------------------------------------------------------

Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.

Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten haben, informieren Sie bitte sofort den Absender und vernichten=20
Sie diese Mail.

Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Mail sind=20
nicht gestattet.

=2D-------------------------------------------------------------------------

This e-mail may contain confidential and/or privileged information.

If you are not the intended recipient (or have received this e-mail in=20
error) please notify the sender immediately and destroy this e-mail.

Any unauthorized copying, disclosure or distribution of the material in=20
this e-mail is strictly forbidden.

=2D------------------------------------------------------------------------=
=2D



