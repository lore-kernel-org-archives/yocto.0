Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DD1DE00C49; Sun, 28 Feb 2016 13:37:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89553E00C31
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 13:37:39 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 28 Feb 2016 13:37:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,517,1449561600"; d="scan'208";a="56349991"
Received: from gtan23-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.53])
	by fmsmga004.fm.intel.com with ESMTP; 28 Feb 2016 13:37:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Oliver <urnen81@yahoo.es>,
	Marius Liebenberg <mdlcameras@gmail.com>
Date: Mon, 29 Feb 2016 10:37:33 +1300
Message-ID: <34685388.kkpx8XGFe0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <221325933.16447535.1456501118510.JavaMail.yahoo@mail.yahoo.com>
References: <CAJTo0Laa9UKt+gELcy_LcD2eGUPsq_mKmfKx=zXZJeVcsOWzfg@mail.gmail.com>
	<221325933.16447535.1456501118510.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Re: Source for recipe on local drive
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
X-List-Received-Date: Sun, 28 Feb 2016 21:37:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

With 1.8 and later, if it's purely the source you want there is the "de=
vtool=20
extract" command which will extract the sources of the specified recipe=
 to a=20
directory of your choosing with all of the patches applied, tracked in =
the=20
form of a git tree.

Cheers,
Paul

On Fri, 26 Feb 2016 15:38:38 Oliver wrote:
> Additionally, I use the following sentence to get directly the locati=
on
> where these sources are:
>=20
> bitbake <recipe> -e | grep "^WORKDIR=3D"
>=20
>=20
>=20
>     El Viernes 26 de febrero de 2016 16:00, "Burton, Ross"
> <ross.burton@intel.com> escribi=F3:
>=20
>=20
>=20
>=20
>=20
> On 26 February 2016 at 14:55, Marius Liebenberg <mdlcameras@gmail.com=
>
> wrote:
>=20
> How do I get all the source code for a specific recipe onto my local =
drive.
> That is without sifting through all the config files to try and get u=
rl's
>=20
>=20
> "bitbake [recipe] -c fetch" will just run the fetch task.=20
> Ross

--=20

Paul Eggleton
Intel Open Source Technology Centre

