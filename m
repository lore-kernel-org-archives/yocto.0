Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAF7E00871; Sat, 14 Mar 2015 04:35:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4734E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 04:35:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2015 04:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,400,1422950400"; d="scan'208";a="540885313"
Received: from plaws-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.36])
	by orsmga003.jf.intel.com with ESMTP; 14 Mar 2015 04:34:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Padam Jeet Singh <padam.singh@inventum.net>
Date: Sat, 14 Mar 2015 11:35:07 +0000
Message-ID: <1947418.ggldqr5zsU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <37E841B8-5482-4E95-8A2E-08140957E3BF@inventum.net>
References: <37E841B8-5482-4E95-8A2E-08140957E3BF@inventum.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Automatically include all recipes/packages in a custom layer
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
X-List-Received-Date: Sat, 14 Mar 2015 11:35:25 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Saturday 14 March 2015 12:51:31 Padam Jeet Singh wrote:
> I am trying to build a custom layer on top of core-image-full-cmdline=
.
> Basically I did this:
>=20
> 1. Created a new general layer using the yocto-layer command. This al=
so
> generated a simple hello world recipe. 2. Added that layer in the
> conf/bblayers.conf BBLAYERS variable.
>=20
> Then I do a bitbake -v core-image-full-cmdline, and I don=E2=80=99t s=
ee
> /usr/bin/helloworld in the final rootfs.
>=20
> Then I edit the conf/local.conf and add the following:
>=20
> IMAGE_INSTALL_append =3D " example=E2=80=9D
>=20
> and then I can see the helloworld in the rootfs.
>=20
> Since I will be adding close to 50 recipes in this layer, isn=E2=80=99=
t there an
> option where all recipes in that layer are included by default? Even =
if I
> have to declare each recipe to be included, is there a place where I =
can
> define those in my own layer configuration (layer.conf) rather than
> local.conf?

Firstly, I'd recommend you create your own custom image recipe(s) rathe=
r than=20
adding packages via local.conf. Secondly, the way to handle bringing in=
 a=20
large number of packages as a unit is to create a packagegroup recipe w=
ithin=20
your custom layer to pull in all the packages you want installed, and t=
hen you=20
just need to add that packagegroup to your image.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

