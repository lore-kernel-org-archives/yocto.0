Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3EAE01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 01:33:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Aug 2013 01:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,966,1367996400"; d="scan'208";a="392558145"
Received: from unknown (HELO helios.localnet) ([10.252.123.40])
	by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2013 01:33:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: David =?ISO-8859-1?Q?Nystr=F6m?= <david.nystrom@enea.com>
Date: Tue, 27 Aug 2013 09:33:38 +0100
Message-ID: <2196360.bXPOIJBs5j@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <521C5608.3020202@enea.com>
References: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
	<521C5608.3020202@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-virtulization] [PATCH] irqbalance: Uprev to 1.0.6
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
X-List-Received-Date: Tue, 27 Aug 2013 08:33:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 27 August 2013 09:32:24 David Nystr=F6m wrote:
> On Mon 26 Aug 2013 11:27:30 PM CEST, Yang Shi wrote:
> > Add recipe for 1.0.6 version. And, add status and reload commands i=
nto
> > init script.
> >=20
> > Signed-off-by: Yang Shi <yang.shi@windriver.com>
> > ---
> >=20
> >   ...irqbalance-Add-status-and-reload-commands.patch |   55
> >   ++++++++++++++++++++ recipes-extended/irqbalance/irqbalance_1.0.6=
.bb  =20
> >   |   15 +++++
> >   2 files changed, 70 insertions(+), 0 deletions(-)
> >   create mode 100644
> >   recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-=
reload
> >   -commands.patch create mode 100644
> >   recipes-extended/irqbalance/irqbalance_1.0.6.bb>=20
> > diff --git
> > a/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-=
reload
> > -commands.patch
> > b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-=
reload
> > -commands.patch new file mode 100644
> > index 0000000..d853d0b
> > --- /dev/null
> > +++
> > b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-=
reload
> > -commands.patch @@ -0,0 +1,55 @@
> > +From dc7366896dd5a5bae82be4b11530bc9fdb7cbcdd Mon Sep 17 00:00:00 =
2001
> > +From: Yang Shi <yang.shi@windriver.com>
> > +Date: Mon, 26 Aug 2013 10:58:02 -0700
> > +Subject: [PATCH] irqbalance: Add status and reload commands
> > +
> > +Add status and reload commands for irqbalanced init script
> > +
> > +Signed-off-by: Yang Shi <yang.shi@windriver.com>
> > +---
> > + irqbalance.init |   12 +++++++++---
> > + 1 files changed, 9 insertions(+), 3 deletions(-)
> > +
> > +diff --git a/irqbalance.init b/irqbalance.init
> > +index d12d62c..f58bf55 100644
> > +--- a/irqbalance.init
> > ++++ b/irqbalance.init
> > +@@ -1,6 +1,6 @@
> > + #!/bin/sh
> > + #
> > +-# Copyright (c) 2012 Wind River Systems, Inc.
> > ++# Copyright (c) 2013 Wind River Systems, Inc
>=20
> What is this ?, as far as I understand it, the script + recipe is
> proprietary licensed to windriver.
>=20
> I see the windriver copyright notice was introduced with commit:
> 43b438f06897a390e16709b3f9e11355f325e2e9
> I seem to remember that we agreed that all contents of
> meta-virtualization should be MIT.

I'm not a lawyer, but as far as I am aware MIT licensing does not precl=
ude=20
having a copyright owner; in fact the standard form of the MIT license =
text=20
begins with a copyright statement.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

