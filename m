Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B01AE00E88; Sun, 28 Aug 2016 17:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 579E4E00E3F
	for <yocto@yoctoproject.org>; Sun, 28 Aug 2016 17:06:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 28 Aug 2016 17:06:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,593,1464678000"; d="scan'208";a="1042669500"
Received: from aupadhy1-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.181.46])
	by orsmga002.jf.intel.com with ESMTP; 28 Aug 2016 17:06:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Date: Mon, 29 Aug 2016 12:06:40 +1200
Message-ID: <1976151.3scbLhQViY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1460456955.3257.1.camel@sestows129.enea.se>
References: <1457357400-3594-1-git-send-email-adrian.dudau@enea.com>
	<1460456955.3257.1.camel@sestows129.enea.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3][PATCH] classes: add qmake_base.bbclass
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
X-List-Received-Date: Mon, 29 Aug 2016 00:06:50 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Adrian,

On Tue, 12 Apr 2016 10:29:15 Adrian Dudau wrote:
> On m=E5n, 2016-03-07 at 14:30 +0100, Adrian Dudau wrote:
>=20
> > The class was removed from oe classes, but some recipes like
> > qt-x11-free still inherit it. Keep the class within the layer to
> > acommmodate them.
>=20
> ping?

I completely missed this until now, sorry - I've just applied it to the=
 master=20
and krogoth branches.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

