Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48B40E01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 09:01:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Oct 2013 09:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,586,1378882800"; d="scan'208";a="418576327"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.252])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2013 09:01:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Date: Mon, 28 Oct 2013 16:01:24 +0000
Message-ID: <1560118.YdaQdLeFSB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <526E7ACD.4030907@mlbassoc.com>
References: <1489979.YGJBfpbiDO@koontz> <526E7ACD.4030907@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Trouble packaging files containing space
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
X-List-Received-Date: Mon, 28 Oct 2013 16:01:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 28 October 2013 08:55:09 Gary Thomas wrote:
> On 2013-10-28 00:26, S=F8ren Holm wrote:
> > I have a package containing files that includes spaces in their sam=
e.
> >=20
> > The files are located in the same directory without a space in thei=
r name
> > is packages just find.
> >=20
> > I specify FILES_$[PN} like this
> >=20
> > FILES_${PN} =3D "${prefix}/local/Mikrofyn"
> >=20
> > What might be wrong?
>=20
> It seems to be policy - from
> http://www.yoctoproject.org/docs/1.5/mega-manual/mega-manual.html#sou=
rce-di
> rectory The OpenEmbedded build system does not support file or direct=
ory
> names that contain spaces.

I think that's more about paths such as TMPDIR rather than the contents=
 of=20
packages. This should work.

S=F8ren, are you getting unpackaged file warnings? Are the files listed=
 if you=20
look under image/ in the work directory for the recipe? FWIW, I just te=
sted=20
here and installing files whose filenames contain spaces worked just fi=
ne.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

