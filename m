Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4AC2E009BB; Thu, 14 May 2015 09:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF5CE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:41:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 14 May 2015 09:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,429,1427785200"; d="scan'208";a="694931503"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.30.48])
	by orsmga001.jf.intel.com with ESMTP; 14 May 2015 09:41:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Smith, Virgil" <Virgil.Smith@flir.com>,
	"Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 14 May 2015 17:41:55 +0100
Message-ID: <1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.5-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <F14AEF751653024287138321000C846AF4821E78@BOS-DAG1.zone1.flir.net>
References: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
	<alpine.LFD.2.11.1505141217350.3849@localhost>
	<F14AEF751653024287138321000C846AF4821E78@BOS-DAG1.zone1.flir.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 16:42:00 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 14 May 2015 16:34:56 Smith, Virgil wrote:
> > > Change
> > > IMAGE_INSTALL +=3D =E2=80=9Ccanlogger=E2=80=9D
> > > to
> > > IMAGE_INSTALL_append =3D =E2=80=9C canlogger=E2=80=9D
> > > or possibly better
> > > EXTRA_IMAGE_INSTALL_append =3D =E2=80=9C canlogger=E2=80=9D
> >
> >
> >
> >   if you're putting this in local.conf, i'm pretty sure the preferr=
ed
> >   syntax is just:
> EXTRA_IMAGE_INSTALL =3D "canlogger"
>=20
>=20
> Yes, I think rday is correct and the intended purpose of EXTRA_IMAGE_=
INSTALL
> is to be used entirely from local.conf and thereby avoid the +=3D vs =
?=3D vs
> _append issues I mentioned.  At least EXTRA_IMAGE_FEATURES is listed =
this
> way in the Yocto manual.

There's no such thing as EXTRA_IMAGE_INSTALL, not in the core system an=
yway.=20
There is CORE_IMAGE_EXTRA_INSTALL though which you can add to with +=3D=
 (since=20
there aren't any default items in it, unlike IMAGE_INSTALL).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

