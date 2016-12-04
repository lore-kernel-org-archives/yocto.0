Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C3C1E00E02; Sun,  4 Dec 2016 13:34:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A826E00DFB
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 13:34:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2016 13:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,301,1477983600"; d="scan'208";a="1067870988"
Received: from patejona-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.67])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2016 13:34:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Frank =?ISO-8859-1?Q?Meerk=F6tter?= <meerkoetter@googlemail.com>
Date: Mon, 05 Dec 2016 10:34:28 +1300
Message-ID: <1563495.jI1DcjphDF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEmxt=_CZtgSOXzJ_z-rCB+wBi=EXqPh=T_aa7pHMu5zmnAisA@mail.gmail.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3062695.A2rY8KLgxq@peggleto-mobl.ger.corp.intel.com>
	<CAEmxt=_CZtgSOXzJ_z-rCB+wBi=EXqPh=T_aa7pHMu5zmnAisA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Sun, 04 Dec 2016 21:34:36 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sun, 04 Dec 2016 20:54:00 Frank Meerk=F6tter wrote:
> Here is an example:
>=20
> ~/$  devtool add libuv https://github.com/libuv/libuv.git
>=20
> NOTE: Fetching git://github.com/libuv/libuv.git;protocol=3Dhttps...
>=20
> Traceback (most recent call
> last):
>=20
>   File "/home/fmee/hili_sdk/layers/poky/scripts/recipetool", line 120=
, in
> <module>
>     ret =3D main()
>   File "/home/fmee/hili_sdk/layers/poky/scripts/recipetool", line 109=
, in
> main
>     ret =3D args.func(args)
>   File "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create=
.py",
> line 627, in create_recipe
>     handler.process(srctree_use, classes, lines_before, lines_after,
> handled, extravalues)
>   File
> "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create_builds=
ys.py",
> line 349, in process
>     values =3D AutotoolsRecipeHandler.extract_autotools_deps(lines_be=
fore,
> srctree, extravalues)
>   File
> "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create_builds=
ys.py",
> line 486, in extract_autotools_deps
>     RecipeHandler.load_binmap(tinfoil.config_data)
>   File "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create=
.py",
> line 150, in load_binmap
>     for line in f:
>   File
> "/home/fmee/hili_sdk/buildtools/sysroots/x86_64-oesdk-linux/usr/lib/p=
ython3.
> 5/encodings/ascii.py", line 26, in decode
>     return codecs.ascii_decode(input, self.errors)[0]
> UnicodeDecodeError: 'ascii' codec can't decode byte 0xc5 in position =
1774:
> ordinal not in range(128)
> ERROR: Command '. /home/fmee/hili_sdk/layers/poky/oe-init-build-env
> /home/fmee/hili_sdk > /dev/null && script -e -q -c "recipetool
> --color=3Dalways create --devtool -o /tmp/devtool238kzam0 '
> https://github.com/libuv/libuv.git'  -x
> /home/fmee/hili_sdk/workspace/sources/devtoolsrcsme6hih0 -N libuv"
> /dev/null' failed

Unfortunately I can't reproduce that issue here.

Within the SDK environment, if you run "python3" and then inside there:=


import locale
locale.getpreferredencoding(False)

What does it print?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

