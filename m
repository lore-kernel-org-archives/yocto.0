Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F46DE00AEB; Tue, 10 Nov 2015 00:59:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B147E009D9
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 00:59:22 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Nov 2015 00:59:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,269,1444719600"; d="scan'208";a="846807529"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.0.72])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2015 00:59:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Tue, 10 Nov 2015 08:59:20 +0000
Message-ID: <1916635.N7SxKcgltD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1447106501-470-6-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
	<1447106501-470-6-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 05/10][AUH] upgradehelper.py: Add sanity test for ensure that git is configured.
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
X-List-Received-Date: Tue, 10 Nov 2015 08:59:24 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 09 November 2015 16:01:36 An=EDbal Lim=F3n wrote:
> [YOCTO #8390]
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  upgradehelper.py | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index 9b321f6..ae40fb1 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -28,6 +28,7 @@
>=20
>  import argparse
>  import os
> +from subprocess import call
>  import logging as log
>  from logging import debug as D
>  from logging import info as I
> @@ -734,17 +735,22 @@ if __name__ =3D=3D "__main__":
>      global settings
>      global maintainer_override
>=20
> +    if not os.getenv('BUILDDIR', False):
> +        E(" You must source oe-init-build-env before running this
> script!\n")=20
> +        exit(1)
> +
> +    devnull =3D open(os.devnull, 'wb');
> +    if call(["git", "config", "user.name"], stdout=3Ddevnull, stderr=
=3Ddevnull)
> or \=20
> +        call(["git", "config", "user.email"], stdout=3Ddevnull,
> stderr=3Ddevnull):=20
> +        E(" Git isn't configure please configure user name and email=
\n")=20
> +        exit(1)

"isn't configure" -> "isn't configured"

Also, we're doing an awful lot of "from xxxx import yyyy" in this code =
which=20
for the most part seems like poor style. For this addition can you simp=
ly=20
import subprocess and then use subprocess.call() ?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

