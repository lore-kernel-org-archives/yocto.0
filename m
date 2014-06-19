Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6797BE00BE9; Thu, 19 Jun 2014 06:47:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F01FE00BE9
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 06:47:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jun 2014 06:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,507,1400050800"; d="scan'208";a="531014517"
Received: from akagikob-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.96])
	by orsmga001.jf.intel.com with ESMTP; 19 Jun 2014 06:47:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Laurent =?ISO-8859-1?Q?d=27Hav=E9?= <ldhave@gmail.com>
Date: Thu, 19 Jun 2014 14:47:29 +0100
Message-ID: <77958816.ia3M1Is9NF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <53A2E86B.6090301@gmail.com>
References: <53A194E1.1080206@gmail.com>
	<1499564.DQG69I1imK@peggleto-mobl5.ger.corp.intel.com>
	<53A2E86B.6090301@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recipe to Copy JAR files, not extract it
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
X-List-Received-Date: Thu, 19 Jun 2014 13:47:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 19 June 2014 15:40:59 Laurent d'Hav=E9 wrote:
> That worked great.
>=20
> Except i'm now having a strange issue, been pulling hair's out for a
> couple of hours ...
>=20
> WARNING: QA Issue: taxi: Files/directories were installed but not shi=
pped
>    /usr/share
>    /usr/share/java
>    /usr/share/java/headless.jar
>=20
>=20
> And indeed, my jar file will not be bundled in the rootfs !!
>=20
> Some copy-paste from my recipe :
>=20
> SRC_URI =3D " \
> file://headless .jar;unpack=3D0 \
> "
> do_install() {
> install -m 0755 -d ${D}/usr/share/java
>   install -m 0755 ${WORKDIR}/headless .jar ${D}/usr/share/java
>   }
>=20
>=20
> Any clues ? If i change the path  /usr/bin  it works.
> Is it because i'm putting it in /usr/share/java ?
> But that's where all the other JAR's go ...

The key is "installed but not shipped" - you've installed the files, bu=
t they=20
aren't being shipped in any package. The files in each package are spec=
ified=20
using FILES, and /usr/share is ${datadir}, so I'd suggest something lik=
e the=20
following:

FILES_${PN} +=3D "${datadir}/java"

(Moving the files to /usr/bin works because that is already in the defa=
ult=20
value of FILES_${PN}, whereas /usr/share/java isn't).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

