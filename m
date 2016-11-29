Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0DEE00C88; Mon, 28 Nov 2016 20:15:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA9F6E00C22
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 20:15:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 28 Nov 2016 20:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,714,1473145200"; d="scan'208";a="906573910"
Received: from schan1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.70])
	by orsmga003.jf.intel.com with ESMTP; 28 Nov 2016 20:15:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?utf-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Date: Tue, 29 Nov 2016 17:15:12 +1300
Message-ID: <1515265.VzsD3kXDNN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.8-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <91b5be87e9efb9b3b22d86fa7435762c@cweb29.nm.nhnsystem.com>
References: <91b5be87e9efb9b3b22d86fa7435762c@cweb29.nm.nhnsystem.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What criteria are categorized? (tmp/work/...)
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
X-List-Received-Date: Tue, 29 Nov 2016 04:15:21 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tue, 29 Nov 2016 11:47:40 =EC=9C=A4=EC=98=81=EC=84=9D wrote:
> After poky the build, i look at the tmp/work folder.
> I can see these folders.
> All-poky-linux / i586-poky-linux / qemux86-poky-linux / x86_64-linux =
/
>=20
> What is the classification of each folder?

That directory level corresponds to MULTIMACH_TARGET_SYS, whose value i=
s
"${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}". The first variable
PACKAGE_ARCH has a default value of "${TUNE_PKGARCH}" which makes a rec=
ipe
architecture-specific by default. PACKAGE_ARCH is often set in the reci=
pe
in two common cases:

1) Recipes which are packaging something that is not architecture-speci=
fic -
these should "inherit allarch" which will automatically set
PACKAGE_ARCH =3D "all". Note that in this situation you should use
"inherit allarch" rather than setting PACKAGE_ARCH yourself since that =
is
not the only thing that the allarch class takes care of.

2) Recipes which are packaging something that is machine-specific - the=
se
should set PACKAGE_ARCH =3D "${MACHINE_ARCH}".

Additionally, recipes that are building for the build host rather than =
the
target machine (*-native) or for the SDK (nativesdk-*) get different va=
lues
for  MULTIMACH_TARGET_SYS as well, but this is accomplished by inheriti=
ng
the native or nativesdk classes or using BBCLASSEXTEND to create a vari=
ant
of the recipe for one or both.

> What options should I set in recipes?

Can you be more precise about what you want to do?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

