Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66EA5E01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 09:17:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 28 Oct 2013 09:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,586,1378882800"; d="scan'208";a="418586202"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.252])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2013 09:17:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Date: Mon, 28 Oct 2013 16:17:46 +0000
Message-ID: <5221494.eWKnjLPuZO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2101270.njZzpmM3TP@koontz>
References: <1489979.YGJBfpbiDO@koontz> <1560118.YdaQdLeFSB@helios>
	<2101270.njZzpmM3TP@koontz>
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
X-List-Received-Date: Mon, 28 Oct 2013 16:17:56 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 28 October 2013 17:05:54 S=F8ren Holm wrote:
> Mandag den 28. oktober 2013 16:01:24 skrev Paul Eggleton:
> > S=F8ren, are you getting unpackaged file warnings? Are the files li=
sted if
> > you look under image/ in the work directory for the recipe? FWIW, I=
 just
> > tested here and installing files whose filenames contain spaces wor=
ked
> > just fine.
> I get erro regarding files installed but not shipped - but that's a d=
ifferen
> issue I think. That particular issue is strange sine the un-shupped f=
iles
> are source-files that I do not install. They end up in image/ during
> do_package.
>=20
> The image-dir contains all the files including the files containing s=
paces.

I think I might need some more details - can you please paste the actua=
l=20
error, the relevant parts of the recipe and a directory listing under=20=

image/${prefix}/local ?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

